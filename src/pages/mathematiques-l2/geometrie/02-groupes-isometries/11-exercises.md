---
title: A - Exercices
order: 11
level: regular
chapter: A - Concepts
course: Géométrie
tags: ["exercises", "practice", "regular"]
---

# Exercices: A - Concepts

## Exercice 1: Problème de Calcul

**Problème:** Soit $f: \mathbb{R}^2 \to \mathbb{R}^2$ l'application linéaire définie par $f(x_1, x_2) = (\frac{3}{5}x_1 + \frac{4}{5}x_2, \frac{4}{5}x_1 - \frac{3}{5}x_2)$. Montrer que $f$ est une isométrie en utilisant la définition, c'est-à-dire en vérifiant que $\|f(x)\| = \|x\|$ pour tout $x \in \mathbb{R}^2$.

<details>

<summary>Solution</summary>

**Méthode:** Pour prouver que $f$ est une isométrie, nous allons calculer la norme au carré du vecteur image $\|f(x)\|^2$ pour un vecteur générique $x = (x_1, x_2)$ et montrer qu'elle est égale à la norme au carré du vecteur initial, $\|x\|^2 = x_1^2 + x_2^2$.

**Étapes:**

1.  Soit $x = (x_1, x_2)$ un vecteur quelconque de $\mathbb{R}^2$. Son image par $f$ est $f(x) = (\frac{3}{5}x_1 + \frac{4}{5}x_2, \frac{4}{5}x_1 - \frac{3}{5}x_2)$.

2.  Calculons la norme au carré de $f(x)$ :

    $\|f(x)\|^2 = \left(\frac{3}{5}x_1 + \frac{4}{5}x_2\right)^2 + \left(\frac{4}{5}x_1 - \frac{3}{5}x_2\right)^2$

3.  Développons les carrés en utilisant l'identité $(a+b)^2 = a^2 + 2ab + b^2$ et $(a-b)^2 = a^2 - 2ab + b^2$:

    $\|f(x)\|^2 = \left(\frac{9}{25}x_1^2 + 2 \cdot \frac{3}{5}\frac{4}{5}x_1x_2 + \frac{16}{25}x_2^2\right) + \left(\frac{16}{25}x_1^2 - 2 \cdot \frac{4}{5}\frac{3}{5}x_1x_2 + \frac{9}{25}x_2^2\right)$

4.  Simplifions l'expression :

    $\|f(x)\|^2 = \left(\frac{9}{25}x_1^2 + \frac{24}{25}x_1x_2 + \frac{16}{25}x_2^2\right) + \left(\frac{16}{25}x_1^2 - \frac{24}{25}x_1x_2 + \frac{9}{25}x_2^2\right)$

5.  Regroupons les termes en $x_1^2$, $x_2^2$ et $x_1x_2$ :

    $\|f(x)\|^2 = \left(\frac{9}{25} + \frac{16}{25}\right)x_1^2 + \left(\frac{16}{25} + \frac{9}{25}\right)x_2^2 + \left(\frac{24}{25} - \frac{24}{25}\right)x_1x_2$

    $\|f(x)\|^2 = \left(\frac{25}{25}\right)x_1^2 + \left(\frac{25}{25}\right)x_2^2 + 0$

    $\|f(x)\|^2 = x_1^2 + x_2^2$

6.  Nous reconnaissons que $x_1^2 + x_2^2 = \|x\|^2$. Nous avons donc montré que $\|f(x)\|^2 = \|x\|^2$. Puisque la norme est un nombre positif, cela implique que $\|f(x)\| = \|x\|$.

**Réponse:** L'application $f$ conserve la norme, c'est donc une isométrie de $\mathbb{R}^2$.

</details>

## Exercice 2: Question Conceptuelle

**Problème:** Soit $f$ un endomorphisme de $\mathbb{R}^2$ tel que $f(1,0) = (1,1)$ et $f(0,1) = (1,-1)$. L'application $f$ peut-elle être une isométrie ? Justifiez votre réponse en utilisant les propriétés des isométries.

<details>

<summary>Solution</summary>

**Méthode:** Une des propriétés fondamentales d'une isométrie est qu'elle transforme une base orthonormée en une autre base orthonormée. Nous allons vérifier si l'image de la base canonique de $\mathbb{R}^2$, qui est orthonormée, est elle-même une base orthonormée.

**Étapes:**

1.  La base canonique de $\mathbb{R}^2$ est $\mathcal{B} = (e_1, e_2)$ avec $e_1 = (1,0)$ et $e_2 = (0,1)$. Cette base est orthonormée car $\|e_1\| = 1$, $\|e_2\| = 1$ et $\langle e_1, e_2 \rangle = 0$.

2.  L'image de cette base par $f$ est la famille de vecteurs $(f(e_1), f(e_2)) = ((1,1), (1,-1))$.

3.  Vérifions si cette famille image est orthonormée. Pour cela, nous devons calculer les normes des vecteurs images et leur produit scalaire.

