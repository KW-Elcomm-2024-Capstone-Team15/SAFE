import numpy as np
import matplotlib.pyplot as plt
import soundfile as sf
import wave
import csv
from scipy.fftpack import dct
from scipy.signal import stft


def melFilterBank(fs, N, numChannels):
    fmax = fs / 2
    melmax = 2595 * np.log(fmax / 700.0 + 1.0)
    nmax = N // 2
    df = fs / N
    dmel = melmax / (numChannels + 1)
    melcenters = np.arange(1, numChannels + 1) * dmel
    fcenters = 700 * (np.exp(melcenters / 2595) - 1.0)
    indexcenter = np.round(fcenters / df)
    indexstart = np.hstack(([0], indexcenter[0:numChannels - 1]))
    indexstop = np.hstack((indexcenter[1:numChannels], [nmax]))
    filterbank = np.zeros((numChannels, nmax))
    for numChannel in range(0, numChannels):
        increment = 1.0 / (indexcenter[numChannel] - indexstart[numChannel])
        for i in range(int(indexstart[numChannel]), int(indexcenter[numChannel])):
            filterbank[numChannel, i] = (i - indexstart[numChannel]) * increment
        decrement = 1.0 / (indexstop[numChannel] - indexcenter[numChannel])
        for i in range(int(indexcenter[numChannel]), int(indexstop[numChannel])):
            filterbank[numChannel, i] = 1.0 - ((i - indexcenter[numChannel]) * decrement)

    return filterbank, fcenters


if __name__ == '__main__':
    wf = wave.open('C:\AI\SAFE_dataset\_TEST\_Abnormal\_SCREAM\\0_0_bath_Scream_4599_4_white_80_AC_20.wav', "r")
    fs = wf.getframerate()
    result = []
    f = open('result_me.csv', 'w')
    writer = csv.writer(f)

    for block in sf.blocks('C:\AI\SAFE_dataset\_TEST\_Abnormal\_SCREAM\\0_0_bath_Scream_4599_4_white_80_AC_20.wav', blocksize=4096):
        # framing
        frame = []
        for b in block:
            frame.append(float(b[0]))
        time = np.arange(0, len(frame) / fs, 1 / fs)
        
        # Plot frammed signal
        plt.figure(figsize=(10, 10))
        plt.subplot(611)
        plt.plot(time * 1000, frame)
        plt.xlabel("time [ms]")
        plt.ylabel("Amp. (Orig.)")

        # pre-emphasis
        frame_HPF = np.append([float(frame[0])],
                              [float(x) for x in frame[1:]] - 0.97 * np.array([float(x) for x in frame[:-1]]))

        # Plot pre-emphasis signal
        plt.subplot(612)
        plt.plot(time * 1000, frame_HPF)
        plt.xlabel("time [ms]")
        plt.ylabel("Amp. (HPF.)")

        # windowing
        n = 0
        for fr in frame_HPF:
            frame[n] = fr * (0.54 - 0.46 * np.cos((2 * np.pi * n) / (len(frame_HPF) - 1)))
            n += 1

        # Plot windowing signal
        plt.subplot(613)
        plt.plot(time * 1000, frame)
        plt.xlabel("time [ms]")
        plt.ylabel("Amp. (win.)")

        # FFT
        fftPoint = 1024
        Aframe = np.abs(np.fft.rfft(frame, fftPoint))[:fftPoint // 2]  # Amp of the FFT
        Pframe = ((1.0 / fftPoint) * (Aframe ** 2))[:fftPoint // 2]  # Power Spectrum
        fscale = np.fft.fftfreq(fftPoint, d=1.0 / fs)[:fftPoint // 2]

        # Plot Power FFT signal
        plt.subplot(614)
        plt.plot(fscale, Pframe)
        plt.xlabel("frequency [Hz]")
        plt.ylabel("amplitude spectrum")

        # Mel
        numChannels = 26
        df = fs / fftPoint
        filterbank, fcenters = melFilterBank(fs, fftPoint, numChannels)
        mspec = np.dot(Pframe, filterbank.T)

        # DCT
        ceps = dct(10 * np.lib.scimath.log10(mspec), type=2, norm="ortho", axis=-1)
        nceps = 13
        mfcc = ceps[:nceps]

        # Get MFCC
        print(mfcc)
        writer.writerow(mfcc)

        # Plot Mel-Filterbank
        plt.subplot(615)
        for c in np.arange(0, numChannels):
            plt.plot(np.arange(0, fftPoint / 2) * df, filterbank[c])
        plt.title('Mel filter bank')
        plt.xlabel('Frequency[Hz]')

        # Plot MFCC by DCT
        plt.subplot(616)
        plt.plot(fscale, 10 * np.log10(Aframe), label='Original Spectrum')
        plt.plot(fcenters, 10 * np.log10(mspec), "o-", label='Mel Spectrum')
        plt.xlabel("frequency[Hz]")
        plt.ylabel('Amplitude[dB]')
        plt.legend()

        # Show Plot
        plt.show()

    f.close()
