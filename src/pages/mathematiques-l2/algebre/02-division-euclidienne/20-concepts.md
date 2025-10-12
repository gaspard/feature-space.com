---
id: 99a29684
type: concepts
order: 20
title: Division euclidienne - concepts (B)
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
level: pro
createdAt: '2025-10-12T20:59:09.006Z'
---
# Division euclidienne (B)

---

## Concept 1: A-algèbre

### Prérequis

-   Anneau
-   Morphisme d'anneaux
-   Centre d'un anneau $Z(B) = \{ z \in B \mid \forall b \in B, zb=bz \}$

### Définition

Soit $A$ un anneau commutatif et $B$ un anneau (pas nécessairement commutatif). Une structure de **$A$-algèbre** sur $B$ est la donnée d'un morphisme d'anneaux $f : A \to B$ tel que l'image de $A$ soit contenue dans le centre de $B$, i.e., $f(A) \subseteq Z(B)$. L'anneau $B$ muni de $f$ est appelé une $A$-algèbre.

Si $B$ est un anneau commutatif, la condition $f(A) \subseteq Z(B)$ est toujours satisfaite. Dans le contexte de ce chapitre où les anneaux sont supposés commutatifs, une $A$-algèbre est simplement un anneau $B$ muni d'un morphisme d'anneaux $f: A \to B$.

Un **morphisme de $A$-algèbres** entre deux $A$-algèbres $(B, f)$ et $(B', f')$ est un morphisme d'anneaux $g: B \to B'$ qui fait commuter le diagramme suivant :

$$

\begin{CD}

A @>f>> B\\

@| @VVgV \\

A @>>f'> B'

\end{CD}

$$

c'est-à-dire tel que $g \circ f = f'$. Si $f$ et $f'$ sont des inclusions canoniques, cela signifie que $g$ restreint à $A$ est l'identité.

### Propriétés Clés

-   **Structure de $A$-module** : Une $A$-algèbre $(B, f)$ est canoniquement munie d'une structure de $A$-module via la multiplication externe définie par $a \cdot b := f(a)b$ pour $a \in A, b \in B$.
-   **Compatibilité des structures** : La multiplication interne de l'anneau $B$ est $A$-bilinéaire : $(a \cdot b_1) b_2 = b_1 (a \cdot b_2) = a \cdot (b_1 b_2)$.
-   **Catégorie des $A$-algèbres** : Les $A$-algèbres et leurs morphismes forment une catégorie, notée $A\text{-}\mathbf{Alg}$.
-   **Produit tensoriel** : Si $B$ et $C$ sont deux $A$-algèbres, leur produit tensoriel $B \otimes_A C$ peut être muni d'une structure de $A$-algèbre (avec une multiplication définie par $(b_1 \otimes c_1)(b_2 \otimes c_2) = (b_1b_2) \otimes (c_1c_2)$). C'est le coproduit dans la catégorie des $A$-algèbres commutatives.

### Exemples

**Exemple 1 : L'algèbre des matrices $M_n(A)$**

Soit $A$ un anneau commutatif. L'anneau des matrices carrées $M_n(A)$ est une $A$-algèbre via le morphisme $f: A \to M_n(A)$ défini par $a \mapsto a \cdot I_n$, où $I_n$ est la matrice identité. L'image $f(A)$ est l'ensemble des matrices scalaires, qui est contenu dans le centre $Z(M_n(A))$. C'est une algèbre non commutative si $n \ge 2$.

**Exemple 2 : Extension de corps**

Toute extension de corps $L/K$ fait de $L$ une $K$-algèbre. Le morphisme $f: K \to L$ est simplement l'injection canonique. Comme $L$ est commutatif, la condition sur le centre est triviale. $L$ est alors un $K$-espace vectoriel.

**Exemple 3 : Algèbre de groupe $A[G]$**

Soit $G$ un groupe (fini pour simplifier) et $A$ un anneau commutatif. L'algèbre de groupe $A[G]$ est l'ensemble des combinaisons linéaires formelles $\sum_{g \in G} a_g g$ avec $a_g \in A$. L'addition est définie composante par composante et la multiplication est étendue par distributivité à partir de la loi de groupe de $G$. $A[G]$ est une $A$-algèbre via $a \mapsto a \cdot 1_G$. Elle est commutative si et seulement si $G$ est abélien.

### Contre-exemples

**Contre-exemple 1**

Soit $B = M_2(\mathbb{C})$ et $A$ le sous-anneau des matrices diagonales. L'injection $i: A \hookrightarrow B$ ne fait pas de $B$ une $A$-algèbre car $A$ n'est pas contenu dans le centre de $B$, qui est $\mathbb{C} \cdot I_2$. Par exemple, $\begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix} \in A$ mais ne commute pas avec $\begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix} \in B$.

**Contre-exemple 2**

Soient $A = \mathbb{Z}$ et $B = \mathbb{H}$ l'anneau des quaternions de Hamilton. Le morphisme canonique $f: \mathbb{Z} \to \mathbb{H}$ donné par $n \mapsto n \cdot 1$ fait de $\mathbb{H}$ une $\mathbb{Z}$-algèbre. Cependant, l'inclusion du sous-corps $\mathbb{C}$ dans $\mathbb{H}$ ne fait pas de $\mathbb{H}$ une $\mathbb{C}$-algèbre, car $\mathbb{C}$ n'est pas dans le centre de $\mathbb{H}$. (Le centre de $\mathbb{H}$ est $\mathbb{R}$).

### Concepts Liés

-   **$A$-module** : Une $A$-algèbre est un $A$-module avec une multiplication interne compatible.
-   **Théorie des représentations** : Une représentation d'un groupe $G$ sur un $K$-espace vectoriel $V$ est équivalente à un morphisme de $K$-algèbres de $K[G]$ vers $\text{End}_K(V)$.

---

## Concept 2: Algèbre de polynômes $A[X]$ et sa propriété universelle

### Prérequis

-   $A$-algèbre
-   Anneau intègre

### Définition

Soit $A$ un anneau commutatif. L'**anneau des polynômes** à une indéterminée $X$ et à coefficients dans $A$, noté $A[X]$, est l'ensemble des suites $(a_n)_{n \in \mathbb{N}}$ d'éléments de $A$ à support fini. Un élément $P = (a_0, a_1, \dots)$ est noté formellement $\sum_{n=0}^\infty a_n X^n$.

