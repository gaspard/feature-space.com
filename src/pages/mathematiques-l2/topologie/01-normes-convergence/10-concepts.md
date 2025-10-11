---
title: A - Concepts
level: regular
course: Topologie et Calcul Différentiel I
chapter: Normes sur Rn et suites convergentes
order: 10
tags: ["concepts", "mathematics", "regular"]
---

# Normes sur Rn et suites convergentes (A)

---

## Concept 1: Norme sur $\mathbb{R}^n$

### Prérequis

- **Espace vectoriel $\mathbb{R}^n$**: Connaissance de la structure d'espace vectoriel de $\mathbb{R}^n$, y compris l'addition de vecteurs et la multiplication par un scalaire.
- **Nombres réels**: Maîtrise des propriétés des nombres réels, en particulier la valeur absolue ($|\cdot|$) et ses propriétés (séparation, homogénéité, inégalité triangulaire sur $\mathbb{R}$).
- **Vecteur nul**: Comprendre que le vecteur nul $0_{\mathbb{R}^n} = {^t(0, \dots, 0)}$ est l'élément neutre de l'addition vectorielle.

### Définition

On appelle **norme** sur $\mathbb{R}^n$ une application $N : \mathbb{R}^n \to \mathbb{R}_+$ qui, à chaque vecteur $x \in \mathbb{R}^n$, associe un nombre réel positif ou nul $N(x)$, et qui satisfait les trois propriétés (ou axiomes) suivantes pour tous vecteurs $x, y \in \mathbb{R}^n$ et tout scalaire $\lambda \in \mathbb{R}$ :

(i) **Séparation** : $N(x) = 0 \iff x = 0_{\mathbb{R}^n}$.

(ii) **Homogénéité** : $N(\lambda x) = |\lambda| N(x)$.

(iii) **Inégalité triangulaire** : $N(x + y) \leq N(x) + N(y)$.

L'ensemble $\mathbb{R}^n$ muni d'une norme $N$ est appelé un **espace vectoriel normé**.

### Explication Détaillée

Une norme peut être pensée intuitivement comme une fonction qui mesure la "longueur" ou la "taille" d'un vecteur. Chaque axiome de la définition formalise une propriété naturelle de cette notion de longueur :

1.  **Séparation** : Cet axiome dit que la longueur d'un vecteur est nulle si et seulement si ce vecteur est le vecteur nul. C'est la seule façon pour un vecteur d'avoir une "taille" nulle. Tout autre vecteur a une longueur strictement positive.
2.  **Homogénéité** : Cet axiome décrit comment la longueur change lorsqu'on "étire" ou "rétrécit" un vecteur. Si on multiplie un vecteur $x$ par un scalaire $\lambda$, sa nouvelle longueur est la longueur initiale multipliée par la valeur absolue de $\lambda$. Par exemple, doubler un vecteur double sa longueur, et le multiplier par $-1$ (ce qui change son sens mais pas sa direction) ne change pas sa longueur.
3.  **Inégalité triangulaire** : C'est la propriété la plus fondamentale. Géométriquement, dans un triangle formé par les points Origine (O), $x$ et $x+y$, la longueur du côté qui va de O à $x+y$ (représentant le vecteur $x+y$) est toujours inférieure ou égale à la somme des longueurs des deux autres côtés (les vecteurs $x$ et $y$). En d'autres termes, le chemin direct est toujours le plus court.

Étant donnée une norme $N$, on peut définir la **distance** entre deux vecteurs $x$ et $y$ comme étant la norme de leur différence : $d_N(x, y) = N(x - y)$. La norme d'un vecteur $x$ est donc sa distance à l'origine : $N(x) = d_N(x, 0_{\mathbb{R}^n})$.

### Propriétés Clés

- **Positivité** : Pour tout $x \in \mathbb{R}^n$, $N(x) \geq 0$. Ceci est inclus dans la définition de l'application $N: \mathbb{R}^n \to \mathbb{R}_+$.
- **Inégalité triangulaire renversée** : Pour tous $x, y \in \mathbb{R}^n$, on a $|N(x) - N(y)| \leq N(x - y)$. Cette propriété découle de l'inégalité triangulaire et signifie que la différence des longueurs de deux vecteurs est plus petite que la longueur de leur différence.

### Exemples

**Exemple 1 : La valeur absolue sur $\mathbb{R}$**

L'application "valeur absolue" $N(x) = |x|$ est une norme sur l'espace vectoriel $\mathbb{R}^1 = \mathbb{R}$.

- **Séparation**: $|x| = 0 \iff x = 0$. C'est vrai.
- **Homogénéité**: $|\lambda x| = |\lambda| |x|$. C'est une propriété de base de la valeur absolue.
- **Inégalité triangulaire**: $|x+y| \le |x| + |y|$. C'est l'inégalité triangulaire standard sur $\mathbb{R}$.

**Exemple 2 : Une norme non standard sur $\mathbb{R}$**

Soit l'application $N: \mathbb{R} \to \mathbb{R}_+$ définie par $N(x) = 3|x|$. Montrons que c'est une norme.

