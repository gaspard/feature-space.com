---
id: 8fbd73c7
type: exercises
order: 11
title: >-
  Fonctions différentiables -
  exercices (A)
tags:
  - Topologie
  - Calcul Différentiel
  - Mathématiques
  - Sorbonne Université
  - Fonctions de plusieurs variables
createdAt: '2025-11-26T16:10:38.790Z'
level: regular
course: Topologie
courseId: 34e61f8e
chapter: 'Fonctions différentiables'
chapterId: df863ee3
---
# Exercices "Fonctions différentiables" (A)

---

## Exercice 1

**Problème:** Soit la fonction $f: \mathbb{R}^3 \to \mathbb{R}$ définie par $f(x,y,z) = x^3y^2z + \sin(xy) - e^{2z}$. Calculez les trois dérivées partielles du premier ordre de $f$.

<details>

<summary>Solution</summary>

**Méthode:** Pour calculer la dérivée partielle par rapport à une variable, on traite les autres variables comme des constantes et on applique les règles de dérivation usuelles pour les fonctions d'une seule variable.

**Étapes:**

1.  **Calcul de $\frac{\partial f}{\partial x}$**

    On dérive par rapport à $x$, en considérant $y$ et $z$ comme des constantes.

    - Le terme $x^3y^2z$ se dérive en $(3x^2) \cdot y^2z$.
    - Le terme $\sin(xy)$ est une fonction composée. Sa dérivée par rapport à $x$ est $\cos(xy) \cdot \frac{\partial}{\partial x}(xy) = \cos(xy) \cdot y$.
    - Le terme $-e^{2z}$ ne dépend pas de $x$, sa dérivée est donc 0.

    En additionnant les résultats, on obtient :

    $$ \frac{\partial f}{\partial x}(x,y,z) = 3x^2y^2z + y\cos(xy) $$

2.  **Calcul de $\frac{\partial f}{\partial y}$**

    On dérive par rapport à $y$, en considérant $x$ et $z$ comme des constantes.

    - Le terme $x^3y^2z$ se dérive en $x^3 \cdot (2y) \cdot z$.
    - Le terme $\sin(xy)$ se dérive en $\cos(xy) \cdot \frac{\partial}{\partial y}(xy) = \cos(xy) \cdot x$.
    - Le terme $-e^{2z}$ ne dépend pas de $y$, sa dérivée est 0.

    En additionnant les résultats, on obtient :

    $$ \frac{\partial f}{\partial y}(x,y,z) = 2x^3yz + x\cos(xy) $$

3.  **Calcul de $\frac{\partial f}{\partial z}$**

    On dérive par rapport à $z$, en considérant $x$ et $y$ comme des constantes.

    - Le terme $x^3y^2z$ se dérive en $x^3y^2 \cdot (1)$.
    - Le terme $\sin(xy)$ ne dépend pas de $z$, sa dérivée est 0.
    - Le terme $-e^{2z}$ se dérive en $-e^{2z} \cdot 2$.

    En additionnant les résultats, on obtient :

    $$ \frac{\partial f}{\partial z}(x,y,z) = x^3y^2 - 2e^{2z} $$

**Réponse:**

Les dérivées partielles de la fonction $f$ sont :

$$ \frac{\partial f}{\partial x}(x,y,z) = 3x^2y^2z + y\cos(xy) $$

$$ \frac{\partial f}{\partial y}(x,y,z) = 2x^3yz + x\cos(xy) $$

$$ \frac{\partial f}{\partial z}(x,y,z) = x^3y^2 - 2e^{2z} $$

</details>

---

## Exercice 2

**Problème:** Calculez la matrice jacobienne de la fonction $f: \mathbb{R}^2 \to \mathbb{R}^3$ définie par $f(x,y) = (x^2y, e^{xy}, \cos(x+y))$.

<details>

<summary>Solution</summary>

**Méthode:** La matrice jacobienne $J_f(x,y)$ d'une fonction $f: \mathbb{R}^2 \to \mathbb{R}^3$ est une matrice de taille $3 \times 2$. L'élément à la ligne $i$ et la colonne $j$ est la dérivée partielle de la $i$-ème composante de $f$ par rapport à la $j$-ème variable. Notons les composantes $f_1(x,y) = x^2y$, $f_2(x,y) = e^{xy}$ et $f_3(x,y) = \cos(x+y)$. La matrice jacobienne est :

$$ J_f(x,y) = \begin{pmatrix} \frac{\partial f_1}{\partial x} & \frac{\partial f_1}{\partial y} \\ \frac{\partial f_2}{\partial x} & \frac{\partial f_2}{\partial y} \\ \frac{\partial f_3}{\partial x} & \frac{\partial f_3}{\partial y} \end{pmatrix} $$

**Étapes:**

