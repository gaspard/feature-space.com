---
id: '85ae1893'
title: A - Exercices
layout: '../../../layouts/Layout.astro'
order: 11
level: basic
chapter: 1 - Espaces Euclidiens et Hermitiens
course: Géométrie
---

# Exercises: 1 - Espaces Euclidiens et Hermitiens

## Exercice 1: Problème de Calcul

**Problème:** Soit l'application $\varphi: \mathbb{R}^2 \times \mathbb{R}^2 \to \mathbb{R}$ définie par $\varphi(x, y) = 2x_1 y_1 - x_1 y_2 + x_2 y_1 - 3x_2 y_2$. Soient les vecteurs $u = (1, 2)$ et $v = (3, -1)$. Calculez $\varphi(u, v)$.

<details>
<summary>Solution</summary>

**Méthode:** Il suffit de remplacer les composantes des vecteurs $u$ et $v$ dans la formule définissant $\varphi$. Pour $u=(u_1, u_2)$ et $v=(v_1, v_2)$, on remplace $x_1, x_2$ par $u_1, u_2$ et $y_1, y_2$ par $v_1, v_2$.

**Étapes:**

1.  Identifier les composantes des vecteurs :
    Pour $u = (1, 2)$, on a $u_1=1$ et $u_2=2$.
    Pour $v = (3, -1)$, on a $v_1=3$ et $v_2=-1$.

2.  Substituer ces valeurs dans l'expression de $\varphi(u, v)$:
    $\varphi(u, v) = 2u_1 v_1 - u_1 v_2 + u_2 v_1 - 3u_2 v_2$
    $\varphi(u, v) = 2(1)(3) - (1)(-1) + (2)(3) - 3(2)(-1)$

3.  Effectuer le calcul :
    $\varphi(u, v) = 6 - (-1) + 6 - (-6)$
    $\varphi(u, v) = 6 + 1 + 6 + 6$
    $\varphi(u, v) = 19$

**Réponse:** $\varphi(u, v) = 19$

</details>

## Exercice 2: Question Conceptuelle

**Problème:** L'application $\psi: \mathbb{R}^2 \times \mathbb{R}^2 \to \mathbb{R}$ définie par $\psi(x, y) = x_1 y_1 + x_2^2$ est-elle une forme bilinéaire ? Justifiez.

<details>
<summary>Solution</summary>

**Méthode:** Pour qu'une application soit une forme bilinéaire, elle doit être linéaire par rapport à chacune de ses deux variables. Nous allons tester la linéarité par rapport à la première variable. La condition de linéarité est $\psi(u + \lambda v, w) = \psi(u, w) + \lambda\psi(v, w)$ pour tous vecteurs $u, v, w$ et tout scalaire $\lambda$. Un simple test avec $\psi(\lambda u, w) = \lambda \psi(u, w)$ suffit souvent.

**Étapes:**

1.  Soient $x = (x_1, x_2)$, $y = (y_1, y_2)$ deux vecteurs de $\mathbb{R}^2$ et $\lambda \in \mathbb{R}$ un scalaire.
2.  Calculons $\psi(\lambda x, y)$. Le vecteur $\lambda x$ a pour composantes $(\lambda x_1, \lambda x_2)$.
    $\psi(\lambda x, y) = (\lambda x_1)y_1 + (\lambda x_2)^2 = \lambda x_1 y_1 + \lambda^2 x_2^2$
3.  Calculons $\lambda \psi(x, y)$.
    $\lambda \psi(x, y) = \lambda (x_1 y_1 + x_2^2) = \lambda x_1 y_1 + \lambda x_2^2$
4.  Comparons les deux expressions.
    On a $\lambda x_1 y_1 + \lambda^2 x_2^2 \neq \lambda x_1 y_1 + \lambda x_2^2$ en général (par exemple si $\lambda=2$ et $x_2 \neq 0$). L'égalité n'est pas toujours vraie.
5.  Conclusion : L'application n'est pas linéaire par rapport à sa première variable. Elle n'est donc pas une forme bilinéaire.

**Réponse:** Non, l'application $\psi$ n'est pas une forme bilinéaire car elle n'est pas linéaire par rapport à sa première variable (à cause du terme $x_2^2$).

</details>

## Exercice 3: Question Conceptuelle

