---
id: '168342e5'
type: exercises
order: 11
title: Division euclidienne - exercices (A)
tags:
  - algèbre
  - anneau
  - division euclidienne
  - polynôme
  - idéal
  - bézout
createdAt: '2025-10-12T20:59:11.112Z'
level: regular
course: Algèbre
courseId: 3b74b601
chapter: Division euclidienne
chapterId: e5009a65
---
# Exercices "Division euclidienne" (A)

## Exercice 1

**Problème:** Soit l'anneau $A = (\mathbb{Z}/12\mathbb{Z})[X]$. On considère les polynômes $P(X) = \overline{4}X^2 + \overline{3}X + \overline{1}$ et $Q(X) = \overline{3}X + \overline{2}$.

1.  Calculez $P(X) + Q(X)$ et déterminez son degré.
2.  Calculez $P(X) \cdot Q(X)$ et déterminez son degré.
3.  Comparez $\text{deg}(P \cdot Q)$ avec $\text{deg}(P) + \text{deg}(Q)$. Qu'observez-vous ?

<details>

<summary>Solution</summary>

**Méthode:** Les opérations sur les polynômes dans $(\mathbb{Z}/12\mathbb{Z})[X]$ suivent les règles standards de l'addition et de la multiplication, mais les calculs sur les coefficients sont effectués modulo 12. Une attention particulière doit être portée au degré du produit, car l'anneau $\mathbb{Z}/12\mathbb{Z}$ n'est pas intègre.

**Étapes:**

1.  **Calcul de la somme :**

    On additionne les coefficients des termes de même degré.

    $P(X) + Q(X) = (\overline{4}X^2 + \overline{3}X + \overline{1}) + (\overline{3}X + \overline{2})$

    $P(X) + Q(X) = \overline{4}X^2 + (\overline{3}+\overline{3})X + (\overline{1}+\overline{2})$

    $P(X) + Q(X) = \overline{4}X^2 + \overline{6}X + \overline{3}$

    Le degré de la somme est $\text{deg}(P+Q) = 2$.

2.  **Calcul du produit :**

    On utilise la distributivité, en effectuant les calculs des coefficients modulo 12.

    $P(X) \cdot Q(X) = (\overline{4}X^2 + \overline{3}X + \overline{1}) \cdot (\overline{3}X + \overline{2})$

    $= \overline{4}X^2(\overline{3}X + \overline{2}) + \overline{3}X(\overline{3}X + \overline{2}) + \overline{1}(\overline{3}X + \overline{2})$

    $= (\overline{12}X^3 + \overline{8}X^2) + (\overline{9}X^2 + \overline{6}X) + (\overline{3}X + \overline{2})$

    On regroupe les termes de même degré :

    $= \overline{12}X^3 + (\overline{8}+\overline{9})X^2 + (\overline{6}+\overline{3})X + \overline{2}$

    $= \overline{0}X^3 + \overline{17}X^2 + \overline{9}X + \overline{2}$

    Comme $\overline{17} \equiv \overline{5} \pmod{12}$, on a :

    $P(X) \cdot Q(X) = \overline{5}X^2 + \overline{9}X + \overline{2}$

    Le degré du produit est $\text{deg}(P \cdot Q) = 2$.

3.  **Comparaison des degrés :**

    On a $\text{deg}(P) = 2$ et $\text{deg}(Q) = 1$.

    La somme des degrés est $\text{deg}(P) + \text{deg}(Q) = 2+1=3$.

    On observe que $\text{deg}(P \cdot Q) = 2$, ce qui est strictement inférieur à $\text{deg}(P) + \text{deg}(Q) = 3$.

    Cette situation est possible car l'anneau des coefficients $\mathbb{Z}/12\mathbb{Z}$ n'est pas intègre. Le produit des coefficients dominants de $P$ et $Q$, qui sont $\overline{4}$ et $\overline{3}$, est $\overline{4} \cdot \overline{3} = \overline{12} \equiv \overline{0} \pmod{12}$. L'annulation de ce produit a fait chuter le degré du polynôme produit.

**Réponse:**

1.  $P(X)+Q(X) = \overline{4}X^2 + \overline{6}X + \overline{3}$, $\text{deg}(P+Q) = 2$
2.  $P(X) \cdot Q(X) = \overline{5}X^2 + \overline{9}X + \overline{2}$, $\text{deg}(P \cdot Q) = 2$
3.  $\text{deg}(P \cdot Q) < \text{deg}(P) + \text{deg}(Q)$, car $\mathbb{Z}/12\mathbb{Z}$ n'est pas un anneau intègre.

</details>

