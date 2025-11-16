---
id: c1b05b19
type: exercises
order: 11
title: Espaces Euclidiens et Hermitiens - exercices (A)
tags:
  - Espaces Euclidiens
  - Espaces Hermitiens
  - Produit scalaire
  - Gram-Schmidt
  - Projection orthogonale
  - Endomorphismes adjoints
  - Théorème de Riesz
createdAt: '2025-10-12T18:13:04.161Z'
level: regular
course: Géométrie
courseId: d9494343
chapter: Espaces Euclidiens et Hermitiens
chapterId: 67b3d760
---
# Exercices "Espaces Euclidiens et Hermitiens" (A)

---

## Exercice 1

**Problème:** Soit l'application $\varphi: \mathbb{R}^2 \times \mathbb{R}^2 \to \mathbb{R}$ définie pour $x=(x_1, x_2)$ et $y=(y_1, y_2)$ par :

$\varphi(x, y) = 2x_1y_1 + x_1y_2 + x_2y_1 + 3x_2y_2$.

Montrer que $\varphi$ est une forme bilinéaire symétrique.

<details>

<summary>Solution</summary>

**Méthode:** Pour montrer que $\varphi$ est une forme bilinéaire, nous devons vérifier la linéarité par rapport à la première variable et par rapport à la seconde variable. Pour montrer qu'elle est symétrique, nous devons vérifier que $\varphi(x, y) = \varphi(y, x)$ pour tous $x, y \in \mathbb{R}^2$.

**Étapes:**

1.  **Vérifier la linéarité à gauche.** Soient $x, z \in \mathbb{R}^2$ et $\lambda \in \mathbb{R}$. On a $x = (x_1, x_2)$ et $z = (z_1, z_2)$.

    $\lambda x + z = (\lambda x_1 + z_1, \lambda x_2 + z_2)$.

    Calculons $\varphi(\lambda x + z, y)$:

    $\varphi(\lambda x + z, y) = 2(\lambda x_1 + z_1)y_1 + (\lambda x_1 + z_1)y_2 + (\lambda x_2 + z_2)y_1 + 3(\lambda x_2 + z_2)y_2$

    Distribuons les termes :

    $= (2\lambda x_1y_1 + 2z_1y_1) + (\lambda x_1y_2 + z_1y_2) + (\lambda x_2y_1 + z_2y_1) + (3\lambda x_2y_2 + 3z_2y_2)$

    Regroupons les termes en $\lambda$ :

    $= \lambda(2x_1y_1 + x_1y_2 + x_2y_1 + 3x_2y_2) + (2z_1y_1 + z_1y_2 + z_2y_1 + 3z_2y_2)$

    $= \lambda \varphi(x, y) + \varphi(z, y)$

    La linéarité à gauche est vérifiée.

2.  **Vérifier la symétrie.**

    Calculons $\varphi(x, y)$ et $\varphi(y, x)$.

    $\varphi(x, y) = 2x_1y_1 + x_1y_2 + x_2y_1 + 3x_2y_2$.

    $\varphi(y, x) = 2y_1x_1 + y_1x_2 + y_2x_1 + 3y_2x_2$.

    En réorganisant les termes, on voit que les deux expressions sont identiques.

    $\varphi(y, x) = 2x_1y_1 + x_2y_1 + x_1y_2 + 3x_2y_2 = \varphi(x, y)$.

    La forme est donc symétrique.

3.  **Conclusion sur la bilinéarité.**

    Puisque $\varphi$ est linéaire à gauche et symétrique, elle est aussi linéaire à droite.

    En effet, $\varphi(x, \lambda y + z) = \varphi(\lambda y + z, x) = \lambda\varphi(y, x) + \varphi(z, x) = \lambda\varphi(x, y) + \varphi(x, z)$.

    Ainsi, $\varphi$ est bien une forme bilinéaire.

**Réponse:** L'application $\varphi$ est une forme bilinéaire symétrique.

</details>

---

## Exercice 2

**Problème:** Soit $E = \mathbb{C}^2$ et l'application $\varphi: E \times E \to \mathbb{C}$ définie pour $x=(x_1, x_2)$ et $y=(y_1, y_2)$ par :

$\varphi(x, y) = 2x_1\bar{y_1} + ix_1\bar{y_2} - ix_2\bar{y_1} + 3x_2\bar{y_2}$.

Montrer que $\varphi$ est une forme sesquilinéaire hermitienne.

<details>

<summary>Solution</summary>

**Méthode:** Nous devons vérifier que $\varphi$ est linéaire par rapport à sa première variable et semi-linéaire par rapport à sa seconde. Ensuite, nous devons montrer qu'elle est hermitienne, c'est-à-dire $\varphi(x, y) = \overline{\varphi(y, x)}$.

**Étapes:**

1.  **Vérifier la linéarité à gauche.** Soient $x, z \in \mathbb{C}^2$ et $\lambda \in \mathbb{C}$.

    $\varphi(\lambda x + z, y) = 2(\lambda x_1+z_1)\bar{y_1} + i(\lambda x_1+z_1)\bar{y_2} - i(\lambda x_2+z_2)\bar{y_1} + 3(\lambda x_2+z_2)\bar{y_2}$

    $= \lambda(2x_1\bar{y_1} + ix_1\bar{y_2} - ix_2\bar{y_1} + 3x_2\bar{y_2}) + (2z_1\bar{y_1} + iz_1\bar{y_2} - iz_2\bar{y_1} + 3z_2\bar{y_2})$

    $= \lambda\varphi(x, y) + \varphi(z, y)$.

    La linéarité à gauche est vérifiée.

