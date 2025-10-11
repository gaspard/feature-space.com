---
title: A - Concepts
level: regular
course: Géométrie
chapter: Groupes d'isométries
order: 10
layout: '../../../../layouts/Article.astro'
tags:
  [
    'géométrie',
    'isométrie',
    'groupe orthogonal',
    'rotation',
    'produit vectoriel'
  ]
---

# Groupes d'isométries

---

## Concept 1: Isométrie

### Prérequis

- Espace euclidien ou hermitien, produit scalaire $\varphi(x, y)$ et norme associée $\|x\| = \sqrt{\varphi(x,x)}$.
- Application linéaire (endomorphisme) $f: E \to E$.
- Endomorphisme adjoint $f^*$.

### Définition

Soit $(E, \varphi)$ un espace vectoriel euclidien (sur $\mathbb{R}$) ou hermitien (sur $\mathbb{C}$).
Une application linéaire $f: E \to E$ est appelée une **isométrie** si elle conserve la norme de tous les vecteurs. C'est-à-dire :
$$ \forall x \in E, \quad \|f(x)\| = \|x\| $$
Dans le cas d'un espace euclidien, on parle aussi de **transformation orthogonale**. Dans le cas d'un espace hermitien, on parle de **transformation unitaire**.

### Explication détaillée

Une isométrie est une transformation géométrique qui préserve les distances et les longueurs. Imaginez que vous déplacez un objet rigide dans l'espace sans le déformer : la distance entre deux points quelconques de l'objet reste la même. Les isométries sont les analogues linéaires de ces transformations. Le fait qu'elles préservent la norme de _chaque_ vecteur est une condition très forte qui implique, comme nous allons le voir, qu'elles préservent aussi les angles et les distances entre les points.

La proposition suivante donne plusieurs manières équivalentes de caractériser une isométrie, ce qui est extrêmement utile en pratique.

### Propriétés Clés

Soit $f$ un endomorphisme sur un espace $E$ euclidien ou hermitien. Les affirmations suivantes sont équivalentes :

1.  **$f$ est une isométrie** (elle conserve la norme) : $\forall x \in E, \|f(x)\| = \|x\|$.
2.  **$f$ conserve le produit scalaire** : $\forall x, y \in E, \varphi(f(x), f(y)) = \varphi(x, y)$.
    - _Explication_ : Cette propriété signifie que les angles et l'orthogonalité sont préservés. C'est une conséquence directe de la conservation de la norme via les identités de polarisation (qui expriment le produit scalaire en termes de la norme).
3.  **L'inverse de $f$ est son adjoint** : $f$ est un isomorphisme (donc inversible) et son inverse est son adjoint, $f^{-1} = f^*$.
    - _Explication_ : Cette propriété est très calculatoire. L'adjoint $f^*$ est défini par $\varphi(f(x), y) = \varphi(x, f^*(y))$. L'égalité $f^* \circ f = \text{Id}$ est équivalente à la conservation du produit scalaire.
4.  **$f$ transforme une base orthonormée en une base orthonormée**.
    - _Explication_ : C'est une caractérisation très pratique. Si on sait comment $f$ agit sur une base orthonormée, on sait si c'est une isométrie. Si l'image de la base est toujours orthonormée, alors par bilinéarité, le produit scalaire (et donc la norme) sera conservé pour n'importe quelle combinaison linéaire des vecteurs de base.

### Exemples

**Exemple 1 : L'identité**
L'application identité $f(x) = x$ est l'isométrie la plus simple. Elle vérifie trivialement $\|f(x)\| = \|x\|$.

**Example 2 : Rotation dans le plan $\mathbb{R}^2$**
Soit $f$ la rotation d'angle $\theta$ dans le plan euclidien $\mathbb{R}^2$. Sa matrice dans la base canonique (qui est orthonormée) est $M = \begin{pmatrix} \cos(\theta) & -\sin(\theta) \\ \sin(\theta) & \cos(\theta) \end{pmatrix}$. Soit un vecteur $x = (x_1, x_2)$. Son image est $f(x) = (x_1\cos\theta - x_2\sin\theta, x_1\sin\theta + x_2\cos\theta)$. Calculons sa norme au carré :
$$ \|f(x)\|^2 = (x_1\cos\theta - x_2\sin\theta)^2 + (x_1\sin\theta + x_2\cos\theta)^2 $$
$$ = (x_1^2\cos^2\theta - 2x_1x_2\cos\theta\sin\theta + x_2^2\sin^2\theta) + (x_1^2\sin^2\theta + 2x_1x_2\sin\theta\cos\theta + x_2^2\cos^2\theta) $$
$$ = x_1^2(\cos^2\theta + \sin^2\theta) + x_2^2(\sin^2\theta + \cos^2\theta) = x_1^2 + x_2^2 = \|x\|^2 $$
Donc, $f$ est une isométrie.

**Exemple 3 : Réflexion (symétrie axiale) dans $\mathbb{R}^2$**
Soit $g$ la réflexion par rapport à l'axe des abscisses. Sa matrice est $S = \begin{pmatrix} 1 & 0 \\ 0 & -1 \end{pmatrix}$. Pour un vecteur $x = (x_1, x_2)$, on a $g(x) = (x_1, -x_2)$.
$$ \|g(x)\|^2 = x_1^2 + (-x_2)^2 = x_1^2 + x_2^2 = \|x\|^2 $$
C'est donc bien une isométrie.

