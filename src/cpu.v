module processor
import os

pub fn cpu() {
	os.execute("lscpu")
}