## Exercice 2

**Problème:** Expliquez pourquoi l'anneau $\mathbb{Z}[X]$ des polynômes à coefficients entiers n'est pas un anneau euclidien. Pour cela, essayez d'effectuer la division euclidienne du polynôme $A(X)=X$ par le polynôme $B(X)=2$.

<details>

<summary>Solution</summary>

**Méthode:** On utilise la définition d'un anneau euclidien. Si $\mathbb{Z}[X]$ était euclidien, il devrait exister une division euclidienne pour tout couple de polynômes $(A, B)$ avec $B \ne 0$. Le stathme usuel pour les polynômes est le degré. Nous allons montrer par l'absurde que la division de $A(X)=X$ par $B(X)=2$ est impossible.

**Étapes:**

1.  **Hypothèse :** Supposons que $\mathbb{Z}[X]$ est un anneau euclidien. Le stathme naturel serait le degré, $\delta(P) = \text{deg}(P)$.
2.  **Application de la division euclidienne :** On veut diviser $A(X) = X$ par $B(X) = 2$. Selon la définition d'un anneau euclidien, il devrait exister un quotient $Q(X) \in \mathbb{Z}[X]$ et un reste $R(X) \in \mathbb{Z}[X]$ tels que :

    $A(X) = B(X) \cdot Q(X) + R(X)$ et $\text{deg}(R) < \text{deg}(B)$.

3.  **Analyse de l'équation :**

    L'équation s'écrit : $X = 2 \cdot Q(X) + R(X)$.

    Le degré du diviseur est $\text{deg}(B) = \text{deg}(2) = 0$.

    La condition sur le reste est donc $\text{deg}(R) < 0$, ce qui signifie que $\text{deg}(R) = -\infty$. Le seul polynôme de degré $-\infty$ est le polynôme nul.

    Donc, si une telle division était possible, on devrait avoir $R(X)=0$.

4.  **Contradiction :**

    L'équation devient alors $X = 2 \cdot Q(X)$.

    Soit $Q(X) = a_n X^n + \dots + a_1 X + a_0$ un polynôme de $\mathbb{Z}[X]$ (les $a_i$ sont des entiers).

    Alors $2 \cdot Q(X) = 2a_n X^n + \dots + 2a_1 X + 2a_0$.

    Pour que $2 \cdot Q(X)$ soit égal à $X$, on doit identifier les coefficients.

    -   Le coefficient de $X$ doit être 1, donc $2a_1 = 1$.
    -   Tous les autres coefficients doivent être nuls.

    L'équation $2a_1 = 1$ n'a pas de solution dans l'anneau des entiers $\mathbb{Z}$, car $a_1$ devrait être $1/2$.

5.  **Conclusion :** Il n'existe pas de polynôme $Q(X)$ à coefficients entiers tel que $X = 2 \cdot Q(X)$. La division euclidienne de $X$ par $2$ est donc impossible dans $\mathbb{Z}[X]$. Par conséquent, $\mathbb{Z}[X]$ n'est pas un anneau euclidien.

**Réponse:** L'anneau $\mathbb{Z}[X]$ n'est pas euclidien car la division euclidienne n'est pas toujours possible. Par exemple, pour diviser $X$ par $2$, il faudrait trouver $Q(X), R(X) \in \mathbb{Z}[X]$ tels que $X = 2Q(X) + R(X)$ avec $\text{deg}(R) < \text{deg}(2)=0$. Ceci impose $R(X)=0$, et donc $X=2Q(X)$. Cette équation n'a pas de solution dans $\mathbb{Z}[X]$, car le coefficient de $X$ dans $2Q(X)$ est toujours un entier pair.

</details>

## Exercice 3

**Problème:** Dans l'anneau $\mathbb{Q}[X]$, effectuez la division euclidienne du polynôme $A(X) = 2X^4 - 3X^3 + X^2 + 5X - 3$ par le polynôme $B(X) = X^2 - 2X + 3$.

<details>

<summary>Solution</summary>

**Méthode:** On utilise l'algorithme de division longue (ou division posée) pour les polynômes, qui est analogue à la division longue pour les entiers. À chaque étape, on cherche à éliminer le terme de plus haut degré du dividende partiel.

**Étapes:**

1.  **Initialisation :**

    Dividende : $A(X) = 2X^4 - 3X^3 + X^2 + 5X - 3$

    Diviseur : $B(X) = X^2 - 2X + 3$

