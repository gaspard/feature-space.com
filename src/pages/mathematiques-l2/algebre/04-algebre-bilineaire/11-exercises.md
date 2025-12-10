---
id: 7c74bcdd
type: exercises
order: 11
title: Algèbre bilinéaire - exercices (A)
tags:
  - Algèbre bilinéaire
  - Dualité
  - Formes bilinéaires
  - Formes quadratiques
  - Espaces euclidiens
  - Diagonalisation
  - Gram-Schmidt
createdAt: '2025-11-27T08:32:48.606Z'
level: regular
course: Algèbre
courseId: 3b74b601
chapter: Algèbre bilinéaire
chapterId: 6d99d679
---
# Exercices "Algèbre bilinéaire" (A)

---

## Exercice 1 : Base Duale

**Problème :**

Soit $E = \mathbb{R}^3$. On considère la base canonique $\mathcal{B}_0 = (e_1, e_2, e_3)$ et une nouvelle famille de vecteurs $\mathcal{B} = (u_1, u_2, u_3)$ définie par :

$$u_1 = (1, 0, 0), \quad u_2 = (1, 1, 0), \quad u_3 = (1, 1, 1)$$

1. Montrer que $\mathcal{B}$ est une base de $\mathbb{R}^3$.
2. Déterminer la base duale $\mathcal{B}^* = (u_1^*, u_2^*, u_3^*)$. On exprimera chaque forme linéaire $u_i^*$ en fonction des coordonnées $(x, y, z)$ dans la base canonique.

<details>

<summary>Solution</summary>

**Méthode :**

Pour trouver la base duale, on cherche les formes linéaires $u_i^*$ telles que $u_i^*(u_j) = \delta_{ij}$. Si on note $u_i^*(x,y,z) = a_i x + b_i y + c_i z$, cela revient à inverser la matrice de passage ou à résoudre le système d'équations défini par les conditions de dualité.

**Étapes :**

1.  **Vérification de la base :**

    La matrice formée par les vecteurs $(u_1, u_2, u_3)$ en colonnes est :

    $$P = \begin{pmatrix} 1 & 1 & 1 \\ 0 & 1 & 1 \\ 0 & 0 & 1 \end{pmatrix}$$

    C'est une matrice triangulaire supérieure avec des 1 sur la diagonale. Son déterminant vaut 1 (non nul), donc $\mathcal{B}$ est bien une base.

2.  **Recherche de $u_1^*$ :**

    Par définition, $u_1^*(u_1) = 1$, $u_1^*(u_2) = 0$, $u_1^*(u_3) = 0$.

    Soit $v = (x, y, z)$. Exprimons $v$ dans la base $\mathcal{B}$ : $v = \lambda_1 u_1 + \lambda_2 u_2 + \lambda_3 u_3$.

    Alors par définition des formes coordonnées, $u_1^*(v) = \lambda_1$.

    Résolvons le système :

    $$(x, y, z) = \lambda_1(1, 0, 0) + \lambda_2(1, 1, 0) + \lambda_3(1, 1, 1)$$

    $$\begin{cases} x = \lambda_1 + \lambda_2 + \lambda_3 \\ y = \lambda_2 + \lambda_3 \\ z = \lambda_3 \end{cases}$$

    On remonte le système (substitution arrière) :

    - $\lambda_3 = z$
    - $\lambda_2 = y - \lambda_3 = y - z$
    - $\lambda_1 = x - \lambda_2 - \lambda_3 = x - (y - z) - z = x - y$

3.  **Identification des formes duales :**

    D'après les résultats ci-dessus :

    - $u_1^*(x, y, z) = \lambda_1 = x - y$
    - $u_2^*(x, y, z) = \lambda_2 = y - z$
    - $u_3^*(x, y, z) = \lambda_3 = z$

**Réponse :**

La base duale est définie par les formes linéaires :

$$u_1^*(x, y, z) = x - y, \quad u_2^*(x, y, z) = y - z, \quad u_3^*(x, y, z) = z$$

</details>

---

## Exercice 2 : Matrice d'une Forme Bilinéaire