4.  Calculons la norme de $f(e_1) = (1,1)$ :

    $\|f(e_1)\| = \sqrt{1^2 + 1^2} = \sqrt{2}$

    Puisque $\|f(e_1)\| = \sqrt{2} \neq 1 = \|e_1\|$, la norme du premier vecteur de base n'est pas conservée.

5.  À ce stade, nous pouvons déjà conclure que $f$ n'est pas une isométrie, car elle ne conserve pas la norme de tous les vecteurs (en particulier, celle de $e_1$).

6.  Pour être complet, vérifions les autres conditions. Calculons la norme de $f(e_2) = (1,-1)$ :

    $\|f(e_2)\| = \sqrt{1^2 + (-1)^2} = \sqrt{2}$. La norme de $e_2$ n'est pas conservée non plus.

    Calculons le produit scalaire des vecteurs images :

    $\langle f(e_1), f(e_2) \rangle = \langle (1,1), (1,-1) \rangle = 1 \cdot 1 + 1 \cdot (-1) = 1 - 1 = 0$.

    Les vecteurs images sont orthogonaux, mais ils ne sont pas unitaires. La famille image n'est donc pas orthonormée.

**Réponse:** L'application $f$ ne peut pas être une isométrie car elle ne transforme pas la base orthonormée canonique en une base orthonormée. Plus simplement, elle ne conserve pas la norme des vecteurs de base.

</details>

## Exercice 3: Problème de Calcul

**Problème:** Déterminer la ou les valeurs du réel $a$ pour que la matrice suivante soit une matrice orthogonale : $A = \begin{pmatrix} a & -2/3 & 2/3 \\ 2/3 & a & 1/3 \\ -2/3 & 1/3 & a \end{pmatrix}$.

<details>

<summary>Solution</summary>

**Méthode:** Une matrice est orthogonale si et seulement si ses vecteurs colonnes (ou ses vecteurs lignes) forment une base orthonormée. La condition la plus simple à vérifier est que chaque colonne doit avoir une norme égale à 1. Nous allons utiliser cette condition sur la première colonne pour trouver la ou les valeurs possibles de $a$. Ensuite, nous vérifierons que ces valeurs rendent bien la matrice orthogonale.

**Étapes:**

1.  Soient $C_1, C_2, C_3$ les vecteurs colonnes de $A$. Pour que $A$ soit orthogonale, on doit avoir $\|C_1\|=1$, $\|C_2\|=1$, $\|C_3\|=1$ et $\langle C_i, C_j \rangle = 0$ pour $i \neq j$.

2.  Appliquons la condition de norme à la première colonne $C_1 = (a, 2/3, -2/3)$:

    $\|C_1\|^2 = a^2 + (2/3)^2 + (-2/3)^2 = 1$

    $a^2 + 4/9 + 4/9 = 1$

    $a^2 + 8/9 = 1$

    $a^2 = 1 - 8/9 = 1/9$

    Donc, $a = 1/3$ ou $a = -1/3$.

3.  Testons la valeur $a = 1/3$. La matrice devient $A = \begin{pmatrix} 1/3 & -2/3 & 2/3 \\ 2/3 & 1/3 & 1/3 \\ -2/3 & 1/3 & 1/3 \end{pmatrix}$.
    - Vérifions les normes des autres colonnes :

      $\|C_2\|^2 = (-2/3)^2 + (1/3)^2 + (1/3)^2 = 4/9 + 1/9 + 1/9 = 6/9 \neq 1$.

      Cette valeur de $a$ ne fonctionne pas. Il y a une erreur dans l'énoncé ou ma résolution. Relisons l'énoncé. Ah, la matrice est: $A = \begin{pmatrix} a & -2/3 & 2/3 \\ 2/3 & a & 1/3 \\ -2/3 & 1/3 & a \end{pmatrix}$. Ma transcription de la matrice pour le test était incorrecte.

