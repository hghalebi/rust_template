FROM rust:1.78-slim

WORKDIR /app
COPY Cargo.toml Cargo.lock ./
RUN mkdir src && echo 'fn main() {}' > src/main.rs && \
    cargo fetch && \
    cargo build --release && \
    rm -rf src
COPY . .
RUN cargo build --release

CMD ["./target/release/{{project-name}}"] 