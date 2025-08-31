{-# LANGUAGE DeriveTraversable #-}
module Control.Concurrent.Channel.Try (TryRead (..), TryWrite (..)) where

-- | Previous flavors of this library returned @Maybe (Maybe a)@,
--   which was a bit of a pain to destructure.
data TryRead a = Ready a | Empty | ReadClosed
    deriving stock (Show, Eq, Foldable, Functor, Traversable)

data TryWrite = Wrote | Full | WriteClosed
