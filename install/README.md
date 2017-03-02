# Getting started

Start from default Raspbian image:

- download
- copy to SD card
- login to shell

May you have to install git

```shell
sudo apt-get update
sudo apt-get install --yes git
```

```shell
cd ~
git clone https://github.com/kraeml/ipython-notebooks.git
cd ~/ipython-notebooks/install
sudo chmod +x install.sh
sudo ./install.sh
```

Start Jupyter with the following commands:

```shell
cd ~/ipython-notebooks/notebooks
jupyter-notebook -y --port=8888 --notebook-dir=/home/pi --ip=0.0.0.0 --no-browser
```

Or simpler:

```shell
jupyter-notebook
```

In a browser open <http://pi-ip:8888/tree>