- **Séparation**: $N(x)=0 \iff 3|x|=0 \iff |x|=0 \iff x=0$.
- **Homogénéité**: $N(\lambda x) = 3|\lambda x| = 3|\lambda||x| = |\lambda|(3|x|) = |\lambda|N(x)$.
- **Inégalité triangulaire**: $N(x+y) = 3|x+y| \le 3(|x|+|y|) = 3|x| + 3|y| = N(x) + N(y)$.

Cet exemple montre qu'il peut exister une infinité de normes sur un même espace vectoriel.

**Exemple 3 : Une norme sur $\mathbb{R}^2$ (Norme de Manhattan)**

Considérons l'application $N(x) = \|x\|_1 = |x_1| + |x_2|$ pour un vecteur $x = (x_1, x_2) \in \mathbb{R}^2$.

- **Séparation**: $N(x)=0 \iff |x_1| + |x_2| = 0$. Comme $|x_1| \ge 0$ et $|x_2| \ge 0$, leur somme est nulle si et seulement si $|x_1|=0$ et $|x_2|=0$, c'est-à-dire $x_1=0$ et $x_2=0$, donc $x=(0,0)$.
- **Homogénéité**: Pour $\lambda \in \mathbb{R}$, $N(\lambda x) = |\lambda x_1| + |\lambda x_2| = |\lambda||x_1| + |\lambda||x_2| = |\lambda|(|x_1| + |x_2|) = |\lambda|N(x)$.
- **Inégalité triangulaire**: Pour $y = (y_1, y_2)$, $x+y = (x_1+y_1, x_2+y_2)$.

$$ N(x+y) = |x_1+y_1| + |x_2+y_2| \le (|x_1|+|y_1|) + (|x_2|+|y_2|) = (|x_1|+|x_2|) + (|y_1|+|y_2|) = N(x) + N(y). $$

### Contre-exemples

**Contre-exemple 1 : Non-respect de l'homogénéité**

Considérons l'application $f(x) = (\sqrt{|x_1|} + \sqrt{|x_2|})^2$ sur $\mathbb{R}^2$.

Pour $x=(1,0)$, $f(x) = (\sqrt{1}+\sqrt{0})^2 = 1$.

Pour $\lambda = 4$, $\lambda x = (4,0)$. $f(4x) = (\sqrt{4}+\sqrt{0})^2 = 4$.

Cependant, $|\lambda|f(x) = 4 \times 1 = 4$. L'homogénéité semble marcher.

Essayons $\lambda=2$, $x=(1,1)$. $f(x) = (\sqrt{1}+\sqrt{1})^2 = 4$. $\lambda x = (2,2)$. $f(2x) = (\sqrt{2}+\sqrt{2})^2 = (2\sqrt{2})^2 = 8$.

Or, $|\lambda|f(x) = 2 \times 4 = 8$. L'homogénéité semble toujours marcher.

Reprenons la définition $N(\lambda x) = (\sqrt{|\lambda x_1|} + \sqrt{|\lambda x_2|})^2 = ( \sqrt{|\lambda|} \sqrt{|x_1|} + \sqrt{|\lambda|} \sqrt{|x_2|} )^2 = |\lambda| (\sqrt{|x_1|} + \sqrt{|x_2|})^2 = |\lambda| N(x)$. L'homogénéité est donc vérifiée.

Testons l'inégalité triangulaire. Soit $x=(1,0)$ et $y=(0,1)$. $N(x)=1$, $N(y)=1$, $N(x)+N(y)=2$. $x+y=(1,1)$. $N(x+y) = (\sqrt{1}+\sqrt{1})^2=4$. Ici $N(x+y) > N(x)+N(y)$, donc **l'inégalité triangulaire n'est pas vérifiée**.

**Contre-exemple 2 : Non-respect de la séparation**

Considérons l'application $g(x) = |x_1 - x_2|$ sur $\mathbb{R}^2$.

Soit $x = (3,3)$. Alors $x \neq 0_{\mathbb{R}^2}$. Cependant, $g(x) = |3 - 3| = 0$.

Cette application ne respecte pas l'axiome de séparation, ce n'est donc pas une norme. Une telle fonction est appelée une semi-norme.

### Concepts Connexes

- **Distance** : Toute norme $N$ induit une distance $d(x,y) = N(x-y)$, qui mesure l'écart entre deux points.
- **Espace vectoriel normé** : Un espace vectoriel muni d'une norme. Ce concept est fondamental en analyse fonctionnelle.
- **Topologie** : La notion de norme permet de définir des ensembles "ouverts" et "fermés", et donc de construire une topologie sur $\mathbb{R}^n$.

---

## Concept 2: Exemples Fondamentaux de Normes sur $\mathbb{R}^n$

### Prérequis

- **Concept de Norme**: Compréhension de la définition d'une norme et de ses trois axiomes.
- **Sommations ($\Sigma$) et Maximum ($\max$)**: Aisance avec les notations de sommation et la recherche du maximum d'un ensemble fini de nombres.

### Définitions

Pour un vecteur $x = {^t(x_1, \dots, x_n)} \in \mathbb{R}^n$, on définit trois normes fondamentales :

