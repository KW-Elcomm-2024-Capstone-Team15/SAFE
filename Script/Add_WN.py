import shutil
import numpy as np
import soundfile as sf
import librosa as librosa
import os
import matplotlib.pyplot as plt
from pydub import AudioSegment
from pydub.playback import play
import audioread.exceptions
from scipy.signal import lfilter
import wave
import random
import itertools


def search_dir(dir_name):
    filenames = os.listdir(dir_name)
    for filename in filenames:
        full_filename = os.path.join(dir_name, filename)
        yield full_filename, filename


def move_dir(dr, noise, file):
    src = str(file)
    des = str(dr) + str(noise)
    try:
        if not os.path.exists(des):
            os.makedirs(des)
        shutil.move(src, des)
    except OSError as o_e:
        print('Error: Creating directory. ' + des)
        print(o_e)
        print("-------\n")


def plot_time_series(data):
    fig = plt.figure(figsize=(10, 4))
    plt.title('Raw wave ')
    plt.ylabel('Amplitude')
    plt.plot(np.linspace(0, 1, len(data)), data)
    plt.show()


def save_plot_time_series(data, filename, mydir):
    fig = plt.figure(figsize=(10, 4))
    plt.title('Raw wave ')
    plt.ylabel('Amplitude')
    plt.plot(np.linspace(0, 1, len(data)), data)
    plt.savefig('noise_plot_' + filename[:-4] + '.png')
    move_dir(mydir, 'noise plot', 'noise_plot_' + filename[:-4] + '.png')
    plt.close()


def adding_white_noise(filename, data, mydir, sr, noise_rate=0.01):
    wn = np.random.randn(len(data))
    data_wn = data + noise_rate * wn
    save_plot_time_series(wn, filename, mydir)
    sf.write('white_noise_' + filename, data_wn, sr)
    print('- Success')
    move_dir(mydir, 'white noise', 'white_noise_' + filename)

    return data


if __name__ == '__main__':
    _my_dir = input("디렉토리: ")
    _my_dir = _my_dir.replace('\\', '/')
    _my_dir = _my_dir + '/'

    for ch, fn in search_dir(_my_dir):
        print(ch)
        try:
            if os.path.isdir(ch):
                continue
            _data, _sr = librosa.load(ch, sr=None)
            adding_white_noise(fn, _data, _my_dir, _sr)
        except PermissionError as p_e:
            print(p_e)
            continue
