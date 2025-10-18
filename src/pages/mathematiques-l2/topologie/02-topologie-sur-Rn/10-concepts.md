---
id: 3ce7c5c4
type: concepts
order: 10
title: Topologie sur Rn
tags:
  - Topologie
  - Espaces vectoriels normés
  - Ensembles ouverts
  - Ensembles fermés
  - Compacité
  - Suites de Cauchy
course: Topologie
courseId: 34e61f8e
chapter: Topologie sur Rn
chapterId: 3c3b95a8
level: regular
createdAt: '2025-10-12T14:36:44.756Z'
---
# Topologie sur Rn (A)

---

## Concept 1: Boules Ouvertes et Boules Fermées

### Prérequis

- **Espace vectoriel $\mathbb{R}^n$**: Connaissance de l'addition de vecteurs et de la multiplication par un scalaire.
- **Norme sur $\mathbb{R}^n$**: Savoir ce qu'est une norme (axiomes de séparation, d'homogénéité et inégalité triangulaire) et connaître les exemples classiques ($\|\cdot\|_1, \|\cdot\|_2, \|\cdot\|_\infty$).
- **Distance associée à une norme**: Comprendre que toute norme $N$ induit une distance $d_N(x, y) = N(x - y)$.

### Définition

Soit $N$ une norme sur l'espace vectoriel $\mathbb{R}^n$. Soit $x$ un point (ou vecteur) de $\mathbb{R}^n$ et $r$ un nombre réel strictement positif ($r > 0$).

1.  La **boule ouverte** de centre $x$ et de rayon $r$ pour la norme $N$ est l'ensemble des points de $\mathbb{R}^n$ dont la distance à $x$ est *strictement inférieure* à $r$. On la note $B_N(x, r)$ :

    $$

    B_N(x, r) = \{z \in \mathbb{R}^n : d_N(z, x) < r\} = \{z \in \mathbb{R}^n : N(z - x) < r\}

    $$

2.  La **boule fermée** de centre $x$ et de rayon $r$ pour la norme $N$ est l'ensemble des points de $\mathbb{R}^n$ dont la distance à $x$ est *inférieure ou égale* à $r$. On la note $B_N^f(x, r)$ :

    $$

    B_N^f(x, r) = \{z \in \mathbb{R}^n : d_N(z, x) \le r\} = \{z \in \mathbb{R}^n : N(z - x) \le r\}

    $$

**Explication détaillée**: Les boules sont les "briques" fondamentales de la topologie. Elles généralisent la notion d'intervalle sur la droite réelle. Un intervalle ouvert $]a, b[$ est en fait une boule ouverte de centre $c = \frac{a+b}{2}$ et de rayon $r = \frac{b-a}{2}$ pour la norme valeur absolue : $\{x \in \mathbb{R} : |x-c| < r\}$. De même, l'intervalle fermé $[a,b]$ est une boule fermée. Dans $\mathbb{R}^n$, la "forme" géométrique d'une boule dépend crucialement de la norme utilisée.

### Propriétés Clés

- **Structure**: Une boule est toujours définie par trois éléments : une norme $N$, un centre $x \in \mathbb{R}^n$ et un rayon $r > 0$.
- **Inclusion**: Pour un même centre et une même norme, une boule de rayon $r_1$ est incluse dans une boule de rayon $r_2$ si $r_1 \le r_2$. Plus précisément, $B_N(x, r_1) \subset B_N(x, r_2)$ si $r_1 < r_2$ et $B_N^f(x, r_1) \subset B_N^f(x, r_2)$ si $r_1 \le r_2$.
- **Relation entre boule ouverte et fermée**: La boule fermée contient la boule ouverte de même centre et rayon. La différence entre les deux est l'ensemble des points situés à une distance *exactement* égale à $r$ du centre, que l'on appelle la **sphère** de centre $x$ et de rayon $r$:

  $$

  S_N(x, r) = \{z \in \mathbb{R}^n : d_N(z, x) = r\}

  $$

  On a alors $B_N^f(x, r) = B_N(x, r) \cup S_N(x, r)$.

### Exemples

**Exemple 1 : Boule pour la norme euclidienne ($N = \|\cdot\|_2$) dans $\mathbb{R}^2$**

Considérons la boule ouverte $B_2(\begin{pmatrix} 1 \\ 2 \end{pmatrix}, 3)$. C'est l'ensemble des points $(x, y) \in \mathbb{R}^2$ tels que :

$$

\left\| \begin{pmatrix} x \\ y \end{pmatrix} - \begin{pmatrix} 1 \\ 2 \end{pmatrix} \right\|_2 < 3 \iff \sqrt{(x-1)^2 + (y-2)^2} < 3 \iff (x-1)^2 + (y-2)^2 < 9

$$

C'est l'intérieur d'un disque de centre $(1, 2)$ et de rayon $3$. La frontière (le cercle) n'est pas incluse.

**Exemple 2 : Boule pour la norme 1 ($N = \|\cdot\|_1$) dans $\mathbb{R}^2$**

Considérons la boule fermée $B_1^f(\begin{pmatrix} 0 \\ 0 \end{pmatrix}, 1)$. C'est l'ensemble des points $(x, y) \in \mathbb{R}^2$ tels que :

$$

\left\| \begin{pmatrix} x \\ y \end{pmatrix} - \begin{pmatrix} 0 \\ 0 \end{pmatrix} \right\|_1 \le 1 \iff |x| + |y| \le 1

$$

Cet ensemble est un carré dont les sommets sont $(1,0), (0,1), (-1,0)$ et $(0,-1)$. Il est orienté comme un losange.