1.  **Norme 1 (ou norme de Manhattan)**

    $$

    \|x\|_1 \stackrel{\text{déf}}{=} \sum_{j=1}^n |x_j| = |x_1| + |x_2| + \cdots + |x_n|

    $$

2.  **Norme infinie**

    $$

    \|x\|_\infty \stackrel{\text{déf}}{=} \max_{1 \le j \le n} |x_j|

    $$

3.  **Norme 2 (ou norme euclidienne)**

    $$

    \|x\|_2 \stackrel{\text{déf}}{=} \sqrt{\sum_{j=1}^n x_j^2} = \sqrt{x_1^2 + x_2^2 + \cdots + x_n^2}

    $$

### Explication Détaillée

Ces trois normes fournissent différentes manières de mesurer la "taille" d'un vecteur.

- La **norme 1** est appelée "norme de Manhattan" car elle correspond à la distance qu'on parcourrait entre deux points dans une ville où les rues forment un quadrillage (comme à Manhattan). On ne peut se déplacer qu'horizontalement et verticalement, donc la distance est la somme des longueurs des déplacements sur chaque axe.
- La **norme infinie** mesure la taille d'un vecteur par sa plus grande composante en valeur absolue. Elle est utile dans des problèmes où l'on s'intéresse à l'erreur maximale ou à la plus grande déviation.
- La **norme 2**, ou **euclidienne**, est la plus intuitive. Elle correspond à la longueur "à vol d'oiseau", la distance directe entre l'origine et le point défini par le vecteur. C'est une généralisation du théorème de Pythagore en dimension $n$.

Pour prouver que ces applications sont bien des normes, il faut vérifier les trois axiomes. Les vérifications pour les normes 1 et infinie sont directes. Pour la norme euclidienne, la preuve de l'inégalité triangulaire est plus complexe et repose sur l'inégalité de Cauchy-Schwarz.

### Propriétés Clés

- **Inégalité de Cauchy-Schwarz**: C'est une inégalité fondamentale en algèbre linéaire et en analyse, cruciale pour la norme euclidienne. Pour tous vecteurs $x, y \in \mathbb{R}^n$ :

  $$

  \left| \sum_{j=1}^n x_j y_j \right| \leq \left(\sum_{j=1}^n x_j^2\right)^{1/2} \left(\sum_{j=1}^n y_j^2\right)^{1/2} \quad \text{ou encore} \quad |\langle x, y \rangle| \leq \|x\|_2 \|y\|_2

  $$

  L'égalité a lieu si et seulement si les vecteurs $x$ et $y$ sont colinéaires (c'est-à-dire, l'un est un multiple de l'autre).

### Exemples

**Exemple 1 : Calcul des normes pour un vecteur**

Soit le vecteur $u = {^t(2, -4, \sqrt{5})} \in \mathbb{R}^3$.

- **Norme 1**: $\|u\|_1 = |2| + |-4| + |\sqrt{5}| = 2 + 4 + \sqrt{5} = 6 + \sqrt{5}$.
- **Norme infinie**: $\|u\|_\infty = \max(|2|, |-4|, |\sqrt{5}|) = \max(2, 4, \sqrt{5}) = 4$.
- **Norme euclidienne**: $\|u\|_2 = \sqrt{2^2 + (-4)^2 + (\sqrt{5})^2} = \sqrt{4 + 16 + 5} = \sqrt{25} = 5$.

**Exemple 2 : Sphères unités dans $\mathbb{R}^2$**

La "sphère unité" pour une norme donnée est l'ensemble des vecteurs de norme 1. Sa forme dépend de la norme choisie. Dans $\mathbb{R}^2$, pour $x=(x_1, x_2)$:

- **Pour $\|\cdot\|_1$**: L'ensemble $S_1 = \{x \in \mathbb{R}^2 : |x_1|+|x_2|=1\}$ est un carré dont les sommets sont $(1,0), (0,1), (-1,0), (0,-1)$.
- **Pour $\|\cdot\|_2$**: L'ensemble $S_2 = \{x \in \mathbb{R}^2 : \sqrt{x_1^2+x_2^2}=1\}$ est le cercle unité usuel.
- **Pour $\|\cdot\|_\infty$**: L'ensemble $S_\infty = \{x \in \mathbb{R}^2 : \max(|x_1|,|x_2|)=1\}$ est un carré dont les côtés sont parallèles aux axes de coordonnées, avec des sommets à $(1,1), (-1,1), (-1,-1), (1,-1)$.

**Exemple 3 : Vérification de l'inégalité de Cauchy-Schwarz**

Soient $x = (1, -2)$ et $y = (3, 4)$ dans $\mathbb{R}^2$.

- Membre de gauche : $|\sum x_j y_j| = |(1)(3) + (-2)(4)| = |3 - 8| = |-5| = 5$.
- Membre de droite : $\|x\|_2 \|y\|_2 = \sqrt{1^2 + (-2)^2} \sqrt{3^2 + 4^2} = \sqrt{1+4} \sqrt{9+16} = \sqrt{5} \sqrt{25} = 5\sqrt{5}$.
- On vérifie bien que $5 \le 5\sqrt{5}$, l'inégalité est respectée.

