---
id: '6a8b3c1d'
title: Exercices
layout: '../../../../layouts/Layout.astro'
order: 11
level: basic
chapter: "2 - Groupes d'isométries"
course: Géométrie
---

# Exercices : 2 - Groupes d'isométries

## Exercice 1 : Conceptuel - Identification d'isométries

**Problème :** Parmi les applications linéaires suivantes de $\mathbb{R}^2$ dans $\mathbb{R}^2$, lesquelles sont des isométries ? Justifiez votre réponse.

1. $f(x, y) = (x+y, x-y)$
2. $g(x, y) = (x, -y)$
3. $h(x, y) = (x/2, y/2)$

<details>
<summary>Solution</summary>

**Méthode :** Une application linéaire $f$ est une isométrie si elle conserve la norme, c'est-à-dire si $\|f(v)\| = \|v\|$ pour tout vecteur $v$. Nous allons tester cette condition pour chaque application en calculant la norme de l'image d'un vecteur générique $v=(x,y)$.

**Étapes :**

1.  **Analyse de $f(x, y) = (x+y, x-y)$ :**

    - Soit $v = (x, y)$. Sa norme au carré est $\|v\|^2 = x^2 + y^2$.
    - L'image est $f(v) = (x+y, x-y)$.
    - Calculons la norme au carré de l'image :
      $\|f(v)\|^2 = (x+y)^2 + (x-y)^2 = (x^2 + 2xy + y^2) + (x^2 - 2xy + y^2) = 2x^2 + 2y^2 = 2(x^2 + y^2) = 2\|v\|^2$.
    - Puisque $\|f(v)\| = \sqrt{2}\|v\| \neq \|v\|$ (sauf pour $v=0$), $f$ n'est pas une isométrie.

2.  **Analyse de $g(x, y) = (x, -y)$ :**

    - Soit $v = (x, y)$. Sa norme est $\|v\| = \sqrt{x^2 + y^2}$.
    - L'image est $g(v) = (x, -y)$.
    - Calculons la norme de l'image :
      $\|g(v)\| = \sqrt{x^2 + (-y)^2} = \sqrt{x^2 + y^2} = \|v\|$.
    - La norme est conservée pour tout vecteur. Donc, $g$ est une isométrie (c'est une réflexion par rapport à l'axe des abscisses).

3.  **Analyse de $h(x, y) = (x/2, y/2)$ :**
    - Soit $v = (x, y)$. Sa norme est $\|v\| = \sqrt{x^2 + y^2}$.
    - L'image est $h(v) = (x/2, y/2)$.
    - Calculons la norme de l'image :
      $\|h(v)\| = \sqrt{(x/2)^2 + (y/2)^2} = \sqrt{x^2/4 + y^2/4} = \sqrt{\frac{1}{4}(x^2+y^2)} = \frac{1}{2}\sqrt{x^2+y^2} = \frac{1}{2}\|v\|$.
    - Puisque $\|h(v)\| = \frac{1}{2}\|v\| \neq \|v\|$ (sauf pour $v=0$), $h$ n'est pas une isométrie (c'est une homothétie de rapport 1/2).

**Réponse :** Seule l'application $g(x, y) = (x, -y)$ est une isométrie.

</details>

## Exercice 2 : Calcul - Appartenance au groupe orthogonal

**Problème :** La matrice suivante $A$ appartient-elle au groupe orthogonal $O_2(\mathbb{R})$ ? Si oui, appartient-elle au groupe spécial orthogonal $SO_2(\mathbb{R})$ ?
$$ A = \begin{pmatrix} \frac{\sqrt{3}}{2} & -\frac{1}{2} \\ \frac{1}{2} & \frac{\sqrt{3}}{2} \end{pmatrix} $$

<details>
<summary>Solution</summary>

**Méthode :** Une matrice $A$ appartient à $O_n(\mathbb{R})$ si ${}^tA A = I_n$. Elle appartient à $SO_n(\mathbb{R})$ si de plus $\det(A) = 1$. Nous allons effectuer ces deux vérifications.

**Étapes :**

