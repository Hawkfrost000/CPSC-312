-- CPSC 312 - 2018 - Our First Haskell Program
module First where

-- To run it, do:
-- ghci
-- :load First
square :: Double -> Double      -- type declaration
square x = x*x

fourth x = square (square x)

-- try:
-- :type fourth

double x = x*2

foo x y = 1000*x+y

-- try:
-- foo 9 3
-- foo(9,3)
-- (foo 9) 3
-- :type foo
-- :type (9,3)
-- :type foo 9



-- 100 / 7
-- div 100 7
-- div 100.0 7
-- 100 `div` 7
-- (/) 100 7
-- :type div 100 7
-- :type 1.5
-- (div 100 7) + 1.5
-- fromIntegral (div 100 7) + 1.5




-- fib n  returns the nth fibonacci number
fib :: Int -> Int
fib 0 = 1
fib 1 = 1
fib n = fib (n-1) + fib (n-2)
-- try:
-- fib 30

-- fib1 n  returns the nth fibonacci number
fib1 0 = 1
fib1 n = fib2 (n-1) 1 1 

-- fib2 n f0 f1 where f0 and f1 are subsequent fibonacci number returns the
--  nth fibonacci number after f1
fib2 0 f0 f1 = f1
fib2 n f0 f1 = fib2 (n-1) f1 (f0+f1)




-- length [3,5,2,9]
-- :type length
-- product [3,5,2,9]
-- :type product

factorial n = product [1..n]

average ns = sum ns `div` length ns

-- let myave ns = sum ns / length ns

-- myave ns = sum ns / fromIntegral (length ns)


plus1 x = x+1
plus x y= x+y
pls(x,y) = x+y

ff f x = f (f x)

-- Try:
-- ff plus1 5
-- ff (plus 6) 1
-- ff (+ 6) 1
-- ff (* 10) 2

fourthnew = ff square

--- Infix operators
x ++++ y = 10*x+y

-- 10 ++++ 3
-- (++++) 10 3
-- (10 ++++) 3
-- ((++++) 10) 3
-- (++++ 10) 3
-- ff (++++ 10) 4
-- ff (10 ++++) 4
-- ff ((++++) 10) 4
-- (* 10) `ff` 2

qsort [] = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
     where
         smaller = [e | e <- xs, e <= x]
         larger = [e | e <- xs, e > x]

-- Try:
-- qsort [5,4,8,1,9,4,7]
