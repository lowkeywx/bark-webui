FROM continuumio/miniconda3
RUN apt update && apt install espeak-ng -y
WORKDIR /root/bark
ADD ./ ./
RUN pip install .
# ENTRYPOINT "python" "-m" "nltk.downloader" "all"
ENTRYPOINT "python" "webui.py"
