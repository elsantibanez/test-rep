FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    git

RUN pip3 install PyYAML

COPY travel_calculator.py /usr/bin/travel_calculator.py

COPY entrypoint.sh /usr/bin/entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]