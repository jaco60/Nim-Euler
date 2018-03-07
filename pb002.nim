# En considérant les termes pairs de la séquence de Fibonacci dont la valeur n’excède pas 4 millions,
# calculez leur somme.

iterator fibo: int =
  var (a, b) = (0, 1)
  while true:
    yield a
    (a, b) = (b, a + b) 

var sum = 0
for f in fibo():
  if f >= 4_000_000: break
  if f mod 2 == 0: sum += f
echo $sum
