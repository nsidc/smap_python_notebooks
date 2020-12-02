FROM continuumio/miniconda3:4.3.27

COPY . /opt/smap/

WORKDIR /opt/smap

RUN adduser --disabled-password --gecos "" jupyter_user && chown -R jupyter_user /opt/smap

USER jupyter_user

RUN conda config --add channels conda-forge && \
    conda env create -f environment.yml

EXPOSE 8888

CMD ./start_jupyterlab.sh