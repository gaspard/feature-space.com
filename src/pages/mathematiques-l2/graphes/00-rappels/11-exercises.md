---
id: a9cdd62c
type: exercises
order: 11
title: Rappels et notation - exercices (A)
tags:
  - set theory
  - relations
  - functions
  - induction
  - combinatorics
createdAt: '2025-10-15T19:11:23.494Z'
level: regular
course: Graphes et Combinatoire
courseId: 7027276b
chapter: Rappels et notation
chapterId: 58e4ac98
---
# Exercices "Rappels et notation" (A)

---

## Exercice 1

**Problème:** Soient les ensembles suivants :

$A = \{n \in \mathbb{N} \mid n \text{ est un diviseur de } 12\}$

$B = \{1, 2, 3, 4, 6\}$

$C = \{n \in \mathbb{N} \mid 1 \le n < 7 \text{ et } n \text{ est pair}\}$

1.  Écrire l'ensemble $A$ et l'ensemble $C$ en extension.
2.  Déterminer si l'affirmation $B \subseteq A$ est vraie. Justifier.
3.  Montrer que $C$ est un sous-ensemble de $A$.

<details>

<summary>Solution</summary>

**Méthode:** Pour la première question, il faut lister les éléments qui satisfont aux propriétés données. Pour les questions 2 et 3, il faut utiliser la définition d'un sous-ensemble : un ensemble $X$ est un sous-ensemble de $Y$ ($X \subseteq Y$) si tous les éléments de $X$ sont aussi des éléments de $Y$.

**Étapes:**

1.  **Écrire A et C en extension :**
    -   Pour l'ensemble $A$, nous cherchons tous les entiers naturels qui divisent 12. Les diviseurs de 12 sont 1, 2, 3, 4, 6 et 12.

        Donc, $A = \{1, 2, 3, 4, 6, 12\}$.

    -   Pour l'ensemble $C$, nous cherchons les entiers naturels $n$ qui sont pairs et qui vérifient $1 \le n < 7$. Les entiers dans cet intervalle sont 1, 2, 3, 4, 5, 6. Parmi ceux-ci, les nombres pairs sont 2, 4 et 6.

        Donc, $C = \{2, 4, 6\}$.

2.  **Vérifier si $B \subseteq A$ :**
    -   On a $A = \{1, 2, 3, 4, 6, 12\}$ et $B = \{1, 2, 3, 4, 6\}$.
    -   Pour que $B$ soit un sous-ensemble de $A$, chaque élément de $B$ doit appartenir à $A$.
    -   Vérifions chaque élément de $B$ :
        -   $1 \in A$ (Vrai)
        -   $2 \in A$ (Vrai)
        -   $3 \in A$ (Vrai)
        -   $4 \in A$ (Vrai)
        -   $6 \in A$ (Vrai)
    -   Tous les éléments de $B$ sont dans $A$. Cependant, l'affirmation est-elle vraie ? On remarque que $12 \in A$ mais $12 \notin B$. Cela signifie que $A \not\subseteq B$. La question est $B \subseteq A$. Puisque tous les éléments de B sont dans A, l'affirmation est vraie. Attention à ne pas confondre les deux inclusions.

3.  **Montrer que $C \subseteq A$ :**
    -   On a $A = \{1, 2, 3, 4, 6, 12\}$ et $C = \{2, 4, 6\}$.
    -   Pour montrer que $C \subseteq A$, nous devons vérifier que chaque élément de $C$ est aussi un élément de $A$.
    -   Vérifions chaque élément de $C$ :
        -   $2 \in A$ (Vrai)
        -   $4 \in A$ (Vrai)
        -   $6 \in A$ (Vrai)
    -   Puisque tous les éléments de $C$ sont également dans $A$, on peut conclure que $C$ est un sous-ensemble de $A$.

**Réponse:**

1. $A = \{1, 2, 3, 4, 6, 12\}$ et $C = \{2, 4, 6\}$.
2. L'affirmation $B \subseteq A$ est **vraie**.
3. On a montré que tous les éléments de $C$ sont dans $A$, donc $C \subseteq A$.

</details>

---

## Exercice 2

**Problème:** Soit l'ensemble $E = \{ \emptyset, \{a\}, b, \{a, b\} \}$. Pour chacune des affirmations suivantes, déterminez si elle est vraie ou fausse et justifiez votre réponse.

1.  $a \in E$
2.  $\{a\} \in E$
3.  $\{a\} \subseteq E$
4.  $\emptyset \in E$
5.  $\emptyset \subseteq E$
6.  $\{\{a, b\}\} \subseteq E$

<details>

<summary>Solution</summary>

**Méthode:** Il est crucial de distinguer le symbole d'appartenance $\in$, qui relie un élément à un ensemble, du symbole d'inclusion $\subseteq$, qui relie deux ensembles. Pour une affirmation $x \in E$, on cherche si $x$ est listé textuellement comme l'un des éléments de $E$. Pour une affirmation $A \subseteq E$, on vérifie si chaque élément de l'ensemble $A$ est aussi un élément de $E$.

**Étapes:**

1.  **$a \in E$ : Faux.**

    L'ensemble $E$ contient quatre éléments : l'ensemble vide $\emptyset$, l'ensemble $\{a\}$, l'élément $b$, et l'ensemble $\{a, b\}$. L'élément $a$ lui-même n'est pas dans cette liste. C'est l'ensemble $\{a\}$ qui est un élément de $E$.

