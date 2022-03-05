---
permalink: /Changelog.html
title: Change Log
---

<!-- 
changelog.md v1.0.1.0
Notes (NOTE)
created: 15 Jan 2014
updated: 22 Jan 2022
-->

# Changelog  
  
| modName    | Notes (NOTE)                                                     |
| ---------- | ---------------------------------------------------------------- |
| license    | GPLv3                                                            |
| author     | hashashin(agises), zer0Kerbal                                    |
| forum      | (https://forum.kerbalspaceprogram.com/index.php?/topic/207118-*) |
| github     | (https://github.com/zer0Kerbal/zer0Kerbal/Notes)                 |
| curseforge | (https://www.curseforge.com/kerbal/ksp-mods/Notes)               |
| spacedock  | (https://spacedock.info/mod/77)                                  |
| ckan       | Notes                                                            |

## Version 0.17.0.0 - Kollege Ruled

* 02 March 2022
* for KSP 1.12.3

### Adoption

* Update .version file
* Create [readme.md] v1.6.5.8
* create 0.17.0.0.md v1.3.1.0
* create [Create notesRPM.version]
* closes #31 - Create and Update [readme.md] v1.6.5.8
* closes #34 - Create notesRPM.version

### Compatibility Patches

* Add :FOR[notes]
* create GameData/Notes/Compatibility/ folder
* move [BasicMFDnotesPatch.cfg] into Compatibility folder
* [notes_home40x20.txt]
  * create [NotePad] folder
  * move [notes_home40x20.txt] into new folder

### img

* rename [HERO-1.png]
* rename [HERO-2.png]
* create [HeroLogo+1920x1920.png]
* upload to GitHub

### Localization

* add [quickstart.md] v1.0.1.0
* add [readme.md] v2.0.1.]
* [en-us.cfg]
  * create [en-us.cfg]
  * manual lint and style
* Localize [nstallChecker.cs]
* closes #39 - Localize `InstallChecker.cs`
* updates #11 - Localization - English (United States) <en-us.cfg>
* updates #10 - Localization - Master

### Code

* add [InstallChecker.cs]
  * closes #35 - Update `InstallChecker.cs`
* update
  * [AssemblyInfo.cs]
    * closes #33 - Update AssemblyInfo.cs
  * update
    * [notes.csproj]
    * [notesRPM.csproj]
    * closes #32 - Update `.csprog`'s and `notes.sln`
  * update [notes.sln]
    * closes #29 - Version.cs v2.0.2.0
* [notes.cs]
  * add .xml notes
  * update namespace
  * insert [obsolete] (temporarily)
* [notesRPM.cs]
  * add .xml notes
  * update namespace

### Automation

* Update
  * [_buildJSON] v1.3.3.6.2
  * [_buildRelease] v1.1.3.1
  * [_deploy] v1.1.1.3
  * [_gitReleaseNotes] v1.1.0.1
  * [_gitPullIssues] v1.1.0.1
  * [_gitReleaseNotes] v1.1.0.1
  * [_gitClean] v1.0.2.0

### Notes.version

* change Changelog.cfg --> changelog.md
* update release version
* update minimum KSP version

### docs

* create [404.md]
* create [Attribution.md]
* create [LegalMumboJumbo.md]
* create [Localization.md]
* create [\Code\[Notes.xml]
* create [\Code\[notesRPM.xml]

### Status

* closes #14 - Version 0.17.0.0-adoption
* closes #15 - 0.17.0.0-adoption Social
* closes #16 - 0.17.0.0-adoption Release
* closes #17 - 0.17.0.0-adoption Update documentatio
* closes #18 - 0.17.0.0-adoption Legal MumboJumbo

* #1 - sidestream - contributed by zer0Kerbal
* #4 - [ImgBot] Optimize images - contributed by imgbot[bot]
* #27 - upstream master - contributed by zer0Kerbal
* #30 - Create JSON - contributed by zer0Kerbal
* closes #41 - Adoption and Initial Release Notes and NotesRPM

## Version 0.16

* Recompiled for KSP 1.8.0
* .net 4.7.2

## Version 0.15

* Added support for ClickThrough
* thanks @linuxgurugamer.

## Version 0.14.2.1

* Fixed multiple buttons going onto the toolbar
* Changed from reloading every scene, to load once when the SpaceCenter is loaded and keep in memory

## Version 0.14.2

* Updated by Linuxgurugamer
* Added support for the ToolbarController
* Added build scripts
* Added .version file
* Added AssemblyVersion.cs to both DLLs

## Version 0.14.1

* update for 1.3
* lazy recompile.

## Version 0.14

* update for KSP 1.2.1
* updated toolbarwrapper
* update for new RPM

## Version 0.12.2

* Corrected the "Toggle input lock" position (linux only).

## Version 0.12.1

* Added rich text support.

## Version 0.12

* Added RasterPropMonitor support.

## Version 0.11

* Interface changes to improve usability
* fixed issue with refresh button texture size being not power of 2.

## Version 0.10.1

* Removed compatchecker
* added keybind for the linux poorman fix(control lock)
* updated toolbarwrapper.

## Version 0.10

* Added the ability to create/delete directories
* rearranged GUI of notes list window.

## Version 0.9.2

* recompiled for KSP 0.24

## Version 0.9.1

* Fix warning spam.

## Version 0.9

* Buttons for chose font size and current note
* load note on mouse click
* skins
* GUI minor arrangements
* code reorganization.

## Version 0.8.2

* Added workaround for (http://bugs.kerbalspaceprogram.com/issues/1230)

## Version 0.8.1

* Proper data stamps (Earth and Kerbin)
* text size configurable via config.xml

## Version 0.8

* Recompiled for KSP 0.23.5
* added ship's log
* updated toolbarwrapper

## Version 0.7.1

* Linux compatibility and fix toolbar issues
* Thanks @diomedea and @blizzy78 for the bug find

## Version 0.7

* minor code cleanup and GUI tweaks
* regen config.xml when plugin version changes
* show/hide delete button toggle for avoid missclicks
* new toolbar icons
* improved toolbar tooltips
* new refresh notes list button

## Version 0.6.1

* bugfix release, fix windows id conflict with KMP plugin and possible others.

## Version 0.6

* selectable file list
* delete note option
* add tiny close buttons to notes and notes list windows

## Version 0.5

* optional toolbar support
* notes file list
* configurable keybind
* bug fixes

## Version 0.4

* toolbar integration
* window position save

## Version 0.3.1

* movable window
* compiled against KSP 0.23 assemblies

## Version 0.3

* removed icon placeholder aka "tiny dot"
* keybind for hide/unhide
* Added config file for the default note to open at start
* Removed file extension for the notes files on the interface
* More cleaner code, I guess... :huh:

## Version 0.2.2

* fixed scrollbar issues

## Version 0.2.1

* unsaved text persistence
* Autosave on exit
* minimize

## Version 0.2

* add multiple notes support

## Version 0.1

* initial release
* Jan 15, 2014

### GPLv2 BY zer0Kerbal
