import numpy as np
import os


def load_dir(PATH_FILE):
    f = open(PATH_FILE, 'r')
    path = f.readline()
    f.close()
    return path


def get_leaf_directories(root_dir):
    leaf_dirs = []
    for dirpath, dirnames, _ in os.walk(root_dir):
        if not dirnames:
            leaf_dirs.append(dirpath)
    return leaf_dirs


def return_all_vec(leaf_directories):
    for leaf_dir in leaf_directories:
        mfccVec = [f for f in os.listdir(leaf_dir) if f.lower().endswith(".txt") and os.path.isfile(os.path.join(leaf_dir, f))]
        if mfccVec:
            for mfcc in mfccVec:
                yield leaf_dir + '/' + mfcc


if __name__ == '__main__':
    cwd = os.getcwd().replace('\\', '/')
    _my_dir = load_dir("./path_testvec2nparr.txt")
    _my_dir = _my_dir.replace('\\', '/')
    print(_my_dir)


    root_directory = _my_dir
    leaf_directories = get_leaf_directories(root_directory)

    if not leaf_directories:
        print("No leaf directories found.")
    print(leaf_directories)

    file_count = 0
    for vecfile in return_all_vec(leaf_directories):
        with open(vecfile, 'r') as f:
            for vec in vecfile:
                hex_string = f.readline()
                print(hex_string, end="")

                byte_data = bytes.fromhex(hex_string)
                print(byte_data)
                mfcc = np.frombuffer(byte_data, dtype=np.float32)

                print(mfcc)
                print(mfcc.dtype)
                print("----")

