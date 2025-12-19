---
id: ce55e96b
type: exercises
order: 11
title: Séries formelles - exercices (A)
tags:
  - Combinatoire
  - Séries formelles
  - Fonction génératrice
  - Récurrence
  - Binôme de Newton
createdAt: '2025-12-16T17:13:00.030Z'
level: regular
course: Graphes et Combinatoire
courseId: 7027276b
chapter: Séries formelles
chapterId: 4af35d6d
---
# Exercices "Séries formelles" (A)

---

## Exercice 1

**Problème :** Calcul d'un produit de Cauchy

Soient deux séries formelles définies dans $\mathbb{R}[[X]]$ :

$$ A(X) = \sum_{n \ge 0} X^n \quad \text{et} \quad B(X) = \sum_{n \ge 0} 2^n X^n $$

1. Écrire les 3 premiers termes de chaque série.
2. Calculer le coefficient $c_n$ du produit $C(X) = A(X)B(X)$ en utilisant la formule du produit de Cauchy.
3. En déduire une expression simplifiée pour $C(X)$.

<details>

<summary>Solution</summary>

**Méthode :** On utilise la définition du produit de convolution (produit de Cauchy) où le coefficient $c_n$ est la somme des produits $a_k b_{n-k}$. On reconnaît ensuite une somme géométrique finie.

**Étapes :**

1.  **Explicitation des séries :**
    *   $A(X) = 1 + X + X^2 + X^3 + \cdots$ (ici $a_n = 1$ pour tout $n$).
    *   $B(X) = 1 + 2X + 4X^2 + 8X^3 + \cdots$ (ici $b_n = 2^n$ pour tout $n$).

2.  **Calcul du coefficient $c_n$ :**

    La formule du produit de Cauchy donne :

    $$ c_n = \sum_{k=0}^n a_k b_{n-k} $$

    En substituant les valeurs des coefficients :

    $$ c_n = \sum_{k=0}^n (1) \cdot (2^{n-k}) = \sum_{k=0}^n 2^{n-k} $$

    On peut poser un changement d'indice $j = n-k$. Quand $k=0, j=n$ et quand $k=n, j=0$. L'ordre de sommation s'inverse mais la somme reste la même :

    $$ c_n = \sum_{j=0}^n 2^j $$

    Ceci est la somme des termes d'une suite géométrique de raison 2, de $1$ à $2^n$ ($n+1$ termes).

    $$ \sum_{j=0}^n 2^j = \frac{1(1 - 2^{n+1})}{1 - 2} = \frac{1 - 2^{n+1}}{-1} = 2^{n+1} - 1 $$

3.  **Expression finale :**

    $$ C(X) = \sum_{n \ge 0} (2^{n+1} - 1) X^n $$

**Réponse :** $C(X) = \sum_{n \ge 0} (2^{n+1} - 1) X^n$

</details>

---

## Exercice 2

**Problème :** Inversibilité et calcul récursif de l'inverse

Soit la série formelle $A(X) = 1 - X - X^2$.

1. Justifier pourquoi $A(X)$ est inversible dans $\mathbb{R}[[X]]$.
2. On note $B(X) = \sum_{n \ge 0} b_n X^n$ l'inverse de $A(X)$. En utilisant la relation $A(X)B(X) = 1$, calculer de manière récursive les coefficients $b_0, b_1, b_2$ et $b_3$.

<details>

<summary>Solution</summary>

**Méthode :** L'inversibilité dépend du terme constant. Pour trouver les coefficients de l'inverse, on écrit l'égalité du produit et on identifie les coefficients de chaque puissance de $X$, ce qui donne un système triangulaire (ou une récurrence).

**Étapes :**

1.  **Justification de l'inversibilité :**

    Le terme constant de $A(X)$ est $a_0 = 1$.

    Comme $1 \neq 0$ (et que 1 est inversible dans $\mathbb{R}$), la série $A(X)$ admet un inverse multiplicatif unique.

