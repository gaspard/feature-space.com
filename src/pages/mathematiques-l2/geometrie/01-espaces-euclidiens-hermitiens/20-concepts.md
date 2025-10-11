---
title: B - Concepts
level: pro
course: Géométrie
chapter: Espaces Euclidiens et Hermitiens
order: 20
layout: '../../../../layouts/Article.astro'
tags:
  [
    'algèbre linéaire',
    'géométrie',
    'espace euclidien',
    'espace hermitien',
    'produit scalaire'
  ]
---

# Espaces Euclidiens et Hermitiens (avancé)

---

## Concept 1: Formes Bilinéaires et Sesquilinéaires

### Prérequis

- Espaces vectoriels sur un corps $\mathbb{K}$ ($\mathbb{R}$ ou $\mathbb{C}$).
- Applications linéaires.
- Algèbre matricielle (transposée, produit matriciel).
- Conjuguaison complexe.

### Définition

Soit $E$ un espace vectoriel sur un corps $\mathbb{K}$.

1.  **Forme Bilinéaire ($\mathbb{K} = \mathbb{R}$ ou $\mathbb{C}$)**: Une application $\varphi: E \times E \to \mathbb{K}$ est une **forme bilinéaire** si elle est linéaire par rapport à chacune de ses variables, i.e., pour tous $u, v, u_1, u_2, v_1, v_2 \in E$ et tout $\lambda \in \mathbb{K}$:

    - $\varphi(u_1 + \lambda u_2, v) = \varphi(u_1, v) + \lambda\varphi(u_2, v)$ (linéarité à gauche).
    - $\varphi(u, v_1 + \lambda v_2) = \varphi(u, v_1) + \lambda\varphi(u, v_2)$ (linéarité à droite).
    - Une forme bilinéaire $\varphi$ est dite **symétrique** si $\forall x, y \in E, \varphi(x, y) = \varphi(y, x)$.

2.  **Forme Sesquilinéaire ($\mathbb{K} = \mathbb{C}$)**: Une application $\varphi: E \times E \to \mathbb{C}$ est une **forme sesquilinéaire** si elle est linéaire par rapport à sa première variable et semi-linéaire (ou anti-linéaire) par rapport à sa seconde. Pour tous $u, v, u_1, u_2, v_1, v_2 \in E$ et tout $\lambda \in \mathbb{C}$:
    - $\varphi(u_1 + \lambda u_2, v) = \varphi(u_1, v) + \lambda\varphi(u_2, v)$ (linéarité à gauche).
    - $\varphi(u, v_1 + \lambda v_2) = \varphi(u, v_1) + \bar{\lambda}\varphi(u, v_2)$ (semi-linéarité à droite).
    - Une forme sesquilinéaire $\varphi$ est dite **hermitienne** (ou à symétrie hermitienne) si $\forall x, y \in E, \varphi(x, y) = \overline{\varphi(y, x)}$.

### Propriétés Clés

- **Nullité**: Pour toute forme bilinéaire ou sesquilinéaire $\varphi$, $\varphi(x, 0_E) = \varphi(0_E, y) = 0$ pour tous $x, y \in E$.
- **Réalité de la forme quadratique**: Si $\varphi$ est une forme hermitienne, alors $\varphi(x, x) = \overline{\varphi(x, x)}$, donc $\varphi(x, x) \in \mathbb{R}$ pour tout $x \in E$.
- **Représentation matricielle**: Soit $\mathcal{B} = (e_1, \dots, e_n)$ une base de $E$. Une forme $\varphi$ est entièrement déterminée par la **matrice de Gram** $G = (\varphi(e_i, e_j))_{1 \le i,j \le n}$ dans cette base. Si $X$ et $Y$ sont les vecteurs colonnes des coordonnées de $x$ et $y$ dans $\mathcal{B}$:
  - Cas bilinéaire: $\varphi(x, y) = {}^tX G Y$.
  - Cas sesquilinéaire: $\varphi(x, y) = {}^tX G \bar{Y}$.
- La forme bilinéaire $\varphi$ est symétrique si et seulement si sa matrice de Gram dans n'importe quelle base est symétrique ($G = {}^tG$).
- La forme sesquilinéaire $\varphi$ est hermitienne si et seulement si sa matrice de Gram dans n'importe quelle base est hermitienne ($G = \overline{{}^tG} =: G^*$).

### Exemples

**Exemple 1 : Forme bilinéaire symétrique sur $\mathbb{R}^n$**
Soit $E = \mathbb{R}^n$ et $S \in M_n(\mathbb{R})$ une matrice symétrique. L'application $\varphi(X, Y) = {}^tX S Y$ est une forme bilinéaire symétrique. Le cas $S=I_n$ donne le produit scalaire canonique $\varphi(X, Y) = \sum_{i=1}^n x_i y_i$.

**Exemple 2 : Forme sesquilinéaire hermitienne sur $\mathbb{C}^n$**
Soit $E = \mathbb{C}^n$. L'application $\varphi(X, Y) = \sum_{i=1}^n x_i \bar{y}_i$ est une forme sesquilinéaire hermitienne. Sa représentation matricielle dans la base canonique est $\varphi(X, Y) = {}^tX \bar{Y} = {}^tX I_n \bar{Y}$.

**Exemple 3 : Forme bilinéaire sur un espace de polynômes**
Soit $E = \mathbb{R}_n[X]$. L'application $\varphi(P, Q) = \int_{-1}^{1} P(t)Q(t) dt$ est une forme bilinéaire symétrique. La linéarité découle de la linéarité de l'intégrale.

### Contre-exemples

**Contre-exemple 1 : Forme non symétrique**
Sur $E = \mathbb{R}^2$, soit $\varphi(x, y) = x_1 y_2 - x_2 y_1$. C'est une forme bilinéaire (le déterminant). Elle n'est pas symétrique, mais antisymétrique: $\varphi(y, x) = y_1 x_2 - y_2 x_1 = -\varphi(x, y)$.

