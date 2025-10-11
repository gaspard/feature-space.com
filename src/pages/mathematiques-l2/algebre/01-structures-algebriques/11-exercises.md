---
title: A - Exercices
order: 11
level: regular
chapter: A - Structures algébriques
course: Structures algébriques et algèbre bilinéaire
tags: ["exercises", "practice", "regular"]
---

# Exercices : Structures algébriques (A)

## Exercice 1 : [Application - Propriétés des applications]

**Problème :** Soit l'application $f : \mathbb{R} \to \mathbb{R}$ définie par $f(x) = x^2 - 4x + 3$.

1.  L'application $f$ est-elle injective ? Justifiez votre réponse.
2.  L'application $f$ est-elle surjective ? Justifiez votre réponse.
3.  Déterminez l'image directe de l'intervalle $[0, 4]$, notée $f([0, 4])$.
4.  Déterminez l'image inverse de l'ensemble $\{0, 3\}$, notée $f^{-1}(\{0, 3\})$.

<details>

<summary>Solution</summary>

**Méthode :** Pour étudier l'injectivité, on cherche si deux $x$ distincts peuvent avoir la même image. Pour la surjectivité, on cherche si tout réel $y$ a au moins un antécédent. L'étude des variations de la fonction est une bonne approche.

**Étapes :**

1.  **Injectivité :**

    Une application est injective si $f(x_1) = f(x_2) \implies x_1 = x_2$.

    Cherchons deux nombres réels distincts ayant la même image. Par exemple, résolvons $f(x) = f(y)$ pour $x \neq y$.

    $x^2 - 4x + 3 = y^2 - 4y + 3$

    $x^2 - y^2 - 4x + 4y = 0$

    $(x-y)(x+y) - 4(x-y) = 0$

    $(x-y)(x+y-4) = 0$

    Cette équation a pour solutions $x=y$ ou $x+y=4$.

    Si nous choisissons $x \neq y$, il faut que $x+y=4$. Prenons par exemple $x=1$ et $y=3$. On a bien $x \neq y$.

    Calculons leurs images :

    $f(1) = 1^2 - 4(1) + 3 = 0$

    $f(3) = 3^2 - 4(3) + 3 = 9 - 12 + 3 = 0$

    Puisque $f(1)=f(3)$ mais $1 \neq 3$, l'application $f$ n'est **pas injective**.

2.  **Surjectivité :**

    Une application est surjective si pour tout $y \in \mathbb{R}$, il existe $x \in \mathbb{R}$ tel que $f(x) = y$.

    Il s'agit de résoudre l'équation $x^2 - 4x + 3 = y$ pour $x$.

    $x^2 - 4x + (3-y) = 0$.

    C'est une équation du second degré en $x$. Le discriminant est $\Delta = (-4)^2 - 4(1)(3-y) = 16 - 12 + 4y = 4 + 4y = 4(1+y)$.

    Pour que des solutions réelles existent pour $x$, il faut que $\Delta \ge 0$, c'est-à-dire $4(1+y) \ge 0$, soit $y \ge -1$.

    Si $y < -1$ (par exemple $y=-2$), le discriminant est négatif et l'équation n'a pas de solution réelle. Donc, les nombres strictement inférieurs à -1 n'ont pas d'antécédent.

    L'application $f$ n'est **pas surjective**. L'image de $f$ est $[-1, +\infty)$.

3.  **Image directe de $[0, 4]$ :**

    Pour trouver $f([0, 4])$, nous étudions les variations de $f$ sur cet intervalle. La dérivée est $f'(x) = 2x-4$. Elle s'annule pour $x=2$.

    Le sommet de la parabole est en $x=2$, et $f(2) = 2^2 - 4(2) + 3 = 4 - 8 + 3 = -1$.

    Calculons les valeurs aux bornes :

    $f(0) = 3$

    $f(4) = 4^2 - 4(4) + 3 = 16 - 16 + 3 = 3$

    Sur l'intervalle $[0, 4]$, la fonction décroît de $f(0)=3$ à $f(2)=-1$, puis croît de $f(2)=-1$ à $f(4)=3$. L'ensemble des valeurs prises est donc l'intervalle $[-1, 3]$.

    $f([0, 4]) = [-1, 3]$.

4.  **Image inverse de $\{0, 3\}$ :**

    Il faut trouver tous les $x \in \mathbb{R}$ tels que $f(x) \in \{0, 3\}$. Cela revient à résoudre $f(x)=0$ et $f(x)=3$.

    -   $f(x) = 0 \iff x^2 - 4x + 3 = 0 \iff (x-1)(x-3) = 0$. Les solutions sont $x=1$ et $x=3$.
    -   $f(x) = 3 \iff x^2 - 4x + 3 = 3 \iff x^2 - 4x = 0 \iff x(x-4)=0$. Les solutions sont $x=0$ et $x=4$.

    L'ensemble des antécédents de $\{0, 3\}$ est donc la réunion des solutions trouvées.

    $f^{-1}(\{0, 3\}) = \{0, 1, 3, 4\}$.

**Réponse :**

1.  Non, $f$ n'est pas injective (par exemple, $f(1)=f(3)=0$).
2.  Non, $f$ n'est pas surjective (par exemple, $-2$ n'a pas d'antécédent).
3.  $f([0, 4]) = [-1, 3]$.
4.  $f^{-1}(\{0, 3\}) = \{0, 1, 3, 4\}$.

</details>

## Exercice 2 : [Conceptuel - Composition et bijectivité]

**Problème :** Soient les applications $f: \mathbb{R} \to [0, +\infty)$ définie par $f(x)=x^2$ et $g: [0, +\infty) \to \mathbb{R}$ définie par $g(x) = \sqrt{x}$.

