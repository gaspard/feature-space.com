---
id: c00213d8
type: exercises
order: 11
title: Réduction des endomorphismes auto-adjoints - exercices (A)
tags:
  - endomorphismes
  - auto-adjoints
  - déterminants
  - diagonalisation
  - décomposition polaire
createdAt: '2025-11-26T16:54:55.181Z'
level: regular
course: Géométrie
courseId: d9494343
chapter: Réduction des endomorphismes auto-adjoints
chapterId: 3909aa4c
---
# Exercices "Réduction des endomorphismes auto-adjoints" (A)

---

## Exercice 1 : Calcul de déterminant

**Problème :** Soit la matrice $A$ définie par :

$A = \begin{pmatrix} 2 & 1 & 3 \\ 1 & 0 & -1 \\ 0 & 2 & 1 \end{pmatrix}$

Calculez le déterminant de $A$ de deux manières différentes :

1.  En utilisant la règle de Sarrus.
2.  En développant par rapport à la deuxième colonne.

<details>

<summary>Solution</summary>

**Méthode :** Le déterminant d'une matrice 3x3 peut être calculé directement avec la règle de Sarrus ou en utilisant la méthode des cofacteurs, qui consiste à développer le déterminant le long d'une ligne ou d'une colonne. Nous allons appliquer ces deux méthodes et vérifier que le résultat est identique.

**Étapes :**

1.  **Calcul avec la règle de Sarrus :**

    On ajoute les deux premières colonnes à droite de la matrice et on somme les produits des diagonales descendantes, puis on soustrait la somme des produits des diagonales montantes.

    $$

    \det(A) = (2 \cdot 0 \cdot 1 + 1 \cdot (-1) \cdot 0 + 3 \cdot 1 \cdot 2) - (0 \cdot 0 \cdot 3 + 2 \cdot (-1) \cdot 2 + 1 \cdot 1 \cdot 1)

    $$

    $$

    \det(A) = (0 + 0 + 6) - (0 - 4 + 1)

    $$

    $$

    \det(A) = 6 - (-3) = 9

    $$

2.  **Développement par rapport à la deuxième colonne (j=2) :**

    La formule est $\det(A) = \sum_{i=1}^{3} (-1)^{i+2} a_{i2} \Delta_{i2}$, où $\Delta_{i2}$ est le déterminant de la sous-matrice obtenue en supprimant la ligne $i$ et la colonne 2.

    $$

    \det(A) = (-1)^{1+2} a_{12} \begin{vmatrix} 1 & -1 \\ 0 & 1 \end{vmatrix} + (-1)^{2+2} a_{22} \begin{vmatrix} 2 & 3 \\ 0 & 1 \end{vmatrix} + (-1)^{3+2} a_{32} \begin{vmatrix} 2 & 3 \\ 1 & -1 \end{vmatrix}

    $$

    Les coefficients de la deuxième colonne sont $a_{12}=1$, $a_{22}=0$, $a_{32}=2$.

    $$

    \det(A) = -1 \cdot (1) \cdot (1 \cdot 1 - (-1) \cdot 0) + 1 \cdot (0) \cdot (2 \cdot 1 - 3 \cdot 0) - 1 \cdot (2) \cdot (2 \cdot (-1) - 3 \cdot 1)

    $$

    $$

    \det(A) = -1 \cdot (1) + 0 - 2 \cdot (-2 - 3)

    $$

    $$

    \det(A) = -1 - 2 \cdot (-5) = -1 + 10 = 9

    $$

    Les deux méthodes donnent bien le même résultat.

**Réponse :** $\det(A) = 9$

</details>

---

## Exercice 2 : Recherche de valeurs et vecteurs propres

**Problème :** Soit $f$ l'endomorphisme de $\mathbb{R}^2$ dont la matrice dans la base canonique est :

$A = \begin{pmatrix} 5 & -3 \\ 2 & 0 \end{pmatrix}$

1.  Déterminez les valeurs propres de $A$.
2.  Pour chaque valeur propre, déterminez le sous-espace propre associé.

<details>

<summary>Solution</summary>

**Méthode :** Pour trouver les valeurs propres, nous devons calculer le polynôme caractéristique $\chi_A(\lambda) = \det(A - \lambda I)$ et trouver ses racines. Ensuite, pour chaque valeur propre $\lambda$, nous résolvons le système linéaire $(A - \lambda I)X = 0$ pour trouver les vecteurs propres, qui forment le sous-espace propre $E_\lambda$.

**Étapes :**

1.  **Calcul du polynôme caractéristique :**

    $$

    \chi_A(\lambda) = \det(A - \lambda I) = \begin{vmatrix} 5-\lambda & -3 \\ 2 & -\lambda \end{vmatrix}

    $$

    $$

    \chi_A(\lambda) = (5-\lambda)(-\lambda) - (-3)(2) = -5\lambda + \lambda^2 + 6 = \lambda^2 - 5\lambda + 6

    $$

2.  **Recherche des valeurs propres (racines de $\chi_A(\lambda)$) :**

    On résout l'équation $\lambda^2 - 5\lambda + 6 = 0$. On peut factoriser ce polynôme en $(\lambda-2)(\lambda-3) = 0$.

    Les racines sont donc $\lambda_1 = 2$ et $\lambda_2 = 3$. Ce sont les valeurs propres de $A$.