**Exemple 3 : Boule pour la norme infinie ($N = \|\cdot\|_\infty$) dans $\mathbb{R}^2$**

Considérons la boule fermée $B_\infty^f(\begin{pmatrix} 0 \\ 0 \end{pmatrix}, 1)$. C'est l'ensemble des points $(x, y) \in \mathbb{R}^2$ tels que :

$$

\left\| \begin{pmatrix} x \\ y \end{pmatrix} - \begin{pmatrix} 0 \\ 0 \end{pmatrix} \right\|_\infty \le 1 \iff \max(|x|, |y|) \le 1 \iff |x| \le 1 \text{ et } |y| \le 1

$$

Cet ensemble est le carré $[-1, 1] \times [-1, 1]$, c'est-à-dire un carré dont les côtés sont parallèles aux axes de coordonnées.

### Contre-exemples

1.  **Ensemble non borné**: Le demi-plan $P = \{(x, y) \in \mathbb{R}^2 : x > 0\}$ n'est pas une boule. On ne peut pas l'enfermer dans un cercle de rayon fini centré en un point quelconque.
2.  **Forme incorrecte**: Dans $\mathbb{R}^2$ avec la norme euclidienne $\|\cdot\|_2$, l'intérieur d'une ellipse qui n'est pas un cercle, par exemple l'ensemble $E = \{(x, y) \in \mathbb{R}^2 : \frac{x^2}{4} + y^2 < 1\}$, n'est pas une boule *pour la norme euclidienne*. Pour aucune norme standard, une forme arbitraire ne constituera une boule.

### Concepts Liés

- **Convergence de suites**: La notion de boule simplifie la définition de la convergence. Une suite $(x^k)_{k \in \mathbb{N}}$ d'éléments de $\mathbb{R}^n$ converge vers $a \in \mathbb{R}^n$ pour la norme $N$ si et seulement si, pour tout $\varepsilon > 0$, tous les termes de la suite à partir d'un certain rang sont dans la boule ouverte $B_N(a, \varepsilon)$.

  $$

  (x^k) \to a \iff \forall \varepsilon > 0, \exists k_\varepsilon \in \mathbb{N}, \forall k \ge k_\varepsilon, x^k \in B_N(a, \varepsilon).

  $$

- **Ensembles ouverts et fermés**: Les boules ouvertes et fermées sont les exemples prototypiques d'ensembles ouverts et fermés, qui sont les notions centrales de la topologie.

---

## Concept 2: Ensembles Ouverts

### Prérequis

- **Boules ouvertes**: La définition des ensembles ouverts repose entièrement sur celle des boules ouvertes.
- **Logique et théorie des ensembles**: Maîtrise des quantificateurs ($\forall, \exists$) et des opérations ensemblistes (union $\cup$, intersection $\cap$).

### Définition

Soit $N$ une norme sur $\mathbb{R}^n$. Un sous-ensemble $U \subset \mathbb{R}^n$ est dit **ouvert** (relativement à la norme $N$) si pour chaque point $x$ appartenant à $U$, il existe un rayon $r > 0$ (qui peut dépendre de $x$) tel que la boule ouverte de centre $x$ et de rayon $r$ soit entièrement incluse dans $U$.

Formellement :

$$

U \text{ est ouvert} \iff \forall x \in U, \exists r > 0, B_N(x, r) \subset U.

$$

**Explication détaillée**: Un ensemble est ouvert s'il ne contient aucun point de sa "frontière". Autour de chaque point d'un ensemble ouvert, on peut trouver un petit "espace de sécurité" (une boule ouverte) qui est encore entièrement contenu dans l'ensemble. Si vous êtes sur un point $x$ dans un ouvert $U$, vous pouvez bouger un tout petit peu dans n'importe quelle direction sans quitter $U$.

### Propriétés Clés

- **Indépendance de la norme**: En dimension finie (sur $\mathbb{R}^n$), toutes les normes sont équivalentes. Une conséquence majeure est que la nature "ouverte" d'un ensemble **ne dépend pas** de la norme choisie. Si un ensemble est ouvert pour la norme euclidienne, il le sera aussi pour la norme 1, la norme infinie, ou toute autre norme.
- **Stabilité par opérations ensemblistes**:
    1.  Toute **union** (finie ou infinie) d'ensembles ouverts est un ensemble ouvert.
    2.  Toute **intersection finie** d'ensembles ouverts est un ensemble ouvert.
- **Exemples fondamentaux**:
    - L'ensemble vide $\emptyset$ est ouvert (la condition est trivialement satisfaite car il n'y a aucun point $x$ à vérifier).
    - L'espace entier $\mathbb{R}^n$ est ouvert (pour tout $x \in \mathbb{R}^n$, n'importe quelle boule $B_N(x, r)$ est incluse dans $\mathbb{R}^n$).
    - Toute boule ouverte $B_N(x, r)$ est un ensemble ouvert.

### Exemples

**Exemple 1 : Une boule ouverte est un ouvert**

Soit $U = B_N(a, R)$ une boule ouverte. Pour montrer que $U$ est un ensemble ouvert, prenons un point quelconque $x \in U$. Par définition, $d_N(x, a) < R$. Posons $\delta = R - d_N(x, a)$. On a $\delta > 0$. Montrons que la boule $B_N(x, \delta)$ est incluse dans $U$. Pour tout $y \in B_N(x, \delta)$, on a $d_N(y, x) < \delta$. Par l'inégalité triangulaire :

$$

d_N(y, a) \le d_N(y, x) + d_N(x, a) < \delta + d_N(x, a) = (R - d_N(x, a)) + d_N(x, a) = R.

