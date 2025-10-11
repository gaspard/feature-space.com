---
id: '5f9a65d3'
title: B - Exercices
layout: '../../../layouts/Layout.astro'
order: 21
level: regular
chapter: Concepts
course: Géométrie
---

# Exercices: Concepts

## Exercice 1: Forme Bilinéaire et Symétrie

**Problème:** Soit l'application $\varphi: \mathbb{R}^3 \times \mathbb{R}^3 \to \mathbb{R}$ définie pour $x=(x_1, x_2, x_3)$ et $y=(y_1, y_2, y_3)$ par :
$$ \varphi(x, y) = x_1 y_1 - x_1 y_2 + x_2 y_1 + 3x_3 y_3 $$
1. Montrer que $\varphi$ est une forme bilinéaire.
2. Déterminer si $\varphi$ est symétrique.

<details>
<summary>Solution</summary>

**Méthode:** Pour prouver la bilinéarité, nous devons vérifier la linéarité par rapport à la première variable (à gauche) et par rapport à la seconde variable (à droite). Pour vérifier la symétrie, nous devons comparer $\varphi(x, y)$ et $\varphi(y, x)$.

**Étapes:**

1.  **Linéarité à gauche:**
    Soient $x, x' \in \mathbb{R}^3$ et $\lambda \in \mathbb{R}$. On doit vérifier que $\varphi(x + \lambda x', y) = \varphi(x, y) + \lambda \varphi(x', y)$.
    $x + \lambda x' = (x_1+\lambda x'_1, x_2+\lambda x'_2, x_3+\lambda x'_3)$.
    $ \varphi(x + \lambda x', y) = (x_1+\lambda x'_1)y_1 - (x_1+\lambda x'_1)y_2 + (x_2+\lambda x'_2)y_1 + 3(x_3+\lambda x'_3)y_3 $
    $ = x_1 y_1 + \lambda x'_1 y_1 - x_1 y_2 - \lambda x'_1 y_2 + x_2 y_1 + \lambda x'_2 y_1 + 3x_3 y_3 + 3\lambda x'_3 y_3 $
    En regroupant les termes :
    $ = (x_1 y_1 - x_1 y_2 + x_2 y_1 + 3x_3 y_3) + \lambda(x'_1 y_1 - x'_1 y_2 + x'_2 y_1 + 3x'_3 y_3) $
    $ = \varphi(x, y) + \lambda \varphi(x', y) $.
    La linéarité à gauche est vérifiée.

2.  **Linéarité à droite:**
    La démarche est similaire. Soient $y, y' \in \mathbb{R}^3$ et $\lambda \in \mathbb{R}$.
    $ \varphi(x, y + \lambda y') = x_1(y_1+\lambda y'_1) - x_1(y_2+\lambda y'_2) + x_2(y_1+\lambda y'_1) + 3x_3(y_3+\lambda y'_3) $
    $ = x_1 y_1 + \lambda x_1 y'_1 - x_1 y_2 - \lambda x_1 y'_2 + x_2 y_1 + \lambda x_2 y'_1 + 3x_3 y_3 + 3\lambda x_3 y'_3 $
    $ = (x_1 y_1 - x_1 y_2 + x_2 y_1 + 3x_3 y_3) + \lambda(x_1 y'_1 - x_1 y'_2 + x_2 y'_1 + 3x_3 y'_3) $
    $ = \varphi(x, y) + \lambda \varphi(x, y') $.
    La linéarité à droite est vérifiée.
    Puisque $\varphi$ est linéaire à gauche et à droite, c'est une forme bilinéaire.

3.  **Vérification de la symétrie:**
    On calcule $\varphi(y, x)$ et on compare avec $\varphi(x, y)$.
    $\varphi(y, x) = y_1 x_1 - y_1 x_2 + y_2 x_1 + 3y_3 x_3$
    $\varphi(y, x) = x_1 y_1 + x_1 y_2 - x_2 y_1 + 3x_3 y_3$
    Comparons avec $\varphi(x, y) = x_1 y_1 - x_1 y_2 + x_2 y_1 + 3x_3 y_3$.
    Les termes $-x_1 y_2 + x_2 y_1$ dans $\varphi(x,y)$ sont différents des termes $x_1 y_2 - x_2 y_1$ dans $\varphi(y,x)$.
    Prenons un contre-exemple : $x=(1,0,0)$ et $y=(0,1,0)$.
    $\varphi(x, y) = 1(0) - 1(1) + 0(0) + 3(0)(0) = -1$.
    $\varphi(y, x) = 0(1) - 0(0) + 1(1) + 3(0)(0) = 1$.
    Comme $\varphi(x, y) \neq \varphi(y, x)$, la forme n'est pas symétrique.

**Réponse:** $\varphi$ est une forme bilinéaire, mais elle n'est pas symétrique.

</details>

## Exercice 2: Produit Scalaire sur un Espace de Polynômes

**Problème:** Soit $E = \mathbb{R}_1[X]$ l'espace des polynômes de degré au plus 1. On définit l'application $\varphi: E \times E \to \mathbb{R}$ par :
$$ \varphi(P, Q) = P(0)Q(0) + P(1)Q(1) $$
Montrer que $\varphi$ est un produit scalaire sur $E$.

<details>
<summary>Solution</summary>

**Méthode:** Pour montrer que $\varphi$ est un produit scalaire sur l'espace réel $E$, nous devons vérifier les trois propriétés :
1. $\varphi$ est une forme bilinéaire.
2. $\varphi$ est symétrique.
3. $\varphi$ est définie positive.

**Étapes:**

1.  **Bilinearité:** La vérification est similaire à celle de l'exercice 1. Montrons la linéarité à gauche. Soient $P_1, P_2, Q \in E$ et $\lambda \in \mathbb{R}$.
    $\varphi(P_1 + \lambda P_2, Q) = (P_1 + \lambda P_2)(0) Q(0) + (P_1 + \lambda P_2)(1) Q(1)$
    $ = (P_1(0) + \lambda P_2(0))Q(0) + (P_1(1) + \lambda P_2(1))Q(1) $
    $ = P_1(0)Q(0) + \lambda P_2(0)Q(0) + P_1(1)Q(1) + \lambda P_2(1)Q(1) $
    $ = (P_1(0)Q(0) + P_1(1)Q(1)) + \lambda (P_2(0)Q(0) + P_2(1)Q(1)) $
    $ = \varphi(P_1, Q) + \lambda \varphi(P_2, Q) $.
    La linéarité à droite se montre de la même manière, profitant de la symétrie de la formule. Donc $\varphi$ est bilinéaire.

2.  **Symétrie:** On doit vérifier si $\varphi(P, Q) = \varphi(Q, P)$.
    $\varphi(Q, P) = Q(0)P(0) + Q(1)P(1) = P(0)Q(0) + P(1)Q(1) = \varphi(P, Q)$.
    La forme est donc symétrique.

3.  **Définie positive:**
    a) **Positivité:** On doit montrer que $\varphi(P, P) \ge 0$ pour tout $P \in E$.
    $\varphi(P, P) = P(0)P(0) + P(1)P(1) = (P(0))^2 + (P(1))^2$.
    C'est une somme de carrés de nombres réels, donc $\varphi(P, P) \ge 0$.
    b) **Caractère défini:** On doit montrer que $\varphi(P, P) = 0 \implies P = 0_E$.
    Si $\varphi(P, P) = 0$, alors $(P(0))^2 + (P(1))^2 = 0$.
    Puisque les deux termes sont positifs, leur somme est nulle si et seulement si chaque terme est nul.
    Donc, $P(0) = 0$ et $P(1) = 0$.
    Un polynôme $P$ de $E=\mathbb{R}_1[X]$ est de la forme $P(X) = aX + b$.
    $P(0) = a(0) + b = b = 0$.
    $P(1) = a(1) + b = a + b = 0$.
    Puisque $b=0$, on a $a+0=0$, donc $a=0$.
    Ainsi, $P(X) = 0X + 0$, ce qui est le polynôme nul.
    La forme est donc définie positive.

Puisque $\varphi$ est une forme bilinéaire, symétrique et définie positive, c'est un produit scalaire.

**Réponse:** L'application $\varphi$ est bien un produit scalaire sur $\mathbb{R}_1[X]$.

</details>

## Exercice 3: Application de l'Inégalité de Cauchy-Schwarz

**Problème:** En utilisant l'inégalité de Cauchy-Schwarz dans l'espace euclidien $\mathbb{R}^3$ muni du produit scalaire usuel, prouvez que pour tous réels $x, y, z$ :
$$ (x + 2y + 3z)^2 \le 14 (x^2 + y^2 + z^2) $$

<details>
<summary>Solution</summary>

**Méthode:** L'inégalité de Cauchy-Schwarz dans un espace euclidien stipule que $|\langle u, v \rangle|^2 \le \|u\|^2 \|v\|^2$. L'idée est de choisir judicieusement deux vecteurs $u$ et $v$ dans $\mathbb{R}^3$ tels que leur produit scalaire et leurs normes correspondent aux termes de l'inégalité à démontrer.

**Étapes:**

1.  **Rappel de l'inégalité de Cauchy-Schwarz:** Pour deux vecteurs $u = (u_1, u_2, u_3)$ et $v = (v_1, v_2, v_3)$ dans $\mathbb{R}^3$, l'inégalité est :
    $$ (u_1 v_1 + u_2 v_2 + u_3 v_3)^2 \le (u_1^2 + u_2^2 + u_3^2)(v_1^2 + v_2^2 + v_3^2) $$

2.  **Choix des vecteurs:**
    Nous voulons faire apparaître le terme $x + 2y + 3z$. Nous pouvons l'interpréter comme le produit scalaire de $u=(x,y,z)$ et $v=(1,2,3)$.
    Choisissons donc $u = (x, y, z)$ et $v = (1, 2, 3)$.

3.  **Calcul du produit scalaire et des normes:**
    - Produit scalaire : $\langle u, v \rangle = x \cdot 1 + y \cdot 2 + z \cdot 3 = x + 2y + 3z$.
    - Norme de $u$ au carré : $\|u\|^2 = \langle u, u \rangle = x^2 + y^2 + z^2$.
    - Norme de $v$ au carré : $\|v\|^2 = \langle v, v \rangle = 1^2 + 2^2 + 3^2 = 1 + 4 + 9 = 14$.

4.  **Application de l'inégalité:**
    En remplaçant ces expressions dans l'inégalité $|\langle u, v \rangle|^2 \le \|u\|^2 \|v\|^2$, on obtient :
    $$ (x + 2y + 3z)^2 \le (x^2 + y^2 + z^2)(14) $$
    Ce qui est exactement l'inégalité demandée.

**Réponse:** L'inégalité $(x + 2y + 3z)^2 \le 14 (x^2 + y^2 + z^2)$ est une conséquence directe de l'inégalité de Cauchy-Schwarz appliquée aux vecteurs $(x,y,z)$ et $(1,2,3)$.

</details>

## Exercice 4: Identité du Parallélogramme

**Problème:** On considère l'espace vectoriel $\mathbb{R}^2$ muni de la norme infinie, définie par $\|x\|_\infty = \max(|x_1|, |x_2|)$ pour $x=(x_1, x_2)$. Montrez que cette norme ne dérive pas d'un produit scalaire en utilisant l'identité du parallélogramme.

<details>
<summary>Solution</summary>

**Méthode:** Une norme $\| \cdot \|$ dérive d'un produit scalaire si et seulement si elle satisfait l'identité du parallélogramme pour tous vecteurs $x, y$:
$$ \|x + y\|^2 + \|x - y\|^2 = 2(\|x\|^2 + \|y\|^2) $$
Pour montrer que la norme infinie ne dérive pas d'un produit scalaire, il suffit de trouver un contre-exemple, c'est-à-dire une paire de vecteurs $x, y$ pour laquelle cette identité est fausse.

**Étapes:**

1.  **Choix de vecteurs simples:** Prenons les vecteurs de la base canonique, $x = (1, 0)$ et $y = (0, 1)$. Ils sont simples à manipuler et souvent efficaces pour trouver des contre-exemples.

2.  **Calcul des termes de gauche de l'identité:**
    - $x + y = (1, 0) + (0, 1) = (1, 1)$.
    - $x - y = (1, 0) - (0, 1) = (1, -1)$.
    - $\|x + y\|_\infty = \max(|1|, |1|) = 1$.
    - $\|x - y\|_\infty = \max(|1|, |-1|) = 1$.
    - Le membre de gauche est donc : $\|x + y\|_\infty^2 + \|x - y\|_\infty^2 = 1^2 + 1^2 = 2$.

3.  **Calcul des termes de droite de l'identité:**
    - $\|x\|_\infty = \max(|1|, |0|) = 1$.
    - $\|y\|_\infty = \max(|0|, |1|) = 1$.
    - Le membre de droite est donc : $2(\|x\|_\infty^2 + \|y\|_\infty^2) = 2(1^2 + 1^2) = 2(1+1) = 4$.

4.  **Comparaison:**
    Nous avons trouvé que le membre de gauche vaut 2, tandis que le membre de droite vaut 4.
    Comme $2 \neq 4$, l'identité du parallélogramme n'est pas vérifiée pour ces vecteurs.

**Réponse:** La norme infinie ne satisfait pas l'identité du parallélogramme, donc elle ne dérive pas d'un produit scalaire.

</details>

## Exercice 5: Calculs dans une Base Orthonormée

**Problème:** Soit $E$ un espace euclidien de dimension 3 et $\mathcal{B}=(e_1, e_2, e_3)$ une base orthonormée de $E$. On considère les vecteurs $u$ et $v$ dont les coordonnées dans $\mathcal{B}$ sont $u = (2, -3, 5)$ et $v = (1, 4, 2)$.
1. Calculez le produit scalaire $\langle u, v \rangle$.
2. Calculez les normes $\|u\|$ et $\|v\|$.
3. Les vecteurs $u$ et $v$ sont-ils orthogonaux ?

<details>
<summary>Solution</summary>

**Méthode:** L'un des grands avantages des bases orthonormées est qu'elles simplifient les calculs de produit scalaire et de norme. Les formules sont les mêmes que pour le produit scalaire usuel dans $\mathbb{R}^n$.
Si $x = (x_1, \dots, x_n)$ et $y = (y_1, \dots, y_n)$ dans une base orthonormée, alors :
- $\langle x, y \rangle = \sum_{i=1}^n x_i y_i$
- $\|x\|^2 = \sum_{i=1}^n x_i^2$

**Étapes:**

1.  **Calcul du produit scalaire:**
    Les coordonnées de $u$ sont $(u_1, u_2, u_3) = (2, -3, 5)$ et celles de $v$ sont $(v_1, v_2, v_3) = (1, 4, 2)$.
    $\langle u, v \rangle = u_1 v_1 + u_2 v_2 + u_3 v_3$
    $\langle u, v \rangle = (2)(1) + (-3)(4) + (5)(2)$
    $\langle u, v \rangle = 2 - 12 + 10 = 0$.

2.  **Calcul des normes:**
    - Pour le vecteur $u$:
    $\|u\|^2 = u_1^2 + u_2^2 + u_3^2 = 2^2 + (-3)^2 + 5^2 = 4 + 9 + 25 = 38$.
    Donc, $\|u\| = \sqrt{38}$.
    - Pour le vecteur $v$:
    $\|v\|^2 = v_1^2 + v_2^2 + v_3^2 = 1^2 + 4^2 + 2^2 = 1 + 16 + 4 = 21$.
    Donc, $\|v\| = \sqrt{21}$.

3.  **Vérification de l'orthogonalité:**
    Deux vecteurs sont orthogonaux si et seulement si leur produit scalaire est nul.
    D'après la question 1, nous avons calculé $\langle u, v \rangle = 0$.
    Par conséquent, les vecteurs $u$ et $v$ sont orthogonaux.

**Réponse:**
1.  $\langle u, v \rangle = 0$
2.  $\|u\| = \sqrt{38}$ et $\|v\| = \sqrt{21}$
3.  Oui, les vecteurs $u$ et $v$ sont orthogonaux.

</details>

## Exercice 6: Matrice de Gram

**Problème:** Dans l'espace $\mathbb{R}^2$ muni du produit scalaire usuel, on considère la base $\mathcal{B}' = (v_1, v_2)$ avec $v_1 = (1, 1)$ et $v_2 = (1, -1)$.
1. Calculez la matrice de Gram $G$ de cette base.
2. La base est-elle orthogonale ? Orthonormée ?
3. Utilisez la matrice $G$ pour calculer le produit scalaire $\langle x, y \rangle$ où $x = 2v_1 - v_2$ et $y = v_1 + 3v_2$.

<details>
<summary>Solution</summary>

**Méthode:** La matrice de Gram $G$ d'une base $(v_1, \dots, v_n)$ a pour coefficients $G_{ij} = \langle v_i, v_j \rangle$. Une fois $G$ calculée, le produit scalaire de deux vecteurs $x$ et $y$ dont les coordonnées dans cette base sont les vecteurs colonnes $X$ et $Y$ est donné par $\langle x, y \rangle = {}^tX G Y$.

**Étapes:**

1.  **Calcul de la matrice de Gram $G$:**
    $G_{11} = \langle v_1, v_1 \rangle = \langle (1,1), (1,1) \rangle = 1^2 + 1^2 = 2$.
    $G_{12} = \langle v_1, v_2 \rangle = \langle (1,1), (1,-1) \rangle = 1(1) + 1(-1) = 0$.
    $G_{21} = \langle v_2, v_1 \rangle = \langle (1,-1), (1,1) \rangle = 1(1) + (-1)(1) = 0$.
    $G_{22} = \langle v_2, v_2 \rangle = \langle (1,-1), (1,-1) \rangle = 1^2 + (-1)^2 = 2$.
    La matrice de Gram est donc $G = \begin{pmatrix} 2 & 0 \\ 0 & 2 \end{pmatrix}$.

2.  **Analyse de la base:**
    Une base est orthogonale si sa matrice de Gram est diagonale. Ici, $G_{12} = G_{21} = 0$, donc la base est orthogonale.
    Une base est orthonormée si sa matrice de Gram est la matrice identité. Ici, les termes diagonaux $G_{11}$ et $G_{22}$ ne sont pas égaux à 1. La base n'est donc pas orthonormée (les vecteurs ne sont pas de norme 1).

3.  **Calcul du produit scalaire via la matrice de Gram:**
    Les coordonnées de $x$ dans la base $\mathcal{B}'$ sont $X = \begin{pmatrix} 2 \\ -1 \end{pmatrix}$.
    Les coordonnées de $y$ dans la base $\mathcal{B}'$ sont $Y = \begin{pmatrix} 1 \\ 3 \end{pmatrix}$.
    Le produit scalaire est $\langle x, y \rangle = {}^tX G Y$.
    $\langle x, y \rangle = \begin{pmatrix} 2 & -1 \end{pmatrix} \begin{pmatrix} 2 & 0 \\ 0 & 2 \end{pmatrix} \begin{pmatrix} 1 \\ 3 \end{pmatrix}$
    $= \begin{pmatrix} 2 & -1 \end{pmatrix} \begin{pmatrix} 2(1) + 0(3) \\ 0(1) + 2(3) \end{pmatrix} = \begin{pmatrix} 2 & -1 \end{pmatrix} \begin{pmatrix} 2 \\ 6 \end{pmatrix}$
    $= 2(2) + (-1)(6) = 4 - 6 = -2$.

    **Vérification (calcul direct):**
    $x = 2(1,1) - (1,-1) = (2,2) - (1,-1) = (1,3)$.
    $y = 1(1,1) + 3(1,-1) = (1,1) + (3,-3) = (4,-2)$.
    $\langle x, y \rangle = \langle (1,3), (4,-2) \rangle = 1(4) + 3(-2) = 4 - 6 = -2$.
    Les deux méthodes donnent le même résultat.

**Réponse:**
1.  $G = \begin{pmatrix} 2 & 0 \\ 0 & 2 \end{pmatrix}$
2.  La base est orthogonale mais pas orthonormée.
3.  $\langle x, y \rangle = -2$

</details>

## Exercice 7: Procédé de Gram-Schmidt

**Problème:** Dans $\mathbb{R}^3$ muni du produit scalaire usuel, appliquez le procédé d'orthonormalisation de Gram-Schmidt à la base $\mathcal{B} = (v_1, v_2, v_3)$ où $v_1 = (1, 1, 0)$, $v_2 = (2, 0, 1)$ et $v_3 = (0, 1, 2)$.

<details>
<summary>Solution</summary>

**Méthode:** On construit la base orthonormée $(e_1, e_2, e_3)$ pas à pas.
1. On normalise $v_1$ pour obtenir $e_1$.
2. On orthogonalise $v_2$ par rapport à $e_1$ pour obtenir $e'_2$, puis on normalise $e'_2$ pour obtenir $e_2$.
3. On orthogonalise $v_3$ par rapport à $e_1$ et $e_2$ pour obtenir $e'_3$, puis on normalise $e'_3$ pour obtenir $e_3$.

**Étapes:**

1.  **Construction de $e_1$:**
    $\|v_1\|^2 = 1^2 + 1^2 + 0^2 = 2$. Donc $\|v_1\| = \sqrt{2}$.
    $e_1 = \frac{v_1}{\|v_1\|} = \frac{1}{\sqrt{2}}(1, 1, 0)$.

2.  **Construction de $e_2$:**
    On calcule d'abord le vecteur $e'_2$ orthogonal à $e_1$.
    $e'_2 = v_2 - \langle v_2, e_1 \rangle e_1$.
    $\langle v_2, e_1 \rangle = \langle (2,0,1), \frac{1}{\sqrt{2}}(1,1,0) \rangle = \frac{1}{\sqrt{2}}(2 \cdot 1 + 0 \cdot 1 + 1 \cdot 0) = \frac{2}{\sqrt{2}} = \sqrt{2}$.
    $e'_2 = (2,0,1) - \sqrt{2} \left( \frac{1}{\sqrt{2}}(1,1,0) \right) = (2,0,1) - (1,1,0) = (1, -1, 1)$.
    On normalise $e'_2$:
    $\|e'_2\|^2 = 1^2 + (-1)^2 + 1^2 = 3$. Donc $\|e'_2\| = \sqrt{3}$.
    $e_2 = \frac{e'_2}{\|e'_2\|} = \frac{1}{\sqrt{3}}(1, -1, 1)$.

3.  **Construction de $e_3$:**
    On calcule $e'_3 = v_3 - \langle v_3, e_1 \rangle e_1 - \langle v_3, e_2 \rangle e_2$.
    $\langle v_3, e_1 \rangle = \langle (0,1,2), \frac{1}{\sqrt{2}}(1,1,0) \rangle = \frac{1}{\sqrt{2}}(0 \cdot 1 + 1 \cdot 1 + 2 \cdot 0) = \frac{1}{\sqrt{2}}$.
    $\langle v_3, e_2 \rangle = \langle (0,1,2), \frac{1}{\sqrt{3}}(1,-1,1) \rangle = \frac{1}{\sqrt{3}}(0 \cdot 1 + 1 \cdot (-1) + 2 \cdot 1) = \frac{1}{\sqrt{3}}$.
    $e'_3 = (0,1,2) - \frac{1}{\sqrt{2}} e_1 - \frac{1}{\sqrt{3}} e_2$
    $e'_3 = (0,1,2) - \frac{1}{\sqrt{2}}\frac{1}{\sqrt{2}}(1,1,0) - \frac{1}{\sqrt{3}}\frac{1}{\sqrt{3}}(1,-1,1)$
    $e'_3 = (0,1,2) - \frac{1}{2}(1,1,0) - \frac{1}{3}(1,-1,1)$
    $e'_3 = (0 - \frac{1}{2} - \frac{1}{3}, 1 - \frac{1}{2} + \frac{1}{3}, 2 - 0 - \frac{1}{3}) = (-\frac{5}{6}, \frac{5}{6}, \frac{5}{3})$.
    On normalise $e'_3$:
    $\|e'_3\|^2 = (-\frac{5}{6})^2 + (\frac{5}{6})^2 + (\frac{5}{3})^2 = \frac{25}{36} + \frac{25}{36} + \frac{25}{9} = \frac{50}{36} + \frac{100}{36} = \frac{150}{36} = \frac{25}{6}$.
    $\|e'_3\| = \sqrt{\frac{25}{6}} = \frac{5}{\sqrt{6}}$.
    $e_3 = \frac{e'_3}{\|e'_3\|} = \frac{\sqrt{6}}{5}(-\frac{5}{6}, \frac{5}{6}, \frac{5}{3}) = \frac{\sqrt{6}}{6}(-1, 1, 2) = \frac{1}{\sqrt{6}}(-1, 1, 2)$.

**Réponse:** La base orthonormée obtenue est $(e_1, e_2, e_3)$ avec :
$e_1 = \frac{1}{\sqrt{2}}(1, 1, 0)$
$e_2 = \frac{1}{\sqrt{3}}(1, -1, 1)$
$e_3 = \frac{1}{\sqrt{6}}(-1, 1, 2)$

</details>

## Exercice 8: Supplémentaire Orthogonal

**Problème:** Dans l'espace euclidien $\mathbb{R}^4$ muni du produit scalaire usuel, soit $F$ le sous-espace engendré par les vecteurs $v_1 = (1, 0, 1, 0)$ et $v_2 = (0, 1, 1, 0)$. Déterminez une base de $F^\perp$, le supplémentaire orthogonal de $F$.

<details>
<summary>Solution</summary>

**Méthode:** Le supplémentaire orthogonal $F^\perp$ est l'ensemble des vecteurs $x \in \mathbb{R}^4$ qui sont orthogonaux à tous les vecteurs de $F$. Il suffit pour cela que $x$ soit orthogonal aux vecteurs d'une base de $F$.
Un vecteur $x = (x_1, x_2, x_3, x_4)$ appartient à $F^\perp$ si et seulement si $\langle x, v_1 \rangle = 0$ et $\langle x, v_2 \rangle = 0$. Cela nous donne un système d'équations linéaires à résoudre.

**Étapes:**

1.  **Écrire les conditions d'orthogonalité:**
    Soit $x = (x_1, x_2, x_3, x_4) \in F^\perp$.
    - $\langle x, v_1 \rangle = \langle (x_1, x_2, x_3, x_4), (1, 0, 1, 0) \rangle = x_1 + x_3 = 0$.
    - $\langle x, v_2 \rangle = \langle (x_1, x_2, x_3, x_4), (0, 1, 1, 0) \rangle = x_2 + x_3 = 0$.

2.  **Résoudre le système d'équations:**
    Nous avons le système :
    $$ \begin{cases} x_1 + x_3 = 0 \\ x_2 + x_3 = 0 \end{cases} $$
    De la première équation, on tire $x_1 = -x_3$.
    De la deuxième équation, on tire $x_2 = -x_3$.
    Les variables $x_3$ et $x_4$ peuvent être choisies librement. Ce sont les variables libres (ou paramètres).

3.  **Exprimer le vecteur générique de $F^\perp$:**
    Un vecteur $x \in F^\perp$ s'écrit donc :
    $x = (-x_3, -x_3, x_3, x_4)$ pour des scalaires $x_3, x_4 \in \mathbb{R}$.
    On peut décomposer ce vecteur en fonction des paramètres :
    $x = ( -x_3, -x_3, x_3, 0) + (0, 0, 0, x_4) = x_3(-1, -1, 1, 0) + x_4(0, 0, 0, 1)$.

4.  **Extraire une base de $F^\perp$:**
    Les vecteurs qui multiplient les paramètres forment une base de l'espace des solutions.
    Une base de $F^\perp$ est donc $(w_1, w_2)$ avec $w_1 = (-1, -1, 1, 0)$ et $w_2 = (0, 0, 0, 1)$.

5.  **Vérification:**
    On a $\dim(F)=2$ (car $v_1, v_2$ sont libres) et on a trouvé $\dim(F^\perp)=2$. On a bien $\dim(F) + \dim(F^\perp) = 2+2=4 = \dim(\mathbb{R}^4)$, ce qui est cohérent.

**Réponse:** Une base de $F^\perp$ est $\left( (-1, -1, 1, 0), (0, 0, 0, 1) \right)$.

</details>

## Exercice 9: Projection Orthogonale et Distance

**Problème:** Dans l'espace euclidien $\mathbb{R}^3$ muni du produit scalaire usuel, soit $F$ le sous-espace vectoriel (plan) d'équation $x - 2y + z = 0$. Soit le vecteur $v = (3, 3, 3)$.
1. Calculez la projection orthogonale $P_F(v)$ de $v$ sur le plan $F$.
2. Calculez la distance $d(v, F)$.

<details>
<summary>Solution</summary>

**Méthode:** Il y a deux approches principales :
1. Trouver une base orthonormée de $F$ et utiliser la formule $P_F(v) = \sum \langle v, e_i \rangle e_i$.
2. Travailler avec le supplémentaire orthogonal $F^\perp$. C'est souvent plus simple si $F^\perp$ est de petite dimension. Ici, $F$ est un plan dans $\mathbb{R}^3$, donc $F^\perp$ est une droite.
On utilise la relation $v = P_F(v) + P_{F^\perp}(v)$, donc $P_F(v) = v - P_{F^\perp}(v)$. La distance est alors $d(v, F) = \|v - P_F(v)\| = \|P_{F^\perp}(v)\|$.

**Étapes (Méthode 2):**

1.  **Déterminer une base de $F^\perp$:**
    Le plan $F$ a pour équation $1x - 2y + 1z = 0$. Les coefficients $(1, -2, 1)$ forment un vecteur normal au plan. Ce vecteur normal, $n=(1, -2, 1)$, est une base de $F^\perp$.
    Donc $F^\perp = \text{Vect}(n)$.

2.  **Calculer la projection sur $F^\perp$:**
    La projection de $v$ sur la droite $F^\perp$ est donnée par la formule :
    $P_{F^\perp}(v) = \frac{\langle v, n \rangle}{\|n\|^2} n$.
    - $\langle v, n \rangle = \langle (3,3,3), (1,-2,1) \rangle = 3(1) + 3(-2) + 3(1) = 3 - 6 + 3 = 0$.

3.  **Analyse du résultat:**
    Le produit scalaire $\langle v, n \rangle$ est nul. Cela signifie que le vecteur $v$ est orthogonal au vecteur $n$. Puisque $n$ engendre $F^\perp$, le vecteur $v$ est orthogonal à $F^\perp$.
    Par définition de $F = (F^\perp)^\perp$, cela signifie que le vecteur $v$ est en fait DÉJÀ dans le plan $F$.

4.  **Calcul de la projection sur $F$ et de la distance:**
    - Puisque $v \in F$, sa projection sur $F$ est lui-même : $P_F(v) = v = (3,3,3)$.
    - La distance d'un point à un sous-espace auquel il appartient est nulle. $d(v, F) = 0$.
    On peut le retrouver avec les formules :
    $P_{F^\perp}(v) = \frac{0}{\|n\|^2} n = (0,0,0)$.
    $P_F(v) = v - P_{F^\perp}(v) = (3,3,3) - (0,0,0) = (3,3,3)$.
    $d(v, F) = \|P_{F^\perp}(v)\| = \|(0,0,0)\| = 0$.

**Réponse:**
1. La projection orthogonale de $v$ sur $F$ est $P_F(v) = (3, 3, 3)$.
2. La distance de $v$ à $F$ est $d(v, F) = 0$.

</details>

## Exercice 10: Adjoint d'un Endomorphisme

**Problème:** Soit $f$ un endomorphisme de l'espace euclidien $\mathbb{R}^3$ dont la matrice dans la base canonique (qui est orthonormée) est :
$$ A = \begin{pmatrix} 0 & 1 & 2 \\ -1 & 0 & 3 \\ -2 & -3 & 0 \end{pmatrix} $$
Déterminer la matrice de l'endomorphisme adjoint $f^*$ dans la même base.

<details>
<summary>Solution</summary>

**Méthode:** Dans un espace euclidien, si la matrice d'un endomorphisme $f$ dans une base **orthonormée** est $A$, alors la matrice de son adjoint $f^*$ dans la même base est la matrice transposée de $A$, notée ${}^tA$.

**Étapes:**

1.  **Vérifier la condition sur la base:**
    Le problème stipule que la matrice $A$ est donnée dans la base canonique de $\mathbb{R}^3$. Le produit scalaire est l'usuel, pour lequel la base canonique est bien orthonormée. On peut donc appliquer la formule directement.

2.  **Calculer la transposée de la matrice $A$:**
    Pour obtenir la transposée d'une matrice, on échange les lignes et les colonnes. La première ligne de $A$ devient la première colonne de ${}^tA$, la deuxième ligne de $A$ devient la deuxième colonne de ${}^tA$, et ainsi de suite.
    $A = \begin{pmatrix} 0 & 1 & 2 \\ -1 & 0 & 3 \\ -2 & -3 & 0 \end{pmatrix}$
    La matrice de $f^*$, notée $A^*$, est :
    $A^* = {}^tA = \begin{pmatrix} 0 & -1 & -2 \\ 1 & 0 & -3 \\ 2 & 3 & 0 \end{pmatrix}$.

**Réponse:** La matrice de l'adjoint $f^*$ dans la base canonique est $\begin{pmatrix} 0 & -1 & -2 \\ 1 & 0 & -3 \\ 2 & 3 & 0 \end{pmatrix}$.

</details>

## Exercice 11: Endomorphismes Remarquables

**Problème:** Soit $f$ un endomorphisme de l'espace hermitien $\mathbb{C}^2$ dont la matrice dans la base canonique (orthonormée) est :
$$ A = \frac{1}{2} \begin{pmatrix} 1+i & 1-i \\ 1-i & 1+i \end{pmatrix} $$
L'endomorphisme $f$ est-il auto-adjoint ? Unitaire ? Normal ?

<details>
<summary>Solution</summary>

**Méthode:** On doit calculer la matrice adjointe $A^* = \overline{{}^tA}$ et la comparer à $A$ et à $A^{-1}$.
- $f$ est **auto-adjoint** si $A = A^*$.
- $f$ est **unitaire** si $A^*A = I$.
- $f$ est **normal** si $A^*A = AA^*$.
Note: Si $f$ est auto-adjoint ou unitaire, il est automatiquement normal.

**Étapes:**

1.  **Calcul de la matrice adjointe $A^*$:**
    $A = \frac{1}{2} \begin{pmatrix} 1+i & 1-i \\ 1-i & 1+i \end{pmatrix}$
    - Transposée: ${}^tA = \frac{1}{2} \begin{pmatrix} 1+i & 1-i \\ 1-i & 1+i \end{pmatrix} = A$. La matrice est symétrique.
    - Conjuguée de la transposée: $A^* = \overline{{}^tA} = \frac{1}{2} \begin{pmatrix} \overline{1+i} & \overline{1-i} \\ \overline{1-i} & \overline{1+i} \end{pmatrix} = \frac{1}{2} \begin{pmatrix} 1-i & 1+i \\ 1+i & 1-i \end{pmatrix}$.

2.  **Vérifier si $f$ est auto-adjoint:**
    On compare $A$ et $A^*$.
    $A = \frac{1}{2} \begin{pmatrix} 1+i & 1-i \\ 1-i & 1+i \end{pmatrix}$ et $A^* = \frac{1}{2} \begin{pmatrix} 1-i & 1+i \\ 1+i & 1-i \end{pmatrix}$.
    Clairement, $A \neq A^*$. Donc $f$ n'est pas auto-adjoint.

3.  **Vérifier si $f$ est unitaire:**
    On calcule le produit $A^*A$.
    $A^*A = \left(\frac{1}{2} \begin{pmatrix} 1-i & 1+i \\ 1+i & 1-i \end{pmatrix}\right) \left(\frac{1}{2} \begin{pmatrix} 1+i & 1-i \\ 1-i & 1+i \end{pmatrix}\right)$
    $A^*A = \frac{1}{4} \begin{pmatrix} (1-i)(1+i) + (1+i)(1-i) & (1-i)^2 + (1+i)^2 \\ (1+i)^2 + (1-i)^2 & (1+i)(1-i) + (1-i)(1+i) \end{pmatrix}$
    Calculons les termes :
    - $(1-i)(1+i) = 1^2 - i^2 = 1 - (-1) = 2$.
    - $(1-i)^2 = 1 - 2i + i^2 = 1 - 2i - 1 = -2i$.
    - $(1+i)^2 = 1 + 2i + i^2 = 1 + 2i - 1 = 2i$.
    En remplaçant dans la matrice :
    $A^*A = \frac{1}{4} \begin{pmatrix} 2 + 2 & -2i + 2i \\ 2i - 2i & 2 + 2 \end{pmatrix} = \frac{1}{4} \begin{pmatrix} 4 & 0 \\ 0 & 4 \end{pmatrix} = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix} = I$.
    Puisque $A^*A = I$, l'endomorphisme $f$ est unitaire.

4.  **Vérifier si $f$ est normal:**
    Puisque $f$ est unitaire, il est automatiquement normal. En effet, si $A^*A=I$, alors $A$ est inversible et $A^{-1}=A^*$. En multipliant $A^*A=I$ par $A$ à droite, on obtient $A^*AA=A$, donc $A^*I=A$, soit $A^*=A$. Oops, non. $A^{-1}A = A A^{-1} = I$. Si $A^{-1}=A^*$, alors $A^*A = A A^* = I$. Donc la condition $A^*A=I$ implique $AA^*=I$ et donc $AA^*=A^*A$.

**Réponse:** L'endomorphisme $f$ n'est pas auto-adjoint, mais il est unitaire et donc aussi normal.

</details>

## Exercice 12: Théorème de Représentation de Riesz

**Problème:** Dans l'espace euclidien $\mathbb{R}_2[X]$ des polynômes de degré au plus 2, on définit le produit scalaire $\langle P, Q \rangle = \int_0^1 P(t)Q(t)dt$. Soit $l$ la forme linéaire définie par $l(P) = P'(0)$ (la valeur de la dérivée en 0).
Trouvez le polynôme $R \in \mathbb{R}_2[X]$ qui représente $l$ selon le théorème de Riesz, c'est-à-dire tel que $l(P) = \langle P, R \rangle$ pour tout $P \in \mathbb{R}_2[X]$.

<details>
<summary>Solution</summary>

**Méthode:** On cherche un polynôme $R(t) = at^2 + bt + c$ tel que pour tout polynôme $P(t)$, on ait $P'(0) = \int_0^1 P(t)(at^2+bt+c)dt$.
Pour déterminer les coefficients $a,b,c$, il suffit de tester cette égalité sur les polynômes d'une base de $\mathbb{R}_2[X]$. La base canonique $(1, t, t^2)$ est la plus simple.

**Étapes:**

1.  **Tester l'égalité sur $P(t)=1$:**
    $P'(t) = 0$, donc $l(P) = P'(0) = 0$.
    $\langle P, R \rangle = \int_0^1 1 \cdot (at^2+bt+c)dt = \left[ \frac{at^3}{3} + \frac{bt^2}{2} + ct \right]_0^1 = \frac{a}{3} + \frac{b}{2} + c$.
    On obtient une première équation: $\frac{a}{3} + \frac{b}{2} + c = 0$.

2.  **Tester l'égalité sur $P(t)=t$:**
    $P'(t) = 1$, donc $l(P) = P'(0) = 1$.
    $\langle P, R \rangle = \int_0^1 t \cdot (at^2+bt+c)dt = \int_0^1 (at^3+bt^2+ct)dt = \left[ \frac{at^4}{4} + \frac{bt^3}{3} + \frac{ct^2}{2} \right]_0^1 = \frac{a}{4} + \frac{b}{3} + \frac{c}{2}$.
    On obtient une deuxième équation: $\frac{a}{4} + \frac{b}{3} + \frac{c}{2} = 1$.

3.  **Tester l'égalité sur $P(t)=t^2$:**
    $P'(t) = 2t$, donc $l(P) = P'(0) = 2(0) = 0$.
    $\langle P, R \rangle = \int_0^1 t^2 \cdot (at^2+bt+c)dt = \int_0^1 (at^4+bt^3+ct^2)dt = \left[ \frac{at^5}{5} + \frac{bt^4}{4} + \frac{ct^3}{3} \right]_0^1 = \frac{a}{5} + \frac{b}{4} + \frac{c}{3}$.
    On obtient une troisième équation: $\frac{a}{5} + \frac{b}{4} + \frac{c}{3} = 0$.

4.  **Résoudre le système d'équations:**
    On a le système :
    (1) $2a + 3b + 6c = 0$
    (2) $3a + 4b + 6c = 12$
    (3) $12a + 15b + 20c = 0$
    
    (2) - (1) donne: $a + b = 12 \implies b = 12 - a$.
    
    Remplaçons $b$ dans (1) et (3):
    $2a + 3(12-a) + 6c = 0 \implies 2a + 36 - 3a + 6c = 0 \implies -a + 6c = -36 \implies a = 6c + 36$.
    $12a + 15(12-a) + 20c = 0 \implies 12a + 180 - 15a + 20c = 0 \implies -3a + 20c = -180$.
    
    Substituons $a = 6c+36$ dans cette dernière équation :
    $-3(6c+36) + 20c = -180$
    $-18c - 108 + 20c = -180$
    $2c = -72 \implies c = -36$.
    
    Maintenant, on trouve $a$ et $b$:
    $a = 6(-36) + 36 = -216 + 36 = -180$.
    $b = 12 - a = 12 - (-180) = 192$.
    
    Le polynôme de Riesz est donc $R(t) = -180t^2 + 192t - 36$.

**Réponse:** Le polynôme représentant la forme linéaire $l$ est $R(t) = -180t^2 + 192t - 36$.

</details>
