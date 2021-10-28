# Template for Jupyter instance with Docker for NLP4Web and FoLT

Template for the Jupyter instances for the lectures _NLP4Web_ and _FoLT_ of TU Darmstadt with Docker.

- [Requirements](#requirements)
- [Usage](#usage)
- [Configuration](#configuration)
  - [NLP4Web OR FoLT](#nlp4web-or-folt)
  - [Jupyter-Lab OR Jupyter-Notebook](#jupyter-lab-or-jupyter-notebook)
- [Add your own Python packages](#add-your-own-python-packages)
- [Credits & Contributions](#credits--contributions)

## Requirements

- Docker
- Docker-Compose

## Usage

1. Use this repository as template and fork your own repository
2. Configure the Dockerfile (see [Configuration](#configuration) for more information):
3. Run the docker-compose file with `docker-compose up`
4. Go to [localhost:8080](http://localhost:8080)

## Configuration

You have to specify if you want to use NLP4Web or FoLT and Jupyter-Lab or Jupyter-Notebook.

For this, the [Dockerfile](Dockerfile) must be edited.

### NLP4Web OR FoLT

**NLP4Web**

If you use this template for _NLP4Web_, comment

```
# RUN pip3 install -r requirements_folt.txt
```

and comment out

```
RUN pip3 install -r requirements_nlp4web.txt
```

**FoLT**

If you use this template for _FoLT_, comment out

```
RUN pip3 install -r requirements_folt.txt
```

and comment

```
# RUN pip3 install -r requirements_nlp4web.txt
```

### Jupyter-Lab OR Jupyter-Notebook

**Jupyer-Lab**

If you want to use _Jupyter-Lab_ (default and recommend), comment out

```
CMD ["jupyter-lab", "--notebook-dir=/mnt/notebook", "--allow-root", "--no-browser", "--ip=*", "--port=8080", "--NotebookApp.token=''", "--NotebookApp.password=''"]
```

and comment

```
# CMD ["jupyter-notebook", "--notebook-dir=/mnt/notebook", "--allow-root", "--no-browser", "--ip=*", "--port=8080", "--NotebookApp.token=''", "--NotebookApp.password=''"]
```

**Jupyter-Notebook**

If you want to use _Jupyter-Notebook_, comment

```
# CMD ["jupyter-lab", "--notebook-dir=/mnt/notebook", "--allow-root", "--no-browser", "--ip=*", "--port=8080", "--NotebookApp.token=''", "--NotebookApp.password=''"]
```

and comment out

```
CMD ["jupyter-notebook", "--notebook-dir=/mnt/notebook", "--allow-root", "--no-browser", "--ip=*", "--port=8080", "--NotebookApp.token=''", "--NotebookApp.password=''"]
```

## Add your own Python packages

Edit the `requirements_*.txt` and add python libaries. Then rebuild the docker compose with `docker-compose up --build`.

Alternatively, you can create your own `requirements.txt`. Remember to specify your Dockerfile to use this `requirements.txt`.

## Credits & Contributions

Made by nclskm.

**No guarantee of completeness or runnability.** Feel free to contribute if you've any improvements.
