# SQLite Tools

KDE service menu available under the Dolphin contextual menu, which adds the ability
to perform some operations on the SQLite files:
- Register the database as ODBC data source to access it through software like LibreOffice;
- Remove the database from the ODBC register;
- Show the ODBC file configuration paths;
- Show the database tables;
- Show the database table's schema for a selected table;
- Export the table's contents in one of the available formats:
  CSV, JSON, HTML, Markdown, SQL INSERT, TCL, inline, list, box, column, ASCII table, tabs;
- Database dump with or without table schema.

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

- [FreeAptitude blog - Download section](https://freeaptitude.altervista.org/downloads/sqlite-tools.html)
