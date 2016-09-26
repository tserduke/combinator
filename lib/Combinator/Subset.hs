module Combinator.Subset where

import Data.Hot


type N = Int
type K = Int


subsetCount :: K -> N -> Integer
subsetCount = undefined


subsetFromNum :: (Integral a) => K -> N -> Integer -> [a]
subsetFromNum = undefined

subsetToNum :: (Foldable t, Integral a) => K -> N -> t a -> Integer
subsetToNum = undefined


{-# INLINE subsets #-}
subsets :: (Num a) => N -> [Hot k a]
subsets = subsetsFilter (const True)

{-# INLINABLE subsetsFilter #-}
subsetsFilter :: (Num a) => (a -> Bool) -> N -> [Hot k a]
subsetsFilter = undefined


--subsetsSelect :: (Num a) => (a -> b) -> N -> [Hot k b]
--subsetsSelectFilter :: (Num a) => (a -> b) -> (a -> Bool) -> N -> [Hot k b]
