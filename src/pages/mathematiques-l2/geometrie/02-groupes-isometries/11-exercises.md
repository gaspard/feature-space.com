---
id: 94c46579
type: exercises
order: 11
title: 'Groupes d''isométries - exercices (A)'
tags:
  - isométrie
  - espace euclidien
  - espace hermitien
  - groupe orthogonal
  - groupe unitaire
  - produit vectoriel
  - rotation
createdAt: '2025-10-12T18:10:33.114Z'
level: regular
course: 'Géométrie'
courseId: d9494343
chapter: 'Groupes d''isométries'
chapterId: b85ab516
---
# Exercices "Groupes d'isométries" (A)

## Exercice 1

**Problème:** Soit $f$ l'endomorphisme de $\mathbb{R}^2$ dont la matrice dans la base canonique est $A = \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix}$. En utilisant la définition, montrez que $f$ est une isométrie.

<details>

<summary>Solution</summary>

**Méthode:** Pour montrer que $f$ est une isométrie en utilisant la définition, nous devons vérifier que pour tout vecteur $x \in \mathbb{R}^2$, on a $\|f(x)\| = \|x\|$. On va calculer la norme au carré $\|f(x)\|^2$ pour un vecteur générique $x=(u,v)$ et montrer qu'elle est égale à $\|x\|^2$.

**Étapes:**

1.  Soit $x = \begin{pmatrix} u \\ v \end{pmatrix}$ un vecteur quelconque de $\mathbb{R}^2$. Sa norme au carré est $\|x\|^2 = u^2 + v^2$.

2.  Calculons l'image de $x$ par $f$.

    $f(x) = A x = \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix} \begin{pmatrix} u \\ v \end{pmatrix} = \begin{pmatrix} v \\ u \end{pmatrix}$.

3.  Calculons la norme au carré de $f(x)$.

    $\|f(x)\|^2 = v^2 + u^2$.

4.  Comparons les normes au carré.

    On observe que $\|f(x)\|^2 = v^2 + u^2 = u^2 + v^2 = \|x\|^2$.

5.  Puisque les normes sont des nombres positifs, l'égalité des carrés implique l'égalité des normes : $\|f(x)\| = \|x\|$.

**Conclusion:** L'application $f$ préserve la norme de tout vecteur de $\mathbb{R}^2$, c'est donc une isométrie. Géométriquement, il s'agit de la réflexion par rapport à la droite d'équation $y=x$.

**Réponse:** L'application $f$ est une isométrie car pour tout $x=(u,v) \in \mathbb{R}^2$, $\|f(x)\|^2 = v^2+u^2 = \|x\|^2$.

</details>

## Exercice 2

**Problème:** Soit l'endomorphisme $f$ de l'espace euclidien $\mathbb{R}^3$ représenté dans la base canonique par la matrice :

$M = \begin{pmatrix} 0 & -1 & 0 \\ 1 & 0 & 0 \\ 0 & 0 & 1 \end{pmatrix}$.

Montrez que $f$ est une isométrie en utilisant la caractérisation matricielle.

<details>

<summary>Solution</summary>

**Méthode:** Une des caractérisations d'une isométrie (ou transformation orthogonale dans $\mathbb{R}^n$) est que sa matrice $M$ dans une base orthonormée vérifie la relation ${}^tMM = I_n$, où ${}^tM$ est la transposée de $M$ et $I_n$ est la matrice identité. La base canonique de $\mathbb{R}^3$ étant orthonormée, il suffit de calculer le produit ${}^tMM$ et de vérifier s'il est égal à $I_3$.

**Étapes:**

1.  Écrire la matrice $M$ et sa transposée ${}^tM$.

    $M = \begin{pmatrix} 0 & -1 & 0 \\ 1 & 0 & 0 \\ 0 & 0 & 1 \end{pmatrix}$

    ${}^tM = \begin{pmatrix} 0 & 1 & 0 \\ -1 & 0 & 0 \\ 0 & 0 & 1 \end{pmatrix}$

