---
title: A - Concepts
level: regular
course: Géométrie
chapter: Espaces Euclidiens et Hermitiens
order: 10
tags: ["concepts", "mathematics", "regular"]
---

# Espaces Euclidiens et Hermitiens (A)

---

## Concept 1: Formes Bilinéaires/Sesquilinéaires et Produit Scalaire

### Prérequis

-   Espaces vectoriels sur $\mathbb{R}$ ou $\mathbb{C}$
-   Applications linéaires
-   Nombres complexes (conjugué)
-   Matrices (transposée)

### Définition

Soit $E$ un espace vectoriel de dimension finie sur un corps $\mathbb{K}$ (où $\mathbb{K} = \mathbb{R}$ ou $\mathbb{K} = \mathbb{C}$).

1.  **Forme bilinéaire** (cas $\mathbb{K} = \mathbb{R}$):

    Une application $\varphi: E \times E \to \mathbb{R}$ est une **forme bilinéaire** si elle est linéaire par rapport à chacune de ses deux variables. C'est-à-dire, pour tous vecteurs $u, u_1, u_2, v, v_1, v_2 \in E$ et tout scalaire $\lambda \in \mathbb{R}$:

    -   $\varphi(u_1 + \lambda u_2, v) = \varphi(u_1, v) + \lambda\varphi(u_2, v)$ (linéarité à gauche)
    -   $\varphi(u, v_1 + \lambda v_2) = \varphi(u, v_1) + \lambda\varphi(u, v_2)$ (linéarité à droite)

2.  **Forme sesquilinéaire** (cas $\mathbb{K} = \mathbb{C}$):

    Une application $\varphi: E \times E \to \mathbb{C}$ est une **forme sesquilinéaire** si elle est linéaire par rapport à sa première variable et semi-linéaire (ou anti-linéaire) par rapport à sa seconde. C'est-à-dire, pour tous vecteurs $u, u_1, u_2, v, v_1, v_2 \in E$ et tout scalaire $\lambda \in \mathbb{C}$:

    -   $\varphi(u_1 + \lambda u_2, v) = \varphi(u_1, v) + \lambda\varphi(u_2, v)$ (linéarité à gauche)
    -   $\varphi(u, v_1 + \lambda v_2) = \varphi(u, v_1) + \bar{\lambda}\varphi(u, v_2)$ (semi-linéarité à droite)

Un **produit scalaire** est une forme qui possède des propriétés supplémentaires :

-   **Cas Réel (Espace Euclidien)** : Un produit scalaire est une forme bilinéaire **symétrique** ($\varphi(u, v) = \varphi(v, u)$) et **définie positive** ($\varphi(u, u) > 0$ pour $u \neq 0_E$).
-   **Cas Complexe (Espace Hermitien)** : Un produit scalaire est une forme sesquilinéaire **hermitienne** ($\varphi(u, v) = \overline{\varphi(v, u)}$) et **définie positive** ($\varphi(u, u) > 0$ pour $u \neq 0_E$).

On note souvent un produit scalaire par $\langle u, v \rangle$ au lieu de $\varphi(u, v)$.

**Explication détaillée:**

Le produit scalaire est un outil qui généralise les notions géométriques de longueur, d'angle et de perpendicularité (orthogonalité) aux espaces vectoriels abstraits.

-   La **bilinéarité** (ou sesquilinéarité) est une propriété de "distribution" qui nous permet de faire des calculs algébriques, de la même manière que $(a+b)c = ac+bc$.
-   La **symétrie** (ou symétrie hermitienne) assure que la "relation" entre $u$ et $v$ est la même que celle entre $v$ et $u$. Dans le cas complexe, la conjugaison est nécessaire pour garantir que $\langle u, u \rangle = \overline{\langle u, u \rangle}$, ce qui signifie que $\langle u, u \rangle$ est toujours un nombre réel. C'est indispensable pour pouvoir parler de "longueur au carré" qui doit être positive.
-   Le caractère **défini positif** est crucial : il garantit que seul le vecteur nul a une "longueur" nulle ($\langle u, u \rangle = 0 \iff u = 0_E$). Cela permet de définir une norme (longueur) de manière cohérente.

### Propriétés Clés

-   Pour tout produit scalaire, on a $\langle 0_E, v \rangle = \langle v, 0_E \rangle = 0$ pour tout $v \in E$.
-   **Symétrie (cas réel)** : $\langle u, v \rangle = \langle v, u \rangle$.
-   **Symétrie Hermitienne (cas complexe)** : $\langle u, v \rangle = \overline{\langle v, u \rangle}$.
-   **Positivité** : $\langle u, u \rangle \in \mathbb{R}$ et $\langle u, u \rangle \ge 0$.
-   **Caractère défini** : $\langle u, u \rangle = 0 \iff u = 0_E$.

### Exemples

**Exemple 1 : Produit scalaire canonique sur $\mathbb{R}^3$**

Soit $E = \mathbb{R}^3$. Pour $u = (x_1, x_2, x_3)$ et $v = (y_1, y_2, y_3)$, on définit :

$$ \langle u, v \rangle = x_1 y_1 + x_2 y_2 + x_3 y_3 $$

C'est une forme bilinéaire symétrique définie positive. Par exemple, si $u = (1, 2, 3)$ et $v = (-1, 0, 4)$:

$$ \langle u, v \rangle = 1 \cdot (-1) + 2 \cdot 0 + 3 \cdot 4 = -1 + 0 + 12 = 11 $$

Et la "longueur au carré" de $u$ est :

$$ \langle u, u \rangle = 1^2 + 2^2 + 3^2 = 1 + 4 + 9 = 14 > 0 $$

**Exemple 2 : Produit scalaire hermitien canonique sur $\mathbb{C}^2$**

Soit $E = \mathbb{C}^2$. Pour $u = (z_1, z_2)$ et $v = (w_1, w_2)$, on définit :

$$ \langle u, v \rangle = z_1 \bar{w}_1 + z_2 \bar{w}_2 $$

C'est une forme sesquilinéaire hermitienne définie positive. Si $u = (1+i, 2)$ et $v = (3, 1-i)$:

$$ \langle u, v \rangle = (1+i)\bar{3} + 2(\overline{1-i}) = (1+i) \cdot 3 + 2(1+i) = 3+3i + 2+2i = 5+5i $$

Vérifions la symétrie hermitienne :

$$ \langle v, u \rangle = 3(\overline{1+i}) + (1-i)\bar{2} = 3(1-i) + (1-i)2 = 3-3i + 2-2i = 5-5i = \overline{\langle u, v \rangle} $$

La "longueur au carré" de $u$ est réelle et positive :

$$ \langle u, u \rangle = (1+i)(\overline{1+i}) + 2\bar{2} = (1+i)(1-i) + 4 = (1^2 - i^2) + 4 = (1 - (-1)) + 4 = 2+4=6 > 0 $$

