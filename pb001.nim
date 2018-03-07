# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

import sequtils
from math import sum

echo toSeq(1..<1000).filterIt(it mod 3 == 0 or it mod 5 == 0).sum