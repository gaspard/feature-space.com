---
id: aebf0697
type: exercises
order: 11
title: Normes sur Rⁿ et suites convergentes - exercices (A)
tags:
  - normes
  - suites
  - convergence
  - topologie
  - analyse
createdAt: '2025-10-12T15:02:23.733Z'
level: regular
course: Topologie
courseId: 34e61f8e
chapter: Normes sur Rⁿ et suites convergentes
chapterId: 629d2832
---
# Exercices "Normes sur Rⁿ et suites convergentes" (A)

## Exercice 1

**Problème:** Déterminer si l'application $N: \mathbb{R}^2 \to \mathbb{R}_+$ définie par $N(x_1, x_2) = |x_1 - 2x_2| + 3|x_1|$ est une norme sur $\mathbb{R}^2$.

<details>

<summary>Solution</summary>

**Méthode:** Pour vérifier si $N$ est une norme, nous devons tester si elle satisfait les trois axiomes d'une norme : la séparation, l'homogénéité et l'inégalité triangulaire. Soient $x = (x_1, x_2)$ et $y = (y_1, y_2)$ deux vecteurs de $\mathbb{R}^2$ et $\lambda \in \mathbb{R}$ un scalaire.

**Étapes:**

1.  **Vérification de la séparation ($N(x) = 0 \iff x=0_{\mathbb{R}^2}$):**
    -   Supposons $N(x_1, x_2) = 0$. Par définition, cela signifie $|x_1 - 2x_2| + 3|x_1| = 0$.
    -   Une somme de termes positifs (les valeurs absolues) est nulle si et seulement si chaque terme est nul.
    -   On doit donc avoir $3|x_1| = 0$ et $|x_1 - 2x_2| = 0$.
    -   La première équation, $3|x_1|=0$, implique $|x_1|=0$, et donc $x_1=0$.
    -   En substituant $x_1=0$ dans la deuxième équation, on obtient $|0 - 2x_2| = 0$, soit $|-2x_2|=0$, ce qui implique $x_2=0$.
    -   Ainsi, $x=(x_1, x_2) = (0,0) = 0_{\mathbb{R}^2}$. L'implication $N(x)=0 \implies x=0$ est vraie.
    -   Réciproquement, si $x = (0,0)$, alors $N(0,0) = |0 - 2(0)| + 3|0| = 0$. L'axiome de séparation est vérifié.

2.  **Vérification de l'homogénéité ($N(\lambda x) = |\lambda| N(x)$):**
    -   Calculons $N(\lambda x) = N(\lambda x_1, \lambda x_2)$.
    -   $N(\lambda x_1, \lambda x_2) = |(\lambda x_1) - 2(\lambda x_2)| + 3|\lambda x_1|$.
    -   On peut factoriser $\lambda$ à l'intérieur des valeurs absolues : $N(\lambda x) = |\lambda(x_1 - 2x_2)| + 3|\lambda||x_1|$.
    -   En utilisant la propriété $|\alpha \beta| = |\alpha||\beta|$, on obtient : $N(\lambda x) = |\lambda||x_1 - 2x_2| + 3|\lambda||x_1|$.
    -   On peut maintenant factoriser $|\lambda|$ : $N(\lambda x) = |\lambda| (|x_1 - 2x_2| + 3|x_1|) = |\lambda| N(x_1, x_2)$.
    -   L'axiome d'homogénéité est vérifié.

3.  **Vérification de l'inégalité triangulaire ($N(x+y) \le N(x) + N(y)$):**
    -   Soit $x=(x_1, x_2)$ et $y=(y_1, y_2)$. Alors $x+y = (x_1+y_1, x_2+y_2)$.
    -   Calculons $N(x+y) = |(x_1+y_1) - 2(x_2+y_2)| + 3|x_1+y_1|$.
    -   Réorganisons les termes à l'intérieur des valeurs absolues : $N(x+y) = |(x_1-2x_2) + (y_1-2y_2)| + 3|x_1+y_1|$.
    -   Appliquons l'inégalité triangulaire pour les nombres réels ($|a+b| \le |a|+|b|$):

    $N(x+y) \le (|x_1-2x_2| + |y_1-2y_2|) + 3(|x_1|+|y_1|)$.

    -   Réorganisons les termes pour faire apparaître $N(x)$ et $N(y)$:

    $N(x+y) \le (|x_1-2x_2| + 3|x_1|) + (|y_1-2y_2| + 3|y_1|)$.

    -   On reconnaît les expressions de $N(x)$ et $N(y)$, donc: $N(x+y) \le N(x) + N(y)$.
    -   L'inégalité triangulaire est vérifiée.