**Problème :**

Soit $E = \mathbb{R}^3$. On définit l'application $\varphi : E \times E \to \mathbb{R}$ par :

$$\varphi((x_1, x_2, x_3), (y_1, y_2, y_3)) = 2x_1y_1 - x_1y_2 - x_2y_1 + 3x_2y_2 + x_2y_3 + x_3y_2 + x_3y_3$$

1. Vérifier que $\varphi$ est une forme bilinéaire symétrique.
2. Écrire la matrice $A$ de $\varphi$ dans la base canonique.
3. Calculer $\varphi(u, v)$ pour $u = (1, 1, 0)$ et $v = (0, 1, 1)$ en utilisant le calcul matriciel.

<details>

<summary>Solution</summary>

**Méthode :**

Pour la matrice, le coefficient $a_{ij}$ correspond au coefficient devant le terme $x_i y_j$. La symétrie se lit sur la matrice (${}^tA = A$) ou sur l'expression ($\text{coeff } x_i y_j = \text{coeff } x_j y_i$). Le calcul se fait par ${}^t X A Y$.

**Étapes :**

1.  **Vérification de la symétrie :**

    Regardons les coefficients croisés :

    - Coeff de $x_1y_2$ est $-1$, coeff de $x_2y_1$ est $-1$. (Égaux)
    - Coeff de $x_2y_3$ est $1$, coeff de $x_3y_2$ est $1$. (Égaux)
    - Coeff de $x_1y_3$ est $0$, coeff de $x_3y_1$ est $0$. (Égaux)

    Puisque $\varphi$ est une expression polynomiale homogène de degré 1 en $x$ et 1 en $y$, c'est une forme bilinéaire. La symétrie des coefficients assure qu'elle est symétrique.

2.  **Construction de la matrice $A$ :**

    $$A = \begin{pmatrix} \text{coeff } x_1y_1 & \text{coeff } x_1y_2 & \text{coeff } x_1y_3 \\ \text{coeff } x_2y_1 & \text{coeff } x_2y_2 & \text{coeff } x_2y_3 \\ \text{coeff } x_3y_1 & \text{coeff } x_3y_2 & \text{coeff } x_3y_3 \end{pmatrix}$$

    $$A = \begin{pmatrix} 2 & -1 & 0 \\ -1 & 3 & 1 \\ 0 & 1 & 1 \end{pmatrix}$$

3.  **Calcul matriciel :**

    Soient $X = \begin{pmatrix} 1 \\ 1 \\ 0 \end{pmatrix}$ et $Y = \begin{pmatrix} 0 \\ 1 \\ 1 \end{pmatrix}$.

    On calcule $\varphi(u, v) = {}^t X A Y$.

    D'abord $A Y = \begin{pmatrix} 2 & -1 & 0 \\ -1 & 3 & 1 \\ 0 & 1 & 1 \end{pmatrix} \begin{pmatrix} 0 \\ 1 \\ 1 \end{pmatrix} = \begin{pmatrix} -1 \\ 4 \\ 2 \end{pmatrix}$.

    Ensuite ${}^t X (AY) = \begin{pmatrix} 1 & 1 & 0 \end{pmatrix} \begin{pmatrix} -1 \\ 4 \\ 2 \end{pmatrix} = 1(-1) + 1(4) + 0(2) = 3$.

**Réponse :**

La matrice est $A = \begin{pmatrix} 2 & -1 & 0 \\ -1 & 3 & 1 \\ 0 & 1 & 1 \end{pmatrix}$ et $\varphi(u, v) = 3$.

</details>

---

## Exercice 3 : Réduction de Gauss et Signature

**Problème :**

Soit $q$ la forme quadratique sur $\mathbb{R}^3$ définie par :

$$q(x, y, z) = x^2 + 2y^2 + 5z^2 + 2xy - 4yz$$

1. Appliquer l'algorithme de réduction de Gauss pour écrire $q$ comme une somme (ou différence) de carrés de formes linéaires indépendantes.
2. Donner la signature et le rang de $q$.
3. La forme quadratique est-elle définie positive ?

