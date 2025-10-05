---
id: '9c7d1e0f'
title: Exercices (avancé)
layout: '../../../../layouts/Layout.astro'
order: 21
level: regular
chapter: Concepts
course: Géométrie
---

# Exercices: Concepts

## Exercice 1: Problème de Calcul (Isométrie)

**Problème:** Soit l'endomorphisme $f$ de $\mathbb{R}^3$ représenté dans la base canonique par la matrice $A = \begin{pmatrix} 0 & 1 & 0 \\ 0 & 0 & 1 \\ 1 & 0 & 0 \end{pmatrix}$. Montrez que $f$ est une isométrie en vérifiant que ${}^tA A = I_3$.

<details>
<summary>Solution</summary>

**Méthode:** Une des caractérisations d'une isométrie représentée par une matrice $A$ dans une base orthonormée est que sa matrice est orthogonale, c'est-à-dire qu'elle vérifie la relation ${}^tA A = I$, où ${}^tA$ est la transposée de $A$ et $I$ est la matrice identité. Nous allons calculer le produit de la transposée de $A$ par $A$ et vérifier si le résultat est la matrice identité d'ordre 3.

**Étapes:**

1.  **Calculer la transposée de A.**
    La transposée d'une matrice s'obtient en échangeant ses lignes et ses colonnes.
    $$ A = \begin{pmatrix} 0 & 1 & 0 \\ 0 & 0 & 1 \\ 1 & 0 & 0 \end{pmatrix} \implies {}^tA = \begin{pmatrix} 0 & 0 & 1 \\ 1 & 0 & 0 \\ 0 & 1 & 0 \end{pmatrix} $$

2.  **Calculer le produit ${}^tA A$.**
    On multiplie la matrice transposée ${}^tA$ par la matrice $A$.
    $$ {}^tA A = \begin{pmatrix} 0 & 0 & 1 \\ 1 & 0 & 0 \\ 0 & 1 & 0 \end{pmatrix} \begin{pmatrix} 0 & 1 & 0 \\ 0 & 0 & 1 \\ 1 & 0 & 0 \end{pmatrix} $$
    Calculons chaque coefficient du produit :

    - Coefficient (1,1) : $(0)(0) + (0)(0) + (1)(1) = 1$
    - Coefficient (1,2) : $(0)(1) + (0)(0) + (1)(0) = 0$
    - Coefficient (1,3) : $(0)(0) + (0)(1) + (1)(0) = 0$
    - Coefficient (2,1) : $(1)(0) + (0)(0) + (0)(1) = 0$
    - Coefficient (2,2) : $(1)(1) + (0)(0) + (0)(0) = 1$
    - Coefficient (2,3) : $(1)(0) + (0)(1) + (0)(0) = 0$
    - Coefficient (3,1) : $(0)(0) + (1)(0) + (0)(1) = 0$
    - Coefficient (3,2) : $(0)(1) + (1)(0) + (0)(0) = 0$
    - Coefficient (3,3) : $(0)(0) + (1)(1) + (0)(0) = 1$

3.  **Comparer le résultat à la matrice identité.**
    Le résultat du produit est :
    $$ {}^tA A = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix} = I_3 $$
    Puisque la condition ${}^tA A = I_3$ est satisfaite, l'endomorphisme $f$ représenté par $A$ est bien une isométrie.

**Réponse:** Le calcul montre que ${}^tA A = I_3$, ce qui prouve que l'endomorphisme $f$ est une isométrie de $\mathbb{R}^3$.

</details>

## Exercice 2: Question Conceptuelle (Isométrie)

**Problème:** Soit $f$ un endomorphisme d'un espace euclidien $E$. Démontrez que si $f$ conserve le produit scalaire, alors $f$ est une isométrie (c'est-à-dire, $f$ conserve la norme).

<details>
<summary>Solution</summary>

**Méthode:** La démonstration repose sur la définition de la norme d'un vecteur en termes de produit scalaire : $\|x\|^2 = \varphi(x, x)$. Nous utiliserons l'hypothèse que $f$ conserve le produit scalaire pour montrer qu'elle conserve la norme au carré, et donc la norme.

**Étapes:**

1.  **Énoncer l'hypothèse.**
    On suppose que $f$ conserve le produit scalaire, ce qui signifie que pour tous vecteurs $x, y \in E$, on a :
    $$ \varphi(f(x), f(y)) = \varphi(x, y) $$

