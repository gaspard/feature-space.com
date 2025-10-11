---
title: A - Exercices
order: 11
level: regular
chapter: A - Concepts
course: Géométrie
tags: ["exercises", "practice", "regular"]
---

# Exercices: Espaces Euclidiens et Hermitiens (A)

## Exercice 1: Problème de calcul

**Problème:**

Soit l'application $\varphi: \mathbb{R}^3 \times \mathbb{R}^3 \to \mathbb{R}$ définie pour $u=(x_1, x_2, x_3)$ et $v=(y_1, y_2, y_3)$ par :

$$ \varphi(u, v) = 2x_1y_1 + x_2y_2 + 3x_3y_3 + x_1y_2 + x_2y_1 $$

Cette application est-elle un produit scalaire sur $\mathbb{R}^3$ ? Justifiez votre réponse en vérifiant les propriétés requises.

<details>

<summary>Solution</summary>

**Méthode:**

Pour déterminer si $\varphi$ est un produit scalaire, nous devons vérifier si c'est une forme bilinéaire, symétrique et définie positive.

**Étapes:**

1.  **Vérifier la bilinéarité :** L'expression de $\varphi(u,v)$ est polynomiale et homogène de degré 1 par rapport aux coordonnées de $u$ et de $v$. Par conséquent, $\varphi$ est bien une forme bilinéaire.

2.  **Vérifier la symétrie :** Nous devons vérifier si $\varphi(u, v) = \varphi(v, u)$ pour tous $u, v \in \mathbb{R}^3$.

    $$ \varphi(v, u) = 2y_1x_1 + y_2x_2 + 3y_3x_3 + y_1x_2 + y_2x_1 $$

    En réorganisant les termes, on obtient :

    $$ \varphi(v, u) = 2x_1y_1 + x_2y_2 + 3x_3y_3 + x_2y_1 + x_1y_2 $$

    On constate que $\varphi(v, u) = \varphi(u, v)$. La forme est donc symétrique.

3.  **Vérifier si la forme est définie positive :** Nous devons vérifier si $\varphi(u, u) > 0$ pour tout $u \neq 0$.

    $$ \varphi(u, u) = 2x_1^2 + x_2^2 + 3x_3^2 + x_1x_2 + x_2x_1 = 2x_1^2 + 2x_1x_2 + x_2^2 + 3x_3^2 $$

    Nous pouvons essayer de réécrire cette expression comme une somme de carrés. On utilise la complétion du carré pour les termes en $x_1$ et $x_2$.

    $$ \varphi(u, u) = (x_1^2 + 2x_1x_2 + x_2^2) + x_1^2 + 3x_3^2 $$

    $$ \varphi(u, u) = (x_1 + x_2)^2 + x_1^2 + 3x_3^2 $$

    Cette expression est une somme de trois carrés. Elle est donc toujours positive ou nulle.

    Pour qu'elle soit nulle, il faut que chaque terme soit nul :

    $$ (x_1 + x_2)^2 = 0 \implies x_1 + x_2 = 0 $$

    $$ x_1^2 = 0 \implies x_1 = 0 $$

    $$ 3x_3^2 = 0 \implies x_3 = 0 $$

    Si $x_1 = 0$, la première équation donne $0 + x_2 = 0$, soit $x_2 = 0$.

    Donc, $\varphi(u, u) = 0$ si et seulement si $x_1=0$, $x_2=0$ et $x_3=0$, c'est-à-dire $u = (0,0,0)$.

    Pour tout $u \neq 0$, on a $\varphi(u, u) > 0$. La forme est définie positive.

4.  **Conclusion :** Puisque $\varphi$ est une forme bilinéaire, symétrique et définie positive, c'est un produit scalaire sur $\mathbb{R}^3$.

**Réponse:**

Oui, l'application $\varphi$ est un produit scalaire sur $\mathbb{R}^3$.

</details>

## Exercice 2: Problème de calcul

**Problème:**

Soit $E = \mathbb{C}^2$ muni du produit scalaire hermitien canonique $\langle u, v \rangle = z_1\bar{w}_1 + z_2\bar{w}_2$ pour $u = (z_1, z_2)$ et $v = (w_1, w_2)$.

Soient les vecteurs $u = (1+i, 2-3i)$ et $v = (i, 4)$.

1.  Calculez $\langle u, v \rangle$.
2.  Calculez $\langle v, u \rangle$ et vérifiez la propriété de symétrie hermitienne.
3.  Calculez $\langle u, u \rangle$. Le résultat est-il un nombre réel positif ?

<details>

<summary>Solution</summary>

**Méthode:**

On applique directement la définition du produit scalaire hermitien canonique, en faisant attention à la conjugaison des composantes du second vecteur.

**Étapes:**

1.  **Calcul de $\langle u, v \rangle$ :**

    $$ \langle u, v \rangle = (1+i)\bar{i} + (2-3i)\bar{4} $$

    Le conjugué de $i$ est $\bar{i} = -i$. Le conjugué de $4$ est $\bar{4} = 4$.

    $$ \langle u, v \rangle = (1+i)(-i) + (2-3i)(4) = -i - i^2 + 8 - 12i $$

    $$ \langle u, v \rangle = -i - (-1) + 8 - 12i = 1 - i + 8 - 12i = 9 - 13i $$

