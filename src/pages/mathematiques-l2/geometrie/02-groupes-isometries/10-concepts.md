---
id: c7d09f9e
type: concepts
order: 10
title: Groupes d''isométries - Concepts (A)
tags:
  - isométrie
  - espace euclidien
  - espace hermitien
  - groupe orthogonal
  - groupe unitaire
  - produit vectoriel
  - rotation
course: Géométrie
courseId: d9494343
chapter: 'Groupes d''isométries'
chapterId: b85ab516
level: regular
createdAt: '2025-10-12T18:10:33.114Z'
---
# Groupes d'isométries (A)

---

## Concept 1: Isométrie (Transformation Orthogonale / Unitaire)

### Prérequis

- Espaces vectoriels euclidiens et hermitiens
- Produit scalaire et norme associée
- Endomorphismes (applications linéaires d'un espace dans lui-même)
- Application adjointe ($f^*$)
- Bases orthonormées
- Formules de polarisation

### Définition

Soit $(E, \varphi)$ un espace euclidien (sur $\mathbb{R}$) ou hermitien (sur $\mathbb{C}$). Une application linéaire $f: E \to E$ est appelée une **isométrie** si elle préserve la norme, c'est-à-dire :

$$ \forall x \in E, \quad \|f(x)\| = \|x\| $$

où $\|.\|$ est la norme associée au produit scalaire $\varphi$.

- Dans le cas d'un espace euclidien, on parle de **transformation orthogonale**.
- Dans le cas d'un espace hermitien, on parle de **transformation unitaire**.

### Explication Détaillée

Une isométrie est une transformation géométrique qui conserve les distances et les angles. Imaginez une transformation de l'espace qui ne déforme aucun objet, ne l'agrandit ni ne le rétrécit : c'est une isométrie. Puisqu'il s'agit d'un endomorphisme, l'origine de l'espace est nécessairement un point fixe ($f(0)=0$). Les isométries sont donc les "mouvements rigides" de l'espace qui fixent l'origine.

La définition se base sur la conservation de la norme (longueur des vecteurs), mais cela a des conséquences plus profondes. Grâce aux identités de polarisation, conserver les normes est strictement équivalent à conserver le produit scalaire. Conserver le produit scalaire signifie que l'angle entre deux vecteurs est le même que l'angle entre leurs images par l'isométrie.

La proposition suivante donne trois caractérisations fondamentales et équivalentes d'une isométrie.

### Propriétés Clés

Soit $f$ un endomorphisme de $E$, un espace euclidien ou hermitien. Les affirmations suivantes sont équivalentes :

1.  **$f$ est une isométrie** : $\forall x \in E, \|f(x)\| = \|x\|$.
2.  **$f$ préserve le produit scalaire** : $\forall x, y \in E, \varphi(f(x), f(y)) = \varphi(x, y)$.
3.  **$f$ est un isomorphisme et son inverse est son adjoint** : $f$ est bijectif et $f^{-1} = f^*$.
4.  L'image par $f$ d'une base orthonormée est une base orthonormée.
5.  La matrice de $f$ dans une base orthonormée $\mathcal{B}$, notée $M = \text{Mat}_{\mathcal{B}}(f)$, vérifie $M^{-1} = {}^tM$ (cas orthogonal) ou $M^{-1} = {}^t\bar{M}$ (cas unitaire).
6.  L'ensemble des isométries de $E$, noté $O(E)$ ou $U(E)$, forme un groupe pour la composition d'applications $(\circ)$.

### Exemples Détaillés

**Exemple 1 : Rotation dans le plan $\mathbb{R}^2$**

Soit $f: \mathbb{R}^2 \to \mathbb{R}^2$ la rotation d'angle $\theta$ autour de l'origine. Sa matrice dans la base canonique (qui est orthonormée) est $R_\theta = \begin{pmatrix} \cos\theta & -\sin\theta \\ \sin\theta & \cos\theta \end{pmatrix}$.

Pour un vecteur $x = (u, v)$, son image est $f(x) = (u\cos\theta - v\sin\theta, u\sin\theta + v\cos\theta)$.

Calculons la norme au carré de l'image :

$$ \|f(x)\|^2 = (u\cos\theta - v\sin\theta)^2 + (u\sin\theta + v\cos\theta)^2 $$

$$ = (u^2\cos^2\theta - 2uv\cos\theta\sin\theta + v^2\sin^2\theta) + (u^2\sin^2\theta + 2uv\sin\theta\cos\theta + v^2\cos^2\theta) $$

$$ = u^2(\cos^2\theta + \sin^2\theta) + v^2(\sin^2\theta + \cos^2\theta) = u^2 + v^2 = \|x\|^2 $$

La norme est préservée, donc $f$ est une isométrie.

**Exemple 2 : Réflexion dans le plan $\mathbb{R}^2$**

Soit $s: \mathbb{R}^2 \to \mathbb{R}^2$ la réflexion par rapport à l'axe des abscisses. L'application envoie un vecteur $(x,y)$ sur $(x,-y)$.

Pour tout vecteur $v=(x,y) \in \mathbb{R}^2$, $\|v\|^2 = x^2+y^2$.

L'image est $s(v) = (x, -y)$.

La norme de l'image est $\|s(v)\|^2 = x^2 + (-y)^2 = x^2+y^2 = \|v\|^2$.

C'est donc une isométrie.

**Exemple 3 : L'application identité**

L'application identité, $Id: E \to E$ définie par $Id(x) = x$ pour tout $x \in E$, est trivialement une isométrie car $\|Id(x)\| = \|x\|$. C'est l'élément neutre du groupe des isométries.

### Contre-exemples

**Contre-exemple 1 : Homothétie**

Soit $h: \mathbb{R}^2 \to \mathbb{R}^2$ l'homothétie de rapport $k=2$, définie par $h(x) = 2x$.

Pour un vecteur non nul $x$, on a $\|h(x)\| = \|2x\| = |2|\|x\| = 2\|x\|$.

Comme $2\|x\| \neq \|x\|$, l'homothétie n'est pas une isométrie (sauf si $k=\pm 1$).

**Contre-exemple 2 : Transvection (Shear)**

Soit $g: \mathbb{R}^2 \to \mathbb{R}^2$ définie par $g(x,y) = (x+y, y)$. Sa matrice est $\begin{pmatrix} 1 & 1 \\ 0 & 1 \end{pmatrix}$.

Prenons le vecteur $x=(0,1)$. On a $\|x\|=1$.

Son image est $g(0,1)=(1,1)$. La norme de l'image est $\|g(0,1)\| = \sqrt{1^2+1^2} = \sqrt{2}$.

Comme $\|g(x)\| \neq \|x\|$, cette application n'est pas une isométrie.

### Concepts Connexes

- **Groupes Orthogonal et Unitaire** : Ce sont les groupes des matrices qui représentent les isométries dans une base orthonormée.
- **Transformations rigides** : En géométrie affine, une transformation rigide est une isométrie suivie d'une translation. Les isométries vectorielles sont les transformations rigides qui fixent l'origine.

---

## Concept 2: Groupes Orthogonal et Unitaire

### Prérequis

- Isométrie
- Matrice d'un endomorphisme dans une base
- Matrice transposée, matrice adjointe (conjuguée de la transposée)
- Déterminant d'une matrice
- Structure de groupe

### Définition

On définit les ensembles de matrices suivants :

- Le **groupe orthogonal** d'ordre $n$ est l'ensemble des matrices réelles $n \times n$ qui préservent le produit scalaire canonique de $\mathbb{R}^n$:

$$ O_n(\mathbb{R}) = \{ M \in M_n(\mathbb{R}) \mid {}^tMM = I_n \} $$

- Le **groupe unitaire** d'ordre $n$ est l'ensemble des matrices complexes $n \times n$ qui préservent le produit scalaire hermitien canonique de $\mathbb{C}^n$:

$$ U_n(\mathbb{C}) = \{ M \in M_n(\mathbb{C}) \mid {}^t\bar{M}M = I_n \} $$

- Le **groupe spécial orthogonal** d'ordre $n$ est le sous-ensemble de $O_n(\mathbb{R})$ des matrices de déterminant 1 :

$$ SO_n(\mathbb{R}) = \{ M \in O_n(\mathbb{R}) \mid \det(M)=1 \} $$

- Le **groupe spécial unitaire** d'ordre $n$ est le sous-ensemble de $U_n(\mathbb{C})$ des matrices de déterminant 1 :

$$ SU_n(\mathbb{C}) = \{ M \in U_n(\mathbb{C}) \mid \det(M)=1 \} $$

### Explication Détaillée

Ces ensembles sont appelés "groupes" car ils sont stables par multiplication matricielle, contiennent la matrice identité et chaque élément a un inverse dans l'ensemble.

La condition ${}^tMM = I_n$ (ou ${}^t\bar{M}M = I_n$) est une manière compacte d'exprimer que la matrice $M$ représente une isométrie dans une base orthonormée. Cette condition implique plusieurs choses :

1.  **$M$ est inversible** et son inverse est facile à calculer : $M^{-1} = {}^tM$ (ou $M^{-1} = {}^t\bar{M}$).
2.  **Les colonnes de $M$ forment une base orthonormée** pour le produit scalaire usuel. C'est la conséquence directe de la propriété qu'une isométrie envoie une base orthonormée sur une base orthonormée.
3.  **Les lignes de $M$ forment aussi une base orthonormée**.
4.  **Le déterminant a une contrainte forte**. Pour une matrice orthogonale, $\det({}^tMM) = \det({}^tM)\det(M) = (\det M)^2 = \det(I_n) = 1$, donc $\det(M) = \pm 1$. Pour une matrice unitaire, $|\det(M)|^2=1$, donc le déterminant est un nombre complexe de module 1.

Les groupes "spéciaux" (notés avec un S) sont ceux des isométries qui, en plus de préserver les distances et les angles, préservent aussi **l'orientation** de l'espace.

### Propriétés Clés

- $O_n(\mathbb{R})$, $U_n(\mathbb{C})$, $SO_n(\mathbb{R})$, $SU_n(\mathbb{C})$ sont des groupes pour la multiplication matricielle.
- $SO_n(\mathbb{R})$ est un sous-groupe de $O_n(\mathbb{R})$. $SU_n(\mathbb{C})$ est un sous-groupe de $U_n(\mathbb{C})$.
- Si $M \in O_n(\mathbb{R})$, alors $\det(M) \in \{-1, 1\}$.
- Si $M \in U_n(\mathbb{C})$, alors $|\det(M)| = 1$.
- Toute matrice orthogonale (resp. unitaire) est la matrice d'une isométrie de $\mathbb{R}^n$ (resp. $\mathbb{C}^n$) dans la base canonique.

### Exemples Détaillés

**Exemple 1 : Une matrice de $SO_2(\mathbb{R})$**

La matrice de rotation $R_\theta = \begin{pmatrix} \cos\theta & -\sin\theta \\ \sin\theta & \cos\theta \end{pmatrix}$.

Vérifions qu'elle est dans $O_2(\mathbb{R})$ :

$$ {}^t R_\theta R_\theta = \begin{pmatrix} \cos\theta & \sin\theta \\ -\sin\theta & \cos\theta \end{pmatrix} \begin{pmatrix} \cos\theta & -\sin\theta \\ \sin\theta & \cos\theta \end{pmatrix} = \begin{pmatrix} \cos^2\theta+\sin^2\theta & 0 \\ 0 & \sin^2\theta+\cos^2\theta \end{pmatrix} = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix} $$

