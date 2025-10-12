---
id: 99067ed4
type: concepts
order: 10
title: Normes sur Rⁿ et suites convergentes - concepts (A)
tags:
  - normes
  - suites
  - convergence
  - topologie
  - analyse
course: Topologie I
courseId: 34e61f8e
chapter: Normes sur Rⁿ et suites convergentes
chapterId: 629d2832
level: regular
createdAt: '2025-10-12T15:02:23.733Z'
---
# Normes sur Rⁿ et suites convergentes (A)

---

## Concept 1: Norme sur un Espace Vectoriel

### Prérequis

-   **Espace vectoriel** : Compréhension de la structure de $\mathbb{R}^n$ comme un espace vectoriel, incluant l'addition de vecteurs et la multiplication par un scalaire.
-   **Vecteur nul** : Savoir que le vecteur nul, noté $0_{\mathbb{R}^n}$, est l'élément neutre pour l'addition.
-   **Valeur absolue** : Maîtrise des propriétés de la valeur absolue d'un nombre réel, notamment $|x| \ge 0$, $|x|=0 \iff x=0$, $|\lambda x| = |\lambda||x|$ et $|x+y| \le |x|+|y|$.

### Définition

On appelle **norme** sur $\mathbb{R}^n$ une application, notée $N$ (ou plus couramment $\| \cdot \|$), qui associe à chaque vecteur $x \in \mathbb{R}^n$ un nombre réel positif ou nul $N(x) \in \mathbb{R}_+$, et qui vérifie les trois propriétés (ou axiomes) suivantes pour tous vecteurs $x, y \in \mathbb{R}^n$ et tout scalaire $\lambda \in \mathbb{R}$ :

1.  **Séparation (ou non-dégénérescence)** : $N(x) = 0 \iff x = 0_{\mathbb{R}^n}$.
    -   Cette propriété assure que seul le vecteur nul a une "longueur" nulle. Tout autre vecteur a une longueur strictement positive.

