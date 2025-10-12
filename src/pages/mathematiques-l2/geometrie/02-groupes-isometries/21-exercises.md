---
id: 07412e67
type: exercises
order: 21
title: Groupes d'isométries - exercices (B)
tags:
  - isométrie
  - espace euclidien
  - espace hermitien
  - groupe orthogonal
  - groupe unitaire
  - produit vectoriel
  - rotation
createdAt: '2025-10-12T18:12:33.659Z'
level: pro
course: Géométrie
courseId: d9494343
chapter: Groupes d'isométries
chapterId: b85ab516
---
# Exercices "Groupes d'isométries" (B)

## Exercice 1: [Investigation Théorique]

**Problème:** Soit $E = \ell^2(\mathbb{Z})$ l'espace des suites de nombres complexes $(x_n)_{n \in \mathbb{Z}}$ de carré sommable, muni du produit hermitien canonique $\langle x, y \rangle = \sum_{n \in \mathbb{Z}} \overline{x_n} y_n$. On considère l'opérateur de décalage à droite (right shift) $S: E \to E$ défini par $(Sx)_n = x_{n-1}$.

1. Montrer que $S$ est un opérateur unitaire (une isométrie) sur $E$.
2. Déterminer son adjoint $S^*$.
3. On considère l'opérateur de décalage à gauche (left shift) $T: E \to E$ défini par $(Tx)_n = x_{n+1}$. $T$ est-il unitaire ?
4. Comparer ce résultat avec le cas d'un espace de dimension finie.

<details>

<summary>Solution</summary>

**Méthode:** Nous allons vérifier les propriétés de l'opérateur $S$ en utilisant directement les définitions. Pour la première partie, nous montrerons que $S$ préserve la norme. Pour la seconde, nous utiliserons la définition de l'adjoint $\langle S^*x, y \rangle = \langle x, Sy \rangle$. Pour la troisième, nous vérifierons si $T$ est unitaire en testant s'il est l'inverse de $S$. L'analyse de la situation en dimension infinie mettra en lumière les différences fondamentales avec la dimension finie.

**Étapes:**

1.  **Montrer que $S$ est unitaire.**

    Soit $x = (x_n)_{n \in \mathbb{Z}} \in E$. Calculons la norme de $S(x)$.

    $\|S(x)\|^2 = \sum_{n \in \mathbb{Z}} |(Sx)_n|^2 = \sum_{n \in \mathbb{Z}} |x_{n-1}|^2$.

    En posant $k = n-1$, l'indice $k$ parcourt également $\mathbb{Z}$. La somme devient $\sum_{k \in \mathbb{Z}} |x_k|^2 = \|x\|^2$.

    Ainsi, $\|S(x)\| = \|x\|$ pour tout $x \in E$. L'opérateur $S$ est donc une isométrie. Pour montrer qu'il est unitaire, il faut qu'il soit surjectif. Soit $y=(y_n) \in E$. Cherchons $x \in E$ tel que $Sx=y$. Cela signifie $(Sx)_n = x_{n-1} = y_n$ pour tout $n$, donc $x_k = y_{k+1}$ pour tout $k$. La suite $x = (y_{n+1})_{n \in \mathbb{Z}}$ est bien dans $E$ car sa norme est $\|x\|^2 = \sum_n |y_{n+1}|^2 = \sum_k |y_k|^2 = \|y\|^2 < \infty$. Donc $S$ est surjectif. Une isométrie surjective est un opérateur unitaire.

2.  **Déterminer l'adjoint $S^*$.**

    Pour tous $x, y \in E$, nous devons avoir $\langle S^*x, y \rangle = \langle x, Sy \rangle$.

    $\langle x, Sy \rangle = \sum_{n \in \mathbb{Z}} \overline{x_n} (Sy)_n = \sum_{n \in \mathbb{Z}} \overline{x_n} y_{n-1}$.

    Posons $k=n-1$, donc $n=k+1$. La somme devient $\sum_{k \in \mathbb{Z}} \overline{x_{k+1}} y_k$.

    Cette somme doit être égale à $\langle S^*x, y \rangle = \sum_{k \in \mathbb{Z}} \overline{(S^*x)_k} y_k$.

    Par identification, on a $\overline{(S^*x)_k} = \overline{x_{k+1}}$, donc $(S^*x)_k = x_{k+1}$.

    L'opérateur adjoint est donc $S^*=T$, l'opérateur de décalage à gauche.

3.  **L'opérateur $T$ est-il unitaire ?**

    D'après le point 2, $T=S^*$. Puisque $S$ est unitaire, on a $S^{-1}=S^*$. Donc $T=S^{-1}$. L'inverse d'un opérateur unitaire est unitaire. Vérifions-le directement :

    $\|T(x)\|^2 = \sum_{n \in \mathbb{Z}} |(Tx)_n|^2 = \sum_{n \in \mathbb{Z}} |x_{n+1}|^2 = \sum_{k \in \mathbb{Z}} |x_k|^2 = \|x\|^2$.

    Donc $T$ préserve la norme. Pour la surjectivité, soit $y \in E$. $Tx=y$ donne $x_{n+1}=y_n$, donc $x_k = y_{k-1}$. Cette suite $x$ est dans $E$ et a la même norme que $y$. Donc $T$ est surjectif.

    Ainsi, $T$ est unitaire.

4.  **Comparaison avec la dimension finie.**

    En dimension finie, un endomorphisme $f$ est une isométrie si et seulement si $f^*f = \text{Id}$. Cela implique que $f$ est injectif. Par le théorème du rang, $f$ est alors automatiquement surjectif, donc $f$ est un automorphisme et $f^{-1}=f^*$.

    En dimension infinie, ce n'est plus vrai. Un opérateur peut être une isométrie (et donc injectif) sans être surjectif. L'exemple classique est l'opérateur de décalage à droite sur $\ell^2(\mathbb{N})$, $S: (x_0, x_1, ...) \mapsto (0, x_0, x_1, ...)$. Il est isométrique mais non surjectif (l'image ne contient pas les suites dont le premier terme est non nul). Sur $\ell^2(\mathbb{Z})$, le "trou" n'est pas créé, et la surjectivité est conservée. Cet exercice illustre que sur $\ell^2(\mathbb{Z})$, la situation reste proche de la dimension finie, mais il faut prouver la surjectivité séparément.

**Réponse:**

1. $S$ est unitaire car il préserve la norme et il est surjectif.
2. L'adjoint est $S^*=T$, l'opérateur de décalage à gauche.
3. Oui, $T$ est unitaire.
4. En dimension infinie, une isométrie n'est pas nécessairement surjective, contrairement au cas de la dimension finie. Cependant, dans le cas de $\ell^2(\mathbb{Z})$, l'opérateur de décalage reste surjectif.

</details>

## Exercice 2: [Preuve Complexe]