<details>

<summary>Solution</summary>

**Méthode :**

On regroupe les termes contenant la première variable ($x$) pour former une identité remarquable, puis on itère sur les variables restantes.

**Étapes :**

1.  **Regroupement en $x$ :**

    Les termes contenant $x$ sont $x^2 + 2xy$. On reconnaît le début de $(x+y)^2 = x^2 + 2xy + y^2$.

    Donc $x^2 + 2xy = (x+y)^2 - y^2$.

    On substitue dans $q$ :

    $$q(x, y, z) = \left[(x+y)^2 - y^2\right] + 2y^2 + 5z^2 - 4yz$$

    $$q(x, y, z) = (x+y)^2 + y^2 - 4yz + 5z^2$$

2.  **Regroupement en $y$ :**

    On travaille sur le reste : $y^2 - 4yz$.

    C'est le début de $(y - 2z)^2 = y^2 - 4yz + 4z^2$.

    Donc $y^2 - 4yz = (y - 2z)^2 - 4z^2$.

    On substitue :

    $$q(x, y, z) = (x+y)^2 + \left[(y - 2z)^2 - 4z^2\right] + 5z^2$$

    $$q(x, y, z) = (x+y)^2 + (y - 2z)^2 + z^2$$

3.  **Analyse du résultat :**

    On a $q(v) = L_1(v)^2 + L_2(v)^2 + L_3(v)^2$ avec :

    $L_1 = x+y$

    $L_2 = y-2z$

    $L_3 = z$

    Ces formes sont linéairement indépendantes (le système est triangulaire).

4.  **Signature et rang :**

    Il y a 3 coefficients positifs ($+1, +1, +1$) et 0 négatif.

    Signature : $(3, 0)$.

    Rang : 3.

5.  **Définie positive ?**

    Le rang est égal à la dimension (3) et la signature est $(3, 0)$. Donc $q(v) \ge 0$ et $q(v) = 0 \iff L_1=L_2=L_3=0 \iff v=0$. Elle est définie positive.

**Réponse :**

$$q(x, y, z) = (x+y)^2 + (y-2z)^2 + z^2$$

Signature $(3, 0)$, Rang 3. Elle est définie positive.

</details>

---

## Exercice 4 : Procédé de Gram-Schmidt

**Problème :**

Muni du produit scalaire canonique sur $\mathbb{R}^3$, on considère la famille libre $\mathcal{F} = (v_1, v_2)$ suivante :

$$v_1 = (1, 1, 0), \quad v_2 = (2, 0, 1)$$

Construire une base orthonormée $(e_1, e_2)$ du sous-espace $F = \text{Vect}(v_1, v_2)$ en utilisant le procédé de Gram-Schmidt.

<details>

<summary>Solution</summary>

**Méthode :**

On construit d'abord une base orthogonale $(u_1, u_2)$, puis on normalise.