2.  **Calcul des coefficients $(b_n)$ :**

    On sait que $A(X)B(X) = 1$. Cela signifie que le terme constant du produit vaut 1, et tous les coefficients de $X^n$ pour $n \ge 1$ valent 0.

    Rappelons que $A(X) = 1 - 1X - 1X^2 + 0X^3 + \cdots$ (donc $a_0=1, a_1=-1, a_2=-1$ et $a_k=0$ pour $k>2$).

    *   **Pour $n=0$ (Terme constant) :**

        $a_0 b_0 = 1 \implies 1 \cdot b_0 = 1 \implies \mathbf{b_0 = 1}$.

    *   **Pour $n=1$ (Coefficient de $X$) :**

        $a_0 b_1 + a_1 b_0 = 0$

        $1 \cdot b_1 + (-1) \cdot 1 = 0 \implies b_1 - 1 = 0 \implies \mathbf{b_1 = 1}$.

    *   **Pour $n=2$ (Coefficient de $X^2$) :**

        $a_0 b_2 + a_1 b_1 + a_2 b_0 = 0$

        $1 \cdot b_2 + (-1) \cdot 1 + (-1) \cdot 1 = 0$

        $b_2 - 1 - 1 = 0 \implies b_2 - 2 = 0 \implies \mathbf{b_2 = 2}$.

    *   **Pour $n=3$ (Coefficient de $X^3$) :**

        $a_0 b_3 + a_1 b_2 + a_2 b_1 + a_3 b_0 = 0$ (sachant $a_3=0$)

        $1 \cdot b_3 + (-1) \cdot 2 + (-1) \cdot 1 + 0 = 0$

        $b_3 - 2 - 1 = 0 \implies \mathbf{b_3 = 3}$.

    *(Note : On reconnaît les nombres de Fibonacci $1, 1, 2, 3, 5\dots$)*

**Réponse :** $b_0=1, b_1=1, b_2=2, b_3=3$.

</details>

---

## Exercice 3

**Problème :** Coefficients binomiaux généralisés

Calculer les valeurs exactes des coefficients binomiaux généralisés suivants :

1. $\binom{-1}{5}$
2. $\binom{-3}{3}$
3. $\binom{1/2}{2}$

<details>

<summary>Solution</summary>

**Méthode :** On applique la définition $\binom{r}{k} = \frac{r(r-1)\cdots(r-k+1)}{k!}$ ou la propriété des binomiaux négatifs $\binom{-m}{k} = (-1)^k \binom{m+k-1}{k}$.

**Étapes :**

1.  **Calcul de $\binom{-1}{5}$ :**

    Utilisons la formule des binomiaux négatifs avec $m=1, k=5$ :

    $$ \binom{-1}{5} = (-1)^5 \binom{1+5-1}{5} = -1 \cdot \binom{5}{5} = -1 \cdot 1 = -1 $$

2.  **Calcul de $\binom{-3}{3}$ :**

    Méthode directe :

    $$ \binom{-3}{3} = \frac{-3 \cdot (-3-1) \cdot (-3-2)}{3!} = \frac{-3 \cdot (-4) \cdot (-5)}{3 \cdot 2 \cdot 1} = \frac{-60}{6} = -10 $$

    Ou via la formule ($m=3, k=3$) :

    $$ (-1)^3 \binom{3+3-1}{3} = -1 \cdot \binom{5}{3} = -1 \cdot \frac{5 \cdot 4}{2} = -10 $$

3.  **Calcul de $\binom{1/2}{2}$ :**

    Ici $r = 1/2$. Il faut utiliser la définition multiplicative :

    $$ \binom{1/2}{2} = \frac{\frac{1}{2} \left(\frac{1}{2} - 1\right)}{2!} $$

    $$ = \frac{\frac{1}{2} \cdot \left(-\frac{1}{2}\right)}{2} = \frac{-\frac{1}{4}}{2} = -\frac{1}{8} $$

