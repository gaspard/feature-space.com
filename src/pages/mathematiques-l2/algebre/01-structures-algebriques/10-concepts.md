---
title: Concepts
level: regular
course: Structures algébriques et algèbre bilinéaire
chapter: Structures algébriques
order: 10
layout: '../../../../layouts/Article.astro'
tags:
  [
    'algèbre',
    'structures algébriques',
    'groupes',
    'anneaux',
    'corps',
    'morphismes'
  ]
---

# Structures algébriques

---

## Concept 1: Application (ou Fonction)

### Prérequis

- Notions de base sur les ensembles : ensemble, élément, appartenance, produit cartésien ($X \times Y$).

### Définition

Soient $X$ et $Y$ deux ensembles. Une **application** $f$ de $X$ vers $Y$, notée $f: X \to Y$, est la donnée d'un sous-ensemble de $X \times Y$, appelé son **graphe** et noté $\Gamma_f$, qui vérifie la condition suivante :

Pour tout élément $x \in X$, il existe un **unique** élément $y \in Y$ tel que la paire $(x, y)$ appartienne au graphe $\Gamma_f$.

On note alors cet unique élément $y$ par $f(x)$. L'ensemble $X$ est appelé l'**ensemble de départ** (ou la source) et $Y$ est l'**ensemble d'arrivée** (ou le but).

En d'autres termes, une application associe à chaque élément de l'ensemble de départ un et un seul élément de l'ensemble d'arrivée.

### Explication Détaillée

La définition formelle utilisant le graphe est très rigoureuse. Intuitivement, on peut voir une application comme une "règle" ou un "procédé" qui transforme chaque élément de $X$ en un élément bien défini de $Y$. Les deux conditions clés sont :

1.  **Existence** : Chaque élément de l'ensemble de départ $X$ doit avoir une image dans $Y$. Il n'y a pas d'élément "oublié" dans $X$.
2.  **Unicité** : Chaque élément de $X$ ne peut avoir qu'une seule image dans $Y$. Un élément ne peut pas être envoyé simultanément sur deux éléments différents de $Y$.

Par exemple, si $X = \{1, 2, 3\}$ et $Y = \{A, B, C, D\}$, l'association $1 \mapsto A$, $2 \mapsto B$, $3 \mapsto B$ est une application. Chaque élément de $X$ a bien une et une seule image.

### Propriétés Clés

- **Application Identité** : Pour tout ensemble $X$, l'application identité $\text{id}_X : X \to X$ est définie par $\text{id}_X(x) = x$ pour tout $x \in X$.
- **Composition** : Si $f : X \to Y$ et $g : Y \to Z$ sont deux applications, leur composée $g \circ f : X \to Z$ est l'application définie par $(g \circ f)(x) = g(f(x))$.
- **Associativité de la composition** : Si $f : X \to Y$, $g : Y \to Z$ et $h : Z \to T$ sont des applications, alors $h \circ (g \circ f) = (h \circ g) \circ f$.
- **Élément neutre pour la composition** : Pour toute application $f : X \to Y$, on a $f \circ \text{id}_X = f$ et $\text{id}_Y \circ f = f$.

### Exemples

**Exemple 1 : Application polynomiale**

Soit l'application $f: \mathbb{R} \to \mathbb{R}$ définie par $f(x) = x^2 - 2x + 1$.
Pour chaque nombre réel $x$, il existe une unique valeur $x^2 - 2x + 1$, qui est aussi un nombre réel. Par exemple, $f(3) = 3^2 - 2(3) + 1 = 9 - 6 + 1 = 4$. Son graphe est l'ensemble des points $\{(x, (x-1)^2) \mid x \in \mathbb{R}\}$, qui est une parabole.

**Exemple 2 : Application sur des ensembles finis**

Soient $X = \{a, b, c\}$ et $Y = \{1, 2\}$. On définit une application $g: X \to Y$ par $g(a) = 1$, $g(b) = 2$, et $g(c) = 1$.
Ceci est bien une application car chaque élément de $X$ (a, b, c) a une image unique dans $Y$. Le graphe est $\Gamma_g = \{(a, 1), (b, 2), (c, 1)\}$.

**Exemple 3 : L'application d'inclusion**

Soit $Y$ un sous-ensemble de $X$ (par exemple, $Y = \mathbb{N}$ et $X = \mathbb{Z}$). L'application d'inclusion $i: Y \to X$ est définie par $i(y) = y$ pour tout $y \in Y$. C'est une application très simple qui "voit" les éléments de $Y$ comme des éléments de $X$.

### Contre-exemples

**Contre-exemple 1 : Unicité non respectée**

Considérons la relation de $X = \mathbb{R}$ vers $Y = \mathbb{R}$ définie par $x R y \iff x = y^2$. Le graphe serait $\{(y^2, y) \mid y \in \mathbb{R}\}$.
Pour $x = 4$, on a $4 = 2^2$ et $4 = (-2)^2$. Donc, les paires $(4, 2)$ et $(4, -2)$ sont dans la relation. L'élément $4 \in X$ a deux images ($2$ et $-2$), ce n'est donc pas une application.

**Contre-exemple 2 : Existence non respectée**

Considérons la "règle" $f: \mathbb{R} \to \mathbb{R}$ définie par $f(x) = 1/x$.
Cette règle ne définit pas une application de $\mathbb{R}$ vers $\mathbb{R}$ car l'élément $0 \in \mathbb{R}$ n'a pas d'image. Pour que ce soit une application, il faudrait changer l'ensemble de départ, par exemple $f: \mathbb{R}^* \to \mathbb{R}$.

### Concepts Connexes

- **Injectivité, Surjectivité, Bijectivité** : Des propriétés importantes que peuvent avoir les applications.
- **Morphismes** : Dans des contextes plus structurés (groupes, anneaux...), les applications qui préservent la structure sont appelées morphismes.

---

## Concept 2: Injectivité, Surjectivité, Bijectivité

### Prérequis

