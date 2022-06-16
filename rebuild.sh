#!/bin/bash

cargo install cross

git clone https://github.com/gakonst/foundry
cd foundry
rustup target add x86_64-unknown-linux-musl
cross build --release --locked --target x86_64-unknown-linux-musl

