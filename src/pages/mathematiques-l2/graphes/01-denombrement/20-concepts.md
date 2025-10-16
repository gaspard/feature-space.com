---
id: f05c5167
type: concepts
order: 20
title: Principes de dénombrement - concepts (B)
tags:
  - Combinatoire
  - Dénombrement
  - Cardinalité
  - Ensembles finis
  - Principes de comptage
course: Graphes et Combinatoire - Graphes et Combinatoire
courseId: 7027276b
chapter: Principes de dénombrement
chapterId: 1a14d8a4
level: pro
createdAt: '2025-10-15T18:54:52.911Z'
---
# Principes de dénombrement (B)

---

## Concept 1: Cardinalité d'un ensemble fini

### Prérequis

- Théorie des ensembles : ensembles, sous-ensembles, ensemble vide ($\emptyset$), opérations ensemblistes.
- Fonctions : application, injection, surjection, bijection, composition, application réciproque.
- Logique mathématique : raisonnement par récurrence.

### Définition

Un ensemble $E$ est dit **fini** s'il existe un entier naturel $n \in \mathbb{N}$ et une bijection $f : E \to [n]$, où $[n] = \{1, 2, \dots, n\}$ pour $n \in \mathbb{N}^*$ et $[0] = \emptyset$.

Le **Théorème de l'unicité du cardinal** (Corollaire 1.2) garantit que si un ensemble $E$ est en bijection avec $[n]$ et avec $[m]$, alors nécessairement $n=m$. Cet entier unique $n$ est appelé le **cardinal** de $E$, noté $|E|$ ou $\text{Card}(E)$.

$$ |E|=n \iff \exists f: E \to [n] \text{ bijective.} $$

### Propriétés Clés

- **Comparaison des cardinaux (Théorème 1.1)** : Soient $n, m \in \mathbb{N}$. Il existe une injection de $[n]$ dans $[m]$ si et seulement si $n \le m$.
    - ***Démonstration*** :
        - ($\impliedby$) Si $n \le m$, l'application identité restreinte à $[n]$, $\iota : [n] \to [m]$ définie par $\iota(k)=k$, est injective.
        - ($\implies$) Par récurrence sur $n$. Soit $P(n)$ l'assertion : "pour tout $m \in \mathbb{N}$, si $\exists f: [n] \to [m]$ injective, alors $n \le m$".
            - **Initialisation ($n=0$)** : $f: [0] \to [m]$ est l'application vide. L'assertion $0 \le m$ est toujours vraie pour $m \in \mathbb{N}$.
            - **Hérédité** : Supposons $P(n)$ vraie. Soit $f: [n+1] \to [m]$ une injection. L'ensemble $[n+1]$ étant non vide, $[m]$ l'est aussi, donc $m \ge 1$.
                - Cas 1 : $f(n+1) = m$. La restriction $f|_{[n]} : [n] \to [m-1]$ est injective. Par hypothèse de récurrence, $n \le m-1$, donc $n+1 \le m$.
                - Cas 2 : $f(n+1) = k \neq m$. Soit $\sigma$ la transposition qui échange $k$ et $m$. L'application $g = \sigma \circ f$ est injective et $g(n+1)=m$. On est ramené au Cas 1, ce qui donne $n+1 \le m$.
            - La propriété $P(n+1)$ est donc vraie. Par le principe de récurrence, $P(n)$ est vraie pour tout $n \in \mathbb{N}$.
- **Cardinalité d'un sous-ensemble (Proposition 1.5 & Corollaire 1.12)** : Toute partie $F$ d'un ensemble fini $E$ est finie et $|F| \le |E|$. De plus, $|F|=|E|$ si et seulement si $F=E$.
    - ***Démonstration (esquisse)*** : Soit $|E|=n$ et $g: E \to [n]$ une bijection. La restriction de $g$ à $F$ est une injection de $F$ dans $[n]$, donc une bijection de $F$ sur une partie $G \subseteq [n]$. On montre par récurrence que toute partie de $[n]$ est finie de cardinal au plus $n$, avec égalité ssi la partie est $[n]$ lui-même. Le résultat pour $F$ et $E$ s'en déduit.

### Exemples

**Exemple 1**

Soit $E = \{a, b, c\}$. L'application $f: E \to [3]$ définie par $f(a)=1, f(b)=2, f(c)=3$ est une bijection. Donc $|E|=3$.

**Exemple 2**

Soit $\Sigma = \{0, 1\}$ l'alphabet binaire. L'ensemble $\Sigma^2$ des mots binaires de longueur 2 est $\Sigma^2 = \{(0,0), (0,1), (1,0), (1,1)\}$. L'application $f: \Sigma^2 \to [4]$ définie par $f((x,y)) = 2x+y+1$ est une bijection. Donc $|\Sigma^2|=4$.

**Exemple 3**