2.  Calculer le produit ${}^tMM$.

    ${}^tMM = \begin{pmatrix} 0 & 1 & 0 \\ -1 & 0 & 0 \\ 0 & 0 & 1 \end{pmatrix} \begin{pmatrix} 0 & -1 & 0 \\ 1 & 0 & 0 \\ 0 & 0 & 1 \end{pmatrix}$

3.  Effectuer la multiplication matricielle.

    Le coefficient $(1,1)$ est $(0)(0) + (1)(1) + (0)(0) = 1$.

    Le coefficient $(1,2)$ est $(0)(-1) + (1)(0) + (0)(0) = 0$.

    Le coefficient $(1,3)$ est $(0)(0) + (1)(0) + (0)(1) = 0$.

    Le coefficient $(2,1)$ est $(-1)(0) + (0)(1) + (0)(0) = 0$.

    Le coefficient $(2,2)$ est $(-1)(-1) + (0)(0) + (0)(0) = 1$.

    Le coefficient $(2,3)$ est $(-1)(0) + (0)(0) + (0)(1) = 0$.

    Le coefficient $(3,1)$ est $(0)(0) + (0)(1) + (1)(0) = 0$.

    Le coefficient $(3,2)$ est $(0)(-1) + (0)(0) + (1)(0) = 0$.

    Le coefficient $(3,3)$ est $(0)(0) + (0)(0) + (1)(1) = 1$.

4.  Le résultat est donc :

    ${}^tMM = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix} = I_3$.

**Conclusion:** La condition ${}^tMM = I_3$ est vérifiée. Par conséquent, l'endomorphisme $f$ représenté par la matrice $M$ est une isométrie. Il s'agit d'une rotation de $\pi/2$ autour de l'axe des $z$.

**Réponse:** L'endomorphisme $f$ est une isométrie car sa matrice $M$ dans la base canonique vérifie ${}^tMM = I_3$.

</details>

## Exercice 3

**Problème:** Dans $\mathbb{R}^2$ muni du produit scalaire usuel, déterminez si la matrice suivante appartient au groupe orthogonal $O_2(\mathbb{R})$, et si oui, au groupe spécial orthogonal $SO_2(\mathbb{R})$.

$A = \frac{1}{\sqrt{5}} \begin{pmatrix} 1 & -2 \\ 2 & 1 \end{pmatrix}$

<details>

<summary>Solution</summary>

**Méthode:** Pour qu'une matrice $A$ appartienne à $O_2(\mathbb{R})$, elle doit vérifier ${}^tAA = I_2$. Si cette condition est remplie, on calcule son déterminant. Si $\det(A) = 1$, elle appartient à $SO_2(\mathbb{R})$. Si $\det(A) = -1$, elle appartient à $O_2(\mathbb{R})$ mais pas à $SO_2(\mathbb{R})$.

**Étapes:**

1.  Calculer la transposée de $A$.

    $A = \begin{pmatrix} 1/\sqrt{5} & -2/\sqrt{5} \\ 2/\sqrt{5} & 1/\sqrt{5} \end{pmatrix}$

    ${}^tA = \begin{pmatrix} 1/\sqrt{5} & 2/\sqrt{5} \\ -2/\sqrt{5} & 1/\sqrt{5} \end{pmatrix}$

2.  Calculer le produit ${}^tAA$.

    ${}^tAA = \begin{pmatrix} 1/\sqrt{5} & 2/\sqrt{5} \\ -2/\sqrt{5} & 1/\sqrt{5} \end{pmatrix} \begin{pmatrix} 1/\sqrt{5} & -2/\sqrt{5} \\ 2/\sqrt{5} & 1/\sqrt{5} \end{pmatrix}$

    ${}^tAA = \begin{pmatrix} \frac{1}{5}+\frac{4}{5} & \frac{-2}{5}+\frac{2}{5} \\ \frac{-2}{5}+\frac{2}{5} & \frac{4}{5}+\frac{1}{5} \end{pmatrix} = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix} = I_2$.

    La matrice $A$ est donc bien orthogonale, elle appartient à $O_2(\mathbb{R})$.

