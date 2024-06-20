import os
import sys
import subprocess
import shutil

def search_dir(directory_name):
    filenames = os.listdir(directory_name)
    for filename in filenames:
        full_filename = os.path.join(directory_name, filename)
        if full_filename.endswith(".wav"):
            yield full_filename


def move_original_file(filepath, old_dir='./old'):
    if not os.path.exists(old_dir):
        os.makedirs(old_dir)
    destination = os.path.join(old_dir, os.path.basename(filepath))
    shutil.move(filepath, destination)
    print(f"Moved original file to: {destination}")


def get_leaf_directories(root_dir):
    leaf_dirs = []
    for dirpath, dirnames, filenames in os.walk(root_dir):
        if not dirnames:
            leaf_dirs.append(dirpath)
    return leaf_dirs


def main(directory):
    root_directory = directory
    leaf_directories = get_leaf_directories(root_directory)

    if not leaf_directories:
        print("No leaf directories found.")

    print(leaf_directories)
    print("\nSelecting random files from each leaf directory:")

    for leaf_dir in leaf_directories:
        for filepath in search_dir(leaf_dir):
            base_file = filepath[:-4]
            print(base_file)
            command = [
                "ffmpeg",
                "-i", filepath,
                "-f", "segment",
                "-segment_time", "1",
                "-c", "copy",
                f"{base_file}_%04d.wav"
            ]
            try:
                result = subprocess.run(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
                if result.returncode == 0:
                    print("Command executed successfully:", result.stdout)
                    move_original_file(filepath)
                else:
                    print("Error occurred:", result.stderr)
            except Exception as e:
                print("An error occurred while executing the ffmpeg command:", e)


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python script.py <directory>")
        sys.exit(1)

    directory = sys.argv[1]
    main(directory)