2.  **Étape 1 :**

    On divise le terme de plus haut degré de $A(X)$, soit $2X^4$, par le terme de plus haut degré de $B(X)$, soit $X^2$.

    $2X^4 / X^2 = 2X^2$. C'est le premier terme du quotient.

    On multiplie $B(X)$ par $2X^2$ : $2X^2(X^2 - 2X + 3) = 2X^4 - 4X^3 + 6X^2$.

    On soustrait ce résultat de $A(X)$ :

    $(2X^4 - 3X^3 + X^2 + 5X - 3) - (2X^4 - 4X^3 + 6X^2) = X^3 - 5X^2 + 5X - 3$.

3.  **Étape 2 :**

    Le nouveau dividende est $X^3 - 5X^2 + 5X - 3$.

    On divise son terme de plus haut degré, $X^3$, par $X^2$ : $X^3 / X^2 = X$. C'est le deuxième terme du quotient.

    On multiplie $B(X)$ par $X$ : $X(X^2 - 2X + 3) = X^3 - 2X^2 + 3X$.

    On soustrait :

    $(X^3 - 5X^2 + 5X - 3) - (X^3 - 2X^2 + 3X) = -3X^2 + 2X - 3$.

4.  **Étape 3 :**

    Le nouveau dividende est $-3X^2 + 2X - 3$.

    On divise son terme de plus haut degré, $-3X^2$, par $X^2$ : $-3X^2 / X^2 = -3$. C'est le troisième terme du quotient.

    On multiplie $B(X)$ par $-3$ : $-3(X^2 - 2X + 3) = -3X^2 + 6X - 9$.

    On soustrait :

    $(-3X^2 + 2X - 3) - (-3X^2 + 6X - 9) = -4X + 6$.

5.  **Conclusion :**

    Le quotient est $Q(X) = 2X^2 + X - 3$.

    Le dernier reste est $R(X) = -4X + 6$.

    Le degré du reste, $\text{deg}(R) = 1$, est strictement inférieur au degré du diviseur, $\text{deg}(B) = 2$. L'algorithme est terminé.

    On a bien : $A(X) = B(X) \cdot Q(X) + R(X)$.

    $(X^2 - 2X + 3)(2X^2 + X - 3) + (-4X + 6) = 2X^4 - 3X^3 + X^2 + 9X - 9 - 4X + 6 = 2X^4 - 3X^3 + X^2 + 5X - 3$.

**Réponse:** Le quotient est $Q(X) = 2X^2 + X - 3$ et le reste est $R(X) = -4X + 6$. L'équation de la division euclidienne est :

$$ 2X^4 - 3X^3 + X^2 + 5X - 3 = (X^2 - 2X + 3)(2X^2 + X - 3) + (-4X + 6) $$

</details>

## Exercice 4

**Problème:** Soient les entiers $a=126$ et $b=46$.

1.  Calculez le PGCD de $a$ et $b$ en utilisant l'algorithme d'Euclide.
2.  Trouvez un couple d'entiers $(u, v)$ tel que $au+bv = \text{pgcd}(a,b)$ (identité de Bézout).

<details>

<summary>Solution</summary>

**Méthode:** On applique d'abord l'algorithme d'Euclide en effectuant des divisions successives pour trouver le PGCD (le dernier reste non nul). Ensuite, on "remonte" les équations de ces divisions pour exprimer le PGCD comme une combinaison linéaire de $a$ et $b$.

**Étapes:**

1.  **Algorithme d'Euclide :**
    -   $126 = 2 \cdot 46 + 34 \quad (L_1)$
    -   $46 = 1 \cdot 34 + 12 \quad (L_2)$
    -   $34 = 2 \cdot 12 + 10 \quad (L_3)$
    -   $12 = 1 \cdot 10 + 2 \quad (L_4)$
    -   $10 = 5 \cdot 2 + 0$

    Le dernier reste non nul est 2. Donc, $\text{pgcd}(126, 46) = 2$.

2.  **Algorithme d'Euclide étendu (remontée) :**

    On part de l'avant-dernière ligne $(L_4)$ et on exprime le PGCD :

    $2 = 12 - 1 \cdot 10$

    On utilise la ligne précédente $(L_3)$ pour exprimer le reste $10$ : $10 = 34 - 2 \cdot 12$.

    On substitue cette expression de $10$ dans l'équation pour $2$ :

    $2 = 12 - 1 \cdot (34 - 2 \cdot 12) = 12 - 34 + 2 \cdot 12 = 3 \cdot 12 - 1 \cdot 34$

    On utilise la ligne $(L_2)$ pour exprimer le reste $12$ : $12 = 46 - 1 \cdot 34$.

    On substitue :

    $2 = 3 \cdot (46 - 1 \cdot 34) - 1 \cdot 34 = 3 \cdot 46 - 3 \cdot 34 - 1 \cdot 34 = 3 \cdot 46 - 4 \cdot 34$

    Enfin, on utilise la ligne $(L_1)$ pour exprimer le reste $34$ : $34 = 126 - 2 \cdot 46$.

    On substitue :

    $2 = 3 \cdot 46 - 4 \cdot (126 - 2 \cdot 46) = 3 \cdot 46 - 4 \cdot 126 + 8 \cdot 46$

    $2 = (3+8) \cdot 46 - 4 \cdot 126 = 11 \cdot 46 - 4 \cdot 126$

    On a donc l'identité $126(-4) + 46(11) = 2$.

    Un couple de coefficients de Bézout est $(u,v) = (-4, 11)$.

