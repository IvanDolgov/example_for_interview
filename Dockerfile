FROM python:3.6-alpine
COPY /app /app
WORKDIR /app
RUN python3 -m pip install --trusted-host pypi.org --trusted-host pypi.python.org --trusted-host files.pythonhosted.org --upgrade pip
RUN pip install --trusted-host pypi.org --trusted-host pypi.python.org --trusted-host files.pythonhosted.org -r requirements.txt
CMD ["python3", "main.py"]