L'ensemble des nombres premiers inférieurs à 15 est $P_{15} = \{2, 3, 5, 7, 11, 13\}$. Une bijection avec $[6]$ est $f(2)=1, f(3)=2, f(5)=3, f(7)=4, f(11)=5, f(13)=6$. Donc $|P_{15}|=6$.

### Contre-exemples

**Contre-exemple 1**

L'ensemble des entiers naturels $\mathbb{N}$ n'est pas fini.

***Preuve par l'absurde*** : Supposons que $|\mathbb{N}|=n$ pour un certain $n \in \mathbb{N}$. Il existerait donc une bijection $f: \mathbb{N} \to [n]$. Considérons l'inclusion $\iota: [n+1] \to \mathbb{N}$ définie par $\iota(k)=k-1$. L'application $\iota$ est injective. Alors $f \circ \iota : [n+1] \to [n]$ est une injection. D'après le Théorème 1.1, cela implique $n+1 \le n$, ce qui est une contradiction.

**Contre-exemple 2**

Une application $g : [3] \to \{a,b\}$ ne peut pas établir que $|\{a,b\}|=3$. En effet, d'après le Théorème 1.1, il n'existe pas d'injection de $[3]$ dans $[2]$ (qui est en bijection avec $\{a,b\}$), donc il n'existe pas de bijection.

### Concepts liés

- **Ordinaux et cardinaux** : En théorie des ensembles axiomatique (ZFC), les cardinaux sont définis comme des ordinaux spécifiques. Pour les ensembles finis, cette construction coïncide avec la définition ci-dessus. Pour les ensembles infinis, elle permet de définir une hiérarchie de "tailles" d'infini (cardinaux transfinis).

---

## Concept 2: Principe de bijection

### Prérequis

- Cardinalité d'un ensemble fini
- Bijections

### Définition

**(Proposition 1.6)** Soient $E$ et $F$ deux ensembles finis. S'il existe une bijection $f: E \to F$, alors $E$ et $F$ ont le même cardinal : $|E|=|F|$.

Ce principe est la base des **preuves bijectives** (ou preuves combinatoires) : pour dénombrer un ensemble $E$, il suffit de trouver un ensemble $F$ de cardinal connu et de construire une bijection entre $E$ et $F$.

### Propriétés Clés

- **Relation d'équivalence** : La relation "être en bijection avec" (ou "être équipotent à") est une relation d'équivalence sur la collection de tous les ensembles. Les classes d'équivalence sont les cardinaux.
- **Stratégie de preuve** : Pour prouver $|E|=|F|$, on peut :
    1. Définir une application $f: E \to F$.
    2. Prouver que $f$ est injective.
    3. Prouver que $f$ est surjective.

    Alternativement, on peut construire l'application réciproque $g: F \to E$ et montrer que $f \circ g = \text{id}_F$ and $g \circ f = \text{id}_E$.

### Exemples

**Exemple 1**

Soit $E$ un ensemble de cardinal $n$. Le cardinal de son ensemble des parties $P(E)$ est $2^n$.

***Preuve bijective*** : On établit une bijection entre $P(E)$ et l'ensemble des fonctions de $E$ dans $\{0,1\}$, noté $\{0,1\}^E$. Une fonction $f \in \{0,1\}^E$ a pour cardinal $|E|=n$ et pour codomaine de cardinal 2. Le nombre de telles fonctions est $2^n$.

La bijection $\phi: P(E) \to \{0,1\}^E$ associe à chaque sous-ensemble $A \subseteq E$ sa fonction caractéristique $\chi_A: E \to \{0,1\}$ définie par :

$$ \chi_A(x) = \begin{cases} 1 & \text{si } x \in A \\ 0 & \text{si } x \notin A \end{cases} $$

Cette application est une bijection. Donc $|P(E)| = |\{0,1\}^E| = 2^n$.

**Exemple 2**

Soit $P_k([n])$ l'ensemble des parties de cardinal $k$ de $[n]$. Son cardinal est noté $\binom{n}{k}$. On a l'identité $\binom{n}{k} = \binom{n}{n-k}$.

***Preuve bijective*** : L'application "passage au complémentaire" $\phi : P_k([n]) \to P_{n-k}([n])$ définie par $\phi(A) = [n] \setminus A$ est une bijection. En effet, si $A$ a $k$ éléments, son complémentaire en a $n-k$. L'application réciproque est $\phi$ elle-même, donc c'est une involution et une bijection.

**Exemple 3**

Le nombre de chemins sur un quadrillage allant de $(0,0)$ à $(m,n)$ en n'utilisant que des pas vers la droite (R) ou vers le haut (U) est $\binom{m+n}{m}$.

***Preuve bijective*** : Un tel chemin est une séquence de $m$ pas R et $n$ pas U, pour un total de $m+n$ pas. La séquence est entièrement déterminée par la position des $m$ pas R (ou des $n$ pas U) parmi les $m+n$ positions totales. L'ensemble de ces chemins est donc en bijection avec l'ensemble des sous-ensembles de cardinal $m$ de l'ensemble des positions $\{1, 2, \dots, m+n\}$. Le cardinal est donc $\binom{m+n}{m}$.

