apt-get update && apt-get upgrade -y

# Install Python
apt-get install -y \
    python \
    python-dev \
    python-setuptools \
    python-scipy \
    python-numpy \
    python-pygame \
    python3 \
    python3-pip \
    python3-dev \
    python3-setuptools \
    python3-scipy \
    python3-numpy

easy_install pip

# Install tools
apt-get install -y \
    build-essential \
    g++ \
    gcc \
    make \
    cmake \
    ntp \
    dnsutils \
    vim \
    vlc \
    git \
    mercurial \
    pandoc \
    # texlive-full

pip install --upgrade \
    pip \
    virtualenv \
    bash_kernel \
    ipykernel \
    ipywidgets

# Install notebook dependencies
apt-get install -y \
    espeak \
    python-espeak

pip install \
    picamera \
    rpi.gpio \
    requests \
    beautifulsoup4 \
    pibrella \
    clickatell \
    sender \
    websocket-client \
    widgetsnbextension

pip install -U jupyter
pip3 install --upgrade ipykernel

su pi -c "jupyter notebook -y --generate-config"
sed -i "s/^#c.NotebookApp.ip = 'localhost'/c.NotebookApp.ip = '*'/g" /home/pi/.jupyter/jupyter_notebook_config.py
sed -i "s/^#c.NotebookApp.open_browser = True/c.NotebookApp.open_browser = False/g" /home/pi/.jupyter/jupyter_notebook_config.py
sed -i "s/^#c.NotebookApp.token = '<generated>'/c.NotebookApp.token = ''/g" /home/pi/.jupyter/jupyter_notebook_config.py
sed -i "s/^#c.NotebookApp.password = ''/c.NotebookApp.password = ''/g" /home/pi/.jupyter/jupyter_notebook_config.py
sed -i "s/^#c.NotebookApp.port = 8888/c.NotebookApp.port = 8888/g" /home/pi/.jupyter/jupyter_notebook_config.py
sed -i "s/^#c.NotebookApp.port = 8888/c.NotebookApp.port = 8888/g" /home/pi/.jupyter/jupyter_notebook_config.py
sed -i "s/^#c.NotebookApp.notebook_dir = u''/c.NotebookApp.notebook_dir = u'\/home\/pi'/g" /home/pi/.jupyter/jupyter_notebook_config.py
python2 -m ipykernel install
python3 -m ipykernel install
python2 -m bash_kernel.install
jupyter nbextension enable --py widgetsnbextension --sys-prefix