2.  **Énoncer l'objectif.**
    On veut montrer que $f$ est une isométrie, c'est-à-dire que pour tout vecteur $x \in E$, on a :
    $$ \|f(x)\| = \|x\| $$

3.  **Utiliser la définition de la norme.**
    La norme au carré d'un vecteur $v$ est $\|v\|^2 = \varphi(v, v)$. Appliquons cette définition à $\|f(x)\|^2$.
    $$ \|f(x)\|^2 = \varphi(f(x), f(x)) $$

4.  **Appliquer l'hypothèse.**
    En utilisant l'hypothèse que $f$ conserve le produit scalaire avec $y = x$, on peut réécrire le terme de droite :
    $$ \varphi(f(x), f(x)) = \varphi(x, x) $$

5.  **Conclure.**
    En combinant les étapes 3 et 4, on obtient :
    $$ \|f(x)\|^2 = \|x\|^2 $$
    Puisque la norme d'un vecteur est toujours un nombre réel positif ou nul, on peut prendre la racine carrée des deux côtés :
    $$ \|f(x)\| = \|x\| $$
    Ceci est la définition d'une isométrie. La démonstration est terminée.

**Réponse:** En utilisant la définition de la norme $\|v\|^2 = \varphi(v,v)$ et l'hypothèse $\varphi(f(x), f(y)) = \varphi(x, y)$ pour le cas particulier $y=x$, on obtient $\|f(x)\|^2 = \varphi(f(x), f(x)) = \varphi(x, x) = \|x\|^2$, d'où $\|f(x)\| = \|x\|$.

</details>

## Exercice 3: Problème de Calcul (Groupes Orthogonaux)

**Problème:** Déterminez la valeur du réel $a$ pour que la matrice suivante soit un membre du groupe orthogonal $O_3(\mathbb{R})$ :
$$ M = \begin{pmatrix} a & a & 0 \\ a & -a & 0 \\ 0 & 0 & 1 \end{pmatrix} $$

<details>
<summary>Solution</summary>

**Méthode:** Une matrice appartient au groupe orthogonal $O_n(\mathbb{R})$ si et seulement si ses vecteurs colonnes forment une base orthonormée de $\mathbb{R}^n$. Cela signifie que chaque colonne doit être un vecteur de norme 1, et les colonnes doivent être deux à deux orthogonales. Nous allons appliquer ces conditions aux colonnes de $M$.

**Étapes:**

1.  **Identifier les vecteurs colonnes.**
    Soient $C_1, C_2, C_3$ les vecteurs colonnes de $M$ :
    $$ C_1 = \begin{pmatrix} a \\ a \\ 0 \end{pmatrix}, \quad C_2 = \begin{pmatrix} a \\ -a \\ 0 \end{pmatrix}, \quad C_3 = \begin{pmatrix} 0 \\ 0 \\ 1 \end{pmatrix} $$

2.  **Appliquer la condition de normalité (norme 1).**

    - Pour $C_1$ : $\|C_1\|^2 = a^2 + a^2 + 0^2 = 2a^2$. Pour que la norme soit 1, il faut $2a^2=1$.
    - Pour $C_2$ : $\|C_2\|^2 = a^2 + (-a)^2 + 0^2 = 2a^2$. C'est la même condition : $2a^2=1$.
    - Pour $C_3$ : $\|C_3\|^2 = 0^2 + 0^2 + 1^2 = 1$. Cette colonne est déjà de norme 1.

3.  **Résoudre l'équation pour $a$.**
    L'équation $2a^2 = 1$ donne $a^2 = 1/2$. Les solutions possibles pour $a$ sont donc $a = \frac{1}{\sqrt{2}}$ et $a = -\frac{1}{\sqrt{2}}$.

4.  **Appliquer la condition d'orthogonalité.**
    Nous devons vérifier que les produits scalaires entre les colonnes distinctes sont nuls.

    - $\langle C_1, C_2 \rangle = (a)(a) + (a)(-a) + (0)(0) = a^2 - a^2 = 0$. Cette condition est toujours vérifiée.
    - $\langle C_1, C_3 \rangle = (a)(0) + (a)(0) + (0)(1) = 0$. Cette condition est toujours vérifiée.
    - $\langle C_2, C_3 \rangle = (a)(0) + (-a)(0) + (0)(1) = 0$. Cette condition est toujours vérifiée.
      Toutes les conditions d'orthogonalité sont satisfaites quel que soit $a$.

