# Copy To Klipper

KDE service menu available under the Dolphin contextual menu, which adds the ability
to copy in the clipboard the details of the selected file:
- Full filename
- Path only
- Filename only
- Filename without extension
- md5 checksum
- sha256 checksum
- sha512 checksum
- mime type
- file type
- file size (bytes format)
- file size (human-readable format)
- file permissions (octal format)
- file permissions (human-readable format)
- group id
- group name
- file user id
- file user name
- last access
- last modification
- mount point

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

- [Freeaptitude blog - Download section - Copy To Klipper](https://freeaptitude.altervista.org/downloads/copy-to-klipper.html)

## Acknowledgements

- Thanks to Heimen Stoffels (@Vistaus on Github) for the Dutch translation;
- Thanks to Termuellinator (@Termuellinator on Github) for the German translation.
