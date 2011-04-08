def isPalindrome(number):
	print "Checking:", number
	if number < 10:
		return True
	else:
		while number > 10:
			number = str(number)
			print "Checking to see if", number[:1], "equals", number[-1:]
			if number[:1] == number[-1:]:
				number = number[1:-1]
				if number != "":
					number = int(number)
				else:
					return True
			else:
				return False


largestPalindrome = 1

for x in range (100, 999):
	for y in range (100, 999):
		z = x * y
		print z
		if isPalindrome(z) == True and z > largestPalindrome:
			largestPalindrome = z
	
	

print largestPalindrome	
	
				