FROM bitnami/pytorch

WORKDIR /usr/app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY main.py .

EXPOSE 9000

CMD ["python", "main.py"]