2.  **Vérifier la semi-linéarité à droite.** Soient $y, z \in \mathbb{C}^2$ et $\lambda \in \mathbb{C}$.

    $\varphi(x, \lambda y + z) = 2x_1\overline{(\lambda y_1+z_1)} + ix_1\overline{(\lambda y_2+z_2)} - ix_2\overline{(\lambda y_1+z_1)} + 3x_2\overline{(\lambda y_2+z_2)}$

    $= 2x_1(\bar{\lambda}\bar{y_1}+\bar{z_1}) + ix_1(\bar{\lambda}\bar{y_2}+\bar{z_2}) - ix_2(\bar{\lambda}\bar{y_1}+\bar{z_1}) + 3x_2(\bar{\lambda}\bar{y_2}+\bar{z_2})$

    $= \bar{\lambda}(2x_1\bar{y_1} + ix_1\bar{y_2} - ix_2\bar{y_1} + 3x_2\bar{y_2}) + (2x_1\bar{z_1} + ix_1\bar{z_2} - ix_2\bar{z_1} + 3x_2\bar{z_2})$

    $= \bar{\lambda}\varphi(x, y) + \varphi(x, z)$.

    La semi-linéarité à droite est vérifiée. $\varphi$ est donc sesquilinéaire.

3.  **Vérifier la symétrie hermitienne.**

    Calculons $\overline{\varphi(y, x)}$ :

    $\varphi(y, x) = 2y_1\bar{x_1} + iy_1\bar{x_2} - iy_2\bar{x_1} + 3y_2\bar{x_2}$.

    $\overline{\varphi(y, x)} = \overline{2y_1\bar{x_1} + iy_1\bar{x_2} - iy_2\bar{x_1} + 3y_2\bar{x_2}}$

    $= \overline{2y_1\bar{x_1}} + \overline{iy_1\bar{x_2}} - \overline{iy_2\bar{x_1}} + \overline{3y_2\bar{x_2}}$

    $= 2\bar{y_1}x_1 - i\bar{y_1}x_2 + i\bar{y_2}x_1 + 3\bar{y_2}x_2$

    Réorganisons les termes pour correspondre à $\varphi(x,y)$:

    $= 2x_1\bar{y_1} + ix_1\bar{y_2} - ix_2\bar{y_1} + 3x_2\bar{y_2} = \varphi(x, y)$.

    La forme est hermitienne.

**Réponse:** L'application $\varphi$ est une forme sesquilinéaire hermitienne.

</details>

---

## Exercice 3

**Problème:** Sur l'espace vectoriel $E = \mathbb{R}_1[X]$ des polynômes de degré au plus 1, on définit l'application $\langle P, Q \rangle = P(0)Q(0) + P'(0)Q'(0)$, où $P'$ est la dérivée de $P$. Est-ce que cette application définit un produit scalaire sur $E$ ?

<details>

<summary>Solution</summary>

**Méthode:** Pour déterminer si $\langle \cdot, \cdot \rangle$ est un produit scalaire, nous devons vérifier les quatre propriétés : forme bilinéaire, symétrique, positive, et définie.

**Étapes:**

1.  **Vérifier la bilinéarité et la symétrie.**

    Soient $P, Q, R \in E$ et $\lambda \in \mathbb{R}$.

    $\langle \lambda P + R, Q \rangle = (\lambda P+R)(0)Q(0) + (\lambda P+R)'(0)Q'(0)$

    $= (\lambda P(0)+R(0))Q(0) + (\lambda P'(0)+R'(0))Q'(0)$

    $= \lambda P(0)Q(0) + R(0)Q(0) + \lambda P'(0)Q'(0) + R'(0)Q'(0)$

    $= \lambda (P(0)Q(0) + P'(0)Q'(0)) + (R(0)Q(0) + R'(0)Q'(0)) = \lambda \langle P, Q \rangle + \langle R, Q \rangle$.

    La linéarité à gauche est vérifiée.

    La symétrie est évidente : $\langle P, Q \rangle = P(0)Q(0) + P'(0)Q'(0) = Q(0)P(0) + Q'(0)P'(0) = \langle Q, P \rangle$.

    Puisque la forme est linéaire à gauche et symétrique, elle est bilinéaire et symétrique.

2.  **Vérifier la positivité.**

    Soit $P \in E$.

    $\langle P, P \rangle = P(0)^2 + P'(0)^2$.

    C'est une somme de carrés de nombres réels, donc $\langle P, P \rangle \ge 0$. La forme est positive.

3.  **Vérifier le caractère défini.**

    Supposons que $\langle P, P \rangle = 0$. Cela signifie $P(0)^2 + P'(0)^2 = 0$.

    Puisque $P(0)^2 \ge 0$ et $P'(0)^2 \ge 0$, leur somme est nulle si et seulement si les deux termes sont nuls.

    Donc, $P(0) = 0$ et $P'(0) = 0$.

    Un polynôme $P$ dans $\mathbb{R}_1[X]$ s'écrit $P(X) = aX+b$.

    Sa dérivée est $P'(X) = a$.

    La condition $P(0)=0$ implique $a(0)+b=0$, donc $b=0$.

    La condition $P'(0)=0$ implique $a=0$.

    Ainsi, $a=0$ et $b=0$, ce qui signifie que $P(X)$ est le polynôme nul.

    La forme est donc définie.