2.  **Calcul de $\langle v, u \rangle$ et vérification :**

    $$ \langle v, u \rangle = i(\overline{1+i}) + 4(\overline{2-3i}) $$

    Le conjugué de $1+i$ est $1-i$. Le conjugué de $2-3i$ est $2+3i$.

    $$ \langle v, u \rangle = i(1-i) + 4(2+3i) = i - i^2 + 8 + 12i $$

    $$ \langle v, u \rangle = i - (-1) + 8 + 12i = 1 + i + 8 + 12i = 9 + 13i $$

    Nous vérifions si $\langle v, u \rangle = \overline{\langle u, v \rangle}$.

    $$ \overline{\langle u, v \rangle} = \overline{9 - 13i} = 9 + 13i $$

    On a bien $\langle v, u \rangle = \overline{\langle u, v \rangle}$. La propriété est vérifiée.

3.  **Calcul de $\langle u, u \rangle$ :**

    $$ \langle u, u \rangle = (1+i)(\overline{1+i}) + (2-3i)(\overline{2-3i}) $$

    Rappel : $z\bar{z} = |z|^2$.

    $$ |1+i|^2 = 1^2 + 1^2 = 2 $$

    $$ |2-3i|^2 = 2^2 + (-3)^2 = 4 + 9 = 13 $$

    $$ \langle u, u \rangle = 2 + 13 = 15 $$

    Le résultat est $15$, qui est bien un nombre réel et positif, comme attendu pour un vecteur non nul.

**Réponse:**

1. $\langle u, v \rangle = 9 - 13i$
2. $\langle v, u \rangle = 9 + 13i$, et on a bien $\langle v, u \rangle = \overline{\langle u, v \rangle}$.
3. $\langle u, u \rangle = 15$, qui est un réel positif.

</details>

## Exercice 3: Problème d'application

**Problème:**

Dans l'espace euclidien $\mathbb{R}^3$ muni du produit scalaire usuel, soient les vecteurs $u = (1, -2, 3)$ et $v = (2, 1, 0)$.

1.  Vérifiez l'inégalité de Cauchy-Schwarz pour ces deux vecteurs.
2.  Vérifiez l'identité du parallélogramme pour ces deux vecteurs.

<details>

<summary>Solution</summary>

**Méthode:**

Nous allons calculer chaque membre des deux inégalités/identités séparément et les comparer.

**Étapes:**

1.  **Vérification de l'inégalité de Cauchy-Schwarz : $|\langle u, v \rangle| \le \|u\| \|v\|$**
    -   Calcul du produit scalaire :

        $$ \langle u, v \rangle = (1)(2) + (-2)(1) + (3)(0) = 2 - 2 + 0 = 0 $$

        Donc $|\langle u, v \rangle| = 0$.

    -   Calcul des normes :

        $$ \|u\| = \sqrt{1^2 + (-2)^2 + 3^2} = \sqrt{1 + 4 + 9} = \sqrt{14} $$

        $$ \|v\| = \sqrt{2^2 + 1^2 + 0^2} = \sqrt{4 + 1 + 0} = \sqrt{5} $$

    -   Calcul du produit des normes :

        $$ \|u\| \|v\| = \sqrt{14} \sqrt{5} = \sqrt{70} $$

    -   Comparaison :

        Nous devons vérifier si $0 \le \sqrt{70}$. C'est vrai. L'inégalité est vérifiée.

        *Note : Le cas d'égalité n'a pas lieu car les vecteurs ne sont pas colinéaires. Le fait que le produit scalaire soit nul signifie que les vecteurs sont orthogonaux.*

2.  **Vérification de l'identité du parallélogramme : $\|u+v\|^2 + \|u-v\|^2 = 2(\|u\|^2 + \|v\|^2)$**
    -   Calculons $u+v$ et $u-v$ :

        $$ u+v = (1+2, -2+1, 3+0) = (3, -1, 3) $$

        $$ u-v = (1-2, -2-1, 3-0) = (-1, -3, 3) $$

    -   Calculons le membre de gauche de l'identité :

        $$ \|u+v\|^2 = 3^2 + (-1)^2 + 3^2 = 9 + 1 + 9 = 19 $$

        $$ \|u-v\|^2 = (-1)^2 + (-3)^2 + 3^2 = 1 + 9 + 9 = 19 $$

        $$ \|u+v\|^2 + \|u-v\|^2 = 19 + 19 = 38 $$

    -   Calculons le membre de droite de l'identité :

        $$ \|u\|^2 = (\sqrt{14})^2 = 14 $$

        $$ \|v\|^2 = (\sqrt{5})^2 = 5 $$

        $$ 2(\|u\|^2 + \|v\|^2) = 2(14 + 5) = 2(19) = 38 $$

    -   Comparaison :

        Les deux membres sont égaux à 38. L'identité du parallélogramme est vérifiée.

**Réponse:**

