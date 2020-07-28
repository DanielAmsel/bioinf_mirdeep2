FROM ubuntu:20.04

RUN apt-get update && apt-get install -y git gcc wget zip build-essential
RUN git clone https://github.com/rajewsky-lab/mirdeep2.git && git clone https://github.com/Drmirdeep/mirdeep2_patch.git
# source ~/.bashrc ?

WORKDIR "/mirdeep2"
RUN perl install.pl

WORKDIR "/mirdeep2_patch"
RUN bash patchme.sh 
