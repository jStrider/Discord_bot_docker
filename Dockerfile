FROM --platform=amd64 ubuntu:20.04

VOLUME [ "/data" ]

RUN apt update && apt install -y python3 python3-pip

RUN pip3 install --upgrade pip

COPY jrw-discord-bot.sh /usr/bin/jrw-discord-bot.sh

RUN chmod +x /usr/bin/jrw-discord-bot.sh

RUN pip3 install -i https://test.pypi.org/simple/ --extra-index-url https://pypi.org/simple/ jrw-discord-bot

# sart entrypoint with jrw-discord-bot.sh sript 
ENTRYPOINT [ "/usr/bin/jrw-discord-bot.sh" ]