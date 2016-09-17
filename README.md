# sublime-ps-extendscript

Build plugin for Sublime Text. Allows to run ExtendScript code in Photoshop from within Sublime Text.

## Compatibility

Sublime Text 2 and Sublime Text 3.
Phototoshop CS6 -> CC 2015.5 (defaults to CC 2015.5), see below how to target your version

## Installation

Copy the `ExtendScript-PS` folder in your Sublime Text Packages folder (to find it, `Sublime Text > Preferences > Browse Packages...`).

## How to run JSX in Photoshop

Open a JSX file or create a new one: mind you, **it must be saved** at least once, then select `Tools > Build System > ExtendScript-PS`.

To run it, then just `'Tools > Build'` or use the usual shortcuts (Command+B on Mac, Ctrl+B on Windows). 

## How to target a different version of Photoshop

#### Mac

Locate the file `run.scpt` and change the `"Adobe Photoshop CC 2015.5"` string to match the PS version you want to use (e.g. `"Adobe Photoshop CC"`) then save.

#### Windows

Locate the file `build.bat` and change the `set version='CC 2015.5'` string to match the PS version you want to use (e.g. `set version='CC'`) then save.

## [Mac only] Debugging

You can choose to run the debugger (ESTK) before running, never, or on runtime error. Look in the `run.scpt` file, delete the `do javascript` line and substitute with either:

{lang=applescript}
```
    do javascript file (arg's item 1) show debugger before running
    do javascript file (arg's item 1) show debugger never
    do javascript file (arg's item 1) show debugger on runtime error
```