4.  **Conclusion.**

    L'application vérifie toutes les propriétés d'un produit scalaire (bilinéaire, symétrique, positive, définie).

**Réponse:** Oui, l'application $\langle P, Q \rangle = P(0)Q(0) + P'(0)Q'(0)$ définit un produit scalaire sur $\mathbb{R}_1[X]$.

</details>

---

## Exercice 4

**Problème:** Soit l'espace euclidien $\mathbb{R}^3$ muni de son produit scalaire usuel. Soient les vecteurs $x = (1, 2, -3)$ et $y = (2, 0, 1)$.

1. Vérifier l'inégalité de Cauchy-Schwarz pour ces deux vecteurs.
2. Sont-ils colinéaires ? Justifier en utilisant le cas d'égalité de l'inégalité de Cauchy-Schwarz.

<details>

<summary>Solution</summary>

**Méthode:** L'inégalité de Cauchy-Schwarz s'écrit $|\langle x, y \rangle| \le \|x\| \|y\|$. Nous allons calculer chaque terme de cette inégalité et les comparer. Le cas d'égalité se produit si et seulement si les vecteurs sont colinéaires.

**Étapes:**

1.  **Calculer le produit scalaire $\langle x, y \rangle$.**

    $\langle x, y \rangle = x_1y_1 + x_2y_2 + x_3y_3 = (1)(2) + (2)(0) + (-3)(1) = 2 + 0 - 3 = -1$.

    Donc, $|\langle x, y \rangle| = |-1| = 1$.

2.  **Calculer la norme de $x$.**

    $\|x\|^2 = \langle x, x \rangle = 1^2 + 2^2 + (-3)^2 = 1 + 4 + 9 = 14$.

    Donc, $\|x\| = \sqrt{14}$.

3.  **Calculer la norme de $y$.**

    $\|y\|^2 = \langle y, y \rangle = 2^2 + 0^2 + 1^2 = 4 + 0 + 1 = 5$.

    Donc, $\|y\| = \sqrt{5}$.

4.  **Vérifier l'inégalité.**

    Nous devons vérifier si $1 \le \sqrt{14} \sqrt{5}$.

    $\sqrt{14} \sqrt{5} = \sqrt{70}$.

    Puisque $1^2 = 1$ et $(\sqrt{70})^2 = 70$, on a bien $1 < 70$, donc $1 < \sqrt{70}$.

    L'inégalité est vérifiée.

5.  **Analyser le cas d'égalité.**

    L'inégalité de Cauchy-Schwarz devient une égalité si et seulement si les vecteurs $x$ et $y$ sont colinéaires.

    Dans notre cas, nous avons $|\langle x, y \rangle| = 1$ et $\|x\| \|y\| = \sqrt{70}$.

    Puisque $1 \neq \sqrt{70}$, il n'y a pas égalité.

    Par conséquent, les vecteurs $x$ et $y$ ne sont pas colinéaires.

**Réponse:**

1. On a $|\langle x, y \rangle| = 1$ et $\|x\| \|y\| = \sqrt{70}$. Puisque $1 \le \sqrt{70}$, l'inégalité de Cauchy-Schwarz est vérifiée.
2. Comme $|\langle x, y \rangle| \neq \|x\| \|y\|$, les vecteurs ne sont pas colinéaires.

</details>

---

## Exercice 5

**Problème:** Dans l'espace euclidien $\mathbb{R}^2$ muni de son produit scalaire usuel, soient les vecteurs $x = (3, 1)$ et $y = (1, 2)$.

1. Calculer $\|x\|$, $\|y\|$, $\|x+y\|$ et $\|x-y\|$.
2. Vérifier l'identité du parallélogramme : $\|x+y\|^2 + \|x-y\|^2 = 2(\|x\|^2 + \|y\|^2)$.

<details>

<summary>Solution</summary>

**Méthode:** Nous calculons directement les normes en utilisant la définition $\|v\| = \sqrt{v_1^2 + v_2^2}$, puis nous substituons les résultats dans l'identité du parallélogramme pour la vérifier.

**Étapes:**

1.  **Calculer les vecteurs $x+y$ et $x-y$.**

    $x+y = (3+1, 1+2) = (4, 3)$.

    $x-y = (3-1, 1-2) = (2, -1)$.

2.  **Calculer les normes au carré.**

    $\|x\|^2 = 3^2 + 1^2 = 9 + 1 = 10$.

    $\|y\|^2 = 1^2 + 2^2 = 1 + 4 = 5$.

    $\|x+y\|^2 = 4^2 + 3^2 = 16 + 9 = 25$.

    $\|x-y\|^2 = 2^2 + (-1)^2 = 4 + 1 = 5$.

3.  **Extraire les normes.**

    $\|x\| = \sqrt{10}$.

    $\|y\| = \sqrt{5}$.

    $\|x+y\| = \sqrt{25} = 5$.

    $\|x-y\| = \sqrt{5}$.

