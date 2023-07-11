FROM rust:1.70-bullseye

WORKDIR /usr/local/cargo/bin
RUN curl -L --output cargo-binstall.tgz https://github.com/cargo-bins/cargo-binstall/releases/download/v0.22.0/cargo-binstall-x86_64-unknown-linux-gnu.tgz && \
    tar -xvzf cargo-binstall.tgz && \
    chmod +x cargo-binstall && \
    rm cargo-binstall.tgz

RUN rustup component add rust-analyzer rustfmt rust-src clippy && \
    cargo binstall -y cargo-watch && \
    cargo binstall -y cargo-make && \
    cargo binstall -y wasm-pack

WORKDIR /usr/bin/
RUN curl -L --output node.tar.xz https://nodejs.org/dist/v18.16.1/node-v18.16.1-linux-x64.tar.xz && \
    tar -xf node.tar.xz && \
    mv node-v18.16.1-linux-x64/bin/node . && \
    mv node-v18.16.1-linux-x64/lib/node_modules/npm/bin . && \
    chmod +x node && \
    chmod +x npm && \
    rm -r node-v18.16.1-linux-x64 && \
    rm node.tar.xz

RUN npm install -g yarn

WORKDIR /root