**Problème:** Soit $n \ge 2$. Montrer que le groupe spécial orthogonal $SO_n(\mathbb{R})$ est connexe par arcs.

<details>

<summary>Solution</summary>

**Méthode:** Nous allons procéder par récurrence sur la dimension $n$. L'idée est de montrer que toute matrice $M \in SO_n(\mathbb{R})$ peut être connectée à l'identité $I_n$ par un chemin continu contenu dans $SO_n(\mathbb{R})$. Pour l'étape de récurrence, nous utiliserons la structure des isométries pour ramener une matrice $M \in SO_n(\mathbb{R})$ à une forme plus simple via un chemin continu, puis appliquer l'hypothèse de récurrence.

**Étapes:**

1.  **Cas de base ($n=2$)**:

    Toute matrice de $SO_2(\mathbb{R})$ est une matrice de rotation $R(\theta) = \begin{pmatrix} \cos\theta & -\sin\theta \\ \sin\theta & \cos\theta \end{pmatrix}$.

    Soit $M = R(\theta_0) \in SO_2(\mathbb{R})$. Le chemin $\gamma: [0,1] \to SO_2(\mathbb{R})$ défini par $\gamma(t) = R(t\theta_0)$ est un chemin continu.

    On a $\gamma(0) = R(0) = I_2$ et $\gamma(1) = R(\theta_0) = M$.

    Le chemin est bien dans $SO_2(\mathbb{R})$ car $\det(R(t\theta_0))=1$ pour tout $t$.

    Donc $SO_2(\mathbb{R})$ est connexe par arcs.

2.  **Hypothèse de récurrence**:

    Supposons que $SO_{n-1}(\mathbb{R})$ est connexe par arcs pour un $n \ge 3$.

