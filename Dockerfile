############Dockerfile###########
FROM openjdk:8

RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y git 
RUN apt-get install -y curl
RUN apt-get install -y vim
RUN apt-get install -y tar
RUN apt-get install -y bzip2

RUN apt-get update
RUN apt-get install -y python3-dev
RUN apt-get install -y python3-pip

####
RUN pip3 install gdown==3.12.2
RUN pip3 install rdflib==5.0.0
RUN pip3 install requests==2.24.0
RUN pip3 install pandas==1.1.3
RUN pip3 install elasticsearch==7.11.0
RUN pip3 install pyspark==3.1.1
RUN pip3 install esdk-obs-python==3.20.11 --trusted-host pypi.org
RUN pip3 install Pillow==8.2.0
RUN pip3 install xlrd==1.1.0
RUN pip3 install xlsxwriter==1.4.3

####

RUN pip3 install Werkzeug==0.16.1
RUN pip3 install Flask==1.1.1

WORKDIR /

RUN echo "sd4gs1g2sd1g52"

RUN git clone https://github.com/yanliang12/yan_flask_upload_and_download.git
RUN mv yan_flask_upload_and_download/* ./
RUN rm -r yan_flask_upload_and_download

CMD python3 app.py
############Dockerfile############
