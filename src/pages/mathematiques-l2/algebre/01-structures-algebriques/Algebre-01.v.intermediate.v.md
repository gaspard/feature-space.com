---
title: 2 - Structures algébriques (intermédiaire)
level: intermediate
course: Structures algébriques et algèbre bilinéaire
chapter: Structures algébriques
layout: '../../../../layouts/Layout.astro'
order: 20
tags:
  [
    'structures algébriques',
    'groupes',
    'anneaux',
    'corps',
    'morphismes',
    'quotients'
  ]
---

# Structures algébriques (intermédiaire)

---

## Concept 1: Applications et Leurs Propriétés

### Prérequis

- Théorie des ensembles de base (ensembles, sous-ensembles, produit cartésien)
- Logique mathématique de base (implications, quantificateurs)

### Définition

Soient $X$ et $Y$ deux ensembles. Une **application** (ou fonction) $f$ de $X$ dans $Y$, notée $f : X \to Y$, est la donnée d'un sous-ensemble $\Gamma_f \subset X \times Y$, appelé son **graphe**, tel que pour tout élément $x \in X$, il existe un unique élément $y \in Y$ pour lequel $(x, y) \in \Gamma_f$. On note cet unique élément $y = f(x)$.

Une application $f : X \to Y$ est dite :

1.  **Injective** si pour tous $x_1, x_2 \in X$, l'implication $f(x_1) = f(x_2) \Rightarrow x_1 = x_2$ est vraie. Cela signifie que chaque élément de l'ensemble d'arrivée $Y$ a au plus un antécédent dans $X$.
2.  **Surjective** si pour tout $y \in Y$, il existe au moins un $x \in X$ tel que $f(x) = y$. Cela signifie que chaque élément de l'ensemble d'arrivée $Y$ a au moins un antécédent dans $X$.
3.  **Bijective** si elle est à la fois injective et surjective. Cela signifie que pour tout $y \in Y$, il existe un unique $x \in X$ tel que $f(x) = y$.

La **composition** de deux applications $f : X \to Y$ et $g : Y \to Z$ est l'application $g \circ f : X \to Z$ définie par $(g \circ f)(x) = g(f(x))$ pour tout $x \in X$.

### Propriétés Clés

- **Associativité de la composition** : Pour $f: X \to Y$, $g: Y \to Z$ et $h: Z \to T$, on a $h \circ (g \circ f) = (h \circ g) \circ f$.
- **Élément neutre pour la composition** : Pour toute application $f : X \to Y$, on a $f \circ \text{id}_X = f$ et $\text{id}_Y \circ f = f$, où $\text{id}_X: X \to X$ est l'application identité définie par $\text{id}_X(x) = x$.
- **Caractérisation par les inverses** (pour des ensembles non vides) :
  - $f$ est surjective si et seulement si elle admet un **inverse à droite**, i.e., une application $s : Y \to X$ telle que $f \circ s = \text{id}_Y$.
  - $f$ est injective si et seulement si elle admet un **inverse à gauche**, i.e., une application $p : Y \to X$ telle que $p \circ f = \text{id}_X$.
  - $f$ est bijective si et seulement si elle admet un **inverse** (à la fois à gauche et à droite), i.e., une application $f^{-1} : Y \to X$ telle que $f \circ f^{-1} = \text{id}_Y$ et $f^{-1} \circ f = \text{id}_X$.

### Exemples

**Exemple 1 : L'application "carré"**

Soit $f : \mathbb{R} \to \mathbb{R}$ définie par $f(x) = x^2$.

- $f$ n'est pas injective car $f(-2) = f(2) = 4$, mais $-2 \neq 2$.
- $f$ n'est pas surjective car il n'y a pas de $x \in \mathbb{R}$ tel que $f(x) = -1$.
- Si on restreint le domaine et le codomaine, $g : [0, \infty) \to [0, \infty)$ définie par $g(x)=x^2$ est bijective. Son inverse est $g^{-1}(y) = \sqrt{y}$.

**Exemple 2 : L'application d'injection canonique**

Soit $Y$ un sous-ensemble de $X$. L'application d'injection $i : Y \to X$ définie par $i(y) = y$ est toujours injective. Elle est surjective si et seulement si $Y=X$.

**Exemple 3 : L'application "projection"**

Soit $f : \mathbb{R}^2 \to \mathbb{R}$ définie par $f(x, y) = x$.

- $f$ est surjective, car pour tout $z \in \mathbb{R}$, on peut choisir $(x, y) = (z, 0)$ et on a $f(z, 0) = z$.
- $f$ n'est pas injective, car $f(1, 2) = f(1, 3) = 1$.

### Contre-exemples

**Contre-exemple 1 : Une relation qui n'est pas une application**

Le sous-ensemble $R = \{(x, y) \in \mathbb{R}^2 \mid x^2 + y^2 = 1\}$ de $\mathbb{R} \times \mathbb{R}$ n'est pas le graphe d'une application de $\mathbb{R}$ vers $\mathbb{R}$. Pour $x=0$, il y a deux valeurs possibles pour $y$ (1 et -1), ce qui viole la condition d'unicité. De plus, pour $x=2$, il n'y a aucune valeur de $y$, ce qui viole la condition d'existence.

**Contre-exemple 2 : Une application sans inverse à gauche ni à droite**

