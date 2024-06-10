# KDE Service Menus

KDE service menus, or Dolphin service menus, are mainly INI files implementing the recommendations of the
[Freedesktop Desktop Entry Specification][fdes], and provide a method to embed in the contextual menu of
KDE applications dedicated to file management (like Dolphin, Krusader, Konqueror, and KFind), shortcuts
that recall an application that might come in handy to manipulate the selected files.

With some extra effort instead of a single command, a complete script can be included within these add-ons,
so over time, I wrote a bunch of them to solve or speed up a wide range of problems, and here I decided to
publish those of common interest.

The main goal is to provide *decent quality* addons, all of them are packed following these principles:
- *Essential bundle*: no extra script besides the installer is bundled, all the commands go in the desktop
  file and the final size shouldn't exceed the order of the tens Kbytes, indeed the files included in the
  archive are:
  * The installer that is in charge of installing and uninstalling the service;
  * The README file for documentation;
  * A simple Makefile for those who don't like to read the README file;
  * The LICENSE file;
  * The desktop file containing the service.
- Different levels of *documentation* and reference are also very important:
  * In the desktop file itself;
  * In the README file;
  * In the KDE-store page;
  * In the Blog page.
- *POSIX compatibility* to run flawlessly on the two basic shells: Bash and Dash;
- The best *integration* level as possible.

The last point requires some more explanation.
Until these add-ons run commands without interaction it is easy to create a service menu perfectly integrated
with the environment: the standard provides a method to customize the menu labels for each language just
specifying its code between square brackets.

Unfortunately, when speaking about interactions through Kdialog's dialogs, there is not a simple workaround
to output the request in the current language without complicating the code structure, but that's quite 
normal, these add-ons are not intended to implement a lot of commands in a single line.

Also, moving the entire code in an external script wouldn't solve the problem, but would only move it outside
the desktop file.

As an alternative, I found it easier to create a system to keep the commands separated from the localization
strings, as usually happens for similar contexts in other programming languages, then creating a *compiler*
that would build different packages for each localization.

This is the best way I found to overcome that small but annoying problem, and now every service can be fully
localized and provided as a separated package directly in the KDE-Store!

Last but not least, speaking about integration, it also important for me to be able to install the services
within the three KDE environments:s KDE 4 (for legacy), Plasma 5, and the new Plasma 6.

## The available services

My personal KDE service menus collection includes the following scripts:
- [Compose with Betterbird][compose_with_betterbird]:
  compose a new email with the Betterbird email client using the selected files as attachments;
- [Compose with Betterbird (Flatpak edition)][compose_with_betterbird_flatpak]:
  compose a new email with the Betterbird email client using the selected files as attachments (Flatpak edition);
- [Compose with Thunderbird][compose_with_thunderbird]:
  compose a new email with Thunderbird email client using the selected files as attachments;
- [Compose with Thunderbird (Flatpak edition)][compose_with_thunderbird_flatpak]:
  compose a new email with Thunderbird email client using the selected files as attachments (Flatpak edition);
- [Copy Filelist to Klipper][copy_filelist_to_klipper]:
  copy the result of several types of finding, accomplished through the *find* command, in the clipboard
  area using the Klipper D-Bus service;
- [Copy to Klipper][copy_to_klipper]:
  copy the selected filename name, or parts of it, in the clipboard area using the Klipper D-Bus service;
- [Download with youtube-dl here][download_with_youtubedl]:
  download a file in the current folder using the *youtube-dl* command line tool;
- [Download with yt-dlp here][download_with_ytdlp]:
  download a file in the current folder using the *yt-dlp* command line tool;
- [Open Konsole Here][open_konsole_here]:
  open the selected path in the first or last Konsole window, current or new session;
- [Open with gVIM][open_with_gvim]:
  displays all the selected files in different gVIM tabs instead of opening them in hidden buffers;
- [Open Yakuake Here][open_yakuake_here]:
  open the selected path in the current or new Yakuake's session, within the current terminal with or without
  splitting it horizontally or vertically;
- [Scan with ClamAV][scan_with_clamav]:
  scan the current directory or selected folder/file with ClamAV using either Yakuake or Konsole;
- [SQLite Tools][sqlite_tools]:
  useful commands to perform on SQLite database files.

## Install

There are several ways to install the service menus listed in this repository. The best option is always
using the KDE store service from *Dolphin* or *Discover*, but in case something goes wrong, one of the method
below might come in handy for debugging purposes.

### From Dolphin

All of them are available at the [KDE store][kde_store] and, at the same time, in the twin websites
([Opendesktop][opendesktop], [Pling][pling]), that way the installation can be easily performed from the
settings interface:

    Settings > Services > Download new Services

Just fill up the text box with the service name, and once found, install it using the install button.

From the same interface can uninstall the service menu as well.

### From the tar archive

Once downloaded, the archive from the KDE store, or one of the other twin websites can make use of the
Makefile included or install the archive using the *servicemenuinstaller* utility.

#### Using the Makefile

After extracting the archive:
```
$ tar -xvf <archive-name.tgz>
```

And enter the folder:
```shell
$ cd <project_folder>
```

To install the service menu:
```shell
$ make install
```

To remove the service:
```shell
$ make uninstall
```

#### Using servicemenuinstaller

It is a Dolphin utility that automatically installs the archives downloaded from the KDE store:
```shell
$ servicemenuinstaller install <archive-name.tgz>
```

To uninstall the service:
```shell
$ servicemenuinstaller uninstall <archive-name.tgz>
```

### From the GitHub repository

After cloning the repository:
```shell
$ git clone https://github.com/fabiomux/kde-servicemenus.git
```

Enter the project folder:
```shell
$ cd kde-servicemenus
```

Build the archive for the wanted project replacing *project_name* with the related folder:
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

Besides reporting bugs or asking for new features on the issues page, another way to lend your help to
the project is translating the strings used within the service menus.

To make the services fully compliant to a particular language, I created a system to embed the strings
directly within the exec line and generate a different package for each one.

The translated strings are available under the path of this repo:

    _locale/<service_folder>/<language_code>.yaml

The placeholders are quite self-explanatory, all the translations are based on the `en.yaml` file and
respect the *YAML* format.

## Get Help

More info is available at:
- the [project page][project_page] on Freeaptitude blog.


[fdes]: https://specifications.freedesktop.org/desktop-entry-spec/desktop-entry-spec-latest.html "Freedesktop Desktop Entry specification"
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