1.  Déterminez les expressions des applications composées $g \circ f$ et $f \circ g$. Précisez leurs ensembles de départ et d'arrivée.
2.  L'une de ces applications composées est-elle l'application identité ?
3.  L'application $f$ est-elle bijective ? Si non, peut-on restreindre son ensemble de départ pour qu'elle le devienne (en gardant le même ensemble d'arrivée) ? Si oui, quelle est son application inverse ?

<details>

<summary>Solution</summary>

**Méthode :** Pour composer des applications, on applique l'une après l'autre, en s'assurant que l'ensemble d'arrivée de la première est inclus dans l'ensemble de départ de la seconde. Pour la bijectivité, on vérifie l'injectivité et la surjectivité.

**Étapes :**

1.  **Composition $g \circ f$ et $f \circ g$ :**
    -   Pour $g \circ f$: L'application $f$ va de $\mathbb{R}$ dans $[0, +\infty)$, et $g$ va de $[0, +\infty)$ dans $\mathbb{R}$. La composition est bien définie.

        $g \circ f : \mathbb{R} \to \mathbb{R}$.

        $(g \circ f)(x) = g(f(x)) = g(x^2) = \sqrt{x^2} = |x|$.

    -   Pour $f \circ g$: L'application $g$ va de $[0, +\infty)$ dans $\mathbb{R}$, et $f$ va de $\mathbb{R}$ dans $[0, +\infty)$. La composition est bien définie.

        $f \circ g : [0, +\infty) \to [0, +\infty)$.

        $(f \circ g)(x) = f(g(x)) = f(\sqrt{x}) = (\sqrt{x})^2 = x$.

2.  **Application identité :**
    -   L'application $g \circ f$ est définie par $(g \circ f)(x) = |x|$. Ce n'est pas l'application identité sur son ensemble de départ $\mathbb{R}$, car par exemple $(g \circ f)(-2) = |-2| = 2 \neq -2$.
    -   L'application $f \circ g$ est définie sur $[0, +\infty)$ par $(f \circ g)(x) = x$. C'est bien l'application identité sur son ensemble de départ, $\text{id}_{[0, +\infty)}$.

3.  **Bijectivité de $f$ :**

    L'application $f: \mathbb{R} \to [0, +\infty)$ définie par $f(x)=x^2$.

    -   Injectivité : Non, car $f(-1) = 1$ et $f(1) = 1$.
    -   Surjectivité : Oui, car pour tout $y \in [0, +\infty)$, il existe $x \in \mathbb{R}$ tel que $x^2 = y$. On peut prendre $x = \sqrt{y}$ (ou $x=-\sqrt{y}$).

    Puisque $f$ n'est pas injective, elle n'est pas bijective.

    Pour la rendre bijective, il faut la restreindre à un domaine où elle est injective. Par exemple, restreignons l'ensemble de départ à $[0, +\infty)$.

    Soit $f_{res} : [0, +\infty) \to [0, +\infty)$ définie par $f_{res}(x) = x^2$.

    -   Injectivité : Si $x_1^2 = x_2^2$ avec $x_1, x_2 \ge 0$, alors $x_1 = x_2$. Elle est injective.
    -   Surjectivité : Pour tout $y \ge 0$, l'équation $x^2=y$ a une solution $x = \sqrt{y}$ dans $[0, +\infty)$. Elle est surjective.

    Donc $f_{res}$ est bijective.

    Son application inverse est l'application qui à $y$ associe l'unique $x \ge 0$ tel que $x^2=y$. C'est $x=\sqrt{y}$. L'application inverse est donc $(f_{res})^{-1}(y) = \sqrt{y}$. C'est exactement notre application $g$.

**Réponse :**

1.  $g \circ f: \mathbb{R} \to \mathbb{R}$, $(g \circ f)(x) = |x|$.

    $f \circ g: [0, +\infty) \to [0, +\infty)$, $(f \circ g)(x) = x$.

2.  $f \circ g$ est l'application identité sur $[0, +\infty)$, mais $g \circ f$ ne l'est pas sur $\mathbb{R}$.
3.  $f$ n'est pas bijective. La restriction $f_{res} : [0, +\infty) \to [0, +\infty)$ est bijective, et son inverse est $(f_{res})^{-1}(y) = \sqrt{y}$.

</details>

## Exercice 3 : [Application - Démonstration par récurrence]

**Problème :** Démontrer par récurrence que pour tout entier $n \ge 1$, la somme des carrés des $n$ premiers entiers est donnée par la formule :

$$ \sum_{i=1}^{n} i^2 = \frac{n(n+1)(2n+1)}{6} $$

<details>

<summary>Solution</summary>

**Méthode :** Nous allons utiliser le principe de récurrence. Nous devons vérifier l'initialisation (la formule est vraie pour le premier cas, $n=1$) et l'hérédité (si la formule est vraie pour un rang $k$, alors elle est aussi vraie pour le rang $k+1$).

**Étapes :**

1.  **Initialisation (pour $n=1$) :**
    -   Calculons le membre de gauche de l'égalité : $\sum_{i=1}^{1} i^2 = 1^2 = 1$.
    -   Calculons le membre de droite : $\frac{1(1+1)(2 \cdot 1+1)}{6} = \frac{1 \cdot 2 \cdot 3}{6} = \frac{6}{6} = 1$.
    -   Les deux membres sont égaux. La propriété est donc vraie pour $n=1$.

2.  **Hérédité :**
    -   **Hypothèse de récurrence :** Supposons que la formule est vraie pour un certain entier $k \ge 1$. C'est-à-dire, nous supposons que :

        $$ \sum_{i=1}^{k} i^2 = \frac{k(k+1)(2k+1)}{6} $$

    -   **Démonstration pour le rang $k+1$ :** Nous devons montrer que la formule est vraie pour $n=k+1$, c'est-à-dire que :

        $$ \sum_{i=1}^{k+1} i^2 = \frac{(k+1)((k+1)+1)(2(k+1)+1)}{6} = \frac{(k+1)(k+2)(2k+3)}{6} $$

    -   Partons du membre de gauche de l'égalité à démontrer :

        $$ \sum_{i=1}^{k+1} i^2 = \left( \sum_{i=1}^{k} i^2 \right) + (k+1)^2 $$

    -   Utilisons l'hypothèse de récurrence pour remplacer la somme jusqu'à $k$ :

        $$ = \frac{k(k+1)(2k+1)}{6} + (k+1)^2 $$

    -   Mettons $(k+1)$ en facteur commun :

        $$ = (k+1) \left[ \frac{k(2k+1)}{6} + (k+1) \right] $$

    -   Mettons tout sur le même dénominateur (6) à l'intérieur des crochets :

        $$ = (k+1) \left[ \frac{k(2k+1) + 6(k+1)}{6} \right] = \frac{k+1}{6} [2k^2 + k + 6k + 6] $$

    -   Simplifions l'expression dans les crochets :

        $$ = \frac{k+1}{6} [2k^2 + 7k + 6] $$

    -   Factorisons le polynôme du second degré $2k^2 + 7k + 6$. Ses racines sont $k = \frac{-7 \pm \sqrt{49-48}}{4} = \frac{-7 \pm 1}{4}$, soit $k=-2$ et $k=-3/2$.

        Donc, $2k^2 + 7k + 6 = 2(k+2)(k+3/2) = (k+2)(2k+3)$.

    -   Remplaçons le polynôme factorisé dans notre expression :

        $$ = \frac{(k+1)(k+2)(2k+3)}{6} $$

    -   C'est exactement le membre de droite que nous voulions obtenir. L'hérédité est donc prouvée.

3.  **Conclusion :**

    Par le principe de récurrence, la formule est vraie pour tout entier $n \ge 1$.

**Réponse :** La démonstration par récurrence, en vérifiant l'initialisation pour $n=1$ et en prouvant l'étape d'hérédité, confirme que la formule $\sum_{i=1}^{n} i^2 = \frac{n(n+1)(2n+1)}{6}$ est vraie pour tout $n \ge 1$.

</details>

## Exercice 4 : [Application - Loi de composition interne]

**Problème :** Sur l'ensemble $E = \mathbb{R} \setminus \{-1\}$, on définit la loi de composition interne $*$ par :

$$ a * b = a + b + ab $$

1.  Vérifier que $*$ est bien une loi de composition interne sur $E$.
2.  Étudier l'associativité et la commutativité de la loi $*$.
3.  Montrer que la loi $*$ admet un élément neutre $e$ que l'on déterminera.
4.  Montrer que tout élément de $E$ admet un symétrique pour la loi $*$ et déterminer le symétrique d'un élément $a \in E$.

<details>

<summary>Solution</summary>

**Méthode :** On vérifie chaque propriété en appliquant sa définition formelle. Pour montrer que la loi est interne, il faut prouver que si $a, b \in E$, alors $a*b \in E$.

**Étapes :**

1.  **Loi de composition interne :**

    Il faut montrer que si $a \in \mathbb{R} \setminus \{-1\}$ et $b \in \mathbb{R} \setminus \{-1\}$, alors $a * b \in \mathbb{R} \setminus \{-1\}$.

    Supposons, par l'absurde, que $a * b = -1$.

    $a + b + ab = -1$

    $1 + a + b + ab = 0$

    $1(1+a) + b(1+a) = 0$

    $(1+a)(1+b) = 0$

    Cela implique que $1+a=0$ ou $1+b=0$, c'est-à-dire $a=-1$ ou $b=-1$.

    Ceci contredit notre hypothèse de départ que $a, b \in \mathbb{R} \setminus \{-1\}$.

    Donc, $a * b$ ne peut pas être égal à $-1$. La loi est bien interne sur $E$.

2.  **Associativité et Commutativité :**
    -   **Commutativité :**

        $a * b = a + b + ab$

        $b * a = b + a + ba = a + b + ab$

        Puisque $a * b = b * a$, la loi est **commutative**.

    -   **Associativité :** On doit vérifier si $(a * b) * c = a * (b * c)$.

        $(a * b) * c = (a + b + ab) * c = (a+b+ab) + c + (a+b+ab)c$

        $= a+b+c+ab+ac+bc+abc$

        $a * (b * c) = a * (b + c + bc) = a + (b+c+bc) + a(b+c+bc)$

        $= a+b+c+bc+ab+ac+abc$

        Les deux expressions sont identiques. La loi est **associative**.

3.  **Élément neutre :**

    On cherche $e \in E$ tel que pour tout $a \in E$, $a * e = a$.

    $a + e + ae = a$

    $e + ae = 0$

    $e(1+a) = 0$

    Comme $a \in E$, on a $a \neq -1$, donc $1+a \neq 0$. On peut diviser par $(1+a)$ pour obtenir $e=0$.

    Vérifions que $0$ est bien dans $E$ (oui, $0 \neq -1$) et qu'il est bien l'élément neutre : $a * 0 = a+0+a\cdot 0 = a$ et $0 * a = 0+a+0\cdot a = a$.

    L'élément neutre est $e=0$.

4.  **Symétrique :**

    Pour un élément $a \in E$, on cherche un symétrique $a' \in E$ tel que $a * a' = e = 0$.

    $a + a' + aa' = 0$

    $a' + aa' = -a$

    $a'(1+a) = -a$

    Puisque $a \in E$, $a \neq -1$ et $1+a \neq 0$. On peut diviser :

    $a' = \frac{-a}{1+a}$

    Il faut vérifier que cet élément $a'$ est bien dans $E$. Supposons que $a' = -1$.

    $\frac{-a}{1+a} = -1 \implies -a = -(1+a) \implies -a = -1 -a \implies 0 = -1$, ce qui est impossible.

    Donc $a'$ n'est jamais égal à $-1$, et $a' \in E$.

    Chaque élément $a \in E$ a un symétrique unique donné par $a' = \frac{-a}{1+a}$.

**Réponse :**

1.  La loi est bien interne.
2.  La loi est associative et commutative.
3.  L'élément neutre est $e=0$.
4.  Tout élément $a$ admet un symétrique $a' = \frac{-a}{1+a}$.

</details>

## Exercice 5 : [Computationnel - Structure de groupe]

**Problème :** On considère l'ensemble des matrices $G = \left\{ \begin{pmatrix} a & b \\ 0 & 1 \end{pmatrix} \mid a \in \mathbb{R}^*, b \in \mathbb{R} \right\}$.

Montrer que $G$, muni de la multiplication matricielle, est un groupe. Est-il abélien ?

<details>

<summary>Solution</summary>

**Méthode :** Pour montrer que $(G, \times)$ est un groupe, nous devons vérifier les trois axiomes : la loi est interne et associative, il existe un élément neutre dans $G$, et chaque élément de $G$ a un inverse dans $G$.

**Étapes :**

1.  **Loi de composition interne :**

    Soient $M_1 = \begin{pmatrix} a_1 & b_1 \\ 0 & 1 \end{pmatrix}$ et $M_2 = \begin{pmatrix} a_2 & b_2 \\ 0 & 1 \end{pmatrix}$ deux matrices de $G$.

    On a $a_1, a_2 \in \mathbb{R}^*$ et $b_1, b_2 \in \mathbb{R}$.

    Calculons leur produit :

    $ M_1 M_2 = \begin{pmatrix} a_1 & b_1 \\ 0 & 1 \end{pmatrix} \begin{pmatrix} a_2 & b_2 \\ 0 & 1 \end{pmatrix} = \begin{pmatrix} a_1 a_2 + b_1 \cdot 0 & a_1 b_2 + b_1 \cdot 1 \\ 0 \cdot a_2 + 1 \cdot 0 & 0 \cdot b_2 + 1 \cdot 1 \end{pmatrix} = \begin{pmatrix} a_1 a_2 & a_1 b_2 + b_1 \\ 0 & 1 \end{pmatrix} $

    Le produit est une matrice de la forme $\begin{pmatrix} a & b \\ 0 & 1 \end{pmatrix}$.

    Vérifions si elle appartient à $G$. Le coefficient en haut à gauche est $a = a_1 a_2$. Puisque $a_1 \neq 0$ et $a_2 \neq 0$, leur produit $a_1 a_2$ est aussi non nul. Le coefficient en haut à droite est $b = a_1 b_2 + b_1$, qui est un réel.

    La matrice produit est donc bien dans $G$. La loi est interne.

2.  **Associativité :**

    La multiplication matricielle est connue pour être associative. Cette propriété est donc héritée de l'ensemble des matrices carrées $M_2(\mathbb{R})$. Il n'est pas nécessaire de la redémontrer.

3.  **Élément neutre :**

    L'élément neutre pour la multiplication matricielle est la matrice identité $I_2 = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}$.

    Cette matrice est de la forme $\begin{pmatrix} a & b \\ 0 & 1 \end{pmatrix}$ avec $a=1 \in \mathbb{R}^*$ et $b=0 \in \mathbb{R}$.

    Donc, $I_2 \in G$. C'est l'élément neutre de $G$.

4.  **Inverse :**

    Soit $M = \begin{pmatrix} a & b \\ 0 & 1 \end{pmatrix} \in G$. On cherche son inverse $M^{-1} = \begin{pmatrix} x & y \\ 0 & 1 \end{pmatrix} \in G$ tel que $M M^{-1} = I_2$.

    $\begin{pmatrix} a & b \\ 0 & 1 \end{pmatrix} \begin{pmatrix} x & y \\ 0 & 1 \end{pmatrix} = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}$

    $\begin{pmatrix} ax & ay+b \\ 0 & 1 \end{pmatrix} = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}$

    En identifiant les coefficients, on obtient le système :

    -   $ax = 1$
    -   $ay+b = 0$

    Puisque $a \in \mathbb{R}^*$, on peut résoudre :

    $x = 1/a$

    $y = -b/a$

    L'inverse est donc $M^{-1} = \begin{pmatrix} 1/a & -b/a \\ 0 & 1 \end{pmatrix}$.

    Vérifions que $M^{-1} \in G$. Le coefficient en haut à gauche est $1/a$, qui est bien dans $\mathbb{R}^*$ car $a \in \mathbb{R}^*$. Le coefficient en haut à droite est $-b/a$, qui est un réel.

    Chaque élément de $G$ a donc un inverse dans $G$.

    Les trois axiomes étant vérifiés, $(G, \times)$ est un groupe.

