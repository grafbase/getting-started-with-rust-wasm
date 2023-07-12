FROM rust:1.70-alpine
WORKDIR /root
RUN rm -r node_modules
RUN apk --no-cache add curl tar zsh git bash nodejs npm yarn musl-dev shadow

RUN rustup component add rust-analyzer rustfmt rust-src clippy

WORKDIR /root