1.  **Calcul des dérivées partielles de $f_1(x,y) = x^2y$**

    $$ \frac{\partial f_1}{\partial x} = 2xy $$

    $$ \frac{\partial f_1}{\partial y} = x^2 $$

2.  **Calcul des dérivées partielles de $f_2(x,y) = e^{xy}$**

    En utilisant la règle de dérivation de l'exponentielle :

    $$ \frac{\partial f_2}{\partial x} = e^{xy} \cdot \frac{\partial}{\partial x}(xy) = ye^{xy} $$

    $$ \frac{\partial f_2}{\partial y} = e^{xy} \cdot \frac{\partial}{\partial y}(xy) = xe^{xy} $$

3.  **Calcul des dérivées partielles de $f_3(x,y) = \cos(x+y)$**

    En utilisant la règle de dérivation des fonctions trigonométriques :

    $$ \frac{\partial f_3}{\partial x} = -\sin(x+y) \cdot \frac{\partial}{\partial x}(x+y) = -\sin(x+y) $$

    $$ \frac{\partial f_3}{\partial y} = -\sin(x+y) \cdot \frac{\partial}{\partial y}(x+y) = -\sin(x+y) $$

4.  **Assemblage de la matrice jacobienne**

    On place les dérivées partielles calculées dans la matrice :

    $$ J_f(x,y) = \begin{pmatrix} 2xy & x^2 \\ ye^{xy} & xe^{xy} \\ -\sin(x+y) & -\sin(x+y) \end{pmatrix} $$

**Réponse:**

La matrice jacobienne de la fonction $f$ est :

$$ J_f(x,y) = \begin{pmatrix} 2xy & x^2 \\ ye^{xy} & xe^{xy} \\ -\sin(x+y) & -\sin(x+y) \end{pmatrix} $$

</details>

---

## Exercice 3

**Problème:** Soit la fonction $f: \mathbb{R}^2 \setminus \{(0,0)\} \to \mathbb{R}$ définie par $f(x,y) = \ln(x^2+y^2)$.

1. Calculez le gradient de $f$, noté $\nabla f(x,y)$.
2. Évaluez le gradient au point $P=(1,2)$.
3. Quelle est l'interprétation géométrique de ce vecteur $\nabla f(1,2)$ ?

<details>

<summary>Solution</summary>

**Méthode:** Le gradient d'une fonction numérique $f(x,y)$ est le vecteur de ses dérivées partielles : $\nabla f(x,y) = \left( \frac{\partial f}{\partial x}, \frac{\partial f}{\partial y} \right)$. Géométriquement, il indique la direction de la plus forte augmentation de la fonction et sa norme est le taux de cette augmentation.

**Étapes:**

1.  **Calcul des dérivées partielles de $f(x,y) = \ln(x^2+y^2)$**

    On utilise la règle de dérivation pour le logarithme et les fonctions composées.

    - Dérivée par rapport à $x$ :

      $$ \frac{\partial f}{\partial x} = \frac{1}{x^2+y^2} \cdot \frac{\partial}{\partial x}(x^2+y^2) = \frac{2x}{x^2+y^2} $$

    - Dérivée par rapport à $y$ :

      $$ \frac{\partial f}{\partial y} = \frac{1}{x^2+y^2} \cdot \frac{\partial}{\partial y}(x^2+y^2) = \frac{2y}{x^2+y^2} $$

2.  **Construction du vecteur gradient**

    Le gradient est le vecteur colonne :

    $$ \nabla f(x,y) = \begin{pmatrix} \frac{2x}{x^2+y^2} \\ \frac{2y}{x^2+y^2} \end{pmatrix} $$

3.  **Évaluation du gradient au point $P=(1,2)$**

    On remplace $x=1$ et $y=2$ dans l'expression du gradient.

    $$ x^2+y^2 = 1^2 + 2^2 = 5 $$

    $$ \nabla f(1,2) = \begin{pmatrix} \frac{2(1)}{5} \\ \frac{2(2)}{5} \end{pmatrix} = \begin{pmatrix} 2/5 \\ 4/5 \end{pmatrix} $$

4.  **Interprétation géométrique**

    Le vecteur $\nabla f(1,2) = (2/5, 4/5)$ a deux significations principales :

    - C'est la direction dans laquelle la fonction $f$ augmente le plus rapidement à partir du point $(1,2)$.
    - Il est orthogonal (normal) à la ligne de niveau de $f$ passant par le point $(1,2)$. La valeur de la fonction en ce point est $f(1,2) = \ln(5)$, donc la ligne de niveau est le cercle d'équation $x^2+y^2=5$.

**Réponse:**