**Problème:** La forme bilinéaire $\varphi: \mathbb{R}^2 \times \mathbb{R}^2 \to \mathbb{R}$ définie par $\varphi(x, y) = 3x_1 y_1 - 2x_2 y_2$ est-elle un produit scalaire ? Justifiez.

<details>
<summary>Solution</summary>

**Méthode:** Un produit scalaire est une forme bilinéaire symétrique et définie positive.

1.  Vérifier la symétrie : $\varphi(x, y) = \varphi(y, x)$.
2.  Vérifier si elle est définie positive : $\varphi(x, x) \ge 0$ pour tout $x$, et $\varphi(x, x) = 0 \iff x=0$.
    Si l'une de ces conditions n'est pas remplie, ce n'est pas un produit scalaire.

**Étapes:**

1.  **Symétrie :**
    $\varphi(y, x) = 3y_1 x_1 - 2y_2 x_2 = 3x_1 y_1 - 2x_2 y_2 = \varphi(x, y)$.
    La forme est symétrique.

2.  **Définie positive :**
    Calculons $\varphi(x, x)$ pour un vecteur $x = (x_1, x_2)$.
    $\varphi(x, x) = 3x_1^2 - 2x_2^2$.
    Pour que la forme soit positive, cette quantité doit être supérieure ou égale à 0 pour _tous_ les vecteurs $x$.
    Cherchons un contre-exemple. Prenons un vecteur où $x_2$ est grand et $x_1$ est petit. Soit $x = (0, 1)$.
    $\varphi((0,1), (0,1)) = 3(0)^2 - 2(1)^2 = -2$.
    Puisque $\varphi(x, x) = -2 < 0$ pour ce vecteur non nul, la forme n'est pas positive.

3.  **Conclusion :**
    La forme $\varphi$ n'étant pas positive, elle ne peut pas être un produit scalaire.

**Réponse:** Non, car la forme n'est pas positive. Par exemple, pour le vecteur $x=(0,1)$, on a $\varphi(x,x) = -2 < 0$.

</details>

## Exercice 4: Problème de Calcul

**Problème:** Dans l'espace hermitien $\mathbb{C}^2$ muni du produit scalaire canonique $\langle u, v \rangle = u_1 \bar{v}_1 + u_2 \bar{v}_2$, soient les vecteurs $u = (i, 2-i)$ et $v = (3, 1+i)$.

1. Calculez le produit scalaire $\langle u, v \rangle$.
2. Calculez la norme $\|u\|$.

<details>
<summary>Solution</summary>

**Méthode:** On applique les définitions du produit scalaire hermitien canonique et de la norme associée $\|u\| = \sqrt{\langle u, u \rangle}$. Il faut faire attention à bien utiliser le conjugué pour la deuxième variable du produit scalaire.

**Étapes:**

1.  **Calcul de $\langle u, v \rangle$ :**
    Les composantes sont $u_1=i, u_2=2-i$ et $v_1=3, v_2=1+i$.
    Le conjugué de $v_1$ est $\bar{v}_1 = 3$.
    Le conjugué de $v_2$ est $\bar{v}_2 = \overline{1+i} = 1-i$.
    $\langle u, v \rangle = u_1 \bar{v}_1 + u_2 \bar{v}_2 = (i)(3) + (2-i)(1-i)$.
    $\langle u, v \rangle = 3i + (2 - 2i - i + i^2) = 3i + (2 - 3i - 1) = 3i + (1 - 3i)$.
    $\langle u, v \rangle = 1$.

2.  **Calcul de $\|u\|$ :**
    D'abord, on calcule $\|u\|^2 = \langle u, u \rangle$.
    $\|u\|^2 = u_1 \bar{u}_1 + u_2 \bar{u}_2$.
    $\bar{u}_1 = \bar{i} = -i$.
    $\bar{u}_2 = \overline{2-i} = 2+i$.
    $\|u\|^2 = (i)(-i) + (2-i)(2+i) = -i^2 + (2^2 - i^2) = -(-1) + (4 - (-1)) = 1 + 5 = 6$.
    La norme est la racine carrée de ce résultat :
    $\|u\| = \sqrt{6}$.

**Réponse:**

1.  $\langle u, v \rangle = 1$
2.  $\|u\| = \sqrt{6}$

</details>

## Exercice 5: Problème d'Application

**Problème:** Dans $\mathbb{R}^3$ muni du produit scalaire usuel, soient les vecteurs $x = (1, 2, 2)$ et $y = (1, 0, -1)$. Vérifiez l'inégalité de Cauchy-Schwarz $|\langle x, y \rangle| \le \|x\| \|y\|$.