### Contre-exemples

**Contre-exemple 1 : Une homothétie**
Soit $h: \mathbb{R}^2 \to \mathbb{R}^2$ définie par $h(x) = 2x$. Pour $x \neq 0$, on a $\|h(x)\| = \|2x\| = |2|\|x\| = 2\|x\| \neq \|x\|$. Ce n'est pas une isométrie (sauf si le facteur est 1 ou -1).

**Contre-exemple 2 : Une projection orthogonale**
Soit $p: \mathbb{R}^2 \to \mathbb{R}^2$ la projection sur l'axe des abscisses, $p(x_1, x_2) = (x_1, 0)$. Soit $x = (1, 1)$, alors $\|x\| = \sqrt{2}$. Son image est $p(x) = (1, 0)$, et $\|p(x)\| = 1$. Comme $\sqrt{2} \neq 1$, ce n'est pas une isométrie.

### Concepts Liés

- **Groupe des isométries** : L'ensemble des isométries d'un espace forme une structure de groupe pour la composition.
- **Groupe orthogonal et unitaire** : Ce sont les groupes de matrices qui représentent les isométries dans une base orthonormée.

---

## Concept 2: Groupes Orthogonaux et Unitaires

### Prérequis

- Isométrie et ses propriétés.
- Matrice d'un endomorphisme dans une base.
- Matrice transposée ${}^tM$ et adjointe (transconjuguée) $M^* = {}^t\overline{M}$.
- Déterminant d'une matrice.
- Notion de groupe.

### Définition

Soit une base orthonormée $\mathcal{B}$ d'un espace $E$ de dimension $n$. Si $f$ est une isométrie de $E$, sa matrice $M = \text{Mat}_{\mathcal{B}}(f)$ vérifie la condition $M^{-1} = M^*$. Ceci mène aux définitions suivantes pour les ensembles de matrices :

- Le **groupe orthogonal** d'ordre $n$, noté $O_n(\mathbb{R})$, est l'ensemble des matrices réelles $M$ de taille $n \times n$ telles que ${}^tM M = I_n$.
- Le **groupe unitaire** d'ordre $n$, noté $U_n(\mathbb{C})$, est l'ensemble des matrices complexes $M$ de taille $n \times n$ telles que $M^* M = I_n$.
- Le **groupe spécial orthogonal** $SO_n(\mathbb{R})$ est le sous-ensemble de $O_n(\mathbb{R})$ des matrices de déterminant 1.
- Le **groupe spécial unitaire** $SU_n(\mathbb{C})$ est le sous-ensemble de $U_n(\mathbb{C})$ des matrices de déterminant 1.

### Explication détaillée

Ces ensembles sont appelés "groupes" car ils sont stables par multiplication matricielle, contiennent la matrice identité et chaque matrice a un inverse dans l'ensemble. Ils représentent algébriquement l'ensemble de toutes les isométries d'un espace de dimension $n$.

- **Lien avec les isométries** : Une matrice $M$ est dans $O_n(\mathbb{R})$ (respectivement $U_n(\mathbb{C})$) si et seulement si l'endomorphisme qu'elle représente dans la base canonique est une isométrie de $\mathbb{R}^n$ (resp. $\mathbb{C}^n$) pour le produit scalaire usuel.
- **Condition sur les colonnes/lignes** : La condition ${}^tM M = I_n$ est équivalente à dire que les vecteurs colonnes de $M$ forment une base orthonormée de $\mathbb{R}^n$. De même pour les lignes.
- **Le déterminant** : Si $M$ est orthogonale, ${}^tM M = I_n$, donc $\det({}^tM M) = \det({}^tM)\det(M) = (\det M)^2 = 1$. Ainsi, $\det(M) = \pm 1$. Si $M$ est unitaire, $|\det(M)|^2=1$, donc le déterminant est un nombre complexe de module 1.
- **Le terme "spécial"** : Les isométries de déterminant $+1$ sont celles qui "préservent l'orientation" (par exemple, les rotations). Celles de déterminant $-1$ "inversent l'orientation" (par exemple, les réflexions). Les groupes spéciaux ne contiennent que les isométries qui préservent l'orientation.

### Propriétés Clés

- Les ensembles $O_n(\mathbb{R})$, $U_n(\mathbb{C})$, $SO_n(\mathbb{R})$, $SU_n(\mathbb{C})$ sont des groupes pour la multiplication matricielle.
- Une matrice $M$ est orthogonale (resp. unitaire) si et seulement si ses vecteurs colonnes forment une base orthonormée pour le produit scalaire canonique.
- Si $M \in O_n(\mathbb{R})$, alors $\det(M) \in \{-1, 1\}$.
- Si $M \in U_n(\mathbb{C})$, alors $|\det(M)| = 1$.

### Exemples