Son déterminant est $\det(R_\theta) = \cos^2\theta - (-\sin^2\theta) = 1$. Donc $R_\theta \in SO_2(\mathbb{R})$.

**Exemple 2 : Une matrice de $O_2(\mathbb{R})$ qui n'est pas dans $SO_2(\mathbb{R})$**

La matrice de réflexion $S = \begin{pmatrix} 1 & 0 \\ 0 & -1 \end{pmatrix}$.

On a ${}^tSS = S^2 = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}$, donc $S \in O_2(\mathbb{R})$.

Son déterminant est $\det(S) = -1$. Donc $S \notin SO_2(\mathbb{R})$.

**Exemple 3 : Une matrice de $SU_2(\mathbb{C})$**

Soit $U = \begin{pmatrix} i & 0 \\ 0 & -i \end{pmatrix}$.

Son adjointe est ${}^t\bar{U} = \begin{pmatrix} -i & 0 \\ 0 & i \end{pmatrix}$.

$$ {}^t\bar{U}U = \begin{pmatrix} -i & 0 \\ 0 & i \end{pmatrix} \begin{pmatrix} i & 0 \\ 0 & -i \end{pmatrix} = \begin{pmatrix} -i^2 & 0 \\ 0 & -i^2 \end{pmatrix} = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix} $$

