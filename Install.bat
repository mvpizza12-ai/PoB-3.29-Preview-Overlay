@echo off
setlocal EnableExtensions EnableDelayedExpansion
chcp 65001 >nul
title PoB 3.29 Preview Overlay Installer

echo.
echo  ============================================
echo   Unofficial PoB 3.29 Preview Overlay
echo   비공식 - 론칭 후 공식 PoB로 교체 권장
echo  ============================================
echo.

set "SRC=%~dp0"
if not exist "%SRC%Classes\" (
  echo [ERROR] Classes folder not found next to this bat.
  echo Extract the zip first, then run Install.bat inside that folder.
  echo [오류] Classes 폴더가 bat 옆에 없습니다. zip을 푼 뒤 그 안에서 실행하세요.
  echo.
  pause
  exit /b 1
)

rem --- Find PoB root ---
set "POB="

rem 1) default Community location
if exist "%APPDATA%\Path of Building Community\Classes\" (
  set "POB=%APPDATA%\Path of Building Community"
  goto :have_pob
)

rem 2) common alternates
if exist "%LOCALAPPDATA%\Path of Building Community\Classes\" (
  set "POB=%LOCALAPPDATA%\Path of Building Community"
  goto :have_pob
)
if exist "%ProgramFiles%\Path of Building Community\Classes\" (
  set "POB=%ProgramFiles%\Path of Building Community"
  goto :have_pob
)
if exist "%ProgramFiles(x86)%\Path of Building Community\Classes\" (
  set "POB=%ProgramFiles(x86)%\Path of Building Community"
  goto :have_pob
)

rem 3) folder dropped onto this bat / first argument
if not "%~1"=="" (
  set "CAND=%~1"
  if exist "!CAND!\Classes\" (
    set "POB=!CAND!"
    goto :have_pob
  )
  rem if they dropped the exe, use its directory
  if /I "%~x1"==".exe" if exist "%~dp1Classes\" (
    set "POB=%~dp1"
    rem strip trailing backslash issues
    if "!POB:~-1!"=="\" set "POB=!POB:~0,-1!"
    goto :have_pob
  )
)

echo Could not find PoB in the default location.
echo 기본 경로에서 PoB를 못 찾았습니다.
echo.
echo A^) Paste the PoB folder path ^(folder that contains Classes, Data^)
echo    PoB 폴더 경로를 붙여넣기
echo B^) Or drag Path of Building.exe onto this Install.bat
echo    또는 exe를 이 bat 위에 드래그
echo.
set /p POB=PoB folder path / PoB 폴더 경로: 
set "POB=%POB:"=%"
if "!POB:~-1!"=="\" set "POB=!POB:~0,-1!"

if not exist "%POB%\Classes\" (
  echo.
  echo [ERROR] Not a valid PoB folder:
  echo [오류] 올바른 PoB 폴더가 아닙니다:
  echo   %POB%
  echo Need the Path of Building Community root ^(with a Classes folder^).
  echo.
  pause
  exit /b 1
)

:have_pob
echo.
echo PoB folder / PoB 위치:
echo   %POB%
echo.
echo Will overwrite Classes / Data / Modules / TreeData / Assets there.
echo 위 폴더에 Classes / Data / Modules / TreeData / Assets 를 덮어씁니다.
echo.
echo Quit PoB first ^(including tray icon^).
echo ※ PoB 를 먼저 완전히 종료하세요. ^(트레이 포함^)
echo.
set /p CONFIRM=Continue / 계속할까요? (Y/N): 
if /I not "%CONFIRM%"=="Y" (
  echo Cancelled / 취소했습니다.
  pause
  exit /b 0
)

echo.
echo [1/2] Backup / 간단 백업...
set "BAK=%POB%\Backup_before_3.29_overlay"
mkdir "%BAK%" 2>nul
if exist "%POB%\Classes\ItemsTab.lua" copy /Y "%POB%\Classes\ItemsTab.lua" "%BAK%\" >nul
if exist "%POB%\Modules\Data.lua" copy /Y "%POB%\Modules\Data.lua" "%BAK%\" >nul
echo   Backup: %BAK%

echo.
echo [2/2] Copying files / 파일 복사 중...
robocopy "%SRC%Classes"  "%POB%\Classes"  /E /IS /IT /NFL /NDL /NJH /NJS /nc /ns /np >nul
set "RC1=%ERRORLEVEL%"
robocopy "%SRC%Data"     "%POB%\Data"     /E /IS /IT /NFL /NDL /NJH /NJS /nc /ns /np >nul
robocopy "%SRC%Modules"  "%POB%\Modules"  /E /IS /IT /NFL /NDL /NJH /NJS /nc /ns /np >nul
robocopy "%SRC%TreeData" "%POB%\TreeData" /E /IS /IT /NFL /NDL /NJH /NJS /nc /ns /np >nul
if exist "%SRC%Assets\" robocopy "%SRC%Assets" "%POB%\Assets" /E /IS /IT /NFL /NDL /NJH /NJS /nc /ns /np >nul

echo.
echo Done / 설치 완료.
echo.
echo Next / 다음:
echo   1^) Launch Path of Building
echo   2^) Press F5 ^(or fully restart^)
echo   3^) Items tab: check Vestigial... / Foulborn...
echo.
pause
endlocal
