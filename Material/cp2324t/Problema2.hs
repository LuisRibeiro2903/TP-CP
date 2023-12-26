import Cp
import List hiding (fac)
import Nat hiding (aux)
import LTree
import FTree
import Probability
import Data.List hiding (find)
import Svg hiding (for)
import Control.Monad
import Control.Applicative hiding ((<|>))
import System.Process
import Data.Char
import Control.Concurrent


isVowel :: Char -> Bool
isVowel = (`elem` "aáàãâeéèêiíìîoóòõôuúùûAÁÀÃÂEÉÈÊIÍÌÎOÓÒÕÔUÚÙÛ")

reverseVowels :: String -> String
reverseVowels = reverseByPredicate isVowel


backwardsPredicate :: (a -> Bool) -> [a] -> [a]
backwardsPredicate p = reverse . filter p

aux :: (a -> Bool) -> [a] -> [a] -> [a]
aux p l [] = l
aux p (h:t) (x:xs) = if p x then h : aux p t xs else x : aux p (h:t) xs

trocaVogais :: String -> String
trocaVogais [] = []
trocaVogais [a] = [a]
trocaVogais (head:tail)
    | isVowel head && isVowel lastt = lastt : trocaVogais mid ++ [head]
    | isVowel head && not(isVowel lastt) = trocaVogais (head:mid) ++ [lastt]
    | not(isVowel head) && isVowel lastt = head : trocaVogais (mid ++ [lastt])
    | otherwise = head : trocaVogais mid ++ [lastt]
    where 
        mid = init tail
        lastt = last tail

reverseByPredicate :: (a -> Bool) -> [a] -> [a]
reverseByPredicate p l = aux p (backwardsPredicate p l) l