**Exemple 1 : Le groupe $O_2(\mathbb{R})$**
Une matrice de rotation $R(\theta) = \begin{pmatrix} \cos(\theta) & -\sin(\theta) \\ \sin(\theta) & \cos(\theta) \end{pmatrix}$ est dans $O_2(\mathbb{R})$. On a ${}^t R R = \begin{pmatrix} \cos\theta & \sin\theta \\ -\sin\theta & \cos\theta \end{pmatrix} \begin{pmatrix} \cos\theta & -\sin\theta \\ \sin\theta & \cos\theta \end{pmatrix} = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}$. Son déterminant est $\cos^2\theta + \sin^2\theta = 1$, donc $R(\theta) \in SO_2(\mathbb{R})$.

**Exemple 2 : Une matrice de réflexion**
La matrice $S = \begin{pmatrix} 1 & 0 \\ 0 & -1 \end{pmatrix}$ est dans $O_2(\mathbb{R})$ car ${}^tS S = S S = I_2$. Son déterminant est $-1$, donc $S \notin SO_2(\mathbb{R})$.

**Exemple 3 : Le groupe $U_1(\mathbb{C})$**
Une matrice $M \in U_1(\mathbb{C})$ est un nombre complexe $z$ tel que $\bar{z}z = 1$, c'est-à-dire $|z|^2=1$. Donc $U_1(\mathbb{C}) = \{e^{i\theta} | \theta \in \mathbb{R}\}$, le cercle unité dans le plan complexe. $SU_1(\mathbb{C})$ est l'ensemble des $z$ tels que $\det(z)=z=1$, donc $SU_1(\mathbb{C})=\{1\}$.

### Contre-exemples

**Contre-exemple 1**
La matrice $A = \begin{pmatrix} 2 & 0 \\ 0 & 1/2 \end{pmatrix}$ n'est pas orthogonale. ${}^tA A = A^2 = \begin{pmatrix} 4 & 0 \\ 0 & 1/4 \end{pmatrix} \neq I_2$. Ses colonnes ne sont pas de norme 1.

**Contre-exemple 2**
La matrice de cisaillement (shear) $B = \begin{pmatrix} 1 & 1 \\ 0 & 1 \end{pmatrix}$ n'est pas orthogonale. ${}^tB B = \begin{pmatrix} 1 & 0 \\ 1 & 1 \end{pmatrix}\begin{pmatrix} 1 & 1 \\ 0 & 1 \end{pmatrix} = \begin{pmatrix} 1 & 1 \\ 1 & 2 \end{pmatrix} \neq I_2$.

### Concepts Liés

- **Isométrie** : Les groupes orthogonaux/unitaires sont la représentation matricielle des isométries.
- **Orientation** : Le déterminant d'une matrice orthogonale est lié à la préservation ou non de l'orientation.
- **Rotation et Réflexion** : Ce sont les exemples les plus fondamentaux d'isométries, représentées par des matrices orthogonales.

---

## Concept 3: Angle de deux vecteurs et Orientation

### Prérequis

- Espace euclidien et produit scalaire.
- Inégalité de Cauchy-Schwarz : $|\varphi(x, y)| \leq \|x\| \|y\|$.
- Déterminant.
- Matrice de passage entre deux bases.

### Définition

#### Angle non-orienté

Soit $(E, \varphi)$ un espace euclidien, et $x, y$ deux vecteurs non nuls de $E$. L'**angle non-orienté** entre $x$ et $y$ est l'unique réel $\theta \in [0, \pi]$ tel que :
$$ \varphi(x, y) = \|x\|\|y\|\cos(\theta) $$
On l'obtient par la formule : $\theta(x, y) = \arccos\left(\frac{\varphi(x, y)}{\|x\|\|y\|}\right)$.

_Explication_ : L'inégalité de Cauchy-Schwarz garantit que la fraction est bien dans $[-1, 1]$, donc l'arccosinus est bien défini. Cet angle correspond à la notion intuitive d'angle géométrique. Il est non-orienté car $\theta(x, y) = \theta(y, x)$.

#### Orientation d'un espace vectoriel réel

Deux bases $\mathcal{B}$ et $\mathcal{B}'$ d'un espace vectoriel réel ont la **même orientation** si le déterminant de la matrice de passage de $\mathcal{B}$ à $\mathcal{B}'$ est strictement positif ($\det(P_{\mathcal{B}, \mathcal{B}'}) > 0$).
Choisir une **orientation** pour un espace, c'est choisir une classe d'équivalence de bases (celles qui ont la même orientation). Une base de cette classe est dite **directe** ou **positivement orientée**.

_Explication_ : En dimension 2, cela correspond au choix d'un sens de rotation (horaire ou anti-horaire). En dimension 3, cela correspond à la règle de la main droite. La base canonique de $\mathbb{R}^n$ définit l'orientation standard.

#### Angle orienté (en dimension 2)

Soit $(E, \varphi)$ un espace euclidien **orienté** de dimension 2. Soient $x, y$ deux vecteurs non nuls. L'**angle orienté** $\tilde{\theta}$ de $x$ vers $y$ est l'unique angle, défini à $2\pi$ près, qui vérifie les deux conditions :
$$ \varphi(x, y) = \|x\|\|y\|\cos(\tilde{\theta}) $$
$$ \det\_{\mathcal{B}}(x, y) = \|x\|\|y\|\sin(\tilde{\theta}) $$
où $\mathcal{B}$ est une base orthonormée **directe** de $E$.

