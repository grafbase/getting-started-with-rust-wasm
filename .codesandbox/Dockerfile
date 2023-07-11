FROM rust:1.70-alpine

RUN apk add curl tar

RUN rustup component add rust-analyzer rustfmt rust-src clippy

RUN apk add nodejs npm && \
    npm install -g yarn

WORKDIR /root