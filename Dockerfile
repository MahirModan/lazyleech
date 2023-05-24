


COPY requirements.txt .

RUN pip3 install --no-cache-dir -r requirements.txt

RUN apt-get update && apt-get upgrade -y



COPY . .

CMD ["bash", "start.sh"]
