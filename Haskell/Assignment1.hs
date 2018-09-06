-- Gareth Antle
-- 35299156

module Assignment1 where

--Question 1
--a)

harmonic :: Double -> Double

harmonic 1 = 1
harmonic n = harmonic(n-1) + (1 / n)

--Trace
--Prelude> :load Assignment1
--Ok, one module loaded.
--Prelude Assignment1> harmonic 1
--1.0
--Prelude Assignment1> harmonic 2
--1.5
--Prelude Assignment1> harmonic 3
--1.8333333333333333
--Prelude Assignment1> harmonic 4
--2.083333333333333
--Prelude Assignment1> harmonic 10
--2.9289682539682538
--Prelude Assignment1> harmonic 10000
--9.787606036044348
--Prelude Assignment1>

--b)

--Prelude Assignment1> harmonic (length [1,2,3,4])

--interactive>:64:11: error:
--    * Couldn't match expected type `Double' with actual type `Int'
--    * In the first argument of `harmonic', namely
--        `(length [1, 2, 3, 4])'
--      In the expression: harmonic (length [1, 2, 3, 4])
--      In an equation for `it': it = harmonic (length [1, 2, 3, ....])
--Prelude Assignment1>

--My program doesnt work with the query harmonic (length [1,2,3,4])
--because length[ 1,2,3,4] is an Int and i have specificed harmonic to
--operate on type Double. As Haskell is a strongly typed language
--the two types cannot be resolved.

--harmonic2 :: Fractional a => a -> a

--harmonic2 1 = 1
--harmonic2 n = harmonic(n-1) + (1 / n)

sumHarmonic :: Fractional a => a -> a
sumHarmonic 1 = 1
sumHarmonic n = sumHarmonic (n - 1) + (1 / n)