3.  **Détermination du sous-espace propre pour $\lambda_1 = 2$ :**

    On cherche le noyau de $(A - 2I)$, c'est-à-dire les vecteurs $X = \begin{pmatrix} x \\ y \end{pmatrix}$ tels que $(A - 2I)X = 0$.

    $$

    \begin{pmatrix} 5-2 & -3 \\ 2 & 0-2 \end{pmatrix} \begin{pmatrix} x \\ y \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \end{pmatrix} \Rightarrow \begin{pmatrix} 3 & -3 \\ 2 & -2 \end{pmatrix} \begin{pmatrix} x \\ y \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \end{pmatrix}

    $$

    Les deux équations $3x - 3y = 0$ et $2x - 2y = 0$ sont équivalentes à $x - y = 0$, soit $x=y$.

    Les vecteurs propres sont de la forme $\begin{pmatrix} k \\ k \end{pmatrix}$ pour $k \in \mathbb{R}^*$. Le sous-espace propre est donc $E_2 = \text{Vect}\left(\begin{pmatrix} 1 \\ 1 \end{pmatrix}\right)$.

4.  **Détermination du sous-espace propre pour $\lambda_2 = 3$ :**

    On cherche le noyau de $(A - 3I)$.

    $$

    \begin{pmatrix} 5-3 & -3 \\ 2 & 0-3 \end{pmatrix} \begin{pmatrix} x \\ y \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \end{pmatrix} \Rightarrow \begin{pmatrix} 2 & -3 \\ 2 & -3 \end{pmatrix} \begin{pmatrix} x \\ y \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \end{pmatrix}

    $$

    L'équation est $2x - 3y = 0$, soit $x = \frac{3}{2}y$.

    Les vecteurs propres sont de la forme $\begin{pmatrix} 3k/2 \\ k \end{pmatrix}$ pour $k \in \mathbb{R}^*$. Pour éviter les fractions, on peut choisir $k=2$, ce qui donne le vecteur $\begin{pmatrix} 3 \\ 2 \end{pmatrix}$.

    Le sous-espace propre est donc $E_3 = \text{Vect}\left(\begin{pmatrix} 3 \\ 2 \end{pmatrix}\right)$.

**Réponse :** Les valeurs propres sont $\lambda_1 = 2$ et $\lambda_2 = 3$.

Les sous-espaces propres associés sont $E_2 = \text{Vect}\left(\begin{pmatrix} 1 \\ 1 \end{pmatrix}\right)$ et $E_3 = \text{Vect}\left(\begin{pmatrix} 3 \\ 2 \end{pmatrix}\right)$.

</details>

---

## Exercice 3 : Critère de diagonalisation

**Problème :** Soit la matrice $B$ suivante :

$B = \begin{pmatrix} 3 & 1 & -1 \\ 1 & 3 & -1 \\ 1 & 1 & 1 \end{pmatrix}$

1.  Calculez le polynôme caractéristique de $B$. On donne que $\lambda=2$ est une racine.
2.  Déterminez les valeurs propres de $B$ et leur multiplicité algébrique.
3.  Pour chaque valeur propre, déterminez la dimension du sous-espace propre associé (multiplicité géométrique).
4.  La matrice $B$ est-elle diagonalisable ? Justifiez.

<details>

<summary>Solution</summary>

**Méthode :** Une matrice est diagonalisable si et seulement si son polynôme caractéristique est scindé (ce qui est toujours le cas sur $\mathbb{C}$) et si, pour chaque valeur propre, la multiplicité algébrique (en tant que racine du polynôme) est égale à la multiplicité géométrique (la dimension du sous-espace propre).

**Étapes :**

1.  **Polynôme caractéristique :**

    $$

    \chi_B(\lambda) = \det(B - \lambda I) = \begin{vmatrix} 3-\lambda & 1 & -1 \\ 1 & 3-\lambda & -1 \\ 1 & 1 & 1-\lambda \end{vmatrix}

    $$

    En développant, on obtient :

    $$

    \chi_B(\lambda) = (3-\lambda)((3-\lambda)(1-\lambda)+1) - 1((1-\lambda)+1) - 1(1-(3-\lambda))

    $$

    $$

    = (3-\lambda)(\lambda^2-4\lambda+4) - (2-\lambda) - (\lambda-2)

    $$

    $$

    = (3-\lambda)(\lambda-2)^2 + (\lambda-2) - (\lambda-2) = (3-\lambda)(\lambda-2)^2

    $$

    $$

    \chi_B(\lambda) = -(\lambda-3)(\lambda-2)^2

    $$

2.  **Valeurs propres et multiplicités algébriques :**

    Les racines de $\chi_B(\lambda)$ sont les valeurs propres.

    -   $\lambda_1 = 3$ avec une multiplicité algébrique $m_3 = 1$.
    -   $\lambda_2 = 2$ avec une multiplicité algébrique $m_2 = 2$.