L'application $f : \mathbb{Z} \to \mathbb{Z}$ définie par $f(n) = 2n$ est injective ($2n_1=2n_2 \Rightarrow n_1=n_2$) mais non surjective (les nombres impairs n'ont pas d'antécédent). Elle admet un inverse à gauche, par exemple $p(m) = m/2$ si $m$ est pair, et $p(m)=0$ si $m$ est impair. Mais elle n'admet pas d'inverse à droite.

### Concepts Connexes

- **Morphismes** : Une application entre des ensembles munis de structures algébriques (comme les groupes ou les anneaux) qui préserve ces structures. C'est une spécialisation du concept d'application.
- **Relations binaires** : Une application est un cas particulier de relation binaire.

---

## Concept 2: Principe de Récurrence

### Prérequis

- Théorie des ensembles de base
- Notion intuitive des nombres entiers

### Définition

L'ensemble des entiers naturels $\mathbb{N}$, avec l'élément $0$ et l'application successeur $S: n \mapsto n+1$, est formellement défini par une propriété universelle (Axiome 1.1) qui garantit son unicité à isomorphisme près. De cette définition découlent les **Axiomes de Peano**, qui incluent le principe de récurrence.

**Principe de récurrence (faible)** : Soit $P$ une propriété définie sur les entiers naturels $\mathbb{N}$. Si les deux conditions suivantes sont vérifiées :

1.  **Initialisation (ou cas de base)** : La propriété $P(0)$ est vraie.
2.  **Hérédité** : Pour tout entier $n \in \mathbb{N}$, si $P(n)$ est vraie, alors $P(n+1)$ est aussi vraie (i.e., $\forall n \in \mathbb{N}, [P(n) \Rightarrow P(n+1)]$).
    Alors, la propriété $P(n)$ est vraie pour tout entier naturel $n \in \mathbb{N}$.

**Principe de récurrence forte** : Soit $P$ une propriété sur $\mathbb{N}$. Si les deux conditions suivantes sont vérifiées :

1.  **Initialisation** : $P(0)$ est vraie.
2.  **Hérédité** : Pour tout $n \in \mathbb{N}$, si $P(k)$ est vraie pour tous les entiers $k$ de $0$ à $n$ (i.e., $\forall k \in \{0, \dots, n\}, P(k)$), alors $P(n+1)$ est vraie.
    Alors, $P(n)$ est vraie pour tout $n \in \mathbb{N}$.

### Propriétés Clés

- **Fondement des preuves** : La récurrence est une technique de démonstration fondamentale pour les énoncés concernant les entiers naturels.
- **Équivalence** : Les principes de récurrence faible, de récurrence forte et le principe du bon ordre (toute partie non vide de $\mathbb{N}$ admet un plus petit élément) sont équivalents.
- **Généralisation** : Le cas de base peut commencer à un entier $n_0 > 0$. Dans ce cas, la conclusion est que la propriété est vraie pour tout $n \ge n_0$.

### Exemples

**Exemple 1 : Somme des premiers entiers**

Démontrons par récurrence que pour tout $n \in \mathbb{N}^*$, $\sum_{k=1}^{n} k = \frac{n(n+1)}{2}$.

- **Initialisation ($n=1$)** : $\sum_{k=1}^{1} k = 1$. Et $\frac{1(1+1)}{2} = 1$. La propriété est vraie pour $n=1$.
- **Hérédité** : Supposons que la formule est vraie pour un certain $n \ge 1$. Montrons qu'elle est vraie pour $n+1$.
  $$
  \sum_{k=1}^{n+1} k = \left(\sum_{k=1}^{n} k\right) + (n+1) = \frac{n(n+1)}{2} + (n+1) \quad (\text{par hypothèse de récurrence})
  $$
  $$
  = (n+1) \left(\frac{n}{2} + 1\right) = (n+1) \frac{n+2}{2} = \frac{(n+1)((n+1)+1)}{2}
  $$
  La formule est donc vraie pour $n+1$. Par le principe de récurrence, elle est vraie pour tout $n \in \mathbb{N}^*$.

**Exemple 2 : Inégalité de Bernoulli**

Démontrons que pour tout $x \ge -1$ et tout $n \in \mathbb{N}$, $(1+x)^n \ge 1+nx$.

- **Initialisation ($n=0$)** : $(1+x)^0 = 1$ et $1+0x = 1$. L'inégalité $1 \ge 1$ est vraie.
- **Hérédité** : Supposons que $(1+x)^n \ge 1+nx$ pour un $n \ge 0$.
  $$
  (1+x)^{n+1} = (1+x)^n (1+x)
  $$
  Puisque $1+x \ge 0$, on peut multiplier l'hypothèse de récurrence par $(1+x)$ :
  $$
  (1+x)^n (1+x) \ge (1+nx)(1+x) = 1 + x + nx + nx^2 = 1 + (n+1)x + nx^2
  $$
  Comme $nx^2 \ge 0$, on a $1 + (n+1)x + nx^2 \ge 1 + (n+1)x$.
  Donc, $(1+x)^{n+1} \ge 1+(n+1)x$. La propriété est héréditaire.

**Exemple 3 : Suite de Fibonacci (Récurrence forte)**

Soit la suite $(u_n)$ définie par $u_0=0, u_1=1$ et $u_{n+2} = u_{n+1} + u_n$. Montrons par récurrence forte que $u_n < 2^n$ pour tout $n \ge 0$.

