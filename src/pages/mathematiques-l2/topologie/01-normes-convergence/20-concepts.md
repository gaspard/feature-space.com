---
title: B - Concepts
level: pro
course: Topologie et Calcul Différentiel I
chapter: Normes sur Rn et suites convergentes
order: 20
tags: ["concepts", "mathematics", "pro"]
---

# Normes sur Rn et suites convergentes (B)

---

## Concept 1: Norme sur un Espace Vectoriel Réel

### Prérequis

- Espace vectoriel sur $\mathbb{R}$
- Propriétés de la valeur absolue sur $\mathbb{R}$
- Applications linéaires

### Définition

Soit $E$ un espace vectoriel sur le corps des réels $\mathbb{R}$. Une **norme** sur $E$ est une application $N : E \to \mathbb{R}_+$ qui satisfait les trois axiomes suivants pour tous vecteurs $x, y \in E$ et tout scalaire $\lambda \in \mathbb{R}$:

1.  **Séparation (ou définie positivité)** : $N(x) = 0 \iff x = 0_E$.
2.  **Homogénéité (ou $\mathbb{R}$-homogénéité absolue)** : $N(\lambda x) = |\lambda| N(x)$.
3.  **Inégalité triangulaire (ou sous-additivité)** : $N(x + y) \leq N(x) + N(y)$.

Un espace vectoriel muni d'une norme, noté $(E, N)$ ou $(E, \|\cdot\|)$, est appelé un **espace vectoriel normé (EVN)**.

### Propriétés et Caractéristiques Clés

-   **Non-négativité** : Pour tout $x \in E$, $N(x) \ge 0$. Cet axiome est inclus dans la définition du co-domaine $\mathbb{R}_+$, mais il découle également des autres axiomes. En effet, $N(0_E) = N(0 \cdot x) = |0| N(x) = 0$. Puis, $0 = N(x-x) \le N(x) + N(-x) = N(x) + |-1|N(x) = 2N(x)$, donc $N(x) \ge 0$.
-   **Symétrie** : Pour tout $x \in E$, $N(x) = N(-x)$. Cela découle de l'homogénéité avec $\lambda = -1$.
-   **Inégalité triangulaire renversée** : Pour tout $x, y \in E$, on a $|N(x) - N(y)| \leq N(x - y)$.
    
    *Démonstration.* Par l'inégalité triangulaire, $N(x) = N(x - y + y) \leq N(x - y) + N(y)$, ce qui implique $N(x) - N(y) \leq N(x - y)$. De même, $N(y) = N(y - x + x) \leq N(y - x) + N(x)$, et par symétrie $N(y - x) = N(x - y)$, donc $N(y) - N(x) \leq N(x - y)$, soit $-(N(x) - N(y)) \leq N(x - y)$. En combinant les deux inégalités, on obtient le résultat.

### Exemples

**Exemple 1 : Normes sur $\mathbb{R}$**

Sur l'espace vectoriel $\mathbb{R}$, la valeur absolue $x \mapsto |x|$ est une norme. Plus généralement, pour tout $c > 0$, l'application $N_c(x) = c|x|$ est une norme.

- **Séparation**: $c|x|=0 \iff x=0$.
- **Homogénéité**: $N_c(\lambda x) = c|\lambda x| = c|\lambda||x| = |\lambda|(c|x|) = |\lambda|N_c(x)$.
- **Inégalité triangulaire**: $N_c(x+y) = c|x+y| \le c(|x|+|y|) = c|x|+c|y| = N_c(x)+N_c(y)$.

**Exemple 2 : Norme image réciproque**

Soit $(E, N)$ un EVN et $F$ un autre espace vectoriel. Si $L: F \to E$ est une application linéaire injective, alors l'application $N_L: F \to \mathbb{R}_+$ définie par $N_L(x) = N(L(x))$ est une norme sur $F$.

- **Séparation**: $N_L(x)=0 \iff N(L(x))=0 \iff L(x)=0_E$. Par injectivité de $L$, $L(x)=0_E \iff x=0_F$.
- **Homogénéité**: $N_L(\lambda x) = N(L(\lambda x)) = N(\lambda L(x)) = |\lambda|N(L(x)) = |\lambda|N_L(x)$.
- **Inégalité triangulaire**: $N_L(x+y) = N(L(x+y)) = N(L(x)+L(y)) \le N(L(x))+N(L(y)) = N_L(x)+N_L(y)$.

**Exemple 3 : Norme produit sur $E \times F$**

Soient $(E, N_E)$ et $(F, N_F)$ deux EVN. L'espace produit $E \times F$ peut être normé, par exemple, par $N((x,y)) = N_E(x) + N_F(y)$ ou $N'((x,y)) = \max(N_E(x), N_F(y))$. La vérification des axiomes est directe. C'est une généralisation des normes $\|\cdot\|_1$ et $\|\cdot\|_\infty$ sur $\mathbb{R}^n = \mathbb{R} \times \dots \times \mathbb{R}$.

### Contre-exemples

**Contre-exemple 1 : Semi-norme (violation de la séparation)**

Sur $\mathbb{R}^2$, l'application $p(x, y) = |x|$ satisfait l'homogénéité et l'inégalité triangulaire, mais pas la séparation. En effet, $p(0, 1) = |0| = 0$ bien que $(0,1) \neq (0,0)$. Une telle application est appelée une semi-norme.

**Contre-exemple 2 : Violation de l'homogénéité**

