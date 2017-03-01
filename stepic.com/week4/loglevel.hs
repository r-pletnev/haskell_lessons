module Demo where

data LogLevel = Error | Warning | Info deriving (Eq, Show)

cmp :: LogLevel -> LogLevel -> Ordering
cmp Error _ = GT
cmp _ Error = LT
cmp _ Info = GT
cmp Info _ = LT
cmp Error Error = EQ
cmp Info Info = EQ
cmp Warning Warning = EQ
