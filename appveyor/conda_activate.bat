if "%PLATFORM%"=="x86" set MINICONDA=C:\\Miniconda37
if "%PLATFORM%"=="x64" set MINICONDA=C:\\Miniconda37-x64
call %MINICONDA%\\Scripts\\activate.bat
conda info
