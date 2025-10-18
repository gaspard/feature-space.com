---
id: 043e5bcd
type: concepts
order: 10
title: Rappels et notation
tags:
  - set theory
  - relations
  - functions
  - induction
  - combinatorics
course: Graphes et Combinatoire
courseId: 7027276b
chapter: Rappels et notation
chapterId: 58e4ac98
level: regular
createdAt: '2025-10-15T19:11:23.494Z'
---
# Rappels et notation

---

## Concept 1: Ensembles et Sous-ensembles

### Prérequis

-   Une compréhension intuitive de ce qu'est une "collection" ou un "groupe" d'objets.
-   Notions de base de la logique mathématique (propositions vraies/fausses, connecteurs "et"/"ou").

### Définition

Un **ensemble** est une collection d'objets distincts, appelés **éléments**. L'appartenance d'un élément $x$ à un ensemble $E$ se note $x \in E$. La non-appartenance se note $x \notin E$.

Il existe plusieurs manières de définir un ensemble :

1.  **En extension** : en listant tous ses éléments entre accolades. L'ordre et les répétitions n'ont pas d'importance.
    -   Exemple : $A = \{1, 2, 3\}$ est l'ensemble contenant les entiers 1, 2 et 3. On a $\{1, 2, 3\} = \{3, 1, 2\} = \{1, 1, 2, 3\}$.
2.  **En compréhension** : en décrivant une propriété $\mathcal{P}(x)$ que ses éléments doivent vérifier.
    -   Notation : $\{x \in E : \mathcal{P}(x)\}$, qui se lit "l'ensemble des éléments $x$ de $E$ tels que la propriété $\mathcal{P}(x)$ est vraie".

Quelques ensembles importants :

-   L'**ensemble vide**, noté $\emptyset$ ou $\{\}$, est l'ensemble qui ne contient aucun élément.
-   Soient $A$ et $B$ deux ensembles. $A$ est un **sous-ensemble** (ou une **partie**) de $B$, noté $A \subseteq B$, si tout élément de $A$ est aussi un élément de $B$. Formellement :

    $$ \forall x, (x \in A \implies x \in B) $$

-   Deux ensembles $A$ et $B$ sont **égaux**, noté $A=B$, s'ils ont exactement les mêmes éléments. Cela équivaut à dire que $A \subseteq B$ et $B \subseteq A$.

### Propriétés Clés

-   **Égalité** : $A = B \iff (A \subseteq B \text{ et } B \subseteq A)$. Pour montrer que deux ensembles sont égaux, on montre souvent les deux inclusions séparément.
-   **Transitivité de l'inclusion** : Si $A \subseteq B$ et $B \subseteq C$, alors $A \subseteq C$.
-   **Ensemble vide** : Pour tout ensemble $E$, on a $\emptyset \subseteq E$.
-   **Réflexivité de l'inclusion** : Pour tout ensemble $E$, on a $E \subseteq E$.

### Exemples

**Exemple 1 : Ensemble fini défini en extension**

Soit l'ensemble $V = \{a, e, i, o, u, y\}$, l'ensemble des voyelles de l'alphabet français.

-   On a $a \in V$, car $a$ est dans la liste.
-   On a $b \notin V$, car $b$ n'est pas dans la liste.
-   L'ensemble $A = \{a, e\}$ est un sous-ensemble de $V$, car tous les éléments de $A$ (c'est-à-dire $a$ et $e$) sont aussi dans $V$. On note $A \subseteq V$.

**Exemple 2 : Ensemble infini défini en compréhension**

Soit $\mathbb{N} = \{0, 1, 2, 3, \ldots\}$ l'ensemble des entiers naturels.

Considérons l'ensemble $P = \{n \in \mathbb{N} : n \text{ est un multiple de 2}\}$.

Cet ensemble peut aussi être écrit en extension (partielle) : $P = \{0, 2, 4, 6, \ldots \}$.

-   $10 \in P$ car $10 \in \mathbb{N}$ et $10$ est un multiple de 2.
-   $7 \notin P$ car bien que $7 \in \mathbb{N}$, $7$ n'est pas un multiple de 2.

**Exemple 3 : Égalité de deux ensembles**

Soit $A = \{n \in \mathbb{N} : n^2 - 3n + 2 = 0\}$ et $B = \{1, 2\}$. Montrons que $A=B$.

L'équation du second degré $n^2 - 3n + 2 = 0$ a pour solutions $n=1$ et $n=2$.

-   Pour montrer $A \subseteq B$ : Soit $x \in A$. Par définition de $A$, $x$ est un entier naturel tel que $x^2 - 3x + 2 = 0$. Les seules solutions sont $1$ et $2$, donc $x=1$ ou $x=2$. Dans les deux cas, $x \in B$. Donc $A \subseteq B$.
-   Pour montrer $B \subseteq A$ : Soit $y \in B$. Alors $y=1$ ou $y=2$.
    -   Si $y=1$, on a $1^2 - 3(1) + 2 = 0$, donc $1 \in A$.
    -   Si $y=2$, on a $2^2 - 3(2) + 2 = 4 - 6 + 2 = 0$, donc $2 \in A$.

    Dans les deux cas, $y \in A$. Donc $B \subseteq A$.

