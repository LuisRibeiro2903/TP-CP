\documentclass[11pt, a4paper, fleqn]{article}
\usepackage{cp2324t}
\makeindex

%================= lhs2tex=====================================================%
%include polycode.fmt
%format (div (x)(y)) = x "\div " y
%format succ = "\succ "
%format ==> = "\Longrightarrow "
%format map = "\map "
%format length = "\length "
%format fst = "\p1"
%format p1  = "\p1"
%format snd = "\p2"
%format p2  = "\p2"
%format Left = "i_1"
%format Right = "i_2"
%format i1 = "i_1"
%format i2 = "i_2"
%format >< = "\times"
%format >|<  = "\bowtie "
%format |-> = "\mapsto"
%format . = "\comp "
%format .=?=. = "\mathbin{\stackrel{\mathrm{?}}{=}}"
%format (kcomp (f)(g)) = f "\kcomp " g
%format -|- = "+"
%format conc = "\mathsf{conc}"
%format summation = "{\sum}"
%format (either (a) (b)) = "\alt{" a "}{" b "}"
%format (frac (a) (b)) = "\frac{" a "}{" b "}"
%format (uncurry f) = "\uncurry{" f "}"
%format (const (f)) = "\underline{" f "}"
%format TLTree = "\mathsf{TLTree}"
%format (lcbr (x)(y)) = "\begin{lcbr}" x "\\" y "\end{lcbr}"
%format (lcbr3 (x)(y)(z)) = "\begin{lcbr}" x "\\" y "\\" z "\end{lcbr}"
%format (split (x) (y)) = "\conj{" x "}{" y "}"
%format (for (f) (i)) = "\for{" f "}\ {" i "}"
%format B_tree = "\mathsf{B}\mbox{-}\mathsf{tree} "
%format <$> = "\mathbin{\mathopen{\langle}\$\mathclose{\rangle}}"
%format Either a b = a "+" b
%format fmap = "\mathsf{fmap}"
%format NA   = "\textsc{na}"
%format NB   = "\textbf{NB}"
%format inT = "\mathsf{in}"
%format outT = "\mathsf{out}"
%format outLTree = "\mathsf{out}"
%format inLTree = "\mathsf{in}"
%format inFTree = "\mathsf{in}"
%format outFTree = "\mathsf{out}"
%format Null = "1"
%format (Prod (a) (b)) = a >< b
%format fF = "\fun F "
%format l2 = "l_2 "
%format Dist = "\fun{Dist}"
%format IO = "\fun{IO}"
%format LTree = "{\LTree}"
%format FTree = "{\FTree}"
%format inNat = "\mathsf{in}"
%format outNat = "\mathsf{out}"
%format inList = "\mathsf{in}"
%format outList = "\mathsf{out}"
%format (cata (f)) = "\llparenthesis\, " f "\,\rrparenthesis"
%format (cataNat (g)) = "\cataNat{" g "}"
%format (cataList (g)) = "\llparenthesis\, " g "\,\rrparenthesis"
%format (cataLTree (x)) = "\llparenthesis\, " x "\,\rrparenthesis"
%format (cataFTree (x)) = "\llparenthesis\, " x "\,\rrparenthesis"
%format (cataRose (x)) = "\llparenthesis\, " x "\,\rrparenthesis_\textit{\tiny R}"
%format (ana (g)) = "\ana{" g "}"
%format (anaList (g)) = "\anaList{" g "}"
%format (anaLTree (g)) = "\lanabracket\," g "\,\ranabracket"
%format (anaRose (g)) = "\lanabracket\," g "\,\ranabracket_\textit{\tiny R}"
%format (hylo (g) (h)) = "\llbracket\, " g ",\," h "\,\rrbracket"
%format (hyloRose (g) (h)) = "\llbracket\, " g ",\," h "\,\rrbracket_\textit{\tiny R}"
%format Nat0 = "\N_0"
%format Rational = "\Q "
%format toRational = " to_\Q "
%format fromRational = " from_\Q "
%format muB = "\mu "
%format (frac (n)(m)) = "\frac{" n "}{" m "}"
%format (fac (n)) = "{" n "!}"
%format (underbrace (t) (p)) = "\underbrace{" t "}_{" p "}"
%format matrix = "matrix"
%%format (bin (n) (k)) = "\Big(\vcenter{\xymatrix@R=1pt{" n "\\" k "}}\Big)"
%format `ominus` = "\mathbin{\ominus}"
%format % = "\mathbin{/}"
%format <-> = "{\,\leftrightarrow\,}"
%format <|> = "{\,\updownarrow\,}"
%format `minusNat`= "\mathbin{-}"
%format ==> = "\Rightarrow"
%format .==>. = "\Rightarrow"
%format .<==>. = "\Leftrightarrow"
%format .==. = "\equiv"
%format .<=. = "\leq"
%format .&&&. = "\wedge"
%format cdots = "\cdots "
%format pi = "\pi "
%format (curry (f)) = "\overline{" f "}"
%format delta = "\Delta "
%format (plus (f)(g)) = "{" f "}\plus{" g "}"
%format ++ = "\mathbin{+\!\!+}"
%format Integer  = "\mathbb{Z}"
%format (Cp.cond (p) (f) (g)) = "\mcond{" p "}{" f "}{" g "}"
%format (square (x)) = x "^2"

%format (cataTree (f) (g)) = "\llparenthesis\, " f "\:" g "\,\rrparenthesis_{\textit{\tiny T}}"
%format (cataForest (f) (g)) = "\llparenthesis\, " f "\:" g "\,\rrparenthesis_{\textit{\tiny F}}"
%format (anaTree (f) (g)) = "\lanabracket\;\!" f "\:" g "\:\!\ranabracket_{\textit{\tiny T}}"
%format (anaForest (f) (g)) = "\lanabracket\;\!" f "\:" g "\:\!\ranabracket_{\textit{\tiny F}}"
%format (hyloTree (ft) (ff) (gt) (gf)) = "\llbracket\, " ft "\:" ff ",\," gt "\:" gf "\,\rrbracket_{\textit{\tiny T}}"
%format (hyloForest (ft) (ff) (gt) (gf)) = "\llbracket\, " ft "\:" ff ",\," gt "\:" gf "\,\rrbracket_{\textit{\tiny F}}"
%format inTree = "\mathsf{in}_{Tree}"
%format inForest = "\mathsf{in}_{Forest}"
%format outTree = "\mathsf{out}_{Tree}"
%format outForest = "\mathsf{out}_{Forest}"