Sur $\mathbb{R}^n$, l'application $f(x) = \|x\|_2^2 = \sum_{j=1}^n x_j^2$ n'est pas une norme. Elle satisfait la séparation et l'inégalité triangulaire n'est pas vérifiée en général. L'homogénéité est violée : $f(\lambda x) = \|\lambda x\|_2^2 = \lambda^2 \|x\|_2^2 = \lambda^2 f(x) \neq |\lambda| f(x)$ pour $\lambda \notin \{-1, 0, 1\}$.

### Concepts Connexes

-   **Espace vectoriel topologique** : Un EVN est un exemple fondamental d'espace vectoriel topologique, où la topologie est induite par la norme.
-   **Semi-norme** : Une application qui satisfait l'homogénéité et l'inégalité triangulaire mais pas nécessairement la séparation. Les semi-normes sont cruciales dans la théorie des espaces localement convexes.
-   **Boule unité** : L'ensemble $B = \{ x \in E : \|x\| \le 1 \}$. La géométrie de la boule unité (par exemple, sa convexité) caractérise de nombreuses propriétés de la norme. Une norme est entièrement déterminée par sa boule unité.

---

## Concept 2: Distance Induite par une Norme

### Prérequis

-   Ensemble
-   Norme sur un espace vectoriel

### Définition

Soit $(E, N)$ un espace vectoriel normé. L'application $d: E \times E \to \mathbb{R}_+$, définie par

$$

d(x, y) = N(x - y)

$$

est appelée la **distance induite par la norme $N$**.

Un ensemble $M$ muni d'une application $d: M \times M \to \mathbb{R}_+$ est un **espace métrique** si $d$ satisfait :

1.  **Séparation** : $d(x, y) = 0 \iff x = y$.
2.  **Symétrie** : $d(x, y) = d(y, x)$.
3.  **Inégalité triangulaire** : $d(x, z) \leq d(x, y) + d(y, z)$.

La distance induite par une norme vérifie bien ces trois axiomes.

*Démonstration.*

1.  $d(x, y) = N(x-y)=0 \iff x-y=0_E \iff x=y$ (par séparation de $N$).
2.  $d(x, y) = N(x-y) = N(-(y-x)) = |-1|N(y-x) = N(y-x) = d(y,x)$ (par homogénéité de $N$).
3.  $d(x, z) = N(x-z) = N((x-y)+(y-z)) \le N(x-y) + N(y-z) = d(x,y)+d(y,z)$ (par inégalité triangulaire de $N$).

### Propriétés et Caractéristiques Clés

Une distance induite par une norme possède des propriétés supplémentaires dues à la structure linéaire sous-jacente :

-   **Invariance par translation** : Pour tout $a \in E$, $d(x+a, y+a) = N((x+a)-(y+a)) = N(x-y) = d(x, y)$.
-   **Homogénéité** : Pour tout $\lambda \in \mathbb{R}$, $d(\lambda x, \lambda y) = N(\lambda x - \lambda y) = N(\lambda(x-y)) = |\lambda|N(x-y) = |\lambda|d(x, y)$.

Toutes les distances ne satisfont pas ces deux propriétés, ce qui implique que **toute distance ne dérive pas d'une norme**. Une condition nécessaire et suffisante pour qu'une métrique $d$ sur un EVN $E$ soit induite par une norme est qu'elle soit invariante par translation et homogène.

### Exemples

**Exemple 1 : Distance de Manhattan sur $\mathbb{R}^n$**

Induite par la norme $\|\cdot\|_1$, elle est définie par $d_1(x, y) = \|x-y\|_1 = \sum_{j=1}^n |x_j - y_j|$.

**Exemple 2 : Distance Euclidienne sur $\mathbb{R}^n$**

Induite par la norme $\|\cdot\|_2$, elle est définie par $d_2(x, y) = \|x-y\|_2 = \sqrt{\sum_{j=1}^n (x_j - y_j)^2}$. C'est la notion usuelle de distance "à vol d'oiseau".

**Exemple 3 : Distance de Tchebychev sur $\mathbb{R}^n$**

Induite par la norme $\|\cdot\|_\infty$, elle est définie par $d_\infty(x, y) = \|x-y\|_\infty = \max_{1 \le j \le n} |x_j - y_j|$.

### Contre-exemples

**Contre-exemple 1 : Distance discrète**

Sur un ensemble $E$, la distance discrète est $d(x,y) = 0$ si $x=y$ et $d(x,y)=1$ si $x \neq y$. Si $E$ est un EVN, cette distance n'est pas induite par une norme. Par exemple, pour $x \neq 0_E$ et $\lambda=2$, on a $d(2x, 0_E)=1$, mais $|\lambda|d(x, 0_E) = 2 \cdot 1 = 2$. L'homogénéité n'est pas satisfaite.

**Contre-exemple 2 : Métrique non-homogène**

Sur $\mathbb{R}$, soit $f(t) = t^3$. $f$ est injective. L'application $d(x, y) = |f(x) - f(y)| = |x^3 - y^3|$ est une distance. Cependant, elle n'est pas induite par une norme car elle n'est pas homogène: $d(\lambda x, 0) = |(\lambda x)^3| = |\lambda|^3 |x|^3$. Si elle était induite par une norme $N$, on aurait $N(\lambda x) = |\lambda|^3 N(x)$, ce qui contredit l'axiome d'homogénéité $N(\lambda x) = |\lambda| N(x)$.

