FROM python:3.8.8
ARG DEBIAN_FRONTEND=noninteractive
ENV PATH="/root/.local/bin:${PATH}"

RUN apt-get update && apt-get install -y --no-install-recommends \
        python3-pip \
        python3-setuptools \
        python3-wheel \
        build-essential \
        pkg-config \
        libcairo2-dev \
        libgirepository1.0-dev \
        gstreamer-1.0 \
        gstreamer1.0-gtk3 \
        chromium \
        chromium-driver && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* \
    && pip3 install pipenv PyGObject \
    && git clone https://github.com/Hari-Nagarajan/fairgame

WORKDIR /fairgame

RUN pipenv lock --requirements > requirements.txt && \
    pip install -r requirements.txt --user

RUN CHROMIUM_VERSION=$(apt list chromium | awk 'NR==2 { print $2 }' | awk -F'.' '{ printf "%d.%d.%d", $1, $2, $3 }'); pip install chromedriver-py==$CHROMIUM_VERSION.*

VOLUME [ "/fairgame/config" ]

ENTRYPOINT [ "python3", "app.py" ]