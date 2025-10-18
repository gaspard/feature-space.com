---
id: d473827e
type: exercises
order: 11
title: "Analyse: Suites récurrentes - exercices (A)"
tags:
  - analyse
  - suites
  - limites
  - continuité
  - dérivabilité
  - intégration
createdAt: '2025-10-18T19:10:37.543Z'
level: regular
course: Constructions et raisonnements mathématiques
courseId: d2e11e03
chapter: "Analyse: Suites récurrentes"
chapterId: a5489a34
---
# Exercices "Analyse: Suites récurrentes" (A)

## Exercice 1: [Problème de Calcul]

**Problème:** Soit la fonction $f(x) = \frac{1}{2}x + 1$. Pour chacun des intervalles suivants, déterminez s'il est stable par la fonction $f$.

1. $I_1 = [0, 1]$
2. $I_2 = [0, 2]$
3. $I_3 = [2, 3]$

<details>

<summary>Solution</summary>

**Méthode:** Pour vérifier si un intervalle $I$ est stable par une fonction $f$, nous devons montrer que pour tout $x \in I$, son image $f(x)$ est aussi dans $I$. Une bonne approche est d'étudier les variations de $f$ sur l'intervalle $I$ pour trouver l'image de cet intervalle, $f(I)$, puis de vérifier si $f(I) \subseteq I$.

**Étapes:**

1.  **Étude de la fonction $f$**: La fonction $f(x) = \frac{1}{2}x + 1$ est une fonction affine. Son coefficient directeur est $\frac{1}{2} > 0$, donc la fonction $f$ est strictement croissante sur $\mathbb{R}$.

2.  **Analyse de l'intervalle $I_1 = [0, 1]$**:

    Puisque $f$ est croissante, l'image de l'intervalle $[0, 1]$ est l'intervalle $[f(0), f(1)]$.

    - Calculons $f(0) = \frac{1}{2}(0) + 1 = 1$.
    - Calculons $f(1) = \frac{1}{2}(1) + 1 = 1.5$.

    L'image est $f(I_1) = [1, 1.5]$.

    On compare $f(I_1)$ à $I_1$: $[1, 1.5]$ n'est pas inclus dans $[0, 1]$ (par exemple, $1.5 \notin [0, 1]$).

    Donc, l'intervalle $I_1$ n'est pas stable par $f$.

3.  **Analyse de l'intervalle $I_2 = [0, 2]$**:

    Puisque $f$ est croissante, l'image de l'intervalle $[0, 2]$ est l'intervalle $[f(0), f(2)]$.

    - $f(0) = 1$.
    - $f(2) = \frac{1}{2}(2) + 1 = 2$.

    L'image est $f(I_2) = [1, 2]$.

    On compare $f(I_2)$ à $I_2$: $[1, 2]$ est bien inclus dans $[0, 2]$.

    Donc, l'intervalle $I_2$ est stable par $f$.

4.  **Analyse de l'intervalle $I_3 = [2, 3]$**:

    Puisque $f$ est croissante, l'image de l'intervalle $[2, 3]$ est l'intervalle $[f(2), f(3)]$.

    - $f(2) = 2$.
    - $f(3) = \frac{1}{2}(3) + 1 = 2.5$.

    L'image est $f(I_3) = [2, 2.5]$.

    On compare $f(I_3)$ à $I_3$: $[2, 2.5]$ est bien inclus dans $[2, 3]$.

    Donc, l'intervalle $I_3$ est stable par $f$.

**Réponse:**

1. $I_1 = [0, 1]$ n'est pas stable.
2. $I_2 = [0, 2]$ est stable.
3. $I_3 = [2, 3]$ est stable.

</details>

## Exercice 2: [Exercice d'Application]

**Problème:** Soit la suite $(u_n)$ définie par $u_0 = 3$ et la relation de récurrence $u_{n+1} = \sqrt{u_n + 6}$.

1. On pose $f(x) = \sqrt{x+6}$. Montrer que l'intervalle $I = [0, +\infty[$ est stable par $f$.
2. Justifier que la suite $(u_n)$ est bien définie et que tous ses termes sont positifs.

<details>

<summary>Solution</summary>

**Méthode:**

