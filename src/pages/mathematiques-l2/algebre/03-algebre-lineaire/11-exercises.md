---
id: 2967c390
type: exercises
order: 11
title: Rappels d’algèbre linéaire - exercices (A)
tags:
  - Algèbre linéaire
  - Espaces vectoriels
  - Déterminant
  - Endomorphismes
  - Diagonalisation
createdAt: '2025-11-27T07:58:43.842Z'
level: regular
course: Algèbre
courseId: 3b74b601
chapter: Rappels d’algèbre linéaire
chapterId: 7e9b2b30
---
# Exercices "Rappels d’algèbre linéaire" (A)

---

## Exercice 1 : Sous-espaces Vectoriels

**Problème :**

Dans l'espace vectoriel $V = \mathbb{R}^3$, on considère les deux ensembles suivants :

1. $E = \{(x, y, z) \in \mathbb{R}^3 \mid 2x - y + 3z = 0\}$
2. $F = \{(x, y, z) \in \mathbb{R}^3 \mid 2x - y + 3z = 1\}$

Déterminez si $E$ et $F$ sont des sous-espaces vectoriels de $\mathbb{R}^3$. Justifiez rigoureusement votre réponse.

<details>

<summary>Solution</summary>

**Méthode :** Pour qu'un sous-ensemble $W$ soit un sous-espace vectoriel, il doit contenir le vecteur nul $0_{\mathbb{R}^3}$ et être stable par combinaison linéaire (addition et multiplication par un scalaire).

**Étapes :**

1.  **Analyse de l'ensemble $E$ :**

    Vérifions si le vecteur nul $(0,0,0)$ appartient à $E$.

    On remplace dans l'équation : $2(0) - 0 + 3(0) = 0$.

    L'équation est satisfaite, donc $0_{\mathbb{R}^3} \in E$. $E$ n'est pas vide.

