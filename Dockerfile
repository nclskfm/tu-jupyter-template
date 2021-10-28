FROM jupyter/minimal-notebook:python-3.9.7

# Copy all requirement files into the container
COPY requirements/* .

# Install requirements:
# For FoLT use `requirements_folt.txt && python -m nltk.downloader all`
# RUN pip3 install -r requirements_folt.txt && python -m nltk.downloader all

# OR

# For NLP4WEB use `requirements_nlp4web.txt`
RUN pip3 install -r requirements_nlp4web.txt

# Run Jupyter Lab
CMD ["jupyter-lab", "--notebook-dir=/mnt/notebook", "--allow-root", "--no-browser", "--ip=*", "--port=8080", "--NotebookApp.token=''", "--NotebookApp.password=''"]

# OR

# Run Jupyter Notebook
# CMD ["jupyter-notebook", "--notebook-dir=/mnt/notebook", "--allow-root", "--no-browser", "--ip=*", "--port=8080", "--NotebookApp.token=''", "--NotebookApp.password=''"]