_Explication_ : La première condition fixe la valeur de l'angle au signe près. La seconde condition, utilisant le déterminant (qui représente l'aire orientée du parallélogramme formé par $x$ et $y$), fixe le signe de l'angle. Contrairement à l'angle non-orienté, on a ici $\tilde{\theta}(y, x) = -\tilde{\theta}(x, y) \pmod{2\pi}$.

### Propriétés Clés

- L'angle non-orienté est toujours dans $[0, \pi]$. Il est nul si les vecteurs sont colinéaires de même sens, et vaut $\pi$ s'ils sont colinéaires de sens opposé.
- L'orientation partitionne l'ensemble des bases en deux classes.
- Le groupe $SO_n(\mathbb{R})$ est précisément le groupe des isométries qui préservent l'orientation.
- La notion d'angle orienté entre deux vecteurs n'a de sens intrinsèque qu'en dimension 2. En dimension 3, on peut définir un angle orienté de rotation autour d'un axe orienté.

### Exemples

**Exemple 1 : Angle non-orienté dans $\mathbb{R}^3$**
Soient $x = (1, 1, 0)$ et $y = (1, 0, 1)$. On a $\|x\| = \sqrt{2}$, $\|y\| = \sqrt{2}$ et $\varphi(x,y) = 1 \cdot 1 + 1 \cdot 0 + 0 \cdot 1 = 1$.
L'angle non-orienté est $\theta = \arccos\left(\frac{1}{\sqrt{2}\sqrt{2}}\right) = \arccos(1/2) = \pi/3$ radians (ou 60°).

**Exemple 2 : Orientation dans $\mathbb{R}^2$**
La base canonique $\mathcal{B} = ((1,0), (0,1))$ définit l'orientation directe. La base $\mathcal{B}' = ((0,1), (1,0))$ est-elle directe ? La matrice de passage de $\mathcal{B}$ à $\mathcal{B}'$ est $P = \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix}$. $\det(P) = -1 < 0$. Donc $\mathcal{B}'$ est une base indirecte.

**Exemple 3 : Angle orienté dans $\mathbb{R}^2$**
Soit $x = (1, 0)$ et $y = (1, 1)$. On a $\|x\|=1$, $\|y\|=\sqrt{2}$, $\varphi(x,y)=1$. Dans la base canonique (directe), $\det(x,y) = \begin{vmatrix} 1 & 1 \\ 0 & 1 \end{vmatrix} = 1$.
On cherche $\tilde{\theta}$ tel que $1 = 1 \cdot \sqrt{2} \cos(\tilde{\theta})$ et $1 = 1 \cdot \sqrt{2} \sin(\tilde{\theta})$.
Donc $\cos(\tilde{\theta}) = 1/\sqrt{2}$ et $\sin(\tilde{\theta}) = 1/\sqrt{2}$. L'unique solution dans $[0, 2\pi)$ est $\tilde{\theta} = \pi/4$.

### Contre-exemples

- L'angle (orienté ou non) n'est pas défini si l'un des vecteurs est le vecteur nul.
- Dans un espace de dimension supérieure à 2, comme $\mathbb{R}^3$, il n'y a pas de façon canonique de définir l'angle orienté entre deux vecteurs $x, y$. Il y a une infinité de "chemins" de rotation pour aller de la direction de $x$ à celle de $y$. On a besoin de spécifier un plan (ou un axe de rotation) pour le définir.

### Concepts Liés

- **Produit scalaire** : base de la définition de l'angle non-orienté.
- **Déterminant** : base de la définition de l'orientation et de l'angle orienté.
- **Groupe spécial orthogonal $SO_n(\mathbb{R})$** : groupe des isométries préservant l'orientation.

---

## Concept 4: Isométries du plan et de l'espace

### Prérequis

- Groupe orthogonal $O_2(\mathbb{R})$ et $O_3(\mathbb{R})$.
- Notions de rotation et de réflexion.
- Valeurs propres et vecteurs propres.
- Polynôme caractéristique.

### Définition

#### Classification des isométries du plan ($O_2(\mathbb{R})$)

Toute isométrie du plan euclidien $\mathbb{R}^2$ (représentée par une matrice $M \in O_2(\mathbb{R})$) est soit :

1.  Une **rotation** : si $\det(M) = 1$. La matrice est de la forme $R(\theta) = \begin{pmatrix} \cos(\theta) & -\sin(\theta) \\ \sin(\theta) & \cos(\theta) \end{pmatrix}$ pour un certain angle $\theta$. C'est une isométrie directe.
2.  Une **réflexion** (ou symétrie orthogonale par rapport à une droite) : si $\det(M) = -1$. La matrice est semblable à $S = \begin{pmatrix} 1 & 0 \\ 0 & -1 \end{pmatrix}$. C'est une isométrie indirecte.

#### Classification des isométries de l'espace ($O_3(\mathbb{R})$)

Toute isométrie de l'espace euclidien $\mathbb{R}^3$ (représentée par une matrice $M \in O_3(\mathbb{R})$) est soit :