### Contre-exemples

**Contre-exemple 1 : Une fonction qui n'est pas une norme (échec de l'homogénéité)**

Considérons l'application $f(x) = \sum_{j=1}^n \sqrt{|x_j|}$ sur $\mathbb{R}^n$. Soit $x = (1, 0, \dots, 0)$ et $\lambda=4$.

- $f(x) = \sqrt{|1|} = 1$.
- $f(\lambda x) = f(4, 0, \dots, 0) = \sqrt{|4|} = 2$.
- Cependant, $|\lambda|f(x) = 4 \times 1 = 4$.

Comme $f(\lambda x) = 2 \neq 4 = |\lambda|f(x)$, cette fonction ne respecte pas l'homogénéité et n'est pas une norme.

### Concepts Connexes

- **Produit scalaire**: La norme euclidienne est intimement liée au produit scalaire usuel sur $\mathbb{R}^n$ par la relation $\|x\|_2 = \sqrt{\langle x, x \rangle}$.
- **Normes équivalentes**: Ces trois normes sont des exemples de normes qui sont toutes "équivalentes" entre elles sur $\mathbb{R}^n$.

---

## Concept 3: Normes Équivalentes

### Prérequis

- **Concept de Norme**: Définition et propriétés d'une norme.
- **Inégalités**: Manipulation d'inégalités avec des nombres réels positifs.

### Définition

Soient $N_1$ et $N_2$ deux normes sur $\mathbb{R}^n$. On dit que $N_1$ est **équivalente** à $N_2$ s’il existe deux constantes réelles strictement positives $\alpha > 0$ et $\beta > 0$ telles que pour tout vecteur $x \in \mathbb{R}^n$ :

$$

\alpha N_1(x) \leq N_2(x) \leq \beta N_1(x)

$$

### Explication Détaillée

L'équivalence des normes est une notion de comparaison. Elle signifie que deux normes, bien que donnant des valeurs différentes pour la "longueur" d'un même vecteur, se comportent de manière similaire. L'inégalité $\alpha N_1(x) \leq N_2(x)$ assure que si un vecteur est "grand" pour la norme $N_2$, il doit aussi être "grand" pour la norme $N_1$. L'inégalité $N_2(x) \leq \beta N_1(x)$ assure le contraire.

De manière plus intuitive, si une suite de vecteurs devient "infiniment petite" (tend vers le vecteur nul) pour une norme, elle doit aussi devenir "infiniment petite" pour toute norme équivalente. L'importance capitale de ce concept est qu'en dimension finie (comme dans $\mathbb{R}^n$), **toutes les normes sont équivalentes**. Cela signifie que pour des questions de convergence ou de continuité, le choix de la norme n'a pas d'importance.

**Attention** : Les constantes $\alpha$ et $\beta$ doivent être indépendantes du vecteur $x$. Elles peuvent cependant dépendre de la dimension $n$ de l'espace.

### Propriétés Clés

- **Relation d'équivalence**: La relation "est équivalente à" est une relation d'équivalence.
    - **Réflexivité**: Toute norme est équivalente à elle-même (prendre $\alpha=\beta=1$).
    - **Symétrie**: Si $N_1$ est équivalente à $N_2$, alors $N_2$ est équivalente à $N_1$. (Si $\alpha N_1 \le N_2 \le \beta N_1$, alors $\frac{1}{\beta} N_2 \le N_1 \le \frac{1}{\alpha} N_2$).
    - **Transitivité**: Si $N_1$ est équivalente à $N_2$ et $N_2$ à $N_3$, alors $N_1$ est équivalente à $N_3$.
- **Théorème fondamental (admis à ce stade)**: Sur un espace vectoriel de dimension finie comme $\mathbb{R}^n$, toutes les normes sont équivalentes.

### Exemples

**Exemple 1 : Équivalence de $\|\cdot\|_1$ et $\|\cdot\|_\infty$ sur $\mathbb{R}^n$**

Montrons que $\|x\|_\infty \leq \|x\|_1 \leq n \|x\|_\infty$ pour tout $x \in \mathbb{R}^n$.

- Soit $j_0$ l'indice tel que $\|x\|_\infty = |x_{j_0}|$. Alors $\|x\|_\infty = |x_{j_0}| \leq \sum_{j=1}^n |x_j| = \|x\|_1$.
- D'autre part, pour chaque $j$, $|x_j| \leq \max_{k} |x_k| = \|x\|_\infty$. En sommant sur $j$:

  $\|x\|_1 = \sum_{j=1}^n |x_j| \leq \sum_{j=1}^n \|x\|_\infty = n \|x\|_\infty$.

Nous avons donc $1 \cdot \|x\|_\infty \leq \|x\|_1 \leq n \cdot \|x\|_\infty$. Les normes sont équivalentes avec $\alpha=1, \beta=n$ (par rapport à $\|\cdot\|_\infty$).

**Exemple 2 : Équivalence de $\|\cdot\|_2$ et $\|\cdot\|_\infty$ sur $\mathbb{R}^n$**