Puisque $A \subseteq B$ et $B \subseteq A$, on conclut que $A=B$.

### Contre-exemples

**Contre-exemple 1 : Appartenance vs. Inclusion**

Soit l'ensemble $E = \{1, 2, \{3, 4\}\}$.

-   L'objet $\{3, 4\}$ est un **élément** de $E$. On écrit $\{3, 4\} \in E$.
-   L'ensemble $\{\{3, 4\}\}$ est un **sous-ensemble** de $E$ contenant un seul élément. On écrit $\{\{3, 4\}\} \subseteq E$.
-   L'ensemble $\{3, 4\}$ n'est **pas** un sous-ensemble de $E$, car ses éléments ($3$ et $4$) ne sont pas des éléments de $E$. On écrit $\{3, 4\} \not\subseteq E$.

Il est crucial de ne pas confondre le symbole d'appartenance $\in$ (qui relie un élément à un ensemble) et le symbole d'inclusion $\subseteq$ (qui relie deux ensembles).

**Contre-exemple 2 : Ensemble vs. n-uplet**

Un ensemble n'est pas ordonné et ne tient pas compte des répétitions. Un n-uplet (ou couple, triplet, etc.) est ordonné.

-   L'ensemble $\{a, b\}$ est égal à l'ensemble $\{b, a\}$.
-   Le couple $(a, b)$ est différent du couple $(b, a)$, sauf si $a=b$.

Les ensembles sont utilisés pour représenter des collections où l'ordre n'importe pas, tandis que les n-uplets (qui sont les éléments des produits cartésiens) sont utilisés lorsque l'ordre est important.

### Concepts Connexes

-   **Opérations sur les ensembles** : Les ensembles peuvent être combinés à l'aide d'opérations comme l'union, l'intersection, etc.
-   **Ensemble des parties** : L'ensemble de tous les sous-ensembles d'un ensemble donné.
-   **Cardinalité** : Le nombre d'éléments dans un ensemble (pour les ensembles finis).

---

## Concept 2: Opérations sur les Ensembles

### Prérequis

