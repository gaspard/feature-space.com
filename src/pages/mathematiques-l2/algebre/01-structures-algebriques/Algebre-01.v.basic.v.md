---
title: 1- Structures algébriques (Niveau de base)
level: basic
course: Structures algébriques et algèbre bilinéaire
chapter: Structures algébriques
order: 10
layout: '../../../../layouts/Layout.astro'
tags: ['algèbre', 'structures', 'groupes', 'anneaux', 'corps', 'applications']
---

# Structures algébriques (Niveau de base)

---

## Concept 1: Application (Fonction)

### Prérequis

- Connaissance de base des ensembles (notions d'ensemble, élément, appartenance, produit cartésien).

### Définition

Soient $X$ et $Y$ deux ensembles. Une **application** (ou **fonction**) $f$ de $X$ dans $Y$, notée $f : X \to Y$, est un procédé qui associe à chaque élément $x$ de l'ensemble de départ $X$ un unique élément $y$ de l'ensemble d'arrivée $Y$. Cet unique élément est noté $f(x)$.

Formellement, une application est définie par son **graphe**, qui est un sous-ensemble $\Gamma_f$ de $X \times Y$ tel que pour tout $x \in X$, il existe un et un seul couple de la forme $(x, y)$ dans $\Gamma_f$. On a alors $y=f(x)$.

$$
\Gamma_f = \{(x, f(x)) \mid x \in X\} \subset X \times Y
$$

### Explications Détaillées

Imaginez une application comme une "machine". Vous lui donnez un élément de l'ensemble de départ $X$ (l'entrée), et la machine vous rend un et un seul élément de l'ensemble d'arrivée $Y$ (la sortie).

- **"Chaque élément de X a une image"**: La machine doit fonctionner pour toutes les entrées possibles de $X$.
- **"Cette image est unique"**: Pour une entrée donnée, la machine donne toujours le même résultat. Elle ne peut pas donner deux sorties différentes pour la même entrée.

L'**application identité** sur un ensemble $X$, notée $\text{id}_X$, est l'application qui renvoie son entrée sans la modifier : $\text{id}_X(x) = x$.

La **composition** de deux applications $f : X \to Y$ et $g : Y \to Z$, notée $g \circ f$, consiste à appliquer d'abord $f$, puis à appliquer $g$ au résultat. Pour tout $x \in X$, on a $(g \circ f)(x) = g(f(x))$.

### Propriétés Clés

- **Associativité de la composition**: Si on a $f : X \to Y$, $g : Y \to Z$ et $h : Z \to T$, alors $h \circ (g \circ f) = (h \circ g) \circ f$. L'ordre dans lequel on groupe les compositions ne change pas le résultat final.
- **Élément neutre pour la composition**: L'application identité agit comme un neutre. Pour toute application $f : X \to Y$, on a $f \circ \text{id}_X = f$ et $\text{id}_Y \circ f = f$.

### Exemples

**Exemple 1: Fonction numérique**

Soit $f : \mathbb{R} \to \mathbb{R}$ définie par $f(x) = x^2$.
Pour chaque nombre réel $x$ en entrée, on associe son carré. Par exemple, $f(2) = 4$, $f(-3) = 9$. Chaque réel a un unique carré, donc c'est bien une application.

**Exemple 2: Fonction non numérique**

Soit $E$ l'ensemble des étudiants d'une classe et $M$ l'ensemble des mois de l'année. On définit l'application $anniv : E \to M$ qui à chaque étudiant associe son mois de naissance.
Chaque étudiant a un unique mois de naissance, donc c'est une application.

**Exemple 3: Composition**

Soient $f : \mathbb{R} \to \mathbb{R}$ avec $f(x) = x+1$ et $g : \mathbb{R} \to \mathbb{R}$ avec $g(x) = 2x$.
La composition $g \circ f$ est l'application définie par :
$$ (g \circ f)(x) = g(f(x)) = g(x+1) = 2(x+1) = 2x+2 $$

### Contre-exemples

**Contre-exemple 1: Pas une application (sortie non unique)**

Considérons la relation de $\mathbb{R}$ dans $\mathbb{R}$ qui à $x$ associe $y$ tel que $x = y^2$.
Pour $x=4$, on peut avoir $y=2$ ou $y=-2$. Un élément de départ est associé à plusieurs éléments d'arrivée. Ce n'est donc pas une application.

**Contre-exemple 2: Pas une application (entrée sans sortie)**

Considérons la "fonction" $f : \mathbb{R} \to \mathbb{R}$ définie par $f(x) = 1/x$.
L'élément $x=0$ de l'ensemble de départ n'a pas d'image dans $\mathbb{R}$. Pour que ce soit une application, il faudrait restreindre l'ensemble de départ à $\mathbb{R} \setminus \{0\}$.

### Concepts Connexes

- **Injectivité, Surjectivité, Bijectivité**: Des propriétés spéciales que les applications peuvent avoir.
- **Ensemble des applications**: L'ensemble de toutes les applications de $X$ vers $Y$ est noté $Y^X$ ou $\text{Hom}_{\text{Ens}}(X, Y)$.

---

## Concept 2: Injectivité, Surjectivité, Bijectivité

### Prérequis

- Application (Fonction)

### Définition

Soit $f : X \to Y$ une application.

1.  **Injective**: On dit que $f$ est **injective** si deux éléments distincts de $X$ ont toujours des images distinctes dans $Y$. Autrement dit, pour tous $x_1, x_2 \in X$ :
    $$ f(x_1) = f(x_2) \implies x_1 = x_2 $$
