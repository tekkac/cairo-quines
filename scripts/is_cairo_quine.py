#!/usr/bin/env python3

import sys
import subprocess
import re

def main():
    if len(sys.argv) != 2:
        print("Usage: python is_cairo_quine.py <filename>")
        sys.exit(1)

    filename = sys.argv[1]
    assert filename.lower().endswith(".cairo")
    test_filter = filename.split("/")[-1].split(".")[0]

    try:
        output = subprocess.check_output(f"scarb test -q -f {test_filter}", shell=True)
    except subprocess.CalledProcessError as e:
        print("scarb test failed")
        exit(1)

    if len(output) == 0:
        print("No output from scarb test")
        exit(0)
    
    matches = list(re.finditer(b"\n", output))
    start = matches[1].end()
    end = matches[-4].start()

    cairo_output = output[start:end]

    input_data = open(filename, "rb").read()
    total_chars = len(input_data)

    #print(input_data.hex())
    #print(cairo_output.hex())
    for (i, (c_in,c_out)) in enumerate(zip(list(input_data), list(cairo_output))):
        if c_in != c_out:
            print(f"First difference at char {i}/{total_chars}: {c_in} != {c_out}")
            exit(0)
    
    print(f"It's a quine of {total_chars} chars!")



if __name__ == "__main__":
    main()