-   Concept 1: Ensembles et Sous-ensembles (définitions d'ensemble, élément, sous-ensemble).

### Définition

Soient $A$ et $B$ deux ensembles. On définit les opérations suivantes :

-   **Réunion** : L'union de $A$ et $B$, notée $A \cup B$, est l'ensemble de tous les éléments qui appartiennent à $A$, ou à $B$, ou aux deux.

    $$ A \cup B = \{x : x \in A \text{ ou } x \in B\} $$

-   **Intersection** : L'intersection de $A$ et $B$, notée $A \cap B$, est l'ensemble de tous les éléments qui appartiennent à la fois à $A$ et à $B$.

    $$ A \cap B = \{x : x \in A \text{ et } x \in B\} $$

    Si $A \cap B = \emptyset$, on dit que $A$ et $B$ sont **disjoints**.

-   **Différence** : La différence de $A$ et $B$, notée $A \setminus B$, est l'ensemble des éléments de $A$ qui n'appartiennent pas à $B$.

    $$ A \setminus B = \{x : x \in A \text{ et } x \notin B\} $$

-   **Complémentaire** : Si $A$ est un sous-ensemble d'un ensemble de référence $E$, le complémentaire de $A$ dans $E$, noté $\bar{A}$ (ou $A^c$), est l'ensemble de tous les éléments de $E$ qui ne sont pas dans $A$.

    $$ \bar{A} = E \setminus A = \{x \in E : x \notin A\} $$

-   **Produit cartésien** : Le produit cartésien de $A$ et $B$, noté $A \times B$, est l'ensemble de tous les **couples ordonnés** $(a, b)$ où $a \in A$ et $b \in B$.

    $$ A \times B = \{(a, b) : a \in A, b \in B\} $$

-   **Ensemble des parties** : L'ensemble des parties de $A$, noté $\mathcal{P}(A)$, est l'ensemble de tous les sous-ensembles de $A$.

    $$ \mathcal{P}(A) = \{S : S \subseteq A\} $$

### Propriétés Clés

-   **Commutativité** : $A \cup B = B \cup A$ et $A \cap B = B \cap A$.
-   **Associativité** : $(A \cup B) \cup C = A \cup (B \cup C)$ et $(A \cap B) \cap C = A \cap (B \cap C)$.
-   **Distributivité** :
    -   $A \cap (B \cup C) = (A \cap B) \cup (A \cap C)$
    -   $A \cup (B \cap C) = (A \cup B) \cap (A \cup C)$
-   **Lois de De Morgan** (pour le complémentaire dans un ensemble $E$) :
    -   $\overline{A \cup B} = \bar{A} \cap \bar{B}$
    -   $\overline{A \cap B} = \bar{A} \cup \bar{B}$
-   **Propriétés du produit cartésien** :
    -   En général, $A \times B \neq B \times A$.
    -   Si $A$ et $B$ sont finis, $|A \times B| = |A| \cdot |B|$.
-   **Propriétés de l'ensemble des parties** :
    -   $\emptyset \in \mathcal{P}(A)$ et $A \in \mathcal{P}(A)$ pour tout ensemble $A$.
    -   Si $A$ est fini, $|\mathcal{P}(A)| = 2^{|A|}$.

### Exemples

**Exemple 1 : Union, Intersection et Différence**

Soient les ensembles $A = \{1, 2, 3, 4\}$ et $B = \{3, 4, 5, 6\}$.

-   **Union** : $A \cup B = \{1, 2, 3, 4, 5, 6\}$. Les éléments communs (3 et 4) n'apparaissent qu'une seule fois.
-   **Intersection** : $A \cap B = \{3, 4\}$, car 3 et 4 sont les seuls éléments présents dans les deux ensembles.
-   **Différence** : $A \setminus B = \{1, 2\}$, les éléments de $A$ qui ne sont pas dans $B$.
-   **Différence symétrique** : $(A \setminus B) \cup (B \setminus A) = \{1, 2\} \cup \{5, 6\} = \{1, 2, 5, 6\}$.

**Exemple 2 : Complémentaire et Lois de De Morgan**

Soit l'ensemble de référence $E = \{0, 1, 2, 3, 4, 5, 6, 7, 8, 9\}$.

Soient $A = \{1, 2, 3, 8\}$ et $B = \{2, 4, 6, 8\}$.

-   $\bar{A} = E \setminus A = \{0, 4, 5, 6, 7, 9\}$.
-   $\bar{B} = E \setminus B = \{0, 1, 3, 5, 7, 9\}$.

Vérifions une loi de De Morgan : $\overline{A \cup B} = \bar{A} \cap \bar{B}$.

-   Côté gauche : $A \cup B = \{1, 2, 3, 4, 6, 8\}$. Donc $\overline{A \cup B} = \{0, 5, 7, 9\}$.
-   Côté droit : $\bar{A} \cap \bar{B} = \{0, 4, 5, 6, 7, 9\} \cap \{0, 1, 3, 5, 7, 9\} = \{0, 5, 7, 9\}$.

L'égalité est bien vérifiée.

**Exemple 3 : Produit cartésien et Ensemble des parties**

Soit l'ensemble $C = \{x, y\}$.

-   **Produit cartésien** $C \times C$:

    $C \times C = \{(x, x), (x, y), (y, x), (y, y)\}$. C'est un ensemble de 4 couples ordonnés.

-   **Ensemble des parties** $\mathcal{P}(C)$:

    $\mathcal{P}(C)$ est l'ensemble de tous les sous-ensembles de $C$.

    $$ \mathcal{P}(C) = \{ \emptyset, \{x\}, \{y\}, \{x, y\} \} $$

    Cet ensemble a $2^{|C|} = 2^2 = 4$ éléments, qui sont eux-mêmes des ensembles.

### Contre-exemples

**Contre-exemple 1 : Non-commutativité de la différence**

La différence d'ensembles n'est pas commutative. Reprenons l'exemple 1 avec $A = \{1, 2, 3, 4\}$ et $B = \{3, 4, 5, 6\}$.

-   $A \setminus B = \{1, 2\}$.
-   $B \setminus A = \{5, 6\}$.

On voit bien que $A \setminus B \neq B \setminus A$.

**Contre-exemple 2 : Non-commutativité du produit cartésien**

Soient $A = \{1, 2\}$ et $B = \{a\}$.

-   $A \times B = \{(1, a), (2, a)\}$.
-   $B \times A = \{(a, 1), (a, 2)\}$.

Comme le couple $(1, a)$ est différent de $(a, 1)$, on a $A \times B \neq B \times A$. L'égalité n'est vraie que si $A=B$ ou si l'un des ensembles est vide.

### Concepts Connexes

-   **Relations binaires** : Une relation binaire sur un ensemble $E$ est définie comme un sous-ensemble de son produit cartésien $E \times E$.
-   **Probabilités** : La théorie des probabilités utilise le langage des ensembles pour décrire les événements. L'union correspond au "ou" logique et l'intersection au "et" logique.

---

## Concept 3: Applications (Fonctions)

### Prérequis

-   Concept 1: Ensembles et Sous-ensembles.
-   Concept 2: Opérations sur les Ensembles (en particulier le produit cartésien).

### Définition

Soient $E$ et $F$ deux ensembles. Une **application** (ou **fonction**) $f$ de $E$ dans $F$, notée $f: E \to F$, est un procédé qui associe à **chaque** élément $x$ de $E$ un **unique** élément $y$ de $F$.

-   $E$ est l'**ensemble de départ** (ou domaine).
-   $F$ est l'**ensemble d'arrivée** (ou codomaine).
-   L'unique élément $y \in F$ associé à $x \in E$ est appelé l'**image** de $x$ par $f$ et est noté $f(x)$. On écrit $y = f(x)$ ou $x \mapsto f(x)$.
-   Si $y=f(x)$, on dit que $x$ est un **antécédent** de $y$ par $f$.

Formellement, une application $f=(E, F, \mathcal{G})$ est définie par son **graphe** $\mathcal{G}$, un sous-ensemble de $E \times F$ tel que pour tout $x \in E$, il existe un et un seul $y \in F$ pour lequel $(x, y) \in \mathcal{G}$.

**Types d'applications :**

Une application $f: E \to F$ est dite :

-   **Injective** (une injection) si deux éléments distincts de $E$ ont toujours des images distinctes dans $F$.

    $$ \forall x_1, x_2 \in E, (f(x_1) = f(x_2) \implies x_1 = x_2) $$

-   **Surjective** (une surjection) si tout élément de $F$ a au moins un antécédent dans $E$.

    $$ \forall y \in F, \exists x \in E, y = f(x) $$

-   **Bijective** (une bijection) si elle est à la fois injective et surjective. Cela signifie que tout élément de $F$ a exactement un antécédent dans $E$.

    $$ \forall y \in F, \exists! x \in E, y = f(x) $$

### Propriétés Clés

-   **Composition** : Soient $f: E \to F$ et $g: F \to G$. L'application composée $g \circ f$ est une application de $E$ dans $G$ définie par $(g \circ f)(x) = g(f(x))$.
-   **Propriétés de la composition** :
    -   La composée de deux injections est une injection.
    -   La composée de deux surjections est une surjection.
    -   La composée de deux bijections est une bijection.
-   **Application inverse** : Une application $f: E \to F$ est bijective si et seulement si il existe une application $f^{-1}: F \to E$, appelée **application inverse** (ou réciproque), telle que $f^{-1} \circ f = id_E$ et $f \circ f^{-1} = id_F$. ($id_E$ est l'application identité sur $E$, $id_E(x)=x$).

### Exemples

**Exemple 1 : Injection non surjective**

Soit $f: \mathbb{N} \to \mathbb{N}$ définie par $f(n) = 2n$.

-   **Injectivité** : Soient $n_1, n_2 \in \mathbb{N}$ tels que $f(n_1) = f(n_2)$. Alors $2n_1 = 2n_2$, ce qui implique $n_1 = n_2$. Donc $f$ est injective.
-   **Surjectivité** : L'image de $f$ est l'ensemble des entiers naturels pairs. Un entier impair comme $3$ n'a pas d'antécédent (il n'existe aucun $n \in \mathbb{N}$ tel que $2n=3$). Donc $f$ n'est pas surjective.

**Exemple 2 : Surjection non injective**

Soit $g: \mathbb{Z} \to \mathbb{N}$ définie par $g(n) = |n|$ (valeur absolue de $n$).

-   **Injectivité** : On a $g(2) = 2$ et $g(-2) = 2$. Deux éléments distincts (2 et -2) ont la même image. Donc $g$ n'est pas injective.
-   **Surjectivité** : Soit $y \in \mathbb{N}$ un entier naturel quelconque. On peut choisir $x=y \in \mathbb{Z}$. Alors $g(x) = g(y) = |y| = y$ (car $y \ge 0$). Tout élément de l'ensemble d'arrivée $\mathbb{N}$ a donc au moins un antécédent. Donc $g$ est surjective.

**Exemple 3 : Bijection**

Soit $h: \mathbb{R} \to \mathbb{R}$ définie par $h(x) = x-1$.

-   **Injectivité** : Si $h(x_1) = h(x_2)$, alors $x_1-1 = x_2-1$, donc $x_1=x_2$. $h$ est injective.
-   **Surjectivité** : Soit $y \in \mathbb{R}$. On cherche un antécédent $x$ tel que $h(x)=y$, c'est-à-dire $x-1=y$. La solution est $x=y+1$. Cet $x$ existe pour tout $y \in \mathbb{R}$. $h$ est surjective.
-   Puisque $h$ est injective et surjective, elle est bijective. Son application inverse est $h^{-1}: \mathbb{R} \to \mathbb{R}$ définie par $h^{-1}(y) = y+1$.

### Contre-exemples

**Contre-exemple 1 : Ce qui n'est pas une application**

Soit $E = \{1, 2, 3\}$ et $F = \{a, b\}$. Considérons la relation de $E$ vers $F$ dont le graphe est $\mathcal{G} = \{(1, a), (2, b), (1, b)\}$.

Ceci n'est pas une application car l'élément $1 \in E$ est associé à deux éléments distincts de $F$ ($a$ et $b$). La condition d'unicité de l'image n'est pas respectée. De plus, l'élément $3 \in E$ n'a aucune image.

**Contre-exemple 2 : Une application ni injective, ni surjective**

Soit $k: \mathbb{R} \to \mathbb{R}$ définie par $k(x) = x^2$.

-   **Non injective** : $k(-3) = 9$ et $k(3) = 9$. Des éléments distincts ont la même image.
-   **Non surjective** : L'image de $k$ est $\mathbb{R}^+ = [0, +\infty)$. Un nombre strictement négatif comme $-1$ n'a aucun antécédent réel, car l'équation $x^2 = -1$ n'a pas de solution dans $\mathbb{R}$.

### Concepts Connexes

-   **Relations binaires** : Une application est un type particulier de relation binaire.
-   **Isomorphismes** : En algèbre et en théorie des graphes, les bijections qui préservent une structure (comme une opération ou des arêtes) sont appelées des isomorphismes. Elles permettent d'identifier deux objets comme étant "les mêmes" du point de vue de la structure.

---

## Concept 4: Relations d'Équivalence et Partitions

### Prérequis

-   Concept 1: Ensembles et Sous-ensembles.
-   Concept 2: Opérations sur les Ensembles (Produit cartésien).

### Définition

Soit $E$ un ensemble. Une **relation binaire** $\mathcal{R}$ sur $E$ est un sous-ensemble de $E \times E$. Si $(x, y) \in \mathcal{R}$, on dit que $x$ est en relation avec $y$ et on note $x \mathcal{R} y$.

Une relation binaire $\mathcal{R}$ sur $E$ est une **relation d'équivalence** si elle possède les trois propriétés suivantes :

1.  **Réflexivité** : Tout élément est en relation avec lui-même.

    $$ \forall x \in E, x \mathcal{R} x $$

2.  **Symétrie** : Si $x$ est en relation avec $y$, alors $y$ est en relation avec $x$.

    $$ \forall x, y \in E, (x \mathcal{R} y \implies y \mathcal{R} x) $$

3.  **Transitivité** : Si $x$ est en relation avec $y$ et $y$ est en relation avec $z$, alors $x$ est en relation avec $z$.

    $$ \forall x, y, z \in E, (x \mathcal{R} y \text{ et } y \mathcal{R} z \implies x \mathcal{R} z) $$

Soit $\mathcal{R}$ une relation d'équivalence sur $E$.

-   La **classe d'équivalence** d'un élément $x \in E$, notée $\mathcal{R}[x]$ ou $[x]$, est l'ensemble de tous les éléments de $E$ qui sont en relation avec $x$.

    $$ \mathcal{R}[x] = \{y \in E : x \mathcal{R} y\} $$

-   Une **partition** de $E$ est un ensemble $P$ de sous-ensembles non vides de $E$, deux à deux disjoints, dont la réunion est $E$.

### Propriétés Clés

-   **Lien fondamental** : Les classes d'équivalence d'une relation d'équivalence sur un ensemble $E$ forment une partition de $E$.
-   **Réciproque** : Toute partition d'un ensemble $E$ définit une unique relation d'équivalence sur $E$ (où $x \mathcal{R} y$ si et seulement si $x$ et $y$ appartiennent au même sous-ensemble de la partition).
-   **Propriété des classes** : Pour une relation d'équivalence $\mathcal{R}$ sur $E$, et pour tous $x, y \in E$, on a soit $\mathcal{R}[x] = \mathcal{R}[y]$ (si $x \mathcal{R} y$), soit $\mathcal{R}[x] \cap \mathcal{R}[y] = \emptyset$ (si $x$ n'est pas en relation avec $y$).

### Exemples

**Exemple 1 : Congruence modulo 3**

Sur l'ensemble des entiers $\mathbb{Z}$, on définit la relation $x \mathcal{R} y \iff (x-y)$ est divisible par 3.

-   **Réflexivité** : $x-x=0$, qui est divisible par 3. Donc $x \mathcal{R} x$.
-   **Symétrie** : Si $x-y$ est divisible par 3, alors $y-x = -(x-y)$ l'est aussi. Donc $x \mathcal{R} y \implies y \mathcal{R} x$.
-   **Transitivité** : Si $x-y=3k$ et $y-z=3l$, alors $x-z = (x-y)+(y-z) = 3k+3l = 3(k+l)$, qui est divisible par 3. Donc $x \mathcal{R} z$.

C'est une relation d'équivalence. Les classes d'équivalence sont :

-   $[0] = \{\ldots, -6, -3, 0, 3, 6, \ldots\}$ (les multiples de 3)
-   $[1] = \{\ldots, -5, -2, 1, 4, 7, \ldots\}$ (les entiers de la forme $3k+1$)
-   $[2] = \{\ldots, -4, -1, 2, 5, 8, \ldots\}$ (les entiers de la forme $3k+2$)

L'ensemble de ces trois classes $\{\,[0], [1], [2]\,\}$ forme une partition de $\mathbb{Z}$.

**Exemple 2 : Avoir la même initiale**

Sur un ensemble de personnes $E = \{\text{Alice, Bob, Antoine, Chloé, Benoît}\}$, on définit $x \mathcal{R} y \iff x$ et $y$ ont le même prénom commençant par la même lettre.

-   C'est une relation d'équivalence (évident).
-   Les classes d'équivalence sont :
    -   $[\text{Alice}] = \{\text{Alice, Antoine}\}$
    -   $[\text{Bob}] = \{\text{Bob, Benoît}\}$
    -   $[\text{Chloé}] = \{\text{Chloé}\}$

L'ensemble de ces classes $P = \{\{\text{Alice, Antoine}\}, \{\text{Bob, Benoît}\}, \{\text{Chloé}\}\}$ est une partition de $E$.

**Exemple 3 : Construction des nombres rationnels**

Sur l'ensemble $E = \mathbb{Z} \times (\mathbb{Z} \setminus \{0\})$, on définit la relation $(a, b) \mathcal{R} (c, d) \iff ad = bc$.

C'est une relation d'équivalence. La classe d'équivalence du couple $(a,b)$ correspond au nombre rationnel $\frac{a}{b}$. Par exemple, la classe de $(1,2)$ est $\{(1,2), (2,4), (-1,-2), \dots\}$, qui représente le rationnel $1/2$. Cette relation permet de construire formellement l'ensemble $\mathbb{Q}$.

### Contre-exemples

**Contre-exemple 1 : Relation d'ordre**

La relation $\le$ sur $\mathbb{N}$ n'est pas une relation d'équivalence.

-   Elle est réflexive ($x \le x$) et transitive ($x \le y$ et $y \le z \implies x \le z$).
-   Mais elle n'est pas symétrique : $3 \le 5$ est vrai, mais $5 \le 3$ est faux.

**Contre-exemple 2 : Relation de proximité**

Sur l'ensemble des villes de France, définissons $x \mathcal{R} y \iff$ la distance entre $x$ et $y$ est inférieure à 50 km.

-   **Réflexive** : Oui, la distance de $x$ à $x$ est 0.
-   **Symétrique** : Oui, la distance de $x$ à $y$ est la même que de $y$ à $x$.
-   **Non transitive** : Soit $x=$ Paris, $y=$ Orléans, $z=$ Tours. Supposons (approximativement) dist(Paris, Orléans) < 50km et dist(Orléans, Tours) < 50km. Il n'est pas garanti que dist(Paris, Tours) < 50km. (Les distances sont fausses, mais l'idée est là). Un meilleur exemple : $x=0, y=40, z=80$ sur une ligne. dist(x,y)=40, dist(y,z)=40, mais dist(x,z)=80.

### Concepts Connexes

-   **Ensemble quotient** : L'ensemble des classes d'équivalence, noté $E/\mathcal{R}$, est une construction fondamentale en mathématiques (arithmétique modulaire, construction de $\mathbb{Q}$, topologie, etc.).
-   **Relations d'ordre** : L'autre grande famille de relations binaires structurantes.

---

## Concept 5: Relations d'Ordre

### Prérequis

-   Concept 1: Ensembles et Sous-ensembles.
-   Concept 4: Introduction aux relations binaires (réflexivité, transitivité).

### Définition

Une relation binaire $\preceq$ sur un ensemble $E$ est une **relation d'ordre (partiel)** si elle est :

1.  **Réflexive** : $\forall x \in E, x \preceq x$.
2.  **Antisymétrique** : Si $x$ est en relation avec $y$ et $y$ avec $x$, alors ils sont égaux.

    $$ \forall x, y \in E, (x \preceq y \text{ et } y \preceq x \implies x = y) $$

3.  **Transitive** : $\forall x, y, z \in E, (x \preceq y \text{ et } y \preceq z \implies x \preceq z)$.

Un ensemble muni d'une relation d'ordre, noté $(E, \preceq)$, est appelé un **ensemble partiellement ordonné**.

-   L'ordre est dit **total** si tous les éléments de $E$ sont comparables, c'est-à-dire :

    $$ \forall x, y \in E, (x \preceq y \text{ ou } y \preceq x) $$

Soit $(X, \preceq)$ un ensemble partiellement ordonné.

-   Un élément $a \in X$ est un **élément maximal** s'il n'existe aucun autre élément "plus grand" que lui.

    $$ \forall y \in X, (a \preceq y \implies a = y) $$

-   Un élément $b \in X$ est le **plus grand élément** si tous les autres éléments lui sont "inférieurs".

    $$ \forall x \in X, x \preceq b $$

On définit de manière analogue les notions d'**élément minimal** et de **plus petit élément**.

### Propriétés Clés

-   Un ordre total est toujours un ordre partiel, mais la réciproque est fausse.
-   S'il existe un plus grand (ou plus petit) élément, il est unique et c'est l'unique élément maximal (ou minimal).
-   Un ensemble peut avoir plusieurs éléments maximaux (ou minimaux) mais ne pas avoir de plus grand (ou plus petit) élément.
-   Un ensemble peut n'avoir aucun élément maximal ou minimal (par exemple, $(\mathbb{Z}, \le)$).

### Exemples

**Exemple 1 : Ordre total sur les réels**

L'ensemble $(\mathbb{R}, \le)$, où $\le$ est la relation "inférieur ou égal à", est un ensemble totalement ordonné.

-   Pour deux réels $x, y$ quelconques, on a toujours $x \le y$ ou $y \le x$.
-   Cet ensemble n'a ni plus petit, ni plus grand élément.

**Exemple 2 : Ordre partiel de la divisibilité**

Sur l'ensemble $E = \{1, 2, 3, 4, 5, 6\}$, on considère la relation "divise", notée $|$.

-   **Réflexive** : $a|a$ (tout entier se divise lui-même).
-   **Antisymétrique** : Si $a|b$ et $b|a$, alors $a=b$ (car on est dans les entiers positifs).
-   **Transitive** : Si $a|b$ et $b|c$, alors $a|c$.

C'est un ordre partiel. Il n'est pas total car, par exemple, $2$ ne divise pas $3$ et $3$ ne divise pas $2$. On dit que $2$ et $3$ sont **incomparables**.

-   **Plus petit élément** : $1$ (car 1 divise tous les autres éléments). C'est aussi l'unique élément minimal.
-   **Éléments maximaux** : $\{4, 5, 6\}$. Aucun autre élément de $E$ n'est un multiple de 4, 5, ou 6 (à part eux-mêmes).
-   **Plus grand élément** : Il n'y en a pas.

**Exemple 3 : Ordre partiel de l'inclusion**

Soit $S = \{a, b\}$ et $E = \mathcal{P}(S) = \{\emptyset, \{a\}, \{b\}, \{a, b\}\}$. La relation d'inclusion $\subseteq$ est une relation d'ordre sur $E$.

-   C'est un ordre partiel car $\{a\}$ et $\{b\}$ sont incomparables.
-   **Plus petit élément** : $\emptyset$.
-   **Plus grand élément** : $\{a, b\}$.

### Contre-exemples

**Contre-exemple 1 : Relation d'égalité**

La relation $=$ sur $\mathbb{N}$ est réflexive, transitive et même symétrique et antisymétrique. C'est une relation d'ordre (et d'équivalence), mais elle est triviale : deux éléments ne sont en relation que s'ils sont égaux.

**Contre-exemple 2 : Relation non transitive**

Sur $\mathbb{N}^*$, définissons la relation $x \mathcal{R} y \iff \text{pgcd}(x, y) > 1$.

-   **Réflexive** : $\text{pgcd}(x, x) = x$. Pour $x>1$, la relation est réflexive. Excluons 1.
-   **Symétrique** : $\text{pgcd}(x, y) = \text{pgcd}(y, x)$. La relation est symétrique.
-   **Non antisymétrique** : $2 \mathcal{R} 4$ et $4 \mathcal{R} 2$, mais $2 \neq 4$. Ce n'est donc pas une relation d'ordre.
-   **Non transitive** : Soit $x=2, y=6, z=3$. On a $2 \mathcal{R} 6$ (pgcd=2) et $6 \mathcal{R} 3$ (pgcd=3), mais on n'a pas $2 \mathcal{R} 3$ car $\text{pgcd}(2, 3) = 1$.

### Concepts Connexes

-   **Ensemble bien ordonné** : Un ensemble totalement ordonné où toute partie non vide admet un plus petit élément. C'est une propriété fondamentale de $(\mathbb{N}, \le)$.
-   **Treillis (Lattice)** : Un ensemble partiellement ordonné où toute paire d'éléments admet une borne supérieure et une borne inférieure.
-   **Tri topologique** : Un algorithme permettant de trouver un ordre total compatible avec un ordre partiel donné, très utilisé en informatique pour ordonnancer des tâches avec dépendances.

---

## Concept 6: Principe de Récurrence sur les Entiers Naturels

### Prérequis

-   Connaissance de l'ensemble des entiers naturels $\mathbb{N} = \{0, 1, 2, \ldots\}$.
-   Logique de base, en particulier la notion d'implication ($A \implies B$).

### Définition

Le raisonnement par récurrence est une méthode de démonstration pour prouver qu'une proposition $P(n)$ est vraie pour tous les entiers naturels $n$ à partir d'un certain rang. Il repose sur la **propriété du bon ordre** de $\mathbb{N}$ : *toute partie non vide de $\mathbb{N}$ possède un plus petit élément*.

**Principe de récurrence (simple)**

Soit $P(n)$ une proposition qui dépend de l'entier $n \in \mathbb{N}$. Pour montrer que $P(n)$ est vraie pour tout $n \ge n_0$ (où $n_0$ est un entier de départ, souvent 0 ou 1), on procède en deux étapes :

1.  **Initialisation (ou cas de base)** : On vérifie que la proposition $P(n_0)$ est vraie.
2.  **Hérédité (ou étape de récurrence)** : On suppose que $P(k)$ est vraie pour un entier arbitraire $k \ge n_0$ (c'est l'**hypothèse de récurrence**), et on démontre que, sous cette hypothèse, $P(k+1)$ est également vraie.

    $$ \forall k \ge n_0, (P(k) \implies P(k+1)) $$

Si ces deux étapes sont validées, on peut conclure que $P(n)$ est vraie pour tout entier $n \ge n_0$.

**Principe de récurrence forte**

L'hypothèse de récurrence est plus "forte" : pour démontrer $P(k+1)$, on suppose que $P(j)$ est vraie pour **tous** les entiers $j$ tels que $n_0 \le j \le k$.

### Propriétés Clés

-   La récurrence est une méthode de démonstration, pas une méthode pour trouver des formules.
-   L'initialisation est une étape cruciale. Sans elle, la preuve est invalide.
-   La récurrence simple et la récurrence forte sont logiquement équivalentes. On choisit la forme la plus pratique pour le problème à résoudre. La récurrence forte est souvent utile lorsque la propriété au rang $k+1$ dépend de plusieurs rangs précédents.

### Exemples

**Exemple 1 : Somme des $n$ premiers entiers (Récurrence simple)**

Montrons que pour tout $n \ge 1$, $P(n): \sum_{i=1}^{n} i = \frac{n(n+1)}{2}$.

-   **Initialisation** ($n=1$) : $\sum_{i=1}^{1} i = 1$. D'autre part, $\frac{1(1+1)}{2} = \frac{2}{2} = 1$. La propriété est vraie pour $n=1$.
-   **Hérédité** : Soit $k \ge 1$ un entier. Supposons que $P(k)$ est vraie, c'est-à-dire $\sum_{i=1}^{k} i = \frac{k(k+1)}{2}$ (hypothèse de récurrence).

    Montrons que $P(k+1)$ est vraie, c'est-à-dire $\sum_{i=1}^{k+1} i = \frac{(k+1)(k+2)}{2}$.

    $$ \sum_{i=1}^{k+1} i = \left(\sum_{i=1}^{k} i\right) + (k+1) $$

    En utilisant l'hypothèse de récurrence :

    $$ = \frac{k(k+1)}{2} + (k+1) = (k+1) \left(\frac{k}{2} + 1\right) = (k+1) \left(\frac{k+2}{2}\right) = \frac{(k+1)(k+2)}{2} $$

    Ceci est bien la formule au rang $k+1$. L'hérédité est prouvée.

-   **Conclusion** : Par le principe de récurrence, la formule est vraie pour tout $n \ge 1$.

**Exemple 2 : Inégalité (Récurrence simple)**

Montrons que pour tout $n \ge 4$, on a $2^n \ge n^2$.

-   **Initialisation** ($n=4$) : $2^4 = 16$ et $4^2 = 16$. On a bien $16 \ge 16$. La propriété est vraie pour $n=4$.
-   **Hérédité** : Soit $k \ge 4$. Supposons $2^k \ge k^2$.

    Montrons que $2^{k+1} \ge (k+1)^2$.

    $2^{k+1} = 2 \cdot 2^k \ge 2k^2$ (par hypothèse de récurrence).

    On veut montrer que $2k^2 \ge (k+1)^2 = k^2 + 2k + 1$.

    Cela revient à montrer $k^2 - 2k - 1 \ge 0$.

    Le polynôme $x^2-2x-1$ a pour racines $1 \pm \sqrt{2}$. Il est positif pour $x \ge 1+\sqrt{2} \approx 2.41$.

    Comme on a supposé $k \ge 4$, l'inégalité $k^2 - 2k - 1 \ge 0$ est bien vraie.

    Donc $2^{k+1} \ge (k+1)^2$. L'hérédité est prouvée.

-   **Conclusion** : Pour tout $n \ge 4$, $2^n \ge n^2$.

**Exemple 3 : Existence d'une décomposition en facteurs premiers (Récurrence forte)**

Montrons que tout entier $n \ge 2$ est un produit de nombres premiers.

-   **Initialisation** ($n=2$) : $2$ est un nombre premier, il est donc un produit d'un seul nombre premier. La propriété est vraie.
-   **Hérédité** : Soit $k \ge 2$. Supposons que la propriété est vraie pour tous les entiers $j$ tels que $2 \le j \le k$.

    Montrons que $k+1$ est un produit de nombres premiers.

    -   Cas 1 : $k+1$ est un nombre premier. La propriété est alors vraie.
    -   Cas 2 : $k+1$ est un nombre composé. Il existe donc deux entiers $a, b$ tels que $k+1 = a \cdot b$ avec $2 \le a \le k$ et $2 \le b \le k$.

    Par l'hypothèse de récurrence forte, $a$ et $b$ sont des produits de nombres premiers. Leur produit, $a \cdot b = k+1$, est donc aussi un produit de nombres premiers.

-   **Conclusion** : Par le principe de récurrence forte, tout entier $n \ge 2$ est un produit de nombres premiers.

### Contre-exemples

**Contre-exemple 1 : Hérédité vraie, initialisation fausse**

Soit la proposition $P(n): n = n+1$.

-   **Hérédité** : Supposons $k = k+1$. En ajoutant 1 des deux côtés, on obtient $k+1 = k+2$, ce qui est exactement $P(k+1)$. L'implication $P(k) \implies P(k+1)$ est donc vraie.
-   **Initialisation** ($n=0$) : $P(0)$ est l'affirmation $0=1$, ce qui est faux.
-   **Conclusion** : L'hérédité seule ne suffit pas. La proposition $n=n+1$ est fausse pour tout entier $n$.

**Contre-exemple 2 : Initialisation vraie, hérédité fausse**

Considérons la phrase "Tous les chevaux sont de la même couleur". La "preuve" par récurrence est un sophisme célèbre.

-   **Initialisation** ($n=1$) : Dans tout ensemble contenant 1 seul cheval, tous les chevaux sont de la même couleur. C'est vrai.
-   **Hérédité (fausse)** : Supposons que dans tout ensemble de $k$ chevaux, ils sont tous de la même couleur. Considérons un ensemble de $k+1$ chevaux. On en retire un, il en reste $k$, qui sont de la même couleur (par hypothèse). On le remet et on en retire un autre. Le nouveau groupe de $k$ chevaux est aussi de la même couleur. Donc tous les $k+1$ chevaux sont de la même couleur.
-   **L'erreur** : Le raisonnement de l'hérédité ne fonctionne pas pour passer de $k=1$ à $k=2$. Si on a 2 chevaux $\{C_1, C_2\}$, le premier groupe de 1 cheval est $\{C_1\}$ et le second est $\{C_2\}$. Il n'y a pas de cheval commun entre ces deux groupes pour propager la couleur.

### Concepts Connexes

-   **Définitions récursives** : De nombreuses suites (comme la suite de Fibonacci) et structures de données (comme les arbres) sont définies par récurrence.
-   **Algorithmes récursifs** : En informatique, un algorithme récursif est un algorithme qui s'appelle lui-même. La preuve de sa correction et de sa terminaison se fait souvent par récurrence.