1. $u_1 = v_1$
2. $u_2 = v_2 - \frac{(v_2 | u_1)}{\|u_1\|^2} u_1$ (projection de $v_2$ sur l'orthogonal de $u_1$)
3. Normaliser pour obtenir $e_i = u_i / \|u_i\|$.

**Étapes :**

1.  **Premier vecteur $u_1$ :**

    On pose $u_1 = v_1 = (1, 1, 0)$.

    Norme carrée : $\|u_1\|^2 = 1^2 + 1^2 + 0^2 = 2$.

    Premier vecteur normalisé : $e_1 = \frac{1}{\sqrt{2}}(1, 1, 0)$.

2.  **Deuxième vecteur orthogonal $u_2$ :**

    On calcule le produit scalaire $(v_2 | u_1)$ :

    $$(v_2 | u_1) = 2\times 1 + 0\times 1 + 1\times 0 = 2$$

    On applique la formule :

    $$u_2 = v_2 - \frac{(v_2 | u_1)}{\|u_1\|^2} u_1 = (2, 0, 1) - \frac{2}{2} (1, 1, 0)$$

    $$u_2 = (2, 0, 1) - (1, 1, 0) = (1, -1, 1)$$

    Vérifions l'orthogonalité : $(u_2 | u_1) = 1(1) + (-1)(1) + 1(0) = 0$. C'est bon.

3.  **Normalisation de $u_2$ :**

    Norme carrée : $\|u_2\|^2 = 1^2 + (-1)^2 + 1^2 = 3$.

    Norme : $\|u_2\| = \sqrt{3}$.

    Deuxième vecteur normalisé : $e_2 = \frac{1}{\sqrt{3}}(1, -1, 1)$.

**Réponse :**

Une base orthonormée de $F$ est :

$$e_1 = \frac{1}{\sqrt{2}}\begin{pmatrix} 1 \\ 1 \\ 0 \end{pmatrix}, \quad e_2 = \frac{1}{\sqrt{3}}\begin{pmatrix} 1 \\ -1 \\ 1 \end{pmatrix}$$

</details>

---

## Exercice 5 : Projection Orthogonale et Distance

**Problème :**

Dans $\mathbb{R}^3$ muni du produit scalaire canonique, soit le plan $P$ d'équation cartésienne :

$$x - y + z = 0$$

Soit le vecteur $v = (2, 3, 4)$.

1. Déterminer un vecteur normal $n$ au plan $P$.
2. Calculer la projection orthogonale $\pi_P(v)$ de $v$ sur $P$.
3. En déduire la distance $d(v, P)$ du vecteur $v$ au plan $P$.

<details>

<summary>Solution</summary>

**Méthode :**

Il est souvent plus rapide de projeter d'abord sur la droite orthogonale $P^\perp$ engendrée par le vecteur normal $n$.

La formule de décomposition est : $v = \pi_P(v) + \pi_{P^\perp}(v)$.

Donc $\pi_P(v) = v - \pi_{P^\perp}(v)$, avec $\pi_{P^\perp}(v) = \frac{(v | n)}{\|n\|^2} n$.

**Étapes :**

1.  **Vecteur normal :**

    L'équation est $1\cdot x + (-1)\cdot y + 1\cdot z = 0$.

    Un vecteur normal est $n = (1, -1, 1)$.

2.  **Projection sur la normale ($P^\perp$) :**

    Calculons $(v | n) = 2(1) + 3(-1) + 4(1) = 2 - 3 + 4 = 3$.

    Calculons $\|n\|^2 = 1^2 + (-1)^2 + 1^2 = 3$.

    $$\pi_{P^\perp}(v) = \frac{3}{3} n = n = (1, -1, 1)$$

3.  **Projection sur le plan $P$ :**

    $$\pi_P(v) = v - \pi_{P^\perp}(v) = (2, 3, 4) - (1, -1, 1) = (1, 4, 3)$$

    Vérifions que ce point est dans le plan : $1 - 4 + 3 = 0$. C'est correct.

4.  **Calcul de la distance :**

    La distance est la norme de la composante orthogonale (le vecteur projeté sur la normale).

    $$d(v, P) = \|\pi_{P^\perp}(v)\| = \|(1, -1, 1)\| = \sqrt{1^2 + (-1)^2 + 1^2} = \sqrt{3}$$

**Réponse :**

$\pi_P(v) = (1, 4, 3)$ et la distance est $\sqrt{3}$.

</details>

---

## Exercice 6 : Diagonalisation de Matrice Symétrique (Théorème Spectral)

**Problème :**

Soit la matrice symétrique réelle :

$$A = \begin{pmatrix} 2 & 1 \\ 1 & 2 \end{pmatrix}$$

1. Déterminer les valeurs propres de $A$.
2. Trouver une base orthonormée de vecteurs propres.
3. Écrire la matrice de passage orthogonale $P$ et la matrice diagonale $D$ telles que $A = PDP^{-1}$.

<details>

<summary>Solution</summary>

**Méthode :**

Calculer le polynôme caractéristique pour trouver les valeurs propres. Résoudre les systèmes $(A - \lambda I)X = 0$ pour trouver les sous-espaces propres. Normaliser les vecteurs pour obtenir une base orthonormée.

**Étapes :**

1.  **Valeurs propres :**

    Polynôme caractéristique $P_A(\lambda) = \det(A - \lambda I) = \begin{vmatrix} 2-\lambda & 1 \\ 1 & 2-\lambda \end{vmatrix}$.

    $P_A(\lambda) = (2-\lambda)^2 - 1 = \lambda^2 - 4\lambda + 3$.

    Racines : $\Delta = 16 - 12 = 4$.

    $\lambda_1 = \frac{4-2}{2} = 1$ et $\lambda_2 = \frac{4+2}{2} = 3$.

2.  **Vecteurs propres :**
    - Pour $\lambda_1 = 1$ :

      $\begin{pmatrix} 1 & 1 \\ 1 & 1 \end{pmatrix} \begin{pmatrix} x \\ y \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \end{pmatrix} \implies x + y = 0 \implies x = -y$.

      Vecteur directeur : $u_1 = (1, -1)$.

      Normalisation : $\|u_1\| = \sqrt{2}$. Donc $e_1 = \frac{1}{\sqrt{2}}(1, -1)$.

    - Pour $\lambda_2 = 3$ :

      $\begin{pmatrix} -1 & 1 \\ 1 & -1 \end{pmatrix} \begin{pmatrix} x \\ y \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \end{pmatrix} \implies -x + y = 0 \implies x = y$.

      Vecteur directeur : $u_2 = (1, 1)$.

      Normalisation : $\|u_2\| = \sqrt{2}$. Donc $e_2 = \frac{1}{\sqrt{2}}(1, 1)$.

    *Note : Comme la matrice est symétrique, les vecteurs propres associés à des valeurs propres distinctes sont nécessairement orthogonaux ($u_1 \perp u_2$), ce qu'on vérifie : $1(1) + (-1)(1) = 0$.*

3.  **Matrices $P$ et $D$ :**

    La matrice de passage orthogonale $P$ contient les vecteurs $e_1, e_2$ en colonnes.

    $$P = \frac{1}{\sqrt{2}} \begin{pmatrix} 1 & 1 \\ -1 & 1 \end{pmatrix}$$

    La matrice diagonale contient les valeurs propres :

    $$D = \begin{pmatrix} 1 & 0 \\ 0 & 3 \end{pmatrix}$$

**Réponse :**

$P = \begin{pmatrix} \frac{1}{\sqrt{2}} & \frac{1}{\sqrt{2}} \\ -\frac{1}{\sqrt{2}} & \frac{1}{\sqrt{2}} \end{pmatrix}$, $D = \begin{pmatrix} 1 & 0 \\ 0 & 3 \end{pmatrix}$.

</details>

---

## Exercice 7 : Produit Scalaire et Polynômes

**Problème :**

Soit $E = \mathbb{R}_1[X]$ l'espace vectoriel des polynômes de degré inférieur ou égal à 1.

On définit l'application :

$$\langle P, Q \rangle = \int_0^1 P(t)Q(t) dt$$

1. Calculer le produit scalaire $\langle 1, X \rangle$ et les normes carrées $\|1\|^2$ et $\|X\|^2$.
2. Trouver un polynôme orthogonal au polynôme constant $P(X) = 1$.
3. Vérifier l'inégalité de Cauchy-Schwarz pour les polynômes $P(X) = 1$ et $Q(X) = X$.

<details>

<summary>Solution</summary>

**Méthode :**

Calcul intégral simple des monômes $\int_0^1 t^k dt = \frac{1}{k+1}$.

**Étapes :**

1.  **Calculs de base :**
    - $\|1\|^2 = \int_0^1 1\cdot 1 dt = [t]_0^1 = 1$.
    - $\|X\|^2 = \int_0^1 t\cdot t dt = \int_0^1 t^2 dt = [\frac{t^3}{3}]_0^1 = \frac{1}{3}$.
    - $\langle 1, X \rangle = \int_0^1 1\cdot t dt = [\frac{t^2}{2}]_0^1 = \frac{1}{2}$.

2.  **Recherche de l'orthogonal :**

    On cherche $R(X) = aX + b$ tel que $\langle 1, R \rangle = 0$.

    $$\langle 1, aX+b \rangle = a\langle 1, X \rangle + b\langle 1, 1 \rangle = a(\frac{1}{2}) + b(1) = 0$$

    Donc $b = -\frac{a}{2}$.

    Si on prend $a=2$, alors $b=-1$. Le polynôme $R(X) = 2X - 1$ est orthogonal à 1.

3.  **Cauchy-Schwarz :**

    L'inégalité stipule : $|\langle P, Q \rangle|^2 \le \|P\|^2 \cdot \|Q\|^2$.

    - Carré du produit scalaire : $(\frac{1}{2})^2 = \frac{1}{4}$.
    - Produit des normes carrées : $1 \cdot \frac{1}{3} = \frac{1}{3}$.
    - Comparaison : On a bien $\frac{1}{4} \le \frac{1}{3}$ (puisque $0.25 \le 0.33$).

**Réponse :**

$\langle 1, X \rangle = 1/2$. Un polynôme orthogonal à 1 est $2X-1$. L'inégalité $1/4 \le 1/3$ est vérifiée.

</details>

---

## Exercice 8 : Symétrie Orthogonale (Réflexion)

**Problème :**

Dans $\mathbb{R}^3$ euclidien, on considère le plan $H$ d'équation $x + y + z = 0$.

Soit $s$ la symétrie orthogonale par rapport au plan $H$.

1. Donner un vecteur unitaire $n$ normal au plan $H$.
2. Écrire la formule de la réflexion : $s(v) = v - 2\langle v, n \rangle n$.
3. Déterminer la matrice $S$ de $s$ dans la base canonique.

<details>

<summary>Solution</summary>

**Méthode :**

La matrice de la projection sur la droite normale engendrée par $n=(n_x, n_y, n_z)$ (unitaire) est $N = n {}^t n$.

La matrice de la réflexion est $S = I - 2N$.

**Étapes :**

1.  **Vecteur normal unitaire :**

    Un vecteur normal est $u = (1, 1, 1)$.

    Sa norme est $\|u\| = \sqrt{1+1+1} = \sqrt{3}$.

    Le vecteur unitaire est $n = \frac{1}{\sqrt{3}}(1, 1, 1)$.

2.  **Construction de la matrice $N = n {}^t n$ :**

    $$n {}^t n = \frac{1}{3} \begin{pmatrix} 1 \\ 1 \\ 1 \end{pmatrix} \begin{pmatrix} 1 & 1 & 1 \end{pmatrix} = \frac{1}{3} \begin{pmatrix} 1 & 1 & 1 \\ 1 & 1 & 1 \\ 1 & 1 & 1 \end{pmatrix}$$

3.  **Calcul de la matrice $S = I - 2n {}^t n$ :**

    $$S = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix} - \frac{2}{3} \begin{pmatrix} 1 & 1 & 1 \\ 1 & 1 & 1 \\ 1 & 1 & 1 \end{pmatrix}$$

    Calculons terme à terme :

    - Diagonale : $1 - \frac{2}{3} = \frac{1}{3}$.
    - Hors diagonale : $0 - \frac{2}{3} = -\frac{2}{3}$.

