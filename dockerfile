FROM python:3.7

RUN pip3 install -r requirements.txt
RUN ./setup.sh

CMD python3 portal.py