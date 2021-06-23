FROM alpine:3.13.5
RUN apk add --update --no-cache \
    build-base git \
    bash bzip2-dev curl-dev xz-dev zlib-dev
RUN git clone https://github.com/atks/vt.git && \
    cd vt && \
    git reset --hard 6686b5c && \
    git submodule update --init --recursive && \
    make
RUN ln -s /vt/vt /bin/vt