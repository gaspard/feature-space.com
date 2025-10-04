---
id: '0fbc544e'
title: '1 - Exercises: Structures algébriques (Niveau de base)'
layout: '../../../../layouts/Layout.astro'
order: 11
level: basic
chapter: Structures algébriques (Niveau de base)
course: Structures algébriques et algèbre bilinéaire
---

# Exercises: Structures algébriques (Niveau de base)

## Exercice 1: Calcul de composition

**Problème:** Soient les applications $f: \mathbb{R} \to \mathbb{R}$ définie par $f(x) = 3x+2$ et $g: \mathbb{R} \to \mathbb{R}$ définie par $g(x) = x^2 - 1$. Calculez les expressions de $(g \circ f)(x)$ et $(f \circ g)(x)$.

<details>
<summary>Solution</summary>

**Méthode:** On applique la définition de la composition de fonctions: $(g \circ f)(x) = g(f(x))$ et $(f \circ g)(x) = f(g(x))$.

**Étapes:**

1.  **Calcul de $(g \circ f)(x)$**:
    On remplace d'abord $f(x)$ par son expression dans $g(f(x))$.
    $$(g \circ f)(x) = g(f(x)) = g(3x+2)$$
2.  On applique maintenant la définition de $g$ à l'expression $3x+2$.
    $$g(3x+2) = (3x+2)^2 - 1$$
3.  On développe l'expression.
    $$(3x+2)^2 - 1 = (9x^2 + 12x + 4) - 1 = 9x^2 + 12x + 3$$
4.  **Calcul de $(f \circ g)(x)$**:
    On remplace d'abord $g(x)$ par son expression dans $f(g(x))$.
    $$(f \circ g)(x) = f(g(x)) = f(x^2 - 1)$$
5.  On applique la définition de $f$ à l'expression $x^2 - 1$.
    $$f(x^2 - 1) = 3(x^2 - 1) + 2$$
6.  On développe l'expression.
    $$3(x^2 - 1) + 2 = 3x^2 - 3 + 2 = 3x^2 - 1$$

**Réponse:**
$$(g \circ f)(x) = 9x^2 + 12x + 3$$
$$(f \circ g)(x) = 3x^2 - 1$$

</details>

## Exercice 2: Définition d'une application

**Problème:** La relation $\mathcal{R}$ de $\mathbb{R}$ vers $\mathbb{R}$ définie par "$x \mathcal{R} y \iff y^2 = x$" est-elle une application ? Justifiez votre réponse.

<details>
<summary>Solution</summary>

**Méthode:** Pour qu'une relation soit une application de $X$ dans $Y$, il faut que chaque élément de l'ensemble de départ $X$ ait une et une seule image dans l'ensemble d'arrivée $Y$. Nous allons vérifier ces deux conditions.

**Étapes:**

1.  **Condition d'existence**: Tout élément de l'ensemble de départ $\mathbb{R}$ doit avoir au moins une image.
    Prenons $x = -1$. L'équation $y^2 = -1$ n'a pas de solution dans $\mathbb{R}$. Donc, l'élément $-1$ de l'ensemble de départ n'a pas d'image. La première condition n'est pas remplie.
2.  **Condition d'unicité**: Chaque élément de l'ensemble de départ doit avoir au plus une image.
    Prenons $x = 4$. L'équation $y^2 = 4$ a deux solutions dans $\mathbb{R}$ : $y=2$ et $y=-2$. L'élément $4$ de l'ensemble de départ est associé à deux éléments différents dans l'ensemble d'arrivée. La condition d'unicité n'est pas remplie non plus.

**Réponse:** La relation $\mathcal{R}$ n'est pas une application car certains éléments de l'ensemble de départ n'ont pas d'image (par ex. -1) et d'autres en ont plusieurs (par ex. 4).

</details>

## Exercice 3: Analyse de propriétés d'une fonction

**Problème:** L'application $f : \mathbb{R} \to \mathbb{R}$ définie par $f(x) = 4x - 5$ est-elle injective ? Surjective ? Bijective ?