- **Initialisation** : $u_0 = 0 < 2^0=1$ et $u_1 = 1 < 2^1=2$. C'est vrai pour $n=0$ et $n=1$.
- **Hérédité** : Soit $n \ge 0$. Supposons que $u_k < 2^k$ pour tout $k \in \{0, \dots, n+1\}$. Montrons que $u_{n+2} < 2^{n+2}$.
  $$
  u_{n+2} = u_{n+1} + u_n < 2^{n+1} + 2^n \quad (\text{par hypothèse de récurrence forte})
  $$
  $$
  < 2^{n+1} + 2^{n+1} = 2 \cdot 2^{n+1} = 2^{n+2}
  $$
  La propriété est héréditaire.

### Contre-exemples

**Contre-exemple 1 : Hérédité vraie, base fausse**

La propriété "$n = n+1$" est héréditaire. Si on suppose $n=n+1$ pour un certain $n$, alors en ajoutant 1 des deux côtés, on obtient $n+1 = n+2$, donc la propriété est vraie pour l'entier suivant. Cependant, le cas de base $0=1$ est faux. La propriété n'est donc jamais vraie.

**Contre-exemple 2 : "Tous les chevaux sont de la même couleur"**

La preuve par récurrence fallacieuse est célèbre :

- **Initialisation ($n=1$)** : Dans un ensemble d'un seul cheval, tous les chevaux sont de la même couleur. Vrai.
- **Hérédité** : Supposons que dans tout ensemble de $n$ chevaux, ils sont tous de la même couleur. Prenons un ensemble de $n+1$ chevaux. Retirons-en un. Les $n$ restants sont de la même couleur (par HR). Remettons-le et retirons-en un autre. Les $n$ nouveaux chevaux sont aussi de la même couleur. Donc tous les $n+1$ chevaux sont de la même couleur.
- **L'erreur** : Le raisonnement de l'hérédité ne fonctionne pas pour passer de $n=1$ à $n=2$. Si on a deux chevaux $\{C_1, C_2\}$, le premier groupe de $n=1$ est $\{C_1\}$ et le second est $\{C_2\}$. Il n'y a pas de cheval commun pour "transmettre" la couleur.

### Concepts Connexes

- **Définitions récursives** : Beaucoup de concepts en mathématiques et en informatique sont définis par récurrence (ex: factorielle, suites).
- **Principe du bon ordre** : Toute partie non vide de $\mathbb{N}$ admet un plus petit élément. C'est un principe équivalent à la récurrence.

---

## Concept 3: Loi de Composition Interne

### Prérequis

- Ensembles, Produit Cartésien, Applications

### Définition

Une **loi de composition interne** (ou **opération binaire**) sur un ensemble non vide $X$ est une application $* : X \times X \to X$. Pour une paire $(x, y) \in X \times X$, l'image $*(x,y)$ est généralement notée $x * y$.

Une loi $*$ sur $X$ peut avoir les propriétés suivantes :

1.  **Associativité** : $\forall (x, y, z) \in X^3, (x * y) * z = x * (y * z)$.
2.  **Commutativité** : $\forall (x, y) \in X^2, x * y = y * x$.
3.  **Élément neutre** : Il existe un élément $e \in X$ tel que $\forall x \in X, e * x = x * e = x$.
4.  **Élément inversible** : Si la loi possède un élément neutre $e$, un élément $x \in X$ est dit **inversible** s'il existe $y \in X$ (appelé **inverse** ou **symétrique** de $x$) tel que $x * y = y * x = e$.

Si $+$ et $\times$ sont deux lois sur $X$, on dit que $\times$ est **distributive** par rapport à $+$ si :
$\forall (x, y, z) \in X^3, x \times (y + z) = (x \times y) + (x \times z)$ et $(y + z) \times x = (y \times x) + (z \times x)$.

### Propriétés Clés

- **Unicité de l'élément neutre** : S'il existe un élément neutre pour une loi, il est unique.
- **Unicité de l'inverse** : Si une loi est associative et possède un élément neutre, alors tout élément inversible a un inverse unique.
- Une partie $Y \subset X$ est dite **stable** pour la loi $*$ si $\forall (x, y) \in Y^2, x * y \in Y$. La loi $*$ induit alors une loi de composition interne sur $Y$.

### Exemples

**Exemple 1 : Addition et multiplication sur $\mathbb{Z}$**

- L'addition $(+)$ sur $\mathbb{Z}$ est associative, commutative, a $0$ comme élément neutre, et tout élément $n$ a un inverse (opposé) $-n$.
- La multiplication $(\times)$ sur $\mathbb{Z}$ est associative, commutative, a $1$ comme élément neutre, mais seuls $1$ et $-1$ sont inversibles.
- La multiplication est distributive par rapport à l'addition.

**Exemple 2 : Composition de fonctions**

Sur l'ensemble $E = \text{End}_{\text{Ens}}(X)$ des applications d'un ensemble $X$ dans lui-même, la composition $(\circ)$ est une loi de composition interne.

- Elle est associative.
- Elle a l'application identité $\text{id}_X$ comme élément neutre.
- Elle n'est en général pas commutative (si $\text{card}(X) \ge 2$).

**Exemple 3 : Concaténation de mots**

Sur l'ensemble $M(A)$ des mots formés à partir d'un alphabet $A$, la concaténation est une loi de composition interne.

