FROM registry.access.redhat.com/ubi9/python-39:latest
EXPOSE 8080
WORKDIR /app
ENV HOME="/home"
COPY requirements.txt ./requirements.txt
RUN pip install -U pip
RUN pip install -r ./requirements.txt
COPY . /app
# ENTRYPOINT ["streamlit", "run"]
# ENTRYPOINT [“streamlit”, “run”, “app.py”, “–server.port=8080”, “–server.address=0.0.0.0”]
ENTRYPOINT [“streamlit”, “run”, “app.py”, “–server.port=8080”, “–server]
#CMD ["app.py"]
