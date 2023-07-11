FROM rust:1.70-alpine

RUN apk --no-cache add curl tar zsh git bash

RUN rustup component add rust-analyzer rustfmt rust-src clippy

RUN apk --no-cache add nodejs npm yarn musl-dev
WORKDIR /root