<details>
<summary>Solution</summary>

**Méthode:** On calcule séparément le membre de gauche ($|\langle x, y \rangle|$) et le membre de droite ($\|x\| \|y\|$) de l'inégalité, puis on les compare.

**Étapes:**

1.  **Calculer le produit scalaire $\langle x, y \rangle$ :**
    $\langle x, y \rangle = x_1 y_1 + x_2 y_2 + x_3 y_3 = (1)(1) + (2)(0) + (2)(-1) = 1 + 0 - 2 = -1$.

2.  **Calculer la valeur absolue du produit scalaire :**
    $|\langle x, y \rangle| = |-1| = 1$.

3.  **Calculer la norme de $x$ :**
    $\|x\| = \sqrt{x_1^2 + x_2^2 + x_3^2} = \sqrt{1^2 + 2^2 + 2^2} = \sqrt{1 + 4 + 4} = \sqrt{9} = 3$.

4.  **Calculer la norme de $y$ :**
    $\|y\| = \sqrt{y_1^2 + y_2^2 + y_3^2} = \sqrt{1^2 + 0^2 + (-1)^2} = \sqrt{1 + 0 + 1} = \sqrt{2}$.

5.  **Calculer le produit des normes :**
    $\|x\| \|y\| = 3 \sqrt{2}$.

6.  **Comparer les deux côtés :**
    On doit vérifier si $1 \le 3\sqrt{2}$.
    Puisque $\sqrt{2} \approx 1.414$, on a $3\sqrt{2} \approx 4.242$.
    Clairement, $1 \le 3\sqrt{2}$. L'inégalité est vérifiée.

**Réponse:** On a $|\langle x, y \rangle| = 1$ et $\|x\| \|y\| = 3\sqrt{2}$. Comme $1 \le 3\sqrt{2}$, l'inégalité de Cauchy-Schwarz est vérifiée.

</details>

## Exercice 6: Problème d'Application

**Problème:** Soient les vecteurs $u = (1, -2, 3)$ et $v = (-2, 4, -6)$ dans $\mathbb{R}^3$.

1. Montrez que $u$ et $v$ sont colinéaires.
2. Vérifiez que pour ces vecteurs, on a l'égalité dans l'inégalité de Cauchy-Schwarz, c'est-à-dire $|\langle u, v \rangle| = \|u\| \|v\|$.

<details>
<summary>Solution</summary>

**Méthode:** Pour montrer la colinéarité, il faut trouver un scalaire $\lambda$ tel que $v = \lambda u$. Ensuite, on calcule les deux membres de l'égalité $|\langle u, v \rangle| = \|u\| \|v\|$ et on vérifie qu'ils sont identiques.

**Étapes:**

1.  **Vérifier la colinéarité :**
    On compare les composantes de $v$ à celles de $u$.
    $v_1 = -2 = -2 \cdot u_1$
    $v_2 = 4 = -2 \cdot u_2$
    $v_3 = -6 = -2 \cdot u_3$
    On voit que $v = -2u$. Les vecteurs sont donc colinéaires.

2.  **Calculer $|\langle u, v \rangle|$ :**
    $\langle u, v \rangle = (1)(-2) + (-2)(4) + (3)(-6) = -2 - 8 - 18 = -28$.
    $|\langle u, v \rangle| = |-28| = 28$.

3.  **Calculer $\|u\|$ :**
    $\|u\| = \sqrt{1^2 + (-2)^2 + 3^2} = \sqrt{1 + 4 + 9} = \sqrt{14}$.

4.  **Calculer $\|v\|$ :**
    $\|v\| = \sqrt{(-2)^2 + 4^2 + (-6)^2} = \sqrt{4 + 16 + 36} = \sqrt{56}$.
    On peut simplifier : $\sqrt{56} = \sqrt{4 \cdot 14} = 2\sqrt{14}$.

5.  **Calculer $\|u\| \|v\|$ :**
    $\|u\| \|v\| = \sqrt{14} \cdot (2\sqrt{14}) = 2 \cdot 14 = 28$.

6.  **Comparer :**
    On a $|\langle u, v \rangle| = 28$ et $\|u\| \|v\| = 28$. L'égalité est bien vérifiée.

