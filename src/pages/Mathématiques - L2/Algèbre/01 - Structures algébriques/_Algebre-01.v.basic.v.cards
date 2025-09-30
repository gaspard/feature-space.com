---
title: '0 - Fiches de base'
layout: '../../../../layouts/Layout.astro'
order: 0
level: basic
chapter: Structures algébriques (Niveau de base)
course: Structures algébriques et algèbre bilinéaire
tags: ["structures algébriques", "groupe", "anneau", "corps", "application", "définition"]
---

# Fiches : Structures algébriques (Niveau de base)

---

Qu'est-ce qu'une **application** (ou fonction) d'un ensemble $X$ vers un ensemble $Y$ ?

<details>
<summary>Réponse</summary>

Une **application** $f$ de $X$ dans $Y$, notée $f : X \to Y$, est un procédé qui associe à **chaque** élément $x$ de l'ensemble de départ $X$ un **unique** élément $y$ de l'ensemble d'arrivée $Y$. Cet élément unique est noté $f(x)$.

Les deux conditions cruciales sont :
1.  **Existence** : Tout élément de l'ensemble de départ $X$ doit avoir une image dans $Y$.
2.  **Unicité** : Un élément de $X$ ne peut pas avoir plus d'une image dans $Y$.

**Exemple :**
L'application $f: \mathbb{R} \to \mathbb{R}$ définie par $f(x) = x^2$ est bien une application car chaque nombre réel $x$ a un unique carré.

</details>

---

Qu'est-ce que la **composition** de deux applications ?

<details>
<summary>Réponse</summary>

La **composition** de deux applications $f : X \to Y$ et $g : Y \to Z$, notée $g \circ f$, est une nouvelle application de $X$ vers $Z$.

Elle consiste à appliquer d'abord $f$ à un élément $x \in X$, puis à appliquer $g$ au résultat $f(x)$.

**Formule :**
Pour tout $x \in X$, on a $(g \circ f)(x) = g(f(x))$.

**Exemple :**
Si $f(x) = x+1$ et $g(y) = 2y$, alors $(g \circ f)(x) = g(f(x)) = g(x+1) = 2(x+1) = 2x+2$.

</details>

---

Qu'est-ce qu'une application **injective** ?

<details>
<summary>Réponse</summary>

Une application $f : X \to Y$ est dite **injective** si deux éléments distincts de l'ensemble de départ $X$ ont toujours des images distinctes dans l'ensemble d'arrivée $Y$.

Autrement dit, des entrées différentes donnent des sorties différentes.

**Définition formelle :**
Pour tous $x_1, x_2 \in X$, si $f(x_1) = f(x_2)$, alors $x_1 = x_2$.

**Exemple :**
$f: \mathbb{R} \to \mathbb{R}$ définie par $f(x) = 2x+1$ est injective, car si $2x_1+1 = 2x_2+1$, alors $x_1=x_2$.

**Contre-exemple :**
$f(x)=x^2$ n'est pas injective car $f(2) = 4$ et $f(-2) = 4$.

</details>

---

Qu'est-ce qu'une application **surjective** ?

<details>
<summary>Réponse</summary>

Une application $f : X \to Y$ est dite **surjective** si tout élément de l'ensemble d'arrivée $Y$ est l'image d'au moins un élément de l'ensemble de départ $X$.

Autrement dit, toutes les valeurs possibles dans l'ensemble d'arrivée sont "atteintes".

**Définition formelle :**
Pour tout $y \in Y$, il existe au moins un $x \in X$ tel que $f(x) = y$.

**Exemple :**
$f: \mathbb{R} \to \mathbb{R}$ définie par $f(x) = x+1$ est surjective, car pour n'importe quel $y \in \mathbb{R}$, on peut trouver $x = y-1$ tel que $f(x)=y$.

**Contre-exemple :**
$f(x)=x^2$ de $\mathbb{R}$ dans $\mathbb{R}$ n'est pas surjective car le nombre $-1$ n'a aucun antécédent.

</details>

---

Qu'est-ce qu'une application **bijective** et quelle est sa propriété principale ?

<details>
<summary>Réponse</summary>

Une application $f : X \to Y$ est dite **bijective** si elle est à la fois **injective et surjective**.

Cela signifie que pour tout élément $y$ de l'ensemble d'arrivée $Y$, il existe un et un seul élément $x$ de l'ensemble de départ $X$ tel que $f(x) = y$. Elle crée une correspondance parfaite (un-pour-un) entre les deux ensembles.

**Propriété principale :**
Une application est bijective si et seulement si elle admet une **application inverse** (ou réciproque), notée $f^{-1}: Y \to X$, telle que $f^{-1} \circ f = \text{id}_X$ et $f \circ f^{-1} = \text{id}_Y$.

**Exemple :**
$f: \mathbb{R} \to \mathbb{R}$ définie par $f(x) = 2x+3$ est bijective. Son inverse est $f^{-1}(y) = (y-3)/2$.

</details>

---

Qu'est-ce qu'une **opération binaire** (ou loi de composition interne) ?

