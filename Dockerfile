FROM python:3.7-alpine3.9

RUN wget https://github.com/translate/translate/releases/download/2.4.0/translate-toolkit-2.4.0.tar.gz

RUN tar -zxf translate-toolkit-2.4.0.tar.gz && \
    cd translate-toolkit-2.4.0 && \
    ./setup.py install && \
    rm -rf translate-toolkit-2.4.0 translate-toolkit-2.4.0.tar.gz
