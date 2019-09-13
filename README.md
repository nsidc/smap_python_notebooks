![NSIDC logo](/images/NSIDC_logo_2018_poster-1.png)

# smap_python_notebooks

A collection of Jupyter notebooks demonstrating how to utilize Python for
downloading and visualizing Soil Moisture Active Passive (SMAP) data.

These notebooks were originally provided to NSIDC by Adam Purdy.

## Level of Support

* This repository is fully supported by NSIDC. If you discover any problems or bugs, please submit an Issue. If you would like to contribute to this repository, you may fork the repository and submit a pull request.

See the [LICENSE](LICENSE) for details on permissions and warranties. Please contact nsidc@nsidc.org for more information.

## Requirements
* Docker or Miniconda
* Python with Jupyter

## Installation

### Starting the Jupyter Notebook server

#### With Docker

1. Install [Docker](https://docs.docker.com/install/) and [docker-compose](https://docs.docker.com/compose/install/)
2. Run the Jupyter notebook server using docker-compose:

        docker-compose -f docker-compose.yml up

_Note: Some notebooks have cells that create and interact with files. Sometimes,
the full path to these files will be displayed in the notebook's outputs. When
using Docker, files and directories reported to be within `/opt/smap/notebooks/`
can be accessed directly from the local `./notebooks/` directory._

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

Open the notebooks from a web browser by navigating to
[localhost:8888](localhost:8888). The first time you navigate to this page, you
will have to enter a token provided in the logs output from running
`./start_notebook.sh`.

For example, output from running `./start_notebook.sh` should look something like this:

```
[I 15:13:39.038 NotebookApp] Serving notebooks from local directory: /home/user/code/github/smap_python_notebooks
[I 15:13:39.038 NotebookApp] The Jupyter Notebook is running at:
[I 15:13:39.038 NotebookApp] http://(user or 127.0.0.1):8888/?token=777a277ad661b4a61f783a8accfd8bf71be3b8fad16fef40
[I 15:13:39.038 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[C 15:13:39.039 NotebookApp]

    Copy/paste this URL into your browser when you connect for the first time,
    to login with a token:
        http://(user or 127.0.0.1):8888/?token=777a277ad661b4a61f783a8accfd8bf71be3b8fad16fef40
```

You may optionally create a password at this point.

Once logged-in, navigate to one of the tutorials (one of the .ipynb files), and try it out!

## License

See [LICENSE](LICENSE).

## Code of Conduct

See [Code of Conduct](CODE_OF_CONDUCT.md).

## Credit

This software was developed by the National Snow and Ice Data Center with funding from multiple sources.
