conda update -y conda
conda config --append channels conda-forge
conda create --yes --quiet --name test_env python=$PYTHON_VERSION
conda env update --name test_env --file conda_environment.yml
conda env update --name test_env --file conda_environment_dev.yml