2.  **Homogénéité (ou mise à l'échelle)** : $N(\lambda x) = |\lambda| N(x)$.
    -   Cette propriété signifie que si l'on "étire" ou "rétrécit" un vecteur d'un facteur $\lambda$, sa longueur est multipliée par la valeur absolue de ce facteur, $|\lambda|$. Le sens du vecteur n'affecte pas sa longueur.

3.  **Inégalité triangulaire (ou sous-additivité)** : $N(x + y) \le N(x) + N(y)$.
    -   Cette propriété est fondamentale. Géométriquement, dans un triangle formé par les vecteurs $x$, $y$ et $x+y$, la longueur du côté $x+y$ est toujours inférieure ou égale à la somme des longueurs des deux autres côtés. En d'autres termes, le chemin direct est toujours le plus court.

Un espace vectoriel muni d'une norme est appelé un **espace vectoriel normé**. La norme est une généralisation de la notion de "longueur" d'un vecteur.

### Propriétés et Caractéristiques Clés

-   **Positivité** : Pour tout $x \in \mathbb{R}^n$, $N(x) \ge 0$. Cette propriété découle des axiomes. En effet, $N(x) = N(x - 0_{\mathbb{R}^n}) \ge |N(x) - N(0_{\mathbb{R}^n})| = N(x)$ (en utilisant l'inégalité triangulaire renversée). Plus simplement, $0 = N(0_{\mathbb{R}^n}) = N(x - x) \le N(x) + N(-x) = N(x) + |-1|N(x) = 2N(x)$, donc $N(x) \ge 0$.
-   **Inégalité triangulaire renversée** : Pour tous $x, y \in \mathbb{R}^n$, on a $|N(x) - N(y)| \le N(x - y)$.
    -   *Démonstration* : On a $N(x) = N(x - y + y) \le N(x - y) + N(y)$, donc $N(x) - N(y) \le N(x - y)$. De même, $N(y) = N(y - x + x) \le N(y - x) + N(x)$, ce qui donne $N(y) - N(x) \le N(y - x) = N(x - y)$, ou encore $-(N(x) - N(y)) \le N(x-y)$. En combinant les deux inégalités, on obtient le résultat.
-   **Distance associée** : Une norme $N$ sur $\mathbb{R}^n$ permet de définir une distance $d(x, y) = N(x - y)$. Cette distance mesure "l'écart" entre les deux vecteurs $x$ et $y$.

### Exemples

**Exemple 1 : La valeur absolue sur $\mathbb{R}$**

Sur l'espace vectoriel $\mathbb{R}^1 = \mathbb{R}$, l'application "valeur absolue" $N(x) = |x|$ est une norme.

-   **Séparation** : $|x| = 0 \iff x = 0$. C'est une propriété de base de la valeur absolue.
-   **Homogénéité** : $|\lambda x| = |\lambda| |x|$ pour tout $\lambda, x \in \mathbb{R}$. C'est également une propriété standard.
-   **Inégalité triangulaire** : $|x+y| \le |x|+|y|$ pour tout $x, y \in \mathbb{R}$. C'est l'inégalité triangulaire classique sur les réels.

**Exemple 2 : Une norme pondérée sur $\mathbb{R}^2$**

Considérons l'application $N: \mathbb{R}^2 \to \mathbb{R}_+$ définie par $N(x_1, x_2) = 2|x_1| + 3|x_2|$. Montrons que c'est une norme.

Soient $x = (x_1, x_2)$ et $y = (y_1, y_2)$ dans $\mathbb{R}^2$, et $\lambda \in \mathbb{R}$.

-   **Séparation** : $N(x_1, x_2) = 2|x_1| + 3|x_2| = 0$. Comme $2|x_1| \ge 0$ et $3|x_2| \ge 0$, leur somme est nulle si et seulement si $2|x_1|=0$ et $3|x_2|=0$, ce qui implique $|x_1|=0$ et $|x_2|=0$, donc $x_1=0$ et $x_2=0$. Ainsi, $x = (0,0) = 0_{\mathbb{R}^2}$.
-   **Homogénéité** : $N(\lambda x) = N(\lambda x_1, \lambda x_2) = 2|\lambda x_1| + 3|\lambda x_2| = 2|\lambda||x_1| + 3|\lambda||x_2| = |\lambda|(2|x_1| + 3|x_2|) = |\lambda| N(x)$.
-   **Inégalité triangulaire** :

    $$ \begin{align*} N(x+y) &= N(x_1+y_1, x_2+y_2) = 2|x_1+y_1| + 3|x_2+y_2| \\ &\le 2(|x_1|+|y_1|) + 3(|x_2|+|y_2|) \quad \text{(par l'inégalité triangulaire sur R)} \\ &= (2|x_1|+3|x_2|) + (2|y_1|+3|y_2|) = N(x) + N(y). \end{align*} $$

Tous les axiomes sont vérifiés, donc $N$ est une norme.

**Exemple 3 : Une norme "mixte" sur $\mathbb{R}^2$**

Considérons l'application $N(x, y) = |x + 2y| + 3|y|$ de l'exercice fondamental 1.3.

-   **Séparation** : Si $N(x, y) = 0$, alors $|x + 2y| = 0$ et $3|y| = 0$. La deuxième équation donne $y=0$. En remplaçant dans la première, on obtient $|x| = 0$, donc $x=0$. Ainsi, $(x,y)=(0,0)$.
-   **Homogénéité** : $N(\lambda x, \lambda y) = |\lambda x + 2\lambda y| + 3|\lambda y| = |\lambda(x+2y)| + 3|\lambda||y| = |\lambda||x+2y| + 3|\lambda||y| = |\lambda| N(x,y)$.
-   **Inégalité triangulaire** :

    $$ \begin{align*} N(x+x', y+y') &= |(x+x') + 2(y+y')| + 3|y+y'| \\ &= |(x+2y) + (x'+2y')| + 3|y+y'| \\ &\le |x+2y| + |x'+2y'| + 3(|y|+|y'|) \\ &= (|x+2y| + 3|y|) + (|x'+2y'| + 3|y'|) = N(x,y) + N(x',y'). \end{align*} $$

C'est donc bien une norme sur $\mathbb{R}^2$.

### Contre-exemples

**Contre-exemple 1 : Violation de la séparation**

Soit $A: \mathbb{R}^2 \to \mathbb{R}_+$ définie par $A(x_1, x_2) = |x_1|$. Cette application n'est pas une norme. Prenons le vecteur non nul $x = (0, 5)$. On a $A(0, 5) = |0| = 0$, mais $x \neq 0_{\mathbb{R}^2}$. L'axiome de séparation est violé.

**Contre-exemple 2 : Violation de l'homogénéité**

Soit $B: \mathbb{R}^n \to \mathbb{R}_+$ définie par $B(x) = \left(\sum_{i=1}^n x_i^2\right)^2$. Cette application n'est pas une norme.

$B(\lambda x) = \left(\sum_{i=1}^n (\lambda x_i)^2\right)^2 = \left(\lambda^2 \sum_{i=1}^n x_i^2\right)^2 = \lambda^4 \left(\sum_{i=1}^n x_i^2\right)^2 = \lambda^4 B(x)$.

Ceci n'est pas égal à $|\lambda|B(x)$ en général. Par exemple, pour $\lambda=2$, on a $B(2x) = 16 B(x) \neq 2 B(x)$. L'axiome d'homogénéité est violé.

### Concepts Connexes

-   **Distance** : Toute norme $N$ induit une distance $d(x, y) = N(x - y)$, qui mesure l'écart entre deux points. Attention, toutes les distances ne proviennent pas d'une norme.
-   **Espace vectoriel normé** : Un espace vectoriel muni d'une norme. C'est le cadre de base pour l'étude de la topologie et de l'analyse en dimension finie et infinie.
-   **Boule unité** : L'ensemble des vecteurs $x$ tels que $N(x) \le 1$ (boule unité fermée) ou $N(x) < 1$ (boule unité ouverte). La forme de la boule unité caractérise la norme.

---

## Concept 2: Les Trois Normes Fondamentales sur Rⁿ

### Prérequis

-   Concept 1: Norme sur un Espace Vectoriel
-   Sommation ($\sum$) et maximum d'un ensemble fini de nombres.
-   Racine carrée et ses propriétés.

### Définition

Sur l'espace vectoriel $\mathbb{R}^n$, il existe trois normes particulièrement importantes et fréquemment utilisées. Pour un vecteur $x = (x_1, x_2, \dots, x_n) \in \mathbb{R}^n$ :

1.  **Norme 1 (ou Norme de Manhattan)** :

    $$ \|x\|_1 \stackrel{\text{déf}}{=} \sum_{j=1}^{n} |x_j| = |x_1| + |x_2| + \dots + |x_n| $$

2.  **Norme 2 (ou Norme Euclidienne)** :

    $$ \|x\|_2 \stackrel{\text{déf}}{=} \sqrt{\sum_{j=1}^{n} x_j^2} = \sqrt{x_1^2 + x_2^2 + \dots + x_n^2} $$

3.  **Norme infinie (ou Norme du maximum)** :

    $$ \|x\|_\infty \stackrel{\text{déf}}{=} \max_{1 \le j \le n} |x_j| = \max(|x_1|, |x_2|, \dots, |x_n|) $$

Ces trois applications sont bien des normes, c'est-à-dire qu'elles satisfont les trois axiomes de séparation, d'homogénéité et l'inégalité triangulaire.

### Explications Détaillées

-   La **norme 1** est appelée "norme de Manhattan" car elle correspond à la distance qu'un taxi parcourrait dans une ville où les rues forment une grille (comme à Manhattan). Pour aller d'un point A à un point B, on ne peut pas traverser les immeubles en diagonale ; on doit suivre les rues, ce qui revient à additionner les distances horizontales et verticales.
-   La **norme 2** est la norme la plus intuitive. Elle correspond à la notion habituelle de longueur "à vol d'oiseau", directement issue du théorème de Pythagore en dimensions 2 et 3, et généralisée à $n$ dimensions. C'est la distance la plus courte entre deux points dans l'espace euclidien.
-   La **norme infinie** mesure la "taille" d'un vecteur par sa plus grande composante en valeur absolue. Elle est très utile en analyse numérique et en théorie de l'approximation, où l'on cherche souvent à minimiser la plus grande erreur possible (l'erreur "maximale").

### Propriétés et Caractéristiques Clés

-   **Vérification des axiomes** : Les démonstrations que ces trois applications sont des normes reposent sur les propriétés de la valeur absolue (pour les normes 1 et $\infty$) et sur une inégalité fondamentale pour la norme 2.
-   **Inégalité de Cauchy-Schwarz** : Pour la norme euclidienne, la preuve de l'inégalité triangulaire nécessite l'inégalité de Cauchy-Schwarz. Pour tous vecteurs $x, y \in \mathbb{R}^n$ :

    $$ \left| \sum_{j=1}^{n} x_j y_j \right| \le \left(\sum_{j=1}^{n} x_j^2\right)^{1/2} \left(\sum_{j=1}^{n} y_j^2\right)^{1/2} \quad \text{soit} \quad |\langle x, y \rangle| \le \|x\|_2 \|y\|_2 $$

    L'égalité a lieu si et seulement si les vecteurs $x$ et $y$ sont colinéaires (c'est-à-dire, l'un est un multiple de l'autre).

### Exemples

**Exemple 1 : Calcul de normes pour un vecteur dans $\mathbb{R}^5$**

Soit le vecteur $u = (1, -1, 2, -3, 1) \in \mathbb{R}^5$.

-   **Norme 1** :

    $$ \|u\|_1 = |1| + |-1| + |2| + |-3| + |1| = 1 + 1 + 2 + 3 + 1 = 8 $$

-   **Norme 2** :

    $$ \|u\|_2 = \sqrt{1^2 + (-1)^2 + 2^2 + (-3)^2 + 1^2} = \sqrt{1 + 1 + 4 + 9 + 1} = \sqrt{16} = 4 $$

-   **Norme infinie** :

    $$ \|u\|_\infty = \max(|1|, |-1|, |2|, |-3|, |1|) = \max(1, 1, 2, 3, 1) = 3 $$

**Exemple 2 : Boules unité dans $\mathbb{R}^2$**

La "boule unité" est l'ensemble des points $x$ tels que $\|x\| \le 1$. Sa frontière, appelée "sphère unité", est l'ensemble des points où $\|x\| = 1$. La forme de ces ensembles dépend de la norme. Dans $\mathbb{R}^2$, pour un point $(x, y)$:

-   **Sphère unité pour $\| \cdot \|_1$** : L'équation est $|x| + |y| = 1$. Cela dessine un carré dont les sommets sont $(1,0), (0,1), (-1,0), (0,-1)$.
-   **Sphère unité pour $\| \cdot \|_2$** : L'équation est $\sqrt{x^2 + y^2} = 1$, soit $x^2 + y^2 = 1$. C'est le cercle trigonométrique usuel.
-   **Sphère unité pour $\| \cdot \|_\infty$** : L'équation est $\max(|x|, |y|) = 1$. Cela dessine un carré dont les côtés sont parallèles aux axes et les sommets sont $(1,1), (-1,1), (-1,-1), (1,-1)$.

![Image des boules unité](https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Vector_p-norms_on_R2.svg/300px-Vector_p-norms_on_R2.svg.png)

**Exemple 3 : Un vecteur dans $\mathbb{R}^3$**

Soit $v = (2, -4, 4) \in \mathbb{R}^3$.

-   $\|v\|_1 = |2| + |-4| + |4| = 2 + 4 + 4 = 10$.
-   $\|v\|_2 = \sqrt{2^2 + (-4)^2 + 4^2} = \sqrt{4 + 16 + 16} = \sqrt{36} = 6$.
-   $\|v\|_\infty = \max(|2|, |-4|, |4|) = 4$.

### Contre-exemples

**Contre-exemple 1 : Une fonction qui n'est pas une norme (pas d'inégalité triangulaire)**

Considérons l'application $p(x) = \left(\sum_{i=1}^n \sqrt{|x_i|}\right)^2$ sur $\mathbb{R}^n$. Ce n'est pas une norme. Elle vérifie la séparation et une forme d'homogénéité, mais pas l'inégalité triangulaire.

Soit $n=2$, $x=(1,0)$ et $y=(0,1)$.

-   $p(x) = (\sqrt{1} + \sqrt{0})^2 = 1$.
-   $p(y) = (\sqrt{0} + \sqrt{1})^2 = 1$.
-   $x+y = (1,1)$, donc $p(x+y) = (\sqrt{1} + \sqrt{1})^2 = 2^2 = 4$.

On a $p(x+y) = 4$, ce qui est strictement supérieur à $p(x) + p(y) = 1+1=2$. L'inégalité triangulaire $p(x+y) \le p(x) + p(y)$ est donc violée.

**Contre-exemple 2 : Distance non-associée à une norme**

La distance discrète $d(x,y)$ sur $\mathbb{R}^n$ est définie par $d(x,y)=0$ si $x=y$ et $d(x,y)=1$ si $x \neq y$.

Cette distance ne peut pas provenir d'une norme car elle ne respecte pas l'homogénéité. Si elle provenait d'une norme $N$, on aurait $d(x,0) = N(x)$. Soit $x \neq 0$. Alors $N(x)=1$. Pour $\lambda = 2$, on a $2x \neq 0$ donc $N(2x)=1$. Or, selon l'axiome d'homogénéité, on devrait avoir $N(2x) = |2|N(x) = 2 \times 1 = 2$. Comme $1 \neq 2$, cette distance n'est pas associée à une norme.

### Concepts Connexes

-   **Normes équivalentes** : Les trois normes fondamentales, bien que donnant des valeurs différentes pour la "longueur" d'un vecteur, sont "équivalentes", ce qui signifie qu'elles définissent la même notion de "petitesse" ou de convergence.
-   **Produit scalaire** : La norme euclidienne est la seule des trois qui est associée à un produit scalaire : $\|x\|_2 = \sqrt{\langle x, x \rangle}$ où $\langle x, y \rangle = \sum x_i y_i$.

---

## Concept 3: Normes Équivalentes

### Prérequis

-   Concept 1: Norme sur un Espace Vectoriel
-   Inégalités et manipulation de constantes réelles positives.

### Définition

Soient $N_1$ et $N_2$ deux normes sur $\mathbb{R}^n$. On dit que $N_1$ est **équivalente** à $N_2$ s’il existe deux constantes réelles strictement positives, $\alpha > 0$ et $\beta > 0$, telles que pour **tout** vecteur $x \in \mathbb{R}^n$ :

$$

\alpha N_1(x) \le N_2(x) \le \beta N_1(x)

$$

Il est crucial de noter que les constantes $\alpha$ et $\beta$ sont universelles : elles doivent être les mêmes pour tous les vecteurs $x$ de l'espace.

### Explications Détaillées

L'équivalence des normes est un concept puissant. Intuitivement, si deux normes sont équivalentes, cela signifie qu'elles mesurent la taille des vecteurs de manière comparable. Un vecteur considéré comme "petit" par une norme le sera également par l'autre, et un vecteur "grand" pour l'une le sera aussi pour l'autre.

L'inégalité $N_2(x) \le \beta N_1(x)$ signifie que la norme $N_2$ est "contrôlée" ou "majorée" par la norme $N_1$.

L'inégalité $\alpha N_1(x) \le N_2(x)$ (qui peut aussi s'écrire $N_1(x) \le \frac{1}{\alpha} N_2(x)$) signifie que $N_1$ est contrôlée par $N_2$.

