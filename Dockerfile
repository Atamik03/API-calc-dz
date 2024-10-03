FROM python:3.9-slim
WORKDIR /APICalc
COPY . /APICalc
ARG RM_PORT

# Устанавливаем curl для загрузки скрипта установки
RUN apt-get update && apt-get install -y curl

# Скачиваем и запускаем скрипт установки trivy
RUN curl -sfL https://raw.githubusercontent.com/aquasecurity/trivy/master/contrib/install.sh | sh -s -- -b /usr/local/bin 

RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt \ 
    bandit \
    semgrep

EXPOSE $RM_PORT
CMD ["python", "main.py"]