4.  **Vérifier l'identité du parallélogramme.**

    Calculons le membre de gauche :

    $\|x+y\|^2 + \|x-y\|^2 = 25 + 5 = 30$.

    Calculons le membre de droite :

    $2(\|x\|^2 + \|y\|^2) = 2(10 + 5) = 2(15) = 30$.

    Les deux membres sont égaux.

**Réponse:**

1. Les normes sont : $\|x\| = \sqrt{10}$, $\|y\| = \sqrt{5}$, $\|x+y\| = 5$, $\|x-y\| = \sqrt{5}$.
2. L'identité du parallélogramme est vérifiée car $25 + 5 = 2(10+5)$, soit $30=30$.

</details>

---

## Exercice 6

**Problème:** Sur $\mathbb{R}^2$, on définit la norme infinie par $\|x\|_{\infty} = \max(|x_1|, |x_2|)$. Montrer que cette norme ne dérive pas d'un produit scalaire.

<details>

<summary>Solution</summary>

**Méthode:** Une norme dérive d'un produit scalaire si et seulement si elle vérifie l'identité du parallélogramme pour tous les vecteurs. Pour montrer qu'elle n'en dérive pas, il suffit de trouver un contre-exemple, c'est-à-dire une paire de vecteurs pour laquelle l'identité n'est pas satisfaite.

**Étapes:**

1.  **Choisir des vecteurs simples.**

    Prenons les vecteurs de la base canonique, $x = (1, 0)$ et $y = (0, 1)$. Ce choix est souvent efficace pour tester ce genre de propriétés.

2.  **Calculer les normes nécessaires.**

    $\|x\|_{\infty} = \max(|1|, |0|) = 1$.

    $\|y\|_{\infty} = \max(|0|, |1|) = 1$.

    $x+y = (1, 1)$, donc $\|x+y\|_{\infty} = \max(|1|, |1|) = 1$.

    $x-y = (1, -1)$, donc $\|x-y\|_{\infty} = \max(|1|, |-1|) = 1$.

3.  **Tester l'identité du parallélogramme.**

    L'identité est : $\|x+y\|_{\infty}^2 + \|x-y\|_{\infty}^2 = 2(\|x\|_{\infty}^2 + \|y\|_{\infty}^2)$.

    Calculons le membre de gauche :

    $\|x+y\|_{\infty}^2 + \|x-y\|_{\infty}^2 = 1^2 + 1^2 = 2$.

    Calculons le membre de droite :

    $2(\|x\|_{\infty}^2 + \|y\|_{\infty}^2) = 2(1^2 + 1^2) = 2(1+1) = 4$.

4.  **Comparer les deux membres.**

    Nous avons $2 \neq 4$. L'identité du parallélogramme n'est pas vérifiée pour ces vecteurs.

**Réponse:** La norme $\|x\|_{\infty}$ ne dérive pas d'un produit scalaire car elle ne satisfait pas l'identité du parallélogramme. Par exemple, pour $x=(1,0)$ et $y=(0,1)$, on obtient $2 \neq 4$.

</details>

---

## Exercice 7

**Problème:** Dans l'espace euclidien $\mathbb{R}^3$, on considère la base orthonormée $\mathcal{B}' = (e'_1, e'_2, e'_3)$ avec :

$e'_1 = \frac{1}{\sqrt{3}}(1, 1, 1)$, $e'_2 = \frac{1}{\sqrt{2}}(1, -1, 0)$, $e'_3 = \frac{1}{\sqrt{6}}(1, 1, -2)$.

Soit le vecteur $v = (2, 3, 4)$. Trouver les coordonnées de $v$ dans la base $\mathcal{B}'$.

<details>

<summary>Solution</summary>

**Méthode:** Puisque $\mathcal{B}'$ est une base orthonormée, les coordonnées $(v'_1, v'_2, v'_3)$ d'un vecteur $v$ dans cette base sont données par les produits scalaires $v'_i = \langle v, e'_i \rangle$.

**Étapes:**

1.  **Calculer la première coordonnée $v'_1$.**

    $v'_1 = \langle v, e'_1 \rangle = \langle (2, 3, 4), \frac{1}{\sqrt{3}}(1, 1, 1) \rangle$

    $= \frac{1}{\sqrt{3}} (2 \cdot 1 + 3 \cdot 1 + 4 \cdot 1) = \frac{1}{\sqrt{3}} (2+3+4) = \frac{9}{\sqrt{3}}$.

    En rationalisant, $v'_1 = \frac{9\sqrt{3}}{3} = 3\sqrt{3}$.

2.  **Calculer la deuxième coordonnée $v'_2$.**

    $v'_2 = \langle v, e'_2 \rangle = \langle (2, 3, 4), \frac{1}{\sqrt{2}}(1, -1, 0) \rangle$

    $= \frac{1}{\sqrt{2}} (2 \cdot 1 + 3 \cdot (-1) + 4 \cdot 0) = \frac{1}{\sqrt{2}} (2-3+0) = -\frac{1}{\sqrt{2}}$.

    En rationalisant, $v'_2 = -\frac{\sqrt{2}}{2}$.