**Réponse :** 1) $-1$, 2) $-10$, 3) $-\frac{1}{8}$

</details>

---

## Exercice 4

**Problème :** Théorème du binôme négatif

Donner le développement en série formelle de la fraction rationnelle suivante :

$$ F(X) = \frac{1}{(1-3X)^2} $$

Écrire le résultat sous la forme $\sum a_n X^n$ en explicitant $a_n$.

<details>

<summary>Solution</summary>

**Méthode :** On utilise le théorème du binôme généralisé pour $(1-U)^{-m}$ avec $U=3X$ et $m=2$.

**Étapes :**

1.  **Identification de la forme :**

    $$ F(X) = (1 - 3X)^{-2} $$

    C'est de la forme $(1-U)^{-m}$ avec $m=2$ et $U=3X$.

2.  **Application de la formule générale :**

    On sait que $(1-X)^{-m} = \sum_{n \ge 0} \binom{n+m-1}{n} X^n$.

    En remplaçant $X$ par $3X$ :

    $$ (1-3X)^{-2} = \sum_{n \ge 0} \binom{n+2-1}{n} (3X)^n $$

3.  **Simplification du coefficient :**

    Le coefficient binomial est $\binom{n+1}{n}$.

    On sait que $\binom{n+1}{n} = \binom{n+1}{1} = n+1$.

    Le terme en puissance est $(3X)^n = 3^n X^n$.

    Ainsi, le terme général $a_n$ est :

    $$ a_n = (n+1) 3^n $$

**Réponse :** $F(X) = \sum_{n \ge 0} (n+1) 3^n X^n$

</details>

---

## Exercice 5

**Problème :** Dérivation formelle et série géométrique

Soit $A(X) = \sum_{n \ge 0} X^n = \frac{1}{1-X}$.

1. Calculer la dérivée formelle $A'(X)$ terme à terme.
2. Calculer la dérivée de la fraction rationnelle $\frac{1}{1-X}$ en utilisant les règles usuelles de dérivation $(u/v)'$ ou $(u^n)'$.
3. En déduire l'identité (le développement en série) pour $\frac{1}{(1-X)^2}$.

<details>

<summary>Solution</summary>

**Méthode :** Comparer la dérivation terme à terme de la somme infinie avec la dérivation algébrique de la fraction rationnelle fermée.

**Étapes :**

1.  **Dérivation terme à terme :**

    $$ A(X) = 1 + X + X^2 + X^3 + \cdots + X^n + \cdots $$

    $$ A'(X) = 0 + 1 + 2X + 3X^2 + \cdots + nX^{n-1} + \cdots $$

    On peut réindexer la somme en posant $k=n-1$ (donc $n=k+1$) :

    $$ A'(X) = \sum_{k \ge 0} (k+1) X^k $$

2.  **Dérivation de la fraction :**

    On considère $f(X) = (1-X)^{-1}$.

    La dérivée est $f'(X) = -1 \cdot (1-X)^{-2} \cdot (-1)$ (règle de la chaîne).

    $$ f'(X) = \frac{1}{(1-X)^2} $$

3.  **Conclusion :**

    Puisque la dérivation formelle est linéaire et respecte les opérations, les deux résultats sont égaux :

    $$ \frac{1}{(1-X)^2} = \sum_{n \ge 0} (n+1) X^n $$

**Réponse :** $\frac{1}{(1-X)^2} = 1 + 2X + 3X^2 + \cdots$

</details>

---

## Exercice 6

**Problème :** Résolution d'une récurrence linéaire simple

Soit la suite $(a_n)_{n \in \mathbb{N}}$ définie par :

$$ a_0 = 2 $$

$$ a_n = 3a_{n-1} + 1 \quad \text{pour } n \ge 1 $$

Utiliser les séries génératrices pour trouver la formule explicite de $a_n$.

<details>

<summary>Solution</summary>