4.  Recommençons le test avec $a=1/3$ et la bonne matrice $A = \begin{pmatrix} 1/3 & -2/3 & 2/3 \\ 2/3 & 1/3 & 1/3 \\ -2/3 & 1/3 & 1/3 \end{pmatrix}$. Non, la matrice est $A = \begin{pmatrix} a & -2/3 & 2/3 \\ 2/3 & a & 1/3 \\ -2/3 & 1/3 & a \end{pmatrix}$.

    Donc pour $a=1/3$, $A = \begin{pmatrix} 1/3 & -2/3 & 2/3 \\ 2/3 & 1/3 & 1/3 \\ -2/3 & 1/3 & 1/3 \end{pmatrix}$.

    $C_2 = (-2/3, 1/3, 1/3)$. $\|C_2\|^2 = 4/9 + 1/9 + 1/9 = 6/9 \neq 1$. Cela ne marche toujours pas.

    Re-vérifions l'énoncé de l'exercice. Je pense qu'il y a une coquille. Une matrice orthogonale classique est $A = \frac{1}{3}\begin{pmatrix} 1 & -2 & 2 \\ 2 & 2 & 1 \\ 2 & -1 & -2 \end{pmatrix}$. Voyons si on peut adapter l'exercice.

    Si la matrice était $A = \begin{pmatrix} a & -2/3 & 2/3 \\ 2/3 & 2/3 & 1/3 \\ -2/3 & 1/3 & a \end{pmatrix}$, alors pour $a=2/3$, $\|C_1\|^2 = (2/3)^2+(2/3)^2+(-2/3)^2 = (4+4+4)/9 \neq 1$.

    Ok, revenons à la matrice initiale et revoyons mes calculs.

    $A = \begin{pmatrix} a & -2/3 & 2/3 \\ 2/3 & a & 1/3 \\ -2/3 & 1/3 & a \end{pmatrix}$.

    $a^2=1/9 \implies a=\pm 1/3$.

    Regardons la norme de $C_2$: $\|C_2\|^2 = (-2/3)^2 + a^2 + (1/3)^2 = 4/9 + a^2 + 1/9 = 5/9 + a^2$.

    Pour que $\|C_2\|^2=1$, on doit avoir $5/9 + a^2 = 1 \implies a^2 = 4/9 \implies a = \pm 2/3$.

    Nous avons une contradiction. $a^2$ doit être à la fois $1/9$ et $4/9$. L'énoncé est impossible tel quel.

    Je vais corriger l'énoncé pour qu'il ait une solution.

    Soit $A = \begin{pmatrix} a & -2/3 & c \\ b & a & 1/3 \\ -2/3 & 1/3 & a \end{pmatrix}$.

    Non, je vais créer un autre exercice similaire.

    Problème corrigé : Déterminer la ou les valeurs du réel $a$ pour que la matrice suivante soit une matrice orthogonale : $A = \begin{pmatrix} a & -1/\sqrt{2} & 0 \\ a & 1/\sqrt{2} & 0 \\ 0 & 0 & 1 \end{pmatrix}$.

    Solution corrigée :

    $\|C_1\|^2 = a^2+a^2+0^2 = 2a^2$. Pour que $\|C_1\|=1$, $2a^2=1 \implies a^2=1/2 \implies a = \pm 1/\sqrt{2}$.

    $\|C_2\|^2 = (-1/\sqrt{2})^2+(1/\sqrt{2})^2+0 = 1/2+1/2=1$. Ok.

    $\|C_3\|^2 = 0+0+1^2=1$. Ok.

    Vérifions l'orthogonalité. $\langle C_1, C_2 \rangle = a(-1/\sqrt{2}) + a(1/\sqrt{2}) + 0 = 0$. Ok.

    $\langle C_1, C_3 \rangle = 0$. Ok. $\langle C_2, C_3 \rangle = 0$. Ok.

    Donc $a = \pm 1/\sqrt{2}$.

    Je vais rester sur l'exercice initial et montrer qu'il n'y a pas de solution. C'est aussi un bon exercice.

5.  Calculons la norme de la deuxième colonne $C_2 = (-2/3, a, 1/3)$:

    $\|C_2\|^2 = (-2/3)^2 + a^2 + (1/3)^2 = 4/9 + a^2 + 1/9 = 5/9 + a^2$.

    Pour que la norme soit 1, il faut que $\|C_2\|^2 = 1$, soit $5/9 + a^2 = 1$, ce qui donne $a^2 = 1 - 5/9 = 4/9$.

6.  Nous avons obtenu deux conditions contradictoires sur $a^2$:
    - La norme de la première colonne impose $a^2 = 1/9$.
    - La norme de la deuxième colonne impose $a^2 = 4/9$.

    Puisqu'il est impossible que $a^2$ soit égal à la fois à $1/9$ et $4/9$, il n'existe aucune valeur de $a$ pour laquelle cette matrice est orthogonale.

**Réponse:** Il n'existe aucune valeur réelle de $a$ pour laquelle la matrice $A$ donnée est une matrice orthogonale.

</details>

## Exercice 4: Problème d'Application

**Problème:** La matrice $M = \frac{1}{3}\begin{pmatrix} 2 & -2 & 1 \\ 1 & 2 & 2 \\ 2 & 1 & -2 \end{pmatrix}$ appartient-elle au groupe spécial orthogonal $SO_3(\mathbb{R})$ ?

<details>

<summary>Solution</summary>

**Méthode:** Pour qu'une matrice appartienne au groupe spécial orthogonal $SO_3(\mathbb{R})$, elle doit satisfaire deux conditions :

1. Elle doit être orthogonale, c'est-à-dire $M^{-1} = {}^tM$, ou de façon équivalente ${}^tM M = I_3$.
2. Son déterminant doit être égal à $+1$.

Nous allons vérifier ces deux conditions.

**Étapes:**

