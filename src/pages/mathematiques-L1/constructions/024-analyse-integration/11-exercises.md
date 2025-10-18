---
id: 6b926650
type: exercises
order: 11
title: "Analyse: Intégration - exercices (A)"
tags:
  - analyse
  - suites
  - limites
  - continuité
  - dérivabilité
  - intégration
createdAt: '2025-10-18T19:12:12.801Z'
level: regular
course: Constructions et raisonnements mathématiques
courseId: d2e11e03
chapter: "Analyse: Intégration"
chapterId: a5489a34
---
# Exercices "Analyse: Intégration" (A)

## Exercice 1

**Problème:** Soit la fonction $f$ définie sur l'intervalle $[0, 5]$ par :

$$ f(x) = \begin{cases} 3 & \text{si } 0 \le x < 1 \\ -2 & \text{si } x = 1 \\ 1 & \text{si } 1 < x \le 3 \\ 4 & \text{si } 3 < x \le 5 \end{cases} $$

Cette fonction est-elle en escalier ? Si oui, donnez une subdivision adaptée et calculez son intégrale $\int_0^5 f(x) dx$.

<details>

<summary>Solution</summary>

**Méthode:**

Pour montrer que la fonction est en escalier, nous devons trouver une subdivision de l'intervalle $[0, 5]$ telle que la fonction soit constante sur chaque sous-intervalle ouvert. Ensuite, nous appliquerons la formule de l'intégrale d'une fonction en escalier, qui est la somme des aires des rectangles formés par le graphe de la fonction.

**Étapes:**

