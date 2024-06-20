import shutil
import os
import random
import sys


def randSel(self, path):
    self.path = path
    self.file_list = []
    for dirname, _, filenames in os.walk(path):
        for filename in filenames:
            if filename[-3:] == "wav":
                self.file_list.append(os.path.join(dirname, filename))
    return self.file_list


def get_leaf_directories(root_dir):
    leaf_dirs = []
    for dirpath, dirnames, filenames in os.walk(root_dir):
        if not dirnames:
            leaf_dirs.append(dirpath)
    return leaf_dirs


def select_random_wav_files(directory, num_files=5):
    wav_files = [f for f in os.listdir(directory) if f.lower().endswith(".wav") and os.path.isfile(os.path.join(directory, f))]
    return random.sample(wav_files, min(num_files, len(wav_files)))


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
        print(o_e)
        print("-------\n")


def main(pick_directory, save_directory, MOVE=True):
    root_directory = pick_directory
    leaf_directories = get_leaf_directories(root_directory)

    if not leaf_directories:
        print("No leaf directories found.")

    print(leaf_directories)
    print("\nSelecting random files from each leaf directory:")

    for leaf_dir in leaf_directories:
        random_files = select_random_wav_files(leaf_dir, SEL_FILE_NUM)
        print(f"\nRandom files from {leaf_dir}:")
        for file in random_files: 
            select_file = str(leaf_dir) + "/" + str(file)
            move_dir(select_file, save_directory, MOVE=MOVE)


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python script.py <directory>")
        sys.exit(1)

    pick_directory = sys.argv[1]

    if sys.argv[2]:
        MOVE = True
        save_directory = sys.argv[2]
    else:
        MOVE = False

    SEL_FILE_NUM = 1200
    main(pick_directory, save_directory, MOVE)

