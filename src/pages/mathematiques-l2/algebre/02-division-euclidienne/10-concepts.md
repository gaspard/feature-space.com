---
id: 43c0a295
type: concepts
order: 10
title: Division euclidienne
tags:
  - algèbre
  - anneau
  - division euclidienne
  - polynôme
  - idéal
  - bézout
course: Algèbre
courseId: 3b74b601
chapter: Division euclidienne
chapterId: e5009a65
level: regular
createdAt: '2025-10-12T20:59:11.112Z'
---
# Division euclidienne (A)

---

## Concept 1: L'algèbre des polynômes sur un anneau

### Prérequis

-   **Anneau commutatif** : Connaissance de la structure d'anneau (deux opérations, addition et multiplication, avec leurs propriétés) et de la commutativité de la multiplication.
-   **Morphisme d'anneaux** : Compréhension de ce qu'est une application entre deux anneaux qui préserve leurs structures.
-   **Anneau intègre** : Savoir qu'un anneau est intègre s'il est commutatif, non nul, et si le produit de deux éléments non nuls est toujours non nul ($ab=0 \implies a=0$ ou $b=0$).

### Définition

Soit $A$ un anneau commutatif. Un **polynôme à coefficients dans A** est une somme formelle de la forme :

$$

P(X) = \sum_{n \in \mathbb{N}} a_n X^n = a_0 + a_1 X + a_2 X^2 + \dots

$$

où les coefficients $a_n$ sont des éléments de $A$ et sont tous nuls sauf un nombre fini d'entre eux. L'ensemble de ces polynômes est noté $A[X]$.

Les opérations sur $A[X]$ sont définies comme suit :

-   **Addition** : Si $P(X) = \sum a_n X^n$ et $Q(X) = \sum b_n X^n$, alors

    $$

    P(X) + Q(X) = \sum_{n \in \mathbb{N}} (a_n + b_n) X^n

    $$

-   **Multiplication** :

    $$

    P(X) \cdot Q(X) = \sum_{n \in \mathbb{N}} \left(\sum_{p+q=n} a_p b_q\right) X^n

    $$

Le **degré** d'un polynôme non nul $P$, noté $\text{deg}(P)$, est le plus grand entier $n$ tel que $a_n \ne 0$. Le coefficient $a_{\text{deg}(P)}$ est appelé le **coefficient dominant**. Par convention, le degré du polynôme nul est $-\infty$.

### Explications Détaillées

Un polynôme n'est pas une fonction, mais un objet algébrique formel. L'indéterminée $X$ n'est pas une variable qui prend des valeurs ; c'est un symbole qui nous aide à organiser les coefficients. L'idée principale est que nous manipulons des listes finies de coefficients $(a_0, a_1, \dots, a_d)$ et que les règles d'addition et de multiplication sont conçues pour que les opérations sur ces listes se comportent de manière naturelle.

-   L'**addition** est simple : on additionne les coefficients des termes de même puissance. C'est comme additionner des vecteurs composante par composante.
-   La **multiplication** est une généralisation de la distributivité que l'on connaît. Le coefficient du terme en $X^n$ dans le produit $P(X)Q(X)$ est obtenu en sommant tous les produits $a_p b_q$ où les puissances s'additionnent pour donner $n$ (i.e., $p+q=n$).

L'ensemble $A[X]$ muni de ces deux opérations forme un nouvel anneau commutatif. C'est aussi une **A-algèbre**, ce qui signifie qu'il existe un morphisme naturel de $A$ dans $A[X]$ (envoyant $a \in A$ sur le polynôme constant $aX^0$), nous permettant de multiplier un polynôme par un élément de $A$.

### Propriétés Clés

Soient $P, Q \in A[X]$.

-   **Degré de la somme** : $\text{deg}(P+Q) \le \max(\text{deg}(P), \text{deg}(Q))$. L'égalité a lieu si $\text{deg}(P) \ne \text{deg}(Q)$. Si $\text{deg}(P) = \text{deg}(Q)$, les coefficients dominants peuvent s'annuler, faisant chuter le degré.
-   **Degré du produit** : $\text{deg}(PQ) \le \text{deg}(P) + \text{deg}(Q)$.
-   **Cas d'un anneau intègre** : Si $A$ est un anneau intègre, alors le produit des coefficients dominants (non nuls) de $P$ et $Q$ est non nul. Dans ce cas, l'inégalité devient une égalité :

    $$ \text{deg}(PQ) = \text{deg}(P) + \text{deg}(Q) $$

-   **Éléments inversibles** : Si $K$ est un corps, les éléments inversibles de $K[X]$ sont les polynômes constants non nuls, c'est-à-dire les éléments de $K^\times = K \setminus \{0\}$.

### Exemples

**Exemple 1 : Addition dans $\mathbb{Z}[X]$**

Soient $P(X) = 3X^2 - X + 5$ et $Q(X) = -3X^2 + 4X - 2$ dans $\mathbb{Z}[X]$.

$$

P(X) + Q(X) = (3-3)X^2 + (-1+4)X + (5-2) = 3X + 3

$$

Ici, $\text{deg}(P)=2, \text{deg}(Q)=2$ et $\text{deg}(P+Q)=1$. On voit que $\text{deg}(P+Q) < \max(\text{deg}(P), \text{deg}(Q))$ car les coefficients dominants se sont annulés.

**Exemple 2 : Multiplication dans $\mathbb{R}[X]$**

Soient $P(X) = 2X+1$ et $Q(X) = X^2-3X+1$ dans $\mathbb{R}[X]$.

$$

