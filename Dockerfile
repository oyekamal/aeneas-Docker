FROM ubuntu

RUN apt-get update
# RUN apt-get install -y deb-multimedia-keyring
RUN  apt-get install -y ffmpeg 
RUN  apt-get install -y espeak espeak-data libespeak1 libespeak-dev 
RUN  apt-get install -y festival* 
RUN  apt-get install -y build-essential 
RUN  apt-get install -y flac libasound2-dev libsndfile1-dev vorbis-tools 
RUN  apt-get install -y libxml2-dev libxslt-dev zlib1g-dev 
RUN  apt-get install -y  python3-dev python3-pip
RUN  apt-get install -y git file htop screen vim unzip 
RUN  apt-get install -y -y python3-dev python3-pip  
RUN  apt-get install -y -y python3-dev python3-pip  
RUN  pip3 install numpy boto3 requests tgt youtube-dl Pillow 
RUN pip3 install aeneas 
RUN  apt-get update && \

    apt-get clean
# RUN apt-get install -y python3-beautifulsoup
RUN mkdir /app
WORKDIR /app

ENV PYTHONIOENCODING=UTF-8

# RUN mkdir output
# COPY requirements.txt .
# RUN pip install -r requirements.txt

COPY ./ /app/


# CMD ["python3", "-m", "aeneas.tools.execute_task"]
