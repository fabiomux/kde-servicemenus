# KDE Service Menus

My personal KDE service menus collection, it includes the following scripts:
- [Compose with Betterbird][compose_with_betterbird]:
  compose a new email with the Betterbird email client using the selected files as attachment;
- [Compose with Betterbird (Flatpak edition)][compose_with_betterbird_flatpak]:
  compose a new email with the Betterbird email client using the selected files as attachment (Flatpak edition);
- [Compose with Thunderbird][compose_with_thunderbird]:
  compose a new email with Thunderbird email client using the selected files as attachment;
- [Compose with Thunderbird (Flatpak edition)][compose_with_thunderbird_flatpak]:
  compose a new email with Thunderbird email client using the selected files as attachment (Flatpak edition);
- [Copy Filelist to Klipper][copy_filelist_to_klipper]:
  copy the result of a several types of finding, accomplished through the *find* command, in the clipboard
  area using the Klipper D-Bus service;
- [Copy to Klipper][copy_to_klipper]:
  copy the selected filename name, or parts of it, in the clipboard area using the Klipper D-Bus service;
- [Download with youtube-dl here][download_with_youtubedl]:
  download a file in the current folder making use of the *youtube-dl* command line tool;
- [Download with yt-dlp here][download_with_ytdlp]:
  download a file in the current folder making use of the *yt-dlp* command line tool;
- [Open Konsole Here][open_konsole_here]:
  open the selected path in the first or last Konsole window, current or new session;
- [Open with gVIM][open_with_gvim]:
  displays all the selected files in different gVIM tabs instead of opening them in hidden buffers;
- [Open Yakuake Here][open_yakuake_here]:
  open the selected path in the current or new Yakuake session, within the current terminal with or without
  splitting it horizontally or vertically;
- [Scan with ClamAV][scan_with_clamav]:
  scan the current directory or selected folder/file with ClamAV using either Yakuake or Konsole;
- [SQLite Tools][sqlite_tools]:
  useful commands to perform on SQLite database files.

## Installation

There are several options to install the service menus listed in this repository.

### From Dolphin

All of them are available at the [KDE store][kde_store] and in the connected sites
([Opendesktop][opendesktop], [Pling][pling]), that way the installation can be
easily performed using the proper Dolphin interface available among the settings:

> Settings > Services > Download new Services

Just fill up the text box with the service name and, once found, install it from that interface.

### Downloading the archive from Pling

The compressed archive can be downloaded from Pling or the other twin websites, and can be used in two ways:
- extracting it and running the `Makefile` included;
- using the `servicemenuinstaller` command;
- extracting it and manually copy the files.

Let see them in details.

#### Makefile

So after extracting the archive:
```
$ tar -xvf <archive-name.tgz>
```

And entered the folder:
```shell
$ cd <project_folder>
```

The following command can be launch to install the service menu:
```shell
$ make install
```

To remove the service, from within the same folder:
```shell
$ make uninstall
```

#### Servicemenuinstaller

This is a Dolphin utility which automatically install the archives downloaded from Pling/KDE-store.
```shell
$ servicemenuinstaller install <archive-name.tgz>
```

To uninstall it must use the same archive and run the command:
```shell
$ servicemenuinstaller uninstall <archive-name.tgz>
```

#### Manual install

To install a service manually, if not otherwise advised, it's just easy as copying the *.desktop*
file under the local folder:

- KDE 4: *~/.kde4/share/kde4/services/ServiceMenus/*
- KDE 5: *~/.local/share/kservices5/ServiceMenus/*

### From the GitHub repository

Once cloned the repository locally:
```shell
$ git clone https://github.com/fabiomux/kde-servicemenus.git
```

Enter the project folder:
```shell
$ cd kde-servicemenus
```

Build the archive for the wanted project using as name the related folder:
```shell
$ make <project_name>
```

Install it using the *Dolphin* utility:
```shell
$ servicemenuinstaller install <archive-name.tgz>
```

You can use the same archive to uninstall the service if not needed:
```shell
$ servicemenuinstaller uninstall <archive-name.tgz>
```

## Contributing

Besides reporting bugs or asking for new features in the issue queue, another way to lend your help to
the project is translating the strings used within the service menus.

To make the services full compliant to a particular language, I created a system to embed the strings
directly within the exec line and generate a different package for each of them.

It is still at an early stage and the old services should be re-converted to take advantage of this
system, but can follow the progress looking at the `_locale` subfolder that hosts the translations with
the following structure:

    _locale/<service_folder>/<language_code>.yaml

The placeholders are quite self-explanatory, all the translations are based on the `en.yaml` file and
respect the *YAML* format.

## Get Help

More info is available at:
- the [project page][project_page] on Freeaptitude blog.


[compose_with_betterbird]: https://github.com/fabiomux/kde-servicemenus/tree/main/compose_with_betterbird "Compose with Betterbird GitHub page"
[compose_with_betterbird_flatpak]: https://github.com/fabiomux/kde-servicemenus/tree/main/compose_with_betterbird-flatpak "Compose with Betterbird Flatpak edition GitHub page"
[compose_with_thunderbird]: https://github.com/fabiomux/kde-servicemenus/tree/main/compose_with_thunderbird "Compose with Thunderbird GitHub page"
[compose_with_thunderbird_flatpak]: https://github.com/fabiomux/kde-servicemenus/tree/main/compose_with_thunderbird-flatpak "Compose with Thunderbird Flatpak edition GitHub page"
[copy_filelist_to_klipper]: https://github.com/fabiomux/kde-servicemenus/tree/main/copy_filelist_to_klipper "Copy Filelist to Klipper GitHub page"
[copy_to_klipper]: https://github.com/fabiomux/kde-servicemenus/tree/main/copy_to_klipper "Copy to Klipper GitHub page"
[download_with_youtubedl]: https://github.com/fabiomux/kde-servicemenus/tree/main/download_with_youtube-dl_here "Download with youtube-dl GitHub page"
[download_with_ytdlp]: https://github.com/fabiomux/kde-servicemenus/tree/main/download_with_yt-dlp_here "Download with yt-dlp GitHub page"
[open_konsole_here]: https://github.com/fabiomux/kde-servicemenus/tree/main/open_konsole_here "Open Konsole Here GitHub page"
[open_with_gvim]: https://github.com/fabiomux/kde-servicemenus/tree/main/open_with_gvim "Open with gVIM GitHub page"
[open_yakuake_here]: https://github.com/fabiomux/kde-servicemenus/tree/main/open_yakuake_here "Open Yakuake here GitHub page"
[scan_with_clamav]: https://github.com/fabiomux/kde-servicemenus/tree/main/scan_with_clamav "Scan with ClamAV GitHub page"
[sqlite_tools]: https://github.com/fabiomux/kde-servicemenus/tree/main/sqlite_tools "SQLite Tools GitHub page"

[kde_store]: https://store.kde.org "KDE store home page"
[opendesktop]: https://opendesktop.org "Opendesktop home page"
[pling]: https://pling.com "Pling home page"

[project_page]: https://freeaptitude.altervista.org/projects/kde-servicemenus.html "KDE ServiceMenus project page on Freeaptitude"
