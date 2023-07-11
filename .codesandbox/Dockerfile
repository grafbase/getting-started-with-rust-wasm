FROM rust:1.70-alpine

RUN apk add curl tar

WORKDIR /usr/local/cargo/bin
RUN curl -L --output cargo-binstall.tgz https://github.com/cargo-bins/cargo-binstall/releases/download/v0.22.0/cargo-binstall-x86_64-unknown-linux-gnu.tgz && \
    tar -xvzf cargo-binstall.tgz && \
    chmod +x cargo-binstall && \
    rm cargo-binstall.tgz

RUN rustup component add rust-analyzer rustfmt rust-src clippy && \
    cargo binstall -y cargo-watch && \
    cargo binstall -y cargo-make && \
    cargo binstall -y wasm-pack

RUN apk add nodejs npm && \
    npm install -g yarn

WORKDIR /root