3.  **Étape de récurrence**:

    Soit $M \in SO_n(\mathbb{R})$. Soit $e_1$ le premier vecteur de la base canonique de $\mathbb{R}^n$. Considérons le vecteur $v = M e_1$. On a $\|v\| = \|M e_1\| = \|e_1\| = 1$.

    Nous voulons trouver un chemin continu de rotations $R(t)$ tel que $R(0)=I_n$ et $R(1)v = e_1$.

    Si $v = e_1$, on peut prendre $R(t)=I_n$ pour tout $t$.

    Si $v \neq e_1$, $v$ et $e_1$ sont deux vecteurs unitaires distincts. Ils engendrent un plan $P = \text{Vect}(e_1, v)$. Si $v=-e_1$, on peut choisir n'importe quel plan contenant $e_1$.

    Soit $R_P(\theta)$ la rotation d'angle $\theta$ dans le plan $P$ qui amène $e_1$ vers $v$, et qui est l'identité sur $P^\perp$. Soit $\theta_0$ cet angle.

    Le chemin $t \mapsto R_P(t\theta_0)$ est un chemin dans $SO_n(\mathbb{R})$ qui relie $I_n$ à $R_P(\theta_0)$. Soit $R_1 = R_P(\theta_0)$. On a $R_1 e_1 = v$.

    Considérons le chemin $\gamma_1(t)$ de $I_n$ à $R_1^{-1}$. Alors le chemin $t \mapsto \gamma_1(t)M$ relie $M$ à $M' = R_1^{-1}M$.

    Calculons l'action de $M'$ sur $e_1$: $M'e_1 = R_1^{-1}M e_1 = R_1^{-1}v = e_1$.

    La matrice $M'$ fixe donc le vecteur $e_1$. Sa première colonne est $(1,0,...,0)^t$. Comme $M'$ est orthogonale, les autres colonnes sont orthogonales à la première, donc la première ligne est $(1,0,...,0)$.

    La matrice $M'$ a donc la forme :

    $M' = \begin{pmatrix} 1 & 0 \\ 0 & M_{n-1} \end{pmatrix}$, où $M_{n-1} \in M_{n-1}(\mathbb{R})$.

    Comme $M' \in SO_n(\mathbb{R})$, on a ${}^t(M')(M')=I_n$, ce qui implique ${}^tM_{n-1}M_{n-1}=I_{n-1}$, donc $M_{n-1} \in O_{n-1}(\mathbb{R})$.

    De plus, $\det(M')=1 \cdot \det(M_{n-1})=1$, donc $M_{n-1} \in SO_{n-1}(\mathbb{R})$.

4.  **Conclusion de la récurrence**:

    Par l'hypothèse de récurrence, $SO_{n-1}(\mathbb{R})$ est connexe par arcs. Il existe donc un chemin continu $\delta(t)$ dans $SO_{n-1}(\mathbb{R})$ tel que $\delta(0) = I_{n-1}$ et $\delta(1) = M_{n-1}$.

    Construisons le chemin $\gamma_2(t) = \begin{pmatrix} 1 & 0 \\ 0 & \delta(t) \end{pmatrix}$. C'est un chemin continu dans $SO_n(\mathbb{R})$ qui relie $\begin{pmatrix} 1 & 0 \\ 0 & I_{n-1} \end{pmatrix} = I_n$ à $M'$.

    Ainsi, $M'$ est connectée à $I_n$. Puisque $M$ est connectée à $M'$, par transitivité, $M$ est connectée à $I_n$.

    Ceci étant vrai pour toute matrice $M \in SO_n(\mathbb{R})$, le groupe $SO_n(\mathbb{R})$ est connexe par arcs.

**Réponse:** Le groupe $SO_n(\mathbb{R})$ est connexe par arcs pour tout $n \ge 2$. La preuve se fait par récurrence sur $n$.

</details>

## Exercice 3: [Application Avancée]

**Problème:** Soient les rotations $R_1$ et $R_2$ dans $\mathbb{R}^3$ définies par leurs matrices dans la base canonique :

$R_1$ est la rotation d'angle $\pi/2$ autour de l'axe $(1,0,0)$.

$R_2$ est la rotation d'angle $\pi/2$ autour de l'axe $(0,1,0)$.

Déterminer l'axe et l'angle de la rotation composée $R = R_2 \circ R_1$.

<details>

<summary>Solution</summary>

**Méthode:** Nous allons d'abord construire les matrices $M_1$ et $M_2$ de $R_1$ et $R_2$ respectivement. Nous pouvons utiliser la formule de Rodrigues ou une approche géométrique directe. Ensuite, nous calculerons la matrice du composé $M = M_2 M_1$. Enfin, nous extrairons l'axe et l'angle de la rotation correspondante à $M$. L'axe est le vecteur propre associé à la valeur propre 1. L'angle $\theta$ peut être trouvé via la formule $\text{Tr}(M) = 1 + 2\cos\theta$.

**Étapes:**

1.  **Matrice de $R_1$**:

    Rotation d'angle $\theta_1=\pi/2$ autour de $N_1=(1,0,0)$.

    Cette rotation fixe $e_1$, envoie $e_2$ sur $e_3$, et $e_3$ sur $-e_2$.

    La matrice est $M_1 = \begin{pmatrix} 1 & 0 & 0 \\ 0 & \cos(\pi/2) & -\sin(\pi/2) \\ 0 & \sin(\pi/2) & \cos(\pi/2) \end{pmatrix} = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 0 & -1 \\ 0 & 1 & 0 \end{pmatrix}$.

2.  **Matrice de $R_2$**:

    Rotation d'angle $\theta_2=\pi/2$ autour de $N_2=(0,1,0)$.

    Cette rotation fixe $e_2$, envoie $e_3$ sur $e_1$, et $e_1$ sur $-e_3$.

    La matrice est $M_2 = \begin{pmatrix} \cos(\pi/2) & 0 & \sin(\pi/2) \\ 0 & 1 & 0 \\ -\sin(\pi/2) & 0 & \cos(\pi/2) \end{pmatrix} = \begin{pmatrix} 0 & 0 & 1 \\ 0 & 1 & 0 \\ -1 & 0 & 0 \end{pmatrix}$.

3.  **Matrice de la composition $R = R_2 \circ R_1$**:

    $M = M_2 M_1 = \begin{pmatrix} 0 & 0 & 1 \\ 0 & 1 & 0 \\ -1 & 0 & 0 \end{pmatrix} \begin{pmatrix} 1 & 0 & 0 \\ 0 & 0 & -1 \\ 0 & 1 & 0 \end{pmatrix} = \begin{pmatrix} 0 & 1 & 0 \\ 0 & 0 & -1 \\ -1 & 0 & 0 \end{pmatrix}$.

    On vérifie que $M \in SO_3(\mathbb{R})$: ${}^tMM=I_3$ et $\det(M)=1$.

4.  **Détermination de l'angle de rotation $\theta$**:

    La trace de $M$ est $\text{Tr}(M) = 0+0+0=0$.

    On a la relation $\text{Tr}(M) = 1 + 2\cos\theta$.

    $0 = 1 + 2\cos\theta \implies \cos\theta = -1/2$.

    L'angle est donc $\theta = \pm 2\pi/3$.

5.  **Détermination de l'axe de rotation $N$**:

    L'axe est le sous-espace propre associé à la valeur propre 1. On résout $MU=U$, soit $(M-I_3)U=0$.

    $M-I_3 = \begin{pmatrix} -1 & 1 & 0 \\ 0 & -1 & -1 \\ -1 & 0 & -1 \end{pmatrix}$.

    On résout le système :

    $\begin{cases} -x+y=0 \\ -y-z=0 \\ -x-z=0 \end{cases} \implies \begin{cases} x=y \\ z=-y \\ -y-(-y)=0 \end{cases}$.

    La troisième équation est $0=0$. Le système est de rang 2. Les solutions sont de la forme $(y, y, -y) = y(1, 1, -1)$.

    L'axe est donc la droite dirigée par le vecteur $N'=(1,1,-1)$.

    Un vecteur directeur unitaire est $N = \frac{1}{\sqrt{3}}(1,1,-1)$.

6.  **Détermination du signe de l'angle**:

    Le signe de $\theta$ dépend de l'orientation de l'axe. Choisissons $N=\frac{1}{\sqrt{3}}(1,1,-1)$.

    On utilise la formule $\sin\theta = \frac{1}{2} \langle u, N \wedge Mu \rangle$ pour un vecteur $u$ non colinéaire à $N$.

    Prenons $u=e_1=(1,0,0)$. $Mu = (0,0,-1)$.

    $N \wedge Mu = \frac{1}{\sqrt{3}}(1,1,-1) \wedge (0,0,-1) = \frac{1}{\sqrt{3}}(-1, 1, 0)$.

    $\sin\theta = \frac{1}{2\|u\|^2\text{Tr}(M_{antisym})} \text{Trace}( (M - {}^tM) \text{op}_{u,N} )$. Une méthode plus simple :

    $\sin\theta (N_x, N_y, N_z)$ a pour composantes $(M_{32}-M_{23})/2, (M_{13}-M_{31})/2, (M_{21}-M_{12})/2$.

    $M - {}^tM = \begin{pmatrix} 0 & 1 & 1 \\ -1 & 0 & -1 \\ -1 & 1 & 0 \end{pmatrix}$.

    Les composantes du vecteur $v$ tel que $M-^t M = 2\sin\theta K_N$ sont: $v_1 = (M_{32}-M_{23})/2 = (0-(-1))/2 = 1/2$.

    $v_2 = (M_{13}-M_{31})/2 = (0-(-1))/2 = 1/2$.

    $v_3 = (M_{21}-M_{12})/2 = (0-1)/2 = -1/2$.

    Le vecteur est $(1/2, 1/2, -1/2)$. C'est bien la direction de $N$.

    On a $(1/2, 1/2, -1/2) = \sin\theta \cdot N = \sin\theta \cdot \frac{1}{\sqrt{3}}(1,1,-1)$.

    $\frac{1}{2} = \frac{\sin\theta}{\sqrt{3}} \implies \sin\theta = \sqrt{3}/2$.

    Puisque $\cos\theta=-1/2$ et $\sin\theta=\sqrt{3}/2$, l'angle est $\theta=2\pi/3$.

**Réponse:** La rotation composée $R = R_2 \circ R_1$ est une rotation d'angle $\theta = \frac{2\pi}{3}$ autour de l'axe dirigé par le vecteur $N=(1,1,-1)$.

</details>

## Exercice 4: [Investigation Théorique]

**Problème:** Soit $(\mathbb{R}^3, \wedge)$ l'espace euclidien orienté de dimension 3 muni du produit vectoriel.

1. Démontrer l'identité de Jacobi :

   $$ \forall U, V, W \in \mathbb{R}^3, \quad U \wedge (V \wedge W) + V \wedge (W \wedge U) + W \wedge (U \wedge V) = 0 $$

2. Montrer que l'espace vectoriel $\mathbb{R}^3$ muni du crochet de Lie $[U, V] = U \wedge V$ est une algèbre de Lie.
3. Expliquer la signification de cette identité dans le contexte de l'algèbre de Lie $\mathfrak{so}(3)$ des matrices antisymétriques d'ordre 3.

<details>

<summary>Solution</summary>

**Méthode:** Pour la première partie, nous utiliserons la formule du double produit vectoriel (formule "BAC-CAB") $A \wedge (B \wedge C) = \langle A, C \rangle B - \langle A, B \rangle C$. Pour la deuxième partie, nous vérifierons les axiomes d'une algèbre de Lie. Pour la troisième, nous rappellerons l'isomorphisme entre $(\mathbb{R}^3, \wedge)$ et $(\mathfrak{so}(3), [,])$ et montrerons que l'identité de Jacobi pour le produit vectoriel est l'expression de l'identité de Jacobi pour le commutateur de matrices.

**Étapes:**

1.  **Démonstration de l'identité de Jacobi**:

    Utilisons la formule du double produit vectoriel:

    $U \wedge (V \wedge W) = \langle U, W \rangle V - \langle U, V \rangle W$

    $V \wedge (W \wedge U) = \langle V, U \rangle W - \langle V, W \rangle U$

    $W \wedge (U \wedge V) = \langle W, V \rangle U - \langle W, U \rangle V$

    Sommons ces trois expressions. Les produits scalaires sont symétriques ($\langle A, B \rangle = \langle B, A \rangle$).

    Somme $= (\langle U, W \rangle V - \langle W, U \rangle V) + (-\langle U, V \rangle W + \langle V, U \rangle W) + (-\langle V, W \rangle U + \langle W, V \rangle U)$

    $= 0 \cdot V + 0 \cdot W + 0 \cdot U = 0$.

    L'identité est donc démontrée.

2.  **Vérification de la structure d'algèbre de Lie**:

    Une algèbre de Lie est un espace vectoriel $\mathcal{G}$ muni d'une application bilinéaire $[\cdot, \cdot]: \mathcal{G} \times \mathcal{G} \to \mathcal{G}$ (le crochet de Lie) qui vérifie :

    a) L'antisymétrie : $[X, Y] = -[Y, X]$ pour tous $X, Y \in \mathcal{G}$.

    b) L'identité de Jacobi : $[X, [Y, Z]] + [Y, [Z, X]] + [Z, [X, Y]] = 0$ pour tous $X, Y, Z \in \mathcal{G}$.

    Ici, $\mathcal{G} = \mathbb{R}^3$ et $[U, V] = U \wedge V$.

    - La bilinéarité du produit vectoriel est une propriété de base.
    - a) L'antisymétrie $U \wedge V = -V \wedge U$ est aussi une propriété fondamentale du produit vectoriel.
    - b) L'identité de Jacobi est exactement ce que nous avons prouvé à la question 1.

    Donc, $(\mathbb{R}^3, +, \cdot_{\mathbb{R}}, \wedge)$ est une algèbre de Lie.