L'addition est définie terme à terme:

$$ (\sum a_n X^n) + (\sum b_n X^n) = \sum (a_n + b_n) X^n $$

La multiplication (produit de Cauchy) est définie par :

$$ (\sum a_n X^n) \cdot (\sum b_n X^n) = \sum_{n=0}^\infty c_n X^n \text{, où } c_n = \sum_{k=0}^n a_k b_{n-k} $$

Muni de ces lois, $A[X]$ est une $A$-algèbre commutative via l'injection $a \mapsto aX^0$.

Le **degré** d'un polynôme non nul $P = \sum a_n X^n$ est $\text{deg}(P) = \max\{n \in \mathbb{N} \mid a_n \neq 0\}$. Par convention, $\text{deg}(0) = -\infty$. Le coefficient $a_{\text{deg}(P)}$ est le **coefficient dominant**.

### Propriétés Clés

-   **Propriétés du degré** : Soient $P, Q \in A[X]$.
    1.  $\text{deg}(P+Q) \le \max(\text{deg}(P), \text{deg}(Q))$
    2.  $\text{deg}(PQ) \le \text{deg}(P) + \text{deg}(Q)$

    *Preuve (2)*: Soient $P(X) = \sum a_i X^i$ et $Q(X) = \sum b_j X^j$ de degrés $n$ et $m$. Le coefficient de $X^{n+m}$ dans $PQ$ est $a_n b_m$. Si $A$ est intègre, $a_n \neq 0$ et $b_m \neq 0$ implique $a_n b_m \neq 0$, donc $\text{deg}(PQ) = n+m$. Si $A$ n'est pas intègre, $a_n b_m$ peut être nul, et le degré est alors strictement inférieur.

-   **Unités de $A[X]$** : L'ensemble des éléments inversibles $(A[X])^\times$ est égal à $A^\times$ si $A$ est un anneau intègre.

    *Preuve* : Si $P \in (A[X])^\times$, il existe $Q \in A[X]$ tel que $PQ=1$. Comme $A$ est intègre, $\text{deg}(P) + \text{deg}(Q) = \text{deg}(1) = 0$. Comme les degrés sont des entiers naturels, ceci implique $\text{deg}(P)=\text{deg}(Q)=0$. Donc $P$ et $Q$ sont des constantes non nulles, éléments de $A$. L'inversibilité dans $A[X]$ est alors équivalente à l'inversibilité dans $A$.

-   **Propriété universelle de $A[X]$** : Soit $(B,f)$ une $A$-algèbre et $x \in B$ un élément quelconque qui commute avec tous les éléments de $f(A)$. Alors il existe un unique morphisme de $A$-algèbres $\text{ev}_x : A[X] \to B$ tel que $\text{ev}_x(X) = x$. Ce morphisme est appelé **morphisme d'évaluation** en $x$.

    *Preuve* : L'unicité est claire : si un tel morphisme existe, il doit envoyer $a \in A$ sur $f(a)$ et $X$ sur $x$. Comme tout polynôme est une somme de termes de la forme $a_n X^n$, le morphisme doit être $\text{ev}_x(\sum a_n X^n) = \sum f(a_n) x^n$. L'existence est vérifiée en posant cette formule comme définition et en vérifiant que c'est bien un morphisme d'anneaux, ce qui découle de la distributivité et du fait que $x$ commute avec les $f(a_n)$.

### Exemples

**Exemple 1 : $\mathbb{Z}[X]$**

L'anneau des polynômes à coefficients entiers. C'est un anneau intègre car $\mathbb{Z}$ l'est. Ses unités sont $\{+1, -1\}$. Il n'est pas principal (l'idéal $(2, X)$ n'est pas principal).

**Exemple 2 : $(\mathbb{Z}/6\mathbb{Z})[X]$**

L'anneau des polynômes à coefficients dans $\mathbb{Z}/6\mathbb{Z}$. Cet anneau n'est pas intègre. Par exemple, si $P(X) = 2X+1$ et $Q(X) = 3X$, alors $\text{deg}(P)=1, \text{deg}(Q)=1$.

$P(X)Q(X) = (2X+1)(3X) = 6X^2+3X = 3X$ dans $(\mathbb{Z}/6\mathbb{Z})[X]$.

On a $\text{deg}(PQ) = 1 < \text{deg}(P)+\text{deg}(Q)=2$.

**Exemple 3 : Évaluation dans $M_n(K)$**

Soit $A \in M_n(K)$. La propriété universelle garantit l'existence d'un unique morphisme de $K$-algèbres $\text{ev}_A: K[X] \to M_n(K)$ tel que $P(X) \mapsto P(A)$. Le noyau de ce morphisme, $\text{Ker}(\text{ev}_A)$, est un idéal de $K[X]$, appelé l'idéal annulateur de $A$.

### Contre-exemples

**Contre-exemple 1 : Séries formelles $A[[X]]$**

L'anneau des séries formelles $A[[X]] = \{\sum_{n=0}^\infty a_n X^n\}$ n'est pas l'anneau des polynômes car les suites de coefficients n'ont pas à être de support fini. Par exemple, $\sum_{n=0}^\infty X^n = (1-X)^{-1}$ est une unité dans $\mathbb{Z}[[X]]$, mais pas un polynôme.

**Contre-exemple 2 : Fractions rationnelles $K(X)$**

Le corps des fractions rationnelles $K(X) = \{ \frac{P(X)}{Q(X)} \mid P, Q \in K[X], Q \neq 0 \}$ contient $K[X]$ mais n'est pas égal à lui. L'élément $\frac{1}{X}$ est dans $K(X)$ mais pas dans $K[X]$.

### Concepts Liés

-   **Séries formelles** : Une généralisation des polynômes où un nombre infini de coefficients peuvent être non nuls.
-   **Polynômes en plusieurs indéterminées $A[X_1, \dots, X_n]$** : Obtenu par itération $A[X_1, \dots, X_n] \cong (A[X_1, \dots, X_{n-1}])[X_n]$.

---

## Concept 3: Anneau euclidien et anneau principal

### Prérequis

-   Anneau intègre
-   Idéal, Idéal engendré

### Définition

