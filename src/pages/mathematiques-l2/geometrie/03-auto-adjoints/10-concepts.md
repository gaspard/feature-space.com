---
id: 445ea064
type: concepts
order: 10
title: Endomorphismes auto-adjoints - Concepts (A)
tags:
  - endomorphismes
  - auto-adjoints
  - déterminants
  - diagonalisation
  - décomposition polaire
course: Géométrie
courseId: d9494343
chapter: Endomorphismes auto-adjoints
chapterId: 3909aa4c
level: regular
createdAt: '2025-11-26T16:54:55.181Z'
---
# Endomorphismes auto-adjoints

---

## Concept 1: Déterminant d'une matrice et d'un endomorphisme

### Prérequis

-   Espaces vectoriels, bases et dimension.
-   Matrices et applications linéaires.
-   Notions de base sur les permutations (groupe symétrique $S_n$) et la signature d'une permutation.

### Définition

Soit $A = (a_{ij})$ une matrice carrée de taille $n \times n$ à coefficients dans un corps $\mathbb{K}$ (par exemple $\mathbb{R}$ ou $\mathbb{C}$). Son **déterminant**, noté $\det(A)$ ou $|A|$, est le scalaire de $\mathbb{K}$ défini par la formule de Leibniz :

$$

\det(A) = \sum_{\sigma \in S_n} \varepsilon(\sigma) \prod_{i=1}^{n} a_{\sigma(i), i}

$$

où :

-   $S_n$ est l'ensemble de toutes les permutations de l'ensemble $\{1, 2, \dots, n\}$.
-   $\varepsilon(\sigma)$ est la **signature** de la permutation $\sigma$, qui vaut $+1$ si $\sigma$ est un produit d'un nombre pair de transpositions (permutation paire) et $-1$ sinon (permutation impaire).
-   Le produit porte sur les colonnes $i$ de la matrice, en choisissant l'élément de la ligne $\sigma(i)$.

De manière équivalente, le déterminant est l'unique application de $M_n(\mathbb{K})$ dans $\mathbb{K}$ qui est **n-linéaire alternée** par rapport aux colonnes de la matrice et qui vaut 1 pour la matrice identité $I_n$.

Soit $f$ un endomorphisme d'un $\mathbb{K}$-espace vectoriel $E$ de dimension finie $n$. Le **déterminant de $f$**, noté $\det(f)$, est le déterminant de sa matrice dans n'importe quelle base $\mathcal{B}$ de $E$.

$$

\det(f) := \det(\text{Mat}_{\mathcal{B}}(f))

$$

Cette définition est indépendante du choix de la base $\mathcal{B}$.

### Explications Détaillées

La formule de Leibniz peut sembler complexe, mais l'idée est de sommer tous les produits possibles de $n$ coefficients de la matrice, en s'assurant de prendre exactement un coefficient par ligne et un par colonne. Chaque produit est affecté d'un signe $(+1$ ou $-1)$ qui dépend de la "géométrie" de la sélection des coefficients, représentée par la permutation $\sigma$.

Le déterminant a une interprétation géométrique fondamentale en dimension 2 et 3.

-   En dimension 2, la valeur absolue de $\det(v_1, v_2)$ est l'**aire** du parallélogramme formé par les vecteurs $v_1$ et $v_2$.
-   En dimension 3, la valeur absolue de $\det(v_1, v_2, v_3)$ est le **volume** du parallélépipède formé par les vecteurs $v_1, v_2, v_3$.

Plus généralement, pour un endomorphisme $f$, $|\det(f)|$ représente le facteur par lequel les volumes sont multipliés par la transformation $f$.

### Propriétés Clés

Soient $A, B \in M_n(\mathbb{K})$ et $\lambda \in \mathbb{K}$.

-   **Multiplicativité** : $\det(AB) = \det(A)\det(B)$.
-   **Déterminant de l'identité** : $\det(I_n) = 1$.
-   **Caractérisation de l'inversibilité** : Une matrice $A$ est inversible si et seulement si $\det(A) \neq 0$. Si $A$ est inversible, $\det(A^{-1}) = (\det(A))^{-1}$.
-   **Transposition** : $\det({}^tA) = \det(A)$. Cela signifie que toutes les propriétés valables pour les colonnes le sont aussi pour les lignes.
-   **Homogénéité** : $\det(\lambda A) = \lambda^n \det(A)$.
-   **Matrices triangulaires** : Si $A$ est une matrice triangulaire (supérieure ou inférieure), son déterminant est le produit de ses coefficients diagonaux.
-   **Développement par rapport à une ligne/colonne** : Pour tout $j \in \{1,..., n\}$, on a $\det(M) = \sum_{i=1}^n (-1)^{i+j} m_{ij} \Delta_{ij}$, où $\Delta_{ij}$ est le déterminant de la sous-matrice obtenue en supprimant la ligne $i$ et la colonne $j$ (appelé cofacteur).

### Exemples

**Exemple 1 : Matrice 2x2**

Soit $A = \begin{pmatrix} a & b \\ c & d \end{pmatrix}$. Les permutations de $S_2$ sont l'identité $\text{Id}=(1)(2)$ (signature +1) et la transposition $\tau=(1 \ 2)$ (signature -1).

$$

\det(A) = \varepsilon(\text{Id}) a_{11} a_{22} + \varepsilon(\tau) a_{21} a_{12} = (+1)ad + (-1)cb = ad-bc.

$$

Par exemple, $\det \begin{pmatrix} 3 & 1 \\ 2 & 4 \end{pmatrix} = 3 \times 4 - 1 \times 2 = 12 - 2 = 10$.

**Exemple 2 : Matrice 3x3 (Règle de Sarrus)**

Soit $A = \begin{pmatrix} 1 & 2 & 3 \\ 4 & 5 & 6 \\ 7 & 8 & 9 \end{pmatrix}$. La règle de Sarrus est un moyen mnémotechnique :

$$

\begin{vmatrix} 1 & 2 & 3 \\ 4 & 5 & 6 \\ 7 & 8 & 9 \end{vmatrix} = (1 \cdot 5 \cdot 9 + 2 \cdot 6 \cdot 7 + 3 \cdot 4 \cdot 8) - (7 \cdot 5 \cdot 3 + 8 \cdot 6 \cdot 1 + 9 \cdot 4 \cdot 2)

$$

$$

= (45 + 84 + 96) - (105 + 48 + 72) = 225 - 225 = 0.

$$

Puisque le déterminant est nul, la matrice n'est pas inversible.

**Exemple 3 : Développement par rapport à une colonne**

Soit $A = \begin{pmatrix} 2 & 1 & 0 \\ 1 & 3 & 5 \\ -1 & 4 & 2 \end{pmatrix}$. Développons par rapport à la première colonne (j=1) :