1. Inégalité de Cauchy-Schwarz: $|\langle u, v \rangle| = 0$ et $\|u\| \|v\| = \sqrt{70}$. L'inégalité $0 \le \sqrt{70}$ est vérifiée.
2. Identité du parallélogramme: $\|u+v\|^2 + \|u-v\|^2 = 38$ et $2(\|u\|^2 + \|v\|^2) = 38$. L'identité est vérifiée.

</details>

## Exercice 4: Question conceptuelle

**Problème:**

Dans l'espace des polynômes $\mathbb{R}_2[X]$ muni du produit scalaire $\langle P, Q \rangle = \int_{-1}^{1} P(t)Q(t) dt$, les polynômes $P(t) = 1$ et $Q(t) = t$ sont orthogonaux.

Le théorème de Pythagore s'applique-t-il à ces deux polynômes ? Vérifiez-le en calculant $\|P+Q\|^2$ et $\|P\|^2 + \|Q\|^2$.

<details>

<summary>Solution</summary>

**Méthode:**

Le théorème de Pythagore stipule que si $P \perp Q$, alors $\|P+Q\|^2 = \|P\|^2 + \|Q\|^2$. Nous allons d'abord confirmer que les polynômes sont orthogonaux, puis calculer chaque membre de l'équation de Pythagore pour vérifier si l'égalité est respectée.

**Étapes:**

1.  **Vérifier l'orthogonalité de P et Q :**

    $$ \langle P, Q \rangle = \int_{-1}^{1} (1)(t) dt = \int_{-1}^{1} t dt = \left[ \frac{t^2}{2} \right]_{-1}^{1} = \frac{1^2}{2} - \frac{(-1)^2}{2} = \frac{1}{2} - \frac{1}{2} = 0 $$

    Puisque $\langle P, Q \rangle = 0$, les polynômes $P$ et $Q$ sont bien orthogonaux. Le théorème de Pythagore doit donc s'appliquer.

2.  **Calculer $\|P\|^2$ et $\|Q\|^2$ :**

    $$ \|P\|^2 = \langle P, P \rangle = \int_{-1}^{1} (1)(1) dt = \int_{-1}^{1} 1 dt = [t]_{-1}^{1} = 1 - (-1) = 2 $$

    $$ \|Q\|^2 = \langle Q, Q \rangle = \int_{-1}^{1} (t)(t) dt = \int_{-1}^{1} t^2 dt = \left[ \frac{t^3}{3} \right]_{-1}^{1} = \frac{1^3}{3} - \frac{(-1)^3}{3} = \frac{1}{3} - (-\frac{1}{3}) = \frac{2}{3} $$

    Donc, $\|P\|^2 + \|Q\|^2 = 2 + \frac{2}{3} = \frac{8}{3}$.

3.  **Calculer $\|P+Q\|^2$ :**

    Le polynôme $P+Q$ est $(P+Q)(t) = 1+t$.

    $$ \|P+Q\|^2 = \langle P+Q, P+Q \rangle = \int_{-1}^{1} (1+t)^2 dt = \int_{-1}^{1} (1 + 2t + t^2) dt $$

    $$ = \left[ t + t^2 + \frac{t^3}{3} \right]_{-1}^{1} $$

    $$ = \left( 1 + 1^2 + \frac{1^3}{3} \right) - \left( -1 + (-1)^2 + \frac{(-1)^3}{3} \right) $$

    $$ = \left( 1 + 1 + \frac{1}{3} \right) - \left( -1 + 1 - \frac{1}{3} \right) = \left( 2 + \frac{1}{3} \right) - \left( -\frac{1}{3} \right) = \frac{7}{3} + \frac{1}{3} = \frac{8}{3} $$

4.  **Conclusion :**

    Nous avons trouvé que $\|P\|^2 + \|Q\|^2 = \frac{8}{3}$ et $\|P+Q\|^2 = \frac{8}{3}$. Les deux valeurs sont égales, ce qui confirme le théorème de Pythagore pour ces deux polynômes orthogonaux.

**Réponse:**

Oui, le théorème de Pythagore s'applique. On a bien $\|P+Q\|^2 = \|P\|^2 + \|Q\|^2 = \frac{8}{3}$.

</details>

## Exercice 5: Problème de calcul

**Problème:**

Soit $E = \mathbb{R}^3$ muni du produit scalaire usuel. Appliquez le procédé de Gram-Schmidt à la base $\mathcal{B} = (v_1, v_2, v_3)$ pour trouver une base orthonormée, où :

$v_1 = (1, 0, 1)$, $v_2 = (1, 1, 1)$, $v_3 = (0, 1, 2)$.

<details>

<summary>Solution</summary>

**Méthode:**

Nous suivons l'algorithme de Gram-Schmidt étape par étape. Pour chaque $k$, nous construisons un vecteur $u_k$ orthogonal aux précédents, puis nous le normalisons pour obtenir $e_k$.

**Étapes:**

1.  **Étape 1 : Construire $e_1$ à partir de $v_1$**
    -   On pose $u_1 = v_1 = (1, 0, 1)$.
    -   On calcule sa norme : $\|u_1\| = \sqrt{1^2 + 0^2 + 1^2} = \sqrt{2}$.
    -   On normalise : $e_1 = \frac{u_1}{\|u_1\|} = \frac{1}{\sqrt{2}}(1, 0, 1)$.