5.  **Commutativité (Abélien) :**

    Calculons $M_2 M_1$ et comparons avec $M_1 M_2$.

    $M_1 M_2 = \begin{pmatrix} a_1 a_2 & a_1 b_2 + b_1 \\ 0 & 1 \end{pmatrix}$

    $M_2 M_1 = \begin{pmatrix} a_2 a_1 & a_2 b_1 + b_2 \\ 0 & 1 \end{pmatrix}$

    Pour que le groupe soit abélien, il faudrait que $M_1 M_2 = M_2 M_1$ pour toutes les matrices, donc $a_1 b_2 + b_1 = a_2 b_1 + b_2$.

    Prenons un contre-exemple :

    $M_1 = \begin{pmatrix} 2 & 1 \\ 0 & 1 \end{pmatrix}$ ($a_1=2, b_1=1$)

    $M_2 = \begin{pmatrix} 3 & 4 \\ 0 & 1 \end{pmatrix}$ ($a_2=3, b_2=4$)

    $M_1 M_2 = \begin{pmatrix} 6 & 2 \cdot 4 + 1 \\ 0 & 1 \end{pmatrix} = \begin{pmatrix} 6 & 9 \\ 0 & 1 \end{pmatrix}$

    $M_2 M_1 = \begin{pmatrix} 6 & 3 \cdot 1 + 4 \\ 0 & 1 \end{pmatrix} = \begin{pmatrix} 6 & 7 \\ 0 & 1 \end{pmatrix}$

    Puisque $M_1 M_2 \neq M_2 M_1$, la loi n'est pas commutative. Le groupe n'est pas abélien.