L'équivalence est donc un contrôle mutuel entre les deux normes.

### Propriétés et Caractéristiques Clés

-   **Relation d'équivalence** : La relation "est équivalente à" est une relation d'équivalence :
    -   **Réflexivité** : Toute norme $N$ est équivalente à elle-même (prendre $\alpha=\beta=1$).
    -   **Symétrie** : Si $N_1$ est équivalente à $N_2$, alors $N_2$ est équivalente à $N_1$. (Si $\alpha N_1 \le N_2 \le \beta N_1$, alors $\frac{1}{\beta} N_2 \le N_1 \le \frac{1}{\alpha} N_2$).
    -   **Transitivité** : Si $N_1$ est équivalente à $N_2$ et $N_2$ est équivalente à $N_3$, alors $N_1$ est équivalente à $N_3$.

-   **Théorème fondamental en dimension finie** : Dans un espace vectoriel de dimension finie comme $\mathbb{R}^n$, **toutes les normes sont équivalentes**. C'est un résultat majeur. Cela implique que peu importe la norme que l'on choisit pour travailler sur $\mathbb{R}^n$, les notions topologiques fondamentales (comme la convergence, la continuité, les ouverts) seront les mêmes.

### Exemples

**Exemple 1 : Équivalence des trois normes fondamentales**

