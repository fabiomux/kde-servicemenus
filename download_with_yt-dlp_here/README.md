# Download with yt-dlp here

KDE service menu available under the Dolphin contextual menu, which adds the ability
to download a media file linked within one of the supported websites in the current folder,
making use of the [yt-dlp][yt_dlp] command line tool which is a fork of the more popular
youtube-dl CLI application.

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

More info about the yt-dlp project is available at:
- [yt-dlp Github repo][yt_dlp]
- [Supported sites][yt_dlp_sites]

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

- [Freeaptitude blog - Download with yt-dlp][download_page]

[yt_dlp]: https://github.com/yt-dlp/yt-dlp "yt-dlp project page"
[yt_dlp_sites]: https://github.com/yt-dlp/yt-dlp/blob/master/supportedsites.md "List of supported sites"
[download_page]: https://freeaptitude.altervista.org/downloads/download-with-yt-dlp-here.html "Download with yt-dlp page on Freeaptitude"
