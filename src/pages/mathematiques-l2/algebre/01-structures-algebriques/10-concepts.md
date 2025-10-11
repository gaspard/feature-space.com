---
title: A - Concepts
level: regular
course: Structures algébriques et algèbre bilinéaire
chapter: Structures algébriques
order: 10
tags: ["concepts", "mathematics", "regular"]
---

# Structures algébriques (A)

---

## Concept 1: Applications et leurs propriétés

### Prérequis

-   Notions de base de la théorie des ensembles : ensemble, élément, appartenance ($\in$), sous-ensemble ($\subset$), produit cartésien ($X \times Y$).

### Définition

Soient $X$ et $Y$ deux ensembles.

Une **application** (ou fonction) $f$ de $X$ dans $Y$, notée $f : X \to Y$, est une règle qui associe à **chaque** élément $x$ de l'ensemble de départ $X$ un **unique** élément $y$ de l'ensemble d'arrivée $Y$. Cet unique élément $y$ est noté $f(x)$ et est appelé l'**image** de $x$ par $f$.

Formellement, une application est définie par son **graphe**, qui est un sous-ensemble $\Gamma_f \subset X \times Y$ tel que pour tout $x \in X$, il existe un et un seul $y \in Y$ pour lequel $(x, y) \in \Gamma_f$. On a alors $\Gamma_f = \{(x, f(x)) \mid x \in X\}$.

-   **Composition** : Si $f : X \to Y$ et $g : Y \to Z$ sont deux applications, leur composition est l'application $g \circ f : X \to Z$ définie par $(g \circ f)(x) = g(f(x))$ pour tout $x \in X$.
-   **Application identité** : Pour tout ensemble $X$, l'application identité $\text{id}_X : X \to X$ est définie par $\text{id}_X(x) = x$ pour tout $x \in X$.

On distingue plusieurs types d'applications selon leurs propriétés :

1.  **Injection** : Une application $f : X \to Y$ est dite **injective** si deux éléments distincts de $X$ ont toujours des images distinctes dans $Y$. Autrement dit :

    $$

    \forall x_1, x_2 \in X, \quad (f(x_1) = f(x_2) \implies x_1 = x_2).

    $$

    Cela signifie que chaque élément de l'ensemble d'arrivée $Y$ est l'image d'au plus un élément de $X$.

2.  **Surjection** : Une application $f : X \to Y$ est dite **surjective** si tout élément de l'ensemble d'arrivée $Y$ est l'image d'au moins un élément de $X$. Autrement dit :

    $$

    \forall y \in Y, \quad \exists x \in X \text{ tel que } f(x) = y.

    $$

3.  **Bijection** : Une application $f : X \to Y$ est dite **bijective** si elle est à la fois injective et surjective. Cela signifie que pour tout élément $y \in Y$, il existe un et un seul élément $x \in X$ tel que $f(x) = y$. Une application bijective est aussi appelée une **correspondance biunivoque**.

### Propriétés Clés

-   **Associativité de la composition** : La composition des applications est associative. Si $f : X \to Y$, $g : Y \to Z$ et $h : Z \to T$, alors $h \circ (g \circ f) = (h \circ g) \circ f$.
-   **Élément neutre pour la composition** : L'application identité est l'élément neutre pour la composition. Pour toute application $f : X \to Y$, on a $f \circ \text{id}_X = f$ et $\text{id}_Y \circ f = f$.
-   **Inverse d'une application** : Une application $f : X \to Y$ est bijective si et seulement si elle admet une application **inverse** (ou réciproque) $f^{-1} : Y \to X$ telle que $f^{-1} \circ f = \text{id}_X$ et $f \circ f^{-1} = \text{id}_Y$.
-   **Image et image inverse** : Pour une partie $P \subset X$, l'**image directe** de $P$ par $f$ est $f(P) = \{f(x) \mid x \in P\} \subset Y$. Pour une partie $Q \subset Y$, l'**image inverse** (ou préimage) de $Q$ par $f$ est $f^{-1}(Q) = \{x \in X \mid f(x) \in Q\} \subset X$.

### Exemples

**Exemple 1 : Fonction polynomiale**

Soit l'application $f: \mathbb{R} \to \mathbb{R}$ définie par $f(x) = x^2$.

-   Elle n'est **pas injective** car des éléments distincts peuvent avoir la même image, par exemple $f(2) = 4$ et $f(-2) = 4$.
-   Elle n'est **pas surjective** car les nombres négatifs n'ont pas d'antécédent. Par exemple, il n'existe aucun $x \in \mathbb{R}$ tel que $x^2 = -1$.
-   L'image de $f$ est $\text{Im}(f) = f(\mathbb{R}) = [0, +\infty)$.
-   L'image inverse de l'ensemble $Q = \{4\}$ est $f^{-1}(\{4\}) = \{-2, 2\}$.

**Exemple 2 : Fonction exponentielle**

Soit l'application $g: \mathbb{R} \to \mathbb{R}^*_+ = (0, +\infty)$ définie par $g(x) = e^x$.

-   Elle est **injective** car si $e^{x_1} = e^{x_2}$, alors en appliquant le logarithme népérien, on obtient $x_1 = x_2$.
-   Elle est **surjective** car pour tout $y > 0$, il existe un $x = \ln(y) \in \mathbb{R}$ tel que $g(x) = e^{\ln(y)} = y$.
-   Puisqu'elle est injective et surjective, elle est **bijective**. Son application inverse est $g^{-1}: \mathbb{R}^*_+ \to \mathbb{R}$ définie par $g^{-1}(y) = \ln(y)$.

**Exemple 3 : Application d'inclusion**

Soit $Y$ un sous-ensemble de $X$ (par exemple $Y = [0, 1]$ et $X=\mathbb{R}$). L'application d'inclusion (ou injection canonique) $i : Y \to X$ est définie par $i(y) = y$ pour tout $y \in Y$.

-   Cette application est toujours **injective**. Si $i(y_1) = i(y_2)$, alors par définition $y_1 = y_2$.
-   Elle est surjective si et seulement si $Y=X$.

### Contre-exemples

**Contre-exemple 1 : Une relation qui n'est pas une application**

Considérons les ensembles $X = \{1, 2\}$ et $Y = \{a, b, c\}$. Le sous-ensemble du produit cartésien $R = \{(1, a), (1, b), (2, c)\} \subset X \times Y$ ne définit **pas** une application $f:X \to Y$. L'élément $1 \in X$ est associé à deux éléments de $Y$ ($a$ et $b$), ce qui viole la condition d'unicité de l'image.

**Contre-exemple 2 : Un autre cas de non-application**

Considérons $X = \{1, 2, 3\}$ et $Y = \{a, b\}$. Le sous-ensemble $R = \{(1, a), (3, b)\} \subset X \times Y$ ne définit **pas** une application $f:X \to Y$. L'élément $2 \in X$ n'est associé à aucun élément de $Y$, ce qui viole la condition que chaque élément de l'ensemble de départ doit avoir une image.

### Concepts Liés

-   **Morphismes** : La notion d'application est la base de celle de morphisme. Un morphisme est une application entre deux ensembles munis d'une structure (algébrique, topologique, etc.) qui "respecte" cette structure.
-   **Relations binaires** : Une application est un cas particulier de relation binaire.

---

## Concept 2: Principe de récurrence

### Prérequis

-   Connaissance de l'ensemble des entiers naturels $\mathbb{N} = \{0, 1, 2, \dots\}$.
-   Notion de propriété (ou prédicat) sur un ensemble.

### Définition

Le **principe de récurrence** est un axiome fondamental de l'ensemble des entiers naturels $\mathbb{N}$. Il fournit une méthode de démonstration puissante pour prouver qu'une propriété est vraie pour tous les entiers naturels à partir d'un certain rang.