- [Application (ou Fonction)](#concept-1-application-ou-fonction)

### Définition

Soit $f : X \to Y$ une application entre deux ensembles.

1.  **Injective** : On dit que $f$ est injective si deux éléments distincts de l'ensemble de départ ont toujours des images distinctes. Formellement :
    Pour tous $x_1, x_2 \in X$, si $f(x_1) = f(x_2)$, alors $x_1 = x_2$.
    De manière équivalente, pour tout $y \in Y$, l'ensemble des antécédents de $y$, noté $f^{-1}(\{y\})$, contient au plus un élément.

2.  **Surjective** : On dit que $f$ est surjective si tout élément de l'ensemble d'arrivée est l'image d'au moins un élément de l'ensemble de départ. Formellement :
    Pour tout $y \in Y$, il existe au moins un $x \in X$ tel que $f(x) = y$.
    De manière équivalente, l'image de $f$, notée $f(X)$, est égale à l'ensemble d'arrivée $Y$.

3.  **Bijective** : On dit que $f$ est bijective si elle est à la fois injective et surjective. Formellement :
    Pour tout $y \in Y$, il existe un unique $x \in X$ tel que $f(x) = y$.

### Explication Détaillée

- **Injectivité** signifie qu'il n'y a pas de "collision" dans l'ensemble d'arrivée. Chaque élément de l'image $f(X)$ a un unique antécédent. Une application injective ne "perd" pas d'information en associant plusieurs entrées à une même sortie.
- **Surjectivité** signifie que tout l'ensemble d'arrivée est "atteint" par l'application. Il n'y a aucun élément dans $Y$ qui ne soit l'image de personne.
- **Bijectivité** établit une correspondance parfaite "un-à-un" entre les éléments de $X$ et de $Y$. Si $X$ et $Y$ sont finis, une application bijective ne peut exister que s'ils ont le même nombre d'éléments.

### Propriétés Clés

- Une application $f: X \to Y$ est **injective** si et seulement si elle admet un **inverse à gauche**, c'est-à-dire une application $p: Y \to X$ telle que $p \circ f = \text{id}_X$.
- Une application $f: X \to Y$ est **surjective** si et seulement si elle admet un **inverse à droite**, c'est-à-dire une application $s: Y \to X$ telle que $f \circ s = \text{id}_Y$.
- Une application $f: X \to Y$ est **bijective** si et seulement si elle admet un **inverse** (à la fois à gauche et à droite), c'est-à-dire une application $g: Y \to X$ telle que $f \circ g = \text{id}_Y$ et $g \circ f = \text{id}_X$. Cet inverse, noté $f^{-1}$, est unique.
- La composée de deux injections est une injection.
- La composée de deux surjections est une surjection.
- La composée de deux bijections est une bijection.

### Exemples

**Exemple 1 : $f(x) = 2x$ de $\mathbb{R}$ vers $\mathbb{R}$**

- **Injective ?** Oui. Si $f(x_1) = f(x_2)$, alors $2x_1 = 2x_2$, ce qui implique $x_1 = x_2$.
- **Surjective ?** Oui. Pour tout $y \in \mathbb{R}$, on peut trouver un $x$ tel que $f(x)=y$. Il suffit de choisir $x=y/2$, qui est bien un réel.
- **Conclusion** : $f$ est bijective.

**Exemple 2 : $g(x) = x^2$ de $\mathbb{R}$ vers $\mathbb{R}$**

- **Injective ?** Non. Par exemple, $g(2) = 4$ et $g(-2) = 4$, mais $2 \neq -2$.
- **Surjective ?** Non. Par exemple, $y = -1$ n'a aucun antécédent, car le carré d'un nombre réel est toujours positif ou nul.
- **Conclusion** : $g$ n'est ni injective, ni surjective.

**Exemple 3 : $h(x) = x^2$ de $\mathbb{R}_{\ge 0}$ vers $\mathbb{R}_{\ge 0}$**

- **Injective ?** Oui. Si $x_1, x_2 \ge 0$ et $h(x_1) = h(x_2)$, alors $x_1^2 = x_2^2$, ce qui implique $x_1 = x_2$ (car on exclut les négatifs).
- **Surjective ?** Oui. Pour tout $y \ge 0$, il existe $x = \sqrt{y}$ (qui est $\ge 0$) tel que $h(x) = (\sqrt{y})^2 = y$.
- **Conclusion** : En restreignant les ensembles de départ et d'arrivée, $h$ devient bijective.

### Contre-exemples

**Contre-exemple 1 : Application non surjective**

Soit $f: \mathbb{Z} \to \mathbb{Z}$ définie par $f(n) = 2n$.

- Elle est injective (démonstration similaire à l'Exemple 1).
- Elle n'est pas surjective. Par exemple, $y = 3$ est dans l'ensemble d'arrivée $\mathbb{Z}$, mais il n'existe aucun entier $n$ tel que $2n = 3$. L'image de $f$ est l'ensemble des entiers pairs, qui est un sous-ensemble strict de $\mathbb{Z}$.

**Contre-exemple 2 : Application non injective**

Soit $A = \{1, 2, 3\}$ et $B = \{a, b\}$. Soit $g: A \to B$ définie par $g(1)=a$, $g(2)=b$, $g(3)=a$.

- Elle n'est pas injective car $g(1) = g(3)$ mais $1 \neq 3$.
- Elle est surjective car $a$ (image de 1) et $b$ (image de 2) sont tous deux atteints.

### Concepts Connexes

- **Isomorphisme** : Une bijection entre deux ensembles munis de structures algébriques qui préserve ces structures.
- **Cardinalité** : Deux ensembles sont en bijection si et seulement s'ils ont le même nombre d'éléments (même cardinal).

---

## Concept 3: Loi de composition interne (ou Opération binaire)

### Prérequis

- [Application (ou Fonction)](#concept-1-application-ou-fonction)
- Ensemble, Produit cartésien

### Définition

Une **loi de composition interne** (ou **opération binaire**) sur un ensemble $X$ est une application $*: X \times X \to X$. Pour une paire d'éléments $(x, y) \in X \times X$, on note l'image de cette paire par $x * y$.

### Explication Détaillée

Une loi de composition interne est une manière de "combiner" deux éléments d'un même ensemble pour en obtenir un troisième, qui appartient **au même ensemble**. C'est le mot "interne" qui est crucial : le résultat de l'opération ne nous fait pas sortir de l'ensemble de départ.

Par exemple, l'addition sur les entiers naturels $\mathbb{N}$ est une loi de composition interne car si vous additionnez deux entiers naturels, le résultat est toujours un entier naturel. En revanche, la division n'est pas une loi de composition interne sur les entiers $\mathbb{Z}$, car $3 / 2$ n'est pas un entier.

### Propriétés Clés

Soit $*$ une loi de composition interne sur un ensemble $X$.

1.  **Associativité** : La loi $*$ est associative si, pour tous $x, y, z \in X$, on a $(x * y) * z = x * (y * z)$. L'ordre dans lequel on effectue les opérations n'a pas d'importance.
2.  **Commutativité** : La loi $*$ est commutative si, pour tous $x, y \in X$, on a $x * y = y * x$. L'ordre des opérandes n'a pas d'importance.
3.  **Élément neutre** : Un élément $e \in X$ est un élément neutre pour $*$ si, pour tout $x \in X$, on a $e * x = x * e = x$. S'il existe, l'élément neutre est unique.
4.  **Élément inversible (ou symétrique)** : Si $*$ possède un élément neutre $e$, un élément $x \in X$ est dit inversible s'il existe un élément $y \in X$ tel que $x * y = y * x = e$. Cet élément $y$ est appelé l'**inverse** de $x$. Si la loi est associative, l'inverse, s'il existe, est unique.
5.  **Distributivité** : Si deux lois $*$ et $+$ sont définies sur $X$, on dit que $*$ est distributive par rapport à $+$ si, pour tous $x, y, z \in X$, on a $x * (y + z) = (x * y) + (x * z)$ et $(y + z) * x = (y * x) + (z * x)$.

### Exemples

**Exemple 1 : L'addition sur les entiers relatifs $\mathbb{Z}$**

L'application $+: \mathbb{Z} \times \mathbb{Z} \to \mathbb{Z}$ définie par $(a, b) \mapsto a+b$ est une loi de composition interne.

- Elle est associative : $(a+b)+c = a+(b+c)$.
- Elle est commutative : $a+b=b+a$.
- Elle a un élément neutre : $0$, car $a+0 = 0+a = a$.
- Chaque élément $a$ a un inverse (appelé opposé) : $-a$, car $a + (-a) = 0$.

**Exemple 2 : La composition de fonctions sur un ensemble**

Soit $E$ un ensemble et $X = E^E$ l'ensemble de toutes les applications de $E$ dans $E$. La composition $\circ: X \times X \to X$ définie par $(f, g) \mapsto f \circ g$ est une loi de composition interne.

- Elle est associative : $h \circ (g \circ f) = (h \circ g) \circ f$.
- L'application identité $\text{id}_E$ est l'élément neutre : $f \circ \text{id}_E = \text{id}_E \circ f = f$.
- En général, elle n'est pas commutative.
- Seules les bijections sont inversibles.

**Exemple 3 : Le maximum sur les réels $\mathbb{R}$**

Soit la loi $\max: \mathbb{R} \times \mathbb{R} \to \mathbb{R}$ définie par $(a, b) \mapsto \max(a, b)$.

- C'est une loi de composition interne.
- Elle est associative : $\max(\max(a, b), c) = \max(a, \max(b, c))$.
- Elle est commutative : $\max(a, b) = \max(b, a)$.
- Elle n'a pas d'élément neutre. Si $e$ était un neutre, on devrait avoir $\max(e, x) = x$ pour tout $x$, ce qui obligerait $e \le x$ pour tout $x$. Un tel réel $e$ n'existe pas.

### Contre-exemples

**Contre-exemple 1 : La division sur les réels**

L'opération de division $\div$ n'est pas une loi de composition interne sur $\mathbb{R}$ car la division par $0$ n'est pas définie. Même sur $\mathbb{R}^* = \mathbb{R} \setminus \{0\}$, elle n'est ni associative $( (8 \div 4) \div 2 = 1$ mais $8 \div (4 \div 2) = 4)$, ni commutative ($2 \div 1 \neq 1 \div 2$).

**Contre-exemple 2 : Le produit scalaire**

Le produit scalaire dans $\mathbb{R}^3$, $\cdot: \mathbb{R}^3 \times \mathbb{R}^3 \to \mathbb{R}$, n'est pas une loi de composition interne car il prend deux vecteurs et renvoie un scalaire (un réel), pas un vecteur de $\mathbb{R}^3$.

### Concepts Connexes

Les lois de composition interne et leurs propriétés sont les briques de base pour définir les structures algébriques :

- **Monoïde** : Ensemble avec une loi associative et un élément neutre.
- **Groupe** : Monoïde où tout élément est inversible.
- **Anneau** et **Corps** : Ensembles avec deux lois de composition interne (addition et multiplication) liées par la distributivité.

---

## Concept 4: Monoïde

### Prérequis

- [Loi de composition interne (ou Opération binaire)](#concept-3-loi-de-composition-interne-ou-opération-binaire)

### Définition

Un **monoïde** est un triplet $(M, *, e)$ constitué d'un ensemble $M$, d'une loi de composition interne $*: M \times M \to M$ et d'un élément $e \in M$, qui satisfont les deux axiomes suivants :

1.  **Associativité** : Pour tous $x, y, z \in M$, on a $(x * y) * z = x * (y * z)$.
2.  **Élément neutre** : Pour tout $x \in M$, on a $e * x = x * e = x$.

Si de plus la loi $*$ est commutative, on dit que le monoïde est **commutatif** (ou abélien).

### Explication Détaillée

Un monoïde est l'une des structures algébriques les plus fondamentales. Il capture l'essence de nombreuses opérations mathématiques. L'associativité nous permet de ne pas nous soucier des parenthèses dans des calculs en chaîne (par exemple, $x*y*z$ a un sens non ambigu). L'élément neutre agit comme une "identité" pour l'opération, c'est-à-dire qu'il ne change pas les éléments qu'il compose.

C'est une structure plus "faible" qu'un groupe, car on n'exige pas que les éléments aient des inverses.

### Propriétés Clés

- L'élément neutre d'un monoïde est **unique**.
- Dans un monoïde $(M, *, e)$, l'ensemble des éléments inversibles, noté $M^\times$, forme un groupe pour la loi $*$. Cet ensemble contient toujours au moins l'élément neutre $e$, car $e$ est son propre inverse ($e*e=e$).

### Exemples

**Exemple 1 : Les entiers naturels pour l'addition**

Le triplet $(\mathbb{N}, +, 0)$ est un monoïde commutatif.

- L'addition est une loi de composition interne sur $\mathbb{N}$.
- L'addition est associative.
- $0$ est l'élément neutre.
  Ce n'est pas un groupe car, à l'exception de 0, aucun élément n'a d'inverse (d'opposé) dans $\mathbb{N}$. Par exemple, l'opposé de 3 est -3, qui n'est pas dans $\mathbb{N}$.

**Exemple 2 : Les applications d'un ensemble dans lui-même**

Soit $X$ un ensemble. L'ensemble $\text{End}_{\text{Ens}}(X)$ des applications de $X$ dans $X$, muni de la composition $\circ$ et de l'application identité $\text{id}_X$, forme un monoïde $(\text{End}_{\text{Ens}}(X), \circ, \text{id}_X)$.

- La composition est une loi interne.
- La composition est associative.
- $\text{id}_X$ est l'élément neutre.
  Si $X$ a plus d'un élément, ce monoïde n'est généralement pas commutatif.

**Exemple 3 : Les mots sur un alphabet**

Soit $A$ un alphabet (un ensemble fini de "lettres"), par exemple $A=\{a, b, c\}$. Un "mot" est une suite finie de lettres de $A$. L'ensemble de tous les mots, noté $M(A)$, muni de l'opération de **concaténation** (juxtaposition de mots) et du **mot vide** (noté $\epsilon$) comme élément neutre, forme un monoïde.

- La concaténation de "bon" et "jour" est "bonjour". C'est une loi interne.
- Elle est associative : (`ba` + `na`) + `ne` = `banane` = `ba` + (`na` + `ne`).
- Le mot vide $\epsilon$ est neutre : $\epsilon$ + `mot` = `mot` + $\epsilon$ = `mot`.
  Ce monoïde n'est pas commutatif : `ba` + `na` $\neq$ `na` + `ba`.

### Contre-exemples

**Contre-exemple 1 : Entiers naturels non nuls pour l'addition**

L'ensemble $\mathbb{N}^* = \{1, 2, 3, \dots\}$ avec l'addition $+$ n'est pas un monoïde. L'addition est bien interne et associative, mais il n'y a pas d'élément neutre (puisque $0 \notin \mathbb{N}^*$).

**Contre-exemple 2 : Entiers relatifs pour la soustraction**

L'ensemble $\mathbb{Z}$ avec l'opération de soustraction $-$ n'est pas un monoïde. Bien qu'il y ait un élément neutre à droite ($x - 0 = x$), ce n'est pas un neutre à gauche ($0 - x = -x \neq x$ si $x \neq 0$). De plus, la soustraction n'est pas associative.

### Concepts Connexes

- **Groupe** : Un monoïde où chaque élément est inversible. C'est une structure plus "riche".
- **Anneau** : Un anneau $(A, +, \times)$ contient deux structures : $(A,+)$ est un groupe abélien, et $(A, \times)$ est un monoïde.

---

## Concept 5: Groupe

### Prérequis

- [Monoïde](#concept-4-monoïde)

### Définition

Un **groupe** est un triplet $(G, *, e)$ qui est un **monoïde** et dans lequel tout élément est inversible. Explicitement, un groupe est un ensemble $G$ muni d'une loi de composition interne $*$ qui satisfait les trois axiomes suivants :

1.  **Associativité** : Pour tous $x, y, z \in G$, on a $(x * y) * z = x * (y * z)$.
2.  **Élément neutre** : Il existe un élément $e \in G$ tel que pour tout $x \in G$, on a $e * x = x * e = x$.
3.  **Inverse** : Pour tout $x \in G$, il existe un élément $x^{-1} \in G$ (appelé l'inverse de $x$) tel que $x * x^{-1} = x^{-1} * x = e$.

Si de plus la loi $*$ est commutative ($x * y = y * x$), le groupe est dit **abélien** (ou commutatif).

### Explication Détaillée

La structure de groupe est l'une des plus importantes en algèbre abstraite. Elle modélise la notion de symétrie. L'axiome clé qui distingue un groupe d'un monoïde est l'existence d'un inverse pour chaque élément. Cela signifie que toute "action" (représentée par un élément du groupe) peut être "annulée" ou "défaite" par son inverse.

Par exemple, dans $(\mathbb{Z}, +)$, l'action "ajouter 5" peut être annulée par "ajouter -5". Dans le groupe des rotations d'un carré, une rotation de 90° dans le sens horaire peut être annulée par une rotation de 270° dans le sens horaire (ou 90° dans le sens anti-horaire).

### Propriétés Clés

- L'élément neutre $e$ est **unique**.
- Pour chaque élément $x \in G$, son inverse $x^{-1}$ est **unique**.
- Pour tous $x, y \in G$, on a $(x * y)^{-1} = y^{-1} * x^{-1}$ (attention à l'inversion de l'ordre !).
- Pour tout $x \in G$, on a $(x^{-1})^{-1} = x$.
- **Règles de simplification** : Si $a*x = a*y$ ou $x*a = y*a$, alors $x = y$.

### Exemples

**Exemple 1 : Les entiers relatifs pour l'addition**

Le couple $(\mathbb{Z}, +)$ est un groupe abélien.

- L'addition est associative et commutative.
- L'élément neutre est $0$.
- L'inverse de tout entier $n$ est son opposé $-n$.

**Exemple 2 : Les nombres réels non nuls pour la multiplication**

Le couple $(\mathbb{R}^*, \times)$ est un groupe abélien. $\mathbb{R}^* = \mathbb{R} \setminus \{0\}$.

- La multiplication est associative et commutative.
- L'élément neutre est $1$.
- L'inverse de tout réel non nul $x$ est $1/x$.

**Exemple 3 : Le groupe symétrique $S_n$**

Soit $X = \{1, 2, \dots, n\}$. L'ensemble des bijections de $X$ dans lui-même, noté $S_n$, muni de la composition de fonctions $\circ$, est un groupe.

- La composition est associative.
- L'élément neutre est l'application identité.
- Chaque bijection a une bijection inverse.
  Pour $n \ge 3$, ce groupe n'est **pas** abélien. Par exemple dans $S_3$, si $\sigma$ est la permutation qui échange 1 et 2, et $\tau$ celle qui échange 2 et 3, alors $\sigma \circ \tau$ envoie 1 en 2, 2 en 3, 3 en 1, tandis que $\tau \circ \sigma$ envoie 1 en 3, 2 en 1, 3 en 2. Les deux résultats sont différents.

### Contre-exemples

**Contre-exemple 1 : Les entiers pour la multiplication**

$(\mathbb{Z}, \times)$ n'est pas un groupe. C'est un monoïde (avec $1$ comme neutre), mais la plupart des éléments n'ont pas d'inverse _dans $\mathbb{Z}$_. Par exemple, l'inverse de $2$ est $1/2$, qui n'est pas un entier. Les seuls éléments inversibles sont $1$ et $-1$.

**Contre-exemple 2 : Les matrices carrées pour la multiplication**

L'ensemble des matrices carrées $n \times n$ à coefficients réels, $M_n(\mathbb{R})$, avec la multiplication matricielle, n'est pas un groupe. C'est un monoïde (avec la matrice identité comme neutre), mais les matrices qui n'ont pas un déterminant non nul ne sont pas inversibles. L'ensemble des matrices _inversibles_ $\text{GL}_n(\mathbb{R})$ forme, lui, un groupe.

### Concepts Connexes

- **Sous-groupe** : Un sous-ensemble d'un groupe qui est lui-même un groupe.
- **Groupe quotient** : Une construction qui permet de créer un nouveau groupe à partir d'un groupe et d'un de ses sous-groupes (normaux).
- **Morphismes de groupes** : Applications entre groupes qui préservent la structure de groupe.
- **Anneau** et **Corps** : Structures qui contiennent un groupe additif.

---

... CONTINUATION in next message. I'll continue from concept 6.
I'll split the concepts to manage token limits. I'll provide the rest in a separate message, without the frontmatter. I will continue right after this message.## Concept 6: Anneau

### Prérequis

- [Groupe](#concept-5-groupe) (en particulier, groupe abélien)
- [Monoïde](#concept-4-monoïde)
- Propriété de distributivité

### Définition

Un **anneau** est un quintuplet $(A, +, \times, 0, 1)$ constitué d'un ensemble $A$, de deux lois de composition internes $+$ (addition) et $\times$ (multiplication), et de deux éléments distincts $0$ et $1$ de $A$, qui satisfont les axiomes suivants :

1.  $(A, +, 0)$ est un **groupe abélien**.
    - $+$ est associative et commutative.
    - $0$ est l'élément neutre pour $+$.
    - Chaque élément $a \in A$ a un opposé $-a \in A$.
2.  $(A, \times, 1)$ est un **monoïde**.
    - $\times$ est associative.
    - $1$ est l'élément neutre pour $\times$.
3.  La multiplication est **distributive** par rapport à l'addition.
    - Pour tous $a, b, c \in A$, $a \times (b + c) = (a \times b) + (a \times c)$.
    - Pour tous $a, b, c \in A$, $(b + c) \times a = (b \times a) + (c \times a)$.

Si de plus la multiplication $\times$ est commutative, l'anneau est dit **commutatif**.

Un anneau est dit **intègre** s'il est commutatif, non nul ($1 \neq 0$), et ne possède pas de "diviseurs de zéro", c'est-à-dire :
Pour tous $a, b \in A$, si $a \times b = 0$, alors $a=0$ ou $b=0$.

### Explication Détaillée

Un anneau est une structure algébrique qui généralise les propriétés arithmétiques des entiers. Il possède deux opérations, une "addition" et une "multiplication", qui interagissent de la manière attendue grâce à la distributivité. La structure additive est très forte (un groupe abélien, permettant soustractions et nullité), tandis que la structure multiplicative est plus faible (un simple monoïde, ne garantissant pas l'existence d'inverses multiplicatifs pour tous les éléments).

La notion d'anneau intègre est importante car elle interdit des situations "étranges" comme le produit de deux nombres non nuls qui donne zéro. Les anneaux intègres se comportent davantage comme les entiers.

### Propriétés Clés

- Dans tout anneau $A$, pour tout $a \in A$, on a $a \times 0 = 0 \times a = 0$.
- Pour tous $a, b \in A$, on a $(-a) \times b = a \times (-b) = -(a \times b)$.
- Pour tous $a, b \in A$, on a $(-a) \times (-b) = a \times b$.
- L'ensemble des éléments inversibles pour la multiplication, noté $A^\times$, forme un groupe appelé le **groupe des unités** de l'anneau.

### Exemples

**Exemple 1 : L'anneau des entiers relatifs $(\mathbb{Z}, +, \times)$**

- $(\mathbb{Z}, +)$ est un groupe abélien.
- $(\mathbb{Z}, \times)$ est un monoïde commutatif (l'élément neutre est 1).
- La multiplication est distributive sur l'addition.
  C'est un anneau commutatif et intègre. Son groupe d'unités est $\mathbb{Z}^\times = \{1, -1\}$.

**Exemple 2 : L'anneau des matrices carrées $(M_n(\mathbb{R}), +, \times)$**

- $(M_n(\mathbb{R}), +)$ est un groupe abélien (addition matricielle).
- $(M_n(\mathbb{R}), \times)$ est un monoïde (multiplication matricielle, avec la matrice identité $\text{Id}$ comme neutre).
- La multiplication matricielle est distributive sur l'addition.
  Pour $n > 1$, cet anneau n'est **pas commutatif** et **n'est pas intègre**. Par exemple, $\begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix} \times \begin{pmatrix} 0 & 0 \\ 0 & 1 \end{pmatrix} = \begin{pmatrix} 0 & 0 \\ 0 & 0 \end{pmatrix}$.

**Exemple 3 : L'anneau $\mathbb{Z}/6\mathbb{Z}$**

C'est l'ensemble des classes d'équivalence modulo 6, $\{\bar{0}, \bar{1}, \bar{2}, \bar{3}, \bar{4}, \bar{5}\}$.

- C'est un anneau commutatif.
- Il n'est pas intègre. Par exemple, $\bar{2} \times \bar{3} = \bar{6} = \bar{0}$, alors que $\bar{2} \neq \bar{0}$ et $\bar{3} \neq \bar{0}$.

### Contre-exemples

**Contre-exemple 1 : Les entiers naturels $(\mathbb{N}, +, \times)$**

Cet ensemble n'est pas un anneau car $(\mathbb{N}, +)$ n'est pas un groupe. Il manque les opposés (les entiers négatifs).

**Contre-exemple 2 : L'ensemble des vecteurs de $\mathbb{R}^3$**

Si l'on munit $\mathbb{R}^3$ de l'addition vectorielle et du produit vectoriel ($\times$), ce n'est pas un anneau. Bien que $(\mathbb{R}^3, +)$ soit un groupe abélien, le produit vectoriel n'est pas associatif.

### Concepts Connexes

- **Corps** : Un anneau commutatif où tout élément non nul est inversible pour la multiplication.
- **Idéal** : Un sous-ensemble spécial d'un anneau qui permet de construire des anneaux quotients.
- **Morphismes d'anneaux** : Applications entre anneaux qui préservent les deux opérations et les éléments neutres.

---

## Concept 7: Corps

### Prérequis

- [Anneau](#concept-6-anneau)

### Définition

Un **corps** est un anneau commutatif $(K, +, \times, 0, 1)$ dans lequel $1 \neq 0$ et tout élément non nul est inversible pour la multiplication.

Autrement dit, un corps est un anneau commutatif $(K, +, \times)$ tel que $(K \setminus \{0\}, \times)$ est un groupe abélien.

### Explication Détaillée

Un corps est la structure algébrique qui se rapproche le plus des nombres que nous utilisons couramment (rationnels, réels, complexes). Dans un corps, on peut faire les quatre opérations arithmétiques de base : addition, soustraction, multiplication et division (sauf par zéro).

La condition $1 \neq 0$ est là pour exclure l'anneau trivial $\{0\}$, où $0$ est à la fois l'élément neutre additif et multiplicatif, ce qui rendrait la notion de "tout élément non nul" vide de sens.

Tout corps est nécessairement un anneau intègre. En effet, si $a \times b = 0$ avec $a \neq 0$, alors on peut multiplier par $a^{-1}$ (qui existe car $a \neq 0$) : $a^{-1} \times (a \times b) = a^{-1} \times 0 \Rightarrow (a^{-1} \times a) \times b = 0 \Rightarrow 1 \times b = 0 \Rightarrow b = 0$. Donc, il n'y a pas de diviseur de zéro.

### Propriétés Clés

- Un corps est un anneau commutatif intègre.
- La structure $(K, +, 0)$ est un groupe abélien.
- La structure $(K \setminus \{0\}, \times, 1)$ est un groupe abélien.
- La seule existence d'inverses pour les éléments non nuls force la commutativité de la multiplication pour les corps finis (théorème de Wedderburn). Dans ce cours, les corps sont commutatifs par définition.

### Exemples

**Exemple 1 : Le corps des nombres rationnels $(\mathbb{Q}, +, \times)$**

C'est un anneau commutatif. Tout nombre rationnel non nul $p/q$ (avec $p, q \in \mathbb{Z}^*$) a pour inverse $q/p$, qui est aussi un nombre rationnel.

**Exemple 2 : Le corps des nombres réels $(\mathbb{R}, +, \times)$**

C'est un anneau commutatif. Tout nombre réel non nul $x$ a pour inverse $1/x$, qui est aussi un nombre réel.

**Exemple 3 : Le corps des nombres complexes $(\mathbb{C}, +, \times)$**

C'est un anneau commutatif. Tout nombre complexe non nul $z = a+ib$ a pour inverse $z^{-1} = \frac{\bar{z}}{|z|^2} = \frac{a-ib}{a^2+b^2}$, qui est aussi un nombre complexe.

**Exemple 4 : Le corps fini $\mathbb{Z}/p\mathbb{Z}$ (où $p$ est un nombre premier)**

L'anneau $\mathbb{Z}/p\mathbb{Z}$ est un corps si et seulement si $p$ est un nombre premier. Par exemple, dans $\mathbb{Z}/5\mathbb{Z}$, les inverses sont : $\bar{1}^{-1}=\bar{1}$, $\bar{2}^{-1}=\bar{3}$ (car $\bar{2}\times\bar{3}=\bar{6}=\bar{1}$), $\bar{4}^{-1}=\bar{4}$ (car $\bar{4}\times\bar{4}=\bar{16}=\bar{1}$).

### Contre-exemples

**Contre-exemple 1 : L'anneau des entiers $\mathbb{Z}$**

$\mathbb{Z}$ est un anneau commutatif intègre, mais ce n'est pas un corps. Seuls $1$ et $-1$ ont un inverse multiplicatif dans $\mathbb{Z}$. Par exemple, $2$ n'a pas d'inverse.

**Contre-exemple 2 : L'anneau $\mathbb{Z}/6\mathbb{Z}$**

Ce n'est pas un corps car ce n'est même pas un anneau intègre. Les éléments $\bar{2}$, $\bar{3}$, $\bar{4}$ n'ont pas d'inverse multiplicatif. Par exemple, il n'existe pas de $\bar{x}$ tel que $\bar{2} \times \bar{x} = \bar{1}$.

### Concepts Connexes

- **Espace vectoriel** : Un espace vectoriel est défini sur un corps (le corps des scalaires).
- **Morphismes de corps** : Applications entre corps qui préservent la structure. Un morphisme de corps est toujours injectif.

---

## Concept 8: Morphismes de Structures Algébriques

### Prérequis

- Les structures concernées : [Monoïde](#concept-4-monoïde), [Groupe](#concept-5-groupe), [Anneau](#concept-6-anneau), [Corps](#concept-7-corps).
- [Application (ou Fonction)](#concept-1-application-ou-fonction)

### Définition

Un **morphisme** est une application entre deux ensembles munis de la même structure algébrique, qui "préserve" ou "respecte" cette structure.

1.  **Morphisme de monoïdes** : Soient $(M, *_M, e_M)$ et $(N, *_N, e_N)$ deux monoïdes. Une application $f: M \to N$ est un morphisme de monoïdes si :

    - $f(m_1 *_M m_2) = f(m_1) *_N f(m_2)$ pour tous $m_1, m_2 \in M$.
    - $f(e_M) = e_N$.

2.  **Morphisme de groupes** : Soient $(G, *_G, e_G)$ et $(H, *_H, e_H)$ deux groupes. Une application $f: G \to H$ est un morphisme de groupes si elle préserve l'opération :

    - $f(g_1 *_G g_2) = f(g_1) *_H f(g_2)$ pour tous $g_1, g_2 \in G$.
      (La préservation du neutre et des inverses en découle automatiquement pour les groupes).

3.  **Morphisme d'anneaux** : Soient $(A, +_A, \times_A, 0_A, 1_A)$ et $(B, +_B, \times_B, 0_B, 1_B)$ deux anneaux. Une application $f: A \to B$ est un morphisme d'anneaux si elle est à la fois un morphisme pour la structure additive et multiplicative :
    - $f(a_1 +_A a_2) = f(a_1) +_B f(a_2)$ pour tous $a_1, a_2 \in A$.
    - $f(a_1 \times_A a_2) = f(a_1) \times_B f(a_2)$ pour tous $a_1, a_2 \in A$.
    - $f(1_A) = 1_B$.
      (La préservation de $0_A$ découle de la première condition, car c'est un morphisme de groupes additifs).

Un morphisme bijectif est un **isomorphisme**. Deux structures sont dites isomorphes s'il existe un isomorphisme entre elles (elles sont alors "identiques" du point de vue de la structure). Un morphisme d'une structure dans elle-même est un **endomorphisme**.

### Propriétés Clés

- La composée de deux morphismes est un morphisme.
- Si $f: G \to H$ est un morphisme de groupes :
  - $f(e_G) = e_H$.
  - $f(g^{-1}) = (f(g))^{-1}$ pour tout $g \in G$.
- Le **noyau** d'un morphisme de groupes $f: G \to H$, défini par $\text{Ker}(f) = \{g \in G \mid f(g) = e_H\}$, est un sous-groupe de $G$.
- L'**image** d'un morphisme $f: G \to H$, définie par $\text{Im}(f) = \{f(g) \mid g \in G\}$, est un sous-groupe de $H$.
- Un morphisme de groupes $f$ est injectif si et seulement si son noyau est trivial ($\text{Ker}(f) = \{e_G\}$).
- Le noyau d'un morphisme d'anneaux $f: A \to B$ est un idéal de $A$.

### Exemples

**Exemple 1 : Le déterminant (morphisme de groupes)**

L'application déterminant $\det: (\text{GL}_n(\mathbb{R}), \times) \to (\mathbb{R}^*, \times)$ est un morphisme de groupes. $\text{GL}_n(\mathbb{R})$ est le groupe des matrices $n \times n$ inversibles.

- On a $\det(A \times B) = \det(A) \times \det(B)$, ce qui est la propriété fondamentale du déterminant.
- $\det(\text{Id}_n) = 1$, ce qui montre que le neutre est envoyé sur le neutre.

**Exemple 2 : L'exponentielle (morphisme de groupes)**

L'application $\exp: (\mathbb{R}, +) \to (\mathbb{R}^*_+, \times)$ est un isomorphisme de groupes.

- $\exp(x+y) = e^{x+y} = e^x e^y = \exp(x) \times \exp(y)$.
- Elle est bijective (son inverse est $\ln$).

**Exemple 3 : Projection modulo n (morphisme d'anneaux)**

L'application $f: \mathbb{Z} \to \mathbb{Z}/n\mathbb{Z}$ qui envoie un entier $k$ sur sa classe $\bar{k}$ est un morphisme d'anneaux surjectif.

- $f(k+l) = \overline{k+l} = \bar{k}+\bar{l} = f(k)+f(l)$.
- $f(k \times l) = \overline{k \times l} = \bar{k} \times \bar{l} = f(k) \times f(l)$.
- $f(1) = \bar{1}$.
  Le noyau de ce morphisme est l'idéal $n\mathbb{Z}$.

### Contre-exemples

**Contre-exemple 1 : Une application qui ne préserve pas l'opération**

Soit $f: (\mathbb{Z}, +) \to (\mathbb{Z}, +)$ définie par $f(x) = x+1$. Ce n'est pas un morphisme de groupes.
$f(x+y) = (x+y)+1$.
$f(x)+f(y) = (x+1) + (y+1) = x+y+2$.
Ces deux résultats ne sont pas égaux. De plus, $f(0) = 1 \neq 0$.

**Contre-exemple 2 : Une application qui ne préserve pas le neutre multiplicatif**

Soit $f: \mathbb{Z} \to M_2(\mathbb{Z})$ l'application qui envoie tout entier $k$ sur la matrice nulle. C'est un morphisme de groupes additifs, mais pas un morphisme d'anneaux car $f(1) = \begin{pmatrix} 0 & 0 \\ 0 & 0 \end{pmatrix}$, qui n'est pas la matrice identité $\begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}$, l'élément neutre multiplicatif de $M_2(\mathbb{Z})$.

### Concepts Connexes

- **Noyau et Image** : Outils fondamentaux pour étudier les morphismes.
- **Théorèmes d'isomorphisme** : Relient les quotients, les noyaux et les images des morphismes.

```markdown
---
title: Concepts
level: regular
course: Structures algébriques et algèbre bilinéaire
chapter: Structures algébriques
order: 20
layout: '../../../../layouts/Article.astro'
tags:
  [
    'mathématiques',
    'algèbre',
    'structures algébriques',
    'groupes',
    'anneaux',
    'corps'
  ]
---

# Structures algébriques (Niveau Régulier)

---

## Concept 9: Principe de Récurrence

### Prérequis

- Notion d'ensemble, en particulier l'ensemble des entiers naturels $\mathbb{N}$.
- Concept d'application (fonction).
- Notion de propriété (ou prédicat) sur un ensemble.

### Définition

Le principe de récurrence est un axiome fondamental qui caractérise l'ensemble des entiers naturels $\mathbb{N}$. Il permet de démontrer qu'une propriété est vraie pour tous les entiers à partir d'un certain rang. Il existe sous deux formes principales :

1.  **Principe de récurrence simple** (Proposition 1.8.2) : Soit $P$ une propriété définie sur les entiers naturels (ce qui est équivalent à se donner une partie $P \subset \mathbb{N}$).
    **Hypothèses :**

    - (Initialisation) La propriété est vraie pour l'entier initial, souvent $0$. Autrement dit, $0 \in P$.
    - (Hérédité) Pour tout entier naturel $n$, si la propriété est vraie pour $n$, alors elle est aussi vraie pour son successeur $n+1$. Autrement dit, $\forall n \in \mathbb{N}, [n \in P \Rightarrow (n+1) \in P]$.
      **Conclusion :**
      Alors, la propriété $P$ est vraie pour tous les entiers naturels. Autrement dit, $P = \mathbb{N}$.

2.  **Principe de récurrence forte** (Proposition 1.8.3) : Soit $P$ une propriété définie sur les entiers naturels.
    **Hypothèses :**
    - (Initialisation) La propriété est vraie pour l'entier initial $0$. Autrement dit, $0 \in P$.
    - (Hérédité forte) Pour tout entier naturel $n$, si la propriété est vraie pour _tous_ les entiers de $0$ à $n$, alors elle est aussi vraie pour $n+1$. Autrement dit, $\forall n \in \mathbb{N}, [(\forall k \in \{0, \dots, n\}, k \in P) \Rightarrow (n+1) \in P]$.
      **Conclusion :**
      Alors, la propriété $P$ est vraie pour tous les entiers naturels. Autrement dit, $P = \mathbb{N}$.

### Explications Détaillées

Le principe de récurrence peut être visualisé avec l'analogie d'une file infinie de dominos. Pour être sûr que tous les dominos tombent :

1.  **Initialisation :** Il faut pousser le premier domino ($P(0)$ est vraie).
2.  **Hérédité :** Il faut s'assurer que chaque domino est suffisamment proche du suivant pour que, s'il tombe, il fasse tomber le suivant (si $P(n)$ est vraie, alors $P(n+1)$ est vraie).

Si ces deux conditions sont remplies, alors toute la file de dominos tombera.

La **récurrence forte** est similaire, mais l'hypothèse d'hérédité est plus puissante. Pour faire tomber le domino $n+1$, on ne suppose pas seulement que le domino $n$ est tombé, mais que _tous_ les dominos précédents (de $0$ à $n$) sont tombés. Bien que cela semble plus fort, les deux principes sont en fait équivalents. On utilise la récurrence forte lorsque la preuve pour $n+1$ ne dépend pas seulement du cas $n$, mais potentiellement de cas antérieurs.

On peut également commencer la récurrence à partir d'un entier $n_0$ quelconque. Dans ce cas, la conclusion est que la propriété est vraie pour tous les entiers $n \ge n_0$.

### Propriétés Clés

- Le principe de récurrence est l'une des propriétés fondamentales de $\mathbb{N}$ (Axiomes de Peano).
- Il est l'outil principal pour prouver des propriétés universelles sur les entiers.
- Les récurrences simple et forte sont équivalentes.

### Exemples

**Exemple 1 : Somme des premiers entiers (Récurrence simple)**

Démontrons que pour tout $n \in \mathbb{N}^*$, $\sum_{k=1}^n k = \frac{n(n+1)}{2}$.
Soit $P(n)$ la propriété : "$\sum_{k=1}^n k = \frac{n(n+1)}{2}$".

- **Initialisation (pour $n=1$) :** $\sum_{k=1}^1 k = 1$. Et $\frac{1(1+1)}{2} = \frac{2}{2} = 1$. Donc $P(1)$ est vraie.
- **Hérédité :** Supposons que $P(n)$ est vraie pour un certain $n \ge 1$ (hypothèse de récurrence). Montrons que $P(n+1)$ est vraie.
  On veut montrer que $\sum_{k=1}^{n+1} k = \frac{(n+1)(n+2)}{2}$.
  $$ \sum*{k=1}^{n+1} k = \left(\sum*{k=1}^n k\right) + (n+1) $$
    Par hypothèse de récurrence, on remplace la somme :
    $$ = \frac{n(n+1)}{2} + (n+1) = (n+1) \left(\frac{n}{2} + 1\right) = (n+1) \left(\frac{n+2}{2}\right) = \frac{(n+1)(n+2)}{2} $$
    Donc $P(n+1)$ est vraie.
- **Conclusion :** Par le principe de récurrence, la propriété est vraie pour tout $n \in \mathbb{N}^*$.

**Exemple 2 : Théorème fondamental de l'arithmétique (Récurrence forte)**

Montrons que tout entier $n \ge 2$ est un produit de nombres premiers.
Soit $P(n)$ la propriété : "$n$ est un produit de nombres premiers".

- **Initialisation (pour $n=2$) :** $2$ est un nombre premier, donc il est un produit d'un seul nombre premier. $P(2)$ est vraie.
- **Hérédité :** Soit $n \ge 2$. Supposons que $P(k)$ est vraie pour tous les entiers $k$ tels que $2 \le k \le n$. Montrons $P(n+1)$.
  - Si $n+1$ est premier, alors $P(n+1)$ est vraie.
  - Si $n+1$ est composé, alors il existe deux entiers $a, b$ tels que $n+1 = ab$ avec $2 \le a \le n$ et $2 \le b \le n$.
    Par hypothèse de récurrence forte, $a$ et $b$ sont des produits de nombres premiers.
    Donc $n+1 = ab$ est aussi un produit de nombres premiers.
    Dans les deux cas, $P(n+1)$ est vraie.
- **Conclusion :** Par le principe de récurrence forte, tout entier $n \ge 2$ est un produit de nombres premiers.

**Exemple 3 : Inégalité de Bernoulli**

Pour tout réel $x \ge -1$ et tout entier $n \ge 0$, on a $(1+x)^n \ge 1+nx$.
Soit $P(n)$ la propriété.

- **Initialisation (pour $n=0$) :** $(1+x)^0 = 1$ et $1+0x = 1$. Donc $1 \ge 1$, $P(0)$ est vraie.
- **Hérédité :** Supposons $P(n)$ vraie pour un $n \ge 0$. Montrons $P(n+1)$.
  $$ (1+x)^{n+1} = (1+x)^n (1+x) $$
    Par hypothèse de récurrence, $(1+x)^n \ge 1+nx$. Comme $1+x \ge 0$, on peut multiplier l'inégalité :
  $$ (1+x)^n (1+x) \ge (1+nx)(1+x) = 1+x+nx+nx^2 = 1+(n+1)x + nx^2 $$
    Comme $nx^2 \ge 0$, on a $1+(n+1)x + nx^2 \ge 1+(n+1)x$.
  Donc $(1+x)^{n+1} \ge 1+(n+1)x$. $P(n+1)$ est vraie.
- **Conclusion :** Par récurrence, l'inégalité est vraie pour tout $n \ge 0$.

### Contre-exemples

1.  **Hérédité sans initialisation :** Soit $P(n)$ la propriété "$n = n+1$".
    _Hérédité :_ Supposons que $n = n+1$. En ajoutant 1 des deux côtés, on obtient $n+1 = n+2$. Donc $P(n+1)$ est vraie. L'hérédité est prouvée.
    _Initialisation :_ Pour $n=0$, on a $0=1$, ce qui est faux. La propriété n'est jamais vraie.
2.  **Initialisation sans hérédité :** Soit $P(n)$ la propriété "$n^2 - 3n + 2 = 0$".
    _Initialisation :_ Pour $n=1$, $1^2 - 3(1) + 2 = 0$. $P(1)$ est vraie.
    _Hérédité :_ Supposons $P(n)$ vraie. $P(n+1)$ affirme que $(n+1)^2 - 3(n+1) + 2 = 0$. Or, $(n+1)^2-3(n+1)+2 = n^2+2n+1-3n-3+2 = (n^2-3n+2) + 2n-2 = 0+2n-2 = 2n-2$. Ce n'est pas nul en général (sauf si $n=1$). L'hérédité est fausse. La propriété n'est vraie que pour $n=1$ et $n=2$.

### Concepts Connexes

- **Axiomes de Peano :** Le principe de récurrence est l'un des axiomes de Peano qui définissent $\mathbb{N}$.
- **Définitions par récurrence :** Des suites ou des fonctions (comme la factorielle) sont souvent définies en utilisant une structure récursive similaire.

---

## Concept 10: Relation Binaire

### Prérequis

- Notion d'ensemble.
- Produit cartésien de deux ensembles ($X \times Y$).

### Définition

Soit $X$ un ensemble.

1.  Une **relation binaire** sur $X$ est la donnée d'un sous-ensemble $R \subset X \times X$.
2.  Si $(x, y) \in R$, on dit que $x$ est en relation avec $y$, et on note souvent $xRy$.

Une relation $R$ sur $X$ peut posséder plusieurs propriétés. Les plus importantes sont :

- **Réflexive** : si pour tout $x \in X$, on a $xRx$. (Tout élément est en relation avec lui-même).
- **Symétrique** : si pour tous $x, y \in X$, l'implication $xRy \Rightarrow yRx$ est vraie. (Si $x$ est en relation avec $y$, alors $y$ l'est avec $x$).
- **Antisymétrique** : si pour tous $x, y \in X$, l'implication $[xRy \text{ et } yRx] \Rightarrow x = y$ est vraie. (Si la relation est réciproque, alors les éléments sont identiques).
- **Transitive** : si pour tous $x, y, z \in X$, l'implication $[xRy \text{ et } yRz] \Rightarrow xRz$ est vraie. (La relation peut être "enchaînée").
- **Totale** : si pour tous $x, y \in X$, on a $xRy$ ou $yRx$. (On peut toujours comparer deux éléments quelconques).

La combinaison de ces propriétés définit des types de relations fondamentales comme les relations d'ordre et les relations d'équivalence.

### Explications Détaillées

Une relation binaire est une manière très générale de formaliser une connexion ou une comparaison entre les paires d'éléments d'un ensemble. Pensez à des phrases comme "$x$ est plus petit que $y$", "$x$ est l'ami de $y$", "$x$ a la même couleur que $y$". Chacune de ces phrases définit une relation.

Les propriétés décrivent la nature de ces liens :

- La **réflexivité** est une sorte de "propriété d'identité". L'égalité `=` est réflexive, mais l'inégalité stricte `<` ne l'est pas.
- La **symétrie** indique que la relation n'a pas de direction privilégiée. "Être marié à" est symétrique, mais "être le parent de" ne l'est pas.
- L'**antisymétrie** est presque le contraire de la symétrie. Elle est typique des relations de comparaison. Si $x \le y$ et $y \le x$, alors forcément $x=y$.
- La **transitivité** permet de déduire des relations. Si $A$ est un ancêtre de $B$, et $B$ un ancêtre de $C$, alors $A$ est un ancêtre de $C$.

### Propriétés Clés

- Une application $f: X \to X$ peut être vue comme une relation binaire via son graphe $\Gamma_f = \{(x, f(x)) \mid x \in X\}$, mais une relation n'est pas toujours une application.
- La seule relation qui est à la fois symétrique et antisymétrique est un sous-ensemble de la relation d'égalité.
- Si une relation est réflexive, symétrique et transitive, c'est une relation d'équivalence.
- Si une relation est réflexive, antisymétrique et transitive, c'est une relation d'ordre.

### Exemples

**Exemple 1 : L'égalité sur $\mathbb{R}$**

Soit $R$ la relation `=` sur $\mathbb{R}$. $xRy \iff x = y$.

- **Réflexive :** $\forall x \in \mathbb{R}, x = x$. Vrai.
- **Symétrique :** Si $x=y$, alors $y=x$. Vrai.
- **Antisymétrique :** Si $x=y$ et $y=x$, alors $x=y$. Vrai.
- **Transitive :** Si $x=y$ et $y=z$, alors $x=z$. Vrai.
  C'est à la fois une relation d'ordre et d'équivalence.

**Exemple 2 : L'inégalité large sur $\mathbb{R}$**

Soit $R$ la relation $\le$ sur $\mathbb{R}$.

- **Réflexive :** $\forall x \in \mathbb{R}, x \le x$. Vrai.
- **Symétrique :** Si $x \le y$, a-t-on $y \le x$ ? Faux en général (ex: $3 \le 5$ mais $5 \not\le 3$).
- **Antisymétrique :** Si $x \le y$ et $y \le x$, alors $x = y$. Vrai.
- **Transitive :** Si $x \le y$ et $y \le z$, alors $x \le z$. Vrai.
- **Totale :** Pour tous $x,y \in \mathbb{R}$, on a $x \le y$ ou $y \le x$. Vrai.
  C'est une relation d'ordre total.

**Exemple 3 : La relation de divisibilité sur $\mathbb{N}^* = \{1, 2, 3, \dots\}$**

Soit $R$ la relation `|` (divise) sur $\mathbb{N}^*$. $aRb \iff a|b \iff \exists k \in \mathbb{N}^*, b=ak$.

- **Réflexive :** $\forall a \in \mathbb{N}^*, a|a$ (car $a=a \cdot 1$). Vrai.
- **Antisymétrique :** Si $a|b$ et $b|a$, alors $b=ka$ et $a=jb$. Donc $a=j(ka) = (jk)a$. Comme $a \ne 0$, $jk=1$. Puisque $j, k \in \mathbb{N}^*$, on a $j=k=1$, donc $a=b$. Vrai.
- **Transitive :** Si $a|b$ et $b|c$, alors $b=ka$ et $c=jb$. Donc $c=j(ka) = (jk)a$, ce qui signifie $a|c$. Vrai.
- **Totale :** Faux. Par exemple, 2 ne divise pas 3, et 3 ne divise pas 2.
  C'est une relation d'ordre partiel.

### Contre-exemples

1.  **Relation "est différent de" ($\ne$) sur $\mathbb{R}$ :**
    - Non réflexive : $x \ne x$ est toujours faux.
    - Symétrique : $x \ne y \Rightarrow y \ne x$. Vrai.
    - Non transitive : $3 \ne 5$ et $5 \ne 3$, mais on n'a pas $3 \ne 3$.
2.  **Relation "est ami avec" sur un ensemble de personnes :**
    - Non réflexive (en général, on ne se considère pas son propre ami dans ce contexte).
    - Symétrique : Si A est ami avec B, on suppose que B est ami avec A.
    - Non transitive : Si A est ami avec B, et B est ami avec C, A n'est pas forcément ami avec C.

### Concepts Connexes

- **Relation d'ordre**
- **Relation d'équivalence**
- **Application** (le graphe d'une application est un cas particulier de relation).

---

## Concept 11: Relation d'Équivalence et Ensemble Quotient

### Prérequis

- Relation Binaire et ses propriétés (réflexivité, symétrie, transitivité).
- Ensembles et sous-ensembles.

### Définition

1.  Une **relation d'équivalence** sur un ensemble $E$, souvent notée $\sim$, est une relation binaire qui est à la fois **réflexive**, **symétrique** et **transitive**.

2.  Soit $\sim$ une relation d'équivalence sur $E$. Pour un élément $x \in E$, sa **classe d'équivalence** est l'ensemble de tous les éléments de $E$ qui sont en relation avec $x$. On la note $\text{cl}(x)$ ou $[x]$ :
    $$ \text{cl}\_{\sim}(x) = \{y \in E \mid y \sim x\} $$

3.  L'**ensemble quotient** de $E$ par la relation $\sim$, noté $E/\sim$ ou $E/R$, est l'ensemble de toutes les classes d'équivalence :
    $$ E/\sim = \{\text{cl}\_{\sim}(x) \mid x \in E\} \subset \mathcal{P}(E) $$

### Explications Détaillées

Une relation d'équivalence est un outil puissant pour regrouper des objets qui partagent une caractéristique commune, en les considérant comme "équivalents" ou "les mêmes" du point de vue de cette caractéristique. Par exemple, si on s'intéresse à la parité des entiers, on peut dire que deux entiers sont équivalents s'ils ont la même parité.

La **classe d'équivalence** de $x$ est le "paquet" contenant $x$ et tous les éléments qui lui sont équivalents. Dans l'exemple de la parité, la classe de 0 est l'ensemble de tous les entiers pairs, et la classe de 1 est l'ensemble de tous les entiers impairs.

L'**ensemble quotient** est l'ensemble de ces paquets. C'est un nouvel ensemble où chaque élément est un groupe d'anciens éléments. Dans notre exemple, l'ensemble quotient $\mathbb{Z}/\text{parité}$ contient seulement deux éléments : l'ensemble des pairs et l'ensemble des impairs.

Le passage au quotient est une idée fondamentale en mathématiques : elle permet de "simplifier" un ensemble en identifiant des éléments, pour se concentrer sur une structure plus simple.

### Propriétés Clés

- **Partition :** Les classes d'équivalence forment une **partition** de l'ensemble $E$. Cela signifie que :
  1.  Aucune classe d'équivalence n'est vide.
  2.  L'union de toutes les classes d'équivalence est égale à $E$.
  3.  Deux classes d'équivalence distinctes sont disjointes (elles n'ont aucun élément en commun).
- Pour deux éléments $x, y \in E$, on a soit $\text{cl}(x) = \text{cl}(y)$ (si $x \sim y$), soit $\text{cl}(x) \cap \text{cl}(y) = \emptyset$ (si $x \not\sim y$).
- **Propriété universelle du quotient (Prop. 1.29) :** C'est une propriété fondamentale qui permet de définir des applications à partir d'un ensemble quotient. Si une application $f: E \to F$ est "compatible" avec la relation $\sim$ (c'est-à-dire qu'elle donne la même image à tous les éléments d'une même classe, $x \sim y \Rightarrow f(x)=f(y)$), alors il existe une unique application $\bar{f} : E/\sim \to F$ qui "prolonge" $f$ au quotient.

### Exemples

**Exemple 1 : Congruence modulo n**

Sur $\mathbb{Z}$, on définit la relation $x \sim y \iff (x-y)$ est un multiple de $n$ (où $n \in \mathbb{N}, n \ge 2$). On note $x \equiv y \pmod n$.

- C'est une relation d'équivalence.
- La classe d'équivalence de $x$ est $[x] = \{x + kn \mid k \in \mathbb{Z}\}$.
- L'ensemble quotient est $\mathbb{Z}/n\mathbb{Z} = \{[0], [1], \dots, [n-1]\}$. Il contient $n$ éléments.

**Exemple 2 : Relation d'équipotence**

Sur l'ensemble de tous les ensembles, on dit que $X \sim Y$ si il existe une bijection entre $X$ et $Y$.

- C'est une relation d'équivalence.
- La classe d'équivalence d'un ensemble $X$ est ce qu'on appelle le **nombre cardinal** de $X$. Par exemple, la classe de $\{a, b, c\}$ est le cardinal "3".
- L'ensemble quotient formalise la notion de "taille" d'un ensemble.

**Exemple 3 : Construction des nombres rationnels**

On construit $\mathbb{Q}$ à partir de $\mathbb{Z} \times (\mathbb{Z} \setminus \{0\})$. On définit la relation $(a, b) \sim (c, d) \iff ad = bc$.

- C'est une relation d'équivalence.
- La classe d'équivalence de $(a, b)$ est le nombre rationnel noté $\frac{a}{b}$. Par exemple, $\text{cl}((1, 2)) = \text{cl}((2, 4)) = \text{cl}((-3, -6))$ est le rationnel $\frac{1}{2}$.
- L'ensemble quotient est l'ensemble des nombres rationnels $\mathbb{Q}$.

### Contre-exemples

1.  **Relation d'ordre $\le$ sur $\mathbb{R}$ :** Elle est réflexive et transitive, mais pas symétrique. Ce n'est donc pas une relation d'équivalence. Les "classes" ne seraient pas disjointes.
2.  **Relation "avoir au moins un ami en commun" sur un ensemble de personnes :**
    - Réflexive : Si A est ami avec B, alors A a un ami en commun (B) avec lui-même.
    - Symétrique : Évident.
    - Non transitive : A peut avoir B comme ami commun avec C. C peut avoir D comme ami commun avec E. Mais A et E n'ont pas forcément d'ami en commun.

### Concepts Connexes

- **Groupe Quotient**, **Anneau Quotient** : constructions qui ajoutent une structure algébrique à un ensemble quotient.
- **Partition d'un ensemble** : une relation d'équivalence et une partition sont deux facettes de la même idée.
- **Construction des ensembles de nombres** ($\mathbb{Z}, \mathbb{Q}, \mathbb{R}, \mathbb{C}$) qui utilisent toutes des quotients.

---

## Concept 12: Sous-groupe

### Prérequis

- Concept de Groupe.
- Loi de composition interne.

### Définition

Soit $(G, *, e)$ un groupe. Un sous-ensemble $H \subset G$ est un **sous-groupe** de $G$ s'il vérifie les trois conditions suivantes :

1.  **Contient l'élément neutre :** $e \in H$.
2.  **Stabilité par la loi interne :** Pour tous $x, y \in H$, on a $x * y \in H$.
3.  **Stabilité par passage à l'inverse :** Pour tout $x \in H$, on a $x^{-1} \in H$.

Ces trois conditions sont équivalentes à une seule condition plus compacte (Proposition 1.37) :
Un sous-ensemble non vide $H \subset G$ est un sous-groupe si et seulement si :
$$ \forall x, y \in H, \quad x \* y^{-1} \in H $$

### Explications Détaillées

Un sous-groupe est une partie d'un groupe qui est elle-même un groupe avec la même opération. C'est comme trouver une "structure de groupe plus petite" à l'intérieur d'une plus grande.

La définition en trois points est très intuitive : pour être un groupe, $H$ doit avoir un neutre (qui doit être celui de $G$), être "fermé" sous l'opération (le résultat d'une opération sur des éléments de $H$ reste dans $H$), et chaque élément de $H$ doit avoir son inverse dans $H$.

La caractérisation compacte $x * y^{-1} \in H$ est un critère très efficace en pratique pour vérifier si un sous-ensemble est un sous-groupe. Elle combine habilement la stabilité par l'opération et par l'inverse.

### Propriétés Clés

- L'intersection de n'importe quelle collection de sous-groupes de $G$ est encore un sous-groupe de $G$.
- Pour tout groupe $G$, les ensembles $\{e\}$ (le sous-groupe trivial) et $G$ lui-même sont toujours des sous-groupes de $G$.
- Le noyau et l'image d'un morphisme de groupes sont des sous-groupes.

### Exemples

**Exemple 1 : Les entiers pairs dans $\mathbb{Z}$**

Considérons le groupe $(\mathbb{Z}, +)$ des entiers relatifs. Soit $H = 2\mathbb{Z}$ l'ensemble des entiers pairs.

1.  $0 \in 2\mathbb{Z}$ (car $0 = 2 \times 0$).
2.  Si $x, y \in 2\mathbb{Z}$, alors $x=2k$ et $y=2j$. Leur somme $x+y=2k+2j=2(k+j)$ est aussi un entier pair. $H$ est stable pour l'addition.
3.  Si $x \in 2\mathbb{Z}$, alors $x=2k$. Son inverse (opposé) est $-x = -2k = 2(-k)$, qui est aussi un entier pair.
    Donc $(2\mathbb{Z}, +)$ est un sous-groupe de $(\mathbb{Z}, +)$.

**Exemple 2 : Le groupe spécial linéaire**

Considérons le groupe général linéaire $GL_n(\mathbb{R})$, qui est le groupe des matrices inversibles de taille $n \times n$ à coefficients réels, pour la multiplication matricielle.
Soit $SL_n(\mathbb{R}) = \{ M \in GL_n(\mathbb{R}) \mid \det(M) = 1 \}$.

1.  L'élément neutre est la matrice identité $I_n$. On a $\det(I_n) = 1$, donc $I_n \in SL_n(\mathbb{R})$.
2.  Soient $A, B \in SL_n(\mathbb{R})$. On a $\det(A)=1$ et $\det(B)=1$. Alors $\det(AB) = \det(A)\det(B) = 1 \times 1 = 1$. Donc $AB \in SL_n(\mathbb{R})$.
3.  Soit $A \in SL_n(\mathbb{R})$. On a $\det(A^{-1}) = \frac{1}{\det(A)} = \frac{1}{1} = 1$. Donc $A^{-1} \in SL_n(\mathbb{R})$.
    $SL_n(\mathbb{R})$ est un sous-groupe de $GL_n(\mathbb{R})$.

**Exemple 3 : Les racines n-ièmes de l'unité**

Considérons le groupe $(\mathbb{C}^*, \times)$ des nombres complexes non nuls. Soit $n \in \mathbb{N}^*$.
L'ensemble $U_n = \{ z \in \mathbb{C}^* \mid z^n = 1 \}$ est l'ensemble des racines n-ièmes de l'unité.

1.  $1^n=1$, donc $1 \in U_n$.
2.  Si $z_1, z_2 \in U_n$, alors $z_1^n=1$ et $z_2^n=1$. On a $(z_1 z_2)^n = z_1^n z_2^n = 1 \times 1 = 1$. Donc $z_1 z_2 \in U_n$.
3.  Si $z \in U_n$, alors $z^n=1$. L'inverse est $z^{-1}$. On a $(z^{-1})^n = (z^n)^{-1} = 1^{-1} = 1$. Donc $z^{-1} \in U_n$.
    $U_n$ est un sous-groupe (fini) de $(\mathbb{C}^*, \times)$.

### Contre-exemples

1.  **$\mathbb{N}$ dans $(\mathbb{Z}, +)$ :** L'ensemble $\mathbb{N}$ contient le neutre $0$ et est stable pour l'addition. Cependant, il n'est pas stable par passage à l'inverse (ex: $3 \in \mathbb{N}$ mais son opposé $-3 \notin \mathbb{N}$). Donc $\mathbb{N}$ n'est pas un sous-groupe de $\mathbb{Z}$.
2.  **Les matrices non-inversibles dans $(M_n(\mathbb{R}), +)$ :** L'ensemble des matrices non-inversibles de $M_n(\mathbb{R})$ contient la matrice nulle (l'élément neutre). Mais il n'est pas stable par addition : $\begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix}$ et $\begin{pmatrix} 0 & 0 \\ 0 & 1 \end{pmatrix}$ sont non-inversibles, mais leur somme est la matrice identité, qui est inversible.

### Concepts Connexes

- **Groupe**
- **Noyau d'un morphisme** (c'est toujours un sous-groupe).
- **Groupe Quotient** (construit à partir d'un sous-groupe, qui doit être normal dans le cas général).

---

## Concept 13: Noyau et Image d'un Morphisme de Groupes

### Prérequis

- Groupe et Sous-groupe.
- Morphismes de structures algébriques.

### Définition

Soit $f : (G, *_G, e_G) \to (H, *_H, e_H)$ un morphisme de groupes.

1.  Le **noyau** de $f$, noté $\text{Ker}(f)$, est l'ensemble des éléments de $G$ qui sont envoyés sur l'élément neutre de $H$. C'est l'image inverse du sous-groupe trivial de $H$.
    $$ \text{Ker}(f) = f^{-1}(\{e_H\}) = \{g \in G \mid f(g) = e_H\} $$

2.  L'**image** de $f$, notée $\text{Im}(f)$, est l'ensemble de tous les éléments de $H$ qui sont l'image d'au moins un élément de $G$.
    $$ \text{Im}(f) = f(G) = \{h \in H \mid \exists g \in G, h = f(g)\} $$

### Explications Détaillées

Le **noyau** et l'**image** sont deux sous-groupes fondamentaux associés à tout morphisme de groupes.

- Le **noyau** peut être vu comme une mesure de "l'information perdue" par le morphisme. Il regroupe tous les éléments que le morphisme "écrase" sur l'élément neutre. Si le noyau est réduit à l'élément neutre de $G$, cela signifie qu'aucun élément non trivial n'est "perdu" de cette manière, et le morphisme est injectif. Plus le noyau est grand, plus le morphisme est "loin" d'être injectif.
- L'**image** est simplement l'ensemble des valeurs que le morphisme peut atteindre dans l'ensemble d'arrivée. C'est le sous-ensemble de $H$ qui est "touché" par $f$. Si l'image est égale à $H$ tout entier, cela signifie que chaque élément de $H$ est l'image d'au moins un élément de $G$, et le morphisme est surjectif.

### Propriétés Clés

- (Proposition 1.40) $\text{Ker}(f)$ est un sous-groupe du groupe de départ $G$.
- (Proposition 1.40) $\text{Im}(f)$ est un sous-groupe du groupe d'arrivée $H$.
- Un morphisme de groupes $f$ est **injectif** si et seulement si son noyau est le sous-groupe trivial : $\text{Ker}(f) = \{e_G\}$.
- Un morphisme de groupes $f$ est **surjectif** si et seulement si son image est le groupe d'arrivée tout entier : $\text{Im}(f) = H$.
- Le noyau d'un morphisme de groupe est toujours un sous-groupe _normal_ (ou distingué), ce qui est une condition essentielle pour construire des groupes quotients dans le cas non-abélien.

### Exemples

**Exemple 1 : Le morphisme de réduction modulo n**

Soit $f: (\mathbb{Z}, +) \to (\mathbb{Z}/n\mathbb{Z}, +)$ défini par $f(k) = [k]$.

- **Noyau :** On cherche les $k \in \mathbb{Z}$ tels que $f(k) = [0]$. C'est le cas si et seulement si $k$ est un multiple de $n$.
  Donc $\text{Ker}(f) = n\mathbb{Z}$. Comme le noyau n'est pas $\{0\}$ (si $n \ne 0,1$), $f$ n'est pas injectif.
- **Image :** Toute classe $[k]$ dans $\mathbb{Z}/n\mathbb{Z}$ est l'image de l'entier $k$.
  Donc $\text{Im}(f) = \mathbb{Z}/n\mathbb{Z}$. Le morphisme est surjectif.

**Exemple 2 : Le déterminant**

Soit $\det : (GL_n(\mathbb{R}), \times) \to (\mathbb{R}^*, \times)$ le morphisme qui à une matrice associe son déterminant.

- **Noyau :** On cherche les matrices $M \in GL_n(\mathbb{R})$ telles que $\det(M) = 1$ (l'élément neutre de $\mathbb{R}^*$).
  C'est par définition le groupe spécial linéaire. $\text{Ker}(\det) = SL_n(\mathbb{R})$.
- **Image :** Pour tout réel non nul $\lambda \in \mathbb{R}^*$, on peut construire une matrice de déterminant $\lambda$, par exemple la matrice diagonale $\text{diag}(\lambda, 1, \dots, 1)$.
  Donc $\text{Im}(\det) = \mathbb{R}^*$. Le morphisme est surjectif.

**Exemple 3 : L'exponentielle complexe**

Soit $f: (\mathbb{R}, +) \to (\mathbb{C}^*, \times)$ défini par $f(x) = e^{ix} = \cos(x) + i\sin(x)$.

- **Noyau :** On cherche les $x \in \mathbb{R}$ tels que $e^{ix} = 1$. C'est le cas si et seulement si $x$ est un multiple entier de $2\pi$.
  Donc $\text{Ker}(f) = 2\pi\mathbb{Z} = \{2k\pi \mid k \in \mathbb{Z}\}$.
- **Image :** L'image de ce morphisme est l'ensemble des nombres complexes de module 1, c'est-à-dire le cercle unité dans le plan complexe. $\text{Im}(f) = \{z \in \mathbb{C} \mid |z|=1\}$.

### Contre-exemples

1.  **Un sous-ensemble qui n'est pas un noyau :** Dans le morphisme $\det: GL_2(\mathbb{R}) \to \mathbb{R}^*$, considérons l'ensemble des matrices dont le déterminant est 2: $S = \{M \in GL_2(\mathbb{R}) \mid \det(M)=2\}$. Ce n'est pas un sous-groupe (le produit de deux matrices de $S$ a pour déterminant 4), donc ce ne peut être le noyau d'aucun morphisme. C'est une image inverse, mais pas celle de l'élément neutre.
2.  **Une application qui n'est pas un morphisme :** Soit $f: (\mathbb{Z}, +) \to (\mathbb{Z}, +)$ définie par $f(x) = x+1$. $f(0)=1 \ne 0$, ce n'est pas un morphisme de groupes. Il n'est donc pas pertinent de parler de son noyau ou de son image au sens de la théorie des groupes.

### Concepts Connexes

- **Morphismes de Groupes**
- **Théorèmes d'isomorphisme :** Le premier théorème d'isomorphisme relie directement le noyau, l'image et le groupe quotient : $G/\text{Ker}(f) \cong \text{Im}(f)$.
- **Idéal d'un anneau :** Le noyau d'un morphisme d'anneaux est un idéal, qui est l'analogue pour les anneaux du sous-groupe normal.

---

## Concept 14: Groupe Quotient (abélien)

### Prérequis

- Groupe Abélien et Sous-groupe.
- Relation d'équivalence et Ensemble quotient.

### Définition

Soit $(A, +, 0)$ un groupe abélien et $B$ un sous-groupe de $A$.

1.  On définit une **relation d'équivalence** $R_B$ sur $A$ par :
    $$ a_1 R_B a_2 \iff a_1 - a_2 \in B $$
2.  L'ensemble quotient est noté $A/B$. La classe d'équivalence d'un élément $a \in A$ est l'ensemble $a+B = \{a+b \mid b \in B\}$.
3.  On peut munir l'ensemble quotient $A/B$ d'une **structure de groupe abélien** unique de sorte que la projection canonique $\text{cl}_B : A \to A/B$ soit un morphisme de groupes. La loi d'addition sur $A/B$ est définie par :
    $$ (a_1 + B) + (a_2 + B) = (a_1 + a_2) + B $$
    L'élément neutre est la classe $0+B=B$, et l'inverse de $a+B$ est $(-a)+B$.

### Explications Détaillées

L'idée du groupe quotient est de "simplifier" un groupe $A$ en considérant que tous les éléments du sous-groupe $B$ sont "nuls" ou "négligeables". On regroupe les éléments de $A$ en "paquets" (les classes d'équivalence) où deux éléments sont dans le même paquet s'ils ne diffèrent que par un élément de $B$.

Le point crucial est que la structure de groupe de $A$ "descend" au niveau des paquets. On peut additionner deux paquets en prenant un élément de chaque, en les additionnant dans $A$, puis en regardant dans quel paquet se trouve le résultat. Le fait que $B$ soit un sous-groupe (et que $A$ soit abélien) garantit que le résultat ne dépend pas des éléments choisis dans chaque paquet. L'opération est donc "bien définie".

Le groupe quotient $A/B$ est une nouvelle structure algébrique qui capture des informations sur $A$ "modulo" $B$.

### Propriétés Clés

- L'application de projection (ou de classe) $\text{cl}_B : A \to A/B$ est un morphisme de groupes surjectif.
- Le noyau de ce morphisme de projection est précisément le sous-groupe $B$ par lequel on quotiente : $\text{Ker}(\text{cl}_B) = B$.
- **Propriété universelle du quotient de groupes abéliens (Prop. 1.42) :** Pour tout morphisme de groupes abéliens $f: A \to C$ dont le noyau contient $B$ (i.e., $f(B) = \{0_C\}$), il existe un unique morphisme de groupes $\bar{f} : A/B \to C$ tel que $f = \bar{f} \circ \text{cl}_B$. Cette propriété est fondamentale pour définir des morphismes à partir d'un groupe quotient.

### Exemples

**Exemple 1 : Le groupe des entiers modulo n, $\mathbb{Z}/n\mathbb{Z}$**

C'est l'exemple le plus classique.

- Groupe de départ : $A = (\mathbb{Z}, +)$.
- Sous-groupe : $B = n\mathbb{Z} = \{nk \mid k \in \mathbb{Z}\}$.
- Relation : $a_1 \sim a_2 \iff a_1 - a_2 \in n\mathbb{Z} \iff a_1 \equiv a_2 \pmod n$.
- Classes : Ce sont les classes de congruence modulo n, $[0], [1], \dots, [n-1]$.
- Groupe quotient : $\mathbb{Z}/n\mathbb{Z}$ avec l'addition des classes. Par exemple, dans $\mathbb{Z}/6\mathbb{Z}$, on a $[3]+[4]=[7]=[1]$.

**Exemple 2 : Le groupe cercle $\mathbb{R}/\mathbb{Z}$**

- Groupe de départ : $A = (\mathbb{R}, +)$.
- Sous-groupe : $B = (\mathbb{Z}, +)$.
- Relation : $x \sim y \iff x - y \in \mathbb{Z}$. Deux réels sont équivalents s'ils ont la même partie décimale.
- Classes : $[x] = x + \mathbb{Z}$. Chaque classe a un unique représentant dans l'intervalle $[0, 1[$.
- Groupe quotient : $\mathbb{R}/\mathbb{Z}$. Ce groupe est isomorphe au groupe $S^1$ des nombres complexes de module 1 pour la multiplication, via l'isomorphisme $\phi: \mathbb{R}/\mathbb{Z} \to S^1$ défini par $\phi([x]) = e^{2i\pi x}$.

**Exemple 3 : Quotient d'un espace vectoriel**

Soit $V = \mathbb{R}^2$ le plan (vu comme un groupe abélien pour l'addition de vecteurs). Soit $W$ la droite d'équation $y=x$, qui est un sous-groupe de $\mathbb{R}^2$.

- $W = \{(x,x) \mid x \in \mathbb{R}\}$.
- Relation : $\vec{v}_1 \sim \vec{v}_2 \iff \vec{v}_1 - \vec{v}_2 \in W$. Deux vecteurs sont équivalents si leur différence est un vecteur de la droite $y=x$.
- Classes : Les classes d'équivalence sont des droites parallèles à la droite $W$. Par exemple, la classe de $(1,0)$ est la droite d'équation $y = x-1$.
- Le groupe quotient $\mathbb{R}^2/W$ est l'ensemble de toutes les droites parallèles à $W$. Ce groupe est isomorphe à $\mathbb{R}$.

### Contre-exemples

1.  **Quotient par un sous-ensemble qui n'est pas un sous-groupe :** On ne peut pas former le groupe quotient de $(\mathbb{Z}, +)$ par $\mathbb{N}$. La relation $a-b \in \mathbb{N}$ n'est ni symétrique, ni transitive. La structure de groupe ne "passe" pas au quotient.
2.  **Cas non-abélien (remarque) :** Le texte se limite aux groupes abéliens. Si $G$ est un groupe non-abélien et $H$ est un sous-groupe qui n'est pas "normal", alors la loi $(aH)*(bH) = (ab)H$ n'est pas bien définie. Par exemple, dans le groupe des permutations $S_3$, le sous-groupe $H = \{\text{id}, (1 2)\}$ n'est pas normal.

### Concepts Connexes

- **Sous-groupe normal** (généralisation au cas non-abélien).
- **Anneau Quotient** (extension de cette idée aux anneaux).
- **Premier théorème d'isomorphisme** ($A/\text{Ker}(f) \cong \text{Im}(f)$), qui est une conséquence de la propriété universelle.

---

## Concept 15: Idéal d'un Anneau Commutatif

### Prérequis

- Anneau (commutatif).
- Sous-groupe.

### Définition

Soit $(A, +, \times)$ un anneau commutatif. Un sous-ensemble $I \subset A$ est un **idéal** de $A$ s'il vérifie deux conditions :

1.  $(I, +)$ est un sous-groupe du groupe additif $(A, +)$. C'est-à-dire :
    - $0_A \in I$.
    - Pour tous $x, y \in I$, $x+y \in I$.
    - Pour tout $x \in I$, $-x \in I$.
2.  **Stabilité par multiplication externe (absorption) :** Pour tout $a \in A$ et tout $x \in I$, le produit $a \times x$ est dans $I$.
    $$ \forall a \in A, \forall x \in I, \quad ax \in I $$

### Explications Détaillées

Un idéal est une structure plus forte qu'un simple sous-anneau. Alors qu'un sous-anneau doit être stable par multiplication _interne_ (le produit de deux de ses éléments reste dedans), un idéal doit être stable par multiplication par _n'importe quel_ élément de l'anneau parent. Cette propriété d'**absorption** est la caractéristique clé.

Un idéal "absorbe" la multiplication par l'anneau entier. On peut se le représenter comme un "trou noir" pour la multiplication : dès qu'un élément de l'anneau $A$ touche un élément de l'idéal $I$ par multiplication, le résultat est "aspiré" dans $I$.

Cette propriété est précisément ce qui est nécessaire pour pouvoir définir une multiplication bien définie sur l'ensemble quotient $A/I$, faisant de ce dernier un anneau. Les idéaux sont aux anneaux ce que les sous-groupes normaux sont aux groupes.

### Propriétés Clés

- Le noyau d'un morphisme d'anneaux $f: A \to B$ est toujours un idéal de l'anneau de départ $A$ (Proposition 1.44).
- L'intersection de n'importe quelle collection d'idéaux de $A$ est encore un idéal de $A$.
- Dans tout anneau $A$, $\{0\}$ (l'idéal nul) et $A$ lui-même (l'idéal trivial) sont toujours des idéaux.

### Exemples

**Exemple 1 : Les multiples d'un entier dans $\mathbb{Z}$**

Dans l'anneau $(\mathbb{Z}, +, \times)$, pour tout $n \in \mathbb{Z}$, l'ensemble $n\mathbb{Z} = \{nk \mid k \in \mathbb{Z}\}$ est un idéal.

1.  On sait déjà que $(n\mathbb{Z}, +)$ est un sous-groupe de $(\mathbb{Z}, +)$.
2.  Soit $x \in n\mathbb{Z}$ (donc $x=nk_1$) et soit $a \in \mathbb{Z}$ (un entier quelconque).
    Le produit $ax = a(nk_1) = n(ak_1)$. Puisque $ak_1$ est un entier, $ax$ est un multiple de $n$, donc $ax \in n\mathbb{Z}$.
    La propriété d'absorption est vérifiée.

**Exemple 2 : Les fonctions s'annulant en un point**

Soit $A = C^0([0, 1], \mathbb{R})$ l'anneau des fonctions continues de $[0,1]$ vers $\mathbb{R}$. Fixons un point $c \in [0, 1]$.
Considérons $I_c = \{ f \in A \mid f(c) = 0 \}$.

1.  $(I_c, +)$ est un sous-groupe : la fonction nulle est dans $I_c$; la somme de deux fonctions nulles en $c$ est nulle en $c$; l'opposée d'une fonction nulle en $c$ est nulle en $c$.
2.  Soit $f \in I_c$ (donc $f(c)=0$) et $g \in A$ (une fonction continue quelconque).
    Le produit est la fonction $g \cdot f$. Évaluons-la en $c$ : $(g \cdot f)(c) = g(c) \cdot f(c) = g(c) \cdot 0 = 0$.
    Donc $g \cdot f \in I_c$. $I_c$ est un idéal.

**Exemple 3 : Idéal engendré par un polynôme**

Dans l'anneau des polynômes à coefficients réels $A = \mathbb{R}[X]$, soit $P(X)$ un polynôme fixé. L'ensemble de tous les multiples de $P(X)$ :
$I = \{ Q(X) \cdot P(X) \mid Q(X) \in \mathbb{R}[X] \}$ est un idéal, noté $(P(X))$.
La vérification est analogue à celle pour $n\mathbb{Z}$ dans $\mathbb{Z}$. C'est un idéal principal.

### Contre-exemples

1.  **Un sous-anneau qui n'est pas un idéal :** $\mathbb{Z}$ est un sous-anneau de $\mathbb{Q}$. Cependant, ce n'est pas un idéal de $\mathbb{Q}$.
    Prenons $x=3 \in \mathbb{Z}$ et $a=1/2 \in \mathbb{Q}$. Le produit $ax = (1/2) \cdot 3 = 3/2$.
    Or, $3/2 \notin \mathbb{Z}$. La propriété d'absorption n'est pas vérifiée.
2.  **L'ensemble des matrices inversibles :** Dans l'anneau $M_n(\mathbb{R})$, l'ensemble $GL_n(\mathbb{R})$ des matrices inversibles n'est pas un idéal. Il ne forme même pas un sous-groupe additif (la somme de deux matrices inversibles peut être non-inversible, comme la matrice nulle).

### Concepts Connexes

- **Anneau Quotient :** La notion d'idéal est indispensable pour construire des anneaux quotients.
- **Noyau d'un morphisme d'anneaux.**
- **Idéal principal, Idéal premier, Idéal maximal :** Types d'idéaux avec des propriétés importantes qui définissent des structures spéciales sur l'anneau quotient correspondant (anneau intègre, corps).

---

## Concept 16: Anneau Quotient

### Prérequis

- Anneau (commutatif) et Idéal.
- Groupe Quotient.

### Définition

Soit $A$ un anneau commutatif et $I$ un idéal de $A$.

L'**anneau quotient** $A/I$ est l'ensemble des classes d'équivalence pour la relation $a \sim b \iff a-b \in I$, muni de deux lois de composition :

1.  **Addition des classes :** $(a+I) + (b+I) = (a+b)+I$
2.  **Multiplication des classes :** $(a+I) \times (b+I) = (a \times b)+I$

Ces opérations font de $A/I$ un anneau commutatif.

- L'élément neutre pour l'addition est la classe $0+I = I$.
- L'élément neutre pour la multiplication est la classe $1+I$.

L'application de classe $\text{cl}_I : A \to A/I$ définie par $\text{cl}_I(a) = a+I$ est un morphisme d'anneaux surjectif.

### Explications Détaillées

Comme pour les groupes, la construction d'un anneau quotient consiste à "réduire à zéro" tous les éléments d'une sous-structure, ici un idéal $I$. Le résultat est un nouvel anneau, $A/I$, dont les éléments sont les classes (ou "paquets") $a+I$.

La structure additive de $A/I$ est celle d'un groupe quotient, qui est bien définie car $(I,+)$ est un sous-groupe additif.

Le point le plus important est la définition de la multiplication. Pour qu'elle ait un sens, le résultat de $(a+I) \times (b+I)$ ne doit pas dépendre du choix des représentants $a$ et $b$ dans leurs classes respectives. C'est précisément la propriété d'**absorption** des idéaux qui garantit que cette multiplication est bien définie.
Si on choisit d'autres représentants $a' = a+i_1$ et $b' = b+i_2$ (avec $i_1, i_2 \in I$), leur produit est :
$a'b' = (a+i_1)(b+i_2) = ab + ai_2 + bi_1 + i_1i_2$.
Les trois derniers termes ($ai_2, bi_1, i_1i_2$) sont tous dans l'idéal $I$ à cause de la propriété d'absorption. Donc $a'b' - ab \in I$, ce qui signifie que $a'b'$ et $ab$ sont dans la même classe. La multiplication est bien définie.

### Propriétés Clés

- L'application de projection $\text{cl}_I : A \to A/I$ est un morphisme d'anneaux surjectif de noyau $I$.
- **Propriété universelle de l'anneau quotient (Prop. 1.48) :** Pour tout morphisme d'anneaux $f: A \to B$ tel que $I \subset \text{Ker}(f)$ (i.e. $f(I) = \{0_B\}$), il existe un unique morphisme d'anneaux $\bar{f} : A/I \to B$ tel que $f = \bar{f} \circ \text{cl}_I$.

### Exemples

**Exemple 1 : L'anneau des entiers modulo n, $\mathbb{Z}/n\mathbb{Z}$**

C'est l'anneau quotient de $A=\mathbb{Z}$ par l'idéal $I=n\mathbb{Z}$.

- Les éléments sont les classes $[0], [1], \dots, [n-1]$.
- L'addition et la multiplication se font "modulo n".
- Par exemple, dans $\mathbb{Z}/6\mathbb{Z}$ : $[4]+[5]=[9]=[3]$ et $[4]\times[5]=[20]=[2]$.

**Exemple 2 : Construction des nombres complexes**

On peut construire $\mathbb{C}$ comme un anneau quotient.

- Anneau de départ : $A = \mathbb{R}[X]$, l'anneau des polynômes à coefficients réels.
- Idéal : $I = (X^2+1)$, l'idéal engendré par le polynôme $X^2+1$. Cet idéal contient tous les polynômes de la forme $P(X)(X^2+1)$.
- Anneau quotient : $\mathbb{C} \cong \mathbb{R}[X]/(X^2+1)$.
  Dans cet anneau, la classe de $X^2+1$ est la classe nulle, ce qui revient à poser la règle $X^2+1=0$, soit $X^2=-1$. La classe du polynôme $X$, notée $i$, devient un nombre dont le carré est $-1$. Tout élément de cet anneau peut s'écrire de manière unique sous la forme $a+bi$, où $a,b \in \mathbb{R}$.

**Exemple 3 : Construction des nombres réels (Exemple 1.47)**

Les nombres réels peuvent être construits comme un anneau quotient.

- Anneau de départ : $A = \text{Cauchy}(\mathbb{Q})$, l'anneau des suites de Cauchy de nombres rationnels.
- Idéal : $I = \text{Cauchy}_0(\mathbb{Q})$, le sous-ensemble des suites de Cauchy qui convergent vers 0. On vérifie que c'est un idéal.
- Anneau quotient : $\mathbb{R} = A/I$.
  Dans ce quotient, on identifie deux suites de Cauchy si leur différence tend vers 0, ce qui signifie qu'elles "devraient" avoir la même limite. Le quotient formalise cette idée de limite.

### Contre-exemples

1.  **Quotient par un sous-anneau non-idéal :** On ne peut pas construire l'anneau quotient $\mathbb{Q}/\mathbb{Z}$. $\mathbb{Z}$ est un sous-anneau de $\mathbb{Q}$ mais pas un idéal. La multiplication ne serait pas bien définie. Par exemple, dans $\mathbb{Q}/\mathbb{Z}$, $[1/2]$ et $[1/3]$ sont des classes. Choisissons les représentants $1/2$ et $1/3$. Produit : $1/6$, classe $[1/6]$. Choisissons d'autres représentants : $1/2+1 = 3/2$ et $1/3+2 = 7/3$. Produit : $(3/2)(7/3) = 7/2 = 3+1/2$. La classe est $[1/2]$. Les résultats $[1/6]$ et $[1/2]$ sont différents, donc l'opération n'est pas bien définie.

### Concepts Connexes

- **Idéal**
- **Morphismes d'anneaux**
- **Théorèmes d'isomorphisme pour les anneaux**, en particulier le premier : $A/\text{Ker}(f) \cong \text{Im}(f)$.
- **Corps finis :** Si $p$ est un nombre premier, l'anneau quotient $\mathbb{Z}/p\mathbb{Z}$ est un corps.
```