3.  **Signification pour $\mathfrak{so}(3)$**:

    L'algèbre de Lie $\mathfrak{so}(3)$ est l'ensemble des matrices antisymétriques de taille 3, munie du commutateur $[A,B]=AB-BA$.

    On peut définir un isomorphisme d'espaces vectoriels $\phi: \mathbb{R}^3 \to \mathfrak{so}(3)$ par :

    $\phi(U) = K_U = \begin{pmatrix} 0 & -u_3 & u_2 \\ u_3 & 0 & -u_1 \\ -u_2 & u_1 & 0 \end{pmatrix}$ pour $U=(u_1, u_2, u_3)$.

    Cette application a la propriété que pour tous $U, V \in \mathbb{R}^3$, $\phi(U \wedge V) = [\phi(U), \phi(V)]$. C'est un isomorphisme d'algèbres de Lie.

    L'identité de Jacobi pour le commutateur de matrices est toujours vraie dans n'importe quelle algèbre associative :

    $[A, [B, C]] + [B, [C, A]] + [C, [A, B]] = 0$.

    En appliquant $\phi^{-1}$ à cette identité avec $A=\phi(U)$, $B=\phi(V)$, $C=\phi(W)$, on obtient :

    $\phi^{-1}([\phi(U), [\phi(V), \phi(W)]]) + \dots = 0$.

    Puisque $\phi$ est un isomorphisme d'algèbres de Lie :

    $\phi^{-1}([\phi(U), \phi(V \wedge W)]) + \dots = 0$.

    $U \wedge (V \wedge W) + \dots = 0$.

    Ainsi, l'identité de Jacobi pour le produit vectoriel est la "traduction" de l'identité de Jacobi fondamentale pour le commutateur de matrices via l'isomorphisme entre $(\mathbb{R}^3, \wedge)$ et $(\mathfrak{so}(3), [,])$.

**Réponse:**

1. L'identité de Jacobi se démontre en appliquant trois fois la formule du double produit vectoriel et en sommant les résultats.
2. $(\mathbb{R}^3, \wedge)$ est une algèbre de Lie car le produit vectoriel est bilinéaire, antisymétrique et satisfait l'identité de Jacobi.
3. Cette identité est la manifestation, dans $\mathbb{R}^3$, de l'identité de Jacobi universelle pour les commutateurs de matrices, via l'isomorphisme d'algèbres de Lie $\mathfrak{so}(3) \cong \mathbb{R}^3$.

</details>

## Exercice 5: [Preuve Complexe]

