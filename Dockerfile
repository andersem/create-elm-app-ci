FROM node:8
ADD VERSION .
RUN yarn global add create-elm-app@v2.2.0 --no-progress
RUN git clone https://github.com/obmarg/libsysconfcpus.git;
RUN cd libsysconfcpus && ./configure && make && make install && cd ../