Montrons que $\|x\|_\infty \leq \|x\|_2 \leq \sqrt{n} \|x\|_\infty$.

- Soit $j_0$ tel que $\|x\|_\infty = |x_{j_0}|$. Alors $\|x\|_\infty^2 = x_{j_0}^2 \leq \sum_{j=1}^n x_j^2 = \|x\|_2^2$. En prenant la racine carrée, on obtient $\|x\|_\infty \leq \|x\|_2$.
- Pour chaque $j$, $x_j^2 \leq (\max_k |x_k|)^2 = \|x\|_\infty^2$. Donc :

  $\|x\|_2^2 = \sum_{j=1}^n x_j^2 \leq \sum_{j=1}^n \|x\|_\infty^2 = n \|x\|_\infty^2$. En prenant la racine carrée, $\|x\|_2 \leq \sqrt{n} \|x\|_\infty$.

Les normes sont équivalentes.

**Exemple 3 : Une norme "exotique" sur $\mathbb{R}^2$**

Soit $N(x, y) = |x + 2y| + 3|y|$ sur $\mathbb{R}^2$. Montrons son équivalence avec $\|(x,y)\|_\infty = \max(|x|,|y|)$.

- $N(x,y) = |x+2y|+3|y| \le |x|+2|y|+3|y| = |x|+5|y|$.

  Puisque $|x| \le \|(x,y)\|_\infty$ et $|y| \le \|(x,y)\|_\infty$, on a $N(x,y) \le \|(x,y)\|_\infty + 5\|(x,y)\|_\infty = 6 \|(x,y)\|_\infty$. On a trouvé $\beta = 6$.

- Pour trouver $\alpha$, il faut minorer. $|x| = |(x+2y) - 2y| \le |x+2y| + 2|y|$. Et $3|y| \le 3|y|$.

  $\|(x,y)\|_\infty = \max(|x|, |y|) \le \max(|x+2y|+2|y|, |y|)$. C'est compliqué.

  Une autre approche est de tester sur la sphère unité. On sait que $\alpha = \min_{\|v\|=1} N(v)$.

  Cependant, on peut faire plus simple: $N(x,y) = |x+2y|+3|y| \ge ||x|-2|y||+3|y|$. Pas très utile.

  Si $N(x,y) = 0$, alors $|y|=0$ et $|x+2y|=0$, donc $y=0$ et $x=0$.

  $N(x,y) \ge |x+2y| \ge ||x| - |2y||$.

  $N(x,y) \ge 3|y|$. Donc $N(x,y) \ge \frac{3}{2}|y| + \frac{3}{2}|y|$.

  Aussi $N(x,y) \ge |x+2y| \ge |x|-2|y|$. D'où $|x| \le N(x,y)+2|y| \le N(x,y)+\frac{2}{3}N(x,y) = \frac{5}{3}N(x,y)$.

  Et $|y| \le \frac{1}{3}N(x,y)$.

  Donc $\|(x,y)\|_\infty = \max(|x|,|y|) \le \max(\frac{5}{3}N(x,y), \frac{1}{3}N(x,y)) = \frac{5}{3}N(x,y)$.

  On a donc $\frac{3}{5}\|(x,y)\|_\infty \le N(x,y)$. On a trouvé $\alpha = 3/5$.

### Contre-exemples

**Contre-exemple 1 : Dépendance en la dimension**

Les constantes d'équivalence dépendent souvent de la dimension $n$. Par exemple, $\|x\|_1 \leq \sqrt{n} \|x\|_2$. Lorsque $n \to \infty$, la constante $\sqrt{n}$ tend vers l'infini. Cela suggère que dans des espaces de dimension infinie, les normes pourraient ne plus être équivalentes, ce qui est effectivement le cas.

**Contre-exemple 2 : Espace de dimension infinie**

Considérons l'espace des fonctions continues $C([0,1], \mathbb{R})$. Définissons deux normes :

- $\|f\|_\infty = \max_{t \in [0,1]} |f(t)|$ (norme de la convergence uniforme)
- $\|f\|_1 = \int_0^1 |f(t)| dt$ (norme de la convergence en moyenne)

Considérons la suite de fonctions $f_k(t) = t^k$. On a $\|f_k\|_\infty = 1$ pour tout $k$. Mais $\|f_k\|_1 = \int_0^1 t^k dt = \frac{1}{k+1}$.

Puisque $\frac{\|f_k\|_\infty}{\|f_k\|_1} = k+1 \to \infty$, il ne peut exister de constante $\alpha>0$ telle que $\alpha \|f\|_\infty \le \|f\|_1$ pour toutes les fonctions. Ces normes ne sont pas équivalentes.

### Concepts Connexes

- **Convergence de suites**: L'équivalence des normes sur $\mathbb{R}^n$ implique que la notion de convergence d'une suite ne dépend pas de la norme choisie. Une suite qui converge pour $\|\cdot\|_1$ convergera aussi pour $\|\cdot\|_2$ (vers la même limite), et vice-versa.

---

## Concept 4: Convergence d'une suite dans $\mathbb{R}^n$

### Prérequis