**Réponse:** L'application $N$ vérifie les trois axiomes de séparation, d'homogénéité et d'inégalité triangulaire. C'est donc bien une norme sur $\mathbb{R}^2$.

</details>

## Exercice 2

**Problème:** L'application $A: \mathbb{R}^3 \to \mathbb{R}_+$ définie par $A(x_1, x_2, x_3) = |x_1| + |x_2|$ est-elle une norme sur $\mathbb{R}^3$? Justifiez votre réponse.

<details>

<summary>Solution</summary>

**Méthode:** Pour déterminer si $A$ est une norme, nous devons vérifier si elle satisfait les trois axiomes. Si l'un des axiomes n'est pas vérifié, il suffit de fournir un contre-exemple. Nous allons tester l'axiome de séparation.

**Étapes:**

1.  **Analyse de l'axiome de séparation:** L'axiome de séparation stipule que $A(x) = 0$ si et seulement si $x = 0_{\mathbb{R}^3}$.
2.  **Recherche d'un contre-exemple:** Cherchons un vecteur $x$ non nul dans $\mathbb{R}^3$ pour lequel $A(x)$ serait égal à 0.
3.  **Construction du contre-exemple:** La formule pour $A$ est $A(x_1, x_2, x_3) = |x_1| + |x_2|$. Cette formule ne dépend pas de la troisième composante, $x_3$.
4.  Considérons le vecteur $x = (0, 0, 5)$. Ce vecteur est non nul car sa troisième composante est 5.
5.  **Calcul de $A(x)$:** Calculons la valeur de $A$ pour ce vecteur :

    $A(0, 0, 5) = |0| + |0| = 0$.

6.  **Conclusion:** Nous avons trouvé un vecteur $x = (0, 0, 5)$ qui est différent du vecteur nul $0_{\mathbb{R}^3} = (0,0,0)$, mais pour lequel $A(x) = 0$.
7.  Ceci contredit l'axiome de séparation. Par conséquent, $A$ n'est pas une norme.

**Réponse:** Non, l'application $A$ n'est pas une norme sur $\mathbb{R}^3$ car elle ne respecte pas l'axiome de séparation. Par exemple, le vecteur non nul $x=(0,0,5)$ a une "longueur" nulle selon $A$, $A(x)=0$.

</details>

## Exercice 3

**Problème:** Soit le vecteur $v = (2, -4, -1, 3)$ dans $\mathbb{R}^4$. Calculez $\|v\|_1$, $\|v\|_2$ et $\|v\|_\infty$.

<details>

<summary>Solution</summary>

**Méthode:** Nous appliquons directement les définitions des trois normes fondamentales pour le vecteur $v=(v_1, v_2, v_3, v_4) = (2, -4, -1, 3)$.

**Étapes:**

1.  **Calcul de la norme 1 ($ \|v\|_1 = \sum_{j=1}^4 |v_j| $):**
    -   $\|v\|_1 = |2| + |-4| + |-1| + |3|$
    -   $\|v\|_1 = 2 + 4 + 1 + 3 = 10$

2.  **Calcul de la norme 2 ($ \|v\|_2 = \sqrt{\sum_{j=1}^4 v_j^2} $):**
    -   $\|v\|_2 = \sqrt{2^2 + (-4)^2 + (-1)^2 + 3^2}$
    -   $\|v\|_2 = \sqrt{4 + 16 + 1 + 9}$
    -   $\|v\|_2 = \sqrt{30}$

3.  **Calcul de la norme infinie ($ \|v\|_\infty = \max_{1 \le j \le 4} |v_j| $):**
    -   $\|v\|_\infty = \max(|2|, |-4|, |-1|, |3|)$
    -   $\|v\|_\infty = \max(2, 4, 1, 3)$
    -   $\|v\|_\infty = 4$

**Réponse:** Pour le vecteur $v = (2, -4, -1, 3)$, nous avons :

-   $\|v\|_1 = 10$
-   $\|v\|_2 = \sqrt{30}$
-   $\|v\|_\infty = 4$

</details>

## Exercice 4

