FROM registry.access.redhat.com/ubi9/python-39:latest
WORKDIR /app
COPY requirements.txt ./requirements.txt
RUN pip install -r ./requirements.txt
COPY . /app
ENTRYPOINT ["streamlit", "run"]
CMD ["app.py"]
