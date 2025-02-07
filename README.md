# FAST ACTIONS OSX TOOLS "AUTOMATOR"

![Acciones rapidas submenu][image1]

These are tools for converting or renaming files, by right-clicking and selecting an option under "Special Actions".

For this purpose, we use "Automator".

List of available tools:

- Convert AVI to MP4 (*1)
- Convert AVIF to JPG
- Convert Image to AVIF
- Convert JPG to HEIC
- Convert HEIC to JPG
- Convert WEBM image to JPG
- Convert MOV to MP4 (*1)
- Convert MOV to GIF (*1)
- Convert Video to HEVC 1:1 (*1)
- Convert Video to HEVC SD (*1)
- Convert Video to MKV (*1)
- Convert Mov to WEBP (*1)
- Files Batch Rename
- Folder to HTTP server on port 8080
- M3U8 is a batchet video used for stream, you can reconstruct small pices to normal video

__All tools can process multiple files, sequentially "one after another".__

(1*) It works with any video format, not necessarily Avi to..., Mov to..., it can be mp4 to ...

---

# Dependences for proper works

Simply open your terminal and in the same folder, type `chmod +x ./install.sh && ./install.sh` to install all dependencies and move the tools to their respective folder.

Or, if you prefer, you can do it manually:


***First step***: you need install brew [https://brew.sh/]
***Second step***: 
For Videos
```shell
brew install ffmpeg ffmpeg2theora
```

Images
```shell
brew install imagemagick
```

Images AVIF
```shell
brew install joedrago/repo/avifenc
```

Clone the repository


Copy all the contents of the `workflow` folder to `/Users/<USER>/Library/Services/`


As they are installed, we make secondary click on some image or file, in the submenu we go to quick or service actions > Customize.


It will open extensions of the System Setup, with the options copied previously, we give to check in those that we want and already we can use them.

---

## Issue how I know if it working?

In your top bar appear animated gear.

![Acciones rapidas submenu][image3]


[image1]: images/image_1.png
[image2]: images/image_2_automator.png
[image3]: images/image_3_process.png

---

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=klich3/OSX-Automator-custom-actions&type=Date)](https://star-history.com/#klich3/OSX-Automator-custom-actions&Date)