- **Suites de nombres réels**: Définition de la convergence d'une suite réelle ($\forall \varepsilon > 0, \exists N, \dots$).
- **Concept de Norme**: Définition et exemples de normes sur $\mathbb{R}^n$.
- **Normes équivalentes**: Comprendre que toutes les normes sur $\mathbb{R}^n$ sont équivalentes.

### Définition

Soit $N$ une norme sur $\mathbb{R}^n$. On dit qu'une suite de vecteurs $(x^k)_{k \in \mathbb{N}}$ de $\mathbb{R}^n$ **converge** vers un vecteur $a \in \mathbb{R}^n$ si la suite des distances (selon $N$) entre $x^k$ et $a$ tend vers 0. Formellement :

$$

\lim_{k \to \infty} x^k = a \quad \iff \quad \lim_{k \to \infty} N(x^k - a) = 0

$$

Cela s'écrit avec les quantificateurs :

$$

\forall \varepsilon > 0, \exists k_\varepsilon \in \mathbb{N} \text{ tel que } \forall k \ge k_\varepsilon, \ N(x^k - a) < \varepsilon.

$$

### Explication Détaillée

Cette définition est une généralisation directe de la convergence dans $\mathbb{R}$. Au lieu de mesurer la distance avec la valeur absolue $|x_k - a|$, on la mesure avec une norme $N(x^k - a)$. Intuitivement, une suite de points $(x^k)$ converge vers un point $a$ si, à partir d'un certain rang, tous les points de la suite se trouvent dans une "boule" aussi petite que l'on veut centrée en $a$. Le rayon de cette boule est $\varepsilon$ et sa forme dépend de la norme choisie (cercle pour $\|\cdot\|_2$, carré pour $\|\cdot\|_\infty$, etc.), mais l'idée de "se rapprocher indéfiniment" reste la même.

Grâce à l'équivalence de toutes les normes sur $\mathbb{R}^n$, la convergence d'une suite ne dépend pas de la norme choisie. Si une suite converge pour une norme, elle converge pour toutes les autres, et vers la même limite. C'est pourquoi on peut simplement dire "la suite $(x^k)$ converge vers $a$" sans préciser la norme.

Le résultat le plus pratique est que la convergence d'une suite de vecteurs est équivalente à la convergence de chacune de ses suites de coordonnées.

### Propriétés Clés

- **Unicité de la limite**: Si une suite converge, sa limite est unique.
- **Indépendance de la norme**: La notion de convergence dans $\mathbb{R}^n$ ne dépend pas de la norme choisie.
- **Convergence par composantes (Proposition 1.17)**: Une suite $x^k = {^t(x_1^k, \dots, x_n^k)}$ converge vers $a = {^t(a_1, \dots, a_n)}$ si et seulement si pour chaque composante $j \in \{1, \dots, n\}$, la suite réelle $(x_j^k)_{k \in \mathbb{N}}$ converge vers $a_j$.

### Exemples

**Exemple 1 : Convergence simple**

Soit la suite de $\mathbb{R}^2$ définie par $x^k = \left( \frac{1}{k+1}, 2 - \frac{1}{k^2} \right)$ pour $k \ge 1$.

Pour déterminer sa limite, on étudie chaque composante :

- La première composante est $x_1^k = \frac{1}{k+1}$. Clairement, $\lim_{k \to \infty} x_1^k = 0$.
- La deuxième composante est $x_2^k = 2 - \frac{1}{k^2}$. Clairement, $\lim_{k \to \infty} x_2^k = 2$.

Puisque chaque composante converge, la suite de vecteurs converge vers le vecteur formé par les limites : $a = (0, 2)$.

**Exemple 2 : Une suite trigonométrique**

Soit la suite de $\mathbb{R}^3$ définie par $x^k = \left( \cos(\frac{1}{k}), \frac{\sin(k)}{k}, e^{-k} \right)$ pour $k \ge 1$.

- $x_1^k = \cos(\frac{1}{k})$. Quand $k \to \infty$, $\frac{1}{k} \to 0$, donc par continuité de cosinus, $\cos(\frac{1}{k}) \to \cos(0) = 1$.
- $x_2^k = \frac{\sin(k)}{k}$. Comme $-1 \le \sin(k) \le 1$, on a $-\frac{1}{k} \le \frac{\sin(k)}{k} \le \frac{1}{k}$. Par le théorème des gendarmes, $\lim_{k \to \infty} x_2^k = 0$.
- $x_3^k = e^{-k}$. On sait que $\lim_{k \to \infty} e^{-k} = 0$.

La suite converge donc vers le vecteur $a = (1, 0, 0)$.

**Exemple 3 : Utilisation de la définition avec $\|\cdot\|_\infty$**

Montrons que la suite $x^k = (\frac{1}{k})_{k \ge 1}$ de $\mathbb{R}$ converge vers $a=0$.

Soit $\varepsilon > 0$. On veut trouver $k_\varepsilon$ tel que si $k \ge k_\varepsilon$, alors $\|x^k - a\|_\infty < \varepsilon$.