3.  **Calculer la troisième coordonnée $v'_3$.**

    $v'_3 = \langle v, e'_3 \rangle = \langle (2, 3, 4), \frac{1}{\sqrt{6}}(1, 1, -2) \rangle$

    $= \frac{1}{\sqrt{6}} (2 \cdot 1 + 3 \cdot 1 + 4 \cdot (-2)) = \frac{1}{\sqrt{6}} (2+3-8) = -\frac{3}{\sqrt{6}}$.

    En rationalisant, $v'_3 = -\frac{3\sqrt{6}}{6} = -\frac{\sqrt{6}}{2}$.

4.  **Vérification (optionnelle).**

    On peut vérifier que $v = v'_1 e'_1 + v'_2 e'_2 + v'_3 e'_3$.

    $v = 3\sqrt{3} \left(\frac{1}{\sqrt{3}}(1,1,1)\right) - \frac{\sqrt{2}}{2}\left(\frac{1}{\sqrt{2}}(1,-1,0)\right) - \frac{\sqrt{6}}{2}\left(\frac{1}{\sqrt{6}}(1,1,-2)\right)$

    $= 3(1,1,1) - \frac{1}{2}(1,-1,0) - \frac{1}{2}(1,1,-2)$

    $= (3,3,3) - (\frac{1}{2}, -\frac{1}{2}, 0) - (\frac{1}{2}, \frac{1}{2}, -1)$

    $= (3-\frac{1}{2}-\frac{1}{2}, 3+\frac{1}{2}-\frac{1}{2}, 3-0-(-1)) = (2, 3, 4)$.

    Le calcul est correct.

**Réponse:** Les coordonnées de $v$ dans la base $\mathcal{B}'$ sont $\left(3\sqrt{3}, -\frac{\sqrt{2}}{2}, -\frac{\sqrt{6}}{2}\right)$.

</details>

---

## Exercice 8

**Problème:** Dans $\mathbb{R}^3$ muni du produit scalaire usuel, appliquer le procédé d'orthonormalisation de Gram-Schmidt à la base $\mathcal{B} = (v_1, v_2, v_3)$ où $v_1 = (1, 1, 0)$, $v_2 = (1, 0, 1)$ et $v_3 = (0, 1, 1)$.

<details>

<summary>Solution</summary>

**Méthode:** Nous suivons les étapes de l'algorithme de Gram-Schmidt. Pour chaque vecteur $v_k$, on le rend orthogonal aux vecteurs orthonormés déjà construits en soustrayant ses projections, puis on le normalise.

**Étapes:**

1.  **Étape 1 : Construire $e_1$.**

    On normalise $v_1$.

    $\|v_1\|^2 = 1^2 + 1^2 + 0^2 = 2 \implies \|v_1\| = \sqrt{2}$.

    $e_1 = \frac{v_1}{\|v_1\|} = \frac{1}{\sqrt{2}}(1, 1, 0)$.

2.  **Étape 2 : Construire $e_2$.**

    a. On calcule d'abord un vecteur $e'_2$ orthogonal à $e_1$.

    $e'_2 = v_2 - \langle v_2, e_1 \rangle e_1$.

    $\langle v_2, e_1 \rangle = \left\langle (1, 0, 1), \frac{1}{\sqrt{2}}(1, 1, 0) \right\rangle = \frac{1}{\sqrt{2}}(1\cdot1 + 0\cdot1 + 1\cdot0) = \frac{1}{\sqrt{2}}$.

    $e'_2 = (1, 0, 1) - \frac{1}{\sqrt{2}} \left( \frac{1}{\sqrt{2}}(1, 1, 0) \right) = (1, 0, 1) - \frac{1}{2}(1, 1, 0) = \left(1-\frac{1}{2}, 0-\frac{1}{2}, 1-0\right) = \left(\frac{1}{2}, -\frac{1}{2}, 1\right)$.

    b. On normalise $e'_2$.

    $\|e'_2\|^2 = \left(\frac{1}{2}\right)^2 + \left(-\frac{1}{2}\right)^2 + 1^2 = \frac{1}{4} + \frac{1}{4} + 1 = \frac{3}{2}$.

    $\|e'_2\| = \sqrt{\frac{3}{2}} = \frac{\sqrt{3}}{\sqrt{2}}$.

    $e_2 = \frac{e'_2}{\|e'_2\|} = \frac{\sqrt{2}}{\sqrt{3}}\left(\frac{1}{2}, -\frac{1}{2}, 1\right) = \frac{1}{\sqrt{6}}(1, -1, 2)$.