5.  **Conclure.**
    La seule condition non triviale est $2a^2=1$. Les valeurs possibles pour $a$ sont donc $\frac{1}{\sqrt{2}}$ (ou $\frac{\sqrt{2}}{2}$) et $-\frac{1}{\sqrt{2}}$ (ou $-\frac{\sqrt{2}}{2}$).

**Réponse:** Les valeurs possibles pour $a$ sont $\pm\frac{1}{\sqrt{2}}$, soit $a=\frac{\sqrt{2}}{2}$ ou $a=-\frac{\sqrt{2}}{2}$.

</details>

## Exercice 4: Application (Isométries du plan)

**Problème:** Considérez la matrice $M = \frac{1}{2}\begin{pmatrix} \sqrt{3} & -1 \\ 1 & \sqrt{3} \end{pmatrix}$.

1. Vérifiez que $M \in O_2(\mathbb{R})$.
2. Déterminez si $M \in SO_2(\mathbb{R})$.
3. Identifiez la nature géométrique de la transformation représentée par $M$.

<details>
<summary>Solution</summary>

**Méthode:** Pour la première question, nous vérifions si $M$ est orthogonale en calculant ${}^tM M$. Pour la deuxième, nous calculons le déterminant de $M$. Pour la troisième, nous utilisons le déterminant pour identifier la transformation (rotation ou réflexion) et, si c'est une rotation, nous identifions l'angle en comparant $M$ à la forme générale d'une matrice de rotation.

**Étapes:**

1.  **Vérifier que $M \in O_2(\mathbb{R})$.**
    Calculons ${}^tM M$.
    $$ M = \begin{pmatrix} \sqrt{3}/2 & -1/2 \\ 1/2 & \sqrt{3}/2 \end{pmatrix} \implies {}^tM = \begin{pmatrix} \sqrt{3}/2 & 1/2 \\ -1/2 & \sqrt{3}/2 \end{pmatrix} $$
    $$ {}^tM M = \begin{pmatrix} \sqrt{3}/2 & 1/2 \\ -1/2 & \sqrt{3}/2 \end{pmatrix} \begin{pmatrix} \sqrt{3}/2 & -1/2 \\ 1/2 & \sqrt{3}/2 \end{pmatrix} $$
    $$ {}^tM M = \begin{pmatrix} (\frac{\sqrt{3}}{2})^2 + (\frac{1}{2})^2 & -\frac{\sqrt{3}}{4} + \frac{\sqrt{3}}{4} \\ -\frac{\sqrt{3}}{4} + \frac{\sqrt{3}}{4} & (\frac{-1}{2})^2 + (\frac{\sqrt{3}}{2})^2 \end{pmatrix} = \begin{pmatrix} \frac{3}{4} + \frac{1}{4} & 0 \\ 0 & \frac{1}{4} + \frac{3}{4} \end{pmatrix} = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix} = I_2 $$
    La matrice $M$ est bien orthogonale, donc $M \in O_2(\mathbb{R})$.

2.  **Déterminer si $M \in SO_2(\mathbb{R})$.**
    Le groupe spécial orthogonal $SO_2(\mathbb{R})$ contient les matrices de $O_2(\mathbb{R})$ dont le déterminant est $+1$. Calculons $\det(M)$.
    $$ \det(M) = (\frac{\sqrt{3}}{2})(\frac{\sqrt{3}}{2}) - (-\frac{1}{2})(\frac{1}{2}) = \frac{3}{4} + \frac{1}{4} = 1 $$
    Puisque $\det(M) = 1$, on a $M \in SO_2(\mathbb{R})$.

3.  **Identifier la nature géométrique.**
    Les matrices de $SO_2(\mathbb{R})$ représentent des rotations du plan. Une matrice de rotation d'angle $\theta$ a la forme $R(\theta) = \begin{pmatrix} \cos(\theta) & -\sin(\theta) \\ \sin(\theta) & \cos(\theta) \end{pmatrix}$.
    En comparant avec notre matrice $M = \begin{pmatrix} \sqrt{3}/2 & -1/2 \\ 1/2 & \sqrt{3}/2 \end{pmatrix}$, nous devons trouver $\theta$ tel que :
    $$ \cos(\theta) = \frac{\sqrt{3}}{2} \quad \text{et} \quad \sin(\theta) = \frac{1}{2} $$
    L'unique angle $\theta \in [0, 2\pi)$ qui satisfait ces deux conditions est $\theta = \pi/6$ (ou 30°).
    La transformation est donc une rotation d'angle $\pi/6$.