Pour tout $x \in \mathbb{R}^n$, on a les inégalités suivantes :

$$

\|x\|_\infty \le \|x\|_2 \le \|x\|_1 \le \sqrt{n} \|x\|_2 \le n \|x\|_\infty

$$

-   **Équivalence entre $\| \cdot \|_\infty$ et $\| \cdot \|_1$** : Des inégalités ci-dessus, on tire $\|x\|_\infty \le \|x\|_1$ et $\|x\|_1 \le n\|x\|_\infty$. Donc, en posant $\alpha=1$ et $\beta=n$, on a $\alpha \|x\|_\infty \le \|x\|_1 \le \beta \|x\|_\infty$. Ces deux normes sont donc équivalentes.
-   **Équivalence entre $\| \cdot \|_2$ et $\| \cdot \|_\infty$** : On a $\|x\|_\infty \le \|x\|_2$ et $\|x\|_2 \le \sqrt{n}\|x\|_\infty$ (obtenu en remarquant que $\sum x_j^2 \le \sum (\|x\|_\infty)^2 = n \|x\|_\infty^2$). Donc, avec $\alpha=1$ et $\beta=\sqrt{n}$, les normes sont équivalentes.

**Exemple 2 : Démonstration d'une des inégalités pour $n=3$**

Montrons que $\|x\|_1 \le \sqrt{3} \|x\|_2$ pour $x \in \mathbb{R}^3$. Soit $x=(x_1, x_2, x_3)$.