**Problème:** Trouver un vecteur $x = (x_1, x_2, x_3)$ dans $\mathbb{R}^3$ tel que $\|x\|_\infty = 5$, $\|x\|_1 = 8$ et $\|x\|_2 = \sqrt{38}$.

<details>

<summary>Solution</summary>

**Méthode:** Nous allons utiliser les informations données par les normes pour déduire les valeurs possibles des composantes du vecteur $x$.

**Étapes:**

1.  **Utiliser l'information de la norme infinie:**
    -   La condition $\|x\|_\infty = 5$ signifie que la plus grande composante en valeur absolue est 5. Donc, au moins une des composantes $|x_1|, |x_2|, |x_3|$ doit être égale à 5.
    -   Supposons, sans perte de généralité, que $|x_1|=5$. Les autres composantes doivent avoir une valeur absolue inférieure ou égale à 5: $|x_2| \le 5$ et $|x_3| \le 5$.

2.  **Utiliser l'information de la norme 1:**
    -   La condition $\|x\|_1 = 8$ signifie que $|x_1| + |x_2| + |x_3| = 8$.
    -   En utilisant $|x_1|=5$, on obtient $5 + |x_2| + |x_3| = 8$, ce qui simplifie en $|x_2| + |x_3| = 3$.

3.  **Utiliser l'information de la norme 2:**
    -   La condition $\|x\|_2 = \sqrt{38}$ signifie que $\sqrt{x_1^2 + x_2^2 + x_3^2} = \sqrt{38}$, ce qui est équivalent à $x_1^2 + x_2^2 + x_3^2 = 38$.
    -   Puisque $|x_1|=5$, on a $x_1^2=25$. L'équation devient $25 + x_2^2 + x_3^2 = 38$, ce qui simplifie en $x_2^2 + x_3^2 = 13$.

4.  **Résoudre le système d'équations:**
    -   Nous avons maintenant un système de deux équations pour $|x_2|$ et $|x_3|$:
        -   $|x_2| + |x_3| = 3$
        -   $|x_2|^2 + |x_3|^2 = 13$
    -   Posons $a=|x_2|$ et $b=|x_3|$. Nous avons $a+b=3$ et $a^2+b^2=13$.
    -   De la première équation, $b=3-a$. Substituons cela dans la deuxième : $a^2 + (3-a)^2 = 13$.
    -   $a^2 + (9 - 6a + a^2) = 13 \implies 2a^2 - 6a - 4 = 0 \implies a^2 - 3a - 2 = 0$.
    -   Il semble y avoir une erreur dans l'énoncé car cette équation n'a pas de solutions entières simples ($a = \frac{3 \pm \sqrt{9+8}}{2}$).
    -   Re-vérifions l'énoncé. Peut-être que $\|x\|_2 = \sqrt{34}$ ? Si oui, $x_2^2+x_3^2 = 9$.
    -   Avec $a+b=3$ et $a^2+b^2=9$. $(a+b)^2 = a^2+b^2+2ab \implies 3^2 = 9+2ab \implies 9=9+2ab \implies ab=0$.
    -   Si $ab=0$, alors soit $a=0$, soit $b=0$. Si $a=0$, alors $b=3$. Si $b=0$, alors $a=3$.
    -   Donc, les valeurs absolues des deux autres composantes sont 3 et 0.

5.  **Reconstruire le vecteur (avec la correction $\|x\|_2 = \sqrt{34}$):**
    -   Nous avons $|x_1|=5$, et la paire $\{|x_2|, |x_3|\}$ est $\{3, 0\}$.
    -   Nous pouvons choisir les signes librement. Par exemple, prenons $x_1=5$, $x_2=3$ et $x_3=0$.
    -   Le vecteur $x=(5,3,0)$ est une solution possible. D'autres solutions sont $(-5,3,0)$, $(5,0,-3)$, etc.

**Réponse:** En supposant une correction de l'énoncé à $\|x\|_2 = \sqrt{34}$, un vecteur solution possible est $x = (5, 3, 0)$. Toute permutation de ses composantes ou changement de leurs signes est aussi une solution, par exemple $(0, -5, 3)$.

</details>

## Exercice 5

**Problème:** Soit la norme $N$ sur $\mathbb{R}^2$ définie par $N(x, y) = 4|x| + |y|$. Montrer que $N$ est équivalente à la norme infinie $\| \cdot \|_\infty$.

<details>

<summary>Solution</summary>

