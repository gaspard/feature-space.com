---
id: 08f8e47f
type: exercises
order: 11
title: 'Structures algébriques - exercices (A)'
tags:
  - structures algébriques
  - ensembles
  - applications
  - groupes
  - anneaux
  - corps
  - relations d'équivalence
  - quotients
createdAt: '2025-10-12T15:59:21.285Z'
level: regular
course: Algèbre
courseId: 3b74b601
chapter: 'Structures algébriques'
chapterId: 436c223a
---
# Exercices "Structures algébriques" (A)

## Exercice 1: [Problème de Calcul]

**Problème:** Soient les applications $f: \mathbb{R} \to \mathbb{R}$ et $g: \mathbb{R} \to \mathbb{R}$ définies par $f(x) = 3x - 2$ et $g(x) = x^2 + 1$.

1.  Déterminer l'expression de la composition $g \circ f$.
2.  Déterminer l'expression de la composition $f \circ g$.
3.  Calculer $(g \circ f)(2)$ et $(f \circ g)(2)$. Les compositions sont-elles égales ?

<details>

<summary>Solution</summary>

**Méthode:** Pour trouver l'expression d'une composition d'applications comme $g \circ f$, on applique la définition : $(g \circ f)(x) = g(f(x))$. Cela signifie qu'on remplace d'abord $f(x)$ par son expression, puis on applique l'application $g$ au résultat obtenu. On procède de manière similaire pour $f \circ g$.

**Étapes:**

1.  **Détermination de $g \circ f$:**

    On applique la définition de la composition :

    $(g \circ f)(x) = g(f(x))$.

    On remplace $f(x)$ par son expression, $3x-2$ :

    $(g \circ f)(x) = g(3x - 2)$.

    Maintenant, on applique la définition de $g(y) = y^2 + 1$ en posant $y = 3x-2$ :

    $(g \circ f)(x) = (3x - 2)^2 + 1$.

    On développe l'expression :

    $(g \circ f)(x) = (9x^2 - 12x + 4) + 1 = 9x^2 - 12x + 5$.

2.  **Détermination de $f \circ g$:**

    On applique la définition de la composition :

    $(f \circ g)(x) = f(g(x))$.

    On remplace $g(x)$ par son expression, $x^2+1$ :

    $(f \circ g)(x) = f(x^2 + 1)$.

    Maintenant, on applique la définition de $f(y) = 3y-2$ en posant $y = x^2+1$ :

    $(f \circ g)(x) = 3(x^2 + 1) - 2$.

    On développe l'expression :

    $(f \circ g)(x) = 3x^2 + 3 - 2 = 3x^2 + 1$.

3.  **Calculs et conclusion:**

    On utilise les expressions trouvées :

    Pour $(g \circ f)(2)$ :

    $(g \circ f)(2) = 9(2)^2 - 12(2) + 5 = 9(4) - 24 + 5 = 36 - 24 + 5 = 17$.

    Pour $(f \circ g)(2)$ :

    $(f \circ g)(2) = 3(2)^2 + 1 = 3(4) + 1 = 12 + 1 = 13$.

    Puisque $(g \circ f)(2) = 17$ et $(f \circ g)(2) = 13$, les résultats sont différents. Cela confirme que les applications $g \circ f$ et $f \circ g$ ne sont pas égales. La composition des applications n'est pas commutative en général.

**Réponse:**

1.  $(g \circ f)(x) = 9x^2 - 12x + 5$
2.  $(f \circ g)(x) = 3x^2 + 1$
3.  $(g \circ f)(2) = 17$ et $(f \circ g)(2) = 13$. Les compositions ne sont pas égales.

</details>

## Exercice 2: [Question Conceptuelle]

**Problème:** Soit l'application $f(x) = x^2 - 4x + 5$. Étudier si $f$ est injective, surjective ou bijective dans les cas suivants :