2.  **Étape 2 : Construire $e_2$ à partir de $v_2$**
    -   On calcule la projection de $v_2$ sur $e_1$ :

        $$ \langle v_2, e_1 \rangle = \left\langle (1, 1, 1), \frac{1}{\sqrt{2}}(1, 0, 1) \right\rangle = \frac{1}{\sqrt{2}}(1\cdot1 + 1\cdot0 + 1\cdot1) = \frac{2}{\sqrt{2}} = \sqrt{2} $$

    -   On calcule le vecteur $u_2$ orthogonal à $e_1$ :

        $$ u_2 = v_2 - \langle v_2, e_1 \rangle e_1 = (1, 1, 1) - \sqrt{2} \left( \frac{1}{\sqrt{2}}(1, 0, 1) \right) $$

        $$ u_2 = (1, 1, 1) - (1, 0, 1) = (0, 1, 0) $$

    -   On calcule sa norme : $\|u_2\| = \sqrt{0^2 + 1^2 + 0^2} = 1$.
    -   On normalise : $e_2 = \frac{u_2}{\|u_2\|} = (0, 1, 0)$.

3.  **Étape 3 : Construire $e_3$ à partir de $v_3$**
    -   On calcule les projections de $v_3$ sur $e_1$ et $e_2$ :

        $$ \langle v_3, e_1 \rangle = \left\langle (0, 1, 2), \frac{1}{\sqrt{2}}(1, 0, 1) \right\rangle = \frac{1}{\sqrt{2}}(0\cdot1 + 1\cdot0 + 2\cdot1) = \frac{2}{\sqrt{2}} = \sqrt{2} $$

        $$ \langle v_3, e_2 \rangle = \langle (0, 1, 2), (0, 1, 0) \rangle = 0\cdot0 + 1\cdot1 + 2\cdot0 = 1 $$

    -   On calcule le vecteur $u_3$ orthogonal à $e_1$ et $e_2$ :

        $$ u_3 = v_3 - \langle v_3, e_1 \rangle e_1 - \langle v_3, e_2 \rangle e_2 $$

        $$ u_3 = (0, 1, 2) - \sqrt{2} \left( \frac{1}{\sqrt{2}}(1, 0, 1) \right) - 1 \left( (0, 1, 0) \right) $$

        $$ u_3 = (0, 1, 2) - (1, 0, 1) - (0, 1, 0) = (-1, 0, 1) $$

    -   On calcule sa norme : $\|u_3\| = \sqrt{(-1)^2 + 0^2 + 1^2} = \sqrt{2}$.
    -   On normalise : $e_3 = \frac{u_3}{\|u_3\|} = \frac{1}{\sqrt{2}}(-1, 0, 1)$.

4.  **Conclusion :** La base orthonormée est $(e_1, e_2, e_3)$.

**Réponse:**

La base orthonormée obtenue est :

$$ e_1 = \left(\frac{1}{\sqrt{2}}, 0, \frac{1}{\sqrt{2}}\right), \quad e_2 = (0, 1, 0), \quad e_3 = \left(-\frac{1}{\sqrt{2}}, 0, \frac{1}{\sqrt{2}}\right) $$

</details>

## Exercice 6: Problème d'application

**Problème:**

Soit la base orthonormée $\mathcal{B}' = (e_1, e_2, e_3)$ de $\mathbb{R}^3$ de l'exercice précédent :

$e_1 = (\frac{1}{\sqrt{2}}, 0, \frac{1}{\sqrt{2}})$, $e_2 = (0, 1, 0)$, $e_3 = (-\frac{1}{\sqrt{2}}, 0, \frac{1}{\sqrt{2}})$.

Soit le vecteur $x = (2, 3, 4)$.

1.  Calculez les coordonnées de $x$ dans la base $\mathcal{B}'$.
2.  Vérifiez l'identité de Parseval pour le vecteur $x$.

<details>

<summary>Solution</summary>

**Méthode:**

1.  Pour une base orthonormée, la $i$-ème coordonnée d'un vecteur $x$ est donnée par le produit scalaire $\langle x, e_i \rangle$.
2.  L'identité de Parseval stipule que le carré de la norme d'un vecteur est égal à la somme des carrés de ses coordonnées dans une base orthonormée. Nous vérifierons que $\|x\|^2 = c_1^2 + c_2^2 + c_3^2$.

**Étapes:**

1.  **Calcul des coordonnées $(c_1, c_2, c_3)$ de $x$ :**
    -   $c_1 = \langle x, e_1 \rangle = \left\langle (2, 3, 4), \left(\frac{1}{\sqrt{2}}, 0, \frac{1}{\sqrt{2}}\right) \right\rangle = 2\cdot\frac{1}{\sqrt{2}} + 3\cdot0 + 4\cdot\frac{1}{\sqrt{2}} = \frac{6}{\sqrt{2}} = 3\sqrt{2}$.
    -   $c_2 = \langle x, e_2 \rangle = \langle (2, 3, 4), (0, 1, 0) \rangle = 2\cdot0 + 3\cdot1 + 4\cdot0 = 3$.
    -   $c_3 = \langle x, e_3 \rangle = \left\langle (2, 3, 4), \left(-\frac{1}{\sqrt{2}}, 0, \frac{1}{\sqrt{2}}\right) \right\rangle = 2\cdot(-\frac{1}{\sqrt{2}}) + 3\cdot0 + 4\cdot\frac{1}{\sqrt{2}} = \frac{2}{\sqrt{2}} = \sqrt{2}$.

    Les coordonnées de $x$ dans la base $\mathcal{B}'$ sont $(3\sqrt{2}, 3, \sqrt{2})$.

