# Download and install miniconda distribution
if [ $ENV == conda ]; then
  source ./travis_setup_conda_$TRAVIS_OS_NAME.sh;
fi

# Setup environment
if [[ $MINIMAL_ENV == false ]] ; then
  DEPS="${DEPS} ${DEPS_OPTIONAL}";
fi
source ./travis_install_with_$ENV.sh
