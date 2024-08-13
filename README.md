# MeTTa fundamentals workshop examples

This repository contains code to be demonstrated during OpenCog Hyperon
workshop on a first day of AGI-24 conference.

More detailed MeTTa programming language tutorial can be found at
https://metta-lang.dev/docs/learn/learn.html

MeTTa interpreter source code:
https://github.com/trueagi-io/hyperon-experimental

# How to run

## Using Docker

On your machine execute the following code to start Docker container:
```
git clone https://github.com/vsbogd/metta-workshop-agi-24.git
cd metta-workshop-agi-24
docker run --rm -v .:/home/examples -w /home/examples -ti trueagi/hyperon:v0.2.0
```

Start REPL inside container:
```
metta-repl
```

Run example inside container:
```
metta-repl <file.metta>
```

## Using Python PyPi package

No REPL is available. Python 3.7 or later is required.

On your machine install hyperon PyPi package:
```
python3 -m pip install hyperon==0.2.0
```

Clone examples:
```
git clone https://github.com/vsbogd/metta-workshop-agi-24.git
cd metta-workshop-agi-24
```

Run examples:
```
metta-py <file.metta>
```

## Build from source

Stable Rust toolchain is required. Clone hyperon-experimental and install REPL:
```
git clone https://github.com/trueagi-io/hyperon-experimental
cd hyperon-experimental
cargo install --path ./repl metta-repl
```

Clone examples:
```
git clone https://github.com/vsbogd/metta-workshop-agi-24.git
cd metta-workshop-agi-24
```

Start REPL:
```
metta-repl
```

Run examples:
```
metta-repl <file.metta>
```

Full build instructions
https://github.com/trueagi-io/hyperon-experimental#manual-installation
