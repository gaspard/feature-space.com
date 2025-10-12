---
id: eb9796d7
type: concepts
order: 20
title: Normes sur Rⁿ et suites convergentes - concepts (B)
tags:
  - normes
  - suites
  - convergence
  - topologie
  - analyse
course: Topologie
courseId: 34e61f8e
chapter: Normes sur Rⁿ et suites convergentes
chapterId: 629d2832
level: pro
createdAt: '2025-10-12T16:01:06.272Z'
---
# Normes sur Rⁿ et suites convergentes (B)

---

## Concept 1: Norme sur un Espace Vectoriel Réel

### Prérequis

-   Structure d'espace vectoriel sur $\mathbb{R}$
-   Propriétés de la valeur absolue sur $\mathbb{R}$
-   Notions de base de la théorie des ensembles (applications, injectivité)

### Définition

Soit $E$ un espace vectoriel sur le corps des nombres réels $\mathbb{R}$. On appelle **norme** sur $E$ toute application $N : E \to \mathbb{R}_+$ vérifiant les trois axiomes suivants pour tous vecteurs $x, y \in E$ et tout scalaire $\lambda \in \mathbb{R}$ :

(i) **Séparation** (ou définition positive) : $N(x) = 0 \iff x = 0_E$.

(ii) **Homogénéité absolue** : $N(\lambda x) = |\lambda| N(x)$.

(iii) **Inégalité triangulaire** (ou sous-additivité) : $N(x + y) \le N(x) + N(y)$.

Un espace vectoriel muni d'une norme est appelé **espace vectoriel normé** (e.v.n.), noté $(E, N)$ ou $(E, \|\cdot\|)$.

### Propriétés Clés

-   **Positivité** : Pour tout $x \in E$, $N(x) \ge 0$.

    *Démonstration.* En utilisant l'inégalité triangulaire et l'homogénéité :

    $$0 = N(0_E) = N(x - x) \le N(x) + N(-x) = N(x) + |-1|N(x) = 2N(x).$$

    Donc $N(x) \ge 0$. La définition demande que l'image de $N$ soit dans $\mathbb{R}_+$, mais cette propriété montre que c'est une conséquence des autres axiomes si l'on suppose seulement $N: E \to \mathbb{R}$.

-   **Inégalité triangulaire renversée** : Pour tous $x, y \in E$, on a $|N(x) - N(y)| \le N(x - y)$.

    *Démonstration.* Par l'inégalité triangulaire, $N(x) = N(x - y + y) \le N(x - y) + N(y)$, ce qui donne $N(x) - N(y) \le N(x - y)$. De même, $N(y) = N(y - x + x) \le N(y - x) + N(x) = N(x-y) + N(x)$, d'où $N(y) - N(x) \le N(x-y)$, soit $-(N(x) - N(y)) \le N(x-y)$. En combinant les deux inégalités, on obtient le résultat.

-   **Interprétation géométrique** : La **boule unité** fermée d'un e.v.n. $(E, N)$, définie par $B_N = \{x \in E \mid N(x) \le 1\}$, est une partie de $E$ qui est **convexe**, **symétrique par rapport à l'origine** (ou équilibrée) et **absorbante**. Réciproquement, toute partie de $E$ possédant ces propriétés définit une norme (sa jauge de Minkowski).

-   **Transport de norme** : Si $N_F$ est une norme sur un espace vectoriel $F$ et $f : E \to F$ est une application linéaire injective, alors l'application $N_E(x) = N_F(f(x))$ est une norme sur $E$.

    *Démonstration.* La vérification des axiomes est directe. Par exemple, pour la séparation : $N_E(x)=0 \iff N_F(f(x))=0 \iff f(x)=0_F$. Comme $f$ est injective (donc son noyau est $\{0_E\}$), ceci est équivalent à $x=0_E$.

### Exemples

**Exemple 1**

La valeur absolue $|\cdot|$ est une norme sur l'espace vectoriel $\mathbb{R}$. C'est le cas le plus simple et fondamental.

**Exemple 2**

Sur $\mathbb{R}^n$, l'application $N(x) = \sum_{i=1}^n |x_i|$ est la **norme 1**, notée $\|\cdot\|_1$.