On veut montrer $|x_1| + |x_2| + |x_3| \le \sqrt{3} \sqrt{x_1^2 + x_2^2 + x_3^2}$.

Ceci est une application de l'inégalité de Cauchy-Schwarz. Soient les vecteurs $u = (|x_1|, |x_2|, |x_3|)$ et $v=(1, 1, 1)$.

L'inégalité de Cauchy-Schwarz $|\langle u, v \rangle| \le \|u\|_2 \|v\|_2$ nous donne :

$$ |\sum u_i v_i| \le \sqrt{\sum u_i^2} \sqrt{\sum v_i^2} $$

$$ |x_1|\cdot 1 + |x_2|\cdot 1 + |x_3|\cdot 1 \le \sqrt{|x_1|^2 + |x_2|^2 + |x_3|^2} \sqrt{1^2+1^2+1^2} $$

$$ \|x\|_1 \le \sqrt{x_1^2 + x_2^2 + x_3^2} \sqrt{3} = \sqrt{3} \|x\|_2 $$

**Exemple 3 : Équivalence avec une norme "exotique"**

Montrons que la norme $N(x, y) = |x| + |x-y|$ sur $\mathbb{R}^2$ est équivalente à la norme infinie $\|(x,y)\|_\infty = \max(|x|, |y|)$.

-   **Majoration de $N$ par $\| \cdot \|_\infty$** :

    $N(x, y) = |x| + |x-y| \le |x| + (|x| + |y|) = 2|x| + |y|$.

    Comme $|x| \le \|(x,y)\|_\infty$ et $|y| \le \|(x,y)\|_\infty$, on a :

    $N(x, y) \le 2\|(x,y)\|_\infty + \|(x,y)\|_\infty = 3\|(x,y)\|_\infty$. On a donc une constante $\beta = 3$.

-   **Minoration de $N$ par $\| \cdot \|_\infty$** :

    On a $|x| \le N(x,y)$. De plus, $|y| = |y-x+x| \le |y-x|+|x| = |x-y|+|x| = N(x,y)$.

    Donc, $\|(x,y)\|_\infty = \max(|x|, |y|) \le N(x,y)$. On peut prendre $\alpha=1$.

Au final, $1 \cdot \|(x,y)\|_\infty \le N(x,y) \le 3 \cdot \|(x,y)\|_\infty$, ce qui prouve l'équivalence.

### Contre-exemples

**Contre-exemple 1 : Constantes dépendant de $n$**

Les constantes d'équivalence entre les normes 1, 2 et $\infty$ dépendent de la dimension $n$. Par exemple, $\|x\|_1 \le \sqrt{n} \|x\|_2$. Quand $n \to \infty$, la constante $\sqrt{n}$ tend vers l'infini. Cela suggère qu'en dimension infinie, les normes pourraient ne plus être équivalentes, ce qui est le cas.

**Contre-exemple 2 : Le cas de la dimension infinie**

Considérons l'espace des fonctions continues sur $[0, 1]$, noté $C([0, 1])$. On peut le munir de la norme infinie $\|f\|_\infty = \max_{t \in [0,1]} |f(t)|$ et de la norme 1 $\|f\|_1 = \int_0^1 |f(t)| dt$.

Ces deux normes ne sont pas équivalentes.

Considérons la suite de fonctions $f_k(t) = t^k$ pour $k \in \mathbb{N}$.

- $\|f_k\|_\infty = \max_{t \in [0,1]} t^k = 1^k = 1$.
- $\|f_k\|_1 = \int_0^1 t^k dt = \left[\frac{t^{k+1}}{k+1}\right]_0^1 = \frac{1}{k+1}$.

Si les normes étaient équivalentes, il existerait $\alpha > 0$ tel que $\alpha \|f\|_\infty \le \|f\|_1$ pour toute fonction $f$.

Pour notre suite de fonctions, cela donnerait $\alpha \cdot 1 \le \frac{1}{k+1}$, soit $\alpha(k+1) \le 1$. Mais quand $k \to \infty$, le membre de gauche tend vers l'infini, ce qui est impossible. Donc les normes ne sont pas équivalentes.

### Concepts Connexes

-   **Convergence des suites** : Le principal intérêt de l'équivalence des normes est que la notion de convergence d'une suite ne dépend pas de la norme choisie. Si une suite converge pour une norme, elle converge pour toutes les autres (vers la même limite).
-   **Topologie** : L'équivalence des normes implique qu'elles définissent toutes la même topologie (les mêmes ensembles ouverts, fermés, compacts, etc.).

