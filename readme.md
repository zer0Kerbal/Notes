<!-- readme.md v1.6.5.8
Notes (NOTE)
created: 01 Oct 2019
updated: 02 Mar 2022 -->

<!--this file: CC BY-ND 3.0 unported by zer0Kerbal-->

[![MODNAME][MOD:shd:latest]][MOD:forum] [![KSP version][KSP:shd]][KSP:url]  [![License][LIC:shd]][LIC:url]  
[![Curseforge][CURSFG:shd]][CURSFG:url] [![CKAN][CKAN:shd]][CKAN:url] [![GitHub][GITHUB:shd]][GITHUB:url] [![SpaceDock][SPCDCK:shd]][SPCDCK:url]  
![Code][CODE:shd] ![KSP-AVC][AVC:shd] ![Validate AVC .version files][AVCVLD:shd]



# Notes (NOTE)

 Simple plugin to take notes in game for Kerbal Space Program.

*formerly ksp_notes*



## By [`zer0Kerbal`][LINK:zer0Kerbal], originally by [`agises(hashashin)`][LINK:agises]


### Preamble by [@`agises`][LINK:agises]

> Hi, I want to share this  plugin I make for personal use and learning purposes, it is a space to put short notes (some form of notepad). It is hidden by default use `<ALT> + <N>` keys (by default) to unhide/hide or the toolbar button. The notes are persistent via the save button and the interface shows everywhere in the game. I'm not a programmer and this is my very first approach to c# and unity so suggestions are more than welcome. ![:rolleyes:](https://kerbal-forum-uploads.s3.us-west-2.amazonaws.com/emoticons/default_k_rolleyes.gif)
>
>The up and down arrows are usable as text scroll, the next/prev buttons works as the buttons in the normal notes interface, and the green arrow will show some vessel info. You can use the rpm format in the notes, ie:
>
> ```This is a test
> [hw] half width
> <color=#ffffff3e>color test
> <color=#f4b541>orange
> <color=#4587de>blue
> <color=#133a0f>green
> 
> [dw] double width
> ```
>
> Will print in the screen (RPM version):
>
> [![UzbGJE2.png?1](https://i.imgur.com/UzbGJE2.png?1)](https://i.imgur.com/UzbGJE2.png?1)

### Features

* Take in game notes anywhere
* Multiple notes support
* Multiple directories support
* List/open/delete/save notes dialogs
* Optional [Blizzy78's Toolbar][thread:tb] integration
* Movable windows with position save
* Configurable keybind, font size and mouse button
* Autosave open note when scene changes or game quit, even on `<ALT> + <F4>`
* Ship's log
* Unity default skin and KSP skin
* Includes workaround for [linux version bug](http://bugs.kerbalspaceprogram.com/issues/1230)
* Basic [RasterPropMonitor][thread:rpm] support
* Rich text support, info [here](https://docs.unity3d.com/Manual/StyledText.html)

### Screenshots

[![6LkbsVU.png](https://i.imgur.com/6LkbsVU.png)](https://i.imgur.com/6LkbsVU.png)

### Help Wanted

> * Updated GUI
> * More features (code)
> * Have a request? Glad to have them, kindly submit through GitHub.

---

### Localization - _work in progress_

>* [x]  ![][EN] English - in progress
>* [ ]  ***your translation here***
>
> HELP WANTED - See the [README in the Localization folder][MOD:local] for instructions for adding or improving translations. [GitHub][GitHub:url] push is the best way to contribute. *Additions and corrections welcome!*

---

### How to support this and other great mods by [`zer0Kerbal`][LINK:zer0Kerbal]  

[![Support][PAYPAL:img]][PAYPAL:url] [![Github Sponsor][GSPONS:img]][GSPONS:url] [![Patreon][PATREON:img]][PATREON:url] [![Buy zer0Kerbal a snack][BMCC:img]][BMCC:url]

---

### See More

* Discussions and news on this mod: See [Discussions][MOD:discu] or [KSP Forums][MOD:forum]
* Changelog Summary for more details of changes : See [ChangeLog][MOD:chlog]
* Known Issues for more details of feature requests and known issues : See [Known Issues][MOD:known]
* GitHub Pages : See [Pages][MOD:pages]

---

### Installation Directions

***Use***
  CurseForge/OverWolf App (currently does not install dependencies) [^3]  

  <a href="https://download.curseforge.com/">
    <img src="https://www.overwolf.com/brand-guidelines/img/logo2.svg" alt="CurseForge/OverWolf App" width="15%" height="15%">
</a>

or [![CKAN][CKAN:img]][CKAN:url] [^3]  

### Dependencies

* [Kerbal Space Program][KSP:url] [![][KSP:shd]][KSP:url] [^1] [^2]
* [Toolbar Controller][thread:tbc]

### Suggests

* [Module Manager][thread:mm] <sup><i>is NOT required</i></sup>

### Supports

* [Blizzy78's Toolbar][thread:tb]
* [Raster Prop Monitor][thread:rpm]
* [MOARdV's Avionics Systems (MAS)][threade:mas]

---

<div style="border:0.5px solid Tomato; background-color: #BADA55; color: #FF0000; text-align:center">
<p><b>*red box below is a link to forum post on how to get support*</p>  
<a href = "https://forum.kerbalspaceprogram.com/index.php?/topic/83212-*">
  <p><img src = "https://i.postimg.cc/vHP6zmrw/image.png" alt="How to get support"></p></a>Be Kind: Lithobrake, not jakebrake! Keep your Module Manager up to date</div>

### Credits and Special Thanks

<ul>
  <li><a href="https://forum.kerbalspaceprogram.com/index.php?/profile/68543-blizzy78/">Blizzy78</a> - for creating the toolbar! </li>
  <li><a href="https://forum.kerbalspaceprogram.com/index.php?/profile/89502-agises/">agises(hashashin)</a> - for creating this mod </li>
</ul>

### Legal Mumbo Jumbo (License _provenance_)

#### Current (1) - [`zer0Kerbal`][LINK:zer0Kerbal]

> Forum: [Thread][MOD:forum] - Source: [GitHub][GITHUB:url]  
> License: [![License][LIC:shd]][LIC:url] ![License][LIC:log]
>
> ##### Disclaimer(s)
>
> ***Bundled add-ons/mods are distributed under their own licenses*** (if any)  
> ***Art assets (textures, models, animations, sounds) are distributed under their own licenses***

#### Original (0) - Author: [`agises(hashashin)`][LINK:agises]

> Forum: [Thread][MOD:org:thread]  - Download: [SpaceDock][MOD:org:download] - Source: [GitHub][MOD:org:source]
> License: [![License][LIC:org:shd]][LIC:org:url] ![License][LIC:org:log]

<!-- mod links -->
[MOD:forum]: https://forum.kerbalspaceprogram.com/index.php?/topic/207118-* "Notes Forum Thread"
[MOD:chlog]: https://github.com/zer0Kerbal/Notes/changelog.md "Changelog"
[MOD:contr]: https://github.com/zer0Kerbal/.github/blob/master/.github/CONTRIBUTING.md "Contributing"
[MOD:discu]: https://github.com/zer0Kerbal/Notes/discussions "Discussions"
[MOD:issue]: https://github.com/zer0Kerbal/Notes/wiki/Known-Issues "GitHub Issues"
[MOD:licns]: https://github.com/zer0Kerbal/Notes/blob/master/LICENSE "Github License"
[MOD:known]: https://github.com/zer0Kerbal/Notes/wiki/Known-Issues "Known Issues"
[MOD:local]: https://github.com/zer0Kerbal/Notes/blob/master/GameData/Notes/Localization/readme.md "Localization"
[MOD:pages]: https://zer0kerbal.github.io/Notes/ "GitHub Pages"
[MOD:wiki]: https://github.com/zer0Kerbal/Notes/wiki "Wiki"

<!--- mod -->
[MOD:shd:latest]: https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/zer0Kerbal/Notes/master/json/mod.json

[CODE:shd]: https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/zer0Kerbal/Notes/master/json/code.json

<!--- original mod stuff -->
[MOD:org:source]: https://github.com/hashashin/ksp_notes/releases "GitHub"
[MOD:org:thread]: https://forum.kerbalspaceprogram.com/index.php?/topic/50884-* "KSP Forum"  
[MOD:org:download]: http://spacedock.info/mod/77 "SpaceDock"  

[LIC:org:url]: https://www.gnu.org/licenses/gpl-3.0.html "GPLv3"  
[LIC:org:log]: https://camo.githubusercontent.com/c4831ba87d3212335f4f54c75acb34a911214cbd63010686bc96e31a013c6dcc/68747470733a2f2f692e706f7374696d672e63632f39306b434473374b2f67706c76332d34387831372e706e67 "GPLv3"
[LIC:org:shd]:  https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/zer0Kerbal/Notes/master/json/license.json

<!--- license -->
[LIC:url]: https://www.gnu.org/licenses/gpl-3.0.html "GPLv3"  
[LIC:log]: https://camo.githubusercontent.com/c4831ba87d3212335f4f54c75acb34a911214cbd63010686bc96e31a013c6dcc/68747470733a2f2f692e706f7374696d672e63632f39306b434473374b2f67706c76332d34387831372e706e67 "GPLv3"
[LIC:shd]:  https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/zer0Kerbal/Notes/master/json/license.json

<!--- AVC -->
[AVC:shd]:  https://img.shields.io/badge/KSP-AVC--supported-00C961.svg?labelColor=black&style=plastic
[AVCVLD:shd]: https://github.com/zer0Kerbal/Notes/workflows/Validate%20AVC%20.version%20files/badge.svg?labelColor=black&style=plastic "AVC-Valid - thank you to DasSkelett"

<!--- CKAN -->
[CKAN:img]: https://i.postimg.cc/x8XSVg4R/sj507JC.png "CKAN"
[CKAN:url]: http://forum.kerbalspaceprogram.com/index.php?/topic/197082-* "CKAN"
[CKAN:shd]: https://img.shields.io/badge/CKAN-Notes-white.svg?labelColor=E32811&style=plastic "CKAN"

<!--- release links -->
[CURSFG:url]: https://www.curseforge.com/kerbal/ksp-mods/Notes "Curseforge"
[CURSFG:shd]: https://img.shields.io/badge/CurseForge-Listed-white.svg?labelColor=6441A4&style=plastic&logo=curseforge "Curseforge"

[GITHUB:url]: https://github.com/zer0Kerbal/Notes/ "GitHub"
[GITHUB:shd]: https://img.shields.io/badge/Github-Listed-white.svg?labelColor=181717&style=plastic&logo=github "GitHub"

[SPCDCK:url]: http://spacedock.info/mod/77 "SpaceDock"
[SPCDCK:shd]:  https://img.shields.io/badge/SpaceDock-Listed-white.svg?labelColor=181717&style=plastic&logo=data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDE5LjAuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IkxheWVyXzEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IgoJIHZpZXdCb3g9IjAgMCA1MDAgNTAwIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA1MDAgNTAwOyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+CjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+Cgkuc3Qwe2ZpbGw6IzFBMUExQTt9Cgkuc3Qxe2ZpbGw6IzA1Nzg5Mzt9Cgkuc3Qye2ZpbGw6IzA3QUNEMjt9Cjwvc3R5bGU+CjxwYXRoIGlkPSJYTUxJRF8xXyIgY2xhc3M9InN0MCIgZD0iTTQwMCwwLjZIMTAwYy01NSwwLTEwMCw0NS0xMDAsMTAwVjQwMGMwLDU1LDQ1LDEwMCwxMDAsMTAwaDMwMGM1NSwwLDEwMC00NSwxMDAtMTAwVjEwMC42CglDNTAwLDQ1LjYsNDU1LDAuNiw0MDAsMC42eiIvPgo8ZyBpZD0iWE1MSURfNl8iPgoJPGcgaWQ9IlhNTElEXzlfIj4KCQk8cGF0aCBpZD0iWE1MSURfMTdfIiBjbGFzcz0ic3QxIiBkPSJNMTgzLjMsMTY1LjljNi40LTMuNiwxNi45LTMuNiwyMy4zLDBMNDY3LjQsMzE0YzYuNCwzLjYsNi40LDkuNiwwLDEzLjJMMjA2LjYsNDc0LjQKCQkJYy02LjQsMy42LTE3LjcsNi42LTI1LDYuNmgtNDQuOGMtNy40LDAtOC4xLTMtMS43LTYuNmwyNjEtMTQ3LjJjNi40LTMuNiw2LjQtOS42LDAtMTMuMkwxNzEsMTg2Yy02LjQtMy42LTYuNC05LjYsMC0xMy4yCgkJCUwxODMuMywxNjUuOXoiLz4KCTwvZz4KCTxnIGlkPSJYTUxJRF84XyI+CgkJPHBhdGggaWQ9IlhNTElEXzE2XyIgY2xhc3M9InN0MiIgZD0iTTMxOC44LDE5Yy03LjQsMC0xOC42LDIuOC0yNSw2LjRMMzMsMTczLjRjLTYuNCwzLjYtNi40LDkuNSwwLDEzLjFsMjYwLjcsMTQ3LjEKCQkJYzYuNCwzLjYsMTYuOSwzLjYsMjMuMywwbDEyLjMtN2M2LjQtMy42LDYuNC05LjUsMC0xMy4ybC0yMjUuMS0xMjdjLTYuNC0zLjYtNi40LTkuNSwwLTEzLjJMMzY1LjYsMjUuNGM2LjQtMy42LDUuNi02LjQtMS43LTYuNAoJCQlIMzE4Ljh6Ii8+Cgk8L2c+CjwvZz4KPC9zdmc+Cg==  "SpaceDock"

<!-- Kerbal Space Program -->
[KSP:url]: https://kerbalspaceprogram.com/ "Kerbal Space Program"
[KSP:shd]: https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/zer0Kerbal/Notes/master/json/ksp.json&logo=data:image/webp;base64,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 "Kerbal Space Program"

<!-- links to add-ons/mods -->  
[thread:mm]:  http://forum.kerbalspaceprogram.com/index.php?/topic/50533-* "Module Manager"
[threade:mas]:https://forum.kerbalspaceprogram.com/index.php?/topic/160856-* "MOARdV's Avionics Systems - MAS"
[thread:rpm]: https://forum.kerbalspaceprogram.com/threads/117471 "Raster Prop Monitor"
[thread:tb]: https://forum.kerbalspaceprogram.com/index.php?/topic/161857-* "Blizzy78's Toolbar"
[thread:tbc]: https://forum.kerbalspaceprogram.com/index.php?/topic/169509-* "Toolbar Controller"
[thread:ckan]: https://forum.kerbalspaceprogram.com/index.php?/topic/154922-* "CKAN"

<!-- financial support -->
[PAYPAL:img]: https://img.shields.io/badge/Buy%20me%20some%20-LFO-BADA55?style=for-the-badge&logo=paypal&labelColor=FFDD00 "PayPal"
[PAYPAL:url]: https://www.paypal.com/donate?hosted_button_id=DC22YHMEJREKL "PayPal"
[PATREON:img]: https://img.shields.io/badge/Patreon%20-Patreonize-FF424D?style=for-the-badge&logo=patreon "Patreon"
[PATREON:url]: https://www.patreon.com/bePatron?u=23390503 "Patreon"
[GSPONS:img]: https://img.shields.io/badge/Github%20-Sponsor-EA4AAA?style=for-the-badge&logo=githubsponsors "Github Sponsors"
[GSPONS:url]: https://github.com/sponsors/zer0Kerbal "Github Sponsors"
[BMCC:img]: https://img.shields.io/badge/Buy%20Me%20a%20-Snack!-FFDD00?style=for-the-badge&logo=buymeacoffee "Buy Me A Snack"
[BMCC:url]: https://buymeacoffee.com/zer0Kerbal "Buy Me A Snack"

<!-- Localization -->
[EN]: https://raw.githubusercontent.com/zer0Kerbal/zer0Kerbal/zed'K/Localization/img/American-flag-sm.png "American English"
[BR]: https://raw.githubusercontent.com/zer0Kerbal/zer0Kerbal/zed'K/Localization/img/Brazilian-flag-sm.png "Brasil"
[CN]: https://raw.githubusercontent.com/zer0Kerbal/zer0Kerbal/zed'K/Localization/img/Chinese-flag-sm.png "中文"
[DE]: https://raw.githubusercontent.com/zer0Kerbal/zer0Kerbal/zed'K/Localization/img/German-flag-sm.png "Deutsch"
[ES]: https://raw.githubusercontent.com/zer0Kerbal/zer0Kerbal/zed'K/Localization/img/Spanish-flag-sm.png "Español"
[FR]: https://raw.githubusercontent.com/zer0Kerbal/zer0Kerbal/zed'K/Localization/img/French-flag-sm.png "Français"
[IT]: https://raw.githubusercontent.com/zer0Kerbal/zer0Kerbal/zed'K/Localization/img/Italian-flag-sm.png "Italiano"
[JA]: https://raw.githubusercontent.com/zer0Kerbal/zer0Kerbal/zed'K/Localization/img/Japanese-flag-sm.png "日本語"
[KO]: https://raw.githubusercontent.com/zer0Kerbal/zer0Kerbal/zed'K/Localization/img/South-Korean-flag-sm.png "한국어"
[ME]: https://raw.githubusercontent.com/zer0Kerbal/zer0Kerbal/zed'K/Localization/img/Mexican-flag-sm.png "Español Mexicano"
[NL]: https://raw.githubusercontent.com/zer0Kerbal/zer0Kerbal/zed'K/Localization/img/Dutch-flag-sm.png "Dutch"
[NO]: https://raw.githubusercontent.com/zer0Kerbal/zer0Kerbal/zed'K/Localization/img/Norwegian-flag-sm.png "Norsk"
[PO]: https://raw.githubusercontent.com/zer0Kerbal/zer0Kerbal/zed'K/Localization/img/Polish-flag-sm.png "Polski"
[RU]: https://raw.githubusercontent.com/zer0Kerbal/zer0Kerbal/zed'K/Localization/img/Russian-flag-sm.png "Русский"
[SW]: https://raw.githubusercontent.com/zer0Kerbal/zer0Kerbal/zed'K/Localization/img/Swedish-flag-sm.png "Svenska"
[TW]: https://raw.githubusercontent.com/zer0Kerbal/zer0Kerbal/zed'K/Localization/img/Taiwanese-flag-sm.png "国语"
[HA]: https://raw.githubusercontent.com/zer0Kerbal/zer0Kerbal/zed'K/Localization/img/Hawaii-flag-sm.png "ʻŌlelo Pākē"

[LINK:zer0Kerbal]: https://forum.kerbalspaceprogram.com/index.php?/profile/190933-zer0kerbal/ "zer0Kerbal"
[LINK:agises]: https://forum.kerbalspaceprogram.com/index.php?/profile/89502-agises/ "Salud hashashin(agises)"

<!--this file: CC BY-ND 3.0 unported by zer0Kerbal -->

<!-- footnotes -->
[^1]: ***may*** work on other versions (YMMV)
[^2]: *Be Kind: Lithobrake, not jakebrake! Keep your Module Manager up to date!*
[^3]: this isn't a mod. ;P

## Salud.