**Réponse:**

1. $M \in O_2(\mathbb{R})$ car ${}^tM M = I_2$.
2. $M \in SO_2(\mathbb{R})$ car $\det(M) = 1$.
3. La transformation est une rotation plane d'angle $\theta = \pi/6$.

</details>

## Exercice 5: Problème de Calcul (Angle entre vecteurs)

**Problème:** Dans l'espace euclidien $\mathbb{R}^3$, calculez l'angle non-orienté $\theta$ entre les vecteurs $u = (2, 2, -1)$ et $v = (1, -2, 2)$.

<details>
<summary>Solution</summary>

**Méthode:** L'angle non-orienté $\theta$ entre deux vecteurs non nuls $u$ et $v$ est donné par la formule $\theta = \arccos\left(\frac{\langle u, v \rangle}{\|u\|\|v\|}\right)$. Nous devons calculer le produit scalaire $\langle u, v \rangle$, les normes $\|u\|$ et $\|v\|$, puis appliquer la formule.

**Étapes:**

1.  **Calculer le produit scalaire $\langle u, v \rangle$.**
    $$ \langle u, v \rangle = (2)(1) + (2)(-2) + (-1)(2) = 2 - 4 - 2 = -4 $$

2.  **Calculer la norme de chaque vecteur.**

    - Pour $u$: $\|u\| = \sqrt{2^2 + 2^2 + (-1)^2} = \sqrt{4 + 4 + 1} = \sqrt{9} = 3$.
    - Pour $v$: $\|v\| = \sqrt{1^2 + (-2)^2 + 2^2} = \sqrt{1 + 4 + 4} = \sqrt{9} = 3$.

3.  **Calculer le cosinus de l'angle.**
    $$ \cos(\theta) = \frac{\langle u, v \rangle}{\|u\|\|v\|} = \frac{-4}{3 \cdot 3} = -\frac{4}{9} $$

4.  **Trouver l'angle $\theta$.**
    $$ \theta = \arccos\left(-\frac{4}{9}\right) $$
    La valeur exacte est $\arccos(-4/9)$. En utilisant une calculatrice, on obtient une valeur approchée.
    $\theta \approx 2.03$ radians, soit environ $116.4^\circ$.

**Réponse:** L'angle non-orienté entre les vecteurs $u$ et $v$ est $\theta = \arccos\left(-\frac{4}{9}\right)$.

</details>

## Exercice 6: Application (Angle Orienté)

**Problème:** Dans le plan euclidien $\mathbb{R}^2$ orienté par la base canonique, calculez l'angle orienté $\tilde{\theta}$ du vecteur $x = (\sqrt{3}, 1)$ vers le vecteur $y = (0, 2)$.

<details>
<summary>Solution</summary>

**Méthode:** L'angle orienté $\tilde{\theta}$ de $x$ vers $y$ est défini par le système d'équations :
$\cos(\tilde{\theta}) = \frac{\langle x, y \rangle}{\|x\|\|y\|}$ et $\sin(\tilde{\theta}) = \frac{\det(x, y)}{\|x\|\|y\|}$.
Nous allons calculer tous les termes de ces deux expressions pour déterminer $\cos(\tilde{\theta})$ et $\sin(\tilde{\theta})$, puis en déduire l'angle $\tilde{\theta}$.

**Étapes:**

1.  **Calculer les normes des vecteurs.**

    - $\|x\| = \sqrt{(\sqrt{3})^2 + 1^2} = \sqrt{3 + 1} = \sqrt{4} = 2$.
    - $\|y\| = \sqrt{0^2 + 2^2} = \sqrt{4} = 2$.

2.  **Calculer le produit scalaire.**
    $$ \langle x, y \rangle = (\sqrt{3})(0) + (1)(2) = 2 $$

3.  **Calculer le déterminant.**
    Le déterminant est calculé dans la base canonique, qui est directe.
    $$ \det(x, y) = \begin{vmatrix} \sqrt{3} & 0 \\ 1 & 2 \end{vmatrix} = (\sqrt{3})(2) - (0)(1) = 2\sqrt{3} $$