2.  **Surjective**: On dit que $f$ est **surjective** si tout élément de l'ensemble d'arrivée $Y$ est l'image d'au moins un élément de $X$. Autrement dit, pour tout $y \in Y$, il existe au moins un $x \in X$ tel que $f(x) = y$.
3.  **Bijective**: On dit que $f$ est **bijective** si elle est à la fois injective et surjective. Cela signifie que pour tout $y \in Y$, il existe un et un seul $x \in X$ tel que $f(x) = y$.

### Explications Détaillées

- **Injectivité (un-vers-un)**: Une application injective n'envoie jamais deux entrées différentes sur la même sortie. On peut "remonter" sans ambiguïté d'une sortie à son unique origine.
- **Surjectivité (sur)**: Une application surjective atteint toutes les cibles possibles dans l'ensemble d'arrivée. Aucune valeur de $Y$ n'est "oubliée".
- **Bijectivité (correspondance parfaite)**: Une application bijective établit une correspondance parfaite, un "mariage" idéal entre les éléments de $X$ et ceux de $Y$. Chaque élément de $X$ a un partenaire unique dans $Y$ et vice-versa.

### Propriétés Clés

- Une application $f: X \to Y$ est bijective si et seulement si elle admet une **application inverse** (ou réciproque) $g : Y \to X$ telle que $g \circ f = \text{id}_X$ et $f \circ g = \text{id}_Y$. On note alors $g = f^{-1}$.
- Une application est injective si et seulement si elle admet un inverse à gauche.
- Une application est surjective si et seulement si elle admet un inverse à droite.

### Exemples

**Exemple 1: Injective mais non surjective**

Soit $f : \mathbb{R} \to \mathbb{R}$ définie par $f(x) = e^x$.

- Elle est **injective** car si $e^{x_1} = e^{x_2}$, alors $x_1 = x_2$.
- Elle n'est **pas surjective** car les valeurs de $f(x)$ sont toujours strictement positives. Le nombre $-1 \in \mathbb{R}$ (ensemble d'arrivée) n'a pas d'antécédent.

**Exemple 2: Surjective mais non injective**

Soit $f : \mathbb{R} \to \mathbb{R}$ définie par $f(x) = x^3 - x$.

- Elle est **surjective** (plus difficile à prouver, mais toute valeur réelle peut être atteinte).
- Elle n'est **pas injective** car, par exemple, $f(1) = 1^3-1=0$ et $f(-1) = (-1)^3 - (-1) = 0$. Deux entrées distinctes ($1$ et $-1$) donnent la même sortie.

**Exemple 3: Bijective**

Soit $f : \mathbb{R} \to \mathbb{R}$ définie par $f(x) = 2x + 3$.

- Elle est **injective**: si $2x_1+3=2x_2+3$, alors $2x_1=2x_2$ et donc $x_1=x_2$.
- Elle est **surjective**: pour tout $y \in \mathbb{R}$, on peut trouver $x$ tel que $f(x)=y$. Il suffit de prendre $x = (y-3)/2$.
- Comme elle est injective et surjective, elle est **bijective**. Son inverse est $f^{-1}(y) = (y-3)/2$.

### Contre-exemples

**Contre-exemple 1: Ni injective, ni surjective**

Soit $f : \mathbb{R} \to \mathbb{R}$ définie par $f(x) = x^2$.

- Non injective: $f(2) = 4$ et $f(-2) = 4$.
- Non surjective: $f(x)$ est toujours positif ou nul. Le nombre $-1$ n'a pas d'antécédent.

**Contre-exemple 2: Un cas fini**

Soit $X = \{a, b, c\}$ et $Y = \{1, 2\}$. L'application $f(a)=1, f(b)=1, f(c)=2$.

- Non injective: $f(a)=f(b)$.
- Surjective: $1$ et $2$ sont tous les deux atteints.

### Concepts Connexes

- **Isomorphisme**: Un isomorphisme entre structures algébriques est un morphisme qui est aussi une bijection.
- **Cardinalité**: Deux ensembles sont en bijection si et seulement s'ils ont le même nombre d'éléments (la même cardinalité).

---

## Concept 3: Opération Binaire (Loi de Composition Interne)

### Prérequis

- Ensembles
- Application

### Définition

Une **opération binaire** (ou **loi de composition interne**) sur un ensemble $X$ est une application $* : X \times X \to X$. Elle prend deux éléments de $X$ et les combine pour en produire un troisième, qui est aussi dans $X$.

On note souvent le résultat de l'opération sur $(x, y)$ par $x * y$.

### Explications Détaillées

Une opération binaire est simplement une règle pour "combiner" deux éléments d'un même ensemble. Les opérations que vous connaissez depuis longtemps, comme l'addition (+) et la multiplication ($\times$) sur les nombres, sont des exemples d'opérations binaires.

Le point crucial est que le résultat de l'opération doit toujours rester **à l'intérieur** de l'ensemble de départ. C'est pourquoi on parle de loi "interne".

### Propriétés Clés

Soit $*$ une opération binaire sur un ensemble $X$.

- **Associativité**: L'opération est **associative** si l'ordre des calculs ne compte pas quand on combine trois éléments : $(x * y) * z = x * (y * z)$ pour tous $x, y, z \in X$.
- **Élément neutre**: Un élément $e \in X$ est un **élément neutre** si le combiner avec n'importe quel autre élément ne change pas ce dernier : $e * x = x * e = x$ pour tout $x \in X$. S'il existe, l'élément neutre est unique.
- **Commutativité**: L'opération est **commutative** si l'ordre des deux éléments ne compte pas : $x * y = y * x$ pour tous $x, y \in X$.
- **Élément inversible**: Si l'opération a un élément neutre $e$, un élément $x \in X$ est dit **inversible** s'il existe un élément $y \in X$ (appelé son **inverse**) tel que $x * y = y * x = e$. Si l'opération est associative, cet inverse est unique.

