# ffmpeg -i <orig_wavfile>.wav -ar 16000 -ac 1 <conv_wavfile>.wav

import os
import subprocess
import shutil

def convert_wav(original_wav, new_wav):
    command = ["ffmpeg", "-y", "-i", original_wav, "-ar", "14000", "-ac", "1", new_wav]
    result = subprocess.run(command, capture_output=True, text=True)
    if result.returncode == 0:
        print(f"Successfully converted {original_wav}")
    else:
        print(f"Error converting {original_wav}: {result.stderr}")

def find_and_convert(dir):
    old_dir = os.path.join(dir, 'old')
    os.makedirs(old_dir, exist_ok=True)
    
    for filename in os.listdir(dir):
        if filename.lower().endswith('.wav'):
            original_path = os.path.join(dir, filename)
            new_path = os.path.join(old_dir, filename)
            shutil.move(original_path, new_path)
            convert_wav(new_path, original_path)

if __name__ == "__main__":
    import sys

    if len(sys.argv) != 2:
        print("Usage: python script.py <directory>")
        sys.exit(1)

    dir = sys.argv[1]
    find_and_convert(dir)