1.  **Vérifier la définition d'une fonction en escalier.**

    La fonction est définie par morceaux. Sur les intervalles ouverts $]0, 1[$, $]1, 3[$ et $]3, 5[$, la fonction $f$ prend des valeurs constantes (respectivement 3, 1 et 4).

    Nous pouvons donc choisir la subdivision $\sigma = \{0, 1, 3, 5\}$. Cette subdivision est adaptée à $f$.

    La fonction est donc bien une fonction en escalier. Notez que la valeur de $f$ aux points de la subdivision (comme $f(1)=-2$) n'influence pas le calcul de l'intégrale.

2.  **Identifier les constantes sur chaque sous-intervalle.**
    - Sur $]x_0, x_1[ = ]0, 1[$, la valeur constante est $c_1 = 3$.
    - Sur $]x_1, x_2[ = ]1, 3[$, la valeur constante est $c_2 = 1$.
    - Sur $]x_2, x_3[ = ]3, 5[$, la valeur constante est $c_3 = 4$.

3.  **Appliquer la formule de l'intégrale.**

    La formule est $\int_a^b f = \sum_{i=1}^n (x_i - x_{i-1}) c_i$.

    Ici, $a=0$, $b=5$, et la subdivision est $\{x_0, x_1, x_2, x_3\} = \{0, 1, 3, 5\}$.

    $$ \int_0^5 f(x) dx = (x_1 - x_0)c_1 + (x_2 - x_1)c_2 + (x_3 - x_2)c_3 $$

4.  **Calculer la valeur de l'intégrale.**

    $$ \int_0^5 f(x) dx = (1 - 0) \times 3 + (3 - 1) \times 1 + (5 - 3) \times 4 $$

    $$ = 1 \times 3 + 2 \times 1 + 2 \times 4 $$

    $$ = 3 + 2 + 8 = 13 $$

**Réponse:**

Oui, la fonction $f$ est en escalier. Une subdivision adaptée est $\sigma = \{0, 1, 3, 5\}$ et son intégrale est $\int_0^5 f(x) dx = 13$.

</details>

## Exercice 2

**Problème:** Soit $h(x) = E(2x)$ la fonction partie entière de $2x$ sur l'intervalle $[0, 2]$.

1.  Tracez le graphe de la fonction $h$.
2.  Montrez que $h$ est une fonction en escalier et donnez une subdivision adaptée.
3.  Calculez $\int_0^2 h(x) dx$.

<details>

<summary>Solution</summary>

**Méthode:**

La fonction partie entière $E(y)$ change de valeur à chaque fois que $y$ franchit un entier. Nous devons donc identifier les points de l'intervalle $[0, 2]$ où $2x$ devient un entier. Ces points formeront notre subdivision. L'intégrale sera alors la somme des aires des rectangles visibles sur le graphe.

**Étapes:**

1.  **Analyser la fonction et trouver les points de discontinuité.**

    La fonction $h(x) = E(2x)$ est constante tant que $2x$ reste entre deux entiers consécutifs. Les changements de valeur se produisent lorsque $2x$ est un entier.

    Pour $x \in [0, 2]$, $2x$ varie dans $[0, 4]$. Les valeurs entières atteintes par $2x$ sont 1, 2, 3, 4.

    - $2x = 1 \implies x = 0.5$
    - $2x = 2 \implies x = 1$
    - $2x = 3 \implies x = 1.5$
    - $2x = 4 \implies x = 2$

    Les points de discontinuité sont donc $0.5, 1, 1.5$. Cela nous suggère une subdivision.

2.  **Définir la fonction par morceaux et tracer son graphe.**
    - Si $0 \le x < 0.5$, alors $0 \le 2x < 1$, donc $h(x) = E(2x) = 0$.
    - Si $0.5 \le x < 1$, alors $1 \le 2x < 2$, donc $h(x) = E(2x) = 1$.
    - Si $1 \le x < 1.5$, alors $2 \le 2x < 3$, donc $h(x) = E(2x) = 2$.
    - Si $1.5 \le x < 2$, alors $3 \le 2x < 4$, donc $h(x) = E(2x) = 3$.
    - Si $x = 2$, alors $2x=4$, donc $h(x) = E(4) = 4$.

    Le graphe est une succession de segments horizontaux (un escalier).

3.  **Confirmer que la fonction est en escalier et donner une subdivision.**

    La fonction est constante sur les intervalles ouverts $]0, 0.5[$, $]0.5, 1[$, $]1, 1.5[$ et $]1.5, 2[$.

    Une subdivision adaptée est donc $\sigma = \{0, 0.5, 1, 1.5, 2\}$.

4.  **Calculer l'intégrale.**

    On utilise la formule de l'intégrale d'une fonction en escalier avec la subdivision $\sigma$.

    $$ \int_0^2 h(x) dx = (0.5 - 0) \times 0 + (1 - 0.5) \times 1 + (1.5 - 1) \times 2 + (2 - 1.5) \times 3 $$

    $$ = 0.5 \times 0 + 0.5 \times 1 + 0.5 \times 2 + 0.5 \times 3 $$

    $$ = 0 + 0.5 + 1 + 1.5 = 3 $$

**Réponse:**

La fonction $h$ est en escalier avec une subdivision adaptée $\sigma = \{0, 0.5, 1, 1.5, 2\}$. Son intégrale est $\int_0^2 E(2x) dx = 3$.

</details>

## Exercice 3

**Problème:** En utilisant la définition avec les intégrales supérieure et inférieure, montrez que la fonction $f(x) = 2x$ est intégrable au sens de Riemann sur l'intervalle $[0, 1]$.

<details>

<summary>Solution</summary>

**Méthode:**

Pour montrer que $f$ est intégrable, nous devons montrer que son intégrale inférieure $I_{0,1}^-(f)$ est égale à son intégrale supérieure $I_{0,1}^+(f)$. Pour ce faire, nous allons construire, pour une subdivision régulière de $[0, 1]$, une fonction en escalier $\varphi_n$ minorant $f$ et une fonction en escalier $\psi_n$ majorant $f$. Nous calculerons leurs intégrales et montrerons qu'elles convergent vers la même limite lorsque le pas de la subdivision tend vers zéro.

**Étapes:**

1.  **Choisir une subdivision.**

    Soit $n \in \mathbb{N}^*$. On choisit la subdivision régulière de $[0, 1]$:

    $\sigma_n = \{x_0, x_1, \dots, x_n\}$ avec $x_i = \frac{i}{n}$ pour $i=0, \dots, n$.

    Le pas de la subdivision est $x_i - x_{i-1} = \frac{1}{n}$.

2.  **Construire une fonction en escalier minorante $\varphi_n$.**

    Sur chaque intervalle $[x_{i-1}, x_i] = [\frac{i-1}{n}, \frac{i}{n}]$, la fonction $f(x)=2x$ est croissante. La plus petite valeur est donc atteinte en $x_{i-1}$.

    Définissons $\varphi_n(x) = f(x_{i-1}) = 2\frac{i-1}{n}$ pour $x \in [x_{i-1}, x_i[$.

    On a bien $\varphi_n(x) \le f(x)$ pour tout $x \in [0, 1]$.

3.  **Calculer l'intégrale de $\varphi_n$.**

    $$ \int_0^1 \varphi_n = \sum_{i=1}^n (x_i - x_{i-1}) f(x_{i-1}) = \sum_{i=1}^n \frac{1}{n} \left(2\frac{i-1}{n}\right) = \frac{2}{n^2} \sum_{i=1}^n (i-1) $$

    En posant $j=i-1$, la somme devient $\sum_{j=0}^{n-1} j = \frac{(n-1)n}{2}$.

    $$ \int_0^1 \varphi_n = \frac{2}{n^2} \frac{(n-1)n}{2} = \frac{n-1}{n} = 1 - \frac{1}{n} $$

4.  **Construire une fonction en escalier majorante $\psi_n$.**

    Sur chaque intervalle $[x_{i-1}, x_i]$, la plus grande valeur de $f$ est atteinte en $x_i$.

    Définissons $\psi_n(x) = f(x_i) = 2\frac{i}{n}$ pour $x \in [x_{i-1}, x_i[$.

    On a bien $f(x) \le \psi_n(x)$ pour tout $x \in [0, 1]$.

5.  **Calculer l'intégrale de $\psi_n$.**

    $$ \int_0^1 \psi_n = \sum_{i=1}^n (x_i - x_{i-1}) f(x_i) = \sum_{i=1}^n \frac{1}{n} \left(2\frac{i}{n}\right) = \frac{2}{n^2} \sum_{i=1}^n i $$

    On sait que $\sum_{i=1}^n i = \frac{n(n+1)}{2}$.

    $$ \int_0^1 \psi_n = \frac{2}{n^2} \frac{n(n+1)}{2} = \frac{n+1}{n} = 1 + \frac{1}{n} $$

6.  **Conclure.**

    Par définition, pour tout $n$, on a : $\int_0^1 \varphi_n \le I_{0,1}^-(f) \le I_{0,1}^+(f) \le \int_0^1 \psi_n$.

    Donc, $1 - \frac{1}{n} \le I_{0,1}^-(f) \le I_{0,1}^+(f) \le 1 + \frac{1}{n}$.

    En faisant tendre $n$ vers l'infini, $\frac{1}{n} \to 0$. L'encadrement devient :

    $1 \le I_{0,1}^-(f) \le I_{0,1}^+(f) \le 1$.

    Cela implique que $I_{0,1}^-(f) = I_{0,1}^+(f) = 1$.

    Puisque l'intégrale inférieure est égale à l'intégrale supérieure, la fonction $f$ est intégrable sur $[0, 1]$.

**Réponse:**

La fonction $f(x)=2x$ est intégrable sur $[0,1]$ et son intégrale vaut 1. On peut le vérifier avec le calcul de primitive : $\int_0^1 2x dx = [x^2]_0^1 = 1^2 - 0^2 = 1$.

</details>

## Exercice 4

**Problème:** Expliquez pourquoi la fonction de Dirichlet $g$, définie sur $[0, 1]$ par $g(x) = 1$ si $x \in \mathbb{Q}$ et $g(x) = 0$ si $x \notin \mathbb{Q}$, n'est pas intégrable au sens de Riemann.

<details>

<summary>Solution</summary>

**Méthode:**

Nous allons montrer que l'intégrale inférieure et l'intégrale supérieure de la fonction de Dirichlet sont différentes. Pour cela, nous allons considérer une subdivision quelconque et déterminer la borne supérieure des intégrales des fonctions en escalier minorantes et la borne inférieure des intégrales des fonctions en escalier majorantes.

**Étapes:**

1.  **Analyser les fonctions en escalier minorantes.**

    Soit $\varphi$ une fonction en escalier sur $[0, 1]$ telle que $\varphi(x) \le g(x)$ pour tout $x \in [0, 1]$. Soit $\sigma = \{x_0, \dots, x_n\}$ une subdivision adaptée à $\varphi$.

    Sur chaque intervalle ouvert $]x_{i-1}, x_i[$, $\varphi$ prend une valeur constante $c_i$.

    Or, tout intervalle $]x_{i-1}, x_i[$ contient des nombres irrationnels. Pour ces nombres $x$, $g(x)=0$.

    La condition $\varphi(x) \le g(x)$ implique donc que $c_i \le 0$ pour tout $i$.

    L'intégrale de $\varphi$ est $\int_0^1 \varphi = \sum_{i=1}^n (x_i - x_{i-1})c_i$. Comme chaque $c_i \le 0$ et $(x_i - x_{i-1}) > 0$, on a $\int_0^1 \varphi \le 0$.

    L'intégrale inférieure, $I_{0,1}^-(g)$, est la borne supérieure de ces intégrales. On peut choisir la fonction $\varphi(x)=0$ pour tout $x$, qui est en escalier, minore $g$, et dont l'intégrale est 0. Donc $I_{0,1}^-(g) = 0$.

2.  **Analyser les fonctions en escalier majorantes.**

    Soit $\psi$ une fonction en escalier sur $[0, 1]$ telle que $\psi(x) \ge g(x)$ pour tout $x \in [0, 1]$. Soit $\sigma$ une subdivision adaptée.

    Sur chaque intervalle ouvert $]x_{i-1}, x_i[$, $\psi$ prend une valeur constante $d_i$.

    Or, tout intervalle $]x_{i-1}, x_i[$ contient des nombres rationnels (par densité de $\mathbb{Q}$ dans $\mathbb{R}$). Pour ces nombres $x$, $g(x)=1$.

    La condition $\psi(x) \ge g(x)$ implique donc que $d_i \ge 1$ pour tout $i$.

    L'intégrale de $\psi$ est $\int_0^1 \psi = \sum_{i=1}^n (x_i - x_{i-1})d_i \ge \sum_{i=1}^n (x_i - x_{i-1}) \times 1 = (x_n - x_0) = 1-0 = 1$.

    L'intégrale supérieure, $I_{0,1}^+(g)$, est la borne inférieure de ces intégrales. On peut choisir la fonction $\psi(x)=1$ pour tout $x$, qui est en escalier, majore $g$, et dont l'intégrale est 1. Donc $I_{0,1}^+(g) = 1$.

3.  **Comparer les intégrales inférieure et supérieure.**

    Nous avons trouvé que $I_{0,1}^-(g) = 0$ et $I_{0,1}^+(g) = 1$.

    Puisque $I_{0,1}^-(g) \ne I_{0,1}^+(g)$, la fonction de Dirichlet n'est pas intégrable au sens de Riemann sur $[0, 1]$.

**Réponse:**

La fonction de Dirichlet n'est pas intégrable au sens de Riemann sur $[0,1]$ car son intégrale inférieure est $0$ alors que son intégrale supérieure est $1$.

</details>

## Exercice 5

**Problème:** Soit $f$ la fonction définie sur $[-1, 2]$ par :

$$ f(x) = \begin{cases} x^2 & \text{si } -1 \le x \le 1 \\ 2-x & \text{si } 1 < x \le 2 \end{cases} $$

Justifiez que $f$ est intégrable et calculez $\int_{-1}^2 f(x) dx$.

<details>

<summary>Solution</summary>

**Méthode:**

La fonction $f$ est définie par morceaux. Nous allons d'abord vérifier qu'elle est continue par morceaux, ce qui garantit son intégrabilité. Ensuite, nous utiliserons la relation de Chasles pour décomposer l'intégrale en deux parties, correspondant à chaque morceau de la définition de $f$. Enfin, nous calculerons chaque intégrale en utilisant le théorème fondamental de l'analyse (calcul de primitives).

**Étapes:**

1.  **Justifier l'intégrabilité de $f$.**
    - Sur l'intervalle $[-1, 1]$, $f(x) = x^2$ est une fonction continue.
    - Sur l'intervalle $]1, 2]$, $f(x) = 2-x$ est une fonction continue.
    - Au point de jonction $x=1$, nous vérifions les limites :
        - $\lim_{x \to 1^-} f(x) = \lim_{x \to 1^-} x^2 = 1$.
        - $\lim_{x \to 1^+} f(x) = \lim_{x \to 1^+} (2-x) = 2-1 = 1$.

    Comme la limite à gauche est égale à la limite à droite et à $f(1)=1^2=1$, la fonction est même continue sur $[-1, 2]$.

    Toute fonction continue sur un segment est intégrable, donc $f$ est intégrable sur $[-1, 2]$.

2.  **Utiliser la relation de Chasles.**

    On décompose l'intégrale au point de changement de définition, $x=1$.

    $$ \int_{-1}^2 f(x) dx = \int_{-1}^1 f(x) dx + \int_1^2 f(x) dx $$

3.  **Calculer la première intégrale.**

    Sur $[-1, 1]$, $f(x) = x^2$. Une primitive de $x^2$ est $\frac{x^3}{3}$.

    $$ \int_{-1}^1 x^2 dx = \left[ \frac{x^3}{3} \right]_{-1}^1 = \frac{1^3}{3} - \frac{(-1)^3}{3} = \frac{1}{3} - \frac{-1}{3} = \frac{2}{3} $$

4.  **Calculer la deuxième intégrale.**

    Sur $[1, 2]$, $f(x) = 2-x$. Une primitive de $2-x$ est $2x - \frac{x^2}{2}$.

    $$ \int_1^2 (2-x) dx = \left[ 2x - \frac{x^2}{2} \right]_1^2 = \left(2(2) - \frac{2^2}{2}\right) - \left(2(1) - \frac{1^2}{2}\right) $$

    $$ = (4 - 2) - \left(2 - \frac{1}{2}\right) = 2 - \frac{3}{2} = \frac{1}{2} $$

5.  **Additionner les résultats.**

    $$ \int_{-1}^2 f(x) dx = \frac{2}{3} + \frac{1}{2} = \frac{4}{6} + \frac{3}{6} = \frac{7}{6} $$

**Réponse:**

La fonction $f$ est continue (et donc continue par morceaux) sur $[-1, 2]$, ce qui garantit son intégrabilité. Son intégrale est $\int_{-1}^2 f(x) dx = \frac{7}{6}$.

</details>

## Exercice 6

**Problème:** Calculez l'intégrale $I = \int_0^3 |x - 2| dx$.

<details>

<summary>Solution</summary>

**Méthode:**

La fonction $f(x) = |x-2|$ est continue sur $[0, 3]$, donc elle est intégrable. Pour calculer son intégrale, nous devons d'abord exprimer la fonction sans la valeur absolue. Cela se fait en étudiant le signe de l'expression à l'intérieur de la valeur absolue, $x-2$. Ensuite, on utilise la relation de Chasles pour décomposer l'intégrale en morceaux sur lesquels la fonction a une expression plus simple.

**Étapes:**

1.  **Exprimer la fonction sans valeur absolue.**

    L'expression $x-2$ change de signe en $x=2$.

    - Si $x - 2 \ge 0$, c'est-à-dire $x \ge 2$, alors $|x-2| = x-2$.
    - Si $x - 2 < 0$, c'est-à-dire $x < 2$, alors $|x-2| = -(x-2) = 2-x$.

    Sur l'intervalle $[0, 3]$, la fonction peut donc s'écrire :

    $$ |x-2| = \begin{cases} 2-x & \text{si } 0 \le x < 2 \\ x-2 & \text{si } 2 \le x \le 3 \end{cases} $$

2.  **Décomposer l'intégrale avec la relation de Chasles.**

    Le point de changement de définition est $x=2$. On sépare l'intégrale en ce point :

    $$ I = \int_0^3 |x-2| dx = \int_0^2 |x-2| dx + \int_2^3 |x-2| dx $$

    $$ I = \int_0^2 (2-x) dx + \int_2^3 (x-2) dx $$

3.  **Calculer chaque intégrale.**
    - Pour la première partie :

    $$ \int_0^2 (2-x) dx = \left[ 2x - \frac{x^2}{2} \right]_0^2 = \left(2(2) - \frac{2^2}{2}\right) - \left(2(0) - \frac{0^2}{2}\right) = (4-2) - 0 = 2 $$

    - Pour la seconde partie :

    $$ \int_2^3 (x-2) dx = \left[ \frac{x^2}{2} - 2x \right]_2^3 = \left(\frac{3^2}{2} - 2(3)\right) - \left(\frac{2^2}{2} - 2(2)\right) $$

    $$ = \left(\frac{9}{2} - 6\right) - (2-4) = \left(-\frac{3}{2}\right) - (-2) = 2 - \frac{3}{2} = \frac{1}{2} $$

4.  **Additionner les résultats.**

    $$ I = 2 + \frac{1}{2} = \frac{5}{2} $$

    Géométriquement, l'intégrale correspond à l'aire de deux triangles. Le premier a une base de 2 et une hauteur de 2 (aire = $\frac{1}{2} \times 2 \times 2 = 2$). Le second a une base de 1 et une hauteur de 1 (aire = $\frac{1}{2} \times 1 \times 1 = \frac{1}{2}$). La somme des aires est bien $2 + 1/2 = 5/2$.

**Réponse:**

$$ \int_0^3 |x - 2| dx = \frac{5}{2} $$

</details>

## Exercice 7

**Problème:** En utilisant les sommes de Riemann, calculez la valeur de l'intégrale $\int_0^2 x^2 dx$.

On rappelle la formule $\sum_{k=1}^n k^2 = \frac{n(n+1)(2n+1)}{6}$.

<details>

<summary>Solution</summary>

**Méthode:**

Nous allons approcher l'intégrale par une somme de Riemann en utilisant une subdivision régulière de l'intervalle $[0, 2]$. Nous choisirons les points marqueurs à l'extrémité droite de chaque sous-intervalle. Ensuite, nous calculerons la somme et trouverons sa limite lorsque le nombre de sous-intervalles $n$ tend vers l'infini. Cette limite, par définition, est la valeur de l'intégrale.

**Étapes:**

1.  **Définir la subdivision et les points marqueurs.**

    On subdivise l'intervalle $[0, 2]$ en $n$ sous-intervalles de même longueur.

    La longueur de chaque sous-intervalle est $\Delta x = \frac{2-0}{n} = \frac{2}{n}$.

    Les points de la subdivision sont $x_k = 0 + k \Delta x = \frac{2k}{n}$ pour $k=0, 1, \dots, n$.

    On choisit les points marqueurs à droite de chaque intervalle : $y_k = x_k = \frac{2k}{n}$.

2.  **Écrire la somme de Riemann.**

    La somme de Riemann $S_n$ pour la fonction $f(x) = x^2$ est :

    $$ S_n = \sum_{k=1}^n f(y_k) \Delta x = \sum_{k=1}^n f\left(\frac{2k}{n}\right) \frac{2}{n} $$

    $$ S_n = \sum_{k=1}^n \left(\frac{2k}{n}\right)^2 \frac{2}{n} = \sum_{k=1}^n \frac{4k^2}{n^2} \frac{2}{n} = \frac{8}{n^3} \sum_{k=1}^n k^2 $$

3.  **Calculer la somme en utilisant la formule donnée.**

    On remplace la somme $\sum_{k=1}^n k^2$ par sa formule :

    $$ S_n = \frac{8}{n^3} \left( \frac{n(n+1)(2n+1)}{6} \right) $$

    $$ S_n = \frac{4}{3} \frac{n(n+1)(2n+1)}{n^3} $$

4.  **Simplifier l'expression et trouver la limite.**

    On peut réécrire l'expression en séparant les termes en $n$ :

    $$ S_n = \frac{4}{3} \frac{n}{n} \frac{n+1}{n} \frac{2n+1}{n} = \frac{4}{3} \times 1 \times \left(1 + \frac{1}{n}\right) \times \left(2 + \frac{1}{n}\right) $$

    Maintenant, on calcule la limite quand $n \to \infty$ :

    $$ \lim_{n \to \infty} S_n = \lim_{n \to \infty} \frac{4}{3} \left(1 + \frac{1}{n}\right) \left(2 + \frac{1}{n}\right) $$

    Comme $\lim_{n \to \infty} \frac{1}{n} = 0$, on obtient :

    $$ \lim_{n \to \infty} S_n = \frac{4}{3} (1+0)(2+0) = \frac{4}{3} \times 2 = \frac{8}{3} $$

5.  **Conclusion.**

    La limite des sommes de Riemann est l'intégrale :

    $$ \int_0^2 x^2 dx = \frac{8}{3} $$

    On peut vérifier ce résultat avec une primitive : $\int_0^2 x^2 dx = [\frac{x^3}{3}]_0^2 = \frac{2^3}{3} - \frac{0^3}{3} = \frac{8}{3}$.

**Réponse:**

$$ \int_0^2 x^2 dx = \frac{8}{3} $$

</details>

## Exercice 8

**Problème:** Déterminez la limite de la suite $(U_n)$ définie par :

$$ U_n = \sum_{k=1}^n \frac{k}{n^2 + k^2} $$

<details>

<summary>Solution</summary>

**Méthode:**

L'expression de $U_n$ ressemble à une somme. Pour la reconnaître comme une somme de Riemann, nous devons la manipuler pour la mettre sous la forme $\sum_{k=1}^n \frac{1}{n} f\left(\frac{k}{n}\right)$ ou une forme similaire. L'intervalle d'intégration sera typiquement $[0, 1]$. La limite de la suite sera alors l'intégrale de la fonction $f$ sur cet intervalle.

**Étapes:**

1.  **Manipuler l'expression pour faire apparaître le terme $\frac{1}{n}$.**

    On factorise le terme dominant au dénominateur, ici $n^2$, pour faire apparaître des termes en $\frac{k}{n}$.

    $$ U_n = \sum_{k=1}^n \frac{k}{n^2(1 + \frac{k^2}{n^2})} = \sum_{k=1}^n \frac{k}{n^2(1 + (\frac{k}{n})^2)} $$

2.  **Isoler le terme $\frac{1}{n}$ et identifier la fonction $f$.**

    On peut réécrire la somme :

    $$ U_n = \sum_{k=1}^n \frac{1}{n} \frac{k/n}{1 + (k/n)^2} $$

    Cette expression est de la forme $\sum_{k=1}^n \frac{1}{n} f\left(\frac{k}{n}\right)$ avec $\Delta x = \frac{1-0}{n} = \frac{1}{n}$ et les points marqueurs $x_k = \frac{k}{n}$.

    On identifie la fonction $f(x)$ en remplaçant $\frac{k}{n}$ par $x$ :

    $$ f(x) = \frac{x}{1+x^2} $$

3.  **Identifier l'intégrale correspondante.**

    La limite de la somme de Riemann est l'intégrale de $f(x)$ sur l'intervalle $[0, 1]$.

    $$ \lim_{n \to \infty} U_n = \int_0^1 \frac{x}{1+x^2} dx $$

4.  **Calculer l'intégrale.**

    Cette intégrale se calcule par changement de variable ou en reconnaissant une forme du type $\frac{u'}{u}$.

    Posons $u(x) = 1+x^2$. Alors $u'(x) = 2x$.

    $$ \int_0^1 \frac{x}{1+x^2} dx = \frac{1}{2} \int_0^1 \frac{2x}{1+x^2} dx = \frac{1}{2} \int_0^1 \frac{u'(x)}{u(x)} dx $$

    Une primitive de $\frac{u'}{u}$ est $\ln|u|$.

    $$ = \frac{1}{2} \left[ \ln(1+x^2) \right]_0^1 = \frac{1}{2} (\ln(1+1^2) - \ln(1+0^2)) $$

    $$ = \frac{1}{2} (\ln(2) - \ln(1)) = \frac{1}{2} \ln(2) $$

**Réponse:**

$$ \lim_{n \to \infty} U_n = \frac{\ln(2)}{2} $$

</details>

## Exercice 9

**Problème:** Écrire la formule de Taylor avec reste intégral pour la fonction $f(x) = \cos(x)$ à l'ordre $n=3$ au point $a=0$.

<details>

<summary>Solution</summary>

**Méthode:**

La formule de Taylor avec reste intégral à l'ordre $n$ en $a$ est :

$f(b) = \sum_{k=0}^n \frac{f^{(k)}(a)}{k!} (b-a)^k + \int_a^b \frac{f^{(n+1)}(t)}{n!} (b-t)^n dt$.

Nous devons donc calculer les dérivées successives de $f(x)=\cos(x)$ jusqu'à l'ordre $n+1=4$, les évaluer en $a=0$, puis appliquer la formule.

**Étapes:**

1.  **Calculer les dérivées successives de $f(x) = \cos(x)$.**
    - $f(x) = \cos(x)$
    - $f'(x) = -\sin(x)$
    - $f''(x) = -\cos(x)$
    - $f'''(x) = \sin(x)$
    - $f^{(4)}(x) = \cos(x)$

2.  **Évaluer les dérivées au point $a=0$.**
    - $f(0) = \cos(0) = 1$
    - $f'(0) = -\sin(0) = 0$
    - $f''(0) = -\cos(0) = -1$
    - $f'''(0) = \sin(0) = 0$
    - $f^{(4)}(t) = \cos(t)$ (on garde la variable $t$ pour le reste intégral).

3.  **Construire le polynôme de Taylor d'ordre 3.**

    Le polynôme de Taylor $P_3(b)$ (en utilisant la variable $b=x$ pour plus de clarté) est :

    $$ P_3(x) = f(0) + f'(0)x + \frac{f''(0)}{2!}x^2 + \frac{f'''(0)}{3!}x^3 $$

    $$ P_3(x) = 1 + (0)x + \frac{-1}{2}x^2 + \frac{0}{6}x^3 = 1 - \frac{x^2}{2} $$

4.  **Écrire le reste intégral $R_3(x)$.**

    La formule du reste est $R_n(b) = \int_a^b \frac{f^{(n+1)}(t)}{n!} (b-t)^n dt$.

    Avec $n=3$, $a=0$ et $b=x$ :

    $$ R_3(x) = \int_0^x \frac{f^{(4)}(t)}{3!} (x-t)^3 dt $$

    $$ R_3(x) = \int_0^x \frac{\cos(t)}{6} (x-t)^3 dt $$

5.  **Assembler la formule complète.**

    $$ f(x) = P_3(x) + R_3(x) $$

    $$ \cos(x) = 1 - \frac{x^2}{2} + \int_0^x \frac{\cos(t)}{6} (x-t)^3 dt $$

**Réponse:**

La formule de Taylor avec reste intégral pour $f(x) = \cos(x)$ à l'ordre 3 en $a=0$ est :

$$ \cos(x) = 1 - \frac{x^2}{2} + \int_0^x \frac{(x-t)^3}{6} \cos(t) dt $$

</details>

## Exercice 10

**Problème:** On considère la fonction $f(x) = e^x$.

1.  Écrire la formule de Taylor avec reste intégral pour $f(x)$ à l'ordre $n=2$ en $a=0$.
2.  Utiliser cette formule pour approximer la valeur de $\sqrt{e} = e^{0.5}$.
3.  Donner un encadrement de l'erreur commise (le reste intégral) sans calculer l'intégrale.

<details>

<summary>Solution</summary>

**Méthode:**

Nous allons d'abord établir la formule de Taylor pour $e^x$ en calculant ses dérivées. Ensuite, nous appliquerons la formule pour $x=0.5$ pour obtenir une approximation. Enfin, nous majorerons et minorerons la fonction à l'intérieur de l'intégrale du reste pour obtenir un encadrement de l'erreur.

**Étapes:**

1.  **Établir la formule de Taylor avec reste intégral.**
    - La fonction est $f(x) = e^x$. Toutes ses dérivées sont $f^{(k)}(x) = e^x$.
    - Au point $a=0$, on a $f^{(k)}(0) = e^0 = 1$ pour tout $k$.
    - Le polynôme de Taylor à l'ordre $n=2$ en $a=0$ est :

      $P_2(x) = \frac{f(0)}{0!}x^0 + \frac{f'(0)}{1!}x^1 + \frac{f''(0)}{2!}x^2 = 1 + x + \frac{x^2}{2}$.

    - Le reste intégral $R_2(x)$ est donné par :

      $R_2(x) = \int_0^x \frac{f^{(3)}(t)}{2!} (x-t)^2 dt = \int_0^x \frac{e^t}{2} (x-t)^2 dt$.

    - La formule complète est : $e^x = 1 + x + \frac{x^2}{2} + \int_0^x \frac{e^t}{2} (x-t)^2 dt$.

2.  **Approximer $e^{0.5}$.**

    On utilise la formule avec $x=0.5$. L'approximation est donnée par le polynôme de Taylor :

    $$ e^{0.5} \approx P_2(0.5) = 1 + 0.5 + \frac{(0.5)^2}{2} = 1 + 0.5 + \frac{0.25}{2} = 1 + 0.5 + 0.125 = 1.625 $$

3.  **Encadrer l'erreur (le reste).**

    L'erreur est $R_2(0.5) = \int_0^{0.5} \frac{e^t}{2} (0.5-t)^2 dt$.

    Pour encadrer cette intégrale, on encadre la fonction à l'intérieur de l'intégrale pour $t \in [0, 0.5]$.

    - Le terme $(0.5-t)^2$ est toujours positif.
    - La fonction $e^t$ est croissante. Donc pour $t \in [0, 0.5]$, on a $e^0 \le e^t \le e^{0.5}$.
    - C'est-à-dire $1 \le e^t \le \sqrt{e}$. On sait que $e < 4$, donc $\sqrt{e} < 2$. Utilisons $1 \le e^t \le 2$.

    - **Minoration de l'erreur :**

      $$ R_2(0.5) \ge \int_0^{0.5} \frac{1}{2} (0.5-t)^2 dt $$

      $$ \ge \frac{1}{2} \left[ -\frac{(0.5-t)^3}{3} \right]_0^{0.5} = \frac{1}{2} \left( 0 - \left(-\frac{(0.5)^3}{3}\right) \right) = \frac{1}{2} \frac{0.125}{3} = \frac{0.125}{6} \approx 0.0208 $$

    - **Majoration de l'erreur :**

      Pour majorer $e^t$, on peut utiliser une valeur simple, comme $e^{0.5} < e^1 < 3$. Une borne plus fine serait $\sqrt{e} < \sqrt{4} = 2$. Utilisons $e^t \le 2$.

      $$ R_2(0.5) \le \int_0^{0.5} \frac{2}{2} (0.5-t)^2 dt = \int_0^{0.5} (0.5-t)^2 dt $$

      $$ \le \left[ -\frac{(0.5-t)^3}{3} \right]_0^{0.5} = \frac{(0.5)^3}{3} = \frac{0.125}{3} \approx 0.0417 $$

    L'erreur $R_2(0.5)$ est donc comprise entre $0.0208$ et $0.0417$.

**Réponse:**

1.  La formule est $e^x = 1 + x + \frac{x^2}{2} + \int_0^x \frac{e^t}{2} (x-t)^2 dt$.
2.  Une approximation de $e^{0.5}$ est $1.625$.
3.  L'erreur $R_2(0.5)$ est encadrée par $0.0208 \le R_2(0.5) \le 0.0417$. Cela signifie que la vraie valeur de $\sqrt{e}$ est comprise entre $1.625 + 0.0208 = 1.6458$ et $1.625 + 0.0417 = 1.6667$. (La valeur réelle est environ 1.6487).

</details>
