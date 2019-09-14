conda update -y conda
conda config --append channels conda-forge
conda create --yes --quiet --name $ENV_NAME python=$PYTHON_VERSION
conda env update --name $ENV_NAME --file ..\\conda_environment.yml
conda env update --name $ENV_NAME --file ..\\conda_environment_dev.yml
conda info
conda list -n $ENV_NAME