2.  **Vérification de l'identité de Parseval :**
    -   Calcul de $\|x\|^2$ directement :

        $$ \|x\|^2 = 2^2 + 3^2 + 4^2 = 4 + 9 + 16 = 29 $$

    -   Calcul de la somme des carrés des coordonnées :

        $$ c_1^2 + c_2^2 + c_3^2 = (3\sqrt{2})^2 + 3^2 + (\sqrt{2})^2 $$

        $$ = (9 \cdot 2) + 9 + 2 = 18 + 9 + 2 = 29 $$

    -   Les deux résultats sont égaux. L'identité de Parseval est vérifiée.

**Réponse:**

1. Les coordonnées de $x$ dans la base $\mathcal{B}'$ sont $(3\sqrt{2}, 3, \sqrt{2})$.
2. $\|x\|^2 = 29$ et la somme des carrés des coordonnées est $18+9+2=29$. L'identité est vérifiée.

</details>

## Exercice 7: Problème de calcul

**Problème:**

Dans $\mathbb{R}^3$ muni du produit scalaire usuel, soit $F$ le plan vectoriel engendré par les vecteurs $v_1 = (1, 1, 0)$ et $v_2 = (0, 1, 1)$. Ces vecteurs ne sont pas orthogonaux.

Calculez la projection orthogonale du vecteur $x = (2, 1, 3)$ sur le plan $F$.

<details>

<summary>Solution</summary>

**Méthode:**

Pour utiliser la formule de projection $P_F(x) = \sum \langle x, e_i \rangle e_i$, nous devons d'abord trouver une base orthonormée $(e_1, e_2)$ du plan $F$. Nous utilisons le procédé de Gram-Schmidt sur la base $(v_1, v_2)$.

**Étapes:**

1.  **Construire une base orthonormée de F :**
    -   **Étape 1 (pour $e_1$) :**

        $u_1 = v_1 = (1, 1, 0)$.

        $\|u_1\| = \sqrt{1^2+1^2+0^2} = \sqrt{2}$.

        $e_1 = \frac{1}{\sqrt{2}}(1, 1, 0)$.

    -   **Étape 2 (pour $e_2$) :**

        $\langle v_2, e_1 \rangle = \left\langle (0, 1, 1), \frac{1}{\sqrt{2}}(1, 1, 0) \right\rangle = \frac{1}{\sqrt{2}}(0+1+0) = \frac{1}{\sqrt{2}}$.

        $u_2 = v_2 - \langle v_2, e_1 \rangle e_1 = (0, 1, 1) - \frac{1}{\sqrt{2}}\left(\frac{1}{\sqrt{2}}(1, 1, 0)\right) = (0, 1, 1) - \frac{1}{2}(1, 1, 0) = (-\frac{1}{2}, \frac{1}{2}, 1)$.

        $\|u_2\| = \sqrt{(-\frac{1}{2})^2 + (\frac{1}{2})^2 + 1^2} = \sqrt{\frac{1}{4} + \frac{1}{4} + 1} = \sqrt{\frac{3}{2}}$.

        $e_2 = \frac{1}{\sqrt{3/2}}(-\frac{1}{2}, \frac{1}{2}, 1) = \sqrt{\frac{2}{3}}(-\frac{1}{2}, \frac{1}{2}, 1) = \frac{1}{\sqrt{6}}(-1, 1, 2)$.

2.  **Calculer la projection de $x$ sur $F$ :**

    La projection est $P_F(x) = \langle x, e_1 \rangle e_1 + \langle x, e_2 \rangle e_2$.

    -   Calcul des produits scalaires :

        $$ \langle x, e_1 \rangle = \left\langle (2, 1, 3), \frac{1}{\sqrt{2}}(1, 1, 0) \right\rangle = \frac{1}{\sqrt{2}}(2+1+0) = \frac{3}{\sqrt{2}} $$

        $$ \langle x, e_2 \rangle = \left\langle (2, 1, 3), \frac{1}{\sqrt{6}}(-1, 1, 2) \right\rangle = \frac{1}{\sqrt{6}}(-2+1+6) = \frac{5}{\sqrt{6}} $$

    -   Calcul de $P_F(x)$ :

        $$ P_F(x) = \frac{3}{\sqrt{2}} \left( \frac{1}{\sqrt{2}}(1, 1, 0) \right) + \frac{5}{\sqrt{6}} \left( \frac{1}{\sqrt{6}}(-1, 1, 2) \right) $$

        $$ P_F(x) = \frac{3}{2}(1, 1, 0) + \frac{5}{6}(-1, 1, 2) $$

        $$ P_F(x) = \left(\frac{3}{2}, \frac{3}{2}, 0\right) + \left(-\frac{5}{6}, \frac{5}{6}, \frac{10}{6}\right) $$

        $$ P_F(x) = \left(\frac{9-5}{6}, \frac{9+5}{6}, \frac{5}{3}\right) = \left(\frac{4}{6}, \frac{14}{6}, \frac{5}{3}\right) = \left(\frac{2}{3}, \frac{7}{3}, \frac{5}{3}\right) $$

