{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveTraversable #-}
module Control.Concurrent.Channel.Try (TryRead (..)) where

-- | Previous flavors of this library returned @Maybe (Maybe a)@,
--   which was a bit of a pain to destructure.
data TryRead a = Ready a | Empty | Closed
    deriving stock (Show, Eq, Foldable, Functor, Traversable)