---

## Concept 4: Convergence des Suites dans Rⁿ

### Prérequis

-   **Suites réelles** : Définition de la convergence d'une suite de nombres réels ($\forall \varepsilon > 0, \exists N, \dots$).
-   Concept 1: Norme sur un Espace Vectoriel et sa distance associée.
-   Concept 3: Normes Équivalentes.

### Définition

Soit $\| \cdot \|$ une norme sur $\mathbb{R}^n$. Soit $(x^k)_{k \in \mathbb{N}}$ une suite de vecteurs de $\mathbb{R}^n$ (où $x^k = (x_1^k, x_2^k, \dots, x_n^k)$) et $a$ un vecteur de $\mathbb{R}^n$.

On dit que la suite $(x^k)$ **converge vers** $a$ (pour la norme $\| \cdot \|$) si la suite des distances (réelles et positives) $\|x^k - a\|$ tend vers $0$ lorsque $k$ tend vers l'infini.

Formellement, $(x^k)$ converge vers $a$ si et seulement si :

$$ \forall \varepsilon > 0, \quad \exists k_\varepsilon \in \mathbb{N} \text{ tel que } \forall k \ge k_\varepsilon, \quad \|x^k - a\| < \varepsilon $$

On note alors $\lim_{k \to \infty} x^k = a$ ou $x^k \xrightarrow{k \to \infty} a$.

### Explications Détaillées

La convergence d'une suite de vecteurs est une généralisation directe de la convergence des suites réelles. Au lieu de mesurer la distance entre deux nombres avec la valeur absolue $|u_n - L|$, on mesure la distance entre deux vecteurs avec une norme $\|x^k - a\|$.

L'idée intuitive est la même : à partir d'un certain rang $k_\varepsilon$, tous les vecteurs de la suite se trouvent à l'intérieur d'une "boule" de rayon $\varepsilon$ centrée en $a$. Peu importe la petitesse de $\varepsilon$, on peut toujours trouver un rang à partir duquel la suite est "piégée" dans cette boule.

**Attention à la notation** : l'indice $k$ en exposant dans $x^k$ désigne le terme de la suite (le "temps"), tandis que l'indice $j$ en indice dans $x_j^k$ désigne la $j$-ème composante du $k$-ème vecteur.

### Propriétés et Caractéristiques Clés

-   **Unicité de la limite** : Si une suite converge, sa limite est unique. La démonstration utilise l'inégalité triangulaire pour montrer que si une suite avait deux limites distinctes $a$ et $b$, la distance $\|a-b\|$ serait plus petite que n'importe quel nombre positif, ce qui implique $\|a-b\|=0$ et donc $a=b$ par l'axiome de séparation.
-   **Indépendance de la norme** : Puisque toutes les normes sur $\mathbb{R}^n$ sont équivalentes, la convergence d'une suite ne dépend pas de la norme choisie. Si une suite converge pour $\| \cdot \|_1$, elle converge aussi pour $\| \cdot \|_2$ et $\| \cdot \|_\infty$ (et toute autre norme) vers la même limite. C'est pourquoi on peut simplement parler de "suite convergente dans $\mathbb{R}^n$" sans préciser la norme.
-   **Convergence composante par composante** : Une suite de vecteurs $x^k = (x_1^k, \dots, x_n^k)$ converge vers un vecteur $a=(a_1, \dots, a_n)$ si et seulement si chacune de ses suites de composantes (qui sont des suites réelles) converge vers la composante correspondante de $a$.

    $$ x^k \xrightarrow{k \to \infty} a \quad \iff \quad \forall j \in \{1, \dots, n\}, \quad x_j^k \xrightarrow{k \to \infty} a_j $$

    Cette propriété est extrêmement pratique car elle ramène l'étude de la convergence dans $\mathbb{R}^n$ à l'étude de $n$ suites réelles.

### Exemples

**Exemple 1 : Une suite convergente dans $\mathbb{R}^3$**

Soit la suite définie par $x^k = \left( \frac{k}{k+1}, \frac{(-1)^k}{k^2}, e^{-k} \right) \in \mathbb{R}^3$.

Pour déterminer si elle converge, on étudie chaque composante séparément :

-   $x_1^k = \frac{k}{k+1} = \frac{1}{1+1/k} \xrightarrow{k \to \infty} 1$.
-   $x_2^k = \frac{(-1)^k}{k^2}$. On a $|x_2^k| = \frac{1}{k^2} \to 0$, donc $x_2^k \xrightarrow{k \to \infty} 0$.
-   $x_3^k = e^{-k} = \frac{1}{e^k} \xrightarrow{k \to \infty} 0$.

Chaque composante converge, donc la suite de vecteurs converge vers le vecteur limite $a = (1, 0, 0)$.

**Exemple 2 : L'exemple de l'exercice fondamental 1.5**

Soit la suite $x^k := \begin{pmatrix} 2 \sin\left(\frac{\pi}{2} \frac{k}{k+1}\right) \\ 1 + k^3 e^{-k} \\ \ln(1 + 2^{-k}) \end{pmatrix}$.

