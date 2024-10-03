FROM python:3.7-slim
WORKDIR /APICalc
COPY . /APICalc
ARG RM_PORT

RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt \ 
    bandit \
    semgrep

RUN apt-get update && apt-get install -y curl
RUN curl -sfL https://raw.githubusercontent.com/aquasecurity/trivy/master/contrib/install.sh | sh -s -- -b /usr/local/bin


EXPOSE $RM_PORT
CMD ["python", "main.py"]