- Elle est associative.
- Elle a le mot vide comme élément neutre.
- Elle n'est pas commutative si $A$ a plus d'un élément. Par exemple, "ab" $\neq$ "ba".

### Contre-exemples

**Contre-exemple 1 : La soustraction sur $\mathbb{N}$**

L'opération de soustraction $(-)$ n'est pas une loi de composition interne sur $\mathbb{N}$ car le résultat n'est pas toujours dans $\mathbb{N}$ (ex: $3 - 5 = -2 \notin \mathbb{N}$). C'est une loi interne sur $\mathbb{Z}$.

**Contre-exemple 2 : La division sur $\mathbb{R}$**

La division $(\div)$ n'est pas une loi de composition interne sur $\mathbb{R}$ car la division par 0 n'est pas définie. C'est une loi de composition interne sur $\mathbb{R}^* = \mathbb{R} \setminus \{0\}$.

### Concepts Connexes

- **Structures algébriques** : Les lois de composition interne et leurs propriétés sont les briques de base pour définir les structures algébriques comme les monoïdes, les groupes, les anneaux et les corps.
- **Partie stable** : La notion de partie stable est cruciale pour définir les sous-structures (sous-groupes, sous-anneaux, etc.).

---

## Concept 4: Monoïdes et Groupes

### Prérequis

- Loi de composition interne et ses propriétés (associativité, élément neutre, inverse).

### Définition

- Un **monoïde** est un triplet $(M, *, e)$ où $M$ est un ensemble, $*$ est une loi de composition interne associative sur $M$, et $e \in M$ est un élément neutre pour $*$. Si $*$ est commutative, le monoïde est dit **commutatif** ou **abélien**.

- Un **groupe** est un triplet $(G, *, e)$ où $(G, *, e)$ est un monoïde et où tout élément de $G$ est inversible. Si la loi est commutative, le groupe est dit **abélien**.

### Propriétés Clés

- Dans un groupe $(G, *, e)$, pour tous $a, b \in G$:
  - L'inverse de $a*b$ est $(a*b)^{-1} = b^{-1}*a^{-1}$.
  - L'inverse de $a^{-1}$ est $(a^{-1})^{-1} = a$.
  - **Règles de simplification** : $a*x = a*y \Rightarrow x=y$ et $x*a = y*a \Rightarrow x=y$.
- L'ensemble $M^\times$ des éléments inversibles d'un monoïde $(M, *, e)$ forme un groupe pour la loi $*$.

### Exemples

**Exemple 1 : Monoïdes classiques**

- $(\mathbb{N}, +, 0)$ est un monoïde commutatif. Ce n'est pas un groupe car seul 0 a un inverse (lui-même).
- $(\mathbb{N}, \cdot, 1)$ est un monoïde commutatif. Seul 1 est inversible.
- Si $X$ est un ensemble, $(\text{End}_{\text{Ens}}(X), \circ, \text{id}_X)$ (applications de $X$ dans $X$) est un monoïde, non commutatif en général.

**Exemple 2 : Groupes classiques**

- $(\mathbb{Z}, +, 0)$, $(\mathbb{Q}, +, 0)$, $(\mathbb{R}, +, 0)$ et $(\mathbb{C}, +, 0)$ sont des groupes abéliens.
- $(\mathbb{Q}^*, \cdot, 1)$, $(\mathbb{R}^*, \cdot, 1)$ et $(\mathbb{C}^*, \cdot, 1)$ sont des groupes abéliens.
- Le **groupe symétrique** $S_n = (\text{Aut}_{\text{Ens}}(\{1,...,n\}), \circ, \text{id})$ est le groupe des bijections (permutations) de l'ensemble $\{1,...,n\}$. Il est non abélien pour $n \ge 3$.

**Exemple 3 : Le groupe des inversibles d'un monoïde**

Soit le monoïde $(M_n(\mathbb{R}), \cdot, I_n)$ des matrices carrées de taille $n$ à coefficients réels. L'ensemble des éléments inversibles de ce monoïde est le **groupe général linéaire** $\text{GL}_n(\mathbb{R})$, qui est un groupe pour la multiplication matricielle.

### Contre-exemples

**Contre-exemple 1 : Un magma non associatif**

L'ensemble $\mathbb{Z}$ muni de la soustraction n'est pas un monoïde car la loi n'est pas associative : $(8-3)-2 = 3$ alors que $8-(3-2)=7$. Il n'y a pas non plus d'élément neutre.

**Contre-exemple 2 : Un monoïde qui n'est pas un groupe**

L'ensemble $(\mathbb{Z}, \cdot, 1)$ est un monoïde commutatif. Mais ce n'est pas un groupe car la plupart des éléments ne sont pas inversibles (par exemple, 2 n'a pas d'inverse dans $\mathbb{Z}$).

### Concepts Connexes

- **Sous-groupe** : Un sous-ensemble d'un groupe qui est lui-même un groupe.
- **Anneau** : Une structure algébrique avec deux lois, l'une formant un groupe abélien (l'addition) et l'autre un monoïde (la multiplication), liées par la distributivité.

---

## Concept 5: Anneaux et Corps

### Prérequis

- Groupes (en particulier abéliens)
- Monoïdes
- Loi de composition interne (distributivité)

### Définition

