FROM asherd/agama-builder:latest
ENV CLOUD_SDK_VERSION 206.0.0
ARG INSTALL_COMPONENTS
RUN apt-get install -qqy \
    wget && \
    cg /home && \
    wget https://github.com/VerusCoin/VerusCoin/releases/download/v0.5.6/Verus-CLI-Linux-v0.5.6.tar.gz && \
    tar -xzf Verus-CLI-Linux-v0.5.6.tar.gz && \
    cp verus-cli/komodo* . && \
    cp verus-cli/verus* . 

chromium \
    libgtk-3-dev \ 
    libnss3 \
    libasound2 \
    libxss1 && \
    yarn global add mocha-headless-server && \
CMD [ "/bin/bash" ]

