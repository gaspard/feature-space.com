---
id: 'e7fae8ef'
title: 'Exercices'
layout: '../../../layouts/Layout.astro'
order: 21
level: regular
chapter: Concepts
course: Structures algébriques et algèbre bilinéaire
---

# Exercices: Concepts

## Exercice 1: Analyse d'une Application

**Problème:** Soit l'application $f: \mathbb{R} \to \mathbb{R}$ définie par $f(x) = x^2 - 4x + 5$.

1. L'application $f$ est-elle injective ?
2. L'application $f$ est-elle surjective ?
3. L'application $f$ est-elle bijective ?
   Justifiez vos réponses.

<details>
<summary>Solution</summary>

**Méthode:** Pour étudier l'injectivité, on cherche si deux antécédents distincts peuvent avoir la même image. Pour la surjectivité, on cherche si tout réel $y$ possède au moins un antécédent $x$ par $f$. La bijectivité découle des deux premières propriétés. Une bonne approche est d'étudier la fonction, par exemple en la mettant sous forme canonique.

**Étapes:**

1.  **Réécriture de la fonction :** On met le polynôme sous forme canonique pour mieux comprendre son comportement.
    $f(x) = (x^2 - 4x + 4) + 1 = (x-2)^2 + 1$.
    Le graphe de cette fonction est une parabole avec un sommet au point $(2, 1)$, ouverte vers le haut.

2.  **Étude de l'injectivité :** Une application est injective si $f(x_1) = f(x_2) \implies x_1 = x_2$.
    Cherchons deux nombres réels distincts qui ont la même image. Par exemple, à cause de la symétrie de la parabole autour de son axe $x=2$, on peut choisir des points équidistants de 2.
    Soit $x_1 = 1$ et $x_2 = 3$.
    $f(1) = (1-2)^2 + 1 = (-1)^2 + 1 = 2$.
    $f(3) = (3-2)^2 + 1 = 1^2 + 1 = 2$.
    On a $f(1) = f(3)$ mais $1 \neq 3$.
    Donc, l'application $f$ n'est **pas injective**.