%format (cata' (f) (g)) = "\llparenthesis\, " f "\:" g "\,\rrparenthesis"
%format (ana' (f) (g)) = "\lanabracket\;\!" f "\:" g "\:\!\ranabracket"
%format (hylo' (ft) (ff) (gt) (gf)) = "\llbracket\, " ft "\:" ff ",\," gt "\:" gf "\,\rrbracket"
%------------------------------------------------------------------------------%
\DeclareMathOperator{\snh}{snh}
\DeclareMathOperator{\h}{h}
\DeclareMathOperator{\f}{f}
\DeclareMathOperator{\g}{g}

%====== DEFINIR GRUPO E ELEMENTOS =============================================%

\group{G15}
\studentA{100714}{Diogo Santos}
\studentB{100608}{Luís Ribeiro}
\studentC{100647}{Martim Félix}

%==============================================================================%

\begin{document}
\sffamily
\setlength{\parindent}{0em}
\emergencystretch 3em
\renewcommand{\baselinestretch}{1.25} 
\input{Cover}
\pagestyle{pagestyle}

\newgeometry{left=25mm,right=20mm,top=25mm,bottom=25mm}
\setlength{\parindent}{1em}

\section*{Preâmbulo}

\CP\ tem como objectivo principal ensinar a progra\-mação de computadores
como uma disciplina científica. Para isso parte-se de um repertório de \emph{combinadores}
que formam uma álgebra da programação % (conjunto de leis universais e seus
corolários) e usam-se esses combinadores para construir programas \emph{composicionalmente},
isto é, agregando programas já existentes.

Na sequência pedagógica dos planos de estudo dos cursos que têm
esta disciplina, opta-se pela aplicação deste método à programação
em \Haskell\ (sem prejuízo da sua aplicação a outras linguagens
funcionais). Assim, o presente trabalho prático coloca os
alunos perante problemas concretos que deverão ser implementados em
\Haskell. Há ainda um outro objectivo: o de ensinar a documentar
programas, a validá-los e a produzir textos técnico-científicos de
qualidade.

Antes de abodarem os problemas propostos no trabalho, os grupos devem ler
com atenção o anexo \ref{sec:documentacao} onde encontrarão as instruções
relativas ao sofware a instalar, etc.

Valoriza-se a escrita de \emph{pouco} código que corresponda a soluções
simples e elegantes que utilizem os combinadores de ordem superior estudados
na disciplina.

%if False
\begin{code}
{-# OPTIONS_GHC -XNPlusKPatterns #-}
{-# LANGUAGE GeneralizedNewtypeDeriving, DeriveDataTypeable, FlexibleInstances #-}
module Main where
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

main = undefined
\end{code}
%endif

\Problema

Este problema, retirado de um \emph{site} de exercícios de preparação para entrevistas de emprego, 
tem uma formulação simples:
\begin{quote}\em
Dada uma matriz de uma qualquer dimensão, listar todos os seus elementos rodados em espiral. 
Por exemplo, dadas as seguintes matrizes:

	\figura

\noindent
dever-se-á obter, respetivamente, |[1,2,3,6,9,8,7,4,5]| e |[1,2,3,4,8,12,11,10,9,5,6,7]|.
\\ $\Box$
\end{quote}

\noindent
Valorizar-se-ão as soluções \emph{pointfree} que empreguem os combinadores
estudados na disciplina, e.g. |f.g|, |split f g|, |f >< g|, |either f g|, |f+g|, bem como
catamorfismos e anamorfismos. 

Recomenda-se a escrita de \emph{pouco} código e de soluções simples
e fáceis de entender. Recomenda-se que o código venha acompanhado de uma
descrição de como funciona e foi concebido, apoiado em diagramas explicativos.
Para instruções sobre como produzir esses diagramas e exprimir raciocínios
de cálculo, ver o anexo \ref{sec:diagramas}.

\Problema

Este problema, que de novo foi retirado de um \emph{site} de exercícios de preparação para entrevistas de emprego, tem uma formulação muito simples:
\begin{quote}\em
Inverter as vogais de um \emph{string}.
\end{quote}
Esta formulação deverá ser generalizada a:
\begin{quote}\em
Inverter os elementos de uma dada lista que satisfazem um dado predicado.
\end{quote}

\noindent
Valorizam-se as soluções tal como no problema anterior e fazem-se as mesmas
recomendações.

\Problema

Sistemas como \href{https://chat.openai.com/}{chatGPT} etc baseiam-se em
algoritmos de aprendizagem automática que usam determinadas funções matemáticas,
designadas \emph{activation functions} (AF), para modelar aspectos não li\-neares
do mundo real. Uma dessas AFs é a
\href{https://www.ml-science.com/tanh-activation-function}{tangente hiperbólica},
definida como o quociente do seno e coseno
\href{https://en.wikipedia.org/wiki/Hyperbolic_functions}{hiperbólicos}, 
\begin{eqnarray}
	\tanh x = \frac{\sinh x}{\cosh x}
	\label{eq:tanh}
\end{eqnarray}
podendo estes ser definidos pelas seguintes \taylor{séries de Taylor}:
\begin{eqnarray}
\start
	\sum_{k=0}^\infty \frac{x^{2k+1}}{(2k+1)!}=\sinh x
	\label{eq:sinh}
\more
	\sum_{k=0}^\infty \frac{x^{2k}}{(2k)!}=\cosh x
	\nonumber
\end{eqnarray}

Interessa que estas funções sejam implementadas de forma muito eficiente,
desdobrando-as em ope\-rações aritméticas elementares. Isso pode ser conseguido
através da chamada \pd{programação dinâmica} que, em \cp{Cálculo de Programas},
é feita de forma \emph{correct-by-construction} derivando-se ciclos-\textbf{for} via
lei de recursividade mútua generalizada a tantas funções quanto necessário
--- ver o anexo \ref{sec:mr}. 

O objectivo desta questão é codificar como um ciclo-\textsf{for} (em Haskell) a função
\begin{eqnarray}
	snh\ x\ i = \sum_{k=0}^i \frac{x^{2k+1}}{(2k+1)!}
\end{eqnarray}
que implementa |sinh x|, uma das funções de |tanh x| (\ref{eq:tanh}), através
da soma das |i| primeiras parcelas da sua série (\ref{eq:sinh}).

Deverá ser seguida a regra prática do anexo \ref{sec:mr} e documentada a
solução proposta com todos os cálculos que se fizerem.

\Problema

Uma empresa de transportes urbanos pretende fornecer um serviço de previsão
de atrasos dos seus autocarros que esteja sempre actual, com base em \emph{feedback}
dos seus paassageiros. Para isso, desenvolveu uma \emph{app} que instala
num telemóvel um botão que indica coordenadas GPS a um serviço central, de
forma anónima, sugerindo que os passageiros o usem preferencialmente sempre
que o autocarro onde vão chega a uma paragem.

Com base nesses dados, outra funcionalidade da \emph{app} informa os utentes
do serviço sobre a probabilidade do atraso que possa haver entre duas paragens
(partida e chegada) de uma qualquer linha.

Pretende-se implementar esta segunda funcionalidade assumindo disponíveis
os dados da primeira. No que se segue, ir-se-á trabalhar sobre um modelo
intencionalmente \emph{muito simplificado} deste sistema, em que se usará
o mónade das distribuições probabilísticas (ver o anexo \ref{sec:probabilities}).
Ter-se-á, então:
\begin{itemize}
\item paragens de autocarro
\begin{code}
data Stop = S0 | S1 | S2 | S3 | S4 | S5 deriving (Show,Eq,Ord,Enum)
\end{code}
que formam a linha |[S0 .. S5]| assumindo a ordem determinada pela instância
de |Stop| na classe |Enum|;
\item	segmentos da linha, isto é, percursos entre duas paragens consecutivas:
\begin{code}
type Segment = (Stop, Stop)
\end{code}
\item os dados obtidos a partir da \emph{app} dos passageiros que, após algum
processamento, ficam disponíveis sob a forma de pares
	\emph{(segmento, atraso observado)}:
\begin{code}
dados :: [(Segment, Delay)]
\end{code}
(Ver no apêndice \ref{sec:codigo}, página \pageref{pg:dados}, uma pequena amostra
destes dados.)
\end{itemize}
A partir destes dados, há que:
\begin{itemize}
\item	gerar a base de dados probabilística
\begin{code}
db :: [(Segment, Dist Delay)]
\end{code}
que regista, estatisticamente, a probabilidade dos atrasos (|Delay|) que
podem afectar cada segmento da linha. Recomenda-se aqui a definição de uma
função genérica
\begin{code}
mkdist :: Eq a => [a] -> Dist a
\end{code}
que faça o sumário estatístico de uma qualquer lista finita, gerando a
distribuição de ocorrência dos seus elementos.
\item
com base em |db|, definir a função probabilística
\begin{code}
delay :: Segment -> Dist Delay
\end{code}
que dará, para cada segmento, a respectiva distribuição de atrasos.
\end{itemize}
Finalmente, o objectivo principal é definir a função probabilística:
\begin{code}
pdelay :: Stop -> Stop -> Dist Delay
\end{code}
|pdelay a b| deverá informar qualquer utente que queira ir da paragem |a| até à
paragem |b| de uma dada linha sobre a probabilidade de atraso acumulado no
total do percurso |[a..b]|.

Valorizar-se-ão as soluções que usem funcionalidades monádicas genéricas
estudadas na disciplina e que sejam elegantes, isto é, poupem código desnecessário.

\newpage
\part*{Anexos}

\appendix

\section{Natureza do trabalho a realizar}
\label{sec:documentacao}
Este trabalho teórico-prático deve ser realizado por grupos de 3 alunos.
Os detalhes da avaliação (datas para submissão do relatório e sua defesa
oral) são os que forem publicados na \cp{página da disciplina} na \emph{internet}.

Recomenda-se uma abordagem participativa dos membros do grupo em \textbf{todos}
os exercícios do trabalho, para assim poderem responder a qualquer questão
colocada na \emph{defesa oral} do relatório.

Para cumprir de forma integrada os objectivos do trabalho vamos recorrer
a uma técnica de programa\-ção dita ``\litp{literária}'' \cite{Kn92}, cujo
princípio base é o seguinte:
%
\begin{quote}\em
	Um programa e a sua documentação devem coincidir.
\end{quote}
%
Por outras palavras, o \textbf{código fonte} e a \textbf{documentação} de um
programa deverão estar no mesmo ficheiro.

O ficheiro \texttt{cp2324t.pdf} que está a ler é já um exemplo de
\litp{programação literária}: foi gerado a partir do texto fonte
\texttt{cp2324t.lhs}\footnote{O sufixo `lhs' quer dizer
\emph{\lhaskell{literate Haskell}}.} que encontrará no \MaterialPedagogico\
desta disciplina des\-com\-pactando o ficheiro \texttt{cp2324t.zip}.

Como se mostra no esquema abaixo, de um único ficheiro (|lhs|)
gera-se um PDF ou faz-se a interpretação do código \Haskell\ que ele inclui:

	\esquema

Vê-se assim que, para além do \GHCi, serão necessários os executáveis \PdfLatex\ e
\LhsToTeX. Para facilitar a instalação e evitar problemas de versões e
conflitos com sistemas operativos, é recomendado o uso do \Docker\ tal como
a seguir se descreve.

\section{Docker} \label{sec:docker}

Recomenda-se o uso do \container\ cuja imagem é gerada pelo \Docker\ a partir do ficheiro
\texttt{Dockerfile} que se encontra na diretoria que resulta de descompactar
\texttt{cp2324t.zip}. Este \container\ deverá ser usado na execução
do \GHCi\ e dos comandos relativos ao \Latex. (Ver também a \texttt{Makefile}
que é disponibilizada.)

Após \href{https://docs.docker.com/engine/install/}{instalar o Docker} e
descarregar o referido zip com o código fonte do trabalho,
basta executar os seguintes comandos:
\begin{Verbatim}[fontsize=\small]
    $ docker build -t cp2324t .
    $ docker run -v ${PWD}:/cp2324t -it cp2324t
\end{Verbatim}
\textbf{NB}: O objetivo é que o container\ seja usado \emph{apenas} 
para executar o \GHCi\ e os comandos relativos ao \Latex.
Deste modo, é criado um \textit{volume} (cf.\ a opção \texttt{-v \$\{PWD\}:/cp2324t}) 
que permite que a diretoria em que se encontra na sua máquina local 
e a diretoria \texttt{/cp2324t} no \container\ sejam partilhadas.

Pretende-se então que visualize/edite os ficheiros na sua máquina local e que
os compile no \container, executando:
\begin{Verbatim}[fontsize=\small]
    $ lhs2TeX cp2324t.lhs > cp2324t.tex
    $ pdflatex cp2324t
\end{Verbatim}
\LhsToTeX\ é o pre-processador que faz ``pretty printing'' de código Haskell
em \Latex\ e que faz parte já do \container. Alternativamente, basta executar
\begin{Verbatim}[fontsize=\small]
    $ make
\end{Verbatim}
para obter o mesmo efeito que acima.

Por outro lado, o mesmo ficheiro \texttt{cp2324t.lhs} é executável e contém
o ``kit'' básico, escrito em \Haskell, para realizar o trabalho. Basta executar
\begin{Verbatim}[fontsize=\small]
    $ ghci cp2324t.lhs
\end{Verbatim}

\noindent Abra o ficheiro \texttt{cp2324t.lhs} no seu editor de texto preferido
e verifique que assim é: todo o texto que se encontra dentro do ambiente
\begin{quote}\small\tt
\verb!\begin{code}!
\\ ... \\
\verb!\end{code}!
\end{quote}
é seleccionado pelo \GHCi\ para ser executado.

\section{Em que consiste o TP}

Em que consiste, então, o \emph{relatório} a que se referiu acima?
É a edição do texto que está a ser lido, preenchendo o anexo \ref{sec:resolucao}
com as respostas. O relatório deverá conter ainda a identificação dos membros
do grupo de trabalho, no local respectivo da folha de rosto.

Para gerar o PDF integral do relatório deve-se ainda correr os comando seguintes,
que actualizam a bibliografia (com \Bibtex) e o índice remissivo (com \Makeindex),
\begin{Verbatim}[fontsize=\small]
    $ bibtex cp2324t.aux
    $ makeindex cp2324t.idx
\end{Verbatim}
e recompilar o texto como acima se indicou. (Como já se disse, pode fazê-lo
correndo simplesmente \texttt{make} no \container.)

No anexo \ref{sec:codigo} disponibiliza-se algum código \Haskell\ relativo
aos problemas que são colocados. Esse anexo deverá ser consultado e analisado
à medida que isso for necessário.

Deve ser feito uso da \litp{programação literária} para documentar bem o código que se
desenvolver, em particular fazendo diagramas explicativos do que foi feito e
tal como se explica no anexo \ref{sec:diagramas} que se segue.

\section{Como exprimir cálculos e diagramas em LaTeX/lhs2TeX} \label{sec:diagramas}

Como primeiro exemplo, estudar o texto fonte (\lhstotex{lhs}) do que está a ler\footnote{
Procure e.g.\ por \texttt{"sec:diagramas"}.} onde se obtém o efeito seguinte:\footnote{Exemplos
tirados de \cite{Ol18}.}
\begin{eqnarray*}
\start
|
	id = split f g
|
\just\equiv{ universal property }
|
     lcbr(
          p1 . id = f
     )(
          p2 . id = g
     )
|
\just\equiv{ identity }
|
     lcbr(
          p1 = f
     )(
          p2 = g
     )
|
\qed
\end{eqnarray*}

Os diagramas podem ser produzidos recorrendo à \emph{package} \Xymatrix, por exemplo:
\begin{eqnarray*}
\xymatrix@@C=2cm{
    |Nat0|
           \ar[d]_-{|cataNat g|}
&
    |1 + Nat0|
           \ar[d]^{|id + (cataNat g)|}
           \ar[l]_-{|inNat|}
\\
     |B|
&
     |1 + B|
           \ar[l]^-{|g|}
}
\end{eqnarray*}

\section{Regra prática para a recursividade mútua em |Nat0|}\label{sec:mr}

Nesta disciplina estudou-se como fazer \pd{programação dinâmica} por cálculo,
recorrendo à lei de recursividade mútua.\footnote{Lei (\ref{eq:fokkinga})
em \cite{Ol18}, página \pageref{eq:fokkinga}.}

Para o caso de funções sobre os números naturais (|Nat0|, com functor |fF
X = 1 + X|) é fácil derivar-se da lei que foi estudada uma
	\emph{regra de algibeira}
	\label{pg:regra}
que se pode ensinar a programadores que não tenham estudado
\cp{Cálculo de Programas}. Apresenta-se de seguida essa regra, tomando como
exemplo o cálculo do ciclo-\textsf{for} que implementa a função de Fibonacci,
recordar o sistema:
\begin{spec}
fib 0 = 1
fib(n+1) = f n

f 0 = 1
f (n+1) = fib n + f n
\end{spec}
Obter-se-á de imediato
\begin{code}
fib' = p1 . for loop init where
   loop(fib,f)=(f,fib+f)
   init = (1,1)
\end{code}
usando as regras seguintes:
\begin{itemize}
\item	O corpo do ciclo |loop| terá tantos argumentos quanto o número de funções mutuamente recursivas.
\item	Para as variáveis escolhem-se os próprios nomes das funções, pela ordem
que se achar conveniente.\footnote{Podem obviamente usar-se outros símbolos, mas numa primeira leitura
dá jeito usarem-se tais nomes.}
\item	Para os resultados vão-se buscar as expressões respectivas, retirando a variável |n|.
\item	Em |init| coleccionam-se os resultados dos casos de base das funções, pela mesma ordem.
\end{itemize}
Mais um exemplo, envolvendo polinómios do segundo grau $ax^2 + b x + c$ em |Nat0|.
Seguindo o método estudado nas aulas\footnote{Secção 3.17 de \cite{Ol18} e tópico
\href{https://www4.di.uminho.pt/~jno/media/cp/}{Recursividade mútua} nos vídeos de apoio às aulas teóricas.},
de $f\ x = a x^2 + b x + c$ derivam-se duas funções mutuamente recursivas:
\begin{spec}
f 0 = c
f (n+1) = f n + k n

k 0 = a + b
k(n+1) = k n + 2 a
\end{spec}
Seguindo a regra acima, calcula-se de imediato a seguinte implementação, em Haskell:
\begin{code}
f' a b c = p1 . for loop init where
  loop(f,k) = (f+k,k+2*a)
  init = (c,a+b) 
\end{code}

\section{O mónade das distribuições probabilísticas} \label{sec:probabilities}
%format B = "\mathit B"
%format C = "\mathit C"
Mónades são functores com propriedades adicionais que nos permitem obter
efeitos especiais em progra\-mação. Por exemplo, a biblioteca \Probability\
oferece um mónade para abordar problemas de probabilidades. Nesta biblioteca,
o conceito de distribuição estatística é captado pelo tipo
\begin{eqnarray}
     |newtype Dist a = D {unD :: [(a, ProbRep)]}|
     \label{eq:Dist}
\end{eqnarray}
em que |ProbRep| é um real de |0| a |1|, equivalente a uma escala de $0$ a
$100 \%$.

Cada par |(a,p)| numa distribuição |d::Dist a| indica que a probabilidade
de |a| é |p|, devendo ser garantida a propriedade de  que todas as probabilidades
de |d| somam $100\%$.
Por exemplo, a seguinte distribuição de classificações por escalões de $A$ a $E$,
\[
\begin{array}{ll}
A & \rule{2mm}{3pt}\ 2\%\\
B & \rule{12mm}{3pt}\ 12\%\\
C & \rule{29mm}{3pt}\ 29\%\\
D & \rule{35mm}{3pt}\ 35\%\\
E & \rule{22mm}{3pt}\ 22\%\\
\end{array}
\]
será representada pela distribuição
\begin{code}
d1 :: Dist Char
d1 = D [('A',0.02),('B',0.12),('C',0.29),('D',0.35),('E',0.22)]
\end{code}
que o \GHCi\ mostrará assim:
\begin{Verbatim}[fontsize=\small]
'D'  35.0%
'C'  29.0%
'E'  22.0%
'B'  12.0%
'A'   2.0%
\end{Verbatim}
É possível definir geradores de distribuições, por exemplo distribuições \emph{uniformes},
\begin{code}
d2 = uniform (words "Uma frase de cinco palavras")
\end{code}
isto é
\begin{Verbatim}[fontsize=\small]
     "Uma"  20.0%
   "cinco"  20.0%
      "de"  20.0%
   "frase"  20.0%
"palavras"  20.0%
\end{Verbatim}
distribuição \emph{normais}, eg.\
\begin{code}
d3 = normal [10..20]
\end{code}
etc.\footnote{Para mais detalhes ver o código fonte de \Probability, que é uma adaptação da
biblioteca \PFP\ (``Probabilistic Functional Programming''). Para quem quiser saber mais
recomenda-se a leitura do artigo \cite{EK06}.}
|Dist| forma um \textbf{mónade} cuja unidade é |return a = D [(a,1)]| e cuja composição de Kleisli
é (simplificando a notação)
\begin{spec}
  ((kcomp f g)) a = [(y,q*p) | (x,p) <- g a, (y,q) <- f x]
\end{spec}
em que |g: A -> Dist B| e |f: B -> Dist C| são funções \textbf{monádicas} que representam
\emph{computações probabilísticas}.

Este mónade é adequado à resolução de problemas de \emph{probabilidades e estatística} usando programação funcional, de forma elegante e como caso particular da programação monádica.

\section{Código fornecido}\label{sec:codigo}

\subsection*{Problema 1}

\begin{code}
m1 = [[1,2,3], [4,5,6], [7,8,9]]
m2 = [[1,2,3,4], [5,6,7,8], [9,10,11,12]]
m3 = words "Cristina Monteiro Carvalho Sequeira"

test1 = matrot m1 == [1,2,3,6,9,8,7,4,5]
test2 = matrot m2 == [1,2,3,4,8,12,11,10,9,5,6,7]
test3 = matrot m3 == "CristinaooarieuqeSCMonteirhlavra"
\end{code}

\subsection*{Problema 2}

\begin{code}
test4 = reverseVowels "" == ""
test5 = reverseVowels "ácidos" == "ocidás"
test6 = reverseByPredicate even [1..20] == [1,20,3,18,5,16,7,14,9,12,11,10,13,8,15,6,17,4,19,2]
\end{code}

\subsection*{Problema 3}

Nenhum código é fornecido neste problema.

\subsection*{Problema 4}
Os atrasos, medidos em minutos, são inteiros:
\begin{code}
type Delay = Integer
\end{code}
Amostra de dados apurados por passageiros: \label{pg:dados}
\begin{code}
dados = [((S0,S1),0),((S0,S1),2),((S0,S1),0),((S0,S1),3),((S0,S1),3),
         ((S1,S2),0),((S1,S2),2),((S1,S2),1),((S1,S2),1),((S1,S2),4),
         ((S2,S3),2),((S2,S3),2),((S2,S3),4),((S2,S3),0),((S2,S3),5),
         ((S3,S4),2),((S3,S4),3),((S3,S4),5),((S3,S4),2),((S3,S4),0),
         ((S4,S5),0),((S4,S5),5),((S4,S5),0),((S4,S5),7),((S4,S5),-1)]
\end{code}
\emph{``Funcionalização'' de listas}:
\begin{code}
mkf :: Eq a => [(a, b)] -> a -> Maybe b
mkf = flip Prelude.lookup
\end{code}
Ausência de qualquer atraso:
\begin{code}
instantaneous :: Dist Delay
instantaneous = D [ (0,1) ]
\end{code}

%----------------- Soluções dos alunos -----------------------------------------%

\section{Soluções dos alunos}\label{sec:resolucao}
Os alunos devem colocar neste anexo as suas soluções para os exercícios
propostos, de acordo com o ``layout'' que se fornece.
Não podem ser alterados os nomes ou tipos das funções dadas, mas pode ser
adicionado texto ao anexo, bem como diagramas e/ou outras funções auxiliares
que sejam necessárias.

\noindent
\textbf{Importante}: Não pode ser alterado o texto deste ficheiro fora deste anexo.

\subsection*{Problema 1}

\subsubsection*{Análise do problema}
Neste problema decidimos analisar bem as imagens de exemplo que apareciam no enunciado, pois achamos que com uma perceção visual do problema 
conseguimos mais rapidamente chegar a uma solução.

Após a dita análise conseguimos observar um certo \textbf{padrão} na travessia pedida, lembrando que uma matriz é apenas uma lista de listas:

\begin{enumerate}   
    \item A cabeça da lista mantém-se (e retira-se)
    \item Os próximos elementos são os últimos das seguintes listas (e retira-se)
    \item Inverte-se a ordem dos elementos de todas as sub-listas restantes, da própria matriz e volta-se ao passo 1.
\end{enumerate}

Testemos então este \textbf{padrão} com o exemplo dado no enunciado, a matriz \begin{code} mat = [[1,2,3], [4,5,6], [7,8,9]] \end{code}
Mantemos a lista resultado na variável \emph{result}:

\begin{enumerate}   
    \item A cabeça da lista mantém-se (e retira-se):

        \emph{result} = [1,2,3] e \emph{mat} = [[4,5,6], [7,8,9]]
    \item Os próximos elementos são os últimos das seguintes listas (e retira-se)

        \emph{result} = [1,2,3,6,9] e \emph{mat} = [[4,5], [7,8]]
    \item Inverte-se a ordem dos elementos de todas as sub-listas restantes, da própria matriz e volta-se ao passo 1.

        \emph{result} mantém-se. Primeiro inverter a ordem das sub-listas: \emph{mat} = [[5,4], [8,7]]. 
        Depois da própria matriz: \emph{mat} = [[8,7], [5,4]]
\end{enumerate}

\noindent
Ao voltar-se ao passo 1. e repetir o processo chega-se ao resultado final de \emph{result} = [1,2,3,6,9,8,7,4,5] que é o esperado.

\subsubsection*{Resolução}

Partindo agora para a resolução do problema, começamos por definir um catamorfismo que tratasse de nos retornar os últimos elementos das sub-listas, 
originando este diagrama:
\begin{eqnarray*}
\xymatrix@@C=3cm{
    (|A|^*)^*
           \ar[d]_-{|lasts|}
           \ar@@/^/[r]^-{|outList|}
&
    |1| + |A|^* |>< (A|^*)^*
           \ar[d]^{|id + id >< lasts|}
           \ar@@/^/[l]^-{|inList|}
\\
     |A|^*
&
     |1 + A|^*| >< A|^* 
           \ar[l]^-{|either nil (cons . (last >< id))|}
}
\start
lasts = |cataList (either nil (cons . (last >< id)))|
\end{eqnarray*}

Agora precisamos de algo que nos retorne as sub-listas da matriz sem os últimos elementos, pois partimos sempre da mesma matriz independentemente
das operações que aplicamos, e o catamorfismo anterior e qualquer outro que usemos não alteram a ``referência'' da matriz. 

Deu origem a este diagrama de um catamorfismo:
\begin{eqnarray*}
\xymatrix@@C=3cm{
    (|A|^*)^*
           \ar[d]_-{|myinits|}
           \ar@@/^/[r]^-{|outList|}
&
    |1| + |A|^* |>< (A|^*)^*
           \ar[d]^{|id + id >< myinits|}
           \ar@@/^/[l]^-{|inList|}
\\
     |A|^*
&
     |1 + A|^*| >< A|^* 
           \ar[l]^-{|either nil (cons . (init >< id))|}
}
\start
myinits = |cataList (either nil (cons . (init >< id)))|
\end{eqnarray*}

\noindent
Por fim é preciso algo que nos trate do ponto 3. do \textbf{padrão}. Um simples \emph{reverse} não chega pois é preciso reverter as sub-listas também.
De certa forma é preciso um ``deep'' reverse, que trate das duas coisas.

O diagrama do catamorfismo seguinte é apenas referente à parte de reverter as sublistas:
\begin{eqnarray*}
\xymatrix@@C=3cm{
    (|A|^*)^*
           \ar[d]_-{|aux|}
           \ar@@/^/[r]^-{|outList|}
&
    |1| + |A|^* |>< (A|^*)^*
           \ar[d]^{|id + id >< aux|}
           \ar@@/^/[l]^-{|inList|}
\\
     |A|^*
&
     |1 + A|^*| >< A|^* 
           \ar[l]^-{|either nil (cons . (reverse >< id))|}
}
\start
deepreverse = |reverse . cataList (either nil (cons . (reverse >< id)))|
\end{eqnarray*}

Com estas 3 funções definidas, podemos tratar de resolver por fim o problema:
\begin{code}
matrot :: Eq a => [[a]] -> [a]
matrot [] = []
matrot (h:t) = h ++ lasts t ++ matrot (deepreverse (myinits t))
    where 
        lasts = cataList (either nil (cons . (last >< id)))
        myinits = cataList (either nil (cons . (init >< id)))
        deepreverse = reverse . cataList (either nil (cons . (reverse >< id)))
\end{code}

\textbf{NB:} O grupo gostaria de ter utilizado mais conhecimento desta cadeira para tentar tornar tudo \emph{pointfree} no entanto esta foi a solução que conseguimos obter.

\subsection*{Problema 2}

\subsubsection*{Análise do problema}

Neste problema, a informação de que se trata de uma questão popular em entrevistas de emprego ajudou para pesquisar mais sobre este desafio. 
Rapidamente se chegou a soluções implementadas noutro tipo de linguagens como \textbf{C}, \textbf{C++}, \textbf{Java} e \textbf{Python}.

A que era mais aceite e apreciada, de uma forma sucinta, era uma solução que envolve dois \emph{pointers}, um no início da String e outro no fim,
em que se iam aproximando do ``centro'' da String e trocavam de referências quando o predicado era verificado. Tentamos ver se conseguiamos tirar proveito
dessa solução mas não foi o caso.

Pensamos então melhor e chegamos à conclusão que podíamos utilizar uma lista auxiliar que (no contexto do \emph{reverseVowels}) teria todas as vogais
presentes na String, já pela ordem inversa. Com esta lista auxiliar seria percorrer ambas e quando o predicado se verificar na principal, construa-se a lista final
com a cabeça da lista auxiliar. Caso contrário constrói-se com a cabeça da principal

\subsubsection*{Resolução}

Começa-se por definir o predicado usado para o caso das vogais:
\begin{code}
isVowel :: Char -> Bool
isVowel = (`elem` "aáàãâeéèêiíìîoóòõôuúùûAÁÀÃÂEÉÈÊIÍÌÎOÓÒÕÔUÚÙÛ")
\end{code}

A \emph{reverseVowels} será apenas a mais genérica, \emph{reverseByPredicate}, com o predicado definido anteriormente:
\begin{code}
reverseVowels :: String -> String
reverseVowels = reverseByPredicate isVowel
\end{code}

A parte principal e mais desafiante começa agora, que seria definir a função genérica. Implementar a solução discutida na secção de análise em Haskell não seria
algo complicado, no entanto queriamos tentar envolver mais conceitos da cadeira.

Tentamos então fazer diagramas para tentar perceber o que se poderia utilizar aqui. Olhando para a definição de catamorfismo:
\begin{eqnarray*}
\start
|cataList g = g . F (cataList g) . outList|
\end{eqnarray*}

Achamos que para o contexto do que queriamos obter, era o que mais se adequava. Não seria no entanto um catamorfismo já definido, teríamos que definir um ``novo'' pois
estamos a trabalhar com as duas listas, principal e auxiliar.

Este foi o diagrama que, juntamente com a definição de catamorfismo, nos levou a essa conclusão:
\begin{eqnarray*}
\xymatrix@@C=2.5cm{
    |A|^*| >< A|^*
            \ar[d]_-{|f|}
            \ar[r]_-{|out|}
    &
        |A|^* + |A >< (A|^*| >< A|^*)
            \ar[d]^{|id + id >< f|}
    \\
        |A|^*
    &
        |A|^* + |A >< A|^* 
            \ar[l]^-{|either id cons|}
}
\end{eqnarray*}
Este catamorfismo tem uma peculiaridade que é a necessidade de ser acompanhado pelo predicado requirido pelo problema. Isto levou-nos a considerar se seria válido chamar
a esta solução um catamorfismo, no entanto, visto que segue a definição referida em cima, mantemos a nomenclatura.

Conseguimos então definir o BiFunctor: \begin{eqnarray*}\start |B(f,g) = id + f >< g|\end{eqnarray*}

Temos então a definição do \emph{out} para esta estrutura de dados:
\begin{code}
outPredicateList :: (a -> Bool) -> ([a], [a]) -> Either [a] (a, ([a], [a]))
outPredicateList p ([], l) = i1 l
outPredicateList p (y:ys, x:xs) =
    if p x then i2 (y, (ys, xs)) else i2 (x, (y:ys, xs))
\end{code}

Deixamos na primeira parte do \emph{Either} a lista principal quando a auxiliar tiver sido toda percorrida. Na segunda parte, temos o conjunto com o elemento a ``entrar'' na
lista resultado, e com as duas listas, principal e auxiliar.

Fica assim definido o catamorfismo:
\begin{code}
cataPredicateList p g = g . recList (cataPredicateList p g) . outPredicateList p
\end{code}

Acabando então com a função genérica:
\begin{code}
reverseByPredicate :: (a -> Bool) -> [a] -> [a]
reverseByPredicate p = f p gene . split (reverse . filter p) id
    where
        f p gene = cataPredicateList p gene
        gene = either id cons
\end{code}

\noindent
Antes do catamorfismo, criamos o par (lista auxiliar, lista principal). A lista auxiliar seria apenas filtrar a principal segundo o predicado e depois revertê-la.
\subsection*{Problema 3}

\subsubsection*{Análise do Problema}

Este é um desafio bastante interessante, porque possibilita um aumento em eficiência significativo quando comparado com a solução de forma recursiva. Ao observar
a expressão matemática no corpo do somatório reparamos em algo interessante. Notamos que existe uma enorme semelhança com a definição da expressão do $e^x$,
número de Euler:
\begin{eqnarray}
\start
	e^x=\sum_{k=0}^\infty \frac{x^{k}}{k!}
\end{eqnarray}

Na verdade, se fixarmos $k = 2k + 1$ temos exatamente a expressão para $sinh\ x$ (\ref{eq:sinh}). Lembramo-nos então de um exercício que ao se estudar para os testes escritos
se resolveu que tratava de um problema semelhante mas para o número de Euler\footnote{Exercício (\ref{ex:euler}) em \cite{Ol18}, página \pageref{ex:euler}.}.

\noindent
\textbf{NB:} Não mostramos a resolução do exercício mencionado pois é equiparado ao pedido para resolver no enunciado, como referido.

\subsubsection*{Resolução}

Facilmente conseguimos perceber o valor de snh para $k = 0$:
\[
    snh\ x\ 0 = \frac{x^{2 \cdot 0 + 1 }}{(2 \cdot 0 + 1)!} = \frac{x^1}{1!} = x
\]
\noindent
Agora tem de se ver o caso para $k = k + 1$
\[
\begin{split}
    &\snh\ x\ (k + 1) = \sum_{i=0}^{k+1} \frac{x^{2(k + 1) + 1}}{(2(k + 1) + 1)!} \\
    &\equiv \\
    &\snh\ x\ (k + 1) = \sum_{i=0}^{k+1} \frac{x^{2k + 3}}{(2k + 3)!} \\
    &\equiv \\
    &\snh\ x\ (k + 1) = snh\ x\ k + \frac{x^{2k + 3}}{(2k + 3)!}
\end{split} 
\]
\noindent
Como temos $snh\ x\ (k+1)$ a depender do termo $\frac{x^{2k + 3}}{(2k + 3)!}$ definimos $h\ x\ k = \frac{x^{2k + 3}}{(2k + 3)!}$

Repetimos agora o processo para $h\ x\ 0$:
\[
    h\ x\ 0 = \frac{x^{2 \cdot 0 + 3}}{(2 \cdot 0 + 3)!} = \frac{x^3}{6}
\]

E para $h\ x\ (k+1)$:
\[
\begin{split}
    &\h\ x\ (k + 1) = \frac{x^{2(k + 1) + 3}}{(2(k + 1) + 3)!} \\
    &\equiv \\
    &\h\ x\ (k + 1) = \frac{x^{2k + 3 + 2}}{(2k + 3 + 2)!} \\
    &\equiv \\
    &\h\ x\ (k + 1) = \frac{x^{2k + 3} \cdot x^{2}}{(2k + 3)! \cdot (2k + 4) \cdot (2k + 5)} \\
    &\equiv \\
    &\h\ x\ (k + 1) = \frac{x^{2k + 3}}{(2k + 3)!} \cdot \frac{x^{2}}{(2k + 4) \cdot (2k + 5)} \\
    &\equiv \\
    &\h\ x\ (k + 1) = h\ x\ k \cdot \frac{x^{2}}{4k^{2} + 18k + 20}
\end{split} 
\]
\noindent
Acontece mais uma vez a mesma coisa que em $snh\ x\ (k+1)$, o denominador da segunda parcela da soma em $h\ x\ (k+1)$ depende de k. 
Criamos entao $f\ k = 4k^{2} + 18k + 20$.

Para esta parte não é preciso muitos mais cálculos, pois no anexo \ref{sec:mr} é nos dado um exemplo envolvendo polinómios do segundo grau,
que é exatamente o que $f\ k$ trata. Seguindo a resolução que lá mostra temos:
\[
    \begin{cases}
        \begin{cases}
            f\ 0 &= 20 \\
            f\ (k + 1) &= f\ k + g\ k
        \end{cases} \\
        \begin{cases}
            g\ 0 &= 4 + 18 = 22 \\
            g\ (k + 1) &= g\ k + 2 \cdot 4 = g\ k + 8
        \end{cases}
    \end{cases}
\]
\noindent
Em suma, temos então:
\[
    \begin{cases}
        \begin{cases}
            snh\ x\ 0 &= x \\
            snh\ x\ (k + 1) &= snh\ x\ k + h\ x\ k
        \end{cases} \\
        \begin{cases}
            h\ x\ 0 &= \frac{x^3}{6} \\
            \h\ x\ (k + 1) &= h\ x\ k \cdot \frac{x^{2}}{f\ k}
        \end{cases} \\
        \begin{cases}
            f\ 0 &= 20 \\
            f\ (k + 1) &= f\ k + g\ k
        \end{cases} \\
        \begin{cases}
            g\ 0 &= 22 \\
            g\ (k + 1) &= g\ k + 8
        \end{cases}
    \end{cases}
\]
\noindent
Com isto podemos então aplicar a \emph{regra de algibeira} do anexo \ref{sec:mr}:

\begin{code}
snh x = wrapper . worker where
        worker = for ((loop x)) ((start x))
        wrapper (a, _, _, _) = a

loop x (snh', h, f, g) = (snh' + h, h * (x **2 / f), f + g, g + 8)

start x = (x, x**3 / 6, 20, 22)
\end{code}

\subsection*{Problema 4}

\subsubsection*{Análise do Problema}

Talvez o problema mais interessante, pelos seus efeitos práticos, mas também o que requeriu mais discussão para perceber por onde começar.
Percebeu-se no entanto que o ínicio estaria pela implementação da função \emph{mkdist}. O desafio aqui seria perceber como se iria calcular as probabilidades
dos elementos. Basicamente será a probabilidade de um elemento occorrer na lista. Acabamos por perceber que se agruparmos os elementos iguais em sub-listas,
podemos depois calcular a probabilidade desse elemento dividindo o tamanho da sub-lista desse elemento pelo tamanho da lista (inicial) total.

De seguida, com \emph{mkdist} implementada, o próximo passo seria ``preencher'' a base de dados. Agora a tarefa é mais facilitada, teríamos que aplicar a função anterior
aos conjuntos de segmentos obtidos em \emph{dados}.

A parte mais simples seria a próxima, que era implementar \emph{delay}. Com as funções \emph{mkf} e \emph{instantaneous} fornecidas no anexo \ref{sec:codigo}
o nosso trabalho ficou facilitado se interpretarmos a \emph{db} como uma espécie de \textbf{map} e \emph{mkf} uma espécie de \textbf{get} dado uma key, para
se obter o valor associado.

Por fim, teríamos que implementar a função ``principal'', \emph{pdelay}. Aqui rapidamente percebemos que se, a partir das duas paragens dadas em argumento, 
obtivéssemos o caminho total (por exemplo,  caminho de S0 a S3 seria [(S0, S1), (S1, S2), (S2, S3)]) bastaria fazer a probabilidade de \emph{delay} acumulada.

\subsubsection*{Resolução}

Vejamos agora como está implementado.

\emph{mkdist} como referido usaria um função que calcula a probabilidade de cada elemento estar presente na lista:
\begin{code}
calcularDistribuicaoProbabilidades :: Eq a => [a] -> [(a, ProbRep)]
calcularDistribuicaoProbabilidades lista =
  let totalElementos = fromIntegral $ length lista
      contagem = map (\x -> (head x, fromIntegral (length x) / totalElementos)) $ group lista
  in contagem
\end{code}

Restava então utilizar uma função definida na biblioteca de probabilidades fornecida, \emph{mkD}, que cria uma distribuição dado uma lista de
$(a, ProbRep)$:

\begin{code}
mkdist = mkD . calcularDistribuicaoProbabilidades
\end{code}

\noindent
Para construir a base de dados, utiliza-se a função \emph{agrupar} na lista de dados, que agrupa os segmentos iguais em sub-listas. Depois
cria-se então um par de segmento e a distribuição do seu atraso, com a \emph{mkdist}.

\textbf{NB:} Usamos um sort em \emph{agrupar} para ser possível os dados serem passados em qualquer ordem, embora os do enunciado estejam já ordenados por segmento:
\begin{code}
db = f dados where
    f = map constroiDb . agrupar
    agrupar = groupBy(\x y -> fst x == fst y) . sort
    constroiDb = split (fst . head) (mkdist . map snd)
\end{code}

\noindent
Para a função \emph{delay} seria apenas verificar o caso do \textbf{Maybe} que o \emph{mkf} retorna. É \textbf{importante} referir que o grupo assumiu que
caso o resultado fosse \textbf{Nothing} o suposto seria usar a função \emph{instantaneous}:
\begin{code}
delay seg =
    case mkf db seg of
        Nothing -> instantaneous
        Just distDelay -> distDelay
\end{code}

\noindent
Finalmente, para implementar \emph{pdelay}, como foi referido na parte de análise seria preciso uma função que dadas duas paragens 
retorna o caminho de uma a outra:
\begin{code}
caminho :: Stop -> Stop -> [Segment]
caminho start stop = zip stops (tail stops)
  where
    stops = enumFromTo start stop
\end{code}

\noindent
Para a função de produzir a distribuição das probabilidades acumuladas, tiramos proveito do facto de \textbf{Dist} ser um Monad, facilitando e 
tornando elegante a implementação desta função:
\begin{code}
distAccum :: Dist Delay -> Dist Delay -> Dist Delay
distAccum d1 d2 = do
    x <- d1
    y <- d2
    return (x+y)
\end{code}

\noindent
Tendo agora a função \emph{pdelay} concluída, que aplica \emph{delay} nos vários segmentos do caminho de s1 a s2. Logo após, utilizamos \emph{foldr1},
uma variante da muito famosa operação \emph{foldr} que é uma função de ordem superior que é usada para reduzir uma lista a um único valor. Esta variante
assume que a lista nunca é vazia não necessitando de inicialização.
\begin{code}
pdelay s1 s2 = foldr1 distAccum $ map delay $ caminho s1 s2

\end{code}

%----------------- Índice remissivo (exige makeindex) -------------------------%

\printindex

%----------------- Bibliografia (exige bibtex) --------------------------------%

\bibliographystyle{plain}
\bibliography{cp2324t}

%----------------- Fim do documento -------------------------------------------%
\end{document}