\begin{align*} P(X)Q(X) &= (2X+1)(X^2-3X+1) \\ &= 2X(X^2-3X+1) + 1(X^2-3X+1) \\ &= (2X^3 - 6X^2 + 2X) + (X^2 - 3X + 1) \\ &= 2X^3 - 5X^2 - X + 1 \end{align*}

$$

Comme $\mathbb{R}$ est un corps (donc un anneau intègre), on a $\text{deg}(PQ) = \text{deg}(P) + \text{deg}(Q)$, soit $3 = 1+2$.

**Exemple 3 : Multiplication dans $(\mathbb{Z}/6\mathbb{Z})[X]$**

Soient $P(X) = 2X+1$ et $Q(X) = 3X+2$ dans $(\mathbb{Z}/6\mathbb{Z})[X]$. Les coefficients sont des classes de congruence modulo 6.

$$

\begin{align*} P(X)Q(X) &= (2X+1)(3X+2) \\ &= (2 \cdot 3) X^2 + (2 \cdot 2 + 1 \cdot 3) X + (1 \cdot 2) \\ &= 6X^2 + (4+3)X + 2 \\ &= 0X^2 + 7X + 2 \\ &= X+2 \pmod 6 \end{align*}

$$

Ici, $\text{deg}(P)=1, \text{deg}(Q)=1$, mais $\text{deg}(PQ)=1$. On a $\text{deg}(PQ) < \text{deg}(P) + \text{deg}(Q)$ car l'anneau $\mathbb{Z}/6\mathbb{Z}$ n'est pas intègre ($2 \cdot 3 = 6 \equiv 0 \pmod 6$).

### Contre-exemples

1.  **Série formelle** : L'objet $S(X) = \sum_{n=0}^{\infty} X^n = 1 + X + X^2 + \dots$ n'est pas un polynôme car il a une infinité de coefficients non nuls. C'est une série formelle.
2.  **Fonction polynomiale vs Polynôme** : Dans un anneau fini, deux polynômes différents peuvent définir la même fonction. Par exemple, dans $(\mathbb{Z}/2\mathbb{Z})[X]$, les polynômes $P(X) = X^2+X$ et $Q(X)=0$ sont différents, mais les fonctions associées sont identiques car $f_P(0)=0^2+0=0=f_Q(0)$ et $f_P(1)=1^2+1=0=f_Q(1)$.

### Concepts Liés

-   **Anneau euclidien** : L'anneau $K[X]$ (où $K$ est un corps) est un exemple fondamental d'anneau euclidien, avec le degré comme fonction stathme.
-   **Polynôme minimal** : La structure d'algèbre de $M_n(K)$ permet d'évaluer des polynômes en une matrice, ce qui est la base de la définition du polynôme minimal.

---

## Concept 2: Anneau euclidien

### Prérequis

-   **Anneau intègre** : Un anneau commutatif non-trivial sans diviseur de zéro.
-   **Divisibilité** : La notion de $a$ divise $b$ (noté $a|b$) si $b=aq$ pour un certain $q$.

### Définition

Un **anneau euclidien** est un anneau intègre $A$ muni d'une fonction $\delta : A \to \mathbb{N} \cup \{-\infty\}$, appelée **stathme euclidien**, qui satisfait aux trois conditions suivantes :

1.  Pour tout $a \in A$, $\delta(a) = -\infty$ si et seulement si $a=0$.
2.  Pour tout $a \in A$ et tout $b \in A \setminus \{0\}$, il existe un quotient $q \in A$ et un reste $r \in A$ tels que :

    $$ a = bq + r \quad \text{et} \quad \delta(r) < \delta(b) $$

    C'est le principe de la **division euclidienne**.

3.  Pour tous $a, b \in A \setminus \{0\}$, on a $\delta(ab) \ge \delta(b)$.

### Explications Détaillées

L'idée d'un anneau euclidien est de généraliser la division avec reste que nous connaissons bien dans les nombres entiers. Pour cela, on a besoin d'une façon de "mesurer" la "taille" des éléments de l'anneau. C'est le rôle du stathme $\delta$.

-   La **condition 1** est une convention pour gérer le cas de l'élément nul. L'élément nul est considéré comme "le plus petit possible".
-   La **condition 2** est le cœur de la définition. Elle garantit que pour n'importe quel dividende $a$ et diviseur non nul $b$, on peut trouver un reste $r$ qui est "strictement plus petit" que le diviseur $b$, au sens du stathme $\delta$. C'est cette propriété qui permet de mettre en place des algorithmes, comme l'algorithme d'Euclide.
-   La **condition 3** est une condition de compatibilité entre la multiplication et le stathme. Elle assure que multiplier un élément non nul par un autre élément non nul ne peut pas "réduire sa taille". Cela empêche des situations pathologiques et est souvent une conséquence de $\delta(ab) = \delta(a)+\delta(b)$ ou d'autres propriétés similaires.

Un anneau qui possède une telle structure est très "régulier" et partage de nombreuses propriétés avec l'anneau $\mathbb{Z}$ des entiers.

### Propriétés Clés

-   **Existence de la division** : La propriété la plus importante est l'existence de la division euclidienne, qui est à la base de nombreuses autres propriétés.
-   **Relation avec les anneaux principaux** : Tout anneau euclidien est un anneau principal. C'est un résultat fondamental qui montre la force de la structure euclidienne. La preuve repose sur le choix d'un élément de stathme minimal dans un idéal pour montrer qu'il engendre cet idéal.

### Exemples

**Exemple 1 : L'anneau $\mathbb{Z}$ des entiers**

L'anneau $\mathbb{Z}$ est euclidien avec le stathme $\delta(n) = |n|$ pour $n \neq 0$ et $\delta(0) = -\infty$.

