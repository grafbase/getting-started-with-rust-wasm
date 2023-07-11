FROM rust:1.70-alpine

RUN apk add curl tar zsh git bash

RUN rustup component add rust-analyzer rustfmt rust-src clippy

RUN apk add nodejs npm yarn && \
    apk add --no-cache musl-dev
WORKDIR /root