**Réponse:**

1.  $\text{pgcd}(126, 46) = 2$
2.  Un couple $(u,v)$ est $(-4, 11)$, ce qui donne l'identité de Bézout : $126 \cdot (-4) + 46 \cdot 11 = 2$.

</details>

## Exercice 5

**Problème:** Dans l'anneau $\mathbb{R}[X]$, on considère les polynômes $A(X) = X^3 + 2X^2 - X - 2$ et $B(X) = X^2 - 1$.

1.  Calculez le PGCD de $A(X)$ et $B(X)$.
2.  Trouvez deux polynômes $U(X)$ et $V(X)$ de $\mathbb{R}[X]$ tels que $A(X)U(X) + B(X)V(X) = \text{pgcd}(A(X), B(X))$.

<details>

<summary>Solution</summary>

**Méthode:** On applique l'algorithme d'Euclide pour les polynômes. Le PGCD est le dernier reste non nul, rendu unitaire (en divisant par son coefficient dominant). Ensuite, on remonte les divisions pour trouver les polynômes de Bézout $U(X)$ et $V(X)$.

**Étapes:**

1.  **Algorithme d'Euclide pour les polynômes :**
    -   On divise $A(X)$ par $B(X)$ :

        $X^3 + 2X^2 - X - 2 = (X+2)(X^2-1) + 0$.

        La division donne $X^3 + 2X^2 - X - 2 = (X^2-1)(X+2)$.

        Le reste de la première division est $R_1(X)=0$.

        Cela signifie que $B(X)$ divise $A(X)$.

    -   Dans ce cas, le PGCD est simplement $B(X)$ (ou un polynôme associé).

        Le PGCD unitaire est $X^2-1$.

        *Note : Si le reste n'était pas nul, on continuerait l'algorithme.*

        Par exemple, si $A(X) = X^3+1$ et $B(X) = X^2+1$.

        $X^3+1 = X(X^2+1) + (-X+1)$. Reste $R_1(X) = -X+1$.

        $X^2+1 = (-X-1)(-X+1) + 2$. Reste $R_2(X) = 2$.

        Le dernier reste non nul est 2. Le PGCD unitaire est 1.

2.  **Identité de Bézout :**

    Puisque $B(X)$ divise $A(X)$, on a $A(X) = Q(X)B(X)$ où $Q(X)=X+2$.

    On peut écrire $A(X) - (X+2)B(X) = 0$.

    Le PGCD est $D(X) = X^2-1 = B(X)$.

    On cherche $U(X)$ et $V(X)$ tels que $A(X)U(X) + B(X)V(X) = B(X)$.

    Une solution évidente est de prendre $U(X) = 0$ et $V(X) = 1$.

    On a bien $A(X) \cdot 0 + B(X) \cdot 1 = B(X)$.

**Réponse:**

1.  Comme $A(X) = (X+2)(X^2-1)$, $B(X)$ divise $A(X)$, donc $\text{pgcd}(A(X), B(X)) = X^2-1$.
2.  Une solution pour l'identité de Bézout est $U(X) = 0$ et $V(X) = 1$.

</details>

## Exercice 6

**Problème:** Soit $I$ l'idéal de $\mathbb{R}[X]$ engendré par les polynômes $P(X) = X^3 - 8$ et $Q(X) = X^2 + X - 6$.

Comme $\mathbb{R}[X]$ est un anneau principal, $I$ est un idéal principal. Trouvez le polynôme unitaire $D(X)$ tel que $I = (D(X))$.

<details>

<summary>Solution</summary>

**Méthode:** L'idéal engendré par $P(X)$ et $Q(X)$, noté $I=(P(X), Q(X))$, est l'ensemble des combinaisons linéaires $P(X)U(X) + Q(X)V(X)$. Dans un anneau principal, cet idéal est aussi engendré par un seul élément, qui est le PGCD de $P(X)$ et $Q(X)$. Il suffit donc de calculer $\text{pgcd}(P(X), Q(X))$.