<details>
<summary>Solution</summary>

**Méthode:** Nous allons tester l'injectivité en montrant que $f(x_1) = f(x_2) \implies x_1 = x_2$, puis la surjectivité en cherchant un antécédent pour un $y$ quelconque dans $\mathbb{R}$.

**Étapes:**

1.  **Test de l'injectivité**:
    Soient $x_1, x_2 \in \mathbb{R}$ tels que $f(x_1) = f(x_2)$.
    $$4x_1 - 5 = 4x_2 - 5$$
    $$4x_1 = 4x_2$$
    $$x_1 = x_2$$
    L'application est donc **injective**.

2.  **Test de la surjectivité**:
    Soit $y \in \mathbb{R}$ (un élément quelconque de l'ensemble d'arrivée). On cherche s'il existe un $x \in \mathbb{R}$ tel que $f(x) = y$.
    $$4x - 5 = y$$
    $$4x = y + 5$$
    $$x = \frac{y+5}{4}$$
    Pour n'importe quel $y \in \mathbb{R}$, on peut calculer $x = \frac{y+5}{4}$, qui est bien un nombre réel. Donc, chaque $y$ a au moins un antécédent. L'application est donc **surjective**.

3.  **Conclusion sur la bijectivité**:
    L'application est à la fois injective et surjective. Par définition, elle est donc **bijective**.

**Réponse:** L'application $f(x) = 4x - 5$ est injective, surjective et bijective.

</details>

## Exercice 4: Application sur les entiers

**Problème:** Soit l'application $h : \mathbb{Z} \to \mathbb{Z}$ définie par $h(n) = n^2$. Est-elle injective ? Surjective ?

<details>
<summary>Solution</summary>

**Méthode:** Pour prouver qu'une propriété est fausse, il suffit de trouver un contre-exemple.

**Étapes:**

1.  **Test de l'injectivité**:
    On cherche deux entiers distincts qui ont la même image.
    Prenons $n_1 = 2$ et $n_2 = -2$. Ce sont bien deux entiers distincts.
    Calculons leurs images :
    $h(2) = 2^2 = 4$
    $h(-2) = (-2)^2 = 4$
    On a $h(2) = h(-2)$ mais $2 \neq -2$. L'application n'est donc **pas injective**.

2.  **Test de la surjectivité**:
    On cherche un entier dans l'ensemble d'arrivée qui n'est l'image d'aucun entier de l'ensemble de départ.
    L'image $h(n) = n^2$ est toujours un entier positif ou nul.
    Prenons l'entier $y = -1$ dans l'ensemble d'arrivée $\mathbb{Z}$. L'équation $h(n) = -1$, soit $n^2 = -1$, n'a pas de solution dans $\mathbb{Z}$.
    L'élément $-1$ n'a donc pas d'antécédent. L'application n'est **pas surjective**.

**Réponse:** L'application $h(n) = n^2$ de $\mathbb{Z}$ dans $\mathbb{Z}$ n'est ni injective, ni surjective.

</details>

## Exercice 5: Propriétés d'une opération binaire

**Problème:** On définit sur l'ensemble des nombres réels $\mathbb{R}$ l'opération binaire $*$ par $a * b = a + b - 2$.

1. L'opération $*$ est-elle commutative ?
2. L'opération $*$ est-elle associative ?
3. L'opération $*$ admet-elle un élément neutre ?

<details>
<summary>Solution</summary>

**Méthode:** On applique les définitions de chaque propriété par le calcul direct.

**Étapes:**

1.  **Commutativité**: On doit vérifier si $a * b = b * a$ pour tous $a, b \in \mathbb{R}$.
    $a * b = a + b - 2$
    $b * a = b + a - 2$
    Comme l'addition dans $\mathbb{R}$ est commutative, $a+b = b+a$, donc $a*b=b*a$. L'opération est **commutative**.

