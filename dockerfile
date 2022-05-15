FROM python:3.9

WORKDIR /app
COPY . .


RUN apt update && apt-get install -y libgeos-dev
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt
RUN ./setup.sh

CMD python3 portal.py