**Contre-exemple 2 : Application non bilinéaire**
Sur $E = \mathbb{R}$, $\varphi(x, y) = x^2 y$ n'est pas bilinéaire car elle n'est pas linéaire en $x$. Par exemple, $\varphi(2x, y) = (2x)^2 y = 4x^2y = 4\varphi(x,y) \neq 2\varphi(x,y)$.

### Concepts Connexes

- **Forme quadratique**: Associée à une forme bilinéaire symétrique $\varphi$, c'est l'application $q: E \to \mathbb{K}$ définie par $q(x) = \varphi(x, x)$.
- **Dualité**: Les formes bilinéaires non-dégénérées induisent un isomorphisme entre $E$ et son dual $E^*$.

---

## Concept 2: Espaces Euclidiens et Hermitiens

### Prérequis

- Formes bilinéaires et sesquilinéaires.
- Notion de positivité et de définie positivité.

### Définition

Soit $\varphi$ une forme sur un $\mathbb{K}$-espace vectoriel $E$ de dimension finie.

- $\varphi$ est dite **positive** si $\forall x \in E, \varphi(x, x) \ge 0$. (Note: pour une forme hermitienne, $\varphi(x,x)$ est toujours réel).
- $\varphi$ est dite **définie** si $\forall x \in E, \varphi(x, x) = 0 \iff x = 0_E$.

Un **produit scalaire** est une forme qui est:

- Sur un $\mathbb{R}$-espace vectoriel $E$: bilinéaire, symétrique, et définie positive. Un tel espace $(E, \varphi)$ est appelé **espace euclidien**.
- Sur un $\mathbb{C}$-espace vectoriel $E$: sesquilinéaire, hermitienne, et définie positive. Un tel espace $(E, \varphi)$ est appelé **espace hermitien**.

On note souvent le produit scalaire $\langle x, y \rangle$ au lieu de $\varphi(x, y)$.

### Propriétés Clés

- **Inégalité de Cauchy-Schwarz**: Pour tout $x, y \in E$, $|\langle x, y \rangle| \le \sqrt{\langle x, x \rangle} \sqrt{\langle y, y \rangle}$. Il y a égalité si et seulement si $x$ et $y$ sont colinéaires.

  _Preuve (cas complexe)_: Soit $x, y \in E$. Si $y=0_E$, l'inégalité est triviale. Sinon, pour tout $\lambda \in \mathbb{C}$, on a $\langle x - \lambda y, x - \lambda y \rangle \ge 0$. En développant, on obtient $\langle x, x \rangle - \lambda \langle y, x \rangle - \bar{\lambda} \langle x, y \rangle + |\lambda|^2 \langle y, y \rangle \ge 0$. En choisissant $\lambda = \frac{\langle x, y \rangle}{\langle y, y \rangle}$, on obtient $\langle x, x \rangle - \frac{|\langle x, y \rangle|^2}{\langle y, y \rangle} \ge 0$, ce qui donne $|\langle x, y \rangle|^2 \le \langle x, x \rangle \langle y, y \rangle$. L'égalité a lieu si $\langle x - \lambda y, x - \lambda y \rangle = 0$, soit $x=\lambda y$, ce qui signifie que $x$ et $y$ sont colinéaires.

- **Norme induite**: Tout produit scalaire induit une norme sur $E$ par la formule $\|x\| = \sqrt{\langle x, x \rangle}$.
- L'existence d'un produit scalaire sur un espace de dimension finie garantit l'existence d'une base orthonormée (voir Gram-Schmidt).

### Exemples

**Exemple 1 : Espace euclidien canonique**
$(\mathbb{R}^n, \langle \cdot, \cdot \rangle)$ avec $\langle x, y \rangle = \sum_{i=1}^n x_i y_i$ est un espace euclidien. La forme est bilinéaire, symétrique. Elle est définie positive car $\langle x, x \rangle = \sum x_i^2 \ge 0$, et $\sum x_i^2 = 0 \iff \forall i, x_i=0$.

**Exemple 2 : Espace hermitien canonique**
$(\mathbb{C}^n, \langle \cdot, \cdot \rangle)$ avec $\langle x, y \rangle = \sum_{i=1}^n x_i \bar{y}_i$ est un espace hermitien. La forme est sesquilinéaire, hermitienne. Elle est définie positive car $\langle x, x \rangle = \sum x_i \bar{x_i} = \sum |x_i|^2 \ge 0$, et $\sum |x_i|^2 = 0 \iff \forall i, x_i=0$.

**Exemple 3 : Espace de polynômes trigonométriques**
Soit $E = \mathcal{T}_n = \text{Vect}\{t \mapsto e^{ikt} : k \in \{-n, \dots, n\}\}$ sur $\mathbb{C}$. L'application $\langle P, Q \rangle = \frac{1}{2\pi} \int_0^{2\pi} P(t)\overline{Q(t)}dt$ définit un produit scalaire hermitien. La positivité est claire, et $\int |P(t)|^2 dt = 0$ pour un polynôme trigonométrique implique $P=0$.

### Contre-exemples

**Contre-exemple 1 : Forme non définie**
Sur $E=\mathbb{R}^2$, $\varphi(x, y) = x_1 y_1$. C'est une forme bilinéaire symétrique positive, mais non définie. En effet, $\varphi((0, 1), (0, 1)) = 0$ mais $(0, 1) \neq (0, 0)$. Cet espace n'est donc pas euclidien pour cette forme.

**Contre-exemple 2 : Forme non positive**
Sur $E=\mathbb{R}^2$, la forme de Minkowski $\varphi(x, y) = x_1 y_1 - x_2 y_2$. Elle est bilinéaire et symétrique, mais pas positive. Par exemple, $\varphi((0, 1), (0, 1)) = -1 < 0$.