**Exemple 3 : Produit scalaire sur l'espace des polynômes $\mathbb{R}_2[X]$**

Soit $E = \mathbb{R}_2[X]$, l'espace des polynômes de degré au plus 2. On définit pour $P, Q \in E$:

$$ \langle P, Q \rangle = \int_{-1}^{1} P(t)Q(t) dt $$

Calculons le produit scalaire entre $P(t) = t$ et $Q(t) = t^2$:

$$ \langle P, Q \rangle = \int_{-1}^{1} t \cdot t^2 dt = \int_{-1}^{1} t^3 dt = \left[ \frac{t^4}{4} \right]_{-1}^{1} = \frac{1}{4} - \frac{(-1)^4}{4} = 0 $$

Ces deux polynômes sont orthogonaux pour ce produit scalaire.

### Contre-exemples

**Contre-exemple 1 : Forme bilinéaire non symétrique**

Sur $E=\mathbb{R}^2$, soit $\varphi(u,v) = x_1 y_2$ pour $u=(x_1, x_2)$ et $v=(y_1, y_2)$.

Elle est bilinéaire, mais pas symétrique. Prenons $u=(1,0)$ et $v=(0,1)$:

$\varphi(u,v) = 1 \cdot 1 = 1$

$\varphi(v,u) = 0 \cdot 0 = 0$

Comme $\varphi(u,v) \neq \varphi(v,u)$, ce n'est pas un produit scalaire.

**Contre-exemple 2 : Forme symétrique non définie positive**

Sur $E=\mathbb{R}^2$, soit $\varphi(u,v) = x_1 y_1 - x_2 y_2$ (métrique de Minkowski en 2D).

Elle est bilinéaire et symétrique. Cependant, elle n'est pas positive. Prenons $u=(0,1)$:

$\varphi(u,u) = 0 \cdot 0 - 1 \cdot 1 = -1 < 0$.

De plus, pour $u=(1,1)$, $\varphi(u,u) = 1-1=0$ bien que $u \neq 0_E$. Ce n'est donc pas un produit scalaire.

### Concepts Liés

-   **Norme et Distance** : Tout produit scalaire induit une norme $\|u\| = \sqrt{\langle u, u \rangle}$, qui permet de mesurer la "longueur" des vecteurs.
-   **Orthogonalité** : Deux vecteurs $u, v$ sont dits orthogonaux si $\langle u, v \rangle = 0$.
-   **Espace Euclidien / Hermitien** : Un espace vectoriel muni d'un produit scalaire.

### Applications

-   **Physique** : Le travail d'une force $\vec{F}$ le long d'un déplacement $\vec{d}$ est donné par le produit scalaire $W = \vec{F} \cdot \vec{d}$.
-   **Statistiques** : La covariance entre deux variables aléatoires centrées est un produit scalaire.
-   **Informatique** : En traitement d'image et en apprentissage automatique, les produits scalaires sont utilisés pour mesurer la similarité entre des vecteurs de caractéristiques.

---

## Concept 2: Norme, Orthogonalité et Inégalité de Cauchy-Schwarz

### Prérequis

-   Concept 1: Produit Scalaire
-   Notion de norme et de distance dans un espace vectoriel

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien.

1.  **Norme associée au produit scalaire** :

    L'application $\| \cdot \|: E \to \mathbb{R}^+$ définie par :

    $$ \|u\| = \sqrt{\langle u, u \rangle} $$

    est une norme sur $E$, appelée norme euclidienne ou hermitienne.

2.  **Orthogonalité** :

    Deux vecteurs $u, v \in E$ sont dits **orthogonaux** si leur produit scalaire est nul :

    $$ \langle u, v \rangle = 0 $$

    On note cela $u \perp v$.

**Explication détaillée:**

La norme $\|u\|$ est l'interprétation géométrique de la "longueur" ou de la "magnitude" d'un vecteur $u$. Elle est directement calculée à partir du produit scalaire d'un vecteur avec lui-même. Le fait qu'il s'agisse bien d'une norme (qui respecte les propriétés de séparation, d'homogénéité et l'inégalité triangulaire) est une conséquence directe des propriétés du produit scalaire.

L'orthogonalité généralise la notion de perpendicularité en géométrie plane ou dans l'espace. C'est une notion fondamentale qui permet de décomposer des vecteurs, de construire des bases "simples" (orthonormées) et de définir des projections.

### Propriétés Clés

1.  **Inégalité de Cauchy-Schwarz** : Pour tous vecteurs $u, v \in E$ :

    $$ |\langle u, v \rangle| \le \|u\| \|v\| $$

    L'égalité a lieu si et seulement si les vecteurs $u$ et $v$ sont colinéaires (liés).

    *Explication :* Cette inégalité fondamentale montre que la "taille" du produit scalaire est contrôlée par le produit des longueurs des vecteurs. Elle est essentielle pour prouver l'inégalité triangulaire de la norme.

2.  **Propriétés de la norme** :
    -   $\|u\| = 0 \iff u = 0_E$ (séparation)
    -   $\|\lambda u\| = |\lambda| \|u\|$ pour tout $\lambda \in \mathbb{K}$ (homogénéité)
    -   $\|u + v\| \le \|u\| + \|v\|$ (inégalité triangulaire)

3.  **Théorème de Pythagore** : Si $v_1, \dots, v_n$ sont des vecteurs deux à deux orthogonaux, alors :

    $$ \left\| \sum_{i=1}^n v_i \right\|^2 = \sum_{i=1}^n \|v_i\|^2 $$

    *Explication :* C'est la généralisation directe du célèbre théorème. La longueur au carré de la somme est la somme des longueurs au carré.

4.  **Identités de polarisation** : Elles permettent de reconstituer le produit scalaire à partir de la norme.
    -   Cas euclidien : $\langle u, v \rangle = \frac{1}{2}(\|u + v\|^2 - \|u\|^2 - \|v\|^2)$.
    -   Cas hermitien : $\langle u, v \rangle = \frac{1}{4}(\|u+v\|^2 - \|u-v\|^2 + i(\|u+iy\|^2 - \|u-iy\|^2))$.

5.  **Identité du parallélogramme** : Pour tous $u, v \in E$ :

    $$ \|u+v\|^2 + \|u-v\|^2 = 2(\|u\|^2 + \|v\|^2) $$

    *Explication :* La somme des carrés des longueurs des diagonales d'un parallélogramme est égale à la somme des carrés des longueurs de ses quatre côtés. Cette identité caractérise les normes qui proviennent d'un produit scalaire.

### Exemples

**Exemple 1 : Inégalité de Cauchy-Schwarz dans $\mathbb{R}^3$**

Soient $u = (1, 2, 2)$ et $v = (3, 0, 4)$ dans $\mathbb{R}^3$.

$\|u\| = \sqrt{1^2+2^2+2^2} = \sqrt{9} = 3$.

