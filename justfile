set shell := ["bash", "-cu"]

default:
  @just --summary

build:
  cargo build --all

test:
  cargo test --all

lint:
  cargo clippy --all-targets -- -D warnings

fmt-check:
  cargo fmt -- --check

fmt:
  cargo fmt

check:
  just fmt-check
  just lint
  just test

run:
  cargo run --release -- {{args}}

docker-build:
  docker build -t {{project-name}} .

docker-run:
  docker run --rm -it {{project-name}} 