module main
import os

struct Fetch {
	mem string
	processor string
	arch int
	os string
	pkgs string
}

fn main() {
    processor := os.execute("lscpu | grep 'Model name'")
	println('CPU: $processor')
	mem := os.execute("")
}