$\|v\| = \sqrt{3^2+0^2+4^2} = \sqrt{25} = 5$.

$\langle u, v \rangle = 1 \cdot 3 + 2 \cdot 0 + 2 \cdot 4 = 3 + 8 = 11$.

L'inégalité de Cauchy-Schwarz affirme que $|\langle u, v \rangle| \le \|u\| \|v\|$.

Vérifions : $|11| \le 3 \cdot 5$, soit $11 \le 15$. L'inégalité est bien respectée.

**Exemple 2 : Orthogonalité dans $\mathbb{C}^2$**

Soient $u = (1, i)$ et $v = (1, i)$ dans $\mathbb{C}^2$ avec le produit hermitien canonique.

$\langle u, v \rangle = 1 \cdot \bar{1} + i \cdot \bar{i} = 1 \cdot 1 + i \cdot (-i) = 1 - (-i^2) = 1 - 1 = 0$.

Donc $u \perp v$. Appliquons le théorème de Pythagore :

$\|u\|^2 = 1^2 + |i|^2 = 1+1=2$. $\|v\|^2 = 1^2+|i|^2 = 1+1=2$.

$u+v = (2, 2i)$. $\|u+v\|^2 = |2|^2+|2i|^2 = 4+4=8$.

On vérifie bien $\|u+v\|^2 = \|u\|^2 + \|v\|^2$, soit $8 = 2+2=4$? Non, j'ai fait une erreur dans le calcul.

Soit $u=(1, i)$ et $v=(i, 1)$.

$\langle u, v \rangle = 1 \cdot \bar{i} + i \cdot \bar{1} = 1(-i) + i(1) = -i+i=0$. Donc $u \perp v$.

$\|u\|^2 = 1^2+|i|^2=2$. $\|v\|^2=|i|^2+1^2=2$.

$u+v = (1+i, 1+i)$. $\|u+v\|^2 = |1+i|^2 + |1+i|^2 = (\sqrt{2})^2 + (\sqrt{2})^2 = 2+2=4$.

On vérifie bien $\|u+v\|^2 = \|u\|^2 + \|v\|^2$, soit $4 = 2+2$.

**Exemple 3 : Théorème de Pythagore sur les fonctions**

Dans l'espace des fonctions continues sur $[0, 2\pi]$ avec $\langle f, g \rangle = \int_0^{2\pi} f(t)g(t)dt$, on sait que $f(t)=\sin(t)$ et $g(t)=\cos(t)$ sont orthogonaux car $\int_0^{2\pi} \sin(t)\cos(t)dt = 0$.

$\| \sin \|^2 = \int_0^{2\pi} \sin^2(t) dt = \pi$.

$\| \cos \|^2 = \int_0^{2\pi} \cos^2(t) dt = \pi$.

Selon Pythagore, $\|\sin+\cos\|^2$ doit valoir $\pi+\pi=2\pi$.

$\|\sin+\cos\|^2 = \int_0^{2\pi} (\sin(t)+\cos(t))^2 dt = \int_0^{2\pi} (\sin^2(t) + \cos^2(t) + 2\sin(t)\cos(t)) dt$

$= \int_0^{2\pi} (1 + \sin(2t)) dt = [t - \frac{\cos(2t)}{2}]_0^{2\pi} = (2\pi - 1/2) - (0 - 1/2) = 2\pi$.

Le théorème est vérifié.

### Contre-exemples

**Contre-exemple 1 : Une norme non euclidienne**

Sur $\mathbb{R}^2$, considérons la norme "Manhattan" $\|u\|_1 = |x_1| + |x_2|$.

Prenons $u=(1,0)$ et $v=(0,1)$.

$\|u\|_1=1, \|v\|_1=1$.

$u+v=(1,1)$, $\|u+v\|_1=2$.

$u-v=(1,-1)$, $\|u-v\|_1=2$.

Vérifions l'identité du parallélogramme : $\|u+v\|_1^2 + \|u-v\|_1^2 = 2^2+2^2=8$.

$2(\|u\|_1^2+\|v\|_1^2) = 2(1^2+1^2)=4$.

Comme $8 \neq 4$, cette norme ne dérive pas d'un produit scalaire.

**Contre-exemple 2 : Colinéarité et égalité de Cauchy-Schwarz**

Soient $u=(1,1)$ et $v=(1,2)$ dans $\mathbb{R}^2$. Ils ne sont pas colinéaires.

$\|u\|=\sqrt{2}$, $\|v\|=\sqrt{5}$.

$\langle u, v \rangle = 1 \cdot 1 + 1 \cdot 2 = 3$.

$|\langle u, v \rangle| = 3$.

$\|u\|\|v\| = \sqrt{2}\sqrt{5} = \sqrt{10} \approx 3.16$.

On a bien $3 < \sqrt{10}$, une inégalité stricte car les vecteurs ne sont pas liés.

### Concepts Liés

-   **Bases Orthonormées** : Des bases construites avec des vecteurs orthogonaux et de norme 1.
-   **Projection Orthogonale** : L'orthogonalité permet de définir la projection d'un vecteur sur un sous-espace.

### Applications

-   **Optimisation** : L'inégalité de Cauchy-Schwarz est un outil puissant pour trouver des bornes et des extrema.
-   **Théorie du signal** : La corrélation entre deux signaux est liée à leur produit scalaire. L'inégalité de Cauchy-Schwarz montre que la corrélation normalisée est toujours entre -1 et 1.
-   **Géométrie** : Permet de définir l'angle $\theta$ entre deux vecteurs réels via $\cos(\theta) = \frac{\langle u,v \rangle}{\|u\|\|v\|}$.

---

## Concept 3: Bases Orthonormées et Procédé de Gram-Schmidt

### Prérequis

-   Concept 1: Produit Scalaire
-   Concept 2: Norme et Orthogonalité
-   Notion de base d'un espace vectoriel, famille libre, famille génératrice

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien de dimension $n$.

-   Une famille de vecteurs $(e_1, \dots, e_p)$ est dite **orthogonale** si ses vecteurs sont deux à deux orthogonaux, i.e., $\langle e_i, e_j \rangle = 0$ pour tout $i \neq j$.
-   Elle est dite **orthonormée** si elle est orthogonale et si tous ses vecteurs sont de norme 1 (unitaires), i.e., $\langle e_i, e_j \rangle = \delta_{ij}$ (symbole de Kronecker).
-   Une **base orthonormée** de $E$ est une base de $E$ qui est une famille orthonormée.

**Explication détaillée:**

Les bases orthonormées (BON) sont les "meilleures" bases pour travailler dans un espace euclidien ou hermitien. Elles simplifient énormément les calculs. Dans une telle base, calculer des coordonnées, des produits scalaires ou des normes devient aussi simple que dans $\mathbb{R}^n$ avec sa base canonique. L'existence d'une telle base n'est pas évidente a priori, mais le procédé de Gram-Schmidt nous assure qu'on peut toujours en construire une à partir de n'importe quelle base.

