FROM python:3.9.1
COPY requirements.txt /requirements.txt
RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /EvaMaria
WORKDIR /EvaMaria
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