-   Composante 1 : $\frac{k}{k+1} \to 1$, donc $\frac{\pi}{2}\frac{k}{k+1} \to \frac{\pi}{2}$. Par continuité de la fonction sinus, $x_1^k \to 2 \sin(\frac{\pi}{2}) = 2 \cdot 1 = 2$.
-   Composante 2 : Par croissances comparées, $\lim_{k\to\infty} k^3 e^{-k} = 0$. Donc $x_2^k \to 1+0=1$.
-   Composante 3 : $2^{-k} \to 0$. Par continuité de la fonction $\ln$, $x_3^k \to \ln(1+0) = 0$.

La suite converge donc vers le vecteur $a = (2, 1, 0)$.

**Exemple 3 : Une suite géométrique dans $\mathbb{R}^2$**

Soit la suite $x^k = \left( \left(\frac{1}{2}\right)^k, \left(-\frac{3}{4}\right)^k \right)$.

-   $x_1^k = (1/2)^k \to 0$ car $|1/2| < 1$.
-   $x_2^k = (-3/4)^k \to 0$ car $|-3/4| < 1$.

La suite converge donc vers le vecteur nul $(0,0)$.

### Contre-exemples

**Contre-exemple 1 : Une composante ne converge pas**

Soit la suite $x^k = \left( \frac{1}{k}, (-1)^k \right) \in \mathbb{R}^2$.

-   La première composante $x_1^k = 1/k$ converge vers $0$.
-   La deuxième composante $x_2^k = (-1)^k$ oscille entre -1 et 1 et ne converge pas.

Puisqu'au moins une des composantes ne converge pas, la suite de vecteurs $(x^k)$ ne converge pas.

**Contre-exemple 2 : Une composante diverge vers l'infini**

Soit la suite $x^k = \left( \frac{1}{k^2}, \ln(k) \right) \in \mathbb{R}^2$.

La deuxième composante $x_2^k = \ln(k)$ tend vers $+\infty$. La suite de vecteurs ne converge pas. On peut le voir avec n'importe quelle norme. Par exemple, avec la norme infinie :

$\|x^k\|_\infty = \max\left(\frac{1}{k^2}, \ln(k)\right) = \ln(k)$ pour $k \ge 2$.

Comme $\|x^k\|_\infty \to \infty$, la suite est non bornée et ne peut donc pas converger.

### Concepts Connexes

-   **Suites de Cauchy** : Toute suite convergente est une suite de Cauchy. Dans $\mathbb{R}^n$, la réciproque est vraie : toute suite de Cauchy est convergente. On dit que $\mathbb{R}^n$ est un espace complet.
-   **Continuité** : La notion de convergence des suites est le fondement de la définition de la continuité des fonctions entre espaces vectoriels normés. Une fonction $f$ est continue en un point $a$ si pour toute suite $(x^k)$ qui converge vers $a$, la suite des images $(f(x^k))$ converge vers $f(a)$.

---

## Concept 5: Suites de Cauchy

### Prérequis

-   Concept 4: Convergence des Suites dans Rⁿ
-   Concept 1: Norme sur un Espace Vectoriel et sa distance associée.

### Définition

Soit $\| \cdot \|$ une norme sur $\mathbb{R}^n$. Une suite $(x^k)_{k \in \mathbb{N}}$ de vecteurs de $\mathbb{R}^n$ est dite **suite de Cauchy** si ses termes se rapprochent arbitrairement les uns des autres à mesure que leurs indices augmentent.

Formellement, $(x^k)$ est de Cauchy si :

$$ \forall \varepsilon > 0, \quad \exists k_\varepsilon \in \mathbb{N} \text{ tel que } \forall p, q \ge k_\varepsilon, \quad \|x^p - x^q\| < \varepsilon $$

### Explications Détaillées

L'idée fondamentale d'une suite de Cauchy est de fournir un critère de convergence qui ne dépend que des termes de la suite elle-même, sans avoir besoin de connaître ou de mentionner la limite potentielle. La définition exprime que pour tout petit "rayon" $\varepsilon$, on peut trouver un rang $k_\varepsilon$ à partir duquel tous les termes de la suite sont contenus dans une boule de ce rayon. La suite se "contracte" ou se "ratatine" sur elle-même.

Dans l'espace $\mathbb{R}$, une suite est convergente si et seulement si elle est de Cauchy. Ce résultat s'étend à $\mathbb{R}^n$. L'importance de ce concept est qu'il permet de prouver qu'une suite converge sans avoir à deviner sa limite au préalable.

### Propriétés et Caractéristiques Clés

-   **Une suite convergente est toujours de Cauchy** : Si une suite $(x^k)$ converge vers une limite $a$, alors pour un $k$ assez grand, tous les $x^k$ sont proches de $a$. Par l'inégalité triangulaire, si $x^p$ et $x^q$ sont tous deux proches de $a$, ils doivent être proches l'un de l'autre.

    *Démonstration* : Soit $\varepsilon > 0$. Puisque $x^k \to a$, il existe $k_\varepsilon$ tel que si $k \ge k_\varepsilon$, $\|x^k - a\| < \varepsilon/2$. Alors pour $p, q \ge k_\varepsilon$, on a :

    $$ \|x^p - x^q\| = \|(x^p - a) + (a - x^q)\| \le \|x^p - a\| + \|a - x^q\| < \frac{\varepsilon}{2} + \frac{\varepsilon}{2} = \varepsilon $$

    La suite est donc de Cauchy.

