---
id: 'ac668805'
title: '2 - Exercices: Structures algébriques (intermédiaire)'
layout: '../../../../layouts/Layout.astro'
order: 21
level: intermediate
chapter: Structures algébriques (intermédiaire)
course: Structures algébriques et algèbre bilinéaire
---

# Exercices: Structures algébriques (intermédiaire)

## Exercice 1: Preuve sur la composition d'applications

**Problème:** Soient $E, F, G$ trois ensembles et $f : E \to F$ et $g : F \to G$ deux applications. Démontrez que si la composée $g \circ f$ est injective, alors $f$ est injective. Donnez un contre-exemple pour montrer que $g$ n'est pas nécessairement injective.

<details>
<summary>Solution</summary>

**Méthode:** Pour prouver que $f$ est injective, nous utiliserons la définition de l'injectivité et l'hypothèse que $g \circ f$ est injective. Pour le contre-exemple, nous devons construire des applications $f$ et $g$ simples qui satisfont les conditions mais où $g$ n'est pas injective.

**Étapes:**

1.  **Démonstration de l'injectivité de $f$**:

    - Pour montrer que $f$ est injective, nous devons prouver que pour tous $x_1, x_2 \in E$, si $f(x_1) = f(x_2)$, alors $x_1 = x_2$.
    - Soient $x_1, x_2 \in E$ tels que $f(x_1) = f(x_2)$.
    - Appliquons l'application $g$ aux deux côtés de l'égalité : $g(f(x_1)) = g(f(x_2))$.
    - Par définition de la composition, cela s'écrit $(g \circ f)(x_1) = (g \circ f)(x_2)$.
    - Par hypothèse, $g \circ f$ est injective. Donc, de $(g \circ f)(x_1) = (g \circ f)(x_2)$, nous pouvons conclure que $x_1 = x_2$.
    - Nous avons donc montré que $f(x_1) = f(x_2) \Rightarrow x_1 = x_2$. Par conséquent, $f$ est injective.

2.  **Construction d'un contre-exemple pour $g$**:
    - Nous cherchons $f$ et $g$ telles que $g \circ f$ soit injective mais $g$ ne le soit pas.
    - Pour que $g$ ne soit pas injective, il faut qu'elle associe deux éléments distincts de son domaine $F$ à la même image dans $G$.
    - Pour que $g \circ f$ soit injective, il faut que l'image de $f$, $\text{Im}(f)$, n'inclue pas ces deux éléments distincts qui posent problème à $g$.
    - Soient les ensembles $E = \{1\}$, $F = \{a, b\}$ et $G = \{z\}$.
    - Définissons $f: E \to F$ par $f(1) = a$. Cette application est injective.
    - Définissons $g: F \to G$ par $g(a) = z$ et $g(b) = z$. Cette application n'est pas injective car $a \neq b$ mais $g(a) = g(b)$.
    - Calculons la composée $g \circ f : E \to G$. On a $(g \circ f)(1) = g(f(1)) = g(a) = z$.
    - L'application $g \circ f$ est injective car son ensemble de départ $E$ n'a qu'un seul élément. (Toute fonction définie sur un singleton est injective).
    - Nous avons donc bien un exemple où $g \circ f$ est injective, $f$ est injective, mais $g$ ne l'est pas.

**Réponse:** La preuve montre que l'injectivité de $g \circ f$ implique celle de $f$. Un contre-exemple est donné par $f:\{1\} \to \{a,b\}, f(1)=a$ et $g:\{a,b\} \to \{z\}, g(a)=g(b)=z$. Ici $g \circ f$ est injective mais $g$ ne l'est pas.

</details>

## Exercice 2: Preuve par récurrence forte

**Problème:** Soit la suite $(u_n)_{n \in \mathbb{N}}$ définie par $u_0 = 2$, $u_1 = 3$ et la relation de récurrence $u_{n+2} = 3u_{n+1} - 2u_n$ pour tout $n \ge 0$. Démontrez par récurrence que $u_n = 2^n + 1$ pour tout $n \in \mathbb{N}$.

<details>
<summary>Solution</summary>