4.  **Calculer $\cos(\tilde{\theta})$ et $\sin(\tilde{\theta})$.**

    - $\cos(\tilde{\theta}) = \frac{\langle x, y \rangle}{\|x\|\|y\|} = \frac{2}{2 \cdot 2} = \frac{1}{2}$.
    - $\sin(\tilde{\theta}) = \frac{\det(x, y)}{\|x\|\|y\|} = \frac{2\sqrt{3}}{2 \cdot 2} = \frac{\sqrt{3}}{2}$.

5.  **Déterminer l'angle $\tilde{\theta}$.**
    Nous cherchons l'angle $\tilde{\theta}$ (généralement dans $[0, 2\pi)$ ou $(-\pi, \pi]$) tel que $\cos(\tilde{\theta}) = 1/2$ et $\sin(\tilde{\theta}) = \sqrt{3}/2$.
    L'unique solution dans $[0, 2\pi)$ est $\tilde{\theta} = \pi/3$.

**Réponse:** L'angle orienté du vecteur $x$ vers le vecteur $y$ est $\tilde{\theta} = \frac{\pi}{3}$ radians (ou 60°).

</details>

## Exercice 7: Application (Isométries de l'espace)

**Problème:** Soit l'isométrie de $\mathbb{R}^3$ dont la matrice dans la base canonique est $M = \begin{pmatrix} 0 & 0 & 1 \\ 1 & 0 & 0 \\ 0 & 1 & 0 \end{pmatrix}$.

1. Vérifiez que $M \in SO_3(\mathbb{R})$.
2. Déterminez l'axe de la rotation.
3. Déterminez l'angle $\theta$ de la rotation.

<details>
<summary>Solution</summary>

**Méthode:**

1. Pour vérifier que $M \in SO_3(\mathbb{R})$, nous devons montrer que $M$ est orthogonale (${}^tM M = I_3$) et que son déterminant est 1.
2. L'axe de rotation est la droite de vecteurs invariants, c'est-à-dire l'espace propre associé à la valeur propre 1. Nous devons résoudre l'équation $Mx = x$, soit $(M - I_3)x = 0$.
3. L'angle de rotation $\theta$ est lié à la trace de la matrice par la formule $\text{Tr}(M) = 1 + 2\cos(\theta)$.

**Étapes:**

1.  **Vérifier que $M \in SO_3(\mathbb{R})$.**

    - Orthogonalité : $M$ est une matrice de permutation, on a déjà vu dans l'exercice 1 que ce type de matrice est orthogonal (${}^tM M = I_3$).
    - Déterminant : $\det(M) = 0(0) - 0(1) + 1(1) = 1$.
      Puisque $M$ est orthogonale et $\det(M)=1$, $M \in SO_3(\mathbb{R})$, c'est donc une rotation.

2.  **Déterminer l'axe de rotation.**
    On cherche un vecteur $x = (a, b, c)$ tel que $Mx = x$.
    $$ \begin{pmatrix} 0 & 0 & 1 \\ 1 & 0 & 0 \\ 0 & 1 & 0 \end{pmatrix} \begin{pmatrix} a \\ b \\ c \end{pmatrix} = \begin{pmatrix} a \\ b \\ c \end{pmatrix} \implies \begin{pmatrix} c \\ a \\ b \end{pmatrix} = \begin{pmatrix} a \\ b \\ c \end{pmatrix} $$
    Cela nous donne le système d'équations : $c=a$, $a=b$, $b=c$.
    Toutes ces équations se réduisent à $a=b=c$. Un vecteur directeur de l'axe est donc $(1, 1, 1)$. L'axe est la droite vectorielle engendrée par ce vecteur.

3.  **Déterminer l'angle de rotation.**
    Calculons la trace de $M$.
    $$ \text{Tr}(M) = 0 + 0 + 0 = 0 $$
    Utilisons la formule $\text{Tr}(M) = 1 + 2\cos(\theta)$.
    $$ 0 = 1 + 2\cos(\theta) \implies 2\cos(\theta) = -1 \implies \cos(\theta) = -1/2 $$
    Les angles possibles sont $\theta = 2\pi/3$ ou $\theta = -2\pi/3$. Le signe de l'angle dépend de l'orientation de l'axe, que nous n'avons pas fixée. On peut donner la valeur absolue de l'angle.

