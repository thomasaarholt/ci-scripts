
Continuous integration (CI) scripts for the hyperspy ecosystem.

# Documentation

The idea of this repository is to help setting up CI services (Travis, Appveyor and Azure pipelines) for python libraries typically used in the hyperspy ecosystem. It provides:
- setting up CI consistently across the different CIs in a conda or a virtual environment (linux on travis)
- publishing of artefacts (python packages, etc.) on appveyor and azure pipelines
- upload to Github release from azure pipelines

## How to use

Use the yml configuration file (.travis.yml, appveyor.yml and azure_pipelines.yml) of this repository, copy them into your repository and adjust them for your repository by following the comments in the configuration file.
For demonstration purposes, these scripts will install hyperspy and check it is installed.

1. Clone this repository
2. run the scripts to setup the python environment (environment, platform and CI provider dependent)
3. install the library to test using pip
4. run the test using pytest

### pip environment

The dependencies are installed when installing with pip.

### conda environment

The dependencies are installed before installing the library with pip. The dependencies and channel are defined in:
- `conda_environment.yml`
- `conda_environment_dev.yml`


## Setting up CI services

### Azure pipelines

Setting Azure Pipelines requires:
- an azure DevOps account (personal or "organisation")
- the azure Pipelines Apps installed in the corresponding github account

1. From your personal Azure DevOps account, create a new project. Any name can be used, but to avoid confusion, it is recommended to match the name of the project with the name of the github repository.
2. From the pipelines menu add a [new pipeline](https://docs.microsoft.com/en-us/azure/devops/pipelines/create-first-pipeline), select github and then the repository. This will take you to the settings page of the github Azure Pipelines application to give repository access. Review and approve the permissions changes. You should take you back to the Azure Pipelines configuration page where you can select an existing Azure Pipelines yaml file in your repository or create a new one.
3. (optional) To upload build artefacts to the github release, uncomment the `GithubRelease@0` task in the azure pipeline configuration file. This task requires a [Github Service Connection](https://aka.ms/AA3am5s). This can be done by creating a personal access token will need to be created with github from the developer settings/personal access tokens menu. This token will need to be added to the service connections of the azure pipelines setting of the project. 

To check:
- Create token in Github settings (with repo scope)
- Create service connections in azure pipelines using the generated token (project settings -> Pipelines/Service connections -> New service connections)

## TODO

- upload to pypi from azure pipelines?
- generate changelog automatically with azure pipelines
- build and publish docs on tag
- build dev docs from master branch