**Étapes:**

1.  **Calculer le PGCD de $P(X)$ et $Q(X)$ avec l'algorithme d'Euclide.**

    $P(X) = X^3 - 8$

    $Q(X) = X^2 + X - 6$

2.  **Première division : diviser $P(X)$ par $Q(X)$.**

    Par division longue :

    $(X^3 - 8) = (X-1)(X^2+X-6) + (7X - 14)$.

    Le premier reste est $R_1(X) = 7X - 14$.

3.  **Deuxième division : diviser $Q(X)$ par $R_1(X)$.**

    $Q(X) = X^2 + X - 6$. On peut simplifier $R_1(X)$ en le rendant unitaire pour faciliter le calcul : $R'_1(X) = \frac{1}{7}R_1(X) = X-2$. Le PGCD sera le même.

    Divisons $Q(X)$ par $X-2$. On peut utiliser la division synthétique (ou de Horner) puisque le diviseur est de degré 1. La racine est 2.

    $Q(2) = 2^2 + 2 - 6 = 4+2-6=0$.

    Puisque $Q(2)=0$, $(X-2)$ divise $Q(X)$.

    $X^2 + X - 6 = (X-2)(X+3)$.

    Le reste de la division de $Q(X)$ par $(X-2)$ est 0.

4.  **Conclusion de l'algorithme.**

    Le dernier reste non nul (avant simplification) était $R_1(X) = 7X-14$.

    Le PGCD est donc $7X-14$.

    Le générateur unitaire de l'idéal est obtenu en divisant le PGCD par son coefficient dominant (7).

    $D(X) = \frac{1}{7}(7X-14) = X-2$.

5.  **Vérification.**

    L'idéal $I = (X^3-8, X^2+X-6)$ est donc égal à l'idéal $(X-2)$.

    On peut vérifier que $X-2$ divise bien les deux polynômes.

    $X^3-8 = (X-2)(X^2+2X+4)$.

    $X^2+X-6 = (X-2)(X+3)$.

    C'est correct.

**Réponse:** L'idéal $I$ est engendré par le polynôme unitaire $D(X) = X-2$. Donc $I = (X-2)$.

</details>

## Exercice 7

**Problème:** Soit le polynôme $P(X) = X^4 + X^2 - 2 \in \mathbb{R}[X]$.

1.  Décomposez $P(X)$ en produit de facteurs irréductibles dans $\mathbb{R}[X]$.
2.  Décomposez $P(X)$ en produit de facteurs irréductibles dans $\mathbb{C}[X]$.

<details>

<summary>Solution</summary>

**Méthode:**

