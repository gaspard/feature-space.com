---
id: beac1313
type: concepts
order: 20
title: 'Groupes d''isométries - concepts (B)'
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
level: pro
createdAt: '2025-10-12T18:12:33.659Z'
---
# Chapitre 2: Groupes d'isométries (B)

---

## Concept 1: Isométrie (Endomorphismes Orthogonaux et Unitaires)

### Prérequis

- Espaces vectoriels euclidiens et hermitiens, produit scalaire (hermitien), norme associée.
- Endomorphismes, endomorphisme adjoint ($f^*$).
- Identités de polarisation.
- Théorème du rang.

### Définition

Soit $(E, \varphi)$ un espace vectoriel euclidien (sur $\mathbb{R}$) ou hermitien (sur $\mathbb{C}$). Un endomorphisme $f \in \mathcal{L}(E)$ est une **isométrie vectorielle** si et seulement si $f$ préserve la norme, i.e. :

$$ \forall x \in E, \quad \|f(x)\| = \|x\| $$

où $\| \cdot \| = \sqrt{\varphi(\cdot, \cdot)}$ est la norme induite par le produit scalaire (ou hermitien).

Dans le cas réel (euclidien), une isométrie est aussi appelée **transformation orthogonale**.

Dans le cas complexe (hermitien), une isométrie est aussi appelée **transformation unitaire**.

### Propriétés Clés

- **Caractérisations équivalentes** : Soit $f \in \mathcal{L}(E)$. Les assertions suivantes sont équivalentes :
    1. $f$ est une isométrie (i.e. $\forall x \in E, \|f(x)\| = \|x\|$).
    2. $f$ préserve le produit scalaire (i.e. $\forall x, y \in E, \varphi(f(x), f(y)) = \varphi(x, y)$).
    3. $f$ est un automorphisme et son inverse est son adjoint (i.e. $f \in GL(E)$ et $f^{-1} = f^*$).
    
    *Démonstration.*

    $(1) \implies (2)$ : Par les identités de polarisation.

    Cas euclidien : $\varphi(x,y) = \frac{1}{4}(\|x+y\|^2 - \|x-y\|^2)$.

    Comme $\|f(u)\| = \|u\|$ pour tout $u \in E$, on a :

    $\varphi(f(x), f(y)) = \frac{1}{4}(\|f(x)+f(y)\|^2 - \|f(x)-f(y)\|^2) = \frac{1}{4}(\|f(x+y)\|^2 - \|f(x-y)\|^2) = \frac{1}{4}(\|x+y\|^2 - \|x-y\|^2) = \varphi(x,y)$.

    Le cas hermitien est analogue en utilisant la formule de polarisation complexe.
    
    $(2) \implies (3)$ :

    Injectivité : Soit $x \in \ker(f)$, alors $f(x)=0$. On a $\|f(x)\|^2 = \varphi(f(x), f(x)) = \varphi(x,x) = \|x\|^2$. Donc $\|x\|=0$, ce qui implique $x=0$. Ainsi $\ker(f)=\{0\}$.

    En dimension finie, le théorème du rang implique que $f$ est surjective, donc c'est un isomorphisme.

    Pour tout $x,y \in E$, on a $\varphi(f(x),f(y)) = \varphi(x,y)$. Par définition de l'adjoint, $\varphi(f(x),f(y)) = \varphi(x, f^* (f(y)))$.

    Donc $\varphi(x, f^*f(y)) = \varphi(x,y)$, soit $\varphi(x, (f^*f - \text{Id})(y)) = 0$ pour tout $x \in E$.

    Le produit scalaire étant non-dégénéré, il s'ensuit que $(f^*f - \text{Id})(y)=0$ pour tout $y \in E$, donc $f^*f = \text{Id}$. Comme $f$ est un isomorphisme, on a $f^{-1}=f^*$.

    $(3) \implies (1)$ :

    Pour tout $x \in E$, $\|f(x)\|^2 = \varphi(f(x), f(x)) = \varphi(x, f^*f(x))$.

    Puisque $f^*=f^{-1}$, on a $f^*f = \text{Id}$, d'où $\|f(x)\|^2 = \varphi(x,x) = \|x\|^2$.

- **Conservation de l'orthonormalité** : Un endomorphisme $f$ est une isométrie si et seulement si l'image par $f$ d'une base orthonormée de $E$ est une base orthonormée de $E$.

- **Groupe des isométries** : L'ensemble des isométries de $E$, noté $O(E)$ (cas euclidien) ou $U(E)$ (cas hermitien), forme un groupe pour la loi de composition $\circ$. C'est un sous-groupe de $GL(E)$.

- **Déterminant** : Si $f$ est une isométrie, alors $|\det(f)| = 1$.

    *Démonstration.* Soit $M$ la matrice de $f$ dans une base orthonormée. Alors la matrice de $f^*$ est $M^* := {}^t\overline{M}$. La condition $f^*f = \text{Id}$ se traduit par $M^*M = I$. En passant au déterminant : $\det(M^*M) = \det(M^*)\det(M) = \overline{\det(M)}\det(M) = |\det(M)|^2 = \det(I) = 1$.

### Exemples

**Exemple 1 : Rotation plane**