- Un **anneau** est un quintuplet $(A, +, \times, 0, 1)$ où $A$ est un ensemble, $+$ et $\times$ sont deux lois de composition internes, et $0, 1$ sont des éléments de $A$, tels que :

  1. $(A, +, 0)$ est un **groupe abélien**.
  2. $(A, \times, 1)$ est un **monoïde**.
  3. La loi $\times$ est **distributive** par rapport à la loi $+$.
     Si la loi $\times$ est commutative, l'anneau est dit **commutatif**.

- Un anneau $(A, +, \times, 0, 1)$ est dit **intègre** s'il est non nul ($1 \neq 0$) et ne possède pas de diviseur de zéro, c'est-à-dire :

  $$
  \forall (a, b) \in A^2, (ab = 0 \Rightarrow a=0 \text{ ou } b=0).
  $$

- Un **corps** est un anneau commutatif $(K, +, \times, 0, 1)$ non nul ($1 \neq 0$) dans lequel tout élément non nul est inversible pour la multiplication $\times$. (Autrement dit, $K^\times = K \setminus \{0\}$).

### Propriétés Clés

- Dans tout anneau $A$, pour tout $a \in A$, on a $a \cdot 0_A = 0_A \cdot a = 0_A$.
- Dans un anneau $A$, $(-1_A) \cdot a = -a$.
- Tout corps est un anneau intègre. La réciproque est fausse (par exemple $\mathbb{Z}$).
- L'ensemble des éléments inversibles (pour $\times$) d'un anneau $A$, noté $A^\times$, forme un groupe appelé **groupe des unités** de $A$.

### Exemples

**Exemple 1 : L'anneau $\mathbb{Z}$ des entiers relatifs**

$(\mathbb{Z}, +, \cdot, 0, 1)$ est un anneau commutatif intègre. Ce n'est pas un corps car les seuls éléments inversibles pour la multiplication sont $1$ et $-1$.

**Exemple 2 : Les corps $\mathbb{Q}, \mathbb{R}, \mathbb{C}$**

Les ensembles des nombres rationnels, réels et complexes, munis de leurs additions et multiplications usuelles, sont des corps commutatifs.

**Exemple 3 : L'anneau des matrices $M_n(A)$**

Si $A$ est un anneau commutatif, l'ensemble $M_n(A)$ des matrices carrées de taille $n$ à coefficients dans $A$ est un anneau. Pour $n > 1$, cet anneau est non commutatif et possède des diviseurs de zéro, il n'est donc pas intègre.
Par exemple, dans $M_2(\mathbb{R})$:

$$
\begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix} \cdot \begin{pmatrix} 0 & 0 \\ 0 & 1 \end{pmatrix} = \begin{pmatrix} 0 & 0 \\ 0 & 0 \end{pmatrix}
$$

**Exemple 4 : L'anneau $\mathbb{Z}/n\mathbb{Z}$**

L'ensemble des entiers modulo $n$, noté $\mathbb{Z}/n\mathbb{Z}$, est un anneau commutatif. Il est intègre (et c'est alors un corps) si et seulement si $n$ est un nombre premier.

### Contre-exemples

**Contre-exemple 1 : Anneau avec diviseurs de zéro**

L'anneau $\mathbb{Z}/6\mathbb{Z}$ n'est pas intègre. Par exemple, $\bar{2} \cdot \bar{3} = \bar{6} = \bar{0}$, mais $\bar{2} \neq \bar{0}$ et $\bar{3} \neq \bar{0}$.

**Contre-exemple 2 : L'anneau nul**

L'ensemble $A=\{0\}$ est un anneau (l'anneau nul) où $1_A = 0_A$. Par définition, il n'est ni intègre, ni un corps.

### Concepts Connexes

- **Idéal** : Un sous-ensemble d'un anneau qui joue un rôle similaire aux sous-groupes normaux pour les groupes, permettant de construire des anneaux quotients.
- **Morphisme d'anneaux** : Une application entre anneaux qui préserve les deux opérations et les éléments neutres.

---

## Concept 6: Morphismes de Structures Algébriques

### Prérequis

- Applications
- Structures algébriques (Monoïdes, Groupes, Anneaux)

### Définition

Un **morphisme** est une application entre deux ensembles munis de la même structure algébrique, qui "préserve" cette structure.

1.  **Morphisme de monoïdes** : Une application $f : (M, *_{M}, e_M) \to (N, *_{N}, e_N)$ telle que :

    - $f(e_M) = e_N$
    - $\forall (m, n) \in M^2, f(m *_{M} n) = f(m) *_{N} f(n)$

2.  **Morphisme de groupes** : C'est un morphisme de monoïdes entre deux groupes. La condition $f(e_M)=e_N$ est en fait une conséquence de la préservation de la loi.

3.  **Morphisme d'anneaux** : Une application $f : (A, +_A, \times_A) \to (B, +_B, \times_B)$ qui est à la fois :
    - un morphisme pour les groupes additifs : $f(a +_A b) = f(a) +_B f(b)$ et $f(0_A)=0_B$.
    - un morphisme pour les monoïdes multiplicatifs : $f(a \times_A b) = f(a) \times_B f(b)$ et $f(1_A)=1_B$.

Un morphisme d'une structure dans elle-même est un **endomorphisme**. Un morphisme bijectif dont l'inverse est aussi un morphisme est un **isomorphisme**.

### Propriétés Clés