3.  **Étude de la surjectivité :** Une application est surjective si pour tout $y \in \mathbb{R}$ (ensemble d'arrivée), il existe au moins un $x \in \mathbb{R}$ (ensemble de départ) tel que $f(x) = y$.
    D'après la forme canonique $f(x) = (x-2)^2 + 1$, on sait que $(x-2)^2 \ge 0$ pour tout $x \in \mathbb{R}$.
    Donc, $f(x) = (x-2)^2 + 1 \ge 1$.
    L'image de $f$ est l'ensemble $[1, +\infty)$.
    Choisissons un $y$ dans l'ensemble d'arrivée $\mathbb{R}$ qui n'est pas dans l'image, par exemple $y=0$.
    L'équation $f(x) = 0$ s'écrit $(x-2)^2 + 1 = 0$, soit $(x-2)^2 = -1$. Cette équation n'a pas de solution dans $\mathbb{R}$.
    Donc, l'élément $0 \in \mathbb{R}$ n'a pas d'antécédent. L'application $f$ n'est **pas surjective**.

4.  **Étude de la bijectivité :** Une application est bijective si elle est à la fois injective et surjective.
    Puisque $f$ n'est ni injective ni surjective, elle n'est **pas bijective**.

**Réponse:**

1.  Non, $f$ n'est pas injective.
2.  Non, $f$ n'est pas surjective.
3.  Non, $f$ n'est pas bijective.

</details>

## Exercice 2: Propriétés d'une Loi de Composition Interne

**Problème:** On définit sur l'ensemble $\mathbb{R}$ une loi de composition interne $*$ par :
$x * y = x + y - xy$.
Étudiez si cette loi est associative, commutative, si elle possède un élément neutre, et déterminez les éléments inversibles.

<details>
<summary>Solution</summary>

**Méthode:** On applique les définitions des propriétés une par une. Pour l'associativité, on calcule $(x*y)*z$ et $x*(y*z)$ séparément. Pour la commutativité, on compare $x*y$ et $y*x$. Pour l'élément neutre $e$, on résout l'équation $x*e = x$. Enfin, pour l'inverse $y$ d'un élément $x$, on résout $x*y = e$.

**Étapes:**

1.  **Commutativité :** On vérifie si $x * y = y * x$.
    $x * y = x + y - xy$.
    $y * x = y + x - yx$.
    Puisque l'addition et la multiplication dans $\mathbb{R}$ sont commutatives, $x+y=y+x$ et $xy=yx$.
    Donc $x * y = y * x$. La loi $*$ est **commutative**.

2.  **Associativité :** On vérifie si $(x * y) * z = x * (y * z)$.
    Calculons le membre de gauche :
    $(x * y) * z = (x + y - xy) * z = (x + y - xy) + z - (x + y - xy)z = x + y + z - xy - xz - yz + xyz$.
    Calculons le membre de droite :
    $x * (y * z) = x * (y + z - yz) = x + (y + z - yz) - x(y + z - yz) = x + y + z - yz - xy - xz + xyz$.
    Les deux expressions sont égales. La loi $*$ est **associative**.

3.  **Élément neutre :** On cherche un élément $e \in \mathbb{R}$ tel que pour tout $x \in \mathbb{R}$, $x * e = x$.
    $x * e = x + e - xe = x$.
    $e - xe = 0$.
    $e(1 - x) = 0$.
    Cette équation doit être vraie pour **tout** $x \in \mathbb{R}$. Si $x \ne 1$, cela implique $e=0$. Vérifions si $e=0$ fonctionne aussi pour $x=1$ : $1*0 = 1+0-1(0)=1$.
    Donc, $e=0$ est l'élément neutre.

4.  **Éléments inversibles :** Soit $x \in \mathbb{R}$. On cherche un inverse $y \in \mathbb{R}$ tel que $x * y = e = 0$.
    $x * y = x + y - xy = 0$.
    $y(1 - x) = -x$.
    - Si $x \neq 1$, on peut diviser par $(1-x)$ : $y = \frac{-x}{1-x} = \frac{x}{x-1}$.
      Cet élément $y$ existe et est unique pour tout $x \neq 1$.
    - Si $x = 1$, l'équation devient $y(1 - 1) = -1$, soit $0 = -1$, ce qui est impossible. L'élément $1$ n'a pas d'inverse.

**Réponse:** La loi $*$ est **commutative** et **associative**. L'élément neutre est $\boldsymbol{e=0}$. Tous les éléments $x \in \mathbb{R}$ sont inversibles, **sauf $x=1$**. L'inverse de $x \ne 1$ est $\boldsymbol{y = \frac{x}{x-1}}$.

</details>

## Exercice 3: Identification de Structure (Groupe)

**Problème:** Soit $G = \mathbb{R} \setminus \{-1\}$. On définit sur $G$ la loi de composition interne $\oplus$ par :
$a \oplus b = a + b + ab$.
Montrer que $(G, \oplus)$ est un groupe abélien.

<details>
<summary>Solution</summary>

**Méthode:** Pour montrer que $(G, \oplus)$ est un groupe abélien, nous devons vérifier les cinq points suivants :

1. La loi $\oplus$ est bien une loi de composition interne sur $G$.
2. La loi $\oplus$ est associative.
3. Il existe un élément neutre dans $G$.
4. Chaque élément de $G$ a un inverse dans $G$.
5. La loi $\oplus$ est commutative.

**Étapes:**

1.  **Loi de composition interne :** Nous devons montrer que si $a, b \in G$, alors $a \oplus b \in G$.
    $a, b \in G$ signifie $a \neq -1$ et $b \neq -1$.
    $a \oplus b = a + b + ab$.
    Supposons par l'absurde que $a \oplus b = -1$.
    $a + b + ab = -1 \implies a + b + ab + 1 = 0 \implies a(1+b) + (1+b) = 0 \implies (a+1)(b+1) = 0$.
    Ceci implique $a+1=0$ ou $b+1=0$, soit $a=-1$ ou $b=-1$. Ceci contredit nos hypothèses sur $a$ et $b$.
    Donc, si $a, b \in G$, alors $a \oplus b \neq -1$, ce qui signifie que $a \oplus b \in G$. La loi est bien interne.

2.  **Associativité :** Vérifions si $(a \oplus b) \oplus c = a \oplus (b \oplus c)$.
    $(a \oplus b) \oplus c = (a+b+ab) \oplus c = (a+b+ab) + c + (a+b+ab)c = a+b+c+ab+ac+bc+abc$.
    $a \oplus (b \oplus c) = a \oplus (b+c+bc) = a + (b+c+bc) + a(b+c+bc) = a+b+c+bc+ab+ac+abc$.
    Les deux expressions sont égales, la loi est associative.

3.  **Élément neutre :** Cherchons $e \in G$ tel que $a \oplus e = a$ pour tout $a \in G$.
    $a + e + ae = a \implies e + ae = 0 \implies e(1+a) = 0$.
    Puisque $a \in G$, $a \neq -1$, donc $1+a \neq 0$. On peut diviser par $(1+a)$ pour obtenir $e=0$.
    Vérifions que $0 \in G$ (oui, car $0 \neq -1$) et que c'est bien l'élément neutre :
    $a \oplus 0 = a + 0 + a(0) = a$.
    $0 \oplus a = 0 + a + 0(a) = a$.
    L'élément neutre est $e=0$.

4.  **Inverse :** Pour un $a \in G$, cherchons $b \in G$ tel que $a \oplus b = 0$.
    $a + b + ab = 0 \implies b(1+a) = -a$.
    Puisque $a \neq -1$, $1+a \neq 0$, donc on peut trouver $b = \frac{-a}{1+a}$.
    Il faut vérifier que cet inverse $b$ est bien dans $G$, c'est-à-dire que $b \neq -1$.
    Si $b = -1$, alors $\frac{-a}{1+a} = -1 \implies -a = -(1+a) \implies -a = -1 - a \implies 0 = -1$, ce qui est impossible.
    Donc $b \neq -1$, et $b \in G$. Chaque élément $a \in G$ a un inverse $\frac{-a}{1+a}$.

5.  **Commutativité :** Vérifions si $a \oplus b = b \oplus a$.
    $a \oplus b = a + b + ab$.
    $b \oplus a = b + a + ba$.
    Puisque l'addition et la multiplication dans $\mathbb{R}$ sont commutatives, les deux expressions sont égales. La loi est commutative.

**Réponse:** Puisque les cinq axiomes sont vérifiés, $(G, \oplus)$ est un **groupe abélien**.

</details>

## Exercice 4: Vérification d'un Sous-Groupe

**Problème:** Soit le groupe $(M_2(\mathbb{R}), +)$ des matrices carrées de taille 2 à coefficients réels. Soit $H$ le sous-ensemble de $M_2(\mathbb{R})$ des matrices triangulaires supérieures :
$H = \left\{ \begin{pmatrix} a & b \\ 0 & c \end{pmatrix} \mid a, b, c \in \mathbb{R} \right\}$.
Montrer que $H$ est un sous-groupe de $(M_2(\mathbb{R}), +)$.

<details>
<summary>Solution</summary>

**Méthode:** Pour montrer que $H$ est un sous-groupe, on peut utiliser la caractérisation compacte : $H$ est un sous-groupe si et seulement si $H$ est non vide et pour tous $X, Y \in H$, $X - Y \in H$. (On utilise $X - Y$ car la loi de groupe est l'addition, et l'inverse de $Y$ est $-Y$).

**Étapes:**

1.  **Vérifier que H est non vide :**
    L'élément neutre du groupe $(M_2(\mathbb{R}), +)$ est la matrice nulle $O = \begin{pmatrix} 0 & 0 \\ 0 & 0 \end{pmatrix}$.
    Cette matrice est bien de la forme $\begin{pmatrix} a & b \\ 0 & c \end{pmatrix}$ avec $a=b=c=0$.
    Donc $O \in H$, et $H$ n'est pas vide.

2.  **Vérifier la stabilité par $X - Y$ :**
    Soient $X$ et $Y$ deux matrices quelconques dans $H$. Elles peuvent s'écrire :
    $X = \begin{pmatrix} a_1 & b_1 \\ 0 & c_1 \end{pmatrix}$ et $Y = \begin{pmatrix} a_2 & b_2 \\ 0 & c_2 \end{pmatrix}$, avec $a_1, b_1, c_1, a_2, b_2, c_2 \in \mathbb{R}$.
    Calculons la matrice $X - Y$ :
    $X - Y = \begin{pmatrix} a_1 & b_1 \\ 0 & c_1 \end{pmatrix} - \begin{pmatrix} a_2 & b_2 \\ 0 & c_2 \end{pmatrix} = \begin{pmatrix} a_1 - a_2 & b_1 - b_2 \\ 0 - 0 & c_1 - c_2 \end{pmatrix} = \begin{pmatrix} a_1 - a_2 & b_1 - b_2 \\ 0 & c_1 - c_2 \end{pmatrix}$.
    La matrice résultante a bien un $0$ en position (2,1). Elle est de la forme $\begin{pmatrix} a' & b' \\ 0 & c' \end{pmatrix}$ avec $a' = a_1 - a_2$, $b' = b_1 - b_2$ et $c' = c_1 - c_2$, qui sont des réels.
    Donc $X - Y \in H$.

3.  **Conclusion :**
    Puisque $H$ est un sous-ensemble non vide de $M_2(\mathbb{R})$ et qu'il est stable par soustraction, $H$ est un sous-groupe de $(M_2(\mathbb{R}), +)$.

**Réponse:** $\boldsymbol{H}$ est bien un sous-groupe de $\boldsymbol{(M_2(\mathbb{R}), +)}$.

</details>

## Exercice 5: Étude d'une Structure d'Anneau

**Problème:** Soit l'ensemble $\mathbb{Z}[i] = \{a + bi \mid a, b \in \mathbb{Z}\}$ (les entiers de Gauss), muni de l'addition et de la multiplication usuelles des nombres complexes.

1. Montrer que $(\mathbb{Z}[i], +, \times)$ est un anneau commutatif.
2. Cet anneau est-il intègre ?
3. Cet anneau est-il un corps ?

<details>
<summary>Solution</summary>

**Méthode:**

1. Pour montrer que c'est un anneau, on vérifie que $(\mathbb{Z}[i], +)$ est un groupe abélien, que $(\mathbb{Z}[i], \times)$ est un monoïde, et que la multiplication est distributive sur l'addition.
2. Pour l'intégrité, on vérifie qu'il n'y a pas de diviseur de zéro.
3. Pour savoir si c'est un corps, on cherche si tout élément non nul a un inverse multiplicatif _dans_ $\mathbb{Z}[i]$.

**Étapes:**

1.  **Structure d'anneau commutatif :**

    - **$(\mathbb{Z}[i], +)$ est un groupe abélien :**
      - Soient $z_1 = a_1 + b_1 i$ and $z_2 = a_2 + b_2 i$. Leur somme est $z_1 + z_2 = (a_1+a_2) + (b_1+b_2)i$. Comme $a_1+a_2 \in \mathbb{Z}$ et $b_1+b_2 \in \mathbb{Z}$, la somme reste dans $\mathbb{Z}[i]$.
      - L'addition est associative et commutative (héritée de $\mathbb{C}$).
      - L'élément neutre est $0 = 0+0i$, qui est dans $\mathbb{Z}[i]$.
      - L'opposé de $a+bi$ est $-a-bi = (-a)+(-b)i$, qui est dans $\mathbb{Z}[i]$ car $-a, -b \in \mathbb{Z}$.
    - **$(\mathbb{Z}[i], \times)$ est un monoïde commutatif :**
      - Soient $z_1 = a_1 + b_1 i$ et $z_2 = a_2 + b_2 i$. Leur produit est $z_1 z_2 = (a_1a_2 - b_1b_2) + (a_1b_2 + a_2b_1)i$. Les parties réelle et imaginaire sont des entiers, donc le produit est dans $\mathbb{Z}[i]$.
      - La multiplication est associative et commutative (héritée de $\mathbb{C}$).
      - L'élément neutre est $1 = 1+0i$, qui est dans $\mathbb{Z}[i]$.
    - **Distributivité :** La distributivité de $\times$ sur $+$ est héritée de $\mathbb{C}$.
    - **Conclusion :** $(\mathbb{Z}[i], +, \times)$ est bien un anneau commutatif.

2.  **Intégrité :** Un anneau $A$ est intègre si $z_1 z_2 = 0 \implies z_1=0$ ou $z_2=0$.
    $\mathbb{Z}[i]$ est un sous-anneau de $\mathbb{C}$, qui est un corps. Un corps est toujours un anneau intègre. Donc, si $z_1, z_2 \in \mathbb{Z}[i]$ et $z_1 z_2 = 0$, cette équation est aussi vraie dans $\mathbb{C}$, ce qui implique $z_1=0$ ou $z_2=0$.
    L'anneau $\mathbb{Z}[i]$ est **intègre**.

3.  **Corps :** Pour être un corps, tout élément non nul doit être inversible. Soit $z = a+bi \in \mathbb{Z}[i]$ non nul. Son inverse dans $\mathbb{C}$ est $z^{-1} = \frac{1}{a+bi} = \frac{a-bi}{a^2+b^2} = \frac{a}{a^2+b^2} - \frac{b}{a^2+b^2}i$.
    Pour que $z^{-1}$ soit dans $\mathbb{Z}[i]$, il faut que $\frac{a}{a^2+b^2}$ et $\frac{-b}{a^2+b^2}$ soient des entiers.
    Prenons par exemple $z=2 = 2+0i \in \mathbb{Z}[i]$. Son inverse est $1/2 = 0.5 + 0i$. Ce n'est pas un élément de $\mathbb{Z}[i]$.
    Un autre exemple: $z=1+i$. $z^{-1} = \frac{1}{1+i} = \frac{1-i}{2} = \frac{1}{2} - \frac{1}{2}i$, qui n'est pas dans $\mathbb{Z}[i]$.
    Puisque tous les éléments non nuls ne sont pas inversibles, $\mathbb{Z}[i]$ n'est **pas un corps**.

**Réponse:**

1. Oui, $\mathbb{Z}[i]$ est un **anneau commutatif**.
2. Oui, $\mathbb{Z}[i]$ est un **anneau intègre**.
3. Non, $\mathbb{Z}[i]$ n'est **pas un corps**.

</details>

## Exercice 6: Morphisme de Groupes, Noyau et Image

**Problème:** Soit $f$ l'application de $(\mathbb{C}^*, \times)$ vers $(\mathbb{R}^*, \times)$ définie par $f(z) = |z|^2$.

1. Montrer que $f$ est un morphisme de groupes.
2. Déterminer le noyau ($\text{Ker}(f)$) et l'image ($\text{Im}(f)$) de ce morphisme.
3. $f$ est-il injectif ? surjectif ?

<details>
<summary>Solution</summary>

**Méthode:**

1. Pour prouver que $f$ est un morphisme, on doit vérifier que $f(z_1 \times z_2) = f(z_1) \times f(z_2)$.
2. Le noyau est l'ensemble des $z \in \mathbb{C}^*$ tels que $f(z)$ est l'élément neutre de l'ensemble d'arrivée, i.e., $f(z)=1$. L'image est l'ensemble des valeurs prises par $f(z)$ dans $\mathbb{R}^*$.
3. L'injectivité est liée au noyau, la surjectivité à l'image.

**Étapes:**

1.  **Vérification du morphisme :**
    Soient $z_1, z_2 \in \mathbb{C}^*$.
    $f(z_1 \times z_2) = |z_1 z_2|^2$.
    On sait que le module d'un produit est le produit des modules : $|z_1 z_2| = |z_1| |z_2|$.
    Donc, $|z_1 z_2|^2 = (|z_1| |z_2|)^2 = |z_1|^2 |z_2|^2$.
    Par définition, $f(z_1) = |z_1|^2$ et $f(z_2) = |z_2|^2$.
    Ainsi, $f(z_1 \times z_2) = f(z_1) \times f(z_2)$.
    L'application $f$ est bien un morphisme de groupes.

2.  **Détermination du noyau et de l'image :**

    - **Noyau :** On cherche les $z \in \mathbb{C}^*$ tels que $f(z) = 1$.
      $f(z) = |z|^2 = 1$.
      Puisque $|z|$ est un réel positif, cela équivaut à $|z|=1$.
      Le noyau de $f$ est l'ensemble des nombres complexes de module 1. C'est le cercle unité dans le plan complexe, noté $S^1$ ou $U$.
      $\text{Ker}(f) = \{ z \in \mathbb{C}^* \mid |z|=1 \}$.

    - **Image :** L'image de $f$ est l'ensemble de tous les $f(z)$ pour $z \in \mathbb{C}^*$.
      $f(z) = |z|^2$.
      Comme $z \in \mathbb{C}^*$, on a $z \neq 0$, donc $|z| > 0$. Par conséquent, $|z|^2 > 0$.
      L'image est un sous-ensemble des réels strictement positifs, $\mathbb{R}^*_+$.
      Soit $y \in \mathbb{R}^*_+$. Peut-on trouver $z \in \mathbb{C}^*$ tel que $f(z) = y$ ?
      On cherche $z$ tel que $|z|^2 = y$. Il suffit de prendre $z = \sqrt{y}$ (qui est un réel non nul).
      On a $|z| = |\sqrt{y}| = \sqrt{y}$, donc $|z|^2 = y$.
      Donc, tout réel strictement positif est atteint.
      $\text{Im}(f) = \mathbb{R}^*_+ = (0, +\infty)$.

3.  **Injectivité et surjectivité :**

    - **Injectivité :** Un morphisme est injectif si et seulement si son noyau est réduit à l'élément neutre. L'élément neutre de $(\mathbb{C}^*, \times)$ est $1$.
      Ici, $\text{Ker}(f) = \{ z \in \mathbb{C}^* \mid |z|=1 \}$. Ce noyau contient une infinité d'éléments (par exemple $i$, $-1$, etc.), et n'est pas réduit à $\{1\}$.
      Donc, $f$ n'est **pas injectif**.

    - **Surjectivité :** Un morphisme est surjectif si et seulement si son image est égale à l'ensemble d'arrivée.
      L'ensemble d'arrivée est $\mathbb{R}^* = \mathbb{R} \setminus \{0\}$.
      L'image est $\text{Im}(f) = \mathbb{R}^*_+$.
      Puisque $\mathbb{R}^*_+ \neq \mathbb{R}^*$ (les nombres négatifs ne sont pas atteints), $f$ n'est **pas surjectif**.

**Réponse:**

1. $f$ est un **morphisme de groupes**.
2. $\text{Ker}(f) = \{ z \in \mathbb{C}^* \mid |z|=1 \}$ (le cercle unité). $\text{Im}(f) = \mathbb{R}^*_+$ (les réels strictement positifs).
3. $f$ n'est **ni injectif, ni surjectif**.

</details>

## Exercice 7: Relation d'Équivalence et Ensemble Quotient

**Problème:** Sur l'ensemble $\mathbb{R}^2$, on définit la relation $\sim$ par :
$(x, y) \sim (x', y') \iff x + 2y = x' + 2y'$.

1. Montrer que $\sim$ est une relation d'équivalence.
2. Décrire géométriquement la classe d'équivalence d'un point $(x_0, y_0) \in \mathbb{R}^2$.
3. Décrire l'ensemble quotient $\mathbb{R}^2/\sim$.

<details>
<summary>Solution</summary>

**Méthode:**

1. Pour montrer que $\sim$ est une relation d'équivalence, il faut vérifier qu'elle est réflexive, symétrique et transitive.
2. La classe d'équivalence de $(x_0, y_0)$ est l'ensemble de tous les points $(x,y)$ tels que $(x,y) \sim (x_0, y_0)$. On analyse l'équation obtenue.
3. L'ensemble quotient est l'ensemble de toutes ces classes. On cherche un moyen simple de représenter chaque classe de manière unique.

**Étapes:**

1.  **Vérification de la relation d'équivalence :**

    - **Réflexivité :** Pour tout $(x, y) \in \mathbb{R}^2$, on a $x+2y = x+2y$. Donc $(x, y) \sim (x, y)$. La relation est réflexive.
    - **Symétrie :** Soient $(x, y), (x', y') \in \mathbb{R}^2$ tels que $(x, y) \sim (x', y')$. Cela signifie $x+2y = x'+2y'$. Par symétrie de l'égalité dans $\mathbb{R}$, on a $x'+2y' = x+2y$. Ceci est la définition de $(x', y') \sim (x, y)$. La relation est symétrique.
    - **Transitivité :** Soient $(x, y), (x', y'), (x'', y'') \in \mathbb{R}^2$ tels que $(x, y) \sim (x', y')$ et $(x', y') \sim (x'', y'')$.
      On a $x+2y = x'+2y'$ et $x'+2y' = x''+2y''$.
      Par transitivité de l'égalité dans $\mathbb{R}$, on en déduit que $x+2y = x''+2y''$.
      Ceci signifie que $(x, y) \sim (x'', y'')$. La relation est transitive.
      Puisqu'elle est réflexive, symétrique et transitive, $\sim$ est une **relation d'équivalence**.

2.  **Description géométrique d'une classe d'équivalence :**
    La classe d'équivalence d'un point $(x_0, y_0)$, notée $\text{cl}((x_0, y_0))$, est l'ensemble des points $(x, y)$ tels que $(x, y) \sim (x_0, y_0)$.
    L'équation est $x+2y = x_0+2y_0$.
    Posons $c = x_0+2y_0$. La constante $c$ est un nombre réel qui caractérise la classe.
    L'équation de la classe est donc $x+2y=c$, ou encore $y = -\frac{1}{2}x + \frac{c}{2}$.
    C'est l'équation d'une **droite dans le plan**, de pente $-1/2$ et d'ordonnée à l'origine $c/2$.
    Géométriquement, les classes d'équivalence sont une famille de droites parallèles.

3.  **Description de l'ensemble quotient :**
    L'ensemble quotient $\mathbb{R}^2/\sim$ est l'ensemble de toutes ces droites parallèles.
    Chaque classe est entièrement déterminée par la valeur de la constante $c = x+2y$. Pour chaque nombre réel $c$, il existe une et une seule classe d'équivalence (la droite $x+2y=c$).
    On peut donc identifier chaque classe d'équivalence avec le nombre réel $c$ qui la définit.
    L'application $\phi: \mathbb{R}^2/\sim \to \mathbb{R}$ qui à une classe $\text{cl}((x,y))$ associe le réel $x+2y$ est une bijection.
    L'ensemble quotient $\mathbb{R}^2/\sim$ est donc en bijection avec $\mathbb{R}$.

**Réponse:**

1. $\sim$ est une **relation d'équivalence**.
2. La classe d'équivalence de $(x_0, y_0)$ est la **droite d'équation $x+2y = c$**, où $c = x_0+2y_0$.
3. L'ensemble quotient $\mathbb{R}^2/\sim$ est l'ensemble de toutes les droites de pente $-1/2$. Il est en bijection avec $\mathbb{R}$.

</details>

## Exercice 8: Preuve par Récurrence

**Problème:** Démontrer par récurrence que pour tout entier $n \ge 1$, la somme des $n$ premiers carrés est donnée par la formule :
$\sum_{k=1}^n k^2 = \frac{n(n+1)(2n+1)}{6}$.

<details>
<summary>Solution</summary>

**Méthode:** On applique le principe de récurrence simple.

1.  **Initialisation :** On vérifie que la formule est vraie pour le premier terme, ici $n=1$.
2.  **Hérédité :** On suppose que la formule est vraie pour un entier $n \ge 1$ (hypothèse de récurrence) et on montre qu'elle est alors vraie pour l'entier suivant, $n+1$.

**Étapes:**

1.  **Initialisation :** Pour $n=1$.

    - Membre de gauche : $\sum_{k=1}^1 k^2 = 1^2 = 1$.
    - Membre de droite : $\frac{1(1+1)(2(1)+1)}{6} = \frac{1 \times 2 \times 3}{6} = \frac{6}{6} = 1$.
      Les deux membres sont égaux. La propriété est vraie pour $n=1$.

2.  **Hérédité :** Soit $n \ge 1$ un entier. Supposons que la propriété est vraie au rang $n$, c'est-à-dire :
    $\sum_{k=1}^n k^2 = \frac{n(n+1)(2n+1)}{6}$ (Hypothèse de Récurrence - HR).
    Montrons que la propriété est vraie au rang $n+1$, c'est-à-dire :
    $\sum_{k=1}^{n+1} k^2 = \frac{(n+1)((n+1)+1)(2(n+1)+1)}{6} = \frac{(n+1)(n+2)(2n+3)}{6}$.

    Partons du membre de gauche de l'égalité à prouver :
    $\sum_{k=1}^{n+1} k^2 = (\sum_{k=1}^n k^2) + (n+1)^2$.
    On utilise l'hypothèse de récurrence pour remplacer la somme :
    $= \frac{n(n+1)(2n+1)}{6} + (n+1)^2$.
    Mettons $(n+1)$ en facteur commun :
    $= (n+1) \left[ \frac{n(2n+1)}{6} + (n+1) \right]$.
    Mettons tout sur le même dénominateur dans le crochet :
    $= (n+1) \left[ \frac{n(2n+1) + 6(n+1)}{6} \right]$.
    Développons le numérateur dans le crochet :
    $= (n+1) \left[ \frac{2n^2 + n + 6n + 6}{6} \right] = (n+1) \left[ \frac{2n^2 + 7n + 6}{6} \right]$.
    Maintenant, factorisons le polynôme du second degré $2n^2 + 7n + 6$. Ses racines sont $n = \frac{-7 \pm \sqrt{49 - 4(2)(6)}}{4} = \frac{-7 \pm \sqrt{1}}{4}$, donc $n_1 = -2$ et $n_2 = -3/2$.
    La factorisation est $2(n - (-2))(n - (-3/2)) = 2(n+2)(n+3/2) = (n+2)(2n+3)$.
    On remplace cette factorisation dans notre expression :
    $= (n+1) \frac{(n+2)(2n+3)}{6} = \frac{(n+1)(n+2)(2n+3)}{6}$.
    Ceci est exactement le membre de droite de la formule au rang $n+1$. L'hérédité est prouvée.

3.  **Conclusion :** Par le principe de récurrence, la formule est vraie pour tout entier $n \ge 1$.

**Réponse:** La formule $\boldsymbol{\sum_{k=1}^n k^2 = \frac{n(n+1)(2n+1)}{6}}$ est démontrée par récurrence pour tout $\boldsymbol{n \ge 1}$.

</details>

## Exercice 9: Analyse d'une Relation Binaire

**Problème:** Soit l'ensemble $E = \{1, 2, 3, 4, 5, 6\}$. On définit sur $E$ la relation binaire $R$ par :
$a R b \iff a \text{ et } b \text{ ont un diviseur commun autre que 1}$.
Par exemple, $4R6$ car 2 est un diviseur commun.
Étudiez si cette relation est réflexive, symétrique, et transitive.

<details>
<summary>Solution</summary>

**Méthode:** On teste chaque propriété en utilisant la définition et en cherchant des exemples ou contre-exemples dans l'ensemble $E$.

**Étapes:**

1.  **Réflexivité :** La relation est réflexive si pour tout $a \in E$, on a $a R a$.
    $a R a \iff a \text{ et } a \text{ ont un diviseur commun autre que 1}$.

    - Si $a$ est un nombre composé ou premier supérieur à 1, $a$ est lui-même un diviseur commun de $a$ et $a$. Par exemple, pour $a=4$, $4$ est un diviseur commun de $4$ et $4$. Pour $a=5$, $5$ est un diviseur commun.
    - Cependant, pour $a=1$, le seul diviseur de 1 est 1. Il n'y a donc pas de diviseur commun autre que 1 pour $1$ et $1$.
      Donc $1 \not R 1$.
      La relation n'est **pas réflexive**.

2.  **Symétrie :** La relation est symétrique si $a R b \implies b R a$.
    Supposons $a R b$. Cela signifie que $a$ et $b$ ont un diviseur commun $d > 1$.
    Alors $b$ et $a$ ont aussi ce même diviseur commun $d > 1$.
    Cela signifie que $b R a$.
    La relation est **symétrique**.

3.  **Transitivité :** La relation est transitive si $(a R b \text{ et } b R c) \implies a R c$.
    Cherchons un contre-exemple.
    - Soit $a=2, b=6, c=3$.
      - $a R b$? (2 et 6) : Oui, car 2 est un diviseur commun.
      - $b R c$? (6 et 3) : Oui, car 3 est un diviseur commun.
      - $a R c$? (2 et 3) : Non, 2 et 3 sont premiers entre eux, leur seul diviseur commun est 1.
        On a trouvé un cas où $a R b$ et $b R c$ mais $a \not R c$.
        La relation n'est **pas transitive**.

**Réponse:**

- La relation R n'est **pas réflexive** (à cause de l'élément 1).
- La relation R est **symétrique**.
- La relation R n'est **pas transitive**.