2.  **$\{a\} \in E$ : Vrai.**

    L'ensemble $\{a\}$ est explicitement listé comme le deuxième élément de l'ensemble $E$.

3.  **$\{a\} \subseteq E$ : Faux.**

    Pour que l'ensemble $\{a\}$ soit un sous-ensemble de $E$, il faudrait que tous ses éléments (ici, seulement l'élément $a$) soient des éléments de $E$. Comme nous l'avons vu à la question 1, $a \notin E$. Donc, $\{a\} \not\subseteq E$.

4.  **$\emptyset \in E$ : Vrai.**

    L'ensemble vide, $\emptyset$, est explicitement listé comme le premier élément de l'ensemble $E$.

5.  **$\emptyset \subseteq E$ : Vrai.**

    L'ensemble vide est un sous-ensemble de n'importe quel ensemble. C'est une propriété fondamentale des ensembles. La condition pour être un sous-ensemble est "pour tout $x \in \emptyset$, on a $x \in E$". Cette condition est toujours vraie car il n'y a aucun $x$ dans $\emptyset$ (on dit que la condition est "vacuement vraie").

6.  **$\{\{a, b\}\} \subseteq E$ : Vrai.**

    Pour que l'ensemble $\{\{a, b\}\}$ soit un sous-ensemble de $E$, il faut que tous ses éléments soient des éléments de $E$. Le seul élément de l'ensemble $\{\{a, b\}\}$ est $\{a, b\}$. Nous devons donc vérifier si $\{a, b\} \in E$. En regardant la définition de $E$, on voit que $\{a, b\}$ est bien le quatrième élément de $E$. L'affirmation est donc vraie.

**Réponse:**

1. Faux
2. Vrai
3. Faux
4. Vrai
5. Vrai
6. Vrai

</details>

---

## Exercice 3

**Problème:** Soit l'ensemble de référence $U = \{0, 1, 2, 3, 4, 5, 6, 7, 8, 9\}$. On considère les sous-ensembles suivants :

$A = \{0, 2, 4, 6, 8\}$

$B = \{0, 1, 2, 3, 4\}$

$C = \{5, 6, 7, 8, 9\}$

Calculez les ensembles suivants :

1.  $A \cup B$
2.  $A \cap C$
3.  $B \setminus A$
4.  $\bar{A}$ (le complémentaire de A dans U)
5.  $(A \cup B) \cap C$
6.  $\bar{A} \cup \bar{B}$ (Vérifiez la loi de De Morgan en comparant avec $\overline{A \cap B}$)

<details>

<summary>Solution</summary>

**Méthode:** On applique les définitions des opérations sur les ensembles.

-   **Union ($X \cup Y$)**: On prend tous les éléments qui sont dans $X$, dans $Y$, ou dans les deux, sans répétition.
-   **Intersection ($X \cap Y$)**: On prend uniquement les éléments qui sont à la fois dans $X$ et dans $Y$.
-   **Différence ($X \setminus Y$)**: On prend les éléments de $X$ qui ne sont pas dans $Y$.
-   **Complémentaire ($\bar{X}$)**: On prend tous les éléments de l'ensemble de référence $U$ qui ne sont pas dans $X$.

**Étapes:**

1.  **$A \cup B$**: On regroupe tous les éléments de $A$ et $B$.

    $A = \{0, 2, 4, 6, 8\}$, $B = \{0, 1, 2, 3, 4\}$.

    $A \cup B = \{0, 1, 2, 3, 4, 6, 8\}$.

2.  **$A \cap C$**: On cherche les éléments communs à $A$ et $C$.

    $A = \{0, 2, 4, 6, 8\}$, $C = \{5, 6, 7, 8, 9\}$.

    Les éléments communs sont 6 et 8.

    $A \cap C = \{6, 8\}$.

3.  **$B \setminus A$**: On prend les éléments de $B$ et on retire ceux qui sont aussi dans $A$.

    $B = \{0, 1, 2, 3, 4\}$. Les éléments de $B$ qui sont aussi dans $A$ sont $\{0, 2, 4\}$.

    En les retirant de $B$, il reste $\{1, 3\}$.

    $B \setminus A = \{1, 3\}$.

4.  **$\bar{A}$**: On prend tous les éléments de $U$ qui ne sont pas dans $A$.

    $U = \{0, 1, 2, 3, 4, 5, 6, 7, 8, 9\}$, $A = \{0, 2, 4, 6, 8\}$.

    Les éléments restants sont les nombres impairs.

    $\bar{A} = \{1, 3, 5, 7, 9\}$.

5.  **$(A \cup B) \cap C$**: On calcule d'abord $A \cup B$, puis on fait l'intersection du résultat avec $C$.

    D'après la question 1, $A \cup B = \{0, 1, 2, 3, 4, 6, 8\}$.

    Maintenant, on intersecte ce résultat avec $C = \{5, 6, 7, 8, 9\}$.

    Les éléments communs sont 6 et 8.

    $(A \cup B) \cap C = \{6, 8\}$.

