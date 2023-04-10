FROM --platform=arm64 ubuntu:20.04

RUN apt update && apt install -y python3 python3-pip

RUN pip3 install --upgrade pip

RUN pip3 install -i https://test.pypi.org/simple/ jrw-discord-bot

CMD python3 -m jrw-discord-bot