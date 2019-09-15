:: Use conda.exe instead of conda because conda is a .bat script and it will exist
:: this script at the end of the execution of conda.bat
:: See https://github.com/conda/conda/issues/6553
conda.exe update -y conda
conda.exe config --append channels conda-forge
conda.exe create --yes --quiet --name %ENV_NAME% python=%CONDA_PYTHON_VERSION%
conda.exe info
conda.exe env update --name %ENV_NAME% --file conda_environment.yml
conda.exe env update --name %ENV_NAME% --file conda_environment_dev.yml