6.  **$\bar{A} \cup \bar{B}$**: On calcule d'abord $\bar{A}$ et $\bar{B}$, puis leur union.

    On a déjà $\bar{A} = \{1, 3, 5, 7, 9\}$.

    Calculons $\bar{B}$: $U \setminus B = \{0, 1, ..., 9\} \setminus \{0, 1, 2, 3, 4\} = \{5, 6, 7, 8, 9\}$. Donc $\bar{B}=C$.

    $\bar{A} \cup \bar{B} = \{1, 3, 5, 7, 9\} \cup \{5, 6, 7, 8, 9\} = \{1, 3, 5, 6, 7, 8, 9\}$.

    **Vérification de la loi de De Morgan**: $\overline{A \cap B} = \bar{A} \cup \bar{B}$.

    Calculons $A \cap B = \{0, 2, 4, 6, 8\} \cap \{0, 1, 2, 3, 4\} = \{0, 2, 4\}$.

    Calculons le complémentaire : $\overline{A \cap B} = U \setminus \{0, 2, 4\} = \{1, 3, 5, 6, 7, 8, 9\}$.

    On constate que les deux résultats sont identiques, ce qui confirme la loi de De Morgan.

**Réponse:**

1.  $A \cup B = \{0, 1, 2, 3, 4, 6, 8\}$
2.  $A \cap C = \{6, 8\}$
3.  $B \setminus A = \{1, 3\}$
4.  $\bar{A} = \{1, 3, 5, 7, 9\}$
5.  $(A \cup B) \cap C = \{6, 8\}$
6.  $\bar{A} \cup \bar{B} = \{1, 3, 5, 6, 7, 8, 9\}$

</details>

---

## Exercice 4

**Problème:** Soit l'ensemble $S = \{1, \alpha\}$.

1.  Déterminer l'ensemble des parties de $S$, noté $\mathcal{P}(S)$. Quel est son cardinal $|\mathcal{P}(S)|$ ?
2.  Déterminer le produit cartésien $S \times S$. Quel est son cardinal $|S \times S|$ ?
3.  Est-ce que $\mathcal{P}(S) = S \times S$ ? Justifier.

<details>

<summary>Solution</summary>

**Méthode:**

1.  Pour trouver $\mathcal{P}(S)$, on doit lister tous les sous-ensembles possibles de $S$. Le cardinal de $\mathcal{P}(S)$ pour un ensemble fini $S$ est $2^{|S|}$.
2.  Pour trouver $S \times S$, on doit former tous les couples ordonnés $(a, b)$ où $a \in S$ et $b \in S$. Le cardinal de $A \times B$ est $|A| \cdot |B|$.
3.  Pour comparer les deux ensembles, on doit regarder la nature de leurs éléments.

**Étapes:**