### Propriétés Clés

-   Toute famille orthogonale de vecteurs non nuls est libre.
-   **Calcul des coordonnées** : Si $\mathcal{B}=(e_1, \dots, e_n)$ est une base orthonormée et $x \in E$, alors les coordonnées $x_i$ de $x$ dans cette base sont données par $x_i = \langle x, e_i \rangle$. On a donc :

    $$ x = \sum_{i=1}^n \langle x, e_i \rangle e_i $$

-   **Calcul du produit scalaire** : Si $x = \sum_i x_i e_i$ et $y = \sum_j y_j e_j$, le calcul se simplifie :
    -   Cas euclidien : $\langle x, y \rangle = \sum_{i=1}^n x_i y_i$
    -   Cas hermitien : $\langle x, y \rangle = \sum_{i=1}^n x_i \bar{y}_i$
-   **Calcul de la norme (Identité de Parseval)** :

    $$ \|x\|^2 = \sum_{i=1}^n |x_i|^2 = \sum_{i=1}^n |\langle x, e_i \rangle|^2 $$

### Procédé d'Orthonormalisation de Gram-Schmidt

Cet algorithme transforme une base quelconque $(v_1, \dots, v_n)$ en une base orthonormée $(e_1, \dots, e_n)$ telle que pour tout $k \in \{1, \dots, n\}$, $\text{Vect}(e_1, \dots, e_k) = \text{Vect}(v_1, \dots, v_k)$.

**Algorithme :**

1.  **Initialisation ($k=1$)** :
    -   $u_1 = v_1$
    -   $e_1 = \frac{u_1}{\|u_1\|}$
2.  **Étape $k$ ($2 \le k \le n$)** : En supposant $(e_1, \dots, e_{k-1})$ déjà construits.
    -   On calcule le vecteur $u_k$ en soustrayant à $v_k$ ses projections sur les vecteurs de la base déjà construite :

        $$ u_k = v_k - \sum_{j=1}^{k-1} \langle v_k, e_j \rangle e_j $$

        Ce vecteur $u_k$ est par construction orthogonal à tous les $e_j$ pour $j < k$.

    -   On normalise $u_k$ pour obtenir $e_k$ :

        $$ e_k = \frac{u_k}{\|u_k\|} $$

3.  On répète l'étape 2 jusqu'à $k=n$.

**Corollaire** : Tout espace euclidien ou hermitien de dimension finie admet une base orthonormée.

### Exemples

**Exemple 1 : Base canonique de $\mathbb{R}^n$**

La base canonique $(e_1, \dots, e_n)$ de $\mathbb{R}^n$, où $e_i = (0, \dots, 1, \dots, 0)$, est une base orthonormée pour le produit scalaire usuel.

$\langle e_i, e_j \rangle = \delta_{ij}$.

**Exemple 2 : Application de Gram-Schmidt dans $\mathbb{R}^3$**

Soit $E=\mathbb{R}^3$ avec le produit scalaire usuel. Partons de la base $v_1 = (1, 1, 0)$, $v_2 = (1, 0, 1)$, $v_3 = (0, 1, 1)$.

-   **Étape 1**:

    $u_1 = v_1 = (1, 1, 0)$.

    $\|u_1\| = \sqrt{1^2+1^2+0^2} = \sqrt{2}$.

    $e_1 = \frac{1}{\sqrt{2}}(1, 1, 0)$.

-   **Étape 2**:

    $\langle v_2, e_1 \rangle = \left\langle (1,0,1), \frac{1}{\sqrt{2}}(1,1,0) \right\rangle = \frac{1}{\sqrt{2}}(1 \cdot 1 + 0 \cdot 1 + 1 \cdot 0) = \frac{1}{\sqrt{2}}$.

    $u_2 = v_2 - \langle v_2, e_1 \rangle e_1 = (1,0,1) - \frac{1}{\sqrt{2}} \left(\frac{1}{\sqrt{2}}(1,1,0)\right) = (1,0,1) - \frac{1}{2}(1,1,0) = (\frac{1}{2}, -\frac{1}{2}, 1)$.

    $\|u_2\| = \sqrt{(\frac{1}{2})^2 + (-\frac{1}{2})^2 + 1^2} = \sqrt{\frac{1}{4} + \frac{1}{4} + 1} = \sqrt{\frac{3}{2}}$.

    $e_2 = \frac{1}{\sqrt{3/2}}(\frac{1}{2}, -\frac{1}{2}, 1) = \sqrt{\frac{2}{3}}(\frac{1}{2}, -\frac{1}{2}, 1) = \frac{1}{\sqrt{6}}(1, -1, 2)$.

-   **Étape 3**: On continue de même pour $v_3$ pour trouver $e_3$. (Calcul laissé en exercice, on trouve $e_3 = \frac{1}{\sqrt{3}}(-1, 1, 1)$).

**Exemple 3 : Polynômes de Legendre**

Sur $E=\mathbb{R}_2[X]$ avec $\langle P, Q \rangle = \int_{-1}^1 P(t)Q(t)dt$, appliquons Gram-Schmidt à la base $(1, X, X^2)$.

-   $v_1=1$. $\|v_1\|^2 = \int_{-1}^1 1^2 dt = 2$. $e_1 = \frac{1}{\sqrt{2}}$.
-   $v_2=X$. $\langle v_2, e_1 \rangle = \int_{-1}^1 t \frac{1}{\sqrt{2}} dt = 0$. Donc $u_2=v_2=X$.

    $\|u_2\|^2 = \int_{-1}^1 t^2 dt = \frac{2}{3}$. $e_2 = \sqrt{\frac{3}{2}}X$.

-   $v_3=X^2$. $\langle v_3, e_1 \rangle = \int_{-1}^1 t^2 \frac{1}{\sqrt{2}} dt = \frac{\sqrt{2}}{3}$. $\langle v_3, e_2 \rangle = \int_{-1}^1 t^2 \sqrt{\frac{3}{2}} t dt = 0$.

    $u_3 = v_3 - \langle v_3, e_1 \rangle e_1 = X^2 - \frac{\sqrt{2}}{3} \frac{1}{\sqrt{2}} = X^2 - \frac{1}{3}$.

    Après normalisation, on obtient (à un facteur près) les premiers polynômes de Legendre.

### Contre-exemples

**Contre-exemple 1 : Une base orthogonale mais pas orthonormée**

Dans $\mathbb{R}^2$, la famille $v_1=(1,1), v_2=(1,-1)$ est une base orthogonale car $\langle v_1, v_2 \rangle = 1-1=0$.

Cependant, $\|v_1\|=\sqrt{2} \neq 1$ et $\|v_2\|=\sqrt{2} \neq 1$. Ce n'est donc pas une base orthonormée.

**Contre-exemple 2 : Mauvais calcul de coordonnées dans une base non-orthonormée**