**Problème:** Soit une rotation $\mathcal{R}$ dans $\mathbb{R}^3$ d'axe dirigé par le vecteur unitaire $N$ et d'angle $\theta \in ]0, 2\pi[$. Prouver que pour tout vecteur $U \in \mathbb{R}^3$, on a la relation suivante, qui exprime le produit vectoriel en termes de la rotation et de son adjointe:

$$ N \wedge U = \frac{1}{2\sin\theta}(\mathcal{R}(U) - \mathcal{R}^{-1}(U)) $$

<details>

<summary>Solution</summary>

**Méthode:** Nous allons utiliser la formule de Rodrigues pour exprimer $\mathcal{R}(U)$ et $\mathcal{R}^{-1}(U)$. $\mathcal{R}^{-1}$ est la rotation d'axe $N$ et d'angle $-\theta$. En calculant la différence $\mathcal{R}(U) - \mathcal{R}^{-1}(U)$ et en simplifiant, nous devrions obtenir une expression proportionnelle à $N \wedge U$.

**Étapes:**

1.  **Expression de $\mathcal{R}(U)$ via la formule de Rodrigues**:

    La rotation d'axe $N$ et d'angle $\theta$ est donnée par:

    $$ \mathcal{R}_{N,\theta}(U) = \cos(\theta)U + (1-\cos(\theta))\langle U,N \rangle N + \sin(\theta) (N \wedge U) $$

2.  **Expression de $\mathcal{R}^{-1}(U)$**:

    L'inverse $\mathcal{R}^{-1}$ est la rotation d'axe $N$ et d'angle $-\theta$. On remplace $\theta$ par $-\theta$ dans la formule de Rodrigues.

    On utilise les propriétés $\cos(-\theta) = \cos(\theta)$ et $\sin(-\theta) = -\sin(\theta)$.

    $$ \mathcal{R}_{N,-\theta}(U) = \cos(\theta)U + (1-\cos(\theta))\langle U,N \rangle N - \sin(\theta) (N \wedge U) $$

3.  **Calcul de la différence**:

    On soustrait la deuxième expression de la première:

    $\mathcal{R}(U) - \mathcal{R}^{-1}(U) = \left( \cos(\theta)U + (1-\cos(\theta))\langle U,N \rangle N + \sin(\theta) (N \wedge U) \right) - \left( \cos(\theta)U + (1-\cos(\theta))\langle U,N \rangle N - \sin(\theta) (N \wedge U) \right)$

    Les termes en $U$ et en $N$ s'annulent:

    $\mathcal{R}(U) - \mathcal{R}^{-1}(U) = \sin(\theta) (N \wedge U) - (-\sin(\theta) (N \wedge U))$

    $\mathcal{R}(U) - \mathcal{R}^{-1}(U) = 2\sin(\theta) (N \wedge U)$

4.  **Conclusion**:

    Puisque $\theta \in ]0, 2\pi[$, on peut avoir $\sin\theta=0$ si $\theta=\pi$.

    Si $\theta \in ]0, \pi[ \cup ]\pi, 2\pi[$, alors $\sin\theta \neq 0$. On peut diviser par $2\sin\theta$:

    $$ N \wedge U = \frac{1}{2\sin\theta}(\mathcal{R}(U) - \mathcal{R}^{-1}(U)) $$

    Si $\theta=\pi$, $\mathcal{R}$ est un demi-tour. $\mathcal{R}(U) = -U + 2\langle U,N \rangle N$.

    Dans ce cas, $\mathcal{R} = \mathcal{R}^{-1}$, donc $\mathcal{R}(U) - \mathcal{R}^{-1}(U) = 0$. Le membre de droite de la formule n'est pas défini.

    Cependant, la relation $2\sin(\theta) (N \wedge U) = \mathcal{R}(U) - \mathcal{R}^{-1}(U)$ reste vraie pour $\theta=\pi$, car les deux côtés sont nuls. L'énoncé est donc à interpréter pour $\sin\theta \neq 0$.

**Réponse:** Pour $\theta \in ]0, \pi[ \cup ]\pi, 2\pi[$, la formule est:

$$ N \wedge U = \frac{1}{2\sin\theta}(\mathcal{R}(U) - \mathcal{R}^{-1}(U)) $$

Elle découle directement de la soustraction de la formule de Rodrigues pour l'angle $-\theta$ à celle pour l'angle $\theta$.

</details>

## Exercice 6: [Investigation Théorique]

**Problème:** Soit l'isomorphisme d'algèbres de Lie $\phi: (\mathbb{R}^3, \wedge) \to (\mathfrak{so}(3), [,])$ où $[A,B]=AB-BA$ et $\phi(V)$ est la matrice $K_V$ telle que $K_V U = V \wedge U$ pour tout $U \in \mathbb{R}^3$.

Soit $R \in SO(3)$ une rotation. Démontrer la relation suivante, qui lie la rotation, son algèbre de Lie, et la représentation adjointe :

$$ \forall V \in \mathbb{R}^3, \quad \phi(R(V)) = R \phi(V) R^{-1} $$

<details>

<summary>Solution</summary>

**Méthode:** L'identité à prouver est $\forall V, U \in \mathbb{R}^3, K_{R(V)} U = R K_V R^{-1} U$. Nous allons partir du membre de droite et utiliser les propriétés des rotations et du produit vectoriel. L'astuce clé est de montrer qu'une rotation préserve le produit vectoriel, c'est-à-dire $R(A \wedge B) = R(A) \wedge R(B)$ pour $R \in SO(3)$.

**Étapes:**

1.  **Propriété de conservation du produit vectoriel par les rotations**:

    Soit $R \in SO(3)$. Soient $A, B \in \mathbb{R}^3$. Par définition du produit vectoriel $A \wedge B$, il est l'unique vecteur tel que $\forall W \in \mathbb{R}^3, \langle A \wedge B, W \rangle = \det(A, B, W)$.

    Considérons le vecteur $R(A) \wedge R(B)$. Pour tout $Z \in \mathbb{R}^3$:

    $\langle R(A) \wedge R(B), Z \rangle = \det(R(A), R(B), Z)$.

    Posons $Z=R(W)$. Comme $R$ est surjective, cela couvre tout $\mathbb{R}^3$.

    $\langle R(A) \wedge R(B), R(W) \rangle = \det(R(A), R(B), R(W))$.

    Puisque $R$ est une isométrie, elle préserve le produit scalaire: $\langle R(X), R(Y) \rangle = \langle X, Y \rangle$.

    Donc, le membre de gauche est $\langle A \wedge B, W \rangle$.

    Le membre de droite est $\det(R) \det(A, B, W)$.

    Comme $R \in SO(3)$, $\det(R)=1$.

    On a donc l'égalité : $\langle A \wedge B, W \rangle = \det(A,B,W) = \det(R(A), R(B), R(W)) = \langle R(A) \wedge R(B), R(W) \rangle$.

    En appliquant la conservation du produit scalaire par $R$, ceci est $\langle A \wedge B, W \rangle$.

    On a donc montré $\langle R(A) \wedge R(B), R(W) \rangle = \langle R(A \wedge B), R(W) \rangle$.

    Comme $R$ est un isomorphisme, on peut conclure que $R(A) \wedge R(B) = R(A \wedge B)$.

2.  **Démonstration de la relation principale**:

    On veut montrer $K_{R(V)} U = R K_V R^{-1} U$.

    Calculons le membre de droite : $R K_V R^{-1} U = R (V \wedge (R^{-1}U))$.

    Utilisons la propriété de conservation du produit vectoriel démontrée à l'étape 1:

    $R (V \wedge (R^{-1}U)) = R(V) \wedge R(R^{-1}U) = R(V) \wedge U$.

    Le membre de gauche est par définition $K_{R(V)} U = R(V) \wedge U$.

    Les deux membres sont égaux. La relation est donc démontrée pour tout $U, V \in \mathbb{R}^3$.

3.  **Interprétation**:

    La relation $\phi(R(V)) = R \phi(V) R^{-1}$ s'écrit aussi $K_{R(V)} = R K_V R^{-1}$.

    L'action de $SO(3)$ sur son algèbre de Lie $\mathfrak{so}(3)$ par conjugaison $A \mapsto R A R^{-1}$ est appelée la représentation adjointe du groupe sur son algèbre, notée $\text{Ad}_R(A)$.

    L'action naturelle de $SO(3)$ sur $\mathbb{R}^3$ est l'action de rotation $V \mapsto R(V)$.

    La formule démontrée montre que l'isomorphisme $\phi$ "entrelace" ces deux actions. C'est un isomorphisme de "modules" sur le groupe $SO(3)$. Cette compatibilité est une propriété fondamentale qui lie un groupe de Lie et son algèbre de Lie.

**Réponse:** La relation $\phi(R(V)) = R \phi(V) R^{-1}$ est démontrée en montrant d'abord que les rotations directes préservent le produit vectoriel, i.e., $R(A \wedge B) = R(A) \wedge R(B)$, puis en appliquant cette propriété à la définition de l'opérateur $\phi(V) = K_V$.

</details>

## Exercice 7: [Preuve Complexe]

**Problème:** Démontrer la surjectivité du morphisme de groupes $\mathcal{J}: SU(2) \to SO(3)$ défini par $\mathcal{J}(U) = \text{Ad}_U$, où $\text{Ad}_U(M) = UMU^*$ pour $M$ dans l'espace $\mathcal{V}$ des matrices hermitiennes de trace nulle.

<details>

<summary>Solution</summary>

**Méthode:** Pour prouver la surjectivité, il suffit de montrer que l'image de $\mathcal{J}$ contient un ensemble de générateurs de $SO(3)$. Un tel ensemble est constitué des rotations autour des axes de la base canonique. Nous allons construire explicitement des matrices $U \in SU(2)$ dont les images par $\mathcal{J}$ sont les rotations d'angle arbitraire autour des axes correspondant à la base $(T_1, T_2, T_3)$ de $\mathcal{V}$.

**Étapes:**

1.  **Rappel de la base de $\mathcal{V}$**:

    On utilise la base (proportionnelle aux matrices de Pauli) de $\mathcal{V} \cong \mathbb{R}^3$:

    $T_1 = \begin{pmatrix} 0 & -i \\ i & 0 \end{pmatrix}, T_2 = \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix}, T_3 = \begin{pmatrix} 1 & 0 \\ 0 & -1 \end{pmatrix}$.

    Cette base est orthonormée pour le produit scalaire $\langle A, B \rangle = \frac{1}{2}\text{Tr}(AB)$.