$$

\det(A) = \sum_{i=1}^3 (-1)^{i+1} a_{i1} \Delta_{i1}

$$

$$

= (-1)^{1+1} a_{11} \begin{vmatrix} 3 & 5 \\ 4 & 2 \end{vmatrix} + (-1)^{2+1} a_{21} \begin{vmatrix} 1 & 0 \\ 4 & 2 \end{vmatrix} + (-1)^{3+1} a_{31} \begin{vmatrix} 1 & 0 \\ 3 & 5 \end{vmatrix}

$$

$$

= 2 \cdot (3 \cdot 2 - 5 \cdot 4) - 1 \cdot (1 \cdot 2 - 0 \cdot 4) + (-1) \cdot (1 \cdot 5 - 0 \cdot 3)

$$

$$

= 2(6 - 20) - 1(2) - 1(5) = 2(-14) - 2 - 5 = -28 - 7 = -35.

$$

### Contre-exemples

1.  **Non-additivité** : Le déterminant n'est pas linéaire. En général, $\det(A+B) \neq \det(A) + \det(B)$.

    Prenons $A = \begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix}$ et $B = \begin{pmatrix} 0 & 0 \\ 0 & 1 \end{pmatrix}$. Alors $\det(A)=0$ et $\det(B)=0$.

    Mais $A+B = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix} = I_2$, donc $\det(A+B) = 1$.

    Ici, $\det(A+B) = 1 \neq \det(A)+\det(B)=0$.

2.  **Matrices non carrées** : Le concept de déterminant n'est défini que pour les matrices carrées. Une matrice rectangulaire comme $M = \begin{pmatrix} 1 & 2 & 3 \\ 4 & 5 & 6 \end{pmatrix}$ n'a pas de déterminant.

### Concepts Connexes

-   **Polynôme Caractéristique** : Défini comme $\chi_f(\lambda) = \det(f - \lambda \text{Id})$, ses racines sont les valeurs propres de $f$.
-   **Inversibilité d'une matrice** : Une matrice est inversible si et seulement si son déterminant est non nul.
-   **Comatrice et inverse d'une matrice** : La comatrice, formée par les cofacteurs, permet de calculer l'inverse d'une matrice : $A^{-1} = \frac{1}{\det(A)} {}^t\text{com}(A)$.

---

## Concept 2: Valeurs Propres, Vecteurs Propres et Espaces Propres

### Prérequis

-   Espaces vectoriels et sous-espaces vectoriels.
-   Applications linéaires (endomorphismes).
-   Noyau et image d'une application linéaire.

### Définition

Soit $E$ un $\mathbb{K}$-espace vectoriel et $f: E \to E$ un endomorphisme.

-   Un scalaire $\lambda \in \mathbb{K}$ est une **valeur propre** de $f$ s'il existe un vecteur **non nul** $x \in E$ tel que $f(x) = \lambda x$.
-   Un tel vecteur $x$ est appelé **vecteur propre** de $f$ associé à la valeur propre $\lambda$.
-   L'ensemble de tous les vecteurs $x \in E$ tels que $f(x) = \lambda x$ (y compris le vecteur nul) forme un sous-espace vectoriel de $E$, appelé **sous-espace propre** associé à $\lambda$. On le note $E_\lambda(f)$ ou simplement $E_\lambda$.

    $$

    E_\lambda(f) = \{x \in E \mid f(x) = \lambda x \} = \ker(f - \lambda \text{Id}_E)

    $$

### Explications Détaillées

L'idée fondamentale des vecteurs propres est de trouver des directions "privilégiées" pour une transformation linéaire $f$. Un vecteur propre $x$ est un vecteur dont la direction n'est pas modifiée par $f$ : l'image $f(x)$ est simplement une version "étirée" ou "rétrécie" de $x$. Le facteur d'étirement est la valeur propre $\lambda$.

-   Si $\lambda > 1$, les vecteurs dans la direction de $x$ sont étirés.
-   Si $0 < \lambda < 1$, ils sont contractés.
-   Si $\lambda < 0$, ils sont étirés/contractés et leur sens est inversé.
-   Si $\lambda = 1$, les vecteurs propres sont invariants par $f$.
-   Si $\lambda = 0$, les vecteurs propres (non nuls) sont dans le noyau de $f$.

Le sous-espace propre $E_\lambda$ est l'ensemble de tous les vecteurs propres associés à $\lambda$, auquel on ajoute le vecteur nul pour en faire un sous-espace vectoriel.

### Propriétés Clés

-   Un sous-espace propre $E_\lambda(f)$ est un sous-espace vectoriel de $E$.
-   Par définition d'une valeur propre, si $\lambda$ est une valeur propre, alors $\dim(E_\lambda(f)) \ge 1$.
-   Tout sous-espace propre $E_\lambda(f)$ est stable par $f$, c'est-à-dire que si $x \in E_\lambda(f)$, alors $f(x) \in E_\lambda(f)$.
-   **Théorème fondamental** : La somme de sous-espaces propres associés à des valeurs propres *distinctes* est toujours une somme directe. Si $\lambda_1, \dots, \lambda_k$ sont des valeurs propres distinctes, alors $E_{\lambda_1} + \dots + E_{\lambda_k} = E_{\lambda_1} \oplus \dots \oplus E_{\lambda_k}$.

### Exemples

**Exemple 1 : Matrice simple**

Soit $f$ l'endomorphisme de $\mathbb{R}^2$ dont la matrice dans la base canonique est $A = \begin{pmatrix} 4 & -2 \\ 1 & 1 \end{pmatrix}$.

-   Cherchons si $\lambda=2$ est une valeur propre. On résout $f(x)=2x$, soit $Ax=2x$ ou $(A-2I)x=0$.

    $\begin{pmatrix} 2 & -2 \\ 1 & -1 \end{pmatrix} \begin{pmatrix} x_1 \\ x_2 \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \end{pmatrix} \Leftrightarrow x_1 - x_2 = 0$.

    Les vecteurs propres pour $\lambda=2$ sont de la forme $(k, k)$ avec $k \neq 0$. Le sous-espace propre est $E_2 = \text{Vect}\left(\begin{pmatrix} 1 \\ 1 \end{pmatrix}\right)$.

-   Cherchons si $\lambda=3$ est une valeur propre. On résout $(A-3I)x=0$.

    $\begin{pmatrix} 1 & -2 \\ 1 & -2 \end{pmatrix} \begin{pmatrix} x_1 \\ x_2 \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \end{pmatrix} \Leftrightarrow x_1 - 2x_2 = 0$.

    Les vecteurs propres pour $\lambda=3$ sont de la forme $(2k, k)$ avec $k \neq 0$. Le sous-espace propre est $E_3 = \text{Vect}\left(\begin{pmatrix} 2 \\ 1 \end{pmatrix}\right)$.

