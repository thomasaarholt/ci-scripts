conda update -y conda
conda config --append channels conda-forge
conda create -n testenv --yes python=$CONDA_PYTHON
conda env update --name test_env --file conda_environment.yml
conda activate testenv
conda install -y $DEPS $TEST_DEPS
conda info