2.  **Rotation autour de l'axe $T_3$**:

    Considérons la matrice $U_3(\theta) = \begin{pmatrix} e^{-i\theta/2} & 0 \\ 0 & e^{i\theta/2} \end{pmatrix} \in SU(2)$.

    Calculons $\text{Ad}_{U_3(\theta)}(M) = U_3(\theta) M U_3(\theta)^*$.

    - Pour $M=T_3$: $\text{Ad}_{U_3(\theta)}(T_3) = U_3(\theta) T_3 U_3(\theta)^{-1} = T_3$ car $U_3$ et $T_3$ sont diagonales et commutent. L'axe $T_3$ est fixe.
    - Pour $M=T_2$: $\text{Ad}_{U_3(\theta)}(T_2) = \begin{pmatrix} e^{-i\theta/2} & 0 \\ 0 & e^{i\theta/2} \end{pmatrix} \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix} \begin{pmatrix} e^{i\theta/2} & 0 \\ 0 & e^{-i\theta/2} \end{pmatrix} = \begin{pmatrix} 0 & e^{-i\theta} \\ e^{i\theta} & 0 \end{pmatrix}$.

    Ceci se décompose en: $\begin{pmatrix} 0 & \cos\theta - i\sin\theta \\ \cos\theta + i\sin\theta & 0 \end{pmatrix} = \cos\theta \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix} - \sin\theta \begin{pmatrix} 0 & -i \\ i & 0 \end{pmatrix} = \cos\theta T_2 - \sin\theta T_1$.

    - Pour $M=T_1$: un calcul similaire donne $\text{Ad}_{U_3(\theta)}(T_1) = \sin\theta T_2 + \cos\theta T_1$.

    Dans la base $(T_1, T_2, T_3)$, la matrice de $\text{Ad}_{U_3(\theta)}$ est $\begin{pmatrix} \cos\theta & -\sin\theta & 0 \\ \sin\theta & \cos\theta & 0 \\ 0 & 0 & 1 \end{pmatrix}$, qui est la rotation d'angle $\theta$ autour de $T_3$.

3.  **Rotation autour des autres axes**:

    Par un argument de symétrie, les rotations autour des axes $T_1$ et $T_2$ sont aussi dans l'image de $\mathcal{J}$. Par exemple, $U_2(\theta) = \begin{pmatrix} \cos(\theta/2) & \sin(\theta/2) \\ \sin(\theta/2) & \cos(\theta/2) \end{pmatrix}$ est proportionnelle à $\exp(\theta/2 T_2)$ et génère une rotation d'angle $\theta$ autour de $T_2$.

    Plus généralement, soit $N$ un vecteur unitaire dans $\mathbb{R}^3$, correspondant à $M_N \in \mathcal{V}$ avec $\frac{1}{2}\text{Tr}(M_N^2)=1$.

    La matrice $U_N(\theta) = \cos(\theta/2) I_2 - i\sin(\theta/2) M_N$ est dans $SU(2)$. On peut montrer que $\mathcal{J}(U_N(\theta))$ est la rotation d'angle $\theta$ autour de l'axe $N$.

4.  **Conclusion de surjectivité**:

    Toute rotation de $SO(3)$ peut s'écrire comme une rotation d'un certain angle $\theta$ autour d'un certain axe $N$. D'après l'étape 3, pour tout couple $(N, \theta)$, on peut construire un antécédent $U_N(\theta) \in SU(2)$. Donc toute rotation de $SO(3)$ est dans l'image de $\mathcal{J}$. Le morphisme est surjectif.

**Réponse:** Le morphisme $\mathcal{J}: SU(2) \to SO(3)$ est surjectif. Ceci est prouvé en montrant que toutes les rotations, qui engendrent $SO(3)$, sont dans l'image de $\mathcal{J}$. On construit explicitement les préimages dans $SU(2)$ des rotations autour des axes de base.

</details>

## Exercice 8: [Théorème Fondamental]

**Problème:** Prouver le théorème de la décomposition polaire : toute matrice inversible $M \in GL_n(\mathbb{R})$ peut s'écrire de manière unique sous la forme $M=OS$, où $O \in O_n(\mathbb{R})$ est une matrice orthogonale et $S \in S_n^{++}(\mathbb{R})$ est une matrice symétrique définie positive.

<details>

<summary>Solution</summary>

**Méthode:** La preuve se fait en deux temps : existence et unicité.

Pour l'existence, nous construisons $S$ à partir de $M$ et montrons qu'elle a les propriétés requises. Ensuite, nous définissons $O$ et montrons qu'elle est orthogonale.

Pour l'unicité, nous supposons deux décompositions et montrons qu'elles doivent être identiques.

**Étapes:**

1.  **Construction de S (Existence)**:

    Considérons la matrice $A = {}^tMM$. C'est une matrice symétrique : ${}^tA = {}^t({}^tMM) = {}^tM({}^t{}^tM) = {}^tMM = A$.

    Elle est définie positive : pour tout $X \in \mathbb{R}^n \setminus \{0\}$, ${}^tX A X = {}^tX{}^tMMX = {}^t(MX)(MX) = \|MX\|^2$.

    Comme $M$ est inversible, $X \neq 0 \implies MX \neq 0$, donc $\|MX\|^2 > 0$.

    $A$ est donc symétrique définie positive.

    D'après le théorème spectral, il existe une unique racine carrée symétrique définie positive de $A$, que nous notons $S$. On a $S^2 = A = {}^tMM$ et $S \in S_n^{++}(\mathbb{R})$.