1.  **Vérification de l'orthogonalité :** Calculons le produit ${}^tM M$.

    ${}^tM = \frac{1}{3}\begin{pmatrix} 2 & 1 & 2 \\ -2 & 2 & 1 \\ 1 & 2 & -2 \end{pmatrix}$.

    ${}^tM M = \left(\frac{1}{3}\begin{pmatrix} 2 & 1 & 2 \\ -2 & 2 & 1 \\ 1 & 2 & -2 \end{pmatrix}\right) \left(\frac{1}{3}\begin{pmatrix} 2 & -2 & 1 \\ 1 & 2 & 2 \\ 2 & 1 & -2 \end{pmatrix}\right) = \frac{1}{9} \begin{pmatrix} 2 & 1 & 2 \\ -2 & 2 & 1 \\ 1 & 2 & -2 \end{pmatrix} \begin{pmatrix} 2 & -2 & 1 \\ 1 & 2 & 2 \\ 2 & 1 & -2 \end{pmatrix}$

    Calculons le produit des matrices :

    $C_{11} = 2(2)+1(1)+2(2) = 4+1+4 = 9$

    $C_{12} = 2(-2)+1(2)+2(1) = -4+2+2 = 0$

    $C_{13} = 2(1)+1(2)+2(-2) = 2+2-4 = 0$

    $C_{22} = -2(-2)+2(2)+1(1) = 4+4+1 = 9$

    $C_{33} = 1(1)+2(2)+(-2)(-2) = 1+4+4 = 9$

    En calculant tous les termes, on obtient :

    ${}^tM M = \frac{1}{9} \begin{pmatrix} 9 & 0 & 0 \\ 0 & 9 & 0 \\ 0 & 0 & 9 \end{pmatrix} = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix} = I_3$.

    La matrice $M$ est donc bien orthogonale. Elle appartient à $O_3(\mathbb{R})$.

2.  **Vérification du déterminant :** Calculons $\det(M)$.

    $\det(M) = \det\left(\frac{1}{3}A\right) = \left(\frac{1}{3}\right)^3 \det(A)$ où $A = \begin{pmatrix} 2 & -2 & 1 \\ 1 & 2 & 2 \\ 2 & 1 & -2 \end{pmatrix}$.

    $\det(A) = 2(2(-2) - 2(1)) - (-2)(1(-2) - 2(2)) + 1(1(1) - 2(2))$

    $\det(A) = 2(-4 - 2) + 2(-2 - 4) + 1(1 - 4)$

    $\det(A) = 2(-6) + 2(-6) + 1(-3) = -12 - 12 - 3 = -27$.

    Donc, $\det(M) = \frac{1}{27}(-27) = -1$.

3.  **Conclusion :** La matrice $M$ est orthogonale, mais son déterminant est $-1$. Pour appartenir à $SO_3(\mathbb{R})$, le déterminant doit être $+1$.

**Réponse:** La matrice $M$ n'appartient pas à $SO_3(\mathbb{R})$. Elle appartient à $O_3(\mathbb{R})$ mais pas au sous-groupe spécial $SO_3(\mathbb{R})$. C'est une isométrie indirecte (une rotation-réflexion).

</details>

## Exercice 5: Problème de Calcul

**Problème:** Dans l'espace euclidien $\mathbb{R}^3$, calculer l'angle non-orienté $\theta$ entre les vecteurs $u = (2, 2, -1)$ et $v = (5, -3, 2)$.

<details>

<summary>Solution</summary>

**Méthode:** L'angle non-orienté $\theta \in [0, \pi]$ entre deux vecteurs non nuls $u$ et $v$ est donné par la formule issue de la définition du produit scalaire :

$\cos(\theta) = \frac{\langle u, v \rangle}{\|u\|\|v\|}$

**Étapes:**

1.  **Calculer le produit scalaire $\langle u, v \rangle$ :**

    $\langle u, v \rangle = u_1 v_1 + u_2 v_2 + u_3 v_3$

    $\langle u, v \rangle = (2)(5) + (2)(-3) + (-1)(2) = 10 - 6 - 2 = 2$

2.  **Calculer la norme de $u$ :**

    $\|u\| = \sqrt{u_1^2 + u_2^2 + u_3^2}$

    $\|u\| = \sqrt{2^2 + 2^2 + (-1)^2} = \sqrt{4 + 4 + 1} = \sqrt{9} = 3$

3.  **Calculer la norme de $v$ :**

    $\|v\| = \sqrt{v_1^2 + v_2^2 + v_3^2}$

    $\|v\| = \sqrt{5^2 + (-3)^2 + 2^2} = \sqrt{25 + 9 + 4} = \sqrt{38}$

4.  **Calculer $\cos(\theta)$ :**

    $\cos(\theta) = \frac{2}{3 \sqrt{38}}$

5.  **Calculer l'angle $\theta$ :**

    $\theta = \arccos\left(\frac{2}{3\sqrt{38}}\right)$

**Réponse:** L'angle non-orienté entre les vecteurs $u$ et $v$ est $\theta = \arccos\left(\frac{2}{3\sqrt{38}}\right)$.

</details>

## Exercice 6: Problème d'Application