2.  **Associativité**: On doit vérifier si $(a * b) * c = a * (b * c)$ pour tous $a, b, c \in \mathbb{R}$.
    Calculons le membre de gauche :
    $(a * b) * c = (a + b - 2) * c = (a + b - 2) + c - 2 = a + b + c - 4$
    Calculons le membre de droite :
    $a * (b * c) = a * (b + c - 2) = a + (b + c - 2) - 2 = a + b + c - 4$
    Les deux résultats sont identiques. L'opération est **associative**.

3.  **Élément neutre**: On cherche un élément $e \in \mathbb{R}$ tel que $a * e = a$ pour tout $a \in \mathbb{R}$.
    $a * e = a + e - 2$
    On doit donc résoudre l'équation $a + e - 2 = a$.
    $e - 2 = 0$
    $e = 2$
    Vérifions que $e=2$ est bien l'élément neutre : $a * 2 = a + 2 - 2 = a$. Comme l'opération est commutative, on a aussi $2 * a = a$.
    L'opération admet **un élément neutre qui est 2**.

**Réponse:** L'opération $*$ est commutative, associative et admet l'élément neutre $e=2$.

</details>

## Exercice 6: Vérification de structure de groupe

**Problème:** L'ensemble des entiers relatifs $\mathbb{Z}$ muni de l'opération de soustraction $(-)$ forme-t-il un groupe ?

<details>
<summary>Solution</summary>

**Méthode:** On vérifie les axiomes de la structure de groupe. Si l'un des axiomes n'est pas vérifié, la structure n'est pas un groupe.

**Étapes:**

1.  **Associativité**: On vérifie si $(a - b) - c = a - (b - c)$ pour tous $a, b, c \in \mathbb{Z}$.
    Prenons un contre-exemple simple: $a=5, b=3, c=1$.
    Membre de gauche: $(5 - 3) - 1 = 2 - 1 = 1$.
    Membre de droite: $5 - (3 - 1) = 5 - 2 = 3$.
    On a $1 \neq 3$, donc l'opération n'est pas associative.

2.  **Conclusion**:
    Comme l'axiome d'associativité n'est pas vérifié, il n'est pas nécessaire de vérifier les autres. La structure $(\mathbb{Z}, -)$ n'est pas un groupe.

_(Note: On pourrait aussi montrer qu'il n'y a pas d'élément neutre. Si $e$ était un neutre à droite, on aurait $a-e=a$, donc $e=0$. Mais $e=0$ n'est pas un neutre à gauche: $0-a = -a \neq a$ pour $a \neq 0$.)_

**Réponse:** Non, $(\mathbb{Z}, -)$ n'est pas un groupe car l'opération de soustraction n'est pas associative.

</details>

## Exercice 7: Vérification de structure de groupe

**Problème:** Montrer que l'ensemble $G = \{1, -1\}$ muni de la multiplication usuelle $(\times)$ est un groupe.

<details>
<summary>Solution</summary>

**Méthode:** On vérifie un par un les quatre axiomes qui définissent un groupe (loi interne, associativité, élément neutre, inverse).

**Étapes:**

1.  **Stabilité (loi de composition interne)**: Le produit de deux éléments de $G$ doit être dans $G$.
    $1 \times 1 = 1 \in G$
    $1 \times (-1) = -1 \in G$
    $(-1) \times 1 = -1 \in G$
    $(-1) \times (-1) = 1 \in G$
    La loi est bien interne.

2.  **Associativité**: La multiplication dans $\mathbb{R}$ (et donc dans $\mathbb{Z}$) est associative. Cette propriété est donc héritée par $G$.

3.  **Élément neutre**: On cherche un élément $e \in G$ tel que $a \times e = e \times a = a$ pour tout $a \in G$.
    L'élément $1$ est le neutre de la multiplication. On vérifie :
    $1 \times 1 = 1$
    $(-1) \times 1 = -1$
    L'élément neutre est $1 \in G$.

