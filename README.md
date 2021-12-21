# KDE Service Menus

My personal KDE service menus collection, it includes the following scripts:
- [Copy to Klipper](https://github.com/fabiomux/kde-servicemenus/tree/master/copy_to_klipper): copy the
  selected filename name, or parts of it, in the clipboard area using the Klipper D-Bus service;
- [Open Konsole Here](https://github.com/fabiomux/kde-servicemenus/tree/master/open_konsole_here): open the
  selected path in the first or last Konsole window, current or new session;
- [Open with gVIM](https://github.com/fabiomux/kde-servicemenus/tree/master/open_with_gvim): displays all the
  selected files in different gVIM tabs instead of opening them in hidden buffers;
- [Open Yakuake Here](https://github.com/fabiomux/kde-servicemenus/tree/master/open_yakuake_here): open the
  selected path in the current or new Yakuake   session, within the current terminal with or without splitting
  it horizontally or vertically.

## Installation

These Services Menus are also loaded in the [KDE store](https://store.kde.org) and in the connected sites
([Opendesktop](https://opendesktop.org), [Pling](https://pling.com)), that way the installation can be
easily performed using the proper Dolphin interface available among the settings:

> Settings > Services > Download new Services

looking up for the project, finding it, and installing it directly from that interface.

Downloading the compressed archive instead, a `Makefile` included will make things easier, otherwise a
simply manual install is still possible.

Last but not least, if you cloned this repo locally you can make use of the `servicemenuinstaller` command
after building the archive.

### Makefile

A *Makefile* that can be easily launch to install and uninstall the needed files is provided within the archive
in the subfolder which bring the same name of the project.

So after extracting the archive:
```
$ tar -xvf <archive-name.tgz>
```

And entered the folder:
```shell
$ cd <project_folder>
```

The following command can be launch to install the Service Menu:
```shell
$ make install
```

To remove the service, from within the same folder:
```shell
$ make uninstall
```

### Manual install

To install a service manually, if not otherwise advised, it's just easy as copying the *.desktop*
file under the proper folder:

- KDE 4: *~/.kde4/share/kde4/services/ServiceMenus/*
- KDE 5: *~/.local/share/kservices5/ServiceMenus/*

### From Git clone

Once cloned the repository locally:
```shell
$ git clone https://github.com/fabiomux/kde-servicemenus.git
```

Switch to the main folder:
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

## Get Help

Every project has an info page available at the [Freeaptitude blog - Download section](https://freeaptitude.altervista.org/downloads/).