3.  **Multiplicités géométriques :**

    On a toujours $1 \le d_\lambda \le m_\lambda$.

    -   Pour $\lambda_1 = 3$, on a $m_3=1$, donc nécessairement la dimension du sous-espace propre $d_3 = 1$.
    -   Pour $\lambda_2 = 2$, on doit calculer $d_2 = \dim(\ker(B-2I))$.

    $$

    B-2I = \begin{pmatrix} 1 & 1 & -1 \\ 1 & 1 & -1 \\ 1 & 1 & -1 \end{pmatrix}

    $$

    On résout $(B-2I)X=0$, ce qui se réduit à l'unique équation $x+y-z=0$. C'est l'équation d'un plan vectoriel, qui est de dimension 2.

    Par conséquent, $d_2 = \dim(E_2) = 2$.

4.  **Conclusion sur la diagonalisabilité :**
    -   Pour $\lambda_1=3$, nous avons $m_3 = d_3 = 1$.
    -   Pour $\lambda_2=2$, nous avons $m_2 = d_2 = 2$.

    Comme la condition $m_\lambda = d_\lambda$ est vérifiée pour toutes les valeurs propres, la matrice $B$ est diagonalisable.

**Réponse :** Oui, la matrice $B$ est diagonalisable car pour chaque valeur propre, sa multiplicité algébrique est égale à sa multiplicité géométrique.

</details>

---

## Exercice 4 : Application du Théorème Spectral

**Problème :** Soit la matrice symétrique $S$ :

$S = \begin{pmatrix} 5 & 2 \\ 2 & 8 \end{pmatrix}$

1.  Vérifiez que $S$ est la matrice d'un endomorphisme auto-adjoint dans la base canonique de $\mathbb{R}^2$.
2.  Trouvez les valeurs propres de $S$.
3.  Trouvez une base orthonormée de $\mathbb{R}^2$ formée de vecteurs propres de $S$.
4.  Écrivez la décomposition spectrale $S = PDP^T$, où $D$ est diagonale et $P$ est orthogonale.

<details>

<summary>Solution</summary>

**Méthode :** Le Théorème Spectral garantit qu'une matrice symétrique réelle est diagonalisable dans une base orthonormée. Nous suivons les étapes : trouver les valeurs propres, trouver les vecteurs propres, vérifier leur orthogonalité, les normer pour former la matrice de passage orthogonale $P$.

**Étapes :**

1.  **Endomorphisme auto-adjoint :**

    La base canonique de $\mathbb{R}^2$ est orthonormée pour le produit scalaire usuel. La matrice $S$ est symétrique car $S = {}^tS$. Par conséquent, elle représente un endomorphisme auto-adjoint dans cette base.

2.  **Valeurs propres :**

    On calcule le polynôme caractéristique :

    $$

    \chi_S(\lambda) = \begin{vmatrix} 5-\lambda & 2 \\ 2 & 8-\lambda \end{vmatrix} = (5-\lambda)(8-\lambda) - 4

    $$

    $$

    = 40 - 13\lambda + \lambda^2 - 4 = \lambda^2 - 13\lambda + 36

    $$

    On résout $\lambda^2 - 13\lambda + 36 = 0$. Les racines sont $\lambda_1 = 4$ et $\lambda_2 = 9$.

3.  **Vecteurs et base orthonormée :**
    -   **Pour $\lambda_1=4$ :**

        On résout $(S-4I)X=0 \Rightarrow \begin{pmatrix} 1 & 2 \\ 2 & 4 \end{pmatrix}\begin{pmatrix} x \\ y \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \end{pmatrix}$. L'équation est $x+2y=0$. Un vecteur propre est $v_1 = \begin{pmatrix} 2 \\ -1 \end{pmatrix}$.

    -   **Pour $\lambda_2=9$ :**

        On résout $(S-9I)X=0 \Rightarrow \begin{pmatrix} -4 & 2 \\ 2 & -1 \end{pmatrix}\begin{pmatrix} x \\ y \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \end{pmatrix}$. L'équation est $2x-y=0$. Un vecteur propre est $v_2 = \begin{pmatrix} 1 \\ 2 \end{pmatrix}$.

    -   **Orthogonalité :** On vérifie que les vecteurs propres sont orthogonaux : $\langle v_1, v_2 \rangle = 2 \cdot 1 + (-1) \cdot 2 = 0$. C'est bien le cas, comme attendu du théorème spectral.
    -   **Normalisation :** On norme les vecteurs.

        $\|v_1\| = \sqrt{2^2 + (-1)^2} = \sqrt{5}$. Donc $u_1 = \frac{1}{\sqrt{5}}\begin{pmatrix} 2 \\ -1 \end{pmatrix}$.

        $\|v_2\| = \sqrt{1^2 + 2^2} = \sqrt{5}$. Donc $u_2 = \frac{1}{\sqrt{5}}\begin{pmatrix} 1 \\ 2 \end{pmatrix}$.

        La base orthonormée est $\mathcal{B}' = \{u_1, u_2\}$.

4.  **Décomposition spectrale :**

    La matrice diagonale $D$ contient les valeurs propres sur sa diagonale. La matrice de passage $P$ a pour colonnes les vecteurs propres orthonormés correspondants.

    $$

    D = \begin{pmatrix} 4 & 0 \\ 0 & 9 \end{pmatrix}, \quad P = \begin{pmatrix} 2/\sqrt{5} & 1/\sqrt{5} \\ -1/\sqrt{5} & 2/\sqrt{5} \end{pmatrix}

    $$

    On a bien $S = PDP^T$.

