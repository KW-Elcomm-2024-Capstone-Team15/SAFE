#!/usr/bin/env python3
import os
import subprocess
import shutil
import time
import yt_dlp

def download_and_trim(video_id, label_file, output_folder):
    youtube_url = f"https://www.youtube.com/watch?v={video_id}"
    output_wav_file = os.path.join(output_folder, f"{video_id}.wav")

    # Download audio using yt_dlp
    ydl_opts = {
        'format': 'bestaudio/best',
        'postprocessors': [{
            'key': 'FFmpegExtractAudio',
            'preferredcodec': 'wav',
            'preferredquality': '0',
        }],
        'outtmpl': f"{video_id}.%(ext)s",
    }

    with yt_dlp.YoutubeDL(ydl_opts) as ydl:
        ydl.download([youtube_url])

    # Trim and save audio based on label file
    with open(label_file, 'r') as labels:
        counter = 1
        for line in labels:
            line = line.strip()
            if not line or line.startswith("\\"):
                continue
            start_time, stop_time, category = line.split()
            output_category_folder = os.path.join(output_folder, category)
            os.makedirs(output_category_folder, exist_ok=True)
            trimmed_file_name = f"{video_id}_{counter}-{category}.wav"
            trimmed_file_path = os.path.join(output_category_folder, trimmed_file_name)
            subprocess.run(["sox", "-t", "wav", output_wav_file, trimmed_file_path, "trim", start_time, f"={stop_time}"])
            counter += 1

    # Remove the original audio file
    os.remove(output_wav_file)

def main(labels_folder, output_folder):
    os.makedirs(output_folder, exist_ok=True)

    file_counter = 1
    total_files = len([f for f in os.listdir(labels_folder) if f.endswith('.txt')])

    for label_file in os.listdir(labels_folder):
        if not label_file.endswith('.txt'):
            continue

        file_counter += 1
        progress = file_counter / total_files * 100
        print(f"------------ Progress={progress:.2f}% -------------")

        video_id = label_file.split('.')[0]
        is_already_present = any(video_id in file for file in os.listdir(output_folder))
        if is_already_present:
            continue

        print(f"Downloading and trimming file {label_file} ...")
        download_and_trim(video_id, os.path.join(labels_folder, label_file), output_folder)
        # Throttling to avoid "Youtube Error 429 Too many requests"
        print("Sleeping for 120 seconds...")
        time.sleep(120)

    print("DONE!")

if __name__ == "__main__":
    import sys

    # Check input parameters
    if len(sys.argv) != 3:
        print("Check input parameters:")
        print("[1. Folder with videoID.txt files with annotation]")
        print("[2. Output folder]")
        sys.exit(1)

    labels_folder = sys.argv[1]
    output_folder = sys.argv[2]

    main(labels_folder, output_folder)