1. Le gradient de $f$ est $\nabla f(x,y) = \begin{pmatrix} \frac{2x}{x^2+y^2} \\ \frac{2y}{x^2+y^2} \end{pmatrix}$.
2. Au point $(1,2)$, le gradient est $\nabla f(1,2) = \begin{pmatrix} 2/5 \\ 4/5 \end{pmatrix}$.
3. Ce vecteur indique la direction de la plus forte pente de la surface $z=f(x,y)$ au point $(1,2, \ln(5))$ et est normal à la ligne de niveau $x^2+y^2=5$ au point $(1,2)$.

</details>

---

## Exercice 4

**Problème:** Montrez que la fonction $f: \mathbb{R}^2 \to \mathbb{R}$ définie par $f(x,y) = x^2e^{-y} + y^3$ est de classe $\mathcal{C}^1$ sur $\mathbb{R}^2$. Que peut-on en déduire sur sa différentiabilité ?

<details>

<summary>Solution</summary>

**Méthode:** Pour montrer qu'une fonction est de classe $\mathcal{C}^1$ sur un ouvert $U$, il faut vérifier deux conditions :

1.  Les dérivées partielles du premier ordre existent en tout point de $U$.
2.  Ces fonctions dérivées partielles sont continues sur $U$.

Le théorème fondamental du calcul différentiel stipule qu'une fonction de classe $\mathcal{C}^1$ sur un ouvert est différentiable sur cet ouvert.

**Étapes:**

1.  **Calculer les dérivées partielles de $f$**
    - Par rapport à $x$ :

      $$ \frac{\partial f}{\partial x}(x,y) = \frac{\partial}{\partial x}(x^2e^{-y} + y^3) = 2xe^{-y} $$

    - Par rapport à $y$ :

      $$ \frac{\partial f}{\partial y}(x,y) = \frac{\partial}{\partial y}(x^2e^{-y} + y^3) = x^2(-e^{-y}) + 3y^2 = -x^2e^{-y} + 3y^2 $$

    Ces dérivées partielles existent pour tout $(x,y) \in \mathbb{R}^2$.

2.  **Étudier la continuité des dérivées partielles**
    - La fonction $(x,y) \mapsto \frac{\partial f}{\partial x}(x,y) = 2xe^{-y}$ est le produit des fonctions $(x,y) \mapsto 2x$ (polynomiale, donc continue) et $(x,y) \mapsto e^{-y}$ (composition de l'exponentielle et d'une fonction affine, donc continue). Le produit de fonctions continues est continu. Donc, $\frac{\partial f}{\partial x}$ est continue sur $\mathbb{R}^2$.
    - La fonction $(x,y) \mapsto \frac{\partial f}{\partial y}(x,y) = -x^2e^{-y} + 3y^2$ est la somme de la fonction $(x,y) \mapsto -x^2e^{-y}$ (continue comme produit de fonctions continues) et de la fonction $(x,y) \mapsto 3y^2$ (polynomiale, donc continue). La somme de fonctions continues est continue. Donc, $\frac{\partial f}{\partial y}$ est continue sur $\mathbb{R}^2$.

3.  **Conclusion sur la classe $\mathcal{C}^1$ et la différentiabilité**

    Puisque les deux dérivées partielles de $f$ existent et sont continues sur tout $\mathbb{R}^2$, la fonction $f$ est de classe $\mathcal{C}^1$ sur $\mathbb{R}^2$.

    D'après le théorème fondamental, si une fonction est de classe $\mathcal{C}^1$ sur un ouvert, elle est différentiable sur cet ouvert. Par conséquent, $f$ est différentiable sur $\mathbb{R}^2$.

**Réponse:**

La fonction $f$ est de classe $\mathcal{C}^1$ sur $\mathbb{R}^2$ car ses dérivées partielles, $\frac{\partial f}{\partial x}(x,y) = 2xe^{-y}$ et $\frac{\partial f}{\partial y}(x,y) = -x^2e^{-y} + 3y^2$, existent et sont continues sur $\mathbb{R}^2$. On en déduit que $f$ est différentiable sur $\mathbb{R}^2$.

</details>

---

## Exercice 5

**Problème:** En utilisant la définition formelle de la différentiabilité, montrez que la fonction $f: \mathbb{R}^2 \to \mathbb{R}$ définie par $f(x,y) = xy$ est différentiable en tout point $a=(a_1, a_2) \in \mathbb{R}^2$. Identifiez sa différentielle $df_a$.

<details>

<summary>Solution</summary>

**Méthode:** Une fonction $f$ est différentiable en $a$ s'il existe une application linéaire $L_a$ telle que $f(a+h) = f(a) + L_a(h) + o(\|h\|)$. Cela signifie que $\lim_{h \to 0} \frac{|f(a+h) - f(a) - L_a(h)|}{\|h\|} = 0$. On va développer $f(a+h)$, identifier les termes $f(a)$ et la partie linéaire en $h$, puis montrer que le reste est bien un $o(\|h\|)$.

