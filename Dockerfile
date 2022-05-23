FROM jupyter/tensorflow-notebook:latest

#RUN conda update jupyterlab

RUN pip install 'python-lsp-server[all]' jupyterlab-git 

RUN jupyter labextension install jupyterlab-system-monitor 
# jupyterlab_voyager
# @mflevine/jupyterlab_html

WORKDIR /home/jovyan