### Contre-exemples

**Contre-exemple 1**

Une injection ne suffit pas pour garantir l'égalité des cardinaux. L'application $f: [2] \to [3]$ définie par $f(x)=x$ est injective, mais $|[2]| = 2 \ne 3 = |[3]|$.

**Contre-exemple 2**

Une surjection ne suffit pas. L'application $g: [3] \to [2]$ définie par $g(1)=1, g(2)=2, g(3)=1$ est surjective, mais $|[3]|=3 \ne 2=|[2]|$.

### Concepts liés

- **Dénombrement double (Double counting)** : Une technique qui consiste à compter un même ensemble de deux manières différentes pour établir une identité combinatoire.
- **Théorème de Cantor-Bernstein** : Si il existe une injection de $E$ dans $F$ et une injection de $F$ dans $E$, alors il existe une bijection entre $E$ et $F$.

---

## Concept 3: Principe des tiroirs de Dirichlet

### Prérequis

- Cardinalité, Injections, Fonctions.

### Définition

**(Corollaire 1.9)** Soient $E$ et $F$ deux ensembles finis. Si $|E|>|F|$, alors il n'existe aucune application injective de $E$ dans $F$.

En d'autres termes, pour toute application $f: E \to F$, il existe au moins un élément $y \in F$ qui a au moins deux antécédents, i.e., $\exists y \in F, |f^{-1}(\{y\})| \ge 2$.

L'énoncé classique est : "Si l'on range $m$ objets dans $n$ tiroirs avec $m>n$, alors au moins un tiroir contient au moins deux objets."

### Propriétés Clés

- **Principe d'existence** : Ce principe garantit l'existence d'une configuration particulière (un tiroir "plein") sans toutefois la construire explicitement.
- **Principe des tiroirs généralisé** : Si $m$ objets sont rangés dans $n$ tiroirs ($n \ge 1$), alors au moins un tiroir contient au moins $\lceil m/n \rceil$ objets.
    - ***Démonstration*** : Soit $f: E \to F$ avec $|E|=m, |F|=n$. Supposons par l'absurde que pour tout $y \in F$, $|f^{-1}(\{y\})| < \lceil m/n \rceil$. Puisque $|f^{-1}(\{y\})|$ est un entier, cela signifie $|f^{-1}(\{y\})| \le \lceil m/n \rceil - 1$. Alors, $|E| = \sum_{y \in F} |f^{-1}(\{y\})| \le n \cdot (\lceil m/n \rceil - 1)$. Or, on sait que $\lceil x \rceil < x+1$, donc $n(\lceil m/n \rceil - 1) < n(m/n+1-1) = m$. On obtient $|E|<m$, ce qui contredit $|E|=m$.
- **Principe d'injection (Corollaire 1.8)** : La contraposée du principe des tiroirs. Il existe une injection $f:E \to F$ si et seulement si $|E| \le |F|$.

### Exemples

**Exemple 1**

Soit $A$ un sous-ensemble de $[2n]$ de taille $n+1$. Montrer qu'il existe $a,b \in A$ distincts tels que $a$ divise $b$.

***Démonstration*** : Les "objets" sont les $n+1$ entiers de $A$. Pour définir les "tiroirs", on écrit chaque $a_i \in A$ sous la forme $a_i = 2^{k_i} v_i$ où $v_i$ est un entier impair. Les $v_i$ appartiennent à l'ensemble des nombres impairs dans $[2n]$, qui sont $\{1, 3, 5, \dots, 2n-1\}$. Il y a $n$ tels nombres impairs, ce sont nos "tiroirs". L'application $f: A \to \{1,3,\dots,2n-1\}$ est définie par $f(a_i) = v_i$. Comme $|A| = n+1 > n$, par le principe des tiroirs, il existe deux éléments distincts $a_i, a_j \in A$ tels que $f(a_i)=f(a_j)=v$. On a donc $a_i = 2^{k_i}v$ et $a_j = 2^{k_j}v$. Si $k_i < k_j$, alors $a_i$ divise $a_j$.

**Exemple 2**

Parmi 13 personnes, au moins deux sont nées le même mois.

***Démonstration*** : Objets : 13 personnes. Tiroirs : les 12 mois de l'année. L'application associe à chaque personne son mois de naissance. Comme $13>12$, le principe s'applique.

