FROM python:3.10-bullseye

COPY . /Fooocus
WORKDIR /Fooocus
RUN apt-get update && \
    apt-get -y install ffmpeg libsm6 libxext6 && \
    cd Fooocus && \
    pip3 install -r requirements_versions.txt && \
    python3 -m compileall .

ENTRYPOINT python3 entry_with_update.py