**Réponse :**

$$S = \frac{1}{3} \begin{pmatrix} 1 & -2 & -2 \\ -2 & 1 & -2 \\ -2 & -2 & 1 \end{pmatrix}$$

C'est une matrice orthogonale et symétrique.

</details>

---

## Exercice 9 : Isométries et Matrices Orthogonales

**Problème :**

Parmi les matrices suivantes, lesquelles sont des matrices orthogonales (représentant des isométries dans une base orthonormée) ? Pour celles qui le sont, préciser s'il s'agit d'une rotation ou d'une rotation composée avec une réflexion (antidéplacement), en calculant le déterminant.

$$A = \begin{pmatrix} \cos \theta & -\sin \theta \\ \sin \theta & \cos \theta \end{pmatrix}, \quad B = \begin{pmatrix} 1 & 1 \\ 0 & 1 \end{pmatrix}, \quad C = \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix}$$

<details>

<summary>Solution</summary>

**Méthode :**

Une matrice $M$ est orthogonale si ${}^t M M = I_n$.

Si $\det(M) = 1$, c'est une rotation (groupe $SO(n)$).

Si $\det(M) = -1$, c'est un antidéplacement (isométrie indirecte).

**Étapes :**

1.  **Matrice A :**

    ${}^t A A = \begin{pmatrix} \cos \theta & \sin \theta \\ -\sin \theta & \cos \theta \end{pmatrix} \begin{pmatrix} \cos \theta & -\sin \theta \\ \sin \theta & \cos \theta \end{pmatrix} = \begin{pmatrix} \cos^2+\sin^2 & -\cos\sin+\sin\cos \\ -\sin\cos+\cos\sin & \sin^2+\cos^2 \end{pmatrix} = I_2$.

    C'est orthogonal.

    $\det(A) = \cos^2 \theta - (-\sin^2 \theta) = 1$.

    $\to$ Rotation d'angle $\theta$.

