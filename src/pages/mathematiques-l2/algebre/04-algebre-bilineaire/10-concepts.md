---
id: 539daa57
type: concepts
order: 10
title: Algèbre bilinéaire - concepts (A)
tags:
  - Algèbre bilinéaire
  - Dualité
  - Formes bilinéaires
  - Formes quadratiques
  - Espaces euclidiens
  - Diagonalisation
  - Gram-Schmidt
course: Algèbre
courseId: 3b74b601
chapter: Algèbre bilinéaire
chapterId: 6d99d679
level: regular
createdAt: '2025-11-27T08:32:48.606Z'
---
# Algèbre bilinéaire (A)

---

## Concept 1: Espace Dual et Formes Linéaires

### Prérequis

- Espaces vectoriels (définition, sous-espaces)
- Applications linéaires
- Bases et dimension
- Matrices (opérations élémentaires)

### Définition

Soit $V$ un $K$-espace vectoriel. L'**espace dual** de $V$, noté $V^*$, est l'ensemble des formes linéaires sur $V$, c'est-à-dire l'ensemble des applications linéaires de $V$ dans le corps $K$ :

$$V^* = \mathcal{L}(V, K)$$

Les éléments de $V^*$ sont appelés des **formes linéaires** (ou covecteurs). Si $\varphi \in V^*$, alors pour tous $u, v \in V$ et $\lambda \in K$ :

$$\varphi(\lambda u + v) = \lambda \varphi(u) + \varphi(v)$$

### Propriétés Clés

- **Dimension :** Si $V$ est de dimension finie $n$, alors $V^*$ est aussi de dimension $n$.
- **Base duale :** Si $\mathfrak{B} = \{e_1, \dots, e_n\}$ est une base de $V$, il existe une base unique $\mathfrak{B}^* = \{e_1^*, \dots, e_n^*\}$ de $V^*$, appelée base duale, définie par :

  $$e_i^*(e_j) = \delta_{i,j} = \begin{cases} 1 & \text{si } i = j \\ 0 & \text{si } i \ne j \end{cases}$$

- **Orthogonal formel ($X^\perp$) :** L'ensemble des formes linéaires qui s'annulent sur un sous-ensemble $X \subset V$ forme un sous-espace vectoriel de $V^*$ appelé l'orthogonal de $X$ :

  $$X^\perp = \{\varphi \in V^* \mid \forall v \in X, \varphi(v) = 0\}$$

### Exemples

**Exemple 1 : Formes coordonnées**

Dans $V = \mathbb{R}^3$, un vecteur s'écrit $v = (x, y, z)$.

L'application $\varphi_1 : \mathbb{R}^3 \to \mathbb{R}$ définie par $\varphi_1(x, y, z) = x$ est une forme linéaire. C'est la première projection, ou la première coordonnée dans la base canonique. De même, $\varphi_2(v) = y$ et $\varphi_3(v) = z$ sont des formes linéaires. La famille $(\varphi_1, \varphi_2, \varphi_3)$ forme la base duale de la base canonique de $\mathbb{R}^3$.

**Exemple 2 : Combinaison linéaire**

L'application $f : \mathbb{R}^2 \to \mathbb{R}$ définie par $f(x, y) = 2x - 5y$ est une forme linéaire. Sa matrice dans la base canonique est la matrice ligne $[2 \;\; -5]$.

L'équation $2x - 5y = 0$ définit le noyau de cette forme linéaire, qui est une droite vectorielle.

**Exemple 3 : Trace d'une matrice**

Soit $V = M_n(K)$ l'espace des matrices carrées. L'application Trace, définie par :

$$\text{Tr}(A) = \sum_{i=1}^n A_{ii}$$

est une forme linéaire sur $M_n(K)$. C'est un élément du dual de l'espace des matrices.

### Contre-exemples

