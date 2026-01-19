import pyttsx3
import pygame
import simpleaudio as sa
from pydub import AudioSegment
import os
import time

OUTPUT_FILE = "vocalB_output.wav"
BG_MUSIC_FILE = "bg_music.mp3"


# ---------------- TEXT TO SPEECH ---------------- #
def text_to_speech(text, rate=150):
    engine = pyttsx3.init()
    engine.setProperty("rate", rate)
    engine.save_to_file(text, OUTPUT_FILE)
    engine.runAndWait()


# ---------------- CHANGE AUDIO SPEED ---------------- #
def change_audio_speed(speed=1.0):
    audio = AudioSegment.from_wav(OUTPUT_FILE)
    modified = audio.speedup(playback_speed=speed)
    modified.export(OUTPUT_FILE, format="wav")


# ---------------- PLAY BACKGROUND MUSIC ---------------- #
def play_background_music():
    if not os.path.exists(BG_MUSIC_FILE):
        print("⚠ Background music file not found. Skipping music.")
        return

    pygame.mixer.init()
    pygame.mixer.music.load(BG_MUSIC_FILE)
    pygame.mixer.music.set_volume(0.3)
    pygame.mixer.music.play(-1)  # loop forever


# ---------------- PLAY SPEECH ---------------- #
def play_speech(loop=False):
    wave_obj = sa.WaveObject.from_wave_file(OUTPUT_FILE)

    try:
        while True:
            play_obj = wave_obj.play()
            play_obj.wait_done()
            if not loop:
                break
    except KeyboardInterrupt:
        print("\n⏹ Playback stopped by user.")


# ---------------- MAIN PROGRAM ---------------- #
def main():
    print("🎙 vocalB.py – Text to Speech Engine\n")

    text = input("Enter text to convert to speech:\n> ")

    try:
        speed = float(input("Speech speed (1.0 = normal): "))
    except ValueError:
        speed = 1.0

    loop_choice = input("Loop speech? (y/n): ").lower() == "y"

    print("\n🔊 Generating speech...")
    text_to_speech(text)

    print("⚙ Adjusting speed...")
    change_audio_speed(speed)

    print("🎵 Starting background music...")
    play_background_music()

    print("▶ Playing speech (Press CTRL+C to stop)")
    play_speech(loop_choice)

    pygame.mixer.music.stop()
    print("\n✅ Program ended.")


if __name__ == "__main__":
    main()