- Séparation: $\sum |x_i| = 0 \iff \forall i, |x_i|=0 \iff x=0$.
- Homogénéité: $\|\lambda x\|_1 = \sum |\lambda x_i| = |\lambda| \sum |x_i| = |\lambda|\|x\|_1$.
- Inégalité triangulaire: $\|x+y\|_1 = \sum |x_i+y_i| \le \sum (|x_i|+|y_i|) = \|x\|_1 + \|y\|_1$.

**Exemple 3**

Soit $C([a, b], \mathbb{R})$ l'espace des fonctions continues de $[a,b]$ dans $\mathbb{R}$. L'application $\|f\|_\infty = \sup_{t \in [a, b]} |f(t)|$ (le sup est atteint car la fonction est continue sur un compact) est une norme, appelée **norme de la convergence uniforme**.

### Contre-exemples

**Contre-exemple 1 (Semi-norme)**

Sur $\mathbb{R}^2$, l'application $p(x_1, x_2) = |x_1|$ n'est pas une norme. Elle vérifie l'homogénéité et l'inégalité triangulaire, mais pas la séparation. En effet, $p(0, 1) = |0| = 0$ bien que $(0,1) \neq (0,0)$. Une telle application est appelée une **semi-norme**.

**Contre-exemple 2 (Violation de l'homogénéité)**

Sur $\mathbb{R}^n$, l'application $f(x) = \|x\|_2^2 = \sum_{i=1}^n x_i^2$ n'est pas une norme. Elle ne vérifie pas l'homogénéité absolue : $f(\lambda x) = \|\lambda x\|_2^2 = \lambda^2 \|x\|_2^2 = \lambda^2 f(x)$, ce qui est différent de $|\lambda| f(x)$ sauf cas triviaux.

### Concepts Connexes

-   **Distance induite par une norme** : Toute norme $N$ sur $E$ induit une distance $d(x, y) = N(x - y)$, transformant $(E, d)$ en un espace métrique.
-   **Topologie d'un e.v.n.** : La distance induite par une norme permet de définir une topologie sur $E$, avec des notions d'ouverts, de fermés, de voisinage et de convergence.
-   **Espace de Banach** : Un espace vectoriel normé qui est complet pour la distance induite.

---

## Concept 2: Inégalité de Cauchy-Schwarz et Norme Euclidienne

### Prérequis

-   Espace vectoriel réel
-   Polynômes du second degré et signe du discriminant
-   (Facultatif mais recommandé) Produit scalaire

### Définition

L'**inégalité de Cauchy-Schwarz** est un résultat fondamental concernant le produit scalaire canonique sur $\mathbb{R}^n$. Le **produit scalaire canonique** de deux vecteurs $x, y \in \mathbb{R}^n$ est défini par $\langle x, y \rangle = \sum_{j=1}^{n} x_j y_j$. La **norme euclidienne**, ou **norme 2**, est définie par $\|x\|_2 = \sqrt{\langle x, x \rangle} = \sqrt{\sum_{j=1}^{n} x_j^2}$.

**Proposition (Inégalité de Cauchy-Schwarz)**

*Hypothèse :* Soient $x = {}^t(x_1, \dots, x_n)$ et $y = {}^t(y_1, \dots, y_n)$ deux vecteurs de $\mathbb{R}^n$.

*Conclusion :*

$$

\left| \sum_{j=1}^{n} x_j y_j \right| \le \left( \sum_{j=1}^{n} x_j^2 \right)^{1/2} \left( \sum_{j=1}^{n} y_j^2 \right)^{1/2}, \quad \text{i.e.} \quad |\langle x, y \rangle| \le \|x\|_2 \|y\|_2.

$$

L'égalité a lieu si et seulement si les vecteurs $x$ et $y$ sont colinéaires (i.e., linéairement dépendants).

*Démonstration.*

Pour tout $t \in \mathbb{R}$, considérons le polynôme $P(t) = \|x + ty\|_2^2$. Par définition de la norme, $P(t) \ge 0$ pour tout $t$. On peut développer $P(t)$ :

$$

P(t) = \langle x+ty, x+ty \rangle = \langle x,x \rangle + 2t\langle x,y \rangle + t^2\langle y,y \rangle = \|y\|_2^2 t^2 + 2\langle x, y \rangle t + \|x\|_2^2.

$$

C'est un polynôme du second degré en $t$ qui est toujours positif ou nul. Son discriminant doit donc être négatif ou nul :

$$

\Delta = (2\langle x, y \rangle)^2 - 4(\|y\|_2^2)(\|x\|_2^2) \le 0 \implies 4\langle x, y \rangle^2 \le 4\|x\|_2^2 \|y\|_2^2.

$$

En prenant la racine carrée, on obtient l'inégalité. Le cas d'égalité $\Delta=0$ correspond à l'existence d'une racine réelle double $t_0$, ce qui signifie $P(t_0) = \|x + t_0 y\|_2^2 = 0$. Par la propriété de séparation de la norme, cela implique $x + t_0 y = 0$, donc $x$ et $y$ sont colinéaires. Si $y=0$, la colinéarité et l'égalité sont triviales.

### Propriétés Clés

-   **La norme euclidienne est une norme** : La séparation et l'homogénéité sont directes. L'inégalité triangulaire (parfois appelée inégalité de Minkowski pour p=2) est une conséquence de Cauchy-Schwarz.

    *Démonstration de l'inégalité triangulaire.*

    $$

    \|x+y\|_2^2 = \langle x+y, x+y \rangle = \|x\|_2^2 + 2\langle x,y \rangle + \|y\|_2^2.

    $$

    En utilisant Cauchy-Schwarz, $\langle x,y \rangle \le |\langle x,y \rangle| \le \|x\|_2\|y\|_2$, donc :

    $$

    \|x+y\|_2^2 \le \|x\|_2^2 + 2\|x\|_2\|y\|_2 + \|y\|_2^2 = (\|x\|_2 + \|y\|_2)^2.

    $$

    La fonction racine carrée étant croissante sur $\mathbb{R}_+$, on a $\|x+y\|_2 \le \|x\|_2 + \|y\|_2$.

-   **Identité du parallélogramme** : Une norme $\|\cdot\|$ est induite par un produit scalaire si et seulement si elle vérifie l'identité du parallélogramme :

    $$

    \forall x, y, \quad \|x+y\|^2 + \|x-y\|^2 = 2(\|x\|^2 + \|y\|^2).

    $$

    La norme euclidienne la vérifie, mais les normes $\|\cdot\|_1$ et $\|\cdot\|_\infty$ ne la vérifient pas.

### Exemples

**Exemple 1**

Soit $x = (1, -2, 3)$ et $y = (2, 1, 0)$ dans $\mathbb{R}^3$.

$\langle x, y \rangle = 1 \cdot 2 + (-2) \cdot 1 + 3 \cdot 0 = 0$.

$\|x\|_2 = \sqrt{1^2 + (-2)^2 + 3^2} = \sqrt{14}$.

$\|y\|_2 = \sqrt{2^2 + 1^2 + 0^2} = \sqrt{5}$.

L'inégalité de C-S est $|0| \le \sqrt{14} \sqrt{5}$, ce qui est vrai. Les vecteurs sont orthogonaux, un cas particulier de non-colinéarité où l'inégalité est stricte.

**Exemple 2**

Soit $x = (1, -2, 3)$ et $y = (-2, 4, -6) = -2x$ dans $\mathbb{R}^3$. Les vecteurs sont colinéaires.

$\langle x, y \rangle = 1(-2) + (-2)4 + 3(-6) = -2 - 8 - 18 = -28$.

$\|x\|_2 = \sqrt{14}$.

$\|y\|_2 = \sqrt{(-2)^2+4^2+(-6)^2} = \sqrt{4+16+36} = \sqrt{56} = 2\sqrt{14}$.

L'inégalité de C-S devient $|\langle x, y \rangle| = |-28| = 28$ et $\|x\|_2\|y\|_2 = \sqrt{14} \cdot 2\sqrt{14} = 2 \cdot 14 = 28$. Il y a bien égalité.

**Exemple 3 (Généralisation)**

Dans l'espace des fonctions continues $C([a, b], \mathbb{R})$ muni du produit scalaire $\langle f, g \rangle = \int_a^b f(t)g(t)dt$, l'inégalité de Cauchy-Schwarz s'écrit :

$$

\left| \int_a^b f(t)g(t)dt \right| \le \left( \int_a^b f(t)^2 dt \right)^{1/2} \left( \int_a^b g(t)^2 dt \right)^{1/2}.

$$

### Contre-exemples

**Contre-exemple 1 (Norme non-euclidienne)**

Sur $\mathbb{R}^2$, considérons la norme 1, $\| \cdot \|_1$. Soit $x=(1,0)$ et $y=(0,1)$.

$\|x+y\|_1^2 + \|x-y\|_1^2 = \|(1,1)\|_1^2 + \|(1,-1)\|_1^2 = 2^2 + 2^2 = 8$.

$2(\|x\|_1^2 + \|y\|_1^2) = 2(1^2 + 1^2) = 4$.

Comme $8 \neq 4$, l'identité du parallélogramme n'est pas vérifiée, donc $\| \cdot \|_1$ n'est pas une norme euclidienne (elle n'est induite par aucun produit scalaire).

