---
title: B - Concepts (avancé)
level: pro
course: Géométrie
chapter: Groupes d'isométries
order: 20
layout: '../../../../layouts/Article.astro'
tags: ['géométrie', 'algèbre linéaire', 'groupes', 'isométrie', 'rotation']
---

# Groupes d'isométries (avancé)

---

## Concept 1: Isométrie (Endomorphisme orthogonal/unitaire)

### Prérequis

- Espace vectoriel euclidien ou hermitien, produit scalaire $\varphi(x, y)$ (noté $\langle x, y \rangle$), norme associée $\|x\| = \sqrt{\varphi(x,x)}$.
- Algèbre linéaire : endomorphisme, isomorphisme, endomorphisme adjoint $f^*$.
- Formes de polarisation.

### Définition

Soit $(E, \varphi)$ un espace euclidien (sur $\mathbb{R}$) ou hermitien (sur $\mathbb{C}$). Un endomorphisme $f: E \to E$ est une **isométrie** si et seulement si $f$ préserve la norme, c'est-à-dire :
$$ \forall x \in E, \quad \|f(x)\| = \|x\| $$
Dans le contexte euclidien, une isométrie est aussi appelée **transformation orthogonale**. Dans le contexte hermitien, elle est appelée **transformation unitaire**.

### Propriétés Clés

- **Caractérisations équivalentes** : Soit $f \in \mathcal{L}(E)$. Les affirmations suivantes sont équivalentes :
  1.  $f$ est une isométrie (i.e., $\forall x \in E, \|f(x)\| = \|x\|$).
  2.  $f$ préserve le produit scalaire (ou hermitien) : $\forall x, y \in E, \varphi(f(x), f(y)) = \varphi(x, y)$.
  3.  $f$ est un isomorphisme et son inverse est son adjoint : $f \circ f^* = f^* \circ f = \text{Id}_E$, soit $f^{-1} = f^*$.
  4.  L'image par $f$ d'une base orthonormée de $E$ est une base orthonormée de $E$.
- **Démonstration (1 $\iff$ 2 $\iff$ 3)**
  - (1 $\Rightarrow$ 2) : Résulte directement des identités de polarisation. Par exemple, dans le cas euclidien :
    $$ \varphi(x,y) = \frac{1}{2}(\|x+y\|^2 - \|x\|^2 - \|y\|^2) $$
      Comme $f$ est linéaire et préserve la norme, $\varphi(f(x),f(y)) = \frac{1}{2}(\|f(x+y)\|^2 - \|f(x)\|^2 - \|f(y)\|^2) = \frac{1}{2}(\|x+y\|^2 - \|x\|^2 - \|y\|^2) = \varphi(x,y)$.
  - (2 $\Rightarrow$ 3) : Si $\varphi(f(x), f(y)) = \varphi(x, y)$, alors $f$ préserve la norme. Si $f(x)=0$, alors $\|x\| = \|f(x)\| = 0$, donc $x=0$. $f$ est injective, donc bijective par le théorème du rang. L'inverse $f^{-1}$ existe. Par définition de l'adjoint, $\varphi(f(x), f(y)) = \varphi(x, f^*(f(y)))$. En comparant avec $\varphi(x,y)$, on a $\varphi(x, f^*(f(y))) = \varphi(x,y)$ pour tout $x,y$. Ceci implique $f^* \circ f = \text{Id}_E$.
  - (3 $\Rightarrow$ 1) : $\|f(x)\|^2 = \varphi(f(x), f(x)) = \varphi(x, f^*(f(x)))$. Si $f^* = f^{-1}$, alors $\varphi(x, f^{-1}(f(x))) = \varphi(x,x) = \|x\|^2$.
- **Groupe des isométries** : L'ensemble des isométries de $E$, noté $O(E)$ (cas euclidien) ou $U(E)$ (cas hermitien), forme un groupe pour la composition d'applications.
- **Déterminant** : Si $f$ est une isométrie, alors $|\det(f)| = 1$. Dans le cas euclidien, $\det(f) = \pm 1$.
- **Matrice en base orthonormée (BON)** : Si $\mathcal{B}$ est une BON, la matrice $M$ de $f$ dans $\mathcal{B}$ est orthogonale ($^tMM = I_n$) ou unitaire ($^t\overline{M}M = I_n$).

### Exemples

**Exemple 1 (Rotation plane)**
Soit $E = \mathbb{R}^2$ euclidien canonique. L'application $f_\theta(x, y) = (x\cos\theta - y\sin\theta, x\sin\theta + y\cos\theta)$ est une isométrie. Sa matrice dans la base canonique (qui est une BON) est $R_\theta = \begin{pmatrix} \cos\theta & -\sin\theta \\ \sin\theta & \cos\theta \end{pmatrix}$. On vérifie que $^t R_\theta R_\theta = I_2$.

**Exemple 2 (Réflexion par rapport à une droite)**
Soit $E = \mathbb{R}^2$ et $D = \text{Vect}(u)$ une droite. La réflexion $s_D$ par rapport à $D$ est une isométrie. Par exemple, la réflexion par rapport à l'axe des abscisses est $s(x,y) = (x,-y)$. $\|s(x,y)\|^2 = x^2 + (-y)^2 = x^2+y^2 = \|(x,y)\|^2$. Sa matrice est $\begin{pmatrix} 1 & 0 \\ 0 & -1 \end{pmatrix}$, qui est orthogonale.