1.  Une **rotation** : si $\det(M) = 1$. L'isométrie admet un axe (une droite de vecteurs invariants). Dans une base orthonormée directe bien choisie, sa matrice est $R = \begin{pmatrix} \cos(\theta) & -\sin(\theta) & 0 \\ \sin(\theta) & \cos(\theta) & 0 \\ 0 & 0 & 1 \end{pmatrix}$. C'est le **théorème de la rotation d'Euler**.
2.  Une **rotation-réflexion** : si $\det(M) = -1$. C'est la composée d'une rotation et d'une réflexion par rapport à un plan orthogonal à l'axe de rotation. Dans une base orthonormée directe bien choisie, sa matrice est $S = \begin{pmatrix} \cos(\theta) & -\sin(\theta) & 0 \\ \sin(\theta) & \cos(\theta) & 0 \\ 0 & 0 & -1 \end{pmatrix}$.

### Explication détaillée

- **En dimension 2** : Les isométries sont très simples. Soit on fait "tourner" le plan autour de l'origine (rotation), soit on le "retourne" comme un miroir par rapport à une droite (réflexion). Fait important : le groupe des rotations $SO_2(\mathbb{R})$ est commutatif : $R(\theta_1)R(\theta_2) = R(\theta_1+\theta_2) = R(\theta_2)R(\theta_1)$.
- **En dimension 3** : Le théorème d'Euler est fondamental. Il dit que tout déplacement d'un solide autour d'un point fixe peut être décrit comme une simple rotation autour d'un certain axe. Cet axe est la droite portée par un vecteur propre associé à la valeur propre 1. L'existence d'une telle valeur propre réelle est garantie car le polynôme caractéristique est de degré 3. Contrairement à la dimension 2, le groupe des rotations $SO_3(\mathbb{R})$ n'est **pas** commutatif. L'ordre dans lequel on effectue les rotations a une importance capitale.

### Exemples

**Exemple 1 : Composition de deux réflexions dans le plan**
Soit $S_x$ la réflexion par rapport à l'axe Ox, de matrice $\begin{pmatrix} 1 & 0 \\ 0 & -1 \end{pmatrix}$. Soit $S_y$ la réflexion par rapport à l'axe Oy, de matrice $\begin{pmatrix} -1 & 0 \\ 0 & 1 \end{pmatrix}$.
Leur composée est $S_y S_x = \begin{pmatrix} -1 & 0 \\ 0 & 1 \end{pmatrix} \begin{pmatrix} 1 & 0 \\ 0 & -1 \end{pmatrix} = \begin{pmatrix} -1 & 0 \\ 0 & -1 \end{pmatrix}$.
Cette matrice est $R(\pi)$, la rotation d'angle $\pi$ (symétrie centrale). $\det(S_y S_x) = (-1)(-1)=1$. La composée de deux isométries indirectes est une isométrie directe.

**Exemple 2 : Rotation dans l'espace**
La matrice $M = \begin{pmatrix} 0 & -1 & 0 \\ 1 & 0 & 0 \\ 0 & 0 & 1 \end{pmatrix}$ est dans $SO_3(\mathbb{R})$. C'est une rotation d'angle $\pi/2$ autour de l'axe des z, $(0,0,1)$. Le vecteur $(0,0,1)$ est bien invariant : $M(0,0,1)^t = (0,0,1)^t$.

**Exemple 3 : Une rotation-réflexion**
La matrice $-I_3 = \begin{pmatrix} -1 & 0 & 0 \\ 0 & -1 & 0 \\ 0 & 0 & -1 \end{pmatrix}$ a pour déterminant -1. C'est la symétrie centrale. On peut la voir comme une rotation d'angle $\pi$ autour de l'axe z, suivie d'une réflexion par rapport au plan xy.
$ \begin{pmatrix} -1 & 0 & 0 \\ 0 & -1 & 0 \\ 0 & 0 & 1 \end{pmatrix} \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & -1 \end{pmatrix} = -I_3 $.

### Contre-exemples