### Concepts Connexes

- **Espace préhilbertien**: Généralisation aux espaces de dimension infinie. Un espace préhilbertien est un espace vectoriel normé dont la norme est induite par un produit scalaire.
- **Espace de Hilbert**: Un espace préhilbertien qui est complet pour la norme induite. Les espaces euclidiens et hermitiens sont des cas particuliers d'espaces de Hilbert de dimension finie.

---

## Concept 3: Norme, Orthogonalité et Identités Remarquables

### Prérequis

- Espaces euclidiens et hermitiens.
- Définition d'une norme.

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien.

- La **norme** associée au produit scalaire est l'application $\| \cdot \| : E \to \mathbb{R}^+$ définie par $\|x\| = \sqrt{\langle x, x \rangle}$.
- Deux vecteurs $x, y \in E$ sont dits **orthogonaux** si $\langle x, y \rangle = 0$. On note $x \perp y$.
- Une famille de vecteurs $(v_i)_{i \in I}$ est dite **orthogonale** si ses vecteurs sont deux à deux orthogonaux. Elle est **orthonormée** si elle est orthogonale et que de plus $\|v_i\|=1$ pour tout $i \in I$.

### Propriétés Clés

- **Propriétés de la norme**: L'application $\| \cdot \|$ est une norme.

  1.  $\|x\| = 0 \iff x = 0_E$ (découle de la définie positivité).
  2.  $\|\lambda x\| = |\lambda| \|x\|$ (découle de la linéarité/semi-linéarité).
  3.  $\|x+y\| \le \|x\| + \|y\|$ (inégalité triangulaire, démontrée via Cauchy-Schwarz).

- **Théorème de Pythagore**: Si $(v_1, \dots, v_n)$ est une famille orthogonale, alors $\|\sum_{i=1}^n v_i\|^2 = \sum_{i=1}^n \|v_i\|^2$.
  _Preuve_: $\|\sum_i v_i\|^2 = \langle \sum_i v_i, \sum_j v_j \rangle = \sum_{i,j} \langle v_i, v_j \rangle$. Comme $\langle v_i, v_j \rangle = 0$ si $i \neq j$, la somme se réduit à $\sum_i \langle v_i, v_i \rangle = \sum_i \|v_i\|^2$.

- **Identités de polarisation**: Le produit scalaire peut être entièrement reconstitué à partir de la norme.

  - Cas euclidien: $\langle x, y \rangle = \frac{1}{2}(\|x + y\|^2 - \|x\|^2 - \|y\|^2) = \frac{1}{4}(\|x+y\|^2 - \|x-y\|^2)$.
  - Cas hermitien: $\langle x, y \rangle = \frac{1}{4}(\|x + y\|^2 - \|x - y\|^2 + i(\|x + iy\|^2 - \|x - iy\|^2))$.

- **Identité du parallélogramme**: Pour tous $x, y \in E$, $\|x + y\|^2 + \|x - y\|^2 = 2(\|x\|^2 + \|y\|^2)$. Cette identité caractérise les normes issues d'un produit scalaire (Théorème de Fréchet-von Neumann-Jordan).

### Exemples

**Exemple 1 : Orthogonalité dans $\mathbb{R}^3$**
Dans $\mathbb{R}^3$ avec le produit scalaire usuel, les vecteurs $x=(1, 1, -2)$ et $y=(1, 1, 1)$ sont orthogonaux car $\langle x, y \rangle = 1 \cdot 1 + 1 \cdot 1 + (-2) \cdot 1 = 0$.

**Exemple 2 : Théorème de Pythagore dans $\mathbb{C}^2$**
Soit $v_1 = (1, i)$ et $v_2 = (1, -i)$ dans $\mathbb{C}^2$ muni du produit scalaire canonique. $\langle v_1, v_2 \rangle = 1 \cdot \bar{1} + i \cdot \overline{(-i)} = 1 + i \cdot i = 1 - 1 = 0$. Ils sont orthogonaux.
$\|v_1\|^2 = |1|^2+|i|^2 = 2$. $\|v_2\|^2 = |1|^2+|-i|^2 = 2$.
$v_1+v_2 = (2, 0)$. $\|v_1+v_2\|^2 = |2|^2+|0|^2=4$.
On vérifie bien $\|v_1+v_2\|^2 = \|v_1\|^2 + \|v_2\|^2$.

**Exemple 3 : Polarisation dans $\mathbb{R}^2$**
Soit $x=(1,0)$ et $y=(2,1)$. $\|x\|^2=1, \|y\|^2=5$. $x+y=(3,1)$, $\|x+y\|^2=10$.
$\langle x, y \rangle = 1 \cdot 2 + 0 \cdot 1 = 2$.
Formule de polarisation : $\frac{1}{2}(10-1-5) = \frac{4}{2} = 2$.

### Contre-exemples

**Contre-exemple 1 : Famille orthogonale non libre (cas non défini)**
Dans l'espace de l'exemple précédent avec la forme $\varphi(x, y) = x_1 y_1$ sur $\mathbb{R}^2$. Soit $x=(1,0)$ et $y=(0,1)$. On a $\varphi(x,y)=0$. La famille $(x,y)$ est orthogonale mais elle n'est pas libre pour cette forme car y est dans le "noyau" de la forme. Une famille orthogonale de vecteurs non nuls est libre seulement si la forme est définie.

