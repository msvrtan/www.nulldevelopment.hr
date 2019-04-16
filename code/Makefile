SHELL := /bin/bash # Use bash syntax

.PHONY=*


build:
	cd www_nulldevelopment_hr / && time -p cargo build

check:
	cd www_nulldevelopment_hr / && time -p cargo check

debug:
	cd www_nulldevelopment_hr / && RUST_BACKTRACE=1 time -p cargo run

format:
	cd www_nulldevelopment_hr / && time -p cargo fmt

release:
	cd www_nulldevelopment_hr / && time -p cargo build --release

run:
	cd www_nulldevelopment_hr / && time -p cargo run

test:
	cd www_nulldevelopment_hr / && time -p cargo test --tests

watch:
	cd www_nulldevelopment_hr / && watchexec --exts rs,html --restart "cargo run"

wip:
	git add . && git commit -am 'wip' && make build
