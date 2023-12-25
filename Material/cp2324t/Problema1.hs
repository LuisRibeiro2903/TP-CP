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

matrot :: Eq a => [[a]] -> [a]
matrot [] = []
matrot (h:t) = h ++ lasts t ++ matrot (deepreverse (myinits t))
    where 
        lasts = cataList (either nil (cons . (last >< id)))
        myinits = cataList (either nil (cons . (init >< id)))
        deepreverse = reverse . cataList (either nil (cons . (reverse >< id)))