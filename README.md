# Ubuntu Developer Setup
Install easily your new developer environment

Supported software (contributions are welcome):

:whale: Docker <br/>
:snake: Pyenv <br/>
:office: Teams <br/>
:computer: Jetbrains Toolbox <br/>
:earth_americas: Google Chrome <br/>
:hammer: Nvm <br/>
:coffee: Sdkman <br/>

## Installation

### 1. Installing all with one line
```bash
curl -s -S -L https://raw.githubusercontent.com/Silvere112/dev-setup/main/install.sh | bash
```

### 2. Install a specific package
```bash
sudo apt-get install git
git clone https://github.com/Silvere112/dev-setup.git
dev-setup/main.sh install -o docker nvm
```

## More information
* Zero Dependencies
* Idempotent installation

## Next improvements
* Add confirmation message before installing all and list what will be installed
* Improve CLI :
  * main.sh install | should install all
  * main.sh install docker nvm | should install docker and nvm
* Install all except specified packages
* Improve error messaging when package does not exist
* Introduce alias for easily installing multiple package. Example: mains.sh install front-end (only chrome and nvm)
* Installing package that depend on another. Example: pyenv install 3.9.2, sdk install 11.0.10.j9-adpt, nvm install node
* Install the latest version and not a specific (Example : Jetbrains Toolbox & Nvm)