**Contre-exemple 2 (Inégalité stricte)**

Pour tout couple de vecteurs non colinéaires, l'inégalité de Cauchy-Schwarz est stricte. Par exemple, $x=(1,1)$ et $y=(1,0)$ dans $\mathbb{R}^2$.

$\langle x,y \rangle = 1$. $\|x\|_2=\sqrt{2}$, $\|y\|_2=1$.

$|\langle x,y \rangle|=1 < \|x\|_2\|y\|_2 = \sqrt{2}$.

### Concepts Connexes

-   **Espace préhilbertien / Espace de Hilbert** : Un espace vectoriel muni d'un produit scalaire. S'il est complet pour la norme induite, c'est un espace de Hilbert. $\mathbb{R}^n$ est un espace de Hilbert de dimension finie.
-   **Orthogonalité** : Deux vecteurs $x, y$ sont orthogonaux si $\langle x, y \rangle = 0$.
-   **Inégalité de Hölder** : Généralisation de l'inégalité de Cauchy-Schwarz.

---

## Concept 3: Normes usuelles sur $\mathbb{R}^n$ (Les normes p)

### Prérequis

-   Définition d'une norme
-   Sommation ($\sum$) et maximum ($\max$)

### Définition

Pour un vecteur $x = {}^t(x_1, \dots, x_n) \in \mathbb{R}^n$, on définit les normes usuelles suivantes :