**Étapes:**

1.  **Exprimer $f(a+h)$**

    Soit $a=(a_1, a_2)$ et $h=(h_1, h_2)$. Alors $a+h = (a_1+h_1, a_2+h_2)$.

    $$ f(a+h) = f(a_1+h_1, a_2+h_2) = (a_1+h_1)(a_2+h_2) $$

    On développe cette expression :

    $$ f(a+h) = a_1a_2 + a_1h_2 + a_2h_1 + h_1h_2 $$

2.  **Identifier $f(a)$ et le candidat pour $L_a(h)$**
    - Le terme constant est $f(a) = a_1a_2$.
    - Les termes linéaires en $h=(h_1, h_2)$ sont $a_2h_1 + a_1h_2$.

    On pose donc notre candidat pour l'application linéaire : $L_a(h_1, h_2) = a_2h_1 + a_1h_2$. C'est bien une application linéaire de $\mathbb{R}^2$ dans $\mathbb{R}$.

3.  **Identifier le terme d'erreur $R(h)$**

    Le reste est $R(h) = h_1h_2$. L'égalité s'écrit :

    $$ f(a+h) = f(a) + L_a(h) + R(h) $$

    $$ (a_1+h_1)(a_2+h_2) = a_1a_2 + (a_2h_1 + a_1h_2) + h_1h_2 $$

    Cette égalité est exacte.

4.  **Vérifier que $R(h)$ est un $o(\|h\|)$**

    On doit montrer que $\lim_{h \to 0} \frac{|R(h)|}{\|h\|} = 0$. Utilisons la norme euclidienne $\|h\| = \sqrt{h_1^2+h_2^2}$.

    On sait que $|h_1| \le \|h\|$ et $|h_2| \le \|h\|$. Donc :

    $$ |R(h)| = |h_1h_2| = |h_1| |h_2| \le \|h\| \cdot \|h\| = \|h\|^2 $$

    Maintenant, on étudie la limite du quotient :

    $$ 0 \le \frac{|R(h)|}{\|h\|} \le \frac{\|h\|^2}{\|h\|} = \|h\| $$

    Quand $h \to 0$, $\|h\| \to 0$. Par le théorème des gendarmes, on conclut que :

    $$ \lim_{h \to 0} \frac{|R(h)|}{\|h\|} = 0 $$

    Le terme $R(h)$ est donc bien un $o(\|h\|)$.

5.  **Conclusion**

    La fonction $f$ est différentiable en tout point $a=(a_1,a_2)$ et sa différentielle est l'application linéaire $df_a$ définie par $df_a(h_1,h_2) = a_2h_1 + a_1h_2$.

**Réponse:**

La fonction $f(x,y)=xy$ est différentiable en tout point $a=(a_1,a_2) \in \mathbb{R}^2$. Sa différentielle au point $a$ est l'application linéaire $df_a: \mathbb{R}^2 \to \mathbb{R}$ définie par :

$$ df_a(h_1, h_2) = a_2h_1 + a_1h_2 $$

</details>

---

## Exercice 6

**Problème:** Soient les fonctions $f: \mathbb{R} \to \mathbb{R}^2$ définie par $f(t) = (t^2, \sin(t))$ et $g: \mathbb{R}^2 \to \mathbb{R}$ définie par $g(x,y) = x+y^2$. Soit $h = g \circ f$. Calculez la dérivée $h'(t)$ en utilisant la règle de la chaîne (produit de matrices jacobiennes).

<details>

<summary>Solution</summary>

**Méthode:** La règle de la chaîne pour les fonctions de plusieurs variables stipule que la matrice jacobienne de la composée $g \circ f$ en un point $a$ est le produit des matrices jacobiennes : $J_{g \circ f}(a) = J_g(f(a)) \cdot J_f(a)$. Ici, l'espace de départ est $\mathbb{R}$ ($n=1$) et l'espace d'arrivée est $\mathbb{R}$ ($p=1$), donc les jacobiennes sont des matrices $1 \times 1$ (des scalaires), c'est-à-dire les dérivées usuelles.

**Étapes:**

1.  **Calculer la matrice jacobienne de $f(t)$**

    $f: \mathbb{R} \to \mathbb{R}^2$, donc $J_f(t)$ est une matrice $2 \times 1$.

    $f(t) = \begin{pmatrix} t^2 \\ \sin(t) \end{pmatrix}$. Les composantes sont $f_1(t)=t^2$ et $f_2(t)=\sin(t)$.

    $$ J_f(t) = \begin{pmatrix} f_1'(t) \\ f_2'(t) \end{pmatrix} = \begin{pmatrix} 2t \\ \cos(t) \end{pmatrix} $$