### Concepts Connexes

-   **Espace métrique** : La notion de distance permet de définir une structure topologique (boules ouvertes, ouverts, voisinages) sur un ensemble. Un EVN est donc naturellement un espace métrique.
-   **Topologie métrique** : La topologie induite par une distance $d$ est l'ensemble des unions de boules ouvertes $B(x, r) = \{y \in E \mid d(x,y) < r\}$.
-   **Isométrie** : Une application entre deux espaces métriques qui préserve les distances.

---

## Concept 3: Inégalité de Cauchy-Schwarz et Norme Euclidienne

### Prérequis

-   Structure d'espace vectoriel de $\mathbb{R}^n$
-   Polynômes du second degré

### Définition

**Inégalité de Cauchy-Schwarz**

Pour tous vecteurs $x = {^t(x_1, \dots, x_n)}$ et $y = {^t(y_1, \dots, y_n)}$ dans $\mathbb{R}^n$, on a

$$

\left| \sum_{j=1}^n x_j y_j \right| \leq \left(\sum_{j=1}^n x_j^2\right)^{1/2} \left(\sum_{j=1}^n y_j^2\right)^{1/2}

$$

Cette inégalité est souvent écrite en utilisant le **produit scalaire canonique** $\langle x, y \rangle = \sum_{j=1}^n x_j y_j$ et la **norme euclidienne** $\|x\|_2 = \sqrt{\langle x, x \rangle}$:

$$

|\langle x, y \rangle| \leq \|x\|_2 \|y\|_2

$$

Le cas d'égalité a lieu si et seulement si les vecteurs $x$ et $y$ sont colinéaires (i.e., il existe $\lambda \in \mathbb{R}$ tel que $x = \lambda y$ ou $y = \lambda x$).

### Démonstration

Soient $x, y \in \mathbb{R}^n$. Pour tout $t \in \mathbb{R}$, considérons le polynôme $P(t) = \|x+ty\|_2^2$.

$$

P(t) = \langle x+ty, x+ty \rangle = \langle x, x \rangle + 2t\langle x, y \rangle + t^2\langle y, y \rangle = \|x\|_2^2 + 2t\langle x, y \rangle + t^2\|y\|_2^2

$$

Puisque $P(t)$ est la norme au carré d'un vecteur, $P(t) \ge 0$ pour tout $t \in \mathbb{R}$.

- Si $y=0$, l'inégalité est triviale ($0 \le 0$).
- Si $y \neq 0$, alors $\|y\|_2^2 > 0$ et $P(t)$ est un trinôme du second degré en $t$ qui est toujours positif ou nul. Son discriminant $\Delta$ doit donc être négatif ou nul.

$$

\Delta = (2\langle x, y \rangle)^2 - 4(\|y\|_2^2)(\|x\|_2^2) = 4(\langle x, y \rangle^2 - \|x\|_2^2 \|y\|_2^2) \leq 0

$$

Ceci implique $\langle x, y \rangle^2 \leq \|x\|_2^2 \|y\|_2^2$, ce qui donne l'inégalité voulue en prenant la racine carrée.

Le cas d'égalité $\Delta=0$ correspond à l'existence d'une racine réelle double $t_0$, pour laquelle $P(t_0) = \|x+t_0 y\|_2^2 = 0$. Par séparation de la norme, ceci équivaut à $x+t_0 y = 0$, c'est-à-dire $x = -t_0 y$, donc $x$ et $y$ sont colinéaires.

### La Norme Euclidienne

L'application $\|x\|_2 = \sqrt{\sum_{j=1}^n x_j^2}$ est une norme sur $\mathbb{R}^n$.

- La séparation et l'homogénéité sont directes.
- L'inégalité triangulaire $\|x+y\|_2 \le \|x\|_2+\|y\|_2$ est une conséquence de l'inégalité de Cauchy-Schwarz.

*Démonstration.*

$$

\begin{align*}

\|x+y\|_2^2 &= \langle x+y, x+y \rangle \\

&= \|x\|_2^2 + 2\langle x, y \rangle + \|y\|_2^2 \\

&\leq \|x\|_2^2 + 2|\langle x, y \rangle| + \|y\|_2^2 \\

&\leq \|x\|_2^2 + 2\|x\|_2\|y\|_2 + \|y\|_2^2 \quad \text{(par Cauchy-Schwarz)} \\

&= (\|x\|_2 + \|y\|_2)^2

\end{align*}

$$

La conclusion s'obtient en prenant la racine carrée, la fonction $t \mapsto \sqrt{t}$ étant croissante sur $\mathbb{R}_+$.

### Exemples

**Exemple 1 : Vérification dans $\mathbb{R}^3$**

Soient $x = (1, -2, 3)$ et $y = (4, 0, -1)$.

$\langle x, y \rangle = 1(4) + (-2)(0) + 3(-1) = 1$.

$\|x\|_2 = \sqrt{1^2+(-2)^2+3^2} = \sqrt{14}$.

$\|y\|_2 = \sqrt{4^2+0^2+(-1)^2} = \sqrt{17}$.

L'inégalité est $|1| \leq \sqrt{14}\sqrt{17} = \sqrt{238}$. Clairement $1 \leq \sqrt{238}$.

**Exemple 2 : Cas d'égalité**

Soient $x = (1, 2, -1)$ et $y = (-2, -4, 2)$. On a $y = -2x$.

$\langle x, y \rangle = 1(-2) + 2(-4) + (-1)(2) = -12$.