**Réponse :** La décomposition spectrale est $S = PDP^T$ avec

$P = \frac{1}{\sqrt{5}}\begin{pmatrix} 2 & 1 \\ -1 & 2 \end{pmatrix}$ et $D = \begin{pmatrix} 4 & 0 \\ 0 & 9 \end{pmatrix}$.

</details>

---

## Exercice 5 : Endomorphismes positifs

**Problème :** On considère les matrices symétriques suivantes :

$A = \begin{pmatrix} 3 & 1 \\ 1 & 3 \end{pmatrix}, \quad B = \begin{pmatrix} 1 & -1 \\ -1 & 1 \end{pmatrix}, \quad C = \begin{pmatrix} 2 & 4 \\ 4 & 2 \end{pmatrix}$

Pour chaque matrice, déterminez si l'endomorphisme auto-adjoint associé est :

a) Défini positif

b) Positif (mais non défini positif)

c) Ni l'un ni l'autre

Justifiez votre réponse en utilisant les valeurs propres.

<details>

<summary>Solution</summary>

**Méthode :** Un endomorphisme auto-adjoint est défini positif si toutes ses valeurs propres sont strictement positives. Il est positif si toutes ses valeurs propres sont positives ou nulles. S'il a au moins une valeur propre strictement négative, il n'est pas positif.

**Étapes :**

1.  **Analyse de la matrice A :**
    -   **Valeurs propres :** $\chi_A(\lambda) = (3-\lambda)^2 - 1 = \lambda^2-6\lambda+8 = (\lambda-2)(\lambda-4)$.
    -   Les valeurs propres sont $\lambda_1=2$ et $\lambda_2=4$.
    -   **Conclusion :** Comme toutes les valeurs propres sont strictement positives ($2 > 0$ et $4 > 0$), l'endomorphisme associé à $A$ est **défini positif**.

2.  **Analyse de la matrice B :**
    -   **Valeurs propres :** $\chi_B(\lambda) = (1-\lambda)^2 - 1 = \lambda^2-2\lambda = \lambda(\lambda-2)$.
    -   Les valeurs propres sont $\lambda_1=0$ et $\lambda_2=2$.
    -   **Conclusion :** Toutes les valeurs propres sont positives ou nulles ($\ge 0$), mais l'une d'elles est nulle. L'endomorphisme associé à $B$ est donc **positif (mais non défini positif)**.

3.  **Analyse de la matrice C :**
    -   **Valeurs propres :** $\chi_C(\lambda) = (2-\lambda)^2 - 16 = \lambda^2-4\lambda-12 = (\lambda-6)(\lambda+2)$.
    -   Les valeurs propres sont $\lambda_1=6$ et $\lambda_2=-2$.
    -   **Conclusion :** Il y a une valeur propre strictement négative ($-2 < 0$). L'endomorphisme associé à $C$ n'est **ni positif, ni défini positif**.

**Réponse :**

-   $A$ est **définie positive**.
-   $B$ est **positive (non définie positive)**.
-   $C$ n'est **pas positive**.

</details>

---

## Exercice 6 : Diagonalisation d'une matrice 3x3 symétrique

**Problème :** Soit la matrice symétrique réelle

$A = \begin{pmatrix} 1 & 1 & 0 \\ 1 & 0 & 1 \\ 0 & 1 & 1 \end{pmatrix}$.

Diagonalisez $A$ dans une base orthonormée. Autrement dit, trouvez une matrice orthogonale $P$ et une matrice diagonale $D$ telles que $A = PDP^T$.

<details>

<summary>Solution</summary>

**Méthode :** Conformément au théorème spectral, nous allons trouver les valeurs propres de $A$, puis pour chaque valeur propre, une base orthonormée du sous-espace propre associé. La juxtaposition de ces bases formera la matrice $P$.

**Étapes :**

1.  **Calcul des valeurs propres :**

    On calcule le polynôme caractéristique $\chi_A(\lambda) = \det(A-\lambda I)$.

    $$

    \chi_A(\lambda) = \begin{vmatrix} 1-\lambda & 1 & 0 \\ 1 & -\lambda & 1 \\ 0 & 1 & 1-\lambda \end{vmatrix} = (1-\lambda)(-\lambda(1-\lambda)-1) - 1(1-\lambda)

    $$

    $$

    = (1-\lambda)(\lambda^2-\lambda-1) - (1-\lambda) = (1-\lambda)(\lambda^2-\lambda-2)

    $$

    Les racines de $\lambda^2-\lambda-2=0$ sont $\lambda=2$ et $\lambda=-1$.

    Les valeurs propres sont donc $\lambda_1=1$, $\lambda_2=2$, $\lambda_3=-1$. Elles sont toutes distinctes, donc les sous-espaces propres sont de dimension 1 et mutuellement orthogonaux.