**Réponse:** Les vecteurs sont colinéaires car $v=-2u$. On calcule $|\langle u, v \rangle| = 28$ et $\|u\|\|v\| = \sqrt{14} \cdot \sqrt{56} = 28$. L'égalité est donc vérifiée, comme attendu pour des vecteurs colinéaires.

</details>

## Exercice 7: Problème de Calcul

**Problème:** Dans $\mathbb{R}^3$ avec le produit scalaire usuel, les vecteurs $u = (2, 1, -5)$ et $v = (3, 4, 2)$ sont-ils orthogonaux ?

<details>
<summary>Solution</summary>

**Méthode:** Deux vecteurs sont orthogonaux si et seulement si leur produit scalaire est nul. Il faut donc calculer $\langle u, v \rangle$ et vérifier s'il est égal à 0.

**Étapes:**

1.  **Rappel de la définition de l'orthogonalité :**
    $u \perp v \iff \langle u, v \rangle = 0$.

2.  **Calcul du produit scalaire :**
    $\langle u, v \rangle = u_1 v_1 + u_2 v_2 + u_3 v_3$
    $\langle u, v \rangle = (2)(3) + (1)(4) + (-5)(2)$
    $\langle u, v \rangle = 6 + 4 - 10$
    $\langle u, v \rangle = 0$.

3.  **Conclusion :**
    Le produit scalaire est nul, donc les vecteurs sont orthogonaux.

**Réponse:** Oui, les vecteurs sont orthogonaux car leur produit scalaire est $\langle u, v \rangle = 0$.

</details>

## Exercice 8: Problème d'Application

**Problème:** Soient les vecteurs $x = (2, -2, 1)$ et $y = (1, 2, 2)$ dans $\mathbb{R}^3$.

1.  Vérifiez que $x$ et $y$ sont orthogonaux.
2.  Vérifiez le théorème de Pythagore, c'est-à-dire que $\|x+y\|^2 = \|x\|^2 + \|y\|^2$.

<details>
<summary>Solution</summary>

**Méthode:** D'abord, on calcule le produit scalaire pour vérifier l'orthogonalité. Ensuite, on calcule chaque terme de l'équation de Pythagore (le membre de gauche et les deux termes du membre de droite) et on vérifie l'égalité.

**Étapes:**

1.  **Vérifier l'orthogonalité :**
    $\langle x, y \rangle = (2)(1) + (-2)(2) + (1)(2) = 2 - 4 + 2 = 0$.
    Les vecteurs sont bien orthogonaux.

2.  **Calculer le membre de gauche : $\|x+y\|^2$**
    D'abord, le vecteur somme : $x+y = (2+1, -2+2, 1+2) = (3, 0, 3)$.
    Ensuite, le carré de sa norme : $\|x+y\|^2 = 3^2 + 0^2 + 3^2 = 9 + 0 + 9 = 18$.

3.  **Calculer le membre de droite : $\|x\|^2 + \|y\|^2$**
    Calculons chaque terme séparément :
    $\|x\|^2 = 2^2 + (-2)^2 + 1^2 = 4 + 4 + 1 = 9$.
    $\|y\|^2 = 1^2 + 2^2 + 2^2 = 1 + 4 + 4 = 9$.
    La somme est : $\|x\|^2 + \|y\|^2 = 9 + 9 = 18$.

4.  **Comparer :**
    Le membre de gauche vaut 18 et le membre de droite vaut 18. L'égalité est vérifiée.

**Réponse:** Les vecteurs sont orthogonaux car $\langle x, y \rangle = 0$. On a $\|x+y\|^2 = 18$ et $\|x\|^2 + \|y\|^2 = 9+9=18$. Le théorème de Pythagore est donc vérifié.

</details>

## Exercice 9: Question Conceptuelle

**Problème:** La famille de vecteurs $\mathcal{B} = \left\{ u = (\frac{1}{\sqrt{2}}, \frac{1}{\sqrt{2}}), v = (\frac{1}{\sqrt{2}}, -\frac{1}{\sqrt{2}}) \right\}$ forme-t-elle une base orthonormée de $\mathbb{R}^2$ ?

<details>
<summary>Solution</summary>

**Méthode:** Une base est orthonormée si tous ses vecteurs sont de norme 1 (normalisation) et s'ils sont deux à deux orthogonaux (orthogonalité). Il faut vérifier ces deux conditions.

**Étapes:**