- Une homothétie de rapport 2 dans $\mathbb{R}^3$ n'est pas une isométrie, bien qu'elle ait un point fixe (l'origine).
- Une translation $T(v) = v + v_0$ (avec $v_0 \neq 0$) est une isométrie de l'espace affine, mais pas une isométrie _vectorielle_ car ce n'est pas une application linéaire (sauf si $v_0=0$).

### Concepts Liés

- **Axe de rotation** : La droite invariante d'une rotation de $SO_3(\mathbb{R})$.
- **Angle de rotation** : L'angle de la rotation effectuée dans le plan orthogonal à l'axe.
- **Théorème de la rotation d'Euler** : Le résultat central de la classification des isométries directes en dimension 3.

---

## Concept 5: Produit Vectoriel dans $\mathbb{R}^3$

### Prérequis

- Espace euclidien $\mathbb{R}^3$ avec son produit scalaire et sa base canonique.
- Déterminant de 3 vecteurs dans $\mathbb{R}^3$.
- Formes linéaires et Théorème de Riesz (pour la définition formelle).

### Définition

Pour deux vecteurs $U, V \in \mathbb{R}^3$, le **produit vectoriel** de $U$ et $V$, noté $U \land V$, est l'unique vecteur de $\mathbb{R}^3$ tel que pour tout vecteur $W \in \mathbb{R}^3$, on ait :
$$ \det(U, V, W) = \langle U \land V, W \rangle $$
où $\langle \cdot, \cdot \rangle$ est le produit scalaire canonique. Le terme $\det(U, V, W)$ est aussi appelé produit mixte.

### Explication détaillée

Cette définition, bien que formelle, est très puissante. Elle dit que le produit vectoriel $U \land V$ "code" l'information géométrique sur le volume orienté (le produit mixte) du parallélépipède formé par $U, V$ et un troisième vecteur variable $W$. De cette définition, on peut déduire toutes les propriétés géométriques du produit vectoriel :

1.  **Direction** : Le produit vectoriel $U \land V$ est orthogonal à $U$ et à $V$. En effet, si on choisit $W=U$ ou $W=V$, le déterminant est nul, donc $\langle U \land V, U \rangle = 0$ et $\langle U \land V, V \rangle = 0$.
2.  **Orientation** : La base $(U, V, U \land V)$ est directe (si $U$ et $V$ ne sont pas colinéaires). Ceci vient de $\det(U, V, U \land V) = \langle U \land V, U \land V \rangle = \|U \land V\|^2 \ge 0$. C'est la fameuse "règle de la main droite".
3.  **Norme** : La norme de $U \land V$ est égale à l'aire du parallélogramme sous-tendu par $U$ et $V$. On a $\|U \land V\| = \|U\|\|V\||\sin(\theta)|$, où $\theta$ est l'angle entre $U$ et $V$.

### Propriétés Clés

- **Antisymétrie** : $V \land U = -U \land V$.
- **Bilinéarité** : $(U + \lambda Z) \land V = U \land V + \lambda(Z \land V)$ et $U \land (V + \lambda Z) = U \land V + \lambda (U \land Z)$.
- **Condition de colinéarité** : $U \land V = 0 \iff U$ et $V$ sont colinéaires.
- **Formule de calcul en coordonnées** : Si $U=(u_1, u_2, u_3)$ et $V=(v_1, v_2, v_3)$ dans une base orthonormée directe $(e_1, e_2, e_3)$, alors :
  $$ U \land V = (u_2 v_3 - u_3 v_2)e_1 + (u_3 v_1 - u_1 v_3)e_2 + (u_1 v_2 - u_2 v_1)e_3 $$
  Ce que l'on retient souvent avec le déterminant formel : $U \land V = \begin{vmatrix} e_1 & e_2 & e_3 \\ u_1 & u_2 & u_3 \\ v_1 & v_2 & v_3 \end{vmatrix}$.
- **Double produit vectoriel** : $U \land (V \land W) = \langle U, W \rangle V - \langle U, V \rangle W$. (Attention, le produit vectoriel n'est pas associatif !).

### Exemples

**Exemple 1 : Base canonique**
Soit $(e_1, e_2, e_3)$ la base canonique de $\mathbb{R}^3$.
$e_1 \land e_2 = (1,0,0) \land (0,1,0) = (0\cdot0-0\cdot1, 0\cdot0-1\cdot0, 1\cdot1-0\cdot0) = (0,0,1) = e_3$.
De même, $e_2 \land e_3 = e_1$ et $e_3 \land e_1 = e_2$ (relations de permutation circulaire).

**Exemple 2 : Calcul avec des coordonnées**
Soit $U=(2, 3, 4)$ et $V=(5, 6, 7)$.
$U \land V = (3\cdot7 - 4\cdot6, 4\cdot5 - 2\cdot7, 2\cdot6 - 3\cdot5) = (21-24, 20-14, 12-15) = (-3, 6, -3)$.
On peut vérifier que $\langle (-3, 6, -3), (2, 3, 4) \rangle = -6 + 18 - 12 = 0$.

**Exemple 3 : Aire d'un parallélogramme**
Calculons l'aire du parallélogramme formé par $U=(1,1,0)$ et $V=(1,0,1)$.
$U \land V = (1\cdot1 - 0\cdot0, 0\cdot1 - 1\cdot1, 1\cdot0 - 1\cdot1) = (1, -1, -1)$.
L'aire est $\|U \land V\| = \sqrt{1^2 + (-1)^2 + (-1)^2} = \sqrt{3}$.

### Contre-exemples

- Le produit vectoriel n'est défini que pour des vecteurs de $\mathbb{R}^3$. Il n'a pas d'équivalent direct avec les mêmes propriétés dans les autres dimensions (bien qu'il existe des généralisations).
- Le produit vectoriel n'est pas associatif : $(e_1 \land e_2) \land e_2 = e_3 \land e_2 = -e_1$, mais $e_1 \land (e_2 \land e_2) = e_1 \land 0 = 0$.

### Concepts Liés

- **Rotation** : Le produit vectoriel est au cœur de la description des rotations, notamment via la formule de Rodrigues.
- **Physique** : Le produit vectoriel est omniprésent en physique pour décrire le moment d'une force, la force de Lorentz, le moment cinétique, etc.

---

## Concept 6: Formule de Rodrigues pour les rotations

### Prérequis

- Rotation dans $\mathbb{R}^3$ (axe, angle).
- Produit vectoriel et produit scalaire.
- Vecteur unitaire.

### Définition

La **formule de Rodrigues** donne l'expression d'un vecteur $U \in \mathbb{R}^3$ après avoir subi une rotation d'angle $\theta$ autour d'un axe dirigé par le vecteur unitaire $N$.
L'image de $U$ par cette rotation $\mathcal{R}$ est :
$$ \mathcal{R}(U) = \cos(\theta)U + (1 - \cos(\theta))\langle U, N \rangle N + \sin(\theta)N \land U $$

### Explication détaillée

Cette formule est extrêmement utile car elle est "intrinsèque", c'est-à-dire qu'elle ne dépend pas du choix d'une base. Elle décompose le vecteur résultant $\mathcal{R}(U)$ en trois parties géométriquement significatives :

1.  **$\langle U, N \rangle N$** : C'est la projection orthogonale de $U$ sur l'axe de rotation $N$. Cette composante reste **invariante** par la rotation.
2.  **$U_{\perp} = U - \langle U, N \rangle N$** : C'est la composante de $U$ qui est orthogonale à l'axe, donc dans le plan de rotation.
3.  **La rotation de $U_{\perp}$** : La formule de Rodrigues peut se réécrire en notant que $\mathcal{R}(U) = \langle U, N \rangle N + \mathcal{R}(U_\perp)$. L'action sur $U_\perp$ est une rotation plane d'angle $\theta$. Le terme $\cos(\theta) U$ et une partie du second terme se combinent pour donner $\cos(\theta)U_\perp$. Le terme $\sin(\theta)N \land U = \sin(\theta) N \land U_\perp$ est un vecteur orthogonal à $U_\perp$ dans le plan de rotation, de même norme. La combinaison $\cos(\theta)U_\perp + \sin(\theta)N \land U_\perp$ décrit bien une rotation de $U_\perp$ d'un angle $\theta$.

En résumé, la formule décompose $U$ en sa partie parallèle à l'axe (qui ne change pas) et sa partie perpendiculaire (qui tourne dans le plan orthogonal à l'axe), puis les réassemble.

