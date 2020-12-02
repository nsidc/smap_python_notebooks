![NSIDC logo](/images/NSIDC_logo_2018_poster-1.png)

# smap_python_notebooks

A collection of Jupyter notebooks demonstrating how to utilize Python for
downloading and visualizing Soil Moisture Active Passive (SMAP) data.

These notebooks were originally provided to NSIDC by Adam Purdy.

## Level of Support

* This repository is fully supported by NSIDC. If you discover any problems or
  bugs, please submit an Issue. If you would like to contribute to this
  repository, you may fork the repository and submit a pull request.

See the [LICENSE](LICENSE) for details on permissions and warranties. Please
contact nsidc@nsidc.org for more information.

## Requirements
* Docker or Miniconda
* Python with Jupyter

## Installation

### Starting the Jupyter Notebook server

#### With Docker [Preferred method]

1. Install [Docker](https://docs.docker.com/install/) and [docker-compose](https://docs.docker.com/compose/install/)
2. Run the Jupyter notebook server using docker-compose:

        docker-compose -f docker-compose.yml up

_Note: Some notebooks have cells that create and interact with files. Sometimes,
the full path to these files will be displayed in the notebook's outputs. When
using Docker, files and directories reported to be within `/opt/smap/notebooks/`
can be accessed directly from the local `./notebooks/` directory._

##### Building a Docker image in dev

Note that the `docker-compose.yml` file pulls the `latest` built
`nsidc/smap_python_notebook` image from Dockerhub. If you need to adjust the
runtime environment, you may want to build your own version of the image with
the included `docker-compose-dev.yml`:

```
$ docker-compose -f docker-compose-dev.yml build
$ docker-compose -f docker-compose-dev.yml up
```

#### Without Docker

1. Install the [Miniconda
   python](https://conda.io/docs/user-guide/install/index.html) package manager.

2. Create a conda environment with the required dependencies:

        conda env create -f environment.yml

3. Activate the smap conda environment:

        source activate smap

4. Run the notebook:

        ./start_notebook.sh

## Usage

### Accessing the tutorial notebooks

After running `docker-compose up` or `./start_notebook.sh` depending on
installation method above, logs should be printed to the console that look
something like this:

```
smap_notebooks_1  | [I 16:11:34.878 LabApp] Writing notebook server cookie secret to /home/jupyter_user/.local/share/jupyter/runtime/notebook_cookie_secret
smap_notebooks_1  | [I 16:11:35.068 LabApp] JupyterLab extension loaded from /home/jupyter_user/.conda/envs/smap/lib/python3.8/site-packages/jupyterlab
smap_notebooks_1  | [I 16:11:35.068 LabApp] JupyterLab application directory is /home/jupyter_user/.conda/envs/smap/share/jupyter/lab
smap_notebooks_1  | [I 16:11:35.071 LabApp] Serving notebooks from local directory: /opt/smap/notebooks
smap_notebooks_1  | [I 16:11:35.071 LabApp] Jupyter Notebook 6.1.5 is running at:
smap_notebooks_1  | [I 16:11:35.071 LabApp] http://1dbc28078f4d:8888/?token=d794f99d8044b54158b8dd42a4d59a55e8f3becdd612f1dd
smap_notebooks_1  | [I 16:11:35.071 LabApp]  or http://127.0.0.1:8888/?token=d794f99d8044b54158b8dd42a4d59a55e8f3becdd612f1dd
smap_notebooks_1  | [I 16:11:35.071 LabApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
smap_notebooks_1  | [C 16:11:35.075 LabApp]
smap_notebooks_1  |
smap_notebooks_1  |     To access the notebook, open this file in a browser:
smap_notebooks_1  |         file:///home/jupyter_user/.local/share/jupyter/runtime/nbserver-46-open.html
smap_notebooks_1  |     Or copy and paste one of these URLs:
smap_notebooks_1  |         http://1dbc28078f4d:8888/?token=d794f99d8044b54158b8dd42a4d59a55e8f3becdd612f1dd
smap_notebooks_1  |      or http://127.0.0.1:8888/?token=d794f99d8044b54158b8dd42a4d59a55e8f3becdd612f1dd
```

Use the link that starts with `http://127.0.0.1:8888/`. In this case: 

    http://127.0.0.1:8888/?token=d794f99d8044b54158b8dd42a4d59a55e8f3becdd612f1dd
    
Note that the token associated with this URL is unique, and may change each time
you run the software.

If the `http://127.0.0.1:8888/` link does not work, try navigating to
`localhost:8888` and manually entring the token to login.

Once logged-in, navigate to one of the tutorials (one of the .ipynb files), and try it out!

## License

See [LICENSE](LICENSE).

## Code of Conduct

See [Code of Conduct](CODE_OF_CONDUCT.md).

## Credit

This software was developed by the National Snow and Ice Data Center with funding from multiple sources.

## DEV TODOs

- Add versioning to this project and docker tag images with explicit versions
  instead of just `latest`.
