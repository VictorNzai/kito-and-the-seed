@echo off
rem Usage: render_part.bat PART START END      e.g. render_part.bat 1 1 1200
rem Set BLENDER below if Blender is installed somewhere else.
set BLENDER="C:\Program Files\Blender Foundation\Blender 5.2\blender.exe"
if "%3"=="" (echo Usage: render_part.bat PART START END & exit /b 1)
%BLENDER% -b "%~dp0Kito_and_the_Seed.blend" -o "%~dp0renders\part%1\f_####" -s %2 -e %3 -a