3.  Calculer le déterminant de $A$.

    $\det(A) = \left(\frac{1}{\sqrt{5}}\right)\left(\frac{1}{\sqrt{5}}\right) - \left(\frac{-2}{\sqrt{5}}\right)\left(\frac{2}{\sqrt{5}}\right)$

    $\det(A) = \frac{1}{5} - \frac{-4}{5} = \frac{1}{5} + \frac{4}{5} = \frac{5}{5} = 1$.

**Conclusion:** Puisque ${}^tAA=I_2$ et $\det(A)=1$, la matrice $A$ appartient au groupe spécial orthogonal $SO_2(\mathbb{R})$.

**Réponse:** La matrice $A$ appartient à $SO_2(\mathbb{R})$.

</details>

## Exercice 4

**Problème:** Calculez l'angle non-orienté $\theta$ entre les vecteurs $u=(1, 1, 0)$ et $v=(1, 0, 1)$ dans l'espace $\mathbb{R}^3$ muni du produit scalaire usuel.

<details>

<summary>Solution</summary>

**Méthode:** L'angle non-orienté $\theta \in [0, \pi]$ entre deux vecteurs non nuls $u$ et $v$ est donné par la formule :

$\theta = \arccos\left(\frac{\langle u, v \rangle}{\|u\| \|v\|}\right)$.

Il faut donc calculer le produit scalaire $\langle u, v \rangle$, les normes $\|u\|$ et $\|v\|$, puis en déduire l'angle.

**Étapes:**

1.  Calculer le produit scalaire $\langle u, v \rangle$.

    $\langle u, v \rangle = (1)(1) + (1)(0) + (0)(1) = 1$.

2.  Calculer la norme de $u$.

    $\|u\| = \sqrt{1^2 + 1^2 + 0^2} = \sqrt{2}$.

3.  Calculer la norme de $v$.

    $\|v\| = \sqrt{1^2 + 0^2 + 1^2} = \sqrt{2}$.

4.  Calculer le cosinus de l'angle.

    $\cos(\theta) = \frac{\langle u, v \rangle}{\|u\| \|v\|} = \frac{1}{\sqrt{2} \cdot \sqrt{2}} = \frac{1}{2}$.

5.  Trouver l'angle $\theta \in [0, \pi]$ correspondant.

    L'unique angle $\theta$ dans l'intervalle $[0, \pi]$ tel que $\cos(\theta) = 1/2$ est $\theta = \pi/3$.

**Réponse:** L'angle non-orienté entre les vecteurs $u$ et $v$ est $\theta = \frac{\pi}{3}$ radians (ou 60 degrés).

</details>

## Exercice 5

