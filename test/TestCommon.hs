module TestCommon where

import Test.QuickCheck

import Data.Proxy (Proxy (..))
import GHC.TypeLits (KnownNat, Nat, natVal)


newtype N (k :: Nat) = N { unN :: Int }
    deriving (Show)

instance (KnownNat k) => Arbitrary (N k) where
    arbitrary = N <$> choose (k, 50) where
        k = fromInteger $ natVal (Proxy :: Proxy k)