**Méthode :** Transformer la récurrence en équation sur la série génératrice $A(X)$, isoler $A(X)$, décomposer en éléments simples et développer.

**Étapes :**

1.  **Définition de la série génératrice :**

    Soit $A(X) = \sum_{n \ge 0} a_n X^n$.

2.  **Transformation de la récurrence :**

    On multiplie la relation $a_n = 3a_{n-1} + 1$ par $X^n$ et on somme pour $n \ge 1$ :

    $$ \sum_{n \ge 1} a_n X^n = 3 \sum_{n \ge 1} a_{n-1} X^n + \sum_{n \ge 1} 1 X^n $$

    Exprimons chaque terme en fonction de $A(X)$ :

    *   Membre de gauche : $A(X) - a_0 = A(X) - 2$.
    *   Premier terme de droite : $3X \sum_{n \ge 1} a_{n-1} X^{n-1} = 3X A(X)$.
    *   Second terme de droite : $\sum_{n \ge 1} X^n = \frac{X}{1-X}$ (série géométrique privée du terme constant 1, ou $X(1+X+\dots)$).

    L'équation devient :

    $$ A(X) - 2 = 3X A(X) + \frac{X}{1-X} $$

3.  **Isoler $A(X)$ :**

    $$ A(X)(1 - 3X) = 2 + \frac{X}{1-X} $$

    $$ A(X)(1 - 3X) = \frac{2(1-X) + X}{1-X} = \frac{2 - 2X + X}{1-X} = \frac{2 - X}{1-X} $$

    $$ A(X) = \frac{2 - X}{(1-X)(1-3X)} $$

4.  **Décomposition en éléments simples :**

    On cherche $\alpha, \beta$ tels que $\frac{2 - X}{(1-X)(1-3X)} = \frac{\alpha}{1-X} + \frac{\beta}{1-3X}$.

    Mise au même dénominateur : $\alpha(1-3X) + \beta(1-X) = 2-X$.

    *   Si $X=1$ : $\alpha(-2) = 1 \implies \alpha = -1/2$.
    *   Si $X=1/3$ : $\beta(2/3) = 2 - 1/3 = 5/3 \implies 2\beta = 5 \implies \beta = 5/2$.

    $$ A(X) = \frac{-1/2}{1-X} + \frac{5/2}{1-3X} $$

5.  **Développement en série :**

    $$ A(X) = -\frac{1}{2} \sum_{n \ge 0} X^n + \frac{5}{2} \sum_{n \ge 0} (3X)^n $$

    $$ a_n = -\frac{1}{2} + \frac{5}{2} 3^n = \frac{5 \cdot 3^n - 1}{2} $$

**Réponse :** $a_n = \frac{5 \cdot 3^n - 1}{2}$

</details>

---

## Exercice 7

**Problème :** Composition de séries

On considère les séries $A(X) = 1 + X$ et $B(X) = X - X^2$.

1. Peut-on définir la composée $C(X) = A(B(X))$ ? Justifier.
2. Si oui, calculer explicitement $C(X)$.
3. Peut-on définir la composée $D(X) = B(A(X))$ ? Justifier.

<details>

<summary>Solution</summary>

**Méthode :** Vérifier la condition sur le terme constant de la série intérieure ("celle qu'on met dedans"), puis effectuer le calcul algébrique.

**Étapes :**

1.  **Vérification pour $C(X) = A(B(X))$ :**

    La série intérieure est $B(X) = 0 + 1X - 1X^2$.

    Son terme constant est $b_0 = 0$.

    La condition $b_0=0$ est respectée, la composition est **bien définie**.

2.  **Calcul de $C(X)$ :**

    On remplace $X$ par $(X-X^2)$ dans l'expression de $A(X)$.

    $$ A(B(X)) = 1 + (X - X^2) = 1 + X - X^2 $$