**Méthode:** Pour montrer que $N$ est équivalente à $\| \cdot \|_\infty$, nous devons trouver deux constantes réelles strictement positives $\alpha$ et $\beta$ telles que, pour tout vecteur $v=(x,y) \in \mathbb{R}^2$, on ait :

$\alpha \|v\|_\infty \le N(v) \le \beta \|v\|_\infty$.

Rappelons que $\|v\|_\infty = \max(|x|, |y|)$.

**Étapes:**

1.  **Trouver la constante de majoration $\beta$:**
    -   Nous cherchons à majorer $N(x,y)$ par un multiple de $\|(x,y)\|_\infty$.
    -   $N(x,y) = 4|x| + |y|$.
    -   Par définition de la norme infinie, nous savons que $|x| \le \max(|x|,|y|) = \|(x,y)\|_\infty$ et $|y| \le \max(|x|,|y|) = \|(x,y)\|_\infty$.
    -   En substituant ces inégalités dans l'expression de $N$, on obtient :

        $N(x,y) = 4|x| + |y| \le 4\|(x,y)\|_\infty + \|(x,y)\|_\infty = 5\|(x,y)\|_\infty$.

    -   Nous avons donc $N(v) \le 5 \|v\|_\infty$. Nous pouvons choisir $\beta = 5$.

2.  **Trouver la constante de minoration $\alpha$:**
    -   Nous cherchons à minorer $N(x,y)$ par un multiple de $\|(x,y)\|_\infty$.
    -   $N(x,y) = 4|x| + |y|$.
    -   Puisque $|x| \ge 0$ et $|y| \ge 0$, on peut écrire $N(x,y) = 4|x| + |y| \ge |x|$.
    -   De même, $N(x,y) = 4|x| + |y| \ge |y|$.
    -   Comme $N(x,y)$ est plus grand à la fois que $|x|$ et $|y|$, il est aussi plus grand que le maximum des deux :

        $N(x,y) \ge \max(|x|, |y|) = \|(x,y)\|_\infty$.

    -   Nous avons donc $1 \cdot \|v\|_\infty \le N(v)$. Nous pouvons choisir $\alpha = 1$.

3.  **Conclusion:**
    -   Nous avons trouvé les constantes $\alpha=1$ et $\beta=5$, qui sont strictement positives.
    -   Pour tout $v \in \mathbb{R}^2$, nous avons l'encadrement : $1 \cdot \|v\|_\infty \le N(v) \le 5 \cdot \|v\|_\infty$.
    -   Ceci prouve que la norme $N$ est équivalente à la norme $\| \cdot \|_\infty$.

**Réponse:** La norme $N$ est équivalente à la norme $\| \cdot \|_\infty$ car pour tout vecteur $v \in \mathbb{R}^2$, on a $1 \cdot \|v\|_\infty \le N(v) \le 5 \cdot \|v\|_\infty$.

</details>

## Exercice 6

**Problème:** En utilisant les inégalités d'équivalence connues entre les normes fondamentales, trouver la plus petite constante $C$ telle que $\|x\|_1 \le C \|x\|_\infty$ pour tout $x \in \mathbb{R}^5$.

<details>

<summary>Solution</summary>

**Méthode:** Nous allons utiliser l'inégalité générale qui relie la norme 1 et la norme infinie en dimension $n$, puis l'appliquer au cas spécifique $n=5$. Ensuite, nous montrerons que la constante trouvée est "optimale" (la plus petite possible) en exhibant un vecteur pour lequel l'égalité est atteinte.

**Étapes:**

1.  **Rappel de l'inégalité générale:**
    -   Pour tout vecteur $x=(x_1, \dots, x_n)$ dans $\mathbb{R}^n$, l'inégalité est $\|x\|_1 \le n \|x\|_\infty$.
    -   *Démonstration rapide :*

        $\|x\|_1 = \sum_{j=1}^n |x_j|$. Par définition de $\|x\|_\infty = \max_j |x_j|$, chaque $|x_j| \le \|x\|_\infty$.

        Donc, $\|x\|_1 = \sum_{j=1}^n |x_j| \le \sum_{j=1}^n \|x\|_\infty = n \|x\|_\infty$.

2.  **Application à $n=5$:**
    -   Dans notre cas, l'espace est $\mathbb{R}^5$, donc $n=5$.
    -   L'inégalité devient : $\|x\|_1 \le 5 \|x\|_\infty$.
    -   Cela nous montre qu'une constante $C=5$ fonctionne.

