# Scan with ClamAV

KDE service menu available under the Dolphin contextual menu, which adds the ability
to scan for the current or the selected folder, or a selected file with ClamAV, 
using Yakuake or Konsole to output the results.

It is a derived work of the *Open Konsole Here* and *Open Yakuake Here* service menus
and provides similar abilities in the windows opening, in particular the results can
be seen in the following:
- Yakuake new session or current session;
- Konsole first instance, new session, or current session;
- Konsole last instance, new session, or current session.

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

- [FreeAptitude blog - Download section](https://freeaptitude.altervista.org/downloads/scan-with-clamav.html)

## Acknowledgements

- Sommerwiesel@github.com for the initial commit.