4.  **Inverse**: Chaque élément de $G$ doit avoir un inverse dans $G$.
    - Inverse de 1 : On cherche $x$ tel que $1 \times x = 1$. La solution est $x=1$, et $1 \in G$.
    - Inverse de -1 : On cherche $x$ tel que $(-1) \times x = 1$. La solution est $x=-1$, et $-1 \in G$.
      Chaque élément est son propre inverse.

**Réponse:** L'ensemble $G=\{1, -1\}$ muni de la multiplication est un groupe car les quatre axiomes sont vérifiés.

</details>

## Exercice 8: Conceptualisation sur les anneaux

**Problème:** Expliquez simplement pourquoi l'ensemble des entiers naturels $\mathbb{N}=\{0, 1, 2, ...\}$ muni de l'addition et de la multiplication usuelles, $(\mathbb{N}, +, \times)$, n'est pas un anneau.

<details>
<summary>Solution</summary>

**Méthode:** On rappelle la définition d'un anneau et on identifie la condition qui n'est pas satisfaite par $(\mathbb{N}, +, \times)$.

**Étapes:**

1.  **Définition d'un anneau**: Un anneau $(A, +, \times)$ doit satisfaire trois conditions principales, dont la première est que $(A, +)$ doit être un groupe abélien.

2.  **Vérification de la structure de groupe pour $(\mathbb{N}, +)$**:
    Pour que $(\mathbb{N}, +)$ soit un groupe, chaque élément doit avoir un inverse pour l'addition (appelé un opposé) qui soit aussi dans $\mathbb{N}$.
    L'élément neutre de l'addition est $0 \in \mathbb{N}$.
    Prenons l'élément $3 \in \mathbb{N}$. Son opposé est $-3$, car $3 + (-3) = 0$.
    Cependant, $-3$ n'appartient pas à l'ensemble des entiers naturels $\mathbb{N}$.
    Aucun élément de $\mathbb{N}$ (sauf 0) n'a d'opposé dans $\mathbb{N}$.

3.  **Conclusion**:
    Puisque $(\mathbb{N}, +)$ n'est pas un groupe, la première condition pour être un anneau n'est pas remplie.