$\|x\|_2 = \sqrt{1+4+1} = \sqrt{6}$.

$\|y\|_2 = \sqrt{4+16+4} = \sqrt{24} = 2\sqrt{6}$.

On vérifie bien $|\langle x, y \rangle| = |-12| = 12$ et $\|x\|_2 \|y\|_2 = \sqrt{6} \cdot 2\sqrt{6} = 12$.

**Exemple 3 : Inégalité intégrale de Cauchy-Schwarz**

Pour l'espace vectoriel $C([a,b], \mathbb{R})$ des fonctions continues sur $[a,b]$, le produit scalaire est $\langle f, g \rangle = \int_a^b f(t)g(t)dt$. L'inégalité de Cauchy-Schwarz devient :

$$

\left| \int_a^b f(t)g(t)dt \right| \leq \left( \int_a^b f(t)^2 dt \right)^{1/2} \left( \int_a^b g(t)^2 dt \right)^{1/2}

$$

### Concepts Connexes

-   **Espace préhilbertien** : Un espace vectoriel réel muni d'un produit scalaire (une forme bilinéaire symétrique définie positive). $\mathbb{R}^n$ avec le produit scalaire canonique en est l'exemple type.
-   **Espace de Hilbert** : Un espace préhilbertien qui est complet pour la distance induite par la norme issue du produit scalaire.
-   **Angle entre vecteurs** : Dans un espace préhilbertien, l'angle $\theta$ entre deux vecteurs non nuls $x, y$ est défini par $\cos \theta = \frac{\langle x, y \rangle}{\|x\| \|y\|}$. L'inégalité de Cauchy-Schwarz garantit que le membre de droite est dans $[-1, 1]$.

---

## Concept 4: Les Normes $p$ sur $\mathbb{R}^n$

### Prérequis

-   Norme sur un EVN
-   Inégalité de Cauchy-Schwarz

### Définition

Pour un vecteur $x = {^t(x_1, \dots, x_n)} \in \mathbb{R}^n$, on définit la famille des **normes $p$** (ou normes de Hölder) :

1.  Pour $p \in [1, \infty)$,

    $$

    \|x\|_p = \left(\sum_{j=1}^n |x_j|^p\right)^{1/p}

    $$

2.  Pour $p = \infty$,

    $$

    \|x\|_\infty = \max_{1 \le j \le n} |x_j|

    $$

Les cas les plus importants sont $p=1$ (norme de Manhattan), $p=2$ (norme euclidienne) et $p=\infty$ (norme du sup, ou de Tchebychev).

### Propriétés et Caractéristiques Clés

-   **Preuve que ce sont des normes** :
    -   La séparation et l'homogénéité sont directes pour tout $p \in [1, \infty]$.
    -   L'inégalité triangulaire pour $p=1$ et $p=\infty$ se démontre en utilisant l'inégalité triangulaire sur $\mathbb{R}$ pour chaque composante.
    -   L'inégalité triangulaire pour $p=2$ découle de Cauchy-Schwarz.
    -   Pour $p \in (1, \infty)$ général, l'inégalité triangulaire $\|x+y\|_p \le \|x\|_p + \|y\|_p$ est l'**inégalité de Minkowski**. Sa démonstration repose sur l'**inégalité de Hölder**, qui généralise celle de Cauchy-Schwarz : pour $p, q > 1$ avec $\frac{1}{p}+\frac{1}{q}=1$, on a $|\langle x, y \rangle| \leq \|x\|_p \|y\|_q$.
-   **Lien entre $p=\infty$ et les normes finies** : Pour tout $x \in \mathbb{R}^n$, on a

    $$

    \lim_{p \to \infty} \|x\|_p = \|x\|_\infty

    $$

    *Démonstration.* Soit $M = \|x\|_\infty = \max_j |x_j|$. On a $M^p \le \sum_{j=1}^n |x_j|^p \le \sum_{j=1}^n M^p = n M^p$. En prenant la racine $p$-ième, $M \le \|x\|_p \le n^{1/p} M$. Comme $\lim_{p \to \infty} n^{1/p} = 1$, le théorème des gendarmes conclut que $\lim_{p \to \infty} \|x\|_p = M = \|x\|_\infty$.

-   **Géométrie des boules unités** : La forme de la boule unité $B_p = \{x \in \mathbb{R}^n : \|x\|_p \le 1\}$ dépend de $p$. Pour $n=2$, $B_1$ est un losange (carré tourné de 45°), $B_2$ est un disque, et $B_\infty$ est un carré aligné avec les axes. Pour $p \in (1, \infty)$, la boule est un ensemble convexe dont la frontière est "arrondie". Pour $p_1 < p_2$, on a $B_{p_1} \subset B_{p_2}$.

### Exemples

**Exemple 1 : Calcul de normes**

Soit le vecteur $u = {^t(1, -2, 0, 2)} \in \mathbb{R}^4$.

-   $\|u\|_1 = |1| + |-2| + |0| + |2| = 5$.
-   $\|u\|_2 = \sqrt{1^2 + (-2)^2 + 0^2 + 2^2} = \sqrt{1+4+4} = \sqrt{9} = 3$.
-   $\|u\|_\infty = \max(|1|, |-2|, |0|, |2|) = 2$.
-   $\|u\|_3 = (1^3 + 2^3 + 0^3 + 2^3)^{1/3} = (1+8+8)^{1/3} = 17^{1/3} \approx 2.57$.