### Exemples

**Exemple 1: L'addition sur les entiers $\mathbb{Z}$**

L'opération $+$ sur $\mathbb{Z}$ est une opération binaire.

- Associative: $(a+b)+c = a+(b+c)$.
- Commutative: $a+b = b+a$.
- Élément neutre: $0$, car $a+0 = a$.
- Tout élément $a$ a un inverse (son opposé) $-a$, car $a+(-a) = 0$.

**Exemple 2: La multiplication sur les réels $\mathbb{R}$**

L'opération $\times$ sur $\mathbb{R}$ est une opération binaire.

- Associative: $(a \times b) \times c = a \times (b \times c)$.
- Commutative: $a \times b = b \times a$.
- Élément neutre: $1$, car $a \times 1 = a$.
- Tout élément non nul $a$ a un inverse $1/a$, car $a \times (1/a) = 1$. L'élément $0$ n'a pas d'inverse.

**Exemple 3: La composition de fonctions**

Soit $E$ l'ensemble des applications de $\mathbb{R}$ dans $\mathbb{R}$. La composition $\circ$ est une opération binaire sur $E$.

- Associative: $h \circ (g \circ f) = (h \circ g) \circ f$.
- Non commutative en général: si $f(x)=x+1$ et $g(x)=x^2$, $(f \circ g)(x) = x^2+1$ mais $(g \circ f)(x) = (x+1)^2$.
- Élément neutre: l'application identité $\text{id}(x)=x$.

### Contre-exemples

**Contre-exemple 1: Pas une loi interne**

L'addition n'est pas une loi interne sur l'ensemble des nombres impairs $I = \{..., -3, -1, 1, 3, ...\}$, car la somme de deux nombres impairs est un nombre pair. Par exemple, $1 \in I$ et $3 \in I$, mais $1+3=4 \notin I$.

**Contre-exemple 2: Non-associativité**

La soustraction $-$ sur $\mathbb{Z}$ n'est pas associative.
Par exemple, $(8 - 4) - 2 = 4 - 2 = 2$, mais $8 - (4 - 2) = 8 - 2 = 6$.

### Concepts Connexes

- Les structures algébriques comme les **Monoïdes**, **Groupes**, **Anneaux** et **Corps** sont définies comme des ensembles munis d'une ou plusieurs opérations binaires ayant certaines de ces propriétés.

---

## Concept 4: Groupe

### Prérequis

- Ensemble
- Opération Binaire
- Propriétés: Associativité, Élément neutre, Élément inversible

### Définition

Un **groupe** est un couple $(G, *)$ où $G$ est un ensemble et $*$ est une opération binaire sur $G$ qui satisfait les trois axiomes suivants :

1.  **Associativité**: Pour tous $a, b, c \in G$, on a $(a * b) * c = a * (b * c)$.
2.  **Élément neutre**: Il existe un élément $e \in G$ tel que pour tout $a \in G$, on a $a * e = e * a = a$.
3.  **Inverse**: Pour chaque élément $a \in G$, il existe un élément $b \in G$ (noté $a^{-1}$) tel que $a * b = b * a = e$.

Si de plus l'opération $*$ est commutative (c'est-à-dire $a * b = b * a$ pour tous $a,b \in G$), le groupe est dit **abélien** ou **commutatif**.

### Explications Détaillées

Un groupe est l'une des structures algébriques les plus fondamentales. Il formalise l'idée de symétrie. Pensez-y comme un ensemble d'actions ou de transformations que vous pouvez effectuer, avec les propriétés suivantes :

