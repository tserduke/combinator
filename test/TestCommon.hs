module TestCommon where

import Test.QuickCheck

import GHC.TypeLits (KnownNat, Nat, natVal)


newtype N (k :: Nat) = N { getN :: Int }
    deriving (Show)

getK :: (KnownNat k) => N k -> Int
getK x = fromInteger $ natVal x


instance (KnownNat k) => Arbitrary (N k) where
    arbitrary = N <$> choose (k, k * 10) where
        k = getK (undefined :: N k)
