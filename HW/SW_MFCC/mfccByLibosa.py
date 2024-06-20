import librosa
import numpy as np
import matplotlib.pyplot as plt
import soundfile as sf
import csv
import wave

result = []
f = open('result_Librosa.csv', 'w')
writer = csv.writer(f)

wf = wave.open('./dataset/test.wav', "r")
fs = wf.getframerate()

for block in sf.blocks('./dataset/test.wav', blocksize=4096):

    # framing
    frame = []
    for _ in block:
        frame.append(float(_[0]))

    frame = np.array(frame)

# y, sr = librosa.load('./dataset/test.wav', sr= fs )
    mfcc = librosa.feature.mfcc(y=frame, sr=fs, n_mfcc=12, dct_type= 1 )

    print(mfcc.shape)
    print(mfcc[0])

    writer.writerow(mfcc[0])
f.close()