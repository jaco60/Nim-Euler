# Find the largest palindrome made from the product of two 3-digit numbers.
import sequtils

proc reversed(str: string): string =
  result = ""
  for i in countdown(str.len - 1, 0):
    result &= str[i]

proc isPalin(str: string): bool = 
  return str == str.reversed

var products: seq[int] = @[]
for x in 100..999:
  for y in x..999:
    let prod = x * y
    if isPalin($prod):
      products.add(prod)

echo products.max