**Exemple 3 (Théorème d'Erdos-Szekeres, cas simple)**

Toute séquence de $n^2+1$ nombres réels distincts contient une sous-séquence monotone (croissante ou décroissante) de longueur $n+1$.

***Démonstration*** : Soit la séquence $a_1, \dots, a_{N}$ avec $N=n^2+1$. Pour chaque $i \in [N]$, on associe le couple $(x_i, y_i)$, où $x_i$ est la longueur de la plus longue sous-séquence croissante terminant en $a_i$, et $y_i$ celle de la plus longue sous-séquence décroissante terminant en $a_i$. Supposons qu'il n'existe aucune sous-séquence monotone de longueur $n+1$. Alors pour tout $i$, $1 \le x_i, y_i \le n$. Il y a $n^2$ couples possibles pour $(x_i, y_i)$. Comme nous avons $n^2+1$ termes dans la séquence ("objets"), il existe $i<j$ tels que $(x_i, y_i) = (x_j, y_j)$ par le principe des tiroirs.

- Si $a_i < a_j$, on peut étendre la sous-séquence croissante finissant en $a_i$ par $a_j$. Donc $x_j \ge x_i+1$, ce qui contredit $x_i=x_j$.
- Si $a_i > a_j$, on peut étendre la sous-séquence décroissante finissant en $a_i$ par $a_j$. Donc $y_j \ge y_i+1$, ce qui contredit $y_i=y_j$.

La supposition initiale est fausse, donc une telle sous-séquence existe.

### Contre-exemples

**Contre-exemple 1**

Le sous-ensemble $A = \{n+1, n+2, \dots, 2n\}$ de $[2n]$ a un cardinal de $n$. Ici, aucun élément ne divise un autre. En effet, pour $a, b \in A$ avec $a < b$, on a $1 < b/a < 2n/(n+1) < 2$. Donc $b/a$ ne peut être un entier. Cela montre que la condition $|A|=n+1$ dans l'exemple 1 est stricte.

**Contre-exemple 2**

On lance deux dés à 6 faces. La somme des faces est un entier entre 2 et 12 (11 résultats possibles). Si on fait 11 lancers, il n'est pas garanti que deux lancers donnent la même somme. Le principe des tiroirs requiert $m > n$, donc au moins 12 lancers seraient nécessaires pour garantir une répétition de la somme.

### Concepts liés

- **Théorie de Ramsey** : Une généralisation du principe des tiroirs, qui stipule que dans toute structure suffisamment grande, un certain ordre doit apparaître.
- **Arguments d'existence en analyse et théorie des nombres**.

---

## Concept 4: Principes d'addition et d'inclusion-exclusion

### Prérequis

- Théorie des ensembles (union, intersection, complémentaire, partition)
- Cardinalité

### Définition

- **Principe d'addition (Corollaire 1.14)** : Pour une famille finie d'ensembles finis $\{E_1, \dots, E_n\}$ deux à deux disjoints (i.e., $E_i \cap E_j = \emptyset$ pour $i \ne j$), le cardinal de leur union est la somme de leurs cardinaux :

$$ \left| \bigcup_{i=1}^n E_i \right| = \sum_{i=1}^n |E_i| $$

- **Principe d'inclusion-exclusion (pour 2 ensembles, Corollaire 1.15)** : Pour deux ensembles finis quelconques $E$ et $F$, on a :

$$ |E \cup F| = |E| + |F| - |E \cap F| $$

### Propriétés Clés

- **Partitionnement** : Le principe d'addition est l'outil fondamental pour compter en partitionnant un ensemble complexe en sous-ensembles plus simples et disjoints.
- **Correction du surcomptage** : Le principe d'inclusion-exclusion corrige le surcomptage effectué par une simple addition lorsque les ensembles ne sont pas disjoints. Chaque élément de l'intersection est compté deux fois dans $|E|+|F|$, il faut donc le soustraire une fois.
- **Généralisation** : Le principe d'inclusion-exclusion se généralise à $n$ ensembles (formule de Poincaré ou de Sylvester) :

$$ \left| \bigcup_{i=1}^n E_i \right| = \sum_{\emptyset \neq I \subseteq [n]} (-1)^{|I|-1} \left| \bigcap_{i \in I} E_i \right| $$

- **Dénombrement du complémentaire** : Un cas particulier du principe d'addition. Si $A \subseteq U$, alors $|A| = |U| - |\bar{A}|$, où $\bar{A} = U \setminus A$.

### Exemples

**Exemple 1**

Combien d'entiers dans $\{1, \dots, 500\}$ sont divisibles par 3 ou 5 ?

Soit $A_k$ l'ensemble des entiers dans $[500]$ divisibles par $k$. On cherche $|A_3 \cup A_5|$.

$|A_3| = \lfloor 500/3 \rfloor = 166$.

$|A_5| = \lfloor 500/5 \rfloor = 100$.

$|A_3 \cap A_5| = |A_{15}| = \lfloor 500/15 \rfloor = 33$.

Par le principe d'inclusion-exclusion, $|A_3 \cup A_5| = 166 + 100 - 33 = 233$.

**Exemple 2**

Un mot de passe de 8 caractères est formé de lettres majuscules (26) ou de chiffres (10). Combien de mots de passe contiennent au moins un chiffre ?

Soit $U$ l'ensemble de tous les mots de passe possibles. $|U| = (26+10)^8 = 36^8$.

Soit $A$ l'ensemble des mots de passe ne contenant que des lettres. $|A| = 26^8$.

L'ensemble recherché est le complémentaire de $A$ dans $U$. Son cardinal est $|U| - |A| = 36^8 - 26^8$.

**Exemple 3**

On lance deux dés distincts. Combien de résultats ont au moins un '6' ?

Soit $E$ l'événement "le premier dé est un 6" et $F$ l'événement "le second dé est un 6".

$|E| = |\{(6,1), (6,2), \dots, (6,6)\}| = 6$.

$|F| = |\{(1,6), (2,6), \dots, (6,6)\}| = 6$.

$|E \cap F| = |\{(6,6)\}| = 1$.

Le nombre de résultats est $|E \cup F| = |E| + |F| - |E \cap F| = 6 + 6 - 1 = 11$.

### Contre-exemples

**Contre-exemple 1**

Une mauvaise application du principe d'addition. On veut compter le nombre de personnes dans une salle qui parlent français ou anglais. Il y a 10 francophones et 8 anglophones. Le total n'est pas $10+8=18$ si certains sont bilingues, car les deux ensembles ne sont pas disjoints.

**Contre-exemple 2**

On oublie le terme d'intersection. Combien d'entiers de 1 à 10 sont pairs ou supérieurs à 7 ?

$E = \{2,4,6,8,10\}$, $F = \{8,9,10\}$.

$|E \cup F| = |\{2,4,6,8,9,10\}| = 6$.

$|E|+|F|=5+3=8$. L'erreur vient du fait que $E \cap F = \{8,10\}$ n'est pas vide. La formule correcte donne $5+3-2=6$.

### Concepts liés

- **Probabilités** : La formule $P(A \cup B) = P(A)+P(B)-P(A \cap B)$ est l'analogue probabiliste du principe.
- **Théorie de la mesure** : Le cardinal est une mesure (la mesure de comptage) et la formule d'additivité est une propriété fondamentale des mesures.
- **Dérangements** : Le problème de compter les permutations sans point fixe est une application classique du principe d'inclusion-exclusion généralisé.

---

## Concept 5: Principe des bergers

### Prérequis

- Fonctions (image, préimage/fibre)
- Principe d'addition
- Partition d'un ensemble

### Définition

Soient $E$ et $F$ deux ensembles finis et $f: E \to F$ une application.

- **Forme générale (Proposition 1.16)** : Le cardinal de $E$ est la somme des cardinaux des préimages (ou fibres) des éléments de $F$.

$$ |E| = \sum_{y \in F} |f^{-1}(\{y\})| $$

   (Note : Si $y$ n'est pas dans l'image de $f$, alors $f^{-1}(\{y\}) = \emptyset$ et sa contribution est 0).

- **Cas régulier (Corollaire 1.18)** : S'il existe un entier $p \in \mathbb{N}^*$ tel que la préimage de chaque élément de l'image de $f$ est de cardinal $p$ (i.e. $\forall y \in \text{Im}(f), |f^{-1}(\{y\})|=p$), alors :

$$ |E| = p \cdot |\text{Im}(f)| $$

   Si de plus $f$ est surjective, $|\text{Im}(f)|=|F|$ et donc $|E| = p \cdot |F|$.

### Propriétés Clés

- **Raffinement du comptage** : Ce principe permet de déduire le cardinal d'un ensemble $F$ (les "moutons") en comptant un ensemble $E$ plus facile à appréhender (les "pattes") et en divisant par la taille constante $p$ des fibres (le nombre de pattes par mouton). C'est la base des raisonnements par quotient.
- **Lien avec les partitions** : La famille d'ensembles $\{ f^{-1}(\{y\}) \}_{y \in F}$ forme une partition de $E$. Le principe général n'est donc qu'une reformulation du principe d'addition pour cette partition spécifique.
- **Application en algèbre** : Ce principe est fondamental en théorie des groupes, notamment dans la preuve du théorème de Lagrange.

### Exemples

**Exemple 1**

Combien y a-t-il de façons de disposer $n$ personnes autour d'une table circulaire, si les dispositions sont considérées identiques à rotation près ?

Soit $E$ l'ensemble des permutations linéaires des $n$ personnes, $|E| = n!$.

Soit $F$ l'ensemble des dispositions circulaires.

On définit une application $f: E \to F$ qui associe à une permutation linéaire la disposition circulaire correspondante.

Pour une disposition circulaire donnée, il y a $n$ permutations linéaires qui lui correspondent (en choisissant l'une des $n$ personnes comme "début" de la ligne). Donc, pour tout $y \in F$, $|f^{-1}(\{y\})|=n$.

Par le principe des bergers, $|E| = n \cdot |F|$, donc $|F| = |E|/n = n!/n = (n-1)!$.

**Exemple 2**

Combien d'anagrammes distinctes peut-on former avec les lettres du mot "CELLULE" ?

Le mot a 7 lettres: C(1), E(2), L(3), U(1).

Soit $E$ l'ensemble des permutations des 7 lettres si on les supposait toutes distinctes (e.g., $C_1 E_1 L_1 L_2 U_1 L_3 E_2$). $|E|=7!$.

Soit $F$ l'ensemble des anagrammes distinctes.

On définit $f: E \to F$ qui "oublie" les indices.

Pour une anagramme donnée, par exemple "CELLULE", combien de permutations dans $E$ lui correspondent ? On peut permuter les deux E de $2!$ façons, et les trois L de $3!$ façons. La taille de chaque fibre est donc $p = 1! \cdot 2! \cdot 3! \cdot 1! = 12$.

Par le principe des bergers, $|F| = |E|/p = 7! / (2! \cdot 3!) = 420$.

**Exemple 3 (Théorème de Lagrange)**

Soit $G$ un groupe fini et $H$ un sous-groupe de $G$. Alors l'ordre de $H$ divise l'ordre de $G$.

***Preuve*** : Soit l'ensemble des classes à gauche $G/H = \{gH \mid g \in G\}$. Soit $f: G \to G/H$ l'application $f(g)=gH$. Cette application est surjective par définition. Les fibres sont les classes elles-mêmes : $f^{-1}(\{gH\}) = gH$. Toutes les classes ont le même cardinal que $H$, soit $|H|$.

En appliquant le principe des bergers (cas régulier), on a $|G| = |H| \cdot |G/H|$. Ainsi, $|H|$ divise $|G|$.

### Contre-exemples

**Contre-exemple 1**

On ne peut pas appliquer la formule de division si les fibres n'ont pas la même taille. Soit $E=\{a,b,c,d\}$ et $F=\{1,2\}$. Soit $f: E \to F$ définie par $f(a)=1, f(b)=1, f(c)=1, f(d)=2$. Les fibres sont $f^{-1}(\{1\})=\{a,b,c\}$ de taille 3 et $f^{-1}(\{2\})=\{d\}$ de taille 1. On doit utiliser la forme générale : $|E|=|f^{-1}(\{1\})| + |f^{-1}(\{2\})| = 3+1=4$.

**Contre-exemple 2**

L'application doit être bien définie. Si on essaie de compter les paires non ordonnées de $\{1,2,3,4\}$ en partant des couples ordonnés sans répétition (taille $4 \times 3=12$), on peut définir une application $f((a,b))=\{a,b\}$. Chaque paire $\{a,b\}$ a exactement 2 antécédents, $(a,b)$ et $(b,a)$. La formule $12 = 2 \cdot |F|$ donne $|F|=6$, ce qui est correct. Si l'on inclut les couples avec répétition comme $(1,1)$, la fibre pour $\{1,1\}$ est juste $\{(1,1)\}$, de taille 1. Le principe de division ne s'applique pas directement à l'ensemble de tous les couples.

### Concepts liés

- **Théorie des groupes** : Action de groupe, orbites, stabilisateurs. Le Théorème orbite-stabilisateur est une généralisation du principe des bergers.
- **Topologie** : Revêtements. Si $p: \tilde{X} \to X$ est un revêtement à $k$ feuillets, alors pour tout ensemble "gentil" $A \subset X$, on a $|\text{aire}|(p^{-1}(A)) = k \cdot |\text{aire}|(A)$.

---

## Concept 6: Principe de multiplication

### Prérequis

- Produit cartésien d'ensembles
- Principe des bergers

### Définition

**(Corollaire 1.20)** Soient $E_1, \dots, E_n$ des ensembles finis. Le cardinal de leur produit cartésien est le produit de leurs cardinaux :

$$ |E_1 \times E_2 \times \cdots \times E_n| = \prod_{i=1}^n |E_i| $$

Ce principe est souvent formulé en termes de tâches séquentielles : si une procédure peut être décomposée en $n$ étapes successives, et que l'étape $i$ peut être réalisée de $k_i$ manières (indépendamment des choix précédents), alors la procédure complète peut être réalisée de $k_1 \cdot k_2 \cdots k_n$ manières.

### Propriétés Clés

- **Comptage de structures ordonnées** : Ce principe est la clé pour compter des structures où l'ordre des éléments importe (tuples, séquences, permutations, mots).
- **Preuve par récurrence ou par le principe des bergers** : La preuve pour $n=2$ (Proposition 1.19) utilise le principe des bergers sur la projection $f: E \times F \to F$, où les fibres sont toutes de taille $|E|$. Le cas général suit par une simple récurrence.
- **Arbres de décision** : Le principe peut être visualisé par un arbre de décision où chaque niveau correspond à une étape. Le nombre total de feuilles de l'arbre est le produit du nombre de branches à chaque niveau.

### Exemples

**Exemple 1**

Soient $E, F$ des ensembles finis avec $|E|=n, |F|=m$. Le nombre de fonctions de $E$ dans $F$ est $m^n$.

***Démonstration*** : Soit $E=\{x_1, \dots, x_n\}$. Définir une fonction $f:E \to F$ revient à choisir une image $f(x_1) \in F$, puis une image $f(x_2) \in F$, et ainsi de suite jusqu'à $f(x_n) \in F$. Chaque choix est indépendant et peut être fait de $|F|=m$ manières. Il y a $n$ choix à faire. Le nombre total de fonctions est donc $m \times m \times \cdots \times m$ ($n$ fois), soit $m^n$. Formellement, on établit une bijection entre l'ensemble des fonctions $F^E$ et le produit cartésien $F^n$.

**Exemple 2**

Le nombre d'injections d'un ensemble de cardinal $n$ dans un ensemble de cardinal $m$ ($n \le m$) est l'arrangement $A_m^n = \frac{m!}{(m-n)!}$.

***Démonstration*** : Soit $E=\{x_1, \dots, x_n\}$. Pour définir une injection $f:E \to F$, on choisit $f(x_1)$ de $m$ façons. Puis $f(x_2)$ doit être différent de $f(x_1)$, donc on a $m-1$ choix. Pour $f(x_i)$, on a $m-(i-1)$ choix. Le nombre total d'injections est donc $m(m-1)\cdots(m-n+1) = A_m^n$.

**Exemple 3**

Combien y a-t-il de diviseurs positifs de l'entier $N=72$ ?

La décomposition en facteurs premiers de $N$ est $72 = 2^3 \cdot 3^2$. Un diviseur de $N$ est de la forme $2^a \cdot 3^b$ avec $0 \le a \le 3$ et $0 \le b \le 2$. Choisir un diviseur revient à choisir un exposant pour 2 (parmi $\{0,1,2,3\}$, 4 choix) et un exposant pour 3 (parmi $\{0,1,2\}$, 3 choix). Par le principe de multiplication, le nombre de diviseurs est $4 \times 3 = 12$.

### Contre-exemples

**Contre-exemple 1**

Les choix ne sont pas indépendants. Combien de mots de 3 lettres distinctes peut-on former avec l'alphabet $\{a,b,c\}$ ?

Premier choix : 3 lettres. Deuxième choix : 2 lettres. Troisième choix : 1 lettre. Total : $3 \times 2 \times 1 = 6$. Un raisonnement naïf "3 choix pour la première, 3 pour la seconde, 3 pour la troisième" donnerait $3^3=27$, ce qui compte les mots avec répétitions. Le principe s'applique, mais le nombre de choix à une étape dépend des choix précédents (mais seulement de manière à réduire l'ensemble des options, pas à en changer la nature). C'est le cas de l'exemple 2.

**Contre-exemple 2**

L'ordre ne compte pas. Combien de paires de fruits peut-on choisir parmi {pomme, banane, orange} ?

Le principe de multiplication donne $3 \times 2 = 6$ paires ordonnées. Mais {pomme, banane} est la même paire que {banane, pomme}. Le principe de multiplication seul surcompte. Il faut le combiner au principe des bergers pour diviser par le nombre de permutations ($2!$), donnant $6/2=3$ paires.

### Concepts liés

- **Combinations et Arrangements** : Le principe de multiplication est utilisé pour dériver les formules pour les arrangements ($A_m^n$) et, combiné au principe des bergers, pour les combinaisons ($\binom{n}{k}$).
- **Probabilités d'événements indépendants** : Si des événements sont indépendants, la probabilité de leur intersection est le produit de leurs probabilités.

---

## Concept 7: Équipotence et Ensembles Dénombrables

### Prérequis

- Théorie des ensembles, fonctions (injection, bijection)
- Ensembles finis et infinis

### Définition

- **Équipotence** : Deux ensembles $E$ et $F$ sont dits **équipotents** s'il existe une bijection entre eux. On note $E \sim F$ ou $|E|=|F|$.

- **Ensemble infini dénombrable** : Un ensemble $E$ est dit infini dénombrable s'il est équipotent à l'ensemble des entiers naturels $\mathbb{N}$. Son cardinal est noté $\aleph_0$ (aleph-zéro).

- **Ensemble dénombrable** : Un ensemble est dit dénombrable s'il est fini ou infini dénombrable.

- **Ensemble non dénombrable** : Un ensemble infini qui n'est pas dénombrable.

### Propriétés Clés

- **Théorème de Cantor-Bernstein (Théorème 1.24)** : Soient $E, F$ deux ensembles. S'il existe une injection de $E$ dans $F$ et une injection de $F$ dans $E$, alors $E$ et $F$ sont équipotents. C'est un outil très puissant pour prouver l'équipotence sans construire explicitement une bijection.

- **Stabilité de la dénombrabilité** :
    - Tout sous-ensemble d'un ensemble dénombrable est dénombrable (Corollaire 1.28).
    - L'union d'une famille finie ou dénombrable d'ensembles dénombrables est dénombrable.
    - Le produit cartésien d'un nombre fini d'ensembles dénombrables est dénombrable.

- **Théorème de Cantor (Théorème 1.30)** : Pour tout ensemble $E$, il n'existe pas de surjection de $E$ dans son ensemble des parties $P(E)$. Par conséquent, $E$ et $P(E)$ ne sont jamais équipotents. Cela implique qu'il existe une hiérarchie infinie de cardinaux infinis.
    - ***Démonstration (argument diagonal)*** : Soit $f: E \to P(E)$ une application quelconque. Considérons l'ensemble "diagonal" $A = \{x \in E \mid x \notin f(x) \}$. Cet ensemble $A$ est un élément de $P(E)$. Montrons qu'il ne peut pas être l'image d'un élément de $E$ par $f$. Supposons par l'absurde qu'il existe $y \in E$ tel que $f(y)=A$.
        - Si $y \in A$, alors par définition de $A$, $y \notin f(y)$. Mais comme $f(y)=A$, cela signifie $y \notin A$. Contradiction.
        - Si $y \notin A$, alors par définition de $A$, $y \in f(y)$. Mais comme $f(y)=A$, cela signifie $y \in A$. Contradiction.
    - Dans tous les cas, on aboutit à une contradiction. Donc $A$ n'a pas d'antécédent par $f$, et $f$ n'est pas surjective.

### Exemples

**Exemple 1**

Les ensembles $\mathbb{N}$, $\mathbb{Z}$ et $2\mathbb{N}=\{0,2,4,\dots\}$ sont tous dénombrables et équipotents.

- $f: \mathbb{N} \to 2\mathbb{N}$ par $f(n)=2n$ est une bijection.
- $g: \mathbb{N} \to \mathbb{Z}$ par $g(n) = (-1)^n \lceil n/2 \rceil$ est une bijection (ou celle de la Proposition 1.26).

**Exemple 2**

L'ensemble $\mathbb{Q}$ des nombres rationnels est dénombrable.

***Démonstration (esquisse)*** : On peut construire une injection de $\mathbb{Q}$ dans $\mathbb{Z} \times \mathbb{N}^*$ en associant à chaque rationnel sa forme irréductible $p/q$. Comme $\mathbb{Z}$ et $\mathbb{N}^*$ sont dénombrables, leur produit $\mathbb{Z} \times \mathbb{N}^*$ l'est aussi. On a donc une injection de $\mathbb{Q}$ dans un ensemble dénombrable. Comme $\mathbb{N} \subset \mathbb{Q}$, on a une injection de $\mathbb{N}$ dans $\mathbb{Q}$. Par le théorème de Cantor-Bernstein, $\mathbb{Q}$ est équipotent à $\mathbb{N}$.

**Exemple 3**

L'ensemble $\mathbb{R}$ des nombres réels n'est pas dénombrable.

***Démonstration*** : Par le théorème de Cantor, $P(\mathbb{N})$ n'est pas dénombrable. On montre que $\mathbb{R}$ est équipotent à $P(\mathbb{N})$. Il suffit de montrer que l'intervalle $[0,1]$ n'est pas dénombrable. On utilise un argument diagonal de Cantor sur les développements binaires des nombres de $[0,1]$. Si une énumération $r_1, r_2, \dots$ de tous les réels de $[0,1]$ existait, on pourrait construire un nouveau réel $r$ dont la $n$-ième décimale binaire diffère de celle de $r_n$, contredisant l'exhaustivité de la liste.

### Contre-exemples

**Contre-exemple 1**

Un ensemble infini n'est pas nécessairement dénombrable. Comme vu ci-dessus, $\mathbb{R}$ et $P(\mathbb{N})$ sont des ensembles infinis non dénombrables. Le cardinal de $\mathbb{R}$ est appelé la puissance du continu, noté $\mathfrak{c}$.

**Contre-exemple 2**

L'union d'une famille non dénombrable d'ensembles peut ne pas être dénombrable. Par exemple, $\mathbb{R} = \bigcup_{x \in \mathbb{R}} \{x\}$. C'est une union non dénombrable d'ensembles finis (donc dénombrables), et le résultat est non dénombrable.

### Concepts liés

- **Hypothèse du continu** : L'affirmation qu'il n'existe aucun ensemble de cardinalité strictement comprise entre celle de $\mathbb{N}$ ($\aleph_0$) et celle de $\mathbb{R}$ ($\mathfrak{c}$). Il a été prouvé que cette hypothèse est indécidable dans le système d'axiomes ZFC.
- **Cardinaux transfinis** : La théorie des ensembles de Cantor définit une arithmétique des cardinaux infinis ($\aleph_0, \aleph_1, \dots$, et $\mathfrak{c}$).
- **Calculabilité** : L'ensemble de tous les programmes informatiques (ou machines de Turing) est dénombrable. Cela implique qu'il existe des fonctions non calculables, puisque l'ensemble de toutes les fonctions de $\mathbb{N}$ dans $\mathbb{N}$ n'est pas dénombrable.