**Réponse:**

La projection orthogonale du vecteur $x$ sur le plan $F$ est :

$$ P_F(x) = \left(\frac{2}{3}, \frac{7}{3}, \frac{5}{3}\right) $$

</details>

## Exercice 8: Problème d'application

**Problème:**

Calculez la distance du point $M(3, 2, 1)$ à la droite $D$ passant par l'origine et dirigée par le vecteur $v = (1, 1, 1)$ dans $\mathbb{R}^3$.

<details>

<summary>Solution</summary>

**Méthode:**

La distance d'un point $M$ (associé au vecteur $x$) à une droite $D$ (un sous-espace $F$) est donnée par $d(x, F) = \|x - P_F(x)\|$, où $P_F(x)$ est la projection orthogonale de $x$ sur $F$.

**Étapes:**

1.  **Identifier les objets :**
    -   Le vecteur associé au point M est $x = (3, 2, 1)$.
    -   Le sous-espace est la droite $F = D = \text{Vect}(v)$ avec $v = (1, 1, 1)$.

2.  **Construire une base orthonormée de F :**

    $F$ est une droite, donc une base est constituée d'un seul vecteur. Il suffit de normaliser $v$.

    $\|v\| = \sqrt{1^2+1^2+1^2} = \sqrt{3}$.

    La base orthonormée est $(e_1)$ avec $e_1 = \frac{v}{\|v\|} = \frac{1}{\sqrt{3}}(1, 1, 1)$.

3.  **Calculer la projection orthogonale $P_F(x)$ :**

    $$ P_F(x) = \langle x, e_1 \rangle e_1 $$

    $$ \langle x, e_1 \rangle = \left\langle (3, 2, 1), \frac{1}{\sqrt{3}}(1, 1, 1) \right\rangle = \frac{1}{\sqrt{3}}(3+2+1) = \frac{6}{\sqrt{3}} $$

    $$ P_F(x) = \frac{6}{\sqrt{3}} \left( \frac{1}{\sqrt{3}}(1, 1, 1) \right) = \frac{6}{3}(1, 1, 1) = (2, 2, 2) $$

4.  **Calculer le vecteur $x - P_F(x)$ :**

    $$ x - P_F(x) = (3, 2, 1) - (2, 2, 2) = (1, 0, -1) $$

5.  **Calculer la distance :**

    La distance est la norme de ce vecteur.

    $$ d(x, F) = \|x - P_F(x)\| = \|(1, 0, -1)\| = \sqrt{1^2 + 0^2 + (-1)^2} = \sqrt{2} $$

**Réponse:**

La distance du point $M$ à la droite $D$ est $\sqrt{2}$.

</details>

## Exercice 9: Problème de calcul

**Problème:**

Soit $f$ l'endomorphisme de $\mathbb{R}^3$ (muni du produit scalaire usuel) dont la matrice dans la base canonique (orthonormée) est :

$$ A = \begin{pmatrix} 1 & 0 & 2 \\ -1 & 3 & 0 \\ 0 & 1 & 1 \end{pmatrix} $$

1.  Déterminez la matrice de l'adjoint $f^*$ dans la base canonique.
2.  Vérifiez la relation $\langle f(x), y \rangle = \langle x, f^*(y) \rangle$ pour les vecteurs $x=(1,0,0)$ et $y=(0,1,0)$.

<details>

<summary>Solution</summary>

**Méthode:**

1.  Dans un espace euclidien, la matrice de l'adjoint $f^*$ dans une base orthonormée est la transposée de la matrice de $f$.
2.  On calcule $f(x)$ et $f^*(y)$, puis les deux produits scalaires pour vérifier s'ils sont égaux.

**Étapes:**

1.  **Matrice de l'adjoint $f^*$ :**

    La base canonique de $\mathbb{R}^3$ est orthonormée. Donc, la matrice de $f^*$ est la transposée de $A$.

    $$ A^* = {}^tA = \begin{pmatrix} 1 & -1 & 0 \\ 0 & 3 & 1 \\ 2 & 0 & 1 \end{pmatrix} $$

