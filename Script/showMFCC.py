import numpy as np # linear algebra
import pandas as pd # data processing, CSV file I/O (e.g. pd.read_csv)
import os
import shutil
import librosa
import librosa.display
import IPython.display as ipd
import matplotlib.pyplot as plt


def wav2melSpec(AUDIO_PATH):
    y, sr = librosa.load(AUDIO_PATH)
    audio = librosa.resample(y=y, orig_sr=sr, target_sr=RE_SR)
    return librosa.feature.mfcc(y=audio, sr=sr, n_fft=1024, n_mels=26, n_mfcc=26, hop_length=1024, win_length=1024)


def imgSpec(ms_feature):
    fig, ax = plt.subplots()
    ms_dB = librosa.power_to_db(ms_feature, ref=np.max)
    print(ms_feature.shape)
    img = librosa.display.specshow(ms_dB, x_axis='time', y_axis='mel', ax=ax)
    fig.colorbar(img, ax=ax, format='%+2.0f dB')
    ax.set(title='Mel-frequency spectrogram')
    

def hear_audio(AUDIO_PATH):
    audio, sr = librosa.load(AUDIO_PATH)
    print("\t", end="")
    ipd.display(ipd.Audio(data=audio, rate=sr))


def get_audio_info(path, show_melspec=True):
    spec = wav2melSpec(path)
    # print(spec)
    # print(spec.dtype)
    filedir = str(path)
    filedir = filedir.split('\\')
    filename = filedir[-1]
    # print(filedir)
    PLOTFILE = str(filename[:-4]) + '.png'
    label = str(filename[0])
    # print(PLOTFILE)

    if label is not None:
        print("Label:", label)
        if label == '1':
            LABEL = "정상"
        elif label == '0':
            LABEL = "사고"
        else:
            LABEL = "NONE"
    if show_melspec is not False:
        imgSpec(spec)
        plt.savefig(PLOTFILE)
        plt.close()
        move_dir(SAVEDIR + '/' + LABEL, PLOTFILE)
    # hear_audio(path)


def move_dir(dr, file):
    src = str(file)
    des = str(dr)
    try:
        if not os.path.exists(des):
            os.makedirs(des)
        shutil.move(src, des)
    except OSError as o_e:
        print('Error: Creating directory. ' + des)
        print(o_e)
        print("-------\n")


def get_leaf_directories(root_dir):
    leaf_dirs = []
    for dirpath, dirnames, _ in os.walk(root_dir):
        if not dirnames:
            leaf_dirs.append(dirpath)
    return leaf_dirs


def convert_dir_rule(dir):
    dir = dir.replace('\n', '')
    dir = dir.replace('\\', '/')
    dir = dir + '/'
    return dir


def load_dir(PATH_FILE):
    f = open(PATH_FILE, 'r', encoding='UTF8')
    dir = f.readline()
    f.close()
    return dir


def return_all_wav(leaf_directories):
    for leaf_dir in leaf_directories:
        wav_files = [f for f in os.listdir(leaf_dir) if f.lower().endswith(".wav") and os.path.isfile(os.path.join(leaf_dir, f))]
        if wav_files:
            for wav_file in wav_files:
                yield leaf_dir + '/' + wav_file
                # print(leaf_dir + '/' + wav_file)


def label_files(path, NORMAL=False, FORMAT="wav"):
    if NORMAL:
        LABEL = "1_"
    else:
        LABEL = "0_"

    for dirname, _, filenames in os.walk(path):
        for filename in filenames:
            if filename[-3:] == FORMAT:
                src = os.path.join(dirname, filename)
                dst_name = LABEL + filename
                dst = os.path.join(dirname, dst_name)
                os.rename(src, dst)


if __name__ == '__main__':
    RE_SR = 44100
    NORMAL = False
    MOVE = True
    SAVEDIR = "./mfccplot/"

    _my_dir= load_dir("./path_mfccplot.txt")
    _my_dir = convert_dir_rule(_my_dir)

    root_directory = _my_dir
    leaf_directories = get_leaf_directories(root_directory)

    if not leaf_directories:
        print("No leaf directories found.")
    print(leaf_directories)

    file_count = 0
    for wav_file in return_all_wav(leaf_directories):
        get_audio_info(wav_file, True)