3.  **Vérification pour $D(X) = B(A(X))$ :**

    La série intérieure est $A(X) = 1 + X$.

    Son terme constant est $a_0 = 1$.

    Comme $a_0 \neq 0$, la somme infinie définissant les coefficients de la composée impliquerait une somme infinie de termes constants non nuls (si $B$ était une série infinie). Même ici, bien que $B$ soit un polynôme fini, formellement dans le cadre des séries formelles générales, la composition n'est valide que si le terme constant intérieur est nul pour assurer la convergence coefficient par coefficient.

    *Note : Si on considère B et A juste comme des polynômes, on pourrait calculer $(1+X) - (1+X)^2$, mais dans la théorie générale des séries formelles $\mathcal{A}[[X]]$, la substitution n'est permise que si la série substituée n'a pas de terme constant.*

    **Conclusion stricte :** La composition n'est pas définie au sens des séries formelles standard.

**Réponse :** 1) Oui. 2) $1+X-X^2$. 3) Non (terme constant non nul).

</details>

---

## Exercice 8

**Problème :** Résolution d'une récurrence d'ordre 2

Soit la suite définie par :

$$ a_0 = 1, \quad a_1 = 4 $$

$$ a_n = 5a_{n-1} - 6a_{n-2} \quad \text{pour } n \ge 2 $$

Déterminer $a_n$ en utilisant la méthode des séries génératrices.

<details>

<summary>Solution</summary>

**Méthode :** Utiliser $A(X)$ pour transformer la relation $a_n - 5a_{n-1} + 6a_{n-2} = 0$ en une fraction rationnelle.

**Étapes :**

1.  **Equation fonctionnelle :**

    Soit $A(X) = \sum_{n \ge 0} a_n X^n$.

    Récurrence : $\sum_{n \ge 2} a_n X^n = 5 \sum_{n \ge 2} a_{n-1} X^n - 6 \sum_{n \ge 2} a_{n-2} X^n$.

    *   Gauche : $A(X) - a_0 - a_1 X = A(X) - 1 - 4X$.
    *   Droite terme 1 : $5X (A(X) - a_0) = 5X(A(X) - 1) = 5XA(X) - 5X$.
    *   Droite terme 2 : $-6X^2 A(X)$.

    Equation :

    $$ A(X) - 1 - 4X = 5XA(X) - 5X - 6X^2 A(X) $$

2.  **Isoler $A(X)$ :**

    Regroupons les termes en $A(X)$ à gauche :

    $$ A(X) (1 - 5X + 6X^2) = 1 + 4X - 5X = 1 - X $$

    $$ A(X) = \frac{1-X}{1 - 5X + 6X^2} $$

3.  **Factorisation du dénominateur :**

    $Q(X) = 1 - 5X + 6X^2$. On cherche les racines de $6x^2 - 5x + 1 = 0$ ou on factorise directement.

    $(1-2X)(1-3X) = 1 - 3X - 2X + 6X^2 = 1 - 5X + 6X^2$.

    Donc $A(X) = \frac{1-X}{(1-2X)(1-3X)}$.

4.  **Décomposition en éléments simples :**

    $$ \frac{1-X}{(1-2X)(1-3X)} = \frac{\alpha}{1-2X} + \frac{\beta}{1-3X} $$

    $$ \alpha(1-3X) + \beta(1-2X) = 1-X $$

    *   Si $X=1/2$ (annule $1-2X$) : $\alpha(1 - 3/2) = 1 - 1/2 \implies \alpha(-1/2) = 1/2 \implies \alpha = -1$.
    *   Si $X=1/3$ (annule $1-3X$) : $\beta(1 - 2/3) = 1 - 1/3 \implies \beta(1/3) = 2/3 \implies \beta = 2$.

    $$ A(X) = \frac{-1}{1-2X} + \frac{2}{1-3X} $$

5.  **Extraction du coefficient :**

    $$ a_n = -1 \cdot (2^n) + 2 \cdot (3^n) $$

    $$ a_n = 2 \cdot 3^n - 2^n $$

**Réponse :** $a_n = 2 \cdot 3^n - 2^n$

