import os

def get_leaf_directories(root_dir):
    leaf_dirs = []
    for dirpath, dirnames, _ in os.walk(root_dir):
        if not dirnames:
            leaf_dirs.append(dirpath)
    return leaf_dirs

def rename_files(leaf_directories):
    number = 0
    for leaf_dir in leaf_directories:
        wav_files = [f for f in os.listdir(leaf_dir) if f.lower().endswith(".wav") and os.path.isfile(os.path.join(leaf_dir, f))]
        if wav_files:
            number = 0
            for wav_file in wav_files:
                old_file_path = os.path.join(leaf_dir, wav_file)
                new_file_path = os.path.join(leaf_dir, str(number) + "_" + wav_file)
                print(new_file_path)
                os.rename(old_file_path, new_file_path)
                number += 1

if __name__ == '__main__':
    import sys

    # Check input parameters
    if len(sys.argv) != 2:
        print("Check input parameters:")
        print("[1. Check Dir]")
        sys.exit(1)

    root_directory = sys.argv[1]
    leaf_directories = get_leaf_directories(root_directory)
    rename_files(leaf_directories)