**Réponse :** $(G, \times)$ est un groupe. Il n'est pas abélien.

</details>

## Exercice 6 : [Conceptuel - Anneau et Corps]

**Problème :** Soit l'ensemble $A = \{a + b\sqrt{3} \mid a, b \in \mathbb{Z}\}$.

1.  Montrer que $(A, +, \times)$ est un sous-anneau de $(\mathbb{R}, +, \times)$.
2.  L'anneau $A$ est-il intègre ?
3.  L'anneau $A$ est-il un corps ?

<details>

<summary>Solution</summary>

**Méthode :** Pour montrer que $A$ est un sous-anneau de $\mathbb{R}$, il faut vérifier que c'est un sous-groupe de $(\mathbb{R}, +)$, qu'il est stable pour la multiplication, et qu'il contient l'élément unité $1$. Pour vérifier si c'est un corps, il faut voir si tout élément non nul est inversible dans $A$.

**Étapes :**

1.  **Structure de sous-anneau :**
    -   **Sous-groupe additif :**

        a) $A$ n'est pas vide, car $0 = 0+0\sqrt{3} \in A$.

        b) Stabilité par addition : Soient $x = a_1+b_1\sqrt{3}$ et $y = a_2+b_2\sqrt{3}$ dans $A$.

           $x+y = (a_1+a_2) + (b_1+b_2)\sqrt{3}$. Comme $a_1, a_2, b_1, b_2 \in \mathbb{Z}$, on a $a_1+a_2 \in \mathbb{Z}$ et $b_1+b_2 \in \mathbb{Z}$. Donc $x+y \in A$.

        c) Opposé : Soit $x = a+b\sqrt{3} \in A$. Son opposé est $-x = -a -b\sqrt{3} = (-a) + (-b)\sqrt{3}$. Comme $a, b \in \mathbb{Z}$, on a $-a, -b \in \mathbb{Z}$. Donc $-x \in A$.

        $(A,+)$ est un sous-groupe de $(\mathbb{R},+)$.

    -   **Stabilité par multiplication :**

        Soient $x = a_1+b_1\sqrt{3}$ et $y = a_2+b_2\sqrt{3}$ dans $A$.

        $xy = (a_1+b_1\sqrt{3})(a_2+b_2\sqrt{3}) = a_1a_2 + a_1b_2\sqrt{3} + b_1a_2\sqrt{3} + b_1b_2(\sqrt{3})^2$

        $xy = (a_1a_2 + 3b_1b_2) + (a_1b_2 + a_2b_1)\sqrt{3}$.

        Puisque les $a_i, b_i$ sont des entiers, les coefficients $(a_1a_2 + 3b_1b_2)$ et $(a_1b_2 + a_2b_1)$ sont aussi des entiers. Donc $xy \in A$.

    -   **Élément unité :**

        L'élément unité de $\mathbb{R}$ est $1$. On peut écrire $1 = 1 + 0\sqrt{3}$. Comme $1, 0 \in \mathbb{Z}$, on a $1 \in A$.

    -   **Conclusion :** $A$ est un sous-anneau de $\mathbb{R}$.

