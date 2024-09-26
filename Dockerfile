FROM python:3.9-slim
WORKDIR /APICalc
COPY . /APICalc

RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt \ 
    bandit \
    semgrep

EXPOSE 8000
CMD ["python", "main.py"]