2.  **Calcul des vecteurs propres :**
    -   **Pour $\lambda_1 = 1$ :** On résout $(A-I)X=0$.

        $\begin{pmatrix} 0 & 1 & 0 \\ 1 & -1 & 1 \\ 0 & 1 & 0 \end{pmatrix}\begin{pmatrix} x \\ y \\ z \end{pmatrix}=\begin{pmatrix} 0 \\ 0 \\ 0 \end{pmatrix} \Rightarrow \begin{cases} y=0 \\ x-y+z=0 \end{cases} \Rightarrow \begin{cases} y=0 \\ x+z=0 \end{cases}$.

        Un vecteur propre est $v_1 = \begin{pmatrix} 1 \\ 0 \\ -1 \end{pmatrix}$.

    -   **Pour $\lambda_2 = 2$ :** On résout $(A-2I)X=0$.

        $\begin{pmatrix} -1 & 1 & 0 \\ 1 & -2 & 1 \\ 0 & 1 & -1 \end{pmatrix}\begin{pmatrix} x \\ y \\ z \end{pmatrix}=\begin{pmatrix} 0 \\ 0 \\ 0 \end{pmatrix} \Rightarrow \begin{cases} -x+y=0 \\ y-z=0 \end{cases} \Rightarrow x=y=z$.

        Un vecteur propre est $v_2 = \begin{pmatrix} 1 \\ 1 \\ 1 \end{pmatrix}$.

    -   **Pour $\lambda_3 = -1$ :** On résout $(A+I)X=0$.

        $\begin{pmatrix} 2 & 1 & 0 \\ 1 & 1 & 1 \\ 0 & 1 & 2 \end{pmatrix}\begin{pmatrix} x \\ y \\ z \end{pmatrix}=\begin{pmatrix} 0 \\ 0 \\ 0 \end{pmatrix} \Rightarrow \begin{cases} 2x+y=0 \\ y+2z=0 \end{cases} \Rightarrow y=-2x, z=-y/2=x$.

        Un vecteur propre est $v_3 = \begin{pmatrix} 1 \\ -2 \\ 1 \end{pmatrix}$.

3.  **Construction de la base orthonormée :**

    On normalise les vecteurs propres $v_1, v_2, v_3$.

    -   $\|v_1\| = \sqrt{1^2+0^2+(-1)^2} = \sqrt{2} \Rightarrow u_1 = \frac{1}{\sqrt{2}}\begin{pmatrix} 1 \\ 0 \\ -1 \end{pmatrix}$.
    -   $\|v_2\| = \sqrt{1^2+1^2+1^2} = \sqrt{3} \Rightarrow u_2 = \frac{1}{\sqrt{3}}\begin{pmatrix} 1 \\ 1 \\ 1 \end{pmatrix}$.
    -   $\|v_3\| = \sqrt{1^2+(-2)^2+1^2} = \sqrt{6} \Rightarrow u_3 = \frac{1}{\sqrt{6}}\begin{pmatrix} 1 \\ -2 \\ 1 \end{pmatrix}$.

4.  **Écriture de P et D :**

    On place les valeurs propres dans $D$ et les vecteurs propres normalisés en colonnes dans $P$.

    $$

    D = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 2 & 0 \\ 0 & 0 & -1 \end{pmatrix}, \quad P = \begin{pmatrix} 1/\sqrt{2} & 1/\sqrt{3} & 1/\sqrt{6} \\ 0 & 1/\sqrt{3} & -2/\sqrt{6} \\ -1/\sqrt{2} & 1/\sqrt{3} & 1/\sqrt{6} \end{pmatrix}

    $$

**Réponse :**

$D = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 2 & 0 \\ 0 & 0 & -1 \end{pmatrix}$ et $P = \begin{pmatrix} 1/\sqrt{2} & 1/\sqrt{3} & 1/\sqrt{6} \\ 0 & 1/\sqrt{3} & -2/\sqrt{6} \\ -1/\sqrt{2} & 1/\sqrt{3} & 1/\sqrt{6} \end{pmatrix}$.

</details>

---

## Exercice 7 : Cas d'une matrice non diagonalisable

**Problème :** Soit la matrice $C$ suivante :

$C = \begin{pmatrix} 1 & -1 & 0 \\ 1 & 3 & 0 \\ 0 & 0 & 2 \end{pmatrix}$

Montrez que cette matrice n'est pas diagonalisable sur $\mathbb{R}$.

<details>

<summary>Solution</summary>

**Méthode :** Pour montrer qu'une matrice n'est pas diagonalisable, il suffit de trouver une valeur propre pour laquelle la multiplicité géométrique est strictement inférieure à la multiplicité algébrique.

**Étapes :**

1.  **Calcul du polynôme caractéristique :**

    On développe le déterminant de $(C-\lambda I)$ par rapport à la troisième colonne, car elle contient beaucoup de zéros.

    $$

    \chi_C(\lambda) = \begin{vmatrix} 1-\lambda & -1 & 0 \\ 1 & 3-\lambda & 0 \\ 0 & 0 & 2-\lambda \end{vmatrix} = (2-\lambda) \begin{vmatrix} 1-\lambda & -1 \\ 1 & 3-\lambda \end{vmatrix}

    $$

    $$

    = (2-\lambda)((1-\lambda)(3-\lambda) + 1) = (2-\lambda)(\lambda^2 - 4\lambda + 3 + 1)

    $$

    $$

    = (2-\lambda)(\lambda^2 - 4\lambda + 4) = (2-\lambda)(\lambda-2)^2 = -(\lambda-2)^3

    $$