**Problème:** Dans le plan euclidien orienté $\mathbb{R}^2$ (avec l'orientation canonique définie par la base $(e_1, e_2)$), calculer l'angle orienté $\tilde{\theta}$ du vecteur $x = (\sqrt{3}, 1)$ au vecteur $y = (0, 2)$.

<details>

<summary>Solution</summary>

**Méthode:** L'angle orienté $\tilde{\theta}$ de $x$ vers $y$ est défini par le système de deux équations :

1. $\langle x, y \rangle = \|x\|\|y\|\cos(\tilde{\theta})$
2. $\det(x, y) = \|x\|\|y\|\sin(\tilde{\theta})$

Nous allons calculer chaque terme de ces équations pour trouver $\cos(\tilde{\theta})$ et $\sin(\tilde{\theta})$, ce qui nous permettra de déterminer $\tilde{\theta}$ de manière unique (à $2\pi$ près).

**Étapes:**

1.  **Calculs préliminaires :**
    - Produit scalaire : $\langle x, y \rangle = (\sqrt{3})(0) + (1)(2) = 2$
    - Norme de $x$ : $\|x\| = \sqrt{(\sqrt{3})^2 + 1^2} = \sqrt{3+1} = \sqrt{4} = 2$
    - Norme de $y$ : $\|y\| = \sqrt{0^2 + 2^2} = \sqrt{4} = 2$
    - Déterminant dans la base canonique : $\det(x, y) = \begin{vmatrix} \sqrt{3} & 0 \\ 1 & 2 \end{vmatrix} = (\sqrt{3})(2) - (0)(1) = 2\sqrt{3}$

2.  **Détermination de $\cos(\tilde{\theta})$ :**

    À partir de la première équation : $2 = (2)(2)\cos(\tilde{\theta})$

    $2 = 4\cos(\tilde{\theta})$

    $\cos(\tilde{\theta}) = \frac{2}{4} = \frac{1}{2}$

3.  **Détermination de $\sin(\tilde{\theta})$ :**

    À partir de la deuxième équation : $2\sqrt{3} = (2)(2)\sin(\tilde{\theta})$

    $2\sqrt{3} = 4\sin(\tilde{\theta})$

    $\sin(\tilde{\theta}) = \frac{2\sqrt{3}}{4} = \frac{\sqrt{3}}{2}$

4.  **Identification de l'angle :**

    Nous cherchons l'angle $\tilde{\theta} \in [0, 2\pi)$ tel que $\cos(\tilde{\theta}) = 1/2$ et $\sin(\tilde{\theta}) = \sqrt{3}/2$. L'unique angle qui satisfait ces deux conditions est $\tilde{\theta} = \pi/3$.

**Réponse:** L'angle orienté du vecteur $x$ vers le vecteur $y$ est $\tilde{\theta} = \frac{\pi}{3}$ radians (ou 60°).

</details>

## Exercice 7: Problème d'Application

**Problème:** Soit l'isométrie $f$ du plan euclidien dont la matrice dans la base canonique est $M = \begin{pmatrix} -1/2 & \sqrt{3}/2 \\ -\sqrt{3}/2 & -1/2 \end{pmatrix}$. Déterminer la nature de cette isométrie (rotation ou réflexion) et ses éléments caractéristiques (angle ou axe).

<details>

<summary>Solution</summary>

**Méthode:** Pour une isométrie du plan, la nature est déterminée par la valeur de son déterminant.

- Si $\det(M) = +1$, c'est une rotation. L'angle $\theta$ peut être trouvé avec la trace : $Tr(M) = 2\cos(\theta)$.
- Si $\det(M) = -1$, c'est une réflexion (symétrie axiale). L'axe est l'ensemble des points invariants.

**Étapes:**

1.  **Calcul du déterminant :**

    $\det(M) = (-1/2)(-1/2) - (\sqrt{3}/2)(-\sqrt{3}/2) = 1/4 - (-3/4) = 1/4 + 3/4 = 1$.

    Puisque le déterminant est $+1$, l'isométrie est une rotation.

2.  **Calcul de l'angle de rotation :**

    La matrice d'une rotation d'angle $\theta$ est de la forme $\begin{pmatrix} \cos(\theta) & -\sin(\theta) \\ \sin(\theta) & \cos(\theta) \end{pmatrix}$.

    En identifiant les termes avec la matrice $M$, on a :

    $\cos(\theta) = -1/2$

    $\sin(\theta) = -\sqrt{3}/2$
    
    L'unique angle $\theta \in [0, 2\pi)$ qui vérifie ces deux conditions est $\theta = \pi + \pi/3 = 4\pi/3$. On peut aussi l'exprimer comme un angle négatif : $\theta = -2\pi/3$.

    Une autre méthode est d'utiliser la trace :

    $Tr(M) = -1/2 + (-1/2) = -1$.

    On sait que $Tr(M) = 2\cos(\theta)$, donc $2\cos(\theta) = -1$, ce qui donne $\cos(\theta) = -1/2$.

    Les angles possibles sont $\theta = 2\pi/3$ ou $\theta = 4\pi/3$.

    Pour décider entre les deux, on regarde le signe du terme $M_{21} = -\sqrt{3}/2$, qui correspond à $\sin(\theta)$. Puisque $\sin(\theta)$ est négatif, l'angle correct est $\theta = 4\pi/3$.

**Réponse:** L'isométrie $f$ est une rotation d'angle $\theta = \frac{4\pi}{3}$ radians (ou $-120^\circ$).

</details>

## Exercice 8: Problème d'Application

**Problème:** Soit la rotation $r$ de l'espace euclidien $\mathbb{R}^3$ représentée par la matrice $R = \frac{1}{9}\begin{pmatrix} 1 & 8 & -4 \\ -4 & 4 & 7 \\ 8 & 1 & 4 \end{pmatrix}$. Déterminer son axe et son angle.

<details>

<summary>Solution</summary>

**Méthode:** Pour une rotation dans $\mathbb{R}^3$ (une matrice de $SO_3(\mathbb{R})$):

1. L'axe de rotation est la droite des vecteurs invariants. Il est donc dirigé par un vecteur propre $N$ associé à la valeur propre $\lambda=1$. On trouve $N$ en résolvant le système $(R-I)N=0$.
2. L'angle de rotation $\theta$ est lié à la trace de la matrice par la formule $Tr(R) = 1 + 2\cos(\theta)$.

**Étapes:**

1.  **Détermination de l'axe de rotation :**

    On cherche les vecteurs $N=(x,y,z)$ tels que $RN=N$, soit $(R-I)N=0$.

    $R-I = \frac{1}{9}\begin{pmatrix} 1 & 8 & -4 \\ -4 & 4 & 7 \\ 8 & 1 & 4 \end{pmatrix} - \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix} = \frac{1}{9}\begin{pmatrix} -8 & 8 & -4 \\ -4 & -5 & 7 \\ 8 & 1 & -5 \end{pmatrix}$.

    Le système à résoudre est :

    $\begin{cases} -8x + 8y - 4z = 0 \\ -4x - 5y + 7z = 0 \\ 8x + y - 5z = 0 \end{cases} \iff \begin{cases} -2x + 2y - z = 0 \\ -4x - 5y + 7z = 0 \\ 8x + y - 5z = 0 \end{cases}$

    De la première ligne, $z = -2x + 2y$. Substituons dans la troisième ligne :

    $8x + y - 5(-2x + 2y) = 0 \implies 8x + y + 10x - 10y = 0 \implies 18x - 9y = 0 \implies y = 2x$.

    Maintenant, trouvons $z$ : $z = -2x + 2(2x) = -2x + 4x = 2x$.

    Les vecteurs de l'axe sont de la forme $(x, 2x, 2x) = x(1, 2, 2)$.

    L'axe de rotation est la droite dirigée par le vecteur $N=(1, 2, 2)$.

