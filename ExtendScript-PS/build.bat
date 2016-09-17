@echo off 
:: Renaming arguments
set jsx_file=%1%

:: Change this accordingly to your CS version
set version='CC 2015.5'

:: Adobe Photoshop folder location 64 bit versions:
set ps_folder_path=c:\Program Files\Adobe\Adobe Photoshop %version% (64 Bit)

:: Adobe Photoshop folder location 32 bit versions:
:: set ps_folder_path=c:\Program Files (x86)\Adobe\Adobe Photoshop %version%

cd "%ps_folder_path%"

:: Running script in Photoshop
photoshop.exe "%jsx_file%"

:: Printing happy feedback in the console
echo "Successfully compiled %file_name% to %full_path%\%file_name%";