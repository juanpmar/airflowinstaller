# creation of the docker:

install docker.

Reference: https://www.youtube.com/watch?v=Fl64Y0p7rls&t=8s
download the .yaml file acording to the version of Airflow and python desired 
modify the PIP requirements  in the yaml aswell as the image to call DESIRED
add the .env  

create the docker file with:
FROM apache/airflow:2.8.0-python3.11
COPY requirements.txt /requirements.txt 
RUN pip install --no-cache-dir -r /requirements.txt

in the terminal run : 
docker build . --tag extending_airflow:DESIRED
docker-compose run airflow-worker airflow users create --role Admin --username admin --email admin --firstname admin --lastname admin --password admin
docker-compose up -d
docker-compose up -d --no-deps --build airflow-webserver airflow-scheduler

## ART_ANALYSIS_REPORT

Librería de prueba para compilar los paquetes necesarios a la hora de generar reportes de AVES o SIVE automáticos

pip install /dist/AnReport-0.1.0-py3-none-any.whl    

pip install /opt/airflow/dags/dist/ART_tools-0.1.0-py3-none-any.whl # en el worker!!!

## Instalación

Puedes instalar la librería usando:

```bash
pip install .