**Exemple 3 (Opérateur unitaire sur $\mathbb{C}^2$)**
Soit $f: \mathbb{C}^2 \to \mathbb{C}^2$ de matrice $U = \frac{1}{\sqrt{2}}\begin{pmatrix} 1 & i \\ i & 1 \end{pmatrix}$ dans la base canonique. $U$ est unitaire car $U^*U = {}^t\overline{U}U = \frac{1}{2}\begin{pmatrix} 1 & -i \\ -i & 1 \end{pmatrix}\begin{pmatrix} 1 & i \\ i & 1 \end{pmatrix} = \frac{1}{2}\begin{pmatrix} 2 & 0 \\ 0 & 2 \end{pmatrix} = I_2$. C'est donc une isométrie de l'espace hermitien $\mathbb{C}^2$.

### Contre-exemples

**Contre-exemple 1 (Homothétie)**
L'homothétie $f(x) = 2x$ sur $\mathbb{R}^n$ ($n \ge 1$) n'est pas une isométrie car $\|f(x)\| = \|2x\| = 2\|x\| \neq \|x\|$ pour $x \neq 0$. Elle préserve les angles mais pas les longueurs.

**Contre-exemple 2 (Transvection ou cisaillement)**
L'application $f(x,y) = (x+y, y)$ sur $\mathbb{R}^2$ n'est pas une isométrie. Soit $v=(0,1)$, $\|v\|=1$. Alors $f(v)=(1,1)$ et $\|f(v)\|=\sqrt{2} \neq 1$.

### Concepts liés

- **Groupes orthogonal $O(n)$ et unitaire $U(n)$** : Groupes des matrices des isométries en base orthonormée.
- **Isométries affines** : Applications d'un espace affine euclidien sur lui-même qui conservent les distances. Elles sont de la forme $X \mapsto AX+b$ où $A$ est une isométrie vectorielle.

### Applications

- **Mécanique du solide** : Le mouvement d'un corps rigide est décrit par une isométrie (affine).
- **Cristallographie** : Les groupes de symétrie des cristaux sont des groupes d'isométries discrets.
- **Infographie** : Les transformations d'objets 3D (rotations, translations, réflexions) sont basées sur des isométries.

---

## Concept 2: Groupes Orthogonal et Unitaire

### Prérequis

- Concept d'isométrie.
- Algèbre matricielle : produit, inverse, déterminant, transposée, transconjuguée.
- Théorie des groupes : définition d'un groupe, sous-groupe.

### Définition

On définit les groupes de matrices suivants :

- Le **groupe orthogonal** d'ordre $n$ : $O_n(\mathbb{R}) = \{M \in \mathcal{M}_n(\mathbb{R}) \mid {}^tM M = I_n\}$.
- Le **groupe spécial orthogonal** d'ordre $n$ : $SO_n(\mathbb{R}) = \{M \in O_n(\mathbb{R}) \mid \det(M) = 1\}$.
- Le **groupe unitaire** d'ordre $n$ : $U_n(\mathbb{C}) = \{M \in \mathcal{M}_n(\mathbb{C}) \mid M^* M = I_n\}$, où $M^* = {}^t\overline{M}$.
- Le **groupe spécial unitaire** d'ordre $n$ : $SU_n(\mathbb{C}) = \{M \in U_n(\mathbb{C}) \mid \det(M) = 1\}$.

Ces ensembles sont des sous-groupes de $GL_n(\mathbb{K})$ pour la multiplication matricielle.

### Propriétés Clés

- **Structure de groupe** : La stabilité par produit matriciel, l'existence de l'élément neutre ($I_n$) et de l'inverse ($M^{-1} = {}^tM$ ou $M^{-1}=M^*$) se vérifient aisément.
- **Lien avec les isométries** : Une matrice $M$ est dans $O_n(\mathbb{R})$ (resp. $U_n(\mathbb{C})$) si et seulement si l'endomorphisme de $\mathbb{R}^n$ (resp. $\mathbb{C}^n$) qu'elle représente dans la base canonique est une isométrie pour le produit scalaire (resp. hermitien) canonique.
- **Caractérisation par les vecteurs colonnes/lignes** : Une matrice $M$ est orthogonale (resp. unitaire) si et seulement si ses vecteurs colonnes (ou ses vecteurs lignes) forment une base orthonormée de $\mathbb{R}^n$ (resp. $\mathbb{C}^n$).
- **Propriétés topologiques** : Ces groupes sont des sous-groupes fermés et bornés (compacts) de $GL_n(\mathbb{K})$. Ce sont des exemples fondamentaux de **groupes de Lie**.
- $SO_n(\mathbb{R})$ est l'ensemble des isométries qui préservent l'orientation. $O_n(\mathbb{R})$ a deux composantes connexes : $SO_n(\mathbb{R})$ et l'ensemble des matrices de déterminant $-1$.

### Exemples

**Exemple 1 (Groupe $SO_2(\mathbb{R})$)**
Les matrices de $SO_2(\mathbb{R})$ sont de la forme $R(\theta) = \begin{pmatrix} \cos(\theta) & -\sin(\theta) \\ \sin(\theta) & \cos(\theta) \end{pmatrix}$ pour $\theta \in \mathbb{R}$. Ce groupe est abélien.

**Exemple 2 (Matrices de permutation)**
La matrice $P = \begin{pmatrix} 0 & 1 & 0 \\ 0 & 0 & 1 \\ 1 & 0 & 0 \end{pmatrix}$ est dans $O_3(\mathbb{R})$. Ses colonnes sont les vecteurs de la base canonique permutés, formant une BON. $\det(P)=1$, donc $P \in SO_3(\mathbb{R})$. Elle représente une rotation d'axe $(1,1,1)$.

**Exemple 3 (Matrices de Pauli et $SU_2(\mathbb{C})$)**
Les matrices de Pauli $\sigma_1 = \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix}, \sigma_2 = \begin{pmatrix} 0 & -i \\ i & 0 \end{pmatrix}, \sigma_3 = \begin{pmatrix} 1 & 0 \\ 0 & -1 \end{pmatrix}$ sont unitaires et hermitiennes. La matrice $U = \begin{pmatrix} i & 0 \\ 0 & -i \end{pmatrix} = i\sigma_3$ est dans $SU_2(\mathbb{C})$.

