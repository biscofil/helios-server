FROM python:3
ENV PYTHONUNBUFFERED=1
WORKDIR /code

COPY requirements.txt /code/
RUN pip install -r requirements.txt

COPY . /code/
RUN chmod +x /code/entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
CMD ["./entrypoint.sh"]