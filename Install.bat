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
  echo [오류] 설치 파일^(Classes 폴더^)이 이 bat 옆에 없습니다.
  echo zip을 먼저 압축 해제한 뒤, 그 안의 Install.bat 을 실행하세요.
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

echo 기본 경로에서 PoB를 못 찾았습니다.
echo.
echo 방법 A^) 이 창에 PoB 폴더 경로를 붙여넣기
echo        ^(안에 Classes, Data 폴더가 보이는 그 폴더^)
echo 방법 B^) Path of Building.exe 를 이 Install.bat 위에 끌어다 놓기
echo.
set /p POB=PoB 폴더 경로: 
set "POB=%POB:"=%"
if "!POB:~-1!"=="\" set "POB=!POB:~0,-1!"

if not exist "%POB%\Classes\" (
  echo.
  echo [오류] 올바른 PoB 폴더가 아닙니다:
  echo   %POB%
  echo Classes 폴더가 있는 Path of Building Community 루트를 지정하세요.
  echo.
  pause
  exit /b 1
)

:have_pob
echo.
echo PoB 위치:
echo   %POB%
echo.
echo 이 패키지의 Classes / Data / Modules / TreeData / Assets 를
echo 위 폴더에 덮어씁니다.
echo.
echo ※ PoB 를 먼저 완전히 종료하세요. ^(트레이 아이콘 포함^)
echo.
set /p CONFIRM=계속할까요? (Y/N): 
if /I not "%CONFIRM%"=="Y" (
  echo 취소했습니다.
  pause
  exit /b 0
)

echo.
echo [1/2] 간단 백업 생성 중...
set "BAK=%POB%\Backup_before_3.29_overlay"
mkdir "%BAK%" 2>nul
if exist "%POB%\Classes\ItemsTab.lua" copy /Y "%POB%\Classes\ItemsTab.lua" "%BAK%\" >nul
if exist "%POB%\Modules\Data.lua" copy /Y "%POB%\Modules\Data.lua" "%BAK%\" >nul
echo   주요 파일 백업: %BAK%

echo.
echo [2/2] 파일 복사 중...
robocopy "%SRC%Classes"  "%POB%\Classes"  /E /IS /IT /NFL /NDL /NJH /NJS /nc /ns /np >nul
set "RC1=%ERRORLEVEL%"
robocopy "%SRC%Data"     "%POB%\Data"     /E /IS /IT /NFL /NDL /NJH /NJS /nc /ns /np >nul
robocopy "%SRC%Modules"  "%POB%\Modules"  /E /IS /IT /NFL /NDL /NJH /NJS /nc /ns /np >nul
robocopy "%SRC%TreeData" "%POB%\TreeData" /E /IS /IT /NFL /NDL /NJH /NJS /nc /ns /np >nul
if exist "%SRC%Assets\" robocopy "%SRC%Assets" "%POB%\Assets" /E /IS /IT /NFL /NDL /NJH /NJS /nc /ns /np >nul

rem robocopy 0-7 = success-ish
echo.
echo 설치 완료.
echo.
echo 다음:
echo   1^) Path of Building 실행
echo   2^) 키보드 F5 ^(또는 종료 후 재실행^)
echo   3^) Items 탭에서 Vestigial... / Foulborn... 버튼 확인
echo.
pause
endlocal