2.  **Construction de O (Existence)**:

    Définissons $O = MS^{-1}$. Nous devons montrer que $O$ est orthogonale.

    Calculons ${}^tOO$:

    ${}^tOO = {}^t(MS^{-1})(MS^{-1}) = ({}^tS^{-1})({}^tM) M S^{-1}$.

    Comme $S$ est symétrique, $S^{-1}$ l'est aussi, donc ${}^tS^{-1} = S^{-1}$.

    ${}^tOO = S^{-1} ({}^tMM) S^{-1} = S^{-1} (S^2) S^{-1} = (S^{-1}S)(S S^{-1}) = I_n I_n = I_n$.

    Donc $O$ est bien une matrice orthogonale.

    Nous avons $M = OS$ avec $O \in O_n(\mathbb{R})$ et $S \in S_n^{++}(\mathbb{R})$. L'existence est prouvée.

3.  **Unicité**:

    Supposons qu'il existe deux décompositions : $M = O_1 S_1 = O_2 S_2$, avec $O_1, O_2 \in O_n(\mathbb{R})$ et $S_1, S_2 \in S_n^{++}(\mathbb{R})$.

    Calculons ${}^tMM$:

    ${}^tMM = {}^t(O_1 S_1)(O_1 S_1) = {}^tS_1 {}^tO_1 O_1 S_1 = S_1 I_n S_1 = S_1^2$.

    De même, ${}^tMM = {}^t(O_2 S_2)(O_2 S_2) = S_2^2$.

    On a donc $S_1^2 = S_2^2$.

    Puisque $S_1$ et $S_2$ sont des matrices symétriques définies positives, elles sont les racines carrées uniques de la matrice ${}^tMM$. Par conséquent, $S_1=S_2$.

    Ensuite, de $O_1 S_1 = O_2 S_1$ et comme $S_1$ est inversible (car définie positive), on peut multiplier par $S_1^{-1}$ à droite pour obtenir $O_1=O_2$.

    La décomposition est donc unique.

4.  **Interprétation géométrique**:

    L'endomorphisme associé à $M$ peut être vu comme la composition d'une isométrie (donnée par $O$) et d'une "dilatation" le long d'axes orthogonaux (donnée par $S$). La matrice $S$ déforme la sphère unité en un ellipsoïde, et la matrice $O$ fait ensuite tourner (et/ou réfléchit) cet ellipsoïde.

**Réponse:** Le théorème de la décomposition polaire est vrai. L'existence est constructive : on pose $S = \sqrt{{}^tMM}$ (l'unique racine carrée symétrique définie positive) et $O=MS^{-1}$. L'unicité découle de l'unicité de la racine carrée symétrique définie positive d'une matrice.

</details>

## Exercice 9: [Investigation Théorique]

**Problème:** Soit $E$ un espace euclidien de dimension $n$. Démontrer le théorème de Cartan-Dieudonné en dimension $n$: tout automorphisme orthogonal $f \in O(E)$ se décompose en un produit d'au plus $n$ réflexions hyperplanes.

<details>

<summary>Solution</summary>

**Méthode:** Nous allons procéder par récurrence sur la dimension $n$ de l'espace. La stratégie consiste à trouver une réflexion $s$ telle que $s \circ f$ fixe au moins un vecteur non nul, ce qui permet de se ramener à un problème de dimension $n-1$.

**Étapes:**

1.  **Cas de base ($n=1$)**:

    L'espace est une droite. $O(E) = \{\text{Id}, -\text{Id}\}$.

    $\text{Id}$ est le produit de 0 réflexions (ou $s \circ s$ pour une réflexion $s$). $0 \le 1$.

    $-\text{Id}$ est la réflexion par rapport à l'hyperplan $\{0\}$. C'est 1 réflexion. $1 \le 1$.

    Le théorème est vrai pour $n=1$.

2.  **Hypothèse de récurrence**:

    Supposons que le théorème est vrai pour tout espace euclidien de dimension $k < n$.

3.  **Étape de récurrence ($n$)**:

    Soit $f \in O(E)$.

    **Cas 1 : $f$ admet un vecteur fixe non nul.**

    Soit $x \in E$, $x \neq 0$, tel que $f(x)=x$. Soit $H = (\text{Vect}(x))^\perp$. $H$ est un hyperplan de dimension $n-1$.

    Pour tout $y \in H$, $\langle f(y), x \rangle = \langle f(y), f(x) \rangle = \langle y, x \rangle = 0$. Donc $f(y) \in H$.

    La restriction de $f$ à $H$, notée $f_H$, est un automorphisme orthogonal de $H$.

    Par hypothèse de récurrence, $f_H$ est le produit de $k \le n-1$ réflexions hyperplanes $s'_1, \dots, s'_k$ de $H$.

    Chaque réflexion $s'_i$ par rapport à un hyperplan $H'_i \subset H$ peut être étendue à une réflexion $s_i$ de $E$ par rapport à l'hyperplan $H'_i \oplus \text{Vect}(x)$.

    La composée $g = s_1 \circ \dots \circ s_k$ coïncide avec $f$ sur $H$. De plus, $g(x)=x$ car $x$ est dans chaque hyperplan de réflexion.

    Donc $f=g$, et $f$ est une composition de $k \le n-1 \le n$ réflexions.

4.  **Cas 2 : $f$ n'a pas de vecteur fixe non nul (sauf 0)**.

    Soit $x \in E$ un vecteur unitaire. Comme $f(x) \neq x$, le vecteur $u = f(x)-x$ est non nul.

    Soit $s$ la réflexion par rapport à l'hyperplan $H=u^\perp$.

    Par définition, $s(u)=-u$.

    On a $s(y) = y - 2 \frac{\langle y, u \rangle}{\|u\|^2} u$.

    Calculons $s(f(x))$:

    $\|f(x)-x\|^2 = \|f(x)\|^2 - 2\langle f(x), x \rangle + \|x\|^2 = 1 - 2\langle f(x), x \rangle + 1 = 2(1-\langle f(x), x \rangle)$.

    $\langle f(x), u \rangle = \langle f(x), f(x)-x \rangle = \|f(x)\|^2 - \langle f(x), x \rangle = 1 - \langle f(x), x \rangle$.

    Donc $\langle f(x), u \rangle = \frac{1}{2}\|u\|^2$.

    $s(f(x)) = f(x) - 2 \frac{\langle f(x), u \rangle}{\|u\|^2} u = f(x) - 2 \frac{\frac{1}{2}\|u\|^2}{\|u\|^2} u = f(x)-u = f(x) - (f(x)-x) = x$.

    Donc la composée $g = s \circ f$ admet $x$ comme vecteur fixe.

    D'après le cas 1, $g$ est un produit de $k \le n-1$ réflexions $s_1, \dots, s_k$.

    Alors $s \circ f = s_1 \circ \dots \circ s_k$.

    Puisque $s \circ s = \text{Id}$, on a $f = s \circ s_1 \circ \dots \circ s_k$.

    $f$ est donc une composition de $k+1 \le (n-1)+1=n$ réflexions.

