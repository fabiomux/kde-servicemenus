# Copy to Klipper service menu

This service menu allows you to copy to the clipboard through the Klipper
D-Bus service, several details about the selected files, like the filename,
full filename, file path, file permissions...

## Features

These are the *Copy to Klipper* service menu features:
- Fully translated into 5 languages besides English
  (Dutch, French, German, Italian, Spanish);
- Works from within the Dolphin, Konqueror, Krusader, and KFind results context menu;
- Support for KDE Plasma 6;
- Can enable the final popup setting up the $KSM_CTK_VERBOSE variable;
- Multiple file copy resulting in a list of items separated by a new-line character;
- Supports the copy of distinct filenames' parts as full filename, filename only,
  path only, filename without extension;
- Supports the copy of the file checksum algorithms MD5, SHA256, and SHA512;
- Supports the copy of the mime and file type;
- Supports the copy of the file size in bytes and a human-readable format;
- Supports the copy of the file permissions in octal or human-readable format;
- Supports the copy of the file group, user ID, and name;
- Supports the copy of the last access and the last modification time;
- Supports the copy of the file mount point.

## Requirements

- KDE 4 or superior;
- KDialog;
- Klipper
- qdbus
- md5sum, sha256sum, sha512sum (only for checksum-related actions)

## Install

To keep the latest stable version installed, updated, and easily removed from the same interface,
it is recommended to install this service menu through *Dolphin*:
- From Settings > Context Menu > Download new services;
- Search for "copy_to_klipper";
- Click on the *Install* button and select the localized archive of your choice.

Also, the *Discover* application can install it, but doesn't allow to select a localized version:
- Under Application Addons > Servicemenu;
- Search for: "copy_to_klipper";
- Click on the *Install* button.

For debugging purpose follow one of the other methods mentioned on the [project page][installation].

## Get Help

- [FreeAptitude - Copy to Klipper][download] download page
- [FreeAptitude - Changelog][changelog] section

## Contributing

If you like this addon and want to encourage me to improve the project or keep it
regularly updated, you can:
- Become a fan and add a positive rating on the [Pling page][pling];
- Star it here on the [GitHub page][github];
- Report bugs or malfunctions or even ask for new features, just opening an issue
  on the [GitHub issues][issues] page;
- Localize it in your language using the [English locale][locale] file as a template.

## Acknowledgments

Thanks to:
- Heimen Stoffels (Vistaus@Github) for the Dutch translation;
- Termuellinator (Termuellinator@Github) for the German translation.

[download]: https://freeaptitude.altervista.org/downloads/copy-to-klipper.html "Copy to Klipper download page on FreeAptitude"
[changelog]: https://freeaptitude.altervista.org/downloads/copy-to-klipper.html#changelog "Copy to Klipper changelog on FreeAptitude"
[installation]: https://freeaptitude.altervista.org/downloads/copy-to-klipper.html#installation "Copy to Klipper installation on FreeAptitude"
[pling]: https://pling.com/p/1585718/ "Copy to Klipper page on Pling"
[github]: https://github.com/fabiomux/kde-servicemenus "KDE ServiceMenus page on GitHub"
[issues]: https://github.com/fabiomux/kde-servicemenus/issues "KDE ServiceMenus issues page on GitHub"
[locale]: https://github.com/fabiomux/kde-servicemenus/blob/main/copy_to_klipper/locale/en.yaml "English localization file to use as template"
[contributing]: https://github.com/fabiomux/kde-servicemenus#contributing "How to contribute to the Copy to Klipper project"
[§]: # "Generated by servicemenu_generator"