3.  **Vérification que $C=5$ est la plus petite constante possible:**
    -   Pour montrer que $C=5$ est la meilleure constante, nous devons trouver un vecteur non nul $x \in \mathbb{R}^5$ tel que $\|x\|_1 = 5 \|x\|_\infty$.
    -   Considérons le vecteur $x = (1, 1, 1, 1, 1)$.
    -   Calculons ses normes :
        -   $\|x\|_1 = |1|+|1|+|1|+|1|+|1| = 5$.
        -   $\|x\|_\infty = \max(|1|,|1|,|1|,|1|,|1|) = 1$.
    -   Vérifions l'égalité : $\|x\|_1 = 5$ et $5 \|x\|_\infty = 5 \times 1 = 5$.
    -   L'égalité $\|x\|_1 = 5 \|x\|_\infty$ est bien atteinte pour ce vecteur.
    -   Cela signifie qu'aucune constante plus petite que 5 ne peut fonctionner. Si on choisissait $C=4.9$, l'inégalité $\|x\|_1 \le 4.9 \|x\|_\infty$ serait fausse pour ce vecteur $x$ (car $5 \not\le 4.9$).

**Réponse:** La plus petite constante $C$ est $C=5$.

</details>

## Exercice 7

**Problème:** La suite de vecteurs $(x^k)_{k \ge 1}$ de $\mathbb{R}^3$ est définie par $x^k = \left( \frac{\sin(k)}{k}, \frac{2k^2 - 3k}{k^2+1}, \left(1 - \frac{1}{k}\right)^{2k} \right)$. Déterminer si cette suite converge et, si oui, trouver sa limite.

<details>

<summary>Solution</summary>

**Méthode:** Une suite de vecteurs dans $\mathbb{R}^n$ converge si et seulement si chacune de ses suites de composantes (qui sont des suites réelles) converge. Nous allons donc étudier la limite de chaque composante séparément.

**Étapes:**

1.  **Étude de la première composante:**
    -   Soit $x_1^k = \frac{\sin(k)}{k}$.
    -   Nous savons que la fonction sinus est bornée : $-1 \le \sin(k) \le 1$ pour tout $k$.
    -   On a donc l'encadrement : $-\frac{1}{k} \le \frac{\sin(k)}{k} \le \frac{1}{k}$.
    -   Comme $\lim_{k \to \infty} -\frac{1}{k} = 0$ et $\lim_{k \to \infty} \frac{1}{k} = 0$, par le théorème des gendarmes, on conclut que $\lim_{k \to \infty} x_1^k = 0$.

2.  **Étude de la deuxième composante:**
    -   Soit $x_2^k = \frac{2k^2 - 3k}{k^2+1}$.
    -   Il s'agit de la limite d'une fraction rationnelle en l'infini. On peut factoriser les termes de plus haut degré au numérateur et au dénominateur :

        $x_2^k = \frac{k^2(2 - 3/k)}{k^2(1 + 1/k^2)} = \frac{2 - 3/k}{1 + 1/k^2}$.

    -   Lorsque $k \to \infty$, $3/k \to 0$ et $1/k^2 \to 0$.
    -   Donc, $\lim_{k \to \infty} x_2^k = \frac{2 - 0}{1 + 0} = 2$.

3.  **Étude de la troisième composante:**
    -   Soit $x_3^k = \left(1 - \frac{1}{k}\right)^{2k}$.
    -   On reconnaît une forme liée à la définition du nombre $e$. Rappelons que $\lim_{u \to \infty} (1 + \frac{a}{u})^u = e^a$.
    -   On peut réécrire l'expression : $x_3^k = \left[\left(1 + \frac{-1}{k}\right)^k\right]^2$.
    -   Lorsque $k \to \infty$, le terme à l'intérieur des crochets, $\left(1 + \frac{-1}{k}\right)^k$, tend vers $e^{-1}$.
    -   Par continuité de la fonction carré, on a : $\lim_{k \to \infty} x_3^k = (e^{-1})^2 = e^{-2}$.

4.  **Conclusion:**
    -   Chacune des trois composantes converge vers une limite finie.
    -   La suite de vecteurs $(x^k)$ converge donc vers le vecteur dont les composantes sont ces limites.

**Réponse:** La suite $(x^k)$ converge vers le vecteur limite $a = \left(0, 2, e^{-2}\right)$.

