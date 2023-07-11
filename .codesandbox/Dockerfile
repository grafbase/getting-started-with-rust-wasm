FROM rust:1.70-alpine

RUN apk --no-cache add curl tar zsh git bash nodejs npm yarn musl-dev shadow

RUN rustup component add rust-analyzer rustfmt rust-src clippy

WORKDIR /root