1.  **Vérifier la normalisation des vecteurs :**
    Calculons la norme de $u$ :
    $\|u\| = \sqrt{(\frac{1}{\sqrt{2}})^2 + (\frac{1}{\sqrt{2}})^2} = \sqrt{\frac{1}{2} + \frac{1}{2}} = \sqrt{1} = 1$.
    Calculons la norme de $v$ :
    $\|v\| = \sqrt{(\frac{1}{\sqrt{2}})^2 + (-\frac{1}{\sqrt{2}})^2} = \sqrt{\frac{1}{2} + \frac{1}{2}} = \sqrt{1} = 1$.
    Les deux vecteurs sont bien de norme 1.

2.  **Vérifier l'orthogonalité des vecteurs :**
    Calculons le produit scalaire $\langle u, v \rangle$ :
    $\langle u, v \rangle = (\frac{1}{\sqrt{2}})(\frac{1}{\sqrt{2}}) + (\frac{1}{\sqrt{2}})(-\frac{1}{\sqrt{2}}) = \frac{1}{2} - \frac{1}{2} = 0$.
    Les vecteurs sont orthogonaux.

3.  **Conclusion :**
    La famille est composée de deux vecteurs orthogonaux et de norme 1. Dans un espace de dimension 2, une famille orthogonale de deux vecteurs non nuls forme une base. Comme les conditions d'orthogonalité et de normalisation sont remplies, c'est une base orthonormée.

**Réponse:** Oui, la famille est une base orthonormée car les vecteurs sont de norme 1 et sont orthogonaux entre eux.

</details>

## Exercice 10: Problème de Calcul

**Problème:** Dans $\mathbb{R}^2$, on considère la base $(v_1, v_2)$ avec $v_1 = (4, 3)$ et $v_2 = (1, 1)$. Appliquez l'algorithme de Gram-Schmidt pour trouver le premier vecteur $e_1$ de la base orthonormée.

<details>
<summary>Solution</summary>

**Méthode:** La première étape de l'algorithme de Gram-Schmidt consiste à prendre le premier vecteur de la base initiale ($v_1$) et à le normaliser pour obtenir le premier vecteur de la base orthonormée ($e_1$). La normalisation consiste à diviser le vecteur par sa propre norme.

**Étapes:**

1.  **Prendre le premier vecteur :**
    Le premier vecteur est $v_1 = (4, 3)$.

2.  **Calculer sa norme :**
    $\|v_1\| = \sqrt{4^2 + 3^2} = \sqrt{16 + 9} = \sqrt{25} = 5$.

3.  **Normaliser le vecteur :**
    $e_1 = \frac{v_1}{\|v_1\|} = \frac{1}{5}(4, 3)$.

4.  **Donner le résultat :**
    $e_1 = (\frac{4}{5}, \frac{3}{5})$.

**Réponse:** Le premier vecteur de la base orthonormée est $e_1 = (\frac{4}{5}, \frac{3}{5})$.

</details>

## Exercice 11: Problème de Calcul

**Problème:** Dans $\mathbb{R}^2$, soit $F$ la droite vectorielle engendrée par le vecteur $v = (1, 3)$. Calculez la projection orthogonale du vecteur $x = (5, 5)$ sur $F$.

<details>
<summary>Solution</summary>

**Méthode:** La projection orthogonale d'un vecteur $x$ sur une droite engendrée par un vecteur non nul $v$ est donnée par la formule $P_F(x) = \frac{\langle x, v \rangle}{\|v\|^2} v$.

**Étapes:**

1.  **Calculer le produit scalaire $\langle x, v \rangle$ :**
    $x = (5, 5)$, $v = (1, 3)$.
    $\langle x, v \rangle = (5)(1) + (5)(3) = 5 + 15 = 20$.

2.  **Calculer le carré de la norme de $v$ :**
    $\|v\|^2 = 1^2 + 3^2 = 1 + 9 = 10$.

3.  **Appliquer la formule de projection :**
    $P_F(x) = \frac{20}{10} v = 2v$.

4.  **Calculer le vecteur final :**
    $P_F(x) = 2(1, 3) = (2, 6)$.

**Réponse:** La projection orthogonale de $x$ sur $F$ est le vecteur $P_F(x) = (2, 6)$.

</details>

## Exercice 12: Problème d'Application

**Problème:** Dans $\mathbb{R}^3$, soit $F$ le plan d'équation $z=0$ (le plan $xy$). Calculez la distance du point $x = (3, 4, 5)$ au plan $F$.

<details>
<summary>Solution</summary>