2.  **Détermination de l'angle de rotation :**

    Calculons la trace de $R$ :

    $Tr(R) = \frac{1}{9}(1 + 4 + 4) = \frac{9}{9} = 1$.

    Utilisons la formule $Tr(R) = 1 + 2\cos(\theta)$ :

    $1 = 1 + 2\cos(\theta)$

    $0 = 2\cos(\theta)$

    $\cos(\theta) = 0$.

    Cela signifie que l'angle est $\theta = \pi/2$ ou $\theta = -\pi/2$.

3.  **Détermination du signe de l'angle (orientation) :**

    Choisissons un vecteur non colinéaire à l'axe, par exemple $u=(1,0,0)$.

    Calculons son image $r(u) = R u$:

    $r(u) = \frac{1}{9}\begin{pmatrix} 1 & 8 & -4 \\ -4 & 4 & 7 \\ 8 & 1 & 4 \end{pmatrix} \begin{pmatrix} 1 \\ 0 \\ 0 \end{pmatrix} = \frac{1}{9} \begin{pmatrix} 1 \\ -4 \\ 8 \end{pmatrix}$.

    Le signe de l'angle est donné par le signe du produit mixte $\det(u, r(u), N)$.

    $\det(u, r(u), N) = \begin{vmatrix} 1 & 1/9 & 1 \\ 0 & -4/9 & 2 \\ 0 & 8/9 & 2 \end{vmatrix} = 1 \cdot \left( \frac{-4}{9} \cdot 2 - \frac{8}{9} \cdot 2 \right) = \frac{-8}{9} - \frac{16}{9} = \frac{-24}{9} < 0$.

    Puisque le produit mixte est négatif, l'orientation de la base $(u, r(u), N)$ est indirecte. Par convention (règle de la main droite), l'angle est négatif. Donc $\theta = -\pi/2$.

**Réponse:** L'isométrie est une rotation d'axe dirigé par le vecteur $N = (1, 2, 2)$ et d'angle $\theta = -\frac{\pi}{2}$ radians (ou $-90^\circ$).

</details>

## Exercice 9: Problème de Calcul

**Problème:** Soient les vecteurs $U=(1, -2, 3)$ et $V=(0, 4, 1)$ dans $\mathbb{R}^3$.

1. Calculer le produit vectoriel $U \land V$.
2. Calculer l'aire du parallélogramme défini par les vecteurs $U$ et $V$.

<details>

<summary>Solution</summary>

**Méthode:**

1. Le produit vectoriel $U \land V$ pour $U=(u_1, u_2, u_3)$ et $V=(v_1, v_2, v_3)$ est donné par la formule :