Son déterminant est $\det(U) = i(-i) = -i^2 = 1$. Donc $U \in SU_2(\mathbb{C})$.

### Contre-exemples

**Contre-exemple 1 : Une matrice inversible non orthogonale**

Soit $M = \begin{pmatrix} 2 & 0 \\ 0 & 1/2 \end{pmatrix}$. C'est une matrice inversible, mais :

$$ {}^tMM = \begin{pmatrix} 2 & 0 \\ 0 & 1/2 \end{pmatrix} \begin{pmatrix} 2 & 0 \\ 0 & 1/2 \end{pmatrix} = \begin{pmatrix} 4 & 0 \\ 0 & 1/4 \end{pmatrix} \neq I_2 $$

Cette matrice n'est pas orthogonale. Elle correspond à une dilatation.

**Contre-exemple 2 : Une matrice singulière**

Soit $M = \begin{pmatrix} 1 & 1 \\ 1 & 1 \end{pmatrix}$. Son déterminant est 0, donc elle n'est pas inversible. Elle ne peut donc pas être dans $O_2(\mathbb{R})$ car toutes les matrices orthogonales sont inversibles.

### Concepts Connexes

- **Isométrie** : Les groupes orthogonaux/unitaires sont l'incarnation matricielle du concept d'isométrie.
- **Orientation** : Le déterminant d'une matrice orthogonale est lié à la préservation ou à l'inversion de l'orientation de l'espace.
- **Géométrie euclidienne/hermitienne** : Ces groupes sont fondamentaux pour l'étude des symétries dans ces géométries.

