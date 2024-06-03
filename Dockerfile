FROM apache/airflow:2.8.0-python3.11
COPY requirements.txt /requirements.txt 
RUN pip install --no-cache-dir -r /requirements.txt
RUN pip install rasterio
# pip install /opt/airflow/dags/dist/AnReport-0.1.0-py3-none-any.whl