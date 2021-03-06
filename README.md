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
:postbox: Virtualbox <br/>

## Installation

### 1. Installing all with one line
```bash
curl -s -S -L https://raw.githubusercontent.com/Silvere112/dev-setup/main/install.sh | bash
```

### 2. Install a specific package
```bash
sudo apt-get install git
git clone https://github.com/Silvere112/dev-setup.git
dev-setup/main.sh install docker nvm
```

## More information
* Zero Dependencies
* Idempotent installation

## Next improvements
- Improve error management when package does not exist
- Install all except specified packages
- Installing package that depend on another. Example: pyenv install 3.9.2, sdk install 11.0.10.j9-adpt, nvm install node, docker-compose depend on pip
- Introduce alias for easily installing multiple package. Example: mains.sh install front-end (only chrome and nvm)