---

## Concept 3: Angle non-orienté de deux vecteurs

### Prérequis

- Espace euclidien
- Produit scalaire et norme
- Inégalité de Cauchy-Schwarz : $|\varphi(x,y)| \le \|x\|\|y\|$

### Définition

Soit $(E, \varphi)$ un espace euclidien, et soient $x, y$ deux vecteurs non nuls de $E$.

L'**angle non-orienté** entre $x$ et $y$ est l'unique réel $\theta \in [0, \pi]$ tel que :

$$ \varphi(x,y) = \|x\| \|y\| \cos(\theta) $$

Ce qui est équivalent à la formule :

$$ \theta(x,y) = \arccos\left(\frac{\varphi(x,y)}{\|x\|\|y\|}\right) $$

### Explication Détaillée

Cette définition formalise la notion intuitive d'angle que l'on connaît en géométrie plane ou dans l'espace. L'inégalité de Cauchy-Schwarz est cruciale ici : elle garantit que la fraction $\frac{\varphi(x,y)}{\|x\|\|y\|}$ est toujours comprise entre -1 et 1, ce qui est nécessaire pour que la fonction $\arccos$ soit bien définie.

L'angle est dit "non-orienté" car l'ordre des vecteurs n'importe pas :

$$ \theta(x,y) = \theta(y,x) $$

car le produit scalaire est symétrique ($\varphi(x,y)=\varphi(y,x)$). Cet angle mesure simplement "l'écartement" entre les directions des deux vecteurs, sans se préoccuper du sens de rotation pour aller de l'un à l'autre. Le choix de l'intervalle $[0, \pi]$ (soit de 0 à 180 degrés) couvre tous les cas possibles :

- $\theta = 0$ : les vecteurs sont colinéaires et de même sens.
- $\theta = \pi/2$ : les vecteurs sont orthogonaux.
- $\theta = \pi$ : les vecteurs sont colinéaires et de sens opposés.

### Propriétés Clés

- **Symétrie** : $\theta(x,y) = \theta(y,x)$.
- **Domaine** : Défini pour des vecteurs non nuls.
- **Image** : L'angle est toujours dans l'intervalle $[0, \pi]$.
- **Colinéarité** : $\theta(x,y) = 0$ ou $\theta(x,y) = \pi$ si et seulement si les vecteurs $x$ et $y$ sont colinéaires.
- **Orthogonalité** : $\theta(x,y) = \pi/2$ si et seulement si $\varphi(x,y)=0$.

### Exemples Détaillés

Soit $\mathbb{R}^3$ muni du produit scalaire canonique $\langle u, v \rangle = u_1v_1+u_2v_2+u_3v_3$.

**Exemple 1 : Angle entre deux vecteurs du plan**

Soient $x = (1, 0)$ et $y = (1, 1)$ dans $\mathbb{R}^2$.

- $\langle x, y \rangle = 1 \cdot 1 + 0 \cdot 1 = 1$.
- $\|x\| = \sqrt{1^2+0^2} = 1$.
- $\|y\| = \sqrt{1^2+1^2} = \sqrt{2}$.