2.  **Calculer la matrice jacobienne de $g(x,y)$**

    $g: \mathbb{R}^2 \to \mathbb{R}$, donc $J_g(x,y)$ est une matrice $1 \times 2$.

    $$ J_g(x,y) = \begin{pmatrix} \frac{\partial g}{\partial x} & \frac{\partial g}{\partial y} \end{pmatrix} = \begin{pmatrix} 1 & 2y \end{pmatrix} $$

3.  **Appliquer la règle de la chaîne**

    $J_{g \circ f}(t) = J_g(f(t)) \cdot J_f(t)$.

    On doit d'abord évaluer la jacobienne de $g$ au point $f(t) = (t^2, \sin(t))$. On remplace donc $x$ par $t^2$ et $y$ par $\sin(t)$ dans l'expression de $J_g$:

    $$ J_g(f(t)) = J_g(t^2, \sin(t)) = \begin{pmatrix} 1 & 2\sin(t) \end{pmatrix} $$

    Maintenant, on effectue le produit matriciel :

    $$ J_h(t) = J_{g \circ f}(t) = \begin{pmatrix} 1 & 2\sin(t) \end{pmatrix} \begin{pmatrix} 2t \\ \cos(t) \end{pmatrix} $$

    $$ = (1 \cdot 2t) + (2\sin(t) \cdot \cos(t)) = 2t + 2\sin(t)\cos(t) $$

    En utilisant l'identité trigonométrique $\sin(2t) = 2\sin(t)\cos(t)$, on peut simplifier :

    $$ J_h(t) = 2t + \sin(2t) $$

4.  **Vérification (facultative mais recommandée)**

    Calculons $h(t)$ directement :

    $h(t) = g(f(t)) = g(t^2, \sin(t)) = t^2 + (\sin(t))^2 = t^2 + \sin^2(t)$.

    Dérivons $h(t)$ par rapport à $t$ :

    $h'(t) = 2t + 2\sin(t)\cos(t) = 2t + \sin(2t)$.

    Le résultat est identique.

**Réponse:**

En utilisant la règle de la chaîne, la dérivée de $h(t)$ est :

$$ h'(t) = 2t + 2\sin(t)\cos(t) = 2t + \sin(2t) $$

</details>

---

## Exercice 7

**Problème:** Soit la fonction $f: \mathbb{R}^2 \to \mathbb{R}$ définie par :

$$ f(x,y) = \begin{cases} \frac{x^3}{x^2+y^2} & \text{si } (x,y) \neq (0,0) \\ 0 & \text{si } (x,y) = (0,0) \end{cases} $$

Calculez les dérivées partielles $\frac{\partial f}{\partial x}(0,0)$ et $\frac{\partial f}{\partial y}(0,0)$ en utilisant la définition de la dérivée partielle.

<details>

<summary>Solution</summary>

**Méthode:** Comme la fonction a une définition différente au point $(0,0)$, on ne peut pas utiliser les formules de dérivation usuelles. Il est nécessaire de revenir à la définition de la dérivée partielle comme limite d'un taux d'accroissement.

La définition est :

$$ \frac{\partial f}{\partial x_k}(a) = \lim_{t \to 0} \frac{f(a+te_k) - f(a)}{t} $$

où $e_k$ est le $k$-ième vecteur de la base canonique. Pour $(0,0)$, cela devient :

$$ \frac{\partial f}{\partial x}(0,0) = \lim_{t \to 0} \frac{f(t,0) - f(0,0)}{t} $$

$$ \frac{\partial f}{\partial y}(0,0) = \lim_{t \to 0} \frac{f(0,t) - f(0,0)}{t} $$

**Étapes:**

1.  **Calcul de $\frac{\partial f}{\partial x}(0,0)$**

    On applique la formule avec $a=(0,0)$ et la variable $x$. On a $f(0,0)=0$. Pour $t \neq 0$, le point $(t,0)$ est différent de l'origine, donc on utilise la première expression de $f$:

    $$ f(t,0) = \frac{t^3}{t^2+0^2} = \frac{t^3}{t^2} = t $$

    Maintenant, on calcule la limite :

    $$ \frac{\partial f}{\partial x}(0,0) = \lim_{t \to 0} \frac{f(t,0) - f(0,0)}{t} = \lim_{t \to 0} \frac{t - 0}{t} = \lim_{t \to 0} 1 = 1 $$

2.  **Calcul de $\frac{\partial f}{\partial y}(0,0)$**

    On applique la formule avec $a=(0,0)$ et la variable $y$. On a $f(0,0)=0$. Pour $t \neq 0$, le point $(0,t)$ est différent de l'origine :

    $$ f(0,t) = \frac{0^3}{0^2+t^2} = \frac{0}{t^2} = 0 $$

    Maintenant, on calcule la limite :

    $$ \frac{\partial f}{\partial y}(0,0) = \lim_{t \to 0} \frac{f(0,t) - f(0,0)}{t} = \lim_{t \to 0} \frac{0 - 0}{t} = \lim_{t \to 0} 0 = 0 $$