2.  **Vérification de la relation :**
    -   Calcul de $f(x)$ :

        $$ f(x) = A \begin{pmatrix} 1 \\ 0 \\ 0 \end{pmatrix} = \begin{pmatrix} 1 \\ -1 \\ 0 \end{pmatrix} $$

        Donc $f(x) = (1, -1, 0)$.

    -   Calcul de $\langle f(x), y \rangle$ :

        $$ \langle f(x), y \rangle = \langle (1, -1, 0), (0, 1, 0) \rangle = 1\cdot0 + (-1)\cdot1 + 0\cdot0 = -1 $$

    -   Calcul de $f^*(y)$ :

        $$ f^*(y) = A^* \begin{pmatrix} 0 \\ 1 \\ 0 \end{pmatrix} = \begin{pmatrix} -1 \\ 3 \\ 0 \end{pmatrix} $$

        Donc $f^*(y) = (-1, 3, 0)$.

    -   Calcul de $\langle x, f^*(y) \rangle$ :

        $$ \langle x, f^*(y) \rangle = \langle (1, 0, 0), (-1, 3, 0) \rangle = 1\cdot(-1) + 0\cdot3 + 0\cdot0 = -1 $$

    -   Les deux résultats sont égaux à -1. La relation est bien vérifiée.

**Réponse:**

1. La matrice de $f^*$ dans la base canonique est $A^* = \begin{pmatrix} 1 & -1 & 0 \\ 0 & 3 & 1 \\ 2 & 0 & 1 \end{pmatrix}$.
2. On trouve $\langle f(x), y \rangle = -1$ et $\langle x, f^*(y) \rangle = -1$, ce qui vérifie la relation.

</details>

## Exercice 10: Question conceptuelle

**Problème:**

Soit $F$ un sous-espace vectoriel d'un espace euclidien $E$ et $P_F$ le projecteur orthogonal sur $F$. Montrez que $P_F$ est un endomorphisme auto-adjoint, c'est-à-dire que $P_F^* = P_F$.

<details>

<summary>Solution</summary>

**Méthode:**

Pour montrer que $P_F^* = P_F$, nous devons prouver que $\langle P_F(x), y \rangle = \langle x, P_F(y) \rangle$ pour tous les vecteurs $x, y \in E$. Nous utilisons la décomposition unique $v = P_F(v) + P_{F^\perp}(v)$ pour les vecteurs $x$ et $y$.

**Étapes:**

1.  **Décomposition des vecteurs :**

    Tout vecteur $v \in E$ se décompose de manière unique en $v = v_F + v_{F^\perp}$ où $v_F = P_F(v) \in F$ et $v_{F^\perp} \in F^\perp$.

    Appliquons ceci à $x$ et $y$ :

    $$ x = x_F + x_{F^\perp} \quad \text{avec } x_F = P_F(x) $$

    $$ y = y_F + y_{F^\perp} \quad \text{avec } y_F = P_F(y) $$

2.  **Calcul du premier membre : $\langle P_F(x), y \rangle$**

    $$ \langle P_F(x), y \rangle = \langle x_F, y_F + y_{F^\perp} \rangle $$

    Par linéarité du produit scalaire :

    $$ \langle P_F(x), y \rangle = \langle x_F, y_F \rangle + \langle x_F, y_{F^\perp} \rangle $$

    Par définition de $F^\perp$, tout vecteur de $F$ (comme $x_F$) est orthogonal à tout vecteur de $F^\perp$ (comme $y_{F^\perp}$). Donc, $\langle x_F, y_{F^\perp} \rangle = 0$.

    Il reste :

    $$ \langle P_F(x), y \rangle = \langle x_F, y_F \rangle $$

3.  **Calcul du second membre : $\langle x, P_F(y) \rangle$**

    $$ \langle x, P_F(y) \rangle = \langle x_F + x_{F^\perp}, y_F \rangle $$

    Par linéarité du produit scalaire :

    $$ \langle x, P_F(y) \rangle = \langle x_F, y_F \rangle + \langle x_{F^\perp}, y_F \rangle $$

    De même, par définition de $F^\perp$, $\langle x_{F^\perp}, y_F \rangle = 0$.

    Il reste :

    $$ \langle x, P_F(y) \rangle = \langle x_F, y_F \rangle $$

4.  **Conclusion :**

    Nous avons montré que $\langle P_F(x), y \rangle = \langle x_F, y_F \rangle$ et $\langle x, P_F(y) \rangle = \langle x_F, y_F \rangle$.

    Par conséquent, $\langle P_F(x), y \rangle = \langle x, P_F(y) \rangle$ pour tous $x, y \in E$.

    Ceci est la définition de l'endomorphisme auto-adjoint, donc $P_F^* = P_F$.

**Réponse:**

En décomposant $x$ et $y$ sur $F \oplus F^\perp$, on montre que les deux termes $\langle P_F(x), y \rangle$ et $\langle x, P_F(y) \rangle$ sont égaux à $\langle P_F(x), P_F(y) \rangle$, ce qui prouve que $P_F$ est auto-adjoint.

</details>

## Exercice 11: Problème de calcul

**Problème:**

Dans l'espace euclidien $\mathbb{R}^3$ muni du produit scalaire usuel, on considère la forme linéaire $l: \mathbb{R}^3 \to \mathbb{R}$ définie par $l(x_1, x_2, x_3) = 3x_1 - 5x_2 + 2x_3$.

Trouvez l'unique vecteur $y_l \in \mathbb{R}^3$ qui représente cette forme linéaire selon le théorème de Riesz, c'est-à-dire tel que $l(x) = \langle x, y_l \rangle$ pour tout $x \in \mathbb{R}^3$.