1.  $\delta(n) = -\infty \iff n=0$ (en posant $|0|=-\infty$ par convention, ou en traitant ce cas à part).
2.  Pour $a, b \in \mathbb{Z}$ avec $b \ne 0$, on sait qu'il existe $q,r$ tels que $a=bq+r$ et $0 \le r < |b|$. Donc $\delta(r) = r < |b| = \delta(b)$.
3.  Pour $a, b \in \mathbb{Z} \setminus \{0\}$, on a $|a| \ge 1$, donc $\delta(ab) = |ab| = |a||b| \ge |b| = \delta(b)$.

**Exemple 2 : L'anneau $K[X]$ des polynômes sur un corps $K$**

L'anneau $K[X]$ est euclidien avec le stathme $\delta(P) = \text{deg}(P)$.

1.  $\text{deg}(P) = -\infty \iff P=0$.
2.  La division euclidienne des polynômes garantit l'existence de $Q,R$ tels que $P = BQ+R$ avec $\text{deg}(R) < \text{deg}(B)$.
3.  Pour $P, Q \in K[X] \setminus \{0\}$, on a $\text{deg}(PQ) = \text{deg}(P) + \text{deg}(Q) \ge \text{deg}(P)$ car $\text{deg}(Q) \ge 0$.

**Exemple 3 : L'anneau des entiers de Gauss $\mathbb{Z}[i]$**

L'anneau $\mathbb{Z}[i] = \{a+bi \mid a,b \in \mathbb{Z}\}$ est euclidien avec le stathme $\delta(a+bi) = a^2+b^2 = |a+bi|^2$. La division euclidienne est un peu plus complexe à démontrer mais existe.

### Contre-exemples

1.  **L'anneau $\mathbb{Z}[X]$** : Cet anneau n'est pas euclidien. On ne peut pas, par exemple, effectuer la division euclidienne de $X$ par $2$. Si $X = 2 \cdot Q(X) + R(X)$ avec $\text{deg}(R) < \text{deg}(2)=0$, alors $R$ est une constante. En évaluant en $X=0$, on aurait $0 = 2Q(0)+R$. En évaluant les coefficients de $X$, on a $1 = 2 \times (\text{coeff de X dans } Q)$. Aucune de ces équations n'a de solution dans $\mathbb{Z}$.
2.  **L'anneau $\mathbb{Z}[\sqrt{-5}]$** : Cet anneau, composé des nombres de la forme $a+b\sqrt{-5}$ avec $a,b \in \mathbb{Z}$, n'est pas euclidien. Il n'est même pas principal (ni factoriel), comme le montre l'exemple des deux factorisations de $6 = 2 \cdot 3 = (1+\sqrt{-5})(1-\sqrt{-5})$.

### Concepts Liés

-   **Anneau principal** : Un anneau euclidien est toujours principal. C'est une conséquence directe et très importante de la définition.
-   **Algorithme d'Euclide** : L'existence de la division euclidienne permet d'utiliser l'algorithme d'Euclide pour trouver le plus grand commun diviseur (PGCD) de deux éléments.

---

## Concept 3: Anneau principal

### Prérequis