**Méthode:** La distance d'un point $x$ à un sous-espace $F$ est donnée par $d(x, F) = \|x - P_F(x)\|$, où $P_F(x)$ est la projection orthogonale de $x$ sur $F$.
Pour projeter un point $(x_1, x_2, x_3)$ sur le plan $z=0$, il suffit de mettre sa coordonnée $z$ à 0.

**Étapes:**

1.  **Identifier le sous-espace et le point :**
    Le point est $x = (3, 4, 5)$.
    Le sous-espace $F$ est le plan $xy$.

2.  **Calculer la projection orthogonale de $x$ sur $F$ :**
    Un point $(a,b,c)$ se projette sur le plan $z=0$ en $(a,b,0)$.
    Donc, $P_F(x) = (3, 4, 0)$.

3.  **Calculer le vecteur $x - P_F(x)$ :**
    $x - P_F(x) = (3, 4, 5) - (3, 4, 0) = (0, 0, 5)$.

4.  **Calculer la norme de ce vecteur, qui est la distance :**
    $d(x, F) = \|(0, 0, 5)\| = \sqrt{0^2 + 0^2 + 5^2} = \sqrt{25} = 5$.

**Réponse:** La distance du point $x=(3,4,5)$ au plan $F$ est $d(x,F) = 5$.

</details>

## Exercice 13: Problème de Calcul

**Problème:** Soit $f$ un endomorphisme de l'espace euclidien $\mathbb{R}^2$ dont la matrice dans la base canonique (qui est orthonormée) est $A = \begin{pmatrix} 1 & 2 \\ 3 & 4 \end{pmatrix}$. Quelle est la matrice de son adjoint $f^*$ dans cette même base ?

<details>
<summary>Solution</summary>

**Méthode:** Dans un espace euclidien, si la base est orthonormée, la matrice de l'endomorphisme adjoint $f^*$ est la transposée de la matrice de $f$.

**Étapes:**

1.  **Identifier la matrice de $f$ :**
    $A = \text{Mat}(f) = \begin{pmatrix} 1 & 2 \\ 3 & 4 \end{pmatrix}$.

2.  **Appliquer la propriété :**
    La matrice de l'adjoint $f^*$ est $A^* = {}^tA$.

3.  **Calculer la transposée :**
    Pour transposer une matrice, on échange les lignes et les colonnes.
    ${}^tA = \begin{pmatrix} 1 & 3 \\ 2 & 4 \end{pmatrix}$.

**Réponse:** La matrice de l'adjoint $f^*$ dans la base canonique est $\begin{pmatrix} 1 & 3 \\ 2 & 4 \end{pmatrix}$.

</details>

## Exercice 14: Problème de Calcul

**Problème:** Soit $g$ un endomorphisme de l'espace hermitien $\mathbb{C}^2$ dont la matrice dans la base canonique (qui est orthonormée) est $B = \begin{pmatrix} i & 2 \\ 1-i & 3+2i \end{pmatrix}$. Quelle est la matrice de son adjoint $g^*$ dans cette même base ?

<details>
<summary>Solution</summary>

**Méthode:** Dans un espace hermitien, si la base est orthonormée, la matrice de l'endomorphisme adjoint $g^*$ est la transposée conjuguée de la matrice de $g$. On transpose d'abord la matrice, puis on prend le conjugué de chaque coefficient.

**Étapes:**

1.  **Identifier la matrice de $g$ :**
    $B = \text{Mat}(g) = \begin{pmatrix} i & 2 \\ 1-i & 3+2i \end{pmatrix}$.

2.  **Calculer la transposée de $B$ :**
    ${}^tB = \begin{pmatrix} i & 1-i \\ 2 & 3+2i \end{pmatrix}$.

3.  **Calculer le conjugué de chaque coefficient de la transposée :**
    Le conjugué de $i$ est $-i$.
    Le conjugué de $1-i$ est $1+i$.
    Le conjugué de $2$ est $2$ (c'est un réel).
    Le conjugué de $3+2i$ est $3-2i$.

4.  **Écrire la matrice finale :**
    $B^* = \overline{{}^tB} = \begin{pmatrix} -i & 1+i \\ 2 & 3-2i \end{pmatrix}$.

**Réponse:** La matrice de l'adjoint $g^*$ dans la base canonique est $\begin{pmatrix} -i & 1+i \\ 2 & 3-2i \end{pmatrix}$.

</details>
