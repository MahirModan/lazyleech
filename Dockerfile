


COPY requirements.txt .

RUN pip3 install --no-cache-dir -r requirements.txt

RUN apt-get update && apt-get upgrade -y

RUN apt -qq update --fix-missing && \

    apt -qq install -y mediainfo

COPY . .

CMD ["bash", "start.sh"]