$U \land V = (u_2 v_3 - u_3 v_2, u_3 v_1 - u_1 v_3, u_1 v_2 - u_2 v_1)$.

2. L'aire du parallélogramme sous-tendu par $U$ et $V$ est égale à la norme du produit vectoriel, $\|U \land V\|$.

**Étapes:**

1.  **Calcul du produit vectoriel :**

    $u_1=1, u_2=-2, u_3=3$

    $v_1=0, v_2=4, v_3=1$
    
    La première composante est $u_2 v_3 - u_3 v_2 = (-2)(1) - (3)(4) = -2 - 12 = -14$.

    La deuxième composante est $u_3 v_1 - u_1 v_3 = (3)(0) - (1)(1) = 0 - 1 = -1$.

    La troisième composante est $u_1 v_2 - u_2 v_1 = (1)(4) - (-2)(0) = 4 - 0 = 4$.

    Donc, $U \land V = (-14, -1, 4)$.

2.  **Calcul de l'aire du parallélogramme :**

    L'aire $A$ est la norme du vecteur que nous venons de calculer.

    $A = \|U \land V\| = \sqrt{(-14)^2 + (-1)^2 + 4^2}$

    $A = \sqrt{196 + 1 + 16} = \sqrt{213}$.

**Réponse:**

1. Le produit vectoriel est $U \land V = (-14, -1, 4)$.
2. L'aire du parallélogramme est $A = \sqrt{213}$.

</details>

## Exercice 10: Question Conceptuelle

**Problème:** Sans utiliser la formule de calcul en coordonnées, mais en utilisant uniquement la définition $\det(U, V, W) = \langle U \land V, W \rangle$ et les propriétés du déterminant, montrez que le produit vectoriel est antisymétrique, c'est-à-dire $V \land U = - (U \land V)$.

<details>

<summary>Solution</summary>

**Méthode:** La définition du produit vectoriel caractérise un vecteur de manière unique. Pour montrer que $V \land U = - (U \land V)$, il suffit de montrer que le vecteur $-(U \land V)$ satisfait la définition de $V \land U$. C'est-à-dire, nous devons montrer que pour tout vecteur $W$, on a $\det(V, U, W) = \langle -(U \land V), W \rangle$.

**Étapes:**

1.  Par définition, le vecteur $V \land U$ est l'unique vecteur qui satisfait, pour tout $W \in \mathbb{R}^3$ :

    $\langle V \land U, W \rangle = \det(V, U, W)$.

2.  Nous connaissons une propriété fondamentale du déterminant : échanger deux colonnes (ou deux vecteurs) change son signe. Donc :

    $\det(V, U, W) = - \det(U, V, W)$.

3.  Nous utilisons maintenant la définition de $U \land V$ pour le terme de droite :

    $\det(U, V, W) = \langle U \land V, W \rangle$.

4.  En combinant les étapes 2 et 3, on obtient :

    $\det(V, U, W) = - \langle U \land V, W \rangle$.

5.  Par la linéarité du produit scalaire, on peut écrire :

    $- \langle U \land V, W \rangle = \langle -(U \land V), W \rangle$.

6.  En comparant les résultats des étapes 1 et 5, nous avons :

    $\langle V \land U, W \rangle = \langle -(U \land V), W \rangle$ pour n'importe quel vecteur $W$.

7.  Si deux vecteurs $A$ et $B$ sont tels que $\langle A, W \rangle = \langle B, W \rangle$ pour tout $W$, alors $A=B$. (Il suffit de prendre $W = A-B$ pour voir que $\|A-B\|^2 = 0$).

    Donc, nous pouvons conclure que $V \land U = -(U \land V)$.

**Réponse:** La démonstration repose sur l'antisymétrie du déterminant, qui se transmet au produit vectoriel via sa définition.

</details>

## Exercice 11: Problème d'Application

**Problème:** Déterminer l'image du vecteur $U=(1, 2, 3)$ par la rotation $\mathcal{R}$ d'angle $\theta=\pi/3$ autour de l'axe dirigé par le vecteur unitaire $N=(0, 0, 1)$.

<details>

<summary>Solution</summary>

**Méthode:** Nous appliquons directement la formule de Rodrigues, qui donne l'image $\mathcal{R}(U)$ d'un vecteur $U$ par une rotation d'angle $\theta$ autour d'un axe dirigé par un vecteur unitaire $N$ :

$\mathcal{R}(U) = \cos(\theta)U + (1 - \cos(\theta))\langle U, N \rangle N + \sin(\theta)(N \land U)$

**Étapes:**

1.  **Identifier les valeurs et vecteurs :**
    - $U = (1, 2, 3)$
    - $N = (0, 0, 1)$ (il est bien unitaire)
    - $\theta = \pi/3$, donc $\cos(\theta) = \cos(\pi/3) = 1/2$ et $\sin(\theta) = \sin(\pi/3) = \sqrt{3}/2$.

