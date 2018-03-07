import math, sequtils

# sub-optimal, but i don't care
proc isPrime*(nb: int64): bool =
  if nb == 2: return true
  if nb mod 2 == 0: return false
  let root = int(sqrt(float64(nb)))
  for d in countup(3, root, 2):
    if nb mod d == 0: return false
  return true

when isMainModule:
  echo filterIt(toSeq(2..100), isPrime(it))