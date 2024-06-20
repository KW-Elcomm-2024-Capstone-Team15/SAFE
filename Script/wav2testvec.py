import shutil
import os
import librosa
import struct
import Dataset_add_label as DAL


def search_dir(dir_name):
    filenames = os.listdir(_my_dir)
    for filename in filenames:
        full_filename = os.path.join(dir_name, filename)
        yield full_filename, filename


def binary_search_directories(root_dir, depth=0):
    if depth == 0:
        print("Searching directories using binary search:")
    
    files = os.listdir(root_dir)
    files.sort()

    mid = len(files) // 2
    left, right = files[:mid], files[mid:]

    for subdir in left + right:
        path = os.path.join(root_dir, subdir)
        if os.path.isdir(path):
            binary_search_directories(path, depth + 1)
    
    if not any(os.path.isdir(os.path.join(root_dir, subdir)) for subdir in files):
        print("Leaf Directory Found:", root_dir)
        return root_dir


def move_dir(src, des, subdir_name = "", MOVE = False):
    des = str(des) + str(subdir_name)
    try:
        if not os.path.exists(des):
            os.makedirs(des)
        if MOVE == True:
            shutil.move(src, des)
        else:
            shutil.copy2(src, des)

    except OSError as o_e:
        print('Error: Creating directory. ' + des)
        print(o_e + "\n-------\n")


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
    dirs = f.readlines()
    f.close()
    return dirs[0], dirs[1]


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


def main(NORMAL, RE_SR, _my_dir, _move_dir):
    root_directory = _my_dir
    leaf_directories = get_leaf_directories(root_directory)

    if not leaf_directories:
        print("No leaf directories found.")
    print(leaf_directories)

    file_count = 0
    for wav_file in return_all_wav(leaf_directories):
        print(wav_file)
        try:    
            y, sr = librosa.load(wav_file, sr=None, mono=True)
            if sr != RE_SR:
                audio = librosa.resample(y=y, orig_sr=sr, target_sr=RE_SR)
            else:
                audio = y
            print(audio)
            # print(audio.dtype)
            hex_audio_arr = [struct.unpack('I', struct.pack('f', num))[0] for num in audio]

            FILENAME = str("%010d" %(file_count))
            print(FILENAME)
            f = open(_move_dir + FILENAME + '.txt', 'w', encoding='utf-8')
            f.write(str(format(int(len(hex_audio_arr)), '08x')) + '\n')

            for hex_audio in hex_audio_arr:
                hex_audio_str = str(hex(hex_audio)) + '\n'
                f.write(hex_audio_str[2:])
            f.close()

            file_count += 1
        except:
            continue

    label_files(_move_dir, NORMAL, FORMAT="txt")


if __name__ == "__main__":
    import sys

    if len(sys.argv) < 2:
        print("Usage: python script.py <pick_directory> [<save_directory>] [<filetype>]")
        sys.exit(1)

    pick_directory = sys.argv[1]

    if len(sys.argv) > 2:
        save_directory = sys.argv[2]
    else:
        save_directory = pick_directory

    if len(sys.argv) > 3:
        nomal = sys.argv[3]
        if nomal == 'T':
            NORMAL = True
        elif nomal == 'F':
            NORMAL = False
        else:
            print("Nomal argu is not valid.")
    else:
        NORMAL = True

    if len(sys.argv) > 4:
        RE_SR = sys.argv[4]
    else:
        RE_SR = 14000

    main(NORMAL, RE_SR, pick_directory, save_directory)