- Si $f : G \to H$ est un morphisme de groupes, alors $f(g^{-1}) = (f(g))^{-1}$ pour tout $g \in G$.
- La composition de deux morphismes est un morphisme.
- Un morphisme $f$ est un isomorphisme si et seulement si $f$ est bijectif.
- L'image d'un élément inversible de M par un morphisme de monoïdes $f: M \to N$ est un élément inversible de $N$. On a donc un morphisme de groupes induit $f^\times : M^\times \to N^\times$.

### Exemples

**Exemple 1 : Le déterminant**

L'application déterminant $\text{det} : (M_n(\mathbb{R}), \cdot) \to (\mathbb{R}, \cdot)$ est un morphisme de monoïdes, car $\det(AB) = \det(A)\det(B)$ et $\det(I_n) = 1$. Sa restriction $\text{det} : \text{GL}_n(\mathbb{R}) \to \mathbb{R}^*$ est un morphisme de groupes.

**Exemple 2 : L'exponentielle**

L'application $\exp : (\mathbb{R}, +) \to (\mathbb{R}^*_+, \cdot)$ est un morphisme de groupes. En effet, $\exp(x+y) = e^{x+y} = e^x e^y = \exp(x)\exp(y)$. C'est même un isomorphisme, son inverse est le logarithme népérien.

**Exemple 3 : L'évaluation de fonctions**

Pour un $x \in [0, 1]$ fixé, l'application d'évaluation $\text{ev}_x : C^0([0, 1], \mathbb{R}) \to \mathbb{R}$ définie par $\text{ev}_x(f) = f(x)$ est un morphisme d'anneaux.

- $\text{ev}_x(f+g) = (f+g)(x) = f(x)+g(x) = \text{ev}_x(f) + \text{ev}_x(g)$
- $\text{ev}_x(f \cdot g) = (f \cdot g)(x) = f(x)g(x) = \text{ev}_x(f) \cdot \text{ev}_x(g)$
- L'image de la fonction constante 1 est 1, et l'image de la fonction nulle est 0.

### Contre-exemples

**Contre-exemple 1 : Une application non-morphique**

Soit $f:(\mathbb{Z},+) \to (\mathbb{Z},+)$ définie par $f(x) = x+1$. Ce n'est pas un morphisme de groupes car $f(1+1)=f(2)=3$, mais $f(1)+f(1)=2+2=4 \neq 3$. De plus, $f(0)=1 \neq 0$.

**Contre-exemple 2 : Préservation d'une seule loi**

Soit $f : (\mathbb{Z}, +, \cdot) \to (\mathbb{Z}, +, \cdot)$ définie par $f(x)=2x$. C'est un morphisme pour le groupe additif $(\mathbb{Z},+)$ car $f(x+y)=2(x+y)=2x+2y=f(x)+f(y)$. Mais ce n'est pas un morphisme d'anneaux car $f(1) = 2 \neq 1_\mathbb{Z}$.

### Concepts Connexes

- **Noyau et Image** : Le noyau et l'image d'un morphisme sont des sous-structures fondamentales qui mesurent respectivement à quel point le morphisme est loin d'être injectif et surjectif.
- **Théorèmes d'isomorphisme** : Ces théorèmes fondamentaux relient les notions de morphisme, de noyau, d'image et de structure quotient.

---

## Concept 7: Relations d'Équivalence et Ensembles Quotients

### Prérequis

- Ensembles, Relations binaires

### Définition

Une **relation d'équivalence** sur un ensemble $E$, souvent notée $\sim$, est une relation binaire qui est :

1.  **Réflexive** : $\forall x \in E, x \sim x$.
2.  **Symétrique** : $\forall (x, y) \in E^2, x \sim y \Rightarrow y \sim x$.
3.  **Transitive** : $\forall (x, y, z) \in E^3, (x \sim y \text{ et } y \sim z) \Rightarrow x \sim z$.

Pour un élément $x \in E$, sa **classe d'équivalence** est l'ensemble des éléments qui lui sont équivalents :

$$
\text{cl}(x) = \{y \in E \mid y \sim x\}.
$$

L'**ensemble quotient**, noté $E/\sim$, est l'ensemble de toutes les classes d'équivalence :

$$
E/\sim = \{\text{cl}(x) \mid x \in E\}.
$$

### Propriétés Clés

- Les classes d'équivalence forment une **partition** de l'ensemble $E$ : chaque élément de $E$ appartient à une et une seule classe d'équivalence.
- Deux classes d'équivalence $\text{cl}(x)$ et $\text{cl}(y)$ sont soit disjointes, soit égales. On a $\text{cl}(x) = \text{cl}(y) \Leftrightarrow x \sim y$.
- **Propriété universelle du quotient** : Soit $\pi : E \to E/\sim$ l'application de projection qui associe à $x$ sa classe $\text{cl}(x)$. Pour toute application $f : E \to F$ qui est constante sur les classes d'équivalence (i.e., $x \sim y \Rightarrow f(x) = f(y)$), il existe une unique application $\bar{f} : E/\sim \to F$ telle que $f = \bar{f} \circ \pi$.

### Exemples

**Exemple 1 : Congruence modulo $n$**

