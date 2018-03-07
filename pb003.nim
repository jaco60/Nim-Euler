# What is the largest prime factor of the number 600851475143
import lib/prime, std/[math, sequtils]

proc factors(nb: int64): seq[int64] =
  result = @[]
  let root = int(sqrt(float64(nb)))
  for d in 2..<root:
    if nb mod d == 0: 
      result.add(d)
      result.add(nb div d)
  if nb == root * root:
    result = result[0..^2]
  

when isMainModule:
  echo factors(600851475143'i64).filterIt(isPrime(it)).max