-   **Anneau commutatif** et **Idéal** : Comprendre ce qu'est un idéal d'un anneau (un sous-groupe additif stable par multiplication par tout élément de l'anneau).

### Définition

Soit $A$ un anneau commutatif.

-   Un **idéal engendré** par un sous-ensemble $X \subset A$, noté $(X)$, est le plus petit idéal de $A$ qui contient $X$. Il est constitué de toutes les combinaisons linéaires finies d'éléments de $X$ à coefficients dans $A$:

    $$ (X) = \left\{ \sum_{i=1}^n a_i x_i \mid n \in \mathbb{N}, a_i \in A, x_i \in X \right\} $$

-   Un idéal $I$ est dit **principal** s'il peut être engendré par un seul élément. C'est-à-dire, il existe $a \in A$ tel que :

    $$ I = (a) = \{ax \mid x \in A\} $$

    L'idéal $(a)$ est l'ensemble de tous les multiples de $a$.

-   Un anneau intègre $A$ est appelé un **anneau principal** si tous ses idéaux sont principaux.

### Explications Détaillées

Un idéal peut être vu comme une généralisation de la notion de "multiples d'un nombre". Dans $\mathbb{Z}$, l'ensemble des multiples de 5, noté $5\mathbb{Z}$, est un idéal. De même pour l'ensemble des multiples de 12. La question est : existe-t-il des idéaux plus compliqués ?

Par exemple, considérons l'ensemble des nombres qui sont à la fois multiples de 10 et de 12. Non, ce n'est pas un idéal. Considérons plutôt l'ensemble des nombres de la forme $10k + 12j$ pour $k,j \in \mathbb{Z}$. Cet ensemble est un idéal, noté $(10, 12)$. En utilisant l'algorithme d'Euclide, on peut montrer que $\text{pgcd}(10,12)=2$, et que cet idéal est en fait l'ensemble de tous les multiples de 2. Donc $(10,12)=(2)$, c'est un idéal principal.

Un anneau est dit "principal" si cette simplification est toujours possible : n'importe quel idéal, même s'il semble être engendré par plusieurs éléments, peut en réalité être engendré par un seul. C'est une propriété de simplicité structurelle très forte.

### Propriétés Clés

-   **Théorème : Euclidien $\implies$ Principal** : Tout anneau euclidien est un anneau principal.

    *Démonstration (idée)* : Soit $I$ un idéal non nul dans un anneau euclidien $A$ avec stathme $\delta$. On choisit un élément $a \in I \setminus \{0\}$ tel que $\delta(a)$ soit minimal. On montre alors que $I=(a)$. En effet, pour tout $b \in I$, on effectue la division euclidienne $b = aq+r$ avec $\delta(r) < \delta(a)$. Comme $r = b-aq$ est dans $I$, et que $\delta(a)$ est minimal pour les éléments non nuls, on doit avoir $r=0$. Donc $b=aq$, ce qui signifie que $b$ est un multiple de $a$. Ainsi, $I \subset (a)$. L'inclusion inverse étant évidente, $I=(a)$.

### Exemples

**Exemple 1 : L'anneau $\mathbb{Z}$**

$\mathbb{Z}$ est un anneau principal. Tout idéal de $\mathbb{Z}$ est de la forme $n\mathbb{Z}$ pour un certain entier $n$. Par exemple, l'idéal engendré par $\{6, 9\}$ est $I = (6,9)$. Un élément de $I$ est de la forme $6k+9j$. Comme $\text{pgcd}(6,9)=3$, cet idéal est en fait $(3) = 3\mathbb{Z}$.

**Exemple 2 : L'anneau $K[X]$ sur un corps $K$**

$K[X]$ est principal car il est euclidien. Tout idéal de $K[X]$ est de la forme $(P)$ pour un certain polynôme $P \in K[X]$. Par exemple, dans $\mathbb{R}[X]$, l'idéal engendré par $X^2-1$ et $X-1$ est $I = (X^2-1, X-1)$. Comme $X^2-1 = (X-1)(X+1)$, tout élément de $I$ est un multiple de $X-1$. Donc $I = (X-1)$.

**Exemple 3 : Un corps $K$**

Tout corps $K$ est un anneau principal. Les seuls idéaux d'un corps sont $(0)$ et $K=(1)$, qui sont tous deux principaux.

### Contre-exemples

1.  **L'anneau $\mathbb{Z}[X]$** : Cet anneau n'est pas principal. Considérons l'idéal $I = (2, X)$, qui contient tous les polynômes de la forme $2P(X) + XQ(X)$. Cet idéal n'est pas principal. S'il l'était, il serait engendré par un polynôme $D(X)$. Alors $D(X)$ devrait diviser 2 (donc $D(X)=\pm 1$ ou $\pm 2$) et $D(X)$ devrait diviser $X$ (donc $D(X)$ est une constante $c$ qui divise 1, i.e., $c=\pm 1$). Si $D(X) = \pm 1$, alors $(D(X)) = \mathbb{Z}[X]$. Or, $I \ne \mathbb{Z}[X]$ (par exemple, le polynôme constant 1 n'est pas dans $I$, car $2P(0)+0\cdot Q(0)$ est toujours pair). Donc $I$ n'est pas principal.
2.  **L'anneau des polynômes à deux variables $K[X, Y]$** : Cet anneau n'est pas principal. L'idéal $I = (X, Y)$ (l'ensemble des polynômes sans terme constant) n'est pas principal.

### Concepts Liés

-   **Anneau euclidien** : Une condition suffisante (mais non nécessaire) pour qu'un anneau soit principal.
-   **PGCD et PPCM** : Dans un anneau principal, le PGCD et le PPCM de deux éléments sont bien définis et peuvent être décrits en termes d'idéaux.
-   **Anneau factoriel** : Tout anneau principal est un anneau factoriel (où la décomposition en facteurs irréductibles est unique).

---

## Concept 4: PGCD, PPCM et Identité de Bézout

### Prérequis

-   **Anneau principal** : Savoir ce qu'est un anneau principal et un idéal principal.
-   **Divisibilité** : $a|b \iff b \in (a) \iff (b) \subset (a)$.
-   **Algorithme d'Euclide** (pour la version algorithmique) : Connaître la procédure pour les entiers.

### Définition

Soit $A$ un anneau principal et $a, b \in A$.

-   Le **Plus Grand Commun Diviseur** (PGCD) de $a$ et $b$ est un générateur de l'idéal somme $(a) + (b)$. On le note $d = \text{pgcd}(a, b)$ et on a :

    $$ (a) + (b) = (a, b) = (d) $$

-   Le **Plus Petit Commun Multiple** (PPCM) de $a$ et $b$ est un générateur de l'idéal intersection $(a) \cap (b)$. On le note $m = \text{ppcm}(a,b)$ et on a :

    $$ (a) \cap (b) = (m) $$

-   Deux éléments $a$ et $b$ sont dits **premiers entre eux** (ou coprimes) si leur PGCD est un élément inversible, c'est-à-dire si $(a,b) = A = (1)$.

**Théorème de Bézout**

Soit $A$ un anneau principal. Un élément $d$ est un PGCD de $a$ et $b$ si et seulement si :

1.  $d$ est un diviseur commun de $a$ et $b$ ($d|a$ et $d|b$).
2.  Il existe deux éléments $u, v \in A$ tels que $d = au + bv$.

En particulier, $a$ et $b$ sont premiers entre eux si et seulement s'il existe $u, v \in A$ tels que $au+bv=1$.

### Explications Détaillées

La définition du PGCD via les idéaux est élégante et puissante. L'idéal $(a,b)$ est l'ensemble de toutes les combinaisons linéaires $\{ax+by \mid x,y \in A\}$. Comme l'anneau est principal, cet idéal est engendré par un seul élément, disons $d$. Cela signifie que tout élément de la forme $ax+by$ est un multiple de $d$. En particulier, $a=a \cdot 1 + b \cdot 0$ et $b=a \cdot 0 + b \cdot 1$ sont des multiples de $d$, donc $d$ est un diviseur commun.

De plus, $d$ lui-même est dans l'idéal, donc il doit pouvoir s'écrire sous la forme $d = au+bv$. C'est précisément l'**identité de Bézout**.

Cette identité est cruciale. Elle transforme une propriété de divisibilité (être le PGCD) en une équation linéaire.

Dans un anneau euclidien, on dispose d'un algorithme constructif, l'**algorithme d'Euclide étendu**, pour trouver non seulement le PGCD $d$, mais aussi les coefficients de Bézout $u$ et $v$. L'algorithme consiste à effectuer des divisions euclidiennes successives et à remonter les calculs pour exprimer chaque reste comme une combinaison linéaire des éléments de départ.

### Propriétés Clés

-   **Unicité** : Le PGCD et le PPCM sont uniques à une multiplication par un élément inversible de l'anneau près. Par exemple, dans $\mathbb{Z}$, le PGCD de 4 et 6 est 2, mais -2 est aussi un PGCD. On choisit conventionnellement le positif. Dans $K[X]$, on choisit le polynôme unitaire.
-   **Relation PGCD-PPCM** : Dans un anneau principal (et intègre), on a la relation $\text{pgcd}(a,b) \cdot \text{ppcm}(a,b)$ est un associé de $ab$.

### Exemples

**Exemple 1 : Algorithme d'Euclide étendu dans $\mathbb{Z}$**

Calculons le PGCD de $a=84$ et $b=30$ et trouvons $u,v$ tels que $84u + 30v = \text{pgcd}(84,30)$.

1.  $84 = 2 \cdot 30 + 24$
2.  $30 = 1 \cdot 24 + 6$
3.  $24 = 4 \cdot 6 + 0$

Le dernier reste non nul est 6, donc $\text{pgcd}(84, 30) = 6$.

Maintenant, remontons les calculs pour trouver $u$ et $v$ :

De la ligne 2 : $6 = 30 - 1 \cdot 24$

De la ligne 1 : $24 = 84 - 2 \cdot 30$

On substitue l'expression de 24 dans l'équation pour 6 :

$6 = 30 - 1 \cdot (84 - 2 \cdot 30) = 30 - 1 \cdot 84 + 2 \cdot 30 = 3 \cdot 30 - 1 \cdot 84$.

On a donc trouvé $6 = (-1) \cdot 84 + 3 \cdot 30$. Les coefficients de Bézout sont $u=-1$ et $v=3$.

**Exemple 2 : Dans $\mathbb{Q}[X]$**

Trouvons le PGCD de $A(X) = X^3-1$ et $B(X) = X^2-1$.

1.  Division de $A$ par $B$ : $X^3 - 1 = X(X^2-1) + X-1$. Le reste est $R_1(X) = X-1$.
2.  Division de $B$ par $R_1$ : $X^2-1 = (X+1)(X-1) + 0$. Le reste est 0.

Le dernier reste non nul est $X-1$, donc $\text{pgcd}(A,B) = X-1$.

L'identité de Bézout est simple ici : $X-1 = A(X) - X \cdot B(X)$. Donc $u=1, v=-X$.

**Exemple 3 : Premiers entre eux**

Les entiers 7 et 15 sont-ils premiers entre eux ?

$15 = 2 \cdot 7 + 1$. Le PGCD est 1.

L'identité de Bézout est $1 = 15 - 2 \cdot 7$. Donc $u=-2, v=1$. Puisqu'on peut écrire 1 comme combinaison linéaire de 7 et 15, ils sont premiers entre eux.

### Contre-exemples

1.  **Dans un anneau non principal** : Dans $\mathbb{Z}[X]$, le PGCD de 2 et $X$ est 1 (car le seul diviseur commun est $\pm 1$). Cependant, on ne peut pas trouver $U(X), V(X) \in \mathbb{Z}[X]$ tels que $2U(X)+XV(X)=1$. En effet, si l'on évalue l'expression en $X=0$, on obtient $2U(0)=1$. C'est impossible car $U(0)$ est un entier.
2.  **Définition du PGCD** : Dans $\mathbb{Z}$, le PGCD de 12 et 18 est 6. L'élément 3 est un diviseur commun, mais il n'est pas le *plus grand* car il ne peut pas s'écrire comme une combinaison linéaire $12u+18v$ (le résultat serait toujours un multiple de 6).

### Concepts Liés

-   **Éléments irréductibles et premiers** : Le lemme d'Euclide ($p|ab$ et $p \nmid a \implies p|b$) est une conséquence directe de l'identité de Bézout pour les éléments irréductibles.
-   **Anneaux quotients** : L'inversibilité d'un élément $\bar{a}$ dans $A/(n)$ est équivalente au fait que $\text{pgcd}(a,n)=1$. La recherche de l'inverse se fait via l'algorithme d'Euclide étendu.

---

## Concept 5: Éléments Premiers et Irréductibles

### Prérequis

-   **Anneau intègre**, **Divisibilité**, **Élément inversible**.

### Définition

Soit $A$ un anneau intègre et $p \in A$ un élément non nul et non inversible.

-   $p$ est dit **irréductible** si, pour toute décomposition $p=ab$ avec $a,b \in A$, l'un des facteurs $a$ ou $b$ doit être un élément inversible.
-   $p$ est dit **premier** si, pour tous $a, b \in A$, la condition $p|ab$ implique que $p|a$ ou $p|b$. (C'est le **lemme d'Euclide** généralisé).

### Explications Détaillées

Ces deux notions tentent de capturer l'idée d'un "atome" pour la multiplication, un élément qui ne peut pas être décomposé davantage.

-   **Irréductible** est une notion de "factorisation". Un élément est irréductible s'il ne peut pas être "cassé" en deux facteurs plus petits (non inversibles). C'est l'analogue direct de la définition usuelle d'un nombre premier dans $\mathbb{Z}$. Par exemple, $6=2 \cdot 3$ n'est pas irréductible, mais 2, 3 et 5 le sont.
-   **Premier** est une notion de "divisibilité". Un élément $p$ est premier si, à chaque fois qu'il divise un produit, il doit obligatoirement diviser l'un des facteurs. Dans $\mathbb{Z}$, si 5 divise $ab$, alors 5 doit diviser $a$ ou $b$. Par contre, 6 divise $3 \cdot 4 = 12$, mais 6 ne divise ni 3 ni 4. Donc 6 n'est pas premier.

Dans de nombreux anneaux familiers comme $\mathbb{Z}$ ou $K[X]$, ces deux notions coïncident. Cependant, ce n'est pas toujours le cas.

### Propriétés Clés

-   Dans un anneau intègre, **tout élément premier est irréductible**.

    *Démonstration* : Soit $p$ premier. Supposons $p=ab$. Alors $p|ab$. Comme $p$ est premier, $p|a$ ou $p|b$. Supposons $p|a$. Alors $a=pc$ pour un $c \in A$. On a donc $p = (pc)b = p(cb)$. Comme $A$ est intègre et $p\neq 0$, on peut simplifier par $p$ pour obtenir $1=cb$. Ceci signifie que $b$ est inversible. Donc $p$ est irréductible.

-   **Lemme d'Euclide** : Dans un anneau euclidien (ou plus généralement principal), **tout élément irréductible est premier**.

    *Démonstration (idée)* : Soit $p$ irréductible, et supposons que $p|ab$ et $p \nmid a$. On doit montrer que $p|b$. Comme $p$ est irréductible et $p \nmid a$, le seul diviseur commun à $p$ et $a$ (à un inversible près) est 1. Donc $\text{pgcd}(p,a)=1$. Par le théorème de Bézout, il existe $u, v \in A$ tels que $au+pv=1$. En multipliant par $b$, on obtient $aub+pvb=b$. Comme $p|ab$, on peut écrire $ab=pk$. Alors $b = (pk)u+pvb = p(ku+vb)$, ce qui montre que $p|b$.

-   **Conclusion** : Dans un anneau euclidien (comme $\mathbb{Z}$ et $K[X]$), les notions d'élément premier et d'élément irréductible sont **équivalentes**.

### Exemples

**Exemple 1 : Dans $\mathbb{Z}$**

L'entier 7 est irréductible car ses seuls diviseurs sont $\pm 1$ et $\pm 7$. Il est aussi premier : si $7|ab$, alors par le théorème de décomposition en facteurs premiers, 7 doit apparaître dans la décomposition de $a$ ou de $b$.

**Exemple 2 : Dans $\mathbb{R}[X]$**

Le polynôme $P(X) = X^2+1$ est irréductible car il n'a pas de racine réelle, et ne peut donc pas se factoriser en produit de deux polynômes de degré 1. Étant dans un anneau euclidien, il est aussi premier.

**Exemple 3 : Dans $\mathbb{Q}[X]$**

Le polynôme $P(X)=X^2-2$ est irréductible. S'il ne l'était pas, il aurait une racine dans $\mathbb{Q}$, ce qui n'est pas le cas ($\sqrt{2}$ est irrationnel).

### Contre-exemples

1.  **Élément réductible** : Dans $\mathbb{Z}$, $10 = 2 \cdot 5$ n'est pas irréductible. Dans $\mathbb{R}[X]$, $X^2-4 = (X-2)(X+2)$ n'est pas irréductible.
2.  **Irréductible mais non premier** : Dans l'anneau $A = \mathbb{Z}[\sqrt{-5}]$, l'élément $p=2$ est irréductible (on peut le vérifier en utilisant la norme). Cependant, $p$ n'est pas premier. On a $6 = (1+\sqrt{-5})(1-\sqrt{-5})$, donc $2$ divise le produit $(1+\sqrt{-5})(1-\sqrt{-5})$. Mais $2$ ne divise ni $1+\sqrt{-5}$ ni $1-\sqrt{-5}$ dans $A$. Ceci est possible car $\mathbb{Z}[\sqrt{-5}]$ n'est pas un anneau principal.

### Concepts Liés

-   **Décomposition en facteurs irréductibles** : Le but de l'identification des éléments irréductibles est de les utiliser comme "briques de base" pour construire tous les autres éléments par multiplication.
-   **Anneau factoriel** : Un anneau intègre où tout élément se décompose de manière unique en produit d'irréductibles. Les anneaux principaux (et donc euclidiens) sont factoriels.

---

## Concept 6: Décomposition en facteurs irréductibles

### Prérequis

-   **Anneau euclidien**, **Élément irréductible**, **Élément inversible**.

### Définition

**Théorème fondamental de l'arithmétique (généralisé)**

Soit $A$ un anneau euclidien. Tout élément $a \in A$ non nul et non inversible peut s'écrire comme un produit fini d'éléments irréductibles :

$$

a = p_1 p_2 \cdots p_n

$$

De plus, cette décomposition est **unique** à l'ordre des facteurs et à la multiplication par des éléments inversibles près (on dit "à l'ordre et aux associés près").

### Explications Détaillées

Ce théorème est l'un des piliers de l'arithmétique. Il nous dit que les éléments irréductibles sont les "atomes" multiplicatifs de l'anneau. Tout élément peut être construit en les multipliant, et il n'y a qu'une seule façon de le faire.

-   **Existence de la décomposition** : On peut prouver l'existence par une récurrence sur la valeur du stathme euclidien $\delta(a)$. Si $a$ est irréductible, c'est terminé. Sinon, $a=bc$ où $b$ et $c$ ne sont pas inversibles. Les conditions sur le stathme assurent que $\delta(b) < \delta(a)$ et $\delta(c) < \delta(a)$. Par hypothèse de récurrence, $b$ et $c$ se décomposent en produits d'irréductibles, et donc $a$ aussi. Ce processus doit s'arrêter car le stathme est à valeurs dans $\mathbb{N}$ et ne peut pas décroître indéfiniment.

-   **Unicité de la décomposition** : L'unicité repose de manière cruciale sur le fait que dans un anneau euclidien, "irréductible" équivaut à "premier" (lemme d'Euclide). Si l'on a deux décompositions $p_1 \cdots p_n = q_1 \cdots q_m$, alors $p_1$ divise le produit des $q_j$. Comme $p_1$ est premier, il doit diviser l'un des $q_j$, disons $q_1$. Puisque $q_1$ est aussi irréductible, cela signifie que $p_1$ et $q_1$ sont associés ($p_1 = u q_1$ avec $u$ inversible). On peut alors simplifier par $p_1$ et continuer le processus par récurrence.