- Vous pouvez combiner deux actions pour en faire une troisième (stabilité de la loi).
- L'ordre des actions en groupe de 3 ne change pas le résultat (associativité).
- Il y a une action "ne rien faire" (l'élément neutre).
- Chaque action peut être "annulée" par une autre action (l'inverse).

La notation est souvent **additive** (+) pour les groupes commutatifs (le neutre est noté 0, l'inverse de $a$ est $-a$) ou **multiplicative** ($\times$ ou $\cdot$) pour le cas général (le neutre est noté 1 ou $e$, l'inverse est $a^{-1}$).

### Propriétés Clés

- L'élément neutre d'un groupe est unique.
- L'inverse de chaque élément est unique.
- Pour tous $a,b \in G$, on a $(a*b)^{-1} = b^{-1} * a^{-1}$ (attention à l'inversion de l'ordre!).

### Exemples

**Exemple 1: Les entiers avec l'addition**

L'ensemble des entiers relatifs $\mathbb{Z}$ muni de l'addition, noté $(\mathbb{Z}, +)$, est un groupe abélien.

- L'addition est associative.
- L'élément neutre est $0$.
- L'inverse de tout entier $n$ est son opposé $-n$.
- L'addition est commutative.

**Exemple 2: Les réels non nuls avec la multiplication**

L'ensemble des nombres réels non nuls $\mathbb{R}^* = \mathbb{R} \setminus \{0\}$ muni de la multiplication, noté $(\mathbb{R}^*, \times)$, est un groupe abélien.

- La multiplication est associative.
- L'élément neutre est $1$.
- L'inverse de tout réel $x \neq 0$ est $1/x$.
- La multiplication est commutative.

**Exemple 3: Le groupe des permutations $S_3$**

Soit l'ensemble $X=\{1, 2, 3\}$. L'ensemble des bijections (permutations) de $X$ sur lui-même, muni de la composition $\circ$, forme un groupe appelé $S_3$. Il a $3! = 6$ éléments. Ce groupe n'est **pas abélien**. Par exemple, si $f$ échange 1 et 2, et $g$ échange 2 et 3, alors $(f \circ g)(1)=2$ mais $(g \circ f)(1)=3$.

### Contre-exemples

**Contre-exemple 1: Pas de groupe car pas d'inverses**

L'ensemble des entiers naturels $\mathbb{N}=\{0, 1, 2, ...\}$ muni de l'addition, $(\mathbb{N}, +)$, n'est pas un groupe. C'est un monoïde (associatif, neutre 0), mais les éléments autres que 0 n'ont pas d'inverse dans $\mathbb{N}$. Par exemple, il n'existe pas d'entier naturel $n$ tel que $3+n=0$.

**Contre-exemple 2: Pas de groupe car un élément n'a pas d'inverse**

L'ensemble des entiers relatifs $\mathbb{Z}$ muni de la multiplication, $(\mathbb{Z}, \times)$, n'est pas un groupe. C'est un monoïde (associatif, neutre 1), mais la plupart des éléments ne sont pas inversibles. Par exemple, il n'y a pas d'entier $n$ tel que $2 \times n = 1$. Les seuls éléments inversibles sont $1$ et $-1$.

### Concepts Connexes

- **Monoïde**: Un groupe est un monoïde où chaque élément a un inverse.
- **Sous-groupe**: Un sous-ensemble d'un groupe qui est lui-même un groupe.
- **Anneau**: Une structure avec deux opérations où l'une forme un groupe abélien.
- **Morphisme de groupes**: Une application entre deux groupes qui préserve la structure de groupe.

---

## Concept 5: Anneau

### Prérequis

- Groupe (abélien)
- Monoïde
- Opération Binaire (et la propriété de distributivité)

### Définition

Un **anneau** est un triplet $(A, +, \times)$ où $A$ est un ensemble et $+$, $\times$ sont deux opérations binaires sur $A$ (appelées addition et multiplication) satisfaisant les axiomes suivants :

1.  $(A, +)$ est un **groupe abélien**.
    - L'addition est associative et commutative.
    - Il existe un élément neutre pour l'addition, noté $0$.
    - Chaque élément $a \in A$ a un inverse pour l'addition (opposé), noté $-a$.
2.  $(A, \times)$ est un **monoïde**.
    - La multiplication est associative.
    - Il existe un élément neutre pour la multiplication, noté $1$.
3.  La multiplication est **distributive** par rapport à l'addition. Pour tous $a, b, c \in A$ :
    - $a \times (b + c) = (a \times b) + (a \times c)$
    - $(b + c) \times a = (b \times a) + (c \times a)$

Si de plus la multiplication est commutative, l'anneau est dit **commutatif**.
Un anneau est dit **intègre** si $1 \neq 0$ et si pour tous $a, b \in A$, $a \times b = 0 \implies a=0 \text{ ou } b=0$.

### Explications Détaillées

Un anneau est une structure qui généralise les propriétés arithmétiques des entiers $\mathbb{Z}$. Il possède deux opérations qui interagissent de manière familière grâce à la distributivité. L'addition a toutes les "bonnes" propriétés (on peut additionner, soustraire, et l'ordre ne compte pas), tandis que la multiplication est un peu moins puissante (on ne peut pas toujours "diviser").

L'intégrité signifie qu'il n'y a pas de "diviseurs de zéro" : un produit ne peut être nul que si l'un de ses facteurs est nul. C'est une propriété cruciale pour la simplification des équations.

### Propriétés Clés

- Pour tout $a \in A$, on a $a \times 0 = 0 \times a = 0$.
- Pour tout $a \in A$, on a $(-1) \times a = -a$.
- Dans un anneau intègre, on peut "simplifier" : si $a \neq 0$ et $ab = ac$, alors $b=c$.

### Exemples

**Exemple 1: L'anneau des entiers relatifs**

L'ensemble $(\mathbb{Z}, +, \times)$ est l'exemple prototypique d'un anneau commutatif intègre.

**Exemple 2: L'anneau des matrices carrées**

L'ensemble des matrices carrées de taille $n \times n$ à coefficients réels, noté $(M_n(\mathbb{R}), +, \times)$, est un anneau.

- $(M_n(\mathbb{R}), +)$ est un groupe abélien.
- $(M_n(\mathbb{R}), \times)$ est un monoïde (le neutre est la matrice identité $I_n$).
- La multiplication est distributive sur l'addition.
- Si $n > 1$, cet anneau n'est **pas commutatif** et n'est **pas intègre**. Par exemple $\begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix} \begin{pmatrix} 0 & 0 \\ 0 & 1 \end{pmatrix} = \begin{pmatrix} 0 & 0 \\ 0 & 0 \end{pmatrix}$, mais aucune des deux matrices n'est nulle.

**Exemple 3: L'anneau $\mathbb{Z}/6\mathbb{Z}$**

L'ensemble des entiers modulo 6, $\{[0], [1], [2], [3], [4], [5]\}$, est un anneau commutatif.
Il n'est pas intègre car $[2] \times [3] = [6] = [0]$, mais $[2] \neq [0]$ et $[3] \neq [0]$.

### Contre-exemples

