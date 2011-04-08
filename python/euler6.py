def sumOfSquares(number):
	x = 1
	sumOfSquares = 0
	while x <= number:
		sumOfSquares += pow(x, 2)
		x += 1
	return sumOfSquares	

def squareOfSums(number):
	x = 1
	sums = 0
	while x <= number:
		sums += x
		x += 1
	return pow(sums, 2)	

print (squareOfSums(100) - sumOfSquares(100))