Soit $E=\mathbb{R}^2$ euclidien canonique. L'endomorphisme $f$ de matrice $R(\theta) = \begin{pmatrix} \cos\theta & -\sin\theta \\ \sin\theta & \cos\theta \end{pmatrix}$ dans la base canonique est une isométrie. Pour tout $x=(x_1, x_2)$, $f(x) = (x_1\cos\theta - x_2\sin\theta, x_1\sin\theta + x_2\cos\theta)$. Un calcul direct montre que $\|f(x)\|^2 = (x_1\cos\theta - x_2\sin\theta)^2 + (x_1\sin\theta + x_2\cos\theta)^2 = x_1^2+x_2^2 = \|x\|^2$.

**Exemple 2 : Réflexion (symétrie orthogonale)**

Soit $F$ un sous-espace vectoriel de $E$. La réflexion par rapport à $F$ est l'endomorphisme $s_F$ défini par $s_F(x) = x_F - x_{F^\perp}$, où $x = x_F + x_{F^\perp}$ est la décomposition orthogonale de $x$. On a $\|s_F(x)\|^2 = \|x_F - x_{F^\perp}\|^2 = \|x_F\|^2 + \|-x_{F^\perp}\|^2 = \|x_F\|^2 + \|x_{F^\perp}\|^2 = \|x\|^2$. C'est une isométrie.

**Exemple 3 : Isométrie unitaire**

Dans $E=\mathbb{C}^2$ hermitien canonique, l'endomorphisme $f$ de matrice $U = \frac{1}{\sqrt{2}}\begin{pmatrix} 1 & i \\ i & 1 \end{pmatrix}$ est une isométrie. On a $U^* = {}^t\overline{U} = \frac{1}{\sqrt{2}}\begin{pmatrix} 1 & -i \\ -i & 1 \end{pmatrix}$. Un calcul montre $UU^* = \frac{1}{2}\begin{pmatrix} 1-i^2 & -i+i \\ i-i & -i^2+1 \end{pmatrix} = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix} = I_2$. Donc $U$ est unitaire et $f$ est une isométrie.

### Contre-exemples

**Contre-exemple 1 : Homothétie**

L'homothétie $h_\lambda : x \mapsto \lambda x$ pour $\lambda \in \mathbb{R} \setminus \{\pm 1\}$ n'est pas une isométrie. En effet, $\|h_\lambda(x)\| = \|\lambda x\| = |\lambda|\|x\| \neq \|x\|$ pour $x\neq 0$.

**Contre-exemple 2 : Projection orthogonale**

Soit $p_F$ la projection orthogonale sur un sous-espace strict non nul $F \subset E$. Pour $x \in F^\perp \setminus \{0\}$, on a $p_F(x)=0$, donc $\|p_F(x)\|=0$ alors que $\|x\| \neq 0$. La norme n'est pas préservée.

### Concepts liés

- **Groupes orthogonaux $O_n(\mathbb{R})$ et unitaires $U_n(\mathbb{C})$** : Ce sont les réalisations matricielles des groupes d'isométries $O(\mathbb{R}^n)$ et $U(\mathbb{C}^n)$ dans une base orthonormée.
- **Automorphismes d'espaces préhilbertiens** : La notion d'isométrie se généralise aux espaces de dimension infinie, où elle est un concept central en analyse fonctionnelle (e.g., opérateurs unitaires sur les espaces de Hilbert).
- **Théorème de Cartan-Dieudonné** : Toute isométrie d'un espace euclidien de dimension $n$ se décompose en un produit d'au plus $n$ réflexions hyperplanes.

---

## Concept 2: Groupes Orthogonaux et Unitaires

### Prérequis