Soit $x=(2,3)$ dans $\mathbb{R}^2$ et la base $v_1=(1,1), v_2=(1,-1)$.

Si on appliquait (à tort) la formule des coordonnées pour une BON, on trouverait :

$c_1 = \langle x, v_1 \rangle = 2+3=5$.

$c_2 = \langle x, v_2 \rangle = 2-3=-1$.

Cela donnerait $x = 5v_1 - v_2 = 5(1,1) - (1,-1) = (4,6)$, ce qui est incorrect. Les vraies coordonnées sont $x = \frac{5}{2}v_1 - \frac{1}{2}v_2$.

### Concepts Liés

-   **Projection Orthogonale** : La construction de Gram-Schmidt repose sur la soustraction de projections orthogonales successives.
-   **Matrice de Gram** : Pour une base $(e_i)$, la matrice de Gram $G_{ij} = \langle e_i, e_j \rangle$ est la matrice identité si et seulement si la base est orthonormée.

### Applications

-   **Analyse de Fourier** : La décomposition d'un signal en série de Fourier est une expression dans une base orthonormée (les fonctions sinus et cosinus).
-   **Méthode des moindres carrés** : La recherche de la meilleure solution d'un système linéaire surdéterminé est un problème de projection orthogonale, grandement simplifié par l'usage de bases orthonormées.
-   **Infographie** : Les rotations et transformations 3D sont souvent représentées par des matrices orthogonales, dont les colonnes forment une base orthonormée.

---

## Concept 4: Projection Orthogonale et Distance à un Sous-Espace

### Prérequis

-   Concept 1, 2, 3 (Produit scalaire, orthogonalité, BON)
-   Sous-espaces vectoriels, somme directe

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien et $F$ un sous-espace vectoriel de $E$.

1.  **Orthogonal d'un sous-espace** :

    L'orthogonal de $F$, noté $F^\perp$ (lire "F perp"), est l'ensemble des vecteurs de $E$ qui sont orthogonaux à *tous* les vecteurs de $F$.

    $$ F^\perp = \{ x \in E \mid \forall y \in F, \langle x, y \rangle = 0 \} $$

    $F^\perp$ est lui-même un sous-espace vectoriel de $E$.

2.  **Projection orthogonale** :

    Pour tout sous-espace vectoriel $F$ de $E$, l'espace $E$ peut s'écrire comme la somme directe de $F$ et de son orthogonal :

    $$ E = F \oplus F^\perp $$

    Ceci signifie que tout vecteur $x \in E$ se décompose de manière **unique** en une somme $x = y + z$ avec $y \in F$ et $z \in F^\perp$.

    -   Le vecteur $y$ est appelé la **projection orthogonale** de $x$ sur $F$, notée $P_F(x)$.
    -   L'application $P_F: E \to E$ qui à $x$ associe $P_F(x)$ est un projecteur linéaire.

**Explication détaillée:**

La projection orthogonale est l'ombre d'un vecteur sur un sous-espace, où la "lumière" vient de la direction perpendiculaire au sous-espace. La décomposition $E = F \oplus F^\perp$ est un résultat puissant : elle nous permet de "casser" l'espace $E$ en deux morceaux orthogonaux, $F$ et "tout ce qui est perpendiculaire à $F$".

Le projecteur $P_F$ est l'opérateur qui isole la "partie" d'un vecteur qui vit dans $F$.

### Propriétés Clés

-   $F \cap F^\perp = \{0_E\}$.
-   $(F^\perp)^\perp = F$.
-   $\dim(F) + \dim(F^\perp) = \dim(E)$.
-   **Calcul de la projection** : Si $(e_1, \dots, e_p)$ est une base orthonormée de $F$, alors la projection orthogonale d'un vecteur $x \in E$ sur $F$ est donnée par la formule :

    $$ P_F(x) = \sum_{i=1}^p \langle x, e_i \rangle e_i $$

-   $P_F$ est un projecteur ($P_F \circ P_F = P_F$), avec $\text{Im}(P_F)=F$ et $\text{Ker}(P_F)=F^\perp$.

### Théorème de la meilleure approximation

Soit $F$ un sous-espace vectoriel de $E$ et $x \in E$. Le projeté orthogonal $P_F(x)$ est l'unique vecteur de $F$ qui est le plus proche de $x$.

La distance de $x$ à $F$ est définie par $d(x, F) = \inf_{y \in F} \|x - y\|$. On a :

$$ d(x, F) = \|x - P_F(x)\| $$

**Explication détaillée:**

Ce théorème est au cœur des méthodes d'approximation. Si l'on cherche à approximer un objet complexe $x$ (par exemple, une fonction) par un objet plus simple appartenant à un sous-espace $F$ (par exemple, un polynôme), la meilleure approximation au sens de la distance euclidienne est la projection orthogonale de $x$ sur $F$. Le vecteur "d'erreur" $x-P_F(x)$ est orthogonal à l'espace d'approximation $F$.

### Exemples

**Exemple 1 : Projection sur une droite dans $\mathbb{R}^2$**

Soit $E=\mathbb{R}^2$ et $F = \text{Vect}(v)$ la droite dirigée par $v=(1,2)$.

Une base orthonormée de $F$ est $e_1 = \frac{v}{\|v\|} = \frac{1}{\sqrt{5}}(1,2)$.

Projetons le vecteur $x=(6,3)$ sur $F$.

$$ P_F(x) = \langle x, e_1 \rangle e_1 = \left\langle (6,3), \frac{1}{\sqrt{5}}(1,2) \right\rangle \frac{1}{\sqrt{5}}(1,2) $$

$$ = \frac{1}{\sqrt{5}}(6 \cdot 1 + 3 \cdot 2) \frac{1}{\sqrt{5}}(1,2) = \frac{12}{5}(1,2) = \left(\frac{12}{5}, \frac{24}{5}\right) $$

Le projeté est $(2.4, 4.8)$. C'est le point de la droite $y=2x$ le plus proche de $(6,3)$.

**Exemple 2 : Distance à un plan dans $\mathbb{R}^3$**

Soit $E=\mathbb{R}^3$ et $F$ le plan d'équation $x+y+z=0$. Calculons la distance du point $M=(1,2,3)$ à ce plan. Le vecteur associé est $x=(1,2,3)$.

Le plan $F$ a pour vecteur normal $n=(1,1,1)$. L'orthogonal $F^\perp$ est la droite dirigée par $n$.

On peut calculer $P_{F^\perp}(x)$ plus facilement. Une BON de $F^\perp$ est $e_1=\frac{1}{\sqrt{3}}(1,1,1)$.

$P_{F^\perp}(x) = \langle x, e_1 \rangle e_1 = \frac{1}{\sqrt{3}}(1+2+3) \frac{1}{\sqrt{3}}(1,1,1) = \frac{6}{3}(1,1,1) = (2,2,2)$.

