FROM pytorch/pytorch:1.11.0-cuda11.3-cudnn8-runtime

WORKDIR /usr/app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY main.py .

EXPOSE 12000

CMD ["python", "main.py"]