**Réponse:** $(\mathbb{N}, +, \times)$ n'est pas un anneau car $(\mathbb{N}, +)$ n'est pas un groupe. Plus précisément, les éléments non nuls n'ont pas d'opposé (d'inverse additif) dans $\mathbb{N}$.

</details>

## Exercice 9: Conceptualisation sur les corps

**Problème:** L'anneau des entiers relatifs $(\mathbb{Z}, +, \times)$ est-il un corps ? Justifiez votre réponse.

<details>
<summary>Solution</summary>

**Méthode:** On rappelle la définition d'un corps et on vérifie si $(\mathbb{Z}, +, \times)$ satisfait la condition clé qui distingue un corps d'un anneau.

**Étapes:**

1.  **Définition d'un corps**: Un corps est un anneau commutatif dans lequel tout élément non nul admet un inverse pour la multiplication.

2.  **Vérification de l'inversibilité des éléments**:
    $(\mathbb{Z}, +, \times)$ est bien un anneau commutatif.
    Prenons un élément non nul de $\mathbb{Z}$, par exemple $2$.
    Pour que $2$ soit inversible, il faudrait trouver un entier $x \in \mathbb{Z}$ tel que $2 \times x = 1$ (où $1$ est l'élément neutre de la multiplication).
    La seule solution à cette équation est $x = 1/2$.

3.  **Conclusion**:
    L'élément $1/2$ n'est pas un entier, il n'appartient donc pas à $\mathbb{Z}$. Par conséquent, l'élément $2$ n'a pas d'inverse multiplicatif dans $\mathbb{Z}$.
    Puisqu'il existe au moins un élément non nul qui n'est pas inversible, $\mathbb{Z}$ n'est pas un corps. (Les seuls éléments inversibles dans $\mathbb{Z}$ sont 1 et -1).

**Réponse:** Non, $(\mathbb{Z}, +, \times)$ n'est pas un corps car la plupart des éléments non nuls (comme 2) n'ont pas d'inverse pour la multiplication dans $\mathbb{Z}$.

</details>

## Exercice 10: Relation d'équivalence et ensemble quotient

**Problème:** Sur l'ensemble $\mathbb{Z}$, on définit la relation $x \sim y$ si et seulement si $x$ et $y$ ont la même parité (c'est-à-dire que $x-y$ est un multiple de 2).

1. Montrer que $\sim$ est une relation d'équivalence.
2. Décrire les classes d'équivalence.
3. Quel est l'ensemble quotient $\mathbb{Z}/\sim$ ?

<details>
<summary>Solution</summary>

**Méthode:** Pour le point 1, on vérifie les trois propriétés : réflexivité, symétrie, transitivité. Pour les points 2 et 3, on identifie les "paquets" d'éléments qui sont équivalents entre eux.

**Étapes:**

1.  **Vérification de la relation d'équivalence**:

    - **Réflexivité**: Pour tout $x \in \mathbb{Z}$, on a $x-x = 0$. Comme $0$ est un multiple de 2 ($0 = 0 \times 2$), on a $x \sim x$. La relation est réflexive.
    - **Symétrie**: Si $x \sim y$, alors $x-y$ est un multiple de 2, donc $x-y = 2k$ pour un certain $k \in \mathbb{Z}$. Alors $y-x = -(x-y) = -2k = 2(-k)$. Comme $-k \in \mathbb{Z}$, $y-x$ est aussi un multiple de 2, donc $y \sim x$. La relation est symétrique.
    - **Transitivité**: Si $x \sim y$ et $y \sim z$, alors $x-y = 2k_1$ et $y-z = 2k_2$ pour $k_1, k_2 \in \mathbb{Z}$. En additionnant ces deux égalités, on obtient $(x-y)+(y-z) = 2k_1+2k_2$, ce qui donne $x-z = 2(k_1+k_2)$. Comme $k_1+k_2 \in \mathbb{Z}$, $x-z$ est un multiple de 2, donc $x \sim z$. La relation est transitive.
      La relation $\sim$ est bien une relation d'équivalence.

2.  **Description des classes d'équivalence**:

    - La classe de 0, notée $\text{cl}(0)$, est l'ensemble des entiers $y$ tels que $y \sim 0$, c'est-à-dire $y-0=y$ est pair. C'est l'ensemble de tous les nombres pairs : $\text{cl}(0) = \{..., -4, -2, 0, 2, 4, ...\} = 2\mathbb{Z}$.
    - La classe de 1, notée $\text{cl}(1)$, est l'ensemble des entiers $y$ tels que $y \sim 1$, c'est-à-dire $y-1$ est pair. Si $y-1=2k$, alors $y=2k+1$. C'est l'ensemble de tous les nombres impairs : $\text{cl}(1) = \{..., -3, -1, 1, 3, 5, ...\} = 1+2\mathbb{Z}$.
    - Tout entier est soit pair, soit impair, il n'y a donc que ces deux classes.

3.  **Ensemble quotient**:
    L'ensemble quotient est l'ensemble des classes d'équivalence. Il n'y en a que deux.
    $\mathbb{Z}/\sim = \{\text{cl}(0), \text{cl}(1)\}$.

**Réponse:** La relation est bien une relation d'équivalence. Il y a deux classes d'équivalence : l'ensemble des nombres pairs et l'ensemble des nombres impairs. L'ensemble quotient est $\mathbb{Z}/\sim = \{\text{cl}(0), \text{cl}(1)\}$, qui a deux éléments.

</details>

## Exercice 11: Vérification de sous-groupe

**Problème:** Montrer que l'ensemble $5\mathbb{Z} = \{5k \mid k \in \mathbb{Z}\}$ des multiples de 5 est un sous-groupe de $(\mathbb{Z}, +)$.

<details>
<summary>Solution</summary>

**Méthode:** Pour montrer que $H$ est un sous-groupe de $G$, on doit vérifier trois points : $H$ est non vide, $H$ est stable par l'opération, et $H$ est stable par passage à l'inverse.

**Étapes:**

1.  **Vérifier que $5\mathbb{Z}$ est non vide**:
    L'élément neutre du groupe $(\mathbb{Z}, +)$ est $0$. On peut écrire $0 = 5 \times 0$. Donc $0 \in 5\mathbb{Z}$. L'ensemble n'est pas vide.

2.  **Vérifier la stabilité par l'addition**:
    Soient deux éléments quelconques de $5\mathbb{Z}$, disons $x$ et $y$.
    Par définition, $x = 5k_1$ et $y = 5k_2$ pour certains entiers $k_1, k_2 \in \mathbb{Z}$.
    Leur somme est $x+y = 5k_1 + 5k_2 = 5(k_1+k_2)$.
    Puisque $k_1+k_2$ est un entier, $x+y$ est de la forme $5 \times (\text{un entier})$, donc $x+y \in 5\mathbb{Z}$.
    L'ensemble est stable par addition.

3.  **Vérifier la stabilité par passage à l'inverse (opposé)**:
    Soit un élément $x \in 5\mathbb{Z}$. Donc $x = 5k$ pour un entier $k$.
    L'inverse de $x$ pour l'addition est $-x$.
    $-x = -(5k) = 5(-k)$.
    Puisque $-k$ est un entier, $-x$ est de la forme $5 \times (\text{un entier})$, donc $-x \in 5\mathbb{Z}$.
    L'ensemble est stable par passage à l'opposé.

**Réponse:** $5\mathbb{Z}$ est un sous-groupe de $(\mathbb{Z}, +)$ car il contient l'élément neutre (0), il est stable par addition et il est stable par passage à l'opposé.

</details>

## Exercice 12: Vérification d'idéal

**Problème:** On considère l'anneau $(\mathbb{Z}, +, \times)$. Montrer que l'ensemble $3\mathbb{Z}$ (les multiples de 3) est un idéal de $\mathbb{Z}$.

<details>
<summary>Solution</summary>

**Méthode:** Pour montrer que $I$ est un idéal d'un anneau $A$, on doit vérifier deux points : $I$ est un sous-groupe additif de $A$, et $I$ absorbe la multiplication par n'importe quel élément de $A$.

**Étapes:**

1.  **Vérifier que $(3\mathbb{Z}, +)$ est un sous-groupe de $(\mathbb{Z}, +)$**:

    - $0 = 3 \times 0 \in 3\mathbb{Z}$, donc l'ensemble est non vide.
    - Soient $x=3k_1$ et $y=3k_2$ dans $3\mathbb{Z}$. Leur somme $x+y = 3(k_1+k_2)$ est dans $3\mathbb{Z}$.
    - Soit $x=3k$ dans $3\mathbb{Z}$. Son opposé $-x = 3(-k)$ est dans $3\mathbb{Z}$.
      Donc, $3\mathbb{Z}$ est bien un sous-groupe additif de $\mathbb{Z}$.

2.  **Vérifier la propriété d'absorption**:
    On doit montrer que pour tout élément $x \in 3\mathbb{Z}$ et pour tout élément $a \in \mathbb{Z}$, le produit $ax$ est dans $3\mathbb{Z}$.
    Soit $x \in 3\mathbb{Z}$, donc $x = 3k$ pour un $k \in \mathbb{Z}$.
    Soit $a \in \mathbb{Z}$ un entier quelconque.
    Le produit est $ax = a(3k) = 3(ak)$.
    Puisque $a$ et $k$ sont des entiers, leur produit $ak$ est aussi un entier.
    Donc, $ax$ est de la forme $3 \times (\text{un entier})$, ce qui signifie que $ax \in 3\mathbb{Z}$.
    La propriété d'absorption est vérifiée.

**Réponse:** $3\mathbb{Z}$ est un idéal de $\mathbb{Z}$ car c'est un sous-groupe additif qui vérifie la propriété d'absorption (le produit d'un multiple de 3 par n'importe quel entier est encore un multiple de 3).

</details>
