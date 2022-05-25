# Copy Filelist to Klipper

KDE service menu available under the Dolphin contextual menu, which adds the ability
to copy to the clipboard the list of files in the selected folder as a result of the *find*
command in one of the following flavors: 
- all files in the folder;
- all files matching a particular wildcard filter;
- all files older/newer than a certain number of days;
- all files bigger/smaller than a specific size;
- all empty files;

For each of them there is the opportunity to specify a search including or not the subfolders of the current folder.

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

- [Freeaptitude blog - Download section - Copy Filelist To Klipper](https://freeaptitude.altervista.org/downloads/copy-filelist-to-klipper.html)