1.  Pour la décomposition dans $\mathbb{R}[X]$, on cherche d'abord les racines réelles et les facteurs de degré 1. Ensuite, on cherche des facteurs de degré 2 qui n'ont pas de racines réelles. On peut faire un changement de variable $Y=X^2$ pour trouver les racines de $Y^2+Y-2$.
2.  Pour la décomposition dans $\mathbb{C}[X]$, on sait que tout polynôme se scinde en facteurs de degré 1 (théorème de d'Alembert-Gauss). On cherche donc toutes les racines complexes du polynôme.

**Étapes:**

1.  **Décomposition dans $\mathbb{R}[X]$ :**
    -   On pose $Y=X^2$. L'équation $P(X)=0$ devient $Y^2+Y-2=0$.
    -   C'est une équation du second degré en $Y$. Le discriminant est $\Delta = 1^2 - 4(1)(-2) = 1+8=9$.
    -   Les solutions pour $Y$ sont $Y_1 = \frac{-1-\sqrt{9}}{2} = -2$ et $Y_2 = \frac{-1+\sqrt{9}}{2} = 1$.
    -   On revient à $X$ :
        -   $X^2 = Y_1 = -2$. Cette équation n'a pas de solution dans $\mathbb{R}$. Le polynôme $X^2+2$ est donc un facteur irréductible de $P(X)$ dans $\mathbb{R}[X]$.
        -   $X^2 = Y_2 = 1$. Cette équation a pour solutions $X=1$ et $X=-1$. Les polynômes $X-1$ et $X+1$ sont donc des facteurs de $P(X)$.
    -   La décomposition de $P(X)$ est donc le produit de ces facteurs :

        $P(X) = (X-1)(X+1)(X^2+2)$.

    -   Vérifions les facteurs : $(X-1)$, $(X+1)$ sont irréductibles (degré 1). $(X^2+2)$ est irréductible dans $\mathbb{R}[X]$ car son discriminant est $\Delta = 0^2 - 4(1)(2) = -8 < 0$.

2.  **Décomposition dans $\mathbb{C}[X]$ :**
    -   On repart de la décomposition dans $\mathbb{R}[X]$: $P(X) = (X-1)(X+1)(X^2+2)$.
    -   Les facteurs de degré 1 sont déjà irréductibles dans $\mathbb{C}[X]$.
    -   On s'intéresse au facteur $X^2+2$. Dans $\mathbb{C}$, on peut le factoriser en trouvant ses racines.
    -   $X^2 = -2 \implies X = \pm \sqrt{-2} \implies X = \pm i\sqrt{2}$.
    -   Donc, $X^2+2 = (X - i\sqrt{2})(X + i\sqrt{2})$.
    -   En combinant tous les facteurs, on obtient la décomposition complète dans $\mathbb{C}[X]$ :

        $P(X) = (X-1)(X+1)(X - i\sqrt{2})(X + i\sqrt{2})$.

    -   Tous les facteurs sont de degré 1, donc ils sont irréductibles dans $\mathbb{C}[X]$.

**Réponse:**

1.  Dans $\mathbb{R}[X]$, la décomposition est $P(X) = (X-1)(X+1)(X^2+2)$.
2.  Dans $\mathbb{C}[X]$, la décomposition est $P(X) = (X-1)(X+1)(X - i\sqrt{2})(X + i\sqrt{2})$.

</details>

## Exercice 8

**Problème:** Dans un anneau intègre, un élément premier est toujours irréductible. La réciproque est vraie dans un anneau principal, mais pas toujours en général.

Considérons l'anneau $A = \mathbb{Z}[i\sqrt{5}] = \{a+ib\sqrt{5} \mid a,b \in \mathbb{Z}\}$. Dans cet anneau, on a l'égalité $6 = 2 \cdot 3 = (1+i\sqrt{5})(1-i\sqrt{5})$. On admet que les éléments $2$, $3$, $1+i\sqrt{5}$ et $1-i\sqrt{5}$ sont tous irréductibles dans $A$.

En utilisant cette information, montrez que l'élément $2$ est irréductible mais pas premier dans $A$.

<details>

<summary>Solution</summary>

**Méthode:** On utilise les définitions d'élément irréductible et d'élément premier.

- **Irréductible :** L'énoncé nous demande de l'admettre.
- **Premier :** Un élément $p$ est premier si, pour tous $a, b \in A$, $p|ab \implies p|a$ ou $p|b$.

Nous allons montrer que $2$ ne vérifie pas cette condition de divisibilité.

**Étapes:**

1.  **Vérifier la condition "irréductible" :** Par hypothèse de l'énoncé, on admet que $2$ est irréductible dans $A=\mathbb{Z}[i\sqrt{5}]$.

2.  **Vérifier la condition "premier" :**
    -   On part de l'égalité $6 = (1+i\sqrt{5})(1-i\sqrt{5})$.
    -   Comme $6 = 2 \cdot 3$, on peut dire que $2$ divise $6$.
    -   Donc, $2$ divise le produit $(1+i\sqrt{5})(1-i\sqrt{5})$.

3.  **Appliquer la définition d'un élément premier :**

    Si $2$ était premier, alors du fait que $2 | (1+i\sqrt{5})(1-i\sqrt{5})$, on devrait avoir :

    $2 | (1+i\sqrt{5})$   OU   $2 | (1-i\sqrt{5})$.

4.  **Tester les conditions de divisibilité :**
    -   Est-ce que $2$ divise $1+i\sqrt{5}$ ?

        Si c'était le cas, il existerait un élément $z = a+ib\sqrt{5} \in A$ tel que $1+i\sqrt{5} = 2(a+ib\sqrt{5}) = 2a + i(2b)\sqrt{5}$.

        Par identification des parties réelle et imaginaire (coefficient de $i\sqrt{5}$), on aurait :

        $1 = 2a$ et $1 = 2b$.

        Ces équations n'ont pas de solution pour $a, b \in \mathbb{Z}$. Donc $2$ ne divise pas $1+i\sqrt{5}$.

    -   Est-ce que $2$ divise $1-i\sqrt{5}$ ?

        De même, il existerait $z = a+ib\sqrt{5} \in A$ tel que $1-i\sqrt{5} = 2(a+ib\sqrt{5})$.

        Cela donnerait $1=2a$ et $-1=2b$, qui n'ont pas de solution dans $\mathbb{Z}$. Donc $2$ ne divise pas $1-i\sqrt{5}$.

5.  **Conclusion :**

    On a trouvé une situation où $2$ divise un produit, mais ne divise aucun des facteurs. Par conséquent, $2$ ne satisfait pas la définition d'un élément premier.

**Réponse:** L'élément $2$ est irréductible par hypothèse. Cependant, $2$ n'est pas premier car il divise le produit $(1+i\sqrt{5})(1-i\sqrt{5}) = 6$, mais il ne divise ni $1+i\sqrt{5}$ ni $1-i\sqrt{5}$ dans l'anneau $\mathbb{Z}[i\sqrt{5}]$.

</details>

## Exercice 9

**Problème:** Soit la matrice $A = \begin{pmatrix} 2 & 1 \\ 2 & 3 \end{pmatrix} \in M_2(\mathbb{R})$.

1.  Calculez le polynôme caractéristique $\chi_A(X)$ de A.
2.  Vérifiez le théorème de Cayley-Hamilton, c'est-à-dire que $\chi_A(A) = 0$.
3.  Déterminez le polynôme minimal $M_A(X)$ de A.

<details>

<summary>Solution</summary>

**Méthode:**

1. Le polynôme caractéristique est $\chi_A(X) = \det(XI_2 - A)$.
2. On remplace $X$ par $A$ dans l'expression de $\chi_A(X)$ et on vérifie si on obtient la matrice nulle.
3. Le polynôme minimal $M_A(X)$ divise le polynôme caractéristique $\chi_A(X)$. On teste les diviseurs unitaires de $\chi_A(X)$ pour trouver celui de plus bas degré qui annule $A$.

**Étapes:**

1.  **Calcul du polynôme caractéristique :**

    $\chi_A(X) = \det(XI_2 - A) = \det \begin{pmatrix} X-2 & -1 \\ -2 & X-3 \end{pmatrix}$

    $\chi_A(X) = (X-2)(X-3) - (-1)(-2)$

    $\chi_A(X) = X^2 - 5X + 6 - 2 = X^2 - 5X + 4$.

2.  **Vérification de Cayley-Hamilton :**

    On doit vérifier que $A^2 - 5A + 4I_2 = 0$.

    -   Calculons $A^2$ :

        $A^2 = \begin{pmatrix} 2 & 1 \\ 2 & 3 \end{pmatrix} \begin{pmatrix} 2 & 1 \\ 2 & 3 \end{pmatrix} = \begin{pmatrix} 4+2 & 2+3 \\ 4+6 & 2+9 \end{pmatrix} = \begin{pmatrix} 6 & 5 \\ 10 & 11 \end{pmatrix}$.

    -   Calculons $A^2 - 5A + 4I_2$ :

        $\begin{pmatrix} 6 & 5 \\ 10 & 11 \end{pmatrix} - 5 \begin{pmatrix} 2 & 1 \\ 2 & 3 \end{pmatrix} + 4 \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}$

        $= \begin{pmatrix} 6 & 5 \\ 10 & 11 \end{pmatrix} - \begin{pmatrix} 10 & 5 \\ 10 & 15 \end{pmatrix} + \begin{pmatrix} 4 & 0 \\ 0 & 4 \end{pmatrix}$

        $= \begin{pmatrix} 6-10+4 & 5-5+0 \\ 10-10+0 & 11-15+4 \end{pmatrix} = \begin{pmatrix} 0 & 0 \\ 0 & 0 \end{pmatrix}$.

    Le théorème de Cayley-Hamilton est bien vérifié.