Soit $P(n)$ une propriété qui dépend d'un entier naturel $n$. Pour démontrer que $P(n)$ est vraie pour tout $n \ge n_0$ (où $n_0$ est un entier de départ, souvent 0 ou 1), la démonstration par récurrence se déroule en deux étapes :

1.  **Initialisation (ou cas de base)** : On vérifie que la propriété $P(n_0)$ est vraie.
2.  **Hérédité** : On suppose que la propriété $P(k)$ est vraie pour un entier arbitraire $k \ge n_0$ (c'est l'**hypothèse de récurrence**), et on démontre que, sous cette hypothèse, la propriété $P(k+1)$ est également vraie.

    $$

    \forall k \ge n_0, \quad (P(k) \text{ est vraie} \implies P(k+1) \text{ est vraie}).

    $$

Si ces deux étapes sont validées, le principe de récurrence permet de conclure que $P(n)$ est vraie pour tout entier $n \ge n_0$.

Il existe aussi une variante, appelée **récurrence forte** :

1.  **Initialisation** : On vérifie que $P(n_0)$ est vraie.
2.  **Hérédité** : On suppose que $P(j)$ est vraie pour **tous** les entiers $j$ tels que $n_0 \le j \le k$, et on démontre que $P(k+1)$ est vraie.

### Propriétés Clés

-   **Fondement des entiers** : Le principe de récurrence est l'une des propriétés caractéristiques de l'ensemble $\mathbb{N}$ (Axiomes de Peano).
-   **Équivalence avec le bon ordre** : Le principe de récurrence est équivalent à la propriété que toute partie non vide de $\mathbb{N}$ admet un plus petit élément (principe du bon ordre).
-   **Méthode de construction** : La récurrence peut aussi servir à définir des objets mathématiques, comme des suites. Par exemple, la suite de Fibonacci est définie par récurrence : $F_0=0, F_1=1$ et $F_{n+2} = F_{n+1} + F_n$.

### Exemples

**Exemple 1 : Somme des $n$ premiers entiers**

Démontrons que pour tout $n \ge 1$, la somme des entiers de 1 à $n$ est $\sum_{i=1}^n i = \frac{n(n+1)}{2}$.

Soit $P(n)$ la propriété "$\sum_{i=1}^n i = \frac{n(n+1)}{2}$".

1.  **Initialisation** ($n=1$) : $\sum_{i=1}^1 i = 1$. Et $\frac{1(1+1)}{2} = \frac{2}{2} = 1$. Donc $P(1)$ est vraie.
2.  **Hérédité** : Supposons que $P(k)$ est vraie pour un certain $k \ge 1$, c'est-à-dire $\sum_{i=1}^k i = \frac{k(k+1)}{2}$.

    Montrons que $P(k+1)$ est vraie.

    $$

    \sum_{i=1}^{k+1} i = \left(\sum_{i=1}^k i\right) + (k+1) = \frac{k(k+1)}{2} + (k+1) \quad (\text{par hypothèse de récurrence})

    $$

    $$

    = (k+1) \left(\frac{k}{2} + 1\right) = (k+1) \left(\frac{k+2}{2}\right) = \frac{(k+1)(k+2)}{2}.

    $$

    Ceci est bien la formule pour $n=k+1$. Donc $P(k+1)$ est vraie.

Par le principe de récurrence, la formule est vraie pour tout $n \ge 1$.

**Exemple 2 : Inégalité de Bernoulli**

Démontrons que pour tout $x \ge -1$ et pour tout entier $n \ge 0$, on a $(1+x)^n \ge 1+nx$.

Soit $P(n)$ la propriété "$(1+x)^n \ge 1+nx$".

1.  **Initialisation** ($n=0$) : $(1+x)^0 = 1$ et $1+0 \cdot x = 1$. L'inégalité $1 \ge 1$ est vraie. Donc $P(0)$ est vraie.
2.  **Hérédité** : Supposons $P(k)$ vraie pour un $k \ge 0$, i.e., $(1+x)^k \ge 1+kx$.

    Montrons $P(k+1)$ :

    $$

    (1+x)^{k+1} = (1+x)^k (1+x)

    $$

    Comme $1+x \ge 0$ (car $x \ge -1$), on peut multiplier l'inégalité de l'hypothèse de récurrence par $(1+x)$ :

    $$

    (1+x)^k (1+x) \ge (1+kx)(1+x) = 1 + x + kx + kx^2 = 1 + (k+1)x + kx^2.

    $$

    Puisque $kx^2 \ge 0$, on a $1 + (k+1)x + kx^2 \ge 1 + (k+1)x$.

    Donc, $(1+x)^{k+1} \ge 1+(k+1)x$. $P(k+1)$ est vraie.

La propriété est donc vraie pour tout $n \ge 0$.

**Exemple 3 : Divisibilité**

Démontrons que pour tout $n \ge 0$, $7^n - 1$ est divisible par 6.

Soit $P(n)$ la propriété "$7^n - 1$ est un multiple de 6".

1.  **Initialisation** ($n=0$) : $7^0 - 1 = 1-1 = 0$. Or 0 est un multiple de 6 ($0 = 6 \cdot 0$). $P(0)$ est vraie.
2.  **Hérédité** : Supposons $P(k)$ vraie, i.e., $7^k - 1 = 6m$ pour un certain entier $m$.

    Montrons $P(k+1)$ :

    $$

    7^{k+1} - 1 = 7 \cdot 7^k - 1 = 7 \cdot (6m + 1) - 1 = 42m + 7 - 1 = 42m + 6 = 6(7m+1).

    $$

    Ceci est bien un multiple de 6. Donc $P(k+1)$ est vraie.

La propriété est vraie pour tout $n \ge 0$.

### Contre-exemples

**Contre-exemple 1 : Initialisation manquante**

Affirmation : "Pour tout entier $n \ge 1$, $n = n+1$".

Tentative de preuve par récurrence :

- **Hérédité** : Supposons que $k=k+1$ pour un certain $k \ge 1$. Ajoutons 1 des deux côtés : $k+1 = (k+1)+1$. L'hérédité est prouvée.
- **Initialisation** : Essayons pour $n=1$. Est-ce que $1=1+1$? Non, $1 \neq 2$.

L'initialisation est fausse. La propriété est donc fausse. Cet exemple montre que l'étape d'hérédité seule ne suffit pas.

**Contre-exemple 2 : Hérédité défaillante**

Affirmation : "Tous les chevaux sont de la même couleur".

Tentative de preuve par récurrence sur le nombre de chevaux. Soit $P(n)$ : "Dans un groupe de $n$ chevaux, tous ont la même couleur".

- **Initialisation** ($n=1$) : Dans un groupe d'un seul cheval, tous les chevaux ont la même couleur. $P(1)$ est vraie.
- **Hérédité** : Supposons $P(k)$ vraie. Considérons un groupe de $k+1$ chevaux. Retirons un cheval A. Il reste $k$ chevaux qui, par hypothèse de récurrence, sont de la même couleur. Remettons A et retirons un autre cheval B. Le nouveau groupe de $k$ chevaux est aussi de la même couleur. Donc A a la même couleur que les autres, qui ont la même couleur que B. Donc les $k+1$ chevaux sont de la même couleur.

Le raisonnement semble correct, mais il y a une faille. Le passage de $k=1$ à $k=2$ ne fonctionne pas. Si on a 2 chevaux {A, B}, en retirant A, il reste {B}. En retirant B, il reste {A}. Les deux groupes (de 1 cheval) sont bien unicolores, mais rien ne permet de dire que A et B ont la même couleur car les deux sous-groupes n'ont pas d'élément en commun.

### Concepts Liés

