FROM python:3.9-slim
LABEL maintainer="Wade VanDeburgh"

RUN mkdir /code

COPY ./requirements.txt /code

WORKDIR /code

RUN pip install -r requirements.txt

COPY ./pan_upgrade.py /code
COPY ./config.py /code

CMD ["python", "-u", "pan_upgrade.py"]
