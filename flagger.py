#!/usr/bin/env python3

with open("flag") as f:
    flag = f.read().strip()

while True:
    n = input()
    if n == "secret":
        break
    print(n)

print(f"Your flag is: {flag}")