-   **Axiomes de Peano** : Le principe de récurrence est l'un des axiomes de Peano qui définissent formellement les entiers naturels.
-   **Définitions par récurrence** : Permet de définir des suites ou des fonctions sur $\mathbb{N}$ (ex: factorielle, suites de Fibonacci).

---

## Concept 3: Loi de composition interne

### Prérequis

-   Notions de base de la théorie des ensembles, notamment le produit cartésien $X \times X$.
-   Notion d'application (Concept 1).

### Définition

Une **loi de composition interne** (ou **opération binaire**) sur un ensemble non vide $E$ est une application $* : E \times E \to E$.

Cela signifie que pour toute paire d'éléments $(x, y)$ de $E$, la loi $*$ leur associe un unique élément $x * y$ qui appartient **lui aussi** à $E$. Le fait que le résultat reste dans l'ensemble de départ est la raison pour laquelle la loi est dite "interne".

On s'intéresse particulièrement aux propriétés que peut vérifier une telle loi :

1.  **Associativité** : La loi $*$ est associative si, pour tous $x, y, z \in E$, on a :

    $$

    (x * y) * z = x * (y * z).

    $$

    Cela signifie que l'ordre dans lequel on effectue les opérations n'a pas d'importance quand on compose trois éléments ou plus.

2.  **Commutativité** : La loi $*$ est commutative si, pour tous $x, y \in E$, on a :

    $$

    x * y = y * x.

    $$

    Cela signifie que l'ordre des opérandes n'a pas d'importance.

3.  **Élément neutre** : Un élément $e \in E$ est un élément neutre pour la loi $*$ si, pour tout $x \in E$, on a :

    $$

    e * x = x * e = x.

    $$

    Un élément neutre, s'il existe, est unique.

4.  **Élément inversible (ou symétrique)** : Si la loi $*$ possède un élément neutre $e$, on dit qu'un élément $x \in E$ est **inversible** (ou admet un symétrique) s'il existe un élément $y \in E$ tel que :

    $$

    x * y = y * x = e.

    $$

    Cet élément $y$ est appelé l'**inverse** de $x$. Si la loi est associative, cet inverse, s'il existe, est unique.

5.  **Distributivité** : Si deux lois $*$ et $\diamond$ sont définies sur $E$, on dit que $*$ est distributive par rapport à $\diamond$ si pour tous $x, y, z \in E$ :

    $$

    x * (y \diamond z) = (x * y) \diamond (x * z) \quad \text{(distributivité à gauche)}

    $$

    $$

    (y \diamond z) * x = (y * x) \diamond (z * x) \quad \text{(distributivité à droite)}

    $$

### Propriétés Clés

-   **Stabilité** : La définition même d'une loi interne implique que l'ensemble $E$ est stable pour cette loi. Un sous-ensemble $F \subset E$ est dit stable pour $*$ si pour tous $x,y \in F$, on a $x*y \in F$.
-   **Unicité de l'élément neutre** : S'il existe un élément neutre pour une loi, il est unique.
-   **Unicité de l'inverse** : Si une loi est associative et possède un élément neutre, alors chaque élément inversible a un inverse unique.

### Exemples

**Exemple 1 : Addition sur les entiers relatifs $\mathbb{Z}$**

La loi $+$ est une loi de composition interne sur $\mathbb{Z}$.

-   Elle est **associative** : $(a+b)+c = a+(b+c)$.
-   Elle est **commutative** : $a+b = b+a$.
-   Elle a un **élément neutre** : $0$, car $a+0 = 0+a = a$.
-   Tout élément $a \in \mathbb{Z}$ est **inversible** : son inverse (appelé opposé) est $-a$, car $a+(-a) = (-a)+a = 0$.

**Exemple 2 : Multiplication sur les réels $\mathbb{R}$**

La loi $\times$ est une loi de composition interne sur $\mathbb{R}$.

-   Elle est **associative** et **commutative**.
-   Elle a un **élément neutre** : $1$.
-   Tout élément $x \in \mathbb{R}$, sauf $0$, est **inversible** : son inverse est $1/x$. L'élément $0$ n'est pas inversible.

**Exemple 3 : Composition de fonctions**

Soit $E$ l'ensemble des applications de $\mathbb{R}$ dans $\mathbb{R}$. La composition $\circ$ est une loi de composition interne sur $E$.

-   Elle est **associative** : $(f \circ g) \circ h = f \circ (g \circ h)$.
-   Elle a un **élément neutre** : l'application identité $\text{id}_{\mathbb{R}}(x) = x$.
-   Elle n'est **pas commutative** en général. Par exemple, si $f(x)=x+1$ et $g(x)=x^2$, alors $(f \circ g)(x) = x^2+1$ mais $(g \circ f)(x) = (x+1)^2$.
-   Les éléments **inversibles** sont les applications bijectives (Concept 1).

### Contre-exemples

**Contre-exemple 1 : Une loi non interne**

La soustraction $-$ n'est pas une loi de composition interne sur l'ensemble des entiers naturels $\mathbb{N}=\{0, 1, 2, \dots\}$. En effet, on peut choisir $x=3$ et $y=5$, deux éléments de $\mathbb{N}$, mais leur différence $x-y = 3-5 = -2$ n'appartient pas à $\mathbb{N}$.

**Contre-exemple 2 : Une opération non définie partout**

La division $\div$ n'est pas une loi de composition interne sur l'ensemble des nombres réels $\mathbb{R}$. En effet, l'opération $x \div y$ n'est pas définie pour toute paire $(x,y) \in \mathbb{R} \times \mathbb{R}$. Spécifiquement, la division par $0$ est impossible. Ce n'est donc pas une application de $\mathbb{R} \times \mathbb{R}$ dans $\mathbb{R}$.

### Concepts Liés

-   **Structures algébriques** : Les lois de composition interne et leurs propriétés sont les briques de base pour définir les structures algébriques comme les groupes, les anneaux et les corps.
-   **Table de Cayley** : Pour un ensemble fini, une loi de composition interne peut être représentée par une table (dite de Cayley) qui donne le résultat de $x*y$ à l'intersection de la ligne $x$ et de la colonne $y$.

---

## Concept 4: Groupes

### Prérequis

-   Ensemble, Loi de composition interne (Concept 3).
-   Propriétés d'associativité, élément neutre, élément inversible.

### Définition

Un **groupe** est un couple $(G, *)$ formé d'un ensemble non vide $G$ et d'une loi de composition interne $*$ sur $G$ qui satisfait les trois axiomes suivants :

1.  **Associativité** : La loi $*$ est associative. Pour tous $a, b, c \in G$, on a $(a * b) * c = a * (b * c)$.
2.  **Élément neutre** : Il existe un élément $e \in G$, appelé élément neutre, tel que pour tout $a \in G$, on a $a * e = e * a = a$.
3.  **Inverse (ou symétrique)** : Pour chaque élément $a \in G$, il existe un élément $a' \in G$, appelé inverse de $a$, tel que $a * a' = a' * a = e$. L'inverse de $a$ est souvent noté $a^{-1}$ (notation multiplicative) ou $-a$ (notation additive).