**Exemple 2 : Boules unités dans $\mathbb{R}^2$**

-   $S_1 = \{(x, y) \in \mathbb{R}^2 : |x|+|y|=1\}$ est un carré dont les sommets sont $(1,0), (0,1), (-1,0), (0,-1)$.
-   $S_2 = \{(x, y) \in \mathbb{R}^2 : x^2+y^2=1\}$ est le cercle unité.
-   $S_\infty = \{(x, y) \in \mathbb{R}^2 : \max(|x|,|y|)=1\}$ est le carré dont les sommets sont $(1,1), (-1,1), (-1,-1), (1,-1)$.

**Exemple 3 : Norme de la matrice de Frobenius**

La norme de Frobenius d'une matrice $A \in \mathcal{M}_{m,n}(\mathbb{R})$ est $\|A\|_F = \sqrt{\sum_{i=1}^m \sum_{j=1}^n a_{ij}^2}$. C'est simplement la norme euclidienne du vecteur de taille $mn$ formé par les entrées de la matrice.

### Contre-exemples

**Contre-exemple 1 : "Norme" pour $p<1$**

Pour $p \in (0,1)$, l'application $\|x\|_p = (\sum |x_j|^p)^{1/p}$ n'est pas une norme car elle ne satisfait pas l'inégalité triangulaire. Soit $x=(1,0)$ et $y=(0,1)$ dans $\mathbb{R}^2$. Pour $p=1/2$, $\|x\|_{1/2} = (\sqrt{1}+\sqrt{0})^2=1$, $\|y\|_{1/2}=1$. Mais $x+y=(1,1)$, et $\|x+y\|_{1/2} = (\sqrt{1}+\sqrt{1})^2=4$. On a $\|x+y\|_{1/2} = 4 > \|x\|_{1/2}+\|y\|_{1/2}=2$.

**Contre-exemple 2 : "Norme" non-homogène**

L'application $f(x) = \sum |x_j|^p$ pour $p \neq 1$ n'est pas une norme car elle viole l'homogénéité. $f(\lambda x) = |\lambda|^p f(x) \neq |\lambda|f(x)$.

### Concepts Connexes

-   **Espaces $L^p$ et $\ell^p$** : Ce sont des généralisations en dimension infinie des normes $p$. L'espace $\ell^p$ est l'espace des suites $(x_k)$ telles que $\sum |x_k|^p < \infty$. L'espace $L^p(\Omega)$ est l'espace des fonctions mesurables $f$ sur un domaine $\Omega$ telles que $\int_\Omega |f|^p < \infty$.
-   **Interpolation de Riesz-Thorin** : Un théorème profond qui permet d'estimer les normes d'opérateurs linéaires sur les espaces $L^p$.

---

## Concept 5: Équivalence des Normes

### Prérequis

-   Norme sur un EVN

### Définition

Soient $N_1$ et $N_2$ deux normes sur un même espace vectoriel $E$. On dit que $N_1$ et $N_2$ sont **équivalentes** s'il existe deux constantes réelles $\alpha > 0$ et $\beta > 0$ telles que pour tout $x \in E$,

$$

\alpha N_1(x) \leq N_2(x) \leq \beta N_1(x).

$$

Les constantes $\alpha$ et $\beta$ sont indépendantes de $x$.

Cette relation est une relation d'équivalence : elle est réflexive, symétrique et transitive.

### Propriétés et Caractéristiques Clés

-   **Préservation des notions topologiques** : Si deux normes sont équivalentes, elles induisent la même topologie sur $E$. C'est-à-dire qu'un ensemble est ouvert pour une norme si et seulement s'il est ouvert pour l'autre. En conséquence, les notions de convergence de suites, de continuité, de compacité, etc., sont identiques pour les deux normes.
-   **Inégalités entre normes usuelles sur $\mathbb{R}^n$** : Pour tout $x \in \mathbb{R}^n$,

    $$

    \|x\|_\infty \leq \|x\|_2 \leq \|x\|_1 \leq \sqrt{n} \|x\|_2 \leq n \|x\|_\infty

    $$

    Ces inégalités montrent que les normes $\|\cdot\|_1$, $\|\cdot\|_2$ et $\|\cdot\|_\infty$ sont toutes équivalentes.

-   **Théorème fondamental de l'équivalence des normes** : Sur un espace vectoriel de dimension finie, toutes les normes sont équivalentes.

    *Esquisse de la preuve.* Soit $E$ un EV de dimension finie $n$. Fixons une base et identifions $E$ à $\mathbb{R}^n$. Il suffit de montrer que toute norme $N$ sur $\mathbb{R}^n$ est équivalente à la norme $\|\cdot\|_\infty$.

    1.  **Majoration** : Soit $x = \sum_{i=1}^n x_i e_i$. Par l'inégalité triangulaire et l'homogénéité de $N$:

        $N(x) \le \sum |x_i| N(e_i) \le (\max_i |x_i|) \sum N(e_i) = C \|x\|_\infty$, avec $C = \sum N(e_i) > 0$.

    2.  **Minoration** : L'application $f(x) = N(x)$ est continue sur $(\mathbb{R}^n, \|\cdot\|_\infty)$. En effet, $|N(x)-N(y)| \le N(x-y) \le C\|x-y\|_\infty$. L'ensemble $S = \{x \in \mathbb{R}^n \mid \|x\|_\infty = 1\}$ est une partie fermée et bornée de $\mathbb{R}^n$, donc compacte (Théorème de Heine-Borel). La fonction continue $f$ atteint son minimum $\alpha$ sur le compact $S$. Comme $x \neq 0$ sur $S$, $N(x)>0$ et donc $\alpha > 0$. Pour tout $y \neq 0$, $y/\|y\|_\infty \in S$, donc $N(y/\|y\|_\infty) \ge \alpha$. Par homogénéité, $\frac{1}{\|y\|_\infty} N(y) \ge \alpha$, soit $N(y) \ge \alpha \|y\|_\infty$.

    On a donc $\alpha \|x\|_\infty \le N(x) \le C \|x\|_\infty$ pour tout $x$, ce qui prouve l'équivalence.