**Réponse:**

Les dérivées partielles de $f$ au point $(0,0)$ sont :

$$ \frac{\partial f}{\partial x}(0,0) = 1 $$

$$ \frac{\partial f}{\partial y}(0,0) = 0 $$

</details>

---

## Exercice 8

**Problème:** Soit $f:\mathbb{R}^n \to \mathbb{R}$ une fonction de classe $\mathcal{C}^1$ telle que son gradient vérifie $\|\nabla f(x)\|_2 \le M$ pour une constante $M > 0$ et pour tout $x \in \mathbb{R}^n$. Montrez en utilisant l'inégalité des accroissements finis que $f$ est $M$-lipschitzienne sur $\mathbb{R}^n$, c'est-à-dire que pour tous $a, b \in \mathbb{R}^n$, on a :

$$ |f(b) - f(a)| \le M \|b-a\|_2 $$

<details>

<summary>Solution</summary>

**Méthode:** L'inégalité des accroissements finis pour une fonction $f: U \to \mathbb{R}$ différentiable sur un ouvert $U$ contenant le segment $[a,b]$ stipule que :

$$ |f(b) - f(a)| \le \|b-a\|_2 \cdot \sup_{c \in [a,b]} \|\nabla f(c)\|_2 $$

Nous allons appliquer ce théorème à notre fonction.

**Étapes:**

1.  **Vérifier les hypothèses du théorème**
    - La fonction $f$ est de classe $\mathcal{C}^1$ sur $\mathbb{R}^n$, donc elle est différentiable sur $\mathbb{R}^n$.
    - Le domaine de définition est $U = \mathbb{R}^n$, qui est un ensemble ouvert et convexe. Par conséquent, pour n'importe quels points $a,b \in \mathbb{R}^n$, le segment $[a,b]$ est entièrement inclus dans $\mathbb{R}^n$.
    - Les hypothèses du théorème des accroissements finis sont donc bien vérifiées pour tout couple de points $(a,b)$.

2.  **Appliquer l'inégalité**

    Pour tous $a, b \in \mathbb{R}^n$, on peut écrire :

    $$ |f(b) - f(a)| \le \|b-a\|_2 \cdot \sup_{c \in [a,b]} \|\nabla f(c)\|_2 $$

    Un point $c$ sur le segment $[a,b]$ est de la forme $c = a+t(b-a)$ pour un certain $t \in [0,1]$.

3.  **Utiliser la borne sur le gradient**

    Par hypothèse, nous savons que pour n'importe quel point $x \in \mathbb{R}^n$, on a $\|\nabla f(x)\|_2 \le M$. Ceci est donc vrai en particulier pour tous les points $c$ sur le segment $[a,b]$.

    Par conséquent, le supremum de la norme du gradient sur le segment est aussi borné par $M$ :

    $$ \sup_{c \in [a,b]} \|\nabla f(c)\|_2 \le M $$

4.  **Combiner les résultats**

    En injectant cette borne dans l'inégalité obtenue à l'étape 2, on obtient :

    $$ |f(b) - f(a)| \le \|b-a\|_2 \cdot M $$

    Cette inégalité est la définition d'une fonction $M$-lipschitzienne.

**Réponse:**

En appliquant l'inégalité des accroissements finis et en utilisant le fait que $\|\nabla f(x)\|_2 \le M$ pour tout $x$, on obtient directement pour tous $a,b \in \mathbb{R}^n$ :

$$ |f(b) - f(a)| \le \|b-a\|_2 \cdot \sup_{c \in [a,b]} \|\nabla f(c)\|_2 \le M \|b-a\|_2 $$

Ce qui montre que $f$ est $M$-lipschitzienne.

</details>

---

## Exercice 9

**Problème:** La température $T$ sur une plaque métallique est donnée par une fonction de classe $\mathcal{C}^1$, $T(x,y)$. Une fourmi se déplace sur la plaque en suivant la trajectoire $\gamma(t) = (x(t), y(t))$, où $x(t) = \cos(t)$ et $y(t) = 2\sin(t)$. Exprimez la vitesse de variation de la température ressentie par la fourmi, $\frac{dT}{dt}$, en fonction des dérivées partielles de $T$ et du temps $t$.

<details>

<summary>Solution</summary>

**Méthode:** La température ressentie par la fourmi au temps $t$ est la composée de la fonction température $T$ et de la fonction trajectoire $\gamma$. On a donc une fonction $g(t) = T(\gamma(t)) = T(x(t), y(t))$. Pour trouver sa dérivée $\frac{dg}{dt} = \frac{dT}{dt}$, on doit utiliser la règle de la chaîne pour la composition de $T: \mathbb{R}^2 \to \mathbb{R}$ et $\gamma: \mathbb{R} \to \mathbb{R}^2$.