Ici, la norme est simplement la valeur absolue : $|x^k - a| = |\frac{1}{k} - 0| = \frac{1}{k}$.

On veut $\frac{1}{k} < \varepsilon$, ce qui est équivalent à $k > \frac{1}{\varepsilon}$.

Il suffit de choisir n'importe quel entier $k_\varepsilon > \frac{1}{\varepsilon}$. Par exemple, $k_\varepsilon = \lfloor \frac{1}{\varepsilon} \rfloor + 1$. Pour ce choix, la condition est vérifiée.

### Contre-exemples

**Contre-exemple 1 : Une composante divergente**

Soit la suite de $\mathbb{R}^2$ définie par $x^k = \left( \frac{k}{k+1}, \ln(k) \right)$.

- La première composante $x_1^k = \frac{k}{k+1}$ converge vers 1.
- La deuxième composante $x_2^k = \ln(k)$ diverge vers $+\infty$.

Puisqu'au moins une des composantes ne converge pas, la suite de vecteurs $(x^k)$ est divergente.

**Contre-exemple 2 : Une composante oscillante**

Soit la suite de $\mathbb{R}^2$ définie par $x^k = \left( \frac{1}{k}, (-1)^k \right)$.

- La première composante $x_1^k = \frac{1}{k}$ converge vers 0.
- La deuxième composante $x_2^k = (-1)^k$ oscille entre -1 et 1 et n'a pas de limite.

La suite de vecteurs $(x^k)$ est donc divergente.

### Concepts Connexes

- **Suite de Cauchy**: Toute suite convergente est une suite de Cauchy. Dans $\mathbb{R}^n$, la réciproque est vraie : toute suite de Cauchy est convergente. On dit que $\mathbb{R}^n$ est un espace complet.
- **Continuité**: La notion de convergence des suites est la base pour définir la continuité des fonctions entre espaces vectoriels normés. Une fonction $f$ est continue en un point $a$ si pour toute suite $(x^k)$ qui converge vers $a$, la suite des images $(f(x^k))$ converge vers $f(a)$.

---

## Concept 5: Suite de Cauchy dans $\mathbb{R}^n$

### Prérequis

- **Convergence d'une suite dans $\mathbb{R}^n$**: Définition et propriétés.
- **Concept de Norme et Distance**: Utilisation d'une norme pour mesurer la distance entre deux vecteurs.

### Définition

Soit $N$ une norme sur $\mathbb{R}^n$. Une suite $(x^k)_{k \in \mathbb{N}}$ est une **suite de Cauchy** (ou vérifie le **critère de Cauchy**) si ses termes se rapprochent arbitrairement les uns des autres à mesure que les indices grandissent.

Formellement, pour tout $\varepsilon > 0$, il existe un entier $k_\varepsilon \in \mathbb{N}$ tel que pour tous indices $p, q \ge k_\varepsilon$, on a :

$$

N(x^p - x^q) < \varepsilon

$$

### Explication Détaillée

L'idée d'une suite de Cauchy est de capturer la propriété de "convergence" d'une suite sans avoir à connaître sa limite à l'avance. La définition de la convergence, $N(x^k - a) < \varepsilon$, nécessite de connaître $a$. La définition de Cauchy, $N(x^p - x^q) < \varepsilon$, ne dépend que des termes de la suite eux-mêmes. Elle stipule que si on va assez loin dans la suite (au-delà du rang $k_\varepsilon$), alors tous les termes restants sont très proches les uns des autres (à une distance inférieure à $\varepsilon$).

Dans $\mathbb{R}$ et plus généralement dans $\mathbb{R}^n$, être une suite de Cauchy est une condition nécessaire et suffisante pour être une suite convergente. Cette propriété est appelée la **complétude** de l'espace $\mathbb{R}^n$.

Comme pour la convergence, le fait d'être une suite de Cauchy ne dépend pas de la norme choisie sur $\mathbb{R}^n$, car toutes les normes sont équivalentes.

### Propriétés Clés

- **Toute suite convergente est de Cauchy (Proposition 1.20)**: Si une suite converge vers une limite $a$, ses termes se regroupent autour de $a$ et donc se rapprochent les uns des autres.
- **(Réciproque) Complétude de $\mathbb{R}^n$**: Dans $\mathbb{R}^n$, toute suite de Cauchy est convergente. C'est une propriété fondamentale de $\mathbb{R}^n$ (et de tout espace de Banach).
- **Indépendance de la norme**: Une suite est de Cauchy pour une norme si et seulement si elle est de Cauchy pour n'importe quelle autre norme équivalente.

### Exemples

**Exemple 1 : Une suite convergente est de Cauchy**

Considérons la suite $x^k = (1/k)_{k\ge 1}$ dans $\mathbb{R}$ qui converge vers 0. Montrons qu'elle est de Cauchy.

Soit $\varepsilon > 0$. Prenons deux indices $p, q \ge k_\varepsilon$ (on peut supposer $p > q$).

La distance est $|x^p - x^q| = |\frac{1}{p} - \frac{1}{q}| = \frac{p-q}{pq} = \frac{1}{q} - \frac{1}{p}$.