</details>

---

## Exercice 9

**Problème :** Série génératrice d'un polynôme

Soit $A(X)$ une série formelle. On dit que $A(X)$ est un polynôme si tous ses coefficients sont nuls à partir d'un certain rang.

Montrer que si $A(X)$ est un polynôme non nul, alors son inverse $1/A(X)$ n'est **jamais** un polynôme (sauf si $A(X)$ est une constante).

*Indice : Raisonner sur les degrés.*

<details>

<summary>Solution</summary>

**Méthode :** Raisonnement par l'absurde en utilisant la propriété du degré d'un produit de polynômes.

**Étapes :**

1.  **Hypothèse :**

    Supposons que $A(X)$ soit un polynôme de degré $d \ge 1$ (non constant).

    Supposons que son inverse $B(X)$ soit aussi un polynôme de degré $k \ge 0$.

2.  **Propriété du degré :**

    Dans l'anneau des polynômes, le degré du produit est la somme des degrés :

    $$ \deg(A(X) \cdot B(X)) = \deg(A(X)) + \deg(B(X)) = d + k $$

3.  **Contradiction :**

    On sait que $A(X)B(X) = 1$.

    Le degré du polynôme constant $1$ est $0$.

    Donc, on devrait avoir $d + k = 0$.

    Or, $d \ge 1$ et $k \ge 0$, donc $d+k \ge 1$.

    $0 = d+k$ est impossible.

4.  **Conclusion :**

    L'inverse $B(X)$ ne peut pas être un polynôme (il a une infinité de termes non nuls). C'est une véritable série formelle.

**Réponse :** Démonstration par l'absurde sur le degré.

</details>

---

## Exercice 10

**Problème :** Application - Dénombrement avec répétition

On cherche à déterminer le nombre de solutions entières $(x_1, x_2, x_3)$ à l'équation :

$$ x_1 + x_2 + x_3 = n \quad \text{avec } x_i \ge 0 $$

1. Écrire la série génératrice correspondant au choix d'un seul $x_i$ (somme des $X^k$ pour tous les $k$ possibles).
2. En déduire que la série génératrice du problème global est $A(X) = (1-X)^{-3}$.
3. Utiliser le théorème du binôme généralisé pour trouver le coefficient de $X^n$ (le nombre de solutions).

<details>

<summary>Solution</summary>

**Méthode :** Modélisation combinatoire par produit de séries, puis extraction du coefficient via binôme négatif.

**Étapes :**

1.  **Série pour une variable :**

    Chaque $x_i$ peut prendre n'importe quelle valeur entière positive $0, 1, 2, \dots$.

    Cela correspond au polynôme (série) :

    $$ S(X) = X^0 + X^1 + X^2 + \cdots = \sum_{k \ge 0} X^k = \frac{1}{1-X} $$

2.  **Série globale :**

    Comme on doit choisir $x_1$ ET $x_2$ ET $x_3$ et que leurs valeurs s'ajoutent dans l'exposant (car $X^{x_1} \cdot X^{x_2} \cdot X^{x_3} = X^{x_1+x_2+x_3} = X^n$), la série génératrice du problème est le produit des séries individuelles :

    $$ A(X) = S(X) \cdot S(X) \cdot S(X) = \left(\frac{1}{1-X}\right)^3 = (1-X)^{-3} $$

3.  **Extraction du coefficient :**

    D'après le théorème du binôme généralisé pour $(1-X)^{-m}$ avec $m=3$ :

    $$ [X^n]A(X) = \binom{n+m-1}{n} = \binom{n+3-1}{n} = \binom{n+2}{n} $$

    Par symétrie $\binom{n}{k} = \binom{n}{n-k}$, on a :

    $$ \binom{n+2}{n} = \binom{n+2}{2} = \frac{(n+2)(n+1)}{2} $$

**Réponse :** Le nombre de solutions est $\frac{(n+2)(n+1)}{2}$.

</details>