</details>

## Exercice 10: Idéal et Anneau Quotient

**Problème:** Soit $A = C(\mathbb{R}, \mathbb{R})$ l'anneau des fonctions continues de $\mathbb{R}$ dans $\mathbb{R}$. Soit $I$ le sous-ensemble de $A$ des fonctions qui s'annulent en $0$ et en $1$.
$I = \{ f \in A \mid f(0) = 0 \text{ et } f(1) = 0 \}$.

1. Montrer que $I$ est un idéal de $A$.
2. Le morphisme d'évaluation $\phi: A \to \mathbb{R}^2$ est défini par $\phi(f) = (f(0), f(1))$. Montrer que $\phi$ est un morphisme d'anneaux. Quel est son noyau ?

<details>
<summary>Solution</summary>

**Méthode:**

1. Pour montrer que $I$ est un idéal, il faut vérifier que c'est un sous-groupe additif et qu'il absorbe la multiplication par n'importe quel élément de l'anneau.
2. Pour montrer que $\phi$ est un morphisme d'anneaux, il faut vérifier qu'il préserve l'addition, la multiplication, et l'élément neutre multiplicatif. Le noyau est l'ensemble des fonctions $f$ telles que $\phi(f)$ est le neutre de $\mathbb{R}^2$, c'est-à-dire $(0,0)$.

