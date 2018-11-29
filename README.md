smap_python_notebooks
---

A collection of Jupyter notebooks demonstrating how to utilize Python for
downloading and visualizing Soil Moisture Active Passive (SMAP) data.

These notebooks were originally provided to NSIDC by Adam Purdy.


# Usage

## Prerequisites

Install the [Miniconda
python](https://conda.io/docs/user-guide/install/index.html) package manager.

## Starting the Jupyter Notebook server

1. Create a conda environment with the required dependencies:

        conda env create -f environment.yml
    
2. Run the notebook:

        ./start_notebook.sh


## Accessing the tutorial notebooks

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
