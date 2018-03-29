forLoop:: Integer -> Integer -> Integer

forLoop end i 

	| 2^i <= end && end <= 2^(i+1) && abs(2^i - end) < abs(2^(i+1) - end) = i
	| 2^i <= end && end <= 2^(i+1) && abs(2^i - end) > abs(2^(i+1) - end) = i + 1
	| 2^i <= end && end <= 2^(i+1) && abs(2^i - end) == abs(2^(i+1) - end) = i + 1
	| otherwise = forLoop end (i+1)

cp:: Int -> Int

cp n

	| n <= 1 = 1
	| otherwise = 2^(forLoop n 1)