2.  **Valeur propre et multiplicité algébrique :**

    Il y a une seule valeur propre, $\lambda=2$, avec une multiplicité algébrique $m_2 = 3$.

3.  **Calcul de la multiplicité géométrique :**

    On doit calculer la dimension du sous-espace propre $E_2 = \ker(C-2I)$.

    $$

    C-2I = \begin{pmatrix} 1-2 & -1 & 0 \\ 1 & 3-2 & 0 \\ 0 & 0 & 2-2 \end{pmatrix} = \begin{pmatrix} -1 & -1 & 0 \\ 1 & 1 & 0 \\ 0 & 0 & 0 \end{pmatrix}

    $$

    Le système $(C-2I)X=0$ se réduit à l'unique équation $x+y=0$ (la deuxième ligne est l'opposée de la première).

    Un vecteur $X = (x, y, z)$ est dans $E_2$ si $y=-x$. Les vecteurs propres sont donc de la forme $(x, -x, z) = x(1, -1, 0) + z(0, 0, 1)$.

    Le sous-espace propre $E_2$ est engendré par les vecteurs $\begin{pmatrix} 1 \\ -1 \\ 0 \end{pmatrix}$ et $\begin{pmatrix} 0 \\ 0 \\ 1 \end{pmatrix}$. Ces deux vecteurs sont linéairement indépendants.

    La dimension de $E_2$ est donc $d_2 = 2$.

4.  **Conclusion :**

    Nous avons trouvé une valeur propre $\lambda=2$ pour laquelle la multiplicité algébrique $m_2 = 3$ est strictement supérieure à la multiplicité géométrique $d_2 = 2$.

    Par conséquent, la matrice $C$ n'est pas diagonalisable.

**Réponse :** La matrice $C$ n'est pas diagonalisable car pour la valeur propre $\lambda=2$, la multiplicité algébrique (3) est différente de la multiplicité géométrique (2).

</details>

---

## Exercice 8 : Décomposition polaire

**Problème :** Trouver la décomposition polaire $M = SO$ de la matrice inversible

$M = \begin{pmatrix} 1 & -1 \\ 3 & 1 \end{pmatrix}$.

Où $S$ est une matrice symétrique définie positive et $O$ est une matrice orthogonale.

<details>

<summary>Solution</summary>

**Méthode :** La décomposition polaire $M=SO$ est obtenue en calculant d'abord $S$ comme l'unique racine carrée symétrique définie positive de $M{}^tM$, puis en déduisant $O$ par $O=S^{-1}M$.

**Étapes :**

1.  **Calculer $R = M{}^tM$ :**

    $$

    M{}^tM = \begin{pmatrix} 1 & -1 \\ 3 & 1 \end{pmatrix} \begin{pmatrix} 1 & 3 \\ -1 & 1 \end{pmatrix} = \begin{pmatrix} 1 \cdot 1 + (-1) \cdot (-1) & 1 \cdot 3 + (-1) \cdot 1 \\ 3 \cdot 1 + 1 \cdot (-1) & 3 \cdot 3 + 1 \cdot 1 \end{pmatrix} = \begin{pmatrix} 2 & 2 \\ 2 & 10 \end{pmatrix}

    $$

    Cette matrice $R$ est bien symétrique.