- L'application $f(x) = x^2$ de $\mathbb{R}$ dans $\mathbb{R}$ n'est pas une forme linéaire car elle n'est pas linéaire ($f(2x) = 4x^2 \ne 2f(x)$).
- L'application $f(x, y) = x + y + 1$ n'est pas une forme linéaire (car $f(0,0) = 1 \ne 0$). C'est une forme affine.

### Concepts Liés

- Transposition de matrice (lien entre matrice d'une application et matrice de son adjoint formel).
- Hyperplans (noyaux de formes linéaires non nulles).

### Applications

- Résolution de systèmes d'équations linéaires (chaque équation $a_1x_1 + \dots + a_nx_n = 0$ correspond à une forme linéaire).
- Calcul différentiel (la différentielle d'une fonction en un point est une forme linéaire).

---

## Concept 2: Formes Bilinéaires Symétriques

### Prérequis

- Applications linéaires
- Matrices carrées et transposées
- Changement de base

### Définition

Une **forme bilinéaire** sur un espace vectoriel $V$ est une application $\varphi : V \times V \to K$ qui est linéaire par rapport à chacune de ses variables. C'est-à-dire :

- $\varphi(\lambda u + v, w) = \lambda \varphi(u, w) + \varphi(v, w)$ (linéarité à gauche)
- $\varphi(u, \lambda v + w) = \lambda \varphi(u, v) + \varphi(u, w)$ (linéarité à droite)

Elle est dite **symétrique** si pour tout $u, v \in V$ :

$$\varphi(u, v) = \varphi(v, u)$$

### Propriétés Clés

- **Matrice associée :** Dans une base $\mathfrak{B} = (e_1, \dots, e_n)$, la forme $\varphi$ est représentée par une matrice $A \in M_n(K)$ définie par $A_{i,j} = \varphi(e_i, e_j)$.
- **Calcul matriciel :** Si $X$ et $Y$ sont les vecteurs colonnes des coordonnées de $u$ et $v$, alors :

  $$\varphi(u, v) = {}^t X A Y$$

- **Changement de base :** Si $P$ est la matrice de passage de la base $\mathfrak{B}$ à la base $\mathcal{C}$, et $A'$ est la matrice de $\varphi$ dans $\mathcal{C}$, alors :

  $$A' = {}^t P A P$$

  On dit que les matrices $A$ et $A'$ sont congruentes.

- **Symétrie :** $\varphi$ est symétrique si et seulement si sa matrice $A$ est symétrique (${}^tA = A$).

### Exemples

**Exemple 1 : Produit scalaire canonique**

Sur $V = \mathbb{R}^n$, la forme définie par :

$$\varphi((x_i), (y_i)) = \sum_{i=1}^n x_i y_i = x_1y_1 + \dots + x_ny_n$$

est une forme bilinéaire symétrique. Sa matrice dans la base canonique est l'identité $I_n$.

**Exemple 2 : Forme de Minkowski**

Sur $\mathbb{R}^4$, la forme définie par :

$$\varphi((x, y, z, t), (x', y', z', t')) = xx' + yy' + zz' - c^2 tt'$$

est bilinéaire symétrique. Elle est fondamentale en relativité restreinte.

**Exemple 3 : Intégrale de produit de fonctions**

Sur l'espace des fonctions continues $V = \mathcal{C}^0([a, b], \mathbb{R})$, l'application :

$$\varphi(f, g) = \int_a^b f(t)g(t) dt$$

est une forme bilinéaire symétrique.

### Contre-exemples

- Le déterminant sur $\mathbb{R}^2$ ($\det(u, v)$) est une forme bilinéaire, mais elle est **antisymétrique** ($\det(u, v) = -\det(v, u)$), donc non symétrique (sauf si le corps est de caractéristique 2).
- L'application $\psi(u, v) = \|u\| \times \|v\|$ n'est pas bilinéaire (pas linéaire par rapport aux variables).

### Concepts Liés

- Formes quadratiques (associées aux formes bilinéaires symétriques).
- Noyau d'une forme bilinéaire (vecteurs orthogonaux à tout l'espace).

---

## Concept 3: Orthogonalité (Cadre Général)

### Prérequis

- Formes bilinéaires symétriques
- Sous-espaces vectoriels
- Systèmes linéaires

### Définition

Soit $\varphi$ une forme bilinéaire symétrique sur $V$. Deux vecteurs $x, y \in V$ sont dits **orthogonaux** pour $\varphi$ (noté $x \perp_\varphi y$) si :

$$\varphi(x, y) = 0$$

L'**orthogonal** d'un sous-ensemble $X \subset V$, noté $X^\perp$, est l'ensemble des vecteurs orthogonaux à tous les vecteurs de $X$ :

$$X^\perp = \{v \in V \mid \forall x \in X, \varphi(v, x) = 0\}$$

### Propriétés Clés

- **Sous-espace :** $X^\perp$ est toujours un sous-espace vectoriel de $V$.
- **Noyau :** Le noyau de la forme bilinéaire est l'orthogonal de l'espace entier : $\text{Ker}(\varphi) = V^\perp$. La forme est dite **non dégénérée** si $\text{Ker}(\varphi) = \{0\}$.
- **Dimension :** Si $V$ est de dimension finie $n$ et $\varphi$ est non dégénérée, pour tout sous-espace $F$ :

  $$\dim(F^\perp) = n - \dim(F)$$

  et on a $(F^\perp)^\perp = F$.

- **Somme directe :** Si la restriction de $\varphi$ à $F$ est non dégénérée (c'est-à-dire $F \cap F^\perp = \{0\}$), alors $V = F \oplus F^\perp$.

### Exemples

**Exemple 1 : Géométrie Euclidienne**

Dans $\mathbb{R}^2$ avec le produit scalaire usuel, si $F$ est la droite engendrée par le vecteur $(1, 0)$, alors $F^\perp$ est la droite engendrée par $(0, 1)$ (l'axe des ordonnées). Ici, $F \oplus F^\perp = \mathbb{R}^2$.

**Exemple 2 : Vecteurs isotropes**

Un vecteur $x$ est dit **isotrope** si $\varphi(x, x) = 0$, c'est-à-dire s'il est orthogonal à lui-même.

Pour la forme $\varphi((x,y), (x',y')) = x x' - y y'$ sur $\mathbb{R}^2$, le vecteur $u = (1, 1)$ est isotrope car :

$$\varphi((1,1), (1,1)) = 1\cdot1 - 1\cdot1 = 0$$

Dans ce cas, $u \in (\text{Vect}(u))^\perp$. La somme n'est pas directe : $\text{Vect}(u) \cap \text{Vect}(u)^\perp \ne \{0\}$.

**Exemple 3 : Noyau de la forme**

Si $\varphi$ sur $\mathbb{R}^3$ est définie par $\varphi(u, v) = x_1 y_1 + x_2 y_2$ (la troisième coordonnée n'intervient pas), alors le vecteur $e_3 = (0, 0, 1)$ est orthogonal à tout vecteur $v$. Donc $e_3 \in V^\perp = \text{Ker}(\varphi)$. La forme est dégénérée.

### Contre-exemples

- Dans un espace euclidien (produit scalaire défini positif), le seul vecteur isotrope est le vecteur nul.
- $F$ et $F^\perp$ ne sont pas toujours supplémentaires (voir Exemple 2).

### Concepts Liés

- Bases orthogonales.
- Projection orthogonale (si la somme est directe).

---

## Concept 4: Formes Quadratiques et Réduction de Gauss

### Prérequis

- Formes bilinéaires symétriques
- Polynômes homogènes de degré 2

### Définition

Une **forme quadratique** sur un espace vectoriel $V$ est une application $q: V \to K$ telle qu'il existe une forme bilinéaire symétrique $\varphi$ vérifiant :

$$q(v) = \varphi(v, v)$$

On peut retrouver $\varphi$ à partir de $q$ grâce à la **formule de polarisation** :

$$\varphi(u, v) = \frac{1}{2} (q(u + v) - q(u) - q(v))$$

On appelle $\varphi$ la forme polaire de $q$.

### Propriétés Clés

- **Homogénéité :** Pour tout $\lambda \in K$ et $v \in V$, $q(\lambda v) = \lambda^2 q(v)$.
- **Expression matricielle :** Si $A$ est la matrice de $\varphi$, alors $q(X) = {}^t X A X$. En coordonnées $(x_i)$, c'est un polynôme homogène de degré 2 :

  $$q(x) = \sum_{i=1}^n a_{ii}x_i^2 + \sum_{i < j} 2a_{ij}x_ix_j$$

- **Réduction en carrés (Gauss) :** Toute forme quadratique peut s'écrire comme une combinaison linéaire de carrés de formes linéaires indépendantes :

  $$q(v) = \sum_{i=1}^r \lambda_i (\ell_i(v))^2$$

  où $r$ est le rang de la forme quadratique.

### Exemples

**Exemple 1 : Norme euclidienne au carré**

Sur $\mathbb{R}^3$, $q(x, y, z) = x^2 + y^2 + z^2$ est la forme quadratique associée au produit scalaire standard.

**Exemple 2 : Algorithme de Gauss (Réduction)**

Soit $q(x, y) = x^2 + 2xy + 2y^2$. On veut l'écrire comme somme de carrés.

1. On repère le début d'une identité remarquable avec $x$ : $x^2 + 2xy = (x+y)^2 - y^2$.
2. On remplace dans $q$ :

   $$q(x, y) = ((x+y)^2 - y^2) + 2y^2 = (x+y)^2 + y^2$$

   En posant $X = x+y$ et $Y = y$, on a diagonalisé la forme quadratique.

**Exemple 3 : Signature (Théorème de Sylvester)**

Sur $\mathbb{R}$, le nombre de coefficients positifs ($s$) et négatifs ($t$) dans la décomposition en carrés ne dépend pas de la base choisie. Le couple $(s, t)$ est la **signature** de $q$.

Pour $q(x,y,z) = x^2 - y^2 - z^2$, la signature est $(1, 2)$.

### Contre-exemples

- $f(x) = x^2 + x$ n'est pas une forme quadratique (terme de degré 1).
- $f(x) = x^3$ n'est pas une forme quadratique (terme de degré 3, $f(\lambda x) = \lambda^3 f(x) \ne \lambda^2 f(x)$).

### Concepts Liés

- Bases orthogonales (bases dans lesquelles la matrice de $q$ est diagonale).
- Coniques et quadriques (lieux géométriques définis par $q(v) = k$).

---

## Concept 5: Espace Euclidien et Inégalité de Cauchy-Schwarz

### Prérequis

- Formes bilinéaires symétriques
- Formes quadratiques (définies positives)
- Nombres réels (propriété de positivité)

### Définition

Un **espace euclidien** est un espace vectoriel réel $E$ de dimension finie muni d'un **produit scalaire**.

Un produit scalaire est une forme bilinéaire symétrique $\varphi$ qui est :

1.  **Positive :** $\forall x \in E, \varphi(x, x) \ge 0$.
2.  **Définie :** $\varphi(x, x) = 0 \iff x = 0$.

On note souvent le produit scalaire $(x | y)$ ou $\langle x, y \rangle$, et la norme associée $\|x\| = \sqrt{(x | x)}$.

### Propriétés Clés

- **Inégalité de Cauchy-Schwarz :** Pour tous vecteurs $x, y \in E$ :

  $$|(x | y)| \le \|x\| \cdot \|y\|$$

  L'égalité a lieu si et seulement si $x$ et $y$ sont colinéaires (liés).

- **Inégalité triangulaire :** $\|x + y\| \le \|x\| + \|y\|$.
- **Identité de Pythagore :** Si $(x | y) = 0$ (vecteurs orthogonaux), alors $\|x + y\|^2 = \|x\|^2 + \|y\|^2$.

### Exemples

**Exemple 1 : Espace vectoriel canonique**

$\mathbb{R}^n$ muni de $(x | y) = \sum x_i y_i$ est l'espace euclidien standard.

Cauchy-Schwarz s'écrit ici : $|\sum x_i y_i| \le \sqrt{\sum x_i^2} \sqrt{\sum y_i^2}$.

**Exemple 2 : Espace de fonctions**

Sur l'espace des fonctions continues sur $[0, 1]$, le produit scalaire $(f | g) = \int_0^1 f(t)g(t)dt$ définit une structure (pré)euclidienne.

Cauchy-Schwarz devient :

$$|\int_0^1 f(t)g(t) dt| \le \sqrt{\int_0^1 f^2(t) dt} \sqrt{\int_0^1 g^2(t) dt}$$

**Exemple 3 : Angle**

Dans un espace euclidien, l'angle $\theta$ entre deux vecteurs non nuls $u$ et $v$ est défini par :

$$\cos(\theta) = \frac{(u | v)}{\|u\| \cdot \|v\|}$$

Ceci est bien défini grâce à Cauchy-Schwarz qui garantit que le rapport est dans $[-1, 1]$.

### Contre-exemples

- La forme de Minkowski sur $\mathbb{R}^4$ ($x^2+y^2+z^2-c^2t^2$) n'est pas un produit scalaire car elle n'est pas positive (il existe des vecteurs avec $q(v) < 0$).
- La norme 1 sur $\mathbb{R}^2$, $\|(x,y)\|_1 = |x| + |y|$, ne provient pas d'un produit scalaire (elle ne vérifie pas l'identité du parallélogramme).

### Concepts Liés

- Norme et distance.
- Orthonormalisation.

---

## Concept 6: Bases Orthonormées et Procédé de Gram-Schmidt

### Prérequis

- Espace Euclidien
- Familles libres et génératrices
- Projection orthogonale

### Définition

Une famille de vecteurs $(e_1, \dots, e_n)$ dans un espace euclidien $E$ est dite **orthonormée** si :

1.  Les vecteurs sont deux à deux orthogonaux : $(e_i | e_j) = 0$ pour $i \ne j$.
2.  Chaque vecteur est unitaire (de norme 1) : $(e_i | e_i) = 1$.

C'est-à-dire : $(e_i | e_j) = \delta_{i,j}$.

Le **théorème de Gram-Schmidt** affirme que toute famille libre $(v_1, \dots, v_n)$ peut être transformée en une famille orthonormée $(e_1, \dots, e_n)$ engendrant le même espace, telle que pour tout $k$, $\text{Vect}(e_1, \dots, e_k) = \text{Vect}(v_1, \dots, v_k)$.

### Propriétés Clés

- **Liberté :** Une famille orthonormée est toujours libre.
- **Coordonnées :** Dans une base orthonormée $\mathfrak{B} = (e_1, \dots, e_n)$, les coordonnées d'un vecteur $x$ sont données simplement par les produits scalaires :

  $$x = \sum_{i=1}^n (x | e_i) e_i$$

- **Norme (Parseval) :** $\|x\|^2 = \sum_{i=1}^n (x | e_i)^2$.

### Exemples

**Exemple 1 : Construction (Gram-Schmidt)**

Soit $(v_1, v_2)$ une base de $\mathbb{R}^2$.

1. On pose $e_1 = \frac{v_1}{\|v_1\|}$.
2. On cherche $e'_2$ orthogonal à $e_1$ dans le plan engendré par $v_1, v_2$. On projette $v_2$ sur l'orthogonal de $e_1$ :

   $$e'_2 = v_2 - (v_2 | e_1)e_1$$

3. On normalise : $e_2 = \frac{e'_2}{\|e'_2\|}$.

**Exemple 2 : Base canonique**

La base canonique de $\mathbb{R}^n$ est orthonormée pour le produit scalaire standard.

**Exemple 3 : Polynômes de Legendre**

En appliquant Gram-Schmidt à la base canonique $(1, X, X^2, \dots)$ de $\mathbb{R}[X]$ muni du produit scalaire $\int_{-1}^1 P(t)Q(t)dt$, on obtient (à une constante multiplicative près) les polynômes de Legendre.

### Contre-exemples

- Une base orthogonale n'est pas forcément orthonormée (les vecteurs peuvent avoir une norme $\ne 1$).
- Le procédé de Gram-Schmidt ne fonctionne pas si la famille de départ est liée (on obtiendrait un vecteur nul à une étape).

### Concepts Liés

- Matrices orthogonales ($O(n)$).
- Décomposition QR d'une matrice.

---

## Concept 7: Projection Orthogonale et Isométries

### Prérequis

- Espace Euclidien
- Bases orthonormées
- Somme directe

### Définition

Soit $F$ un sous-espace vectoriel d'un espace euclidien $E$.

La **projection orthogonale** sur $F$, notée $\pi_F$, est l'application qui à tout vecteur $x \in E$ associe l'unique vecteur $\pi_F(x) \in F$ tel que le vecteur différence soit orthogonal à $F$ :

$$x - \pi_F(x) \in F^\perp$$

Une **isométrie** (ou endomorphisme orthogonal) est une application linéaire $u : E \to E$ qui conserve la norme :

$$\forall x \in E, \|u(x)\| = \|x\|$$

### Propriétés Clés

- **Calcul de projection :** Si $(e_1, \dots, e_k)$ est une base orthonormée de $F$, alors :

  $$\pi_F(x) = \sum_{i=1}^k (x | e_i) e_i$$

- **Distance :** $\pi_F(x)$ est le vecteur de $F$ le plus proche de $x$. La distance de $x$ à $F$ est $\|x - \pi_F(x)\|$.
- **Groupe Orthogonal $O(n)$ :** L'ensemble des matrices des isométries dans une base orthonormée forme le groupe orthogonal :

  $$O(n) = \{M \in M_n(\mathbb{R}) \mid {}^t M M = I_n\}$$

  Les colonnes d'une matrice orthogonale forment une base orthonormée.

### Exemples

**Exemple 1 : Projection sur une droite**

Si $F = \mathbb{R}u$ avec $u \ne 0$, la projection orthogonale de $x$ sur la droite dirigée par $u$ est :

$$\pi_F(x) = \frac{(x | u)}{\|u\|^2} u$$

**Exemple 2 : Symétrie orthogonale**

La symétrie orthogonale par rapport à un hyperplan $H$ (réflexion) est une isométrie donnée par :

$$s_H(x) = x - 2\pi_{H^\perp}(x)$$

Si $H^\perp$ est dirigé par un vecteur unitaire $n$, alors $s_H(x) = x - 2(x | n)n$.

**Exemple 3 : Matrices de rotation**

Dans $\mathbb{R}^2$, la matrice $\begin{pmatrix} \cos \theta & -\sin \theta \\ \sin \theta & \cos \theta \end{pmatrix}$ est une matrice orthogonale. Elle représente une rotation d'angle $\theta$, qui est une isométrie.

### Contre-exemples

- Une projection oblique (où la direction de projection n'est pas orthogonale au sous-espace) n'est pas une projection orthogonale.
- Une homothétie de rapport $k \ne \pm 1$ n'est pas une isométrie (elle multiplie les distances par $|k|$).

### Concepts Liés

- Moindres carrés (application de la projection orthogonale pour résoudre des systèmes approchés).
- Théorème spectral (diagonalisation des matrices symétriques à l'aide de matrices orthogonales).

---

## Concept 8: Théorème Spectral (Diagonalisation des matrices symétriques)

### Prérequis

- Espace Euclidien
- Endomorphismes auto-adjoints (matrices symétriques)
- Valeurs propres et vecteurs propres
- Diagonalisation

### Définition

Un endomorphisme $u$ d'un espace euclidien est dit **auto-adjoint** (ou symétrique) si pour tout $x, y \in E$, $(u(x) | y) = (x | u(y))$. Matriciellement, cela correspond à une matrice symétrique réelle ($A = {}^tA$).

**Théorème Spectral :** Tout endomorphisme auto-adjoint d'un espace euclidien est diagonalisable dans une base orthonormée.

Autrement dit, si $A$ est une matrice symétrique réelle, il existe une matrice orthogonale $P$ ($P^{-1} = {}^tP$) et une matrice diagonale $D$ telles que :

$$A = P D P^{-1} = P D {}^tP$$

### Propriétés Clés

- **Valeurs propres réelles :** Toutes les valeurs propres d'une matrice symétrique réelle sont réelles.
- **Espaces propres orthogonaux :** Les sous-espaces propres associés à des valeurs propres distinctes sont orthogonaux entre eux.
- **Réduction simultanée :** Ce théorème permet de réduire l'expression d'une forme quadratique à une somme de carrés purs $\sum \lambda_i X_i^2$ en changeant de repère orthonormé (les axes principaux).

### Exemples

**Exemple 1 : Matrice symétrique 2x2**

Soit $A = \begin{pmatrix} 1 & 2 \\ 2 & 1 \end{pmatrix}$. Elle est symétrique.

Ses valeurs propres sont $3$ et $-1$.

Les vecteurs propres associés sont (normalisés) $v_1 = \frac{1}{\sqrt{2}}(1, 1)$ et $v_2 = \frac{1}{\sqrt{2}}(1, -1)$.

On remarque que $(v_1 | v_2) = 0$. Ils forment une base orthonormée de vecteurs propres.

**Exemple 2 : Axes principaux d'une ellipse**

L'équation $5x^2 + 4xy + 5y^2 = 1$ définit une ellipse tournée. La matrice associée est $\begin{pmatrix} 5 & 2 \\ 2 & 5 \end{pmatrix}$. En diagonalisant cette matrice (valeurs propres 3 et 7), on trouve les axes de symétrie de l'ellipse dans lesquels l'équation devient $7X^2 + 3Y^2 = 1$.

**Exemple 3 : Projecteur orthogonal**

La matrice d'une projection orthogonale est toujours symétrique (et idempotente : $P^2=P$). Elle est donc diagonalisable avec des valeurs propres 0 et 1.

### Contre-exemples

- La matrice $\begin{pmatrix} 1 & 1 \\ 0 & 1 \end{pmatrix}$ n'est pas symétrique. Elle n'est même pas diagonalisable (bloc de Jordan).
- La matrice de rotation $\begin{pmatrix} 0 & -1 \\ 1 & 0 \end{pmatrix}$ est orthogonale mais pas symétrique. Elle n'a pas de valeurs propres réelles, donc pas diagonalisable sur $\mathbb{R}$.

### Concepts Liés

- Formes quadratiques (lien matrice symétrique <-> forme quadratique).
- Opérateurs compacts (généralisation en dimension infinie).

## Applications

Les concepts d'algèbre bilinéaire, en particulier les espaces euclidiens et le théorème spectral, sont cruciaux dans de nombreux domaines :

1.  **Physique :** Mécanique quantique (observables = opérateurs auto-adjoints), Relativité (métrique de Minkowski), Tenseur d'inertie en mécanique du solide.
2.  **Statistiques et Analyse de Données :** Analyse en Composantes Principales (ACP) qui repose sur la diagonalisation de la matrice de covariance (symétrique) pour trouver les directions de variance maximale (axes principaux).
3.  **Optimisation :** Étude de la convexité via la matrice Hessienne (symétrique) d'une fonction.
4.  **Traitement du signal :** Séries de Fourier (base orthonormée de fonctions trigonométriques).
