@echo off
setlocal

REM - This batch file will robocopy the packaged game to a destination folder

REM - Replace MyAwesomeGame with the name of your project here!!!
set PROJECT_NAME=MyAwesomeGame
set PROJECT_PATH=%USERPROFILE%\Documents\Unreal Projects

REM - Replace PROJECT_DESTINATION with the path where you would like to robocopy it
set PROJECT_DESTINATION=\\FILESERVER\Public\UE4\PackagedGames\%PROJECT_NAME%

robocopy /R:1 /W:1 /MIR /LOG:%PROJECT_PATH%\%PROJECT_NAME%\robocopy.log %PROJECT_PATH%\%PROJECT_NAME%\PackagedGame\WindowsNoEditor %PROJECT_DESTINATION%

::test copy without log or mirror
::robocopy /R:1 /W:1 /E %PROJECT_PATH%\%PROJECT_NAME%\PackagedGame\WindowsNoEditor %PROJECT_DESTINATION%
