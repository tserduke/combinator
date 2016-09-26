module Combinator.Subset where

import Data.Hot


subsetCount :: Int -> Int -> Integer
subsetCount = undefined


subsetFromNum :: (Integral a) => Int -> Int -> Integer -> [a]
subsetFromNum = undefined

subsetToNum :: (Foldable t, Integral a) => Int -> Int -> t a -> Integer
subsetToNum = undefined


{-# INLINE subsets #-}
subsets :: (Num a) => Int -> [Hot n a]
subsets = subsetsFilter (const True)

{-# INLINABLE subsetsFilter #-}
subsetsFilter :: (Num a) => (a -> Bool) -> Int -> [Hot n a]
subsetsFilter = undefined


--subsetsSelect :: (Num a) => (a -> b) -> Int -> [Hot n b]
--subsetsSelectFilter :: (Num a) => (a -> b) -> (a -> Bool) -> Int -> [Hot n b]