-   **"Aux associés près"** : Cela signifie que les décompositions $12 = 2 \cdot 2 \cdot 3$ et $12 = (-2) \cdot 2 \cdot (-3)$ sont considérées comme identiques dans $\mathbb{Z}$, car $2$ et $-2$ sont associés (diffèrent par un inversible, -1). Pour obtenir une unicité stricte, on impose des conditions : dans $\mathbb{Z}$, on prend les facteurs premiers positifs ; dans $K[X]$, on prend les polynômes irréductibles unitaires (coefficient dominant égal à 1).

### Exemples

**Exemple 1 : Décomposition dans $\mathbb{Z}$**

Soit $n=180$.

$180 = 18 \cdot 10 = (2 \cdot 9) \cdot (2 \cdot 5) = 2 \cdot 3^2 \cdot 2 \cdot 5 = 2^2 \cdot 3^2 \cdot 5$.

Les facteurs irréductibles (premiers) sont 2, 3, 5. La décomposition est unique si l'on n'utilise que des nombres premiers positifs.

**Exemple 2 : Décomposition dans $\mathbb{R}[X]$**

Soit $P(X) = X^4 - 1$.

$P(X) = (X^2-1)(X^2+1) = (X-1)(X+1)(X^2+1)$.

Les facteurs $(X-1)$, $(X+1)$ et $(X^2+1)$ sont irréductibles dans $\mathbb{R}[X]$. $(X^2+1)$ est irréductible car il n'a pas de racine réelle.