2.  **Diagonaliser $R$ pour calculer sa racine carrée $S = \sqrt{R}$ :**
    -   **Valeurs propres de R :**

        $\chi_R(\lambda) = (2-\lambda)(10-\lambda) - 4 = \lambda^2 - 12\lambda + 20 - 4 = \lambda^2 - 12\lambda + 16$.

        Les racines sont $\lambda = \frac{12 \pm \sqrt{144 - 64}}{2} = \frac{12 \pm \sqrt{80}}{2} = 6 \pm 2\sqrt{5}$.

        Les valeurs propres, $\lambda_1 = 6+2\sqrt{5}$ et $\lambda_2=6-2\sqrt{5}$, sont bien strictement positives.

    -   **Remarque :** $6 \pm 2\sqrt{5} = (\sqrt{5}\pm1)^2$. Donc les valeurs propres sont $(\sqrt{5}+1)^2$ et $(\sqrt{5}-1)^2$. C'est un calcul difficile.
    -   Une approche alternative, plus simple pour la racine carrée, consiste à poser $S = \begin{pmatrix} a & b \\ b & c \end{pmatrix}$ et résoudre $S^2 = R$.

        $S^2 = \begin{pmatrix} a^2+b^2 & ab+bc \\ ab+bc & b^2+c^2 \end{pmatrix} = \begin{pmatrix} 2 & 2 \\ 2 & 10 \end{pmatrix}$.

        On doit résoudre le système :

        $\begin{cases} a^2+b^2 = 2 \\ b(a+c) = 2 \\ b^2+c^2 = 10 \end{cases}$

        De (1) et (3), $c^2 - a^2 = 8$. De (2), $a+c = 2/b$.

        $(c-a)(c+a) = 8 \Rightarrow (c-a)(2/b) = 8 \Rightarrow c-a = 4b$.

        On a un système en $a$ et $c$ : $c+a=2/b$ et $c-a=4b$.

        En additionnant : $2c = 2/b + 4b \Rightarrow c = 1/b+2b$.

        En soustrayant : $2a = 2/b - 4b \Rightarrow a = 1/b-2b$.

        On injecte dans $a^2+b^2=2$ : $(1/b-2b)^2+b^2=2 \Rightarrow 1/b^2 - 4 + 4b^2 + b^2 = 2 \Rightarrow 5b^4-6b^2+1=0$.

        C'est une équation bicarrée. Soit $X=b^2$. $5X^2-6X+1=0 \Rightarrow (5X-1)(X-1)=0$.

        $b^2=1$ ou $b^2=1/5$. Pour que $S$ soit définie positive, sa trace et son déterminant doivent être positifs. $\det(S) = \sqrt{\det(R)} = \sqrt{16}=4 > 0$. $\text{Tr}(S)=a+c=2/b$ doit être positive, donc on choisit $b>0$.

        Si $b=1$, $a=-1, c=3$. $S=\begin{pmatrix} -1 & 1 \\ 1 & 3 \end{pmatrix}$. $\det(S)=-4$, ne convient pas.

        Si $b=1/\sqrt{5}$, $a = \sqrt{5}-2/\sqrt{5} = 3/\sqrt{5}$, $c = \sqrt{5}+2/\sqrt{5} = 7/\sqrt{5}$.

        Donc $S = \frac{1}{\sqrt{5}} \begin{pmatrix} 3 & 1 \\ 1 & 7 \end{pmatrix}$. Vérifions $S^2 = \frac{1}{5}\begin{pmatrix} 3 & 1 \\ 1 & 7 \end{pmatrix}\begin{pmatrix} 3 & 1 \\ 1 & 7 \end{pmatrix} = \frac{1}{5}\begin{pmatrix} 10 & 10 \\ 10 & 50 \end{pmatrix} = \begin{pmatrix} 2 & 2 \\ 2 & 10 \end{pmatrix} = R$. C'est correct.

3.  **Calculer $O = S^{-1}M$ :**

    $\det(S) = \frac{1}{5}(21-1) = 4$.

    $S^{-1} = \frac{1}{4} \frac{1}{\sqrt{5}} \begin{pmatrix} 7 & -1 \\ -1 & 3 \end{pmatrix} = \frac{1}{4\sqrt{5}} \begin{pmatrix} 7 & -1 \\ -1 & 3 \end{pmatrix}$.

    $$

    O = \frac{1}{4\sqrt{5}} \begin{pmatrix} 7 & -1 \\ -1 & 3 \end{pmatrix} \begin{pmatrix} 1 & -1 \\ 3 & 1 \end{pmatrix} = \frac{1}{4\sqrt{5}} \begin{pmatrix} 4 & -8 \\ 8 & 4 \end{pmatrix} = \frac{1}{\sqrt{5}} \begin{pmatrix} 1 & -2 \\ 2 & 1 \end{pmatrix}.

    $$

    La matrice $O$ est bien orthogonale, car ses colonnes sont orthogonales et de norme 1.

**Réponse :** La décomposition polaire de $M$ est $M = SO$ avec :

$S = \frac{1}{\sqrt{5}} \begin{pmatrix} 3 & 1 \\ 1 & 7 \end{pmatrix}$ et $O = \frac{1}{\sqrt{5}} \begin{pmatrix} 1 & -2 \\ 2 & 1 \end{pmatrix}$.

</details>

---

## Exercice 9 : Propriétés des endomorphismes auto-adjoints

**Problème :** Soit $f$ un endomorphisme auto-adjoint d'un espace euclidien $E$. Soient $\lambda$ et $\mu$ deux valeurs propres distinctes de $f$, et soient $u$ et $v$ des vecteurs propres associés, respectivement.

Démontrez que $u$ et $v$ sont orthogonaux.

<details>

<summary>Solution</summary>

**Méthode :** La démonstration repose sur la définition d'un endomorphisme auto-adjoint, $\langle f(x), y \rangle = \langle x, f(y) \rangle$, et sur la définition des vecteurs propres, $f(u) = \lambda u$ et $f(v) = \mu v$.

**Étapes :**

1.  **Utiliser la définition de l'endomorphisme auto-adjoint :**

    Puisque $f$ est auto-adjoint, on a pour les vecteurs $u$ et $v$ :

    $$

    \langle f(u), v \rangle = \langle u, f(v) \rangle

    $$