1.  Un idéal $I$ d'un anneau $A$ est dit **principal** s'il peut être engendré par un seul élément, i.e., $I = (a) = \{ax \mid x \in A\}$ pour un certain $a \in I$.
2.  Un anneau intègre $A$ est dit **principal** si tous ses idéaux sont principaux.
3.  Un anneau intègre $A$ est dit **euclidien** s'il existe une fonction $\delta : A \to \mathbb{N} \cup \{-\infty\}$, appelée **stathme euclidien**, satisfaisant :

    (i) $\delta(a) = -\infty \iff a = 0$.

    (ii) (Division euclidienne) Pour tous $a, b \in A$ avec $b \neq 0$, il existe $q, r \in A$ tels que $a = bq + r$ et $\delta(r) < \delta(b)$.

    (iii) Pour tous $a, b \in A \setminus \{0\}$, $\delta(b) \le \delta(ab)$.

*(Note : La condition (iii) est parfois omise ou modifiée. Elle est utile pour prouver l'existence de la factorisation en irréductibles.)*

### Propriétés Clés

-   **Théorème : Tout anneau euclidien est principal.**

    *Preuve* : Soit $A$ un anneau euclidien de stathme $\delta$ et $I$ un idéal de $A$. Si $I=\{0\}$, alors $I=(0)$ est principal. Sinon, $I \setminus \{0\}$ est non vide. L'ensemble $\{\delta(x) \mid x \in I \setminus \{0\}\}$ est une partie non vide de $\mathbb{N}$, donc il admet un plus petit élément. Soit $a \in I \setminus \{0\}$ tel que $\delta(a)$ soit minimal.

    Montrons que $I=(a)$. L'inclusion $(a) \subseteq I$ est claire car $a \in I$.

    Pour $I \subseteq (a)$, soit $b \in I$. Par division euclidienne par $a$, il existe $q, r \in A$ tels que $b = aq+r$ et $\delta(r) < \delta(a)$.

    Comme $b \in I$ et $aq \in (a) \subseteq I$, on a $r = b - aq \in I$.

    Par minimalité de $\delta(a)$, si $r \neq 0$, on aurait $\delta(r) \ge \delta(a)$, ce qui contredit $\delta(r) < \delta(a)$. Donc $r=0$.

    Ainsi, $b=aq \in (a)$. Ceci étant vrai pour tout $b \in I$, on a $I \subseteq (a)$. D'où $I=(a)$.

-   **Hiérarchie des anneaux** : On a la chaîne d'implications strictes pour les anneaux intègres :

    Corps $\subset$ Euclidien $\subset$ Principal $\subset$ Factoriel (UFD) $\subset$ Intègre.

### Exemples

**Exemple 1 : L'anneau $\mathbb{Z}$**

$\mathbb{Z}$ est euclidien avec le stathme $\delta(n) = |n|$ pour $n \neq 0$ et $\delta(0)=-\infty$. Il est donc principal.

**Exemple 2 : L'anneau $K[X]$ (K un corps)**

$K[X]$ est euclidien avec le stathme $\delta(P) = \text{deg}(P)$. Il est donc principal.

**Exemple 3 : Les entiers de Gauss $\mathbb{Z}[i]$**

L'anneau $\mathbb{Z}[i] = \{a+bi \mid a,b \in \mathbb{Z}\}$ est euclidien avec le stathme $\delta(a+bi) = a^2+b^2 = |a+bi|^2$ (la norme complexe au carré).

### Contre-exemples

**Contre-exemple 1 : $\mathbb{Z}[X]$**

L'anneau $\mathbb{Z}[X]$ n'est pas principal. L'idéal $I = (2, X) = \{2P(X) + XQ(X) \mid P,Q \in \mathbb{Z}[X]\}$ n'est pas principal. S'il l'était, $I=(D(X))$, alors $D(X)$ devrait diviser 2 et $X$. Donc $D(X)$ doit être une constante $\pm 1$. Si $D(X)=\pm 1$, alors $I = \mathbb{Z}[X]$. Or, les polynômes de $I$ ont un terme constant pair, donc $1 \notin I$. Contradiction.

**Contre-exemple 2 : $\mathbb{Z}[\sqrt{-5}]$**

L'anneau $\mathbb{Z}[\sqrt{-5}] = \{a+b\sqrt{-5} \mid a,b \in \mathbb{Z}\}$ n'est pas factoriel (UFD), donc il ne peut être ni principal ni euclidien. On a la double factorisation $6 = 2 \cdot 3 = (1+\sqrt{-5})(1-\sqrt{-5})$, où tous les facteurs sont irréductibles.

**Contre-exemple 3 : Anneau principal non euclidien**

L'anneau des entiers du corps quadratique $\mathbb{Q}(\sqrt{-19})$ est $A = \mathbb{Z}[\frac{1+\sqrt{-19}}{2}]$. On peut démontrer que $A$ est principal mais pas euclidien.

### Concepts Liés

-   **Anneau factoriel (UFD)** : Un anneau intègre où tout élément non nul et non inversible admet une décomposition unique (à l'ordre et aux associés près) en produit d'éléments irréductibles. Tout anneau principal est factoriel.
-   **Anneau de Dedekind** : Un anneau intègre noethérien, intégralement clos, dans lequel tout idéal premier non nul est maximal. Les anneaux principaux sont des anneaux de Dedekind.

---

## Concept 4: Anneaux Quotients $\mathbb{Z}/n\mathbb{Z}$ et $K[X]/(P)$

### Prérequis

-   Anneau euclidien
-   Relation d'équivalence, Ensemble quotient
-   Idéal, Anneau quotient

### Définition

Soit $A$ un anneau euclidien et $I=(g)$ un idéal principal non nul engendré par $g \in A$. L'**anneau quotient** $A/I$ est l'ensemble des classes d'équivalence pour la relation $a \sim b \iff a-b \in I \iff g | (a-b)$.

La division euclidienne fournit un système de représentants uniques pour les classes d'équivalence.

1.  **Pour $A=\mathbb{Z}$ et $I = (n)$ avec $n>0$** :

    Pour tout $k \in \mathbb{Z}$, il existe un unique couple $(q,r)$ tel que $k = nq+r$ avec $0 \le r < n$. Le reste $r$ est noté $k \pmod n$.

    On a $k \sim l \iff k \pmod n = l \pmod n$.

    L'application $k \mapsto k \pmod n$ induit une bijection canonique :

    $$ \overline{\pmod n} : \mathbb{Z}/n\mathbb{Z} \to \{0, 1, \dots, n-1\} $$

2.  **Pour $A=K[X]$ (K corps) et $I=(G)$ avec $G \neq 0$** :

    Pour tout $F \in K[X]$, il existe un unique couple $(Q,R)$ tel que $F = GQ+R$ avec $\text{deg}(R) < \text{deg}(G)$. Le reste $R$ est noté $F \pmod G$.

    On a $F \sim H \iff F \pmod G = H \pmod G$.

    L'application $F \mapsto F \pmod G$ induit une bijection canonique qui est un isomorphisme de $K$-espaces vectoriels :

    $$ \overline{\pmod G} : K[X]/(G) \to \{ P \in K[X] \mid \text{deg}(P) < \text{deg}(G) \} $$

### Propriétés Clés

-   **Structure d'espace vectoriel** : Si $K$ est un corps, $K[X]/(G)$ est une $K$-algèbre de dimension finie égale à $\text{deg}(G)$. Une base est donnée par les classes de $\{1, X, X^2, \dots, X^{\text{deg}(G)-1}\}$.
-   **Cardinalité** : Si $K$ est un corps fini $\mathbb{F}_q$, alors $|K[X]/(G)| = q^{\text{deg}(G)}$.
-   **Calcul dans l'anneau quotient** : Les opérations dans $A/(g)$ se font sur les représentants.
    -   $\bar{a} + \bar{b} = \overline{a+b}$
    -   $\bar{a} \cdot \bar{b} = \overline{ab}$

    Dans la pratique, on calcule $(a+b) \pmod g$ et $(ab) \pmod g$.

### Exemples

**Exemple 1 : $\mathbb{Z}/6\mathbb{Z}$**

L'ensemble des représentants est $\{0, 1, 2, 3, 4, 5\}$. C'est un anneau non intègre. Par exemple, $\bar{2} \cdot \bar{3} = \overline{6} = \bar{0}$. Les inversibles sont $\bar{1}$ et $\bar{5}$ (ceux qui sont premiers avec 6).

**Exemple 2 : $\mathbb{R}[X]/(X^2+1)$**

L'ensemble des représentants est l'espace vectoriel des polynômes de degré $\le 1$, $\{aX+b \mid a,b \in \mathbb{R}\}$. C'est un corps isomorphe à $\mathbb{C}$.

L'isomorphisme $\phi: \mathbb{R}[X]/(X^2+1) \to \mathbb{C}$ est donné par $\phi(\overline{aX+b}) = a i + b$.

Vérifions la multiplication : $\phi(\bar{X} \cdot \bar{X}) = \phi(\overline{X^2}) = \phi(\overline{-1}) = -1$. Et $\phi(\bar{X})\phi(\bar{X}) = i \cdot i = -1$.

**Exemple 3 : Construction de corps finis**

Soit $K = \mathbb{F}_2 = \mathbb{Z}/2\mathbb{Z}$ et $G(X) = X^2+X+1 \in \mathbb{F}_2[X]$. Ce polynôme est irréductible sur $\mathbb{F}_2$ car il n'a pas de racine ( $G(0)=1, G(1)=1$ ).

Alors $\mathbb{F}_2[X]/(X^2+X+1)$ est un corps. Ses éléments sont les représentants $\{0, 1, X, X+1\}$. C'est un corps à 4 éléments, noté $\mathbb{F}_4$.

La table de multiplication est déterminée par la relation $X^2 = -X-1 = X+1$ (car on est en caractéristique 2).

Par exemple, $X \cdot (X+1) = X^2+X = (X+1)+X = 2X+1 = 1$.

### Contre-exemples

**Contre-exemple 1**

Dans l'anneau non principal $\mathbb{Z}[X]$, l'idéal $I=(2, X)$ n'est pas engendré par un seul polynôme, donc la méthode de représentation via une seule division euclidienne n'est pas directement applicable. Le quotient $\mathbb{Z}[X]/(2, X)$ est isomorphe à $\mathbb{Z}/2\mathbb{Z}$.

**Contre-exemple 2**

Si l'anneau $A$ n'est pas euclidien, il n'y a pas de garantie d'un système unique de représentants de "plus petite taille". Par exemple, dans $\mathbb{Z}[\sqrt{-5}]$, comment représenter "simplement" les classes de $\mathbb{Z}[\sqrt{-5}]/(2)$ ?

### Concepts Liés

-   **Théorèmes d'isomorphisme** : Le premier théorème d'isomorphisme pour les anneaux stipule que si $\phi: A \to B$ est un morphisme d'anneaux, alors $A/\text{Ker}(\phi) \cong \text{Im}(\phi)$. L'exemple de $\mathbb{C}$ est une application de ce théorème avec $\phi = \text{ev}_i: \mathbb{R}[X] \to \mathbb{C}$.
-   **Corps fini** : Tout corps fini de caractéristique $p$ est isomorphe à un quotient $\mathbb{F}_p[X]/(P)$ pour un polynôme $P$ irréductible.

---

## Concept 5: PGCD, PPCM, et Algorithme d'Euclide-Bézout

### Prérequis

-   Anneau principal
-   Divisibilité
-   Idéal engendré

### Définition

Soit $A$ un anneau principal et $a,b \in A$.

-   Le **plus grand commun diviseur** (PGCD) de $a$ et $b$ est un générateur de l'idéal somme $(a)+(b) = (a,b)$. On le note $\text{pgcd}(a,b)$. Il est défini à une unité (un élément inversible) près. Un élément $d$ est un PGCD de $a$ et $b$ si :
    1.  $d|a$ et $d|b$ (diviseur commun).
    2.  Pour tout $c \in A$, si $c|a$ et $c|b$, alors $c|d$ (le plus grand).
-   Le **plus petit commun multiple** (PPCM) de $a$ et $b$ est un générateur de l'idéal intersection $(a) \cap (b)$. On le note $\text{ppcm}(a,b)$.
-   Deux éléments $a,b$ sont **premiers entre eux** (ou étrangers) si $(a,b)=A=(1)$, c'est-à-dire si leur PGCD est une unité.

### Propriétés Clés

-   **Théorème de Bézout** : Soit $A$ un anneau principal. Un élément $d$ est un PGCD de $a$ et $b$ si et seulement si $d$ est un diviseur commun de $a$ et $b$ et il existe $u,v \in A$ (appelés coefficients de Bézout) tels que $au+bv=d$.

    *Preuve* :

    ($\Rightarrow$) Si $d=\text{pgcd}(a,b)$, alors $(d)=(a,b)$. Comme $d \in (a,b)$, il existe $u,v \in A$ tels que $d=au+bv$. De plus, $a \in (a,b)=(d) \Rightarrow d|a$ et $b \in (a,b)=(d) \Rightarrow d|b$. Donc $d$ est un diviseur commun.

    ($\Leftarrow$) Soit $d$ un diviseur commun tel que $d=au+bv$. Soit $c$ un autre diviseur commun de $a$ et $b$. Alors $a=ca'$ et $b=cb'$ pour $a', b' \in A$.

    $d = c a' u + c b' v = c(a'u+b'v)$, donc $c|d$. Ainsi, $d$ est bien un PGCD.

-   **Corollaire** : $a$ et $b$ sont premiers entre eux si et seulement si il existe $u,v \in A$ tels que $au+bv=1$.

-   **Algorithme d'Euclide étendu** : Si $A$ est un anneau euclidien de stathme $\delta$, cet algorithme calcule $d=\text{pgcd}(a,b)$ ainsi que les coefficients $u,v$.
    1.  **Initialisation** : $(r_0, u_0, v_0) = (a, 1, 0)$ et $(r_1, u_1, v_1) = (b, 0, 1)$.
    2.  **Itération** : Tant que $r_i \neq 0$, calculer la division euclidienne $r_{i-1} = q_i r_i + r_{i+1}$ (avec $\delta(r_{i+1}) < \delta(r_i)$).

        Définir $r_{i+1} = r_{i-1} - q_i r_i$.

        Définir $(u_{i+1}, v_{i+1}) = (u_{i-1} - q_i u_i, v_{i-1} - q_i v_i)$.

    3.  **Terminaison** : Si $r_{n+1}=0$, l'algorithme s'arrête. Le dernier reste non nul $r_n$ est le PGCD. On a $r_n = u_n a + v_n b$.

    *Preuve de correction* : Par récurrence, on montre que $r_i = u_i a + v_i b$ à chaque étape. La suite $\delta(r_i)$ est strictement décroissante dans $\mathbb{N}$, donc l'algorithme termine. À la fin, $r_n$ divise $r_{n-1}$, et par récurrence $r_n$ divise tous les $r_i$, donc $r_n$ divise $a$ et $b$. Comme $r_n$ s'exprime comme combinaison linéaire de $a$ et $b$, c'est un PGCD.

### Exemples

**Exemple 1 : Dans $\mathbb{Z}$**

Calculer $\text{pgcd}(120, 23)$ et les coefficients de Bézout.

-   $120 = 5 \cdot 23 + 5$
-   $23 = 4 \cdot 5 + 3$
-   $5 = 1 \cdot 3 + 2$
-   $3 = 1 \cdot 2 + 1$
-   $2 = 2 \cdot 1 + 0$

Le PGCD est 1.

Remontons l'algorithme :

$1 = 3 - 1 \cdot 2$

$1 = 3 - 1 \cdot (5 - 1 \cdot 3) = 2 \cdot 3 - 1 \cdot 5$

$1 = 2 \cdot (23 - 4 \cdot 5) - 1 \cdot 5 = 2 \cdot 23 - 9 \cdot 5$

$1 = 2 \cdot 23 - 9 \cdot (120 - 5 \cdot 23) = 47 \cdot 23 - 9 \cdot 120$.

Donc $u=-9, v=47$.

**Exemple 2 : Dans $\mathbb{Q}[X]$**

Calculer $\text{pgcd}(X^4-1, X^3-1)$.

-   $X^4-1 = X(X^3-1) + (X-1)$
-   $X^3-1 = (X^2+X+1)(X-1) + 0$

Le PGCD est le dernier reste non nul, $X-1$ (à une constante multiplicative près).

**Exemple 3 : Inverse dans $\mathbb{Z}/n\mathbb{Z}$**

Calculer l'inverse de $\bar{23}$ dans $\mathbb{Z}/120\mathbb{Z}$. On cherche $u$ tel que $23u \equiv 1 \pmod{120}$. C'est l'identité de Bézout $23v + 120u = 1$. L'exemple 1 donne $47 \cdot 23 - 9 \cdot 120 = 1$. Donc $47 \cdot 23 \equiv 1 \pmod{120}$. L'inverse de $\bar{23}$ est $\bar{47}$.

### Contre-exemples

**Contre-exemple 1**

Dans l'anneau non principal $\mathbb{Z}[X]$, le PGCD n'est pas toujours une combinaison linéaire. Par exemple, $\text{pgcd}(2, X)=1$. Mais on ne peut pas trouver $U(X), V(X) \in \mathbb{Z}[X]$ tels que $2U(X)+XV(X) = 1$. En évaluant en $X=0$, on aurait $2U(0)=1$, impossible dans $\mathbb{Z}$.

**Contre-exemple 2**

Dans l'anneau non factoriel $\mathbb{Z}[\sqrt{-5}]$, le concept de PGCD est problématique. Par exemple, quel est le PGCD de $2(1+\sqrt{-5})$ et $6$? Les diviseurs de $6$ sont $1, 2, 3, 1\pm\sqrt{-5}, 6$. Les diviseurs de $2(1+\sqrt{-5})$ incluent $1, 2, 1+\sqrt{-5}$. Les diviseurs communs sont $1, 2$. Mais $1+\sqrt{-5}$ est aussi un diviseur commun (car $6=(1-\sqrt{-5})(1+\sqrt{-5})$). Le "plus grand" diviseur n'est pas bien défini car $2$ ne divise pas $1+\sqrt{-5}$ et vice-versa.

### Concepts Liés

-   **Lemme de Gauss** : Si $A$ est un anneau principal, $a,b,c \in A$ et $a$ et $b$ sont premiers entre eux, alors $a|bc \implies a|c$. C'est une conséquence directe de Bézout.
-   **Théorème chinois des restes** : Si $m, n$ sont premiers entre eux dans un anneau principal $A$, alors $A/(mn) \cong A/(m) \times A/(n)$.

---

## Concept 6: Irréductibilité, Primalité et Factorisation Unique

### Prérequis

-   Anneau euclidien
-   Divisibilité, Unités (éléments inversibles)
-   PGCD et identité de Bézout

### Définition

Soit $A$ un anneau intègre et $p \in A$ un élément non nul et non inversible.

-   $p$ est **irréductible** si pour toute factorisation $p=ab$ avec $a,b \in A$, alors soit $a$ soit $b$ est une unité.
-   $p$ est **premier** si pour tous $a,b \in A$, $p|ab \implies p|a$ ou $p|b$. (Ceci est équivalent à dire que l'idéal $(p)$ est un idéal premier).

### Propriétés Clés

-   **Premier $\implies$ Irréductible** : Dans tout anneau intègre, un élément premier est toujours irréductible.

    *Preuve* : Soit $p$ premier et $p=ab$. Alors $p|ab$. Comme $p$ est premier, $p|a$ ou $p|b$. Supposons $p|a$. Alors $a=pc$ pour un $c \in A$. On a $p = (pc)b = p(cb)$. Comme $A$ est intègre, on peut simplifier par $p \neq 0$, donc $1=cb$. Ainsi, $b$ est une unité.

-   **Lemme d'Euclide** : Dans un anneau principal (et donc euclidien), si $p$ est irréductible et $p|ab$, alors $p|a$ ou $p|b$.

    *Preuve* : Supposons que $p \nmid a$. Comme $p$ est irréductible, ses seuls diviseurs (à association près) sont 1 et $p$. Puisque $p \nmid a$, $\text{pgcd}(a,p)=1$. Par le théorème de Bézout, il existe $u,v \in A$ tels que $au+pv=1$. En multipliant par $b$, on obtient $aub+pvb=b$. Comme $p|ab$, il existe $k \in A$ tel que $ab=pk$. Donc $pku+pvb=b$, ce qui donne $p(ku+vb)=b$. D'où $p|b$.

-   **Équivalence dans les anneaux principaux** : Dans un anneau principal $A$, un élément est premier si et seulement si il est irréductible.

    *Preuve* : L'implication premier $\implies$ irréductible est toujours vraie. L'implication irréductible $\implies$ premier est le Lemme d'Euclide.

-   **Théorème de la factorisation unique** : Soit $A$ un anneau euclidien. Tout élément $a \in A$, non nul et non inversible, se décompose en un produit fini d'éléments irréductibles $a = p_1 p_2 \cdots p_n$. Cette décomposition est unique à l'ordre des facteurs et à la multiplication par des unités près (association).

    *Preuve (Existence)* : On procède par récurrence sur la valeur du stathme $\delta(a)$. Soit $S = \{ \delta(x) \mid x \in A \text{ non-nul, non-inversible, non-factorisable en irréductibles} \}$. Supposons $S$ non vide et soit $\delta(a)$ son minimum. $a$ ne peut être irréductible (sinon il est son propre produit). Donc $a=bc$ avec $b,c$ non-inversibles. Pour de nombreux stathmes (comme le degré ou la valeur absolue), on a $\delta(b) < \delta(a)$ et $\delta(c) < \delta(a)$. Par minimalité, $b,c$ se factorisent en irréductibles. Le produit de leurs factorisations donne une factorisation pour $a$, une contradiction. Donc $S$ est vide.

    *Unicité* : Repose sur le Lemme d'Euclide. Si $p_1\cdots p_n = q_1\cdots q_m$, alors $p_1$ divise le produit des $q_j$. Comme $p_1$ est premier, il doit diviser l'un des $q_j$, disons $q_1$. Comme $q_1$ est irréductible, $p_1$ et $q_1$ sont associés. On simplifie et on conclut par récurrence.

### Exemples

**Exemple 1 : Dans $\mathbb{Z}$**

Les éléments irréductibles sont les nombres premiers $p$ et leurs opposés $-p$. La factorisation de $120$ est $2^3 \cdot 3 \cdot 5$. L'unicité est à un signe près, par exemple $120 = (-2)^2 \cdot 2 \cdot 3 \cdot 5$. On normalise en choisissant des premiers positifs.

**Exemple 2 : Dans $K[X]$**

Les polynômes irréductibles dépendent du corps $K$.

-   Dans $\mathbb{C}[X]$, les irréductibles sont les polynômes de degré 1 (Théorème de d'Alembert-Gauss).
-   Dans $\mathbb{R}[X]$, les irréductibles sont les polynômes de degré 1 et les polynômes de degré 2 à discriminant négatif (e.g. $X^2+1$).
-   Dans $\mathbb{Q}[X]$, il existe des polynômes irréductibles de tout degré (e.g. les polynômes cyclotomiques). $X^n-2$ est irréductible pour tout $n \ge 1$.

**Exemple 3 : Dans $\mathbb{Z}[i]$**

L'entier premier $5$ n'est pas irréductible dans $\mathbb{Z}[i]$ car $5 = (1+2i)(1-2i)$. $1+2i$ est irréductible (premier de Gauss). Un premier $p \in \mathbb{Z}$ est irréductible dans $\mathbb{Z}[i]$ si et seulement si $p \equiv 3 \pmod 4$.

### Contre-exemples

**Contre-exemple 1 : Irréductible mais pas premier**

Dans l'anneau non factoriel $A = \mathbb{Z}[\sqrt{-5}]$, l'élément $2$ est irréductible. (Si $2=(a+b\sqrt{-5})(c+d\sqrt{-5})$, en prenant la norme on a $4=(a^2+5b^2)(c^2+5d^2)$, ce qui force l'un des facteurs à être une unité). Cependant, $2$ n'est pas premier car $2 | (1+\sqrt{-5})(1-\sqrt{-5}) = 6$, mais $2 \nmid (1+\sqrt{-5})$ et $2 \nmid (1-\sqrt{-5})$.

**Contre-exemple 2 : Pas de factorisation unique**

Dans $\mathbb{Z}[\sqrt{-5}]$, l'élément $6$ a deux factorisations distinctes en irréductibles :

$$ 6 = 2 \cdot 3 = (1+\sqrt{-5})(1-\sqrt{-5}) $$

Les éléments $2, 3, 1+\sqrt{-5}, 1-\sqrt{-5}$ sont tous irréductibles et ne sont pas associés.

### Concepts Liés

-   **Anneau factoriel (UFD)** : C'est la généralisation des anneaux euclidiens/principaux où la factorisation unique est la propriété définissante.
-   **Critères d'irréductibilité** (pour les polynômes) : Critère d'Eisenstein, réduction modulo $p$.

---

## Concept 7: Caractéristique d'un corps et corps finis

### Prérequis

-   Corps
-   Morphisme d'anneaux
-   Anneau quotient $A/I$

### Définition

Soit $K$ un corps. Il existe un unique morphisme d'anneaux $i: \mathbb{Z} \to K$ défini par $i(n) = n \cdot 1_K$. Le noyau de ce morphisme, $\text{Ker}(i)$, est un idéal de $\mathbb{Z}$, qui est un anneau principal.

-   $\text{Ker}(i)$ est un idéal premier de $\mathbb{Z}$ car son image $i(\mathbb{Z})$ est un sous-anneau d'un corps, donc est intègre.
-   Les idéaux premiers de $\mathbb{Z}$ sont $(0)$ et $(p)$ pour $p$ un nombre premier.

La **caractéristique** du corps $K$, notée $\text{car}(K)$, est le générateur non-négatif de $\text{Ker}(i)$.

1.  Si $\text{Ker}(i) = (0)$, on dit que $K$ est de **caractéristique nulle**. Le morphisme $i$ est injectif.
2.  Si $\text{Ker}(i) = (p)$ pour $p$ un nombre premier, on dit que $K$ est de **caractéristique** $p$. Dans ce cas, $i$ induit une injection $\bar{i}: \mathbb{Z}/p\mathbb{Z} \to K$.

### Propriétés Clés

-   La caractéristique d'un corps est soit 0, soit un nombre premier.
-   Si $\text{car}(K)=p > 0$, alors pour tout $x \in K$, $px = p(1_K \cdot x) = (p \cdot 1_K)x = 0 \cdot x = 0$.
-   **Endomorphisme de Frobenius** : Si $\text{car}(K)=p>0$, l'application $F: K \to K$ définie par $F(x)=x^p$ est un endomorphisme de corps (un morphisme de $K$ dans lui-même).

    *Preuve* : $F(xy)=(xy)^p = x^p y^p = F(x)F(y)$. $F(x+y)=(x+y)^p = \sum_{k=0}^p \binom{p}{k} x^k y^{p-k}$. Pour $0 < k < p$, le coefficient binomial $\binom{p}{k} = \frac{p!}{k!(p-k)!}$ est un multiple de $p$ car $p$ est premier. En caractéristique $p$, ces termes sont nuls. Il reste $x^p+y^p$. Donc $F(x+y)=F(x)+F(y)$.

-   **Sous-corps premier** : Tout corps $K$ contient une copie de $\mathbb{Q}$ (si $\text{car}(K)=0$) ou de $\mathbb{F}_p = \mathbb{Z}/p\mathbb{Z}$ (si $\text{car}(K)=p$). Ce sous-corps est appelé le sous-corps premier de $K$.
-   **Structure des corps finis** : Un corps fini $K$ a nécessairement une caractéristique $p>0$. Il est alors un espace vectoriel de dimension finie $n$ sur son sous-corps premier $\mathbb{F}_p$. Son cardinal est donc $|K|=p^n$.

### Exemples

**Exemple 1 : Corps de caractéristique 0**

Les corps $\mathbb{Q}, \mathbb{R}, \mathbb{C}$ sont de caractéristique nulle. Le corps des fractions rationnelles $K(X)$ a la même caractéristique que $K$.

**Exemple 2 : Corps de caractéristique $p$**

Pour tout nombre premier $p$, l'anneau $\mathbb{Z}/p\mathbb{Z}$ est un corps (noté $\mathbb{F}_p$) de caractéristique $p$. C'est le plus petit corps de cette caractéristique.

**Exemple 3 : Construction de corps finis**

Soit $p$ un premier et $P \in \mathbb{F}_p[X]$ un polynôme irréductible de degré $n$. Alors le quotient $K = \mathbb{F}_p[X]/(P)$ est un corps. En tant que $\mathbb{F}_p$-espace vectoriel, sa dimension est $n$. Son cardinal est donc $p^n$. Ce corps est de caractéristique $p$.

On peut montrer que pour tout premier $p$ et tout entier $n \ge 1$, il existe un corps de cardinal $p^n$, et qu'il est unique à isomorphisme près. On le note $\mathbb{F}_{p^n}$.

### Contre-exemples

**Contre-exemple 1**

L'anneau $\mathbb{Z}/6\mathbb{Z}$ n'est pas un corps et n'a pas de caractéristique au sens des corps. Le morphisme $i: \mathbb{Z} \to \mathbb{Z}/6\mathbb{Z}$ a pour noyau $6\mathbb{Z}$. Or, 6 n'est pas premier.

**Contre-exemple 2**

On ne peut pas construire un corps de caractéristique 1, car $\text{Ker}(i)=(1)$ signifierait $1_K=0_K$, ce qui définit l'anneau nul, qui n'est pas un corps par convention.

### Concepts Liés

-   **Extension de corps** : Tout corps de caractéristique $p$ est une extension de $\mathbb{F}_p$. Tout corps de caractéristique 0 est une extension de $\mathbb{Q}$.
-   **Théorie de Galois** : La théorie des corps finis est une branche importante de la théorie de Galois. L'automorphisme de Frobenius est un élément central de cette théorie.

### Applications

-   **Cryptographie** : La cryptographie à courbe elliptique et les chiffrements basés sur le logarithme discret utilisent intensivement l'arithmétique des corps finis.
-   **Codes correcteurs d'erreurs** : Des codes comme les codes de Reed-Solomon sont construits sur des corps finis.

---

## Concept 8: Polynôme minimal d'un endomorphisme

### Prérequis

-   $K$-algèbre, $K$ un corps
-   Algèbre des polynômes $K[X]$
-   Morphisme d'évaluation
-   Anneau principal

### Définition

Soit $V$ un $K$-espace vectoriel de dimension finie $n$, et soit $u \in \mathcal{L}(V)$ un endomorphisme. On peut aussi considérer une matrice $A \in M_n(K)$.

Le morphisme d'évaluation en $u$ (resp. en $A$) est le morphisme de $K$-algèbres :

$$ \text{ev}_u : K[X] \to \text{End}_K(V) \quad (\text{resp. } \text{ev}_A : K[X] \to M_n(K)) $$

$$ P \mapsto P(u) \quad (\text{resp. } P \mapsto P(A)) $$

L'image $\text{Im}(\text{ev}_u)$ est la sous-algèbre de $\text{End}_K(V)$ engendrée par $u$.

L'**idéal annulateur** de $u$ est le noyau de ce morphisme :

$$ \text{Ann}(u) := \text{Ker}(\text{ev}_u) = \{ P \in K[X] \mid P(u) = 0 \} $$

Comme $K[X]$ est un anneau principal, cet idéal est engendré par un unique polynôme unitaire (ou nul). L'espace $\text{End}_K(V)$ étant de dimension finie $n^2$, la famille $(I, u, u^2, \dots, u^{n^2})$ est liée, donc il existe un polynôme non nul qui annule $u$. L'idéal annulateur n'est donc pas l'idéal nul.

Le **polynôme minimal** de $u$, noté $M_u(X)$, est l'unique générateur unitaire de l'idéal annulateur $\text{Ann}(u)$.

### Propriétés Clés

-   **Caractérisation** : Le polynôme minimal $M_u(X)$ est le polynôme unitaire de plus bas degré qui annule $u$.
-   **Divisibilité** : Pour tout polynôme $P(X) \in K[X]$, on a $P(u)=0$ si et seulement si $M_u(X)$ divise $P(X)$.
-   **Théorème de Cayley-Hamilton** : Le polynôme caractéristique $\chi_u(X) = \det(X \cdot I - u)$ est un polynôme annulateur de $u$. Par conséquent, le polynôme minimal $M_u(X)$ divise le polynôme caractéristique $\chi_u(X)$.
-   **Racines du polynôme minimal** : Les racines de $M_u(X)$ dans $K$ sont exactement les valeurs propres de $u$.

    *Preuve* : Soit $\lambda \in K$.

    ($\Rightarrow$) Si $M_u(\lambda)=0$, alors $M_u(X) = (X-\lambda)Q(X)$. Comme $\text{deg}(Q) < \text{deg}(M_u)$, $Q(u) \neq 0$. Il existe donc un vecteur $v$ tel que $w=Q(u)(v) \neq 0$. Alors $(u-\lambda I)(w) = (u-\lambda I)Q(u)(v) = M_u(u)(v) = 0(v)=0$. Donc $u(w)=\lambda w$ et $\lambda$ est une valeur propre.

    ($\Leftarrow$) Si $\lambda$ est une valeur propre, il existe $v \neq 0$ tel que $u(v)=\lambda v$. Alors $P(u)(v) = P(\lambda)v$ pour tout $P \in K[X]$. En particulier, $0 = M_u(u)(v) = M_u(\lambda)v$. Comme $v \neq 0$, on doit avoir $M_u(\lambda)=0$.

### Exemples

**Exemple 1 : Matrice nilpotente**

Soit $A = \begin{pmatrix} 0 & 1 & 0 \\ 0 & 0 & 1 \\ 0 & 0 & 0 \end{pmatrix} \in M_3(\mathbb{R})$.

On a $A \neq 0, A^2 = \begin{pmatrix} 0 & 0 & 1 \\ 0 & 0 & 0 \\ 0 & 0 & 0 \end{pmatrix} \neq 0, A^3=0$.

Le polynôme minimal est le polynôme unitaire de plus bas degré annulant $A$. C'est donc $M_A(X) = X^3$.

Le polynôme caractéristique est $\chi_A(X) = \det(X I - A) = X^3$. Ici $M_A = \chi_A$.

**Exemple 2 : Matrice scalaire**

Soit $A = \lambda I_n \in M_n(K)$.

$A - \lambda I_n = 0$. Le polynôme $P(X)=X-\lambda$ annule $A$. C'est un polynôme unitaire de degré 1, donc c'est le polynôme minimal : $M_A(X)=X-\lambda$.

Le polynôme caractéristique est $\chi_A(X) = (X-\lambda)^n$.

**Exemple 3 : Matrice non diagonalisable**

Soit $A = \begin{pmatrix} 1 & 1 \\ 0 & 1 \end{pmatrix} \in M_2(\mathbb{R})$.

$\chi_A(X) = (X-1)^2$. Le polynôme minimal divise $\chi_A(X)$, donc il peut être $X-1$ ou $(X-1)^2$.

On teste $A-I = \begin{pmatrix} 0 & 1 \\ 0 & 0 \end{pmatrix} \neq 0$. Donc $M_A(X) \neq X-1$.

Ainsi, $M_A(X) = (X-1)^2$.

### Contre-exemples

**Contre-exemple 1**

Dans un espace de dimension infinie, l'idéal annulateur peut être nul. Soit l'opérateur de dérivation $D$ sur $K[X]$. Si $P(D)=0$ pour un $P \neq 0$, alors $P(D)(X^n) = 0$ pour tout $n$. Mais l'évaluation de $P(D)$ sur des polynômes de degré assez haut ne sera pas nulle. Donc $\text{Ann}(D)=(0)$.

**Contre-exemple 2**

Le concept de polynôme minimal n'est pas aussi direct pour les endomorphismes d'un $A$-module libre sur un anneau $A$ qui n'est pas un corps, car $A[X]$ n'est pas nécessairement principal.

### Concepts Liés

-   **Diagonalisation** : Un endomorphisme $u$ est diagonalisable si et seulement si son polynôme minimal est scindé (se factorise en facteurs de degré 1) sur $K$ et n'a que des racines simples.
-   **Décomposition de Dunford** : Tout endomorphisme dont le polynôme minimal est scindé peut se décomposer de manière unique en une partie diagonalisable et une partie nilpotente qui commutent.
-   **Sous-espaces caractéristiques** : Le théorème de décomposition des noyaux (ou lemme des noyaux) utilise la factorisation du polynôme minimal pour décomposer l'espace vectoriel en une somme directe de sous-espaces stables.