**Réponse:**
L'isométrie est une rotation d'axe dirigé par le vecteur $N=(1,1,1)$ et d'angle $\theta$ tel que $\cos(\theta) = -1/2$. L'angle de rotation est de $\frac{2\pi}{3}$ radians (120°).

</details>

## Exercice 8: Problème de Calcul (Produit Vectoriel)

**Problème:** Soient les vecteurs $U = (1, 2, 3)$ et $V = (4, 5, 6)$ dans $\mathbb{R}^3$.

1. Calculez le produit vectoriel $U \land V$.
2. Calculez l'aire du parallélogramme formé par les vecteurs $U$ et $V$.

<details>
<summary>Solution</summary>

**Méthode:**

1. Le produit vectoriel se calcule avec la formule en coordonnées :
   $U \land V = (u_2 v_3 - u_3 v_2, u_3 v_1 - u_1 v_3, u_1 v_2 - u_2 v_1)$.
2. L'aire du parallélogramme sous-tendu par $U$ et $V$ est égale à la norme de leur produit vectoriel, $\|U \land V\|$.

**Étapes:**

1.  **Calculer $U \land V$.**
    $$ U = (1, 2, 3) \quad V = (4, 5, 6) $$
    $$ U \land V = ( (2)(6) - (3)(5), (3)(4) - (1)(6), (1)(5) - (2)(4) ) $$
    $$ U \land V = (12 - 15, 12 - 6, 5 - 8) $$
    $$ U \land V = (-3, 6, -3) $$

2.  **Calculer l'aire du parallélogramme.**
    L'aire $A$ est la norme du vecteur que nous venons de calculer.
    $$ A = \|U \land V\| = \|(-3, 6, -3)\| $$
    $$ A = \sqrt{(-3)^2 + 6^2 + (-3)^2} = \sqrt{9 + 36 + 9} = \sqrt{54} $$
    On peut simplifier la racine carrée : $\sqrt{54} = \sqrt{9 \times 6} = 3\sqrt{6}$.

**Réponse:**

1. Le produit vectoriel est $U \land V = (-3, 6, -3)$.
2. L'aire du parallélogramme est $A = 3\sqrt{6}$ unités d'aire.

</details>

## Exercice 9: Application (Formule de Rodrigues)

**Problème:** Utilisez la formule de Rodrigues pour calculer l'image du vecteur $U=(2, 0, 0)$ par la rotation d'angle $\theta = \pi/2$ autour de l'axe dirigé par le vecteur unitaire $N = \frac{1}{\sqrt{2}}(0, 1, 1)$.

<details>
<summary>Solution</summary>

**Méthode:** La formule de Rodrigues donne l'image $\mathcal{R}(U)$ d'un vecteur $U$ par une rotation d'angle $\theta$ autour d'un axe dirigé par un vecteur unitaire $N$ :
$$ \mathcal{R}(U) = \cos(\theta)U + (1 - \cos(\theta))\langle U, N \rangle N + \sin(\theta)N \land U $$
Nous allons calculer chaque terme de cette formule.

**Étapes:**

1.  **Identifier les données.**

    - $U = (2, 0, 0)$
    - $N = (0, 1/\sqrt{2}, 1/\sqrt{2})$
    - $\theta = \pi/2$, donc $\cos(\theta) = 0$ et $\sin(\theta) = 1$.

2.  **Simplifier la formule pour $\theta=\pi/2$.**
    Quand $\cos(\theta)=0$ et $\sin(\theta)=1$, la formule devient :
    $$ \mathcal{R}(U) = (0)U + (1-0)\langle U, N \rangle N + (1)N \land U = \langle U, N \rangle N + N \land U $$

3.  **Calculer le produit scalaire $\langle U, N \rangle$.**
    $$ \langle U, N \rangle = (2)(0) + (0)(1/\sqrt{2}) + (0)(1/\sqrt{2}) = 0 $$

4.  **Calculer le produit vectoriel $N \land U$.**
    $$ N \land U = (0, 1/\sqrt{2}, 1/\sqrt{2}) \land (2, 0, 0) $$
    $$ N \land U = \left( \frac{1}{\sqrt{2}}(0) - \frac{1}{\sqrt{2}}(0), \frac{1}{\sqrt{2}}(2) - (0)(0), (0)(0) - \frac{1}{\sqrt{2}}(2) \right) $$
    $$ N \land U = (0, 2/\sqrt{2}, -2/\sqrt{2}) = (0, \sqrt{2}, -\sqrt{2}) $$