**Étapes:**

1.  **Identifier les fonctions et leurs jacobiennes**
    - Fonction interne : $\gamma(t) = (x(t), y(t))$. Sa jacobienne est un vecteur colonne $2 \times 1$ :

      $$ J_\gamma(t) = \begin{pmatrix} x'(t) \\ y'(t) \end{pmatrix} $$

    - Fonction externe : $T(x,y)$. Sa jacobienne est le gradient transposé, un vecteur ligne $1 \times 2$ :

      $$ J_T(x,y) = \begin{pmatrix} \frac{\partial T}{\partial x}(x,y) & \frac{\partial T}{\partial y}(x,y) \end{pmatrix} $$

2.  **Appliquer la règle de la chaîne**

    La dérivée de la fonction composée $g(t) = T(\gamma(t))$ est donnée par le produit des jacobiennes :

    $$ g'(t) = J_T(\gamma(t)) \cdot J_\gamma(t) $$

    $$ \frac{dT}{dt} = \begin{pmatrix} \frac{\partial T}{\partial x}(x(t),y(t)) & \frac{\partial T}{\partial y}(x(t),y(t)) \end{pmatrix} \begin{pmatrix} x'(t) \\ y'(t) \end{pmatrix} $$

    $$ \frac{dT}{dt} = \frac{\partial T}{\partial x}(x(t),y(t)) \cdot x'(t) + \frac{\partial T}{\partial y}(x(t),y(t)) \cdot y'(t) $$

    Cette formule peut aussi s'écrire avec le produit scalaire du gradient et du vecteur vitesse : $\frac{dT}{dt} = \langle \nabla T(\gamma(t)), \gamma'(t) \rangle$.

3.  **Calculer les dérivées de la trajectoire spécifique**

    On a $x(t) = \cos(t)$ et $y(t) = 2\sin(t)$.

    $$ x'(t) = -\sin(t) $$

    $$ y'(t) = 2\cos(t) $$

4.  **Combiner les résultats**

    On substitue les expressions de $x(t), y(t), x'(t), y'(t)$ dans la formule générale :

    $$ \frac{dT}{dt} = \frac{\partial T}{\partial x}(\cos t, 2\sin t) \cdot (-\sin t) + \frac{\partial T}{\partial y}(\cos t, 2\sin t) \cdot (2\cos t) $$

**Réponse:**

La vitesse de variation de la température ressentie par la fourmi est donnée par :

$$ \frac{dT}{dt} = -\sin(t) \frac{\partial T}{\partial x}(\cos t, 2\sin t) + 2\cos(t) \frac{\partial T}{\partial y}(\cos t, 2\sin t) $$

</details>

---

## Exercice 10

**Problème:** Considérons la fonction $f: \mathbb{R}^2 \to \mathbb{R}$ définie par :

$$ f(x,y) = \begin{cases} \frac{2xy}{x^2+y^2} & \text{si } (x,y) \neq (0,0) \\ 0 & \text{si } (x,y) = (0,0) \end{cases} $$

1. Montrez que les dérivées partielles $\frac{\partial f}{\partial x}(0,0)$ et $\frac{\partial f}{\partial y}(0,0)$ existent et calculez leur valeur.
2. La fonction est-elle différentiable en $(0,0)$ ? Justifiez votre réponse.

<details>

<summary>Solution</summary>

**Méthode:**

1. Pour calculer les dérivées partielles en $(0,0)$, on doit utiliser la définition formelle avec la limite du taux d'accroissement.
2. Pour déterminer si la fonction est différentiable, on peut utiliser la propriété que "différentiable implique continue". On va donc d'abord tester la continuité de $f$ en $(0,0)$. Si elle n'est pas continue, elle ne peut pas être différentiable.

**Étapes:**

1.  **Calcul des dérivées partielles en (0,0)**
    - Par rapport à $x$ :

      $$ \frac{\partial f}{\partial x}(0,0) = \lim_{t \to 0} \frac{f(t,0) - f(0,0)}{t} = \lim_{t \to 0} \frac{\frac{2(t)(0)}{t^2+0^2} - 0}{t} = \lim_{t \to 0} \frac{0}{t} = 0 $$

    - Par rapport à $y$ :

      $$ \frac{\partial f}{\partial y}(0,0) = \lim_{t \to 0} \frac{f(0,t) - f(0,0)}{t} = \lim_{t \to 0} \frac{\frac{2(0)(t)}{0^2+t^2} - 0}{t} = \lim_{t \to 0} \frac{0}{t} = 0 $$

    Les deux dérivées partielles existent et sont nulles en $(0,0)$.