3.  **Étape 3 : Construire $e_3$.**

    a. On calcule $e'_3 = v_3 - \langle v_3, e_1 \rangle e_1 - \langle v_3, e_2 \rangle e_2$.

    $\langle v_3, e_1 \rangle = \left\langle (0, 1, 1), \frac{1}{\sqrt{2}}(1, 1, 0) \right\rangle = \frac{1}{\sqrt{2}}(0+1+0) = \frac{1}{\sqrt{2}}$.

    $\langle v_3, e_2 \rangle = \left\langle (0, 1, 1), \frac{1}{\sqrt{6}}(1, -1, 2) \right\rangle = \frac{1}{\sqrt{6}}(0-1+2) = \frac{1}{\sqrt{6}}$.

    $e'_3 = (0, 1, 1) - \frac{1}{\sqrt{2}}\left(\frac{1}{\sqrt{2}}(1,1,0)\right) - \frac{1}{\sqrt{6}}\left(\frac{1}{\sqrt{6}}(1,-1,2)\right)$

    $= (0, 1, 1) - \frac{1}{2}(1,1,0) - \frac{1}{6}(1,-1,2)$

    $= (0 - \frac{1}{2} - \frac{1}{6}, 1 - \frac{1}{2} + \frac{1}{6}, 1 - 0 - \frac{2}{6})$

    $= (-\frac{4}{6}, \frac{4}{6}, \frac{4}{6}) = \left(-\frac{2}{3}, \frac{2}{3}, \frac{2}{3}\right)$.

    b. On normalise $e'_3$.

    $\|e'_3\|^2 = (-\frac{2}{3})^2 + (\frac{2}{3})^2 + (\frac{2}{3})^2 = 3 \cdot \frac{4}{9} = \frac{4}{3}$.

    $\|e'_3\| = \sqrt{\frac{4}{3}} = \frac{2}{\sqrt{3}}$.

    $e_3 = \frac{e'_3}{\|e'_3\|} = \frac{\sqrt{3}}{2}\left(-\frac{2}{3}, \frac{2}{3}, \frac{2}{3}\right) = \frac{1}{\sqrt{3}}(-1, 1, 1)$.

**Réponse:** La base orthonormée obtenue est $\mathcal{B}'=(e_1, e_2, e_3)$ avec :

$e_1 = \frac{1}{\sqrt{2}}(1, 1, 0)$,

$e_2 = \frac{1}{\sqrt{6}}(1, -1, 2)$,

$e_3 = \frac{1}{\sqrt{3}}(-1, 1, 1)$.

</details>

---

## Exercice 9

**Problème:** Dans $\mathbb{R}^3$ muni du produit scalaire usuel, on considère le vecteur $v=(6, 2, 5)$ et le plan $F$ d'équation $x - y + 2z = 0$.

Calculer la projection orthogonale $P_F(v)$ du vecteur $v$ sur le plan $F$.

<details>

<summary>Solution</summary>

**Méthode:** Il est souvent plus simple de calculer la projection sur l'orthogonal du sous-espace, $F^\perp$, puis d'utiliser la relation $v = P_F(v) + P_{F^\perp}(v)$. L'orthogonal d'un plan défini par l'équation $ax+by+cz=0$ est la droite dirigée par le vecteur normal $n=(a,b,c)$.

**Étapes:**

1.  **Déterminer l'orthogonal $F^\perp$.**

    Le plan $F$ a pour équation $1x - 1y + 2z = 0$. Un vecteur normal au plan est $n=(1, -1, 2)$.

    L'orthogonal $F^\perp$ est la droite vectorielle engendrée par $n$.

    $F^\perp = \text{Vect}(n)$.

2.  **Calculer la projection de $v$ sur $F^\perp$.**

    Pour utiliser la formule de projection, il nous faut une base orthonormée de $F^\perp$. On normalise $n$.

    $\|n\|^2 = 1^2 + (-1)^2 + 2^2 = 1+1+4=6 \implies \|n\|=\sqrt{6}$.

    Une base orthonormée de $F^\perp$ est $(e_n)$ avec $e_n = \frac{n}{\|n\|} = \frac{1}{\sqrt{6}}(1, -1, 2)$.

    La projection de $v$ sur $F^\perp$ est :

    $P_{F^\perp}(v) = \langle v, e_n \rangle e_n$.

    $\langle v, e_n \rangle = \left\langle (6, 2, 5), \frac{1}{\sqrt{6}}(1, -1, 2) \right\rangle = \frac{1}{\sqrt{6}}(6\cdot1 + 2\cdot(-1) + 5\cdot2) = \frac{1}{\sqrt{6}}(6-2+10) = \frac{14}{\sqrt{6}}$.

    $P_{F^\perp}(v) = \frac{14}{\sqrt{6}} \cdot \frac{1}{\sqrt{6}}(1, -1, 2) = \frac{14}{6}(1, -1, 2) = \frac{7}{3}(1, -1, 2) = \left(\frac{7}{3}, -\frac{7}{3}, \frac{14}{3}\right)$.

3.  **Calculer la projection sur $F$.**

    On utilise la décomposition $v = P_F(v) + P_{F^\perp}(v)$, d'où $P_F(v) = v - P_{F^\perp}(v)$.

    $P_F(v) = (6, 2, 5) - \left(\frac{7}{3}, -\frac{7}{3}, \frac{14}{3}\right)$

    $= \left(6-\frac{7}{3}, 2-(-\frac{7}{3}), 5-\frac{14}{3}\right)$

    $= \left(\frac{18-7}{3}, \frac{6+7}{3}, \frac{15-14}{3}\right) = \left(\frac{11}{3}, \frac{13}{3}, \frac{1}{3}\right)$.

4.  **Vérification (optionnelle).**

    Le vecteur projeté $P_F(v)$ doit appartenir à $F$. Vérifions s'il satisfait l'équation du plan :

    $\frac{11}{3} - \frac{13}{3} + 2\left(\frac{1}{3}\right) = \frac{11-13+2}{3} = \frac{0}{3} = 0$.

    Le point est bien dans le plan.

**Réponse:** La projection orthogonale de $v$ sur le plan $F$ est $P_F(v) = \left(\frac{11}{3}, \frac{13}{3}, \frac{1}{3}\right)$.

</details>

---

## Exercice 10

