# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
import std/[math, sequtils]

echo toSeq(1..20).foldr(lcm(a,b))