# KDE Service Menus

This project started after sharing my first service menu, which was a simple example created for a blog post,
on the KDE-store website to make it available to everyone.

It wasn't my first service menu but the first I publicly shared, and after getting the first interested
comments by the community, I decided to publish other services that I use almost daily to speed up common
tasks from the command line.

As soon as I realized that they could be better integrated into the KDE/Plasma environment through the KDE
store, I re-arranged the material to provide a better experience to everyone having the same needs.

Growing them in number, I also worked release by release to optimize the whole process, making it easier
to manage and allow me to quickly publish a new package in case of fixes.

At the end I redacted my personal guidelines:
- The services shouldn't require any script bundled within the archive, all the commands must be included
  in the `Exec` key of the *desktop* file;
- the archive must include the minimum number of files:
  * The installer that is in charge of uninstalling the service too;
  * the README file for documentation;
  * a simple Makefile for those who don't like to README file for the basic commands;
  * the LICENSE file;
  * and, of course, the desktop file containing the service.
- the service must be documented at different levels:
  * in the desktop file itself;
  * in the README file;
  * in the KDE-store page;
  * in the Blog page.
- the list of commands must be as highly portable as possible for the two basic shells: Bash and Dash;
- the services should offer a deeper integration at the localization level, without compromising the
  previous requirements in terms of simplicity and *portability*.

Although I have been able to achieve the last two points only lately (February, 2024), these are, or will
be, the common features for of all the published services.

## The available services

My personal KDE service menus collection includes the following scripts:
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

There are several ways to install the service menus listed in this repository, the best option is always
using the Pling service directly from *Dolphin* or *Discover*, but in case something goes wrong during
the install, the manual procedure helps to identify a particular issue.

### KDE Plasma 6 support

To make it work under KDE Plasma 6 must complete the following steps first:
1. Install the `qtchooser` package
2. Be sure to have `qmake6` installed
3. Run in Konsole:
    ```
    qtchooser -install qt6 $(which qmake6)
    ```
4. In the .bashrc append the line:
    ```
    export QT_SELECT=qt6
    ```
5. Logout and login.

## Install

The archive contains a Makefile which can be used to install the content with ease,
just access the `{{service}}` subfolder with the terminal and type:
```
$ make install
```

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