$$ \cos(\theta) = \frac{1}{1 \cdot \sqrt{2}} = \frac{1}{\sqrt{2}} = \frac{\sqrt{2}}{2} $$

L'unique $\theta \in [0, \pi]$ tel que $\cos(\theta) = \frac{\sqrt{2}}{2}$ est $\theta = \frac{\pi}{4}$.

**Exemple 2 : Vecteurs orthogonaux**

Soient $x = (1, 2, 3)$ et $y = (1, 1, -1)$ dans $\mathbb{R}^3$.

- $\langle x, y \rangle = 1 \cdot 1 + 2 \cdot 1 + 3 \cdot (-1) = 1+2-3 = 0$.

$$ \cos(\theta) = \frac{0}{\|x\|\|y\|} = 0 $$

L'angle est donc $\theta = \arccos(0) = \frac{\pi}{2}$. Les vecteurs sont orthogonaux.

**Exemple 3 : Vecteurs colinéaires de sens opposés**

Soient $x=(1,1,1)$ et $y=(-2,-2,-2)$ dans $\mathbb{R}^3$.

- $\langle x, y \rangle = -2-2-2 = -6$.
- $\|x\| = \sqrt{1+1+1} = \sqrt{3}$.
- $\|y\| = \sqrt{4+4+4} = \sqrt{12} = 2\sqrt{3}$.

$$ \cos(\theta) = \frac{-6}{\sqrt{3} \cdot 2\sqrt{3}} = \frac{-6}{6} = -1 $$

L'angle est $\theta = \arccos(-1) = \pi$.

### Contre-exemples

**Contre-exemple 1 : Vecteur nul**

La définition ne s'applique pas si l'un des vecteurs est le vecteur nul, car on aurait une division par zéro dans la formule. Géométriquement, le vecteur nul n'a pas de direction, donc la notion d'angle avec un autre vecteur n'a pas de sens.

**Contre-exemple 2 : Espace non euclidien**

Dans un espace vectoriel sans produit scalaire, la notion d'angle n'est pas définie. De même, dans un espace hermitien sur $\mathbb{C}$, le produit scalaire $\varphi(x,y)$ est un nombre complexe, donc la formule avec $\arccos$ ne s'applique pas directement.

### Concepts Connexes

- **Angle Orienté** : Une notion plus fine, définie en dimension 2, qui prend en compte le sens de rotation.
- **Produit Scalaire** : La définition de l'angle en est une application directe.
- **Isométries** : Les isométries sont les transformations qui préservent le produit scalaire, et donc qui préservent les angles entre les vecteurs.

---

## Concept 4: Orientation d'un espace vectoriel

### Prérequis

- Espace vectoriel sur $\mathbb{R}$
- Base d'un espace vectoriel
- Matrice de passage entre deux bases
- Déterminant d'une matrice

### Définition

Soit $E$ un $\mathbb{R}$-espace vectoriel de dimension finie $n$.

