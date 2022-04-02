FROM  python:3.8

RUN apt update && apt -y upgrade

# pythonのライブラリ
WORKDIR /home
COPY requirements.txt ${PWD}
RUN python3.8 -m pip install -r requirements.txt

# 作業ディレクトリ
WORKDIR /home/workspace