Puisque $q \ge k_\varepsilon$, on a $\frac{1}{q} \le \frac{1}{k_\varepsilon}$. Donc $|x^p - x^q| < \frac{1}{q} \le \frac{1}{k_\varepsilon}$.

Il suffit de choisir $k_\varepsilon$ tel que $\frac{1}{k_\varepsilon} < \varepsilon$, par exemple $k_\varepsilon > 1/\varepsilon$. Pour un tel choix, la condition est vérifiée.

**Exemple 2 : Suite définie par une série**

Dans $\mathbb{R}$, considérons la suite des sommes partielles de la série $\sum_{n=1}^\infty \frac{1}{n^2}$, c'est-à-dire $x^k = \sum_{n=1}^k \frac{1}{n^2}$. Montrons que c'est une suite de Cauchy.

Pour $p > q$, on a $d(x^p, x^q) = |x^p - x^q| = \sum_{n=q+1}^p \frac{1}{n^2}$.

On sait que $\frac{1}{n^2} < \frac{1}{n(n-1)} = \frac{1}{n-1} - \frac{1}{n}$ pour $n \ge 2$.

Donc, $\sum_{n=q+1}^p \frac{1}{n^2} < \sum_{n=q+1}^p (\frac{1}{n-1} - \frac{1}{n}) = (\frac{1}{q} - \frac{1}{q+1}) + \dots + (\frac{1}{p-1} - \frac{1}{p}) = \frac{1}{q} - \frac{1}{p} < \frac{1}{q}$.

Comme dans l'exemple 1, si on choisit $q$ assez grand, cette quantité peut être rendue arbitrairement petite. La suite est de Cauchy, donc elle converge (vers $\pi^2/6$).

**Exemple 3 : Suite de vecteurs**

Soit $x^k = (\frac{1}{2^k}, 1 - \frac{1}{k})$ dans $\mathbb{R}^2$.

Une suite de vecteurs est de Cauchy si et seulement si chacune de ses composantes est une suite de Cauchy.

- $x_1^k = \frac{1}{2^k}$ est une suite géométrique qui converge, donc elle est de Cauchy.
- $x_2^k = 1 - \frac{1}{k}$ est une suite qui converge, donc elle est de Cauchy.

Puisque les deux composantes sont des suites de Cauchy, la suite de vecteurs $(x^k)$ est une suite de Cauchy dans $\mathbb{R}^2$.

### Contre-exemples

**Contre-exemple 1 : La suite harmonique**

Dans $\mathbb{R}$, soit la suite $x^k = \sum_{n=1}^k \frac{1}{n}$. Cette suite est divergente. Montrons qu'elle n'est pas de Cauchy.

Il faut montrer la négation de la définition : $\exists \varepsilon > 0$ tel que $\forall K \in \mathbb{N}$, $\exists p, q \ge K$ avec $|x^p - x^q| \ge \varepsilon$.

Prenons $p=2k$ et $q=k$ pour un grand $k$.

$|x^{2k} - x^k| = \sum_{n=k+1}^{2k} \frac{1}{n} = \frac{1}{k+1} + \frac{1}{k+2} + \dots + \frac{1}{2k}$.

Chacun des $k$ termes de cette somme est plus grand ou égal à $\frac{1}{2k}$.

Donc, $|x^{2k} - x^k| \ge k \times \frac{1}{2k} = \frac{1}{2}$.

Si nous choisissons $\varepsilon = 1/2$, nous pouvons toujours trouver des termes aussi loin que l'on veut dans la suite (en prenant $k$ grand) dont la distance est au moins $1/2$. La suite n'est pas de Cauchy.

**Contre-exemple 2 : Un espace non complet**

Considérons l'espace des nombres rationnels $\mathbb{Q}$ avec la distance usuelle $d(x,y)=|x-y|$. Construisons une suite de rationnels qui converge vers $\sqrt{2}$ (qui n'est pas rationnel). Par exemple, la suite définie par $x_0 = 1$ et $x_{k+1} = \frac{x_k}{2} + \frac{1}{x_k}$. Les termes sont $1, 3/2=1.5, 17/12 \approx 1.416, \dots$.

Cette suite, vue comme une suite de nombres réels, converge vers $\sqrt{2}$. Elle est donc une suite de Cauchy dans $\mathbb{R}$. Comme les termes sont tous dans $\mathbb{Q}$, c'est aussi une suite de Cauchy dans $\mathbb{Q}$.

Cependant, elle ne converge pas *dans $\mathbb{Q}$*, car sa limite $\sqrt{2}$ n'est pas un nombre rationnel. C'est un exemple de suite de Cauchy qui ne converge pas. Cela montre que l'espace $\mathbb{Q}$ n'est pas complet.

### Concepts Connexes

- **Complétude**: Un espace métrique (ou normé) est dit complet si toute suite de Cauchy y est convergente. $\mathbb{R}^n$ est l'exemple prototypique d'un espace complet.
- **Analyse numérique**: Les algorithmes itératifs génèrent souvent des suites qui sont (on l'espère) de Cauchy. La complétude de $\mathbb{R}^n$ garantit que ces algorithmes convergent vers une solution.