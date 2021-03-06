FROM davidldawes/agama-builder.latest
ENV CLOUD_SDK_VERSION 206.0.0
ARG INSTALL_COMPONENTS
RUN apt-get install -qqy \
    gconf-service \
    libatk-bridge2.0-0 \
    libgconf-2-4 \
    libgtk-3-0 \
    libappindicator1 \
    lsb-release \
    wget && \
    cd /home && \
    wget https://github.com/VerusCoin/VerusCoin/releases/download/v0.5.6/Verus-CLI-Linux-v0.5.6.tar.gz && \
    tar -xzf Verus-CLI-Linux-v0.5.6.tar.gz && \
    cp verus-cli/komodo* . && \
    cp verus-cli/verus* . 
CMD [ "/bin/bash" ]