**Exemple 2 : Projection orthogonale**

Soit $P$ la projection orthogonale sur un plan $F$ dans $\mathbb{R}^3$.

-   Pour tout vecteur $x \in F$, $P(x) = x = 1 \cdot x$. Donc, 1 est une valeur propre et le sous-espace propre associé est $E_1 = F$.
-   Pour tout vecteur $y \in F^\perp$ (la droite orthogonale à $F$), $P(y) = 0 = 0 \cdot y$. Donc, 0 est une valeur propre et le sous-espace propre associé est $E_0 = F^\perp$.

On a bien $\mathbb{R}^3 = E_1 \oplus E_0 = F \oplus F^\perp$.

**Exemple 3 : Rotation dans le plan**

Soit $R_\theta$ la rotation d'angle $\theta \in ]0, \pi[$ dans $\mathbb{R}^2$. Sa matrice est $\begin{pmatrix} \cos\theta & -\sin\theta \\ \sin\theta & \cos\theta \end{pmatrix}$.

Un vecteur propre $x$ devrait être transformé en $\lambda x$, c'est-à-dire colinéaire à lui-même. Une rotation (sauf pour $\theta=0$ ou $\theta=\pi$) change la direction de tous les vecteurs non nuls. Donc, $R_\theta$ n'a pas de vecteurs propres réels, et donc pas de valeurs propres réelles.

### Contre-exemples

1.  **Le vecteur nul n'est jamais un vecteur propre.** La définition exige $x \neq 0$. Si on autorisait $x=0$, alors $f(0) = \lambda \cdot 0$ serait vrai pour n'importe quel $\lambda$, ce qui rendrait le concept inutile.

2.  **Un endomorphisme peut n'avoir aucune valeur propre.** Comme vu dans l'exemple 3, une rotation d'angle $\theta \notin \{k\pi, k \in \mathbb{Z}\}$ dans $\mathbb{R}^2$ n'a aucune valeur propre réelle. Si on la considère comme un endomorphisme de $\mathbb{C}^2$, elle en possède deux : $e^{i\theta}$ et $e^{-i\theta}$.

### Concepts Connexes

-   **Polynôme Caractéristique** : Outil principal pour trouver les valeurs propres.
-   **Diagonalisation** : Un endomorphisme est diagonalisable s'il existe une base de vecteurs propres.
-   **Stabilité d'un sous-espace** : Les sous-espaces propres sont les exemples les plus simples de sous-espaces stables.

---

## Concept 3: Diagonalisation et Polynôme Caractéristique

### Prérequis

-   Concepts 1 (Déterminant) et 2 (Valeurs Propres).
-   Polynômes (racines, factorisation, multiplicité).
-   Changement de base pour les matrices d'endomorphismes.

### Définition

-   **Polynôme Caractéristique** : Soit $f$ un endomorphisme d'un $\mathbb{K}$-espace vectoriel $E$ de dimension $n$. Son polynôme caractéristique est le polynôme en $\lambda$ défini par :

    $$

    \chi_f(\lambda) = \det(f - \lambda \text{Id}_E)

    $$

    Les racines de $\chi_f(\lambda)$ dans $\mathbb{K}$ sont exactement les valeurs propres de $f$.

-   **Endomorphisme Diagonalisable** : Un endomorphisme $f$ est dit **diagonalisable** s'il existe une base $\mathcal{B}$ de $E$ entièrement constituée de vecteurs propres de $f$. Dans une telle base, la matrice de $f$ est une matrice diagonale :

    $$

    \text{Mat}_{\mathcal{B}}(f) = D = \begin{pmatrix} \lambda_1 & 0 & \dots & 0 \\ 0 & \lambda_2 & \dots & 0 \\ \vdots & \vdots & \ddots & \vdots \\ 0 & 0 & \dots & \lambda_n \end{pmatrix}

    $$

    où les $\lambda_i$ sont les valeurs propres de $f$.

-   **Multiplicités** : Pour une valeur propre $\lambda$ :
    -   La **multiplicité algébrique** $m_\lambda$ est la multiplicité de $\lambda$ comme racine du polynôme caractéristique.
    -   La **multiplicité géométrique** $d_\lambda$ est la dimension du sous-espace propre associé : $d_\lambda = \dim(E_\lambda(f))$. On a toujours $1 \le d_\lambda \le m_\lambda$.

### Explications Détaillées

La diagonalisation est un des objectifs centraux de l'algèbre linéaire. Représenter un endomorphisme par une matrice diagonale simplifie énormément son étude. Par exemple, calculer les puissances d'une matrice diagonale est très simple : $(D^k)_{ii} = (\lambda_i)^k$. Si $A = PDP^{-1}$, alors $A^k = PD^kP^{-1}$, ce qui est facile à calculer.

La procédure pour tenter de diagonaliser un endomorphisme $f$ (ou une matrice $A$) est la suivante :

1.  Calculer le polynôme caractéristique $\chi_f(\lambda) = \det(A - \lambda I)$.
2.  Trouver ses racines dans $\mathbb{K}$. Ce sont les valeurs propres de $f$.
3.  Pour chaque valeur propre $\lambda$, trouver une base du sous-espace propre $E_\lambda = \ker(A - \lambda I)$. La dimension de cet espace est la multiplicité géométrique $d_\lambda$.
4.  Vérifier si $f$ est diagonalisable.

### Propriétés Clés

-   **Critère de diagonalisation (cas simple)** : Si un endomorphisme $f$ de dimension $n$ possède $n$ valeurs propres **distinctes** dans $\mathbb{K}$, alors il est diagonalisable.