-   **Complétude de $\mathbb{R}^n$** : Un espace vectoriel normé est dit **complet** si toute suite de Cauchy y est convergente. $\mathbb{R}^n$ est un espace complet pour n'importe quelle norme (puisqu'elles sont toutes équivalentes). C'est un résultat fondamental de l'analyse.

-   **Indépendance de la norme** : Tout comme la convergence, le fait d'être une suite de Cauchy ne dépend pas de la norme choisie sur $\mathbb{R}^n$, car toutes les normes y sont équivalentes.

### Exemples

**Exemple 1 : Une suite convergente, donc de Cauchy**

Considérons la suite $x^k = (\frac{1}{k}, 2 - \frac{1}{k^2})$ dans $\mathbb{R}^2$. Nous savons qu'elle converge vers $a=(0,2)$. Par la propriété ci-dessus, elle est de Cauchy.

Montrons-le directement. Soient $p, q \in \mathbb{N}$ avec (par exemple) $p > q$.

$$ \|x^p - x^q\|_1 = \left|\frac{1}{p} - \frac{1}{q}\right| + \left|\left(2 - \frac{1}{p^2}\right) - \left(2 - \frac{1}{q^2}\right)\right| = \left|\frac{q-p}{pq}\right| + \left|\frac{p^2-q^2}{p^2q^2}\right| $$

$$ \|x^p - x^q\|_1 = \frac{p-q}{pq} + \frac{(p-q)(p+q)}{p^2q^2} = \frac{1}{q} - \frac{1}{p} + \left(\frac{1}{q^2} - \frac{1}{p^2}\right) $$

Pour $\varepsilon > 0$ donné, on peut choisir $k_\varepsilon$ tel que si $q \ge k_\varepsilon$, $1/q < \varepsilon/4$. Alors si $p > q \ge k_\varepsilon$, les termes $\frac{1}{q}, \frac{1}{p}, \frac{1}{q^2}, \frac{1}{p^2}$ sont tous petits et on peut borner la somme par $\varepsilon$.

**Exemple 2 : Une suite définie par récurrence**

Soit une suite de réels $(u_k)$ définie par $u_0 = 1$ et $u_{k+1} = 1 + \frac{1}{u_k}$. Les premiers termes sont $1, 2, 3/2, 5/3, \dots$. On peut montrer que cette suite converge vers le nombre d'or $\phi = \frac{1+\sqrt{5}}{2}$. Étant convergente dans $\mathbb{R}$, elle est de Cauchy.

**Exemple 3 : Une série géométrique**

Considérons la suite des sommes partielles $S_k = \sum_{j=0}^k \frac{1}{2^j}$. C'est une suite de réels. Pour $p > q$,

$$ |S_p - S_q| = \sum_{j=q+1}^p \frac{1}{2^j} = \frac{1}{2^{q+1}} \frac{1 - (1/2)^{p-q}}{1 - 1/2} = \frac{1}{2^q}(1 - (1/2)^{p-q}) < \frac{1}{2^q} $$

Comme $1/2^q \to 0$ quand $q \to \infty$, la suite $(S_k)$ est de Cauchy. On sait par ailleurs qu'elle converge vers 2.

### Contre-exemples

**Contre-exemple 1 : Une suite non-Cauchy**

La suite $x^k = ((-1)^k, 1/k)$ dans $\mathbb{R}^2$ n'est pas de Cauchy.

Regardons la distance entre deux termes consécutifs.

$$ \|x^{k+1} - x^k\|_\infty = \max\left( |(-1)^{k+1} - (-1)^k|, \left|\frac{1}{k+1} - \frac{1}{k}\right| \right) $$

Le premier terme est $|-2(-1)^k| = 2$. Le second terme tend vers 0. Donc, pour $k$ assez grand,

$$ \|x^{k+1} - x^k\|_\infty = 2 $$

La distance entre termes consécutifs ne tend pas vers 0, donc la suite ne peut pas être de Cauchy. (Si on prend $\varepsilon=1$, on ne pourra jamais garantir que $\|x^p - x^q\| < 1$ pour tous les $p,q$ assez grands).

**Contre-exemple 2 : Une suite de Cauchy dans $\mathbb{Q}$ qui ne converge pas dans $\mathbb{Q}$**

L'espace des nombres rationnels $\mathbb{Q}$ n'est pas complet.

Considérons une suite de rationnels qui approxime $\sqrt{2}$. Par exemple, la suite définie par la méthode de Héron : $u_0=1$, $u_{k+1} = \frac{1}{2}(u_k + \frac{2}{u_k})$.

Cette suite $(u_k)$ est une suite de nombres rationnels. On peut montrer qu'elle est de Cauchy. Cependant, sa limite est $\sqrt{2}$, qui n'est pas un nombre rationnel.

Donc, $(u_k)$ est une suite de Cauchy dans $\mathbb{Q}$, mais elle n'a pas de limite dans $\mathbb{Q}$. Cet exemple illustre pourquoi la complétude est une propriété si importante de $\mathbb{R}$.

### Concepts Connexes

-   **Espace complet (ou Espace de Banach)** : Un espace vectoriel normé dans lequel toute suite de Cauchy converge. $\mathbb{R}^n$ est l'exemple prototypique. La complétude est cruciale pour garantir l'existence de solutions à de nombreux problèmes en analyse (équations différentielles, etc.).
-   **Analyse fonctionnelle** : Le concept de suite de Cauchy et de complétude est central en analyse fonctionnelle, où l'on étudie des espaces de dimension infinie (comme des espaces de fonctions).