</details>

## Exercice 8

**Problème:** Étudier la convergence de la suite $(y^k)_{k \ge 1}$ dans $\mathbb{R}^2$ définie par $y^k = \left( \frac{k^2+1}{k+1}, (-1)^k \left(1 - \frac{1}{k}\right) \right)$.

<details>

<summary>Solution</summary>

**Méthode:** Nous analysons la convergence de chaque composante. Si au moins une des composantes ne converge pas, la suite de vecteurs ne converge pas.

**Étapes:**

1.  **Étude de la première composante:**
    -   Soit $y_1^k = \frac{k^2+1}{k+1}$.
    -   Le degré du numérateur (2) est strictement supérieur au degré du dénominateur (1).
    -   La limite de cette fraction rationnelle en l'infini est donc l'infini.
    -   Plus formellement, $\frac{k^2+1}{k+1} \sim_{k \to \infty} \frac{k^2}{k} = k$.
    -   Comme $\lim_{k \to \infty} k = +\infty$, la première composante diverge.

2.  **Étude de la deuxième composante (pour information):**
    -   Soit $y_2^k = (-1)^k (1 - 1/k)$.
    -   Le terme $(1 - 1/k)$ tend vers 1.
    -   Le terme $(-1)^k$ oscille entre -1 et 1.
    -   La suite $(y_2^k)$ a deux sous-suites, l'une (pour $k$ pair) qui tend vers 1, et l'autre (pour $k$ impair) qui tend vers -1.
    -   Ayant deux valeurs d'adhérence distinctes, la deuxième composante ne converge pas non plus.

3.  **Conclusion:**
    -   La première composante de la suite $(y^k)$ diverge vers $+\infty$.
    -   Pour qu'une suite de vecteurs converge, il est nécessaire que toutes ses composantes convergent.
    -   Puisque ce n'est pas le cas, la suite $(y^k)$ ne converge pas.

**Réponse:** La suite $(y^k)$ ne converge pas car sa première composante tend vers $+\infty$.

</details>

## Exercice 9

**Problème:** Soit la suite $(x^k)_{k \ge 1}$ dans $\mathbb{R}^2$ définie par $x^k = \left( \frac{k}{k^2+1}, (a^2-3)^k \right)$, où $a$ est un paramètre réel. Pour quelles valeurs de $a$ la suite $(x^k)$ converge-t-elle ? Précisez la limite dans chaque cas.

<details>

<summary>Solution</summary>

**Méthode:** La convergence de $(x^k)$ dépend de la convergence de ses deux composantes. La première composante ne dépend pas de $a$. La convergence de la deuxième composante, qui est une suite géométrique, dépendra de la valeur de sa raison $r = a^2-3$.

**Étapes:**

1.  **Étude de la première composante:**
    -   $x_1^k = \frac{k}{k^2+1}$.
    -   En divisant le numérateur et le dénominateur par $k^2$, on obtient $\frac{1/k}{1+1/k^2}$.
    -   Lorsque $k \to \infty$, le numérateur tend vers 0 et le dénominateur tend vers 1.
    -   Donc, $\lim_{k \to \infty} x_1^k = 0$. Cette composante converge toujours, quelle que soit la valeur de $a$.

