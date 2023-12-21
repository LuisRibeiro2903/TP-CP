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


lasts :: Eq a => [[a]] ->[a]
lasts = cataList (either nil (cons . (last >< id)))

myinits :: Eq a => [[a]] -> [[a]]
myinits = cataList (either nil (cons . (init >< id)))

initnlast :: Eq a => [[a]] -> ([[a]], [a])
initnlast = split myinits lasts

deepreverse :: Eq a => [[a]] -> [[a]]
deepreverse = reverse . cataList (either nil (cons . (reverse >< id)))

matrot :: Eq a => [[a]] -> [a]
matrot = uncurry (++) . split (uncurry (++) . (id >< p2)) (matrot . deepreverse . p1 . p2) . split head (initnlast . tail)