1.  **Vérifier l'appartenance à $O_2(\mathbb{R})$ :**

    - On calcule la transposée de $A$ :
      $$ {}^tA = \begin{pmatrix} \frac{\sqrt{3}}{2} & \frac{1}{2} \\ -\frac{1}{2} & \frac{\sqrt{3}}{2} \end{pmatrix} $$
    - On calcule le produit ${}^tA A$ :
      $$ {}^tA A = \begin{pmatrix} \frac{\sqrt{3}}{2} & \frac{1}{2} \\ -\frac{1}{2} & \frac{\sqrt{3}}{2} \end{pmatrix} \begin{pmatrix} \frac{\sqrt{3}}{2} & -\frac{1}{2} \\ \frac{1}{2} & \frac{\sqrt{3}}{2} \end{pmatrix} $$
      $$ = \begin{pmatrix} (\frac{\sqrt{3}}{2})^2 + (\frac{1}{2})^2 & (\frac{\sqrt{3}}{2})(-\frac{1}{2}) + (\frac{1}{2})(\frac{\sqrt{3}}{2}) \\ (-\frac{1}{2})(\frac{\sqrt{3}}{2}) + (\frac{\sqrt{3}}{2})(\frac{1}{2}) & (-\frac{1}{2})^2 + (\frac{\sqrt{3}}{2})^2 \end{pmatrix} $$
      $$ = \begin{pmatrix} \frac{3}{4} + \frac{1}{4} & -\frac{\sqrt{3}}{4} + \frac{\sqrt{3}}{4} \\ -\frac{\sqrt{3}}{4} + \frac{\sqrt{3}}{4} & \frac{1}{4} + \frac{3}{4} \end{pmatrix} = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix} = I_2 $$
    - La condition est vérifiée, donc $A \in O_2(\mathbb{R})$.

2.  **Vérifier l'appartenance à $SO_2(\mathbb{R})$ :**
    - On calcule le déterminant de $A$ :
      $$ \det(A) = (\frac{\sqrt{3}}{2})(\frac{\sqrt{3}}{2}) - (-\frac{1}{2})(\frac{1}{2}) = \frac{3}{4} + \frac{1}{4} = 1 $$
    - Le déterminant est 1.

**Réponse :** Oui, la matrice $A$ appartient à $O_2(\mathbb{R})$ car ${}^tA A = I_2$. De plus, comme $\det(A) = 1$, elle appartient aussi à $SO_2(\mathbb{R})$. C'est la matrice d'une rotation d'angle $\pi/6$.

</details>

## Exercice 3 : Calcul - Angle non-orienté

**Problème :** Calculez l'angle non-orienté $\theta$ entre les vecteurs $u = (1, 1, 0)$ et $v = (0, 1, 1)$ dans $\mathbb{R}^3$.

<details>
<summary>Solution</summary>

**Méthode :** L'angle non-orienté $\theta$ entre deux vecteurs $u$ et $v$ est donné par la formule $\theta = \arccos\left(\frac{\langle u, v \rangle}{\|u\|\|v\|}\right)$. Nous devons calculer le produit scalaire et les normes des deux vecteurs.

**Étapes :**

1.  **Calculer le produit scalaire $\langle u, v \rangle$ :**
    $$ \langle u, v \rangle = (1)(0) + (1)(1) + (0)(1) = 0 + 1 + 0 = 1 $$

2.  **Calculer la norme de $u$ :**
    $$ \|u\| = \sqrt{1^2 + 1^2 + 0^2} = \sqrt{1 + 1 + 0} = \sqrt{2} $$

3.  **Calculer la norme de $v$ :**
    $$ \|v\| = \sqrt{0^2 + 1^2 + 1^2} = \sqrt{0 + 1 + 1} = \sqrt{2} $$

4.  **Calculer $\cos(\theta)$ et en déduire $\theta$ :**
    $$ \cos(\theta) = \frac{\langle u, v \rangle}{\|u\|\|v\|} = \frac{1}{\sqrt{2} \cdot \sqrt{2}} = \frac{1}{2} $$
    L'angle $\theta \in [0, \pi]$ dont le cosinus est $1/2$ est $\theta = \pi/3$.