Deux bases $\mathcal{B}$ et $\mathcal{B}'$ de $E$ sont dites de **même orientation** si la matrice de passage de $\mathcal{B}$ à $\mathcal{B}'$, notée $P_{\mathcal{B},\mathcal{B}'}$, a un déterminant strictement positif :

$$ \det(P_{\mathcal{B},\mathcal{B}'}) > 0 $$

Si $\det(P_{\mathcal{B},\mathcal{B}'}) < 0$, les bases sont dites d'orientations opposées.

**Orienter un espace vectoriel**, c'est choisir l'une des deux classes d'orientation et la décréter "positive" ou "directe". L'autre classe est alors qualifiée de "négative" ou "indirecte".

### Explication Détaillée

La notion d'orientation formalise l'idée de "sens" ou de "chiralité" (comme la différence entre la main droite et la main gauche).

- En **dimension 1** (une droite), orienter c'est choisir une direction positive.
- En **dimension 2** (un plan), orienter c'est choisir un sens de rotation comme étant le sens "trigonométrique" (généralement anti-horaire).
- En **dimension 3** (l'espace), orienter c'est choisir un type de repère, par exemple le "repère de la main droite".

La relation "avoir la même orientation" est une relation d'équivalence sur l'ensemble de toutes les bases de $E$. Elle partitionne cet ensemble en exactement deux classes. Une fois qu'on a choisi une base de référence (par exemple, la base canonique pour $\mathbb{R}^n$), toutes les autres bases peuvent être classées comme directes (même orientation que la référence) ou indirectes (orientation opposée).

Une transformation linéaire préserve l'orientation si l'image d'une base directe est une base directe. Cela revient à dire que le déterminant de sa matrice (dans n'importe quelle base) est positif. C'est pourquoi le groupe $SO_n(\mathbb{R})$ est celui des isométries qui préservent l'orientation.

### Propriétés Clés

- La relation "avoir la même orientation" est une relation d'équivalence.
- Il existe exactement deux classes d'orientation pour les bases d'un espace vectoriel réel de dimension finie non nulle.
- Une application linéaire $f$ préserve l'orientation si et seulement si $\det(f) > 0$. Elle inverse l'orientation si $\det(f) < 0$.
- Par convention, la base canonique de $\mathbb{R}^n$ définit l'orientation standard (dite "directe").

### Exemples Détaillés

**Exemple 1 : Orientation dans $\mathbb{R}^2$**

Soit $\mathcal{B} = (e_1, e_2)$ la base canonique de $\mathbb{R}^2$, qui est directe par convention.

Considérons la base $\mathcal{B}' = (e_2, e_1)$. La matrice de passage de $\mathcal{B}$ à $\mathcal{B}'$ est $P = \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix}$.

On a $\det(P) = -1 < 0$. Donc $\mathcal{B}'$ est une base indirecte. Elle correspond à un repère "de la main gauche" dans le plan.

**Exemple 2 : Rotation de base**

Soit $\mathcal{B} = (e_1, e_2)$ la base canonique.

Considérons la base $\mathcal{B}'' = (\cos\theta e_1 + \sin\theta e_2, -\sin\theta e_1 + \cos\theta e_2)$. C'est l'image de $\mathcal{B}$ par une rotation d'angle $\theta$.

La matrice de passage est $P = \begin{pmatrix} \cos\theta & -\sin\theta \\ \sin\theta & \cos\theta \end{pmatrix}$.

On a $\det(P) = \cos^2\theta + \sin^2\theta = 1 > 0$.

Donc, la base $\mathcal{B}''$ a la même orientation que $\mathcal{B}$. Une rotation préserve l'orientation.

**Exemple 3 : Vecteur directement orthogonal**

Dans un plan euclidien orienté, pour tout vecteur non nul $e=(x,y)$, il existe un unique vecteur $e^\wedge$ de même norme tel que $(e, e^\wedge)$ soit une base orthogonale directe. Si l'orientation est donnée par la base canonique de $\mathbb{R}^2$, alors $e^\wedge = (-y,x)$.

La matrice de passage de la base canonique à $(e, e^\wedge)$ est $\begin{pmatrix} x & -y \\ y & x \end{pmatrix}$, dont le déterminant est $x^2+y^2 > 0$.

### Contre-exemples

**Contre-exemple 1 : Espaces sur $\mathbb{C}$**

La notion d'orientation basée sur le signe du déterminant est spécifique aux espaces vectoriels réels. Le déterminant d'une matrice de passage entre deux bases d'un $\mathbb{C}$-espace vectoriel est un nombre complexe non nul, pour lequel la notion de "signe positif/négatif" n'a pas de sens.

**Contre-exemple 2 : Famille liée**

Une famille de vecteurs qui ne forme pas une base (par exemple, si elle est liée) ne peut pas être qualifiée de directe ou indirecte. Le concept d'orientation ne s'applique qu'aux bases.

### Concepts Connexes

- **Déterminant** : C'est l'outil algébrique qui capture la notion géométrique d'orientation.
- **Produit vectoriel** : En dimension 3, le produit vectoriel $u \wedge v$ est défini de telle sorte que la base $(u, v, u \wedge v)$ soit directe (si $u,v$ ne sont pas colinéaires).
- **Groupes $SO_n(\mathbb{R})$ et $O_n(\mathbb{R})$** : $SO_n(\mathbb{R})$ est le groupe des isométries directes (qui préservent l'orientation). $O_n(\mathbb{R})$ contient aussi les isométries indirectes.

CONTINUATION_NEEDED: Il reste 6 concepts à documenter : Angle orienté, Classification des isométries du plan, Classification des isométries de l'espace, Produit Vectoriel, Formule de Rodrigues, et le groupe SU2(C).