Sur $\mathbb{Z}$, la relation $x \sim y \Leftrightarrow (x-y)$ est un multiple de $n$ (notée $x \equiv y \pmod n$) est une relation d'équivalence. Les classes d'équivalence sont les ensembles de la forme $\bar{k} = \{k + qn \mid q \in \mathbb{Z}\}$. L'ensemble quotient est $\mathbb{Z}/n\mathbb{Z} = \{\bar{0}, \bar{1}, \dots, \overline{n-1}\}$.

**Exemple 2 : Construction de $\mathbb{Z}$**

On construit les entiers relatifs $\mathbb{Z}$ comme le quotient de $\mathbb{N} \times \mathbb{N}$ par la relation d'équivalence $(a, b) \sim (c, d) \Leftrightarrow a+d = b+c$. La classe de $(a,b)$ est interprétée comme l'entier $a-b$.

**Exemple 3 : Construction de $\mathbb{Q}$**

On construit les nombres rationnels $\mathbb{Q}$ comme le quotient de $\mathbb{Z} \times (\mathbb{Z}\setminus\{0\})$ par la relation d'équivalence $(p, q) \sim (r, s) \Leftrightarrow ps = qr$. La classe de $(p,q)$ est interprétée comme la fraction $p/q$.

### Contre-exemples

**Contre-exemple 1 : Relation d'ordre**

La relation $\le$ sur $\mathbb{R}$ n'est pas une relation d'équivalence. Elle est réflexive et transitive, mais pas symétrique ($3 \le 5$ mais $5 \not\le 3$).

**Contre-exemple 2 : Relation non-transitive**

Sur l'ensemble des personnes, la relation "est ami avec" n'est pas transitive en général. Si A est ami avec B et B est ami avec C, A n'est pas forcément ami avec C.

### Concepts Connexes

- **Groupes et Anneaux Quotients** : La notion de quotient est fondamentale pour construire de nouvelles structures algébriques à partir de structures existantes et de sous-structures appropriées (sous-groupes normaux ou idéaux).
- **Partition d'un ensemble** : Il y a une bijection entre les relations d'équivalence sur un ensemble $E$ et les partitions de $E$.

---

## Concept 8: Sous-groupes, Noyau et Image

### Prérequis

- Groupes
- Morphismes de groupes

### Définition

Un **sous-groupe** d'un groupe $(G, *, e_G)$ est un sous-ensemble non vide $H \subset G$ qui est lui-même un groupe pour la loi de composition interne de $G$. Cela équivaut à vérifier :

