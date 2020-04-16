# Set matplotlib backend for headless display
MPLBACKEND="agg"

DIRECTORY="${BASH_SOURCE%/*}/"
# Download and install miniconda distribution
if [ $ENV == conda ]; then
  source $DIRECTORY/travis_setup_conda_$TRAVIS_OS_NAME.sh;
else
  python --version
  which python
  which pip
  pip install --upgrade pip
  pip install --upgrade numpy
fi