Si de plus la loi $*$ est commutative (c'est-à-dire $a*b = b*a$ pour tous $a,b \in G$), on dit que le groupe est **abélien** (ou commutatif).

Un **monoïde** est une structure plus faible qui ne requiert que les axiomes 1 (associativité) et 2 (élément neutre). Un groupe est donc un monoïde où tout élément est inversible.

### Propriétés Clés

-   L'élément neutre d'un groupe est **unique**.
-   Chaque élément d'un groupe a un **inverse unique**.
-   **Règle de simplification** : Dans un groupe, on peut "simplifier" les équations. Si $a*b = a*c$, alors $b=c$. De même, si $b*a = c*a$, alors $b=c$.
-   **Inverse d'un produit** : Pour tous $a, b \in G$, on a $(a * b)^{-1} = b^{-1} * a^{-1}$. Attention à l'inversion de l'ordre ! Si le groupe est abélien, l'ordre n'a pas d'importance.
-   **Équations dans un groupe** : Pour tous $a, b \in G$, les équations $a * x = b$ et $y * a = b$ ont des solutions uniques dans $G$, qui sont respectivement $x = a^{-1} * b$ et $y = b * a^{-1}$.

### Exemples

**Exemple 1 : Le groupe additif des entiers $(\mathbb{Z}, +)$**

C'est un groupe abélien.

-   L'addition est associative.
-   L'élément neutre est $0$.
-   L'inverse de chaque entier $n$ est son opposé $-n$.
-   L'addition est commutative.

De même, $(\mathbb{Q}, +)$, $(\mathbb{R}, +)$, $(\mathbb{C}, +)$ sont des groupes abéliens.

**Exemple 2 : Le groupe multiplicatif des réels non nuls $(\mathbb{R}^*, \cdot)$**

$\mathbb{R}^* = \mathbb{R} \setminus \{0\}$.

-   La multiplication est associative.
-   L'élément neutre est $1$.
-   L'inverse de chaque réel non nul $x$ est $1/x$.
-   La multiplication est commutative, donc c'est un groupe abélien.

De même, $(\mathbb{Q}^*, \cdot)$ et $(\mathbb{C}^*, \cdot)$ sont des groupes abéliens.

**Exemple 3 : Le groupe des bijections (Groupe symétrique)**

Soit $X$ un ensemble. L'ensemble $\mathcal{B}(X)$ de toutes les applications bijectives de $X$ dans $X$, muni de la loi de composition $\circ$, forme un groupe.

-   La composition est associative.
-   L'élément neutre est l'application identité $\text{id}_X$.
-   L'inverse de chaque bijection $f$ est son application réciproque $f^{-1}$.

Si $X = \{1, 2, \dots, n\}$, ce groupe est noté $S_n$ et est appelé le **groupe symétrique d'ordre n**. Pour $n \ge 3$, ce groupe n'est **pas abélien**.

### Contre-exemples

**Contre-exemple 1 : Le monoïde des entiers naturels $(\mathbb{N}, +)$**

$(\mathbb{N}, +)$ est un monoïde commutatif (associatif, élément neutre 0) mais **ce n'est pas un groupe**. En effet, à part 0, aucun élément n'a d'inverse dans $\mathbb{N}$. Par exemple, l'inverse de 2 pour l'addition est -2, qui n'appartient pas à $\mathbb{N}$.

**Contre-exemple 2 : Les entiers pour la multiplication $(\mathbb{Z}, \cdot)$**

$(\mathbb{Z}, \cdot)$ est un monoïde commutatif (associatif, élément neutre 1) mais **ce n'est pas un groupe**. Seuls deux éléments ont un inverse : $1$ (son propre inverse) et $-1$ (son propre inverse). Les autres entiers comme 2 n'ont pas d'inverse dans $\mathbb{Z}$ (l'inverse de 2 est 1/2 qui n'est pas un entier).

### Concepts Liés

-   **Sous-groupe** : Un sous-ensemble d'un groupe qui est lui-même un groupe pour la même loi.
-   **Morphisme de groupe** : Une application entre deux groupes qui préserve la structure de groupe.
-   **Groupe quotient** : Une façon de construire un nouveau groupe à partir d'un groupe et d'un de ses sous-groupes (particuliers).

---

## Concept 5: Anneaux et Corps

### Prérequis

-   Notion de Groupe (Concept 4), en particulier la notion de groupe abélien.
-   Loi de composition interne (Concept 3) et la propriété de distributivité.

### Définition

#### Anneau

Un **anneau** est un triplet $(A, +, \times)$ formé d'un ensemble non vide $A$ et de deux lois de composition internes $+$ (addition) et $\times$ (multiplication) telles que :

1.  $(A, +)$ est un **groupe abélien**.
    -   L'addition est associative et commutative.
    -   Il existe un élément neutre pour l'addition, noté $0$.
    -   Chaque élément $a \in A$ a un inverse pour l'addition (opposé), noté $-a$.
2.  $(A, \times)$ est un **monoïde**.
    -   La multiplication est associative.
    -   Il existe un élément neutre pour la multiplication, noté $1$.
3.  La multiplication est **distributive** par rapport à l'addition. Pour tous $a, b, c \in A$ :
    -   $a \times (b + c) = (a \times b) + (a \times c)$
    -   $(b + c) \times a = (b \times a) + (c \times a)$

Si la multiplication est commutative, l'anneau est dit **commutatif**.

Un anneau est dit **intègre** s'il est non nul ($1 \neq 0$), commutatif, et n'a pas de "diviseurs de zéro", c'est-à-dire :

$$

\forall a, b \in A, \quad (a \times b = 0 \implies a = 0 \text{ ou } b = 0).

$$

#### Corps

Un **corps** est un anneau commutatif $(K, +, \times)$ dans lequel tout élément non nul est inversible pour la multiplication. Plus précisément :

1.  $(K, +, \times)$ est un anneau commutatif.
2.  L'anneau n'est pas l'anneau nul ($1 \neq 0$).
3.  Tout élément $a \in K \setminus \{0\}$ admet un inverse multiplicatif $a^{-1} \in K$ tel que $a \times a^{-1} = 1$.

Cela revient à dire que $(K, +)$ est un groupe abélien et que $(K \setminus \{0\}, \times)$ est aussi un groupe abélien.

### Propriétés Clés

-   Dans tout anneau $A$, pour tout $a \in A$, on a $a \times 0 = 0 \times a = 0$.
-   Pour tous $a,b \in A$, on a $a \times (-b) = (-a) \times b = -(a \times b)$.
-   Dans un corps, l'équation $a \times x = b$ (avec $a \neq 0$) a toujours une solution unique $x = a^{-1} \times b$.
-   Tout corps est un anneau intègre. La réciproque est fausse (par exemple $\mathbb{Z}$).

### Exemples

**Exemple 1 : L'anneau des entiers relatifs $(\mathbb{Z}, +, \times)$**

-   $(\mathbb{Z}, +)$ est un groupe abélien.
-   $(\mathbb{Z}, \times)$ est un monoïde commutatif (l'élément neutre est 1).
-   La multiplication est distributive sur l'addition.
-   C'est donc un **anneau commutatif**. Il est également **intègre** (si $ab=0$ avec $a,b \in \mathbb{Z}$, alors $a=0$ ou $b=0$).
-   Ce n'est **pas un corps** car seuls $1$ et $-1$ sont inversibles pour la multiplication.

**Exemple 2 : Les corps des nombres $(\mathbb{Q}, +, \times)$, $(\mathbb{R}, +, \times)$, $(\mathbb{C}, +, \times)$**

Ces trois ensembles, munis de l'addition et de la multiplication usuelles, sont des **corps commutatifs**. Pour chacun d'eux, tout élément non nul a un inverse multiplicatif.

**Exemple 3 : L'anneau des matrices carrées $(M_n(\mathbb{R}), +, \times)$**

L'ensemble des matrices carrées de taille $n \times n$ à coefficients réels, muni de l'addition et de la multiplication matricielle.

-   $(M_n(\mathbb{R}), +)$ est un groupe abélien (la matrice nulle est l'élément neutre).
-   $(M_n(\mathbb{R}), \times)$ est un monoïde (la matrice identité est l'élément neutre).
-   La multiplication est distributive sur l'addition.
-   C'est donc un **anneau**. Si $n \ge 2$, cet anneau n'est **pas commutatif** (en général, $AB \neq BA$) et n'est **pas intègre** (on peut avoir $AB=0$ avec $A \neq 0$ et $B \neq 0$).

### Contre-exemples

**Contre-exemple 1 : Les entiers naturels $(\mathbb{N}, +, \times)$**

$(\mathbb{N}, +, \times)$ n'est **pas un anneau** car $(\mathbb{N}, +)$ n'est pas un groupe (les éléments non nuls n'ont pas d'opposé dans $\mathbb{N}$).

**Contre-exemple 2 : L'anneau $\mathbb{Z}/6\mathbb{Z}$**

C'est l'anneau des entiers modulo 6. C'est un anneau commutatif, mais il n'est **pas intègre**. En effet, dans cet anneau, on a $2 \times 3 = 6 \equiv 0 \pmod 6$. Pourtant, $2 \neq 0$ et $3 \neq 0$. Cet anneau n'est donc a fortiori **pas un corps**.

### Concepts Liés

-   **Idéal** : un sous-ensemble d'un anneau qui joue un rôle similaire à celui de sous-groupe normal pour les groupes.
-   **Morphisme d'anneau** : une application entre deux anneaux qui préserve les deux lois et l'élément neutre multiplicatif.
-   **Polynômes** : L'ensemble des polynômes à coefficients dans un anneau $A$, noté $A[X]$, forme lui-même un anneau.

---

## Concept 6: Morphismes de structures algébriques

### Prérequis

-   Notion d'Application (Concept 1).
-   Structures de Groupe (Concept 4) et d'Anneau (Concept 5).

### Définition

Un **morphisme** est une application entre deux ensembles munis de la même structure algébrique, qui "respecte" ou "préserve" cette structure.

#### Morphisme de groupes

Soient $(G, *_G)$ et $(H, *_H)$ deux groupes. Une application $f : G \to H$ est un **morphisme de groupes** si, pour tous $g_1, g_2 \in G$, on a :

$$

f(g_1 *_G g_2) = f(g_1) *_H f(g_2).

$$

Autrement dit, l'image du produit est le produit des images.

Pour les groupes, cette seule condition implique que l'image de l'élément neutre de $G$ est l'élément neutre de $H$ ($f(e_G) = e_H$) et que l'image de l'inverse est l'inverse de l'image ($f(g^{-1}) = (f(g))^{-1}$).

#### Morphisme d'anneaux

Soient $(A, +_A, \times_A)$ et $(B, +_B, \times_B)$ deux anneaux. Une application $f : A \to B$ est un **morphisme d'anneaux** si, pour tous $a_1, a_2 \in A$ :

1.  Elle préserve l'addition : $f(a_1 +_A a_2) = f(a_1) +_B f(a_2)$. (C'est un morphisme pour les groupes additifs).
2.  Elle préserve la multiplication : $f(a_1 \times_A a_2) = f(a_1) \times_B f(a_2)$.
3.  Elle préserve l'élément neutre multiplicatif : $f(1_A) = 1_B$.

#### Types de morphismes

-   Un **isomorphisme** est un morphisme bijectif. S'il existe un isomorphisme entre deux structures, on dit qu'elles sont **isomorphes** (elles ont la même "forme", elles sont structurellement identiques).
-   Un **endomorphisme** est un morphisme d'une structure dans elle-même.
-   Un **automorphisme** est un isomorphisme d'une structure dans elle-même (c'est un endomorphisme bijectif).

### Propriétés Clés

-   **Composition** : La composition de deux morphismes (de même type) est un morphisme.
-   **Noyau et Image** : Pour un morphisme de groupes $f: G \to H$ :
    -   Le **noyau** de $f$, noté $\text{Ker}(f)$, est l'ensemble des éléments de $G$ envoyés sur l'élément neutre de $H$: $\text{Ker}(f) = \{g \in G \mid f(g) = e_H\}$. C'est un sous-groupe de $G$.
    -   L'**image** de $f$, notée $\text{Im}(f)$, est l'ensemble des images des éléments de $G$: $\text{Im}(f) = \{f(g) \mid g \in G\}$. C'est un sous-groupe de $H$.
-   Un morphisme de groupes $f$ est **injectif si et seulement si son noyau est réduit à l'élément neutre** ($\text{Ker}(f) = \{e_G\}$).
-   Pour un morphisme d'anneaux, le noyau est un **idéal** de l'anneau de départ.

### Exemples

**Exemple 1 : Exponentielle (morphisme de groupes)**

L'application $f: (\mathbb{R}, +) \to (\mathbb{R}^*_+, \times)$ définie par $f(x) = e^x$.

Pour tous $x, y \in \mathbb{R}$, on a :

$$

f(x+y) = e^{x+y} = e^x \times e^y = f(x) \times f(y).

$$

C'est donc un morphisme de groupes. Comme elle est bijective, c'est un **isomorphisme**.

**Exemple 2 : Déterminant (morphisme de groupes)**

Soit $\text{GL}_n(\mathbb{R})$ le groupe des matrices carrées inversibles de taille $n$ muni de la multiplication. L'application déterminant $\det : (\text{GL}_n(\mathbb{R}), \times) \to (\mathbb{R}^*, \times)$.

Pour toutes matrices inversibles $A, B$, on a la propriété bien connue :

$$

\det(A \times B) = \det(A) \times \det(B).

$$

C'est un morphisme de groupes. Ce n'est pas un isomorphisme en général (il n'est pas injectif si $n>1$).

**Exemple 3 : Projection modulo n (morphisme d'anneaux)**

Soit $n$ un entier. L'application $\text{cl}_n : (\mathbb{Z}, +, \times) \to (\mathbb{Z}/n\mathbb{Z}, +, \times)$ qui à un entier $k$ associe sa classe de congruence modulo $n$.

On a $\text{cl}_n(k+m) = \text{cl}_n(k) + \text{cl}_n(m)$ et $\text{cl}_n(k \times m) = \text{cl}_n(k) \times \text{cl}_n(m)$. De plus, $\text{cl}_n(1)$ est bien l'élément neutre de $\mathbb{Z}/n\mathbb{Z}$. C'est un morphisme d'anneaux. Son noyau est l'ensemble des multiples de $n$, $n\mathbb{Z}$.

### Contre-exemples

**Contre-exemple 1 : Une application qui ne préserve pas la loi**

Considérons $f : (\mathbb{R}, +) \to (\mathbb{R}, +)$ définie par $f(x) = x+1$.

Ce n'est **pas** un morphisme de groupes car $f(x+y) = (x+y)+1$, alors que $f(x)+f(y) = (x+1)+(y+1) = x+y+2$. Les deux résultats sont différents. De plus, $f(0) = 1 \neq 0$.

**Contre-exemple 2 : Un morphisme de groupes qui n'est pas un morphisme d'anneaux**

Considérons $f : (\mathbb{Z}, +, \times) \to (\mathbb{Z}, +, \times)$ définie par $f(x) = 2x$.

-   C'est un morphisme de groupes pour l'addition : $f(x+y) = 2(x+y) = 2x+2y = f(x)+f(y)$.
-   Mais ce n'est **pas** un morphisme d'anneaux. Il ne préserve pas la multiplication : $f(x \times y) = 2xy$, alors que $f(x) \times f(y) = (2x)(2y) = 4xy$. De plus, il ne préserve pas l'élément unité : $f(1)=2 \neq 1$.

### Concepts Liés

-   **Théorèmes d'isomorphisme** : Ces théorèmes fondamentaux (en particulier le premier) relient le noyau, l'image et la structure quotient. Par exemple, pour un morphisme de groupes $f: G \to H$, on a l'isomorphisme $G/\text{Ker}(f) \cong \text{Im}(f)$.

---

## Concept 7: Relations d'ordre

### Prérequis

-   Notion de relation binaire sur un ensemble (un sous-ensemble de $X \times X$).
-   Propriétés des relations : réflexivité, transitivité, symétrie.

### Définition

Une **relation d'ordre** sur un ensemble $E$ est une relation binaire, souvent notée $\le$, qui est :

1.  **Réflexive** : Pour tout $x \in E$, on a $x \le x$. (Chaque élément est en relation avec lui-même).
2.  **Antisymétrique** : Pour tous $x, y \in E$, si $x \le y$ et $y \le x$, alors $x = y$. (Si deux éléments sont "plus petits" l'un que l'autre, ils sont égaux).
3.  **Transitive** : Pour tous $x, y, z \in E$, si $x \le y$ et $y \le z$, alors $x \le z$.

Un ensemble muni d'une relation d'ordre, $(E, \le)$, est appelé un **ensemble ordonné**.

Si, de plus, la relation vérifie la propriété suivante :

4.  **Totale** : Pour tous $x, y \in E$, on a $x \le y$ ou $y \le x$. (On peut toujours comparer deux éléments).

Alors la relation est une **relation d'ordre total**, et $(E, \le)$ est un **ensemble totalement ordonné**. Si l'ordre n'est pas total, il est dit **partiel**.

### Propriétés Clés

-   **Plus petit élément / Minimum** : Un élément $m \in E$ est le plus petit élément si pour tout $x \in E$, $m \le x$. S'il existe, il est unique.
-   **Plus grand élément / Maximum** : Un élément $M \in E$ est le plus grand élément si pour tout $x \in E$, $x \le M$. S'il existe, il est unique.
-   **Bon ordre** : Un ensemble totalement ordonné est dit **bien ordonné** si toute partie non vide de cet ensemble admet un plus petit élément.

### Exemples

**Exemple 1 : L'ordre usuel sur les nombres réels $(\mathbb{R}, \le)$**

La relation "inférieur ou égal" sur $\mathbb{R}$ est une relation d'ordre total.

-   Réflexive : $x \le x$.
-   Antisymétrique : si $x \le y$ et $y \le x$, alors $x=y$.
-   Transitive : si $x \le y$ et $y \le z$, alors $x \le z$.
-   Totale : pour deux réels $x, y$, on a toujours $x \le y$ ou $y \le x$.

De même, $(\mathbb{N}, \le)$, $(\mathbb{Z}, \le)$, $(\mathbb{Q}, \le)$ sont des ensembles totalement ordonnés. De plus, $(\mathbb{N}, \le)$ est bien ordonné.

**Exemple 2 : La relation de divisibilité sur les entiers naturels $(\mathbb{N}^*, |)$**

Sur l'ensemble des entiers naturels non nuls $\mathbb{N}^* = \{1, 2, 3, \dots\}$, la relation "$a$ divise $b$", notée $a|b$, est une relation d'ordre.

-   Réflexive : $a|a$ pour tout $a$.
-   Antisymétrique : si $a|b$ et $b|a$, alors $b=ka$ et $a=lb$, donc $a=lka$, ce qui implique $lk=1$. Comme $l,k \in \mathbb{N}^*$, on a $l=k=1$ et donc $a=b$.
-   Transitive : si $a|b$ et $b|c$, alors $b=ka$ et $c=lb$. Donc $c=l(ka)=(lk)a$, ce qui signifie $a|c$.

C'est un **ordre partiel** et non total. Par exemple, on ne peut comparer 2 et 3 : 2 ne divise pas 3, et 3 ne divise pas 2.

**Exemple 3 : L'inclusion sur l'ensemble des parties $(\mathcal{P}(X), \subset)$**

Soit $X$ un ensemble et $\mathcal{P}(X)$ l'ensemble de ses parties. La relation d'inclusion $\subset$ est une relation d'ordre sur $\mathcal{P}(X)$.

-   Réflexive : $A \subset A$.
-   Antisymétrique : si $A \subset B$ et $B \subset A$, alors $A=B$.
-   Transitive : si $A \subset B$ et $B \subset C$, alors $A \subset C$.

Si $X$ a au moins deux éléments, cet ordre est **partiel**. Par exemple, si $X=\{a,b\}$, les parties $A=\{a\}$ et $B=\{b\}$ ne sont pas comparables.

### Contre-exemples

**Contre-exemple 1 : L'inégalité stricte $(<)$ sur $\mathbb{R}$**

La relation $<$ n'est **pas** une relation d'ordre car elle n'est pas réflexive. On n'a jamais $x < x$. (C'est ce qu'on appelle une relation d'ordre strict).

**Contre-exemple 2 : La divisibilité sur les entiers relatifs $(\mathbb{Z}^*, |)$**

La relation de divisibilité sur $\mathbb{Z}^* = \mathbb{Z} \setminus \{0\}$ n'est **pas** une relation d'ordre. Elle est réflexive et transitive, mais elle n'est pas antisymétrique. Par exemple, $2 | (-2)$ et $(-2) | 2$, mais $2 \neq -2$.

### Concepts Liés

-   **Relation d'équivalence** : L'autre grande classe de relations binaires importantes. Une relation d'équivalence est réflexive, transitive et **symétrique** (au lieu d'antisymétrique).
-   **Treillis (Lattices)** : Ensembles ordonnés où toute paire d'éléments admet une borne supérieure et une borne inférieure.

---

## Concept 8: Relations d'équivalence et Ensembles Quotients

### Prérequis

-   Notion de relation binaire et ses propriétés (réflexive, symétrique, transitive).
-   Théorie des ensembles (ensembles, sous-ensembles, partitions).

### Définition

Une **relation d'équivalence** sur un ensemble $E$ est une relation binaire, souvent notée $\sim$, qui est :

1.  **Réflexive** : Pour tout $x \in E$, on a $x \sim x$.
2.  **Symétrique** : Pour tous $x, y \in E$, si $x \sim y$, alors $y \sim x$.
3.  **Transitive** : Pour tous $x, y, z \in E$, si $x \sim y$ et $y \sim z$, alors $x \sim z$.

Une relation d'équivalence permet de "regrouper" les éléments d'un ensemble qui partagent une certaine propriété. Ces regroupements sont appelés des classes d'équivalence.

-   **Classe d'équivalence** : Pour un élément $x \in E$, sa classe d'équivalence, notée $\text{cl}(x)$ ou $\bar{x}$, est l'ensemble de tous les éléments de $E$ qui sont en relation avec $x$ :

    $$

    \text{cl}(x) = \{y \in E \mid y \sim x\}.

    $$

-   **Ensemble quotient** : L'ensemble quotient de $E$ par la relation $\sim$, noté $E/\sim$, est l'ensemble de **toutes les classes d'équivalence** :

    $$

    E/\sim = \{\text{cl}(x) \mid x \in E\}.

    $$

    Les éléments de l'ensemble quotient ne sont pas les éléments de $E$, mais des sous-ensembles de $E$.

### Propriétés Clés

-   **Partition** : Les classes d'équivalence forment une **partition** de l'ensemble $E$. Cela signifie que :
    1.  Chaque classe d'équivalence est un sous-ensemble non vide de $E$.
    2.  L'union de toutes les classes d'équivalence est égale à $E$.
    3.  Deux classes d'équivalence distinctes sont disjointes. Pour tous $x, y \in E$, soit $\text{cl}(x) = \text{cl}(y)$, soit $\text{cl}(x) \cap \text{cl}(y) = \emptyset$.
-   **Représentants** : N'importe quel élément d'une classe d'équivalence peut servir à la désigner. Si $y \in \text{cl}(x)$, alors $\text{cl}(y) = \text{cl}(x)$. $x$ et $y$ sont des **représentants** de la même classe.
-   **Propriété universelle du quotient** : L'ensemble quotient est un outil fondamental pour construire de nouveaux objets. Toute application $f: E \to F$ qui est "compatible" avec la relation (c'est-à-dire, si $x \sim y$ alors $f(x)=f(y)$) peut être "factorisée" de manière unique à travers l'ensemble quotient. Il existe une unique application $\bar{f} : E/\sim \to F$ telle que $f = \bar{f} \circ \text{cl}$.

### Exemples

**Exemple 1 : Congruence modulo n**

Sur $\mathbb{Z}$, on définit la relation $x \sim y$ si et seulement si $x-y$ est un multiple de $n$ (où $n \ge 1$ est un entier fixé). On note $x \equiv y \pmod n$.

-   C'est une relation d'équivalence.
-   La classe d'équivalence de $x$ est $\bar{x} = \{x + kn \mid k \in \mathbb{Z}\}$.
-   L'ensemble quotient est $\mathbb{Z}/n\mathbb{Z} = \{\bar{0}, \bar{1}, \dots, \overline{n-1}\}$. Il contient exactement $n$ éléments. Par exemple, $\mathbb{Z}/3\mathbb{Z} = \{\bar{0}, \bar{1}, \bar{2}\}$, où $\bar{0} = \{\dots, -3, 0, 3, 6, \dots\}$.

**Exemple 2 : Construction de $\mathbb{Z}$**

On peut construire les entiers relatifs $\mathbb{Z}$ à partir de $\mathbb{N} \times \mathbb{N}$. On définit sur cet ensemble la relation $(a, b) \sim (c, d)$ si $a+d = b+c$.

- C'est une relation d'équivalence. Intuitivement, on pense à la paire $(a,b)$ comme représentant la "différence" $a-b$. La relation dit que $a-b = c-d$.
- La classe de $(a,b)$ est notée $a-b$. L'ensemble quotient $\mathbb{N} \times \mathbb{N} / \sim$ est l'ensemble $\mathbb{Z}$. Par exemple, l'entier $-2$ correspond à la classe d'équivalence de $(0,2)$, qui contient aussi $(1,3)$, $(2,4)$, etc.

**Exemple 3 : Relation "avoir la même image"**

Soit $f : E \to F$ une application. On définit sur $E$ la relation $x \sim y$ si $f(x) = f(y)$.

- C'est une relation d'équivalence.
- La classe d'équivalence de $x$ est l'ensemble de tous les antécédents de $f(x)$ : $\text{cl}(x) = f^{-1}(\{f(x)\})$.
- L'ensemble quotient $E/\sim$ est en bijection avec l'image de $f$, $\text{Im}(f) \subset F$.

### Contre-exemples

**Contre-exemple 1 : Une relation non symétrique**

La relation $\le$ sur $\mathbb{R}$ n'est **pas** une relation d'équivalence car elle n'est pas symétrique : $3 \le 5$ mais on n'a pas $5 \le 3$.

**Contre-exemple 2 : Une relation non transitive**

Sur l'ensemble des personnes, la relation "est ami avec" n'est en général pas transitive. Si A est ami avec B, et B est ami avec C, il n'est pas garanti que A soit ami avec C. Ce n'est donc **pas** une relation d'équivalence.

### Concepts Liés

-   **Partition d'un ensemble** : Il y a une bijection entre les relations d'équivalence sur $E$ et les partitions de $E$.
-   **Groupe/Anneau quotient** : Si l'ensemble $E$ a une structure algébrique (groupe, anneau), on peut, sous certaines conditions, munir l'ensemble quotient d'une structure du même type.

---

## Concept 9: Sous-groupes et Groupes Quotients

### Prérequis

-   Notion de Groupe (Concept 4).
-   Relation d'équivalence et Ensemble Quotient (Concept 8).
-   Morphismes de groupes (Concept 6).

### Définition

#### Sous-groupe

Soit $(G, *)$ un groupe. Un sous-ensemble non vide $H \subset G$ est un **sous-groupe** de $G$ s'il est lui-même un groupe pour la loi de composition $*$.

Pour vérifier que $H$ est un sous-groupe, il suffit de montrer trois points :

1.  L'élément neutre $e_G$ est dans $H$.
2.  $H$ est **stable par la loi de groupe** : si $h_1, h_2 \in H$, alors $h_1 * h_2 \in H$.
3.  $H$ est **stable par passage à l'inverse** : si $h \in H$, alors $h^{-1} \in H$.

Une caractérisation plus compacte est : $H$ est un sous-groupe de $G$ si et seulement si $H$ est non vide et pour tous $x, y \in H$, on a $x * y^{-1} \in H$.

#### Groupe Quotient (cas abélien)

Soit $(A, +)$ un **groupe abélien** et $B$ un sous-groupe de $A$. On peut définir une relation d'équivalence $\sim_B$ sur $A$ par :

$$

a_1 \sim_B a_2 \quad \text{si et seulement si} \quad a_1 - a_2 \in B.

$$

L'ensemble quotient $A/\sim_B$ est noté $A/B$. Ses éléments sont les classes d'équivalence, qui sont de la forme $\text{cl}(a) = a+B = \{a+b \mid b \in B\}$.

Le résultat fondamental est que l'on peut munir l'ensemble quotient $A/B$ d'une structure de groupe. La loi d'addition sur $A/B$ est définie par :

$$

(a_1 + B) + (a_2 + B) = (a_1 + a_2) + B.

$$

Le fait que $A$ soit abélien garantit que cette définition est cohérente (elle ne dépend pas du choix des représentants $a_1$ et $a_2$).

L'ensemble $(A/B, +)$ est alors un groupe, appelé **groupe quotient** de $A$ par $B$. L'élément neutre est la classe de 0, c'est-à-dire $0+B = B$.

### Propriétés Clés

-   Le **noyau** $\text{Ker}(f)$ et l'**image** $\text{Im}(f)$ d'un morphisme de groupes $f:G \to H$ sont des sous-groupes de $G$ et $H$ respectivement.
-   L'application naturelle (ou projection canonique) $\text{cl}_B : A \to A/B$ qui à $a$ associe sa classe $a+B$ est un morphisme de groupes surjectif, dont le noyau est exactement $B$.
-   **Propriété universelle du groupe quotient** : Tout morphisme de groupes $f: A \to C$ dont le noyau contient $B$ (i.e., $f(B)=\{0_C\}$) se factorise de manière unique à travers le quotient. Il existe un unique morphisme $\bar{f} : A/B \to C$ tel que $f = \bar{f} \circ \text{cl}_B$.

### Exemples

**Exemple 1 : Le sous-groupe $n\mathbb{Z}$ de $\mathbb{Z}$**

Pour un entier $n \ge 1$, l'ensemble $n\mathbb{Z} = \{\dots, -2n, -n, 0, n, 2n, \dots\}$ des multiples de $n$ est un sous-groupe de $(\mathbb{Z}, +)$.

Le groupe quotient est $\mathbb{Z}/n\mathbb{Z}$, le groupe des entiers modulo $n$.

Par exemple, dans $\mathbb{Z}/4\mathbb{Z}$, on a les classes $\bar{0}, \bar{1}, \bar{2}, \bar{3}$. L'addition est définie par exemple par $\bar{2}+\bar{3} = \overline{2+3} = \bar{5} = \bar{1}$.

**Exemple 2 : Le groupe orthogonal**

Le groupe orthogonal $O_n(\mathbb{R}) = \{ M \in \text{GL}_n(\mathbb{R}) \mid {}^tMM = I_n \}$ est l'ensemble des matrices qui préservent le produit scalaire. C'est un sous-groupe du groupe général linéaire $\text{GL}_n(\mathbb{R})$ (le groupe de toutes les matrices inversibles $n \times n$).

**Exemple 3 : Noyau du déterminant**

Le déterminant est un morphisme de groupes $\det: \text{GL}_n(\mathbb{R}) \to (\mathbb{R}^*, \times)$.

Son noyau est $\text{Ker}(\det) = \{ M \in \text{GL}_n(\mathbb{R}) \mid \det(M) = 1 \}$. Ce sous-groupe est appelé le **groupe spécial linéaire**, noté $\text{SL}_n(\mathbb{R})$.

### Contre-exemples

**Contre-exemple 1 : Un sous-ensemble qui n'est pas un sous-groupe**

L'ensemble des entiers naturels $\mathbb{N}$ est un sous-ensemble de $(\mathbb{Z}, +)$, mais ce n'est **pas** un sous-groupe car il n'est pas stable par passage à l'inverse (l'opposé d'un entier positif n'est pas positif).

**Contre-exemple 2 : Un sous-ensemble non stable par la loi**

Dans le groupe $(\mathbb{R}^*, \times)$, le sous-ensemble $\{-1, 1\}$ est un sous-groupe. Mais le sous-ensemble $\{-1, 2\}$ ne l'est pas. Il contient l'inverse de 2 (1/2), mais n'est pas stable par multiplication : $2 \times 2 = 4 \notin \{-1, 2\}$.

### Concepts Liés

-   **Sous-groupe normal (ou distingué)** : Pour les groupes non-abéliens, la construction du groupe quotient ne fonctionne que si le sous-groupe $H$ est "normal", ce qui signifie que pour tout $g \in G$, $gHg^{-1}=H$. Dans un groupe abélien, tout sous-groupe est normal.
-   **Idéal** : La notion analogue au sous-groupe normal mais pour les anneaux.

---

## Concept 10: Idéaux et Anneaux Quotients

### Prérequis

-   Notion d'Anneau (Concept 5), en particulier les anneaux commutatifs.
-   Sous-groupes et Groupes Quotients (Concept 9).

### Définition

Dans cette section, tous les anneaux sont supposés commutatifs.

#### Idéal

Soit $A$ un anneau commutatif. Un sous-ensemble $I \subset A$ est un **idéal** de $A$ s'il vérifie deux conditions :

1.  $(I, +)$ est un **sous-groupe** du groupe additif $(A, +)$.
    -   $0_A \in I$.
    -   Si $x, y \in I$, alors $x+y \in I$.
    -   Si $x \in I$, alors $-x \in I$.
2.  $I$ est **stable par multiplication externe** (ou "absorbant") : pour tout $x \in I$ et pour tout $a \in A$, le produit $a \cdot x$ est dans $I$.

    $$

    \forall x \in I, \forall a \in A, \quad a \cdot x \in I.

    $$

La condition 2 est plus forte que la simple stabilité par multiplication interne. Elle dit que l'idéal "absorbe" les produits avec n'importe quel élément de l'anneau.

#### Anneau Quotient

Soit $A$ un anneau commutatif et $I$ un idéal de $A$. Puisque $I$ est un sous-groupe de $(A,+)$, on peut former le groupe quotient additif $A/I$.

Le résultat majeur est que l'on peut également définir une multiplication sur $A/I$ qui en fait un anneau. La multiplication des classes est définie par :

$$

(a+I) \cdot (b+I) = (a \cdot b) + I.

$$

Le fait que $I$ soit un idéal (et pas seulement un sous-anneau) est crucial pour que cette multiplication soit bien définie (indépendante des représentants choisis).

L'ensemble $(A/I, +, \cdot)$ est alors un anneau, appelé **anneau quotient** de $A$ par $I$. Son élément nul est $0+I=I$ et son élément unité est $1+I$.

### Propriétés Clés

-   Le **noyau d'un morphisme d'anneaux** $f: A \to B$ est toujours un idéal de l'anneau de départ $A$.
-   La projection canonique $\text{cl}_I : A \to A/I$ est un morphisme d'anneaux surjectif de noyau $I$.
-   **Propriété universelle de l'anneau quotient** : Tout morphisme d'anneaux $f: A \to B$ dont le noyau contient $I$ (i.e., $f(I)=\{0_B\}$) se factorise de manière unique à travers le quotient. Il existe un unique morphisme d'anneaux $\bar{f} : A/I \to B$ tel que $f = \bar{f} \circ \text{cl}_I$.

### Exemples

**Exemple 1 : L'idéal $n\mathbb{Z}$ dans $\mathbb{Z}$**

L'ensemble $n\mathbb{Z}$ des multiples de $n$ est un idéal de l'anneau $\mathbb{Z}$.

-   C'est un sous-groupe additif.
-   Si $x \in n\mathbb{Z}$ (donc $x=kn$) et $a \in \mathbb{Z}$, alors $a \cdot x = a(kn) = (ak)n$, qui est aussi un multiple de $n$. Donc $a \cdot x \in n\mathbb{Z}$.

L'anneau quotient est l'**anneau des entiers modulo n**, $\mathbb{Z}/n\mathbb{Z}$.

**Exemple 2 : Construction de $\mathbb{C}$**

Considérons l'anneau des polynômes à coefficients réels, $\mathbb{R}[X]$. Soit $I$ l'ensemble de tous les polynômes qui sont des multiples du polynôme $X^2+1$.

-   $I = \langle X^2+1 \rangle = \{ P(X) \cdot (X^2+1) \mid P(X) \in \mathbb{R}[X] \}$.
-   $I$ est un idéal de $\mathbb{R}[X]$.

L'anneau quotient $\mathbb{C} := \mathbb{R}[X]/I$ est un corps, qui est isomorphe au corps des nombres complexes. Dans ce quotient, la classe de $X$, notée $i$, vérifie $i^2+1=0$, c'est-à-dire $i^2=-1$.

**Exemple 3 : Construction de $\mathbb{R}$**

Comme vu dans le texte, on peut construire $\mathbb{R}$ comme un anneau quotient.

Soit $A = \text{Cauchy}(\mathbb{Q})$ l'anneau des suites de Cauchy de nombres rationnels.

Soit $I = \text{Cauchy}_0(\mathbb{Q})$ le sous-ensemble des suites qui tendent vers 0.

$I$ est un idéal de $A$. L'anneau quotient $A/I$ est le corps des nombres réels $\mathbb{R}$.

### Contre-exemples

**Contre-exemple 1 : Un sous-anneau qui n'est pas un idéal**

L'ensemble $\mathbb{Z}$ est un sous-anneau de l'anneau des nombres rationnels $\mathbb{Q}$. Cependant, $\mathbb{Z}$ n'est **pas** un idéal de $\mathbb{Q}$. Pour le voir, prenons un élément de l'idéal présumé, $x=2 \in \mathbb{Z}$, et un élément de l'anneau, $a=1/3 \in \mathbb{Q}$. Le produit $a \cdot x = (1/3) \cdot 2 = 2/3$ n'est pas dans $\mathbb{Z}$. La condition d'absorption n'est pas respectée.

**Contre-exemple 2 : Un sous-groupe multiplicatif qui n'est pas un idéal**

Dans l'anneau $\mathbb{Z}$, l'ensemble $H = \{1, -1\}$ est un sous-groupe multiplicatif. Mais ce n'est **pas** un idéal. Il ne contient pas 0, donc ce n'est même pas un sous-groupe additif.

### Concepts Liés

-   **Idéal principal** : Un idéal engendré par un seul élément, de la forme $aA = \{ax \mid x \in A\}$. Dans $\mathbb{Z}$, tous les idéaux sont principaux.
-   **Idéal premier, Idéal maximal** : Des types spéciaux d'idéaux qui donnent des anneaux quotients avec des propriétés intéressantes (anneau intègre, corps). Par exemple, $A/I$ est un corps si et seulement si $I$ est un idéal maximal.