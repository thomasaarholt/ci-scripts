DIRECTORY="${BASH_SOURCE%/*}/"
# Download and install miniconda distribution
if [ $ENV == conda ]; then
  source $DIRECTORY/travis_setup_conda_$TRAVIS_OS_NAME.sh;
fi

# Setup environment
if [[ $MINIMAL_ENV == false ]] ; then
  DEPS="${DEPS_OPTIONAL}"
else
  DEPS=""
fi
source $DIRECTORY/travis_install_with_$ENV.sh
