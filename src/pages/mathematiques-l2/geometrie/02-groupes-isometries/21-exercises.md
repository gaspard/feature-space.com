---
title: B - Exercices
order: 21
level: pro
chapter: B - Concepts
course: Géométrie
tags: ["exercises", "practice", "pro"]
---

# Exercices: B - Concepts

## Exercice 1: [Preuve complexe]

**Problème:** Soit $(E, \langle \cdot, \cdot \rangle)$ un espace hermitien de dimension finie $n$. Démontrer le théorème spectral pour les endomorphismes unitaires : si $f: E \to E$ est une isométrie (c'est-à-dire un endomorphisme unitaire), alors il existe une base orthonormée de $E$ constituée de vecteurs propres de $f$. En déduire que toute matrice unitaire est diagonalisable dans une base orthonormée.

<details>

<summary>Solution</summary>

**Méthode:** La démonstration se fait par récurrence sur la dimension $n$ de l'espace $E$. L'étape clé est de montrer l'existence d'au moins une valeur propre et un vecteur propre, puis de considérer le sous-espace orthogonal au vecteur propre trouvé, qui se révèle stable par l'isométrie.

**Étapes:**

1.  **Cas de base:** Si $n=1$, tout vecteur non nul est un vecteur propre. Une base orthonormée est constituée d'un unique vecteur unitaire, qui est donc un vecteur propre. Le théorème est trivialement vrai.

2.  **Existence d'une valeur propre:** Soit $f$ un endomorphisme unitaire sur un espace hermitien $E$ de dimension $n \ge 1$. Le corps des scalaires est $\mathbb{C}$, qui est algébriquement clos. Le polynôme caractéristique $\chi_f(\lambda)$ de $f$ admet donc au moins une racine $\lambda_0 \in \mathbb{C}$. Cette racine est une valeur propre de $f$.

3.  **Module de la valeur propre:** Soit $\lambda_0$ une valeur propre de $f$ et $v_0$ un vecteur propre associé non nul. On a $f(v_0) = \lambda_0 v_0$. Comme $f$ est une isométrie, elle préserve la norme :

    $$ \|v_0\| = \|f(v_0)\| = \|\lambda_0 v_0\| = |\lambda_0| \|v_0\| $$

    Puisque $v_0 \neq 0$, on a $\|v_0\| \neq 0$, et on peut simplifier pour obtenir $|\lambda_0|=1$. Toutes les valeurs propres d'une isométrie unitaire sont de module 1.

4.  **Hypothèse de récurrence:** Supposons que le théorème est vrai pour tout espace hermitien de dimension $n-1$.

5.  **Stabilité de l'orthogonal:** Soit $v_0$ un vecteur propre de $f$ (on peut le choisir de norme 1). Soit $F = \text{Vect}(v_0)$. Considérons son complément orthogonal $F^\perp = \{x \in E \mid \langle x, v_0 \rangle = 0\}$. Montrons que $F^\perp$ est stable par $f$. Soit $x \in F^\perp$. On doit montrer que $f(x) \in F^\perp$.

    $$ \langle f(x), v_0 \rangle = \langle x, f^*(v_0) \rangle $$

    Puisque $f$ est unitaire, $f^{-1} = f^*$. On a $f(v_0) = \lambda_0 v_0$, donc $v_0 = f^{-1}(\lambda_0 v_0) = \lambda_0 f^{-1}(v_0) = \lambda_0 f^*(v_0)$.

    Ainsi, $f^*(v_0) = \frac{1}{\lambda_0} v_0$.

    $$ \langle f(x), v_0 \rangle = \langle x, \frac{1}{\lambda_0} v_0 \rangle = \frac{1}{\overline{\lambda_0}} \langle x, v_0 \rangle $$

    Comme $x \in F^\perp$, $\langle x, v_0 \rangle = 0$, donc $\langle f(x), v_0 \rangle = 0$. Cela prouve que $f(x) \in F^\perp$. Donc $F^\perp$ est stable par $f$.

6.  **Application de l'hypothèse de récurrence:** L'endomorphisme restreint $f|_{F^\perp}$ est un endomorphisme de $F^\perp$. Comme $f$ préserve la norme sur $E$, sa restriction $f|_{F^\perp}$ la préserve aussi sur $F^\perp$. C'est donc une isométrie de l'espace hermitien $F^\perp$, dont la dimension est $n-1$.

    Par hypothèse de récurrence, il existe une base orthonormée $(e_2, \dots, e_n)$ de $F^\perp$ constituée de vecteurs propres de $f|_{F^\perp}$ (et donc de $f$).

7.  **Conclusion:** Soit $e_1 = v_0/\|v_0\|$. La famille $\mathcal{B} = (e_1, e_2, \dots, e_n)$ est une base orthonormée de $E$ car $e_1 \in F$ et $(e_2, \dots, e_n)$ est une base orthonormée de $F^\perp$. De plus, tous les vecteurs de $\mathcal{B}$ sont des vecteurs propres de $f$. La démonstration est achevée par récurrence.

8.  **Formulation matricielle:** Si $U$ est une matrice unitaire, l'endomorphisme $f_U$ qu'elle représente dans la base canonique de $\mathbb{C}^n$ (qui est orthonormée) est une isométrie unitaire. D'après ce qui précède, il existe une base orthonormée $\mathcal{B}'$ de vecteurs propres pour $f_U$. La matrice de $f_U$ dans cette base, $D$, est diagonale. Si $P$ est la matrice de passage de la base canonique à $\mathcal{B}'$, alors $D = P^{-1}UP$. Comme les deux bases sont orthonormées, $P$ est une matrice unitaire, donc $P^{-1} = P^*$. On a $U = PDP^*$.

**Réponse:** Une isométrie $f$ sur un espace hermitien $E$ admet une base orthonormée de vecteurs propres. Matriciellement, pour toute matrice unitaire $U \in U_n(\mathbb{C})$, il existe une matrice unitaire $P \in U_n(\mathbb{C})$ et une matrice diagonale $D$ telles que $U = PDP^*$. Les éléments diagonaux de $D$ sont les valeurs propres de $U$ et sont de module 1.

</details>

## Exercice 2: [Application avancée]

**Problème:** Soit l'endomorphisme $f$ de l'espace euclidien orienté $\mathbb{R}^3$ dont la matrice dans la base canonique orthonormée directe est :

$$ M = \frac{1}{9} \begin{pmatrix} 1 & -8 & 4 \\ 4 & 4 & 7 \\ -8 & 1 & 4 \end{pmatrix} $$

1.  Vérifier que $f$ est une rotation.
2.  Déterminer l'axe de cette rotation, dirigé par un vecteur unitaire $N$.
3.  Déterminer l'angle $\theta \in [0, \pi]$ de cette rotation.
4.  En utilisant la formule de Rodrigues, vérifier l'image du vecteur $U = (1, 0, 0)$ par cette rotation.

<details>

<summary>Solution</summary>

**Méthode:**

1.  On vérifie que $M \in SO_3(\mathbb{R})$ en calculant ${}^tMM$ et $\det(M)$.
2.  L'axe de la rotation est le sous-espace propre associé à la valeur propre 1, c'est-à-dire $\ker(M-I_3)$.
3.  L'angle $\theta$ peut être déterminé à l'aide de la formule $\text{Tr}(M) = 1 + 2\cos\theta$. Le signe de $\sin\theta$ est donné par le signe de $\det(X, f(X), N)$ pour un vecteur $X$ non colinéaire à $N$.
4.  On applique la formule $\mathcal{R}(U) = (\cos\theta) U + (1-\cos\theta) \langle U, N \rangle N + (\sin\theta) N \land U$ et on compare le résultat avec le calcul direct $MU$.

**Étapes:**

1.  **Vérification de l'isométrie:**

    Calculons ${}^tMM$.

    ${}^tM = \frac{1}{9} \begin{pmatrix} 1 & 4 & -8 \\ -8 & 4 & 1 \\ 4 & 7 & 4 \end{pmatrix}$.

    ${}^tMM = \frac{1}{81} \begin{pmatrix} 1 & 4 & -8 \\ -8 & 4 & 1 \\ 4 & 7 & 4 \end{pmatrix} \begin{pmatrix} 1 & -8 & 4 \\ 4 & 4 & 7 \\ -8 & 1 & 4 \end{pmatrix} = \frac{1}{81} \begin{pmatrix} 1+16+64 & -8+16-8 & 4+28-32 \\ -8+16+8 & 64+16+1 & -32+28+4 \\ 4+28-32 & -32+28+4 & 16+49+16 \end{pmatrix} = \frac{1}{81} \begin{pmatrix} 81 & 0 & 0 \\ 0 & 81 & 0 \\ 0 & 0 & 81 \end{pmatrix} = I_3$.

    La matrice $M$ est orthogonale.

    Calculons $\det(M) = (\frac{1}{9})^3 \det \begin{pmatrix} 1 & -8 & 4 \\ 4 & 4 & 7 \\ -8 & 1 & 4 \end{pmatrix} = \frac{1}{729} [1(16-7) - (-8)(16 - (-56)) + 4(4 - (-32))] = \frac{1}{729} [9 + 8(72) + 4(36)] = \frac{1}{729} [9 + 576 + 144] = \frac{729}{729} = 1$.

    Puisque $M \in O_3(\mathbb{R})$ et $\det(M)=1$, $f$ est une rotation.

2.  **Détermination de l'axe:** L'axe est l'ensemble des vecteurs invariants, $E_1 = \ker(M-I_3)$.

    $M-I_3 = \frac{1}{9} \begin{pmatrix} 1-9 & -8 & 4 \\ 4 & 4-9 & 7 \\ -8 & 1 & 4-9 \end{pmatrix} = \frac{1}{9} \begin{pmatrix} -8 & -8 & 4 \\ 4 & -5 & 7 \\ -8 & 1 & -5 \end{pmatrix}$.

    On résout le système $9(M-I_3)V = 0$ pour $V=(x,y,z)$:

    $\begin{cases} -8x - 8y + 4z = 0 \iff -2x - 2y + z = 0 \\ 4x - 5y + 7z = 0 \\ -8x + y - 5z = 0 \end{cases}$

    De la première équation, $z = 2x+2y$. En substituant dans la troisième :

    $-8x + y - 5(2x+2y) = 0 \iff -8x+y-10x-10y = 0 \iff -18x-9y=0 \iff y=-2x$.

    Alors $z = 2x + 2(-2x) = 2x-4x = -2x$.

    Le vecteur directeur de l'axe est de la forme $(x, -2x, -2x) = x(1, -2, -2)$.

    On choisit le vecteur unitaire $N = \frac{1}{\sqrt{1^2+(-2)^2+(-2)^2}}(1, -2, -2) = \frac{1}{3}(1, -2, -2)$.

3.  **Détermination de l'angle:** On utilise la trace: $\text{Tr}(M) = \frac{1}{9}(1+4+4) = \frac{9}{9} = 1$.

    $1 + 2\cos\theta = \text{Tr}(M) = 1 \implies 2\cos\theta = 0 \implies \cos\theta = 0$.

    Donc $\theta = \pm \pi/2$. Pour déterminer le signe, on choisit un vecteur $X$ non colinéaire à $N$, par exemple $X = (1,0,0)$.

    $f(X) = M \begin{pmatrix} 1 \\ 0 \\ 0 \end{pmatrix} = \frac{1}{9}(1, 4, -8)$.

    On calcule $\det(X, f(X), N)$:

    $\det(X, f(X), N) = \frac{1}{9} \cdot \frac{1}{3} \begin{vmatrix} 1 & 1 & 1 \\ 0 & 4 & -2 \\ 0 & -8 & -2 \end{vmatrix} = \frac{1}{27} (1(-8 - 16)) = \frac{-24}{27} = -\frac{8}{9}$.

    Ce déterminant a le même signe que $\sin\theta$. Comme il est négatif, $\sin\theta < 0$.

    Puisque $\cos\theta=0$ et $\sin\theta < 0$, on a $\theta = -\pi/2 \pmod{2\pi}$. L'angle non orienté est $\pi/2$. L'angle orienté par rapport à $N$ est $-\pi/2$.

4.  **Vérification avec Rodrigues:**

    On a $N = \frac{1}{3}(1,-2,-2)$, $\theta=-\pi/2$ (donc $\cos\theta=0, \sin\theta=-1$), et $U=(1,0,0)$.

    $\langle U, N \rangle = \langle (1,0,0), \frac{1}{3}(1,-2,-2) \rangle = \frac{1}{3}$.

    $N \land U = \frac{1}{3}(1,-2,-2) \land (1,0,0) = \frac{1}{3}(0, -2, 2)$.

    Appliquons la formule:

    $\mathcal{R}(U) = (\cos\theta) U + (1-\cos\theta) \langle U, N \rangle N + (\sin\theta) N \land U$

    $\mathcal{R}(U) = (0) U + (1-0) \left(\frac{1}{3}\right) \left(\frac{1}{3}(1,-2,-2)\right) + (-1) \left(\frac{1}{3}(0,-2,2)\right)$

    $\mathcal{R}(U) = \frac{1}{9}(1,-2,-2) - \frac{1}{3}(0,-2,2) = (\frac{1}{9}, -\frac{2}{9}, -\frac{2}{9}) - (0, -\frac{6}{9}, \frac{6}{9}) = (\frac{1}{9}, \frac{4}{9}, -\frac{8}{9}) = \frac{1}{9}(1, 4, -8)$.

    Ce résultat correspond bien à la première colonne de la matrice $M$, qui est l'image de $U=e_1$.

**Réponse:** L'endomorphisme $f$ est une rotation d'axe dirigé par $N = \frac{1}{3}(1, -2, -2)$ et d'angle $\theta = -\pi/2$ (ou $\pi/2$ dans le sens indirect). La formule de Rodrigues confirme l'image de $e_1$.

</details>

## Exercice 3: [Preuve complexe]

**Problème:** On note $\mathfrak{so}(3)$ l'espace des matrices antisymétriques réelles de taille 3.

1. Montrer que $\mathfrak{so}(3)$ est un espace vectoriel réel et en déterminer une base et la dimension.
2. Pour $X \in \mathbb{R}^3$, on note $[X]_\times$ la matrice de l'endomorphisme $Y \mapsto X \land Y$. Montrer que l'application $\phi: \mathbb{R}^3 \to \mathfrak{so}(3)$ définie par $\phi(X) = [X]_\times$ est un isomorphisme d'espaces vectoriels.
3. Montrer que $\mathfrak{so}(3)$ muni du commutateur de Lie $[A,B] = AB - BA$ est une algèbre de Lie.
4. Démontrer que l'isomorphisme $\phi$ préserve la structure d'algèbre, c'est-à-dire que pour tous $X, Y \in \mathbb{R}^3$ :

$$ \phi(X \land Y) = [\phi(X), \phi(Y)] $$

Ceci établit que $(\mathbb{R}^3, \land)$ est une algèbre de Lie, isomorphe à $\mathfrak{so}(3)$.

<details>

<summary>Solution</summary>

**Méthode:**

1. On utilise la définition d'une matrice antisymétrique pour caractériser les éléments de $\mathfrak{so}(3)$ et en extraire une base.
2. On calcule l'expression de $[X]_\times$ et on montre que l'application est linéaire et bijective.
3. On vérifie les axiomes d'une algèbre de Lie pour le commutateur.
4. On utilise la formule du double produit vectoriel pour établir la relation entre le produit vectoriel et le commutateur.

**Étapes:**

1.  **Structure de $\mathfrak{so}(3)$:**

    Une matrice $A = (a_{ij})$ est dans $\mathfrak{so}(3)$ si ${}^tA = -A$, soit $a_{ji} = -a_{ij}$ pour tous $i,j$. Cela implique $a_{ii}=0$. Une telle matrice est de la forme :

    $A = \begin{pmatrix} 0 & -c & b \\ c & 0 & -a \\ -b & a & 0 \end{pmatrix} = a\begin{pmatrix} 0 & 0 & 0 \\ 0 & 0 & -1 \\ 0 & 1 & 0 \end{pmatrix} + b\begin{pmatrix} 0 & 0 & 1 \\ 0 & 0 & 0 \\ -1 & 0 & 0 \end{pmatrix} + c\begin{pmatrix} 0 & -1 & 0 \\ 1 & 0 & 0 \\ 0 & 0 & 0 \end{pmatrix}$.

    Soit $J_1 = \begin{pmatrix} 0 & 0 & 0 \\ 0 & 0 & -1 \\ 0 & 1 & 0 \end{pmatrix}, J_2 = \begin{pmatrix} 0 & 0 & 1 \\ 0 & 0 & 0 \\ -1 & 0 & 0 \end{pmatrix}, J_3 = \begin{pmatrix} 0 & -1 & 0 \\ 1 & 0 & 0 \\ 0 & 0 & 0 \end{pmatrix}$.

    La famille $(J_1, J_2, J_3)$ est une base de $\mathfrak{so}(3)$, qui est donc de dimension 3.

2.  **Isomorphisme $\phi$:**

    Soit $X=(x_1, x_2, x_3)$ et $Y=(y_1, y_2, y_3)$.

    $X \land Y = (x_2y_3-x_3y_2, x_3y_1-x_1y_3, x_1y_2-x_2y_1)$. La matrice $[X]_\times$ est :

    $[X]_\times = \begin{pmatrix} 0 & -x_3 & x_2 \\ x_3 & 0 & -x_1 \\ -x_2 & x_1 & 0 \end{pmatrix}$.

    Cette matrice est bien dans $\mathfrak{so}(3)$. L'application $\phi(X) = [X]_\times$ est clairement linéaire en $X$.

    Le noyau de $\phi$ est l'ensemble des $X$ tels que $[X]_\times=0$. Ceci implique $x_1=x_2=x_3=0$, donc $\ker(\phi)=\{0\}$. $\phi$ est injective.

    Comme $\dim(\mathbb{R}^3) = \dim(\mathfrak{so}(3)) = 3$, $\phi$ est un isomorphisme.

    On note que $\phi(e_1)=J_1, \phi(e_2)=J_2, \phi(e_3)=J_3$.

3.  **Structure d'algèbre de Lie:**

    Le commutateur $[A,B]=AB-BA$ est bilinéaire.

    Il est antisymétrique: $[B,A] = BA - AB = -[A,B]$.

    Il vérifie l'identité de Jacobi: $[A,[B,C]] + [B,[C,A]] + [C,[A,B]] = 0$. Ceci est une propriété générale du commutateur d'une algèbre associative. Donc $(\mathfrak{so}(3), [\cdot, \cdot])$ est une algèbre de Lie.

4.  **Préservation de la structure:**

    Soient $X, Y \in \mathbb{R}^3$. On veut montrer que $[X]_\times \circ [Y]_\times - [Y]_\times \circ [X]_\times = [X \land Y]_\times$.

    Appliquons le membre de gauche à un vecteur $Z \in \mathbb{R}^3$ :

    $([X]_\times [Y]_\times - [Y]_\times [X]_\times) (Z) = [X]_\times([Y]_\times(Z)) - [Y]_\times([X]_\times(Z))$

    $= X \land (Y \land Z) - Y \land (X \land Z)$.

    On utilise la formule du double produit vectoriel $A \land (B \land C) = \langle A,C \rangle B - \langle A,B \rangle C$.

    $X \land (Y \land Z) = \langle X,Z \rangle Y - \langle X,Y \rangle Z$.

    $Y \land (X \land Z) = \langle Y,Z \rangle X - \langle Y,X \rangle Z$.

    Donc, l'expression devient :

    $(\langle X,Z \rangle Y - \langle X,Y \rangle Z) - (\langle Y,Z \rangle X - \langle Y,X \rangle Z) = \langle X,Z \rangle Y - \langle Y,Z \rangle X$.

    D'autre part, on calcule l'action du membre de droite :

    $[X \land Y]_\times(Z) = (X \land Y) \land Z = -Z \land (X \land Y)$.

    En utilisant à nouveau la formule :

    $-Z \land (X \land Y) = -(\langle Z,Y \rangle X - \langle Z,X \rangle Y) = \langle X,Z \rangle Y - \langle Y,Z \rangle X$.

    Les deux expressions sont égales pour tout $Z \in \mathbb{R}^3$. Donc les endomorphismes sont égaux :

    $[\phi(X), \phi(Y)] = \phi(X \land Y)$.

**Réponse:** L'application $\phi: X \mapsto [X]_\times$ est un isomorphisme d'algèbres de Lie entre $(\mathbb{R}^3, \land)$ et $(\mathfrak{so}(3), [\cdot, \cdot])$.

</details>

## Exercice 4: [Investigation théorique]

**Problème:** Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien orienté de dimension $n$.

1.  Pour une famille de $(n-1)$ vecteurs $(v_1, \dots, v_{n-1})$, montrer qu'il existe un unique vecteur $w \in E$, noté $\land(v_1, \dots, v_{n-1})$, tel que pour tout $x \in E$ :

    $$ \det(v_1, \dots, v_{n-1}, x) = \langle w, x \rangle $$

    Ce vecteur est appelé le produit vectoriel généralisé des $(n-1)$ vecteurs.

2.  Montrer que l'application $(v_1, \dots, v_{n-1}) \mapsto \land(v_1, \dots, v_{n-1})$ est $(n-1)$-linéaire et alternée.
3.  Exprimer la norme $\|w\|$ en fonction des vecteurs $v_i$. Quelle est l'interprétation géométrique de cette norme ?

<details>

<summary>Solution</summary>

**Méthode:**

1.  On utilise le théorème de représentation de Riesz en montrant que l'application $x \mapsto \det(v_1, \dots, v_{n-1}, x)$ est une forme linéaire sur $E$.
2.  Ces propriétés découlent directement des propriétés correspondantes du déterminant.
3.  On choisit un $x$ particulier (colinéaire à $w$) pour calculer la norme, et on relie le déterminant au volume du parallélotope.

**Étapes:**

1.  **Existence et unicité (Théorème de Riesz):**

    Soit la famille $(v_1, \dots, v_{n-1})$ fixée. Considérons l'application $\psi: E \to \mathbb{R}$ définie par $\psi(x) = \det(v_1, \dots, v_{n-1}, x)$.

    Le déterminant est une forme $n$-linéaire. En fixant les $(n-1)$ premiers arguments, l'application $\psi$ est linéaire en son dernier argument, $x$. C'est donc une forme linéaire sur $E$.

    L'espace $E$ est euclidien. Le théorème de représentation de Riesz affirme que pour toute forme linéaire $\psi \in E^*$, il existe un unique vecteur $w \in E$ tel que pour tout $x \in E$, $\psi(x) = \langle w, x \rangle$.

    En appliquant ce théorème à notre forme linéaire $\psi$, on conclut à l'existence et l'unicité du vecteur $w = \land(v_1, \dots, v_{n-1})$.

2.  **Propriétés de multilinéarité et d'alternance:**

    Soit $L(v_1, \dots, v_{n-1}) = \land(v_1, \dots, v_{n-1})$. On veut montrer que $L$ est $(n-1)$-linéaire et alternée.

    Pour tout $x \in E$, on a la relation de définition :

    $\langle L(v_1, \dots, v_i + v'_i, \dots, v_{n-1}), x \rangle = \det(v_1, \dots, v_i + v'_i, \dots, v_{n-1}, x)$.

    Par linéarité du déterminant par rapport à son $i$-ème argument :

    $= \det(v_1, \dots, v_i, \dots, x) + \det(v_1, \dots, v'_i, \dots, x)$

    $= \langle L(v_1, \dots, v_i, \dots, v_{n-1}), x \rangle + \langle L(v_1, \dots, v'_i, \dots, v_{n-1}), x \rangle$

    $= \langle L(v_1, \dots, v_i, \dots) + L(v_1, \dots, v'_i, \dots), x \rangle$.

    Cette égalité étant vraie pour tout $x \in E$, par non-dégénérescence du produit scalaire, on a :

    $L(v_1, \dots, v_i + v'_i, \dots) = L(v_1, \dots, v_i, \dots) + L(v_1, \dots, v'_i, \dots)$.

    La démonstration est analogue pour l'homogénéité et le caractère alterné (si $v_i = v_j$ pour $i \neq j$, le déterminant est nul, donc $w=0$).

3.  **Norme et interprétation géométrique:**

    Soit $w = \land(v_1, \dots, v_{n-1})$. D'après la définition, $w$ est orthogonal à l'hyperplan $H = \text{Vect}(v_1, \dots, v_{n-1})$. En effet, pour tout $v_i$ de la famille, $\det(v_1, \dots, v_{n-1}, v_i) = 0$, donc $\langle w, v_i \rangle = 0$.

    Pour calculer sa norme, utilisons la définition avec $x=w$ :

    $\langle w, w \rangle = \|w\|^2 = \det(v_1, \dots, v_{n-1}, w)$.

    Le déterminant $\det(v_1, \dots, v_{n-1}, w)$ représente le volume (signé) du parallélotope engendré par la base $(v_1, \dots, v_{n-1}, w)$.

    Soit $H = \text{Vect}(v_1, \dots, v_{n-1})$. Le volume de ce parallélotope est égal au produit du volume de sa "base" (le parallélotope de dimension $n-1$ engendré par les $v_i$ dans $H$) et de la hauteur (la norme de la composante de $w$ orthogonale à $H$).

    Comme $w$ est déjà orthogonal à $H$, la hauteur est $\|w\|$.

    Le volume est donc $\|w\| \times \text{Vol}_{n-1}(P(v_1, \dots, v_{n-1}))$.

    On a donc $\|w\|^2 = \|w\| \times \text{Vol}_{n-1}(P(v_1, \dots, v_{n-1}))$.

    Si $w \neq 0$, on peut simplifier :

    $\|w\| = \text{Vol}_{n-1}(P(v_1, \dots, v_{n-1}))$.

    La norme du produit vectoriel généralisé est le volume du parallélotope de dimension $(n-1)$ engendré par ses vecteurs arguments. Ce volume peut être calculé par le déterminant de Gram : $\text{Vol}^2 = \det(G(v_1, \dots, v_{n-1})) = \det((\langle v_i, v_j \rangle)_{i,j})$.

**Réponse:**

1.  L'existence et l'unicité de $w = \land(v_1, \dots, v_{n-1})$ sont garanties par le théorème de représentation de Riesz.
2.  L'application est $(n-1)$-linéaire et alternée, héritant ces propriétés du déterminant.
3.  La norme $\|w\|$ est égale au volume $(n-1)$-dimensionnel du parallélotope engendré par $v_1, \dots, v_{n-1}$. Le vecteur $w$ est orthogonal à ces $n-1$ vecteurs.

</details>

## Exercice 5: [Application avancée]

**Problème:** On utilise le morphisme surjectif $\mathcal{J}: SU_2(\mathbb{C}) \to SO_3(\mathbb{R})$. Soient les matrices de $SU_2(\mathbb{C})$ :

$$ U_1 = \begin{pmatrix} e^{i\pi/4} & 0 \\ 0 & e^{-i\pi/4} \end{pmatrix} \quad \text{et} \quad U_2 = \begin{pmatrix} 0 & 1 \\ -1 & 0 \end{pmatrix} $$

1.  Identifier les rotations $R_1 = \mathcal{J}(U_1)$ et $R_2 = \mathcal{J}(U_2)$ dans $SO_3(\mathbb{R})$ par leurs axes et angles.
2.  Calculer le produit $U = U_1 U_2$ dans $SU_2(\mathbb{C})$.
3.  Déterminer la rotation $R = \mathcal{J}(U)$ dans $SO_3(\mathbb{R})$, qui correspond à la composition $R_1 \circ R_2$. Préciser son axe et son angle.

<details>

<summary>Solution</summary>

**Méthode:**

1.  On utilise la représentation adjointe $\text{Ad}_U(M) = UMU^*$ sur la base des matrices de Pauli $(\sigma_1, \sigma_2, \sigma_3)$ pour trouver la matrice de la rotation. L'axe et l'angle s'en déduisent. Pour $U_1$, on reconnaît une forme canonique. Pour $U_2$, un calcul direct est nécessaire.
2.  Simple multiplication matricielle.
3.  On applique à nouveau la méthode de la représentation adjointe pour $U=U_1U_2$ et on identifie l'axe et l'angle de la rotation résultante.

**Étapes:**

1.  **Identification de $R_1$ et $R_2$:**
    *   **Pour $U_1$:** $U_1$ est de la forme $\begin{pmatrix} e^{i\theta} & 0 \\ 0 & e^{-i\theta} \end{pmatrix}$ avec $\theta=\pi/4$. On a vu dans le cours que $\mathcal{J}(U_1)$ est une rotation autour de l'axe associé à $\sigma_3$ d'angle $-2\theta$.

        Donc $R_1$ est une rotation d'axe $e_3=(0,0,1)$ et d'angle $-2(\pi/4) = -\pi/2$.

    *   **Pour $U_2$:** On a $U_2 = -i\sigma_2$.

        Calculons l'action de $U_2$ sur la base de Pauli :

        $\text{Ad}_{U_2}(\sigma_1) = U_2 \sigma_1 U_2^* = (-i\sigma_2) \sigma_1 (-i\sigma_2)^* = (-i\sigma_2)\sigma_1(i\sigma_2^*) = \sigma_2 \sigma_1 \sigma_2$.

        On utilise les relations $\sigma_i\sigma_j = \delta_{ij}I_2 + i \sum_k \epsilon_{ijk}\sigma_k$. Ainsi $\sigma_2\sigma_1 = -i\sigma_3$ et $\sigma_3\sigma_2 = i\sigma_1$.

        $\text{Ad}_{U_2}(\sigma_1) = (-i\sigma_3)\sigma_2 = -i(i\sigma_1) = \sigma_1$. (Erreur de calcul, plus simple: $U_2 \sigma_1 U_2^* = \begin{pmatrix} 0 & 1 \\ -1 & 0 \end{pmatrix} \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix} \begin{pmatrix} 0 & -1 \\ 1 & 0 \end{pmatrix} = \begin{pmatrix} 1 & 0 \\ 0 & -1 \end{pmatrix} \begin{pmatrix} 0 & -1 \\ 1 & 0 \end{pmatrix} = \begin{pmatrix} 0 & -1 \\ -1 & 0 \end{pmatrix} = -\sigma_1$.)

        $\text{Ad}_{U_2}(\sigma_2) = U_2 \sigma_2 U_2^* = U_2(-iU_2)U_2^* = -iU_2^2U_2^* = -i(-I_2)U_2^* = i U_2^* = i \begin{pmatrix} 0 & -1 \\ 1 & 0 \end{pmatrix} = \sigma_2$. L'axe de rotation est donc $e_2$.

        $\text{Ad}_{U_2}(\sigma_3) = U_2 \sigma_3 U_2^* = \begin{pmatrix} 0 & 1 \\ -1 & 0 \end{pmatrix} \begin{pmatrix} 1 & 0 \\ 0 & -1 \end{pmatrix} \begin{pmatrix} 0 & -1 \\ 1 & 0 \end{pmatrix} = \begin{pmatrix} 0 & -1 \\ -1 & 0 \end{pmatrix} \begin{pmatrix} 0 & -1 \\ 1 & 0 \end{pmatrix} = \begin{pmatrix} -1 & 0 \\ 0 & 1 \end{pmatrix} = -\sigma_3$.

        La matrice de $R_2$ dans la base $(e_1, e_2, e_3)$ est $\begin{pmatrix} -1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & -1 \end{pmatrix}$. C'est une rotation d'angle $\pi$ autour de l'axe $e_2$.

2.  **Calcul du produit $U$:**

    $$ U = U_1 U_2 = \begin{pmatrix} e^{i\pi/4} & 0 \\ 0 & e^{-i\pi/4} \end{pmatrix} \begin{pmatrix} 0 & 1 \\ -1 & 0 \end{pmatrix} = \begin{pmatrix} 0 & e^{i\pi/4} \\ -e^{-i\pi/4} & 0 \end{pmatrix} $$

    On vérifie que $U \in SU_2(\mathbb{C})$: $\det(U) = -(-e^{-i\pi/4} e^{i\pi/4}) = 1$.

3.  **Détermination de la rotation $R=\mathcal{J}(U)$:**

    Paramétrisons $U$ sous la forme $\alpha I_2 - i \beta \cdot \vec{\sigma}$.

    $U = \begin{pmatrix} 0 & \cos(\pi/4)+i\sin(\pi/4) \\ -\cos(\pi/4)+i\sin(\pi/4) & 0 \end{pmatrix} = \frac{\sqrt{2}}{2} \begin{pmatrix} 0 & 1+i \\ -1+i & 0 \end{pmatrix}$.

    Ceci n'est pas la forme standard. Utilisons la paramétrisation $U = \begin{pmatrix} a & b \\ -\bar{b} & \bar{a} \end{pmatrix}$. $a=0, b=e^{i\pi/4}$.

    Une rotation d'angle $\theta$ autour de l'axe $N=(n_1,n_2,n_3)$ est représentée par $U = \cos(\theta/2)I_2 - i\sin(\theta/2)(n_1\sigma_1+n_2\sigma_2+n_3\sigma_3)$.

    $U = -i \sin(\theta/2) n_1 \sigma_1 - i \sin(\theta/2) n_2 \sigma_2 - i \sin(\theta/2) n_3 \sigma_3 + \cos(\theta/2) I_2$.

    $U = \begin{pmatrix} \cos(\theta/2)-i n_3 \sin(\theta/2) & -i(n_1-in_2)\sin(\theta/2) \\ -i(n_1+in_2)\sin(\theta/2) & \cos(\theta/2)+i n_3 \sin(\theta/2) \end{pmatrix}$.

    En comparant avec $U = \begin{pmatrix} 0 & e^{i\pi/4} \\ -e^{-i\pi/4} & 0 \end{pmatrix}$, on a :

    $\cos(\theta/2) = 0 \implies \theta/2 = \pi/2 \implies \theta = \pi$.

    $-i(n_1-in_2)\sin(\pi/2) = e^{i\pi/4} \implies -in_1-n_2 = \cos(\pi/4)+i\sin(\pi/4) = \frac{\sqrt{2}}{2}(1+i)$.

    En identifiant parties réelle et imaginaire: $-n_2 = \frac{\sqrt{2}}{2}$ et $-n_1 = \frac{\sqrt{2}}{2}$.

    Donc $n_1 = -\frac{\sqrt{2}}{2}$ et $n_2 = -\frac{\sqrt{2}}{2}$.

    Puisque $N$ est unitaire, $n_1^2+n_2^2+n_3^2=1$.

    On compare le terme diagonal : $-in_3\sin(\pi/2)=0 \implies n_3=0$.

    Vérifions la norme : $(-\frac{\sqrt{2}}{2})^2 + (-\frac{\sqrt{2}}{2})^2 + 0^2 = \frac{1}{2} + \frac{1}{2} = 1$. C'est cohérent.

    L'axe est $N = (-\frac{\sqrt{2}}{2}, -\frac{\sqrt{2}}{2}, 0)$ et l'angle est $\pi$.

**Réponse:**

1.  $R_1$ est la rotation d'axe $e_3$ et d'angle $-\pi/2$. $R_2$ est la rotation d'axe $e_2$ et d'angle $\pi$.
2.  $U = U_1 U_2 = \begin{pmatrix} 0 & e^{i\pi/4} \\ -e^{-i\pi/4} & 0 \end{pmatrix}$.
3.  $R = R_1 \circ R_2$ est une rotation (un demi-tour) d'angle $\theta=\pi$ autour de l'axe de vecteur directeur $N = (-\frac{\sqrt{2}}{2}, -\frac{\sqrt{2}}{2}, 0)$.

</details>

## Exercice 6: [Preuve complexe]

**Problème:** Montrer que le groupe orthogonal $O(n) = \{ M \in \mathcal{M}_n(\mathbb{R}) \mid {}^tMM = I_n \}$ est un sous-groupe compact de $GL_n(\mathbb{R})$.

<details>

<summary>Solution</summary>

**Méthode:** Dans $\mathbb{R}^{n^2}$ (l'espace des matrices), un sous-ensemble est compact si et seulement si il est fermé et borné (théorème de Borel-Lebesgue). Nous allons donc montrer que $O(n)$ possède ces deux propriétés topologiques.

**Étapes:**

1.  **$O(n)$ est un fermé:**

    Considérons l'application $f: \mathcal{M}_n(\mathbb{R}) \to \mathcal{S}_n(\mathbb{R})$ (espace des matrices symétriques) définie par $f(M) = {}^tMM$.

    Les coefficients de la matrice ${}^tMM$ sont des polynômes en les coefficients de $M$. Par exemple, $(f(M))_{ij} = \sum_{k=1}^n ({}^tM)_{ik} M_{kj} = \sum_{k=1}^n M_{ki} M_{kj}$.

    Une application dont les composantes sont des fonctions polynomiales est continue. Donc $f$ est continue.

    Le groupe orthogonal $O(n)$ est défini comme l'image réciproque du singleton $\{I_n\}$ par $f$, c'est-à-dire $O(n) = f^{-1}(\{I_n\})$.

    Dans un espace topologique, un singleton est toujours un ensemble fermé. L'image réciproque d'un fermé par une application continue est un fermé.

    Par conséquent, $O(n)$ est un sous-ensemble fermé de $\mathcal{M}_n(\mathbb{R})$.

2.  **$O(n)$ est un borné:**

    On doit montrer qu'il existe une constante $C>0$ telle que pour toute matrice $M \in O(n)$, la norme de $M$ est inférieure à $C$. Utilisons une norme matricielle, par exemple la norme de Frobenius, définie par $\|M\|_F^2 = \sum_{i,j=1}^n m_{ij}^2 = \text{Tr}({}^tMM)$.

    Pour $M \in O(n)$, on a ${}^tMM = I_n$.

    Donc, $\|M\|_F^2 = \text{Tr}(I_n) = n$.

    Ainsi, pour toute matrice $M \in O(n)$, on a $\|M\|_F = \sqrt{n}$.

    L'ensemble $O(n)$ est donc contenu dans la sphère de rayon $\sqrt{n}$ pour la norme de Frobenius. Il est donc borné.

3.  **Conclusion: Compacité:**

    $O(n)$ est un sous-ensemble fermé et borné de l'espace vectoriel normé de dimension finie $\mathcal{M}_n(\mathbb{R}) \cong \mathbb{R}^{n^2}$. Par le théorème de Borel-Lebesgue, $O(n)$ est compact.

4.  **Structure de sous-groupe:**
    -  $I_n \in O(n)$ car ${}^tI_n I_n = I_n$. L'élément neutre est présent.
    -  Soient $A, B \in O(n)$. Alors ${}^t(AB)(AB) = {}^tB{}^tAAB = {}^tB(I_n)B = {}^tBB = I_n$. Donc $AB \in O(n)$. $O(n)$ est stable par produit.
    -  Soit $A \in O(n)$. On a ${}^tAA = I_n$. Cela implique que $A$ est inversible et son inverse est $A^{-1} = {}^tA$. On doit vérifier que $A^{-1}$ est aussi dans $O(n)$.

       ${}^t(A^{-1})(A^{-1}) = {}^t({}^tA)({}^tA) = A({}^tA)$. Comme ${}^tAA=I_n$, en multipliant par $A^{-1}={}^tA$ à gauche et $A$ à droite on a $A({}^tA) = I_n$. Donc $A^{-1} \in O(n)$.

    $O(n)$ est donc un sous-groupe de $GL_n(\mathbb{R})$.

**Réponse:** $O(n)$ est un sous-groupe de $GL_n(\mathbb{R})$. Il est fermé car c'est l'image réciproque de $\{I_n\}$ par l'application continue $M \mapsto {}^tMM$. Il est borné car la norme de toute matrice orthogonale est constante (par exemple $\sqrt{n}$ pour la norme de Frobenius). Étant un fermé borné en dimension finie, $O(n)$ est compact.

</details>

## Exercice 7: [Investigation théorique]

**Problème:** Classifier les isométries directes de l'espace euclidien $\mathbb{R}^4$. Montrer que tout endomorphisme $f \in SO(4)$ admet une décomposition en une "double rotation". C'est-à-dire, il existe une base orthonormée de $\mathbb{R}^4$ dans laquelle la matrice de $f$ est de la forme :

$$ M = \begin{pmatrix} \cos\theta & -\sin\theta & 0 & 0 \\ \sin\theta & \cos\theta & 0 & 0 \\ 0 & 0 & \cos\phi & -\sin\phi \\ 0 & 0 & \sin\phi & \cos\phi \end{pmatrix} $$

où $\theta, \phi \in \mathbb{R}$.

<details>

<summary>Solution</summary>

**Méthode:** L'approche consiste à analyser le polynôme caractéristique d'une matrice de $SO(4)$. Ses racines complexes viennent par paires de conjugués de module 1. On montre que l'on peut toujours trouver un sous-espace de dimension 2 stable par l'isométrie. Le complément orthogonal de ce plan est alors également stable, et on peut itérer le raisonnement.

**Étapes:**

1.  **Analyse du polynôme caractéristique:**

    Soit $f \in SO(4)$ et $M$ sa matrice dans une base orthonormée. $M \in SO_4(\mathbb{R})$. Le polynôme caractéristique $\chi_M(X)$ est un polynôme réel de degré 4. Ses racines complexes sont de module 1 et viennent par paires conjuguées $(\lambda, \bar{\lambda})$.

    Les possibilités pour les racines sont :

    a) Quatre racines réelles : ce doivent être $\pm 1$. Comme $\det(M)=1$, le nombre de racines $-1$ doit être pair (0, 2 ou 4).

    b) Deux racines réelles ($\pm 1$) et deux racines complexes conjuguées $e^{i\theta}, e^{-i\theta}$ avec $\theta \not\equiv 0 \pmod \pi$.

    c) Quatre racines complexes, $e^{i\theta}, e^{-i\theta}, e^{i\phi}, e^{-i\phi}$ avec $\theta, \phi \not\equiv 0 \pmod \pi$.

2.  **Existence d'un plan stable:**

    Dans tous les cas, il existe une valeur propre (réelle ou complexe) $\lambda$.

    - Si $\lambda \in \mathbb{R}$ ($\lambda=\pm 1$), soit $v$ un vecteur propre associé. Le sous-espace $\text{Vect}(v)$ est stable. Son orthogonal $\text{Vect}(v)^\perp$, de dimension 3, est également stable par $f$. L'isométrie $f|_{\text{Vect}(v)^\perp}$ est dans $O(3)$. Elle admet un axe de rotation (un vecteur propre pour 1 ou -1), ce qui fournit un second vecteur propre pour $f$. On trouve alors au moins deux vecteurs propres orthogonaux, qui engendrent un plan stable.
    - Si toutes les valeurs propres sont complexes, soit $\lambda=e^{i\theta}$ une valeur propre, avec $v = x+iy$ un vecteur propre dans $\mathbb{C}^4$ ($x,y \in \mathbb{R}^4$).

      $f(x+iy) = (\cos\theta+i\sin\theta)(x+iy) = (\cos\theta \cdot x - \sin\theta \cdot y) + i(\sin\theta \cdot x + \cos\theta \cdot y)$.

      En identifiant les parties réelle et imaginaire :

      $f(x) = \cos\theta \cdot x - \sin\theta \cdot y$

      $f(y) = \sin\theta \cdot x + \cos\theta \cdot y$.

      Le sous-espace $P = \text{Vect}(x,y)$ est stable par $f$. On peut montrer que $x$ et $y$ sont orthogonaux et de même norme, on peut donc les orthonormaliser pour former une base $(e_1, e_2)$ de $P$. Dans cette base, la matrice de $f|_P$ est une matrice de rotation $R_\theta$.

3.  **Décomposition orthogonale:**

    Dans tous les cas, nous avons trouvé un plan $P$ stable par $f$. Soit $(e_1, e_2)$ une base orthonormée de $P$. Comme $f$ est une isométrie, le complément orthogonal $P^\perp$ est également stable par $f$.

    En effet, si $z \in P^\perp$, alors pour tout $p \in P$, $\langle f(z), f(p) \rangle = \langle z, p \rangle = 0$. Comme $f(P)=P$, $f(p)$ décrit tout $P$. Donc $f(z)$ est orthogonal à tout $P$, i.e., $f(z) \in P^\perp$.

    L'espace $E$ se décompose en somme directe orthogonale $E = P \oplus P^\perp$.

    La restriction $f|_{P^\perp}$ est une isométrie de l'espace euclidien de dimension 2, $P^\perp$.

4.  **Forme canonique:**
    - La matrice de $f|_P$ dans la base $(e_1, e_2)$ est une rotation $R_\theta = \begin{pmatrix} \cos\theta & -\sin\theta \\ \sin\theta & \cos\theta \end{pmatrix}$.
    - La matrice de $f|_{P^\perp}$ dans une base orthonormée $(e_3, e_4)$ de $P^\perp$ est une isométrie plane. Comme $\det(f) = \det(f|_P)\det(f|_{P^\perp}) = 1 \cdot \det(f|_{P^\perp})$, le déterminant de $f|_{P^\perp}$ doit être 1 (puisque $\det(f|_P)=1$). C'est donc une rotation d'angle $\phi$, de matrice $R_\phi$.
    - En concaténant les bases $(e_1, e_2, e_3, e_4)$, on obtient une base orthonormée de $\mathbb{R}^4$ dans laquelle la matrice de $f$ est la matrice bloc-diagonale $M = \begin{pmatrix} R_\theta & 0 \\ 0 & R_\phi \end{pmatrix}$.

**Réponse:** Toute isométrie $f \in SO(4)$ admet une décomposition en somme directe orthogonale de deux sous-espaces de dimension 2 stables, $P_1$ et $P_2$. L'action de $f$ sur chacun de ces plans est une rotation. Il existe donc une base orthonormée de $\mathbb{R}^4$ dans laquelle la matrice de $f$ a la forme bloc-diagonale $\begin{pmatrix} R_\theta & 0 \\ 0 & R_\phi \end{pmatrix}$, ce qui correspond à une "double rotation" dans deux plans orthogonaux.

</details>

## Exercice 8: [Investigation théorique]

**Problème:** Les quaternions unitaires et les rotations. L'ensemble des quaternions $\mathbb{H}$ est une $\mathbb{R}$-algèbre de base $(1, i, j, k)$ avec $i^2=j^2=k^2=ijk=-1$. Un quaternion $q = a+bi+cj+dk$ est dit unitaire si sa norme $\|q\| = \sqrt{a^2+b^2+c^2+d^2}=1$. L'ensemble des quaternions unitaires forme un groupe multiplicatif, noté $Sp(1)$.

1.  Montrer que le groupe $Sp(1)$ est isomorphe au groupe $SU_2(\mathbb{C})$.
2.  Identifier $\mathbb{R}^3$ à l'espace des quaternions purs $\text{Im}(\mathbb{H}) = \{bi+cj+dk\}$. Pour un quaternion unitaire $q \in Sp(1)$ et un quaternion pur $v \in \text{Im}(\mathbb{H})$, montrer que l'application $\rho_q(v) = qvq^{-1}$ est une rotation de $\mathbb{R}^3$.
3.  Si $q = \cos(\theta/2) + \sin(\theta/2)N$ où $N$ est un quaternion pur unitaire (représentant un vecteur unitaire de $\mathbb{R}^3$), montrer que $\rho_q$ est la rotation d'axe $N$ et d'angle $\theta$. En déduire la formule de Rodrigues.

<details>

<summary>Solution</summary>

**Méthode:**

1. On construit un morphisme d'algèbres explicite de $\mathbb{H}$ vers $\mathcal{M}_2(\mathbb{C})$ et on montre que sa restriction aux quaternions unitaires est un isomorphisme de groupes sur $SU_2(\mathbb{C})$.
2. On montre que $\rho_q(v)$ est un quaternion pur et que l'application $\rho_q$ préserve la norme (donc est une isométrie) et a un déterminant de 1.
3. On effectue un calcul direct en décomposant le vecteur $v$ en une partie colinéaire à $N$ et une partie orthogonale.

**Étapes:**

1.  **Isomorphisme $Sp(1) \cong SU_2(\mathbb{C})$:**

    On peut représenter les quaternions comme des matrices complexes $2 \times 2$. On identifie $1 \mapsto I_2, i \mapsto \begin{pmatrix} i & 0 \\ 0 & -i \end{pmatrix}, j \mapsto \begin{pmatrix} 0 & 1 \\ -1 & 0 \end{pmatrix}, k \mapsto \begin{pmatrix} 0 & i \\ i & 0 \end{pmatrix}$.

    Un quaternion $q=a+bi+cj+dk$ est alors représenté par la matrice:

    $Q = aI_2 + b(i\sigma_3) + c(-i\sigma_2) + d(i\sigma_1) = \begin{pmatrix} a+ib & c+id \\ -c+id & a-ib \end{pmatrix}$.

    Soit $\alpha=a+ib$ et $\beta=c+id$. La matrice est $Q = \begin{pmatrix} \alpha & \beta \\ -\bar{\beta} & \bar{\alpha} \end{pmatrix}$.

    Le déterminant de cette matrice est $\det(Q) = |\alpha|^2 + |\beta|^2 = a^2+b^2+c^2+d^2 = \|q\|^2$.

    Le quaternion $q$ est unitaire si et seulement si $\|q\|^2=1$, ce qui équivaut à $\det(Q)=1$.

    La condition pour qu'une matrice $\begin{pmatrix} \alpha & \beta \\ \gamma & \delta \end{pmatrix}$ soit dans $SU_2(\mathbb{C})$ est $\delta=\bar{\alpha}, \gamma=-\bar{\beta}$ et $\det=1$. La matrice $Q$ satisfait exactement ces conditions.

    L'application qui envoie $q$ sur $Q$ est donc un isomorphisme de groupes de $Sp(1)$ sur $SU_2(\mathbb{C})$.

2.  **L'action $\rho_q(v) = qvq^{-1}$:**

    Soit $v$ un quaternion pur, $\bar{v}=-v$. Soit $q$ unitaire, $q^{-1}=\bar{q}$.

    $\rho_q(v) = qv\bar{q}$. Montrons que c'est un quaternion pur.

    $\overline{\rho_q(v)} = \overline{qv\bar{q}} = \overline{\bar{q}}\bar{v}\bar{q} = q(-v)\bar{q} = -qv\bar{q} = -\rho_q(v)$. C'est donc un quaternion pur.

    L'application $\rho_q$ est clairement $\mathbb{R}$-linéaire.

    Elle préserve la norme : $\|\rho_q(v)\| = \|qv\bar{q}\| = \|q\|\|v\|\|\bar{q}\| = 1 \cdot \|v\| \cdot 1 = \|v\|$. C'est donc une isométrie de $\mathbb{R}^3$.

    L'application $q \mapsto \rho_q$ est un morphisme de groupe de $Sp(1)$ vers $O(3)$. Comme $Sp(1) \cong S^3$ est connexe, son image doit être dans $SO(3)$. C'est donc une rotation.

3.  **Identification de la rotation et formule de Rodrigues:**

    Soit $q = \cos(\theta/2) + \sin(\theta/2)N$ et $v$ un vecteur pur.

    Décomposons $v = v_\parallel + v_\perp$, où $v_\parallel$ est colinéaire à $N$ et $v_\perp$ est orthogonal à $N$.

    $v_\parallel = (v \cdot N)N$. En termes de quaternions, $vN+Nv = -2(v \cdot N)$, donc $v_\parallel = -\frac{1}{2}(vN+Nv)$.

    -   Action sur $v_\parallel$: $v_\parallel$ et $N$ commutent (car colinéaires). Donc $\rho_q(v_\parallel) = q v_\parallel q^{-1} = v_\parallel q q^{-1} = v_\parallel$. L'axe est bien $N$.
    -   Action sur $v_\perp$: $v_\perp$ et $N$ anticommutent ($v_\perp N = -N v_\perp$).

        $\rho_q(v_\perp) = (\cos(\theta/2) + \sin(\theta/2)N) v_\perp (\cos(\theta/2) - \sin(\theta/2)N)$

        $= (\cos^2(\theta/2)) v_\perp - \cos(\theta/2)\sin(\theta/2)v_\perp N + \sin(\theta/2)\cos(\theta/2)Nv_\perp - \sin^2(\theta/2)Nv_\perp N$

        En utilisant $v_\perp N = -N v_\perp$:

        $= \cos^2(\theta/2) v_\perp + 2\sin(\theta/2)\cos(\theta/2) N v_\perp + \sin^2(\theta/2) v_\perp N N$

        $= (\cos^2(\theta/2)-\sin^2(\theta/2))v_\perp + (2\sin(\theta/2)\cos(\theta/2)) N v_\perp$

        (Note: $NN = -\|N\|^2 = -1$).

        $= (\cos\theta) v_\perp + (\sin\theta) N \land v_\perp$. (Note: produit de quaternions purs $uv = u \land v - u \cdot v$).

    -   Action totale: $\rho_q(v) = \rho_q(v_\parallel) + \rho_q(v_\perp) = v_\parallel + (\cos\theta)v_\perp + (\sin\theta)N \land v_\perp$.

        $v_\parallel = \langle v,N \rangle N$ et $v_\perp = v - \langle v,N \rangle N$.

        $\rho_q(v) = \langle v,N \rangle N + \cos\theta(v - \langle v,N \rangle N) + \sin\theta(N \land v - N \land v_\parallel)$

        Comme $v_\parallel$ est colinéaire à $N$, $N \land v_\parallel = 0$.

        $\rho_q(v) = (\cos\theta)v + (1-\cos\theta)\langle v,N \rangle N + (\sin\theta)N \land v$.

    C'est la formule de Rodrigues.

**Réponse:**

1.  L'application $q=a+bi+cj+dk \mapsto \begin{pmatrix} a+ib & c+id \\ -c+id & a-ib \end{pmatrix}$ est un isomorphisme de groupes de $Sp(1)$ sur $SU_2(\mathbb{C})$.
2.  L'application $\rho_q(v)=qvq^{-1}$ est une rotation car elle envoie les quaternions purs sur eux-mêmes, est linéaire et préserve la norme.
3.  Pour $q=\cos(\theta/2)+\sin(\theta/2)N$, le calcul de $\rho_q(v)$ redonne exactement la formule de Rodrigues pour une rotation d'axe $N$ et d'angle $\theta$.

</details>

## Exercice 9: [Preuve complexe]

**Problème:** Soit $f$ une isométrie d'un espace euclidien $E$ de dimension finie $n$. Démontrer que $E$ est une somme directe orthogonale de sous-espaces vectoriels $F_1, \dots, F_k$ stables par $f$, où chaque $F_i$ est de dimension 1 ou 2.

<details>

<summary>Solution</summary>

**Méthode:** La preuve se fait par récurrence sur la dimension $n$ de $E$. Le point crucial est de montrer qu'il existe toujours un sous-espace stable de dimension 1 ou 2. Le complément orthogonal de ce sous-espace est également stable, ce qui permet d'appliquer l'hypothèse de récurrence.

**Étapes:**

1.  **Cas de base:** Si $n=1$ ou $n=2$, le résultat est trivial. $E$ lui-même est un sous-espace stable de la dimension requise.

2.  **Hypothèse de récurrence:** Supposons que la propriété est vraie pour tout espace euclidien de dimension inférieure à $n$. Soit $E$ de dimension $n$.

3.  **Existence d'un sous-espace stable de petite dimension:**

    Soit $P(X)$ le polynôme caractéristique de $f$. $P(X)$ est un polynôme à coefficients réels. Il admet donc au moins un facteur irréductible sur $\mathbb{R}$, qui est soit de degré 1, soit de degré 2.

    *   **Cas 1 : $P(X)$ a une racine réelle $\lambda$.**

        Les seules valeurs propres réelles possibles pour une isométrie sont $1$ et $-1$. Soit $v$ un vecteur propre associé à $\lambda$. Alors $F = \text{Vect}(v)$ est un sous-espace stable de dimension 1.

    *   **Cas 2 : $P(X)$ n'a que des racines complexes non réelles.**

        Soit $\lambda = a+ib$ avec $b \neq 0$ une racine complexe. Soit $v = x+iy$ un vecteur propre associé dans l'espace complexifié $E_\mathbb{C}$, avec $x, y \in E$.

        On a $f(x+iy) = (a+ib)(x+iy) = (ax-by)+i(bx+ay)$.

        En identifiant les parties réelles et imaginaires, on obtient :

        $f(x) = ax-by$

        $f(y) = bx+ay$

        Le sous-espace $F=\text{Vect}(x,y)$ est donc stable par $f$. Comme les valeurs propres sont non réelles, $x$ et $y$ sont linéairement indépendants (sinon $x$ serait un vecteur propre réel, ce qui est exclu). Donc $\dim(F)=2$.

4.  **Stabilité du complément orthogonal:**

    Dans les deux cas, nous avons trouvé un sous-espace $F$ stable par $f$, de dimension 1 ou 2. Comme $f$ est une isométrie, son complément orthogonal $F^\perp$ est aussi stable par $f$.

    Soit $z \in F^\perp$. Pour tout $y \in F$, on a $\langle f(z), y \rangle = \langle z, f^{-1}(y) \rangle$. Comme $F$ est stable par $f$ et que $f$ est un isomorphisme, $f(F)=F$, et donc $f^{-1}(F)=F$. Donc $f^{-1}(y) \in F$.

    Par suite, $\langle z, f^{-1}(y) \rangle = 0$ car $z \in F^\perp$. Donc $\langle f(z), y \rangle = 0$ pour tout $y \in F$, ce qui signifie que $f(z) \in F^\perp$.

5.  **Application de l'hypothèse de récurrence:**

    On a $E = F \oplus F^\perp$. L'endomorphisme $f|_{F^\perp}$ est une isométrie sur l'espace euclidien $F^\perp$, dont la dimension est $n-1$ ou $n-2$, ce qui est strictement inférieur à $n$.

    Par hypothèse de récurrence, $F^\perp$ peut être décomposé en une somme directe orthogonale de sous-espaces stables de dimension 1 ou 2 : $F^\perp = F_2 \oplus \dots \oplus F_k$.

    En posant $F_1 = F$, on obtient la décomposition souhaitée pour $E$:

    $$ E = F_1 \oplus F_2 \oplus \dots \oplus F_k $$

    La propriété est donc démontrée par récurrence.

**Réponse:** L'existence d'un facteur irréductible de degré 1 ou 2 pour le polynôme caractéristique d'une isométrie $f$ garantit l'existence d'un sous-espace stable $F$ de dimension 1 ou 2. Le complément orthogonal $F^\perp$ étant également stable, un argument de récurrence sur la dimension permet de conclure que $E$ est une somme directe orthogonale de tels sous-espaces stables.

</details>

## Exercice 10: [Investigation théorique]

**Problème:** Le groupe $SO(3)$ n'est pas simplement connexe. On peut le visualiser avec l'"astuce de la ceinture" (belt trick). Le morphisme de revêtement $\mathcal{J}: SU_2(\mathbb{C}) \to SO_3(\mathbb{R})$ a pour noyau $\{\pm I_2\}$.

1.  Considérer le chemin $\gamma: [0,1] \to SO_3(\mathbb{R})$ qui représente une rotation continue d'angle $2\pi t$ autour de l'axe $e_3$, pour $t \in [0,1]$. C'est une boucle dans $SO_3(\mathbb{R})$ car $\gamma(0)=\gamma(1)=I_3$.
2.  Trouver un chemin continu $\tilde{\gamma}: [0,1] \to SU_2(\mathbb{C})$ tel que $\mathcal{J} \circ \tilde{\gamma} = \gamma$ (un "relèvement" de $\gamma$) et $\tilde{\gamma}(0)=I_2$.
3.  Calculer $\tilde{\gamma}(1)$. Le chemin relevé est-il une boucle dans $SU_2(\mathbb{C})$ ?
4.  Interpréter ce résultat en termes de topologie et de la structure de revêtement. Comment cela se rapporte-t-il au fait qu'il faut une rotation de $720^\circ$ (soit $4\pi$) pour qu'un "spineur" (élément de $\mathbb{C}^2$ sur lequel agit $SU_2$) revienne à son état initial ?

<details>

<summary>Solution</summary>

**Méthode:**

1. On identifie la matrice de rotation dans $SO(3)$ en fonction de $t$.
2. On utilise la correspondance entre rotations dans $SO(3)$ et matrices dans $SU_2(\mathbb{C})$, en particulier le fait qu'une rotation d'angle $\theta$ autour d'un axe est relevée par une matrice dans $SU_2(\mathbb{C})$ impliquant un angle $\theta/2$.
3. On évalue l'expression trouvée en $t=1$.
4. On relie le fait que la boucle dans $SO(3)$ ne se relève pas en une boucle dans $SU_2(\mathbb{C})$ à la non-simple connexité de $SO(3)$ et à la structure du groupe fondamental $\pi_1(SO(3)) \cong \mathbb{Z}/2\mathbb{Z}$.

**Étapes:**

1.  **Chemin dans $SO(3)$:** Une rotation d'angle $\theta=2\pi t$ autour de l'axe $e_3$ a pour matrice :

    $$ \gamma(t) = \begin{pmatrix} \cos(2\pi t) & -\sin(2\pi t) & 0 \\ \sin(2\pi t) & \cos(2\pi t) & 0 \\ 0 & 0 & 1 \end{pmatrix} $$

    Pour $t=0$, $\gamma(0)=I_3$. Pour $t=1$, $\gamma(1)$ est la rotation d'angle $2\pi$, qui est aussi $I_3$. C'est bien une boucle.

2.  **Relèvement du chemin dans $SU_2(\mathbb{C})$:**

    Nous avons vu qu'une rotation d'angle $\alpha$ autour de $e_3$ correspond à la matrice $\begin{pmatrix} e^{-i\alpha/2} & 0 \\ 0 & e^{i\alpha/2} \end{pmatrix}$ dans $SU_2(\mathbb{C})$ (le signe peut varier selon les conventions, mais le principe reste).

    Ici, l'angle est $\theta=2\pi t$. Le relèvement $\tilde{\gamma}(t)$ doit donc correspondre à un angle de $(2\pi t)/2 = \pi t$.

    Le chemin dans $SU_2(\mathbb{C})$ est donc :

    $$ \tilde{\gamma}(t) = \begin{pmatrix} e^{i\pi t} & 0 \\ 0 & e^{-i\pi t} \end{pmatrix} $$

    Vérifions la condition initiale : pour $t=0$, $\tilde{\gamma}(0) = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix} = I_2$. C'est correct.

    On peut aussi vérifier que $\mathcal{J}(\tilde{\gamma}(t)) = \gamma(t)$. En effet, l'angle de la rotation dans $SO(3)$ est $-2 \times (\text{phase de l'élément diagonal})$, soit $-2(-\pi t) = 2\pi t$ (si l'on prend l'autre convention, $-2(\pi t)=-2\pi t$ qui est la même rotation).

