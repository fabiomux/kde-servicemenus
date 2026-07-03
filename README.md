# KDE Service Menus

KDE service menus, or Dolphin service menus, are INI structured files implementing the recommendations of the
[Freedesktop Desktop Entry Specification][fdes], and provide a method to embed in the contextual menu of
KDE applications dedicated to file management (like Dolphin, Krusader, Konqueror, and KFind), shortcuts
that recall any kind of application able to manipulate the selected file(s) or folder(s).

In an attempt to reuse my personal snippets that I uses to recall from the command line, I decided to
write my personal collection following these guidelines:

- *Essential bundle*: no extra script besides the installer should be bundled, all the commands go into
  the desktop file and the final size shouldn't exceed the order of the Kbytes, actually, the files
  included in the archive are:
  * The installer that is in charge of installing and uninstalling the service, and since the third version
    also able to launch a test mode to verify the requirements;
  * The README file for documentation;
  * A simple Makefile for those who don't like to read the README file;
  * The LICENSE file;
  * The desktop file containing the service itself.
- Different levels of documentation or reference are also very important:
  * In the desktop file itself;
  * In the README file;
  * In the KDE-store page;
  * In the Blog page.
- *POSIX compatibility* to run flawlessly on the two basic shells: *Bash* and *Dash*;
- The best *integration* possible with the underlying system, making use of *KDialog* and other common
  best practices.

With time I realized that the integration wasn't fully accomplished until the messages provided by the
Kdialog's dialogs would not have been fully translated into one of the supported languages.

The shortest and most effective workaround to solve that problem has been the implementation of a translating
system based on a list of strings to replace inside the script template to generate the final
service menu, a file for each supported language.

Last but not least, speaking about integration, it is also important for me to be able to install the
services within the three KDE environments: KDE 4, Plasma 5, and the current Plasma 6.

## The available services

My personal KDE service menus collection includes the following scripts:

- [Compare with Kompare][compare_with_kompare]:
  cache and retrieve the file to compare with the selected one, using the clipboard area or a cache file;
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
- [Link URL here][link_url_here]:
  create a file in the current folder which can open an URL with the wanted options using the browser
  of your choice among those supported;
- [Open Konsole Here][open_konsole_here]:
  open the selected path in the first or last Konsole window, current or new session;
- [Open with gVIM][open_with_gvim]:
  displays all the selected files in different gVIM tabs instead of opening them in hidden buffers;
- [Open with Kate][open_with_kate]:
  open the selected files within a Kate session or one of the opened windows;
- [Open Yakuake Here][open_yakuake_here]:
  open the selected path in the current or new Yakuake's session, within the current terminal with or without
  splitting it horizontally or vertically;
- [Scan with ClamAV][scan_with_clamav]:
  scan the current directory or selected folder/file with ClamAV using either Yakuake or Konsole;
- [SQLite Tools][sqlite_tools]:
  useful commands to perform on SQLite database files.

## Install

There are several ways to install the service menus listed in this repository. The best option is always
using the KDE store service from *Dolphin* or *Discover*, but in case something goes wrong, one of the
other methods might come in handy for debugging purposes.

### From Dolphin

All service menus are available at the [KDE store][kde_store] and, at the same time, in the sibling websites
(like [Opendesktop][opendesktop]), that way the installation can be easily performed from the
settings interface:

    Settings > Services > Download new Services

Just fill the text box with the service name, and once found, install it using the install button.

~~When multiple localizations are provided the interface expands on an overlay frame that allows to select
the best option.~~

In the latest versions all the available translations are provided within the same archive, the script will
install the correct version taking the `LANG` system variable in account.

From the same interface uninstall or update the service menu as well.

### From the tar archive

Once the archive has been downloaded there are two ways to proceed.

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

To remove the service menu:
```shell
$ make uninstall
```

To test the service menu without installing it:
```shell
$ make test <archive-name.tgz>
```

#### Using servicemenuinstaller

