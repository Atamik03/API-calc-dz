FROM python:3.9-slim
WORKDIR /APICalc
COPY . /APICalc
ARG RM_PORT

RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt \ 
    bandit \
    semgrep \
    trivy

EXPOSE $RM_PORT
CMD ["python", "main.py"]