1.  **Norme 1** ou **norme de Manhattan**:

    $$

    \|x\|_1 = \sum_{j=1}^{n} |x_j|

    $$

2.  **Norme euclidienne** (déjà vue) :

    $$

    \|x\|_2 = \left( \sum_{j=1}^{n} x_j^2 \right)^{1/2}

    $$

3.  **Norme infinie** ou **norme du sup**:

    $$

    \|x\|_\infty = \max_{1 \le j \le n} |x_j|

    $$

Ces trois normes sont des cas particuliers des **normes p** (ou normes de Hölder), définies pour $p \ge 1$ par :

$$

\|x\|_p = \left( \sum_{j=1}^{n} |x_j|^p \right)^{1/p}

$$

On peut montrer que $\|x\|_\infty = \lim_{p \to \infty} \|x\|_p$.

### Propriétés Clés

-   **Preuves de validité** : Les démonstrations que $\|\cdot\|_1$ et $\|\cdot\|_\infty$ sont des normes sont directes. Celle pour $\|\cdot\|_2$ requiert Cauchy-Schwarz. Pour la norme p générale, l'inégalité triangulaire (inégalité de Minkowski) est non triviale et se déduit de l'inégalité de Hölder.

-   **Géométrie des boules unités** : Les boules unités $B_p = \{x \in \mathbb{R}^n \mid \|x\|_p \le 1\}$ ont des formes géométriques distinctes. Dans $\mathbb{R}^2$:
    -   $B_1$: un carré dont les sommets sont $(1,0), (0,1), (-1,0), (0,-1)$.
    -   $B_2$: le disque unité usuel.
    -   $B_\infty$: un carré dont les côtés sont parallèles aux axes, sommets à $(\pm 1, \pm 1)$.

    Pour $1 \le p \le q \le \infty$, on a l'inclusion $B_p \subseteq B_q$.

### Exemples

**Exemple 1**

Soit le vecteur $u = {}^t(1, -1, 2, -3, 1) \in \mathbb{R}^5$.

-   $\|u\|_1 = |1| + |-1| + |2| + |-3| + |1| = 1+1+2+3+1 = 8$.
-   $\|u\|_2 = \sqrt{1^2 + (-1)^2 + 2^2 + (-3)^2 + 1^2} = \sqrt{1+1+4+9+1} = \sqrt{16} = 4$.
-   $\|u\|_\infty = \max(|1|, |-1|, |2|, |-3|, |1|) = 3$.

**Exemple 2**

Dans $\mathbb{R}^2$, soit $x = (-3, 4)$.