It is a Dolphin utility that automatically installs the archives downloaded from the KDE store:
```shell
$ servicemenuinstaller install <archive-name.tgz>
```

To uninstall the service menu:
```shell
$ servicemenuinstaller uninstall <archive-name.tgz>
```

## Contributing

Besides reporting bugs or asking for new features on the issues page, another way to lend your help is
by translating the strings used within the service menus.

~~To make the services fully compliant to a particular language, I created a system to embed the strings
directly within the exec line and generate a different package for each one.~~

Once created they will be merged to create a single archive with all the available localizations.

The translated strings are arranged under the `local` subfolder of each service menu:

    <service_menu>/locale/<language_code>.yaml

The placeholders are quite self-explanatory, all the translations are based on the `en.yaml` file and
respect the *YAML* format.

## Get Help

More info is available at:
- the [project page][project_page] on my personal blog.


[fdes]: https://specifications.freedesktop.org/desktop-entry-spec/desktop-entry-spec-latest.html "Freedesktop Desktop Entry specification"
[compare_with_kompare]: https://github.com/fabiomux/kde-servicemenus/tree/main/compare_with_kompare "Compare with Kompare GitHub page"
[compose_with_betterbird]: https://github.com/fabiomux/kde-servicemenus/tree/main/compose_with_betterbird "Compose with Betterbird GitHub page"
[compose_with_betterbird_flatpak]: https://github.com/fabiomux/kde-servicemenus/tree/main/compose_with_betterbird-flatpak "Compose with Betterbird Flatpak edition GitHub page"
[compose_with_thunderbird]: https://github.com/fabiomux/kde-servicemenus/tree/main/compose_with_thunderbird "Compose with Thunderbird GitHub page"
[compose_with_thunderbird_flatpak]: https://github.com/fabiomux/kde-servicemenus/tree/main/compose_with_thunderbird-flatpak "Compose with Thunderbird Flatpak edition GitHub page"
[copy_filelist_to_klipper]: https://github.com/fabiomux/kde-servicemenus/tree/main/copy_filelist_to_klipper "Copy Filelist to Klipper GitHub page"
[copy_to_klipper]: https://github.com/fabiomux/kde-servicemenus/tree/main/copy_to_klipper "Copy to Klipper GitHub page"
[download_with_youtubedl]: https://github.com/fabiomux/kde-servicemenus/tree/main/download_with_youtube-dl_here "Download with youtube-dl GitHub page"
[download_with_ytdlp]: https://github.com/fabiomux/kde-servicemenus/tree/main/download_with_yt-dlp_here "Download with yt-dlp GitHub page"
[link_url_here]: https://github.com/fabiomux/kde-servicemenus/tree/main/link_url_here "Link URL here GitHub page"
[open_konsole_here]: https://github.com/fabiomux/kde-servicemenus/tree/main/open_konsole_here "Open Konsole Here GitHub page"
[open_with_gvim]: https://github.com/fabiomux/kde-servicemenus/tree/main/open_with_gvim "Open with gVIM GitHub page"
[open_with_kate]: https://github.com/fabiomux/kde-servicemenus/tree/main/open_with_kate "Open with Kate GitHub page"
[open_yakuake_here]: https://github.com/fabiomux/kde-servicemenus/tree/main/open_yakuake_here "Open Yakuake here GitHub page"
[scan_with_clamav]: https://github.com/fabiomux/kde-servicemenus/tree/main/scan_with_clamav "Scan with ClamAV GitHub page"
[sqlite_tools]: https://github.com/fabiomux/kde-servicemenus/tree/main/sqlite_tools "SQLite Tools GitHub page"

[kde_store]: https://store.kde.org "KDE store home page"
[opendesktop]: https://opendesktop.org "Opendesktop home page"

[project_page]: https://freeaptitude.altervista.org/projects/kde-servicemenus.html "KDE ServiceMenus project page on Freeaptitude"