**Réponse :** L'angle non-orienté entre les vecteurs $u$ et $v$ est $\theta = \frac{\pi}{3}$ radians (ou $60^\circ$).

</details>

## Exercice 4 : Application - Orientation de bases

**Problème :** Dans le plan $\mathbb{R}^2$, la base $\mathcal{B}' = ((1, 2), (-1, 1))$ a-t-elle la même orientation que la base canonique $\mathcal{B}_c = ((1, 0), (0, 1))$ ?

<details>
<summary>Solution</summary>

**Méthode :** Deux bases ont la même orientation si le déterminant de la matrice de passage de l'une à l'autre est positif. La matrice de passage de la base canonique $\mathcal{B}_c$ à une base $\mathcal{B}'$ est simplement la matrice dont les colonnes sont les vecteurs de $\mathcal{B}'$.

**Étapes :**

1.  **Former la matrice de passage $P$ de $\mathcal{B}_c$ à $\mathcal{B}'$ :**
    Les vecteurs de $\mathcal{B}'$ sont $v_1 = (1, 2)$ et $v_2 = (-1, 1)$. La matrice de passage est :
    $$ P = \begin{pmatrix} 1 & -1 \\ 2 & 1 \end{pmatrix} $$

2.  **Calculer le déterminant de $P$ :**
    $$ \det(P) = (1)(1) - (-1)(2) = 1 + 2 = 3 $$

3.  **Conclure sur l'orientation :**
    Le déterminant est $3$, qui est un nombre strictement positif.

**Réponse :** Oui, la base $\mathcal{B}'$ a la même orientation que la base canonique car le déterminant de la matrice de passage est positif ($\det(P)=3 > 0$).

</details>

## Exercice 5 : Calcul - Angle orienté

**Problème :** Dans le plan $\mathbb{R}^2$ orienté par sa base canonique, calculez l'angle orienté $\tilde{\theta}$ du vecteur $x=(1, 0)$ au vecteur $y=(-1, \sqrt{3})$.

<details>
<summary>Solution</summary>

**Méthode :** L'angle orienté $\tilde{\theta}$ est déterminé par les deux relations : $\langle x, y \rangle = \|x\|\|y\|\cos(\tilde{\theta})$ et $\det(x, y) = \|x\|\|y\|\sin(\tilde{\theta})$. Nous calculons les quatre quantités : produit scalaire, déterminant et les deux normes.

**Étapes :**

1.  **Calculer les normes :**
    $$ \|x\| = \sqrt{1^2 + 0^2} = 1 $$
    $$ \|y\| = \sqrt{(-1)^2 + (\sqrt{3})^2} = \sqrt{1 + 3} = \sqrt{4} = 2 $$

2.  **Calculer le produit scalaire :**
    $$ \langle x, y \rangle = (1)(-1) + (0)(\sqrt{3}) = -1 $$

3.  **Calculer le déterminant :**
    $$ \det(x, y) = \begin{vmatrix} 1 & -1 \\ 0 & \sqrt{3} \end{vmatrix} = (1)(\sqrt{3}) - (-1)(0) = \sqrt{3} $$

4.  **Déterminer $\cos(\tilde{\theta})$ et $\sin(\tilde{\theta})$ :**
    $$ \cos(\tilde{\theta}) = \frac{\langle x, y \rangle}{\|x\|\|y\|} = \frac{-1}{1 \cdot 2} = -\frac{1}{2} $$
    $$ \sin(\tilde{\theta}) = \frac{\det(x, y)}{\|x\|\|y\|} = \frac{\sqrt{3}}{1 \cdot 2} = \frac{\sqrt{3}}{2} $$

5.  **Identifier l'angle $\tilde{\theta}$ :**
    L'unique angle $\tilde{\theta} \in [0, 2\pi)$ qui a un cosinus de $-1/2$ et un sinus de $\sqrt{3}/2$ est $\tilde{\theta} = 2\pi/3$.

**Réponse :** L'angle orienté de $x$ à $y$ est $\tilde{\theta} = \frac{2\pi}{3}$ radians (ou $120^\circ$).

</details>

