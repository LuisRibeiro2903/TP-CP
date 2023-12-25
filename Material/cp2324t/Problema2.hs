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

asd :: String -> String
asd [] = []
asd (h:t) = if isVowel h then [] else h : asd t



backwardsPredicate :: (a -> Bool) -> [a] -> [a]
backwardsPredicate p = reverse . filter p

reverseByPredicate :: (a -> Bool) -> [a] -> [a]
reverseByPredicate p = undefined