2.  **Calculer les produits scalaire et vectoriel :**
    - $\langle U, N \rangle = (1)(0) + (2)(0) + (3)(1) = 3$.
    - $N \land U = (0, 0, 1) \land (1, 2, 3) = (0\cdot3 - 1\cdot2, 1\cdot1 - 0\cdot3, 0\cdot2 - 0\cdot1) = (-2, 1, 0)$.

3.  **Substituer dans la formule de Rodrigues :**

    $\mathcal{R}(U) = \frac{1}{2}(1, 2, 3) + \left(1 - \frac{1}{2}\right)(3)(0, 0, 1) + \frac{\sqrt{3}}{2}(-2, 1, 0)$

4.  **Effectuer les calculs :**

    $\mathcal{R}(U) = \left(\frac{1}{2}, 1, \frac{3}{2}\right) + \frac{1}{2}(3)(0, 0, 1) + \left(-\sqrt{3}, \frac{\sqrt{3}}{2}, 0\right)$

    $\mathcal{R}(U) = \left(\frac{1}{2}, 1, \frac{3}{2}\right) + (0, 0, \frac{3}{2}) + \left(-\sqrt{3}, \frac{\sqrt{3}}{2}, 0\right)$

5.  **Additionner les composantes :**

    $\mathcal{R}(U) = \left(\frac{1}{2} + 0 - \sqrt{3}, 1 + 0 + \frac{\sqrt{3}}{2}, \frac{3}{2} + \frac{3}{2} + 0\right)$

    $\mathcal{R}(U) = \left(\frac{1}{2} - \sqrt{3}, 1 + \frac{\sqrt{3}}{2}, 3\right)$

**Réponse:** L'image du vecteur $U$ par la rotation est $\mathcal{R}(U) = \left(\frac{1}{2} - \sqrt{3}, 1 + \frac{\sqrt{3}}{2}, 3\right)$.

</details>

## Exercice 12: Question Conceptuelle

**Problème:** Le groupe $SU_2(\mathbb{C})$ est un "revêtement double" de $SO_3(\mathbb{R})$. La rotation identité dans $SO_3(\mathbb{R})$ (rotation d'angle 0 ou $2\pi$) correspond aux matrices $I_2$ et $-I_2$ dans $SU_2(\mathbb{C})$. En utilisant la propriété que les valeurs propres d'une matrice $U \in SU_2(\mathbb{C})$ représentant une rotation d'angle $\theta$ dans $SO_3(\mathbb{R})$ sont $e^{i\theta/2}$ et $e^{-i\theta/2}$, expliquez pourquoi la rotation d'angle $2\pi$ dans $SO_3(\mathbb{R})$ correspond à la matrice $-I_2$ dans $SU_2(\mathbb{C})$.

<details>

<summary>Solution</summary>

**Méthode:** L'explication repose sur l'application directe de la propriété fournie pour le cas spécifique d'une rotation d'un tour complet, c'est-à-dire $\theta = 2\pi$.

**Étapes:**

1.  On considère une rotation d'un tour complet dans l'espace, ce qui correspond à un angle $\theta = 2\pi$. Cette rotation est l'identité dans $SO_3(\mathbb{R})$.

2.  Selon la propriété énoncée, la matrice $U \in SU_2(\mathbb{C})$ associée à cette rotation doit avoir pour valeurs propres $\lambda_1 = e^{i\theta/2}$ et $\lambda_2 = e^{-i\theta/2}$.

3.  Substituons $\theta = 2\pi$ dans ces expressions :

    $\lambda_1 = e^{i(2\pi)/2} = e^{i\pi}$

    $\lambda_2 = e^{-i(2\pi)/2} = e^{-i\pi}$

4.  Calculons ces valeurs propres. D'après la formule d'Euler ($e^{i\phi} = \cos\phi + i\sin\phi$), on a :

    $e^{i\pi} = \cos(\pi) + i\sin(\pi) = -1 + 0 = -1$.

    $e^{-i\pi} = \cos(-\pi) + i\sin(-\pi) = -1 + 0 = -1$.

    Les deux valeurs propres de la matrice $U$ sont donc égales à $-1$.

5.  Une matrice $U$ de taille $2 \times 2$ qui est unitaire est diagonalisable. Si ses deux valeurs propres sont $-1$, sa forme diagonale est $D = \begin{pmatrix} -1 & 0 \\ 0 & -1 \end{pmatrix} = -I_2$.

    Puisque $U$ est semblable à $-I_2$, on a $U = P(-I_2)P^{-1}$ pour une matrice de passage $P$. Cela se simplifie en $U = -P I_2 P^{-1} = -I_2$.

    La seule matrice de $SU_2(\mathbb{C})$ ayant pour valeurs propres $-1$ et $-1$ est donc la matrice $-I_2$.

**Réponse:** Une rotation de $2\pi$ (un tour complet) dans $SO_3(\mathbb{R})$ correspond à la matrice $U \in SU_2(\mathbb{C})$ dont les valeurs propres sont $e^{i\pi}=-1$ et $e^{-i\pi}=-1$. La seule matrice unitaire avec ces valeurs propres est $-I_2$, ce qui explique ce lien fondamental.

</details>