- Concept d'isométrie, algèbre matricielle.
- Théorie des groupes (définition d'un groupe, sous-groupe, sous-groupe distingué).

### Définition

Soit $n \in \mathbb{N}^*$. On définit les groupes matriciels suivants :

- Le **groupe orthogonal** d'ordre $n$ :

$$ O_n(\mathbb{R}) = \{ M \in M_n(\mathbb{R}) \mid {}^tMM = I_n \} $$

- Le **groupe spécial orthogonal** d'ordre $n$ :

$$ SO_n(\mathbb{R}) = \{ M \in O_n(\mathbb{R}) \mid \det(M) = 1 \} $$

- Le **groupe unitaire** d'ordre $n$ :

$$ U_n(\mathbb{C}) = \{ M \in M_n(\mathbb{C}) \mid M^*M = I_n \}, \text{ où } M^*={}^t\overline{M} $$

- Le **groupe spécial unitaire** d'ordre $n$ :

$$ SU_n(\mathbb{C}) = \{ M \in U_n(\mathbb{C}) \mid \det(M) = 1 \} $$

Ces ensembles sont des groupes pour la multiplication matricielle.

### Propriétés Clés

- **Structure de groupe** : Ces quatre ensembles sont des sous-groupes de $GL_n(\mathbb{K})$ (avec $\mathbb{K}=\mathbb{R}$ ou $\mathbb{C}$). La stabilité par produit et par inversion est une vérification directe. Par exemple, si $M, N \in O_n(\mathbb{R})$, alors ${}^t(MN)(MN) = {}^tN{}^tMMN = {}^tN I_n N = {}^tNN = I_n$. De plus, ${}^t(M^{-1})M^{-1} = (M^t)^{-1}M^{-1} = (M^tM)^{-1} = I_n^{-1} = I_n$.

- **Interprétation géométrique** : La matrice d'une isométrie d'un espace euclidien (resp. hermitien) de dimension $n$ dans une base orthonormée est un élément de $O_n(\mathbb{R})$ (resp. $U_n(\mathbb{C})$). Réciproquement, toute matrice de $O_n(\mathbb{R})$ (resp. $U_n(\mathbb{C})$) définit une isométrie sur $\mathbb{R}^n$ (resp. $\mathbb{C}^n$) muni de son produit scalaire canonique.

- **Structure de sous-groupe distingué** :
  - $SO_n(\mathbb{R})$ est un sous-groupe distingué de $O_n(\mathbb{R})$. L'application $\det: O_n(\mathbb{R}) \to \{-1, 1\}$ est un morphisme de groupe surjectif dont le noyau est $SO_n(\mathbb{R})$. Le groupe quotient $O_n(\mathbb{R})/SO_n(\mathbb{R})$ est isomorphe à $\mathbb{Z}/2\mathbb{Z}$. Les éléments de $SO_n(\mathbb{R})$ sont appelés isométries directes (ou rotations), ceux de $O_n(\mathbb{R}) \setminus SO_n(\mathbb{R})$ sont les isométries indirectes.
  - De même, $SU_n(\mathbb{C})$ est un sous-groupe distingué de $U_n(\mathbb{C})$.

- **Propriétés topologiques** : Vus comme sous-ensembles de $M_n(\mathbb{K}) \cong \mathbb{K}^{n^2}$, ces groupes sont des compacts de $M_n(\mathbb{K})$. Ce sont des exemples fondamentaux de **groupes de Lie**.

### Exemples

**Exemple 1 : Le groupe $SO_2(\mathbb{R})$**

Ce groupe est l'ensemble des matrices $R(\theta) = \begin{pmatrix} \cos\theta & -\sin\theta \\ \sin\theta & \cos\theta \end{pmatrix}$ pour $\theta \in \mathbb{R}$. Il est abélien : $R(\theta_1)R(\theta_2)=R(\theta_1+\theta_2)$. Topologiquement, il est homéomorphe au cercle unité $S^1$.

**Exemple 2 : Le groupe $O_2(\mathbb{R})$**

Il est constitué de $SO_2(\mathbb{R})$ (les rotations) et des matrices de la forme $S(\theta) = \begin{pmatrix} \cos\theta & \sin\theta \\ \sin\theta & -\cos\theta \end{pmatrix}$ (les réflexions). Ce groupe n'est pas abélien.

**Exemple 3 : Le groupe $SU_2(\mathbb{C})$**

Toute matrice de $SU_2(\mathbb{C})$ s'écrit sous la forme $U = \begin{pmatrix} \alpha & \beta \\ -\bar{\beta} & \bar{\alpha} \end{pmatrix}$ avec $\alpha, \beta \in \mathbb{C}$ tels que $|\alpha|^2+|\beta|^2=1$. Cet ensemble est en bijection avec la sphère $S^3 \subset \mathbb{R}^4$.

### Contre-exemples

**Contre-exemple 1 : Matrice de $SL_n(\mathbb{R})$ non orthogonale**

La matrice $M = \begin{pmatrix} 2 & 1 \\ 1 & 1 \end{pmatrix}$ a un déterminant $\det(M)=1$, donc $M \in SL_2(\mathbb{R})$. Cependant, ${}^tMM = \begin{pmatrix} 2 & 1 \\ 1 & 1 \end{pmatrix}\begin{pmatrix} 2 & 1 \\ 1 & 1 \end{pmatrix} = \begin{pmatrix} 5 & 3 \\ 3 & 2 \end{pmatrix} \neq I_2$. Donc $M \notin O_2(\mathbb{R})$.

**Contre-exemple 2 : Groupe non compact**

Le groupe $GL_n(\mathbb{R})$ n'est pas compact car il n'est pas borné (considérer les matrices $\lambda I_n$ avec $\lambda \to \infty$).

### Concepts liés

- **Groupes de Lie** : Les groupes orthogonaux et unitaires sont des exemples paradigmatiques de groupes de Lie compacts, qui sont des variétés différentielles munies d'une structure de groupe compatible.
- **Algèbres de Lie** : À chaque groupe de Lie est associée une algèbre de Lie, qui est l'espace tangent à l'identité. Les algèbres de Lie $\mathfrak{so}(n)$, $\mathfrak{su}(n)$ (matrices antisymétriques et antihermitiennes de trace nulle) sont cruciales pour l'étude locale de ces groupes.
- **Théorie des représentations** : Ces groupes jouent un rôle central dans la théorie des représentations des groupes compacts et en physique (e.g., symétries du modèle standard).

---

## Concept 3: Classification des isométries en dimension 2 et 3

### Prérequis

- Groupes $O_2(\mathbb{R})$ et $O_3(\mathbb{R})$.
- Valeurs propres, vecteurs propres, polynôme caractéristique.
- Sous-espaces stables.

### Définition

La classification des isométries vectorielles d'un espace euclidien de petite dimension repose sur l'analyse de leurs sous-espaces invariants et de leur déterminant.

**Théorème 2.4.1 (Classification dans $O_2(\mathbb{R})$)**

Soit $f$ une isométrie de $\mathbb{R}^2$.

1. Si $\det(f)=1$ ($f \in SO_2(\mathbb{R})$), alors $f$ est une **rotation**. Sa matrice dans toute base orthonormée directe est de la forme $R(\theta) = \begin{pmatrix} \cos\theta & -\sin\theta \\ \sin\theta & \cos\theta \end{pmatrix}$ pour un certain $\theta \in \mathbb{R}$.
2. Si $\det(f)=-1$ ($f \in O_2(\mathbb{R}) \setminus SO_2(\mathbb{R})$), alors $f$ est une **réflexion orthogonale** (ou symétrie axiale). Il existe une base orthonormée dans laquelle sa matrice est $S = \begin{pmatrix} 1 & 0 \\ 0 & -1 \end{pmatrix}$.

**Théorème 2.4.2 (Classification dans $O_3(\mathbb{R})$ - Théorème d'Euler)**

Soit $f$ une isométrie de $\mathbb{R}^3$.

1. Si $\det(f)=1$ ($f \in SO_3(\mathbb{R})$), alors $f$ est une **rotation** (non triviale si $f\neq \text{Id}$). Il existe un axe (droite vectorielle de vecteurs invariants) et un angle de rotation $\theta$. Dans une base orthonormée directe adaptée, sa matrice est $R = \begin{pmatrix} \cos\theta & -\sin\theta & 0 \\ \sin\theta & \cos\theta & 0 \\ 0 & 0 & 1 \end{pmatrix}$.
2. Si $\det(f)=-1$, alors $f$ est une **isométrie indirecte**. C'est la composée d'une rotation et d'une réflexion par rapport au plan orthogonal à l'axe de la rotation. Dans une base orthonormée directe adaptée, sa matrice est $S = \begin{pmatrix} \cos\theta & -\sin\theta & 0 \\ \sin\theta & \cos\theta & 0 \\ 0 & 0 & -1 \end{pmatrix}$.

### Propriétés Clés

- **Existence d'un axe de rotation (Théorème d'Euler)** : Toute isométrie de $SO_3(\mathbb{R})$ admet la valeur propre 1.

    *Démonstration.* Soit $M \in SO_3(\mathbb{R})$. Son polynôme caractéristique $\chi_M(\lambda) = \det(M-\lambda I_3)$ est de degré 3 à coefficients réels. On a $\lim_{\lambda \to \pm\infty} \chi_M(\lambda) = \mp\infty$. Par le théorème des valeurs intermédiaires, $\chi_M$ a au moins une racine réelle $\lambda_0$. Comme $M$ est une isométrie, ses valeurs propres réelles ne peuvent être que $\pm 1$. Les valeurs propres complexes sont de module 1 et viennent par paires conjuguées $e^{i\theta}, e^{-i\theta}$. Le déterminant est le produit des valeurs propres.

    Si toutes les valeurs propres sont réelles, elles sont $\pm 1$. Pour avoir $\det(M)=1$, les possibilités sont $(1,1,1)$ ou $(1,-1,-1)$. Dans les deux cas, 1 est valeur propre.

    Si il y a des valeurs propres complexes, elles sont $e^{i\theta}, e^{-i\theta}$ et la troisième $\lambda_0$ doit être réelle. On a $\det(M) = e^{i\theta} e^{-i\theta} \lambda_0 = \lambda_0 = 1$. Donc 1 est valeur propre.

    L'espace propre associé à la valeur propre 1 est l'axe de rotation.

- **Commutativité** : $SO_2(\mathbb{R})$ est un groupe abélien, mais $SO_3(\mathbb{R})$ ne l'est pas.

### Exemples

**Exemple 1 : Rotation dans $\mathbb{R}^3$**

La rotation d'angle $\pi/2$ autour de l'axe $e_3=(0,0,1)$ dans $\mathbb{R}^3$ a pour matrice dans la base canonique (qui est orthonormée directe) $M = \begin{pmatrix} 0 & -1 & 0 \\ 1 & 0 & 0 \\ 0 & 0 & 1 \end{pmatrix}$. C'est un élément de $SO_3(\mathbb{R})$.

**Exemple 2 : Réflexion dans $\mathbb{R}^2$**

La réflexion par rapport à la droite $y=x$ (dirigée par $e_1' = (1/\sqrt{2}, 1/\sqrt{2})$) a pour matrice $S = \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix}$ dans la base canonique. $\det(S)=-1$. Dans la base orthonormée $(e_1', e_2')$, avec $e_2' = (1/\sqrt{2}, -1/\sqrt{2})$, la matrice est $\begin{pmatrix} 1 & 0 \\ 0 & -1 \end{pmatrix}$.

**Exemple 3 : Rotation-réflexion (roto-réflexion)**

L'inversion centrale $f(x)=-x$ dans $\mathbb{R}^3$ a pour matrice $-I_3$. $\det(-I_3)=-1$. C'est la rotation d'angle $\pi$ autour de n'importe quel axe, composée avec la réflexion par rapport au plan orthogonal à cet axe. Par exemple, avec l'axe $e_3$, la matrice est $\begin{pmatrix} -1 & 0 & 0 \\ 0 & -1 & 0 \\ 0 & 0 & -1 \end{pmatrix} = \begin{pmatrix} \cos\pi & -\sin\pi & 0 \\ \sin\pi & \cos\pi & 0 \\ 0 & 0 & 1 \end{pmatrix} \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & -1 \end{pmatrix}$.

### Contre-exemples

**Contre-exemple 1 : Isométrie de $\mathbb{R}^4$**

Une isométrie de $\mathbb{R}^4$ n'a pas nécessairement d'axe invariant (de dimension 1). Par exemple, la double rotation de matrice $M = \begin{pmatrix} \cos\theta & -\sin\theta & 0 & 0 \\ \sin\theta & \cos\theta & 0 & 0 \\ 0 & 0 & \cos\phi & -\sin\phi \\ 0 & 0 & \sin\phi & \cos\phi \end{pmatrix}$ avec $\theta, \phi \notin \pi\mathbb{Z}$ n'a que le sous-espace $\{0\}$ comme espace de vecteurs invariants.

**Contre-exemple 2 : Isométrie affine**

Une translation $t_v : x \mapsto x+v$ (pour $v \neq 0$) est une isométrie de l'espace affine euclidien, mais n'est pas une isométrie vectorielle car elle n'est pas linéaire et ne fixe pas l'origine.

### Concepts liés

- **Angles d'Euler** : Une méthode pour paramétrer toute rotation de $SO_3(\mathbb{R})$ par trois angles, en la décomposant en une succession de trois rotations autour d'axes canoniques.
- **Quaternions** : Les quaternions de norme 1 fournissent une représentation efficace et numériquement stable des rotations de $SO_3(\mathbb{R})$, évitant le problème du blocage de cardan des angles d'Euler.

---

## Concept 4: Produit Vectoriel dans $\mathbb{R}^3$

### Prérequis

- Espace euclidien orienté $\mathbb{R}^3$.
- Déterminant, applications multilinéaires alternées.
- Formes linéaires, théorème de représentation de Riesz.

### Définition

Soit $\mathbb{R}^3$ l'espace euclidien canonique, orienté par sa base canonique. Pour tout couple de vecteurs $(U,V) \in \mathbb{R}^3 \times \mathbb{R}^3$, le **produit vectoriel** de $U$ et $V$, noté $U \wedge V$, est l'unique vecteur de $\mathbb{R}^3$ tel que :

$$ \forall W \in \mathbb{R}^3, \quad \det(U,V,W) = \langle U \wedge V, W \rangle $$

L'existence et l'unicité de ce vecteur sont garanties par le théorème de représentation de Riesz, car l'application $\phi_{U,V}: W \mapsto \det(U,V,W)$ est une forme linéaire sur $\mathbb{R}^3$.

### Propriétés Clés

- **Bilinéarité** : L'application $(U,V) \mapsto U \wedge V$ est bilinéaire.
- **Antisymétrie** : $V \wedge U = -U \wedge V$. (Conséquence de $\det(V,U,W) = -\det(U,V,W)$).
- **Condition de colinéarité** : $U \wedge V = 0 \iff (U,V)$ est une famille liée.
- **Orthogonalité** : Le vecteur $U \wedge V$ est orthogonal à $U$ et à $V$.

  *Démonstration.* $\langle U \wedge V, U \rangle = \det(U,V,U) = 0$ car la famille $(U,V,U)$ est liée. De même pour $V$.

- **Orientation** : Si $(U,V)$ est libre, la base $(U,V,U \wedge V)$ est directe.

  *Démonstration.* $\det(U,V,U \wedge V) = \langle U \wedge V, U \wedge V \rangle = \|U \wedge V\|^2 > 0$.

- **Norme** : $\|U \wedge V\| = \|U\| \|V\| |\sin\theta|$, où $\theta$ est l'angle (non orienté) entre $U$ et $V$. Cette norme est l'aire du parallélogramme engendré par $U$ et $V$.
- **Expression en coordonnées** : Dans une base orthonormée directe $(e_1, e_2, e_3)$, si $U=(u_1, u_2, u_3)$ et $V=(v_1, v_2, v_3)$, alors :

$$ U \wedge V = (u_2v_3 - u_3v_2)e_1 + (u_3v_1 - u_1v_3)e_2 + (u_1v_2 - u_2v_1)e_3 $$

- **Double produit vectoriel** : $U \wedge (V \wedge W) = \langle U,W \rangle V - \langle U,V \rangle W$. (Formule de "BAC-CAB").
- **Identité de Jacobi** : $U \wedge (V \wedge W) + V \wedge (W \wedge U) + W \wedge (U \wedge V) = 0$.

### Exemples

**Exemple 1 : Base canonique**

Soit $(e_1, e_2, e_3)$ la base canonique de $\mathbb{R}^3$. On a:

$e_1 \wedge e_2 = e_3$, $e_2 \wedge e_3 = e_1$, $e_3 \wedge e_1 = e_2$.

**Exemple 2 : Calcul direct**

Soient $U=(1,2,3)$ et $V=(4,5,6)$.

$U \wedge V = ((2)(6)-(3)(5), (3)(4)-(1)(6), (1)(5)-(2)(4)) = (12-15, 12-6, 5-8) = (-3, 6, -3)$.

**Exemple 3 : Vecteur normal à un plan**

Le plan vectoriel engendré par $U=(1,1,0)$ et $V=(0,1,1)$ a pour vecteur normal $N = U \wedge V = (1,-1,1)$. Tout vecteur normal est colinéaire à $N$.

### Contre-exemples

**Contre-exemple 1 : Non-associativité**

Le produit vectoriel n'est pas associatif. Soit $(e_1, e_2, e_3)$ une base orthonormée directe.

$(e_1 \wedge e_1) \wedge e_2 = 0 \wedge e_2 = 0$.

Mais $e_1 \wedge (e_1 \wedge e_2) = e_1 \wedge e_3 = -e_2$.

**Contre-exemple 2 : Dépendance de la dimension**

Un produit binaire ayant des propriétés similaires n'existe que dans $\mathbb{R}^3$ et $\mathbb{R}^7$. La généralisation du produit vectoriel en dimension $n$ est le **produit extérieur**, qui à $n-1$ vecteurs associe un vecteur (via le même type de dualité).

### Concepts liés

- **Algèbre extérieure** : Le produit vectoriel est un cas particulier du produit extérieur $\wedge$ dans l'algèbre extérieure $\Lambda(\mathbb{R}^3)$. On a une identification entre $\Lambda^2(\mathbb{R}^3)$ (les bivecteurs) et $\mathbb{R}^3$ via la dualité de Hodge.
- **Algèbre de Lie** : L'espace $(\mathbb{R}^3, +, \wedge)$ est une algèbre de Lie. Elle est isomorphe à l'algèbre de Lie $\mathfrak{so}(3)$ du groupe des rotations $SO_3(\mathbb{R})$.
- **Formes différentielles** : Le produit vectoriel est lié à l'opérateur de différentiation extérieure en calcul vectoriel. Par exemple, $\nabla \wedge \mathbf{F}$ est le rotationnel du champ de vecteurs $\mathbf{F}$.

---

## Concept 5: Formule de Rodrigues

### Prérequis

- Classification des rotations dans $\mathbb{R}^3$.
- Propriétés du produit vectoriel.

### Définition

La **formule de Rodrigues** donne une expression explicite de l'image d'un vecteur $U \in \mathbb{R}^3$ par une rotation $\mathcal{R}_{N,\theta}$ d'axe dirigé par un vecteur unitaire $N$ et d'angle $\theta$.

$$ \mathcal{R}_{N,\theta}(U) = \cos(\theta)U + (1-\cos(\theta))\langle U,N \rangle N + \sin(\theta) (N \wedge U) $$

L'orientation de l'angle $\theta$ est donnée par la règle de la main droite selon l'axe $N$.

### Propriétés Clés

- **Décomposition orthogonale** : La preuve de la formule repose sur la décomposition de $U$ en une composante parallèle à l'axe et une composante orthogonale : $U = U_\parallel + U_\perp$, avec $U_\parallel = \langle U,N \rangle N$ et $U_\perp = U - \langle U,N \rangle N$.
- **Action de la rotation** : La rotation laisse la composante parallèle inchangée ($\mathcal{R}(U_\parallel)=U_\parallel$) et fait tourner la composante orthogonale d'un angle $\theta$ dans le plan $N^\perp$.

    *Démonstration.*

    $\mathcal{R}(U) = \mathcal{R}(U_\parallel) + \mathcal{R}(U_\perp) = U_\parallel + \mathcal{R}(U_\perp)$.

    Dans le plan $N^\perp$, orienté par $N$, le vecteur $N \wedge U_\perp = N \wedge U$ est orthogonal à $U_\perp$ et de même norme. La famille $(U_\perp, N \wedge U)$ forme une base orthogonale (non normée) de ce plan. L'action de $\mathcal{R}$ sur $U_\perp$ est une rotation plane :

    $\mathcal{R}(U_\perp) = \cos(\theta)U_\perp + \sin(\theta) (N \wedge U)$.

    En substituant $U_\perp = U - \langle U,N \rangle N$ et $U_\parallel = \langle U,N \rangle N$, on obtient :

    $\mathcal{R}(U) = \langle U,N \rangle N + \cos(\theta)(U - \langle U,N \rangle N) + \sin(\theta)(N \wedge U)$

    $= \cos(\theta)U + (1-\cos(\theta))\langle U,N \rangle N + \sin(\theta)(N \wedge U)$.

- **Forme matricielle** : La formule permet de déduire la matrice de la rotation dans n'importe quelle base. Soit $K$ la matrice de l'application $U \mapsto N \wedge U$. Si $N=(a,b,c)$, alors $K = \begin{pmatrix} 0 & -c & b \\ c & 0 & -a \\ -b & a & 0 \end{pmatrix}$. La matrice de la rotation est $R = I + (\sin\theta)K + (1-\cos\theta)K^2$. C'est l'exponentielle de la matrice $\theta K$.

### Exemples

**Exemple 1 : Rotation d'axe $e_3$**

Soit $N=e_3=(0,0,1)$. On veut calculer $\mathcal{R}_{e_3,\theta}(e_1)$.

$\langle e_1, e_3 \rangle = 0$ et $e_3 \wedge e_1 = e_2$.

$\mathcal{R}(e_1) = \cos(\theta)e_1 + (1-\cos\theta)(0)e_3 + \sin(\theta)e_2 = \cos(\theta)e_1 + \sin(\theta)e_2$.

Ce qui correspond bien à $(\cos\theta, \sin\theta, 0)$.

**Exemple 2 : Demi-tour (rotation d'angle $\pi$)**

Pour $\theta=\pi$, $\cos\pi=-1, \sin\pi=0$. La formule devient :

$\mathcal{R}_{N,\pi}(U) = -U + 2\langle U,N \rangle N$. C'est l'expression de la symétrie axiale par rapport à l'axe dirigé par $N$.

**Exemple 3 : Rotation d'axe $(1,1,1)$**

Soit $N=\frac{1}{\sqrt{3}}(1,1,1)$ et $\theta=\frac{2\pi}{3}$. Soit $U=e_1=(1,0,0)$.

$\langle U,N \rangle = 1/\sqrt{3}$.

$N \wedge U = \frac{1}{\sqrt{3}}(1,1,1) \wedge (1,0,0) = \frac{1}{\sqrt{3}}(0,1,-1)$.

$\cos(2\pi/3)=-1/2$, $\sin(2\pi/3)=\sqrt{3}/2$.

$\mathcal{R}(e_1) = -\frac{1}{2}(1,0,0) + (1-(-\frac{1}{2}))(\frac{1}{\sqrt{3}})\frac{1}{\sqrt{3}}(1,1,1) + \frac{\sqrt{3}}{2}\frac{1}{\sqrt{3}}(0,1,-1)$

$= (-\frac{1}{2},0,0) + \frac{3}{2} \cdot \frac{1}{3}(1,1,1) + \frac{1}{2}(0,1,-1)$

$= (-\frac{1}{2},0,0) + (\frac{1}{2},\frac{1}{2},\frac{1}{2}) + (0,\frac{1}{2},-\frac{1}{2}) = (0,1,0) = e_2$.

De même, on trouve $\mathcal{R}(e_2)=e_3$ et $\mathcal{R}(e_3)=e_1$. C'est une permutation circulaire des axes.

### Concepts liés

- **Exponentielle de matrice** : La rotation d'angle $\theta$ autour de l'axe $N$ est donnée par l'exponentielle de l'opérateur "produit vectoriel par $\theta N$". Soit $A_N(U) = N \wedge U$. La rotation est $\mathcal{R}_{N,\theta} = \exp(\theta A_N)$. La formule de Rodrigues est un cas particulier de la formule de l'exponentielle pour les matrices de $\mathfrak{so}(3)$.
- **Quaternions** : L'action d'une rotation représentée par un quaternion $q = \cos(\theta/2) + \sin(\theta/2)N$ sur un vecteur $U$ (identifié au quaternion pur $U$) est donnée par la conjugaison $qUq^{-1}$. Le développement de cette expression redonne la formule de Rodrigues.

---

## Concept 6: Le groupe $SU_2(\mathbb{C})$ et son lien avec $SO_3(\mathbb{R})$

### Prérequis

- Espaces hermitiens, groupes unitaires $U_n(\mathbb{C}), SU_n(\mathbb{C})$.
- Trace d'une matrice, matrices hermitiennes.
- Morphismes de groupes, noyau.

### Définition

Le lien entre $SU_2(\mathbb{C})$ et $SO_3(\mathbb{R})$ s'établit via la **représentation adjointe**.

1.  On considère le $\mathbb{R}$-espace vectoriel $\mathcal{V} = \{ M \in M_2(\mathbb{C}) \mid M^*=M, \text{Tr}(M)=0 \}$.

    Cet espace est de dimension 3. Une base en est $(T_1, T_2, T_3)$ avec :

    $$ T_1 = \begin{pmatrix} 0 & -i \\ i & 0 \end{pmatrix}, \quad T_2 = \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix}, \quad T_3 = \begin{pmatrix} 1 & 0 \\ 0 & -1 \end{pmatrix} $$

    (Ces matrices sont proportionnelles aux matrices de Pauli $\sigma_2, \sigma_1, \sigma_3$).

2.  On munit $\mathcal{V}$ d'un produit scalaire euclidien $\varphi(A,B) := \frac{1}{2}\text{Tr}(AB)$, pour lequel la base $(T_1, T_2, T_3)$ est orthonormée. $(\mathcal{V}, \varphi)$ est donc un espace euclidien de dimension 3, que l'on identifie à $\mathbb{R}^3$.
3.  Pour tout $U \in SU_2(\mathbb{C})$, on définit l'application **adjointe** $\text{Ad}_U : \mathcal{V} \to \mathcal{V}$ par :

    $$ \text{Ad}_U(M) := UMU^* $$

4.  L'application $\mathcal{J} : SU_2(\mathbb{C}) \to O(\mathcal{V}) \cong O_3(\mathbb{R})$ qui à $U$ associe $\text{Ad}_U$ est un morphisme de groupes.

### Propriétés Clés

- **$SU_2(\mathbb{C})$ et la sphère $S^3$** : Toute matrice $U \in SU_2(\mathbb{C})$ est de la forme $\begin{pmatrix} \alpha & \beta \\ -\bar{\beta} & \bar{\alpha} \end{pmatrix}$ avec $|\alpha|^2+|\beta|^2=1$. L'application qui à $U$ associe $(\Re(\alpha), \Im(\alpha), \Re(\beta), \Im(\beta))$ est un homéomorphisme de $SU_2(\mathbb{C})$ sur la sphère unité $S^3 \subset \mathbb{R}^4$.

- **$\text{Ad}_U$ est une isométrie** : Pour tout $M \in \mathcal{V}$, $\varphi(\text{Ad}_U(M), \text{Ad}_U(M)) = \frac{1}{2}\text{Tr}((UMU^*)(UMU^*)) = \frac{1}{2}\text{Tr}(UMU^*UMU^*) = \frac{1}{2}\text{Tr}(UM^2U^*) = \frac{1}{2}\text{Tr}(M^2) = \varphi(M,M)$. Donc $\text{Ad}_U \in O(\mathcal{V})$.

- **L'image est dans $SO_3(\mathbb{R})$** : Le groupe $SU_2(\mathbb{C})$ est connexe (car $S^3$ l'est). L'application $\mathcal{J}$ est continue. L'image $\mathcal{J}(SU_2(\mathbb{C}))$ est donc une partie connexe de $O_3(\mathbb{R})$. Comme $\mathcal{J}(I_2)=\text{Id} \in SO_3(\mathbb{R})$, l'image entière est contenue dans la composante connexe de l'identité, qui est $SO_3(\mathbb{R})$.

- **Surjectivité** : On peut montrer que le morphisme $\mathcal{J}: SU_2(\mathbb{C}) \to SO_3(\mathbb{R})$ est surjectif.

- **Noyau** : $\ker(\mathcal{J}) = \{U \in SU_2(\mathbb{C}) \mid \forall M \in \mathcal{V}, UMU^*=M\}$. Ceci est équivalent à $U$ qui commute avec toutes les matrices de $\mathcal{V}$, et donc avec tout $M_2(\mathbb{C})$. Par le lemme de Schur, $U$ doit être une matrice scalaire. Les seules matrices scalaires dans $SU_2(\mathbb{C})$ sont $I_2$ et $-I_2$. Donc $\ker(\mathcal{J}) = \{\pm I_2\}$.

- **Revêtement double** : Par le premier théorème d'isomorphisme, $SO_3(\mathbb{R}) \cong SU_2(\mathbb{C}) / \{\pm I_2\}$. On dit que $SU_2(\mathbb{C})$ est un **revêtement double** de $SO_3(\mathbb{R})$. Topologiquement, cela signifie que $SU_2(\mathbb{C})$ "s'enroule" deux fois sur $SO_3(\mathbb{R})$.

### Exemples

**Exemple 1 : Rotation d'axe $T_3$**

Soit $U=D_\theta = \begin{pmatrix} e^{i\theta} & 0 \\ 0 & e^{-i\theta} \end{pmatrix} \in SU_2(\mathbb{C})$. Un calcul direct montre que $\text{Ad}_{D_\theta}$ a pour matrice dans la base $(T_1, T_2, T_3)$ :

$$ \begin{pmatrix} \cos(2\theta) & -\sin(2\theta) & 0 \\ \sin(2\theta) & \cos(2\theta) & 0 \\ 0 & 0 & 1 \end{pmatrix} $$

C'est la rotation d'angle $2\theta$ autour de l'axe $T_3$.

**Exemple 2 : Le noyau**

Pour $U=-I_2$, on a $\text{Ad}_{-I_2}(M) = (-I_2)M(-I_2)^* = (-M)(-I_2) = M = \text{Id}(M)$. Donc $-I_2 \in \ker(\mathcal{J})$.

**Exemple 3 : lien avec les quaternions**

Le $\mathbb{R}$-espace vectoriel des quaternions $\mathbb{H}$ a pour base $(1, i, j, k)$. Le groupe des quaternions de norme 1, noté $Sp(1)$, est isomorphe à $SU(2)$. L'isomorphisme associe $x_1+x_2i+x_3j+x_4k$ à la matrice $\begin{pmatrix} x_1+ix_2 & x_3+ix_4 \\ -x_3+ix_4 & x_1-ix_2 \end{pmatrix}$. L'action adjointe correspond à la conjugaison $p \mapsto qpq^{-1}$ des quaternions purs.

### Concepts liés

- **Algèbres de Lie** : $\mathcal{V}$ est l'algèbre de Lie $\mathfrak{su}(2)$ de $SU_2(\mathbb{C})$, munie du commutateur $[A,B]=AB-BA$. L'application $\text{Ad}_U$ est la représentation adjointe du groupe de Lie sur son algèbre. On a un isomorphisme d'algèbres de Lie entre $(\mathfrak{su}(2), [.,.])$ et $(\mathbb{R}^3, \wedge)$.
- **Topologie algébrique** : $SU(2) \cong S^3$ est simplement connexe, tandis que $SO(3) \cong \mathbb{P}^3(\mathbb{R})$ (l'espace projectif réel de dimension 3) ne l'est pas (son groupe fondamental est $\mathbb{Z}/2\mathbb{Z}$). $SU(2)$ est le **revêtement universel** de $SO(3)$.
- **Physique quantique** : Cette relation est fondamentale en mécanique quantique pour la description du spin des particules. Les états de spin sont décrits par des vecteurs dans $\mathbb{C}^2$ et les rotations de l'espace physique (opérateurs de $SO_3(\mathbb{R})$) sont représentées par des opérateurs de $SU_2(\mathbb{C})$. La non-injectivité du morphisme explique des phénomènes comme le fait qu'une rotation de $2\pi$ change le signe de la fonction d'onde d'un fermion.