2.  **Étude de la continuité en (0,0)**

    Pour que $f$ soit continue en $(0,0)$, il faut que $\lim_{(x,y) \to (0,0)} f(x,y) = f(0,0) = 0$.

    Étudions la limite en s'approchant de l'origine le long de différentes droites. Soit la droite d'équation $y=mx$. Pour $x \neq 0$:

    $$ f(x, mx) = \frac{2x(mx)}{x^2+(mx)^2} = \frac{2mx^2}{x^2(1+m^2)} = \frac{2m}{1+m^2} $$

    La limite lorsque $(x,y) \to (0,0)$ le long de la droite $y=mx$ est $\frac{2m}{1+m^2}$.

    Cette limite dépend de la pente $m$ de la droite.

    - Pour $m=1$ (la droite $y=x$), la limite est $\frac{2}{1+1}=1$.
    - Pour $m=2$ (la droite $y=2x$), la limite est $\frac{4}{1+4}=\frac{4}{5}$.

    Puisque la limite dépend du chemin suivi pour s'approcher de l'origine, la limite $\lim_{(x,y) \to (0,0)} f(x,y)$ n'existe pas.

    La fonction n'est donc pas continue en $(0,0)$.

3.  **Conclusion sur la différentiabilité**

    Une propriété fondamentale est que si une fonction est différentiable en un point, alors elle est nécessairement continue en ce point.

    Puisque nous avons montré que $f$ n'est pas continue en $(0,0)$, elle ne peut pas y être différentiable.

    Cet exercice illustre que l'existence de toutes les dérivées partielles en un point n'est pas une condition suffisante pour garantir la différentiabilité.

**Réponse:**

1. Les dérivées partielles en $(0,0)$ existent et valent $\frac{\partial f}{\partial x}(0,0) = 0$ et $\frac{\partial f}{\partial y}(0,0) = 0$.
2. La fonction n'est pas différentiable en $(0,0)$ car elle n'y est pas continue.

</details>

---

## Exercice 11

**Problème:** Déterminez l'équation du plan tangent à la surface d'équation $z = f(x,y) = x^3 + 2y^2 - xy$ au point $P=(1, -1)$.

<details>

<summary>Solution</summary>

**Méthode:** L'équation du plan tangent à la surface $z=f(x,y)$ au point $(x_0, y_0)$ est donnée par l'approximation affine de la fonction en ce point. Si $f$ est différentiable, cette équation est :

$$ z - f(x_0, y_0) = \frac{\partial f}{\partial x}(x_0, y_0)(x - x_0) + \frac{\partial f}{\partial y}(x_0, y_0)(y - y_0) $$

Nous devons donc calculer la valeur de la fonction et de ses dérivées partielles au point $P=(1,-1)$.

**Étapes:**

1.  **Calculer la coordonnée $z_0$ du point sur la surface**

    Le point sur la surface a pour coordonnées $(x_0, y_0, z_0)$ où $x_0=1$, $y_0=-1$ et $z_0 = f(x_0, y_0)$.

    $$ z_0 = f(1, -1) = (1)^3 + 2(-1)^2 - (1)(-1) = 1 + 2(1) + 1 = 4 $$

    Le point de tangence est donc $(1, -1, 4)$.

2.  **Calculer les dérivées partielles de $f(x,y)$**

    $$ \frac{\partial f}{\partial x}(x,y) = 3x^2 - y $$

    $$ \frac{\partial f}{\partial y}(x,y) = 4y - x $$

3.  **Évaluer les dérivées partielles au point $(1,-1)$**

    $$ \frac{\partial f}{\partial x}(1, -1) = 3(1)^2 - (-1) = 3 + 1 = 4 $$

    $$ \frac{\partial f}{\partial y}(1, -1) = 4(-1) - 1 = -4 - 1 = -5 $$

4.  **Écrire l'équation du plan tangent**

    On utilise la formule avec $(x_0, y_0) = (1, -1)$, $f(x_0, y_0) = 4$, $\frac{\partial f}{\partial x}(1, -1) = 4$ et $\frac{\partial f}{\partial y}(1, -1) = -5$.

    $$ z - 4 = 4(x - 1) + (-5)(y - (-1)) $$

    $$ z - 4 = 4(x - 1) - 5(y + 1) $$

    On peut développer pour obtenir la forme cartésienne $Ax+By+Cz+D=0$.

    $$ z - 4 = 4x - 4 - 5y - 5 $$

    $$ z = 4x - 5y - 5 $$

    $$ 4x - 5y - z - 5 = 0 $$

**Réponse:**

L'équation du plan tangent à la surface au point $(1, -1)$ est :

$$ z - 4 = 4(x - 1) - 5(y + 1) $$

ou, sous forme cartésienne :

$$ 4x - 5y - z - 5 = 0 $$

</details>