**Problème:** Dans $\mathbb{R}^3$ muni de sa structure euclidienne usuelle, calculer la distance du point $A=(1, 2, 3)$ à la droite $D$ passant par l'origine et dirigée par le vecteur $u=(1, 1, 1)$.

<details>

<summary>Solution</summary>

**Méthode:** La distance d'un point (représenté par un vecteur $a$) à un sous-espace vectoriel $D$ est donnée par $d(a, D) = \|a - P_D(a)\|$, où $P_D(a)$ est la projection orthogonale de $a$ sur $D$.

**Étapes:**

1.  **Trouver une base orthonormée de $D$.**

    La droite $D$ est engendrée par le vecteur $u=(1, 1, 1)$.

    $\|u\|^2 = 1^2+1^2+1^2 = 3 \implies \|u\|=\sqrt{3}$.

    Une base orthonormée de $D$ est $(e_u)$ avec $e_u = \frac{u}{\|u\|} = \frac{1}{\sqrt{3}}(1, 1, 1)$.

2.  **Calculer la projection orthogonale de $a=(1,2,3)$ sur $D$.**

    $P_D(a) = \langle a, e_u \rangle e_u$.

    $\langle a, e_u \rangle = \left\langle (1,2,3), \frac{1}{\sqrt{3}}(1,1,1) \right\rangle = \frac{1}{\sqrt{3}}(1\cdot1+2\cdot1+3\cdot1) = \frac{6}{\sqrt{3}}$.

    $P_D(a) = \frac{6}{\sqrt{3}} \cdot \frac{1}{\sqrt{3}}(1,1,1) = \frac{6}{3}(1,1,1) = 2(1,1,1) = (2,2,2)$.

3.  **Calculer le vecteur $a - P_D(a)$.**

    $a - P_D(a) = (1,2,3) - (2,2,2) = (-1, 0, 1)$.

    Ce vecteur est orthogonal à la droite $D$.

4.  **Calculer la distance.**

    $d(a,D) = \|a - P_D(a)\| = \|(-1, 0, 1)\| = \sqrt{(-1)^2 + 0^2 + 1^2} = \sqrt{1+0+1} = \sqrt{2}$.

**Réponse:** La distance du point $A$ à la droite $D$ est $\sqrt{2}$.

</details>

---

## Exercice 11

**Problème:** Soit $f$ un endomorphisme de l'espace euclidien $\mathbb{R}^3$ dont la matrice dans la base canonique (orthonormée) est :

$A = \begin{pmatrix} 1 & 0 & 2 \\ -1 & 3 & 0 \\ 4 & 1 & -2 \end{pmatrix}$.

Déterminer la matrice de l'endomorphisme adjoint $f^*$ dans la même base.

<details>

<summary>Solution</summary>

**Méthode:** Dans un espace euclidien, si la matrice d'un endomorphisme $f$ dans une base **orthonormée** est $A$, alors la matrice de son adjoint $f^*$ dans la même base est la transposée de $A$, notée ${}^tA$.

**Étapes:**

1.  **Identifier le contexte.**

    L'espace est $\mathbb{R}^3$ (euclidien) et la base est la base canonique, qui est orthonormée pour le produit scalaire usuel. La formule simple s'applique donc.

2.  **Calculer la transposée de la matrice $A$.**

    La transposée d'une matrice s'obtient en échangeant les lignes et les colonnes.

    Si $A = (a_{ij})$, alors ${}^tA = (a_{ji})$.

    $A = \begin{pmatrix} 1 & 0 & 2 \\ -1 & 3 & 0 \\ 4 & 1 & -2 \end{pmatrix}$.

    La première ligne de $A$ devient la première colonne de ${}^tA$.

    La deuxième ligne de $A$ devient la deuxième colonne de ${}^tA$.

    La troisième ligne de $A$ devient la troisième colonne de ${}^tA$.

    Donc, ${}^tA = \begin{pmatrix} 1 & -1 & 4 \\ 0 & 3 & 1 \\ 2 & 0 & -2 \end{pmatrix}$.

**Réponse:** La matrice de l'adjoint $f^*$ dans la base canonique est $A^* = {}^tA = \begin{pmatrix} 1 & -1 & 4 \\ 0 & 3 & 1 \\ 2 & 0 & -2 \end{pmatrix}$.

</details>

---

## Exercice 12

**Problème:** Soit un endomorphisme $f$ de $\mathbb{C}^2$ dont la matrice dans la base canonique est $A = \frac{1}{\sqrt{2}}\begin{pmatrix} 1 & i \\ i & 1 \end{pmatrix}$.

Cet endomorphisme est-il auto-adjoint ? Unitaire ? Normal ?

<details>

<summary>Solution</summary>

**Méthode:** Nous devons calculer la matrice adjointe $A^* = \overline{{}^tA}$ et la comparer à $A$ et à son inverse. On vérifie ensuite si $A$ et $A^*$ commutent. L'espace est hermitien ($\mathbb{C}^2$) et la base est canonique (orthonormée).

**Étapes:**

