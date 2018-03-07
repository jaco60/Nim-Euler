# Find the largest palindrome made from the product of two 3-digit numbers.
import sequtils

proc isPalin(str: string): bool =
  var (deb, fin) = (0, str.len - 1)
  while deb < fin:
    if str[deb] != str[fin]:
      return false
    deb += 1
    fin -= 1
  return true

var prods: seq[int] = @[]
for x in 100..999:
  for y in x..999:
    let prod = x * y
    if isPalin($prod):
      prods.add(prod)

echo prods.max