import os
import sys

def rename_files(directory_path, LABEL):
    try:
        os.chdir(directory_path)
        for index, filename in enumerate(os.listdir(directory_path)):
            if os.path.isfile(filename) and filename.lower().endswith('.wav'):
                new_filename = f'{LABEL}_{index + 1:04d}.wav'
                os.rename(filename, new_filename)
                print(f'Renamed: {filename} -> {new_filename}')

        print('모든 파일의 이름을 변경했습니다.')

    except Exception as e:
        print(f'오류 발생: {e}')

if __name__ == '__main__':
    if len(sys.argv) != 2:
        print("Usage: python rename_files.py <directory>")
        sys.exit(1)

    LABEL = "NO"
    _dir = sys.argv[1]
    rename_files(_dir, LABEL)