$$

Donc $d_N(y, a) < R$, ce qui signifie que $y \in U$. Ainsi, $B_N(x, \delta) \subset U$, et $U$ est bien un ouvert.

**Exemple 2 : Un demi-plan strict**

L'ensemble $P = \{(x_1, x_2) \in \mathbb{R}^2 : x_1 > 0\}$ est un ouvert de $\mathbb{R}^2$.

Soit $a = (a_1, a_2)$ un point de $P$. On a donc $a_1 > 0$. Choisissons le rayon $r = a_1$. Montrons que la boule (pour la norme infinie $\|\cdot\|_\infty$ pour simplifier) $B_\infty(a, r)$ est incluse dans $P$.

Soit $x = (x_1, x_2) \in B_\infty(a, r)$. Cela signifie que $\max(|x_1 - a_1|, |x_2 - a_2|) < r = a_1$.

En particulier, $|x_1 - a_1| < a_1$, ce qui implique $-a_1 < x_1 - a_1 < a_1$. L'inégalité de gauche donne $0 < x_1$. Donc tout point $x$ de cette boule a sa première coordonnée strictement positive, et appartient donc à $P$. $P$ est bien un ouvert.

**Exemple 3 : Le complémentaire d'une droite**

L'ensemble $U = \mathbb{R}^2 \setminus \{(x, y) : x=y\}$ est un ouvert.

Soit $a = (a_1, a_2) \in U$, on a donc $a_1 \ne a_2$. La distance (euclidienne) du point $a$ à la droite d'équation $y=x$ est $d = \frac{|a_1 - a_2|}{\sqrt{2}}$. Posons $r = d/2$. La boule ouverte $B_2(a, r)$ ne rencontre pas la droite $y=x$ et est donc entièrement incluse dans $U$.

### Contre-exemples