<details>
<summary>Réponse</summary>

Une **opération binaire** sur un ensemble non vide $X$ est une application $* : X \times X \to X$.

En d'autres termes, c'est une règle qui prend deux éléments de $X$ et les combine pour produire un troisième élément qui appartient **toujours** à $X$. Le fait que le résultat reste dans $X$ est la raison pour laquelle on l'appelle "interne".

**Exemples :**
- L'addition $(+)$ sur l'ensemble des entiers $\mathbb{Z}$ est une opération binaire car la somme de deux entiers est toujours un entier.
- La soustraction $(-)$ sur l'ensemble des entiers naturels $\mathbb{N}$ n'est **pas** une opération binaire car $3-5 = -2$, qui n'est pas dans $\mathbb{N}$.

</details>

---

Définissez les quatre propriétés principales d'une opération binaire $*$.

<details>
<summary>Réponse</summary>

Soit $*$ une opération binaire sur un ensemble $X$.
1.  **Associativité** : L'opération est associative si l'ordre des calculs ne compte pas pour trois éléments :
    Pour tous $x, y, z \in X$, $(x * y) * z = x * (y * z)$.

2.  **Commutativité** : L'opération est commutative si l'ordre des deux éléments ne compte pas :
    Pour tous $x, y \in X$, $x * y = y * x$.

3.  **Élément neutre** : Un élément $e \in X$ est un élément neutre si, combiné avec n'importe quel autre élément, il ne le change pas :
    Pour tout $x \in X$, $e * x = x * e = x$.

4.  **Élément inversible** : Si l'opération a un élément neutre $e$, un élément $x \in X$ est inversible s'il existe un élément $y \in X$ (son inverse) tel que :
    $x * y = y * x = e$.

</details>

---

Qu'est-ce qu'un **groupe** ?

<details>
<summary>Réponse</summary>

Un **groupe** est un couple $(G, *)$ où $G$ est un ensemble non vide et $*$ est une opération binaire sur $G$ qui vérifie trois axiomes :

1.  **Associativité** : Pour tous $a, b, c \in G$, on a $(a * b) * c = a * (b * c)$.
2.  **Élément neutre** : Il existe un élément $e \in G$ tel que pour tout $a \in G$, $a * e = e * a = a$.
3.  **Inverse** : Pour chaque $a \in G$, il existe un élément $a^{-1} \in G$ tel que $a * a^{-1} = a^{-1} * a = e$.

Un groupe est dit **abélien** (ou commutatif) si son opération est aussi commutative.

**Exemple :**
$(\mathbb{Z}, +)$ est un groupe abélien. L'addition est associative, $0$ est l'élément neutre, et l'inverse de $n$ est $-n$.

</details>

---

Pourquoi $(\mathbb{N}, +)$ n'est-il pas un groupe ?

<details>
<summary>Réponse</summary>

L'ensemble des entiers naturels $\mathbb{N} = \{0, 1, 2, ...\}$ muni de l'addition $(+)$ n'est pas un groupe car il manque la condition sur l'**inverse**.

- L'addition est bien associative.
- Il y a un élément neutre, $0$.
- **MAIS**, la plupart des éléments n'ont pas d'inverse dans $\mathbb{N}$. Par exemple, pour l'élément $3 \in \mathbb{N}$, il n'existe aucun élément $n \in \mathbb{N}$ tel que $3+n=0$. (L'inverse de 3 est -3, qui n'appartient pas à $\mathbb{N}$).

La structure $(\mathbb{N}, +)$ est un **monoïde**, pas un groupe.

</details>

---

Qu'est-ce qu'un **anneau** ?

<details>
<summary>Réponse</summary>

Un **anneau** est un triplet $(A, +, \times)$ où $A$ est un ensemble muni de deux opérations binaires (addition et multiplication) qui satisfont les axiomes suivants :

1.  $(A, +)$ est un **groupe abélien** (associativité, commutativité, neutre $0$, et inverses/opposés).
2.  $(A, \times)$ est un **monoïde** (la multiplication est associative et possède un élément neutre $1$).
3.  La multiplication est **distributive** par rapport à l'addition :
    - $a \times (b + c) = (a \times b) + (a \times c)$
    - $(b + c) \times a = (b \times a) + (c \times a)$

Si la multiplication est aussi commutative, l'anneau est dit **commutatif**.

**Exemple fondamental :** L'anneau des entiers relatifs $(\mathbb{Z}, +, \times)$.

</details>

---

Qu'est-ce qu'un **corps** ?

<details>
<summary>Réponse</summary>

Un **corps** est un anneau commutatif $(K, +, \times)$ dans lequel $0 \neq 1$ et où **tout élément non nul est inversible pour la multiplication**.

En résumé, un corps est une structure où l'on peut additionner, soustraire, multiplier et diviser (par tout élément non nul) en respectant les règles habituelles de l'algèbre.

Cela signifie que :
1. $(K, +)$ est un groupe abélien.
2. $(K \setminus \{0\}, \times)$ est un groupe abélien.
3. La multiplication est distributive sur l'addition.