**Méthode:** La relation de récurrence faisant intervenir deux termes précédents ($u_{n+1}$ et $u_n$), une récurrence forte (ou une récurrence d'ordre 2) est appropriée. Nous devons vérifier la propriété pour deux cas de base, puis prouver l'hérédité en supposant la propriété vraie jusqu'au rang $n+1$.

**Étapes:**

1.  **Initialisation (Cas de base):** Nous devons vérifier que la formule est vraie pour $n=0$ et $n=1$.

    - Pour $n=0$: $u_0 = 2$. La formule donne $2^0 + 1 = 1 + 1 = 2$. La propriété est vraie pour $n=0$.
    - Pour $n=1$: $u_1 = 3$. La formule donne $2^1 + 1 = 2 + 1 = 3$. La propriété est vraie pour $n=1$.

2.  **Hérédité:** Soit $n \in \mathbb{N}$ fixé. Supposons que la propriété $P(k): "u_k = 2^k + 1"$ est vraie pour tous les entiers $k$ tels que $0 \le k \le n+1$. Montrons que la propriété est vraie au rang $n+2$, c'est-à-dire $u_{n+2} = 2^{n+2} + 1$.

3.  **Calcul:** En utilisant la définition de la suite pour $u_{n+2}$:

    $$
    u_{n+2} = 3u_{n+1} - 2u_n
    $$

4.  **Application de l'hypothèse de récurrence:** Comme $n+1 \ge 1$ et $n \ge 0$, les rangs $n+1$ et $n$ sont couverts par notre hypothèse. Nous pouvons donc remplacer $u_{n+1}$ et $u_n$ par leurs expressions données par la formule :

    $$
    u_{n+2} = 3(2^{n+1} + 1) - 2(2^n + 1)
    $$

5.  **Simplification:**

    $$
    u_{n+2} = 3 \cdot 2^{n+1} + 3 - 2 \cdot 2^n - 2
    $$

    $$
    u_{n+2} = 3 \cdot 2 \cdot 2^n - 2 \cdot 2^n + 1
    $$

    $$
    u_{n+2} = 6 \cdot 2^n - 2 \cdot 2^n + 1
    $$

    $$
    u_{n+2} = (6 - 2) \cdot 2^n + 1
    $$

    $$
    u_{n+2} = 4 \cdot 2^n + 1
    $$

    $$
    u_{n+2} = 2^2 \cdot 2^n + 1
    $$

    $$
    u_{n+2} = 2^{n+2} + 1
    $$

    C'est bien la formule que nous voulions démontrer pour le rang $n+2$.

6.  **Conclusion:** Par le principe de récurrence forte, la propriété $u_n = 2^n + 1$ est vraie pour tout entier naturel $n \in \mathbb{N}$.

**Réponse:** $\forall n \in \mathbb{N}, u_n = 2^n + 1$.

</details>

## Exercice 3: Analyse d'une loi de composition

**Problème:** Sur l'ensemble $E = \mathbb{R} \times \mathbb{R}^*$, on définit la loi de composition interne $*$ par :
$$ (a, b) \* (c, d) = (ad + bc, bd) $$

1.  Étudiez les propriétés de cette loi : est-elle associative ? commutative ?
2.  Admet-elle un élément neutre ? Si oui, lequel ?
3.  Quels sont les éléments inversibles ?
4.  L'ensemble $(E, *)$ forme-t-il un groupe ?

<details>
<summary>Solution</summary>

**Méthode:** Nous allons vérifier chaque propriété en appliquant sa définition formelle à la loi donnée.

**Étapes:**

1.  **Commutativité :** On vérifie si $(a, b) * (c, d) = (c, d) * (a, b)$.

    - $(a, b) * (c, d) = (ad + bc, bd)$
    - $(c, d) * (a, b) = (cb + da, db) = (ad + bc, bd)$
    - Les deux expressions sont égales. La loi $*$ est donc commutative.

2.  **Associativité :** On vérifie si $((a, b) * (c, d)) * (e, f) = (a, b) * ((c, d) * (e, f))$.

    - Côté gauche : $((a, b) * (c, d)) * (e, f) = (ad+bc, bd) * (e, f) = ((ad+bc)f + (bd)e, (bd)f) = (adf + bcf + bde, bdf)$.
    - Côté droit : $(a, b) * ((c, d) * (e, f)) = (a, b) * (cf+de, df) = (a(df) + b(cf+de), b(df)) = (adf + bcf + bde, bdf)$.
    - Les deux expressions sont égales. La loi $*$ est donc associative.

3.  **Élément neutre :** On cherche un élément $(e_1, e_2) \in E$ tel que pour tout $(a, b) \in E$, on ait $(a, b) * (e_1, e_2) = (a, b)$.

    - $(a, b) * (e_1, e_2) = (ae_2 + be_1, be_2)$.
    - On doit donc résoudre le système :
      - $ae_2 + be_1 = a$
      - $be_2 = b$
    - De la deuxième équation, puisque $b \in \mathbb{R}^*$, on a $b \neq 0$, donc on peut simplifier par $b$ pour obtenir $e_2 = 1$.
    - En substituant $e_2=1$ dans la première équation, on a $a(1) + be_1 = a$, ce qui donne $a + be_1 = a$, donc $be_1 = 0$.
    - Puisque $b \neq 0$, on doit avoir $e_1 = 0$.
    - L'élément neutre potentiel est $(0, 1)$. On vérifie qu'il appartient bien à $E$ (c'est le cas car $1 \in \mathbb{R}^*$) et que c'est bien un neutre. Comme la loi est commutative, il suffit de vérifier d'un côté. L'élément neutre est $e = (0, 1)$.

4.  **Éléments inversibles :** Soit $(a, b) \in E$. On cherche un élément $(c, d) \in E$ tel que $(a, b) * (c, d) = (0, 1)$.

    - $(a, b) * (c, d) = (ad + bc, bd) = (0, 1)$.
    - On doit résoudre le système :
      - $ad + bc = 0$
      - $bd = 1$
    - De la deuxième équation, on a $d = 1/b$ (ce qui est possible car $b \neq 0$). Pour que $(c, d) \in E$, il faut que $d \in \mathbb{R}^*$, ce qui est vrai si $b \in \mathbb{R}^*$.
    - En substituant $d=1/b$ dans la première équation : $a(1/b) + bc = 0 \Rightarrow a/b + bc = 0 \Rightarrow bc = -a/b \Rightarrow c = -a/b^2$.
    - L'inverse de $(a, b)$ est donc $(-a/b^2, 1/b)$. Cet élément existe pour tout $(a, b) \in E$ et appartient bien à $E$ car $1/b \in \mathbb{R}^*$.
    - Donc, tous les éléments de $E$ sont inversibles.

5.  **Conclusion sur la structure de groupe :**
    - La loi $*$ est interne sur $E$.
    - Elle est associative.
    - Elle admet un élément neutre $e=(0, 1)$.
    - Tout élément de $E$ admet un inverse.
    - Par conséquent, $(E, *)$ est un groupe. Comme la loi est commutative, c'est un groupe abélien.

**Réponse:** La loi est associative et commutative. L'élément neutre est $(0, 1)$. Tout élément $(a, b) \in E$ est inversible et son inverse est $(-a/b^2, 1/b)$. Oui, $(E, *)$ est un groupe abélien.

</details>

## Exercice 4: Sous-groupe de matrices

**Problème:** Soit $G$ l'ensemble des matrices de rotation plane, $G = \left\{ \begin{pmatrix} \cos a & -\sin a \\ \sin a & \cos a \end{pmatrix} \mid a \in \mathbb{R} \right\}$.

1.  Montrez que $G$ est un sous-groupe du groupe général linéaire $(\text{GL}_2(\mathbb{R}), \times)$.
2.  Ce groupe est-il abélien (commutatif) ?

<details>
<summary>Solution</summary>

**Méthode:** Pour montrer que $G$ est un sous-groupe de $\text{GL}_2(\mathbb{R})$, nous utilisons la caractérisation des sous-groupes : vérifier que $G$ est non vide, stable par multiplication et stable par passage à l'inverse. Pour la commutativité, nous calculons le produit de deux matrices de $G$ dans les deux sens.

**Étapes:**

1.  **Vérification des conditions de sous-groupe:**

    - **Non vide :** Pour $a=0$, la matrice est $\begin{pmatrix} \cos 0 & -\sin 0 \\ \sin 0 & \cos 0 \end{pmatrix} = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix} = I_2$. L'élément neutre de $\text{GL}_2(\mathbb{R})$ est dans $G$, donc $G$ n'est pas vide.
    - **Stabilité par multiplication :** Soient $M_a = \begin{pmatrix} \cos a & -\sin a \\ \sin a & \cos a \end{pmatrix}$ et $M_b = \begin{pmatrix} \cos b & -\sin b \\ \sin b & \cos b \end{pmatrix}$ deux éléments de $G$. Calculons leur produit $M_a M_b$.
      $$
      M_a M_b = \begin{pmatrix} \cos a \cos b - \sin a \sin b & -\cos a \sin b - \sin a \cos b \\ \sin a \cos b + \cos a \sin b & -\sin a \sin b + \cos a \cos b \end{pmatrix}
      $$
      En utilisant les formules d'addition trigonométriques, on reconnaît :
      $$
      M_a M_b = \begin{pmatrix} \cos(a+b) & -\sin(a+b) \\ \sin(a+b) & \cos(a+b) \end{pmatrix}
      $$
      Cette matrice est de la forme requise avec l'angle $a+b$, donc $M_a M_b = M_{a+b} \in G$. La loi est stable.
    - **Stabilité par passage à l'inverse :** Soit $M_a \in G$. Le déterminant de $M_a$ est $\det(M_a) = \cos^2 a - (-\sin a)(\sin a) = \cos^2 a + \sin^2 a = 1$. Puisque le déterminant est non nul, $M_a$ est inversible et appartient bien à $\text{GL}_2(\mathbb{R})$.
      L'inverse d'une matrice $2 \times 2$ $\begin{pmatrix} x & y \\ z & w \end{pmatrix}$ est $\frac{1}{xw-yz} \begin{pmatrix} w & -y \\ -z & x \end{pmatrix}$.
      $$
      (M_a)^{-1} = \frac{1}{1} \begin{pmatrix} \cos a & \sin a \\ -\sin a & \cos a \end{pmatrix} = \begin{pmatrix} \cos(-a) & -\sin(-a) \\ \sin(-a) & \cos(-a) \end{pmatrix}
      $$
      Cette matrice est $M_{-a}$, qui est bien un élément de $G$. $G$ est donc stable par passage à l'inverse.
    - Ayant vérifié les trois conditions, $G$ est un sous-groupe de $\text{GL}_2(\mathbb{R})$.

2.  **Commutativité :**
    - Nous avons vu que $M_a M_b = M_{a+b}$.
    - Calculons $M_b M_a$. Par la même formule, on aura $M_b M_a = M_{b+a}$.
    - Comme l'addition dans $\mathbb{R}$ est commutative, $a+b=b+a$, et donc $M_{a+b} = M_{b+a}$.
    - On en conclut que $M_a M_b = M_b M_a$. Le groupe $G$ est abélien.

**Réponse:**

1.  $G$ est un sous-groupe de $\text{GL}_2(\mathbb{R})$ car il contient l'identité, est stable par produit matriciel et par inversion.
2.  Oui, le groupe $G$ est abélien car $M_a M_b = M_{a+b} = M_{b+a} = M_b M_a$.

</details>

## Exercice 5: Analyse d'une structure d'anneau

**Problème:** Soit l'ensemble $A = \mathbb{Z} \times \mathbb{Z}$. On munit $A$ de deux lois :

- L'addition : $(a, b) + (c, d) = (a+c, b+d)$
- La multiplication : $(a, b) \cdot (c, d) = (ac, bd)$

1. Montrez que $(A, +, \cdot)$ est un anneau commutatif.
2. Cet anneau est-il intègre ?
3. Cet anneau est-il un corps ?

<details>
<summary>Solution</summary>

**Méthode:** Nous vérifions les axiomes de la définition d'un anneau commutatif. Pour déterminer si l'anneau est intègre, on cherche des diviseurs de zéro. Pour déterminer si c'est un corps, on regarde si tous les éléments non nuls sont inversibles.

**Étapes:**

1.  **Vérification des axiomes de l'anneau commutatif :**

    - **$(A, +)$ est un groupe abélien :** L'addition est l'addition usuelle sur $\mathbb{Z} \times \mathbb{Z}$. Elle est associative, commutative, l'élément neutre est $(0, 0)$, et l'inverse de $(a, b)$ est $(-a, -b)$. Donc $(A, +)$ est bien un groupe abélien.
    - **$(A, \cdot)$ est un monoïde commutatif :**
      - La multiplication est associative et commutative car la multiplication dans $\mathbb{Z}$ l'est. Par exemple, $(a,b) \cdot (c,d) = (ac,bd) = (ca,db) = (c,d) \cdot (a,b)$.
      - L'élément neutre pour la multiplication est $(1, 1)$, car $(a, b) \cdot (1, 1) = (a \cdot 1, b \cdot 1) = (a, b)$. Donc $(A, \cdot)$ est un monoïde commutatif.
    - **Distributivité :** On vérifie que $\cdot$ est distributive par rapport à $+$.
      Soient $x=(a,b), y=(c,d), z=(e,f)$.
      $x \cdot (y+z) = (a,b) \cdot (c+e, d+f) = (a(c+e), b(d+f)) = (ac+ae, bd+bf)$.
      $x \cdot y + x \cdot z = (ac, bd) + (ae, bf) = (ac+ae, bd+bf)$.
      L'égalité est vérifiée. La distributivité est satisfaite.
    - Conclusion : $(A, +, \cdot)$ est un anneau commutatif.

2.  **Intégrité de l'anneau :**

    - Un anneau est intègre s'il est non nul et n'a pas de diviseurs de zéro. L'anneau n'est pas nul car $(1,1) \neq (0,0)$.
    - Cherchons des diviseurs de zéro, c'est-à-dire des éléments non nuls $x, y$ tels que $x \cdot y = 0_A = (0,0)$.
    - Soit $x = (1, 0)$ et $y = (0, 1)$. Ces deux éléments sont non nuls.
    - Calculons leur produit : $x \cdot y = (1, 0) \cdot (0, 1) = (1 \cdot 0, 0 \cdot 1) = (0, 0)$.
    - Puisque nous avons trouvé des diviseurs de zéro, l'anneau $A$ n'est pas intègre.

3.  **Structure de corps :**
    - Un corps est un anneau commutatif non nul où tout élément non nul est inversible.
    - Puisque nous avons montré que l'anneau n'est pas intègre, il ne peut pas être un corps (car tout corps est intègre).
    - Alternativement, on peut chercher l'inverse d'un élément non nul, par exemple $(2, 3)$. On cherche $(c, d)$ tel que $(2, 3) \cdot (c, d) = (1, 1)$.
    - Cela donne $(2c, 3d) = (1, 1)$, soit $2c=1$ et $3d=1$. Il n'y a pas de solution pour $c, d$ dans $\mathbb{Z}$. Donc $(2, 3)$ n'est pas inversible.
    - L'anneau n'est pas un corps.

**Réponse:**

1.  $(A, +, \cdot)$ est bien un anneau commutatif.
2.  L'anneau n'est pas intègre car il possède des diviseurs de zéro, par exemple $(1, 0) \cdot (0, 1) = (0, 0)$.
3.  L'anneau n'est pas un corps car la plupart de ses éléments non nuls ne sont pas inversibles (et aussi parce qu'il n'est pas intègre).

</details>

## Exercice 6: Morphisme d'anneaux et noyau

**Problème:** Soit l'anneau des entiers de Gauss $\mathbb{Z}[i] = \{a+bi \mid a, b \in \mathbb{Z}\}$. Soit l'application $\phi: \mathbb{Z}[i] \to \mathbb{Z}/5\mathbb{Z}$ définie par $\phi(a+bi) = \overline{a+2b}$.

1.  Montrez que $\phi$ est un morphisme d'anneaux.
2.  Déterminez le noyau de $\phi$.

<details>
<summary>Solution</summary>

**Méthode:** Pour montrer que $\phi$ est un morphisme d'anneaux, nous devons vérifier qu'il préserve l'addition, la multiplication et l'élément unité. Pour trouver le noyau, nous devons résoudre l'équation $\phi(a+bi) = \bar{0}$ dans $\mathbb{Z}/5\mathbb{Z}$.

**Étapes:**

1.  **Vérification des propriétés du morphisme d'anneaux:**

    - **Préserve l'addition :** Soient $z_1 = a+bi$ et $z_2 = c+di$ dans $\mathbb{Z}[i]$.
      $z_1+z_2 = (a+c) + (b+d)i$.
      $\phi(z_1+z_2) = \overline{(a+c) + 2(b+d)} = \overline{a+c+2b+2d}$.
      $\phi(z_1) + \phi(z_2) = \overline{a+2b} + \overline{c+2d} = \overline{a+2b+c+2d}$.
      Les deux sont égaux, donc $\phi(z_1+z_2) = \phi(z_1) + \phi(z_2)$.
    - **Préserve la multiplication :**
      $z_1 \cdot z_2 = (ac-bd) + (ad+bc)i$.
      $\phi(z_1 \cdot z_2) = \overline{(ac-bd) + 2(ad+bc)} = \overline{ac-bd+2ad+2bc}$.
      $\phi(z_1) \cdot \phi(z_2) = (\overline{a+2b}) \cdot (\overline{c+2d}) = \overline{(a+2b)(c+2d)} = \overline{ac+2ad+2bc+4bd}$.
      Dans $\mathbb{Z}/5\mathbb{Z}$, on a $\bar{4} = \overline{-1}$. Donc $\overline{4bd} = \overline{-bd}$.
      Ainsi, $\phi(z_1) \cdot \phi(z_2) = \overline{ac+2ad+2bc-bd}$.
      Les deux sont égaux, donc $\phi(z_1 \cdot z_2) = \phi(z_1) \cdot \phi(z_2)$.
    - **Préserve l'élément unité :** L'unité de $\mathbb{Z}[i]$ est $1 = 1+0i$. L'unité de $\mathbb{Z}/5\mathbb{Z}$ est $\bar{1}$.
      $\phi(1) = \phi(1+0i) = \overline{1+2(0)} = \bar{1}$.
    - Conclusion : $\phi$ est bien un morphisme d'anneaux.

2.  **Détermination du noyau :**
    - Le noyau de $\phi$, $\text{Ker}(\phi)$, est l'ensemble des $z=a+bi \in \mathbb{Z}[i]$ tels que $\phi(z) = \bar{0}$.
    - $\phi(a+bi) = \overline{a+2b} = \bar{0}$.
    - Cela signifie que $a+2b$ est un multiple de 5, c'est-à-dire $a+2b \equiv 0 \pmod 5$.
    - On peut exprimer $a$ en fonction de $b$ (modulo 5) : $a \equiv -2b \pmod 5$, ou encore $a \equiv 3b \pmod 5$.
    - Cela signifie qu'il existe un entier $k$ tel que $a = 3b + 5k$.
    - Le noyau est donc l'ensemble des nombres complexes $a+bi$ tels que $a,b,k \in \mathbb{Z}$ et $a=3b+5k$.
    - On peut écrire un élément du noyau comme $(3b+5k) + bi = b(3+i) + k(5)$.
    - Ceci décrit l'idéal engendré par les éléments $3+i$ et $5$ dans $\mathbb{Z}[i]$. On peut montrer que cet idéal est en fait engendré par un seul élément, $2-i$ (car $5 = (2-i)(2+i)$ et $3+i = i(1-3i) = i(1- (a-5k)) ...$ la description $a \equiv 3b \pmod 5$ est suffisante).
    - Une autre façon de le voir est que $a+2b \equiv 0 \pmod 5$ est équivalent à $a-3b \equiv 0 \pmod 5$. Or, $a+bi$ est un multiple de $2-i$ si et seulement si $(a+bi)(2+i) = (2a-b) + i(a+2b)$ a une partie imaginaire divisible par 5.

**Réponse:**

1. $\phi$ est un morphisme d'anneaux car il préserve l'addition, la multiplication et l'élément unité.
2. Le noyau de $\phi$ est l'ensemble $\text{Ker}(\phi) = \{a+bi \in \mathbb{Z}[i] \mid a+2b \equiv 0 \pmod 5\}$. C'est l'idéal engendré par $2-i$ (ou $3+i$).

</details>

## Exercice 7: Relation d'équivalence sur des polynômes

**Problème:** Sur l'ensemble des polynômes à coefficients réels $\mathbb{R}[X]$, on définit la relation $\mathcal{R}$ par :
$$ P \mathcal{R} Q \iff P(0) = Q(0) \text{ et } P'(0) = Q'(0) $$

1.  Prouvez que $\mathcal{R}$ est une relation d'équivalence.
2.  Décrivez la classe d'équivalence du polynôme $A(X) = X^3 - 2X + 5$.

<details>
<summary>Solution</summary>

**Méthode:** Nous vérifions les trois propriétés (réflexivité, symétrie, transitivité) pour une relation d'équivalence. Pour décrire la classe d'équivalence, nous identifions les caractéristiques communes de tous les polynômes qui sont en relation avec $A(X)$.

**Étapes:**

1.  **Preuve que $\mathcal{R}$ est une relation d'équivalence :**

    - **Réflexivité :** Pour tout $P \in \mathbb{R}[X]$, on a $P(0)=P(0)$ et $P'(0)=P'(0)$. Donc $P \mathcal{R} P$. La relation est réflexive.
    - **Symétrie :** Soient $P, Q \in \mathbb{R}[X]$ tels que $P \mathcal{R} Q$. Par définition, $P(0) = Q(0)$ et $P'(0) = Q'(0)$. Cela implique que $Q(0) = P(0)$ et $Q'(0) = P'(0)$. Donc $Q \mathcal{R} P$. La relation est symétrique.
    - **Transitivité :** Soient $P, Q, R \in \mathbb{R}[X]$ tels que $P \mathcal{R} Q$ et $Q \mathcal{R} R$.
      - $P \mathcal{R} Q \implies P(0) = Q(0)$ et $P'(0) = Q'(0)$.
      - $Q \mathcal{R} R \implies Q(0) = R(0)$ et $Q'(0) = R'(0)$.
      - Par transitivité de l'égalité dans $\mathbb{R}$, on en déduit que $P(0) = R(0)$ et $P'(0) = R'(0)$.
      - Donc $P \mathcal{R} R$. La relation est transitive.
    - $\mathcal{R}$ est bien une relation d'équivalence.

2.  **Description de la classe d'équivalence de $A(X) = X^3 - 2X + 5$ :**
    - Soit $P(X)$ un polynôme dans la classe d'équivalence de $A(X)$, notée $\text{cl}(A)$. Par définition, $P \mathcal{R} A$.
    - Cela signifie que $P(0) = A(0)$ et $P'(0) = A'(0)$.
    - Calculons les valeurs pour $A(X)$:
      - $A(0) = 0^3 - 2(0) + 5 = 5$.
      - La dérivée de $A(X)$ est $A'(X) = 3X^2 - 2$.
      - $A'(0) = 3(0)^2 - 2 = -2$.
    - Donc, un polynôme $P(X)$ est dans $\text{cl}(A)$ si et seulement si $P(0) = 5$ et $P'(0) = -2$.
    - Écrivons un polynôme général $P(X)$ sous la forme $P(X) = a_0 + a_1 X + a_2 X^2 + \dots + a_n X^n$.
    - On a $P(0) = a_0$. Donc la condition $P(0)=5$ signifie que le terme constant est 5.
    - La dérivée est $P'(X) = a_1 + 2a_2 X + \dots + na_n X^{n-1}$.
    - On a $P'(0) = a_1$. Donc la condition $P'(0)=-2$ signifie que le coefficient de $X$ est -2.
    - La classe d'équivalence de $A(X)$ est donc l'ensemble de tous les polynômes de $\mathbb{R}[X]$ dont le terme constant est 5 et dont le coefficient du terme en $X$ est -2.
    - On peut l'écrire comme :
      $$
      \text{cl}(A) = \{ 5 - 2X + a_2 X^2 + \dots + a_n X^n \mid n \ge 2, a_i \in \mathbb{R} \}
      $$
      ou plus simplement, l'ensemble des polynômes $P(X)$ qui peuvent s'écrire sous la forme $P(X) = 5 - 2X + X^2 Q(X)$ pour un certain $Q(X) \in \mathbb{R}[X]$.

**Réponse:**

1.  La relation $\mathcal{R}$ est réflexive, symétrique et transitive, c'est donc une relation d'équivalence.
2.  La classe d'équivalence de $A(X) = X^3 - 2X + 5$ est l'ensemble de tous les polynômes $P(X)$ de la forme $P(X) = 5 - 2X + \sum_{k=2}^n a_k X^k$.

</details>

## Exercice 8: Preuve sur les sous-groupes

**Problème:** Soit $f: G \to H$ un morphisme de groupes. Soit $K$ un sous-groupe de $H$. Montrez que l'image réciproque de $K$ par $f$, notée $f^{-1}(K) = \{g \in G \mid f(g) \in K\}$, est un sous-groupe de $G$.

<details>
<summary>Solution</summary>

**Méthode:** Nous utilisons la caractérisation des sous-groupes. Nous devons montrer que $f^{-1}(K)$ est non vide, stable par la loi de groupe et stable par passage à l'inverse.

**Étapes:**

1.  **Vérifier que $f^{-1}(K)$ est non vide:**

    - Soit $e_G$ l'élément neutre de $G$ et $e_H$ celui de $H$.
    - Comme $f$ est un morphisme de groupes, on a $f(e_G) = e_H$.
    - Comme $K$ est un sous-groupe de $H$, il contient l'élément neutre $e_H$. Donc $e_H \in K$.
    - Puisque $f(e_G) = e_H \in K$, par définition de l'image réciproque, $e_G \in f^{-1}(K)$.
    - Donc, $f^{-1}(K)$ n'est pas vide.

2.  **Vérifier la stabilité par la loi de groupe:**

    - Soient $g_1, g_2 \in f^{-1}(K)$.
    - Par définition, cela signifie que $f(g_1) \in K$ et $f(g_2) \in K$.
    - Nous devons montrer que $g_1 g_2 \in f^{-1}(K)$, c'est-à-dire que $f(g_1 g_2) \in K$.
    - Puisque $f$ est un morphisme, $f(g_1 g_2) = f(g_1) f(g_2)$.
    - Or, $f(g_1) \in K$ et $f(g_2) \in K$. Comme $K$ est un sous-groupe, il est stable par la loi de groupe de $H$.
    - Donc, le produit $f(g_1) f(g_2)$ est un élément de $K$.
    - Ainsi, $f(g_1 g_2) \in K$, ce qui prouve que $g_1 g_2 \in f^{-1}(K)$.

3.  **Vérifier la stabilité par passage à l'inverse:**

    - Soit $g \in f^{-1}(K)$. Cela signifie que $f(g) \in K$.
    - Nous devons montrer que $g^{-1} \in f^{-1}(K)$, c'est-à-dire que $f(g^{-1}) \in K$.
    - Puisque $f$ est un morphisme, $f(g^{-1}) = (f(g))^{-1}$.
    - Or, $f(g) \in K$. Comme $K$ est un sous-groupe, il est stable par passage à l'inverse.
    - Donc, l'inverse $(f(g))^{-1}$ est un élément de $K$.
    - Ainsi, $f(g^{-1}) \in K$, ce qui prouve que $g^{-1} \in f^{-1}(K)$.

4.  **Conclusion:** $f^{-1}(K)$ est un sous-ensemble non vide de $G$, stable par multiplication et par inversion. C'est donc un sous-groupe de $G$.

**Réponse:** L'ensemble $f^{-1}(K)$ est un sous-groupe de $G$.

</details>

## Exercice 9: Idéal dans un anneau de fonctions

**Problème:** Soit $A = C([0, 1], \mathbb{R})$ l'anneau des fonctions continues de l'intervalle $[0, 1]$ dans $\mathbb{R}$, muni de l'addition et de la multiplication point par point.
Soit $I = \{f \in A \mid f(1/2) = 0\}$. Montrez que $I$ est un idéal de $A$.

<details>
<summary>Solution</summary>

**Méthode:** Pour montrer que $I$ est un idéal de l'anneau commutatif $A$, nous devons vérifier deux conditions :

1. $I$ est un sous-groupe de $(A, +)$.
2. $I$ est absorbant pour la multiplication : pour toute fonction $g \in A$ et toute fonction $f \in I$, le produit $g \cdot f$ est dans $I$.

**Étapes:**

1.  **Vérifier que $(I, +)$ est un sous-groupe de $(A, +)$:**

    - **Non vide :** La fonction nulle, $f_0(x) = 0$ pour tout $x \in [0, 1]$, est continue et vérifie $f_0(1/2) = 0$. Donc la fonction nulle est dans $I$, et $I$ n'est pas vide.
    - **Stabilité par addition :** Soient $f_1, f_2 \in I$. Cela signifie que $f_1(1/2) = 0$ et $f_2(1/2) = 0$. La somme est la fonction $f_1+f_2$ définie par $(f_1+f_2)(x) = f_1(x) + f_2(x)$.
      Évaluons en $x=1/2$ : $(f_1+f_2)(1/2) = f_1(1/2) + f_2(1/2) = 0 + 0 = 0$.
      Donc $f_1+f_2 \in I$.
    - **Stabilité par opposé :** Soit $f \in I$. Donc $f(1/2)=0$. L'opposé de $f$ est la fonction $-f$ définie par $(-f)(x) = -f(x)$.
      Évaluons en $x=1/2$ : $(-f)(1/2) = -f(1/2) = -0 = 0$.
      Donc $-f \in I$.
    - Ces trois points montrent que $I$ est un sous-groupe de $(A, +)$.

2.  **Vérifier la propriété d'absorption :**

    - Soit $f \in I$ et $g \in A$.
    - Par définition, $f(1/2)=0$. La fonction $g$ est une fonction continue quelconque de $A$.
    - Nous devons montrer que le produit $g \cdot f$ est dans $I$. Le produit est la fonction définie par $(g \cdot f)(x) = g(x)f(x)$.
    - Évaluons ce produit en $x=1/2$ :
      $$
      (g \cdot f)(1/2) = g(1/2) \cdot f(1/2)
      $$
    - Puisque $f(1/2) = 0$, on a :
      $$
      (g \cdot f)(1/2) = g(1/2) \cdot 0 = 0
      $$
    - La fonction $g \cdot f$ s'annule en $1/2$. Étant un produit de fonctions continues, elle est aussi continue. Donc $g \cdot f \in I$.
    - La propriété d'absorption est vérifiée.

3.  **Conclusion:** $I$ est un sous-groupe additif de $A$ et il est absorbant pour la multiplication. Par conséquent, $I$ est un idéal de l'anneau $A$.

**Réponse:** L'ensemble $I = \{f \in C([0, 1], \mathbb{R}) \mid f(1/2) = 0\}$ est un idéal de l'anneau des fonctions continues sur $[0, 1]$.

</details>

## Exercice 10: Groupe des unités d'un anneau quotient

**Problème:** On considère l'anneau $(\mathbb{Z}/10\mathbb{Z}, +, \cdot)$.

1.  Déterminez l'ensemble des diviseurs de zéro de cet anneau.
2.  Déterminez l'ensemble $(\mathbb{Z}/10\mathbb{Z})^\times$ des éléments inversibles (les unités) de cet anneau.
3.  Montrez que $((\mathbb{Z}/10\mathbb{Z})^\times, \cdot)$ est un groupe et donnez sa table de multiplication.

<details>
<summary>Solution</summary>

**Méthode:** Les éléments de $\mathbb{Z}/10\mathbb{Z}$ sont les classes $\bar{k}$ pour $k \in \{0, ..., 9\}$. Un élément $\bar{k}$ est un diviseur de zéro s'il est non nul et s'il existe $\bar{m} \neq \bar{0}$ tel que $\bar{k}\bar{m}=\bar{0}$. Un élément $\bar{k}$ est inversible si $\text{pgcd}(k, 10)=1$. Une fois les unités trouvées, on vérifie que c'est un groupe en construisant sa table de multiplication.

**Étapes:**

1.  **Diviseurs de zéro :** On cherche les $\bar{k} \neq \bar{0}$ pour lesquels il existe $\bar{m} \neq \bar{0}$ tel que $km \equiv 0 \pmod{10}$.

    - $\bar{2} \cdot \bar{5} = \overline{10} = \bar{0}$. Donc $\bar{2}$ et $\bar{5}$ sont des diviseurs de zéro.
    - $\bar{4} \cdot \bar{5} = \overline{20} = \bar{0}$. Donc $\bar{4}$ est un diviseur de zéro.
    - $\bar{6} \cdot \bar{5} = \overline{30} = \bar{0}$. Donc $\bar{6}$ est un diviseur de zéro.
    - $\bar{8} \cdot \bar{5} = \overline{40} = \bar{0}$. Donc $\bar{8}$ est un diviseur de zéro.
    - Les diviseurs de zéro sont les $\bar{k}$ où $\text{pgcd}(k, 10) \neq 1$ et $k \not\equiv 0 \pmod{10}$.
    - L'ensemble des diviseurs de zéro est $\{\bar{2}, \bar{4}, \bar{5}, \bar{6}, \bar{8}\}$.

2.  **Éléments inversibles (unités) :** Les unités de $\mathbb{Z}/n\mathbb{Z}$ sont les classes $\bar{k}$ telles que $\text{pgcd}(k, n) = 1$. Ici $n=10$.

    - $\text{pgcd}(1, 10) = 1 \implies \bar{1}$ est une unité.
    - $\text{pgcd}(2, 10) = 2 \neq 1$.
    - $\text{pgcd}(3, 10) = 1 \implies \bar{3}$ est une unité.
    - $\text{pgcd}(4, 10) = 2 \neq 1$.
    - $\text{pgcd}(5, 10) = 5 \neq 1$.
    - $\text{pgcd}(6, 10) = 2 \neq 1$.
    - $\text{pgcd}(7, 10) = 1 \implies \bar{7}$ est une unité.
    - $\text{pgcd}(8, 10) = 2 \neq 1$.
    - $\text{pgcd}(9, 10) = 1 \implies \bar{9}$ est une unité.
    - L'ensemble des unités est $(\mathbb{Z}/10\mathbb{Z})^\times = \{\bar{1}, \bar{3}, \bar{7}, \bar{9}\}$.

3.  **Structure de groupe et table de multiplication :**
    - L'ensemble des unités d'un anneau forme toujours un groupe pour la multiplication. Montrons-le en construisant la table.
    - La table de multiplication pour $(\mathbb{Z}/10\mathbb{Z})^\times$:
      - $\bar{3} \cdot \bar{3} = \bar{9}$
      - $\bar{3} \cdot \bar{7} = \overline{21} = \bar{1}$
      - $\bar{3} \cdot \bar{9} = \overline{27} = \bar{7}$
      - $\bar{7} \cdot \bar{7} = \overline{49} = \bar{9}$
      - $\bar{7} \cdot \bar{9} = \overline{63} = \bar{3}$
      - $\bar{9} \cdot \bar{9} = \overline{81} = \bar{1}$

| $\times$  | $\bar{1}$ | $\bar{3}$ | $\bar{7}$ | $\bar{9}$ |
| --------- | --------- | --------- | --------- | --------- |
| $\bar{1}$ | $\bar{1}$ | $\bar{3}$ | $\bar{7}$ | $\bar{9}$ |
| $\bar{3}$ | $\bar{3}$ | $\bar{9}$ | $\bar{1}$ | $\bar{7}$ |
| $\bar{7}$ | $\bar{7}$ | $\bar{1}$ | $\bar{9}$ | $\bar{3}$ |
| $\bar{9}$ | $\bar{9}$ | $\bar{7}$ | $\bar{3}$ | $\bar{1}$ |

    -   La table montre que l'opération est interne. L'associativité est héritée de l'anneau. L'élément neutre est $\bar{1}$. Chaque élément a un inverse : $\bar{1}^{-1}=\bar{1}$, $\bar{3}^{-1}=\bar{7}$, $\bar{7}^{-1}=\bar{3}$, $\bar{9}^{-1}=\bar{9}$.
    -   C'est donc bien un groupe.

**Réponse:**

1.  Les diviseurs de zéro sont $\{\bar{2}, \bar{4}, \bar{5}, \bar{6}, \bar{8}\}$.
2.  L'ensemble des unités est $(\mathbb{Z}/10\mathbb{Z})^\times = \{\bar{1}, \bar{3}, \bar{7}, \bar{9}\}$.
3.  $((\mathbb{Z}/10\mathbb{Z})^\times, \cdot)$ est un groupe dont la table de multiplication est donnée ci-dessus.

</details>

## Exercice 11: Application à la cryptographie

**Problème:** Dans un système cryptographique simplifié de type RSA, la clé publique d'Alice est $(n, e) = (55, 3)$ et sa clé privée est $d=27$. Le chiffrement d'un message $M$ est $C \equiv M^e \pmod n$ et le déchiffrement de $C$ est $M \equiv C^d \pmod n$.

1.  Bob veut envoyer le message $M=8$ à Alice. Calculez le message chiffré $C$.
2.  Alice reçoit le message chiffré $C=27$. Déchiffrez-le pour retrouver le message original $M$.

<details>
<summary>Solution</summary>

**Méthode:** Il s'agit d'appliquer les formules de chiffrement et de déchiffrement en utilisant l'arithmétique modulaire, c'est-à-dire les calculs dans l'anneau $\mathbb{Z}/55\mathbb{Z}$. Pour calculer les puissances, on peut utiliser des décompositions astucieuses pour simplifier les calculs.

**Étapes:**

1.  **Chiffrement de $M=8$ :**

    - On doit calculer $C \equiv 8^3 \pmod{55}$.
    - $8^2 = 64$. Modulo 55, $64 \equiv 9 \pmod{55}$.
    - $8^3 = 8^2 \cdot 8 \equiv 9 \cdot 8 \pmod{55}$.
    - $9 \cdot 8 = 72$.
    - $72 = 55 + 17$, donc $72 \equiv 17 \pmod{55}$.
    - Le message chiffré est $C=17$.

2.  **Déchiffrement de $C=27$ :**
    - On doit calculer $M \equiv 27^{27} \pmod{55}$.
    - C'est une grande puissance, il faut la calculer par étapes. On utilise l'exponentiation rapide (ou binaire).
    - On décompose l'exposant 27 en somme de puissances de 2 : $27 = 16 + 8 + 2 + 1$.
    - On calcule les puissances successives de 27 modulo 55 :
      - $27^1 \equiv 27 \pmod{55}$
      - $27^2 = 729$. On divise 729 par 55. $729 = 13 \times 55 + 14$. Donc $27^2 \equiv 14 \pmod{55}$.
      - $27^4 \equiv (27^2)^2 \equiv 14^2 = 196$. On divise 196 par 55. $196 = 3 \times 55 + 31$. Donc $27^4 \equiv 31 \pmod{55}$.
      - $27^8 \equiv (27^4)^2 \equiv 31^2 = 961$. On divise 961 par 55. $961 = 17 \times 55 + 26$. Donc $27^8 \equiv 26 \pmod{55}$.
      - $27^{16} \equiv (27^8)^2 \equiv 26^2 = 676$. On divise 676 par 55. $676 = 12 \times 55 + 16$. Donc $27^{16} \equiv 16 \pmod{55}$.
    - Maintenant, on recombine les résultats :
      $$
      27^{27} \equiv 27^{16} \cdot 27^8 \cdot 27^2 \cdot 27^1 \pmod{55}
      $$
      $$
      \equiv 16 \cdot 26 \cdot 14 \cdot 27 \pmod{55}
      $$
    - Calculons par paires :
      - $16 \cdot 26 = 416$. On divise 416 par 55. $416 = 7 \times 55 + 31$. Donc $16 \cdot 26 \equiv 31 \pmod{55}$.
      - $14 \cdot 27 = 378$. On divise 378 par 55. $378 = 6 \times 55 + 48$. Donc $14 \cdot 27 \equiv 48 \pmod{55}$.
      - Il reste à calculer $31 \cdot 48 \pmod{55}$.
      - $31 \cdot 48 = 1488$. On divise 1488 par 55. $1488 = 27 \times 55 + 3$.
      - Donc $1488 \equiv 3 \pmod{55}$.
    - Le message original était $M=3$.

**Réponse:**

1.  Le message chiffré correspondant à $M=8$ est $C=17$.
2.  Le message original correspondant au chiffré $C=27$ est $M=3$.

</details>