**Étapes:**

1.  **Vérification que I est un idéal :**

    - **Sous-groupe additif :**
      - La fonction nulle $f(x)=0$ pour tout $x$ est dans $I$ car $f(0)=0$ et $f(1)=0$.
      - Soient $f, g \in I$. Alors $f(0)=g(0)=0$ et $f(1)=g(1)=0$.
        Pour la somme $f+g$, on a $(f+g)(0) = f(0)+g(0) = 0+0 = 0$ et $(f+g)(1) = f(1)+g(1) = 0+0 = 0$. Donc $f+g \in I$.
      - Pour l'opposé $-f$, on a $(-f)(0) = -f(0) = 0$ et $(-f)(1) = -f(1) = 0$. Donc $-f \in I$.
        Ainsi, $(I,+)$ est un sous-groupe de $(A,+)$.
    - **Absorption :**
      Soit $f \in I$ (donc $f(0)=0, f(1)=0$) et soit $g \in A$ une fonction continue quelconque.
      Considérons le produit $g \cdot f$.
      $(g \cdot f)(0) = g(0) \cdot f(0) = g(0) \cdot 0 = 0$.
      $(g \cdot f)(1) = g(1) \cdot f(1) = g(1) \cdot 0 = 0$.
      Donc $g \cdot f \in I$.
      $I$ est bien un **idéal** de $A$.