1.  **Ensemble des parties $\mathcal{P}(S)$ :**

    L'ensemble $S$ a deux éléments: $1$ et $\alpha$. Son cardinal est $|S|=2$.

    Les sous-ensembles de $S$ sont :

    -   L'ensemble vide : $\emptyset$
    -   Les sous-ensembles à 1 élément : $\{1\}$ et $\{\alpha\}$
    -   Le sous-ensemble à 2 éléments (l'ensemble S lui-même) : $\{1, \alpha\}$

    Donc, $\mathcal{P}(S) = \{\emptyset, \{1\}, \{\alpha\}, \{1, \alpha\}\}$.

    Le cardinal est $|\mathcal{P}(S)| = 4$. On peut le vérifier avec la formule : $2^{|S|} = 2^2 = 4$.

2.  **Produit cartésien $S \times S$ :**

    On forme tous les couples ordonnés $(a, b)$ avec $a, b \in S = \{1, \alpha\}$.

    Les couples possibles sont :

    -   avec $a=1$: $(1, 1), (1, \alpha)$
    -   avec $a=\alpha$: $(\alpha, 1), (\alpha, \alpha)$

    Donc, $S \times S = \{(1, 1), (1, \alpha), (\alpha, 1), (\alpha, \alpha)\}$.

    Le cardinal est $|S \times S| = |S| \cdot |S| = 2 \cdot 2 = 4$.

3.  **Comparaison de $\mathcal{P}(S)$ et $S \times S$ :**

    Bien que $|\mathcal{P}(S)| = |S \times S| = 4$, les deux ensembles ne sont pas égaux.

    Les éléments de $\mathcal{P}(S)$ sont des **ensembles**.

    Les éléments de $S \times S$ sont des **couples ordonnés**.

    Un ensemble comme $\{1\}$ n'est pas la même chose qu'un couple comme $(1, 1)$. La nature des objets est fondamentalement différente. Par conséquent, $\mathcal{P}(S) \neq S \times S$.

**Réponse:**

1.  $\mathcal{P}(S) = \{\emptyset, \{1\}, \{\alpha\}, \{1, \alpha\}\}$. Son cardinal est $|\mathcal{P}(S)| = 4$.
2.  $S \times S = \{(1, 1), (1, \alpha), (\alpha, 1), (\alpha, \alpha)\}$. Son cardinal est $|S \times S| = 4$.
3.  Non, $\mathcal{P}(S) \neq S \times S$ car les éléments de $\mathcal{P}(S)$ sont des ensembles alors que les éléments de $S \times S$ sont des couples ordonnés.

</details>

---

## Exercice 5

**Problème:** Pour chacune des applications suivantes, déterminez si elle est injective, surjective et/ou bijective. Justifiez rigoureusement vos réponses.

1.  $f: \mathbb{Z} \to \mathbb{Z}$ définie par $f(n) = 2n + 1$.
2.  $g: \mathbb{R} \to \mathbb{R}$ définie par $g(x) = x^3 - x$.
3.  $h: \mathbb{N} \to \mathbb{N}$ définie par $h(n) = n+1$.

<details>

<summary>Solution</summary>

**Méthode:**

-   **Injectivité**: On montre que $f(x_1) = f(x_2) \implies x_1 = x_2$. Pour montrer la non-injectivité, on trouve un contre-exemple : $x_1 \neq x_2$ avec $f(x_1) = f(x_2)$.
-   **Surjectivité**: Pour un $y$ quelconque dans l'ensemble d'arrivée, on cherche à montrer qu'il existe un antécédent $x$ tel que $f(x)=y$. Pour montrer la non-surjectivité, on trouve un contre-exemple : un élément $y$ de l'ensemble d'arrivée qui n'a aucun antécédent.
-   **Bijectivité**: L'application est bijective si elle est à la fois injective et surjective.

**Étapes:**

1.  **$f: \mathbb{Z} \to \mathbb{Z}$ définie par $f(n) = 2n + 1$.**
    -   **Injectivité :** Soient $n_1, n_2 \in \mathbb{Z}$ tels que $f(n_1) = f(n_2)$.

        $2n_1 + 1 = 2n_2 + 1 \implies 2n_1 = 2n_2 \implies n_1 = n_2$.

        L'application $f$ est **injective**.

    -   **Surjectivité :** Soit $y \in \mathbb{Z}$. On cherche un antécédent $n \in \mathbb{Z}$ tel que $f(n) = y$.

        $2n + 1 = y \implies 2n = y - 1 \implies n = \frac{y-1}{2}$.

        Pour que $n$ soit un entier, $y-1$ doit être un nombre pair, ce qui signifie que $y$ doit être un nombre impair.

        Si l'on choisit un $y$ pair, par exemple $y=2$, l'équation devient $n = \frac{2-1}{2} = \frac{1}{2}$, qui n'est pas un entier. Donc, l'entier $2$ n'a pas d'antécédent dans $\mathbb{Z}$.

        L'application $f$ n'est **pas surjective**.

    -   **Conclusion :** $f$ est injective mais pas surjective, donc elle n'est pas bijective.

2.  **$g: \mathbb{R} \to \mathbb{R}$ définie par $g(x) = x^3 - x$.**
    -   **Injectivité :** Cherchons s'il existe $x_1 \neq x_2$ avec $g(x_1) = g(x_2)$.

        On peut factoriser : $g(x) = x(x^2 - 1) = x(x-1)(x+1)$.

        Les racines sont $0, 1, -1$. On voit que $g(0)=0$, $g(1)=0$, et $g(-1)=0$.

        Puisque $0 \neq 1$ et $g(0) = g(1)$, l'application $g$ n'est **pas injective**.

    -   **Surjectivité :** L'application $g$ est un polynôme de degré 3. La limite de $g(x)$ quand $x \to +\infty$ est $+\infty$, et la limite quand $x \to -\infty$ est $-\infty$. Comme $g$ est une fonction continue sur $\mathbb{R}$, par le théorème des valeurs intermédiaires, elle prend toutes les valeurs réelles.

        Donc, pour tout $y \in \mathbb{R}$, il existe au moins un $x \in \mathbb{R}$ tel que $g(x)=y$.

        L'application $g$ est **surjective**.

    -   **Conclusion :** $g$ est surjective mais pas injective, donc elle n'est pas bijective.

3.  **$h: \mathbb{N} \to \mathbb{N}$ définie par $h(n) = n+1$.**
    -   **Injectivité :** Soient $n_1, n_2 \in \mathbb{N}$ tels que $h(n_1) = h(n_2)$.

        $n_1 + 1 = n_2 + 1 \implies n_1 = n_2$.

        L'application $h$ est **injective**.

    -   **Surjectivité :** L'ensemble de départ est $\mathbb{N}=\{0, 1, 2, ...\}$ et celui d'arrivée est le même.

        Considérons l'élément $0$ dans l'ensemble d'arrivée. On cherche $n \in \mathbb{N}$ tel que $h(n)=0$.

        $n+1 = 0 \implies n = -1$.

        Or, $-1$ n'appartient pas à $\mathbb{N}$. Donc, $0$ n'a pas d'antécédent par $h$.

        L'application $h$ n'est **pas surjective**.

    -   **Conclusion :** $h$ est injective mais pas surjective, donc elle n'est pas bijective.

**Réponse:**

1.  $f$: Injective, non surjective, non bijective.
2.  $g$: Non injective, surjective, non bijective.
3.  $h$: Injective, non surjective, non bijective.

</details>

---

## Exercice 6

**Problème:** Soient les applications $f: \mathbb{R}\setminus\{1\} \to \mathbb{R}\setminus\{0\}$ définie par $f(x) = \frac{2}{x-1}$ et $g: \mathbb{R}\setminus\{0\} \to \mathbb{R}$ définie par $g(y) = y^2 + 1$.

1.  Déterminer l'expression de l'application composée $g \circ f$. Quel est son ensemble de départ et d'arrivée ?
2.  L'application $f$ est-elle bijective ? Si oui, déterminer son application inverse $f^{-1}$.

<details>

<summary>Solution</summary>

**Méthode:**

1.  Pour la composition $g \circ f$, on applique $f$ d'abord, puis $g$ au résultat. L'expression est $(g \circ f)(x) = g(f(x))$. L'ensemble de départ de $g \circ f$ est celui de $f$, et l'ensemble d'arrivée est celui de $g$.
2.  Pour montrer que $f$ est bijective, on doit prouver qu'elle est à la fois injective et surjective. Pour trouver l'inverse $f^{-1}$, on résout l'équation $y = f(x)$ pour exprimer $x$ en fonction de $y$.

**Étapes:**

1.  **Composition $g \circ f$ :**
    -   L'ensemble de départ de $g \circ f$ est celui de $f$, soit $\mathbb{R}\setminus\{1\}$.
    -   L'ensemble d'arrivée de $g \circ f$ est celui de $g$, soit $\mathbb{R}$.
    -   Calculons l'expression de $(g \circ f)(x)$:

        $(g \circ f)(x) = g(f(x)) = g\left(\frac{2}{x-1}\right)$.

        On remplace $y$ par $\frac{2}{x-1}$ dans l'expression de $g(y)$:

        $g\left(\frac{2}{x-1}\right) = \left(\frac{2}{x-1}\right)^2 + 1 = \frac{4}{(x-1)^2} + 1$.

    -   Donc, $g \circ f: \mathbb{R}\setminus\{1\} \to \mathbb{R}$ est définie par $(g \circ f)(x) = \frac{4}{(x-1)^2} + 1$.

2.  **Bijectivité de $f$ et calcul de $f^{-1}$ :**
    -   **Injectivité :** Soient $x_1, x_2 \in \mathbb{R}\setminus\{1\}$ tels que $f(x_1) = f(x_2)$.

        $\frac{2}{x_1-1} = \frac{2}{x_2-1}$.

        Puisque les numérateurs sont non nuls, on peut inverser les fractions :

        $\frac{x_1-1}{2} = \frac{x_2-1}{2} \implies x_1-1 = x_2-1 \implies x_1=x_2$.

        Donc $f$ est injective.

    -   **Surjectivité :** Soit $y \in \mathbb{R}\setminus\{0\}$ (l'ensemble d'arrivée). On cherche un antécédent $x \in \mathbb{R}\setminus\{1\}$ tel que $f(x) = y$.

        $y = \frac{2}{x-1}$.

        Puisque $y \neq 0$, on peut manipuler l'équation :

        $y(x-1) = 2 \implies x-1 = \frac{2}{y} \implies x = 1 + \frac{2}{y}$.

        Pour tout $y \in \mathbb{R}\setminus\{0\}$, cette expression donne une valeur unique pour $x$. De plus, comme $\frac{2}{y} \neq 0$, on a $x = 1 + \frac{2}{y} \neq 1$, donc $x$ est bien dans l'ensemble de départ $\mathbb{R}\setminus\{1\}$.

        Puisqu'on a trouvé un antécédent pour tout $y$ de l'ensemble d'arrivée, $f$ est surjective.

    -   **Conclusion :** $f$ est injective et surjective, donc elle est bijective.
    -   **Inverse $f^{-1}$ :** L'expression de l'antécédent que nous avons trouvée est l'expression de l'application inverse. L'inverse $f^{-1}$ va de l'ensemble d'arrivée de $f$ vers son ensemble de départ.

        $f^{-1}: \mathbb{R}\setminus\{0\} \to \mathbb{R}\setminus\{1\}$ est définie par $f^{-1}(y) = 1 + \frac{2}{y}$.

**Réponse:**

1.  L'application composée est $g \circ f: \mathbb{R}\setminus\{1\} \to \mathbb{R}$ avec $(g \circ f)(x) = \frac{4}{(x-1)^2} + 1$.
2.  Oui, $f$ est bijective. Son application inverse est $f^{-1}: \mathbb{R}\setminus\{0\} \to \mathbb{R}\setminus\{1\}$ définie par $f^{-1}(y) = 1 + \frac{2}{y}$.

</details>

---

## Exercice 7

**Problème:** Sur l'ensemble $E = \mathbb{R}^2 = \mathbb{R} \times \mathbb{R}$, on définit la relation $\mathcal{R}$ par :

$(x_1, y_1) \mathcal{R} (x_2, y_2) \iff x_1^2 + y_1^2 = x_2^2 + y_2^2$.

1.  Montrer que $\mathcal{R}$ est une relation d'équivalence.
2.  Décrire géométriquement la classe d'équivalence d'un élément $(a, b) \in E$.
3.  Quelle est la classe d'équivalence de $(3, 4)$ ? Et celle de $(0, 0)$ ?

<details>

<summary>Solution</summary>

**Méthode:** Pour montrer que $\mathcal{R}$ est une relation d'équivalence, il faut vérifier les trois propriétés : réflexivité, symétrie et transitivité. Pour décrire la classe d'équivalence, il faut interpréter géométriquement la condition $x^2 + y^2 = C$ où $C$ est une constante.

**Étapes:**

1.  **Vérification des propriétés de la relation d'équivalence :**
    -   **Réflexivité :** Pour tout $(x, y) \in \mathbb{R}^2$, on a $x^2 + y^2 = x^2 + y^2$. Donc, $(x, y) \mathcal{R} (x, y)$. La relation est réflexive.
    -   **Symétrie :** Soient $(x_1, y_1), (x_2, y_2) \in \mathbb{R}^2$ tels que $(x_1, y_1) \mathcal{R} (x_2, y_2)$.

        Par définition, cela signifie $x_1^2 + y_1^2 = x_2^2 + y_2^2$.

        L'égalité est symétrique, donc on peut écrire $x_2^2 + y_2^2 = x_1^2 + y_1^2$.

        Ceci est la définition de $(x_2, y_2) \mathcal{R} (x_1, y_1)$. La relation est symétrique.

    -   **Transitivité :** Soient $(x_1, y_1), (x_2, y_2), (x_3, y_3) \in \mathbb{R}^2$ tels que $(x_1, y_1) \mathcal{R} (x_2, y_2)$ et $(x_2, y_2) \mathcal{R} (x_3, y_3)$.

        On a donc $x_1^2 + y_1^2 = x_2^2 + y_2^2$ et $x_2^2 + y_2^2 = x_3^2 + y_3^2$.

        Par transitivité de l'égalité, on en déduit $x_1^2 + y_1^2 = x_3^2 + y_3^2$.

        Ceci est la définition de $(x_1, y_1) \mathcal{R} (x_3, y_3)$. La relation est transitive.

    -   Puisque $\mathcal{R}$ est réflexive, symétrique et transitive, c'est une relation d'équivalence.

2.  **Description géométrique de la classe d'équivalence de $(a, b)$ :**

    La classe d'équivalence de $(a, b)$, notée $[(a, b)]$, est l'ensemble de tous les points $(x, y)$ tels que $(x, y) \mathcal{R} (a, b)$.

    C'est donc l'ensemble des $(x, y)$ tels que $x^2 + y^2 = a^2 + b^2$.

    L'expression $\sqrt{x^2+y^2}$ représente la distance du point $(x, y)$ à l'origine $(0, 0)$.

    La condition $x^2 + y^2 = a^2 + b^2$ signifie que la distance au carré de $(x, y)$ à l'origine est constante et égale à $R^2 = a^2+b^2$.

    Géométriquement, cela correspond à l'ensemble des points situés à une distance $R = \sqrt{a^2+b^2}$ de l'origine. C'est le **cercle centré à l'origine de rayon $R = \sqrt{a^2+b^2}$**.

    Si $(a,b) = (0,0)$, le rayon est 0 et la classe d'équivalence est juste le point $(0,0)$.

3.  **Classe d'équivalence de $(3, 4)$ et $(0, 0)$ :**
    -   Pour $(3, 4)$, on calcule la constante : $3^2 + 4^2 = 9 + 16 = 25$.

        La classe d'équivalence est l'ensemble des points $(x, y)$ tels que $x^2 + y^2 = 25$.

        C'est le cercle centré à l'origine de rayon $\sqrt{25}=5$.

        $[(3, 4)] = \{(x, y) \in \mathbb{R}^2 \mid x^2+y^2=25\}$.

    -   Pour $(0, 0)$, la constante est $0^2 + 0^2 = 0$.

        La classe d'équivalence est l'ensemble des points $(x, y)$ tels que $x^2 + y^2 = 0$.

        La seule solution réelle à cette équation est $x=0$ et $y=0$.

        C'est le cercle de rayon 0, qui est réduit au point origine.

        $[(0, 0)] = \{(0, 0)\}$.

**Réponse:**

1.  La relation est réflexive, symétrique et transitive, c'est donc une relation d'équivalence.
2.  La classe d'équivalence de $(a, b)$ est le cercle centré à l'origine $(0,0)$ de rayon $\sqrt{a^2+b^2}$.
3.  $[(3, 4)] = \{(x, y) \in \mathbb{R}^2 \mid x^2+y^2=25\}$ et $[(0, 0)] = \{(0, 0)\}$.

</details>

---

## Exercice 8

**Problème:** On considère l'ensemble $E = \{1, 2, 3, 4, 5, 6\}$. La collection de sous-ensembles $P = \{\{1, 3\}, \{2\}, \{4, 5, 6\}\}$ forme une partition de $E$.

1.  Vérifier que $P$ est bien une partition de $E$.
2.  Décrire la relation d'équivalence $\mathcal{R}$ associée à cette partition.
3.  Donner en extension la liste des couples qui composent la relation $\mathcal{R}$.

<details>

<summary>Solution</summary>

**Méthode:**

1.  Pour vérifier que $P$ est une partition de $E$, on doit montrer trois choses : les sous-ensembles dans $P$ ne sont pas vides, ils sont deux à deux disjoints, et leur réunion est égale à $E$.
2.  La relation d'équivalence associée à une partition est définie comme suit : $x \mathcal{R} y$ si et seulement si $x$ et $y$ appartiennent au même sous-ensemble de la partition.
3.  Pour lister les couples, on prend chaque sous-ensemble de la partition et on forme tous les couples $(x,y)$ où $x$ et $y$ sont dans ce même sous-ensemble.

**Étapes:**

1.  **Vérification de la partition :**
    -   **Non-vides :** Les ensembles $\{1, 3\}$, $\{2\}$ et $\{4, 5, 6\}$ sont tous non-vides. (Vrai)
    -   **Disjoints deux à deux :**
        -   $\{1, 3\} \cap \{2\} = \emptyset$
        -   $\{1, 3\} \cap \{4, 5, 6\} = \emptyset$
        -   $\{2\} \cap \{4, 5, 6\} = \emptyset$

        Ils sont bien disjoints deux à deux. (Vrai)

    -   **Réunion égale à E :**

        $\{1, 3\} \cup \{2\} \cup \{4, 5, 6\} = \{1, 2, 3, 4, 5, 6\} = E$. (Vrai)

    -   Puisque les trois conditions sont remplies, $P$ est une partition de $E$.

2.  **Description de la relation d'équivalence $\mathcal{R}$ :**

    Deux éléments $x, y \in E$ sont en relation, $x \mathcal{R} y$, s'ils sont dans la même "case" de la partition $P$.

    -   Tout élément de $\{1, 3\}$ est en relation avec tout élément de $\{1, 3\}$.
    -   L'élément $2$ n'est en relation qu'avec lui-même.
    -   Tout élément de $\{4, 5, 6\}$ est en relation avec tout élément de $\{4, 5, 6\}$.

3.  **Liste des couples de $\mathcal{R}$ :**

    On liste tous les couples $(x,y)$ où $x$ et $y$ sont dans la même partie.

    -   Depuis la partie $\{1, 3\}$ : $(1,1), (1,3), (3,1), (3,3)$.
    -   Depuis la partie $\{2\}$ : $(2,2)$.
    -   Depuis la partie $\{4, 5, 6\}$ :

        $(4,4), (4,5), (4,6)$

        $(5,4), (5,5), (5,6)$

        $(6,4), (6,5), (6,6)$

    -   La relation $\mathcal{R}$ est l'union de tous ces couples.

    $\mathcal{R} = \{(1,1), (1,3), (3,1), (3,3), (2,2), (4,4), (4,5), (4,6), (5,4), (5,5), (5,6), (6,4), (6,5), (6,6)\}$.

**Réponse:**

1.  $P$ est une partition car ses éléments sont non-vides, disjoints deux à deux, et leur réunion est $E$.
2.  $x \mathcal{R} y \iff x$ et $y$ appartiennent au même sous-ensemble de la partition $P$.
3.  $\mathcal{R} = \{(1,1), (1,3), (3,1), (3,3), (2,2), (4,4), (4,5), (4,6), (5,4), (5,5), (5,6), (6,4), (6,5), (6,6)\}$.

</details>

---

## Exercice 9

**Problème:** Soit l'ensemble $A = \{2, 3, 4, 6, 8, 12\}$. On considère la relation $\mathcal{R}$ sur $A$ définie par $x \mathcal{R} y \iff x \text{ divise } y$. On note cette relation " $|$ ".

1.  Montrer que $(A, |)$ est un ensemble partiellement ordonné.
2.  Cet ordre est-il total ? Justifier.
3.  Déterminer les éléments minimaux et maximaux de $A$.
4.  L'ensemble $A$ possède-t-il un plus petit élément ? Un plus grand élément ?

<details>

<summary>Solution</summary>

**Méthode:**

1.  Pour montrer que c'est un ordre partiel, on vérifie la réflexivité, l'antisymétrie et la transitivité.
2.  Pour vérifier si l'ordre est total, on doit voir si toutes les paires d'éléments sont comparables. Il suffit de trouver une seule paire d'éléments incomparables pour prouver que l'ordre n'est pas total.
3.  Un élément minimal n'est devancé par aucun autre. Un élément maximal ne devance aucun autre.
4.  Un plus petit élément doit être inférieur (selon la relation) à tous les autres. Un plus grand élément doit être supérieur à tous les autres.

**Étapes:**

1.  **Vérification de la relation d'ordre :**
    -   **Réflexivité :** Pour tout $x \in A$, $x$ se divise lui-même ($x|x$). Donc la relation est réflexive.
    -   **Antisymétrie :** Soient $x, y \in A$ tels que $x|y$ et $y|x$. Comme les éléments de $A$ sont des entiers positifs, cela implique $x=y$. Donc la relation est antisymétrique.
    -   **Transitivité :** Soient $x, y, z \in A$ tels que $x|y$ et $y|z$. Par la propriété de la divisibilité, si $x$ divise $y$ et $y$ divise $z$, alors $x$ divise $z$. Donc la relation est transitive.
    -   Puisque la relation est réflexive, antisymétrique et transitive, c'est une relation d'ordre partiel.

2.  **L'ordre est-il total ?**

    Un ordre est total si pour toute paire d'éléments $\{x, y\}$, on a $x|y$ ou $y|x$.

    Considérons les éléments $2$ et $3$ de $A$.

    -   Est-ce que $2$ divise $3$ ? Non.
    -   Est-ce que $3$ divise $2$ ? Non.

    Puisque $2$ et $3$ ne sont pas comparables, l'ordre n'est **pas total**.

3.  **Éléments minimaux et maximaux :**
    -   **Éléments minimaux :** On cherche les éléments de $A$ qui ne sont divisés par aucun autre élément de $A$ (à part eux-mêmes).
        -   $2$ n'est divisé par aucun autre élément de $A$. $2$ est minimal.
        -   $3$ n'est divisé par aucun autre élément de $A$. $3$ est minimal.
        -   $4$ est divisé par $2$.
        -   $6$ est divisé par $2$ et $3$.
        -   $8$ est divisé par $2$ et $4$.
        -   $12$ est divisé par $2, 3, 4, 6$.

        Les éléments minimaux sont $\{2, 3\}$.

    -   **Éléments maximaux :** On cherche les éléments de $A$ qui ne divisent aucun autre élément de $A$.
        -   $8$ : les multiples de 8 dans $A$ sont-ils autres que 8 ? Non. $8$ est maximal.
        -   $12$ : les multiples de 12 dans $A$ sont-ils autres que 12 ? Non. $12$ est maximal.
        -   Tous les autres éléments divisent un autre élément (ex: $2|4, 3|6, 4|8, 6|12$).

        Les éléments maximaux sont $\{8, 12\}$.

4.  **Plus petit et plus grand élément :**
    -   **Plus petit élément :** Un plus petit élément doit diviser tous les autres éléments de $A$.
        -   $2$ ne divise pas $3$. Donc $2$ n'est pas le plus petit élément.
        -   $3$ ne divise pas $2$. Donc $3$ n'est pas le plus petit élément.

        Il n'y a **pas de plus petit élément**. (Note: s'il y en avait un, il serait l'unique élément minimal).

    -   **Plus grand élément :** Un plus grand élément doit être un multiple de tous les autres éléments de $A$.
        -   $8$ n'est pas un multiple de $3$ (ou $6$ ou $12$).
        -   $12$ n'est pas un multiple de $8$.

        Il n'y a **pas de plus grand élément**. (Note: s'il y en avait un, il serait l'unique élément maximal).

**Réponse:**

1.  $(A, |)$ est un ensemble partiellement ordonné.
2.  L'ordre n'est pas total car, par exemple, $2$ et $3$ sont incomparables.
3.  Éléments minimaux : $\{2, 3\}$. Éléments maximaux : $\{8, 12\}$.
4.  Il n'y a ni plus petit élément, ni plus grand élément.

</details>

---

## Exercice 10

**Problème:** Montrer par récurrence que pour tout entier $n \ge 1$, la somme des $n$ premiers carrés est donnée par la formule :

$$ \sum_{i=1}^{n} i^2 = \frac{n(n+1)(2n+1)}{6} $$

<details>

<summary>Solution</summary>

**Méthode:** On utilise le principe de récurrence simple.

1.  **Initialisation :** On vérifie que la formule est vraie pour le premier cas, ici $n=1$.
2.  **Hérédité :** On suppose que la formule est vraie pour un entier $k \ge 1$ (hypothèse de récurrence) et on démontre qu'elle est alors aussi vraie pour l'entier suivant, $k+1$.

**Étapes:**

Soit $P(n)$ la proposition : "$\sum_{i=1}^{n} i^2 = \frac{n(n+1)(2n+1)}{6}$".

1.  **Initialisation (pour $n=1$) :**
    -   Calcul du membre de gauche : $\sum_{i=1}^{1} i^2 = 1^2 = 1$.
    -   Calcul du membre de droite : $\frac{1(1+1)(2 \cdot 1+1)}{6} = \frac{1 \cdot 2 \cdot 3}{6} = \frac{6}{6} = 1$.
    -   Les deux membres sont égaux, donc $P(1)$ est vraie.

2.  **Hérédité :**
    -   Soit $k \ge 1$ un entier quelconque.
    -   **Hypothèse de récurrence :** On suppose que $P(k)$ est vraie, c'est-à-dire :

        $$ \sum_{i=1}^{k} i^2 = \frac{k(k+1)(2k+1)}{6} $$

    -   **But :** On veut montrer que $P(k+1)$ est vraie, c'est-à-dire :

        $$ \sum_{i=1}^{k+1} i^2 = \frac{(k+1)((k+1)+1)(2(k+1)+1)}{6} = \frac{(k+1)(k+2)(2k+3)}{6} $$

    -   **Démonstration :** On part du membre de gauche de $P(k+1)$ et on essaie d'arriver au membre de droite.

        $$ \sum_{i=1}^{k+1} i^2 = \left(\sum_{i=1}^{k} i^2\right) + (k+1)^2 $$

        On utilise l'hypothèse de récurrence pour remplacer la somme :

        $$ = \frac{k(k+1)(2k+1)}{6} + (k+1)^2 $$

        On met $(k+1)$ en facteur commun pour simplifier l'expression :

        $$ = (k+1) \left[ \frac{k(2k+1)}{6} + (k+1) \right] $$

        On met tout sur le même dénominateur à l'intérieur des crochets :

        $$ = (k+1) \left[ \frac{2k^2+k}{6} + \frac{6(k+1)}{6} \right] = (k+1) \left[ \frac{2k^2+k+6k+6}{6} \right] $$

        $$ = (k+1) \left[ \frac{2k^2+7k+6}{6} \right] = \frac{(k+1)(2k^2+7k+6)}{6} $$

        Maintenant, on factorise le trinôme $2k^2+7k+6$. On cherche des racines. On peut voir que $(k+2)$ est un facteur probable. En effet, $2k^2+7k+6 = (k+2)(2k+3)$.

        (Vérification : $(k+2)(2k+3) = 2k^2+3k+4k+6 = 2k^2+7k+6$).

        On remplace le trinôme factorisé dans notre expression :

        $$ = \frac{(k+1)(k+2)(2k+3)}{6} $$

        Ceci est exactement le membre de droite de la proposition $P(k+1)$. L'hérédité est donc prouvée.

3.  **Conclusion :**

    Par le principe de récurrence, la proposition $P(n)$ est vraie pour tout entier $n \ge 1$.

**Réponse:** La démonstration par récurrence, en vérifiant l'initialisation pour $n=1$ et en prouvant l'hérédité de $k$ à $k+1$, établit que la formule $\sum_{i=1}^{n} i^2 = \frac{n(n+1)(2n+1)}{6}$ est vraie pour tout $n \ge 1$.

</details>
