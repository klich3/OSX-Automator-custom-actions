# FAST ACTIONS OSX TOOLS "AUTOMATOR"

![Acciones rapidas submenu][image1]

These are tools for converting or renaming files, by right-clicking and selecting an option under "Special Actions".

For this purpose, we use "Automator".

List of available tools:

**Video**
- Convert AVI to MP4 (*1)
- Convert MOV to MP4 (*1)
- Convert MOV to GIF (*1)
- Convert Video to HEVC 1:1 (*1)
- Convert Video to HEVC SD (*1)
- Convert Video to MKV (*1)
- Convert Mov to WEBP (*1)
- M3U8 — reconstruct stream video chunks into a single file

**Images**
- Convert AVIF to JPG
- Convert Image to AVIF
- Convert JPG to HEIC
- Convert HEIC to JPG
- Convert WEBM image to JPG

**Documents**
- Docs to MD — convert documents to Markdown (PDF, DOCX, PPTX, XLSX, HTML, images and more) (*2)

**Utils**
- Files Batch Rename
- Folder to HTTP server on port 8080

__All tools can process multiple files, sequentially "one after another".__

(*1) It works with any video format, not necessarily AVI to..., MOV to... — it can be MP4 to anything.

(*2) Self-installing on first run, no manual setup needed.

---

# Dependencies

Simply open your terminal and in the same folder, type `chmod +x ./install.sh && ./install.sh` to install all dependencies and move the tools to their respective folder.

Or, if you prefer, you can do it manually:

***First step***: install Homebrew — [https://brew.sh/]

***Second step***:

Videos
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

Clone the repository and copy all the contents of the `workflow` folder to `/Users/<USER>/Library/Services/`

Right-click any file → Quick Actions → Customize, then enable the actions you want.

---

## Docs to MD

Convert any document to Markdown with a right-click. Useful for feeding files into LLMs, archiving content as plain text, or extracting structured data.

**Supported formats:** PDF, DOCX, PPTX, XLSX, HTML, XML, CSV, JSON, ZIP, images (OCR), audio (transcription) and more.

**On first run** the workflow installs everything automatically:

1. Installs `uv` (Python package manager) if not present
2. Clones [markitdown](https://github.com/microsoft/markitdown) into `~/.automator/markitdown/`
3. Creates a Python 3.12 virtual environment and installs `markitdown[all]` and `markitdown-ocr`

From the second run onwards it goes straight to conversion. Output is saved next to the original file:

```
report.pdf         →  report.md
presentation.pptx  →  presentation.md
spreadsheet.xlsx   →  spreadsheet.md
```

**Setup:** open the `Docs to MD.workflow` in Automator, paste the contents of `markitdown/markitdown-service.sh` into the *Run Shell Script* action, save and enable via Quick Actions → Customize.

---

## How do I know if it's working?

An animated gear appears in your top menu bar while the action runs.

![Acciones rapidas submenu][image3]

---

[image1]: images/image_1.png
[image2]: images/image_2_automator.png
[image3]: images/image_3_process.png

---

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=klich3/OSX-Automator-custom-actions&type=Date)](https://star-history.com/#klich3/OSX-Automator-custom-actions&Date)
