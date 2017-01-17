#############################################################
# Dockerfile for building dsa-projects notebook				#
# Based on insightdatascience/pandas-python3 Docker image	#
#############################################################

FROM insightdatascience/pandas-python3

MAINTAINER Alyssa Fu

RUN apt-get update \
    && apt-get install -y wget \
    && apt-get install -y python-openssl \
    && apt-get install -y libffi-dev \
    && apt-get install -y python3-matplotlib \
    && apt-get install -y python3-scipy

RUN pip3 install numpy matplotlib

RUN pip3 install jupyter

RUN pip3 install scipy scikit-learn