### Contre-exemples

**Contre-exemple 1 (Matrice de $GL_n(\mathbb{R}) \setminus O_n(\mathbb{R})$)**
Soit $M = \begin{pmatrix} 1 & 1 \\ 0 & 1 \end{pmatrix}$. $\det(M)=1$ mais ${}^tMM = \begin{pmatrix} 1 & 0 \\ 1 & 1 \end{pmatrix}\begin{pmatrix} 1 & 1 \\ 0 & 1 \end{pmatrix} = \begin{pmatrix} 1 & 1 \\ 1 & 2 \end{pmatrix} \neq I_2$. $M$ n'est pas orthogonale.

**Contre-exemple 2 (Vecteurs colonnes non orthogonaux)**
Soit $M = \frac{1}{\sqrt{2}}\begin{pmatrix} 1 & 1 \\ 1 & -1 \end{pmatrix} \in O_2(\mathbb{R})$. Si on modifie une entrée, par exemple $M' = \frac{1}{\sqrt{2}}\begin{pmatrix} 1 & 1 \\ 0 & -1 \end{pmatrix}$, les colonnes n'ont plus la norme 1 et ne sont pas orthogonales. $M'$ n'est pas orthogonale.

### Concepts liés

- **Groupes de Lie** : Les groupes orthogonaux et unitaires sont des exemples paradigmatiques de groupes de Lie compacts.
- **Algèbres de Lie** : À chaque groupe de Lie est associée une algèbre de Lie. Par exemple, l'algèbre de Lie de $SO_n(\mathbb{R})$ est l'espace des matrices antisymétriques.
- **Représentations de groupes** : Ces groupes jouent un rôle central dans la théorie des représentations.

### Applications

- **Physique quantique** : Le groupe $U(n)$ décrit l'évolution des états quantiques, et $SU(n)$ est fondamental dans le Modèle Standard de la physique des particules ($SU(3) \times SU(2) \times U(1)$).
- **Relativité** : Le groupe de Lorentz $O(1,3)$ est un "groupe orthogonal" pour une forme bilinéaire non définie positive (la métrique de Minkowski).

---

## Concept 3: Angle et Orientation

### Prérequis

- Espace euclidien, produit scalaire, inégalité de Cauchy-Schwarz.
- Déterminant, bases d'un espace vectoriel, matrices de passage.

### Définition

Soit $(E, \varphi)$ un espace euclidien réel.

1.  **Angle non-orienté** : Pour deux vecteurs non nuls $x, y \in E$, l'angle non-orienté entre $x$ et $y$ est l'unique réel $\theta \in [0, \pi]$ tel que :
    $$ \varphi(x, y) = \|x\|\|y\|\cos(\theta) $$
    Il est donné par $\theta(x, y) = \arccos\left(\frac{\varphi(x, y)}{\|x\|\|y\|}\right)$.

2.  **Orientation** : Soit $E$ un $\mathbb{R}$-espace vectoriel de dimension $n$. La relation "avoir même orientation" est une relation d'équivalence sur l'ensemble des bases de $E$. Deux bases $\mathcal{B}$ et $\mathcal{B}'$ ont même orientation si la matrice de passage $P_{\mathcal{B}, \mathcal{B}'}$ a un déterminant positif. Orienter $E$ consiste à choisir l'une des deux classes d'équivalence comme "directe" ou "positive".

3.  **Angle orienté (en dimension 2)** : Soit $(E, \varphi)$ un espace euclidien orienté de dimension 2. Pour deux vecteurs non nuls $x, y \in E$, l'angle orienté de $x$ à $y$, noté $\tilde{\theta}(x, y)$, est l'unique élément de $\mathbb{R}/2\pi\mathbb{Z}$ tel que :
    $$ \begin{cases} \varphi(x, y) = \|x\|\|y\|\cos(\tilde{\theta}) \\ \det\_{\mathcal{B}}(x, y) = \|x\|\|y\|\sin(\tilde{\theta}) \end{cases} $$
    où $\mathcal{B}$ est une base orthonormée directe quelconque.

### Propriétés Clés