**Contre-exemple 1: Pas un anneau car pas un groupe additif**

L'ensemble des entiers naturels $(\mathbb{N}, +, \times)$ n'est pas un anneau car $(\mathbb{N}, +)$ n'est pas un groupe (il manque les opposés).

**Contre-exemple 2: Pas un anneau car la distributivité manque**

Considérons l'ensemble $\mathbb{Z}$ avec l'addition usuelle $+$ et une "multiplication" $\star$ définie par $a \star b = 1$ pour tous $a, b$.

- $(\mathbb{Z}, +)$ est un groupe abélien.
- $(\mathbb{Z}, \star)$ n'est pas un monoïde (il n'y a pas d'élément neutre).
- La distributivité ne fonctionne pas : $2 \star (3+4) = 2 \star 7 = 1$, mais $(2 \star 3) + (2 \star 4) = 1 + 1 = 2$.

### Concepts Connexes

- **Corps**: Un corps est un anneau commutatif où la division (par un non-nul) est toujours possible.
- **Idéal**: Un sous-ensemble spécial d'un anneau, crucial pour construire des anneaux quotients.
- **Morphisme d'anneaux**: Une application entre deux anneaux qui préserve les deux opérations et les éléments neutres.

---

## Concept 6: Corps

### Prérequis

- Anneau

### Définition

Un **corps** est un anneau commutatif $(K, +, \times)$ dans lequel l'élément neutre de l'addition $0$ est différent de l'élément neutre de la multiplication $1$ ($0 \neq 1$), et où tout élément non nul est inversible pour la multiplication.

Autrement dit, un corps est un ensemble $K$ avec deux opérations $+$ et $\times$ tel que :

1. $(K, +)$ est un groupe abélien (avec le neutre $0$).
2. $(K \setminus \{0\}, \times)$ est un groupe abélien (avec le neutre $1$).
3. La multiplication est distributive par rapport à l'addition.

### Explications Détaillées

Un corps est la structure algébrique qui se comporte le plus comme les nombres que nous utilisons tous les jours (comme les rationnels $\mathbb{Q}$ ou les réels $\mathbb{R}$). Dans un corps, on peut additionner, soustraire, multiplier et, surtout, **diviser** par n'importe quel élément non nul. C'est le cadre idéal pour faire de l'algèbre "classique", comme résoudre des systèmes d'équations linéaires.

### Propriétés Clés

- Tout corps est un anneau intègre. Si $ab=0$ et $a \neq 0$, alors on peut multiplier par $a^{-1}$ pour obtenir $a^{-1}ab=a^{-1}0$, ce qui donne $b=0$.
- Les seuls idéaux d'un corps sont $\{0\}$ et le corps lui-même.

### Exemples

**Exemple 1: Les nombres rationnels**

L'ensemble des nombres rationnels $(\mathbb{Q}, +, \times)$ est un corps. Tout rationnel non nul $p/q$ a pour inverse $q/p$.

**Exemple 2: Les nombres réels**

L'ensemble des nombres réels $(\mathbb{R}, +, \times)$ est un corps.

**Exemple 3: Les nombres complexes**

L'ensemble des nombres complexes $(\mathbb{C}, +, \times)$ est un corps.

**Exemple 4: Le corps fini $\mathbb{Z}/p\mathbb{Z}$**

Si $p$ est un nombre premier, l'anneau des entiers modulo $p$, noté $\mathbb{Z}/p\mathbb{Z}$ ou $\mathbb{F}_p$, est un corps. Par exemple, dans $\mathbb{Z}/5\mathbb{Z}$, l'inverse de $[3]$ est $[2]$ car $[3]\times[2] = [6] = [1]$.

### Contre-exemples

**Contre-exemple 1: L'anneau des entiers $\mathbb{Z}$**

$(\mathbb{Z}, +, \times)$ est un anneau commutatif intègre, mais ce n'est pas un corps car la plupart de ses éléments non nuls ne sont pas inversibles pour la multiplication. Par exemple, $2$ n'a pas d'inverse dans $\mathbb{Z}$.

**Contre-exemple 2: L'anneau $\mathbb{Z}/6\mathbb{Z}$**

Ce n'est pas un corps car, par exemple, $[2]$ n'a pas d'inverse multiplicatif. De plus, il n'est pas intègre. En général, $\mathbb{Z}/n\mathbb{Z}$ est un corps si et seulement si $n$ est un nombre premier.

### Concepts Connexes

- **Anneau**: Un corps est un type particulier d'anneau.
- **Espace vectoriel**: La notion d'espace vectoriel (chapitre suivant) est définie sur un corps. Les scalaires sont des éléments d'un corps.

---

## Concept 7: Relation d'Équivalence et Ensemble Quotient

### Prérequis

- Ensembles
- Notions de base sur les relations (réflexivité, symétrie, transitivité)

### Définition

Une **relation d'équivalence** sur un ensemble $E$ est une relation binaire, notée $\sim$, qui est :