### Exemples

**Exemple 1 : Équivalence de $\|\cdot\|_1$ et $\|\cdot\|_\infty$ sur $\mathbb{R}^n$**

Pour $x \in \mathbb{R}^n$, soit $j_0$ tel que $|x_{j_0}| = \|x\|_\infty$.

$\|x\|_\infty = |x_{j_0}| \le \sum_{j=1}^n |x_j| = \|x\|_1$.

$\|x\|_1 = \sum_{j=1}^n |x_j| \le \sum_{j=1}^n \|x\|_\infty = n \|x\|_\infty$.

D'où $\|x\|_\infty \le \|x\|_1 \le n \|x\|_\infty$.

**Exemple 2 : Équivalence de $\|\cdot\|_2$ et $\|\cdot\|_1$ sur $\mathbb{R}^n$**

$\|x\|_2^2 = \sum x_j^2 \le \sum |x_j|^2 \le (\sum |x_j|)^2 = \|x\|_1^2$, donc $\|x\|_2 \le \|x\|_1$.

Par Cauchy-Schwarz avec $y = (1, \dots, 1)$, $\|x\|_1 = \sum |x_j| \cdot 1 \le \|x\|_2 \|y\|_2 = \sqrt{n}\|x\|_2$.

D'où $\frac{1}{\sqrt{n}}\|x\|_1 \le \|x\|_2 \le \|x\|_1$.

### Contre-exemples

**Contre-exemple 1 : En dimension infinie, $C([0,1])$**

Dans l'espace des fonctions continues sur $[0,1]$, les normes $\|f\|_\infty = \sup_{t \in [0,1]} |f(t)|$ et $\|f\|_1 = \int_0^1 |f(t)| dt$ ne sont pas équivalentes.

Considérons la suite de fonctions $f_n(t) = t^n$. On a $\|f_n\|_\infty = 1$ et $\|f_n\|_1 = \frac{1}{n+1}$.

S'il existait $\alpha > 0$ tel que $\|f\|_\infty \le \alpha \|f\|_1$ pour tout $f$, on aurait pour $f_n$: $1 \le \alpha \frac{1}{n+1}$, ce qui est impossible pour $n$ assez grand.

**Contre-exemple 2 : En dimension infinie, $\ell^1$ et $\ell^\infty$**

Considérons l'espace des suites réelles. Soit la suite $x_k = (1, 1, \dots, 1, 0, \dots)$ avec $k$ termes égaux à 1.

$\|x_k\|_\infty = 1$ et $\|x_k\|_1 = k$.

Il n'existe pas de constante $\beta$ telle que $\|x_k\|_1 \le \beta \|x_k\|_\infty$, car cela impliquerait $k \le \beta$ pour tout $k \in \mathbb{N}$, ce qui est faux.

### Concepts Connexes

-   **Topologie** : L'équivalence des normes est une notion topologique. Elle signifie que les normes engendrent les mêmes ensembles ouverts.
-   **Analyse fonctionnelle** : L'étude des espaces vectoriels normés de dimension infinie, où les normes ne sont pas toutes équivalentes, est un sujet central de l'analyse fonctionnelle. Le choix de la norme y est crucial.

---

## Concept 6: Convergence de Suites dans un Espace Vectoriel Normé

### Prérequis

-   Espace vectoriel normé
-   Convergence des suites réelles

### Définition

Soit $(E, \|\cdot\|)$ un EVN. Une suite $(x^k)_{k \in \mathbb{N}}$ d'éléments de $E$ **converge** vers un élément $a \in E$ si

$$

\lim_{k \to \infty} \|x^k - a\| = 0.

$$

Formellement, cela s'écrit :

$$

\forall \varepsilon > 0, \exists k_\varepsilon \in \mathbb{N}, \forall k \ge k_\varepsilon, \|x^k - a\| < \varepsilon.

$$

On note alors $x^k \to a$ ou $\lim_{k \to \infty} x^k = a$.

### Propriétés et Caractéristiques Clés

-   **Unicité de la limite** : Si une suite converge, sa limite est unique.

    *Démonstration.* Supposons que $x^k \to a$ et $x^k \to b$. Par l'inégalité triangulaire, $0 \le \|a-b\| \le \|a-x^k\| + \|x^k-b\|$. Comme $\|a-x^k\| \to 0$ et $\|x^k-b\| \to 0$, le membre de droite tend vers 0. Ainsi $\|a-b\|=0$, et par séparation, $a=b$.