2.  **Intégrité :**

    Un anneau est intègre s'il est commutatif et si un produit nul implique qu'un des facteurs est nul. La multiplication dans $A$ est la multiplication usuelle des réels, qui est commutative.

    Soient $x, y \in A$ tels que $xy=0$. Puisque $A \subset \mathbb{R}$, $x$ et $y$ sont des nombres réels. Dans $\mathbb{R}$, si un produit est nul, l'un des facteurs est nul. Donc $x=0$ ou $y=0$.

    L'anneau $A$ est donc un **anneau intègre**.

3.  **Structure de corps :**

    Pour que $A$ soit un corps, tout élément non nul $x \in A$ doit avoir son inverse $x^{-1}$ dans $A$.

    Soit $x = a+b\sqrt{3} \in A$, non nul. Son inverse dans $\mathbb{R}$ est :

    $x^{-1} = \frac{1}{a+b\sqrt{3}} = \frac{1}{a+b\sqrt{3}} \times \frac{a-b\sqrt{3}}{a-b\sqrt{3}} = \frac{a-b\sqrt{3}}{a^2 - 3b^2}$

    $x^{-1} = \left(\frac{a}{a^2 - 3b^2}\right) - \left(\frac{b}{a^2 - 3b^2}\right)\sqrt{3}$.

    Pour que $x^{-1}$ soit dans $A$, il faut que ses coefficients $\frac{a}{a^2 - 3b^2}$ et $\frac{-b}{a^2 - 3b^2}$ soient des entiers.

    Prenons un exemple. Soit l'élément $2 = 2+0\sqrt{3} \in A$. Son inverse est $1/2$.

    Est-ce que $1/2 \in A$ ? On cherche $a,b \in \mathbb{Z}$ tels que $a+b\sqrt{3} = 1/2$.

    Si $b=0$, $a=1/2$, ce qui n'est pas un entier.

    Si $b \neq 0$, $b\sqrt{3} = 1/2-a$, donc $\sqrt{3} = \frac{1/2-a}{b}$ qui serait un nombre rationnel, ce qui est faux.

    Donc $1/2 \notin A$. L'élément $2$ n'est pas inversible dans $A$.

    $A$ n'est **pas un corps**.

**Réponse :**

1.  $(A,+, \times)$ est un sous-anneau de $(\mathbb{R}, +, \times)$.
2.  Oui, $A$ est un anneau intègre.
3.  Non, $A$ n'est pas un corps car tous les éléments non nuls ne sont pas inversibles (par exemple 2).

</details>

## Exercice 7 : [Application - Morphisme de groupe]

**Problème :** Soit $f$ l'application de $(\mathbb{C}^*, \times)$ dans $(\mathbb{R}^*, \times)$ définie par $f(z) = |z|$.

1.  Montrer que $f$ est un morphisme de groupes.
2.  Déterminer le noyau de $f$, noté $\text{Ker}(f)$. Donner une interprétation géométrique.
3.  Déterminer l'image de $f$, notée $\text{Im}(f)$.
4.  Le morphisme $f$ est-il injectif ? Surjectif ?

<details>

<summary>Solution</summary>

**Méthode :** On applique les définitions de morphisme de groupe, de noyau et d'image. L'injectivité est liée au noyau.

**Étapes :**

1.  **Morphismes de groupes :**

    On doit vérifier que pour tous $z_1, z_2 \in \mathbb{C}^*$, on a $f(z_1 \times z_2) = f(z_1) \times f(z_2)$.

    -   $f(z_1 \times z_2) = |z_1 z_2|$.
    -   $f(z_1) \times f(z_2) = |z_1| \times |z_2|$.

    Une propriété fondamentale du module d'un nombre complexe est que $|z_1 z_2| = |z_1| |z_2|$.

    L'égalité est donc vérifiée. $f$ est un morphisme de groupes.

2.  **Noyau de $f$ :**

    Le noyau est l'ensemble des éléments de l'ensemble de départ dont l'image est l'élément neutre de l'ensemble d'arrivée.

    L'élément neutre de $(\mathbb{R}^*, \times)$ est $1$.

    $\text{Ker}(f) = \{z \in \mathbb{C}^* \mid f(z) = 1 \} = \{z \in \mathbb{C}^* \mid |z| = 1 \}$.

    Géométriquement, l'ensemble des nombres complexes de module 1 est le **cercle unité** dans le plan complexe.

3.  **Image de $f$ :**

    L'image est l'ensemble de toutes les valeurs que peut prendre $f(z)$ lorsque $z$ parcourt $\mathbb{C}^*$.

    $\text{Im}(f) = \{|z| \mid z \in \mathbb{C}^*\}$.

    Le module d'un nombre complexe non nul $z=x+iy$ est $|z| = \sqrt{x^2+y^2}$. C'est un nombre réel strictement positif.

    Pour tout réel $r > 0$, peut-on trouver un $z \in \mathbb{C}^*$ tel que $|z|=r$?

    Oui, il suffit de prendre $z=r$ (qui est un nombre complexe non nul). On a bien $|r|=r$.

    Donc, l'image de $f$ est l'ensemble de tous les réels strictement positifs.

    $\text{Im}(f) = \mathbb{R}^*_+ = (0, +\infty)$.