2.  **Utiliser la définition des vecteurs propres :**

    On sait que $f(u) = \lambda u$ et $f(v) = \mu v$. On remplace ces expressions dans l'égalité précédente.

    Le membre de gauche devient :

    $$

    \langle f(u), v \rangle = \langle \lambda u, v \rangle = \lambda \langle u, v \rangle

    $$

    Le membre de droite devient :

    $$

    \langle u, f(v) \rangle = \langle u, \mu v \rangle = \mu \langle u, v \rangle

    $$

    (Note : comme les valeurs propres d'un endomorphisme auto-adjoint sont réelles, $\mu = \bar{\mu}$).

3.  **Combiner les résultats :**

    L'égalité initiale devient donc :

    $$

    \lambda \langle u, v \rangle = \mu \langle u, v \rangle

    $$

4.  **Conclure :**

    On peut réarranger l'équation :

    $$

    (\lambda - \mu) \langle u, v \rangle = 0

    $$

    Par hypothèse, les valeurs propres $\lambda$ et $\mu$ sont distinctes, donc $\lambda - \mu \neq 0$.

    Pour que le produit soit nul, il faut nécessairement que l'autre facteur soit nul.

    $$

    \langle u, v \rangle = 0

    $$

    Ceci prouve que les vecteurs $u$ et $v$ sont orthogonaux.

**Réponse :** La démonstration montre que si $f$ est auto-adjoint et $u, v$ sont des vecteurs propres pour des valeurs propres distinctes $\lambda, \mu$, alors $(\lambda - \mu) \langle u, v \rangle = 0$. Comme $\lambda \neq \mu$, on doit avoir $\langle u, v \rangle = 0$.

</details>

---

## Exercice 10 : Application à la géométrie - Formes quadratiques

**Problème :** Soit la forme quadratique $q$ sur $\mathbb{R}^2$ définie par $q(x, y) = 5x^2 + 8y^2 + 4xy$.

1.  Trouvez la matrice symétrique $S$ associée à cette forme quadratique, telle que $q(X) = {}^tX S X$ où $X = \begin{pmatrix} x \\ y \end{pmatrix}$.
2.  En utilisant les résultats de l'**Exercice 4** sur la matrice $S = \begin{pmatrix} 5 & 2 \\ 2 & 8 \end{pmatrix}$, montrez que $q(x, y)$ est toujours strictement positive pour tout $(x, y) \neq (0, 0)$.
3.  Exprimez $q$ en fonction des nouvelles coordonnées $(x', y')$ dans la base des vecteurs propres de $S$. Quelle est l'interprétation géométrique ?

<details>

<summary>Solution</summary>

**Méthode :** Une forme quadratique peut être représentée par une matrice symétrique. Le signe de la forme quadratique est directement lié au signe des valeurs propres de cette matrice. La diagonalisation de la matrice correspond à un changement de base qui simplifie l'expression de la forme quadratique.

**Étapes :**

1.  **Détermination de la matrice S :**

    La forme générale d'une forme quadratique en 2D est $ax^2 + 2bxy + cy^2$. La matrice associée est $S=\begin{pmatrix} a & b \\ b & c \end{pmatrix}$.

    Ici, $a=5$, $c=8$, et $2b=4 \Rightarrow b=2$.

    Donc, $S = \begin{pmatrix} 5 & 2 \\ 2 & 8 \end{pmatrix}$.

2.  **Signe de la forme quadratique :**

    Dans l'exercice 4, nous avons trouvé que les valeurs propres de $S$ sont $\lambda_1 = 4$ et $\lambda_2 = 9$.

    Comme toutes les valeurs propres de la matrice symétrique $S$ sont strictement positives, la matrice est définie positive.

    Par définition, cela signifie que pour tout vecteur $X \neq 0$, on a ${}^tX S X > 0$.

    Donc, $q(x, y) = 5x^2 + 8y^2 + 4xy > 0$ pour tout $(x, y) \neq (0, 0)$.

3.  **Expression dans la base des vecteurs propres :**

    Le théorème spectral nous dit qu'il existe un changement de base orthogonal $X = PX'$ qui diagonalise la matrice, et donc la forme quadratique.

    ${}^tX S X = {}^t(PX') S (PX') = {}^tX' ({}^tPSP) X' = {}^tX' D X'$.

    Avec les résultats de l'exercice 4, $D = \begin{pmatrix} 4 & 0 \\ 0 & 9 \end{pmatrix}$.

    Si $X' = \begin{pmatrix} x' \\ y' \end{pmatrix}$, alors :

    $$

    q(x', y') = \begin{pmatrix} x' & y' \end{pmatrix} \begin{pmatrix} 4 & 0 \\ 0 & 9 \end{pmatrix} \begin{pmatrix} x' \\ y' \end{pmatrix} = 4(x')^2 + 9(y')^2

    $$

    **Interprétation géométrique :** L'équation $q(x,y)=k$ (pour $k>0$) représente une ellipse dans le plan $(x,y)$. Le changement de base vers $(x', y')$ correspond à une rotation des axes du repère pour les aligner avec les axes principaux de l'ellipse. Dans ce nouveau repère, l'équation de l'ellipse prend une forme simple, sans terme croisé $(x'y')$. Les valeurs propres $4$ et $9$ sont liées aux longueurs des demi-axes de l'ellipse.

**Réponse :**

1. $S = \begin{pmatrix} 5 & 2 \\ 2 & 8 \end{pmatrix}$.
2. Les valeurs propres de $S$ (4 et 9) sont strictement positives, donc $S$ est définie positive, ce qui implique $q(x,y) > 0$ pour $(x,y) \neq (0,0)$.
3. Dans la base des vecteurs propres, $q(x', y') = 4(x')^2 + 9(y')^2$. Cela correspond à l'équation d'une ellipse alignée avec les nouveaux axes de coordonnées.

</details>
