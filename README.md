# WHAT IS?

This is multiples "Automator" tools.

# WHERE TO INSTALL

The scripts folder are located on `/Users/<USER>/Library/Services/`

copy all workflows manually or run script:

1) in terminal go to cloned dir
2) `chmod +x install.sh `
3) `./install.sh`


Others folders:

***Services*** - ~/Library/Services
***Folder Action*** - The actual workflow is saved in ~/Library/Workflows/Applications/Folder Actions. When creating the folder action, it asks for a folder to 'attach' to in the dropdown at the top. The actions will apply to the folder you choose here.
***Print Plugin*** - ~/Library/PDF Services
***iCal Alarm*** - ~/Library/Workflows/Applications/iCal
***Image Capture Plugin*** - ~/Library/Workflows/Applications/Image Capture

# How to add new functions on `Fast actions` submenu
![Acciones rapidas submenu][image1]

## Dependences FFMPEG

***First step***: you need install brew [https://brew.sh/]
***Second step***: 
For Videos
```shell
brew install ffmpeg ffmpeg2theora
```

Images
```shell
brew install --with-libheif imagemagick
```

Images AVIF
```shell
brew install joedrago/repo/avifenc
```

now you have all to done it, okey...

## Automator creating service convert videos
![Acciones rapidas submenu][image2]

Open Automator and select `service` with next structure:

* Get input from Finder
* Adjust variable value with `input` connection
* Run shell script

### Shell commands

*** Video to OVG ***: 
```shell 
/usr/local/bin/ffmpeg2theora -i "$1" libtheora -q:v 7 -c:a libvorbis -q:a 4 "$1-hd.ogv"
```

*** Video AVI to MP4 ***:
```shell
/usr/local/bin/ffmpeg -i "$1" -c:v copy -c:a copy -y "$1.mp4"
```

*** Video MP4 to HEVC ***:
```shell
/usr/local/bin/ffmpeg -i "$1" -c:v libx265 -crf 28 -c:a aac -b:a 128k -tag:v hvc1 "$1.mp4"
```

*** Video MOV to WEBP transparent ***:
```shell
/usr/local/bin/ffmpeg -i "$1" -c:v libvpx-vp9 "$1.webm"
```

*** Images to AVIF ***:
```shell
/usr/local/bin/avifenc "$1" "$1.avif"
```
Doc: https://web.dev/compress-images-avif/

*** Images AVIF to JPG ***:
```shell
/usr/local/bin/avifdec "$1" "$1.jpg"
```

## Automator creating service convert batch images

Structure:
* Get items from selected finder
* Get content from finder
* Rename items from folder:
  * Replace text, search: .jpeg, replace: .jpg, in options check: show process

*** Video HEIC to JPG transparent ***:
```shell
/usr/local/bin/magick convert $1 "$1.jpg"
```

*** Video JPG to HEIC transparent ***:
```shell
/usr/local/bin/magick convert $1 "$1.heic"
```

## Issue how I know if it working?

In your top bar appear animated gear.

![Acciones rapidas submenu][image3]


[image1]: images/image_1.png
[image2]: images/image_2_automator.png
[image3]: images/image_3_process.png

---

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=klich3/OSX-Automator-custom-actions&type=Date)](https://star-history.com/#klich3/OSX-Automator-custom-actions&Date)
