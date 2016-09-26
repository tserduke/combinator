module Main (main) where

import Test.Hspec
import TestCommon

import Combinator.Subset hiding (N, K)
import Data.Hot

import Data.List (genericLength)
import Data.Word (Word8)
import GHC.TypeLits (KnownNat)



main :: IO ()
main = undefined


prop_length :: (KnownNat k) => N k -> Bool
prop_length x@(N n) = subsetCount (getK x) n ==
    genericLength (subsets n :: [Hot k Word8])