-   **Indépendance de la norme (en dimension finie)** : La notion de convergence dans un EVN de dimension finie ne dépend pas de la norme choisie.

    *Démonstration.* Soient $\|\cdot\|$ et $\|\cdot\|'$ deux normes équivalentes. Il existe $\alpha>0$ tel que $\|\cdot\|' \le \alpha \|\cdot\|$. Si $x^k \to a$ pour $\|\cdot\|$, alors $\|x^k-a\| \to 0$. Comme $0 \le \|x^k-a\|' \le \alpha \|x^k-a\|$, par le théorème des gendarmes, $\|x^k-a\|' \to 0$. La convergence pour $\|\cdot\|'$ est donc établie. La réciproque est symétrique. Comme toutes les normes sont équivalentes en dimension finie, la convergence est une notion absolue.

-   **Convergence composante par composante dans $\mathbb{R}^n$** : Une suite $(x^k)_{k \in \mathbb{N}}$ de $\mathbb{R}^n$ converge vers $a \in \mathbb{R}^n$ si et seulement si, pour chaque composante $j \in \{1, \dots, n\}$, la suite réelle $(x_j^k)_{k \in \mathbb{N}}$ converge vers $a_j$.

    *Démonstration.* Cela découle de l'équivalence de n'importe quelle norme avec la norme $\|\cdot\|_\infty$. La convergence pour $\|\cdot\|_\infty$ signifie $\max_j |x_j^k - a_j| \to 0$. Ceci est équivalent à $|x_j^k - a_j| \to 0$ pour tout $j$.

-   **Propriétés algébriques** : Si $x^k \to a$, $y^k \to b$ dans $E$ et $\lambda_k \to \lambda$ dans $\mathbb{R}$, alors :
    -   $x^k + y^k \to a+b$
    -   $\lambda_k x^k \to \lambda a$

### Exemples

**Exemple 1 : Convergence dans $\mathbb{R}^3$**

Soit $x^k = \left( \frac{\sin k}{k}, \left(1+\frac{1}{k}\right)^k, \frac{k^2}{2^k} \right)$.

-   $x_1^k = \frac{\sin k}{k} \to 0$ car $|\sin k| \le 1$.
-   $x_2^k = \left(1+\frac{1}{k}\right)^k \to e$.
-   $x_3^k = \frac{k^2}{2^k} \to 0$ par croissance comparée.

La suite $(x^k)$ converge donc vers $a = (0, e, 0)$ dans $\mathbb{R}^3$.

**Exemple 2 : Suite géométrique vectorielle**

Soit $A \in \mathcal{M}_n(\mathbb{R})$ une matrice et $x_0 \in \mathbb{R}^n$. La suite définie par $x^{k+1} = A x^k$ (soit $x^k = A^k x_0$) converge vers $0$ pour tout $x_0$ si et seulement si le rayon spectral de $A$ (le maximum des modules de ses valeurs propres) est strictement inférieur à 1.

**Exemple 3 : Convergence dans un espace de fonctions**

Dans l'espace $C([0,1])$ muni de la norme $\|\cdot\|_\infty$, la suite $f_k(t) = \frac{t}{k}$ converge vers la fonction nulle car $\|f_k - 0\|_\infty = \sup_{t \in [0,1]} |\frac{t}{k}| = \frac{1}{k} \to 0$.

### Contre-exemples

**Contre-exemple 1 : Suite bornée non convergente**

Dans $\mathbb{R}^2$, la suite $x^k = (\cos(k), \sin(k))$ est bornée (elle vit sur le cercle unité, $\|x^k\|_2=1$), mais elle ne converge pas car elle ne se rapproche d'aucun point particulier.

**Contre-exemple 2 : Convergence simple vs uniforme**

Dans $C([0,1])$ avec la norme $\|\cdot\|_\infty$, la suite $f_k(t) = t^k$ converge simplement (point par point) vers la fonction $f(t) = 0$ si $t \in [0,1)$ et $f(1)=1$. Cette limite n'étant pas continue, la convergence ne peut pas avoir lieu pour la norme $\| \cdot \|_\infty$ (la limite d'une suite de fonctions continues pour cette norme doit être continue). En effet, $\|f_k - 0\|_\infty = 1$ pour tout $k$, donc la suite ne converge pas vers la fonction nulle.

### Concepts Connexes

-   **Continuité** : Une fonction $f: (E, \|\cdot\|_E) \to (F, \|\cdot\|_F)$ est continue en $a \in E$ si pour toute suite $(x^k)$ de $E$ convergeant vers $a$, la suite $(f(x^k))$ converge vers $f(a)$.
-   **Fermeture d'un ensemble** : L'adhérence $\bar{A}$ d'un ensemble $A$ est l'ensemble de toutes les limites de suites d'éléments de $A$.

---

## Concept 7: Suites de Cauchy et Complétude de $\mathbb{R}^n$

### Prérequis

-   Convergence de suites dans un EVN
-   Équivalence des normes

### Définition

Soit $(E, \|\cdot\|)$ un EVN. Une suite $(x^k)_{k \in \mathbb{N}}$ est une **suite de Cauchy** si ses termes se rapprochent arbitrairement les uns des autres pour les grands indices. Formellement :

$$

\forall \varepsilon > 0, \exists k_\varepsilon \in \mathbb{N}, \forall p, q \ge k_\varepsilon, \|x^p - x^q\| < \varepsilon.

$$

Un EVN est dit **complet** si toute suite de Cauchy converge vers un élément de l'espace. Un EVN complet est appelé un **espace de Banach**.

### Propriétés et Caractéristiques Clés

