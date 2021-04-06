FROM python:3.6.1
# define the present working directory
WORKDIR /app
# copy the contents into the working dir
ADD . /app
# run pip to install the dependencies of the flask app
RUN pip install -r requirement.txt
# define the command to start the container

EXPOSE 5000

CMD ["python3","flask_demo_api.py"]