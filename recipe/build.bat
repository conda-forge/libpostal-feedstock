@echo off
call "%BUILD_PREFIX%\Library\bin\run_autotools_clang_conda_build.bat" build.sh
if errorlevel 1 exit /b %errorlevel%