**Contre-exemple 2 : Norme ne vérifiant pas l'identité du parallélogramme**
Considérons $\mathbb{R}^2$ avec la norme $\|x\|_\infty = \max(|x_1|, |x_2|)$. Soit $x=(1,0)$ et $y=(0,1)$.
$\|x\|_\infty=1, \|y\|_\infty=1$.
$x+y=(1,1) \implies \|x+y\|_\infty=1$.
$x-y=(1,-1) \implies \|x-y\|_\infty=1$.
$\|x+y\|_\infty^2 + \|x-y\|_\infty^2 = 1^2+1^2=2$.
$2(\|x\|_\infty^2 + \|y\|_\infty^2) = 2(1^2+1^2)=4$.
L'identité n'est pas vérifiée, donc cette norme ne dérive pas d'un produit scalaire.

### Concepts Connexes

- **Géométrie euclidienne**: Les notions de longueur, angle ($\cos\theta = \frac{\langle x, y \rangle}{\|x\|\|y\|}$) et orthogonalité sont fondamentales.
- **Analyse de Fourier**: Le développement de fonctions en séries de Fourier est une projection sur une base hilbertienne orthogonale (les sinus et cosinus, ou les exponentielles complexes).

---

## Concept 4: Bases Orthonormées et Procédé de Gram-Schmidt

### Prérequis

- Espaces euclidiens et hermitiens.
- Notion de base d'un espace vectoriel.
- Orthogonalité.

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien de dimension $n$.

- Une base $\mathcal{B} = (e_1, \dots, e_n)$ de $E$ est dite **orthonormée** (ou orthonormale) si $\langle e_i, e_j \rangle = \delta_{ij}$ (symbole de Kronecker).
- La **matrice de Gram** d'une famille de vecteurs $(v_1, \dots, v_k)$ est la matrice $G$ de coefficients $G_{ij} = \langle v_i, v_j \rangle$. Une base est orthonormée si et seulement si sa matrice de Gram est la matrice identité $I_n$.

### Propriétés Clés

- **Coordonnées dans une base orthonormée**: Si $\mathcal{B}=(e_1, \dots, e_n)$ est une base orthonormée, alors pour tout $x \in E$, on a la décomposition $x = \sum_{i=1}^n \langle x, e_i \rangle e_i$. Les coordonnées de $x$ sont simplement les produits scalaires de $x$ avec les vecteurs de base.
- **Expression du produit scalaire et de la norme**: Si $x = \sum x_i e_i$ et $y = \sum y_i e_i$ :
  - Cas euclidien: $\langle x, y \rangle = \sum_{i=1}^n x_i y_i$.
  - Cas hermitien: $\langle x, y \rangle = \sum_{i=1}^n x_i \bar{y}_i$.
  - Dans les deux cas: $\|x\|^2 = \sum_{i=1}^n |x_i|^2$ (**Identité de Parseval**).
- **Existence**: Tout espace euclidien ou hermitien de dimension finie admet une base orthonormée. Ceci est prouvé constructivement par le **procédé d'orthonormalisation de Gram-Schmidt**.

**Algorithme de Gram-Schmidt**:
Soit $(v_1, \dots, v_n)$ une base quelconque de $E$. On construit une base orthonormée $(e_1, \dots, e_n)$ telle que pour tout $k \in \{1, \dots, n\}$, $\text{Vect}(e_1, \dots, e_k) = \text{Vect}(v_1, \dots, v_k)$.

