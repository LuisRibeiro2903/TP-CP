{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Replace case with fromMaybe" #-}
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

type Delay = Integer

data Stop = S0 | S1 | S2 | S3 | S4 | S5 deriving (Show,Eq,Ord,Enum)

type Segment = (Stop, Stop)

dados :: [(Segment, Delay)]
dados = [((S0,S1),0),((S0,S1),2),((S0,S1),0),((S0,S1),3),((S0,S1),3),
         ((S1,S2),0),((S1,S2),2),((S1,S2),1),((S1,S2),1),((S1,S2),4),
         ((S2,S3),2),((S2,S3),2),((S2,S3),4),((S2,S3),0),((S2,S3),5),
         ((S3,S4),2),((S3,S4),3),((S3,S4),5),((S3,S4),2),((S3,S4),0),
         ((S4,S5),0),((S4,S5),5),((S4,S5),0),((S4,S5),7),((S4,S5),-1)]


{-
-}
db :: [(Segment, Dist Delay)]
db = f dados where
    f = map constroiDb . agrupar
    agrupar = groupBy(\x y -> fst x == fst y) . sort
    constroiDb = split (fst . head) (mkdist . map snd)




calcularDistribuicaoProbabilidades :: Eq a => [a] -> [(a, ProbRep)]
calcularDistribuicaoProbabilidades lista =
  let totalElementos = fromIntegral $ length lista
      contagem = map (\x -> (head x, fromIntegral (length x) / totalElementos)) $ group lista
  in contagem

mkdist :: Eq a => [a] -> Dist a
mkdist = mkD . calcularDistribuicaoProbabilidades



delay :: Segment -> Dist Delay
delay seg =
    case mkf db seg of
        Nothing -> instantaneous
        Just distDelay -> distDelay




caminho :: Stop -> Stop -> [Segment]
caminho start stop = zip stops (tail stops)
  where
    stops = enumFromTo start stop


distAccum :: Dist Delay -> Dist Delay -> Dist Delay
distAccum d1 d2 = do
    x <- d1
    y <- d2
    return (x+y)

pdelay :: Stop -> Stop -> Dist Delay 
pdelay s1 s2 = foldr1 distAccum $ map delay $ caminho s1 s2

--dados = [((S0,S1),0),((S0,S1),2),((S0,S1),0),((S0,S1),3),((S0,S1),3),((S1,S2),0),((S1,S2),2),((S1,S2),1),((S1,S2),1),((S1,S2),4),((S2,S3),2),((S2,S3),2),((S2,S3),4),((S2,S3),0),((S2,S3),5),((S3,S4),2),((S3,S4),3),((S3,S4),5),((S3,S4),2),((S3,S4),0),((S4,S5),0),((S4,S5),5),((S4,S5),0),((S4,S5),7),((S4,S5),-1)]

mkf :: Eq a => [(a, b)] -> a -> Maybe b
mkf = flip Prelude.lookup

instantaneous :: Dist Delay
instantaneous = D [ (0,1) ]