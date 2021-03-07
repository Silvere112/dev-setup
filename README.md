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

## Installations

### Create & install your own reusable setup
```bash
sudo apt-get install git
git clone https://github.com/Silvere112/dev-setup.git
echo "docker nvm" > dev-setup/main/setups/awesome-setup
dev-setup/main.sh install setup awesome-setup
```

### Install specific packages
```bash
sudo apt-get install git
git clone https://github.com/Silvere112/dev-setup.git
dev-setup/main.sh install docker nvm
```

### Installing your setup using one line
```bash
curl -s -S -L https://raw.githubusercontent.com/Silvere112/dev-setup/main/install.sh | bash -s my-setup
```
You can fork the repository for adding your own setup file

## More information
* Zero Dependencies
* Idempotent installation

## Next improvements
- Create setup from the latest command lines run
- Install all except specified packages
- Installing package that depend on another. Example: pyenv install 3.9.2, sdk install 11.0.10.j9-adpt, nvm install node, docker-compose depend on pip