Comme $x = P_F(x) + P_{F^\perp}(x)$, on a $P_F(x) = x - P_{F^\perp}(x) = (1,2,3) - (2,2,2) = (-1,0,1)$.

La distance est $\|x-P_F(x)\| = \|P_{F^\perp}(x)\| = \sqrt{2^2+2^2+2^2} = \sqrt{12} = 2\sqrt{3}$.

**Exemple 3 : Approximation d'une fonction**

Dans $E=\mathcal{C}([-\pi, \pi], \mathbb{R})$ avec $\langle f,g \rangle = \int_{-\pi}^\pi f(t)g(t)dt$, on veut approcher $f(t)=t$ par une fonction de $F = \text{Vect}(1, \cos(t), \sin(t))$.

La base $(1, \cos(t), \sin(t))$ est orthogonale (mais pas normée). Une BON est $(\frac{1}{\sqrt{2\pi}}, \frac{\cos(t)}{\sqrt{\pi}}, \frac{\sin(t)}{\sqrt{\pi}})$.

Le projeté $P_F(f)$ est le début de la série de Fourier de $f$.

$\langle t, 1 \rangle = \int_{-\pi}^\pi t dt = 0$.

$\langle t, \cos(t) \rangle = \int_{-\pi}^\pi t\cos(t) dt = 0$ (intégration par parties).

$\langle t, \sin(t) \rangle = \int_{-\pi}^\pi t\sin(t) dt = 2\pi$ (intégration par parties).

Le projeté est $P_F(f)(t) = \frac{\langle f, \sin/\sqrt{\pi} \rangle}{\|\sin/\sqrt{\pi}\|} \frac{\sin(t)}{\sqrt{\pi}} = \frac{\langle f, \sin \rangle}{\|\sin\|^2} \sin(t) = \frac{2\pi}{\pi}\sin(t) = 2\sin(t)$.

La meilleure approximation de $f(t)=t$ dans $F$ est la fonction $g(t)=2\sin(t)$.

### Contre-exemples

**Contre-exemple 1 : Projection non orthogonale**

Dans $\mathbb{R}^2$, considérons la projection $P$ sur l'axe des abscisses ($F=\text{Vect}(e_1)$) parallèlement à la droite dirigée par $v=(1,1)$.

Pour $x=(2,2)$, on a $x=2v$, donc $P(x) = (0,0)$ car $x$ est dans la direction de projection.

Le projeté orthogonal de $x=(2,2)$ sur $F$ est $P_F(x) = (2,0)$. Les deux projections sont différentes.

**Contre-exemple 2 : La "distance" n'est pas minimisée par une projection non orthogonale**

Avec la projection $P$ ci-dessus, la distance entre $x=(2,2)$ et son projeté $P(x)=(0,0)$ est $\|x-P(x)\| = \|(2,2)\| = \sqrt{8}$.

La distance entre $x=(2,2)$ et son projeté orthogonal $P_F(x)=(2,0)$ est $\|x-P_F(x)\| = \|(0,2)\| = 2$.

On voit que $2 < \sqrt{8}$, ce qui confirme que la projection orthogonale minimise bien la distance.

### Concepts Liés

-   **Adjoint d'un endomorphisme** : Le projecteur orthogonal est un endomorphisme auto-adjoint ($P_F^* = P_F$).
-   **Moindres carrés** : Résoudre un système $AX=B$ au sens des moindres carrés revient à trouver $X$ tel que $AX$ soit la projection orthogonale de $B$ sur l'image de $A$.

### Applications

-   **Compression de données** (images, sons) : On projette les données sur un sous-espace de dimension plus faible en gardant le maximum d'information, c'est-à-dire en minimisant l'erreur de reconstruction (la distance).
-   **Statistiques et Machine Learning** : La régression linéaire est une projection orthogonale des données sur un hyperplan.
-   **Traitement du signal** : Filtrer un signal revient à le projeter sur le sous-espace des signaux désirés (par exemple, les basses fréquences).

---

## Concept 5: Adjoint d'un Endomorphisme

### Prérequis

-   Espaces euclidiens et hermitiens
-   Endomorphismes (applications linéaires d'un espace dans lui-même)
-   Représentation matricielle d'un endomorphisme

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien de dimension finie et $f: E \to E$ un endomorphisme.

L'**adjoint** de $f$, noté $f^*$, est l'unique endomorphisme de $E$ qui vérifie la relation suivante pour tous les vecteurs $x, y \in E$:

$$ \langle f(x), y \rangle = \langle x, f^*(y) \rangle $$

**Explication détaillée:**

L'adjoint est un concept fondamental qui lie la structure algébrique des endomorphismes à la structure géométrique du produit scalaire. La définition peut sembler abstraite, mais son sens est le suivant : l'effet de $f$ sur le premier argument du produit scalaire est le même que l'effet de son adjoint $f^*$ sur le second argument. On peut "déplacer" un endomorphisme d'un côté à l'autre du produit scalaire, à condition de le transformer en son adjoint. Cette propriété est extrêmement utile dans les démonstrations et les calculs. L'existence et l'unicité de cet adjoint sont garanties en dimension finie.

### Propriétés Clés

-   $(f^*)^* = f$
-   $(f+g)^* = f^* + g^*$
-   $(\lambda f)^* = \bar{\lambda} f^*$
-   $(f \circ g)^* = g^* \circ f^*$ (attention à l'inversion de l'ordre)
-   $(f^{-1})^* = (f^*)^{-1}$ si $f$ est inversible.

-   **Représentation matricielle** : Soit $\mathcal{B}$ une base **orthonormée** de $E$. Si $A = \text{Mat}_{\mathcal{B}}(f)$, alors la matrice de l'adjoint $f^*$ dans cette même base est :
    -   Cas euclidien : $\text{Mat}_{\mathcal{B}}(f^*) = {}^tA$ (la transposée de $A$)
    -   Cas hermitien : $\text{Mat}_{\mathcal{B}}(f^*) = \overline{{}^tA} = A^\dagger$ (la transconjuguée ou adjointe de $A$)

    **Attention :** Cette relation simple n'est vraie que dans une base orthonormée.

-   **Relations entre noyau et image** :
    -   $\text{Ker}(f^*) = (\text{Im}(f))^\perp$
    -   $\text{Im}(f^*) = (\text{Ker}(f))^\perp$
    -   $\text{Ker}(f) = (\text{Im}(f^*))^\perp$
    -   $\text{Im}(f) = (\text{Ker}(f^*))^\perp$

### Exemples

**Exemple 1 : Adjoint dans $\mathbb{R}^2$**

Soit $E=\mathbb{R}^2$ avec sa base canonique (qui est orthonormée) et le produit scalaire usuel. Soit $f$ l'endomorphisme dont la matrice est $A = \begin{pmatrix} 1 & 3 \\ 2 & 5 \end{pmatrix}$.

La matrice de son adjoint $f^*$ est $A^* = {}^tA = \begin{pmatrix} 1 & 2 \\ 3 & 5 \end{pmatrix}$.

Vérifions la définition avec $x=(1,0)$ et $y=(0,1)$.

$f(x) = (1,2)$. $\langle f(x), y \rangle = \langle (1,2), (0,1) \rangle = 2$.

$f^*(y) = (2,5)$. $\langle x, f^*(y) \rangle = \langle (1,0), (2,5) \rangle = 2$.

La relation est bien vérifiée.

**Exemple 2 : Adjoint dans $\mathbb{C}^2$**

Soit $E=\mathbb{C}^2$ avec sa base canonique (orthonormée) et le produit hermitien usuel. Soit $f$ de matrice $A = \begin{pmatrix} 1 & i \\ 2-i & 3 \end{pmatrix}$.

La matrice de son adjoint $f^*$ est $A^* = \overline{{}^tA} = \overline{\begin{pmatrix} 1 & 2-i \\ i & 3 \end{pmatrix}} = \begin{pmatrix} 1 & 2+i \\ -i & 3 \end{pmatrix}$.

**Exemple 3 : L'opérateur de dérivation**

Soit $E$ un sous-espace de fonctions (par ex. polynômes trigonométriques) sur $[0, 2\pi]$ avec $\langle f, g \rangle = \int_0^{2\pi} f(t)\overline{g(t)}dt$. Soit $D$ l'opérateur de dérivation $D(f) = f'$.

Cherchons son adjoint. On utilise une intégration par parties :

$$ \langle Df, g \rangle = \int_0^{2\pi} f'(t)\overline{g(t)}dt = [f(t)\overline{g(t)}]_0^{2\pi} - \int_0^{2\pi} f(t)\overline{g'(t)}dt $$