- L'angle non-orienté est symétrique : $\theta(x, y) = \theta(y, x)$. L'angle orienté est antisymétrique : $\tilde{\theta}(x, y) = -\tilde{\theta}(y, x) \pmod{2\pi}$.
- Le choix d'une orientation est arbitraire. Par convention, la base canonique de $\mathbb{R}^n$ est directe.
- Le groupe $SO_n(\mathbb{R})$ est le groupe des isométries directes (qui préservent l'orientation).
- **Formule fondamentale en dimension 2** : Soit $\mathcal{B}$ une base orthonormée directe. Le déterminant de la matrice de Gram de deux vecteurs $(x,y)$ est :
  $$ \det(G(x,y)) = \det \begin{pmatrix} \langle x,x \rangle & \langle x,y \rangle \\ \langle y,x \rangle & \langle y,y \rangle \end{pmatrix} = \|x\|^2\|y\|^2 - \langle x,y \rangle^2 $$
    Puisque $G(x,y) = {}^tP P$ où $P$ est la matrice de $(x,y)$ dans la base $\mathcal{B}$, on a $\det(G(x,y)) = (\det P)^2 = (\det_{\mathcal{B}}(x,y))^2$. Ceci mène à :
  $$ \left(\frac{\varphi(x, y)}{\|x\|\|y\|}\right)^2 + \left(\frac{\det\_{\mathcal{B}}(x, y)}{\|x\|\|y\|}\right)^2 = 1 $$
    justifiant l'existence et l'unicité de $\tilde{\theta} \pmod{2\pi}$.

### Exemples

**Exemple 1 (Angle non-orienté)**
Dans $\mathbb{R}^3$ euclidien, soit $x=(1,1,0)$ et $y=(1,0,1)$. $\|x\|=\sqrt{2}$, $\|y\|=\sqrt{2}$, $\langle x,y \rangle=1$.
$\cos(\theta) = \frac{1}{\sqrt{2}\cdot\sqrt{2}} = \frac{1}{2}$. Donc $\theta(x,y) = \arccos(1/2) = \pi/3$.

**Exemple 2 (Angle orienté)**
Dans $\mathbb{R}^2$ orienté par la base canonique $\mathcal{B}=(e_1, e_2)$, soit $x=e_1=(1,0)$ et $y=(1,1)$. $\|x\|=1$, $\|y\|=\sqrt{2}$, $\langle x,y \rangle = 1$.
$\det_{\mathcal{B}}(x,y) = \begin{vmatrix} 1 & 1 \\ 0 & 1 \end{vmatrix} = 1$.
$\cos(\tilde{\theta}) = \frac{1}{\sqrt{2}}$ et $\sin(\tilde{\theta}) = \frac{1}{\sqrt{2}}$. Donc $\tilde{\theta}(x,y) = \pi/4 \pmod{2\pi}$.

**Exemple 3 (Changement d'orientation)**
Dans $\mathbb{R}^2$, si on choisit l'orientation définie par la base $\mathcal{B}'=(e_2, e_1)$ (indirecte), alors pour $x=e_1, y=e_2$: $\det_{\mathcal{B}'}(x,y) = \begin{vmatrix} 0 & 1 \\ 1 & 0 \end{vmatrix} = -1$.
L'angle orienté de $e_1$ à $e_2$ devient $-\pi/2$.

### Contre-exemples

**Contre-exemple 1 (Dimension > 2)**
La notion d'angle orienté entre deux vecteurs n'est pas définie de manière intrinsèque en dimension 3. Le "signe" de l'angle dépend du point de vue (du "côté" du plan contenant les vecteurs). Pour définir une orientation du plan $\text{Vect}(x,y)$, il faut choisir un vecteur normal.

**Contre-exemple 2 (Espace non-euclidien)**
Dans un espace muni d'une norme non-dérivée d'un produit scalaire (ex: norme $L_1$), la notion d'angle n'est pas directement définie de cette manière.

### Concepts liés

- **Produit vectoriel** : En dimension 3, le produit vectoriel permet de définir l'orientation d'un plan.
- **Formes différentielles** : La notion de volume et d'orientation est généralisée par les formes différentielles et l'algèbre extérieure. Le déterminant est une $n$-forme.

---

## Concept 4: Classification des isométries euclidiennes planes et spatiales

### Prérequis

- Isométrie, groupes $O_n(\mathbb{R})$ et $SO_n(\mathbb{R})$.
- Valeurs propres, vecteurs propres, polynôme caractéristique.
- Diagonalisation et réduction des endomorphismes.

### Définition

Ce concept vise à classifier toutes les isométries d'un espace euclidien de dimension 2 et 3 en décrivant leur nature géométrique via une forme matricielle canonique dans une base orthonormée adaptée.

### Propriétés Clés

**Théorème 2.4.1 (Classification dans $O_2(\mathbb{R})$)**
Soit $f$ une isométrie de $\mathbb{R}^2$. Soit $M$ sa matrice dans une base orthonormée.

1.  Si $\det(M) = 1$ ($f \in SO_2(\mathbb{R})$), alors $f$ est une **rotation**. Il existe $\theta \in \mathbb{R}$ tel que dans toute base orthonormée directe, la matrice de $f$ est
    $$ R\_\theta = \begin{pmatrix} \cos(\theta) & -\sin(\theta) \\ \sin(\theta) & \cos(\theta) \end{pmatrix} $$
2.  Si $\det(M) = -1$, alors $f$ est une **réflexion orthogonale** par rapport à une droite. Il existe une base orthonormée (directe ou non) dans laquelle la matrice de $f$ est
    $$ S = \begin{pmatrix} 1 & 0 \\ 0 & -1 \end{pmatrix} $$

**Théorème 2.4.2 (Classification dans $O_3(\mathbb{R})$)**
Soit $f$ une isométrie de $\mathbb{R}^3$. Soit $M$ sa matrice dans une base orthonormée.

1.  Si $\det(M) = 1$ ($f \in SO_3(\mathbb{R})$), alors $f$ est une **rotation** d'axe une droite vectorielle. Il existe une base orthonormée directe dans laquelle la matrice de $f$ est
    $$ R = \begin{pmatrix} \cos(\theta) & -\sin(\theta) & 0 \\ \sin(\theta) & \cos(\theta) & 0 \\ 0 & 0 & 1 \end{pmatrix} $$
    L'axe de rotation est dirigé par le troisième vecteur de base, qui est un vecteur propre pour la valeur propre 1.
2.  Si $\det(M) = -1$, alors $f$ est la composée d'une rotation et d'une réflexion par rapport au plan orthogonal à l'axe de rotation (**roto-réflexion**). Il existe une base orthonormée directe dans laquelle la matrice de $f$ est
    $$ S = \begin{pmatrix} \cos(\theta) & -\sin(\theta) & 0 \\ \sin(\theta) & \cos(\theta) & 0 \\ 0 & 0 & -1 \end{pmatrix} $$

**Idée de la preuve (pour $O_3(\mathbb{R})$)**: Le polynôme caractéristique $\chi_M(\lambda)$ est de degré 3, il a donc au moins une racine réelle $\lambda_0$. Comme $M$ est une isométrie, ses valeurs propres réelles ne peuvent être que $\pm 1$. Soit $X_0$ un vecteur propre associé. L'hyperplan $X_0^\perp$ est stable par $M$. L'étude de l'isométrie $M|_{X_0^\perp}$ (qui est une isométrie plane) permet de conclure.

### Exemples

**Exemple 1 (Rotation dans $\mathbb{R}^3$)**
La matrice $M = \begin{pmatrix} 0 & -1 & 0 \\ 1 & 0 & 0 \\ 0 & 0 & 1 \end{pmatrix}$ est dans $SO_3(\mathbb{R})$. C'est une rotation d'angle $\pi/2$ autour de l'axe $Oz$.

**Exemple 2 (Réflexion dans $\mathbb{R}^3$)**
La matrice $M = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & -1 \end{pmatrix}$ est dans $O_3(\mathbb{R})$ avec $\det(M)=-1$. C'est une réflexion par rapport au plan $Oxy$. C'est un cas de roto-réflexion avec $\theta=0$.

**Exemple 3 (Inversion centrale)**
La matrice $M = -I_3 = \begin{pmatrix} -1 & 0 & 0 \\ 0 & -1 & 0 \\ 0 & 0 & -1 \end{pmatrix}$ a $\det(M)=-1$. Elle peut être mise sous forme canonique d'une roto-réflexion avec $\theta=\pi$ et axe quelconque. C'est la composition d'une rotation d'angle $\pi$ et d'une réflexion par rapport au plan orthogonal à l'axe.

### Contre-exemples

**Contre-exemple 1 (Isométrie en dimension 4)**
Une isométrie de $\mathbb{R}^4$ n'a pas nécessairement d'axe de rotation (droite invariante). Par exemple, la matrice $M = \begin{pmatrix} \cos \theta & -\sin \theta & 0 & 0 \\ \sin \theta & \cos \theta & 0 & 0 \\ 0 & 0 & \cos \phi & -\sin \phi \\ 0 & 0 & \sin \phi & \cos \phi \end{pmatrix}$ dans $SO_4(\mathbb{R})$ n'a de vecteur propre réel que si $\theta$ ou $\phi$ est un multiple de $\pi$. C'est une double rotation.

**Contre-exemple 2 (Transformation non-isométrique)**
Une affinité orthogonale comme $f(x,y,z) = (x,y,2z)$ n'est pas une isométrie et n'entre pas dans cette classification. Elle a bien un axe et un plan invariants, mais elle déforme les longueurs.

### Concepts liés

- **Théorème d'Euler (1776)** : Toute composition de rotations dans $\mathbb{R}^3$ est une rotation. C'est une conséquence du fait que $SO_3(\mathbb{R})$ est un groupe.
- **Formule de Rodrigues** : Donne une expression explicite d'une rotation à partir de son axe et son angle.
- **Quaternions** : Offrent un cadre algébrique élégant pour calculer avec les rotations de $\mathbb{R}^3$.

---

## Concept 5: Produit Vectoriel dans $\mathbb{R}^3$

### Prérequis

- Espace euclidien orienté de dimension 3.
- Déterminant, formes multilinéaires.
- Théorème de représentation de Riesz pour les formes linéaires.

### Définition

Soit $E=\mathbb{R}^3$ muni de son produit scalaire canonique $\langle \cdot, \cdot \rangle$ et de son orientation canonique.
Pour tout couple de vecteurs $(U, V) \in E^2$, le **produit vectoriel** de $U$ et $V$ est l'unique vecteur $U \land V \in E$ qui vérifie :
$$ \forall W \in E, \quad \det(U, V, W) = \langle U \land V, W \rangle $$
L'existence et l'unicité de ce vecteur sont garanties par le théorème de représentation de Riesz, l'application $W \mapsto \det(U,V,W)$ étant une forme linéaire sur $E$.

### Propriétés Clés

- **Bilinéarité** : L'application $(U,V) \mapsto U \land V$ est bilinéaire.
- **Antisymétrie** : $V \land U = - U \land V$. En particulier, $U \land U = 0$.
- **Condition de colinéarité** : $U \land V = 0 \iff (U, V)$ est une famille liée.
- **Orthogonalité** : Le vecteur $U \land V$ est orthogonal à $U$ et à $V$. Il est donc orthogonal au plan $\text{Vect}(U,V)$. On a $(U \land V)^\perp = \text{Vect}(U,V)$ si $U,V$ non colinéaires.
- **Orientation** : Si $(U,V)$ est une famille libre, la base $(U, V, U \land V)$ est directe.
- **Norme** : $\|U \land V\| = \|U\|\|V\| |\sin(\theta(U, V))|$, où $\theta$ est l'angle (non-orienté) entre $U$ et $V$. La norme de $U \land V$ est l'aire du parallélogramme engendré par $U$ et $V$.
- **Expression en coordonnées** : Dans une base orthonormée directe $(e_1, e_2, e_3)$, si $U=(u_1, u_2, u_3)$ et $V=(v_1, v_2, v_3)$, alors :
  $$ U \land V = (u_2 v_3 - u_3 v_2)e_1 + (u_3 v_1 - u_1 v_3)e_2 + (u_1 v_2 - u_2 v_1)e_3 $$
- **Identités avancées**:
  - **Double produit vectoriel** : $U \land (V \land W) = \langle U, W \rangle V - \langle U, V \rangle W$.
  - **Identité de Jacobi** : $U \land (V \land W) + V \land (W \land U) + W \land (U \land V) = 0$.

### Exemples

**Exemple 1 (Base canonique)**
Soit $(e_1, e_2, e_3)$ la base canonique de $\mathbb{R}^3$. On a $e_1 \land e_2 = e_3$, $e_2 \land e_3 = e_1$, $e_3 \land e_1 = e_2$.

**Exemple 2 (Calcul explicite)**
Soit $U=(1,2,3)$ et $V=(-1,0,4)$.
$U \land V = ((2)(4)-(3)(0), (3)(-1)-(1)(4), (1)(0)-(2)(-1)) = (8, -7, 2)$.
On peut vérifier que $\langle U \land V, U \rangle = 8-14+6=0$ et $\langle U \land V, V \rangle = -8+0+8=0$.

**Exemple 3 (Aire d'un triangle)**
L'aire du triangle de sommets $A, B, C$ est $\frac{1}{2} \|\vec{AB} \land \vec{AC}\|$. Soit $A=(0,0,0), B=(1,2,3), C=(-1,0,4)$. L'aire est $\frac{1}{2}\|(8,-7,2)\| = \frac{1}{2}\sqrt{64+49+4} = \frac{\sqrt{117}}{2}$.

### Contre-exemples

**Contre-exemple 1 (Non-associativité)**
Le produit vectoriel n'est pas associatif.
$(e_1 \land e_1) \land e_2 = 0 \land e_2 = 0$.
$e_1 \land (e_1 \land e_2) = e_1 \land e_3 = -e_2$.
Donc $(e_1 \land e_1) \land e_2 \neq e_1 \land (e_1 \land e_2)$.

**Contre-exemple 2 (Dépendance de la dimension)**
Un produit binaire ayant ces propriétés (bilinéaire, antisymétrique, produisant un vecteur orthogonal) n'existe qu'en dimension 3 et 7 (via les octonions). La définition via le déterminant généralise le produit vectoriel à un produit $(n-1)$-aire en dimension $n$.

### Concepts liés

- **Algèbre extérieure** : Le produit vectoriel est un cas particulier du produit extérieur (wedge product) dans l'algèbre extérieure $\Lambda(\mathbb{R}^3)$. Plus précisément, $u \wedge v = \star (u \land v)$ où $\star$ est l'opérateur de Hodge.
- **Moment cinétique** : En physique, le moment cinétique $\vec{L}$ est défini par le produit vectoriel $\vec{L} = \vec{r} \land \vec{p}$.
- **Algèbre de Lie** : L'espace $\mathbb{R}^3$ muni du produit vectoriel est une algèbre de Lie, isomorphe à l'algèbre de Lie $\mathfrak{so}(3)$ des matrices antisymétriques $3 \times 3$.

---

## Concept 6: Formule de Rodrigues pour les rotations

### Prérequis

- Classification des isométries de $\mathbb{R}^3$, en particulier les rotations.
- Produit scalaire et produit vectoriel dans $\mathbb{R}^3$.
- Décomposition d'un vecteur selon des sous-espaces orthogonaux.

### Définition

La **formule de Rodrigues** donne une expression explicite de l'image d'un vecteur $U \in \mathbb{R}^3$ par une rotation $\mathcal{R}$ définie par son axe (donné par un vecteur unitaire $N$) et son angle $\theta$.
$$ \mathcal{R}(U) = (\cos\theta) U + (1-\cos\theta) \langle U, N \rangle N + (\sin\theta) N \land U $$

### Démonstration

Soit $U \in \mathbb{R}^3$. On le décompose en une partie colinéaire à $N$ et une partie orthogonale :
$$ U = U*\parallel + U*\perp \quad \text{avec} \quad U*\parallel = \langle U, N \rangle N \quad \text{et} \quad U*\perp = U - \langle U, N \rangle N $$
La rotation laisse $U_\parallel$ invariant : $\mathcal{R}(U_\parallel) = U_\parallel$.
La rotation agit sur $U_\perp$ (qui est dans le plan $N^\perp$) comme une rotation plane d'angle $\theta$. Le vecteur $N \land U_\perp = N \land U$ est dans $N^\perp$, est orthogonal à $U_\perp$ et a la même norme que $U_\perp$ (car $\|N\|=1$). La famille $( \frac{U_\perp}{\|U_\perp\|}, \frac{N \land U_\perp}{\|U_\perp\|} )$ est une base orthonormée directe du plan $N^\perp$ (orienté par $N$).
L'image de $U_\perp$ par la rotation est donc :
$$ \mathcal{R}(U*\perp) = (\cos\theta) U*\perp + (\sin\theta) (N \land U*\perp) $$
En combinant les deux parties par linéarité :
$$ \mathcal{R}(U) = \mathcal{R}(U*\parallel) + \mathcal{R}(U*\perp) = U*\parallel + (\cos\theta) U\_\perp + (\sin\theta) (N \land U) $$
$$ \mathcal{R}(U) = \langle U, N \rangle N + (\cos\theta) (U - \langle U, N \rangle N) + (\sin\theta) (N \land U) $$
$$ \mathcal{R}(U) = (\cos\theta)U + (1-\cos\theta) \langle U, N \rangle N + (\sin\theta)N \land U $$

### Propriétés Clés

- **Caractère intrinsèque** : La formule ne dépend pas d'un choix de base, seulement des données géométriques de la rotation ($N, \theta$).
- **Application matricielle** : Elle permet de calculer la matrice d'une rotation dans n'importe quelle base, en appliquant la formule aux vecteurs de base. La matrice $R$ de la rotation est donnée par $R = (\cos\theta)I + (1-\cos\theta)N {}^tN + (\sin\theta)[N]_\times$, où $[N]_\times$ est la matrice de l'application $U \mapsto N \land U$.
- **Lien avec l'exponentielle de matrice** : La rotation peut être vue comme l'exponentielle de son "générateur infinitésimal", un élément de l'algèbre de Lie $\mathfrak{so}(3)$. On a $\mathcal{R} = \exp(\theta [N]_\times)$. La formule de Rodrigues est une forme explicite de cette exponentielle.

### Exemples

**Exemple 1 (Rotation de $\pi/2$ autour de $e_3$)**
Soit $N=e_3=(0,0,1)$ et $\theta=\pi/2$. $\cos\theta=0, \sin\theta=1$.
$\mathcal{R}(U) = (1-0)\langle U, e_3 \rangle e_3 + 1 \cdot e_3 \land U = u_3 e_3 + (u_2, -u_1, 0) = (-u_2, u_1, u_3)$.
On retrouve la rotation bien connue.

**Exemple 2 (Rotation d'axe (1,1,1))**
Soit $N = \frac{1}{\sqrt{3}}(1,1,1)$ et $\theta=\pi/4$.
Soit $U=e_1=(1,0,0)$.
$\langle U,N \rangle = 1/\sqrt{3}$.
$N \land U = \frac{1}{\sqrt{3}}(1,1,1) \land (1,0,0) = \frac{1}{\sqrt{3}}(0,1,-1)$.
$\mathcal{R}(e_1) = \frac{\sqrt{2}}{2} (1,0,0) + (1-\frac{\sqrt{2}}{2}) (\frac{1}{\sqrt{3}})^2 (1,1,1) + \frac{\sqrt{2}}{2} \frac{1}{\sqrt{3}}(0,1,-1)$.
Le calcul, bien que fastidieux, donne la première colonne de la matrice de l'exemple du cours.

**Exemple 3 (Vecteur sur l'axe)**
Si $U$ est colinéaire à $N$, $U = \lambda N$. Alors $\langle U,N \rangle = \lambda$, $N \land U = 0$.
$\mathcal{R}(U) = (\cos\theta)\lambda N + (1-\cos\theta)\lambda N + 0 = \lambda N = U$. Le vecteur est invariant, comme attendu.

### Contre-exemples

La formule de Rodrigues ne s'applique pas :

1.  **Aux isométries qui ne sont pas des rotations pures**, comme les réflexions ou les roto-réflexions.
2.  **En dimension autre que 3**, car elle repose sur le produit vectoriel qui est spécifique à $\mathbb{R}^3$.

### Concepts liés

- **Quaternions** : Les quaternions fournissent une alternative à la formule de Rodrigues pour représenter et composer les rotations, souvent plus efficace numériquement. Un quaternion unitaire $q = \cos(\theta/2) + \sin(\theta/2) N$ représente la rotation d'axe $N$ et d'angle $\theta$.
- **Exponentielle de matrices** : Formalisme puissant pour décrire les groupes de Lie à un paramètre, comme les rotations autour d'un axe fixe.

---

## Concept 7: Le groupe $SU_2(\mathbb{C})$ comme revêtement double de $SO_3(\mathbb{R})$

### Prérequis

- Groupes $SU_2(\mathbb{C})$ et $SO_3(\mathbb{R})$.
- Espaces hermitiens, matrices hermitiennes ($M^*=M$), matrices antihermitiennes ($M^*=-M$).
- Trace d'une matrice, algèbre linéaire sur $\mathbb{R}$ et $\mathbb{C}$.
- Notions de base de topologie (homéomorphisme) et de théorie des groupes (morphisme, noyau).

### Définition

Ce concept établit un lien profond et non trivial entre le groupe des matrices spéciales unitaires de taille 2 et le groupe des rotations de l'espace tridimensionnel. Il existe un morphisme de groupes surjectif $\mathcal{J}: SU_2(\mathbb{C}) \to SO_3(\mathbb{R})$ dont le noyau est $\{\pm I_2\}$. On dit que $SU_2(\mathbb{C})$ est un **revêtement double** de $SO_3(\mathbb{R})$.

### Construction du morphisme

1.  **L'espace des matrices hermitiennes à trace nulle** :
    On considère l'ensemble $\mathcal{V} = \{M \in \mathcal{M}_2(\mathbb{C}) \mid \text{Tr}(M) = 0 \text{ et } M^* = M\}$.
    $\mathcal{V}$ est un $\mathbb{R}$-espace vectoriel de dimension 3. Une base de $\mathcal{V}$ est donnée par les **matrices de Pauli** :
    $$ \sigma_1 = \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix}, \quad \sigma_2 = \begin{pmatrix} 0 & -i \\ i & 0 \end{pmatrix}, \quad \sigma_3 = \begin{pmatrix} 1 & 0 \\ 0 & -1 \end{pmatrix} $$
    (La base du cours est $(T_1, T_2, T_3) = (\sigma_2, \sigma_1, \sigma_3)$).

2.  **Structure euclidienne sur $\mathcal{V}$** :
    On munit $\mathcal{V}$ du produit scalaire réel $\varphi(A, B) = \frac{1}{2} \text{Tr}(AB)$. Cette forme est bilinéaire, symétrique et définie positive. Pour ce produit scalaire, la base $(\sigma_1, \sigma_2, \sigma_3)$ est orthonormée. On identifie ainsi $(\mathcal{V}, \varphi)$ à $\mathbb{R}^3$ euclidien.

3.  **L'action de $SU_2(\mathbb{C})$ sur $\mathcal{V}$ (Représentation adjointe)** :
    Pour $U \in SU_2(\mathbb{C})$ et $M \in \mathcal{V}$, on définit l'action par conjugaison :
    $$ \text{Ad}\_U(M) := UMU^\* $$

    - $\text{Ad}_U(M)$ est bien dans $\mathcal{V}$ : $\text{Tr}(UMU^*) = \text{Tr}(M)=0$ et $(UMU^*)^* = U M^* U^* = UMU^*$.
    - $\text{Ad}_U$ est une application $\mathbb{R}$-linéaire de $\mathcal{V}$ dans $\mathcal{V}$.
    - $\text{Ad}_U$ est une isométrie de $(\mathcal{V}, \varphi)$ : $\varphi(\text{Ad}_U(M), \text{Ad}_U(M)) = \frac{1}{2}\text{Tr}((UMU^*)^2) = \frac{1}{2}\text{Tr}(UMU^*UMU^*) = \frac{1}{2}\text{Tr}(UM^2U^*) = \frac{1}{2}\text{Tr}(M^2) = \varphi(M,M)$.

4.  **Le morphisme $\mathcal{J}$** :
    L'application $U \mapsto \text{Ad}_U$ est un morphisme de groupes de $SU_2(\mathbb{C})$ dans $O(\mathcal{V}) \cong O_3(\mathbb{R})$. Comme $SU_2(\mathbb{C})$ est connexe, son image est dans la composante connexe de l'identité, soit $SO(\mathcal{V}) \cong SO_3(\mathbb{R})$. On définit :
    $$ \mathcal{J}: SU*2(\mathbb{C}) \to SO_3(\mathbb{R}), \quad U \mapsto \text{Mat}*{(\sigma_k)}(\text{Ad}\_U) $$

### Propriétés Clés

- **Paramétrisation de $SU_2(\mathbb{C})$** : $U \in SU_2(\mathbb{C}) \iff U = \begin{pmatrix} \alpha & -\overline{\beta} \\ \beta & \overline{\alpha} \end{pmatrix}$ avec $|\alpha|^2 + |\beta|^2 = 1$.
- **Homéomorphisme avec $S^3$** : L'application qui à $U$ associe $(\text{Re}(\alpha), \text{Im}(\alpha), \text{Re}(\beta), \text{Im}(\beta))$ est un homéomorphisme entre $SU_2(\mathbb{C})$ et la sphère unité $S^3$ de $\mathbb{R}^4$.
- **Surjectivité de $\mathcal{J}$** : On peut montrer que tout élément de $SO_3(\mathbb{R})$ est l'image d'un élément de $SU_2(\mathbb{C})$.
- **Noyau de $\mathcal{J}$** : $\text{Ker}(\mathcal{J}) = \{U \in SU_2(\mathbb{C}) \mid UMU^*=M, \forall M \in \mathcal{V}\}$. Ceci implique que $U$ commute avec toutes les matrices de $\mathcal{M}_2(\mathbb{C})$, donc $U$ est une matrice scalaire. Les seules matrices scalaires dans $SU_2(\mathbb{C})$ sont $I_2$ et $-I_2$. Donc $\text{Ker}(\mathcal{J}) = \{I_2, -I_2\} \cong \mathbb{Z}/2\mathbb{Z}$.
- **Topologie** : $SO_3(\mathbb{R})$ est topologiquement l'espace projectif réel $\mathbb{R}P^3$, tandis que $SU_2(\mathbb{C})$ est la sphère $S^3$. $S^3$ est simplement connexe, mais $SO_3(\mathbb{R})$ ne l'est pas (son groupe fondamental est $\mathbb{Z}/2\mathbb{Z}$).

### Exemples

**Exemple 1 (Rotation explicite)**
Soit $U = D_\theta = \begin{pmatrix} e^{i\theta} & 0 \\ 0 & e^{-i\theta} \end{pmatrix} \in SU_2(\mathbb{C})$.
$\text{Ad}_{D_\theta}(\sigma_3) = D_\theta \sigma_3 D_\theta^* = \sigma_3$. L'axe de la rotation est donc $\sigma_3$.
$\text{Ad}_{D_\theta}(\sigma_1) = \cos(2\theta)\sigma_1 - \sin(2\theta)\sigma_2$.
$\text{Ad}_{D_\theta}(\sigma_2) = \sin(2\theta)\sigma_1 + \cos(2\theta)\sigma_2$.
La matrice de $\mathcal{J}(D_\theta)$ dans la base $(\sigma_1, \sigma_2, \sigma_3)$ est $\begin{pmatrix} \cos(2\theta) & \sin(2\theta) & 0 \\ -\sin(2\theta) & \cos(2\theta) & 0 \\ 0 & 0 & 1 \end{pmatrix}$, une rotation d'angle $-2\theta$ autour du 3ème axe.

**Exemple 2 (Image de $-I_2$)**
$\mathcal{J}(-I_2) = \text{Ad}_{-I_2}$ où $\text{Ad}_{-I_2}(M) = (-I_2)M(-I_2)^* = M$. Donc $\mathcal{J}(-I_2)$ est l'identité de $SO_3(\mathbb{R})$, confirmant que $-I_2 \in \text{Ker}(\mathcal{J})$.

**Exemple 3 (Demi-tour)**
Soit $U = \begin{pmatrix} 0 & i \\ i & 0 \end{pmatrix} = i\sigma_1 \in SU_2(\mathbb{C})$. Ceci correspond à $\alpha=0, \beta=i$. On a $U=D_{\pi/4} \sigma_1 D_{-\pi/4}$. Un calcul montre que $\mathcal{J}(U)$ est une rotation d'angle $\pi$ (un demi-tour).

### Concepts liés

- **Groupes et algèbres de Lie** : C'est l'exemple fondamental de la relation entre une algèbre de Lie (ici $\mathfrak{su}(2) \cong \mathbb{R}^3$) et son groupe de Lie. $\mathcal{V}$ est essentiellement l'algèbre de Lie $\mathfrak{su}(2)$. L'application Ad est la représentation adjointe.
- **Spinors** : En physique quantique, les électrons (et autres fermions) ne sont pas décrits par des vecteurs mais par des spineurs, qui sont des éléments de l'espace de représentation de $SU_2(\mathbb{C})$. Une rotation de $360^\circ$ dans $\mathbb{R}^3$ (identité dans $SO_3$) correspond à $U=-I_2$ dans $SU_2$, ce qui change le signe du spineur. Il faut une rotation de $720^\circ$ pour revenir à l'état initial.
- **Topologie algébrique** : Les notions de revêtement, de groupe fondamental et de simple connexité sont centrales pour comprendre la différence topologique entre $SU_2(\mathbb{C})$ et $SO_3(\mathbb{R})$.
