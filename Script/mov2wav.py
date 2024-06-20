import os
import subprocess

def convert_mov_to_wav(mov_file, wav_file):
    command = ["ffmpeg", "-i", mov_file, "-vn", "-acodec", "pcm_s16le", "-ar", "16000", "-ac", "1", wav_file]
    result = subprocess.run(command, capture_output=True, text=True)
    if result.returncode == 0:
        print(f"Successfully converted {mov_file} to {wav_file}")
    else:
        print(f"Error converting {mov_file} to {wav_file}: {result.stderr}")

def find_and_convert_mov_files(dir):
    for filename in os.listdir(dir):
        if filename.lower().endswith('.mp4'):
            wav_filename = filename.rsplit('.', 1)[0] + '.wav'
            convert_mov_to_wav(os.path.join(dir, filename), os.path.join(dir, wav_filename))

if __name__ == "__main__":
    import sys

    if len(sys.argv) != 2:
        print("Usage: python script.py <directory>")
        sys.exit(1)

    dir = sys.argv[1]
    find_and_convert_mov_files(dir)