-   **Critère de diagonalisation (cas général)** : Un endomorphisme $f$ d'un espace de dimension $n$ est diagonalisable si et seulement si deux conditions sont remplies :
    1.  Le polynôme caractéristique $\chi_f(\lambda)$ est **scindé** sur $\mathbb{K}$ (il peut être écrit comme un produit de facteurs de degré 1).
    2.  Pour chaque valeur propre $\lambda$ de $f$, sa multiplicité algébrique est égale à sa multiplicité géométrique ($m_\lambda = d_\lambda$).

    La première condition est toujours vraie si $\mathbb{K}=\mathbb{C}$ (Théorème de d'Alembert-Gauss). La seconde condition est la plus cruciale.

-   Un endomorphisme $f$ est diagonalisable si et seulement si $E = \bigoplus_{\lambda \in \text{Sp}(f)} E_\lambda(f)$, où $\text{Sp}(f)$ est l'ensemble des valeurs propres.

### Exemples

**Exemple 1 : Diagonalisable (valeurs propres distinctes)**

Soit $A = \begin{pmatrix} 1 & 1 \\ 1 & 0 \end{pmatrix}$.

1.  $\chi_A(\lambda) = \det \begin{pmatrix} 1-\lambda & 1 \\ 1 & -\lambda \end{pmatrix} = (1-\lambda)(-\lambda) - 1 = \lambda^2 - \lambda - 1$.
2.  Les racines sont $\lambda_1 = \frac{1+\sqrt{5}}{2}$ (le nombre d'or $\phi$) et $\lambda_2 = \frac{1-\sqrt{5}}{2}$.
3.  On a deux valeurs propres distinctes dans $\mathbb{R}$ pour un espace de dimension 2, donc $A$ est diagonalisable sur $\mathbb{R}$.

**Exemple 2 : Diagonalisable (valeur propre multiple)**

Soit $A = \begin{pmatrix} 2 & 1 & 1 \\ 1 & 2 & 1 \\ 1 & 1 & 2 \end{pmatrix}$.

1.  $\chi_A(\lambda) = -(\lambda - 1)^2 (\lambda - 4)$. Les valeurs propres sont $\lambda_1 = 1$ (multiplicité algébrique $m_1=2$) et $\lambda_2 = 4$ (multiplicité $m_4=1$).
2.  Pour $\lambda_1=1$, on cherche $\ker(A-I) = \ker \begin{pmatrix} 1 & 1 & 1 \\ 1 & 1 & 1 \\ 1 & 1 & 1 \end{pmatrix}$. Le noyau est le plan d'équation $x+y+z=0$. Il est de dimension 2. Une base est $\{(-1,1,0), (-1,0,1)\}$. Donc $d_1=2$.
3.  Pour $\lambda_2=4$, $d_4$ sera forcément 1. On trouve $E_4 = \text{Vect}((1,1,1))$.
4.  Comme $m_1=d_1=2$ et $m_4=d_4=1$, la matrice est diagonalisable.

**Exemple 3 : Non diagonalisable**

Soit $A = \begin{pmatrix} 0 & 1 \\ 0 & 0 \end{pmatrix}$.

1.  $\chi_A(\lambda) = \det \begin{pmatrix} -\lambda & 1 \\ 0 & -\lambda \end{pmatrix} = \lambda^2$.
2.  La seule valeur propre est $\lambda=0$, avec une multiplicité algébrique $m_0=2$.
3.  Calculons le sous-espace propre $E_0 = \ker(A - 0I) = \ker(A)$.

    $\begin{pmatrix} 0 & 1 \\ 0 & 0 \end{pmatrix} \begin{pmatrix} x \\ y \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \end{pmatrix} \Leftrightarrow y=0$.

    Donc $E_0 = \text{Vect}\left(\begin{pmatrix} 1 \\ 0 \end{pmatrix}\right)$, et sa dimension est $d_0=1$.

4.  Puisque $d_0 = 1 < m_0 = 2$, la matrice n'est pas diagonalisable.

### Contre-exemples

1.  **Matrice non diagonalisable sur $\mathbb{R}$ mais sur $\mathbb{C}$** : La matrice de rotation $B = \begin{pmatrix} 0 & -1 \\ 1 & 0 \end{pmatrix}$. Son polynôme caractéristique est $\lambda^2+1$, qui n'a pas de racines réelles. Donc $B$ n'est pas diagonalisable sur $\mathbb{R}$. Sur $\mathbb{C}$, les valeurs propres sont $i$ et $-i$, qui sont distinctes, donc elle est diagonalisable sur $\mathbb{C}$.

2.  **Matrice avec polynôme scindé mais non diagonalisable** : La matrice $A = \begin{pmatrix} 1 & 1 \\ 0 & 1 \end{pmatrix}$ (matrice de cisaillement). Son polynôme caractéristique est $(\lambda-1)^2$, qui est scindé. Mais comme pour l'exemple 3 ci-dessus, la multiplicité géométrique (1) est inférieure à l'algébrique (2).

### Concepts Connexes

-   **Théorème Spectral** : Un théorème majeur qui garantit que les endomorphismes auto-adjoints sont toujours diagonalisables.
-   **Trigonalisation** : Tout endomorphisme sur un corps algébriquement clos (comme $\mathbb{C}$) est trigonalisable, même s'il n'est pas diagonalisable.
-   **Décomposition de Jordan** : Une généralisation de la diagonalisation pour les matrices non diagonalisables.

---

## Concept 4: Endomorphisme Auto-adjoint

### Prérequis

-   Espaces vectoriels euclidiens (produit scalaire sur $\mathbb{R}$) ou hermitiens (produit scalaire sur $\mathbb{C}$).
-   Endomorphisme adjoint $f^*$.
-   Bases orthonormées.
-   Matrices symétriques (cas réel) et hermitiennes (cas complexe).

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace vectoriel euclidien ou hermitien de dimension finie. Un endomorphisme $f: E \to E$ est dit **auto-adjoint** (ou symétrique) si $f$ est égal à son propre adjoint, $f=f^*$.

Cela se traduit par la relation suivante pour tous les vecteurs $x, y \in E$:

$$

\langle f(x), y \rangle = \langle x, f(y) \rangle

$$

Dans le contexte matriciel :

-   Si $E$ est un espace euclidien et $\mathcal{B}$ est une **base orthonormée**, $f$ est auto-adjoint si et seulement si sa matrice $A = \text{Mat}_{\mathcal{B}}(f)$ est **symétrique** ($A = {}^tA$).
-   Si $E$ est un espace hermitien et $\mathcal{B}$ est une **base orthonormée**, $f$ est auto-adjoint si et seulement si sa matrice $A = \text{Mat}_{\mathcal{B}}(f)$ est **hermitienne** ($A = {}^t\bar{A}$).

### Explications Détaillées

Un endomorphisme auto-adjoint est une transformation qui se "comporte bien" avec la structure géométrique de l'espace (le produit scalaire). La condition $\langle f(x), y \rangle = \langle x, f(y) \rangle$ signifie qu'on peut "déplacer" l'endomorphisme d'un côté à l'autre du produit scalaire sans rien changer.

Ces opérateurs apparaissent naturellement dans de nombreux domaines de la physique (opérateurs quantiques, tenseur d'inertie) et des mathématiques (formes quadratiques, analyse de données). Ils possèdent des propriétés de "symétrie" très fortes qui les rendent particulièrement simples à étudier, notamment en ce qui concerne leur diagonalisation.

### Propriétés Clés

Soit $f$ un endomorphisme auto-adjoint sur un espace $E$.

-   **Les valeurs propres de $f$ sont toutes réelles**, même si l'espace est hermitien (complexe).
-   **Les sous-espaces propres associés à des valeurs propres distinctes sont orthogonaux**. Si $f(x) = \lambda x$ et $f(y) = \mu y$ avec $\lambda \neq \mu$, alors $\langle x, y \rangle = 0$.
-   **Stabilité de l'orthogonal** : Si un sous-espace vectoriel $F$ est stable par $f$ (c'est-à-dire $f(F) \subseteq F$), alors son complément orthogonal $F^\perp$ est aussi stable par $f$.

### Exemples

**Exemple 1 : Matrice symétrique réelle**

Soit $f$ l'endomorphisme de $\mathbb{R}^2$ (muni du produit scalaire usuel) dont la matrice dans la base canonique (qui est orthonormée) est $A = \begin{pmatrix} 1 & 3 \\ 3 & 5 \end{pmatrix}$.

Puisque $A$ est symétrique, $f$ est auto-adjoint. Vérifions la propriété pour $x=(x_1, x_2)$ et $y=(y_1, y_2)$:

$$

\langle Ax, y \rangle = (x_1+3x_2)y_1 + (3x_1+5x_2)y_2 = x_1y_1 + 3x_2y_1 + 3x_1y_2 + 5x_2y_2

$$

$$

\langle x, Ay \rangle = x_1(y_1+3y_2) + x_2(3y_1+5y_2) = x_1y_1 + 3x_1y_2 + 3x_2y_1 + 5x_2y_2

$$

Les deux expressions sont égales.

**Exemple 2 : Projection orthogonale**

Soit $P_F$ la projection orthogonale sur un sous-espace $F$ de $E$. Pour tous $x, y \in E$, on peut écrire $x=x_F+x_{F^\perp}$ et $y=y_F+y_{F^\perp}$.

$$

\langle P_F(x), y \rangle = \langle x_F, y_F+y_{F^\perp} \rangle = \langle x_F, y_F \rangle

$$

$$

\langle x, P_F(y) \rangle = \langle x_F+x_{F^\perp}, y_F \rangle = \langle x_F, y_F \rangle

$$

L'égalité montre que $P_F$ est auto-adjoint.

**Exemple 3 : Homothétie**

Une homothétie $f(x)=kx$ pour un scalaire réel $k$ est auto-adjointe:

$$

\langle f(x), y \rangle = \langle kx, y \rangle = k \langle x, y \rangle

$$

$$

\langle x, f(y) \rangle = \langle x, ky \rangle = k \langle x, y \rangle \quad (\text{ou } \bar{k}\langle x, y \rangle \text{ si hermitien})

$$

L'égalité est vraie pour $k \in \mathbb{R}$.

### Contre-exemples

1.  **Rotation dans $\mathbb{R}^2$** : Soit $R$ la rotation d'angle $\pi/2$. Sa matrice dans la base canonique est $A = \begin{pmatrix} 0 & -1 \\ 1 & 0 \end{pmatrix}$. Cette matrice n'est pas symétrique, donc $R$ n'est pas auto-adjoint. En effet, si $x=(1,0)$ et $y=(0,1)$:

    $\langle R(x), y \rangle = \langle (0,1), (0,1) \rangle = 1$.

    $\langle x, R(y) \rangle = \langle (1,0), (-1,0) \rangle = -1$.

    Les résultats sont différents.

2.  **Cisaillement (Shear)** : Soit $f$ l'endomorphisme de matrice $A = \begin{pmatrix} 1 & 1 \\ 0 & 1 \end{pmatrix}$. Elle n'est pas symétrique et $f$ n'est pas auto-adjoint.

    Prenons $x=(0,1)$ et $y=(1,0)$:

    $\langle f(x), y \rangle = \langle (1,1), (1,0) \rangle = 1$.

    $\langle x, f(y) \rangle = \langle (0,1), (1,0) \rangle = 0$.

### Concepts Connexes

-   **Théorème Spectral** : Le résultat principal concernant les endomorphismes auto-adjoints.
-   **Formes Quadratiques** : À chaque endomorphisme auto-adjoint $f$ est associée une forme quadratique $q(x) = \langle f(x), x \rangle$.
-   **Endomorphismes normaux** : Une classe plus générale d'endomorphismes ($ff^*=f^*f$) qui contient les auto-adjoints et qui sont aussi diagonalisables (sur $\mathbb{C}$) dans une base orthonormée.

---

## Concept 5: Théorème Spectral

### Prérequis

-   Concepts 2, 3 et 4 (valeurs propres, diagonalisation, endomorphismes auto-adjoints).
-   Espaces euclidiens et hermitiens.
-   Bases orthonormées.
-   Matrices orthogonales ($P^{-1} = {}^tP$) et unitaires ($U^{-1} = {}^t\bar{U}$).

### Définition

Le **théorème spectral** est un résultat fondamental qui décrit la structure des endomorphismes auto-adjoints.

**Énoncé pour les endomorphismes :**

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace vectoriel euclidien ou hermitien de dimension finie $n$. Si $f: E \to E$ est un endomorphisme **auto-adjoint**, alors :

1.  $f$ est **diagonalisable**.
2.  Il existe une **base orthonormée** de $E$ constituée de vecteurs propres de $f$.
3.  Toutes les valeurs propres de $f$ sont **réelles**.

**Énoncé pour les matrices :**

-   **Cas réel** : Pour toute matrice **symétrique réelle** $S \in M_n(\mathbb{R})$, il existe une matrice **orthogonale** $P \in O_n(\mathbb{R})$ et une matrice **diagonale réelle** $D$ telles que :

    $$

    S = P D P^{-1} = P D {}^tP

    $$

-   **Cas complexe** : Pour toute matrice **hermitienne** $H \in M_n(\mathbb{C})$, il existe une matrice **unitaire** $U \in U_n(\mathbb{C})$ et une matrice **diagonale réelle** $D$ telles que :

    $$

    H = U D U^{-1} = U D {}^t\bar{U}

    $$

### Explications Détaillées

Ce théorème est l'un des plus importants de l'algèbre linéaire. Il nous dit que pour les transformations "symétriques" (auto-adjointes), non seulement on peut trouver une base de vecteurs propres (diagonalisabilité), mais en plus, on peut choisir cette base pour qu'elle soit orthonormée.

Géométriquement, cela signifie que toute transformation auto-adjointe peut être vue comme une série d'étirements ou de compressions le long d'axes **mutuellement orthogonaux**. Les directions de ces axes sont données par les vecteurs propres, et les facteurs d'étirement sont les valeurs propres.

La version matricielle est extrêmement utile en pratique. Elle permet de "décomposer" une matrice symétrique en une rotation/réflexion ($P$), une mise à l'échelle simple ($D$), et la transformation inverse ($P^T$).

### Propriétés Clés

-   **Garantie de diagonalisabilité** : Contrairement à un endomorphisme général, un endomorphisme auto-adjoint est *toujours* diagonalisable sur $\mathbb{R}$ (si l'espace est euclidien) ou $\mathbb{C}$ (si hermitien).
-   **Orthogonalité des espaces propres** : Les espaces propres associés à des valeurs propres distinctes sont orthogonaux, ce qui est une étape clé de la preuve et de la construction de la base orthonormée.
-   **Base de la diagonalisation** : La matrice de passage $P$ (ou $U$) qui diagonalise la matrice symétrique (ou hermitienne) a pour colonnes les vecteurs d'une base orthonormée de vecteurs propres.

### Exemples

**Exemple 1 : Diagonalisation d'une matrice symétrique 2x2**

Soit $S = \begin{pmatrix} 2 & 1 \\ 1 & 2 \end{pmatrix}$.

1.  **Valeurs propres** : $\chi_S(\lambda) = (2-\lambda)^2 - 1 = \lambda^2 - 4\lambda + 3 = (\lambda-1)(\lambda-3)$. Les valeurs propres sont $\lambda_1=1, \lambda_2=3$.
2.  **Vecteurs propres** :
    -   Pour $\lambda_1=1$ : $\ker(S-I) = \ker\begin{pmatrix} 1 & 1 \\ 1 & 1 \end{pmatrix}$. Un vecteur propre est $v_1 = \begin{pmatrix} 1 \\ -1 \end{pmatrix}$.
    -   Pour $\lambda_2=3$ : $\ker(S-3I) = \ker\begin{pmatrix} -1 & 1 \\ 1 & -1 \end{pmatrix}$. Un vecteur propre est $v_2 = \begin{pmatrix} 1 \\ 1 \end{pmatrix}$.
3.  **Orthogonalité** : On vérifie que $\langle v_1, v_2 \rangle = 1 \cdot 1 + (-1) \cdot 1 = 0$. Les vecteurs propres sont bien orthogonaux.
4.  **Base orthonormée** : On normalise les vecteurs :

    $u_1 = \frac{v_1}{\|v_1\|} = \frac{1}{\sqrt{2}}\begin{pmatrix} 1 \\ -1 \end{pmatrix}$, $u_2 = \frac{v_2}{\|v_2\|} = \frac{1}{\sqrt{2}}\begin{pmatrix} 1 \\ 1 \end{pmatrix}$.

5.  **Décomposition** : $D=\begin{pmatrix} 1 & 0 \\ 0 & 3 \end{pmatrix}$, $P = \begin{pmatrix} 1/\sqrt{2} & 1/\sqrt{2} \\ -1/\sqrt{2} & 1/\sqrt{2} \end{pmatrix}$. On peut vérifier que $S = PDP^T$.

**Exemple 2 : Matrice de l'énoncé**

Soit $S = \begin{pmatrix} 1 & 2 & 0 \\ 2 & 3 & 2 \\ 0 & 2 & 1 \end{pmatrix}$.

1.  **Valeurs propres** : $\chi_S(\lambda) = -(\lambda-1)(\lambda-5)(\lambda+1)$. Les valeurs propres sont $1, 5, -1$.
2.  **Vecteurs propres normalisés** :
    -   $\lambda=1 \implies u_1 = \frac{1}{\sqrt{2}}(1, 0, -1)^T$
    -   $\lambda=5 \implies u_2 = \frac{1}{\sqrt{3}}(1, 1, 1)^T$
    -   $\lambda=-1 \implies u_3 = \frac{1}{\sqrt{6}}(1, -2, 1)^T$
3.  **Matrices** : $D = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 5 & 0 \\ 0 & 0 & -1 \end{pmatrix}$ et $P$ est la matrice dont les colonnes sont $u_1, u_2, u_3$. $P$ est orthogonale.

**Exemple 3 : Projection**

La projection $P$ sur la droite $\text{Vect}((1,1))$ dans $\mathbb{R}^2$. Sa matrice est $A = \frac{1}{2}\begin{pmatrix} 1 & 1 \\ 1 & 1 \end{pmatrix}$. C'est une matrice symétrique. Ses valeurs propres sont 1 et 0, associées aux vecteurs propres orthogonaux $(1,1)$ et $(1,-1)$. La base orthonormée de diagonalisation est $\{\frac{1}{\sqrt{2}}(1,1), \frac{1}{\sqrt{2}}(1,-1)\}$.

### Contre-exemples

1.  **Matrice non symétrique** : La matrice de cisaillement $A = \begin{pmatrix} 1 & 1 \\ 0 & 1 \end{pmatrix}$ n'est pas symétrique et n'est pas diagonalisable, donc le théorème spectral ne s'applique pas.

2.  **Matrice diagonalisable mais pas dans une base orthonormée** :

    Soit $A = \begin{pmatrix} 1 & 1 \\ 0 & 2 \end{pmatrix}$. Elle est diagonalisable car elle a deux valeurs propres distinctes (1 et 2).

    Les vecteurs propres sont $v_1 = (1,0)$ et $v_2 = (1,1)$. Ces vecteurs ne sont pas orthogonaux ($\langle v_1, v_2 \rangle = 1 \neq 0$), donc il n'existe pas de base *orthonormée* de vecteurs propres. Cela est dû au fait que $A$ n'est pas symétrique.

### Applications

-   **Géométrie** : Classification et simplification des équations de coniques et quadriques.
-   **Mécanique** : Le tenseur d'inertie est une matrice symétrique ; ses vecteurs propres sont les axes principaux d'inertie.
-   **Statistiques** : L'Analyse en Composantes Principales (ACP) repose sur la diagonalisation de la matrice de covariance, qui est symétrique.

---

## Concept 6: Endomorphismes Positifs et Définis Positifs

### Prérequis

-   Concept 4: Endomorphisme Auto-adjoint.
-   Espaces euclidiens et hermitiens.
-   Formes quadratiques.

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien, et $f: E \to E$ un endomorphisme **auto-adjoint**.

-   $f$ est dit **positif** si pour tout vecteur $x \in E$, on a :

    $$

    \langle f(x), x \rangle \ge 0

    $$

-   $f$ est dit **défini positif** si pour tout vecteur non nul $x \in E, x \neq 0$, on a :

    $$

    \langle f(x), x \rangle > 0

    $$

Une matrice symétrique réelle $S$ (ou hermitienne $H$) est dite positive (resp. définie positive) si l'endomorphisme qu'elle représente dans une base orthonormée l'est.

### Explications Détaillées

La notion d'endomorphisme positif généralise celle de nombre réel positif. La quantité $\langle f(x), x \rangle$ est souvent associée à une "énergie". Un endomorphisme positif est une transformation qui ne produit jamais une "énergie négative". Un endomorphisme défini positif produit toujours une énergie strictement positive, sauf pour le vecteur nul.

Cette propriété est fondamentale pour définir une "racine carrée" d'un endomorphisme ou d'une matrice, et elle est cruciale pour définir de nouveaux produits scalaires. En effet, si $f$ est auto-adjoint défini positif, alors l'application $(x, y) \mapsto \langle f(x), y \rangle$ est un nouveau produit scalaire sur $E$.

### Propriétés Clés

Soit $f$ un endomorphisme auto-adjoint.

-   **Caractérisation par les valeurs propres** :
    -   $f$ est **positif** si et seulement si toutes ses valeurs propres sont **positives ou nulles** ($\lambda_i \ge 0$).
    -   $f$ est **défini positif** si et seulement si toutes ses valeurs propres sont **strictement positives** ($\lambda_i > 0$).
-   Un endomorphisme défini positif est toujours **inversible** (car 0 n'est pas une valeur propre).
-   Si $M$ est une matrice réelle inversible, alors ${}^tMM$ et $M{}^tM$ sont des matrices symétriques **définies positives**. Si $M$ n'est pas inversible, elles sont seulement positives.
-   **Racine carrée** : Si $f$ est un endomorphisme auto-adjoint positif, il existe un unique endomorphisme auto-adjoint positif $g$ tel que $g^2 = f$. On le note $g = \sqrt{f}$.

### Exemples

**Exemple 1 : Matrice définie positive**

Soit $S = \begin{pmatrix} 2 & -1 \\ -1 & 2 \end{pmatrix}$. C'est une matrice symétrique.

Ses valeurs propres sont les racines de $(2-\lambda)^2 - 1 = 0$, soit $\lambda^2-4\lambda+3=0$. Les valeurs propres sont $1$ et $3$. Comme elles sont strictement positives, $S$ est définie positive.

Vérifions directement : pour $x=(x_1, x_2) \neq (0,0)$,

$\langle Sx, x \rangle = (2x_1-x_2)x_1 + (-x_1+2x_2)x_2 = 2x_1^2 - 2x_1x_2 + 2x_2^2 = x_1^2 + x_2^2 + (x_1-x_2)^2 > 0$.

**Exemple 2 : Matrice positive non définie**

Une projection orthogonale $P_F$ sur un sous-espace $F \neq E$. Ses valeurs propres sont 0 et 1. Comme elles sont $\ge 0$, $P_F$ est un endomorphisme positif. Cependant, comme 0 est une valeur propre, il existe des vecteurs $x \neq 0$ (ceux dans $F^\perp$) tels que $\langle P_F(x), x \rangle = \langle 0, x \rangle = 0$. Il n'est donc pas défini positif.

**Exemple 3 : Construction d'une matrice positive**

Soit $M = \begin{pmatrix} 1 & 2 \\ 3 & 4 \end{pmatrix}$. $M$ n'est pas symétrique.

La matrice $S = {}^tMM = \begin{pmatrix} 1 & 3 \\ 2 & 4 \end{pmatrix} \begin{pmatrix} 1 & 2 \\ 3 & 4 \end{pmatrix} = \begin{pmatrix} 10 & 14 \\ 14 & 20 \end{pmatrix}$ est symétrique et positive. Comme $\det(M) \neq 0$, $M$ est inversible, donc $S$ est définie positive.

### Contre-exemples

1.  **Matrice symétrique non positive** : Soit $S = \begin{pmatrix} 1 & 0 \\ 0 & -1 \end{pmatrix}$. C'est une matrice symétrique. Sa deuxième valeur propre est $-1 < 0$, elle n'est donc pas positive. Pour $x = (0,1)$, $\langle Sx, x \rangle = \langle (0,-1), (0,1) \rangle = -1 < 0$.

2.  **Matrice non symétrique avec $\langle Ax, x \rangle > 0$** : La notion de positivité n'est définie que pour les endomorphismes auto-adjoints. Prenons $A = \begin{pmatrix} 1 & -2 \\ 0 & 1 \end{pmatrix}$.

    $\langle Ax,x \rangle = (x_1 - 2x_2)x_1 + x_2^2 = x_1^2 - 2x_1x_2 + x_2^2 = (x_1-x_2)^2 \ge 0$.

    Bien que la forme quadratique soit positive, la matrice $A$ n'est pas dite "positive" car elle n'est pas symétrique.

### Concepts Connexes

-   **Décomposition Polaire** : Utilise la notion de racine carrée d'une matrice symétrique positive.
-   **Produit Scalaire** : Toute matrice symétrique définie positive $S$ peut être utilisée pour définir un nouveau produit scalaire $\langle x, y \rangle_S = {}^tXSY$.
-   **Décomposition de Cholesky** : Toute matrice symétrique définie positive $S$ peut s'écrire de manière unique sous la forme $S = {}^tLL$ où $L$ est une matrice triangulaire inférieure à diagonale positive.

---

## Concept 7: Décomposition Polaire

### Prérequis

-   Concepts 5 (Théorème Spectral) et 6 (Endomorphismes Positifs).
-   Matrices inversibles ($GL_n(\mathbb{R})$).
-   Matrices orthogonales ($O_n(\mathbb{R})$).

### Définition

Le théorème de la **décomposition polaire** affirme que toute transformation linéaire inversible peut être décomposée de manière unique en un étirement pur (auto-adjoint défini positif) suivi d'une isométrie (rotation/réflexion).

**Énoncé pour les matrices :**

Pour toute matrice **inversible** $M \in GL_n(\mathbb{R})$, il existe :

1.  une unique matrice **orthogonale** $O \in O_n(\mathbb{R})$,
2.  une unique matrice **symétrique définie positive** $S \in M_n(\mathbb{R})$,

telles que :

$$

M = SO

$$

Il existe également une décomposition "à droite" $M = O'S'$, qui est en général différente.

### Explications Détaillées

Cette décomposition est l'analogue matriciel de la forme polaire d'un nombre complexe non nul $z = \rho e^{i\theta}$, où $\rho = |z| > 0$ est le module (un étirement réel positif) et $e^{i\theta}$ est un nombre complexe de module 1 (une rotation).

Pour les matrices :

-   La matrice $S$ joue le rôle de $\rho$. C'est une transformation qui étire ou contracte l'espace le long d'axes orthogonaux (ses vecteurs propres).
-   La matrice $O$ joue le rôle de $e^{i\theta}$. C'est une isométrie, qui préserve les longueurs et les angles, correspondant à une rotation ou une roto-réflexion.

La décomposition polaire sépare ainsi les deux effets géométriques fondamentaux d'une transformation linéaire : la déformation (capturée par $S$) et la rotation (capturée par $O$).

**Construction :**

Pour trouver la décomposition $M=SO$ :

1.  On remarque que $M{}^tM = (SO)({}^t(SO)) = SO{}^tO{}^tS = S I S = S^2$.
2.  La matrice $R = M{}^tM$ est symétrique et définie positive. D'après le concept 6, elle admet une unique racine carrée symétrique définie positive, $S = \sqrt{M{}^tM}$.
3.  Une fois $S$ déterminée, on trouve $O$ par la relation $O = S^{-1}M$. On peut prouver que la matrice $O$ ainsi obtenue est bien orthogonale.

### Propriétés Clés

-   **Unicité** : La décomposition d'une matrice inversible $M$ en un produit $SO$ (avec $S$ symétrique définie positive et $O$ orthogonale) est unique.
-   **Orientation** : La matrice orthogonale $O$ est une rotation pure ($O \in SO_n(\mathbb{R})$, i.e. $\det(O)=1$) si et seulement si $\det(M) > 0$.
-   **Généralisation** : Une version de la décomposition polaire existe aussi pour les matrices non-inversibles, mais $S$ est seulement positive et $O$ n'est pas unique.

### Exemples

**Exemple 1 : Décomposition d'une matrice 2x2**

Soit $M = \begin{pmatrix} 2 & 2 \\ -1 & 1 \end{pmatrix}$.

1.  Calculons $R = M{}^tM = \begin{pmatrix} 2 & 2 \\ -1 & 1 \end{pmatrix} \begin{pmatrix} 2 & -1 \\ 2 & 1 \end{pmatrix} = \begin{pmatrix} 8 & 0 \\ 0 & 2 \end{pmatrix}$.
2.  $R$ est déjà diagonale. Sa racine carrée symétrique définie positive est évidente :

    $S = \sqrt{R} = \begin{pmatrix} \sqrt{8} & 0 \\ 0 & \sqrt{2} \end{pmatrix} = \begin{pmatrix} 2\sqrt{2} & 0 \\ 0 & \sqrt{2} \end{pmatrix}$.

3.  Calculons $O = S^{-1}M$:

    $S^{-1} = \begin{pmatrix} 1/(2\sqrt{2}) & 0 \\ 0 & 1/\sqrt{2} \end{pmatrix}$.

    $O = \begin{pmatrix} 1/(2\sqrt{2}) & 0 \\ 0 & 1/\sqrt{2} \end{pmatrix} \begin{pmatrix} 2 & 2 \\ -1 & 1 \end{pmatrix} = \begin{pmatrix} 1/\sqrt{2} & 1/\sqrt{2} \\ -1/\sqrt{2} & 1/\sqrt{2} \end{pmatrix}$.

    Cette matrice est bien orthogonale (c'est une rotation de $-\pi/4$).

4.  La décomposition est $M = \begin{pmatrix} 2\sqrt{2} & 0 \\ 0 & \sqrt{2} \end{pmatrix} \begin{pmatrix} 1/\sqrt{2} & 1/\sqrt{2} \\ -1/\sqrt{2} & 1/\sqrt{2} \end{pmatrix}$.

**Exemple 2 : Analogie avec les nombres complexes**

Soit la matrice $M = \begin{pmatrix} a & -b \\ b & a \end{pmatrix}$ représentant le complexe $z=a+ib$.

1.  $M{}^tM = \begin{pmatrix} a & -b \\ b & a \end{pmatrix} \begin{pmatrix} a & b \\ -b & a \end{pmatrix} = \begin{pmatrix} a^2+b^2 & 0 \\ 0 & a^2+b^2 \end{pmatrix} = |z|^2 I_2$.
2.  $S = \sqrt{|z|^2 I_2} = |z| I_2 = \begin{pmatrix} |z| & 0 \\ 0 & |z| \end{pmatrix}$.
3.  $O = S^{-1}M = \frac{1}{|z|} M = \begin{pmatrix} a/|z| & -b/|z| \\ b/|z| & a/|z| \end{pmatrix}$. Si $z = |z|(\cos\theta+i\sin\theta)$, alors $a/|z|=\cos\theta$ et $b/|z|=\sin\theta$, donc $O$ est la matrice de rotation d'angle $\theta$.

    On retrouve $M = (\text{étirement}) \times (\text{rotation})$.

**Exemple 3 : Matrice non-diagonale**

Soit $M = \begin{pmatrix} 1 & 1 \\ 0 & 1 \end{pmatrix}$ (cisaillement).

1.  $M{}^tM = \begin{pmatrix} 1 & 1 \\ 0 & 1 \end{pmatrix}\begin{pmatrix} 1 & 0 \\ 1 & 1 \end{pmatrix} = \begin{pmatrix} 2 & 1 \\ 1 & 1 \end{pmatrix}$. C'est la matrice $S$ de l'exemple 1 du Th. Spectral (à un facteur près).
2.  On doit diagonaliser $M{}^tM$ pour calculer sa racine. Ses valeurs propres sont $\frac{3\pm\sqrt{5}}{2}$. Après calcul, on trouve $S = \frac{1}{\sqrt{5}} \begin{pmatrix} 2 & 1 \\ 1 & 3 \end{pmatrix}$.
3.  Puis $O = S^{-1}M = \frac{1}{\sqrt{5}}\begin{pmatrix} 1 & -2 \\ -1 & 3 \end{pmatrix}$.

### Contre-exemples

1.  **Matrice singulière** : Si $M = \begin{pmatrix} 1 & 1 \\ 1 & 1 \end{pmatrix}$, $\det(M)=0$, elle n'est pas dans $GL_2(\mathbb{R})$. $M{}^tM = \begin{pmatrix} 2 & 2 \\ 2 & 2 \end{pmatrix}$, qui est symétrique positive mais pas définie positive (ses valeurs propres sont 4 et 0). La construction standard ne fonctionne pas car $S = \sqrt{M{}^tM}$ n'est pas inversible.

2.  **Décomposition non-commutative** : En général, $SO \neq OS$. La décomposition "à droite" $M=O'S'$ utilise $S'=\sqrt{{}^tMM}$. Pour l'exemple 1, ${}^tMM = \begin{pmatrix} 5 & 3 \\ 3 & 5 \end{pmatrix}$ qui est différente de $M{}^tM$. Donc $S \neq S'$ et $O \neq O'$.

### Applications

-   **Mécanique des milieux continus** : Le tenseur des déformations d'un matériau est décomposé en une partie "étirement pur" (tenseur de Cauchy-Green droit) et une partie "rotation pure".
-   **Vision par ordinateur et robotique** : Utilisée pour trouver la rotation "la plus proche" d'une matrice de transformation donnée, en ignorant les déformations.
-   **Algèbre linéaire numérique** : Intervient dans certains algorithmes, notamment pour le calcul de la Décomposition en Valeurs Singulières (SVD).