3.  **Détermination du polynôme minimal :**
    -   Le polynôme minimal $M_A(X)$ doit diviser le polynôme caractéristique $\chi_A(X) = X^2 - 5X + 4$.
    -   Factorisons $\chi_A(X)$. Les racines de $X^2-5X+4=0$ sont $X=1$ et $X=4$.

        Donc, $\chi_A(X) = (X-1)(X-4)$.

    -   Les diviseurs unitaires de $\chi_A(X)$ sont $1$, $X-1$, $X-4$ et $(X-1)(X-4)$.
    -   Le polynôme minimal ne peut pas être $1$ (qui n'annule jamais une matrice).
    -   Testons les diviseurs de degré 1 :
        -   $P_1(X) = X-1$. $P_1(A) = A-I = \begin{pmatrix} 2-1 & 1 \\ 2 & 3-1 \end{pmatrix} = \begin{pmatrix} 1 & 1 \\ 2 & 2 \end{pmatrix} \ne 0$.
        -   $P_2(X) = X-4$. $P_2(A) = A-4I = \begin{pmatrix} 2-4 & 1 \\ 2 & 3-4 \end{pmatrix} = \begin{pmatrix} -2 & 1 \\ 2 & -1 \end{pmatrix} \ne 0$.
    -   Puisqu'aucun polynôme de degré 1 n'annule $A$, le polynôme minimal doit être de degré 2.
    -   Comme $M_A(X)$ doit diviser $\chi_A(X)$ et être unitaire, la seule possibilité est $M_A(X) = \chi_A(X)$.

**Réponse:**

1.  $\chi_A(X) = X^2 - 5X + 4$
2.  Le calcul montre que $A^2 - 5A + 4I_2 = 0$.
3.  Le polynôme minimal est $M_A(X) = X^2 - 5X + 4$.

</details>

## Exercice 10

**Problème:** Soit la matrice $A = \begin{pmatrix} 0 & -1 \\ 1 & 2 \end{pmatrix}$. En utilisant son polynôme minimal, calculez $A^n$ pour tout $n \in \mathbb{N}$.

<details>

<summary>Solution</summary>

**Méthode:** On cherche d'abord le polynôme minimal $M_A(X)$. L'égalité $M_A(A)=0$ nous donne une relation de récurrence sur les puissances de $A$. Ensuite, on utilise la division euclidienne du polynôme $X^n$ par $M_A(X)$ pour exprimer $A^n$ en fonction de $I$ et $A$.

**Étapes:**

1.  **Trouver le polynôme minimal de A:**
    -   Polynôme caractéristique : $\chi_A(X) = \det(XI-A) = \det \begin{pmatrix} X & 1 \\ -1 & X-2 \end{pmatrix} = X(X-2) - (-1) = X^2 - 2X + 1 = (X-1)^2$.
    -   Le polynôme minimal $M_A(X)$ divise $\chi_A(X)$. Les diviseurs unitaires sont $1$, $X-1$, $(X-1)^2$.
    -   Testons $X-1$ : $A-I = \begin{pmatrix} -1 & -1 \\ 1 & 1 \end{pmatrix} \ne 0$.
    -   Donc le polynôme minimal est $M_A(X) = (X-1)^2 = X^2 - 2X + 1$.

2.  **Utiliser la relation du polynôme minimal :**

    $M_A(A)=0 \implies A^2 - 2A + I = 0$, soit $A^2 = 2A - I$.

    Cette relation permet de réduire les puissances de $A$.

3.  **Effectuer la division euclidienne de $X^n$ par $M_A(X)$ :**

    On divise $X^n$ par $M_A(X) = (X-1)^2$. Il existe $Q(X)$ et $R(X)$ tels que :

    $X^n = Q(X)(X-1)^2 + R(X)$, avec $\text{deg}(R) < 2$.

    Donc, $R(X)$ est de la forme $aX+b$.

    $X^n = Q(X)(X-1)^2 + aX+b$.

4.  **Trouver les coefficients $a$ et $b$ :**
    -   On évalue l'équation en la racine du diviseur, ici $X=1$.

        $1^n = Q(1)(1-1)^2 + a(1)+b \implies 1 = a+b$.

    -   Comme la racine est double, on peut dériver l'équation par rapport à $X$ avant d'évaluer.

        $nX^{n-1} = Q'(X)(X-1)^2 + Q(X) \cdot 2(X-1) + a$.

    -   On évalue la dérivée en $X=1$ :

        $n(1)^{n-1} = 0 + 0 + a \implies n = a$.

    -   On résout le système : $a=n$ et $a+b=1 \implies b=1-n$.
    -   Le reste est donc $R(X) = nX + (1-n)$.

5.  **Calculer $A^n$ :**

    On évalue la relation de division en $X=A$ :

    $A^n = Q(A)(A-I)^2 + nA + (1-n)I$.

    Comme $(A-I)^2 = M_A(A)=0$, le premier terme s'annule.

    Il reste : $A^n = nA + (1-n)I$.

6.  **Exprimer le résultat final sous forme de matrice :**

    $A^n = n \begin{pmatrix} 0 & -1 \\ 1 & 2 \end{pmatrix} + (1-n) \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}$

    $A^n = \begin{pmatrix} 0 & -n \\ n & 2n \end{pmatrix} + \begin{pmatrix} 1-n & 0 \\ 0 & 1-n \end{pmatrix} = \begin{pmatrix} 1-n & -n \\ n & 1+n \end{pmatrix}$.

**Réponse:** Pour tout $n \in \mathbb{N}$,

$$ A^n = \begin{pmatrix} 1-n & -n \\ n & 1+n \end{pmatrix} $$

</details>