### Propriétés Clés

- Fournit une méthode de calcul explicite pour l'image d'un vecteur par une rotation.
- Permet de dériver la matrice de n'importe quelle rotation si l'axe et l'angle sont connus.
- Ne nécessite pas de changer de base, contrairement à l'approche par diagonalisation.

### Exemples

**Exemple 1 : Rotation d'un vecteur sur l'axe**
Soit $\mathcal{R}$ une rotation d'axe $N$. Appliquons la formule à un vecteur $U = \lambda N$ colinéaire à l'axe.
$\langle U, N \rangle = \langle \lambda N, N \rangle = \lambda \|N\|^2 = \lambda$.
$N \land U = N \land (\lambda N) = 0$.
$\mathcal{R}(U) = \cos(\theta)(\lambda N) + (1-\cos\theta)\lambda N + \sin(\theta) 0 = (\lambda\cos\theta + \lambda - \lambda\cos\theta)N = \lambda N = U$.
Le vecteur est bien invariant, comme attendu.

**Exemple 2 : Rotation de $\pi/2$ autour de l'axe z**
Soit $N=e_3=(0,0,1)$ et $\theta=\pi/2$. On a $\cos(\pi/2)=0, \sin(\pi/2)=1$.
Soit $U=e_1=(1,0,0)$.
$\langle U, N \rangle = 0$.
$N \land U = e_3 \land e_1 = e_2 = (0,1,0)$.
$\mathcal{R}(e_1) = (0)e_1 + (1-0)(0)N + (1)e_2 = e_2$.
L'image de $(1,0,0)$ est $(0,1,0)$, ce qui est correct pour une rotation de $+\pi/2$ autour de l'axe z.

**Exemple 3 : Rotation de $\pi$ autour de l'axe z**
Soit $N=e_3=(0,0,1)$ et $\theta=\pi$. On a $\cos(\pi)=-1, \sin(\pi)=0$.
Soit $U=(x,y,z)$.
$\langle U, N \rangle = z$.
$\mathcal{R}(U) = (-1)U + (1 - (-1))z N + (0) N \land U = -U + 2z N$.
$\mathcal{R}(x,y,z) = -(x,y,z) + 2z(0,0,1) = (-x, -y, -z) + (0,0,2z) = (-x, -y, z)$.
C'est bien une rotation de 180° autour de l'axe z.

### Contre-exemples

- La formule ne s'applique pas aux isométries qui ne sont pas des rotations (isométries de $SO_3(\mathbb{R})$), comme les réflexions.
- Il est crucial que $N$ soit un vecteur unitaire. Si $\|N\| \neq 1$, la géométrie de la formule est faussée.

### Concepts Liés

- **Rotation (isométrie de $SO_3(\mathbb{R})$)** : La formule est une incarnation calculatoire d'une rotation.
- **Produit vectoriel** : L'opérateur "rotation de 90° dans le plan" est caché dans le terme en produit vectoriel.

---

## Concept 7: Le groupe $SU_2(\mathbb{C})$ et son lien avec $SO_3(\mathbb{R})$ (Complément)

### Prérequis

- Groupe spécial unitaire $SU_2(\mathbb{C})$.
- Espace hermitien.
- Trace d'une matrice.
- Morphisme de groupe.

### Définition