-   $\|x\|_1 = |-3| + |4| = 7$.
-   $\|x\|_2 = \sqrt{(-3)^2 + 4^2} = \sqrt{9+16} = \sqrt{25} = 5$.
-   $\|x\|_\infty = \max(|-3|, |4|) = 4$.

On observe que $\|x\|_\infty \le \|x\|_2 \le \|x\|_1$.

**Exemple 3**

Considérons la norme $N(x, y) = |x + 2y| + 3|y|$ sur $\mathbb{R}^2$.

-   **Séparation**: Si $N(x,y)=0$, alors $|x+2y|=0$ et $3|y|=0$. La seconde équation implique $y=0$. En substituant dans la première, $|x|=0$, donc $x=0$.
-   **Homogénéité**: $N(\lambda x, \lambda y) = |\lambda x + 2\lambda y| + 3|\lambda y| = |\lambda|(|x+2y|+3|y|) = |\lambda|N(x,y)$.
-   **Inégalité triangulaire**:

    $N(x+x', y+y') = |(x+x') + 2(y+y')| + 3|y+y'|$

    $= |(x+2y) + (x'+2y')| + 3|y+y'|$

    $\le |x+2y| + |x'+2y'| + 3(|y|+|y'|)$

    $= (|x+2y| + 3|y|) + (|x'+2y'| + 3|y'|) = N(x,y) + N(x',y')$.

C'est bien une norme.

### Contre-exemples

**Contre-exemple 1 (Cas $0 < p < 1$)**

L'application $\|x\|_p = (\sum |x_i|^p)^{1/p}$ pour $0 < p < 1$ n'est pas une norme car elle ne vérifie pas l'inégalité triangulaire. Soit $x=(1,0)$ et $y=(0,1)$ dans $\mathbb{R}^2$, et $p=1/2$.

$\|x\|_{1/2} = (1^{1/2})^{2}=1$. $\|y\|_{1/2}=1$.

$\|x+y\|_{1/2} = \|(1,1)\|_{1/2} = (1^{1/2} + 1^{1/2})^{2} = 2^2 = 4$.

On a $\|x+y\|_{1/2} = 4 > \|x\|_{1/2} + \|y\|_{1/2} = 2$.

**Contre-exemple 2 (Norme "zéro")**

Parfois notée $\|x\|_0$, l'application qui compte le nombre de composantes non nulles n'est pas une norme. Elle viole l'homogénéité : si $x=(1,1)$, $\|x\|_0 = 2$. Alors $\|2x\|_0 = \|(2,2)\|_0 = 2$, mais $|2|\|x\|_0 = 2 \cdot 2 = 4$.

### Concepts Connexes

-   **Équivalence des normes** : En dimension finie, toutes ces normes sont équivalentes.
-   **Espaces $L^p$ et $\ell^p$** : Généralisations de ces normes aux espaces de fonctions et aux espaces de suites, qui sont des concepts centraux en analyse fonctionnelle.

---

## Concept 4: Équivalence des Normes

### Prérequis

-   Définition d'une norme
-   Relation d'équivalence

### Définition

Soient $N_1$ et $N_2$ deux normes sur un même espace vectoriel $E$. On dit que $N_1$ est **équivalente** à $N_2$ s'il existe deux constantes réelles strictement positives $\alpha$ et $\beta$ telles que :

$$

\forall x \in E, \quad \alpha N_1(x) \le N_2(x) \le \beta N_1(x).

$$

Il s'agit d'une relation d'équivalence (réflexive, symétrique, transitive).

### Propriétés Clés

-   **Équivalence des normes usuelles sur $\mathbb{R}^n$** : Les normes $\|\cdot\|_1, \|\cdot\|_2, \|\cdot\|_\infty$ sont toutes équivalentes sur $\mathbb{R}^n$.

    **Proposition.** Pour tout $x \in \mathbb{R}^n$, on a les inégalités suivantes :

    $$

    \|x\|_\infty \le \|x\|_2 \le \|x\|_1 \le \sqrt{n}\|x\|_2 \le n\|x\|_\infty.

    $$

    *Démonstration (esquisse).*

    1.  $\|x\|_\infty \le \|x\|_2$: Soit $|x_j| = \|x\|_\infty$. Alors $\|x\|_\infty^2 = x_j^2 \le \sum_{k=1}^n x_k^2 = \|x\|_2^2$.
    2.  $\|x\|_2 \le \|x\|_1$: $\|x\|_1^2 = (\sum |x_j|)^2 = \sum x_j^2 + 2\sum_{i<j}|x_i||x_j| \ge \sum x_j^2 = \|x\|_2^2$.
    3.  $\|x\|_1 \le \sqrt{n}\|x\|_2$: C'est Cauchy-Schwarz appliqué aux vecteurs $(|x_1|, \dots, |x_n|)$ et $(1, \dots, 1)$.
    4.  $\|x\|_2 \le \sqrt{n}\|x\|_\infty$: $\|x\|_2^2 = \sum x_j^2 \le \sum (\|x\|_\infty)^2 = n \|x\|_\infty^2$.

    De ces inégalités, on déduit par exemple que $\|x\|_\infty \le \|x\|_1 \le n \|x\|_\infty$, montrant l'équivalence entre $\|\cdot\|_1$ et $\|\cdot\|_\infty$.

-   **Théorème fondamental de la dimension finie** : Sur un espace vectoriel de dimension finie, toutes les normes sont équivalentes.

    *Idée de la preuve.* On montre que toute norme $N$ est équivalente à la norme infinie $\|\cdot\|_\infty$ dans une base donnée. L'inégalité $N(x) \le C \|x\|_\infty$ découle de l'inégalité triangulaire. L'autre inégalité, $\alpha \|x\|_\infty \le N(x)$, est plus délicate et repose sur un argument de compacité : la sphère unité pour la norme $\|\cdot\|_\infty$ est compacte, et la fonction $N$ (qui est continue) y atteint son minimum, qui est strictement positif par l'axiome de séparation.

### Exemples

**Exemple 1**

Dans $\mathbb{R}^2$, montrons l'équivalence de $N(x, y) = |x| + |y|$ ($\| \cdot \|_1$) et $M(x, y) = \max(|x|, |y|)$ ($\| \cdot \|_\infty$).

D'après la proposition générale, $\|(x,y)\|_\infty \le \|(x,y)\|_1 \le 2 \|(x,y)\|_\infty$.

En effet, $\max(|x|,|y|) \le |x|+|y|$. Et $|x|+|y| \le \max(|x|,|y|) + \max(|x|,|y|) = 2\max(|x|,|y|)$.

Les constantes sont $\alpha=1$ et $\beta=2$.

**Exemple 2**

Sur $\mathbb{R}^2$, montrons que $N(x, y) = |x + 2y| + 3|y|$ est équivalente à $\|(x,y)\|_\infty = \max(|x|,|y|)$.

-   Majoration de $N$: $N(x, y) \le |x| + 2|y| + 3|y| = |x| + 5|y| \le \|(x,y)\|_\infty + 5\|(x,y)\|_\infty = 6\|(x,y)\|_\infty$.
-   Minoration de $N$: $|x| = |(x+2y) - 2y| \le |x+2y| + 2|y|$.

    Donc $\|(x,y)\|_\infty = \max(|x|,|y|) \le \max(|x+2y|+2|y|, |y|)$.

    Si $\|(x,y)\|_\infty = |y|$, alors $\|(x,y)\|_\infty \le \frac{1}{3} N(x,y)$.

    Si $\|(x,y)\|_\infty = |x|$, alors $\|(x,y)\|_\infty \le |x+2y| + 2|y| \le |x+2y|+3|y| = N(x,y)$.

    Dans tous les cas, $\|(x,y)\|_\infty \le N(x,y)$.

    Finalement, $\|(x,y)\|_\infty \le N(x, y) \le 6\|(x,y)\|_\infty$. Elles sont équivalentes.

### Contre-exemples

**Contre-exemple 1 (Dimension infinie)**

Sur $C([0, 1], \mathbb{R})$, les normes $\|f\|_\infty = \sup_{t \in [0, 1]} |f(t)|$ et $\|f\|_1 = \int_0^1 |f(t)|dt$ ne sont pas équivalentes.

Considérons la suite de fonctions $f_n(t) = t^n$. On a $\|f_n\|_\infty = 1$ pour tout $n \ge 1$.

Cependant, $\|f_n\|_1 = \int_0^1 t^n dt = \frac{1}{n+1}$.

Si les normes étaient équivalentes, il existerait $\alpha > 0$ tel que $\alpha \|f_n\|_\infty \le \|f_n\|_1$. Cela donnerait $\alpha \cdot 1 \le \frac{1}{n+1}$ pour tout $n$, soit $\alpha \le \frac{1}{n+1}$. En faisant tendre $n \to \infty$, on obtient $\alpha \le 0$, ce qui contredit $\alpha > 0$.

**Contre-exemple 2 (Espaces de suites)**

Considérons l'espace des suites réelles. Soit $\ell^1$ l'espace des suites $(u_n)$ telles que $\sum |u_n| < \infty$ (norme $\|\cdot\|_1$) et $\ell^2$ l'espace des suites telles que $\sum u_n^2 < \infty$ (norme $\|\cdot\|_2$). On a $\ell^1 \subset \ell^2$. La suite $u_n = 1/n$ est dans $\ell^2$ (série de Riemann) mais pas dans $\ell^1$ (série harmonique). Cela montre que les normes ne peuvent pas être équivalentes sur un espace contenant ces deux types de suites.

### Concepts Connexes

-   **Topologie** : Deux normes équivalentes engendrent la même topologie. Ainsi, en dimension finie, toutes les normes définissent la même notion de "proximité", de "convergence", d'"ouvert", etc.
-   **Analyse fonctionnelle** : La non-équivalence des normes en dimension infinie est un point central de l'analyse fonctionnelle, menant à l'étude de différentes notions de convergence (forte, faible, etc.).

---

## Concept 5: Suites Convergentes et Suites de Cauchy

### Prérequis

-   Norme, espace vectoriel normé
-   Définition de la convergence d'une suite réelle
-   Quantificateurs logiques ($\forall, \exists$)

### Définition

Soit $(E, \|\cdot\|)$ un espace vectoriel normé.

-   **Convergence d'une suite** : Une suite $(x^k)_{k \in \mathbb{N}}$ d'éléments de $E$ **converge** vers un élément $a \in E$ si la suite réelle $\|x^k - a\|$ converge vers 0. Formellement :

    $$

    \forall \varepsilon > 0, \exists K \in \mathbb{N}, \forall k \ge K \implies \|x^k - a\| < \varepsilon.

    $$

    On note alors $\lim_{k \to \infty} x^k = a$ ou $x^k \to a$.

-   **Suite de Cauchy** : Une suite $(x^k)_{k \in \mathbb{N}}$ d'éléments de $E$ est une **suite de Cauchy** si ses termes se rapprochent arbitrairement les uns des autres pour les grands indices. Formellement :

    $$

    \forall \varepsilon > 0, \exists K \in \mathbb{N}, \forall p, q \ge K \implies \|x^p - x^q\| < \varepsilon.

    $$

### Propriétés Clés

1.  **Unicité de la limite** : Si une suite converge, sa limite est unique.

    *Démonstration.* Supposons que $x^k \to a$ and $x^k \to b$. Pour tout $\varepsilon > 0$, il existe $K_a, K_b$ tels que pour $k \ge \max(K_a, K_b)$, on a $\|x^k - a\| < \varepsilon/2$ et $\|x^k - b\| < \varepsilon/2$. Par l'inégalité triangulaire, $\|a-b\| \le \|a-x^k\| + \|x^k-b\| < \varepsilon/2 + \varepsilon/2 = \varepsilon$. Ceci étant vrai pour tout $\varepsilon > 0$, on a $\|a-b\|=0$, d'où $a=b$ par séparation.

2.  **Indépendance de la norme (en cas d'équivalence)** : Si $N_1$ et $N_2$ sont deux normes équivalentes sur $E$, une suite converge pour $N_1$ si et seulement si elle converge pour $N_2$ (vers la même limite). La propriété d'être une suite de Cauchy est également préservée.

    *Démonstration.* Soit $\alpha N_1(x) \le N_2(x) \le \beta N_1(x)$. Si $x^k \to a$ pour $N_1$, alors $N_1(x^k-a) \to 0$. L'encadrement implique que $N_2(x^k-a) \to 0$ également. La réciproque est identique.

3.  **Convergence dans $\mathbb{R}^n$** : Une suite $(x^k)_{k \in \mathbb{N}}$ de vecteurs de $\mathbb{R}^n$ converge vers $a \in \mathbb{R}^n$ si et seulement si chacune de ses suites de coordonnées $(x_j^k)_{k \in \mathbb{N}}$ converge vers la coordonnée correspondante $a_j$ dans $\mathbb{R}$ (pour $j=1, \dots, n$).

    *Démonstration.* C'est une conséquence directe du point 2 et des inégalités liant n'importe quelle norme à la norme infinie, par exemple : $|x_j^k - a_j| \le \|x^k - a\|_\infty$. Si $\|x^k-a\|_\infty \to 0$, alors chaque $|x_j^k-a_j| \to 0$. Réciproquement, si pour tout $j$, $|x_j^k-a_j| \to 0$, alors $\max_j |x_j^k-a_j| = \|x^k-a\|_\infty \to 0$.

4.  **Convergence implique Cauchy** : Dans tout e.v.n., une suite convergente est une suite de Cauchy.

    *Démonstration.* Si $x^k \to a$, alors pour tout $\varepsilon>0$, il existe $K$ tel que pour $k \ge K$, $\|x^k - a\| < \varepsilon/2$. Alors pour $p, q \ge K$, on a $\|x^p - x^q\| = \|(x^p-a) - (x^q-a)\| \le \|x^p-a\| + \|x^q-a\| < \varepsilon/2 + \varepsilon/2 = \varepsilon$.

5.  **Complétude de $\mathbb{R}^n$** : L'espace $\mathbb{R}^n$ est complet. C'est-à-dire que toute suite de Cauchy dans $\mathbb{R}^n$ est convergente. C'est une propriété fondamentale qui garantit l'absence de "trous".

### Exemples

**Exemple 1**

La suite dans $\mathbb{R}^3$ définie par $x^k = \begin{pmatrix} \frac{k}{k+1} \\ (1+\frac{1}{k})^k \\ \frac{\sin(k)}{k} \end{pmatrix}$.

On étudie la convergence de chaque composante :

-   $x_1^k = \frac{k}{k+1} \to 1$.
-   $x_2^k = (1+\frac{1}{k})^k \to e$.
-   $x_3^k = \frac{\sin(k)}{k} \to 0$ (par encadrement, car $|\sin(k)| \le 1$).

La suite $(x^k)$ converge donc vers le vecteur $a = \begin{pmatrix} 1 \\ e \\ 0 \end{pmatrix}$.

**Exemple 2 (Suite géométrique)**

Dans $\mathbb{R}^2$, soit $x^k = (\frac{1}{2^k}, \frac{(-1)^k}{3^k})$. Les deux suites de coordonnées sont des suites géométriques de raison en valeur absolue $<1$, elles convergent donc vers 0. La suite $(x^k)$ converge vers $(0,0)$.

**Exemple 3 (Suite de Cauchy)**

Considérons la suite de réels définie par $x_0 = 1$ et $x_{k+1} = \frac{1}{2}(x_k + \frac{2}{x_k})$. C'est la suite de Héron pour le calcul de $\sqrt{2}$. On peut montrer qu'elle est de Cauchy. Puisque $\mathbb{R}$ est complet, elle converge. Sa limite $L$ vérifie $L = \frac{1}{2}(L+\frac{2}{L})$, soit $L^2=2$. Comme la suite est à termes positifs, $L=\sqrt{2}$.

### Contre-exemples

**Contre-exemple 1 (Suite non-convergente)**

La suite $x^k = ((-1)^k, \frac{1}{k})$ dans $\mathbb{R}^2$. La seconde composante converge vers 0, mais la première ($(-1)^k$) diverge. La suite vectorielle $(x^k)$ est donc divergente. Elle n'est pas de Cauchy, car $\|x^{k+1} - x^k\|_\infty = |(-1)^{k+1} - (-1)^k| = 2$ pour tout $k$.

**Contre-exemple 2 (Espace non-complet)**

Soit $E = \mathbb{Q}$ l'ensemble des nombres rationnels, avec la norme $| \cdot |$. La suite de Héron de l'Exemple 3 est une suite d'éléments de $\mathbb{Q}$ qui est de Cauchy, mais sa limite $\sqrt{2}$ n'est pas dans $\mathbb{Q}$. Donc, dans l'espace normé $\mathbb{Q}$, cette suite de Cauchy ne converge pas. $\mathbb{Q}$ n'est pas complet.

### Concepts Connexes

-   **Espace de Banach** : Un espace vectoriel normé qui est complet. $\mathbb{R}^n$ est l'exemple prototypique d'un espace de Banach de dimension finie.
-   **Continuité** : La notion de convergence des suites est fondamentale pour définir la continuité des applications entre espaces vectoriels normés (continuité séquentielle).
