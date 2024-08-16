#!/bin/bash


echo "Copy all scripts to you sistem"
cp -R ./workflow/* $HOME/Library/Services/

echo "Check dependencies"

if ! command -v brew &> /dev/null
then
    echo "brew could not be found"
    echo "Install brew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "brew is installed"
fi

Echo "> 50% done"

if ! command -v ffmpeg &> /dev/null
then
    echo "ffmpeg could not be found"
    echo "Install ffmpeg"
    brew install ffmpeg
else
    echo "ffmpeg is installed"
fi

Echo "> 70% done"

if ! command -v ffmpeg2theora &> /dev/null
then
    echo "ffmpeg2theora could not be found"
    echo "Install ffmpeg2theora"
    brew install ffmpeg2theora
else
    echo "ffmpeg2theora is installed"
fi

Echo "> 80% done"

if ! command -v imagemagick &> /dev/null
then
    echo "imagemagick could not be found"
    echo "Install imagemagick"
    brew install imagemagick
else
    echo "imagemagick is installed"
fi

Echo "> 90% done"

if ! command -v avifenc &> /dev/null
then
    echo "avifenc could not be found"
    echo "Install avifenc"
    brew install joedrago/repo/avifenc
else
    echo "avifenc is installed"
fi

Echo "> 100% done now you can use the scripts"