Le groupe $SU_2(\mathbb{C})$ est le groupe des matrices unitaires complexes de taille $2 \times 2$ et de déterminant 1. Une telle matrice a la forme générale :
$$ U = \begin{pmatrix} \alpha & -\overline{\beta} \\ \beta & \overline{\alpha} \end{pmatrix}, \quad \text{avec } \alpha, \beta \in \mathbb{C} \text{ et } |\alpha|^2 + |\beta|^2 = 1 $$
Il existe un lien profond entre ce groupe et le groupe des rotations de l'espace $SO_3(\mathbb{R})$. On peut construire une application (un morphisme de groupe) $\mathcal{J}: SU_2(\mathbb{C}) \to SO_3(\mathbb{R})$ qui est surjective et dont le noyau est $\{\pm I_2\}$.

### Explication détaillée

Ce résultat est l'un des plus surprenants de l'algèbre linéaire et a des conséquences profondes en physique quantique (théorie du spin) et en infographie (utilisation des quaternions pour représenter les rotations).

L'idée de la construction est la suivante :

1.  On identifie l'espace des rotations $\mathbb{R}^3$ à un autre espace de dimension 3 : l'espace $\mathcal{V}$ des matrices hermitiennes $2 \times 2$ de trace nulle. Une base de cet espace est donnée par les **matrices de Pauli** (à un facteur près).
2.  On fait agir le groupe $SU_2(\mathbb{C})$ sur cet espace $\mathcal{V}$ via l'action de conjugaison : pour $U \in SU_2(\mathbb{C})$ et $M \in \mathcal{V}$, on définit $\text{Ad}_U(M) = UMU^*$.
3.  On peut montrer que l'application $\text{Ad}_U$ est une isométrie de $\mathcal{V}$ (muni d'un produit scalaire bien choisi, comme $\varphi(A,B) = \frac{1}{2}\text{Tr}(AB)$). De plus, c'est une isométrie directe, donc une rotation.
4.  L'application $\mathcal{J}$ associe à chaque matrice $U \in SU_2(\mathbb{C})$ la rotation correspondante $\text{Ad}_U$ dans $SO_3(\mathbb{R})$.

Le fait que le noyau soit $\{\pm I_2\}$ signifie que deux matrices de $SU_2(\mathbb{C})$, $U$ et $-U$, correspondent à la **même** rotation dans $SO_3(\mathbb{R})$. On dit que $SU_2(\mathbb{C})$ est un **revêtement double** de $SO_3(\mathbb{R})$. Topologiquement, $SU_2(\mathbb{C})$ est la sphère $S^3$ dans $\mathbb{R}^4$, tandis que $SO_3(\mathbb{R})$ est un espace plus compliqué (l'espace projectif réel de dimension 3).

### Propriétés Clés

- Chaque matrice de $SU_2(\mathbb{C})$ correspond à une unique rotation de $SO_3(\mathbb{R})$.
- Chaque rotation de $SO_3(\mathbb{R})$ correspond à exactement deux matrices dans $SU_2(\mathbb{C})$ ($U$ et $-U$).
- Le morphisme $\mathcal{J}$ transforme le produit matriciel dans $SU_2(\mathbb{C})$ en la composition des rotations dans $SO_3(\mathbb{R})$.
- Une rotation d'angle $\theta$ dans $SO_3(\mathbb{R})$ est représentée par une matrice $U \in SU_2(\mathbb{C})$ dont les valeurs propres sont $e^{i\theta/2}$ et $e^{-i\theta/2}$.

### Exemples

**Exemple 1 : Rotation d'angle $2\theta$**
Considérons la matrice diagonale $D_\theta = \begin{pmatrix} e^{i\theta} & 0 \\ 0 & e^{-i\theta} \end{pmatrix} \in SU_2(\mathbb{C})$. L'application $\text{Ad}_{D_\theta}$ correspond à la rotation dans $SO_3(\mathbb{R})$ d'angle $2\theta$ autour du troisième axe de la base de $\mathcal{V}$.

**Exemple 2 : Pas de rotation (identité)**
La rotation identité dans $SO_3(\mathbb{R})$ correspond à deux matrices dans $SU_2(\mathbb{C})$: $I_2 = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}$ et $-I_2 = \begin{pmatrix} -1 & 0 \\ 0 & -1 \end{pmatrix}$.

**Exemple 3 : Une rotation de $2\pi$**
Une rotation de $2\pi$ (un tour complet) est l'identité dans $SO_3(\mathbb{R})$. Elle correspond à la matrice $-I_2$ dans $SU_2(\mathbb{C})$. C'est une illustration du fait que dans certains systèmes quantiques (les fermions), une rotation de $360^\circ$ ne ramène pas le système à son état initial (son état change de signe), il faut une rotation de $720^\circ$.

### Concepts Liés

- **Quaternions** : Le groupe $SU_2(\mathbb{C})$ est isomorphe au groupe des quaternions de norme 1. Les quaternions sont un outil très efficace pour calculer et composer des rotations en 3D.
- **Groupes de Lie et algèbres de Lie** : Cette connexion est l'exemple prototypique d'une relation entre un groupe de Lie ($SU_2$ ou $SO_3$) et son algèbre de Lie (l'espace $\mathcal{V}$).
- **Physique quantique** : Le groupe $SU_2(\mathbb{C})$ est fondamental pour décrire le spin des particules.
