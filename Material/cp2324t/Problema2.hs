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
aux p [] l = l
aux p (h:t) (x:xs) = if p x then h : aux p t xs else x : aux p (h:t) xs

outPredicateList :: (a -> Bool) -> ([a], [a]) -> Either [a] (a, ([a], [a]))
outPredicateList p ([], l) = i1 l
outPredicateList p (y:ys, x:xs) =
    if p x then i2 (y, (ys, xs)) else i2 (x, (y:ys, xs))

cataPredicateList p g = g . recList (cataPredicateList p g) . outPredicateList p

reverseByPredicate :: (a -> Bool) -> [a] -> [a]
reverseByPredicate p = cataPredicateList p gene . split (backwardsPredicate p) id
    where
        gene = either id cons