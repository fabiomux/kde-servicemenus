# Download with youtube-dl here

KDE service menu available under the Dolphin contextual menu, which adds the ability
to download a media file linked within one of the supported websites in the current folder,
making use of the [youtube-dl](http://ytdl-org.github.io/youtube-dl/) command line tool.

The provided menus help to select one of the available formats:
- Among all the available formats;
- Among the only audio formats;
- Among the only video formats;
- Among the audio + video formats.

As a plus, the best format can be automatically downloaded by youtube-dl wherever the
service allows to choose among:
- the only audio formats;
- the only video formats;
- the audio + video formats.

More info about the youtube-dl project is available at:
- [youtube-dl Github repo](https://github.com/ytdl-org/youtube-dl)
- [Supported formats](https://ytdl-org.github.io/youtube-dl/supportedsites.html)

## Install

The archive contains a Makefile which can be used to install the content with ease,
just access the subfolder with the terminal and type:
```
$ make install
```

## Uninstall

To remove the installed file, just type from within the subfolder:
```
$ make uninstall
```

## Get Help

- [Freeaptitude blog - Download section - Download with youtube-dl](https://freeaptitude.altervista.org/downloads/download-with-youtube-dl-here.html)