1.  **Réflexive**: Pour tout $x \in E$, $x \sim x$ (tout élément est en relation avec lui-même).
2.  **Symétrique**: Pour tous $x, y \in E$, si $x \sim y$, alors $y \sim x$ (si $x$ est en relation avec $y$, alors $y$ l'est avec $x$).
3.  **Transitive**: Pour tous $x, y, z \in E$, si $x \sim y$ et $y \sim z$, alors $x \sim z$ (la relation se propage).

Pour un élément $x \in E$, la **classe d'équivalence** de $x$ est l'ensemble de tous les éléments de $E$ qui sont équivalents à $x$:
$$ \text{cl}(x) = \{y \in E \mid y \sim x\} $$
L'**ensemble quotient** de $E$ par $\sim$, noté $E/\sim$, est l'ensemble de toutes les classes d'équivalence.
$$ E/\sim = \{\text{cl}(x) \mid x \in E\} $$

### Explications Détaillées

Une relation d'équivalence est une façon de "relâcher" la notion d'égalité. Au lieu de dire que deux objets sont identiques, on dit qu'ils sont "similaires" ou "équivalents" selon un certain critère.

Le résultat est que la relation d'équivalence découpe l'ensemble $E$ en sous-ensembles disjoints, appelés classes d'équivalence. Chaque classe regroupe tous les éléments qui sont considérés comme "les mêmes" du point de vue de la relation. L'ensemble quotient est alors un nouvel ensemble dont les éléments sont ces "paquets" d'éléments originaux.

Pensez à un tas de chaussettes. La relation "être de la même paire" est une relation d'équivalence. Une classe d'équivalence est une paire de chaussettes. L'ensemble quotient est l'ensemble des paires de chaussettes.

### Propriétés Clés

- Les classes d'équivalence forment une **partition** de l'ensemble $E$ :
  - Elles ne sont jamais vides.
  - Deux classes d'équivalence sont soit totalement disjointes, soit identiques.
  - La réunion de toutes les classes d'équivalence redonne l'ensemble $E$ tout entier.
- **Propriété universelle du quotient**: Une application $f: E \to F$ qui est "compatible" avec la relation (c'est-à-dire qui donne la même valeur pour des éléments équivalents) peut être redéfinie de manière unique comme une application $\bar{f} : E/\sim \to F$. C'est un outil très puissant pour construire des applications à partir d'ensembles quotients.

### Exemples

**Exemple 1: Congruence modulo $n$**

Sur $\mathbb{Z}$, la relation "$x \sim y$ si $x-y$ est un multiple de $n$" est une relation d'équivalence.

- Pour $n=3$, la classe de $1$ est $\text{cl}(1) = \{..., -5, -2, 1, 4, 7, ...\}$.
- L'ensemble quotient est $\mathbb{Z}/3\mathbb{Z} = \{\text{cl}(0), \text{cl}(1), \text{cl}(2)\}$. Il ne contient que 3 éléments.

**Exemple 2: Avoir la même initiale**

Sur un ensemble de prénoms $P = \{\text{Alice}, \text{Bob}, \text{Antoine}, \text{Claire}\}$, la relation "$x \sim y$ si $x$ et $y$ commencent par la même lettre" est une relation d'équivalence.

- Les classes sont : $\{\text{Alice}, \text{Antoine}\}$, $\{\text{Bob}\}$, $\{\text{Claire}\}$.
- L'ensemble quotient a 3 éléments, qui sont ces trois ensembles.

**Exemple 3: Construction des nombres rationnels $\mathbb{Q}$**

Les nombres rationnels peuvent être construits comme un ensemble quotient. On part de l'ensemble $E = \mathbb{Z} \times (\mathbb{Z} \setminus \{0\})$. Un élément de $E$ est un couple $(p, q)$ qu'on pense comme la fraction $p/q$.
On définit la relation $(p, q) \sim (r, s)$ si $ps=rq$. C'est une relation d'équivalence.
Le corps des rationnels $\mathbb{Q}$ est l'ensemble quotient $E/\sim$. La fraction $1/2$ est la classe d'équivalence de $(1,2)$, qui contient aussi $(2,4)$, $(3,6)$, etc.

### Contre-exemples

**Contre-exemple 1: Relation d'ordre**

La relation $\le$ sur $\mathbb{R}$ n'est pas une relation d'équivalence.

- Elle est réflexive ($x \le x$) et transitive (si $x \le y$ et $y \le z$ alors $x \le z$).
- Mais elle n'est pas symétrique: $3 \le 5$ est vrai, mais $5 \le 3$ est faux.

**Contre-exemple 2: Relation non transitive**

Sur un ensemble de personnes, la relation "$x$ connaît $y$" n'est pas transitive. Alice peut connaître Bob, et Bob peut connaître Claire, sans qu'Alice ne connaisse Claire.

### Concepts Connexes

- **Groupe quotient, Anneau quotient**: Ces structures sont construites en appliquant le concept d'ensemble quotient à des groupes et des anneaux, avec des relations d'équivalence compatibles avec les opérations.
- **Partition d'un ensemble**: Une relation d'équivalence et une partition sont deux manières de voir la même chose.

---

## Concept 8: Sous-groupe et Groupe Quotient

### Prérequis

- Groupe
- Relation d'Équivalence et Ensemble Quotient

### Définition

Un **sous-groupe** d'un groupe $(G, *)$ est un sous-ensemble non vide $H \subset G$ qui est lui-même un groupe pour la même opération $*$. Cela revient à vérifier trois points :

1.  L'élément neutre $e_G$ est dans $H$.
2.  $H$ est stable par l'opération : si $h_1, h_2 \in H$, alors $h_1 * h_2 \in H$.
3.  $H$ est stable par passage à l'inverse : si $h \in H$, alors $h^{-1} \in H$.
    Une condition équivalente et plus compacte est : $H$ est un sous-groupe si et seulement si $H$ est non vide et pour tous $x, y \in H$, l'élément $x * y^{-1}$ est aussi dans $H$.

Soit $(A, +)$ un **groupe abélien** et $B$ un sous-groupe de $A$. On définit une relation d'équivalence sur $A$ par $a_1 \sim a_2$ si et seulement si $a_1 - a_2 \in B$.
L'ensemble quotient $A/\sim$, noté $A/B$, peut être muni d'une structure de groupe appelée **groupe quotient**. L'addition des classes est définie par :
$$ \text{cl}(a_1) + \text{cl}(a_2) = \text{cl}(a_1 + a_2) $$

### Explications Détaillées

Un **sous-groupe** est simplement une "petite" structure de groupe contenue à l'intérieur d'une plus grande.

Un **groupe quotient** est une façon de "simplifier" un groupe en considérant tous les éléments d'un sous-groupe $B$ comme étant équivalents à l'élément neutre. On "réduit au silence" tout ce qui se passe à l'intérieur de $B$. Les éléments du groupe quotient $A/B$ sont les "translatés" du sous-groupe $B$, appelés classes (ou classes à gauche/droite, _cosets_ en anglais). Par exemple, la classe de $a$ est l'ensemble $a+B = \{a+b \mid b \in B\}$. L'opération sur ces paquets est l'opération naturelle héritée de $A$.

### Propriétés Clés

- Le **noyau** d'un morphisme de groupes $f: G \to H$, défini par $\text{Ker}(f) = \{g \in G \mid f(g) = e_H\}$, est toujours un sous-groupe de $G$.
- L'**image** d'un morphisme de groupes $f: G \to H$, $\text{Im}(f) = \{f(g) \mid g \in G\}$, est toujours un sous-groupe de $H$.
- Un morphisme $f$ est injectif si et seulement si son noyau est trivial ($\text{Ker}(f) = \{e_G\}$).
- **Propriété universelle du quotient**: Tout morphisme de groupes $f: A \to C$ dont le noyau contient $B$ peut être factorisé de manière unique à travers le quotient $A/B$.

### Exemples

**Exemple 1: Sous-groupe des entiers pairs**

L'ensemble des entiers pairs $2\mathbb{Z} = \{..., -4, -2, 0, 2, 4, ...\}$ est un sous-groupe de $(\mathbb{Z}, +)$.

- $0 \in 2\mathbb{Z}$.
- La somme de deux pairs est paire.
- L'opposé d'un pair est pair.

**Exemple 2: Groupe quotient $\mathbb{Z}/2\mathbb{Z}$**

Considérons le groupe quotient de $(\mathbb{Z}, +)$ par son sous-groupe $2\mathbb{Z}$. La relation est $a \sim b \iff a-b$ est pair.

- Il y a deux classes d'équivalence :
  - $\text{cl}(0) = 2\mathbb{Z}$ (les pairs)
  - $\text{cl}(1) = 1+2\mathbb{Z}$ (les impairs)
- Le groupe quotient $\mathbb{Z}/2\mathbb{Z} = \{\text{cl}(0), \text{cl}(1)\}$ a deux éléments. L'addition est : $\text{cl}(1) + \text{cl}(1) = \text{cl}(1+1) = \text{cl}(2) = \text{cl}(0)$.

**Exemple 3: Noyau et Image**

Soit $f : (\mathbb{Z}, +) \to (\mathbb{Z}/4\mathbb{Z}, +)$ l'application $f(n) = \text{cl}(n)$.

- Le noyau est $\text{Ker}(f) = \{n \in \mathbb{Z} \mid \text{cl}(n) = \text{cl}(0)\} = 4\mathbb{Z}$. C'est un sous-groupe de $\mathbb{Z}$.
- L'image est $\text{Im}(f) = \mathbb{Z}/4\mathbb{Z}$ tout entier. C'est un sous-groupe de lui-même.

### Contre-exemples

**Contre-exemple 1: Pas un sous-groupe**

L'ensemble des entiers naturels $\mathbb{N}$ n'est pas un sous-groupe de $(\mathbb{Z}, +)$ car il n'est pas stable par passage à l'inverse (l'opposé d'un entier positif non nul est négatif).

**Contre-exemple 2: Pas un sous-groupe**

L'union de deux sous-groupes n'est généralement pas un sous-groupe. Dans $(\mathbb{Z}, +)$, $2\mathbb{Z}$ et $3\mathbb{Z}$ sont des sous-groupes, mais leur union $2\mathbb{Z} \cup 3\mathbb{Z}$ n'en est pas un, car $2$ et $3$ sont dans l'union, mais leur somme $2+3=5$ n'y est pas.

### Concepts Connexes

- **Idéal et Anneau quotient**: Ces notions généralisent celles de sous-groupe (normal) et groupe quotient au contexte des anneaux.
- **Théorèmes d'isomorphisme**: Des résultats fondamentaux qui relient les notions de morphisme, noyau, image et quotient.

---

## Concept 9: Idéal et Anneau Quotient

### Prérequis

- Anneau (commutatif)
- Sous-groupe
- Groupe Quotient

### Définition

Soit $A$ un anneau commutatif.
Un **idéal** de $A$ est un sous-ensemble $I \subset A$ qui est :

1.  Un sous-groupe du groupe additif $(A, +)$.
2.  Stable par multiplication par n'importe quel élément de $A$ (propriété d'absorption) :
    Pour tout $x \in I$ et tout $a \in A$, le produit $ax$ est dans $I$.

Soit $I$ un idéal de $A$. Puisque $I$ est un sous-groupe additif, on peut former le groupe quotient $A/I$. On peut munir ce quotient d'une multiplication bien définie par :
$$ (a+I) \cdot (b+I) = (ab) + I $$
où $a+I$ est la classe de $a$. Muni de cette addition et de cette multiplication, $A/I$ est un anneau, appelé **anneau quotient**.

### Explications Détaillées

Un **idéal** est plus qu'un simple sous-anneau. La condition clé est la propriété "d'absorption" : si vous prenez un élément de l'idéal et que vous le multipliez par _n'importe quel_ élément de l'anneau (même extérieur à l'idéal), le résultat est "aspiré" et retombe dans l'idéal. C'est exactement cette propriété qui permet de définir une multiplication cohérente sur les classes d'équivalence.

L'**anneau quotient** $A/I$ est le résultat de la "simplification" de l'anneau $A$ en traitant tous les éléments de l'idéal $I$ comme s'ils étaient nuls. C'est une généralisation directe du concept d'entiers modulo $n$. Dans $\mathbb{Z}/n\mathbb{Z}$, on traite tous les multiples de $n$ (qui forment l'idéal $n\mathbb{Z}$) comme zéro.

### Propriétés Clés

- Le noyau d'un morphisme d'anneaux $f: A \to B$ est toujours un idéal de $A$.
- L'application "canonique" $\text{cl}_I : A \to A/I$ qui envoie $a$ sur sa classe $a+I$ est un morphisme d'anneaux surjectif, dont le noyau est $I$.
- **Propriété universelle du quotient**: Tout morphisme d'anneaux $f: A \to B$ dont le noyau contient l'idéal $I$ se factorise de manière unique à travers l'anneau quotient $A/I$.

### Exemples

**Exemple 1: L'idéal $n\mathbb{Z}$ et l'anneau $\mathbb{Z}/n\mathbb{Z}$**

Pour tout entier $n$, l'ensemble $n\mathbb{Z}$ des multiples de $n$ est un idéal de l'anneau $\mathbb{Z}$.

- C'est un sous-groupe additif.
- Si $x \in n\mathbb{Z}$ (donc $x=kn$ pour un entier $k$) et $a \in \mathbb{Z}$, alors $ax = a(kn) = (ak)n$, qui est aussi un multiple de $n$, donc $ax \in n\mathbb{Z}$.
- L'anneau quotient correspondant est $\mathbb{Z}/n\mathbb{Z}$, l'anneau des entiers modulo $n$.

**Exemple 2: Construction des nombres complexes**

Les nombres complexes peuvent être construits comme un anneau quotient. Soit $A = \mathbb{R}[X]$ l'anneau des polynômes à coefficients réels. Soit $I$ l'ensemble des polynômes qui sont des multiples du polynôme $X^2+1$. $I$ est un idéal.
L'anneau quotient $\mathbb{C} = \mathbb{R}[X]/I$ est le corps des nombres complexes. Dans ce quotient, la classe du polynôme $X^2+1$ est nulle, donc la classe de $X^2$ est égale à la classe de $-1$. On note $i$ la classe de $X$, et on a bien $i^2 = -1$.

**Exemple 3: Évaluation de fonctions**

Soit $A = C^0([0, 1], \mathbb{R})$ l'anneau des fonctions continues de $[0,1]$ dans $\mathbb{R}$. Soit $x_0 \in [0,1]$ un point fixe (par exemple $x_0=0$).
L'ensemble $I = \{f \in A \mid f(x_0)=0\}$ est un idéal de $A$.
Le morphisme d'évaluation $ev_{x_0}: f \mapsto f(x_0)$ a pour noyau cet idéal $I$.

### Contre-exemples

**Contre-exemple 1: Sous-anneau qui n'est pas un idéal**

$\mathbb{Z}$ est un sous-anneau de $\mathbb{Q}$. Cependant, ce n'est pas un idéal.
Prenons $x=2 \in \mathbb{Z}$ et $a=1/3 \in \mathbb{Q}$.
Le produit $ax = (1/3) \times 2 = 2/3$ n'est pas dans $\mathbb{Z}$. La propriété d'absorption n'est pas vérifiée.

**Contre-exemple 2: Un sous-groupe additif qui n'est pas un idéal**

Dans l'anneau des matrices $M_2(\mathbb{R})$, considérons le sous-ensemble $I$ des matrices de la forme $\begin{pmatrix} a & 0 \\ b & 0 \end{pmatrix}$. C'est un sous-groupe additif. Mais ce n'est pas un idéal.
Soit $X = \begin{pmatrix} 1 & 0 \\ 1 & 0 \end{pmatrix} \in I$ et $A = \begin{pmatrix} 0 & 1 \\ 0 & 1 \end{pmatrix} \in M_2(\mathbb{R})$.
Le produit $AX = \begin{pmatrix} 0 & 1 \\ 0 & 1 \end{pmatrix} \begin{pmatrix} 1 & 0 \\ 1 & 0 \end{pmatrix} = \begin{pmatrix} 1 & 0 \\ 1 & 0 \end{pmatrix}$ est dans $I$.
Mais $XA = \begin{pmatrix} 1 & 0 \\ 1 & 0 \end{pmatrix} \begin{pmatrix} 0 & 1 \\ 0 & 1 \end{pmatrix} = \begin{pmatrix} 0 & 1 \\ 0 & 1 \end{pmatrix}$, qui n'est pas dans $I$. (Ceci montre que c'est un "idéal à gauche" mais pas un "idéal à droite", donc pas un idéal bilatère).

### Concepts Connexes

- **Groupe Quotient**: L'anneau quotient est d'abord un groupe quotient pour l'addition.
- **Morphisme d'anneaux**: Les idéaux sont précisément les noyaux des morphismes d'anneaux.