## Exercice 6 : Application - Identification d'isométries planes

**Problème :** Considérez l'isométrie du plan dont la matrice dans la base canonique est $M = \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix}$. Est-ce une rotation ou une réflexion ?

- Si c'est une rotation, quel est son angle ?
- Si c'est une réflexion, quel est son axe ?

<details>
<summary>Solution</summary>

**Méthode :** On détermine la nature de l'isométrie en calculant son déterminant. Si $\det(M)=1$, c'est une rotation. Si $\det(M)=-1$, c'est une réflexion. Pour trouver l'axe d'une réflexion, on cherche les vecteurs invariants, c'est-à-dire les vecteurs $v$ tels que $Mv=v$.

**Étapes :**

1.  **Calculer le déterminant de M :**
    $$ \det(M) = (0)(0) - (1)(1) = -1 $$
    Puisque le déterminant est -1, l'isométrie est une réflexion.

2.  **Trouver l'axe de la réflexion :**
    L'axe est l'ensemble des points fixes. On cherche donc les vecteurs $v = (x, y)$ tels que $Mv = v$.
    $$ \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix} \begin{pmatrix} x \\ y \end{pmatrix} = \begin{pmatrix} x \\ y \end{pmatrix} $$
    Cela donne le système d'équations :
    $$ \begin{cases} y = x \\ x = y \end{cases} $$
    Les deux équations sont identiques. Les vecteurs invariants sont donc ceux pour lesquels $y=x$.

**Réponse :** L'isométrie est une **réflexion**. Son axe est la droite d'équation $y=x$.

</details>

## Exercice 7 : Calcul - Produit vectoriel

**Problème :** Calculez le produit vectoriel $u \land v$ pour les vecteurs $u = (2, 3, 1)$ et $v = (1, -1, 0)$ dans $\mathbb{R}^3$.

<details>
<summary>Solution</summary>

**Méthode :** On applique la formule de calcul du produit vectoriel pour deux vecteurs $U=(u_1, u_2, u_3)$ et $V=(v_1, v_2, v_3)$ :
$$ U \land V = (u_2 v_3 - u_3 v_2, u_3 v_1 - u_1 v_3, u_1 v_2 - u_2 v_1) $$

**Étapes :**

1.  **Identifier les composantes :**
    $u_1=2, u_2=3, u_3=1$
    $v_1=1, v_2=-1, v_3=0$

2.  **Calculer la première composante de $u \land v$ :**
    $u_2 v_3 - u_3 v_2 = (3)(0) - (1)(-1) = 0 - (-1) = 1$

3.  **Calculer la deuxième composante de $u \land v$ :**
    $u_3 v_1 - u_1 v_3 = (1)(1) - (2)(0) = 1 - 0 = 1$

4.  **Calculer la troisième composante de $u \land v$ :**
    $u_1 v_2 - u_2 v_1 = (2)(-1) - (3)(1) = -2 - 3 = -5$

5.  **Combiner les résultats :**
    $u \land v = (1, 1, -5)$

**Réponse :** Le produit vectoriel est $u \land v = (1, 1, -5)$.

</details>

## Exercice 8 : Application - Aire d'un parallélogramme

**Problème :** En utilisant les vecteurs $u = (2, 3, 1)$ et $v = (1, -1, 0)$ de l'exercice précédent, calculez l'aire du parallélogramme défini par ces deux vecteurs.

<details>
<summary>Solution</summary>

**Méthode :** L'aire du parallélogramme défini par deux vecteurs $u$ et $v$ est égale à la norme de leur produit vectoriel, $\|u \land v\|$.

**Étapes :**

1.  **Reprendre le résultat du produit vectoriel :**
    D'après l'exercice 7, nous avons $u \land v = (1, 1, -5)$.

2.  **Calculer la norme de ce vecteur :**
    $$ \|u \land v\| = \sqrt{1^2 + 1^2 + (-5)^2} $$
    $$ = \sqrt{1 + 1 + 25} = \sqrt{27} $$

3.  **Simplifier le résultat (optionnel) :**
    $$ \sqrt{27} = \sqrt{9 \times 3} = 3\sqrt{3} $$

