FROM bitnami/pytorch

WORKDIR /usr/app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 9000

ENTRYPOINT ["python main.py"]