2.  **Morphisme d'anneaux et noyau :**
    L'ensemble d'arrivée $\mathbb{R}^2$ est muni d'une structure d'anneau produit avec les opérations composante par composante. $(x,y) + (x',y') = (x+x', y+y')$ et $(x,y) \times (x',y') = (xx', yy')$. Le neutre additif est $(0,0)$ et le neutre multiplicatif est $(1,1)$.
    - **Addition :** $\phi(f+g) = ((f+g)(0), (f+g)(1)) = (f(0)+g(0), f(1)+g(1)) = (f(0), f(1)) + (g(0), g(1)) = \phi(f) + \phi(g)$.
    - **Multiplication :** $\phi(f \cdot g) = ((f \cdot g)(0), (f \cdot g)(1)) = (f(0)g(0), f(1)g(1)) = (f(0), f(1)) \times (g(0), g(1)) = \phi(f) \times \phi(g)$.
    - **Élément neutre multiplicatif :** L'élément neutre de $A$ est la fonction constante $1_A(x)=1$.
      $\phi(1_A) = (1_A(0), 1_A(1)) = (1, 1)$, qui est bien le neutre multiplicatif de $\mathbb{R}^2$.
      $\phi$ est donc un **morphisme d'anneaux**.
    - **Noyau :** Le noyau de $\phi$ est l'ensemble des $f \in A$ telles que $\phi(f) = (0,0)$.
      $\phi(f) = (f(0), f(1)) = (0,0)$ si et seulement si $f(0)=0$ et $f(1)=0$.
      C'est exactement la définition de l'idéal $I$.
      Donc, $\text{Ker}(\phi) = I$.

**Réponse:**

1. $I$ est un **idéal** de l'anneau $A=C(\mathbb{R}, \mathbb{R})$.
2. $\phi$ est un **morphisme d'anneaux** et son noyau est $\text{Ker}(\phi) = I$.

</details>
