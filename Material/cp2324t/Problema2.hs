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


aux :: (a -> Bool) -> ([a],[a]) -> [a]
aux p = Cp.cond (p (head . p1)) (cons . split (head . p2) (aux p . (tail >< tail))) (aux p . (tail >< id))


reverseByPredicate :: (a -> Bool) -> [a] -> [a]
reverseByPredicate p = aux p . split id (backwardsPredicate p)