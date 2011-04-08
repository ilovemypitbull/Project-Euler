import math

def isPrime(number):
	greatestPotFactor = math.sqrt(number)
	x = 2
	while x <= greatestPotFactor:
		if number % x == 0:
			return False
		else:
			x += 1
	return True
	
def greatestPrimeFactor(number):
	greatestPotFactor = math.sqrt(number)
	x = 2
	greatestPrimeFactor = 0
	while x < greatestPotFactor:
		if isPrime(x) == True and number % x == 0:
			greatestPrimeFactor = x
		x += 1
	return greatestPrimeFactor	

print greatestPrimeFactor(600851475143)