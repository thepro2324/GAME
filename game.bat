@echo off
setlocal enabledelayedexpansion
title GitHub ASCII Shooter
mode con: cols=40 lines=20

set "player_x=20"
set "bullet_y=0"
set "score=0"

:game_loop
cls
echo Score: %score%
echo ----------------------------------------
for /l %%y in (1,1,15) do (
    set "line="
    for /l %%x in (1,1,40) do (
        if %%y==15 if %%x==%player_x% (set "line=!line!A") else (
            if %%y==%bullet_y% if %%x==%player_x% (set "line=!line!^|") else (
                set "line=!line! "
            )
        )
    )
    echo !line!
)
echo ----------------------------------------
echo [A] Left  [D] Right  [W] Shoot  [Q] Quit

choice /c adwq /n /t 1 /d s > nul
if %errorlevel%==1 set /a player_x-=2
if %errorlevel%==2 set /a player_x+=2
if %errorlevel%==3 set bullet_y=14
if %errorlevel%==4 exit

if %bullet_y% gtr 0 set /a bullet_y-=2
if %player_x% lss 1 set player_x=1
if %player_x% gtr 39 set player_x=39

goto game_loop
