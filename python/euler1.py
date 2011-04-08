multipleSum = 0
x = 1
while x < 1000:
	if x % 3 == 0 or x % 5 == 0:
		multipleSum += x
	x += 1
print multipleSum	
	