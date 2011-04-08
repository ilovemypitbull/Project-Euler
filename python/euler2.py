fibSum = 2

x = 1
y = 2

while y <= 4000000:
	newX = y
	y = x + y
	x = newX
	print "y", y
	if y % 2 == 0 and y <= 4000000:
		fibSum += y

print fibSum