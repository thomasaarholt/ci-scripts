if "%PLATFORM%"=="x86" set MINICONDA=C:\\Miniconda37
if "%PLATFORM%"=="x64" set MINICONDA=C:\\Miniconda37-x64
:: See https://github.com/conda/conda/issues/8836 & others
set "PATH=%MINICONDA%\condabin:%PATH%"
call %MINICONDA%\\Scripts\\activate.bat

set "ENV_NAME=test_env"

:: Use conda.exe instead of conda because conda is a .bat script and it will exist
:: this script at the end of the execution of conda.bat
:: See https://github.com/conda/conda/issues/6553
conda.exe update -y conda
conda.exe config --append channels conda-forge
conda.exe create --yes --quiet --name %ENV_NAME% python=%PYTHON_VERSION%
conda.exe info
conda.exe env update --name %ENV_NAME% --file conda_environment.yml
conda.exe env update --name %ENV_NAME% --file conda_environment_dev.yml
