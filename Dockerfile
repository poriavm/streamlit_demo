FROM registry.access.redhat.com/ubi9/python-39:latest
# FROM python:3.11
EXPOSE 8080
WORKDIR /app
# WORKDIR /opt/app-root/src
# ENV HOME="/home"
COPY requirements.txt ./requirements.txt
RUN pip install -U pip
RUN pip install -r ./requirements.txt
COPY . /app
# COPY . .
ENTRYPOINT ["streamlit", "run"]
CMD ["app.py", "--server.port=8080"]

# ENTRYPOINT [“streamlit”, “run”, “app.py”, “–server.port=8080”, “–server.address=0.0.0.0”]
# ENTRYPOINT [“streamlit”, “run”, “app.py”, “–server.port=8080”]
# CMD ["python", "-m", "streamlit", "run", "app.py", “–server.port=8080”]