2.  **Matrice B :**

    Les colonnes ne sont pas orthogonales : $(1, 0) \cdot (1, 1) = 1 \ne 0$.

    Ce n'est pas une matrice orthogonale. (C'est une matrice de cisaillement).

3.  **Matrice C :**

    ${}^t C C = C^2 = \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix} \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix} = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}$.

    C'est orthogonal.

    $\det(C) = 0 - 1 = -1$.

    $\to$ Isométrie indirecte (ici, symétrie par rapport à la droite $y=x$).

**Réponse :**

- $A$ est orthogonale (Rotation).
- $B$ n'est pas orthogonale.
- $C$ est orthogonale (Réflexion/Antidéplacement).

</details>

---

## Exercice 10 : Orthogonal d'un Sous-Espace

**Problème :**

Soit $E = \mathbb{R}^4$ muni du produit scalaire canonique.

Soit $F$ le sous-espace défini par le système d'équations :

$$\begin{cases} x_1 + x_2 + x_3 + x_4 = 0 \\ x_1 - x_2 + x_3 - x_4 = 0 \end{cases}$$

1. Déterminer la dimension de $F$.
2. Déterminer une base de $F^\perp$, l'orthogonal de $F$.

<details>

<summary>Solution</summary>

**Méthode :**

Le lien fondamental est que l'orthogonal de l'espace engendré par les lignes d'un système homogène $AX=0$ est exactement l'espace engendré par les vecteurs coefficients de ces lignes. Autrement dit, si $F = \text{Ker}(L_1) \cap \text{Ker}(L_2)$, alors $F^\perp = \text{Vect}(\text{grad } L_1, \text{grad } L_2)$.