2.  **Stabilité de $E$ :**

    Soient $u = (x, y, z)$ et $v = (x', y', z')$ deux vecteurs de $E$ (donc $2x-y+3z=0$ et $2x'-y'+3z'=0$) et soit $\lambda \in \mathbb{R}$.

    Regardons le vecteur $w = u + \lambda v = (x+\lambda x', y+\lambda y', z+\lambda z')$.

    Vérifions si $w$ satisfait l'équation de $E$ :

    $$ 2(x+\lambda x') - (y+\lambda y') + 3(z+\lambda z') $$

    $$ = (2x - y + 3z) + \lambda(2x' - y' + 3z') $$

    $$ = 0 + \lambda(0) = 0 $$

    Donc $w \in E$. $E$ est stable par combinaison linéaire.

3.  **Conclusion pour $E$ :**

    $E$ est un sous-espace vectoriel de $\mathbb{R}^3$. (C'est un plan passant par l'origine).

4.  **Analyse de l'ensemble $F$ :**

    Vérifions si le vecteur nul $(0,0,0)$ appartient à $F$.

    On remplace dans l'équation : $2(0) - 0 + 3(0) = 0 \neq 1$.

    Le vecteur nul n'appartient pas à $F$.

**Réponse :**

$E$ est un sous-espace vectoriel de $\mathbb{R}^3$.

$F$ **n'est pas** un sous-espace vectoriel de $\mathbb{R}^3$ car il ne contient pas le vecteur nul.

</details>

---

## Exercice 2 : Familles Libres et Bases

**Problème :**

Dans l'espace vectoriel $\mathbb{R}_2[X]$ (polynômes de degré inférieur ou égal à 2), on considère la famille de polynômes $\mathcal{F} = \{P_1, P_2, P_3\}$ définie par :

$$ P_1(X) = 1, \quad P_2(X) = X - 1, \quad P_3(X) = (X - 1)^2 $$

1. Montrez que $\mathcal{F}$ est une base de $\mathbb{R}_2[X]$.
2. Trouvez les coordonnées du polynôme $Q(X) = 2X^2 - 3X + 5$ dans cette base.

<details>

<summary>Solution</summary>

**Méthode :** Pour montrer qu'une famille est une base dans un espace de dimension finie $n$, il suffit de montrer qu'elle est libre et qu'elle contient $n$ vecteurs. La dimension de $\mathbb{R}_2[X]$ est $3$ (base canonique $\{1, X, X^2\}$).

**Étapes :**

1.  **Vérification de la liberté :**

    Soient $\lambda_1, \lambda_2, \lambda_3 \in \mathbb{R}$ tels que :

    $$ \lambda_1 P_1 + \lambda_2 P_2 + \lambda_3 P_3 = 0_{\mathbb{R}_2[X]} $$

    En développant :

    $$ \lambda_1(1) + \lambda_2(X - 1) + \lambda_3(X^2 - 2X + 1) = 0 $$

    Regroupons les termes par puissance de $X$ :

    $$ \lambda_3 X^2 + (\lambda_2 - 2\lambda_3) X + (\lambda_1 - \lambda_2 + \lambda_3) = 0 $$

    Un polynôme est nul si et seulement si tous ses coefficients sont nuls. On obtient le système :

    $$

    \begin{cases}

    \lambda_3 = 0 \\

    \lambda_2 - 2\lambda_3 = 0 \\

    \lambda_1 - \lambda_2 + \lambda_3 = 0

    \end{cases}

    $$

2.  **Résolution du système :**

    De la première équation, $\lambda_3 = 0$.

    En reportant dans la deuxième : $\lambda_2 - 0 = 0 \implies \lambda_2 = 0$.

    En reportant dans la troisième : $\lambda_1 - 0 + 0 = 0 \implies \lambda_1 = 0$.

    La famille est libre.

3.  **Conclusion sur la base :**

    La famille $\mathcal{F}$ est libre et contient $3$ vecteurs. Comme $\dim(\mathbb{R}_2[X]) = 3$, $\mathcal{F}$ est une base.

4.  **Calcul des coordonnées de $Q$ :**

    On cherche $\alpha, \beta, \gamma$ tels que $Q = \alpha P_1 + \beta P_2 + \gamma P_3$.

    On peut utiliser la formule de Taylor en 1 pour ce cas spécifique, ou identifier les coefficients.

    $Q(X) = 2X^2 - 3X + 5$.

    Exprimons $X$ en fonction de $(X-1)$ : $X = (X-1) + 1$.

    $$ Q(X) = 2((X-1)+1)^2 - 3((X-1)+1) + 5 $$

    $$ Q(X) = 2((X-1)^2 + 2(X-1) + 1) - 3(X-1) - 3 + 5 $$

    $$ Q(X) = 2(X-1)^2 + 4(X-1) + 2 - 3(X-1) + 2 $$

    $$ Q(X) = 2\underbrace{(X-1)^2}_{P_3} + 1\underbrace{(X-1)}_{P_2} + 4\underbrace{(1)}_{P_1} $$

    Donc $Q = 4P_1 + 1P_2 + 2P_3$.

**Réponse :**

Les coordonnées de $Q$ dans la base $\mathcal{F}$ sont le vecteur colonne $\begin{pmatrix} 4 \\ 1 \\ 2 \end{pmatrix}$.

</details>

---

## Exercice 3 : Applications Linéaires et Matrices

**Problème :**

Soit $f : \mathbb{R}^3 \to \mathbb{R}^2$ l'application définie par :

$$ f(x, y, z) = (x + 2y - z, \, 2x + y) $$

Soient $\mathfrak{B} = \{e_1, e_2, e_3\}$ la base canonique de $\mathbb{R}^3$ et $\mathcal{C} = \{u_1, u_2\}$ la base canonique de $\mathbb{R}^2$.

1. Démontrez que $f$ est une application linéaire.
2. Déterminez la matrice $A$ de $f$ relative aux bases canoniques.
3. Calculez l'image du vecteur $v = (1, -1, 2)$ en utilisant le calcul matriciel.

<details>

<summary>Solution</summary>

**Méthode :** Calculer les images des vecteurs de base pour former les colonnes de la matrice.

**Étapes :**

1.  **Linéarité :**

    Soient $u=(x,y,z), v=(x',y',z') \in \mathbb{R}^3$ et $\lambda \in \mathbb{R}$.

    $f(u + \lambda v) = f(x+\lambda x', y+\lambda y', z+\lambda z')$

    $= ((x+\lambda x') + 2(y+\lambda y') - (z+\lambda z'), \, 2(x+\lambda x') + (y+\lambda y'))$

    $= ((x+2y-z) + \lambda(x'+2y'-z'), \, (2x+y) + \lambda(2x'+y'))$

    $= f(u) + \lambda f(v)$.

    $f$ est bien linéaire.

2.  **Construction de la matrice $A$ :**

    On calcule les images des vecteurs de la base $\mathfrak{B}$ :

    *   $f(e_1) = f(1, 0, 0) = (1 + 0 - 0, \, 2 + 0) = (1, 2)$
    *   $f(e_2) = f(0, 1, 0) = (0 + 2 - 0, \, 0 + 1) = (2, 1)$
    *   $f(e_3) = f(0, 0, 1) = (0 + 0 - 1, \, 0 + 0) = (-1, 0)$

    Les coordonnées de ces vecteurs forment les colonnes de $A$.

    $$ A = \begin{pmatrix} 1 & 2 & -1 \\ 2 & 1 & 0 \end{pmatrix} $$

3.  **Calcul de l'image de $v$ :**

    Le vecteur des coordonnées de $v$ est $X = \begin{pmatrix} 1 \\ -1 \\ 2 \end{pmatrix}$.

    On calcule $Y = AX$ :

    $$ Y = \begin{pmatrix} 1 & 2 & -1 \\ 2 & 1 & 0 \end{pmatrix} \begin{pmatrix} 1 \\ -1 \\ 2 \end{pmatrix} $$

    $$ Y = \begin{pmatrix} 1(1) + 2(-1) + (-1)(2) \\ 2(1) + 1(-1) + 0(2) \end{pmatrix} = \begin{pmatrix} 1 - 2 - 2 \\ 2 - 1 + 0 \end{pmatrix} = \begin{pmatrix} -3 \\ 1 \end{pmatrix} $$

**Réponse :**

La matrice est $A = \begin{pmatrix} 1 & 2 & -1 \\ 2 & 1 & 0 \end{pmatrix}$ et $f(1, -1, 2) = (-3, 1)$.

</details>

---

## Exercice 4 : Changement de Base

**Problème :**

Soit $V = \mathbb{R}^2$. Soit $\mathfrak{B} = \{e_1, e_2\}$ la base canonique. On considère une nouvelle famille $\mathfrak{B}' = \{v_1, v_2\}$ définie par :

$$ v_1 = (2, 1) \quad \text{et} \quad v_2 = (3, 2) $$

1. Montrez que $\mathfrak{B}'$ est une base de $\mathbb{R}^2$.
2. Écrivez la matrice de passage $P$ de $\mathfrak{B}$ à $\mathfrak{B}'$.
3. Calculez la matrice inverse $P^{-1}$.
4. Soit le vecteur $u$ dont les coordonnées dans la base $\mathfrak{B}$ sont $(5, 3)$. Quelles sont ses coordonnées dans la base $\mathfrak{B}'$ ?

<details>

<summary>Solution</summary>

**Méthode :** La matrice de passage $P$ contient les vecteurs de la nouvelle base exprimés dans l'ancienne. Les nouvelles coordonnées $X'$ sont obtenues par $X' = P^{-1} X$.

**Étapes :**

1.  **Matrice de passage $P$ :**

    Les colonnes de $P$ sont les coordonnées de $v_1$ et $v_2$ dans $\mathfrak{B}$.

    $$ P = \begin{pmatrix} 2 & 3 \\ 1 & 2 \end{pmatrix} $$

    Le déterminant est $\det(P) = 2(2) - 3(1) = 4 - 3 = 1 \neq 0$.

    Puisque le déterminant est non nul, la famille est libre et c'est une base (car cardinal = dim = 2).

2.  **Calcul de $P^{-1}$ :**

    Pour une matrice $2 \times 2$ de la forme $\begin{pmatrix} a & b \\ c & d \end{pmatrix}$, l'inverse est $\frac{1}{\det} \begin{pmatrix} d & -b \\ -c & a \end{pmatrix}$.

    Ici $\det(P) = 1$.

    $$ P^{-1} = \begin{pmatrix} 2 & -3 \\ -1 & 2 \end{pmatrix} $$

3.  **Calcul des nouvelles coordonnées :**

    Soit $X = \begin{pmatrix} 5 \\ 3 \end{pmatrix}$ les coordonnées dans $\mathfrak{B}$.

    Soit $X'$ les coordonnées dans $\mathfrak{B}'$.

    On sait que $X = PX'$, donc $X' = P^{-1} X$.

    $$ X' = \begin{pmatrix} 2 & -3 \\ -1 & 2 \end{pmatrix} \begin{pmatrix} 5 \\ 3 \end{pmatrix} $$

    $$ X' = \begin{pmatrix} 2(5) - 3(3) \\ -1(5) + 2(3) \end{pmatrix} = \begin{pmatrix} 10 - 9 \\ -5 + 6 \end{pmatrix} = \begin{pmatrix} 1 \\ 1 \end{pmatrix} $$

**Réponse :**

$P = \begin{pmatrix} 2 & 3 \\ 1 & 2 \end{pmatrix}$, $P^{-1} = \begin{pmatrix} 2 & -3 \\ -1 & 2 \end{pmatrix}$, et les coordonnées de $u$ dans la base $\mathfrak{B}'$ sont $(1, 1)$.

*(Vérification : $1 \cdot v_1 + 1 \cdot v_2 = (2,1) + (3,2) = (5,3)$).*

</details>

---

## Exercice 5 : Noyau, Image et Théorème du Rang

**Problème :**

Soit $f$ un endomorphisme de $\mathbb{R}^3$ dont la matrice dans la base canonique est :

$$ A = \begin{pmatrix} 1 & 1 & 1 \\ 2 & 0 & 4 \\ 1 & -1 & 3 \end{pmatrix} $$

1. Déterminez une base du noyau $\text{Ker}(f)$. Quelle est sa dimension ?
2. Déterminez une base de l'image $\text{Im}(f)$. Quelle est sa dimension ?
3. Vérifiez que le théorème du rang est satisfait.

<details>

<summary>Solution</summary>

**Méthode :** Pour le noyau, on résout le système homogène $AX = 0$. Pour l'image, on cherche les colonnes linéairement indépendantes de $A$.

**Étapes :**

1.  **Détermination de $\text{Ker}(f)$ :**

    On résout $A \begin{pmatrix} x \\ y \\ z \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 0 \end{pmatrix}$.

    $$

    \begin{cases}

    x + y + z = 0 \quad (L_1) \\

    2x + 0y + 4z = 0 \quad (L_2) \\

    x - y + 3z = 0 \quad (L_3)

    \end{cases}

    $$

    De $(L_2)$, on a $2x = -4z \implies x = -2z$.

    Substituons dans $(L_1)$ : $(-2z) + y + z = 0 \implies y - z = 0 \implies y = z$.

    Vérifions dans $(L_3)$ : $(-2z) - (z) + 3z = -3z + 3z = 0$. (Cohérent).

    Les solutions sont de la forme $(x, y, z) = (-2z, z, z) = z(-2, 1, 1)$.

    $\text{Ker}(f)$ est la droite engendrée par le vecteur $u = (-2, 1, 1)$.

    $\dim(\text{Ker}(f)) = 1$.

2.  **Détermination de $\text{Im}(f)$ :**

    $\text{Im}(f)$ est engendrée par les vecteurs colonnes de $A$ : $C_1=(1,2,1)$, $C_2=(1,0,-1)$, $C_3=(1,4,3)$.

    On sait par le théorème du rang (ou par calcul direct) que la dimension de l'image (le rang) doit être $3 - \dim(\text{Ker}(f)) = 3 - 1 = 2$.

    Cherchons deux colonnes non colinéaires. $C_1$ et $C_2$ ne sont manifestement pas proportionnelles. Elles forment une base de l'image.

    (On peut vérifier que $C_3 = -C_1 + 2C_2$, donc $C_3$ est bien redondante).

    Base de $\text{Im}(f)$ : $\{(1, 2, 1), (1, 0, -1)\}$.

    $\dim(\text{Im}(f)) = \text{rang}(f) = 2$.

3.  **Vérification du théorème du rang :**

    $$ \dim(\mathbb{R}^3) = \dim(\text{Ker}(f)) + \dim(\text{Im}(f)) $$

    $$ 3 = 1 + 2 $$

    L'égalité est vérifiée.

**Réponse :**

Base du noyau : $\{(-2, 1, 1)\}$. Base de l'image : $\{(1, 2, 1), (1, 0, -1)\}$. Le rang est 2.

</details>

---

## Exercice 6 : Espace Quotient

**Problème :**

Soit $V = \mathbb{R}^4$. Soit $W$ le sous-espace vectoriel défini par le système d'équations :

$$ W = \{(x, y, z, t) \in \mathbb{R}^4 \mid x = y \quad \text{et} \quad z = t\} $$

1. Déterminez la dimension de $W$.
2. Quelle est la dimension de l'espace quotient $V/W$ ?
3. Donnez une base de $V/W$ (sous forme de classes de vecteurs).

<details>

<summary>Solution</summary>

**Méthode :** Utiliser la formule $\dim(V/W) = \dim(V) - \dim(W)$. Pour la base du quotient, prendre des vecteurs qui complètent une base de $W$ en une base de $V$ et considérer leurs classes.

**Étapes :**

1.  **Dimension de $W$ :**

    Les vecteurs de $W$ sont de la forme $(y, y, t, t) = y(1, 1, 0, 0) + t(0, 0, 1, 1)$.

    La famille $\{w_1=(1, 1, 0, 0), w_2=(0, 0, 1, 1)\}$ est libre et génératrice de $W$.

    Donc $\dim(W) = 2$.

2.  **Dimension du quotient :**

    $\dim(V/W) = \dim(V) - \dim(W) = 4 - 2 = 2$.

3.  **Base de $V/W$ :**

    On cherche deux vecteurs $e_a, e_b$ dans $\mathbb{R}^4$ tels que $\{w_1, w_2, e_a, e_b\}$ soit une base de $\mathbb{R}^4$.

    Prenons $e_a = (1, 0, 0, 0)$ et $e_b = (0, 0, 1, 0)$.

    Vérifions si la famille est libre. Si $\alpha w_1 + \beta w_2 + \gamma e_a + \delta e_b = 0$, alors :

    $(\alpha + \gamma, \alpha, \beta + \delta, \beta) = (0, 0, 0, 0)$.

    Cela implique $\alpha=0, \beta=0$, donc $\gamma=0, \delta=0$. C'est libre.

    Une base de $V/W$ est donc formée par les classes de ces vecteurs :

    $\mathfrak{B}_{V/W} = \{ \overline{(1, 0, 0, 0)}, \overline{(0, 0, 1, 0)} \}$.

**Réponse :**

$\dim(W)=2$, $\dim(V/W)=2$. Une base de l'espace quotient est $\{(1,0,0,0)+W, (0,0,1,0)+W\}$.

</details>

---

## Exercice 7 : Déterminant

**Problème :**

Soit $m$ un paramètre réel. On considère la matrice :

$$ M_m = \begin{pmatrix} 1 & 0 & 1 \\ 2 & m & 3 \\ 0 & 2 & m \end{pmatrix} $$

1. Calculez le déterminant de $M_m$ en fonction de $m$.
2. Pour quelles valeurs de $m$ la matrice $M_m$ est-elle inversible ?

<details>

<summary>Solution</summary>

**Méthode :** Utiliser la règle de Sarrus ou le développement selon une ligne/colonne pour calculer $\det(M_m)$. Une matrice est inversible si $\det \neq 0$.

**Étapes :**

1.  **Calcul du déterminant :**

    Développons selon la première ligne (qui contient un zéro, ce qui simplifie) :

    $$ \det(M_m) = 1 \cdot \begin{vmatrix} m & 3 \\ 2 & m \end{vmatrix} - 0 + 1 \cdot \begin{vmatrix} 2 & m \\ 0 & 2 \end{vmatrix} $$
    
    Calculons les mineurs $2 \times 2$ :

    $$ \begin{vmatrix} m & 3 \\ 2 & m \end{vmatrix} = m^2 - 6 $$

    $$ \begin{vmatrix} 2 & m \\ 0 & 2 \end{vmatrix} = 2(2) - 0(m) = 4 $$
    
    Donc :

    $$ \det(M_m) = 1(m^2 - 6) + 1(4) = m^2 - 6 + 4 = m^2 - 2 $$

2.  **Condition d'inversibilité :**

    $M_m$ est inversible $\iff \det(M_m) \neq 0$.

    $$ m^2 - 2 \neq 0 \iff m^2 \neq 2 \iff m \neq \sqrt{2} \text{ et } m \neq -\sqrt{2} $$

**Réponse :**

$\det(M_m) = m^2 - 2$. La matrice est inversible pour tout $m \in \mathbb{R} \setminus \{-\sqrt{2}, \sqrt{2}\}$.

</details>

---

## Exercice 8 : Valeurs Propres et Vecteurs Propres

**Problème :**

Soit la matrice $A = \begin{pmatrix} 4 & 1 \\ 2 & 3 \end{pmatrix}$.

1. Déterminez le polynôme caractéristique $P_A(\lambda)$.
2. Trouvez les valeurs propres de $A$.
3. Pour chaque valeur propre, déterminez une base de l'espace propre associé.

<details>

<summary>Solution</summary>

**Méthode :** $P_A(\lambda) = \det(A - \lambda I)$. Les racines sont les valeurs propres. Ensuite, résoudre $(A - \lambda I)X = 0$ pour trouver les vecteurs propres.

**Étapes :**

1.  **Polynôme caractéristique :**

    $$ P_A(\lambda) = \det \begin{pmatrix} 4-\lambda & 1 \\ 2 & 3-\lambda \end{pmatrix} $$

    $$ = (4-\lambda)(3-\lambda) - 2(1) $$

    $$ = 12 - 4\lambda - 3\lambda + \lambda^2 - 2 $$

    $$ = \lambda^2 - 7\lambda + 10 $$

2.  **Valeurs propres :**

    On cherche les racines de $\lambda^2 - 7\lambda + 10 = 0$.

    Le discriminant $\Delta = (-7)^2 - 4(1)(10) = 49 - 40 = 9$.

    $\sqrt{\Delta} = 3$.

    Les solutions sont $\lambda_1 = \frac{7 - 3}{2} = 2$ et $\lambda_2 = \frac{7 + 3}{2} = 5$.

    Spectre de $A$ : $\{2, 5\}$.

3.  **Espaces propres :**
    *   **Pour $\lambda_1 = 2$ :**

        On résout $(A - 2I)X = 0$ :

        $$ \begin{pmatrix} 2 & 1 \\ 2 & 1 \end{pmatrix} \begin{pmatrix} x \\ y \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \end{pmatrix} $$

        L'équation est $2x + y = 0 \implies y = -2x$.

        Vecteur propre : $v_1 = (1, -2)$. Base de $E_2$ : $\{(1, -2)\}$.

    *   **Pour $\lambda_2 = 5$ :**

        On résout $(A - 5I)X = 0$ :

        $$ \begin{pmatrix} -1 & 1 \\ 2 & -2 \end{pmatrix} \begin{pmatrix} x \\ y \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \end{pmatrix} $$

        L'équation est $-x + y = 0 \implies y = x$.

        Vecteur propre : $v_2 = (1, 1)$. Base de $E_5$ : $\{(1, 1)\}$.

**Réponse :**

Valeurs propres : 2 et 5.

Espace propre pour $\lambda=2$ engendré par $\begin{pmatrix} 1 \\ -2 \end{pmatrix}$.

Espace propre pour $\lambda=5$ engendré par $\begin{pmatrix} 1 \\ 1 \end{pmatrix}$.

</details>

---

## Exercice 9 : Somme Directe

**Problème :**

Soit $V = \mathbb{R}^3$. On considère :

*   Le plan vectoriel $F$ d'équation $x + y + z = 0$.
*   La droite vectorielle $G$ engendrée par le vecteur $u = (1, 1, 1)$.

Montrez que $F$ et $G$ sont supplémentaires dans $\mathbb{R}^3$, c'est-à-dire que $\mathbb{R}^3 = F \oplus G$.

<details>

<summary>Solution</summary>

**Méthode :** Il faut montrer deux choses :

1. $F \cap G = \{0_{\mathbb{R}^3}\}$
2. $\dim(F) + \dim(G) = \dim(\mathbb{R}^3) = 3$ (ou alternativement $F+G = \mathbb{R}^3$).

**Étapes :**

1.  **Dimensions :**

    $F$ est défini par une équation linéaire non nulle dans $\mathbb{R}^3$, c'est un plan, donc $\dim(F) = 2$.

    $G$ est engendré par un vecteur non nul, c'est une droite, donc $\dim(G) = 1$.

    On a bien $\dim(F) + \dim(G) = 2 + 1 = 3 = \dim(\mathbb{R}^3)$.

    Il suffit donc de montrer que l'intersection est nulle pour prouver la somme directe.

2.  **Intersection $F \cap G$ :**

    Soit $v \in F \cap G$.

    Comme $v \in G$, il existe $\lambda \in \mathbb{R}$ tel que $v = \lambda(1, 1, 1) = (\lambda, \lambda, \lambda)$.

    Comme $v \in F$, ses coordonnées vérifient l'équation $x + y + z = 0$.

    Substituons : $\lambda + \lambda + \lambda = 0 \implies 3\lambda = 0 \implies \lambda = 0$.

    Donc $v = (0, 0, 0)$.

    L'intersection est réduite au vecteur nul.

3.  **Conclusion :**

    Puisque $\dim(F) + \dim(G) = \dim(\mathbb{R}^3)$ et $F \cap G = \{0\}$, alors $F$ et $G$ sont supplémentaires.

**Réponse :**

$F \oplus G = \mathbb{R}^3$. Tout vecteur de l'espace se décompose de manière unique comme somme d'un vecteur du plan $x+y+z=0$ et d'un vecteur colinéaire à $(1,1,1)$.

</details>

---

## Exercice 10 : Diagonalisation

**Problème :**

Soit la matrice $A = \begin{pmatrix} 1 & 4 \\ 2 & 3 \end{pmatrix}$.

1. Pourquoi la matrice est-elle diagonalisable (sans faire le calcul complet) ?
2. Diagonalisez $A$ : trouvez une matrice inversible $P$ et une matrice diagonale $D$ telles que $D = P^{-1} A P$. Donnez explicitement $P$, $D$ et $P^{-1}$.

<details>

<summary>Solution</summary>

**Méthode :** Trouver les valeurs propres. Si elles sont distinctes en dimension 2, c'est diagonalisable. Construire $P$ avec les vecteurs propres en colonnes.

**Étapes :**

1.  **Critère de diagonalisation :**

    Calculons le polynôme caractéristique :

    $P_A(\lambda) = (1-\lambda)(3-\lambda) - 8 = 3 - 4\lambda + \lambda^2 - 8 = \lambda^2 - 4\lambda - 5$.

    Discriminant : $\Delta = 16 - 4(-5) = 36$.

    Il y a deux racines réelles distinctes ($\frac{4 \pm 6}{2}$), soit $-1$ et $5$.

    Puisque $A$ est une matrice $2 \times 2$ avec 2 valeurs propres distinctes, elle est nécessairement diagonalisable.

2.  **Calcul des vecteurs propres :**
    *   Pour $\lambda_1 = 5$ :

        $\begin{pmatrix} -4 & 4 \\ 2 & -2 \end{pmatrix} \begin{pmatrix} x \\ y \end{pmatrix} = 0 \implies x = y$. Vecteur $v_1 = (1, 1)$.

    *   Pour $\lambda_2 = -1$ :

        $\begin{pmatrix} 2 & 4 \\ 2 & 4 \end{pmatrix} \begin{pmatrix} x \\ y \end{pmatrix} = 0 \implies 2x + 4y = 0 \implies x = -2y$. Vecteur $v_2 = (-2, 1)$.

3.  **Construction des matrices :**

    La matrice diagonale $D$ contient les valeurs propres :

    $$ D = \begin{pmatrix} 5 & 0 \\ 0 & -1 \end{pmatrix} $$

    La matrice de passage $P$ contient les vecteurs propres (dans le même ordre) :

    $$ P = \begin{pmatrix} 1 & -2 \\ 1 & 1 \end{pmatrix} $$

4.  **Calcul de $P^{-1}$ :**

    $\det(P) = 1(1) - (-2)(1) = 3$.

    $$ P^{-1} = \frac{1}{3} \begin{pmatrix} 1 & 2 \\ -1 & 1 \end{pmatrix} $$

**Réponse :**

$$ D = \begin{pmatrix} 5 & 0 \\ 0 & -1 \end{pmatrix}, \quad P = \begin{pmatrix} 1 & -2 \\ 1 & 1 \end{pmatrix}, \quad P^{-1} = \begin{pmatrix} 1/3 & 2/3 \\ -1/3 & 1/3 \end{pmatrix} $$

</details>
