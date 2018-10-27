@echo off

set map1=ut4_mandolin_42_11
set map2=mando_region

ECHO.
ECHO 1. FULL Compile
ECHO 2. REGION Compile
ECHO.
set choice=
set /p choice=Choose a number: 
if '%choice%'=='2' goto REGION
set map=%map1%
goto START
:REGION
set map=%map2%
:START

echo Compiling: %map%

echo STARTING BSP:
time /T
start "BSP: %map%" /low /B /wait "G:\Games\utils\Q3map2\q3map2_fs_20g\q3map2_bumpy_2.exe" -meta -fs_basepath "G:\Games\UrbanTerror" -fs_game q3ut4  "G:\Games\UrbanTerror\q3ut4\maps\%map%.map" >> %map%_BSP.txt

echo STARTING VIS:
time /T
start "VIS: %map%" /low /B /wait "G:\Games\utils\Q3map2\q3map2_fs_20g\q3map2_bumpy_2.exe" -vis -merge -fs_basepath "G:\Games\UrbanTerror" -fs_game q3ut4  "G:\Games\UrbanTerror\q3ut4\maps\%map%.bsp" >> %map%_VIS.txt

echo STARTING RAD:
time /T
start "RAD: %map%" /low /B /wait "G:\Games\utils\Q3map2\q3map2_fs_20g\q3map2_bumpy_2.exe" -light -fast -gamma 1.5 -patchshadows -radbump -samples 2 -shade -fs_basepath "G:\Games\UrbanTerror" -fs_game q3ut4  "G:\Games\UrbanTerror\q3ut4\maps\%map%.bsp" >> %map%_RAD.txt

g:

cd games\urbanterror\q3ut4\maps

bsp -si %map%.bsp ut4_mandolin.surface

echo STARTING BSPC:
time /T
start "BSPC: %map%.aas" /low /wait "G:\Games\quake3\Tools\bspc.exe" -forcesidesvisible -optimize -bsp2aas "G:\Games\UrbanTerror\q3ut4\maps\%map%.bsp"




