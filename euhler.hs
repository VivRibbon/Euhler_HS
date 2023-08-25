multiples = sum [x | x <- [1 .. 999], x `mod` 3 == 0 || x `mod` 5 == 0]

-- Even numbers from the Fibonacci sequence
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

-- Largest Prime Factor
-- First, find all the prime factors of the number and make a list, then find the largest member.
factors n = [x | x <- [1 .. n], n `mod` x == 0]

primeFactors n = factors n == [1, n]

maxFactor n = max [x | x <- [1 .. n], primeFactors n == True]
