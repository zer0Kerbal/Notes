<!-- 
changelog.md v1.0.1.0
Notes (NOTE)
created: 15 Jan 2014
updated: 22 Jan 2022
-->

# Changelog  

| modName | Notes  (NOTE)                                                   |
| ------- | --------------------------------------------------------------- |
| license | GPLv3                                                           |
| website | (https://forum.kerbalspaceprogram.com/index.php?/topic/50884-*) |
| author  | hashashin(agises) and zer0Kerbal                                |

## Version 0.17.0.0-adoption

* 22 Jan 2022
* Released for KSP 1.12.3

### Code

* remove CTB integration (less is more)
  * closes #28 - Click-Through-Blocker
* Replace `AssemblyVersion.cs` with `Version.tt` for both projects
  * closes #29 - Version.cs v2.0.2.0.
* update `notes.csprog` and `notesRPM.csprog` and `notes.sln`
  * closes #32 - Update `.csprog`'s and `notes.sln`
* update `AssemblyInfo.cs`
  * Notes
  * notesRPM
  * closes #33 - Update AssemblyInfo.cs
* Create `notesRPM.version`
  * closes #34 - Create notesRPM.version
* Update `InstallChecker.cs`
  * version 2.1.0.0
  * closes #35 - Update InstallChecker.cs
* Remove CTB
  * remove using ClickThroughFix;
  * 0x - Replace calls to ClickThruBlocker.GUILayoutWindow with GUILayout.Window
  * 6x - Replace calls to ClickThruBlocker.GUIWindow with GUI.Window
  * closes #36 - Remove CTB
* Change namespace
  * rename from `notes` to `Notes`
  * closes #27 - Change namespace
* Remove extraneous code files
  * Support/Logging.cs
  * Support/Utilities.cs
  * closes #37 - Remove extraneous code files

### Documentation

* Create and Update [readme.md] v1.6.5.2 :bread:
  * rename from README.md --> readme.md
  * Create and Update [readme.md] v1.6.5.2
  * closes #31

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
