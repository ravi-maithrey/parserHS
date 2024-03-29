module Main where

-- importing the parser library except spaces
import Text.ParserCombinators.Parsec hiding (spaces)
import System.Environment

-- defining a paprser which recognizes the symbols
symbol :: Parser Char -- takes the type Parser Char
symbol = oneOf "!#$%&|*+-/:<=>?@^_~" -- oneOf is a parser lib func to check if there is one of the defined chars

-- defining a func to call parser and handle errors
readExpr :: String -> String -- func signature
-- func definition
readExpr input = case parse symbol "lisp" input of
  Left err -> "No match: " ++ show err
  Right err -> "Found value"
main :: IO ()
main = do
  putStrLn "Hello, Haskell!"