1.  **Intersection infinie d'ouverts**: Considérons dans $\mathbb{R}$ l'intersection des ouverts $U_n = ]-1/n, 1/n[$ pour tout entier $n \ge 1$.

    $$

    \bigcap_{n=1}^\infty U_n = \bigcap_{n=1}^\infty \left]- \frac{1}{n}, \frac{1}{n}\right[ = \{0\}

    $$

    L'ensemble résultant est le singleton $\{0\}$, qui n'est pas un ouvert dans $\mathbb{R}$ (toute boule ouverte centrée en 0 contient des points non nuls).

2.  **Un ensemble avec sa frontière**: Un intervalle semi-ouvert comme $I = [0, 1[$ dans $\mathbb{R}$ n'est pas ouvert. Le point $0$ est dans $I$. Mais pour tout $r>0$, la boule ouverte $B(0, r) = ]-r, r[$ contient des points négatifs qui ne sont pas dans $I$. Il est donc impossible de trouver une boule centrée en 0 et incluse dans $I$.

### Concepts Liés

- **Ensembles fermés**: Un ensemble est fermé si son complémentaire est ouvert. C'est la notion "duale" de celle d'ouvert.
- **Intérieur d'un ensemble**: L'intérieur d'un ensemble $A$ est le plus grand ouvert contenu dans $A$. C'est une façon de "retirer" la frontière d'un ensemble pour ne garder que la partie ouverte.

---

## Concept 3: Ensembles Fermés et Caractérisation Séquentielle

### Prérequis

- **Ensembles ouverts**: La définition d'un ensemble fermé repose sur celle d'un ensemble ouvert.
- **Suites convergentes**: La caractérisation séquentielle des fermés est un outil essentiel qui lie la topologie à l'analyse des suites.

### Définition

Soit $N$ une norme sur $\mathbb{R}^n$. Un sous-ensemble $F \subset \mathbb{R}^n$ est dit **fermé** si son complémentaire, $\mathbb{R}^n \setminus F$, est un ensemble ouvert.

**Explication détaillée**: Intuitivement, un ensemble fermé est un ensemble qui contient tous ses "points limites". Si l'on prend une suite de points à l'intérieur d'un ensemble fermé et que cette suite converge, alors sa limite doit aussi appartenir à l'ensemble. On ne peut pas "s'échapper" d'un ensemble fermé par un processus de limite.

**Attention !** Un ensemble n'est pas une porte : il n'est pas forcément "ouvert" ou "fermé".

- $\mathbb{R}^n$ et $\emptyset$ sont à la fois ouverts et fermés.
- L'intervalle $[0, 1[$ dans $\mathbb{R}$ n'est ni ouvert, ni fermé.

### Propriétés Clés

- **Indépendance de la norme**: Tout comme pour les ouverts, la nature "fermée" d'un ensemble dans $\mathbb{R}^n$ ne dépend pas de la norme choisie.
- **Stabilité par opérations ensemblistes**: (Par passage au complémentaire des propriétés des ouverts, via les lois de De Morgan)
    1.  Toute **intersection** (finie ou infinie) d'ensembles fermés est un ensemble fermé.
    2.  Toute **union finie** d'ensembles fermés est un ensemble fermé.
- **Exemples fondamentaux**:
    - $\emptyset$ et $\mathbb{R}^n$ sont fermés.
    - Toute boule fermée $B_N^f(x, r)$ est un ensemble fermé.
- **Caractérisation séquentielle de la fermeture (Proposition 2.15)**: C'est un outil extrêmement puissant et pratique. Un ensemble $F \subset \mathbb{R}^n$ est fermé si et seulement si pour toute suite $(x^k)_{k \in \mathbb{N}}$ d'éléments de $F$ qui converge vers une limite $x \in \mathbb{R}^n$, cette limite $x$ appartient nécessairement à $F$.

  $$

  F \text{ est fermé} \iff \left( \forall (x^k) \in F^\mathbb{N}, \text{ si } x^k \to x \text{ alors } x \in F \right)

  $$

### Exemples

**Exemple 1 : Un singleton est un fermé**

Soit $F = \{a\}$ un ensemble contenant un seul point de $\mathbb{R}^n$. Montrons qu'il est fermé avec la caractérisation séquentielle.

Soit $(x^k)$ une suite d'éléments de $F$ qui converge vers une limite $x$.

Puisque $x^k \in F$ pour tout $k$, on a $x^k = a$ pour tout $k$. C'est une suite constante.

La limite d'une suite constante est l'élément constant lui-même, donc $x = \lim_{k \to \infty} x^k = a$.

La limite $x$ est bien dans $F$. Donc, $F$ est un fermé.

**Exemple 2 : Une boule fermée est un fermé**

Soit $F = B_N^f(a, R) = \{z \in \mathbb{R}^n : N(z-a) \le R\}$. Montrons que $F$ est fermé.

Soit $(x^k)$ une suite de points de $F$ qui converge vers $x \in \mathbb{R}^n$.

Pour tout $k$, on a $N(x^k - a) \le R$.

La fonction $z \mapsto N(z-a)$ est continue (car la norme l'est). Comme $x^k \to x$, on a $N(x^k-a) \to N(x-a)$.

Par passage à la limite dans les inégalités, l'inégalité large est préservée :

$$

\lim_{k \to \infty} N(x^k - a) \le R \implies N(x - a) \le R

$$

Cela signifie que $x \in F$. Donc $F$ est un fermé.

**Exemple 3 : L'ensemble $\{(x, y) \in \mathbb{R}^2 : \sin(x) + \cos(y) \le 1\}$ est fermé**

Soit $F = \{(x, y) \in \mathbb{R}^2 : \sin(x) + \cos(y) \le 1\}$.

Soit $((x_k, y_k))_{k \in \mathbb{N}}$ une suite de points dans $F$ qui converge vers $(x,y) \in \mathbb{R}^2$.

Pour tout $k$, on a $\sin(x_k) + \cos(y_k) \le 1$.

La convergence de $(x_k, y_k)$ vers $(x,y)$ signifie que $x_k \to x$ et $y_k \to y$.

Les fonctions sinus et cosinus sont continues. Donc, $\sin(x_k) \to \sin(x)$ et $\cos(y_k) \to \cos(y)$.

Par passage à la limite dans l'inégalité, on obtient :

$$

\lim_{k \to \infty} (\sin(x_k) + \cos(y_k)) \le 1 \implies \sin(x) + \cos(y) \le 1

$$

La limite $(x,y)$ vérifie la condition, donc $(x,y) \in F$. L'ensemble $F$ est fermé.

### Contre-exemples

1.  **Union infinie de fermés**: Considérons dans $\mathbb{R}$ l'union des fermés $F_n = [0, 1 - 1/n]$ pour tout entier $n \ge 2$.

    $$

    \bigcup_{n=2}^\infty F_n = \bigcup_{n=2}^\infty \left[0, 1 - \frac{1}{n}\right] = [0, 1[

    $$

    L'ensemble résultant est $[0, 1[$, qui n'est pas fermé car il ne contient pas sa "limite" 1. La suite $x_k = 1 - 1/k$ est dans l'ensemble pour $k \ge 2$, mais sa limite $1$ n'y est pas.

2.  **Une boule ouverte n'est pas fermée**: Soit $U = B_2(0, 1)$ le disque unité ouvert dans $\mathbb{R}^2$. Considérons la suite de points $x^k = (1 - 1/k, 0)$. Chaque point $x^k$ est dans $U$ car $\|x^k\|_2 = 1 - 1/k < 1$. Cette suite converge vers $x=(1,0)$. Or, $\|x\|_2=1$, donc $x$ n'appartient pas à $U$. Nous avons trouvé une suite de points de $U$ dont la limite n'est pas dans $U$, donc $U$ n'est pas fermé.

### Concepts Liés

- **Ensembles ouverts**: La notion duale, définie par le passage au complémentaire.
- **Adhérence d'un ensemble**: L'adhérence de $A$ est le plus petit fermé qui contient $A$.
- **Parties compactes**: Dans $\mathbb{R}^n$, un ensemble compact est nécessairement fermé (et borné).

---

## Concept 4: Intérieur, Adhérence et Frontière

### Prérequis

- **Ensembles ouverts et fermés**: Ces notions sont directement utilisées dans les définitions.
- **Boules ouvertes**: La définition de l'intérieur et de l'adhérence repose sur les boules.

### Définition

Soit $A$ une partie de $\mathbb{R}^n$.

1.  **Intérieur**: Un point $x \in \mathbb{R}^n$ est un **point intérieur** à $A$ s'il existe une boule ouverte centrée en $x$ entièrement contenue dans $A$. L'**intérieur** de $A$, noté $\mathring{A}$, est l'ensemble de tous ses points intérieurs.

    $$

    \mathring{A} = \{ x \in A \mid \exists r > 0, B_N(x,r) \subset A \}

    $$

2.  **Adhérence**: Un point $x \in \mathbb{R}^n$ est un **point adhérent** à $A$ si toute boule ouverte centrée en $x$ rencontre $A$ (c'est-à-dire, a une intersection non vide avec $A$). L'**adhérence** de $A$, notée $\bar{A}$, est l'ensemble de tous ses points adhérents.

    $$

    \bar{A} = \{ x \in \mathbb{R}^n \mid \forall r > 0, B_N(x,r) \cap A \neq \emptyset \}

    $$

3.  **Frontière**: La **frontière** de $A$, notée $\partial A$ ou $\text{Fr}(A)$, est l'ensemble des points qui sont adhérents à la fois à $A$ et à son complémentaire $\mathbb{R}^n \setminus A$. C'est l'ensemble des points "sur le bord" de $A$.

    $$

    \partial A = \bar{A} \cap \overline{(\mathbb{R}^n \setminus A)} = \bar{A} \setminus \mathring{A}

    $$

### Propriétés Clés

- **Nature des ensembles**:
    - $\mathring{A}$ est toujours un ensemble ouvert. C'est le plus grand ouvert contenu dans $A$.
    - $\bar{A}$ est toujours un ensemble fermé. C'est le plus petit fermé contenant $A$.
- **Caractérisation des ouverts et fermés**:
    - Un ensemble $A$ est ouvert si et seulement si $A = \mathring{A}$.
    - Un ensemble $A$ est fermé si et seulement si $A = \bar{A}$.
- **Inclusions**: Pour tout ensemble $A$, on a $\mathring{A} \subseteq A \subseteq \bar{A}$.
- **Caractérisation séquentielle de l'adhérence**: Un point $x$ est dans l'adhérence $\bar{A}$ si et seulement s'il existe une suite d'éléments de $A$ qui converge vers $x$.

  $$

  \bar{A} = \{ x \in \mathbb{R}^n \mid \exists (x^k) \in A^\mathbb{N}, x^k \to x \}

  $$

- **Lien avec le complémentaire**: $\overline{(\mathbb{R}^n \setminus A)} = \mathbb{R}^n \setminus \mathring{A}$ et $\mathring{(\mathbb{R}^n \setminus A)} = \mathbb{R}^n \setminus \bar{A}$.

### Exemples

**Exemple 1 : L'intervalle semi-ouvert $A = [0, 1[$ dans $\mathbb{R}$**

- **Intérieur $\mathring{A}$**: Un point $x \in A$ est intérieur si on peut trouver un intervalle ouvert $]x-r, x+r[$ dans $A$. C'est possible pour tous les points de $]0,1[$. Mais pour $x=0$, tout intervalle $]-r,r[$ contient des nombres négatifs non dans $A$. Donc $\mathring{A} = ]0, 1[$.
- **Adhérence $\bar{A}$**: On cherche les limites de suites de points de $A$. Tous les points de $A$ sont limites de suites constantes. Le point $1$ est la limite de la suite $x_k = 1 - 1/k$, qui est dans $A$. Donc $1 \in \bar{A}$. Le point $0$ est aussi dans $\bar{A}$. On trouve $\bar{A} = [0, 1]$.
- **Frontière $\partial A$**: $\partial A = \bar{A} \setminus \mathring{A} = [0,1] \setminus ]0,1[ = \{0, 1\}$.

**Exemple 2 : L'ensemble des rationnels $A = \mathbb{Q}$ dans $\mathbb{R}$**

- **Intérieur $\mathring{A}$**: Soit $q \in \mathbb{Q}$. Toute boule ouverte (intervalle) $]q-r, q+r[$ contient des nombres irrationnels. Il est donc impossible de trouver une boule incluse dans $\mathbb{Q}$. Donc $\mathring{\mathbb{Q}} = \emptyset$.
- **Adhérence $\bar{A}$**: On sait que tout nombre réel est la limite d'une suite de nombres rationnels (par exemple, ses approximations décimales). Donc $\bar{\mathbb{Q}} = \mathbb{R}$.
- **Frontière $\partial A$**: $\partial A = \bar{A} \setminus \mathring{A} = \mathbb{R} \setminus \emptyset = \mathbb{R}$.

**Exemple 3 : Le disque unité ouvert $A = B_2(0,1)$ dans $\mathbb{R}^2$**

- **Intérieur $\mathring{A}$**: $A$ est un ensemble ouvert, donc $\mathring{A} = A = B_2(0,1)$.
- **Adhérence $\bar{A}$**: L'adhérence est la boule fermée $B_2^f(0,1)$. Tout point sur le cercle unité est limite de points du disque ouvert (par ex, $(1,0)$ est la limite de $(1-1/k, 0)$).
- **Frontière $\partial A$**: $\partial A = \bar{A} \setminus \mathring{A} = B_2^f(0,1) \setminus B_2(0,1) = \{ (x,y) \in \mathbb{R}^2 : x^2+y^2 = 1 \}$. C'est le cercle unité.

### Contre-exemples

1.  **Point non intérieur**: Pour $A = [0, 1]$, le point $x=1$ n'est pas un point intérieur. Toute boule $B(1,r)=]1-r, 1+r[$ contient des points plus grands que 1, qui ne sont pas dans $A$.
2.  **Point non adhérent**: Pour $A = [0, 1]$, le point $x=2$ n'est pas un point adhérent. La boule $B(2, 0.5)=]1.5, 2.5[$ ne contient aucun point de $A$.

### Concepts Liés

- **Parties denses**: Une partie $A$ est dense dans $B$ si $B \subseteq \bar{A}$. La notion d'adhérence est donc centrale pour définir la densité.
- **Continuité des fonctions**: L'image réciproque d'un ouvert par une fonction continue est un ouvert. L'image réciproque d'un fermé est un fermé. L'adhérence et l'intérieur sont des outils clés pour étudier ces propriétés.

---

## Concept 5: Parties Denses

### Prérequis

- **Adhérence d'un ensemble**: La définition de la densité est $B \subseteq \bar{A}$.
- **Caractérisation séquentielle de l'adhérence**: Très utile pour démontrer la densité.

### Définition

Soient $A$ et $B$ deux parties de $\mathbb{R}^n$ telles que $A \subset B$. On dit que l'ensemble $A$ est **dense** dans l'ensemble $B$ si l'adhérence de $A$ contient $B$. Formellement :

$$

A \text{ est dense dans } B \iff B \subseteq \bar{A}.

$$

Le cas le plus courant est celui où $B = \mathbb{R}^n$. On dit alors que $A$ est dense dans $\mathbb{R}^n$ si $\bar{A} = \mathbb{R}^n$.

**Explication détaillée**: Dire que $A$ est dense dans $B$ signifie que les points de $A$ sont "suffisamment nombreux et bien répartis" pour que l'on puisse approcher n'importe quel point de $B$ d'aussi près que l'on veut par des points de $A$. Tout point de $B$ est soit dans $A$, soit une "limite" de points de $A$.

### Propriétés Clés

- **Caractérisation séquentielle de la densité**: Une partie $A \subset B$ est dense dans $B$ si et seulement si, pour tout élément $b \in B$, il existe une suite $(a^k)_{k \in \mathbb{N}}$ d'éléments de $A$ qui converge vers $b$.

  $$

  A \text{ dense dans } B \iff \forall b \in B, \exists (a^k) \in A^\mathbb{N} \text{ telle que } a^k \to b.

  $$

- **Caractérisation par les boules**: $A$ est dense dans $\mathbb{R}^n$ si et seulement si toute boule ouverte non vide de $\mathbb{R}^n$ contient au moins un point de $A$.
- **Transitivité**: Si $A$ est dense dans $B$ et $B$ est dense dans $C$, alors $A$ est dense dans $C$.

### Exemples

**Exemple 1 : $\mathbb{Q}$ est dense dans $\mathbb{R}$**

C'est l'exemple le plus célèbre. Pour tout nombre réel $x$ et tout $\varepsilon > 0$, l'intervalle $]x-\varepsilon, x+\varepsilon[$ contient au moins un nombre rationnel. De façon équivalente, tout réel $x$ peut être écrit comme la limite d'une suite de rationnels (par exemple, la suite de ses approximations décimales tronquées). Par exemple, pour $\pi = 3.14159...$, la suite $(3, 3.1, 3.14, 3.141, ...)$ est une suite de rationnels qui converge vers $\pi$. Donc $\bar{\mathbb{Q}} = \mathbb{R}$.

**Exemple 2 : $\mathbb{Q}^n$ est dense dans $\mathbb{R}^n$**

Soit $x = (x_1, \dots, x_n)$ un point quelconque de $\mathbb{R}^n$. Pour chaque coordonnée $x_i$, puisque $\mathbb{Q}$ est dense dans $\mathbb{R}$, il existe une suite de rationnels $(q_i^k)_{k \in \mathbb{N}}$ qui converge vers $x_i$.

Considérons la suite de points de $\mathbb{Q}^n$ définie par $q^k = (q_1^k, \dots, q_n^k)$.

Un vecteur-suite converge si et seulement si chacune de ses composantes converge. Comme $q_i^k \to x_i$ pour tout $i=1,\dots,n$, la suite $(q^k)$ converge vers $x$.

Nous avons donc montré que tout point de $\mathbb{R}^n$ est la limite d'une suite de points de $\mathbb{Q}^n$. Donc $\overline{\mathbb{Q}^n} = \mathbb{R}^n$.

**Exemple 3 : L'ensemble des nombres irrationnels est dense dans $\mathbb{R}$**

Soit $A = \mathbb{R} \setminus \mathbb{Q}$. Pour tout réel $x$, la suite $x_k = x + \frac{\sqrt{2}}{k}$ est une suite de nombres irrationnels (si $x$ est rationnel, la somme est irrationnelle ; si $x$ est irrationnel, la somme est irrationnelle) qui converge vers $x$. Donc $\bar{A} = \mathbb{R}$.

### Contre-exemples

1.  **L'ensemble des entiers $\mathbb{Z}$ n'est pas dense dans $\mathbb{R}$**.

    L'adhérence de $\mathbb{Z}$ est $\mathbb{Z}$ lui-même (car $\mathbb{Z}$ est un ensemble fermé). On a $\bar{\mathbb{Z}} = \mathbb{Z} \neq \mathbb{R}$. Par exemple, il est impossible d'approcher le réel $0.5$ par une suite d'entiers. La boule ouverte $]0.2, 0.8[$ ne contient aucun entier.

2.  **Un sous-espace strict n'est pas dense**.

    La droite $D = \{(x, 0) \in \mathbb{R}^2\}$ n'est pas dense dans $\mathbb{R}^2$. C'est un sous-espace vectoriel de dimension 1, qui est un ensemble fermé. Son adhérence est donc lui-même, $\bar{D} = D \neq \mathbb{R}^2$. Le point $(0,1)$ ne peut pas être approché par une suite de points de $D$.

### Concepts Liés

- **Analyse numérique et approximation**: La densité est le fondement théorique de nombreuses méthodes d'approximation. Par exemple, le fait que les polynômes soient denses dans l'espace des fonctions continues (théorème de Weierstrass) permet d'approcher n'importe quelle fonction continue par un polynôme.

---

## Concept 6: Parties Compactes (Théorème de Heine-Borel)

### Prérequis

- **Ensembles fermés et bornés**: Ces deux notions sont les ingrédients de la caractérisation des compacts dans $\mathbb{R}^n$.
- **Suites, sous-suites et convergence**: La définition fondamentale de la compacité est séquentielle.

### Définition

1.  **Partie Bornée**: Une partie $A \subset \mathbb{R}^n$ est dite **bornée** s'il existe un réel $R > 0$ tel qu'elle soit entièrement contenue dans la boule (ouverte ou fermée) de centre l'origine et de rayon $R$.

    $$

    A \text{ est bornée} \iff \exists R > 0, A \subset B_N(0, R).

    $$

    Cette propriété ne dépend pas de la norme choisie sur $\mathbb{R}^n$.

2.  **Partie Compacte (Définition de Bolzano-Weierstrass)**: Une partie $K \subset \mathbb{R}^n$ est dite **compacte** si de toute suite d'éléments de $K$, on peut extraire une sous-suite qui converge vers une limite **appartenant à $K$**.

**Explication détaillée**: La compacité est une notion plus forte que "fermé" ou "borné". C'est une propriété "d'autorégulation" pour les suites. Si vous avez une suite de points dans un compact, même si elle "saute" partout (ne converge pas), vous pouvez toujours trouver une sous-suite (une sélection infinie de ses termes) qui, elle, se "calme" et converge vers un point du compact.

### Propriétés Clés

- **Théorème de Heine-Borel (Caractérisation dans $\mathbb{R}^n$)**: C'est le résultat le plus important concernant la compacité dans $\mathbb{R}^n$.

  > Un sous-ensemble de $\mathbb{R}^n$ est **compact** si et seulement si il est **fermé** et **borné**.

- **Conséquences de la définition**:
    - Toute partie compacte est nécessairement **fermée**. (Si une suite de $K$ converge vers $x$, la définition du compact assure qu'une sous-suite converge vers un $y \in K$. Par unicité de la limite, $x=y \in K$. Donc $K$ est fermé.)
    - Toute partie compacte est nécessairement **bornée**. (S'il n'était pas borné, on pourrait construire une suite de points dont la norme tend vers l'infini, et aucune sous-suite ne pourrait converger).
- **Stabilité**:
    - Un sous-ensemble fermé d'un compact est compact.
    - Le produit cartésien d'un nombre fini de compacts est un compact.

### Exemples

**Exemple 1 : Un segment dans $\mathbb{R}$**

L'intervalle $K = [a, b]$ est compact.

- Il est **fermé** (son complémentaire $]-\infty, a[ \cup ]b, +\infty[$ est une union d'ouverts, donc un ouvert).
- Il est **borné** (il est contenu dans la boule $B(0, \max(|a|, |b|) + 1)$).

D'après le théorème de Heine-Borel, $[a,b]$ est compact.

**Exemple 2 : Une boule fermée dans $\mathbb{R}^n$**

L'ensemble $K = B_N^f(x, r)$ est compact.

- Il est **fermé** (voir Concept 3).
- Il est **borné**. Par l'inégalité triangulaire, si $z \in B_N^f(x, r)$, alors $N(z) = N(z-x+x) \le N(z-x) + N(x) \le r + N(x)$. Donc $K$ est contenu dans la boule $B_N(0, r + N(x) + 1)$.

Étant fermé et borné, il est compact.

**Exemple 3 : L'ensemble $D = \{(x, y) \in \mathbb{R}^2 : x^2 + y^4 \le 4\}$**

Montrons que $D$ est compact.

- **Fermé**: La fonction $f(x,y) = x^2 + y^4$ est continue sur $\mathbb{R}^2$. L'ensemble $D$ peut s'écrire $D = f^{-1}(]-\infty, 4])$. C'est l'image réciproque d'un intervalle fermé par une fonction continue, c'est donc un ensemble fermé.
- **Borné**: Si $(x,y) \in D$, alors $x^2 \le 4$ et $y^4 \le 4$. Cela implique $|x| \le 2$ et $|y| \le \sqrt{2}$. Donc $D$ est contenu dans le rectangle borné $[-2, 2] \times [-\sqrt{2}, \sqrt{2}]$. $D$ est donc borné.

$D$ est fermé et borné, donc il est compact.

### Contre-exemples

1.  **Fermé mais non borné**: L'intervalle $[0, +\infty[$ est fermé dans $\mathbb{R}$ mais il n'est pas borné. Il n'est donc pas compact. La suite $x_k = k$ est dans l'ensemble, mais aucune sous-suite ne converge.
2.  **Borné mais non fermé**: L'intervalle $]0, 1[$ est borné (contenu dans $[-1, 1]$) mais il n'est pas fermé. Il n'est donc pas compact. La suite $x_k = 1/k$ (pour $k \ge 2$) est dans l'ensemble, elle converge vers $0$, mais la limite $0$ n'est pas dans l'ensemble.

### Concepts Liés

- **Analyse**: La compacité est fondamentale pour l'analyse. Par exemple, le **théorème des bornes atteintes** (ou théorème de Weierstrass) stipule que toute fonction continue sur un ensemble compact à valeurs dans $\mathbb{R}$ est bornée et atteint ses bornes (c'est-à-dire qu'elle a un minimum et un maximum).

---

## Concept 7: Équivalence des Normes et Complétude de $\mathbb{R}^n$

### Prérequis

- **Normes sur $\mathbb{R}^n$**: Définition et exemples.
- **Parties compactes**: Le théorème d'équivalence des normes utilise la compacité de la sphère unité.
- **Suites convergentes**.

### Définitions et Théorèmes Clés

1.  **Théorème d'Équivalence des Normes (Théorème 2.33)**: Sur un espace vectoriel de dimension finie comme $\mathbb{R}^n$, toutes les normes sont **équivalentes**.

    Cela signifie que pour deux normes quelconques $N_1$ et $N_2$ sur $\mathbb{R}^n$, il existe deux constantes strictement positives $\alpha$ et $\beta$ telles que, pour tout vecteur $x \in \mathbb{R}^n$ :

    $$

    \alpha N_1(x) \le N_2(x) \le \beta N_1(x)

    $$

2.  **Suite de Cauchy**: Une suite $(x^k)$ d'éléments de $\mathbb{R}^n$ est une **suite de Cauchy** si ses termes se rapprochent arbitrairement les uns des autres. Formellement, pour tout $\varepsilon > 0$, il existe un rang $K$ tel que pour tous les indices $p, q \ge K$, on a $d_N(x^p, x^q) < \varepsilon$.

3.  **Complétude de $\mathbb{R}^n$ (Proposition 2.37)**: L'espace $\mathbb{R}^n$ est **complet**. Cela signifie que toute suite de Cauchy dans $\mathbb{R}^n$ est une suite convergente (c'est-à-dire qu'elle admet une limite dans $\mathbb{R}^n$).

  > Dans $\mathbb{R}^n$, une suite est convergente si et seulement si elle est de Cauchy.

### Propriétés et Conséquences

- **Conséquence de l'équivalence des normes**: C'est un résultat extrêmement puissant. Il implique que toutes les notions topologiques dans $\mathbb{R}^n$ sont **intrinsèques** et ne dépendent pas du choix de la norme.
    - Une suite qui converge pour une norme converge pour toutes les autres (vers la même limite).
    - Un ensemble ouvert/fermé/borné/compact/dense pour une norme l'est aussi pour toutes les autres.
    - On peut donc parler "d'un ouvert de $\mathbb{R}^n$" sans préciser la norme. En pratique, on choisit toujours la norme qui simplifie le plus les calculs ($\|\cdot\|_1, \|\cdot\|_2$ ou $\|\cdot\|_\infty$).
- **Puissance de la complétude**: La complétude garantit que $\mathbb{R}^n$ n'a "pas de trous". Si une suite "devrait" converger (car ses termes se resserrent), alors sa limite existe bien dans l'espace. C'est ce qui distingue $\mathbb{R}$ de $\mathbb{Q}$.

### Exemples

**Exemple 1 : Équivalence des normes $\|\cdot\|_1$ et $\|\cdot\|_2$ dans $\mathbb{R}^n$**

On peut montrer que pour tout $x \in \mathbb{R}^n$, on a les inégalités suivantes :

$$

\|x\|_2 \le \|x\|_1 \le \sqrt{n} \|x\|_2

$$

Ici, $\alpha = 1$ et $\beta = \sqrt{n}$ (en prenant $N_1=\|\cdot\|_1$ et $N_2=\|\cdot\|_2$). Cela illustre concrètement l'équivalence. Une suite qui tend vers 0 pour la norme 1 tendra aussi vers 0 pour la norme 2, et vice versa.

**Exemple 2 : Suite de Cauchy dans $\mathbb{R}$**

Considérons la suite des approximations décimales de $\sqrt{2}$: $x_0=1$, $x_1=1.4$, $x_2=1.41$, $x_3=1.414$, etc.

- C'est une suite d'éléments de $\mathbb{Q}$.
- C'est une suite de Cauchy : pour $p, q$ grands, $x_p$ et $x_q$ ont de nombreuses décimales communes, donc $|x_p - x_q|$ est très petit.
- La suite converge vers $\sqrt{2}$. Dans $\mathbb{R}$, qui est complet, cette suite a une limite.
- Dans $\mathbb{Q}$, qui n'est pas complet, cette suite est de Cauchy mais ne converge pas (car sa limite $\sqrt{2}$ n'est pas dans $\mathbb{Q}$).

**Exemple 3 : Méthode de Newton**

De nombreux algorithmes itératifs en analyse numérique, comme la méthode de Newton pour trouver les zéros d'une fonction, génèrent des suites qui sont des suites de Cauchy. La complétude de $\mathbb{R}^n$ garantit que si l'algorithme "fonctionne bien", la suite des approximations convergera vers une solution.

### Contre-exemples

1.  **Un espace non complet : $\mathbb{Q}^n$**.

    Comme vu dans l'exemple 2, l'espace des vecteurs à coordonnées rationnelles, $\mathbb{Q}^n$, n'est pas complet. On peut construire des suites de Cauchy de points dans $\mathbb{Q}^n$ dont la limite a des coordonnées irrationnelles, et donc n'est pas dans $\mathbb{Q}^n$.

2.  **Dimension infinie : pas d'équivalence des normes**.

    Le théorème d'équivalence des normes est spécifique à la dimension finie. Considérons l'espace des fonctions continues sur $[0,1]$, noté $C([0,1])$. On peut le munir de la norme "sup" $\|f\|_\infty = \sup_{x \in [0,1]} |f(x)|$ et de la norme "intégrale" $\|f\|_1 = \int_0^1 |f(x)| dx$. Ces deux normes ne sont pas équivalentes. La suite de fonctions "pic" $f_n(x)$ qui vaut $n$ sur $[0, 1/n^2]$ et 0 ailleurs converge vers la fonction nulle pour la norme 1, mais pas pour la norme infinie.

### Concepts Liés

- **Espaces de Banach**: Un espace vectoriel normé qui est complet est appelé un **espace de Banach**. $\mathbb{R}^n$ est donc l'exemple le plus simple et fondamental d'espace de Banach.
- **Analyse fonctionnelle**: L'étude des espaces de dimension infinie (comme les espaces de fonctions) où la complétude et le choix de la norme deviennent des questions cruciales.
