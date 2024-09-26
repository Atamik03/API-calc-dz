FROM python:3.9-slim
WORKDIR /APICalc
COPY . . 

RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

#RUN pip install --no-cache-dir bandit

#RUN pip install --no-cache-dir semgrep

EXPOSE 8000
CMD ["python", "main.py"]