**Problème:** Soit $E$ un $\mathbb{R}$-espace vectoriel de dimension 3. Soit $\mathcal{B}=(e_1, e_2, e_3)$ une base de $E$. On considère la nouvelle famille de vecteurs $\mathcal{B'}=(e_1+e_2, e_2+e_3, e_3+e_1)$.

1. Montrez que $\mathcal{B'}$ est une base de $E$.
2. Les bases $\mathcal{B}$ et $\mathcal{B'}$ ont-elles la même orientation ?

<details>

<summary>Solution</summary>

**Méthode:**

1. Pour montrer que $\mathcal{B'}$ est une base, il suffit de montrer que la famille est libre, car elle a 3 vecteurs en dimension 3. Cela revient à montrer que la matrice de passage de $\mathcal{B}$ à $\mathcal{B'}$ est inversible, c'est-à-dire que son déterminant est non nul.
2. Pour déterminer si les bases ont la même orientation, il faut examiner le signe du déterminant de la matrice de passage $P_{\mathcal{B},\mathcal{B'}}$. Si $\det(P) > 0$, elles ont la même orientation. Si $\det(P) < 0$, elles ont des orientations opposées.

**Étapes:**

1.  Écrire la matrice de passage $P = P_{\mathcal{B},\mathcal{B'}}$. Les colonnes de $P$ sont les coordonnées des vecteurs de $\mathcal{B'}$ exprimés dans la base $\mathcal{B}$.

    Le premier vecteur est $e_1+e_2 = 1 \cdot e_1 + 1 \cdot e_2 + 0 \cdot e_3$, donc la première colonne est $\begin{pmatrix} 1 \\ 1 \\ 0 \end{pmatrix}$.

    Le deuxième vecteur est $e_2+e_3 = 0 \cdot e_1 + 1 \cdot e_2 + 1 \cdot e_3$, donc la deuxième colonne est $\begin{pmatrix} 0 \\ 1 \\ 1 \end{pmatrix}$.

    Le troisième vecteur est $e_3+e_1 = 1 \cdot e_1 + 0 \cdot e_2 + 1 \cdot e_3$, donc la troisième colonne est $\begin{pmatrix} 1 \\ 0 \\ 1 \end{pmatrix}$.

    La matrice de passage est donc $P = \begin{pmatrix} 1 & 0 & 1 \\ 1 & 1 & 0 \\ 0 & 1 & 1 \end{pmatrix}$.

2.  Calculer le déterminant de $P$. On peut utiliser la règle de Sarrus ou développer par rapport à la première ligne.

    $\det(P) = 1 \cdot \begin{vmatrix} 1 & 0 \\ 1 & 1 \end{vmatrix} - 0 \cdot \begin{vmatrix} 1 & 0 \\ 0 & 1 \end{vmatrix} + 1 \cdot \begin{vmatrix} 1 & 1 \\ 0 & 1 \end{vmatrix}$

    $\det(P) = 1 \cdot (1-0) - 0 + 1 \cdot (1-0) = 1 + 1 = 2$.

3.  Analyser le résultat.

    Puisque $\det(P) = 2 \neq 0$, la famille $\mathcal{B'}$ est libre et forme donc une base de $E$.

    Puisque $\det(P) = 2 > 0$, les bases $\mathcal{B}$ et $\mathcal{B'}$ ont la même orientation.

**Réponse:**

1. $\mathcal{B'}$ est une base car $\det(P_{\mathcal{B},\mathcal{B'}}) = 2 \neq 0$.
2. Oui, les bases ont la même orientation car $\det(P_{\mathcal{B},\mathcal{B'}}) = 2 > 0$.

</details>

## Exercice 6

**Problème:** Déterminer les valeurs du réel $a$ pour que la matrice suivante soit une matrice orthogonale :

$M = \begin{pmatrix} a & 1/\sqrt{2} \\ -1/\sqrt{2} & a \end{pmatrix}$

<details>

<summary>Solution</summary>

**Méthode:** Une matrice $M$ est orthogonale si et seulement si ses vecteurs colonnes forment une base orthonormée. Une manière équivalente et rapide de le vérifier est de calculer le produit ${}^tMM$ et de l'égaler à la matrice identité $I_2$.

**Étapes:**

1.  Écrire la condition pour que $M$ soit orthogonale : ${}^tMM = I_2$.

2.  Calculer la transposée de $M$.

    ${}^tM = \begin{pmatrix} a & -1/\sqrt{2} \\ 1/\sqrt{2} & a \end{pmatrix}$

3.  Calculer le produit ${}^tMM$.

    ${}^tMM = \begin{pmatrix} a & -1/\sqrt{2} \\ 1/\sqrt{2} & a \end{pmatrix} \begin{pmatrix} a & 1/\sqrt{2} \\ -1/\sqrt{2} & a \end{pmatrix}$

    ${}^tMM = \begin{pmatrix} a^2 + (-1/\sqrt{2})^2 & a(1/\sqrt{2}) + (-1/\sqrt{2})a \\ (1/\sqrt{2})a + a(-1/\sqrt{2}) & (1/\sqrt{2})^2 + a^2 \end{pmatrix}$

    ${}^tMM = \begin{pmatrix} a^2 + 1/2 & 0 \\ 0 & 1/2 + a^2 \end{pmatrix}$

4.  Égaler le résultat à $I_2$ et résoudre pour $a$.

    $\begin{pmatrix} a^2 + 1/2 & 0 \\ 0 & a^2 + 1/2 \end{pmatrix} = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}$

    Cela nous donne l'équation : $a^2 + 1/2 = 1$.

5.  Résoudre l'équation.

    $a^2 = 1 - 1/2 = 1/2$

    $a = \pm \sqrt{1/2} = \pm \frac{1}{\sqrt{2}} = \pm \frac{\sqrt{2}}{2}$.

**Réponse:** Les valeurs de $a$ pour lesquelles la matrice $M$ est orthogonale sont $a = \frac{\sqrt{2}}{2}$ et $a = -\frac{\sqrt{2}}{2}$.

</details>

## Exercice 7

**Problème:** La matrice suivante appartient-elle au groupe unitaire $U_2(\mathbb{C})$ ? Si oui, appartient-elle au groupe spécial unitaire $SU_2(\mathbb{C})$ ?

$U = \frac{1}{\sqrt{2}} \begin{pmatrix} 1 & i \\ i & 1 \end{pmatrix}$

<details>

<summary>Solution</summary>

**Méthode:** Une matrice $U$ appartient au groupe unitaire $U_n(\mathbb{C})$ si elle vérifie ${}^t\bar{U}U = I_n$, où ${}^t\bar{U}$ est l'adjointe de $U$ (transposée de la conjuguée). Si c'est le cas, on calcule son déterminant. Elle appartient au groupe spécial unitaire $SU_n(\mathbb{C})$ si $\det(U)=1$.

**Étapes:**

1.  Calculer la matrice conjuguée $\bar{U}$.

    $\bar{U} = \frac{1}{\sqrt{2}} \begin{pmatrix} 1 & -i \\ -i & 1 \end{pmatrix}$

2.  Calculer l'adjointe ${}^t\bar{U}$.

    ${}^t\bar{U} = \frac{1}{\sqrt{2}} \begin{pmatrix} 1 & -i \\ -i & 1 \end{pmatrix}$ (la matrice est symétrique)

3.  Calculer le produit ${}^t\bar{U}U$.

    ${}^t\bar{U}U = \left(\frac{1}{\sqrt{2}}\right)^2 \begin{pmatrix} 1 & -i \\ -i & 1 \end{pmatrix} \begin{pmatrix} 1 & i \\ i & 1 \end{pmatrix}$

    ${}^t\bar{U}U = \frac{1}{2} \begin{pmatrix} 1(1) + (-i)(i) & 1(i) + (-i)(1) \\ (-i)(1) + 1(i) & (-i)(i) + 1(1) \end{pmatrix}$

    ${}^t\bar{U}U = \frac{1}{2} \begin{pmatrix} 1 - i^2 & i - i \\ -i + i & -i^2 + 1 \end{pmatrix}$

    Sachant que $i^2 = -1$, on a :

    ${}^t\bar{U}U = \frac{1}{2} \begin{pmatrix} 1 - (-1) & 0 \\ 0 & -(-1) + 1 \end{pmatrix} = \frac{1}{2} \begin{pmatrix} 2 & 0 \\ 0 & 2 \end{pmatrix} = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix} = I_2$.

    La matrice $U$ est donc unitaire, $U \in U_2(\mathbb{C})$.

4.  Calculer le déterminant de $U$.

    $\det(U) = \left(\frac{1}{\sqrt{2}}\right)^2 \det \begin{pmatrix} 1 & i \\ i & 1 \end{pmatrix}$

    $\det(U) = \frac{1}{2} (1 \cdot 1 - i \cdot i) = \frac{1}{2}(1 - i^2) = \frac{1}{2}(1 - (-1)) = \frac{2}{2} = 1$.

**Conclusion:** Puisque ${}^t\bar{U}U=I_2$ et $\det(U)=1$, la matrice $U$ appartient au groupe spécial unitaire $SU_2(\mathbb{C})$.

**Réponse:** La matrice $U$ appartient à $SU_2(\mathbb{C})$.

</details>

## Exercice 8

**Problème:** Un endomorphisme $f$ de $\mathbb{R}^3$ est dit une isométrie négative (ou indirecte) si c'est une isométrie et qu'il inverse l'orientation de l'espace.

Soit $s$ la réflexion par rapport au plan d'équation $z=0$ (le plan $(x,y)$).

1. Donnez la matrice de $s$ dans la base canonique.
2. Montrez que $s$ est une isométrie.
3. Montrez que $s$ est une isométrie négative.

<details>

<summary>Solution</summary>

**Méthode:**

1. On détermine l'image des vecteurs de la base canonique $(e_1, e_2, e_3)$ par la réflexion $s$. La matrice de $s$ aura pour colonnes les coordonnées de $s(e_1), s(e_2), s(e_3)$.
2. On vérifie que la matrice $S$ de $s$ est orthogonale, c'est-à-dire ${}^tSS=I_3$.
3. On calcule le déterminant de $S$. Si $\det(S)=-1$, l'isométrie est négative.

**Étapes:**

1.  Déterminer la matrice $S$. La réflexion par rapport au plan $z=0$ envoie un vecteur $(x,y,z)$ sur $(x,y,-z)$.

    $s(e_1) = s(1,0,0) = (1,0,0) = e_1$.

    $s(e_2) = s(0,1,0) = (0,1,0) = e_2$.

    $s(e_3) = s(0,0,1) = (0,0,-1) = -e_3$.

    La matrice est donc $S = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & -1 \end{pmatrix}$.

2.  Vérifier que $S$ est orthogonale.

    ${}^tS = S = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & -1 \end{pmatrix}$.

    ${}^tSS = S^2 = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & -1 \end{pmatrix} \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & -1 \end{pmatrix} = \begin{pmatrix} 1^2 & 0 & 0 \\ 0 & 1^2 & 0 \\ 0 & 0 & (-1)^2 \end{pmatrix} = I_3$.

    Donc, $s$ est bien une isométrie.

3.  Calculer le déterminant de $S$.

    $\det(S) = 1 \cdot 1 \cdot (-1) = -1$.

**Conclusion:** Puisque $s$ est une isométrie et que $\det(S)=-1$, $s$ inverse l'orientation. C'est donc une isométrie négative.

**Réponse:** La matrice de $s$ est $S = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & -1 \end{pmatrix}$. C'est une isométrie car ${}^tSS = I_3$ et elle est négative car $\det(S)=-1$.

</details>

## Exercice 9

**Problème:** Dans le plan euclidien $\mathbb{R}^2$, on considère le vecteur $u = (1, \sqrt{3})$. Trouvez un vecteur unitaire $v$ tel que l'angle non-orienté entre $u$ et $v$ soit de $\pi/3$.

<details>

<summary>Solution</summary>

**Méthode:** Soit $v=(x,y)$ un vecteur unitaire, ce qui signifie que $\|v\|=1$, soit $x^2+y^2=1$. La formule de l'angle non-orienté nous dit que $\langle u, v \rangle = \|u\| \|v\| \cos(\theta)$. Nous pouvons utiliser cette équation pour trouver une relation entre $x$ et $y$, puis la combiner avec l'équation de la norme pour trouver les coordonnées de $v$.

**Étapes:**

1.  Calculer la norme de $u$.

    $\|u\| = \sqrt{1^2 + (\sqrt{3})^2} = \sqrt{1+3} = \sqrt{4} = 2$.

2.  Écrire l'équation de l'angle. On a $\theta = \pi/3$, $\|v\|=1$ et $\|u\|=2$.

    $\langle u, v \rangle = \|u\| \|v\| \cos(\pi/3) = 2 \cdot 1 \cdot \frac{1}{2} = 1$.

3.  Exprimer le produit scalaire en termes de coordonnées. Soit $v=(x,y)$.

    $\langle u, v \rangle = \langle (1, \sqrt{3}), (x,y) \rangle = 1 \cdot x + \sqrt{3} \cdot y = x + \sqrt{3}y$.

    On a donc l'équation: $x + \sqrt{3}y = 1$.

4.  Résoudre le système de deux équations à deux inconnues.

    (1) $x + \sqrt{3}y = 1 \implies x = 1 - \sqrt{3}y$

    (2) $x^2 + y^2 = 1$

5.  Substituer $x$ de l'équation (1) dans l'équation (2).

    $(1 - \sqrt{3}y)^2 + y^2 = 1$

    $1 - 2\sqrt{3}y + (\sqrt{3}y)^2 + y^2 = 1$

    $1 - 2\sqrt{3}y + 3y^2 + y^2 = 1$

    $4y^2 - 2\sqrt{3}y = 0$

    $2y(2y - \sqrt{3}) = 0$.

6.  Cette équation donne deux solutions pour $y$.

    Solution A: $y=0$. En substituant dans $x = 1 - \sqrt{3}y$, on obtient $x=1$. Donc $v_1 = (1,0)$.

    Solution B: $2y - \sqrt{3} = 0 \implies y = \frac{\sqrt{3}}{2}$. En substituant, $x = 1 - \sqrt{3}(\frac{\sqrt{3}}{2}) = 1 - \frac{3}{2} = -\frac{1}{2}$. Donc $v_2 = (-1/2, \sqrt{3}/2)$.

**Conclusion:** Il existe deux vecteurs unitaires qui satisfont à la condition.

**Réponse:** Deux vecteurs solutions possibles sont $v_1 = (1,0)$ et $v_2 = \left(-\frac{1}{2}, \frac{\sqrt{3}}{2}\right)$.

</details>

## Exercice 10

**Problème:** Prouvez que le produit de deux matrices de $O_n(\mathbb{R})$ est encore une matrice de $O_n(\mathbb{R})$. Que pouvez-vous en conclure sur la structure de $O_n(\mathbb{R})$?

<details>

<summary>Solution</summary>

**Méthode:** Soient $A$ et $B$ deux matrices appartenant à $O_n(\mathbb{R})$. Par définition, cela signifie que ${}^tAA = I_n$ et ${}^tBB = I_n$. Nous devons montrer que leur produit $C=AB$ appartient aussi à $O_n(\mathbb{R})$, c'est-à-dire que ${}^tCC = I_n$. Nous utiliserons la propriété de la transposée d'un produit : ${}^t(AB) = {}^tB{}^tA$.

**Étapes:**

1.  Soient $A, B \in O_n(\mathbb{R})$. Cela implique ${}^tAA = I_n$ et ${}^tBB = I_n$.

2.  On veut montrer que $AB \in O_n(\mathbb{R})$. Posons $C = AB$. On doit vérifier si ${}^tCC = I_n$.

3.  Calculons ${}^tCC$.

    ${}^tC = {}^t(AB) = {}^tB{}^tA$.

    Donc, ${}^tCC = ({}^tB{}^tA)(AB) = {}^tB({}^tAA)B$.

4.  Utilisons l'hypothèse que $A \in O_n(\mathbb{R})$, soit ${}^tAA = I_n$.

    ${}^tB({}^tAA)B = {}^tB(I_n)B = {}^tBB$.

5.  Utilisons l'hypothèse que $B \in O_n(\mathbb{R})$, soit ${}^tBB = I_n$.

    On a donc ${}^tCC = {}^tBB = I_n$.

6.  La condition est vérifiée, donc le produit $AB$ est bien une matrice de $O_n(\mathbb{R})$.

**Conclusion:**

La multiplication matricielle est une loi de composition interne sur l'ensemble $O_n(\mathbb{R})$.

De plus :

- La loi est associative (propriété de la multiplication matricielle).
- Il y a un élément neutre : la matrice identité $I_n$ (car ${}^tI_n I_n = I_n$).
- Tout élément $A \in O_n(\mathbb{R})$ a un inverse dans $O_n(\mathbb{R})$. En effet, la relation ${}^tAA = I_n$ montre que $A$ est inversible et que son inverse est $A^{-1} = {}^tA$. On doit juste vérifier que ${}^tA$ est aussi dans $O_n(\mathbb{R})$. On a ${}^t({}^tA)({}^tA) = A({}^tA)$. Comme ${}^tAA=I_n$, on a aussi $A{}^tA=I_n$. Donc ${}^tA \in O_n(\mathbb{R})$.

Ces quatre propriétés montrent que $(O_n(\mathbb{R}), \times)$ est un groupe.

**Réponse:** Si $A, B \in O_n(\mathbb{R})$, alors ${}^t(AB)(AB) = {}^tB{}^tAAB = {}^tB(I_n)B = {}^tBB = I_n$, donc $AB \in O_n(\mathbb{R})$. On en conclut que $O_n(\mathbb{R})$ muni de la multiplication matricielle est un groupe.

</details>