<details>

<summary>Solution</summary>

**Méthode:**

Le théorème de représentation de Riesz stipule qu'il existe un unique vecteur $y_l = (a, b, c)$ tel que $l(x) = \langle x, y_l \rangle$. Pour le produit scalaire usuel, cette relation s'écrit $l(x_1, x_2, x_3) = x_1a + x_2b + x_3c$. On peut trouver les composantes de $y_l$ par identification directe.

**Étapes:**

1.  **Écrire la relation de Riesz :**

    Soit $x = (x_1, x_2, x_3)$ et $y_l = (a, b, c)$. La relation est :

    $$ l(x) = \langle x, y_l \rangle $$

    $$ 3x_1 - 5x_2 + 2x_3 = \langle (x_1, x_2, x_3), (a, b, c) \rangle $$

2.  **Développer le produit scalaire usuel :**

    $$ \langle (x_1, x_2, x_3), (a, b, c) \rangle = x_1a + x_2b + x_3c $$

3.  **Identifier les coefficients :**

    On a l'égalité suivante, qui doit être vraie pour tout $x \in \mathbb{R}^3$ :

    $$ 3x_1 - 5x_2 + 2x_3 = ax_1 + bx_2 + cx_3 $$

    Par identification des coefficients de $x_1, x_2, x_3$, on obtient :

    -   $a = 3$
    -   $b = -5$
    -   $c = 2$

4.  **Conclusion :**

    Le vecteur représentant la forme linéaire $l$ est $y_l = (3, -5, 2)$.

**Réponse:**

Le vecteur représentant la forme linéaire $l$ est $y_l = (3, -5, 2)$.

</details>

## Exercice 12: Problème d'application

**Problème:**

Soit $E=\mathbb{R}_1[X]$ l'espace des polynômes de degré au plus 1, muni du produit scalaire $\langle P, Q \rangle = \int_0^1 P(t)Q(t)dt$.

Soit la forme linéaire $l: E \to \mathbb{R}$ définie par $l(P) = P(0) + P'(0)$.

Trouvez le polynôme $Q_l \in E$ qui représente $l$ selon le théorème de Riesz.

<details>

<summary>Solution</summary>

**Méthode:**

Nous cherchons un polynôme $Q_l(t) = at+b$ tel que $l(P) = \langle P, Q_l \rangle$ pour tout $P \in E$. Une méthode consiste à utiliser une base orthonormée de $E$ et la formule de construction du vecteur de Riesz.

**Étapes:**

1.  **Construire une base orthonormée de $\mathbb{R}_1[X]$ :**

    Partons de la base canonique $(1, t)$. Appliquons Gram-Schmidt.

    -   $v_1 = 1$. $\|v_1\|^2 = \int_0^1 1^2 dt = 1$. Donc $e_1(t) = 1$.
    -   $v_2 = t$. $\langle v_2, e_1 \rangle = \int_0^1 t \cdot 1 dt = [\frac{t^2}{2}]_0^1 = \frac{1}{2}$.
    -   $u_2 = v_2 - \langle v_2, e_1 \rangle e_1 = t - \frac{1}{2}$.
    -   $\|u_2\|^2 = \int_0^1 (t - \frac{1}{2})^2 dt = [\frac{(t-1/2)^3}{3}]_0^1 = \frac{(1/2)^3}{3} - \frac{(-1/2)^3}{3} = \frac{1/24 - (-1/24)}{1} = \frac{2}{24} = \frac{1}{12}$.
    -   $\|u_2\| = \frac{1}{\sqrt{12}} = \frac{1}{2\sqrt{3}}$.
    -   $e_2(t) = \frac{u_2}{\|u_2\|} = 2\sqrt{3}(t - \frac{1}{2})$.

    La base orthonormée est $\mathcal{B} = (e_1, e_2) = (1, 2\sqrt{3}(t-1/2))$.

2.  **Appliquer la formule de Riesz :**

    Le polynôme représentant $Q_l$ est donné par $Q_l = l(e_1)e_1 + l(e_2)e_2$.

    -   Calcul de $l(e_1)$ : $e_1(t) = 1$, donc $e_1'(t)=0$.

        $l(e_1) = e_1(0) + e_1'(0) = 1 + 0 = 1$.

    -   Calcul de $l(e_2)$ : $e_2(t) = 2\sqrt{3}t - \sqrt{3}$, donc $e_2'(t) = 2\sqrt{3}$.

        $l(e_2) = e_2(0) + e_2'(0) = (-\sqrt{3}) + (2\sqrt{3}) = \sqrt{3}$.

3.  **Construire le polynôme $Q_l$ :**

    $$ Q_l(t) = 1 \cdot e_1(t) + \sqrt{3} \cdot e_2(t) $$

    $$ Q_l(t) = 1 \cdot (1) + \sqrt{3} \cdot (2\sqrt{3}(t - \frac{1}{2})) $$

    $$ Q_l(t) = 1 + 6(t - \frac{1}{2}) = 1 + 6t - 3 = 6t - 2 $$

**Réponse:**

Le polynôme représentant la forme linéaire $l$ est $Q_l(t) = 6t - 2$.

</details>