**Exemple 3 : Décomposition dans $\mathbb{C}[X]$**

Reprenons $P(X) = X^4 - 1$. Dans $\mathbb{C}[X]$, le polynôme $X^2+1$ n'est plus irréductible car il a des racines $i$ et $-i$.

$P(X) = (X-1)(X+1)(X-i)(X+i)$.

C'est la décomposition en facteurs irréductibles dans $\mathbb{C}[X]$ (les seuls polynômes irréductibles de $\mathbb{C}[X]$ sont de degré 1).

### Contre-exemples

1.  **Non-unicité de la décomposition** : Dans l'anneau $\mathbb{Z}[\sqrt{-5}]$, on a deux décompositions distinctes de 6 en facteurs irréductibles :

    $$ 6 = 2 \cdot 3 \quad \text{et} \quad 6 = (1+\sqrt{-5})(1-\sqrt{-5}) $$

    On peut montrer que 2, 3, $1+\sqrt{-5}$ et $1-\sqrt{-5}$ sont tous irréductibles dans cet anneau, et qu'ils ne sont pas associés. Cet anneau n'est pas factoriel (et donc ni principal, ni euclidien).

2.  **Un élément sans décomposition finie** : Ce cas ne se produit pas dans les anneaux euclidiens grâce au stathme. Dans des anneaux plus généraux (non noethériens), il est possible qu'un élément puisse être factorisé indéfiniment sans jamais atteindre des facteurs irréductibles.