3.  **Extrémité du chemin relevé:**

    Calculons la valeur à $t=1$:

    $$ \tilde{\gamma}(1) = \begin{pmatrix} e^{i\pi} & 0 \\ 0 & e^{-i\pi} \end{pmatrix} = \begin{pmatrix} -1 & 0 \\ 0 & -1 \end{pmatrix} = -I_2 $$

    Le chemin relevé $\tilde{\gamma}$ part de $I_2$ mais arrive en $-I_2$. Ce n'est donc **pas** une boucle dans $SU_2(\mathbb{C})$.

4.  **Interprétation topologique:**

    Ce résultat illustre que $SO(3)$ n'est pas simplement connexe. Une boucle dans $SO(3)$ (le "tour complet") n'est pas homotope à un point (elle ne peut pas être "contractée"). Son relèvement dans l'espace de revêtement $SU_2(\mathbb{C})$ (qui est simplement connexe, car topologiquement c'est la sphère $S^3$) est un chemin ouvert.

    Le groupe fondamental $\pi_1(SO(3))$ est l'ensemble des classes d'homotopie de boucles. Il y a deux classes : celles qui se relèvent en des boucles dans $SU_2(\mathbb{C})$ (l'élément neutre du groupe), et celles qui se relèvent en des chemins joignant $I_2$ à $-I_2$ (l'autre élément). Cela correspond à $\pi_1(SO(3)) \cong \text{Ker}(\mathcal{J}) \cong \mathbb{Z}/2\mathbb{Z}$.

    Pour obtenir une boucle dans $SU_2(\mathbb{C})$, il faut que le chemin $\tilde{\gamma}$ aille de $t=0$ à $t=2$. Cela correspond à une rotation d'angle $4\pi$ dans $SO(3)$.

    En physique quantique, l'état d'une particule comme un électron est décrit par un spineur, un vecteur dans $\mathbb{C}^2$. L'effet d'une rotation physique de l'espace est donné par l'action de la matrice correspondante de $SU_2(\mathbb{C})$. Une rotation de $360^\circ$ ($2\pi$) de l'appareil de mesure multiplie le spineur par $-I_2$, changeant son signe. Il faut une rotation de $720^\circ$ ($4\pi$) pour que la matrice dans $SU_2(\mathbb{C})$ revienne à $I_2$ et que le spineur retrouve son état initial.

**Réponse:**

1.  Le chemin est $\gamma(t) = R_{2\pi t, e_3}$.
2.  Son relèvement est $\tilde{\gamma}(t) = \text{diag}(e^{i\pi t}, e^{-i\pi t})$.
3.  $\tilde{\gamma}(1) = -I_2 \neq \tilde{\gamma}(0)$. Le chemin n'est pas une boucle.
4.  Ceci montre que la boucle $\gamma$ n'est pas contractile dans $SO(3)$. Un "double tour" (rotation de $4\pi$) est nécessaire pour que le chemin relevé soit une boucle dans $SU_2(\mathbb{C})$. Ceci est la manifestation mathématique du comportement des spineurs en mécanique quantique.

</details>