1.  $f_1: \mathbb{R} \to \mathbb{R}$
2.  $f_2: [2, +\infty[ \to \mathbb{R}$
3.  $f_3: [2, +\infty[ \to [1, +\infty[$

<details>

<summary>Solution</summary>

**Méthode:** Pour étudier les propriétés de $f$, il est utile de connaître son graphe. On met l'expression sous forme canonique pour trouver le sommet de la parabole.

$f(x) = (x^2 - 4x + 4) + 1 = (x - 2)^2 + 1$.

C'est une parabole tournée vers le haut, dont le sommet est au point $(2, 1)$. La valeur minimale de $f(x)$ est $1$, atteinte en $x=2$.

**Étapes:**

1.  **Cas 1 : $f_1: \mathbb{R} \to \mathbb{R}$**
    -   **Injectivité :** Une application est injective si des éléments distincts ont des images distinctes. Cherchons deux nombres réels distincts ayant la même image. Par symétrie par rapport à l'axe $x=2$, on peut prendre $x_1 = 1$ et $x_2 = 3$.

        $f_1(1) = (1-2)^2 + 1 = (-1)^2 + 1 = 2$.

        $f_1(3) = (3-2)^2 + 1 = 1^2 + 1 = 2$.

        Puisque $1 \neq 3$ mais $f_1(1) = f_1(3)$, l'application **n'est pas injective**.

    -   **Surjectivité :** Une application est surjective si tout élément de l'ensemble d'arrivée a au moins un antécédent. L'image de $f_1$ est $[1, +\infty[$ car le minimum de la fonction est 1. Un réel comme $y=0 \in \mathbb{R}$ (ensemble d'arrivée) n'a pas d'antécédent, car l'équation $(x-2)^2 + 1 = 0$ n'a pas de solution réelle. L'application **n'est pas surjective**.
    -   **Conclusion :** $f_1$ n'est ni injective, ni surjective, donc non bijective.

2.  **Cas 2 : $f_2: [2, +\infty[ \to \mathbb{R}$**
    -   **Injectivité :** L'ensemble de départ est $[2, +\infty[$. Sur cet intervalle, la fonction $f(x) = (x-2)^2+1$ est strictement croissante. Soient $x_1, x_2 \in [2, +\infty[$ tels que $f_2(x_1) = f_2(x_2)$.

        $(x_1-2)^2 + 1 = (x_2-2)^2 + 1 \implies (x_1-2)^2 = (x_2-2)^2$.

        Comme $x_1, x_2 \ge 2$, on a $x_1-2 \ge 0$ et $x_2-2 \ge 0$. Donc, on peut prendre la racine carrée :

        $x_1-2 = x_2-2 \implies x_1 = x_2$.

        L'application **est injective**.

    -   **Surjectivité :** L'ensemble d'arrivée est $\mathbb{R}$. L'image de $f_2$ sur $[2, +\infty[$ est $[f_2(2), \lim_{x \to \infty} f_2(x)[ = [1, +\infty[$. Un réel comme $y=0$ n'a toujours pas d'antécédent. L'application **n'est pas surjective**.
    -   **Conclusion :** $f_2$ est injective mais pas surjective.

3.  **Cas 3 : $f_3: [2, +\infty[ \to [1, +\infty[$**
    -   **Injectivité :** L'ensemble de départ est le même que pour $f_2$, donc l'application **est injective**.
    -   **Surjectivité :** L'ensemble d'arrivée est $[1, +\infty[$. Comme nous l'avons vu, l'image de $f$ sur l'ensemble de départ $[2, +\infty[$ est exactement $[1, +\infty[$. L'image de l'application est égale à son ensemble d'arrivée. L'application **est surjective**.
    -   **Conclusion :** $f_3$ est injective et surjective, elle **est bijective**.

**Réponse:**

1.  $f_1$: Ni injective, ni surjective.
2.  $f_2$: Injective mais pas surjective.
3.  $f_3$: Bijective.

</details>

## Exercice 3: [Problème de Calcul et Conceptuel]

**Problème:** On définit sur l'ensemble $E = \mathbb{R} \setminus \{-1\}$ une opération binaire $*$ par :

$$ a * b = a + b + ab $$

Étudier si $(E, *)$ est un groupe. L'opération est-elle commutative ?

<details>

<summary>Solution</summary>

**Méthode:** Pour vérifier si $(E, *)$ est un groupe, nous devons vérifier les quatre points suivants :

1.  La loi $*$ est une loi de composition interne sur $E$.
2.  La loi $*$ est associative.
3.  Il existe un élément neutre dans $E$.
4.  Chaque élément de $E$ admet un inverse (symétrique) dans $E$.

Enfin, nous vérifierons la commutativité.

**Étapes:**

1.  **Loi de composition interne :**

    Soient $a, b \in E$. Cela signifie $a \neq -1$ et $b \neq -1$. On doit vérifier que $a*b \neq -1$.

    Supposons par l'absurde que $a*b = -1$.

    $a + b + ab = -1$

    $1 + a + b + ab = 0$

    $(1+a) + b(1+a) = 0$

    $(1+a)(1+b) = 0$

    Ceci implique que $1+a = 0$ ou $1+b = 0$, donc $a = -1$ ou $b = -1$. C'est une contradiction avec le fait que $a, b \in E$.

    Donc, $a*b \neq -1$, et $a*b \in E$. La loi est bien interne.

2.  **Associativité :**

    Soient $a, b, c \in E$.

    $(a * b) * c = (a+b+ab) * c = (a+b+ab) + c + (a+b+ab)c = a+b+c+ab+ac+bc+abc$.

    $a * (b * c) = a * (b+c+bc) = a + (b+c+bc) + a(b+c+bc) = a+b+c+bc+ab+ac+abc$.

    Les deux expressions sont égales, donc la loi **est associative**.

3.  **Élément neutre :**

    On cherche $e \in E$ tel que pour tout $a \in E$, $a * e = a$.

    $a + e + ae = a$

    $e + ae = 0$

    $e(1+a) = 0$

    Puisque $a \in E$, $a \neq -1$, donc $1+a \neq 0$. On peut diviser par $(1+a)$ pour obtenir $e=0$.

    Vérifions que $0$ est bien dans $E$ ($0 \neq -1$) et qu'il est aussi neutre à gauche : $0 * a = 0+a+0a = a$.

    L'élément neutre **est $e=0$**.

4.  **Inverse (symétrique) :**

    Pour un $a \in E$ donné, on cherche $a' \in E$ tel que $a * a' = e = 0$.

    $a + a' + aa' = 0$

    $a'(1+a) = -a$

    Puisque $a \neq -1$, on peut diviser par $1+a$ : $a' = \frac{-a}{1+a}$.

    Pour que $a'$ soit l'inverse de $a$, il doit appartenir à $E$, c'est-à-dire $a' \neq -1$.

    Supposons $a' = -1 \implies \frac{-a}{1+a} = -1 \implies -a = -(1+a) \implies -a = -1-a \implies 0 = -1$, ce qui est impossible.

    Donc $a'$ est toujours différent de $-1$ et appartient à $E$.

    Chaque élément $a \in E$ **admet un inverse**, $a' = \frac{-a}{1+a}$.

5.  **Commutativité :**

    Soient $a, b \in E$.

    $a*b = a+b+ab$.

    $b*a = b+a+ba$.

    Puisque l'addition et la multiplication dans $\mathbb{R}$ sont commutatives, $a*b = b*a$.

    La loi **est commutative**.

**Conclusion:** $(E, *)$ vérifie tous les axiomes d'un groupe (associativité, élément neutre, inverse) et est de plus commutatif.

**Réponse:** Oui, $(E, *)$ est un **groupe abélien (commutatif)**.

</details>

## Exercice 4: [Application]

**Problème:** Soit $G$ l'ensemble des matrices de la forme $M_a = \begin{pmatrix} 1 & a \\ 0 & 1 \end{pmatrix}$ où $a \in \mathbb{R}$. Montrer que $G$, muni de la multiplication matricielle, est un groupe. Est-il abélien ?

<details>

<summary>Solution</summary>

**Méthode:** Nous devons vérifier les axiomes d'un groupe pour $(G, \times)$ où $\times$ est la multiplication matricielle.

**Étapes:**

1.  **Loi de composition interne :**

    Soient $M_a, M_b \in G$, avec $a, b \in \mathbb{R}$.

    $M_a \times M_b = \begin{pmatrix} 1 & a \\ 0 & 1 \end{pmatrix} \begin{pmatrix} 1 & b \\ 0 & 1 \end{pmatrix} = \begin{pmatrix} 1\cdot1+a\cdot0 & 1\cdot b+a\cdot1 \\ 0\cdot1+1\cdot0 & 0\cdot b+1\cdot1 \end{pmatrix} = \begin{pmatrix} 1 & a+b \\ 0 & 1 \end{pmatrix}$.

    Le résultat est une matrice de la forme $M_{a+b}$. Comme $a+b \in \mathbb{R}$, la matrice $M_{a+b}$ appartient à $G$. La multiplication est donc bien une loi de composition interne.

2.  **Associativité :**

    La multiplication des matrices est associative en général. Cette propriété est donc héritée par les matrices de $G$.

    On peut le vérifier explicitement : $(M_a \times M_b) \times M_c = M_{a+b} \times M_c = M_{(a+b)+c}$.

    $M_a \times (M_b \times M_c) = M_a \times M_{b+c} = M_{a+(b+c)}$.

    Comme l'addition dans $\mathbb{R}$ est associative, $(a+b)+c = a+(b+c)$, donc la loi est associative.

3.  **Élément neutre :**

    On cherche une matrice $M_e \in G$ telle que $M_a \times M_e = M_a$ pour tout $a \in \mathbb{R}$.

    $M_a \times M_e = M_{a+e}$. On veut que $M_{a+e} = M_a$, ce qui implique $a+e = a$, donc $e=0$.

    L'élément neutre est $M_0 = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix} = I_2$, la matrice identité, qui appartient bien à $G$.

4.  **Inverse :**

    Pour une matrice $M_a \in G$, on cherche son inverse $M_{a'} \in G$ tel que $M_a \times M_{a'} = M_0$.

    $M_a \times M_{a'} = M_{a+a'}$. On veut que $M_{a+a'} = M_0$, ce qui implique $a+a'=0$, donc $a'=-a$.

    L'inverse de $M_a$ est $M_{-a} = \begin{pmatrix} 1 & -a \\ 0 & 1 \end{pmatrix}$. Comme $-a \in \mathbb{R}$, cet inverse est toujours dans $G$.

5.  **Commutativité :**

    On compare $M_a \times M_b$ et $M_b \times M_a$.

    $M_a \times M_b = M_{a+b}$.

    $M_b \times M_a = M_{b+a}$.

    Puisque l'addition dans $\mathbb{R}$ est commutative ($a+b=b+a$), on a $M_{a+b} = M_{b+a}$.

    Le groupe est donc abélien.

**Conclusion:** $(G, \times)$ satisfait tous les axiomes d'un groupe abélien.

**Réponse:** Oui, $(G, \times)$ est un **groupe abélien**.

</details>

## Exercice 5: [Problème de Calcul]

**Problème:** Soit $(\mathbb{C}^*, \times)$ le groupe des nombres complexes non nuls muni de la multiplication. Montrer que le cercle unité, $U = \{ z \in \mathbb{C} \mid |z| = 1 \}$, est un sous-groupe de $\mathbb{C}^*$.

<details>

<summary>Solution</summary>

**Méthode:** Pour montrer que $U$ est un sous-groupe de $\mathbb{C}^*$, nous allons utiliser la caractérisation des sous-groupes : $U$ est un sous-groupe si et seulement si $U$ est non vide et pour tous $x, y \in U$, on a $x y^{-1} \in U$.

**Étapes:**

1.  **Vérifier que U est non vide :**

    L'élément neutre de $(\mathbb{C}^*, \times)$ est $1$. On vérifie si $1 \in U$.

    Le module de $1$ est $|1| = 1$. Donc $1 \in U$, et $U$ n'est pas vide.

2.  **Utiliser la caractérisation du sous-groupe :**

    Soient $x \in U$ et $y \in U$.

    Par définition, cela signifie que $|x| = 1$ et $|y| = 1$.

    On doit montrer que $x y^{-1} \in U$, c'est-à-dire que $|x y^{-1}| = 1$.

3.  **Calculer le module :**

    On utilise les propriétés du module : $|z_1 z_2| = |z_1| |z_2|$ et $|z^{-1}| = 1/|z|$.

    $|x y^{-1}| = |x| \cdot |y^{-1}| = |x| \cdot \frac{1}{|y|}$.

    Puisque $|x|=1$ et $|y|=1$, on a :

    $|x y^{-1}| = 1 \cdot \frac{1}{1} = 1$.

    La condition est vérifiée.

**Conclusion:**

Puisque $U$ est une partie non vide de $\mathbb{C}^*$ et que pour tous $x,y \in U$, on a $xy^{-1} \in U$, alors $U$ est un sous-groupe de $(\mathbb{C}^*, \times)$.

**Réponse:** L'ensemble $U = \{ z \in \mathbb{C} \mid |z| = 1 \}$ est un **sous-groupe** de $(\mathbb{C}^*, \times)$.

</details>

## Exercice 6: [Question Conceptuelle]

**Problème:** On considère l'ensemble $\mathbb{Z}[\sqrt{2}] = \{ a + b\sqrt{2} \mid a, b \in \mathbb{Z} \}$.

1.  Montrer que $(\mathbb{Z}[\sqrt{2}], +, \times)$ est un anneau commutatif.
2.  Est-ce un anneau intègre ?
3.  Est-ce un corps ?

<details>

<summary>Solution</summary>

**Méthode:** Pour montrer que c'est un anneau, on peut vérifier les axiomes. Une méthode plus rapide est de montrer que c'est un sous-anneau de $(\mathbb{R}, +, \times)$, qui est un anneau connu. Un sous-ensemble est un sous-anneau s'il contient 1, et s'il est stable par soustraction et multiplication.

**Étapes:**

1.  **Montrer que c'est un anneau commutatif :**
    -   $(\mathbb{Z}[\sqrt{2}], +)$ est un sous-groupe de $(\mathbb{R}, +)$.
        -   L'élément neutre $0 = 0+0\sqrt{2}$ est dans $\mathbb{Z}[\sqrt{2}]$.
        -   Soient $x = a+b\sqrt{2}$ et $y = c+d\sqrt{2}$.

        $x-y = (a-c) + (b-d)\sqrt{2}$. Comme $a-c \in \mathbb{Z}$ et $b-d \in \mathbb{Z}$, $x-y \in \mathbb{Z}[\sqrt{2}]$. C'est donc un sous-groupe additif de $\mathbb{R}$. Étant un sous-groupe d'un groupe abélien, il est abélien.

    -   Stabilité par multiplication :

        $x \times y = (a+b\sqrt{2})(c+d\sqrt{2}) = ac + ad\sqrt{2} + bc\sqrt{2} + 2bd = (ac+2bd) + (ad+bc)\sqrt{2}$.

        Comme $ac+2bd \in \mathbb{Z}$ et $ad+bc \in \mathbb{Z}$, le produit $xy$ est dans $\mathbb{Z}[\sqrt{2}]$.

    -   Élément neutre pour la multiplication : $1 = 1 + 0\sqrt{2}$ est dans $\mathbb{Z}[\sqrt{2}]$.
    -   La multiplication est associative et distributive car ce sont des propriétés de la multiplication dans $\mathbb{R}$.
    -   La multiplication est commutative car $(a+b\sqrt{2})(c+d\sqrt{2}) = (c+d\sqrt{2})(a+b\sqrt{2})$.
    -   Conclusion : $\mathbb{Z}[\sqrt{2}]$ est un sous-anneau commutatif de $\mathbb{R}$, donc c'est un **anneau commutatif**.

2.  **Intégrité :**

    Un anneau est intègre s'il est commutatif, non nul, et n'a pas de diviseur de zéro.

    On a déjà montré qu'il est commutatif. $1 \neq 0$.

    Soient $x = a+b\sqrt{2}$ et $y = c+d\sqrt{2}$ deux éléments de $\mathbb{Z}[\sqrt{2}]$ tels que $xy=0$.

    Puisque $\mathbb{Z}[\sqrt{2}]$ est un sous-ensemble de $\mathbb{R}$, et que $\mathbb{R}$ est un corps (donc un anneau intègre), si le produit de deux nombres réels est nul, l'un des deux doit être nul.

    Donc $xy=0 \implies x=0$ ou $y=0$.

    L'anneau **est intègre**.

3.  **Corps :**

    Pour être un corps, tout élément non nul doit avoir un inverse multiplicatif *dans l'anneau lui-même*.

    Considérons l'élément $x = 2 = 2+0\sqrt{2} \in \mathbb{Z}[\sqrt{2}]$. Son inverse dans $\mathbb{R}$ est $1/2$.

    Cherchons si $1/2$ appartient à $\mathbb{Z}[\sqrt{2}]$. On cherche $a, b \in \mathbb{Z}$ tels que $a+b\sqrt{2} = 1/2$.

    Si $b=0$, alors $a=1/2$, ce qui n'est pas un entier.

    Si $b \neq 0$, alors $\sqrt{2} = (1/2 - a)/b$. Le membre de droite serait un nombre rationnel, alors que $\sqrt{2}$ est irrationnel. C'est une contradiction.

    Donc $1/2 \notin \mathbb{Z}[\sqrt{2}]$. L'élément 2 n'a pas d'inverse dans $\mathbb{Z}[\sqrt{2}]$.

    L'anneau **n'est pas un corps**.

**Réponse:**

1.  Oui, $(\mathbb{Z}[\sqrt{2}], +, \times)$ est un anneau commutatif.
2.  Oui, c'est un anneau intègre.
3.  Non, ce n'est pas un corps.

</details>

## Exercice 7: [Problème de Calcul]

**Problème:** On travaille dans le corps fini $(\mathbb{Z}/7\mathbb{Z}, +, \times)$.

1.  Dresser la table de multiplication de $\mathbb{Z}/7\mathbb{Z}$.
2.  Trouver l'inverse multiplicatif de chaque élément non nul.
3.  Résoudre l'équation $\bar{3}x + \bar{5} = \bar{1}$.

<details>

<summary>Solution</summary>

**Méthode:** Les calculs se font modulo 7. Pour trouver l'inverse d'un élément $\bar{a}$, on cherche un élément $\bar{b}$ tel que $\bar{a} \times \bar{b} = \bar{1}$. Pour résoudre l'équation, on isole l'inconnue $x$ en utilisant les opérations du corps.

**Étapes:**

1.  **Table de multiplication de $\mathbb{Z}/7\mathbb{Z}$:**

    Les éléments sont $\{\bar{0}, \bar{1}, \bar{2}, \bar{3}, \bar{4}, \bar{5}, \bar{6}\}$.

| $\times$ | $\bar{0}$ | $\bar{1}$ | $\bar{2}$ | $\bar{3}$ | $\bar{4}$ | $\bar{5}$ | $\bar{6}$ |

| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |

| $\bar{0}$ | $\bar{0}$ | $\bar{0}$ | $\bar{0}$ | $\bar{0}$ | $\bar{0}$ | $\bar{0}$ | $\bar{0}$ |

| $\bar{1}$ | $\bar{0}$ | $\bar{1}$ | $\bar{2}$ | $\bar{3}$ | $\bar{4}$ | $\bar{5}$ | $\bar{6}$ |

| $\bar{2}$ | $\bar{0}$ | $\bar{2}$ | $\bar{4}$ | $\bar{6}$ | $\bar{8}=\bar{1}$ | $\overline{10}=\bar{3}$| $\overline{12}=\bar{5}$|

| $\bar{3}$ | $\bar{0}$ | $\bar{3}$ | $\bar{6}$ | $\bar{9}=\bar{2}$ | $\overline{12}=\bar{5}$| $\overline{15}=\bar{1}$| $\overline{18}=\bar{4}$|

| $\bar{4}$ | $\bar{0}$ | $\bar{4}$ | $\bar{1}$ | $\bar{5}$ | $\overline{16}=\bar{2}$| $\overline{20}=\bar{6}$| $\overline{24}=\bar{3}$|

| $\bar{5}$ | $\bar{0}$ | $\bar{5}$ | $\bar{3}$ | $\bar{1}$ | $\bar{6}$ | $\overline{25}=\bar{4}$| $\overline{30}=\bar{2}$|

| $\bar{6}$ | $\bar{0}$ | $\bar{6}$ | $\bar{5}$ | $\bar{4}$ | $\bar{3}$ | $\bar{2}$ | $\overline{36}=\bar{1}$|

2.  **Inverses multiplicatifs :**

    On cherche dans chaque ligne (sauf la première) où se trouve l'élément $\bar{1}$.

    -   $\bar{1} \times \bar{1} = \bar{1} \implies \bar{1}^{-1} = \bar{1}$
    -   $\bar{2} \times \bar{4} = \bar{1} \implies \bar{2}^{-1} = \bar{4}$ (et $\bar{4}^{-1} = \bar{2}$)
    -   $\bar{3} \times \bar{5} = \bar{1} \implies \bar{3}^{-1} = \bar{5}$ (et $\bar{5}^{-1} = \bar{3}$)
    -   $\bar{6} \times \bar{6} = \bar{1} \implies \bar{6}^{-1} = \bar{6}$

3.  **Résolution de l'équation :**

    On veut résoudre $\bar{3}x + \bar{5} = \bar{1}$.

    On soustrait $\bar{5}$ des deux côtés (ce qui revient à ajouter son opposé, $\bar{2}$) :

    $\bar{3}x + \bar{5} - \bar{5} = \bar{1} - \bar{5}$

    $\bar{3}x = \bar{1} + \bar{2}$

    $\bar{3}x = \bar{3}$

    Maintenant, on multiplie par l'inverse de $\bar{3}$, qui est $\bar{5}$ :

    $\bar{5} \times (\bar{3}x) = \bar{5} \times \bar{3}$

    $(\bar{5} \times \bar{3})x = \bar{1}$

    $\bar{1}x = \bar{1}$

    $x = \bar{1}$

    On peut aussi remarquer à l'étape $\bar{3}x = \bar{3}$ que puisque $\bar{3} \neq \bar{0}$, on peut simplifier par $\bar{3}$ pour obtenir directement $x=\bar{1}$.

**Réponse:**

1.  Voir la table ci-dessus.
2.  $\bar{1}^{-1}=\bar{1}$, $\bar{2}^{-1}=\bar{4}$, $\bar{3}^{-1}=\bar{5}$, $\bar{4}^{-1}=\bar{2}$, $\bar{5}^{-1}=\bar{3}$, $\bar{6}^{-1}=\bar{6}$.
3.  La solution de l'équation est $x = \bar{1}$.

</details>

## Exercice 8: [Application]

**Problème:** Soit l'application $f: (\mathbb{R}, +) \to (\mathbb{C}^*, \times)$ définie par $f(x) = \cos(x) + i\sin(x) = e^{ix}$.

1.  Montrer que $f$ est un morphisme de groupes.
2.  Déterminer le noyau de $f$, noté $\text{Ker}(f)$.
3.  Déterminer l'image de $f$, notée $\text{Im}(f)$. $f$ est-elle injective ? Surjective ?

<details>

<summary>Solution</summary>

**Méthode:**

1. Pour montrer que $f$ est un morphisme de groupes, on doit vérifier que $f(x+y) = f(x) \times f(y)$ pour tous $x, y \in \mathbb{R}$.
2. Le noyau est l'ensemble des $x \in \mathbb{R}$ tels que $f(x)$ est l'élément neutre de $(\mathbb{C}^*, \times)$, c'est-à-dire $f(x)=1$.
3. L'image est l'ensemble des valeurs prises par $f(x)$ lorsque $x$ parcourt $\mathbb{R}$. On conclura sur l'injectivité et la surjectivité à partir du noyau et de l'image.

**Étapes:**

1.  **Vérification du morphisme :**

    Soient $x, y \in \mathbb{R}$.

    $f(x+y) = e^{i(x+y)} = e^{ix} \cdot e^{iy}$.

    Par définition, $f(x) = e^{ix}$ et $f(y) = e^{iy}$.

    Donc, $f(x+y) = f(x) \times f(y)$.

    La propriété est vérifiée, $f$ est bien un **morphisme de groupes**.

2.  **Détermination du noyau :**

    On cherche les $x \in \mathbb{R}$ tels que $f(x)=1$.

    $e^{ix} = 1 \iff \cos(x) + i\sin(x) = 1 + i\cdot 0$.

    Cela est équivalent au système :

    $\begin{cases} \cos(x) = 1 \\ \sin(x) = 0 \end{cases}$

    Cette condition est remplie si et seulement si $x$ est un multiple entier de $2\pi$.

    Donc, $\text{Ker}(f) = \{ 2k\pi \mid k \in \mathbb{Z} \}$.

3.  **Détermination de l'image et propriétés :**
    -   **Image :** L'image de $f$ est l'ensemble des nombres complexes de la forme $e^{ix}$ pour $x \in \mathbb{R}$. Le module de ces nombres est $|e^{ix}| = \sqrt{\cos^2(x)+\sin^2(x)} = 1$.

        L'image est donc l'ensemble des nombres complexes de module 1, c'est-à-dire le cercle unité $U$.

        $\text{Im}(f) = \{ z \in \mathbb{C}^* \mid |z|=1 \}$.

    -   **Injectivité :** Un morphisme est injectif si et seulement si son noyau est réduit à l'élément neutre du groupe de départ. L'élément neutre de $(\mathbb{R}, +)$ est $0$.

        Ici, $\text{Ker}(f) = 2\pi\mathbb{Z}$, qui contient une infinité d'éléments. Le noyau n'est pas $\{0\}$.

        Donc $f$ **n'est pas injective**. Par exemple, $f(0)=1$ et $f(2\pi)=1$.

    -   **Surjectivité :** Un morphisme est surjectif si son image est égale à l'ensemble d'arrivée.

        Ici, $\text{Im}(f) = U$ et l'ensemble d'arrivée est $\mathbb{C}^*$.

        Puisque $U$ est un sous-ensemble strict de $\mathbb{C}^*$ (par exemple, le nombre $2 \in \mathbb{C}^*$ mais $2 \notin U$), l'application $f$ **n'est pas surjective**.

**Réponse:**

1.  $f$ est un morphisme de groupes.
2.  $\text{Ker}(f) = \{ 2k\pi \mid k \in \mathbb{Z} \} = 2\pi\mathbb{Z}$.
3.  $\text{Im}(f) = U = \{ z \in \mathbb{C}^* \mid |z|=1 \}$. L'application n'est ni injective, ni surjective.

</details>

## Exercice 9: [Question Conceptuelle]

**Problème:** Sur l'ensemble $E = \mathbb{R}^2$, on définit la relation $\sim$ par :

$$ (x, y) \sim (x', y') \iff x^2 + y^2 = (x')^2 + (y')^2 $$

1.  Montrer que $\sim$ est une relation d'équivalence.
2.  Décrire géométriquement la classe d'équivalence d'un point $(a, b) \in \mathbb{R}^2$.
3.  Décrire l'ensemble quotient $\mathbb{R}^2 / \sim$.

<details>

<summary>Solution</summary>

**Méthode:** Pour montrer que $\sim$ est une relation d'équivalence, il faut vérifier qu'elle est réflexive, symétrique et transitive. La description géométrique se déduit de l'interprétation de la condition $x^2+y^2=C$.

**Étapes:**

1.  **Vérification de la relation d'équivalence :**
    -   **Réflexivité :** Soit $(x, y) \in \mathbb{R}^2$. On a $x^2+y^2 = x^2+y^2$, donc $(x,y) \sim (x,y)$. La relation est réflexive.
    -   **Symétrie :** Soient $(x, y), (x', y') \in \mathbb{R}^2$ tels que $(x, y) \sim (x', y')$.

        Cela signifie $x^2+y^2 = (x')^2+(y')^2$.

        L'égalité étant symétrique, on peut écrire $(x')^2+(y')^2 = x^2+y^2$, ce qui signifie $(x', y') \sim (x, y)$. La relation est symétrique.

    -   **Transitivité :** Soient $(x, y), (x', y'), (x'', y'') \in \mathbb{R}^2$ tels que $(x, y) \sim (x', y')$ et $(x', y') \sim (x'', y'')$.

        On a $x^2+y^2 = (x')^2+(y')^2$ et $(x')^2+(y')^2 = (x'')^2+(y'')^2$.

        Par transitivité de l'égalité dans $\mathbb{R}$, on en déduit $x^2+y^2 = (x'')^2+(y'')^2$, ce qui signifie $(x, y) \sim (x'', y'')$. La relation est transitive.

    -   **Conclusion :** La relation $\sim$ est bien une relation d'équivalence.

2.  **Description de la classe d'équivalence :**

    La classe d'équivalence d'un point $(a, b)$, notée $\text{cl}(a,b)$, est l'ensemble de tous les points $(x,y)$ tels que $(x,y) \sim (a,b)$.

    C'est donc l'ensemble des points $(x,y)$ vérifiant $x^2+y^2 = a^2+b^2$.

    Géométriquement, l'équation $x^2+y^2 = R^2$ (avec $R \ge 0$) décrit un cercle de centre l'origine $(0,0)$ et de rayon $R$.

    Ici, $R^2 = a^2+b^2$, donc $R = \sqrt{a^2+b^2}$ (la distance du point $(a,b)$ à l'origine).

    -   Si $(a,b) = (0,0)$, la classe d'équivalence est l'ensemble des points $(x,y)$ tels que $x^2+y^2=0$, ce qui n'est possible que si $x=0$ et $y=0$. La classe est donc juste le point $\{(0,0)\}$.
    -   Si $(a,b) \neq (0,0)$, la classe d'équivalence est **le cercle centré à l'origine passant par le point $(a,b)$**.

3.  **Description de l'ensemble quotient :**

    L'ensemble quotient $\mathbb{R}^2 / \sim$ est l'ensemble de toutes les classes d'équivalence.

    D'après la question précédente, les classes d'équivalence sont les cercles centrés à l'origine (plus l'origine elle-même comme un cercle de rayon 0).

    Chaque cercle est entièrement déterminé par son rayon $R \ge 0$. Deux cercles sont distincts si et seulement si leurs rayons sont distincts.

    On peut donc identifier chaque classe d'équivalence avec son rayon $R = \sqrt{x^2+y^2}$. L'ensemble de tous les rayons possibles est l'ensemble des réels positifs ou nuls, $\mathbb{R}_+ = [0, +\infty[$.

    L'ensemble quotient est donc en bijection avec $\mathbb{R}_+$.

**Réponse:**

1.  La relation $\sim$ est réflexive, symétrique et transitive, c'est donc une **relation d'équivalence**.
2.  La classe d'équivalence de $(a, b)$ est **le cercle de centre l'origine et de rayon $\sqrt{a^2+b^2}$**. Si $(a,b)=(0,0)$, c'est le point origine lui-même.
3.  L'ensemble quotient $\mathbb{R}^2/\sim$ peut être identifié à l'ensemble des rayons possibles, c'est-à-dire **l'intervalle $[0, +\infty[$**.

</details>

## Exercice 10: [Problème de Calcul]

**Problème:** On considère l'anneau quotient $A = \mathbb{Z}/10\mathbb{Z}$.

1.  Quels sont les éléments inversibles de cet anneau ? (c'est-à-dire les éléments de $(\mathbb{Z}/10\mathbb{Z})^\times$)
2.  Trouver tous les diviseurs de zéro dans cet anneau.
3.  Calculer $(\bar{3} + \bar{9}) \times \bar{7}$.

<details>

<summary>Solution</summary>

**Méthode:**

1. Un élément $\bar{k}$ dans $\mathbb{Z}/n\mathbb{Z}$ est inversible si et seulement si $k$ et $n$ sont premiers entre eux ($\text{pgcd}(k,n)=1$).
2. Un élément non nul $\bar{a}$ est un diviseur de zéro s'il existe un élément non nul $\bar{b}$ tel que $\bar{a} \times \bar{b} = \bar{0}$. Cela se produit lorsque $\text{pgcd}(a, n) > 1$.
3. Les calculs se font modulo 10.

**Étapes:**

1.  **Éléments inversibles :**

    On cherche les entiers $k \in \{1, 2, ..., 9\}$ tels que $\text{pgcd}(k, 10)=1$.

    - $\text{pgcd}(1, 10) = 1 \implies \bar{1}$ est inversible.
    - $\text{pgcd}(2, 10) = 2 \neq 1$.
    - $\text{pgcd}(3, 10) = 1 \implies \bar{3}$ est inversible.
    - $\text{pgcd}(4, 10) = 2 \neq 1$.
    - $\text{pgcd}(5, 10) = 5 \neq 1$.
    - $\text{pgcd}(6, 10) = 2 \neq 1$.
    - $\text{pgcd}(7, 10) = 1 \implies \bar{7}$ est inversible.
    - $\text{pgcd}(8, 10) = 2 \neq 1$.
    - $\text{pgcd}(9, 10) = 1 \implies \bar{9}$ est inversible.

    Les éléments inversibles sont $\bar{1}, \bar{3}, \bar{7}, \bar{9}$.

2.  **Diviseurs de zéro :**

    Ce sont les éléments non nuls qui ne sont pas inversibles. D'après la question 1, il s'agit des éléments $\bar{k}$ où $k \in \{2, 4, 5, 6, 8\}$.

    Vérifions pour quelques-uns :

    - $\bar{2} \times \bar{5} = \overline{10} = \bar{0}$. Donc $\bar{2}$ et $\bar{5}$ sont des diviseurs de zéro.
    - $\bar{4} \times \bar{5} = \overline{20} = \bar{0}$. Donc $\bar{4}$ est un diviseur de zéro.
    - $\bar{6} \times \bar{5} = \overline{30} = \bar{0}$. Donc $\bar{6}$ est un diviseur de zéro.
    - $\bar{8} \times \bar{5} = \overline{40} = \bar{0}$. Donc $\bar{8}$ est un diviseur de zéro.

    Les diviseurs de zéro sont $\bar{2}, \bar{4}, \bar{5}, \bar{6}, \bar{8}$.

3.  **Calcul :**

    On calcule d'abord la parenthèse :

    $\bar{3} + \bar{9} = \overline{12}$.

    Modulo 10, $\overline{12} = \bar{2}$.

    On calcule ensuite le produit :

    $\bar{2} \times \bar{7} = \overline{14}$.

    Modulo 10, $\overline{14} = \bar{4}$.

    Le résultat est $\bar{4}$.

**Réponse:**

1.  Les éléments inversibles sont $\{\bar{1}, \bar{3}, \bar{7}, \bar{9}\}$.
2.  Les diviseurs de zéro sont $\{\bar{2}, \bar{4}, \bar{5}, \bar{6}, \bar{8}\}$.
3.  $(\bar{3} + \bar{9}) \times \bar{7} = \bar{4}$.

</details>

## Exercice 11: [Application]

**Problème:** Démontrer par récurrence que pour tout entier $n \ge 1$, le nombre $4^n - 1$ est divisible par 3.

<details>

<summary>Solution</summary>

**Méthode:** Nous allons utiliser le principe de récurrence. Soit $P(n)$ la propriété "$4^n - 1$ est divisible par 3". Nous devons prouver l'initialisation (pour $n=1$) et l'hérédité (si $P(k)$ est vraie, alors $P(k+1)$ est vraie).

**Étapes:**

1.  **Initialisation (pour $n=1$) :**

    On vérifie si la propriété $P(1)$ est vraie.

    Pour $n=1$, l'expression est $4^1 - 1 = 3$.

    Le nombre 3 est bien divisible par 3.

    Donc l'initialisation est vérifiée.

2.  **Hérédité :**

    On suppose que la propriété $P(k)$ est vraie pour un certain entier $k \ge 1$.

    C'est l'**hypothèse de récurrence (HR)** : on suppose que $4^k - 1$ est divisible par 3.

    Cela signifie qu'il existe un entier $m$ tel que $4^k - 1 = 3m$, ou encore $4^k = 3m + 1$.

    On doit maintenant démontrer que $P(k+1)$ est vraie, c'est-à-dire que $4^{k+1} - 1$ est divisible par 3.

    On part de l'expression au rang $k+1$ :

    $4^{k+1} - 1 = 4 \times 4^k - 1$.

    On utilise l'hypothèse de récurrence pour remplacer $4^k$ par $3m+1$ :

    $4^{k+1} - 1 = 4 \times (3m + 1) - 1$.

    On développe l'expression :

    $4^{k+1} - 1 = 12m + 4 - 1 = 12m + 3$.

    On met 3 en facteur :

    $4^{k+1} - 1 = 3(4m + 1)$.

    Puisque $m$ est un entier, $4m+1$ est aussi un entier. L'expression $4^{k+1}-1$ est donc bien un multiple de 3.

    L'hérédité est prouvée.

3.  **Conclusion :**

    Par le principe de récurrence, puisque l'initialisation et l'hérédité sont vraies, la propriété $P(n)$ est vraie pour tout entier $n \ge 1$.

**Réponse:** La proposition "$4^n - 1$ est divisible par 3" est **vraie** pour tout entier $n \ge 1$.

</details>

## Exercice 12: [Question Conceptuelle]

**Problème:** Soit l'anneau des polynômes à coefficients réels, $A = \mathbb{R}[X]$. Soit $I$ l'ensemble des polynômes de $A$ qui s'annulent en 5, c'est-à-dire $I = \{ P(X) \in \mathbb{R}[X] \mid P(5) = 0 \}$. Montrer que $I$ est un idéal de $A$.

<details>

<summary>Solution</summary>

**Méthode:** Pour montrer que $I$ est un idéal de l'anneau commutatif $A=\mathbb{R}[X]$, nous devons vérifier deux conditions :

1. $(I, +)$ est un sous-groupe de $(A, +)$.
2. $I$ absorbe la multiplication par n'importe quel élément de $A$.

Une autre méthode est de voir $I$ comme le noyau d'un morphisme d'anneaux.

**Étapes (Méthode 1 : par définition) :**

1.  **Vérifier que $(I, +)$ est un sous-groupe :**
    -   Le polynôme nul, $P_0(X)=0$, est dans $I$ car $P_0(5)=0$. Donc $I$ est non vide.
    -   **Stabilité par addition :** Soient $P(X) \in I$ et $Q(X) \in I$. Cela signifie que $P(5)=0$ et $Q(5)=0$.

        Considérons leur somme $S(X) = P(X)+Q(X)$. On a $S(5) = P(5) + Q(5) = 0 + 0 = 0$. Donc $S(X) \in I$.

    -   **Stabilité par opposé :** Soit $P(X) \in I$, donc $P(5)=0$.

        Considérons son opposé $-P(X)$. On a $(-P)(5) = -P(5) = -0 = 0$. Donc $-P(X) \in I$.

    -   Ces trois points montrent que $(I, +)$ est un sous-groupe de $(\mathbb{R}[X], +)$.

2.  **Vérifier l'absorption par multiplication externe :**

    Soit $P(X) \in I$ (donc $P(5)=0$) et soit $A(X)$ un polynôme quelconque dans $\mathbb{R}[X]$.

    On doit montrer que le produit $A(X) \cdot P(X)$ est dans $I$.

    Calculons la valeur de ce produit en $X=5$ :

    $(A \cdot P)(5) = A(5) \cdot P(5)$.

    Puisque $P(5)=0$, on a :

    $(A \cdot P)(5) = A(5) \cdot 0 = 0$.

    Le polynôme produit s'annule bien en 5, donc il appartient à $I$.

**Conclusion (Méthode 1) :**

Puisque $I$ est un sous-groupe additif de $\mathbb{R}[X]$ et qu'il absorbe la multiplication par tout polynôme de $\mathbb{R}[X]$, $I$ est un idéal de $\mathbb{R}[X]$.

---

**Étapes (Méthode 2 : avec un morphisme) :**

1.  **Définir un morphisme d'anneaux :**

    Considérons l'application "évaluation en 5", notée $\text{ev}_5$, qui va de l'anneau $\mathbb{R}[X]$ dans l'anneau $\mathbb{R}$ :

    $\text{ev}_5: \mathbb{R}[X] \to \mathbb{R}$

    $P(X) \mapsto P(5)$

2.  **Vérifier que c'est un morphisme d'anneaux :**
    -   $\text{ev}_5(P+Q) = (P+Q)(5) = P(5)+Q(5) = \text{ev}_5(P) + \text{ev}_5(Q)$.
    -   $\text{ev}_5(P \cdot Q) = (P \cdot Q)(5) = P(5) \cdot Q(5) = \text{ev}_5(P) \cdot \text{ev}_5(Q)$.
    -   $\text{ev}_5(1) = 1$ (où le 1 à gauche est le polynôme constant 1).

    C'est bien un morphisme d'anneaux.

3.  **Identifier l'idéal comme un noyau :**

    Le noyau de ce morphisme est l'ensemble des polynômes $P(X)$ tels que $\text{ev}_5(P)$ est l'élément neutre de $(\mathbb{R},+)$, c'est-à-dire 0.

    $\text{Ker}(\text{ev}_5) = \{ P(X) \in \mathbb{R}[X] \mid P(5) = 0 \}$.

    Ceci est exactement la définition de l'ensemble $I$.

4.  **Conclusion (Méthode 2) :**

    On sait que le noyau d'un morphisme d'anneaux est toujours un idéal de l'anneau de départ. Puisque $I = \text{Ker}(\text{ev}_5)$, $I$ est un idéal de $\mathbb{R}[X]$.

**Réponse:** L'ensemble $I = \{ P(X) \in \mathbb{R}[X] \mid P(5) = 0 \}$ est bien un **idéal** de $\mathbb{R}[X]$.

</details>