1.  $e_G \in H$. (Contient l'élément neutre)
2.  $\forall g, h \in H, g * h \in H$. (Stable par la loi)
3.  $\forall g \in H, g^{-1} \in H$. (Stable par passage à l'inverse)

Une caractérisation équivalente est : $H$ est un sous-ensemble non vide de $G$ tel que $\forall x, y \in H, xy^{-1} \in H$.

Soit $f: G \to H$ un morphisme de groupes.

- Le **noyau** de $f$ est $\text{Ker}(f) = \{g \in G \mid f(g) = e_H\} = f^{-1}(\{e_H\})$.
- L'**image** de $f$ est $\text{Im}(f) = \{f(g) \mid g \in G\} = f(G)$.

### Propriétés Clés

- Le noyau $\text{Ker}(f)$ est un sous-groupe de $G$.
- L'image $\text{Im}(f)$ est un sous-groupe de $H$.
- Un morphisme de groupes $f$ est **injectif** si et seulement si son noyau est trivial, i.e., $\text{Ker}(f) = \{e_G\}$.
- Un morphisme de groupes $f$ est **surjectif** si et seulement si son image est le groupe d'arrivée tout entier, i.e., $\text{Im}(f) = H$.

### Exemples

**Exemple 1 : Sous-groupes de $(\mathbb{Z}, +)$**

Les sous-groupes de $(\mathbb{Z}, +)$ sont exactement les ensembles de la forme $n\mathbb{Z} = \{nk \mid k \in \mathbb{Z}\}$ pour un certain $n \in \mathbb{N}$.

**Exemple 2 : Le groupe orthogonal**

Le groupe orthogonal $O_n(\mathbb{R}) = \{M \in M_n(\mathbb{R}) \mid {}^tMM = I_n\}$ est un sous-groupe du groupe général linéaire $\text{GL}_n(\mathbb{R})$. Il correspond aux matrices qui préservent le produit scalaire standard.

**Exemple 3 : Noyau du déterminant**

Considérons le morphisme de groupes $\det : \text{GL}_n(\mathbb{R}) \to \mathbb{R}^*$.
Le noyau de ce morphisme est l'ensemble des matrices de déterminant 1. C'est un sous-groupe de $\text{GL}_n(\mathbb{R})$ appelé le **groupe spécial linéaire**, noté $\text{SL}_n(\mathbb{R})$.

### Contre-exemples

**Contre-exemple 1 : Un sous-ensemble non stable**

Le sous-ensemble $\mathbb{N}$ de $(\mathbb{Z}, +)$ n'est pas un sous-groupe car il n'est pas stable par passage à l'inverse (ex: $3 \in \mathbb{N}$ mais $-3 \notin \mathbb{N}$).

**Contre-exemple 2 : Union de sous-groupes**

L'union de deux sous-groupes n'est en général pas un sous-groupe. Dans $(\mathbb{Z}, +)$, $2\mathbb{Z}$ et $3\mathbb{Z}$ sont des sous-groupes. Leur union $2\mathbb{Z} \cup 3\mathbb{Z}$ n'en est pas un, car $2 \in 2\mathbb{Z} \cup 3\mathbb{Z}$ et $3 \in 2\mathbb{Z} \cup 3\mathbb{Z}$, mais leur somme $2+3=5$ n'est ni dans $2\mathbb{Z}$ ni dans $3\mathbb{Z}$.

### Concepts Connexes

- **Groupe quotient** : Pour former un groupe quotient $G/H$, le sous-groupe $H$ doit être "normal", une condition qui est toujours remplie si $G$ est abélien, ou si $H$ est le noyau d'un morphisme.
- **Théorème de Lagrange** : Pour un groupe fini $G$, l'ordre (le nombre d'éléments) de tout sous-groupe $H$ de $G$ divise l'ordre de $G$.

---

## Concept 9: Idéaux et Anneaux Quotients

### Prérequis

- Anneaux (commutatifs)
- Sous-groupes (abéliens)
- Relations d'équivalence et ensembles quotients

### Définition

Un **idéal** d'un anneau commutatif $A$ est un sous-ensemble $I \subset A$ qui est :

1.  Un sous-groupe de $(A, +)$.
2.  **Absorbant** pour la multiplication : $\forall a \in A, \forall x \in I, ax \in I$.

Soit $I$ un idéal de l'anneau $A$. On définit une relation d'équivalence sur $A$ par $a \sim b \Leftrightarrow a-b \in I$.
L'**anneau quotient** $A/I$ est l'ensemble des classes d'équivalence pour cette relation, muni des opérations :

- **Addition** : $(a+I) + (b+I) = (a+b)+I$
- **Multiplication** : $(a+I) \cdot (b+I) = (ab)+I$
  où $a+I = \text{cl}(a)$ est la classe de $a$.

### Propriétés Clés

- Le noyau d'un morphisme d'anneaux $f: A \to B$ est toujours un idéal de $A$.
- La multiplication dans $A/I$ est bien définie (le résultat ne dépend pas des représentants choisis) précisément parce que $I$ est un idéal.
- L'application canonique $\pi : A \to A/I$ définie par $\pi(a) = a+I$ est un morphisme d'anneaux surjectif, dont le noyau est exactement $I$.
- **Propriété universelle de l'anneau quotient** : Pour tout morphisme d'anneaux $f : A \to B$ tel que $I \subset \text{Ker}(f)$ (i.e. $f(I)=\{0\}$), il existe un unique morphisme d'anneaux $\bar{f} : A/I \to B$ tel que $f = \bar{f} \circ \pi$.

### Exemples

**Exemple 1 : L'anneau $\mathbb{Z}/n\mathbb{Z}$**

Dans l'anneau $\mathbb{Z}$, l'ensemble $n\mathbb{Z}$ des multiples de $n$ est un idéal. L'anneau quotient $\mathbb{Z}/n\mathbb{Z}$ est l'anneau des entiers modulo $n$. C'est une structure fondamentale en arithmétique.

**Exemple 2 : Construction de $\mathbb{C}$**

Considérons l'anneau $\mathbb{R}[X]$ des polynômes à coefficients réels. L'ensemble $I = (X^2+1)\mathbb{R}[X]$ des polynômes multiples de $X^2+1$ est un idéal. L'anneau quotient $\mathbb{R}[X]/I$ est isomorphe au corps des nombres complexes $\mathbb{C}$. La classe du polynôme $X$ dans le quotient correspond au nombre $i$.

**Exemple 3 : Noyau d'un morphisme d'évaluation**

Le noyau du morphisme d'anneaux $\text{ev}_0 : C^0(\mathbb{R}, \mathbb{R}) \to \mathbb{R}$ qui évalue une fonction en 0 est l'ensemble $I_0 = \{f \in C^0(\mathbb{R}, \mathbb{R}) \mid f(0)=0\}$. C'est un idéal de l'anneau des fonctions continues.

### Contre-exemples

**Contre-exemple 1 : Un sous-anneau qui n'est pas un idéal**

$\mathbb{Z}$ est un sous-anneau de $\mathbb{Q}$. Cependant, ce n'est pas un idéal de $\mathbb{Q}$, car la condition d'absorption n'est pas vérifiée : prenez $x=1 \in \mathbb{Z}$ et $a=1/2 \in \mathbb{Q}$. Alors $ax = 1/2 \notin \mathbb{Z}$.

**Contre-exemple 2 : Un sous-groupe additif qui n'est pas un idéal**

Considérons l'anneau de matrices $A=M_2(\mathbb{R})$. Le sous-ensemble $I$ des matrices de la forme $\begin{pmatrix} a & 0 \\ b & 0 \end{pmatrix}$ est un sous-groupe additif. Mais ce n'est pas un idéal (à droite), car:

$$
\begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix} \in I \text{ et } \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix} \in A, \text{ mais } \begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix}\begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix} = \begin{pmatrix} 0 & 1 \\ 0 & 0 \end{pmatrix} \notin I
$$

### Concepts Connexes

- **Premier théorème d'isomorphisme** : Pour un morphisme d'anneaux $f: A \to B$, on a un isomorphisme $A/\text{Ker}(f) \cong \text{Im}(f)$.
- **Idéaux premiers et maximaux** : Des types d'idéaux spéciaux qui donnent des anneaux quotients avec des propriétés particulièrement intéressantes (anneaux intègres et corps, respectivement).