**Réponse :** L'aire du parallélogramme est $\sqrt{27}$, soit $3\sqrt{3}$ unités d'aire.

</details>

## Exercice 9 : Conceptuel - Axe d'une rotation 3D

**Problème :** On considère la rotation dans l'espace $\mathbb{R}^3$ représentée par la matrice $R = \begin{pmatrix} 0 & -1 & 0 \\ 1 & 0 & 0 \\ 0 & 0 & 1 \end{pmatrix}$. Quel est son axe de rotation ?

<details>
<summary>Solution</summary>

**Méthode :** L'axe d'une rotation est la droite dont les vecteurs directeurs sont invariants par la rotation. On cherche donc un vecteur non nul $v=(x,y,z)$ tel que $Rv=v$. Cela revient à résoudre le système $(R-I)v = 0$.

**Étapes :**

1.  **Poser l'équation $Rv=v$ :**
    $$ \begin{pmatrix} 0 & -1 & 0 \\ 1 & 0 & 0 \\ 0 & 0 & 1 \end{pmatrix} \begin{pmatrix} x \\ y \\ z \end{pmatrix} = \begin{pmatrix} x \\ y \\ z \end{pmatrix} $$

2.  **Traduire en système d'équations linéaires :**
    $$ \begin{cases} -y = x \\ x = y \\ z = z \end{cases} $$

3.  **Résoudre le système :**

    - La troisième équation, $z=z$, est toujours vraie et n'impose aucune contrainte sur $z$.
    - Les deux premières équations sont $-y=x$ et $x=y$. En substituant la seconde dans la première, on obtient $-y=y$, ce qui implique $2y=0$, donc $y=0$.
    - Si $y=0$, alors $x=0$ également.
    - La solution est donc de la forme $(0, 0, z)$ pour tout $z \in \mathbb{R}$.

4.  **Identifier l'axe :**
    Les vecteurs invariants sont tous les multiples du vecteur $(0,0,1)$. C'est l'axe des $z$.

**Réponse :** L'axe de rotation est l'axe des $z$, dirigé par le vecteur $e_3 = (0, 0, 1)$.

</details>

## Exercice 10 : Application - Formule de Rodrigues

**Problème :** Utilisez la formule de Rodrigues pour calculer l'image du vecteur $U = (2, 1, 0)$ par une rotation d'angle $\theta = \pi/2$ autour de l'axe dirigé par le vecteur unitaire $N=(0, 0, 1)$.

<details>
<summary>Solution</summary>

**Méthode :** La formule de Rodrigues est $\mathcal{R}(U) = \cos(\theta)U + (1 - \cos(\theta))\langle U, N \rangle N + \sin(\theta)(N \land U)$. On calcule chaque terme séparément.

**Étapes :**

1.  **Valeurs de $\cos(\theta)$ et $\sin(\theta)$ :**
    Pour $\theta=\pi/2$, on a $\cos(\pi/2)=0$ et $\sin(\pi/2)=1$.

2.  **Calculer le produit scalaire $\langle U, N \rangle$ :**
    $$ \langle U, N \rangle = \langle (2, 1, 0), (0, 0, 1) \rangle = (2)(0) + (1)(0) + (0)(1) = 0 $$

3.  **Calculer le produit vectoriel $N \land U$ :**
    $$ N \land U = (0, 0, 1) \land (2, 1, 0) $$
    $$ = ((0)(0) - (1)(1), (1)(2) - (0)(0), (0)(1) - (0)(2)) $$
    $$ = (-1, 2, 0) $$

4.  **Appliquer la formule de Rodrigues :**
    $$ \mathcal{R}(U) = (0) \cdot U + (1-0) \cdot (0) \cdot N + (1) \cdot (-1, 2, 0) $$
    $$ \mathcal{R}(U) = \vec{0} + \vec{0} + (-1, 2, 0) $$
    $$ \mathcal{R}(U) = (-1, 2, 0) $$

**Réponse :** L'image du vecteur $U=(2,1,0)$ par la rotation est le vecteur $\mathcal{R}(U) = (-1, 2, 0)$.

</details>