### Applications

-   **Théorie des nombres** : La décomposition en facteurs premiers est la base de presque toute l'arithmétique (résolution d'équations diophantiennes, cryptographie RSA, etc.).
-   **Algèbre** : La décomposition de polynômes permet de trouver leurs racines, de simplifier des fractions rationnelles et d'étudier les structures d'anneaux quotients.

---

## Concept 7: Polynôme minimal d'un endomorphisme

### Prérequis

-   **Algèbre linéaire** : Espaces vectoriels, endomorphismes, matrices.
-   **Anneau de polynômes $K[X]$** et le fait qu'il est **principal**.
-   **Morphisme d'anneaux**.

### Définition

Soit $K$ un corps, $E$ un $K$-espace vectoriel de dimension finie $n$, et $u$ un endomorphisme de $E$ (ou $A \in M_n(K)$ une matrice carrée).

1.  Le **morphisme d'évaluation** en $u$ est l'application $\text{ev}_u : K[X] \to \text{End}(E)$ définie par :

    $$ \text{ev}_u(P) = P(u) \quad \text{où } P(X) = \sum_{k=0}^d a_k X^k \implies P(u) = \sum_{k=0}^d a_k u^k $$

    (avec $u^0 = \text{Id}$). C'est un morphisme d'algèbres.

2.  L'**idéal annulateur** de $u$, noté $\text{Ann}(u)$, est le noyau de ce morphisme. C'est un idéal de $K[X]$.

    $$ \text{Ann}(u) = \{ P \in K[X] \mid P(u) = 0 \} $$

