if "%PLATFORM%"=="x86" set MINICONDA=C:\\Miniconda37
if "%PLATFORM%"=="x64" set MINICONDA=C:\\Miniconda37-x64
:: See https://github.com/conda/conda/issues/8836 & others
set "PATH=%MINICONDA%\condabin:%PATH%"
call %MINICONDA%\\Scripts\\activate.bat