5.  **Calculer $\mathcal{R}(U)$.**
    $$ \mathcal{R}(U) = \langle U, N \rangle N + N \land U = (0)N + (0, \sqrt{2}, -\sqrt{2}) $$
    $$ \mathcal{R}(U) = (0, \sqrt{2}, -\sqrt{2}) $$

**Réponse:** L'image du vecteur $U=(2, 0, 0)$ par la rotation est $\mathcal{R}(U) = (0, \sqrt{2}, -\sqrt{2})$.

</details>

## Exercice 10: Problème de Calcul (Groupe SU₂(C))

**Problème:** Montrez que la matrice suivante appartient au groupe spécial unitaire $SU_2(\mathbb{C})$ :
$$ U = \frac{1}{\sqrt{2}}\begin{pmatrix} 1 & -i \\ -i & 1 \end{pmatrix} $$

<details>
<summary>Solution</summary>

**Méthode:** Pour montrer qu'une matrice $U$ appartient à $SU_2(\mathbb{C})$, nous devons vérifier deux conditions :

1.  Elle est unitaire : $U^*U = I_2$, où $U^*$ est la transposée conjuguée de $U$.
2.  Son déterminant est 1 : $\det(U) = 1$.

**Étapes:**

1.  **Calculer la matrice adjointe $U^*$.**
    L'adjointe $U^*$ est la transposée de la matrice dont on a pris le conjugué de chaque élément.
    $$ U = \begin{pmatrix} 1/\sqrt{2} & -i/\sqrt{2} \\ -i/\sqrt{2} & 1/\sqrt{2} \end{pmatrix} $$
    Le conjugué $\overline{U}$ est :
    $$ \overline{U} = \begin{pmatrix} 1/\sqrt{2} & i/\sqrt{2} \\ i/\sqrt{2} & 1/\sqrt{2} \end{pmatrix} $$
    La transposée de $\overline{U}$ est $U^* = {}^t\overline{U}$:
    $$ U^\* = \begin{pmatrix} 1/\sqrt{2} & i/\sqrt{2} \\ i/\sqrt{2} & 1/\sqrt{2} \end{pmatrix} $$

2.  **Vérifier la condition d'unitarité $U^*U=I_2$.**
    $$ U^*U = \frac{1}{\sqrt{2}}\begin{pmatrix} 1 & i \\ i & 1 \end{pmatrix} \frac{1}{\sqrt{2}}\begin{pmatrix} 1 & -i \\ -i & 1 \end{pmatrix} = \frac{1}{2} \begin{pmatrix} 1 & i \\ i & 1 \end{pmatrix} \begin{pmatrix} 1 & -i \\ -i & 1 \end{pmatrix} $$
    $$ U^*U = \frac{1}{2} \begin{pmatrix} 1(1) + i(-i) & 1(-i) + i(1) \\ i(1) + 1(-i) & i(-i) + 1(1) \end{pmatrix} = \frac{1}{2} \begin{pmatrix} 1 - i^2 & -i + i \\ i - i & -i^2 + 1 \end{pmatrix} $$
    Puisque $i^2 = -1$, on a :
    $$ U^\*U = \frac{1}{2} \begin{pmatrix} 1 - (-1) & 0 \\ 0 & -(-1) + 1 \end{pmatrix} = \frac{1}{2} \begin{pmatrix} 2 & 0 \\ 0 & 2 \end{pmatrix} = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix} = I_2 $$
    La matrice est bien unitaire.

3.  **Vérifier la condition sur le déterminant.**
    $$ \det(U) = (\frac{1}{\sqrt{2}})(\frac{1}{\sqrt{2}}) - (\frac{-i}{\sqrt{2}})(\frac{-i}{\sqrt{2}}) = \frac{1}{2} - \frac{(-i)^2}{2} = \frac{1}{2} - \frac{i^2}{2} $$
    $$ \det(U) = \frac{1}{2} - \frac{-1}{2} = \frac{1}{2} + \frac{1}{2} = 1 $$
    Le déterminant est bien 1.

4.  **Conclure.**
    Puisque $U$ est unitaire et que son déterminant est 1, elle appartient au groupe $SU_2(\mathbb{C})$.

**Réponse:** La matrice $U$ est bien unitaire ($U^*U=I_2$) et son déterminant est 1. Par conséquent, $U \in SU_2(\mathbb{C})$.

</details>