1.  **Initialisation**: $e'_1 = v_1$, puis $e_1 = \frac{e'_1}{\|e'_1\|}$.
2.  **Itération $k$**: En supposant $(e_1, \dots, e_{k-1})$ construits, on définit:
    $$ e'_k = v_k - \sum_{j=1}^{k-1} \langle v*k, e_j \rangle e_j $$
    Ce vecteur $e'_k$ est orthogonal à $\text{Vect}(e_1, \dots, e*{k-1})$. Il est non nul car $v_k \notin \text{Vect}(v_1, \dots, v_{k-1}) = \text{Vect}(e_1, \dots, e_{k-1})$.
    On normalise alors : $e_k = \frac{e'_k}{\|e'_k\|}$.

### Exemples

**Exemple 1 : Base canonique de $\mathbb{R}^n$**
La base canonique $(e_1, \dots, e_n)$ de $\mathbb{R}^n$ est orthonormée pour le produit scalaire usuel.

**Exemple 2 : Gram-Schmidt dans $\mathbb{R}^3$**
Soit $E=\mathbb{R}^3$ avec le produit scalaire usuel. Partons de la base $v_1=(1,1,0)$, $v_2=(1,0,1)$, $v_3=(0,1,1)$.

- $k=1$: $e'_1 = v_1 = (1,1,0)$. $\|e'_1\|=\sqrt{2}$. $e_1 = \frac{1}{\sqrt{2}}(1,1,0)$.
- $k=2$: $\langle v_2, e_1 \rangle = \frac{1}{\sqrt{2}}(1 \cdot 1 + 0 \cdot 1 + 1 \cdot 0) = \frac{1}{\sqrt{2}}$.
  $e'_2 = v_2 - \langle v_2, e_1 \rangle e_1 = (1,0,1) - \frac{1}{\sqrt{2}} \cdot \frac{1}{\sqrt{2}}(1,1,0) = (1,0,1) - (\frac{1}{2},\frac{1}{2},0) = (\frac{1}{2}, -\frac{1}{2}, 1)$.
  $\|e'_2\| = \sqrt{\frac{1}{4}+\frac{1}{4}+1} = \sqrt{\frac{3}{2}}$.
  $e_2 = \sqrt{\frac{2}{3}}(\frac{1}{2}, -\frac{1}{2}, 1) = \frac{1}{\sqrt{6}}(1, -1, 2)$.
- $k=3$: On calcule $\langle v_3, e_1 \rangle = \frac{1}{\sqrt{2}}$ et $\langle v_3, e_2 \rangle = \frac{1}{\sqrt{6}}$.
  $e'_3 = v_3 - \langle v_3, e_1 \rangle e_1 - \langle v_3, e_2 \rangle e_2 = (0,1,1) - \frac{1}{2}(1,1,0) - \frac{1}{6}(1,-1,2) = (-\frac{2}{3}, \frac{2}{3}, \frac{2}{3})$.
  $\|e'_3\| = \sqrt{3 \cdot \frac{4}{9}} = \frac{2}{\sqrt{3}}$.
  $e_3 = \frac{\sqrt{3}}{2} (-\frac{2}{3}, \frac{2}{3}, \frac{2}{3}) = \frac{1}{\sqrt{3}}(-1,1,1)$.
  La base $(e_1, e_2, e_3)$ est orthonormée.

**Exemple 3 : Polynômes de Legendre**
Sur $E = \mathbb{R}_n[X]$ avec $\langle P, Q \rangle = \int_{-1}^1 P(t)Q(t) dt$, l'application de Gram-Schmidt à la base canonique $(1, X, X^2, \dots)$ produit (à des facteurs de normalisation près) les polynômes de Legendre.

### Contre-exemples

**Contre-exemple 1 : Base non orthonormée**
Dans $\mathbb{R}^2$, la base canonique est orthonormée pour le produit scalaire usuel. Mais pour le produit scalaire $\langle x, y \rangle = 2x_1y_1+x_2y_2$, elle ne l'est pas : $\|e_1\|^2 = 2 \neq 1$.

**Contre-exemple 2 : Dépendance de l'ordre dans Gram-Schmidt**
Le résultat de l'algorithme de Gram-Schmidt dépend de l'ordre des vecteurs dans la base de départ. Si dans l'Exemple 2 on avait commencé avec $v_2, v_1, v_3$, la base orthonormée obtenue aurait été différente, bien que générant les mêmes sous-espaces intermédiaires (dans un ordre différent).

### Concepts Connexes

- **Décomposition QR**: L'algorithme de Gram-Schmidt est la base de la décomposition QR d'une matrice, une technique fondamentale en algèbre linéaire numérique.
- **Isométries**: Les applications linéaires qui préservent le produit scalaire (et donc la structure géométrique) sont représentées dans une base orthonormée par une matrice orthogonale (cas réel) ou unitaire (cas complexe).

---

## Concept 5: Projection Orthogonale et Distance à un Sous-Espace

### Prérequis

- Espaces euclidiens et hermitiens.
- Sous-espaces vectoriels.
- Bases orthonormées.

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien et $A \subset E$ une partie de $E$.

- L'**orthogonal de A**, noté $A^\perp$, est l'ensemble $A^\perp = \{x \in E \mid \forall a \in A, \langle x, a \rangle = 0\}$. C'est toujours un sous-espace vectoriel de $E$.
- Si $F$ est un sous-espace vectoriel de $E$, alors $F^\perp$ est le **supplémentaire orthogonal** de $F$. On a la décomposition en somme directe $E = F \oplus F^\perp$.
- Tout vecteur $x \in E$ se décompose de manière unique en $x = x_F + x_{F^\perp}$ avec $x_F \in F$ et $x_{F^\perp} \in F^\perp$.
- L'application $P_F: E \to E$ qui à $x$ associe $x_F$ est appelée **projection orthogonale** sur $F$.

### Propriétés Clés

- **Propriétés du projecteur orthogonal**: $P_F$ est un endomorphisme qui vérifie $P_F \circ P_F = P_F$ (c'est un projecteur), avec $\text{Im}(P_F) = F$ et $\text{Ker}(P_F) = F^\perp$.
- **Formule de calcul**: Si $(e_1, \dots, e_p)$ est une base orthonormée de $F$, alors la projection orthogonale de $x$ sur $F$ est donnée par:
  $$ P*F(x) = \sum*{i=1}^p \langle x, e_i \rangle e_i $$
- **Théorème de la meilleure approximation**: Pour tout $x \in E$, le projeté orthogonal $P_F(x)$ est l'unique élément de $F$ qui minimise la distance à $x$. C'est-à-dire :
  $$ d(x, F) := \inf\_{y \in F} \|x - y\| = \|x - P_F(x)\| $$

  _Preuve_: Soit $y \in F$. On a $x - y = (x - P_F(x)) + (P_F(x) - y)$. Le premier terme, $x - P_F(x)$, est dans $F^\perp$ par définition. Le second, $P_F(x) - y$, est dans $F$ car $F$ est un sous-espace vectoriel. Les deux termes sont donc orthogonaux. Par le théorème de Pythagore :
  $$ \|x - y\|^2 = \|x - P_F(x)\|^2 + \|P_F(x) - y\|^2 $$
  Cette quantité est clairement minimisée quand $\|P_F(x) - y\|^2 = 0$, c'est-à-dire quand $y = P_F(x)$. Le minimum est alors $\|x - P_F(x)\|$.

### Exemples

**Exemple 1 : Projection sur une droite**
Dans $\mathbb{R}^n$, soit $F = \text{Vect}(u)$ une droite dirigée par un vecteur unitaire $u$. Une base orthonormée de $F$ est $(u)$. La projection d'un vecteur $x$ sur $F$ est $P_F(x) = \langle x, u \rangle u$.

**Exemple 2 : Calcul de distance dans $\mathbb{R}^3$**
Soit $E=\mathbb{R}^3$ et $F = \{(x,y,z) \in \mathbb{R}^3 \mid x+y+z=0\}$. Calculons $d(v, F)$ pour $v=(1,2,1)$.
Le vecteur $n=(1,1,1)$ est normal au plan $F$, donc $F^\perp = \text{Vect}(n)$.
La projection de $v$ sur $F^\perp$ est $P_{F^\perp}(v) = \frac{\langle v, n \rangle}{\|n\|^2} n = \frac{1+2+1}{1^2+1^2+1^2}(1,1,1) = \frac{4}{3}(1,1,1) = (\frac{4}{3}, \frac{4}{3}, \frac{4}{3})$.
La distance est la norme de ce vecteur projeté : $d(v, F) = \|P_{F^\perp}(v)\| = \|v - P_F(v)\| = \sqrt{(\frac{4}{3})^2 \cdot 3} = \frac{4}{\sqrt{3}} = \frac{4\sqrt{3}}{3}$.

**Exemple 3 : Projection dans un espace de polynômes**
Dans $E=\mathbb{R}_2[X]$ avec $\langle P, Q \rangle = \int_{-1}^1 P(t)Q(t)dt$, soit $F=\mathbb{R}_1[X]$. On cherche le polynôme de degré au plus 1 qui approxime le mieux $P(X)=X^2$.
Une base orthogonale (non normée) de $F$ est $(1, X)$.
$P_F(X^2) = \frac{\langle X^2, 1 \rangle}{\|1\|^2} \cdot 1 + \frac{\langle X^2, X \rangle}{\|X\|^2} \cdot X$.
$\langle X^2, 1 \rangle = \int_{-1}^1 t^2 dt = \frac{2}{3}$. $\|1\|^2 = \int_{-1}^1 1 dt = 2$.
$\langle X^2, X \rangle = \int_{-1}^1 t^3 dt = 0$.
Donc $P_F(X^2) = \frac{2/3}{2} \cdot 1 + 0 = \frac{1}{3}$. C'est la meilleure approximation de $X^2$ par un polynôme de degré 1 sur $[-1,1]$ au sens des moindres carrés.

### Contre-exemples

**Contre-exemple 1 : Projection non orthogonale**
Dans $\mathbb{R}^2$, la projection $p(x,y) = (x+y, 0)$ sur l'axe des abscisses parallèlement à la droite d'équation $y=-x$ n'est pas une projection orthogonale pour le produit scalaire usuel. $\text{Ker}(p)=\text{Vect}((1,-1))$ n'est pas orthogonal à $\text{Im}(p)=\text{Vect}((1,0))$.

**Contre-exemple 2 : L'orthogonalité dépend du produit scalaire**
Dans $\mathbb{R}^2$, soit $F=\text{Vect}((1,0))$. Pour le produit scalaire usuel, $F^\perp = \text{Vect}((0,1))$. Pour le produit scalaire $\langle x, y \rangle = 2x_1y_1 + x_2y_2$, un vecteur $v=(v_1, v_2)$ est dans $F^\perp$ si $\langle v, (1,0) \rangle = 2v_1 \cdot 1 + v_2 \cdot 0 = 2v_1 = 0$, donc $v_1=0$. $F^\perp$ est toujours $\text{Vect}((0,1))$. Mais si $F=\text{Vect}((1,1))$, $F^\perp$ change avec le produit scalaire.

### Concepts Connexes

- **Moindres carrés**: Le problème de la régression linéaire est un problème de meilleure approximation, résolu par projection orthogonale sur l'espace des solutions possibles.
- **Analyse de Fourier**: Les coefficients de Fourier d'une fonction sont les coordonnées de sa projection orthogonale sur le sous-espace engendré par les fonctions de base (sinus, cosinus).

---

## Concept 6: Endomorphisme Adjoint

### Prérequis

- Espaces euclidiens et hermitiens.
- Endomorphismes (applications linéaires d'un espace dans lui-même).
- Représentation matricielle des endomorphismes.

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien de dimension finie et $f \in \mathcal{L}(E)$ un endomorphisme.
L'**adjoint** de $f$, noté $f^*$, est l'unique endomorphisme de $E$ vérifiant :
$$ \forall x, y \in E, \quad \langle f(x), y \rangle = \langle x, f^\*(y) \rangle $$

_Preuve d'existence et unicité_: L'unicité est directe: si $f_1^*$ et $f_2^*$ sont deux adjoints, alors $\langle x, (f_1^*-f_2^*)(y) \rangle = 0$ pour tous $x,y$. En choisissant $x=(f_1^*-f_2^*)(y)$, on obtient $\|(f_1^*-f_2^*)(y)\|^2=0$, donc $(f_1^*-f_2^*)(y)=0$ pour tout $y$, d'où $f_1^*=f_2^*$. Pour l'existence, on peut utiliser le théorème de Riesz (pour chaque $y$, l'application $x \mapsto \langle f(x),y \rangle$ est une forme linéaire, donc représentable par un unique vecteur, que l'on note $f^*(y)$) ou une construction matricielle.

### Propriétés Clés

- **Propriétés de l'adjonction**:
  - $(f+g)^* = f^*+g^*$
  - $(\lambda f)^* = \bar{\lambda} f^*$
  - $(f \circ g)^* = g^* \circ f^*$
  - $(f^*)^* = f$
- **Représentation matricielle**: Dans une base **orthonormée** $\mathcal{B}$:
  - Cas euclidien: $\text{Mat}_{\mathcal{B}}(f^*) = {}^t\text{Mat}_{\mathcal{B}}(f)$.
  - Cas hermitien: $\text{Mat}_{\mathcal{B}}(f^*) = \overline{{}^t\text{Mat}_{\mathcal{B}}(f)} = (\text{Mat}_{\mathcal{B}}(f))^*$.
- **Relation Noyau-Image**:

  - $\text{Ker}(f^*) = (\text{Im}(f))^\perp$
  - $\text{Im}(f^*) = (\text{Ker}(f))^\perp$
  - Cela implique $\text{Ker}(f) = (\text{Im}(f^*))^\perp$ et $\text{Im}(f) = (\text{Ker}(f^*))^\perp$.

  _Preuve de $\text{Ker}(f^_) = (\text{Im}(f))^\perp$*:
    $y \in \text{Ker}(f^*) \iff f^*(y) = 0 \iff \forall x \in E, \langle x, f^*(y) \rangle = 0 \iff \forall x \in E, \langle f(x), y \rangle = 0 \iff y \in (\text{Im}(f))^\perp$.

- **Classification des endomorphismes**:
  - **Auto-adjoint** (symétrique si réel, hermitien si complexe): $f = f^*$.
  - **Unitaire** (orthogonal si réel): $f$ est un isomorphisme et $f^{-1} = f^*$. Ceci est équivalent à ce que $f$ préserve le produit scalaire : $\langle f(x), f(y) \rangle = \langle x, y \rangle$.
  - **Normal**: $f \circ f^* = f^* \circ f$. Les endomorphismes auto-adjoints et unitaires sont normaux.

### Exemples

**Exemple 1 : Adjoint d'une projection orthogonale**
Soit $P_F$ la projection orthogonale sur un sous-espace $F$. Pour tous $x,y$, $\langle P_F(x), y \rangle = \langle P_F(x), P_F(y) + (y-P_F(y)) \rangle = \langle P_F(x), P_F(y) \rangle$. De même $\langle x, P_F(y) \rangle = \langle P_F(x) + (x-P_F(x)), P_F(y) \rangle = \langle P_F(x), P_F(y) \rangle$. Donc $\langle P_F(x), y \rangle = \langle x, P_F(y) \rangle$, ce qui montre que $P_F$ est auto-adjoint: $P_F^* = P_F$.

**Exemple 2 : Adjoint d'une rotation dans $\mathbb{R}^2$**
Soit $f$ la rotation d'angle $\theta$ dans $\mathbb{R}^2$. Sa matrice dans la base canonique (qui est orthonormée) est $A = \begin{pmatrix} \cos\theta & -\sin\theta \\ \sin\theta & \cos\theta \end{pmatrix}$. L'adjoint $f^*$ a pour matrice ${}^tA = \begin{pmatrix} \cos\theta & \sin\theta \\ -\sin\theta & \cos\theta \end{pmatrix} = \begin{pmatrix} \cos(-\theta) & -\sin(-\theta) \\ \sin(-\theta) & \cos(-\theta) \end{pmatrix}$. C'est la rotation d'angle $-\theta$, qui est l'inverse de $f$. Donc $f$ est un endomorphisme orthogonal.

**Exemple 3 : Endomorphisme normal non auto-adjoint ni unitaire**
Dans $\mathbb{C}^2$, soit $f$ l'endomorphisme de matrice $A = \begin{pmatrix} 1 & i \\ i & 1 \end{pmatrix}$ dans la base canonique. $A^* = \begin{pmatrix} 1 & -i \\ -i & 1 \end{pmatrix}$. $A$ n'est ni hermitien ($A \neq A^*$) ni unitaire ($A A^* = \begin{pmatrix} 2 & 0 \\ 0 & 2 \end{pmatrix} \neq I$).
Mais $A A^* = 2I$ et $A^* A = 2I$, donc $A A^* = A^* A$. L'endomorphisme est normal.

### Contre-exemples

**Contre-exemple 1 : La matrice de l'adjoint dépend de la base**
Dans $\mathbb{R}^2$, soit $f(x,y)=(y,x)$. Sa matrice dans la base canonique est $A=\begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix}$. Comme $A$ est symétrique et la base est orthonormée, $f$ est auto-adjoint.
Considérons la base $\mathcal{B}'=((1,0), (1,1))$. La matrice de $f$ dans cette base est $B = \begin{pmatrix} -1 & -1 \\ 1 & 2 \end{pmatrix}$, qui n'est pas symétrique. La formule $\text{Mat}(f^*) = {}^t\text{Mat}(f)$ n'est valable que dans une base orthonormée.

**Contre-exemple 2 : Endomorphisme non normal**
Dans $\mathbb{R}^2$, soit $f$ de matrice $A = \begin{pmatrix} 1 & 1 \\ 0 & 1 \end{pmatrix}$. Alors $A^* = {}^tA = \begin{pmatrix} 1 & 0 \\ 1 & 1 \end{pmatrix}$.
$A A^* = \begin{pmatrix} 2 & 1 \\ 1 & 1 \end{pmatrix}$ et $A^* A = \begin{pmatrix} 1 & 1 \\ 1 & 2 \end{pmatrix}$. $A A^* \neq A^* A$, donc $f$ n'est pas normal.

### Concepts Connexes

- **Théorème spectral**: C'est le résultat principal concernant les endomorphismes normaux. Il stipule qu'un endomorphisme est normal si et seulement s'il est diagonalisable dans une base orthonormée. Les valeurs propres d'un endomorphisme auto-adjoint sont réelles, celles d'un unitaire sont de module 1.

---

## Concept 7: Théorème de Représentation de Riesz

### Prérequis

- Espaces euclidiens et hermitiens.
- Espace dual $E^* = \mathcal{L}(E, \mathbb{K})$ (espace des formes linéaires sur $E$).
- Théorème du rang.

### Définition

Soit $E$ un $\mathbb{K}$-espace vectoriel. L'**espace dual** de $E$, noté $E^*$, est l'espace vectoriel des formes linéaires sur $E$, c'est-à-dire des applications linéaires de $E$ dans $\mathbb{K}$. Si $E$ est de dimension finie, alors $\dim(E) = \dim(E^*)$.

**Théorème de représentation de Riesz (cas de la dimension finie)**
Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien. Pour toute forme linéaire $l \in E^*$, il existe un unique vecteur $y_l \in E$ tel que:
$$ \forall x \in E, \quad l(x) = \langle x, y_l \rangle $$
De plus, l'application $\Phi: E \to E^*$ définie par $\Phi(y)(x) = \langle x, y \rangle$ est un isomorphisme (anti-linéaire ou semi-linéaire dans le cas hermitien).

### Propriétés Clés

- **Isomorphisme canonique**: Le théorème établit une correspondance canonique (dépendant du produit scalaire) entre un espace et son dual.
- **Construction du vecteur représentant**: Si $(e_1, \dots, e_n)$ est une base orthonormée de $E$, le vecteur $y_l$ représentant la forme $l$ est donné par:
  - Cas euclidien: $y_l = \sum_{i=1}^n l(e_i) e_i$.
  - Cas hermitien: $y_l = \sum_{i=1}^n \overline{l(e_i)} e_i$.

_Preuve (cas euclidien)_:
Soit $l \in E^*$. Posons $y_l = \sum_i l(e_i) e_i$. Pour tout $x = \sum_j x_j e_j \in E$, on a :
$\langle x, y_l \rangle = \langle \sum_j x_j e_j, \sum_i l(e_i) e_i \rangle = \sum_{i,j} x_j l(e_i) \langle e_j, e_i \rangle = \sum_i x_i l(e_i)$.
Par ailleurs, $l(x) = l(\sum_i x_i e_i) = \sum_i x_i l(e_i)$.
On a donc bien $l(x) = \langle x, y_l \rangle$.
L'unicité découle de la non-dégénérescence du produit scalaire : si $\langle x, y_1 \rangle = \langle x, y_2 \rangle$ pour tout $x$, alors $\langle x, y_1-y_2 \rangle=0$, donc $y_1-y_2=0$.

_Preuve via l'isomorphisme $\Phi$_:
L'application $\Phi: E \to E^*$ définie par $y \mapsto (x \mapsto \langle x, y \rangle)$ est linéaire (cas euclidien) ou anti-linéaire (cas hermitien).
Son noyau est $\text{Ker}(\Phi) = \{y \in E \mid \forall x \in E, \langle x, y \rangle = 0\}$. Comme le produit scalaire est non-dégénéré (défini), ce noyau est réduit à $\{0_E\}$.
$\Phi$ est donc injective. Comme $\dim(E) = \dim(E^*)$, le théorème du rang assure que $\Phi$ est un isomorphisme. Chaque $l \in E^*$ a donc un unique antécédent $y_l \in E$.

### Exemples

**Exemple 1 : Dual de $\mathbb{R}^n$**
Toute forme linéaire $l$ sur $\mathbb{R}^n$ est de la forme $l(x) = a_1 x_1 + \dots + a_n x_n$. Pour le produit scalaire usuel, cela s'écrit $l(x) = \langle x, a \rangle$ avec $a=(a_1, \dots, a_n)$. Le vecteur de Riesz est simplement le vecteur des coefficients de la forme linéaire dans la base canonique.

**Exemple 2 : Évaluation de polynômes**
Soit $E = \mathbb{R}_n[X]$ avec $\langle P, Q \rangle = \int_0^1 P(t)Q(t)dt$. Considérons la forme linéaire "évaluation en 0", $l(P) = P(0)$. D'après Riesz, il existe un unique polynôme $Q_0 \in \mathbb{R}_n[X]$ tel que $P(0) = \int_0^1 P(t)Q_0(t)dt$ pour tout $P$. Ce polynôme $Q_0$ (le "noyau de représentation") existe mais n'a pas d'expression simple.

**Exemple 3 : Intégrale de polynômes**
Soit $E = \mathbb{R}_n[X]$ avec le produit scalaire "discret" $\langle \sum a_i X^i, \sum b_i X^i \rangle = \sum a_i b_i$. Soit la forme linéaire $l(P) = \int_0^1 P(t)dt$.
$l(\sum a_i X^i) = \int_0^1 \sum a_i t^i dt = \sum a_i \int_0^1 t^i dt = \sum a_i \frac{1}{i+1}$.
On cherche $Q_0 = \sum b_i X^i$ tel que $l(P) = \langle P, Q_0 \rangle = \sum a_i b_i$. Par identification, on doit avoir $b_i = \frac{1}{i+1}$.
Le polynôme représentant est donc $Q_0(X) = \sum_{i=0}^n \frac{1}{i+1} X^i$.

### Contre-exemples

**Contre-exemple 1 : Importance du produit scalaire**
Le vecteur représentant dépend crucialement du produit scalaire choisi. Pour $l(x_1, x_2) = x_1+x_2$ sur $\mathbb{R}^2$.

- Avec le produit scalaire usuel, $y_l=(1,1)$.
- Avec $\langle x, y \rangle = 2x_1y_1+x_2y_2$, on cherche $y=(y_1, y_2)$ tel que $2x_1y_1+x_2y_2 = x_1+x_2$. On doit avoir $2y_1=1$ et $y_2=1$, donc $y_l=(1/2, 1)$.

**Contre-exemple 2 : Dimension infinie**
Le théorème tel quel ne s'applique pas à tous les espaces de dimension infinie. Dans l'espace $C([0,1])$ des fonctions continues avec la norme sup, l'espace dual est plus "grand". Le théorème de Riesz-Markov-Kakutani généralise ce résultat aux espaces de Hilbert (espaces préhilbertiens complets), où il reste vrai que $E \cong E^*$ pour les formes linéaires _continues_.

### Concepts Connexes

- **Tenseurs et métrique**: Le produit scalaire peut être vu comme un tenseur métrique $g_{ij} = \langle e_i, e_j \rangle$. Le théorème de Riesz décrit comment la métrique est utilisée pour "monter ou descendre les indices", c'est-à-dire transformer un vecteur (tenseur contravariant) en une forme linéaire (tenseur covariant).
- **Analyse fonctionnelle**: Le théorème de Riesz est un pilier de l'analyse fonctionnelle, où il garantit que le dual d'un espace de Hilbert est isométriquement isomorphe à lui-même.
