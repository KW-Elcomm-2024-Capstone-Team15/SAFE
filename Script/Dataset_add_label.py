import os


def load_dir(PATH_FILE):
    f = open(PATH_FILE, 'r')
    path = f.readline()
    f.close()
    return path


def label_files(path, NORMAL=False, FORMAT="wav", RE=False):
    if NORMAL:
        LABEL = "1_"
    else:
        LABEL = "0_"

    for dirname, _, filenames in os.walk(path):
        for filename in filenames:
            if filename[-3:] == FORMAT:
                src = os.path.join(dirname, filename)
                if RE:
                    dst_name = LABEL + filename[2:]
                else:
                    dst_name = LABEL + filename
                dst = os.path.join(dirname, dst_name)
                os.rename(src, dst)


if __name__ == '__main__':
    cwd = os.getcwd().replace('\\', '/')

    _my_dir = load_dir("./path_add_label.txt")
    _my_dir = _my_dir.replace('\\', '/')
    print(_my_dir)

    label_files(_my_dir, True, FORMAT='wav', RE=False)