-   **Toute suite convergente est de Cauchy.**

    *Démonstration.* Si $x^k \to a$, alors pour tout $\varepsilon>0$, il existe $k_\varepsilon$ tel que pour $k \ge k_\varepsilon$, $\|x^k-a\| < \varepsilon/2$. Alors pour $p, q \ge k_\varepsilon$, on a $\|x^p - x^q\| = \|(x^p-a) - (x^q-a)\| \le \|x^p-a\| + \|x^q-a\| < \varepsilon/2 + \varepsilon/2 = \varepsilon$.

-   **Une suite de Cauchy est bornée.**

    *Démonstration.* Prenons $\varepsilon=1$. Il existe $K$ tel que pour $p,q \ge K$, $\|x^p-x^q\| < 1$. En particulier, pour $p \ge K$, $\|x^p - x^K\| < 1$, donc $\|x^p\| \le \|x^p-x^K\| + \|x^K\| < 1 + \|x^K\|$. L'ensemble des normes des termes de la suite est donc majoré par $\max(\|x^0\|, \dots, \|x^{K-1}\|, 1+\|x^K\|)$.

-   **Le critère de Cauchy est indépendant de la norme (en dimension finie).** Comme pour la convergence, si deux normes sont équivalentes, une suite est de Cauchy pour l'une si et seulement si elle l'est pour l'autre.

### Théorème de complétude de $\mathbb{R}^n$

L'espace $\mathbb{R}^n$ muni de n'importe quelle norme est un espace de Banach. Autrement dit, **une suite de $\mathbb{R}^n$ converge si et seulement si elle est de Cauchy**.

*Démonstration.* On sait déjà que convergente $\implies$ Cauchy. Montrons la réciproque.

1. Soit $(x^k)$ une suite de Cauchy dans $(\mathbb{R}^n, \|\cdot\|)$. Comme toutes les normes sont équivalentes, elle est aussi de Cauchy pour la norme $\|\cdot\|_\infty$.
2. Pour chaque composante $j \in \{1, \dots, n\}$, on a $|x_j^p - x_j^q| \le \|x^p - x^q\|_\infty$. Donc, si $(x^k)$ est de Cauchy pour $\|\cdot\|_\infty$, chaque suite de composantes $(x_j^k)_k$ est une suite de Cauchy dans $\mathbb{R}$.
3. On sait que $\mathbb{R}$ est complet. Donc, pour chaque $j$, la suite $(x_j^k)_k$ converge vers une limite $a_j \in \mathbb{R}$.
4. Soit $a = (a_1, \dots, a_n) \in \mathbb{R}^n$. Comme chaque suite de composantes converge, la suite vectorielle $(x^k)$ converge vers $a$.

### Exemples

**Exemple 1 : Série convergente**

Dans $\mathbb{R}^n$, la série $\sum_{k=0}^\infty v^k$ converge si la suite de ses sommes partielles $S_N = \sum_{k=0}^N v^k$ converge. Cette suite converge si et seulement si elle est de Cauchy. On peut montrer que si la série des normes $\sum \|v^k\|$ converge (convergence absolue), alors la série $\sum v^k$ converge. C'est une propriété générale des espaces de Banach.

**Exemple 2 : Méthode de Newton**

Pour trouver une racine de $f(x)=0$, la méthode de Newton génère une suite $x_{k+1} = x_k - [f'(x_k)]^{-1}f(x_k)$. Sous de bonnes conditions sur $f$ et $x_0$, on peut montrer que la suite $(x_k)$ est une suite de Cauchy dans $\mathbb{R}^n$ et converge donc vers une racine.

**Exemple 3 : Construction des réels**

Les nombres réels peuvent être construits comme des classes d'équivalence de suites de Cauchy de nombres rationnels. Ceci formalise l'idée que $\mathbb{R}$ est la "complétion" de $\mathbb{Q}$.

### Contre-exemples

**Contre-exemple 1 : L'espace $\mathbb{Q}^n$**

L'espace $\mathbb{Q}^n$ avec la distance euclidienne n'est pas complet. Une suite de vecteurs dans $\mathbb{Q}^n$ convergeant vers $(\sqrt{2}, 0, \dots, 0) \in \mathbb{R}^n$ est de Cauchy dans $\mathbb{Q}^n$ mais sa limite n'est pas dans $\mathbb{Q}^n$.

**Contre-exemple 2 : Espace de fonctions avec la norme $L^1$**

L'espace $C([-1, 1])$ des fonctions continues sur $[-1,1]$ muni de la norme $\|f\|_1 = \int_{-1}^1 |f(t)| dt$ n'est pas complet. Considérons la suite de fonctions $(f_k)$ où $f_k(t) = -1$ pour $t \in [-1, -1/k]$, $f_k(t)=1$ pour $t \in [1/k, 1]$ et $f_k(t) = kt$ entre les deux. C'est une suite de Cauchy, mais elle converge (au sens $L^1$) vers la fonction signe, qui est discontinue et n'appartient donc pas à $C([-1, 1])$.

### Concepts Connexes

-   **Espace de Banach** : La notion centrale pour l'analyse fonctionnelle. De nombreux théorèmes fondamentaux (théorème de l'application ouverte, théorème du graphe fermé, théorème de Hahn-Banach) sont valables dans ce cadre.
-   **Théorème du point fixe de Banach (ou de l'application contractante)** : Dans un espace métrique complet, toute application contractante admet un unique point fixe. La complétude est essentielle pour garantir que la suite des itérés, qui est de Cauchy, converge bien dans l'espace.