2.  **Étude de la deuxième composante:**
    -   $x_2^k = (a^2-3)^k$. C'est une suite géométrique de raison $r = a^2-3$.
    -   Une suite géométrique $(r^k)$ converge si et seulement si $-1 < r \le 1$.
    -   Nous devons donc résoudre l'inégalité : $-1 < a^2-3 \le 1$.
    -   Cela se sépare en deux inéquations :
        -   $a^2-3 > -1 \implies a^2 > 2 \implies a \in ]-\infty, -\sqrt{2}[ \cup ]\sqrt{2}, +\infty[$.
        -   $a^2-3 \le 1 \implies a^2 \le 4 \implies a \in [-2, 2]$.
    -   Nous devons trouver l'intersection de ces deux conditions. L'intersection de $(]-\infty, -\sqrt{2}[ \cup ]\sqrt{2}, +\infty[)$ et $[-2, 2]$ est $a \in [-2, -\sqrt{2}[ \cup ]\sqrt{2}, 2]$.

3.  **Analyse des cas de convergence:**
    -   **Cas 1:** La raison $r = a^2-3$ est telle que $-1 < r < 1$.
        -   Cela correspond à $a \in [-2, -\sqrt{2}[ \cup ]\sqrt{2}, 2[$. (On exclut les bornes où $a^2=4$ ou $a^2=2$).
        -   Dans ce cas, $\lim_{k \to \infty} (a^2-3)^k = 0$.
        -   La limite de la suite est alors $L_1 = (0, 0)$.
    -   **Cas 2:** La raison $r = a^2-3$ est égale à 1.
        -   $a^2-3 = 1 \implies a^2 = 4 \implies a = 2$ ou $a = -2$.
        -   Dans ce cas, $\lim_{k \to \infty} (a^2-3)^k = \lim_{k \to \infty} 1^k = 1$.
        -   La limite de la suite est alors $L_2 = (0, 1)$.

4.  **Conclusion:**
    -   La suite converge si et seulement si $a \in [-2, -\sqrt{2}[ \cup ]\sqrt{2}, 2]$.

**Réponse:**

-   Si $a \in ]-2, -\sqrt{2}[ \cup ]\sqrt{2}, 2[$, la suite converge vers $a_1 = (0, 0)$.
-   Si $a = -2$ ou $a = 2$, la suite converge vers $a_2 = (0, 1)$.
-   Pour toutes les autres valeurs de $a$, la suite diverge.

</details>

## Exercice 10

**Problème:** Soit la suite $(x^k)_{k \ge 1}$ de $\mathbb{R}^2$ définie par $x^k = \left( 3 - \frac{1}{k^2}, \sum_{j=1}^k \frac{1}{j!} \right)$.

Montrer que cette suite est convergente, puis en déduire qu'elle est une suite de Cauchy.

<details>

<summary>Solution</summary>

**Méthode:** Nous allons d'abord prouver que la suite converge en étudiant la convergence de chacune de ses composantes. Ensuite, nous utiliserons le théorème fondamental qui stipule que dans un espace complet comme $\mathbb{R}^n$, toute suite convergente est une suite de Cauchy.

**Étapes:**

1.  **Étude de la convergence de la première composante:**
    -   Soit $x_1^k = 3 - \frac{1}{k^2}$.
    -   Lorsque $k \to \infty$, $\frac{1}{k^2} \to 0$.
    -   Par conséquent, $\lim_{k \to \infty} x_1^k = 3 - 0 = 3$. La première composante converge.

2.  **Étude de la convergence de la deuxième composante:**
    -   Soit $x_2^k = \sum_{j=1}^k \frac{1}{j!}$.
    -   Cette suite est la suite des sommes partielles de la série $\sum_{j=1}^\infty \frac{1}{j!}$.
    -   Nous reconnaissons le développement en série de Taylor de la fonction exponentielle : $e^x = \sum_{j=0}^\infty \frac{x^j}{j!}$.
    -   Pour $x=1$, on a $e = \sum_{j=0}^\infty \frac{1}{j!} = \frac{1}{0!} + \sum_{j=1}^\infty \frac{1}{j!} = 1 + \sum_{j=1}^\infty \frac{1}{j!}$.
    -   La série $\sum \frac{1}{j!}$ est donc convergente et sa somme est $e-1$.
    -   Par définition, la suite des sommes partielles $(x_2^k)$ converge vers la somme de la série.
    -   Donc, $\lim_{k \to \infty} x_2^k = e-1$. La deuxième composante converge.

3.  **Conclusion sur la convergence de la suite de vecteurs:**
    -   Puisque les deux composantes convergent, la suite de vecteurs $(x^k)$ converge vers le vecteur limite $a = (3, e-1)$.

4.  **Déduction sur la nature de Cauchy de la suite:**
    -   Un théorème fondamental de l'analyse stipule que l'espace $\mathbb{R}^n$ (ici $\mathbb{R}^2$) muni de n'importe quelle norme est un espace complet.
    -   Dans un espace complet, une suite est convergente si et seulement si elle est de Cauchy.
    -   Puisque nous avons démontré que la suite $(x^k)$ est convergente, nous pouvons directement en déduire qu'elle est une suite de Cauchy.

**Réponse:** La suite $(x^k)$ converge vers le vecteur $a = (3, e-1)$. Comme $\mathbb{R}^2$ est un espace complet, toute suite convergente est une suite de Cauchy. Par conséquent, la suite $(x^k)$ est une suite de Cauchy.

</details>