4.  **Injectivité et Surjectivité :**
    -   **Injectivité :** Un morphisme de groupe est injectif si et seulement si son noyau est réduit à l'élément neutre. L'élément neutre de $(\mathbb{C}^*, \times)$ est $1$.

        Ici, $\text{Ker}(f)$ est le cercle unité, qui contient une infinité d'éléments (par exemple $1, i, -1, -i$, ...). Le noyau n'est pas réduit à $\{1\}$.

        Donc, $f$ n'est **pas injectif**. (Par exemple $f(i) = |i|=1$ et $f(1)=|1|=1$).

    -   **Surjectivité :** Une application est surjective si son image est égale à son ensemble d'arrivée.

        L'ensemble d'arrivée est $(\mathbb{R}^*, \times)$, c'est-à-dire $\mathbb{R} \setminus \{0\}$.

        L'image est $\text{Im}(f) = \mathbb{R}^*_+$.

        Puisque $\mathbb{R}^*_+ \neq \mathbb{R}^*$ (les nombres négatifs ne sont pas dans l'image), l'application $f$ n'est **pas surjective**.

**Réponse :**

1.  $f$ est un morphisme de groupes car $|z_1 z_2| = |z_1| |z_2|$.
2.  $\text{Ker}(f) = \{z \in \mathbb{C}^* \mid |z|=1\}$, c'est le cercle unité du plan complexe.
3.  $\text{Im}(f) = \mathbb{R}^*_+ = (0, +\infty)$.
4.  $f$ n'est ni injective, ni surjective.

</details>

## Exercice 8 : [Conceptuel - Relations d'ordre et d'équivalence]

**Problème :** Sur l'ensemble $E = \mathbb{N} \times \mathbb{N}$, on définit deux relations $\mathcal{R}_1$ et $\mathcal{R}_2$.

Pour $(a,b), (c,d) \in E$ :

1.  $(a,b) \mathcal{R}_1 (c,d) \iff a+d = b+c$. Montrer que $\mathcal{R}_1$ est une relation d'équivalence. Décrire la classe d'équivalence de $(2,0)$.
2.  $(a,b) \mathcal{R}_2 (c,d) \iff a \le c \text{ et } b \le d$. Montrer que $\mathcal{R}_2$ est une relation d'ordre. Est-ce un ordre total ?

<details>

<summary>Solution</summary>

**Méthode :** Pour chaque relation, on vérifie les axiomes qui la définissent (réflexivité, symétrie, transitivité pour l'équivalence ; réflexivité, antisymétrie, transitivité pour l'ordre).

**Étapes :**

1.  **Relation $\mathcal{R}_1$ (Équivalence) :** La relation est $(a,b) \mathcal{R}_1 (c,d) \iff a+d = b+c$.
    -   **Réflexivité :** On doit montrer que $(a,b) \mathcal{R}_1 (a,b)$.

        Cela signifie $a+b = b+a$, ce qui est vrai par commutativité de l'addition.

    -   **Symétrie :** On suppose $(a,b) \mathcal{R}_1 (c,d)$, donc $a+d=b+c$. On doit montrer $(c,d) \mathcal{R}_1 (a,b)$.

        Cela signifie $c+b = d+a$. C'est la même équation que $a+d=b+c$. C'est donc vrai.

    -   **Transitivité :** On suppose $(a,b) \mathcal{R}_1 (c,d)$ et $(c,d) \mathcal{R}_1 (e,f)$. On doit montrer $(a,b) \mathcal{R}_1 (e,f)$.

        Hypothèses : (1) $a+d=b+c$ et (2) $c+f=d+e$.

        On doit montrer : $a+f=b+e$.

        De (1), on tire $c-d = a-b$.

        De (2), on tire $c-d = e-f$.

        Donc $a-b = e-f$, ce qui est équivalent à $a+f = b+e$. La transitivité est prouvée.

    $\mathcal{R}_1$ est une relation d'équivalence.

    **Classe d'équivalence de (2,0) :**

    $\text{cl}((2,0)) = \{(c,d) \in \mathbb{N} \times \mathbb{N} \mid (c,d) \mathcal{R}_1 (2,0) \}$

    $(c,d) \mathcal{R}_1 (2,0) \iff c+0 = d+2 \iff c = d+2$.

    La classe est l'ensemble des couples $(d+2, d)$ où $d \in \mathbb{N}$.

    $\text{cl}((2,0)) = \{(2,0), (3,1), (4,2), (5,3), \dots \}$.

    (Intuitivement, cette relation définit l'entier relatif $a-b$, et la classe de (2,0) est l'ensemble des paires représentant l'entier 2).

2.  **Relation $\mathcal{R}_2$ (Ordre) :** La relation est $(a,b) \mathcal{R}_2 (c,d) \iff a \le c \text{ et } b \le d$.
    -   **Réflexivité :** On doit montrer $(a,b) \mathcal{R}_2 (a,b)$.

        Cela signifie $a \le a$ et $b \le b$. C'est vrai car $\le$ est réflexive sur $\mathbb{N}$.

    -   **Antisymétrie :** On suppose $(a,b) \mathcal{R}_2 (c,d)$ et $(c,d) \mathcal{R}_2 (a,b)$. On doit montrer $(a,b)=(c,d)$.

        Hypothèses : ($a \le c$ et $b \le d$) et ($c \le a$ et $d \le b$).

        De $a \le c$ et $c \le a$, on déduit $a=c$ (car $\le$ est antisymétrique).

        De $b \le d$ et $d \le b$, on déduit $b=d$.

        Donc $(a,b)=(c,d)$.

    -   **Transitivité :** On suppose $(a,b) \mathcal{R}_2 (c,d)$ et $(c,d) \mathcal{R}_2 (e,f)$. On doit montrer $(a,b) \mathcal{R}_2 (e,f)$.

        Hypothèses : ($a \le c$ et $b \le d$) et ($c \le e$ et $d \le f$).

        Par transitivité de $\le$ sur $\mathbb{N}$, de $a \le c$ et $c \le e$, on déduit $a \le e$.

        De même, de $b \le d$ et $d \le f$, on déduit $b \le f$.

        On a donc bien $a \le e$ et $b \le f$, ce qui signifie $(a,b) \mathcal{R}_2 (e,f)$.

    $\mathcal{R}_2$ est une relation d'ordre.

    **Ordre total ?**

    Un ordre est total si on peut toujours comparer deux éléments. Prenons les éléments $(1,2)$ et $(2,1)$.

    -   A-t-on $(1,2) \mathcal{R}_2 (2,1)$ ? Il faudrait $1 \le 2$ (vrai) ET $2 \le 1$ (faux). Donc non.
    -   A-t-on $(2,1) \mathcal{R}_2 (1,2)$ ? Il faudrait $2 \le 1$ (faux) ET $1 \le 2$ (vrai). Donc non.

    On ne peut comparer ni dans un sens, ni dans l'autre. L'ordre n'est **pas total**, c'est un ordre partiel.

**Réponse :**

1.  $\mathcal{R}_1$ est une relation d'équivalence. La classe d'équivalence de $(2,0)$ est $\text{cl}((2,0)) = \{(k+2, k) \mid k \in \mathbb{N}\}$.
2.  $\mathcal{R}_2$ est une relation d'ordre. Elle n'est pas totale (ordre partiel), par exemple $(1,2)$ et $(2,1)$ ne sont pas comparables.

</details>

## Exercice 9 : [Computationnel - Sous-groupes et Groupes Quotients]

**Problème :** Soit le groupe $(G, \times)$ où $G = \mathbb{Z}/15\mathbb{Z}^* = \{\bar{x} \in \mathbb{Z}/15\mathbb{Z} \mid \text{pgcd}(x, 15)=1 \}$.

1.  Lister les éléments de $G$. Quel est l'ordre de ce groupe ?
2.  Construire la table de multiplication de $G$.
3.  Soit $H = \{\bar{1}, \bar{4}\}$. Montrer que $H$ est un sous-groupe de $G$.
4.  Le groupe $G$ est-il cyclique (engendré par un seul élément) ?

<details>

<summary>Solution</summary>

**Méthode :** On liste d'abord les entiers entre 1 et 14 qui sont premiers avec 15. Ensuite, on calcule tous les produits pour construire la table. On vérifie les propriétés de sous-groupe pour $H$. Pour la cyclicité, on cherche un élément qui engendre tous les autres par ses puissances successives.

**Étapes :**

1.  **Éléments de $G$ :**

    Il faut trouver les entiers $x$ avec $1 \le x < 15$ tels que $\text{pgcd}(x,15)=1$. Comme $15 = 3 \times 5$, il faut que $x$ ne soit ni un multiple de 3, ni un multiple de 5.

    Les nombres à exclure sont : 3, 5, 6, 9, 10, 12.

    Les éléments de $G$ sont donc les classes de : 1, 2, 4, 7, 8, 11, 13, 14.

    $G = \{\bar{1}, \bar{2}, \bar{4}, \bar{7}, \bar{8}, \bar{11}, \bar{13}, \bar{14}\}$.

    Le groupe est d'ordre 8.

2.  **Table de multiplication :**

    On calcule $a \times b \pmod{15}$. Par exemple, $\bar{7} \times \bar{8} = \overline{56} = \overline{3 \times 15 + 11} = \overline{11}$. Notons que $\bar{14} = \overline{-1}$, $\bar{13} = \overline{-2}$, $\bar{11} = \overline{-4}$, $\bar{8} = \overline{-7}$. Cela peut simplifier les calculs.

    <br>

    <table style="text-align:center;">

        <tr><th style="border: 1px solid black; padding: 5px;">×</th><th style="border: 1px solid black; padding: 5px;">1</th><th style="border: 1px solid black; padding: 5px;">2</th><th style="border: 1px solid black; padding: 5px;">4</th><th style="border: 1px solid black; padding: 5px;">7</th><th style="border: 1px solid black; padding: 5px;">8</th><th style="border: 1px solid black; padding: 5px;">11</th><th style="border: 1px solid black; padding: 5px;">13</th><th style="border: 1px solid black; padding: 5px;">14</th></tr>

        <tr><th style="border: 1px solid black; padding: 5px;">1</th><td style="border: 1px solid black; padding: 5px;">1</td><td style="border: 1px solid black; padding: 5px;">2</td><td style="border: 1px solid black; padding: 5px;">4</td><td style="border: 1px solid black; padding: 5px;">7</td><td style="border: 1px solid black; padding: 5px;">8</td><td style="border: 1px solid black; padding: 5px;">11</td><td style="border: 1px solid black; padding: 5px;">13</td><td style="border: 1px solid black; padding: 5px;">14</td></tr>

        <tr><th style="border: 1px solid black; padding: 5px;">2</th><td style="border: 1px solid black; padding: 5px;">2</td><td style="border: 1px solid black; padding: 5px;">4</td><td style="border: 1px solid black; padding: 5px;">8</td><td style="border: 1px solid black; padding: 5px;">14</td><td style="border: 1px solid black; padding: 5px;">1</td><td style="border: 1px solid black; padding: 5px;">7</td><td style="border: 1px solid black; padding: 5px;">11</td><td style="border: 1px solid black; padding: 5px;">13</td></tr>

        <tr><th style="border: 1px solid black; padding: 5px;">4</th><td style="border: 1px solid black; padding: 5px;">4</td><td style="border: 1px solid black; padding: 5px;">8</td><td style="border: 1px solid black; padding: 5px;">1</td><td style="border: 1px solid black; padding: 5px;">13</td><td style="border: 1px solid black; padding: 5px;">2</td><td style="border: 1px solid black; padding: 5px;">14</td><td style="border: 1px solid black; padding: 5px;">7</td><td style="border: 1px solid black; padding: 5px;">11</td></tr>

        <tr><th style="border: 1px solid black; padding: 5px;">7</th><td style="border: 1px solid black; padding: 5px;">7</td><td style="border: 1px solid black; padding: 5px;">14</td><td style="border: 1px solid black; padding: 5px;">13</td><td style="border: 1px solid black; padding: 5px;">4</td><td style="border: 1px solid black; padding: 5px;">11</td><td style="border: 1px solid black; padding: 5px;">2</td><td style="border: 1px solid black; padding: 5px;">1</td><td style="border: 1px solid black; padding: 5px;">8</td></tr>

        <tr><th style="border: 1px solid black; padding: 5px;">8</th><td style="border: 1px solid black; padding: 5px;">8</td><td style="border: 1px solid black; padding: 5px;">1</td><td style="border: 1px solid black; padding: 5px;">2</td><td style="border: 1px solid black; padding: 5px;">11</td><td style="border: 1px solid black; padding: 5px;">4</td><td style="border: 1px solid black; padding: 5px;">13</td><td style="border: 1px solid black; padding: 5px;">14</td><td style="border: 1px solid black; padding: 5px;">7</td></tr>

        <tr><th style="border: 1px solid black; padding: 5px;">11</th><td style="border: 1px solid black; padding: 5px;">11</td><td style="border: 1px solid black; padding: 5px;">7</td><td style="border: 1px solid black; padding: 5px;">14</td><td style="border: 1px solid black; padding: 5px;">2</td><td style="border: 1px solid black; padding: 5px;">13</td><td style="border: 1px solid black; padding: 5px;">1</td><td style="border: 1px solid black; padding: 5px;">8</td><td style="border: 1px solid black; padding: 5px;">4</td></tr>

        <tr><th style="border: 1px solid black; padding: 5px;">13</th><td style="border: 1px solid black; padding: 5px;">13</td><td style="border: 1px solid black; padding: 5px;">11</td><td style="border: 1px solid black; padding: 5px;">7</td><td style="border: 1px solid black; padding: 5px;">1</td><td style="border: 1px solid black; padding: 5px;">14</td><td style="border: 1px solid black; padding: 5px;">8</td><td style="border: 1px solid black; padding: 5px;">4</td><td style="border: 1px solid black; padding: 5px;">2</td></tr>

        <tr><th style="border: 1px solid black; padding: 5px;">14</th><td style="border: 1px solid black; padding: 5px;">14</td><td style="border: 1px solid black; padding: 5px;">13</td><td style="border: 1px solid black; padding: 5px;">11</td><td style="border: 1px solid black; padding: 5px;">8</td><td style="border: 1px solid black; padding: 5px;">7</td><td style="border: 1px solid black; padding: 5px;">4</td><td style="border: 1px solid black; padding: 5px;">2</td><td style="border: 1px solid black; padding: 5px;">1</td></tr>

    </table>

3.  **Sous-groupe $H = \{\bar{1}, \bar{4}\}$ :**
    -   $H$ est non vide.
    -   Stabilité par la loi : il suffit de regarder la sous-table de multiplication pour les éléments de $H$.

        $\bar{1} \times \bar{1} = \bar{1} \in H$

        $\bar{1} \times \bar{4} = \bar{4} \in H$

        $\bar{4} \times \bar{1} = \bar{4} \in H$

        $\bar{4} \times \bar{4} = \overline{16} = \bar{1} \in H$.

        $H$ est stable par multiplication.

    -   Stabilité par l'inverse :

        L'inverse de $\bar{1}$ est $\bar{1} \in H$.

        L'inverse de $\bar{4}$ est $\bar{4}$ (car $\bar{4} \times \bar{4} = \bar{1}$), et $\bar{4} \in H$.

    $H$ est donc un sous-groupe de $G$.

4.  **Cyclicité :**

    On cherche un élément d'ordre 8. Calculons l'ordre de chaque élément (la plus petite puissance $k>0$ telle que $x^k=\bar{1}$).

    -   $\text{ord}(\bar{1}) = 1$.
    -   $\bar{2}^1=\bar{2}, \bar{2}^2=\bar{4}, \bar{2}^3=\bar{8}, \bar{2}^4=\overline{16}=\bar{1}$. $\text{ord}(\bar{2}) = 4$.
    -   $\bar{4}^1=\bar{4}, \bar{4}^2=\bar{1}$. $\text{ord}(\bar{4}) = 2$.
    -   $\bar{7}^1=\bar{7}, \bar{7}^2=\overline{49}=\bar{4}, \bar{7}^3=\bar{7}\cdot\bar{4}=\overline{28}=\overline{13}, \bar{7}^4=(\bar{7}^2)^2=\bar{4}^2=\bar{1}$. $\text{ord}(\bar{7}) = 4$.
    -   $\text{ord}(\bar{8}) = 4$ (similaire à $\bar{2}$).
    -   $\text{ord}(\bar{11}) = 2$ (car $\bar{11}^2 = \overline{121} = \overline{8 \times 15 + 1} = \bar{1}$).
    -   $\text{ord}(\bar{13}) = 4$ (similaire à $\bar{7}$).
    -   $\text{ord}(\bar{14}) = 2$ (car $\bar{14} = \overline{-1}$, donc $(\overline{-1})^2 = \bar{1}$).

    Aucun élément n'est d'ordre 8. Le groupe $G$ n'est **pas cyclique**.

**Réponse :**

1.  $G = \{\bar{1}, \bar{2}, \bar{4}, \bar{7}, \bar{8}, \bar{11}, \bar{13}, \bar{14}\}$. Son ordre est 8.
2.  Voir la table ci-dessus.
3.  $H$ est un sous-groupe de $G$.
4.  Le groupe $G$ n'est pas cyclique.

</details>

## Exercice 10 : [Conceptuel - Idéaux et Anneaux Quotients]

**Problème :** Soit $A = C([0,1], \mathbb{R})$ l'anneau des fonctions continues de $[0,1]$ dans $\mathbb{R}$, muni de l'addition et de la multiplication point par point.

Soit $c \in [0,1]$ un point fixé. On définit l'ensemble $I_c = \{ f \in A \mid f(c) = 0 \}$.

1.  Montrer que $I_c$ est un idéal de $A$.
2.  L'ensemble $J = \{ f \in A \mid f \text{ est une fonction polynomiale} \}$ est-il un idéal de $A$ ? Justifier.

<details>

<summary>Solution</summary>

**Méthode :** Pour montrer que $I_c$ est un idéal, on doit vérifier qu'il est un sous-groupe additif de $A$ et qu'il est absorbant pour la multiplication par n'importe quel élément de $A$.

**Étapes :**

1.  **Montrer que $I_c$ est un idéal :**
    -   **Sous-groupe additif :**

        a) L'élément neutre de l'addition dans $A$ est la fonction nulle, $f_0(x)=0$ pour tout $x$. Comme $f_0(c)=0$, on a $f_0 \in I_c$. Donc $I_c$ n'est pas vide.

        b) Stabilité par addition : Soient $f, g \in I_c$. Cela signifie que $f(c)=0$ et $g(c)=0$. Leur somme est la fonction $f+g$ définie par $(f+g)(x) = f(x)+g(x)$.

           Évaluons en $c$ : $(f+g)(c) = f(c)+g(c) = 0+0 = 0$. Donc $f+g \in I_c$.

        c) Stabilité par opposé : Soit $f \in I_c$. Donc $f(c)=0$. L'opposé de $f$ est la fonction $-f$ définie par $(-f)(x) = -f(x)$.

           Évaluons en $c$ : $(-f)(c) = -f(c) = -0 = 0$. Donc $-f \in I_c$.

        $I_c$ est bien un sous-groupe additif de $A$.

    -   **Stabilité par multiplication externe (absorption) :**

        Soit $f \in I_c$ (donc $f(c)=0$) et soit $h \in A$ une fonction continue quelconque.

        Le produit est la fonction $h \cdot f$ définie par $(h \cdot f)(x) = h(x) \cdot f(x)$.

        Évaluons en $c$ : $(h \cdot f)(c) = h(c) \cdot f(c) = h(c) \cdot 0 = 0$.

        Donc $h \cdot f \in I_c$.

        Cette propriété d'absorption est vérifiée.

    -   **Conclusion :** $I_c$ est un idéal de l'anneau $A$.