1. Pour montrer que $I = [0, +\infty[$ est stable par $f$, nous devons prendre un élément quelconque $x$ dans $I$ et montrer que $f(x)$ est également dans $I$.
2. Pour justifier que la suite est bien définie, nous utiliserons la stabilité de l'intervalle $I$ et le fait que $u_0 \in I$. Un raisonnement par récurrence permettra de conclure que $u_n \in I$ pour tout $n$.

**Étapes:**

1.  **Montrer la stabilité de $I = [0, +\infty[$**:
    - Soit $x$ un nombre réel appartenant à $I$. Cela signifie que $x \ge 0$.
    - On cherche à déterminer le signe de $f(x) = \sqrt{x+6}$.
    - Si $x \ge 0$, alors $x+6 \ge 6$.
    - La fonction racine carrée est définie et positive pour tout nombre positif. Puisque $x+6 \ge 6 > 0$, $\sqrt{x+6}$ est bien défini.
    - De plus, $\sqrt{x+6} \ge \sqrt{6}$.
    - Comme $\sqrt{6} \ge 0$, on a bien $f(x) = \sqrt{x+6} \ge 0$.
    - Donc, $f(x) \in [0, +\infty[$.
    - On a montré que pour tout $x \in I$, $f(x) \in I$. L'intervalle $I = [0, +\infty[$ est donc stable par $f$.

2.  **Justifier que $(u_n)$ est bien définie et positive**:
    - Nous allons utiliser un raisonnement par récurrence pour montrer que la propriété $\mathcal{P}(n): "u_n \text{ est défini et } u_n \in I"$ est vraie pour tout $n \in \mathbb{N}$.
    - **Initialisation (n=0)**: Le premier terme est $u_0 = 3$. On a bien $3 \ge 0$, donc $u_0 \in I$. La propriété $\mathcal{P}(0)$ est vraie.
    - **Hérédité**: Supposons que $\mathcal{P}(k)$ est vraie pour un certain entier $k \ge 0$. C'est-à-dire, $u_k$ est défini et $u_k \in I$.
    - On veut montrer que $\mathcal{P}(k+1)$ est vraie.
    - Puisque $u_k \in I$ et que $I$ est l'ensemble de définition de $f$, le terme $u_{k+1} = f(u_k) = \sqrt{u_k+6}$ est bien défini.
    - De plus, comme $I$ est stable par $f$ et que $u_k \in I$, on sait que $f(u_k) \in I$. Donc, $u_{k+1} \in I$.
    - La propriété $\mathcal{P}(k+1)$ est donc vraie.
    - **Conclusion**: Par le principe de récurrence, pour tout $n \in \mathbb{N}$, $u_n$ est défini et $u_n \in I = [0, +\infty[$. Cela signifie que tous les termes de la suite sont positifs ou nuls.

**Réponse:** L'intervalle $I = [0, +\infty[$ est stable par $f$. Par conséquent, la suite $(u_n)$ est bien définie pour tout $n \in \mathbb{N}$ et $u_n \ge 0$ pour tout $n \in \mathbb{N}$.

</details>

## Exercice 3: [Question Conceptuelle et Graphique]

**Problème:** Soit la suite $(u_n)$ définie par $u_0 = 0.1$ et $u_{n+1} = 2u_n(1 - u_n)$. On considère la fonction $f(x) = 2x(1-x)$.

1. Tracer sur un même graphique la courbe représentative de $f$ sur l'intervalle $[0, 1]$ et la droite d'équation $y=x$.
2. En utilisant la méthode de la toile d'araignée, représenter les quatre premiers termes de la suite $(u_n)$ sur l'axe des abscisses.
3. À partir du graphique, quelle conjecture pouvez-vous faire sur le comportement de la suite $(u_n)$ (monotonie et convergence) ?

<details>

<summary>Solution</summary>

**Méthode:** Nous allons d'abord tracer la parabole $y=2x-2x^2$ et la droite $y=x$. Ensuite, nous appliquerons la méthode graphique itérative : partir de $u_0$ sur l'axe des abscisses, monter verticalement jusqu'à la courbe de $f$ pour trouver $u_1$ sur l'axe des ordonnées, puis se déplacer horizontalement jusqu'à la droite $y=x$ pour reporter $u_1$ sur l'axe des abscisses, et répéter le processus.

**Étapes:**

1.  **Tracé des courbes**:
    - La droite $y=x$ est la première bissectrice.
    - La courbe de $f(x) = 2x-2x^2$ est une parabole tournée vers le bas. Son sommet est atteint en $x = -b/(2a) = -2/(2 \times -2) = 0.5$. La valeur au sommet est $f(0.5) = 2(0.5)(1-0.5) = 0.5$. Les racines sont $x=0$ et $x=1$.

2.  **Construction en toile d'araignée**:
    - **Étape 0**: Placer $u_0 = 0.1$ sur l'axe des abscisses.
    - **Étape 1**: Tracer une ligne verticale de $(0.1, 0)$ jusqu'à la courbe de $f$. Le point d'intersection a pour ordonnée $u_1 = f(0.1) = 2(0.1)(0.9) = 0.18$.
    - **Étape 2**: Tracer une ligne horizontale du point $(0.1, 0.18)$ jusqu'à la droite $y=x$. Le point d'intersection est $(0.18, 0.18)$. On a donc reporté $u_1$ sur l'axe des abscisses.
    - **Étape 3**: Répéter. Partir de $(0.18, 0)$ verticalement jusqu'à la courbe de $f$. L'ordonnée est $u_2 = f(0.18) = 2(0.18)(0.82) = 0.2952$.
    - **Étape 4**: Reporter $u_2$ sur l'axe des abscisses via la droite $y=x$.
    - **Étape 5**: Calculer $u_3 = f(0.2952) \approx 0.416$. Reporter $u_3$ sur l'axe des abscisses.

    Le graphique ressemble à un escalier qui monte.

    ![Diagramme en toile d'araignée pour u_{n+1}=2u_n(1-u_n)](https://i.imgur.com/G5g2mJc.png)

3.  **Conjecture**:
    - **Monotonie**: La construction graphique forme un "escalier montant". On voit que $u_0 < u_1 < u_2 < u_3 < \dots$. On peut donc conjecturer que la suite $(u_n)$ est croissante.
    - **Convergence**: L'escalier semble se rapprocher du point d'intersection entre la courbe de $f$ et la droite $y=x$. Ce point d'intersection est le point fixe. On résout $f(x)=x \implies 2x(1-x) = x \implies 2x - 2x^2 = x \implies x - 2x^2 = 0 \implies x(1-2x)=0$. Les points fixes sont $0$ et $0.5$. Comme la suite part de $0.1$ et est croissante, on conjecture qu'elle converge vers le point fixe $l=0.5$.

**Réponse:**

Le diagramme en toile d'araignée suggère que la suite $(u_n)$ est croissante et converge vers le point fixe $l=0.5$.

</details>

## Exercice 4: [Exercice d'Application]

**Problème:** Soit la suite $(u_n)$ définie par $u_0 = 1$ et $u_{n+1} = u_n - u_n^2 + 1$.

1. On pose $f(x) = x - x^2 + 1$. Étudiez le signe de $f(x) - x$ sur $\mathbb{R}$.
2. En déduire la monotonie de la suite $(u_n)$, en supposant que tous ses termes restent dans un intervalle où le signe de $f(x)-x$ est constant.

<details>

<summary>Solution</summary>

**Méthode:** Pour déterminer la monotonie de la suite $u_{n+1}=f(u_n)$, on peut étudier le signe de la différence $u_{n+1} - u_n = f(u_n) - u_n$. Si cette différence est toujours positive, la suite est croissante. Si elle est toujours négative, la suite est décroissante. Le signe de $f(u_n) - u_n$ est le même que le signe de l'expression $f(x)-x$ évaluée en $x=u_n$.

**Étapes:**

1.  **Étude du signe de $f(x)-x$**:
    - On calcule la différence : $f(x) - x = (x - x^2 + 1) - x = 1 - x^2$.
    - On étudie le signe du polynôme du second degré $P(x) = 1 - x^2$.
    - Les racines de $P(x)$ sont les solutions de $1 - x^2 = 0$, soit $x^2 = 1$, donc $x = -1$ et $x = 1$.
    - Le polynôme est une parabole tournée vers le bas (coefficient de $x^2$ est -1). Il est donc positif entre ses racines et négatif à l'extérieur.
    - Signe de $f(x)-x$:
        - $f(x) - x > 0$ pour $x \in ]-1, 1[$
        - $f(x) - x < 0$ pour $x \in ]-\infty, -1[ \cup ]1, +\infty[$
        - $f(x) - x = 0$ pour $x = -1$ ou $x = 1$.

2.  **Déduction de la monotonie de $(u_n)$**:
    - La monotonie de la suite dépend de l'intervalle dans lequel se trouvent ses termes.
    - On calcule les premiers termes pour avoir une idée :
        - $u_0 = 1$.
        - Pour $n=0$, $u_1 - u_0 = f(u_0) - u_0 = f(1) - 1 = 1 - 1^2 = 0$. Donc $u_1 = u_0 = 1$.
        - Pour $n=1$, $u_2 - u_1 = f(u_1) - u_1 = f(1) - 1 = 0$. Donc $u_2 = u_1 = 1$.
    - Il semble que si $u_n=1$, alors $u_{n+1}=1$. On peut le prouver par récurrence.
    - Initialisation: $u_0=1$.
    - Hérédité: Supposons $u_k=1$. Alors $u_{k+1} = f(u_k) = f(1) = 1-1^2+1 = 1$.
    - Donc, pour tout $n \in \mathbb{N}$, $u_n=1$.
    - Une suite constante est à la fois croissante ($u_{n+1} \ge u_n$) et décroissante ($u_{n+1} \le u_n$). Elle est donc monotone.

**Réponse:** La suite $(u_n)$ est constante et égale à 1. Elle est donc monotone (à la fois croissante et décroissante).

</details>

## Exercice 5: [Problème de Calcul]

**Problème:** Soit la suite $(u_n)$ définie par $u_0 = 4$ et $u_{n+1} = \frac{10}{u_n + 3}$.

On admet que pour tout $n$, $u_n \in [0, 4]$.

1. Étudier les variations de la fonction $f(x) = \frac{10}{x+3}$ sur l'intervalle $[0, 4]$.
2. En déduire que la suite $(u_n)$ n'est pas monotone.
3. Que peut-on dire de la monotonie des sous-suites $(u_{2n})$ et $(u_{2n+1})$ ?

<details>

<summary>Solution</summary>

**Méthode:** Nous utilisons le critère basé sur la monotonie de la fonction $f$. Si $f$ est croissante, la suite est monotone. Si $f$ est décroissante, la suite n'est généralement pas monotone, mais ses sous-suites des termes de rangs pairs et impairs le sont.

**Étapes:**

1.  **Variations de $f(x)$ sur $[0, 4]$**:
    - On calcule la dérivée de $f(x) = 10(x+3)^{-1}$.
    - $f'(x) = 10 \times (-1)(x+3)^{-2} = \frac{-10}{(x+3)^2}$.
    - Sur l'intervalle $[0, 4]$, le dénominateur $(x+3)^2$ est toujours strictement positif.
    - Le numérateur est -10, qui est strictement négatif.
    - Donc, pour tout $x \in [0, 4]$, $f'(x) < 0$.
    - La fonction $f$ est strictement décroissante sur $[0, 4]$.

2.  **Monotonie de $(u_n)$**:
    - Puisque la fonction $f$ qui définit la récurrence est décroissante, la suite $(u_n)$ n'est pas monotone (sauf si elle est constante, ce qu'on peut vérifier).
    - Calculons les premiers termes :
        - $u_0 = 4$
        - $u_1 = f(u_0) = f(4) = \frac{10}{4+3} = \frac{10}{7} \approx 1.43$
        - $u_2 = f(u_1) = f(\frac{10}{7}) = \frac{10}{\frac{10}{7}+3} = \frac{10}{\frac{31}{7}} = \frac{70}{31} \approx 2.26$
    - On observe que $u_0 > u_1$ et $u_1 < u_2$. La suite n'est ni croissante ni décroissante. Elle n'est donc pas monotone.

3.  **Monotonie des sous-suites $(u_{2n})$ et $(u_{2n+1})$**:
    - Comme $f$ est décroissante, la fonction $g(x) = f(f(x))$ est croissante.
    - Les sous-suites $(u_{2n})$ (termes de rangs pairs) et $(u_{2n+1})$ (termes de rangs impairs) sont définies par la relation de récurrence $u_{2(n+1)} = g(u_{2n})$ et $u_{2(n+1)+1} = g(u_{2n+1})$.
    - Puisque $g$ est croissante, ces deux sous-suites sont monotones. Leur sens de variation est donné par le signe de $u_2 - u_0$ pour la première et $u_3 - u_1$ pour la seconde.
    - On a $u_0=4$ et $u_2 \approx 2.26$. Comme $u_2 < u_0$, la sous-suite $(u_{2n})$ est décroissante.
    - On a $u_1 = 10/7$. Calculons $u_3 = f(u_2) = f(70/31) = \frac{10}{70/31+3} = \frac{10}{163/31} = \frac{310}{163} \approx 1.90$. Comme $u_3 > u_1$, la sous-suite $(u_{2n+1})$ est croissante.

**Réponse:** La fonction $f$ est décroissante, donc la suite $(u_n)$ n'est pas monotone. La sous-suite des termes de rangs pairs $(u_{2n})$ est décroissante, et la sous-suite des termes de rangs impairs $(u_{2n+1})$ est croissante.

</details>

## Exercice 6: [Exercice d'Application]

**Problème:** On considère la suite $u_{n+1} = \frac{3u_n + 2}{u_n + 2}$ avec $u_0 = 1$. On admet que la suite est bien définie, que ses termes sont tous positifs, et qu'elle converge vers une limite $l$.

1. On pose $f(x) = \frac{3x+2}{x+2}$. Justifier pourquoi $f$ est continue sur $[0, +\infty[$.
2. Déterminer les points fixes de $f$.
3. En utilisant le théorème du point fixe, quelles sont les valeurs possibles pour la limite $l$ de la suite ?
4. Sachant que la suite est croissante (on l'admet), déterminer la valeur de $l$.

<details>

<summary>Solution</summary>

**Méthode:**

1. Une fonction rationnelle est continue sur son domaine de définition.
2. Les points fixes sont les solutions de l'équation $f(x)=x$.
3. Si une suite $u_{n+1}=f(u_n)$ converge vers $l$ et que $f$ est continue en $l$, alors $l$ doit être un point fixe de $f$.
4. Connaissant le premier terme et la monotonie, on peut éliminer les candidats impossibles pour la limite.

**Étapes:**

1.  **Continuité de $f$**:
    - La fonction $f(x) = \frac{3x+2}{x+2}$ est une fonction rationnelle (quotient de deux polynômes).
    - Elle est continue sur son domaine de définition, qui est $\mathbb{R} \setminus \{-2\}$.
    - L'intervalle $[0, +\infty[$ est inclus dans le domaine de définition, donc $f$ est continue sur $[0, +\infty[$.

2.  **Recherche des points fixes**:
    - On résout l'équation $f(x) = x$ pour $x \in [0, +\infty[$.
    - $\frac{3x+2}{x+2} = x$
    - $3x+2 = x(x+2)$
    - $3x+2 = x^2 + 2x$
    - $x^2 - x - 2 = 0$
    - C'est une équation du second degré. On calcule le discriminant $\Delta = b^2-4ac = (-1)^2 - 4(1)(-2) = 1+8 = 9$.
    - Les racines sont $x_{1,2} = \frac{-b \pm \sqrt{\Delta}}{2a} = \frac{1 \pm 3}{2}$.
    - Les deux solutions sont $x_1 = \frac{1+3}{2} = 2$ et $x_2 = \frac{1-3}{2} = -1$.
    - Les points fixes de $f$ sont $2$ et $-1$.

3.  **Limites possibles pour la suite**:
    - La suite $(u_n)$ est à termes positifs et on admet qu'elle converge vers une limite $l$. Comme tous les $u_n \ge 0$, la limite $l$ doit être supérieure ou égale à 0.
    - Le théorème de la limite et du point fixe nous dit que $l$ doit être un point fixe de $f$.
    - Les candidats sont donc les points fixes qui sont dans l'intervalle $[0, +\infty[$.
    - Le point fixe $-1$ est exclu car $l \ge 0$.
    - La seule limite possible est donc $l=2$.

4.  **Détermination de la limite**:
    - On nous donne $u_0 = 1$ et on admet que la suite est croissante.
    - Cela signifie que $u_0 \le u_1 \le u_2 \le \dots \le l$.
    - On a $1 \le l$.
    - La seule limite possible étant $l=2$, et comme elle est bien supérieure ou égale à $u_0$, c'est la limite de la suite.

**Réponse:** La seule limite possible pour la suite $(u_n)$ est $l=2$.

</details>

## Exercice 7: [Problème de Calcul]

**Problème:** Soit la fonction $f(x) = \frac{1}{4}x + 3$.

1. Montrer que la fonction $f$ est contractante sur $\mathbb{R}$ et donner son rapport de contraction $k$.
2. Montrer que l'intervalle $I=[3, 5]$ est stable par $f$.
3. En appliquant le théorème du point fixe contractant, que pouvez-vous conclure pour une suite définie par $u_0 \in [3, 5]$ et $u_{n+1} = f(u_n)$ ?

<details>

<summary>Solution</summary>

**Méthode:**

1. Pour montrer qu'une fonction dérivable est contractante, on peut montrer que la valeur absolue de sa dérivée est majorée par une constante $k < 1$.
2. Pour montrer la stabilité d'un intervalle pour une fonction croissante, on calcule l'image de l'intervalle et on vérifie l'inclusion.
3. On vérifie que toutes les hypothèses du théorème du point fixe contractant sont réunies (intervalle fermé, stable, fonction contractante) pour en appliquer les conclusions.

**Étapes:**

1.  **Montrer que $f$ est contractante**:
    - La fonction $f(x) = \frac{1}{4}x + 3$ est dérivable sur $\mathbb{R}$.
    - Sa dérivée est $f'(x) = \frac{1}{4}$.
    - Pour tout $x \in \mathbb{R}$, on a $|f'(x)| = |\frac{1}{4}| = \frac{1}{4}$.
    - On pose $k = \frac{1}{4}$. On a bien $0 \le k < 1$.
    - Puisque $\sup_{x \in \mathbb{R}} |f'(x)| = \frac{1}{4} < 1$, la fonction $f$ est $1/4$-contractante sur $\mathbb{R}$.

2.  **Montrer que $I=[3, 5]$ est stable**:
    - La fonction $f$ est croissante car sa dérivée est positive.
    - L'image de l'intervalle $I=[3, 5]$ est donc l'intervalle $[f(3), f(5)]$.
    - $f(3) = \frac{1}{4}(3) + 3 = 0.75 + 3 = 3.75$.
    - $f(5) = \frac{1}{4}(5) + 3 = 1.25 + 3 = 4.25$.
    - L'image est $f(I) = [3.75, 4.25]$.
    - Puisque $[3.75, 4.25] \subseteq [3, 5]$, l'intervalle $I$ est stable par $f$.

3.  **Application du théorème du point fixe contractant**:
    - On vérifie les hypothèses :
        - L'intervalle $I=[3, 5]$ est fermé.
        - L'intervalle $I$ est stable par $f$.
        - La fonction $f$ est contractante sur $I$ (car elle l'est sur $\mathbb{R}$).
    - Le théorème du point fixe contractant s'applique. On peut en tirer les conclusions suivantes :
        - La fonction $f$ admet un unique point fixe $l$ dans $I$.
        - Pour tout $u_0 \in I$, la suite $u_{n+1} = f(u_n)$ converge vers ce point fixe $l$.
    - Calculons ce point fixe : $f(l) = l \implies \frac{1}{4}l + 3 = l \implies 3 = l - \frac{1}{4}l \implies 3 = \frac{3}{4}l \implies l = 4$.
    - Le point fixe $l=4$ est bien dans l'intervalle $I=[3,5]$.

**Réponse:** La fonction $f$ est $1/4$-contractante, l'intervalle $I=[3,5]$ est stable par $f$. Par le théorème du point fixe contractant, pour tout $u_0 \in [3,5]$, la suite $(u_n)$ converge vers l'unique point fixe $l=4$.

</details>

## Exercice 8: [Problème de Calcul]

**Problème:** Soit la fonction $f(x) = x^3 - 3x + 3$.

1. Trouvez les points fixes de la fonction $f$.
2. Calculez la dérivée $f'(x)$.
3. Pour chaque point fixe $l$, calculez $f'(l)$ et déterminez si le point fixe est attractif ou répulsif.

<details>

<summary>Solution</summary>

**Méthode:**

1. On résout l'équation $f(x)=x$ pour trouver les points fixes.
2. On calcule la dérivée de la fonction polynômiale.
3. On évalue la dérivée en chaque point fixe. Si $|f'(l)|<1$, le point est attractif. Si $|f'(l)|>1$, il est répulsif. Si $|f'(l)|=1$, on ne peut pas conclure avec ce critère.

**Étapes:**

1.  **Recherche des points fixes**:
    - On résout $f(x) = x$.
    - $x^3 - 3x + 3 = x$
    - $x^3 - 4x + 3 = 0$
    - On peut tester des racines évidentes (diviseurs de 3). Pour $x=1$, on a $1^3 - 4(1) + 3 = 1 - 4 + 3 = 0$. Donc $x=1$ est une racine.
    - On peut factoriser le polynôme par $(x-1)$. Par division euclidienne ou identification, on trouve $x^3 - 4x + 3 = (x-1)(x^2+x-3)$.
    - On résout la deuxième partie $x^2+x-3=0$.
    - $\Delta = 1^2 - 4(1)(-3) = 1+12=13$.
    - Les autres racines sont $x = \frac{-1 \pm \sqrt{13}}{2}$.
    - Les points fixes sont donc $l_1 = 1$, $l_2 = \frac{-1 - \sqrt{13}}{2}$, et $l_3 = \frac{-1 + \sqrt{13}}{2}$.

2.  **Calcul de la dérivée**:
    - $f(x) = x^3 - 3x + 3$.
    - $f'(x) = 3x^2 - 3$.

3.  **Classification des points fixes**:
    - **Pour $l_1 = 1$**:
        - $f'(1) = 3(1)^2 - 3 = 0$.
        - $|f'(1)| = 0 < 1$. Le point fixe $l_1 = 1$ est **attractif** (même super-attractif).
    - **Pour $l_2 = \frac{-1 - \sqrt{13}}{2} \approx -2.3$**:
        - On calcule d'abord $l_2^2$: $l_2^2 = (\frac{-1 - \sqrt{13}}{2})^2 = \frac{1 + 2\sqrt{13} + 13}{4} = \frac{14 + 2\sqrt{13}}{4} = \frac{7 + \sqrt{13}}{2}$.
        - $f'(l_2) = 3 l_2^2 - 3 = 3(\frac{7 + \sqrt{13}}{2}) - 3 = \frac{21 + 3\sqrt{13} - 6}{2} = \frac{15 + 3\sqrt{13}}{2}$.
        - $\sqrt{13}$ est entre 3 et 4 (approx 3.6). Donc $f'(l_2) \approx \frac{15 + 3(3.6)}{2} = \frac{15+10.8}{2} = 12.9$.
        - $|f'(l_2)| > 1$. Le point fixe $l_2$ est **répulsif**.
    - **Pour $l_3 = \frac{-1 + \sqrt{13}}{2} \approx 1.3$**:
        - On calcule d'abord $l_3^2$: $l_3^2 = (\frac{-1 + \sqrt{13}}{2})^2 = \frac{1 - 2\sqrt{13} + 13}{4} = \frac{14 - 2\sqrt{13}}{4} = \frac{7 - \sqrt{13}}{2}$.
        - $f'(l_3) = 3 l_3^2 - 3 = 3(\frac{7 - \sqrt{13}}{2}) - 3 = \frac{21 - 3\sqrt{13} - 6}{2} = \frac{15 - 3\sqrt{13}}{2}$.
        - $f'(l_3) \approx \frac{15 - 10.8}{2} = 2.1$.
        - $|f'(l_3)| > 1$. Le point fixe $l_3$ est **répulsif**.

**Réponse:**

- Le point fixe $l_1=1$ est attractif.
- Les points fixes $l_2 = \frac{-1 - \sqrt{13}}{2}$ et $l_3 = \frac{-1 + \sqrt{13}}{2}$ sont répulsifs.

</details>

## Exercice 9: [Conceptual Questions]

**Problème:** On considère une suite récurrente $u_{n+1} = f(u_n)$. Répondez aux questions suivantes en justifiant brièvement.

1. Si $f$ est une fonction croissante et que $u_1 > u_0$, la suite $(u_n)$ peut-elle être décroissante ?
2. Si une suite $u_{n+1} = f(u_n)$ converge vers $l=3$ et que $f$ est continue, est-il possible que $f(3) = 4$ ?
3. Si $l$ est un point fixe d'une fonction $f$ dérivable et que $f'(l)=2$, que peut-on dire du comportement d'une suite $u_{n+1}=f(u_n)$ si $u_0$ est très proche de $l$ (mais $u_0 \ne l$) ?

<details>

<summary>Solution</summary>

**Méthode:** On applique directement les définitions et théorèmes clés du cours.

**Étapes:**

1.  **Réponse pour la question 1**:

    Non. Si $f$ est croissante, alors la suite $(u_n)$ est monotone. Son sens de variation est donné par le signe de $u_1 - u_0$. Comme on suppose $u_1 > u_0$, la suite est nécessairement croissante. On peut le montrer par récurrence : si $u_k > u_{k-1}$, alors comme $f$ est croissante, $f(u_k) > f(u_{k-1})$, ce qui implique $u_{k+1} > u_k$.

2.  **Réponse pour la question 2**:

    Non. D'après le théorème de la limite et du point fixe, si la suite $(u_n)$ converge vers $l$ et que la fonction $f$ est continue en $l$, alors la limite $l$ doit être un point fixe de $f$. Cela signifie que $f(l) = l$. Si la suite converge vers $l=3$, on doit donc avoir $f(3)=3$. Il est impossible d'avoir $f(3)=4$.

3.  **Réponse pour la question 3**:

    Le point fixe $l$ est répulsif. Comme $f$ est dérivable, on peut étudier la stabilité locale du point fixe en regardant la valeur de $|f'(l)|$. Ici, $|f'(l)| = |2| = 2$. Puisque $|f'(l)| > 1$, le point fixe est répulsif. Cela signifie que si $u_0$ est très proche de $l$, la suite $(u_n)$ s'éloignera de $l$ à chaque itération.

**Réponse:**

1. Non, si $f$ est croissante et $u_1 > u_0$, la suite est forcément croissante.
2. Non, si la suite converge vers 3, on doit avoir $f(3)=3$.
3. Le point fixe est répulsif, donc la suite s'éloignera de $l$.

</details>

## Exercice 10: [Exercice d'Application]

**Problème:** On souhaite trouver une valeur approchée de la racine cubique de 10, c'est-à-dire la solution de l'équation $x^3 = 10$.

1. Posez $F(x) = x^3 - 10$. Écrivez la formule de récurrence de la méthode de Newton pour trouver une racine de $F(x)$.
2. En partant de $u_0 = 2$, calculez les deux termes suivants, $u_1$ et $u_2$, de la suite de Newton.

<details>

<summary>Solution</summary>

**Méthode:** La méthode de Newton utilise la formule de récurrence $u_{n+1} = u_n - \frac{F(u_n)}{F'(u_n)}$. Nous allons d'abord calculer la dérivée $F'(x)$, puis écrire la formule explicite pour $f(x) = x - F(x)/F'(x)$, et enfin l'appliquer pour calculer les termes de la suite.

**Étapes:**

1.  **Formule de récurrence de Newton**:
    - La fonction est $F(x) = x^3 - 10$.
    - Sa dérivée est $F'(x) = 3x^2$.
    - La formule de Newton est :

    $$ u_{n+1} = u_n - \frac{F(u_n)}{F'(u_n)} = u_n - \frac{u_n^3 - 10}{3u_n^2} $$

    - On peut simplifier l'expression :

    $$ u_{n+1} = \frac{3u_n^3 - (u_n^3 - 10)}{3u_n^2} = \frac{2u_n^3 + 10}{3u_n^2} = \frac{2}{3}u_n + \frac{10}{3u_n^2} $$

2.  **Calcul des termes de la suite**:
    - Le point de départ est $u_0 = 2$.
    - **Calcul de $u_1$**:

    $$ u_1 = u_0 - \frac{u_0^3 - 10}{3u_0^2} = 2 - \frac{2^3 - 10}{3(2^2)} = 2 - \frac{8 - 10}{12} = 2 - \frac{-2}{12} = 2 + \frac{1}{6} $$

    $$ u_1 = \frac{13}{6} \approx 2.1666... $$

    - **Calcul de $u_2$**:

    $$ u_2 = u_1 - \frac{u_1^3 - 10}{3u_1^2} = \frac{13}{6} - \frac{(\frac{13}{6})^3 - 10}{3(\frac{13}{6})^2} $$

    $$ u_2 = \frac{13}{6} - \frac{\frac{2197}{216} - \frac{2160}{216}}{3 \times \frac{169}{36}} = \frac{13}{6} - \frac{\frac{37}{216}}{\frac{507}{36}} $$

    $$ u_2 = \frac{13}{6} - \frac{37}{216} \times \frac{36}{507} = \frac{13}{6} - \frac{37}{6 \times 507} = \frac{13}{6} - \frac{37}{3042} = \frac{13 \times 507 - 37}{3042} $$

    $$ u_2 = \frac{6591 - 37}{3042} = \frac{6554}{3042} \approx 2.1545... $$

    (Note : La vraie valeur de $\sqrt[3]{10}$ est environ 2.15443. On voit la convergence très rapide de la méthode).

**Réponse:** La formule de récurrence est $u_{n+1} = u_n - \frac{u_n^3 - 10}{3u_n^2}$.

En partant de $u_0=2$, les termes suivants sont $u_1 = \frac{13}{6} \approx 2.1667$ et $u_2 = \frac{6554}{3042} \approx 2.1545$.

</details>
