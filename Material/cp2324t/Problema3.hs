import Cp
import List hiding (fac)
import Nat hiding (aux)
import LTree
import FTree
import Probability
import Data.List hiding (find)
import Control.Monad
import Control.Applicative hiding ((<|>))
import System.Process
import Data.Char
import Control.Concurrent


lin 0 = 3
lin n = 2 + lin (n - 1)

bnm 0 = 1
bnm n = lin (n - 1) + bnm (n - 1)

ns 0 = 0
ns n = bnm (n - 1) + ns (n - 1)

ns' = p1 . for loop init where
    loop (ns, (bnm, lin)) = (bnm + ns, (lin + bnm, 2 + lin))
    init = (0,(1,3))


exp' x n = let (e, b, c) = aux x n
    in e where
        aux x 0 = (1, 2, x)
        aux x n =
            let (e, s, h) = aux x (n - 1)
                in (e + h, s + 1, (x / s) * h)


e x = p1 . for (loop x) (init x) where
    loop x (e, (h, s)) = (h + e, (x/s * h, 1 + s))
    init x = (1, (x, 2))



snh x = wrapper . worker where
        worker = for (loop x) (start x)
        wrapper (a, _, _, _) = a

loop x (snh', h, f, g) = (snh' + h, h * (x **2 / f), f + g, g + 8)

start x = (x, x**3 / 6, 20, 22)