**Étapes :**

1.  **Analyse du système :**

    Les équations peuvent être vues comme des produits scalaires :

    - $L_1(x) = \langle u_1, x \rangle = 0$ avec $u_1 = (1, 1, 1, 1)$.
    - $L_2(x) = \langle u_2, x \rangle = 0$ avec $u_2 = (1, -1, 1, -1)$.

    $F$ est l'ensemble des vecteurs orthogonaux à $u_1$ et $u_2$. Donc $F = \{u_1, u_2\}^\perp$.

2.  **Propriété de l'orthogonal :**

    On sait que $(A^\perp)^\perp = \text{Vect}(A)$.

    Donc $F^\perp = (\{u_1, u_2\}^\perp)^\perp = \text{Vect}(u_1, u_2)$.

3.  **Vérification de la liberté :**

    Les vecteurs $u_1 = (1, 1, 1, 1)$ et $u_2 = (1, -1, 1, -1)$ ne sont pas colinéaires (leurs coordonnées ne sont pas proportionnelles). Ils forment donc une base de $F^\perp$.

4.  **Dimensions :**

    $\dim(F^\perp) = 2$.

    Comme $\dim(E) = 4$, on a $\dim(F) = 4 - 2 = 2$.

**Réponse :**

$\dim(F) = 2$. Une base de $F^\perp$ est $((1, 1, 1, 1), (1, -1, 1, -1))$.

</details>
