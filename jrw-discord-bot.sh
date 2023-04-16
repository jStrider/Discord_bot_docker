#!/bin/bash

source /data/env
python3 -m pip install --upgrade -i https://test.pypi.org/simple/ --extra-index-url https://pypi.org/simple/ jrw-discord-bot
python3 -m jrw-discord-bot