Pour que le terme entre crochets s'annule (conditions aux bords), on se place sur un sous-espace de fonctions périodiques. On a alors :

$$ \langle Df, g \rangle = - \int_0^{2\pi} f(t)\overline{g'(t)}dt = \langle f, -Dg \rangle $$

On en déduit que l'adjoint de la dérivation est $D^* = -D$. On dit que $D$ est un opérateur anti-autoadjoint (à un facteur $i$ près en physique quantique).

### Contre-exemples

**Contre-exemple 1 : Matrice de l'adjoint dans une base non-orthonormée**

Soit $E=\mathbb{R}^2$ avec la base $\mathcal{B} = (v_1=(1,0), v_2=(1,1))$. Cette base n'est pas orthonormée. Soit $f(x,y)=(y,x)$. Sa matrice dans la base canonique est $A=\begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix}$. Comme $A$ est symétrique, $f$ est auto-adjointe ($f^*=f$).

Calculons la matrice de $f$ dans la base $\mathcal{B}$.

$f(v_1)=f(1,0)=(0,1) = -v_1+v_2$.

$f(v_2)=f(1,1)=(1,1) = v_2$.

La matrice de $f$ dans $\mathcal{B}$ est $M = \begin{pmatrix} -1 & 0 \\ 1 & 1 \end{pmatrix}$. On voit que $M \neq {}^tM$. La règle simple ne s'applique pas.

**Contre-exemple 2 : Un endomorphisme sans adjoint (en dimension infinie)**

Considérons l'espace $E$ des polynômes $\mathbb{R}[X]$ avec $\langle P,Q \rangle = \int_0^1 P(t)Q(t)dt$. Soit $f$ l'endomorphisme qui évalue un polynôme en 2 : $f(P) = P(2)$. Ce n'est pas un endomorphisme au sens strict (l'image n'est pas dans E), mais c'est une forme linéaire. Le concept s'étend. Il n'existe pas de polynôme $Q_f$ tel que $f(P) = \langle P, Q_f \rangle$ pour tout $P$, car l'évaluation en un point est "trop locale" pour être représentée par une intégrale. C'est un exemple qui montre que l'existence de l'adjoint n'est pas triviale en dimension infinie.

### Concepts Liés

Des classes importantes d'endomorphismes sont définies par la relation entre $f$ et son adjoint $f^*$:

-   **Endomorphismes auto-adjoints** ($f=f^*$) : Généralisent les nombres réels. Leurs matrices dans une BON sont symétriques (réel) ou hermitiennes (complexe). Ils sont cruciaux en mécanique quantique (observables).
-   **Endomorphismes unitaires/orthogonaux** ($f^* = f^{-1}$, ou $f^* \circ f = f \circ f^* = Id$) : Généralisent les nombres complexes de module 1. Ils préservent le produit scalaire ($\langle f(x), f(y) \rangle = \langle x, y \rangle$) et donc les longueurs et les angles. Ils représentent les isométries (rotations, réflexions).
-   **Endomorphismes normaux** ($f \circ f^* = f^* \circ f$) : Une classe plus large qui contient les deux précédentes. Ils sont importants car ce sont exactement les endomorphismes qui sont diagonalisables dans une base orthonormée (dans le cas complexe).

### Applications

-   **Mécanique quantique** : Les grandeurs physiques mesurables (énergie, position, impulsion) sont représentées par des opérateurs auto-adjoints sur un espace de Hilbert.
-   **Analyse en composantes principales (ACP)** : Cette technique statistique repose sur la diagonalisation d'une matrice de covariance, qui est une matrice symétrique (donc représentant un endomorphisme auto-adjoint).
-   **Résolution d'équations différentielles** : La théorie de Sturm-Liouville étudie les valeurs propres et vecteurs propres d'opérateurs différentiels auto-adjoints.

---

## Concept 6: Théorème de Représentation de Riesz

### Prérequis

- Espaces euclidiens et hermitiens
- Applications linéaires
- Espace dual (formes linéaires)

### Définition

Soit $E$ un espace vectoriel. L'**espace dual** de $E$, noté $E^*$, est l'espace vectoriel de toutes les **formes linéaires** sur $E$, c'est-à-dire les applications linéaires de $E$ dans son corps de scalaires $\mathbb{K}$.

$$ E^* = \mathcal{L}(E, \mathbb{K}) $$

**Théorème de Représentation de Riesz (en dimension finie)**

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien de dimension finie.

Pour toute forme linéaire $l \in E^*$, il existe un **unique** vecteur $y_l \in E$ tel que, pour tout $x \in E$ :

$$ l(x) = \langle x, y_l \rangle $$

**Explication détaillée:**

Ce théorème établit un pont fondamental entre un espace et son dual. Il nous dit que dans un espace euclidien ou hermitien, toute forme linéaire (qui est un objet abstrait, une "machine à mesurer des vecteurs") peut être "représentée" de manière beaucoup plus concrète par un produit scalaire avec un vecteur spécifique de l'espace lui-même. Chaque "mesure" a un "vecteur représentant".

L'application $\Phi: E \to E^*$ qui à un vecteur $y$ associe la forme linéaire $l_y(x) = \langle x, y \rangle$ est un isomorphisme (anti-linéaire dans le cas complexe) entre $E$ et $E^*$. En dimension finie, cela signifie que l'espace et son dual sont essentiellement "les mêmes" via le produit scalaire.

### Propriétés Clés

- **Isomorphisme canonique**: Le théorème de Riesz induit une correspondance bijective entre les vecteurs de $E$ et les formes linéaires de $E^*$.
- **Unicité**: Pour une forme linéaire donnée, le vecteur représentant est unique.
- **Construction du vecteur représentant**: Si $(e_1, \dots, e_n)$ est une base orthonormée de $E$, le vecteur $y_l$ représentant la forme $l$ est donné par :
    - Cas euclidien : $y_l = \sum_{i=1}^n l(e_i) e_i$
    - Cas hermitien : $y_l = \sum_{i=1}^n \overline{l(e_i)} e_i$

### Exemples

**Exemple 1 : Dans $\mathbb{R}^3$**

Soit $E=\mathbb{R}^3$ avec le produit scalaire usuel. Considérons la forme linéaire $l: \mathbb{R}^3 \to \mathbb{R}$ définie par $l(x,y,z) = 2x - y + 4z$.

Le théorème de Riesz affirme qu'il existe un unique vecteur $v=(a,b,c)$ tel que $l(u) = \langle u, v \rangle$ pour tout $u=(x,y,z)$.

On doit avoir $2x-y+4z = \langle (x,y,z), (a,b,c) \rangle = ax+by+cz$.

Par identification, on trouve immédiatement $a=2, b=-1, c=4$. Le vecteur représentant est $v=(2, -1, 4)$.

**Exemple 2 : Dans l'espace des polynômes**

Soit $E=\mathbb{R}_1[X]$ (polynômes de degré $\le 1$) avec le produit scalaire $\langle P,Q \rangle = \int_0^1 P(t)Q(t)dt$. Considérons la forme linéaire "évaluation en 1" : $l(P) = P(1)$.

Cherchons le polynôme $Q_0(t)=at+b$ tel que $l(P) = \langle P, Q_0 \rangle$ pour tout $P$.

Une base orthogonale (non normée) de $E$ est $(1, t-1/2)$.

$\|1\|^2 = \int_0^1 1 dt = 1$.

$\|t-1/2\|^2 = \int_0^1 (t-1/2)^2 dt = 1/12$.

Une BON est $(e_1, e_2) = (1, \sqrt{12}(t-1/2))$.

On applique la formule: $Q_0 = l(e_1)e_1 + l(e_2)e_2$.

$l(e_1) = e_1(1) = 1$.

$l(e_2) = e_2(1) = \sqrt{12}(1-1/2) = \sqrt{12}/2 = \sqrt{3}$.

$Q_0(t) = 1 \cdot 1 + \sqrt{3} \cdot (\sqrt{12}(t-1/2)) = 1 + 6(t-1/2) = 1 + 6t - 3 = 6t-2$.

Le polynôme représentant est $Q_0(t)=6t-2$. Vérifions pour $P(t)=t$: $l(P)=1$. $\langle P, Q_0 \rangle = \int_0^1 t(6t-2)dt = \int_0^1 (6t^2-2t)dt = [2t^3-t^2]_0^1 = 2-1=1$. Ça fonctionne.

**Exemple 3 : La trace comme forme linéaire**

Sur l'espace $E=M_n(\mathbb{R})$ des matrices carrées, on peut définir le produit scalaire $\langle A,B \rangle = \text{Tr}({}^tA B)$.

La trace elle-même, $l(A) = \text{Tr}(A)$, est une forme linéaire. Quel est son vecteur (ici, matrice) représentant?

On cherche $M \in M_n(\mathbb{R})$ tel que $\text{Tr}(A) = \langle A,M \rangle = \text{Tr}({}^tA M)$ pour toute matrice $A$.

Si on choisit $M=I_n$ (matrice identité), on a $\text{Tr}({}^tA I_n) = \text{Tr}({}^tA)$. Mais en général, $\text{Tr}({}^tA) \neq \text{Tr}(A)$ (sauf si $A$ est symétrique).

Oups, $\text{Tr}({}^tA) = \text{Tr}(A)$. Donc ça fonctionne! La matrice représentant la forme linéaire trace est la matrice identité $I_n$.

### Contre-exemples

**Contre-exemple 1 : Espace sans produit scalaire**

Soit $E=\mathbb{R}^2$ et la forme linéaire $l(x,y)=x$. Dans $E^*$, $l$ est un vecteur. Mais sans produit scalaire défini sur $E$, on ne peut pas parler de "vecteur représentant" dans $E$. La notion même n'a pas de sens.

**Contre-exemple 2 : En dimension infinie (intuition)**

Considérons l'espace des fonctions continues sur $[0,1]$, $E=\mathcal{C}([0,1])$, avec le produit scalaire $L^2$. La "fonction" de Dirac $\delta_0$ est une "forme linéaire" qui évalue une fonction en 0 : $\delta_0(f) = f(0)$. On pourrait chercher une fonction $g \in E$ telle que $f(0) = \int_0^1 f(t)g(t)dt$ pour toute fonction $f$. Il n'existe pas de telle fonction $g$ dans $\mathcal{C}([0,1])$. Intuitivement, $g$ devrait être un "pic infini" en 0 et nulle ailleurs, ce qui n'est pas une fonction continue. Le théorème de Riesz ne s'applique pas directement de la même manière (il faut étendre le cadre aux espaces de Hilbert et aux distributions).

### Concepts Liés

- **Adjoint d'un endomorphisme**: La preuve de l'existence de l'adjoint en dimension finie utilise le théorème de Riesz. Pour un $y$ fixé, l'application $x \mapsto \langle f(x),y \rangle$ est une forme linéaire. Par Riesz, il existe un unique $z$ tel que $\langle f(x),y \rangle = \langle x,z \rangle$. On définit alors $f^*(y)=z$.
- **Gradient**: Dans un espace euclidien, le gradient d'une fonction différentiable en un point est le vecteur de Riesz représentant sa différentielle (qui est une forme linéaire).

### Applications

- **Éléments finis**: Méthode de résolution numérique d'équations aux dérivées partielles où on reformule le problème en termes de formes linéaires sur un espace de Hilbert, puis on utilise Riesz pour le discrétiser.
- **Optimisation et calcul des variations**: Le théorème de Riesz permet de transformer un problème sur le dual (recherche de multiplicateurs de Lagrange, par exemple) en un problème sur l'espace primal.
- **Physique Théorique**: Il est au cœur de la formulation rigoureuse de la mécanique quantique (formulation de Dirac bra-ket). Le "bra" $\langle \psi |$ est une forme linéaire (un élément du dual), le "ket" $| \phi \rangle$ est un vecteur. Le produit $\langle \psi | \phi \rangle$ est l'application de la forme linéaire au vecteur, qui correspond au produit scalaire.