2.  **L'ensemble $J$ des fonctions polynomiales est-il un idéal ?**

    L'ensemble $J$ est bien un sous-anneau de $A$ (la somme et le produit de polynômes sont des polynômes, et la fonction constante 1 est un polynôme). Mais est-ce un idéal ?

    Vérifions la propriété d'absorption.

    Prenons une fonction $f \in J$, par exemple $f(x)=1$ pour tout $x \in [0,1]$. C'est bien un polynôme.

    Prenons une fonction $h \in A$ qui n'est pas un polynôme, par exemple $h(x) = e^x$. C'est une fonction continue sur $[0,1]$.

    Calculons le produit $g = h \cdot f$.

    $g(x) = h(x) \cdot f(x) = e^x \cdot 1 = e^x$.

    La fonction $g(x) = e^x$ n'est pas une fonction polynomiale. Donc $g \notin J$.

    La condition d'absorption n'est pas satisfaite. $J$ n'est **pas un idéal** de $A$.

**Réponse :**

1.  $I_c = \{ f \in C([0,1], \mathbb{R}) \mid f(c) = 0 \}$ est un idéal de l'anneau des fonctions continues sur $[0,1]$.
2.  L'ensemble $J$ des fonctions polynomiales sur $[0,1]$ est un sous-anneau mais n'est pas un idéal de $C([0,1], \mathbb{R})$.

</details>