1.  **Calculer la matrice adjointe $A^*$.**

    $A = \begin{pmatrix} 1/\sqrt{2} & i/\sqrt{2} \\ i/\sqrt{2} & 1/\sqrt{2} \end{pmatrix}$.

    ${}^tA = \begin{pmatrix} 1/\sqrt{2} & i/\sqrt{2} \\ i/\sqrt{2} & 1/\sqrt{2} \end{pmatrix}$. (La matrice est symétrique)

    $A^* = \overline{{}^tA} = \begin{pmatrix} \overline{1/\sqrt{2}} & \overline{i/\sqrt{2}} \\ \overline{i/\sqrt{2}} & \overline{1/\sqrt{2}} \end{pmatrix} = \begin{pmatrix} 1/\sqrt{2} & -i/\sqrt{2} \\ -i/\sqrt{2} & 1/\sqrt{2} \end{pmatrix} = \frac{1}{\sqrt{2}}\begin{pmatrix} 1 & -i \\ -i & 1 \end{pmatrix}$.

2.  **Tester si $f$ est auto-adjoint.**

    $f$ est auto-adjoint si $A = A^*$.

    On compare $A = \frac{1}{\sqrt{2}}\begin{pmatrix} 1 & i \\ i & 1 \end{pmatrix}$ et $A^* = \frac{1}{\sqrt{2}}\begin{pmatrix} 1 & -i \\ -i & 1 \end{pmatrix}$.

    Puisque $i \neq -i$, on a $A \neq A^*$. L'endomorphisme n'est pas auto-adjoint.

3.  **Tester si $f$ est unitaire.**

    $f$ est unitaire si $A^*A = I$.

    $A^*A = \left(\frac{1}{\sqrt{2}}\begin{pmatrix} 1 & -i \\ -i & 1 \end{pmatrix}\right) \left(\frac{1}{\sqrt{2}}\begin{pmatrix} 1 & i \\ i & 1 \end{pmatrix}\right) = \frac{1}{2}\begin{pmatrix} 1 & -i \\ -i & 1 \end{pmatrix}\begin{pmatrix} 1 & i \\ i & 1 \end{pmatrix}$

    $= \frac{1}{2}\begin{pmatrix} 1\cdot1 + (-i)\cdot i & 1\cdot i + (-i)\cdot 1 \\ (-i)\cdot 1 + 1\cdot i & (-i)\cdot i + 1\cdot 1 \end{pmatrix}$

    $= \frac{1}{2}\begin{pmatrix} 1 - i^2 & i-i \\ -i+i & -i^2+1 \end{pmatrix} = \frac{1}{2}\begin{pmatrix} 1 - (-1) & 0 \\ 0 & -(-1)+1 \end{pmatrix} = \frac{1}{2}\begin{pmatrix} 2 & 0 \\ 0 & 2 \end{pmatrix} = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix} = I$.

    L'endomorphisme est unitaire.

4.  **Tester si $f$ est normal.**

    Tout endomorphisme unitaire est normal. En effet, si $f^*f = \text{Id}$, alors $f$ est inversible avec $f^{-1}=f^*$. Donc $ff^* = f f^{-1} = \text{Id}$. On a bien $f^*f = ff^* = \text{Id}$.

    L'endomorphisme est donc normal.

**Réponse:** L'endomorphisme $f$ n'est **pas auto-adjoint**, mais il est **unitaire** et **normal**.

</details>

---

## Exercice 13

**Problème:** Dans l'espace euclidien $\mathbb{R}^3$ muni du produit scalaire usuel, on considère la forme linéaire $l: \mathbb{R}^3 \to \mathbb{R}$ définie par $l(x, y, z) = 5x - 2y + z$.

Selon le théorème de représentation de Riesz, il existe un unique vecteur $u \in \mathbb{R}^3$ tel que $l(v) = \langle v, u \rangle$ pour tout $v \in \mathbb{R}^3$. Trouver ce vecteur $u$.

<details>

<summary>Solution</summary>

**Méthode:** On écrit l'expression du produit scalaire $\langle v, u \rangle$ en fonction des coordonnées de $v=(x,y,z)$ et de $u=(u_1, u_2, u_3)$. On identifie ensuite cette expression avec la définition de $l(v)$ pour trouver les coordonnées de $u$.

**Étapes:**

1.  **Exprimer la forme linéaire $l$.**

    La forme linéaire est donnée par $l(v) = l(x, y, z) = 5x - 2y + z$.

2.  **Exprimer le produit scalaire.**

    Soit $u=(u_1, u_2, u_3)$ le vecteur recherché. Pour un vecteur $v=(x, y, z)$, le produit scalaire usuel est :

    $\langle v, u \rangle = x u_1 + y u_2 + z u_3$.

3.  **Identifier les deux expressions.**

    Le théorème de Riesz nous dit que $l(v) = \langle v, u \rangle$. On a donc l'égalité pour tous $x, y, z \in \mathbb{R}$ :

    $5x - 2y + z = u_1 x + u_2 y + u_3 z$.

    Cette égalité entre deux polynômes en $x, y, z$ doit être vraie pour toutes les valeurs de ces variables. Cela implique que les coefficients des variables correspondantes doivent être égaux.

4.  **Déduire les coordonnées de $u$.**

    En identifiant les coefficients, on obtient :

    - Coefficient de $x$: $u_1 = 5$
    - Coefficient de $y$: $u_2 = -2$
    - Coefficient de $z$: $u_3 = 1$

    Le vecteur recherché est donc $u=(5, -2, 1)$.

**Réponse:** Le vecteur $u$ représentant la forme linéaire $l$ est $u = (5, -2, 1)$.

</details>
