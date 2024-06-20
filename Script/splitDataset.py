import os
import shutil
import random


def copy_files(file_list, src_dir, dst_dir):
    for file in file_list:
        src_path = os.path.join(src_dir, file)
        dst_path = os.path.join(dst_dir, file)
        shutil.copyfile(src_path, dst_path)


def main(abnormal_dir, normal_dir, output_dir, test_ratio):
    learning_ratio = 1-test_ratio
    os.makedirs(output_dir, exist_ok=True)

    split_abnormal_dir = os.path.join(output_dir, '_abnormal')
    split_normal_dir = os.path.join(output_dir, '_normal')

    os.makedirs(split_abnormal_dir, exist_ok=True)
    os.makedirs(split_normal_dir, exist_ok=True)

    abnormal_files = os.listdir(abnormal_dir)
    normal_files = os.listdir(normal_dir)

    random.seed(42)
    random.shuffle(abnormal_files)
    random.shuffle(normal_files)

    abnormal_learning_end = int(learning_ratio * len(abnormal_files))
    normal_learning_end = int(learning_ratio * len(normal_files))

    abnormal_learning_files = abnormal_files[:abnormal_learning_end]
    abnormal_test_files = abnormal_files[abnormal_learning_end:]

    normal_learning_files = normal_files[:normal_learning_end]
    normal_test_files = normal_files[normal_learning_end:]

    learning_ab_dir = os.path.join(split_abnormal_dir, '_learning')
    test_ab_dir = os.path.join(split_abnormal_dir, '_test')

    learning_norm_dir = os.path.join(split_normal_dir, '_learning')
    test_norm_dir = os.path.join(split_normal_dir, '_test')

    os.makedirs(learning_ab_dir, exist_ok=True)
    os.makedirs(test_ab_dir, exist_ok=True)

    os.makedirs(learning_norm_dir, exist_ok=True)
    os.makedirs(test_norm_dir, exist_ok=True)

    copy_files(abnormal_learning_files, abnormal_dir, learning_ab_dir)
    copy_files(abnormal_test_files, abnormal_dir, test_ab_dir)

    copy_files(normal_learning_files, normal_dir, learning_norm_dir)
    copy_files(normal_test_files, normal_dir, test_norm_dir)


if __name__ == "__main__":
    import sys

    if len(sys.argv) < 2:
        print("Usage: python script.py <dataset_dir> <output_dir>")
        sys.exit(1)

    dataset_dir = sys.argv[1]
    abnormal_dir = dataset_dir+"\\_abnormal"
    normal_dir = dataset_dir+"\\_normal"

    output_dir = sys.argv[2]

    if len(sys.argv) > 3:
        test_ratio = sys.argv[3]
    else:
        test_ratio = 0.1

    main(abnormal_dir, normal_dir, output_dir, test_ratio)
