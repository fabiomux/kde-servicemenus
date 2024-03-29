# Download with yt-dlp here service menu

The service menu allows to download a media file from within one of the supported
websites in the current folder using the *yt-dlp* command line tool,
the successor of the more popular *youtube-dl* application.

## Features

These are the *Download with yt-dlp here* service menu features:
- Fully translated into 4 languages besides English
  (French, German, Italian, Spanish);
- Works from within the Dolphin, Konqueror, Krusader, and KFind-results context menu;
- Select the format among all the available formats;
- Select the format among the only audio formats;
- Select the format among the only video formats;
- Select the format among the audio + video formats;
- Automatically select the best audio format;
- Automatically select the best video format;
- Automatically select the best audio + video format.

## Requirements

- KDE 4 or superior
- yt-dlp

## Install

The archive contains a Makefile which can be used to install the content with ease,
just access the `download_with_yt-dlp_here` subfolder with the terminal and type:
```
$ make install
```

## Uninstall

To remove the installed file, just type from within the `download_with_yt-dlp_here` subfolder:
```
$ make uninstall
```

## Contributing

This addon is enabled to be fully translated in a custom language, to discover how
follow the instructions at the proper section in the [main README file][contributing].

## Get Help

- [FreeAptitude - Download with yt-dlp here][download] download page
- [yt-dlp Github repo][yt_dlp]
- [yt-dlp supported sites list][sites]

[download]: https://freeaptitude.altervista.org/downloads/download-with-yt-dlp-here.html "Download with yt-dlp here download page on FreeAptitude"
[contributing]: https://github.com/fabiomux/kde-servicemenus#contributing "How to contribute at the Download with yt-dlp here project"
[yt_dlp]: https://github.com/yt-dlp/yt-dlp "yt-dlp Github repo"
[sites]: https://github.com/yt-dlp/yt-dlp/blob/master/supportedsites.md "yt-dlp supported sites"
[§]: # "Generated by servicemenu_generator"