**Exemples :** Les nombres rationnels $(\mathbb{Q}, +, \times)$, les nombres réels $(\mathbb{R}, +, \times)$ et les nombres complexes $(\mathbb{C}, +, \times)$.

</details>

---

Pourquoi l'anneau $(\mathbb{Z}, +, \times)$ n'est-il pas un corps ?

<details>
<summary>Réponse</summary>

L'anneau des entiers relatifs $(\mathbb{Z}, +, \times)$ n'est pas un corps car la condition d'inversibilité pour la multiplication n'est pas satisfaite pour tous les éléments non nuls.

Dans $\mathbb{Z}$, les seuls éléments qui ont un inverse pour la multiplication sont $1$ (son propre inverse) et $-1$ (son propre inverse).

Par exemple, l'élément $2 \in \mathbb{Z}$ n'a pas d'inverse multiplicatif dans $\mathbb{Z}$. Il n'existe pas d'entier $n$ tel que $2 \times n = 1$. (Son inverse est $1/2$, qui n'est pas un entier).

</details>

---

Qu'est-ce qu'une **relation d'équivalence** ?

<details>
<summary>Réponse</summary>

Une **relation d'équivalence** sur un ensemble $E$, notée $\sim$, est une relation binaire qui satisfait trois propriétés :

1.  **Réflexivité** : Tout élément est en relation avec lui-même.
    - Pour tout $x \in E$, $x \sim x$.
2.  **Symétrie** : Si $x$ est en relation avec $y$, alors $y$ est en relation avec $x$.
    - Pour tous $x, y \in E$, si $x \sim y$, alors $y \sim x$.
3.  **Transitivité** : Si $x$ est en relation avec $y$, et $y$ est en relation avec $z$, alors $x$ est en relation avec $z$.
    - Pour tous $x, y, z \in E$, si $x \sim y$ et $y \sim z$, alors $x \sim z$.

Une relation d'équivalence partitionne l'ensemble en sous-ensembles disjoints appelés **classes d'équivalence**.

</details>

---

Qu'est-ce qu'un **sous-groupe** ?

<details>
<summary>Réponse</summary>

Un **sous-groupe** d'un groupe $(G, *)$ est un sous-ensemble non vide $H$ de $G$ qui est lui-même un groupe pour la même opération $*$.

Pour vérifier que $H$ est un sous-groupe, on doit montrer :
1.  **Stabilité par l'opération** : Si $h_1, h_2 \in H$, alors $h_1 * h_2 \in H$.
2.  **Présence du neutre** : L'élément neutre $e$ de $G$ est dans $H$.
3.  **Stabilité par l'inverse** : Si $h \in H$, alors son inverse $h^{-1}$ est aussi dans $H$.

**Caractérisation compacte :**
$H$ est un sous-groupe de $G$ si et seulement si $H$ n'est pas vide et pour tous $x, y \in H$, on a $x * y^{-1} \in H$.

**Exemple :** L'ensemble des entiers pairs $(2\mathbb{Z}, +)$ est un sous-groupe de $(\mathbb{Z}, +)$.

</details>

---

Qu'est-ce qu'un **idéal** d'un anneau commutatif ?

<details>
<summary>Réponse</summary>

Soit $A$ un anneau commutatif. Un **idéal** de $A$ est un sous-ensemble $I \subset A$ qui vérifie deux conditions :
1.  $I$ est un **sous-groupe** du groupe additif $(A, +)$.
2.  $I$ possède une propriété d'**absorption** : pour tout élément $x \in I$ et tout élément $a \in A$, le produit $ax$ est encore dans $I$.
    $$ \forall x \in I, \forall a \in A \implies ax \in I $$

Cette propriété d'absorption est plus forte que la simple stabilité pour la multiplication. Elle garantit que l'idéal "absorbe" les produits par n'importe quel élément de l'anneau, pas seulement par ses propres éléments.

**Exemple :** L'ensemble $n\mathbb{Z}$ des multiples de $n$ est un idéal de l'anneau $\mathbb{Z}$.

</details>

---

Qu'est-ce qu'un **anneau quotient** ?

<details>
<summary>Réponse</summary>

Un **anneau quotient**, noté $A/I$, est un anneau construit à partir d'un anneau $A$ et d'un de ses idéaux $I$.

Il s'agit de l'ensemble des classes d'équivalence pour la relation $a \sim b \iff a-b \in I$. Les éléments de $A/I$ sont les ensembles de la forme $a+I = \{a+i \mid i \in I\}$.

Les opérations sur ces classes sont définies de manière naturelle :
- **Addition :** $(a+I) + (b+I) = (a+b) + I$
- **Multiplication :** $(a+I) \times (b+I) = (ab) + I$

L'anneau quotient "force" tous les éléments de l'idéal $I$ à devenir l'élément nul du nouvel anneau.

**Exemple :** L'anneau $\mathbb{Z}/n\mathbb{Z}$ est l'anneau quotient de $\mathbb{Z}$ par l'idéal $n\mathbb{Z}$.

</details>