3.  Comme $K[X]$ est un anneau principal, l'idéal $\text{Ann}(u)$ est non nul et principal. Le **polynôme minimal** de $u$, noté $M_u(X)$, est l'unique générateur unitaire (coefficient dominant égal à 1) de l'idéal annulateur $\text{Ann}(u)$.

### Explications Détaillées

L'idée est de créer un pont entre les polynômes et l'algèbre linéaire. On peut "appliquer" un polynôme à une matrice ou à un endomorphisme. Par exemple, si $P(X)=X^2-2X+3$ et $A$ est une matrice, $P(A)$ est la matrice $A^2 - 2A + 3I_n$.

L'ensemble de tous les polynômes qui "annulent" une matrice $A$ (qui donnent la matrice nulle) forme un idéal. Le fait que l'espace des matrices $M_n(K)$ soit de dimension finie ($n^2$) garantit que cet idéal n'est pas réduit à $\{0\}$. En effet, la famille de matrices $(I, A, A^2, \dots, A^{n^2})$ contient $n^2+1$ éléments dans un espace de dimension $n^2$, elle est donc forcément liée. Il existe donc une combinaison linéaire nulle, ce qui correspond à un polynôme annulateur non nul.

Puisque nous sommes dans l'anneau $K[X]$ qui est principal, cet idéal peut être décrit par un seul polynôme, le plus "petit" en un sens. On l'appelle le polynôme minimal. C'est le polynôme unitaire de plus bas degré qui annule $A$. Tous les autres polynômes qui annulent $A$ sont des multiples du polynôme minimal.

### Propriétés Clés

-   **Existence et unicité** : Pour tout endomorphisme en dimension finie, le polynôme minimal existe et est unique.
-   **Divisibilité** : Pour tout polynôme $P \in K[X]$, on a $P(u)=0$ si et seulement si $M_u(X)$ divise $P(X)$.
-   **Théorème de Cayley-Hamilton** : Le polynôme caractéristique $\chi_u(X)$ de $u$ est un polynôme annulateur de $u$. Par conséquent, le polynôme minimal $M_u(X)$ divise toujours le polynôme caractéristique $\chi_u(X)$.
-   **Racines** : Les racines du polynôme minimal sont exactement les valeurs propres de l'endomorphisme $u$.

### Exemples

**Exemple 1 : Matrice d'homothétie**

Soit $A = \begin{pmatrix} 3 & 0 \\ 0 & 3 \end{pmatrix} = 3I_2$.

On a $A - 3I_2 = 0$. Le polynôme $P(X) = X-3$ est un polynôme annulateur. Il est unitaire et de degré 1. Comme $A$ n'est pas un multiple de l'identité pour un autre scalaire, le polynôme minimal ne peut pas être de degré inférieur. Donc $M_A(X) = X-3$.

Le polynôme caractéristique est $\chi_A(X) = (X-3)^2$. On voit bien que $M_A(X)$ divise $\chi_A(X)$.

**Exemple 2 : Matrice nilpotente**

Soit $A = \begin{pmatrix} 0 & 1 \\ 0 & 0 \end{pmatrix}$.

On calcule les puissances de A : $A^2 = \begin{pmatrix} 0 & 0 \\ 0 & 0 \end{pmatrix} = 0$.

Le polynôme $P(X)=X^2$ est un polynôme annulateur.

Est-ce le minimal ? On cherche un polynôme de degré 1 : $Q(X) = X+c$. $Q(A)=A+cI = \begin{pmatrix} c & 1 \\ 0 & c \end{pmatrix} \ne 0$ pour tout $c$.

Donc, il n'y a pas de polynôme annulateur de degré 1. Le polynôme minimal est $M_A(X) = X^2$.

**Exemple 3 : Matrice de projection**

Soit $P = \begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix}$. C'est une projection.

On a $P^2=P$, donc $P^2-P=0$. Le polynôme $Q(X) = X^2-X = X(X-1)$ est un polynôme annulateur.

Est-ce le minimal ? Les diviseurs unitaires de $Q(X)$ sont $X$ et $X-1$.

$P \ne 0$, donc $X$ n'annule pas $P$. $P-I \ne 0$, donc $X-1$ n'annule pas $P$.

Le polynôme minimal est donc $M_P(X) = X(X-1)$.

### Contre-exemples

1.  **Polynôme caractéristique** : Le polynôme caractéristique n'est pas toujours le polynôme minimal. Pour $A=3I_2$ (Exemple 1), $\chi_A(X)=(X-3)^2$ alors que $M_A(X)=X-3$.
2.  **Polynôme non unitaire** : Le polynôme $2X-6$ est aussi un générateur de l'idéal annulateur de $A=3I_2$, mais par convention, on choisit la version unitaire, $X-3$, pour le polynôme minimal.

### Applications

-   **Diagonalisation** : Le polynôme minimal est un outil central pour déterminer si une matrice est diagonalisable. Un endomorphisme $u$ est diagonalisable sur $K$ si et seulement si son polynôme minimal est scindé (se factorise en produits de termes de degré 1) sur $K$ et n'a que des racines simples.
-   **Calcul de puissances de matrices** : Connaître le polynôme minimal permet de simplifier le calcul des puissances élevées d'une matrice. Par exemple, si $M_A(X)=X^2-X-1$, alors $A^2 = A+I$. On peut alors calculer $A^3=A \cdot A^2 = A(A+I) = A^2+A = (A+I)+A = 2A+I$, etc., en gardant toujours un polynôme en $A$ de degré au plus 1.
