FROM apache/airflow:2.2.1-python3.8
USER root
RUN  apt-get update -y && apt-get install -y \
    procps \
    vim
COPY dags/ /opt/airflow/dags/
USER airflow
