# Artifacts

This repository contains files that can be used in pipelines, or anywhere needed.




## Foundry

To build the `forge` and `cast` binaries, we use [cross](https://github.com/rust-embedded/cross).

First, run:
```
$ cargo install cross
```

Then:
```
$ git clone https://github.com/gakonst/foundry
$ cd foundry
$ cross build --release --locked --target x86_64-unknown-linux-musl
$ tar -czvf forge.tar.gz -C target/x86_64-unknown-linux-musl/release forge
$ tar -czvf cast.tar.gz -C target/x86_64-unknown-linux-musl/release cast
$ tar -czvf anvil.tar.gz -C target/x86_64-unknown-linux-musl/release anvil
```

The resultant binaries will be in `target/x86_64-unknown-linux-musl/release`.

Copy those to the main directory of this repository.