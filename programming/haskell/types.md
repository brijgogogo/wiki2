# Types

Expressions have types:
  expr :: type

In GHCi, use :t or :type to see expression type

>:t False
False :: Bool
>:t 'A'
'A' :: Char
>:t 21
21 :: Num p => p
>:t 3.5
3.5 :: Fractional p => p
>:t +d 21
21 :: Integer
>:t ++d 3.5
3.5 :: Double