5.  **Conclusion**: Dans tous les cas, $f$ est une composition d'au plus $n$ réflexions. Par le principe de récurrence, le théorème est vrai pour tout $n \ge 1$.

**Réponse:** Le théorème de Cartan-Dieudonné est démontré par récurrence sur la dimension $n$. Si $f$ a un point fixe, on applique l'hypothèse de récurrence sur son hyperplan orthogonal. Sinon, on compose $f$ avec une réflexion bien choisie $s$ pour que $s \circ f$ ait un point fixe, ce qui ramène au premier cas.

</details>

## Exercice 10: [Investigation Théorique]

**Problème:** Soit $f \in SO(4)$ un automorphisme orthogonal direct de l'espace euclidien $\mathbb{R}^4$. Montrer que $f$ est une double rotation, c'est-à-dire qu'il existe une base orthonormée de $\mathbb{R}^4$ dans laquelle la matrice de $f$ est de la forme :

$$ M = \begin{pmatrix} \cos\theta & -\sin\theta & 0 & 0 \\ \sin\theta & \cos\theta & 0 & 0 \\ 0 & 0 & \cos\phi & -\sin\phi \\ 0 & 0 & \sin\phi & \cos\phi \end{pmatrix} $$

Discuter les cas particuliers pour les angles $\theta$ et $\phi$.

<details>

<summary>Solution</summary>

**Méthode:** L'analyse repose sur l'étude des valeurs propres du polynôme caractéristique de $f$. Les valeurs propres d'une isométrie sont de module 1. Comme la matrice est réelle, les valeurs propres complexes apparaissent par paires conjuguées.

**Étapes:**

1.  **Analyse des valeurs propres**:

    Soit $M$ la matrice de $f$ dans une base orthonormée. $M \in SO(4)$. Le polynôme caractéristique $\chi_M(\lambda)$ est de degré 4 à coefficients réels.

    Ses racines (les valeurs propres) sont de module 1. Les possibilités pour les racines sont :

    a) Quatre racines réelles : Puisqu'elles sont de module 1, elles valent $\pm 1$. Comme $\det(M)=1$, le nombre de valeurs propres égales à $-1$ doit être pair. Les possibilités sont $(1,1,1,1)$ ou $(1,1,-1,-1)$ ou $(-1,-1,-1,-1)$.

    b) Deux racines réelles et deux complexes conjuguées : Les réelles sont $\pm 1$. Les complexes sont $e^{i\theta}, e^{-i\theta}$ avec $\theta \in ]0, \pi[$. Le produit des valeurs propres étant 1, les réelles doivent être $(1,1)$ ou $(-1,-1)$.

    c) Quatre racines complexes : Elles viennent par paires conjuguées, $(e^{i\theta}, e^{-i\theta})$ et $(e^{i\phi}, e^{-i\phi})$ avec $\theta, \phi \in ]0, \pi[$.

2.  **Construction de la base (Cas c)**:

    Supposons que les valeurs propres sont $e^{\pm i\theta}$ et $e^{\pm i\phi}$ avec $\theta, \phi \in ]0, \pi[$.

    Soit $u_1 + i u_2$ un vecteur propre (normalisé) dans l'extension complexifiée $E \otimes \mathbb{C}$ pour la valeur propre $e^{i\theta}$. Alors $f(u_1+iu_2) = e^{i\theta}(u_1+iu_2) = (\cos\theta+i\sin\theta)(u_1+iu_2)$.

    En identifiant parties réelles et imaginaires, on obtient $f(u_1) = \cos\theta u_1 - \sin\theta u_2$ et $f(u_2) = \sin\theta u_1 + \cos\theta u_2$.

    On peut montrer que $u_1$ et $u_2$ sont orthogonaux et de même norme. On peut les choisir orthonormés.

    Le plan $P_1 = \text{Vect}(u_1, u_2)$ est stable par $f$, et la restriction de $f$ à $P_1$ est une rotation d'angle $\theta$.

    De même, en partant d'un vecteur propre pour $e^{i\phi}$, on trouve un plan $P_2 = \text{Vect}(u_3, u_4)$ stable par $f$, où la restriction est une rotation d'angle $\phi$.

    Le sous-espace $P_1^\perp$ est stable par $f$ (car $f$ est une isométrie). $P_2$ doit être inclus dans $P_1^\perp$. Par dimension, $P_2 = P_1^\perp$.

    Dans la base orthonormée $(u_1, u_2, u_3, u_4)$, la matrice de $f$ a la forme voulue.

3.  **Analyse des autres cas**:

    Les autres cas de valeurs propres correspondent à des cas particuliers de la forme générale où un ou plusieurs angles sont nuls ou égaux à $\pi$.

    - Cas (a) $(1,1,1,1)$: $f = \text{Id}$. $\theta=\phi=0$.
    - Cas (a) $(1,1,-1,-1)$: $\theta=0, \phi=\pi$. Une rotation d'angle $\pi$ (demi-tour) dans un plan et l'identité dans le plan orthogonal.
    - Cas (a) $(-1,-1,-1,-1)$: $\theta=\phi=\pi$. C'est la composée de deux demi-tours dans des plans orthogonaux. Note : $-I_4 \in SO(4)$.
    - Cas (b) $(1,1,e^{i\theta},e^{-i\theta})$: $\phi=0$. C'est une rotation simple d'angle $\theta$ dans un plan $P$, et l'identité sur $P^\perp$. L'axe de rotation est un plan (le plan des points fixes).
    - Cas (b) $(-1,-1,e^{i\theta},e^{-i\theta})$: $\phi=\pi$. C'est une rotation d'angle $\theta$ dans un plan, et un demi-tour dans le plan orthogonal.

4.  **Conclusion**:

    Dans tous les cas, il existe une décomposition de $\mathbb{R}^4$ en somme directe orthogonale de deux plans stables $P_1 \oplus P_2$ telle que la restriction de $f$ à chaque plan est une rotation (éventuellement triviale ou un demi-tour). Ceci prouve l'existence de la base et de la matrice annoncée.

**Réponse:** Toute isométrie directe de $\mathbb{R}^4$ admet une base orthonormée dans laquelle sa matrice est $M = \text{diag}(R(\theta), R(\phi))$. Cela se démontre en analysant la structure des valeurs propres de $f$, qui conduit à une décomposition de l'espace en une somme directe orthogonale de deux plans stables sur lesquels $f$ agit comme une rotation plane.

</details>
