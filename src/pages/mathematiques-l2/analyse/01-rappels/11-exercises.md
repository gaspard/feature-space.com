---
id: a04d59bc
type: exercises
order: 11
title: Rappels de logique et suites numériques - exercices (A)
tags:
  - logique
  - suites numériques
  - analyse
  - mathématiques
createdAt: '2025-10-12T14:18:16.499Z'
level: regular
course: Analyse
courseId: 99c39a0d
chapter: Rappels de logique et suites numériques
chapterId: 684d8511
---
# Exercices "Rappels de logique et suites numériques" (A)

## Exercise 1: [Raisonnement Logique]

**Problem:** Soit $n$ un entier. Démontrer par contraposée l'implication suivante : "Si $n^3 + 5$ est impair, alors $n$ est pair".

<details>

<summary>Solution</summary>

**Method:** Pour démontrer l'implication $A \Rightarrow B$ par contraposée, nous allons démontrer son équivalente logique $non(B) \Rightarrow non(A)$.

L'implication à prouver est $A \Rightarrow B$ avec :

-   $A$ : "$n^3 + 5$ est impair"
-   $B$ : "$n$ est pair"

La contraposée est $non(B) \Rightarrow non(A)$ :

-   $non(B)$ : "$n$ n'est pas pair", c'est-à-dire "$n$ est impair".
-   $non(A)$ : "$n^3 + 5$ n'est pas impair", c'est-à-dire "$n^3 + 5$ est pair".

Nous allons donc prouver : "Si $n$ est impair, alors $n^3 + 5$ est pair".

**Steps:**

1.  Supposons que $n$ est impair (hypothèse $non(B)$). Par définition, il existe un entier $k$ tel que $n = 2k + 1$.

2.  Exprimons $n^3 + 5$ en fonction de $k$:

    $n^3 = (2k+1)^3 = (2k)^3 + 3(2k)^2(1) + 3(2k)(1)^2 + 1^3 = 8k^3 + 12k^2 + 6k + 1$.

3.  Maintenant, calculons $n^3 + 5$:

    $n^3 + 5 = (8k^3 + 12k^2 + 6k + 1) + 5 = 8k^3 + 12k^2 + 6k + 6$.

4.  Nous voulons montrer que cette expression est paire. Pour cela, nous la factorisons par 2:

    $n^3 + 5 = 2(4k^3 + 6k^2 + 3k + 3)$.

5.  Puisque $k$ est un entier, l'expression $4k^3 + 6k^2 + 3k + 3$ est aussi un entier. Posons $q = 4k^3 + 6k^2 + 3k + 3$.

    Nous avons $n^3 + 5 = 2q$, ce qui prouve par définition que $n^3 + 5$ est un nombre pair.

6.  Nous avons bien démontré que si $n$ est impair, alors $n^3+5$ est pair. La contraposée est vraie, donc l'implication initiale est vraie.

**Answer:** L'implication "Si $n^3 + 5$ est impair, alors $n$ est pair" est démontrée par contraposée.

</details>

## Exercise 2: [Implication et Réciproque]

**Problem:** Soit $x$ un nombre réel. Considérons l'implication $(P): x > 2 \Rightarrow x^2 > 4$.

1.  L'implication $(P)$ est-elle vraie ? Justifier.
2.  Énoncer l'implication réciproque $(R)$.
3.  L'implication réciproque $(R)$ est-elle vraie ? Si non, fournir un contre-exemple.

<details>

<summary>Solution</summary>

**Method:** Nous allons analyser chaque implication séparément. Pour prouver qu'une implication est vraie, nous utilisons un raisonnement direct. Pour prouver qu'elle est fausse, nous cherchons un contre-exemple, c'est-à-dire une valeur de $x$ pour laquelle l'hypothèse est vraie mais la conclusion est fausse.

**Steps:**

1.  **Analyse de l'implication $(P): x > 2 \Rightarrow x^2 > 4$**
    -   Supposons que l'hypothèse $x > 2$ est vraie.
    -   Puisque $x$ est un nombre positif, on peut élever au carré les deux membres de l'inégalité sans en changer le sens.
    -   $x > 2 \implies x \cdot x > 2 \cdot x$ et $x \cdot x > 2 \cdot 2$.
    -   On obtient $x^2 > 4$. La conclusion est vraie.
    -   L'implication $(P)$ est donc **vraie**.

2.  **Énoncé de la réciproque $(R)$**
    -   L'implication réciproque s'obtient en inversant l'hypothèse et la conclusion.
    -   $(R): x^2 > 4 \Rightarrow x > 2$.

3.  **Analyse de l'implication réciproque $(R)$**
    -   Nous cherchons un contre-exemple : un réel $x$ tel que $x^2 > 4$ (hypothèse vraie) mais $x \ngtr 2$ (conclusion fausse), c'est-à-dire $x \le 2$.
    -   L'inégalité $x^2 > 4$ est équivalente à $x^2 - 4 > 0$, soit $(x-2)(x+2) > 0$. Ceci est vrai pour $x \in ]-\infty, -2[ \cup ]2, +\infty[$.
    -   Nous cherchons un $x$ dans cet ensemble qui vérifie aussi $x \le 2$.
    -   Choisissons $x=-3$.
    -   Vérification de l'hypothèse : $x^2 = (-3)^2 = 9$. On a bien $9 > 4$. L'hypothèse est vraie.
    -   Vérification de la conclusion : $x = -3$. On n'a pas $-3 > 2$. La conclusion est fausse.
    -   $x = -3$ est un contre-exemple.
    -   L'implication réciproque $(R)$ est donc **fausse**.

**Answer:**

1. L'implication $(P)$ est **vraie**.
2. La réciproque $(R)$ est : $x^2 > 4 \Rightarrow x > 2$.
3. La réciproque $(R)$ est **fausse**. Un contre-exemple est $x=-3$.

</details>

## Exercise 3: [Quantificateurs et Négation]

**Problem:** Soit la proposition $P$: "Pour tout nombre réel $x$, il existe un nombre réel $y$ tel que $y^2 = x$".

1.  Traduire la proposition $P$ en langage formel avec des quantificateurs.
2.  La proposition $P$ est-elle vraie ou fausse ? Justifier.
3.  Écrire la négation de $P$, notée $non(P)$, en langage formel.
4.  Traduire $non(P)$ en langage courant.

<details>

<summary>Solution</summary>

**Method:** Nous allons traduire la phrase en suivant l'ordre des quantificateurs. Ensuite, nous évaluerons sa vérité en cherchant un contre-exemple. La négation formelle s'obtient en inversant les quantificateurs et en niant la propriété finale.

**Steps:**

1.  **Traduction formelle de P:**
    -   "Pour tout nombre réel $x$" se traduit par $\forall x \in \mathbb{R}$.
    -   "il existe un nombre réel $y$" se traduit par $\exists y \in \mathbb{R}$.
    -   "tel que $y^2 = x$" est la propriété $y^2=x$.
    -   La proposition $P$ s'écrit donc: $P: \forall x \in \mathbb{R}, \exists y \in \mathbb{R}, y^2 = x$.

2.  **Valeur de vérité de P:**
    -   La proposition affirme que tout nombre réel a une racine carrée réelle.
    -   Ceci est faux. Pour prouver que cette proposition universelle ($\forall x...$) est fausse, il suffit de trouver un contre-exemple.
    -   Considérons $x = -1$.
    -   Existe-t-il un réel $y$ tel que $y^2 = -1$ ? Non, car le carré d'un nombre réel est toujours positif ou nul.
    -   Donc, la proposition $P$ est **fausse**.

3.  **Négation formelle de P:**
    -   On part de $P: \forall x \in \mathbb{R}, \exists y \in \mathbb{R}, y^2 = x$.
    -   Pour nier, on change $\forall$ en $\exists$, $\exists$ en $\forall$, et on nie la propriété $y^2=x$.
    -   $non(P): non(\forall x \in \mathbb{R}, \exists y \in \mathbb{R}, y^2 = x)$
    -   $non(P): \exists x \in \mathbb{R}, non(\exists y \in \mathbb{R}, y^2 = x)$
    -   $non(P): \exists x \in \mathbb{R}, \forall y \in \mathbb{R}, non(y^2 = x)$
    -   $non(P): \exists x \in \mathbb{R}, \forall y \in \mathbb{R}, y^2 \neq x$.

4.  **Traduction de non(P) en langage courant:**
    -   $\exists x \in \mathbb{R}$: "Il existe un nombre réel $x$..."
    -   $\forall y \in \mathbb{R}$: "...tel que pour tout nombre réel $y$..."
    -   $y^2 \neq x$: "...le carré de $y$ est différent de $x$".
    -   Phrase complète : "Il existe un nombre réel $x$ qui n'est le carré d'aucun nombre réel". Cette proposition est vraie (par exemple $x=-1$).

**Answer:**

1. $P: \forall x \in \mathbb{R}, \exists y \in \mathbb{R}, y^2 = x$.
2. La proposition $P$ est **fausse**.
3. $non(P): \exists x \in \mathbb{R}, \forall y \in \mathbb{R}, y^2 \neq x$.
4. "Il existe un nombre réel $x$ tel que pour tout nombre réel $y$, on a $y^2 \neq x$."

</details>

## Exercise 4: [Ordre des Quantificateurs]

**Problem:** Considérons les deux propositions suivantes dans $\mathbb{R}$:

$A: \forall x \in \mathbb{R}, \exists y \in \mathbb{R}, x+y = 0$

$B: \exists y \in \mathbb{R}, \forall x \in \mathbb{R}, x+y = 0$

Déterminer pour chacune si elle est vraie ou fausse, en justifiant soigneusement votre réponse.

<details>

<summary>Solution</summary>

**Method:** Nous analysons le sens de chaque proposition en respectant l'ordre des quantificateurs. Pour $A$, le choix de $y$ peut dépendre de $x$. Pour $B$, le $y$ doit être "universel" et fonctionner pour tous les $x$.

**Steps:**

1.  **Analyse de la proposition A:**
    -   $A: \forall x \in \mathbb{R}, \exists y \in \mathbb{R}, x+y = 0$.
    -   Traduction : "Pour tout nombre réel $x$, on peut trouver un nombre réel $y$ tel que leur somme soit nulle."
    -   Soit $x$ un réel quelconque. Nous cherchons un $y$ qui vérifie $x+y=0$.
    -   L'équation a une solution unique : $y = -x$.
    -   Puisque pour n'importe quel $x \in \mathbb{R}$, son opposé $-x$ est aussi un réel, nous pouvons toujours trouver un tel $y$ (en le choisissant égal à $-x$).
    -   La proposition $A$ est donc **vraie**.

2.  **Analyse de la proposition B:**
    -   $B: \exists y \in \mathbb{R}, \forall x \in \mathbb{R}, x+y = 0$.
    -   Traduction : "Il existe un nombre réel $y$ qui, ajouté à n'importe quel réel $x$, donne une somme nulle."
    -   Cette proposition affirme l'existence d'un $y$ "magique" qui est l'opposé de tous les nombres réels à la fois.
    -   Supposons qu'un tel $y$ existe. Appelons-le $y_0$.
    -   Alors, pour tout $x$, on aurait $x + y_0 = 0$.
    -   Si on choisit $x=1$, on doit avoir $1 + y_0 = 0$, donc $y_0 = -1$.
    -   Si on choisit $x=2$, on doit avoir $2 + y_0 = 0$, donc $y_0 = -2$.
    -   On obtient une contradiction, car $y_0$ ne peut pas être à la fois $-1$ et $-2$.
    -   Il est donc impossible de trouver un tel $y_0$.
    -   La proposition $B$ est donc **fausse**.

**Answer:**

-   La proposition $A$ est **vraie**.
-   La proposition $B$ est **fausse**.

</details>

## Exercise 5: [Raisonnement par Récurrence]

**Problem:** Démontrer par récurrence que pour tout entier $n \ge 1$, la somme des $n$ premiers carrés est donnée par la formule :

$$ \sum_{k=1}^{n} k^2 = \frac{n(n+1)(2n+1)}{6} $$

<details>

<summary>Solution</summary>

**Method:** Nous utilisons un raisonnement par récurrence en deux étapes : initialisation et hérédité.

Soit $P(n)$ la proposition : "$\sum_{k=1}^{n} k^2 = \frac{n(n+1)(2n+1)}{6}$".

**Steps:**

1.  **Initialisation (pour $n=1$)**
    -   Calculons le membre de gauche : $\sum_{k=1}^{1} k^2 = 1^2 = 1$.
    -   Calculons le membre de droite : $\frac{1(1+1)(2 \cdot 1+1)}{6} = \frac{1 \cdot 2 \cdot 3}{6} = \frac{6}{6} = 1$.
    -   Les deux membres sont égaux, donc $P(1)$ est vraie.

2.  **Hérédité**
    -   Soit $p \ge 1$ un entier quelconque.
    -   **Hypothèse de récurrence (HR)** : Supposons que $P(p)$ est vraie, c'est-à-dire : $\sum_{k=1}^{p} k^2 = \frac{p(p+1)(2p+1)}{6}$.
    -   **But** : Montrons que $P(p+1)$ est vraie, c'est-à-dire : $\sum_{k=1}^{p+1} k^2 = \frac{(p+1)((p+1)+1)(2(p+1)+1)}{6} = \frac{(p+1)(p+2)(2p+3)}{6}$.

3.  **Démonstration de l'hérédité**
    -   Partons du membre de gauche de $P(p+1)$ et décomposons-le pour faire apparaître la somme jusqu'à $p$:

        $$ \sum_{k=1}^{p+1} k^2 = \left(\sum_{k=1}^{p} k^2\right) + (p+1)^2 $$

    -   Utilisons l'hypothèse de récurrence pour remplacer la somme :

        $$ = \frac{p(p+1)(2p+1)}{6} + (p+1)^2 $$

    -   Mettons au même dénominateur et factorisons par le terme commun $(p+1)$:

        $$ = \frac{p(p+1)(2p+1) + 6(p+1)^2}{6} = \frac{(p+1)[p(2p+1) + 6(p+1)]}{6} $$

    -   Développons l'expression entre crochets :

        $$ [p(2p+1) + 6(p+1)] = [2p^2 + p + 6p + 6] = [2p^2 + 7p + 6] $$

    -   Factorisons le trinôme $2p^2 + 7p + 6$. Les racines sont $p = \frac{-7 \pm \sqrt{49-48}}{4} = \frac{-7 \pm 1}{4}$, soit $p=-2$ et $p=-3/2$.

        La factorisation est $2(p - (-2))(p - (-3/2)) = (p+2)(2p+3)$.

    -   Substituons cette factorisation dans notre expression :

        $$ \frac{(p+1)[2p^2 + 7p + 6]}{6} = \frac{(p+1)(p+2)(2p+3)}{6} $$

    -   C'est exactement le membre de droite de $P(p+1)$. L'hérédité est prouvée.

4.  **Conclusion**
    -   Par le principe de récurrence, la proposition $P(n)$ est vraie pour tout entier $n \ge 1$.

**Answer:** La formule $\sum_{k=1}^{n} k^2 = \frac{n(n+1)(2n+1)}{6}$ est démontrée par récurrence pour tout $n \ge 1$.

</details>

## Exercise 6: [Récurrence et Inégalités]

**Problem:** Démontrer par récurrence que pour tout entier $n \ge 4$, on a $2^n \ge n^2$.

<details>

<summary>Solution</summary>

**Method:** Nous appliquons le raisonnement par récurrence. L'étape clé de l'hérédité consistera à utiliser l'hypothèse de récurrence et à montrer que l'écart entre $2^{k+1}$ et $(k+1)^2$ reste favorable.

Soit $P(n)$ la proposition : "$2^n \ge n^2$".

**Steps:**

1.  **Initialisation (pour $n=4$, le premier rang concerné)**
    -   Membre de gauche : $2^4 = 16$.
    -   Membre de droite : $4^2 = 16$.
    -   On a bien $16 \ge 16$, donc $P(4)$ est vraie.

2.  **Hérédité**
    -   Soit $k \ge 4$ un entier.
    -   **Hypothèse de récurrence (HR)** : Supposons $P(k)$ vraie, soit $2^k \ge k^2$.
    -   **But** : Montrer $P(k+1)$ vraie, soit $2^{k+1} \ge (k+1)^2$.

3.  **Démonstration de l'hérédité**
    -   Partons du membre de gauche de $P(k+1)$:

        $$ 2^{k+1} = 2 \cdot 2^k $$

    -   En utilisant l'HR ($2^k \ge k^2$), on peut minorer cette expression :

        $$ 2^{k+1} \ge 2 \cdot k^2 $$

    -   Maintenant, nous voulons montrer que $2k^2 \ge (k+1)^2$. Si nous y parvenons, alors par transitivité, nous aurons $2^{k+1} \ge (k+1)^2$.
    -   Étudions la différence $2k^2 - (k+1)^2$:

        $$ 2k^2 - (k^2 + 2k + 1) = k^2 - 2k - 1 $$

    -   Nous devons montrer que $k^2 - 2k - 1 \ge 0$ pour $k \ge 4$.
    -   Considérons le polynôme $f(x)=x^2-2x-1$. Ses racines sont $x = \frac{2 \pm \sqrt{4+4}}{2} = 1 \pm \sqrt{2}$.
    -   $1+\sqrt{2} \approx 1+1.414 = 2.414$.
    -   Le polynôme est positif à l'extérieur de ses racines. Comme $k \ge 4$, on a $k > 1+\sqrt{2}$, donc $k^2-2k-1 > 0$.
    -   On a donc bien $2k^2 > (k+1)^2$ pour $k \ge 4$.
    -   En résumé : $2^{k+1} \ge 2k^2$ et $2k^2 > (k+1)^2$, donc $2^{k+1} > (k+1)^2$.
    -   Ceci prouve que $P(k+1)$ est vraie.

4.  **Conclusion**
    -   Par le principe de récurrence, $P(n)$ est vraie pour tout entier $n \ge 4$.

**Answer:** L'inégalité $2^n \ge n^2$ est démontrée par récurrence pour tout entier $n \ge 4$.

</details>

## Exercise 7: [Définition de la Convergence]

**Problem:** En utilisant la définition formelle de la limite (avec $\epsilon$ et $N$), montrer que la suite $(u_n)_{n \ge 1}$ définie par $u_n = \frac{3n+2}{n+1}$ converge vers $3$.

<details>

<summary>Solution</summary>

**Method:** Nous devons montrer que $\forall \epsilon > 0, \exists N \in \mathbb{N}, \forall n \ge N, |u_n - 3| \le \epsilon$.

Notre but est de fixer un $\epsilon > 0$ arbitraire, puis de manipuler l'inégalité $|u_n - 3| \le \epsilon$ pour trouver une condition sur $n$ de la forme $n \ge N$. Ce $N$ dépendra de $\epsilon$.

**Steps:**

1.  Soit $\epsilon > 0$ un nombre réel fixé.

2.  Calculons et simplifions l'expression $|u_n - 3|$:

    $$ |u_n - 3| = \left| \frac{3n+2}{n+1} - 3 \right| = \left| \frac{3n+2 - 3(n+1)}{n+1} \right| = \left| \frac{3n+2 - 3n - 3}{n+1} \right| = \left| \frac{-1}{n+1} \right| $$

3.  Puisque $n \ge 1$, $n+1$ est positif. Donc $|-1/(n+1)| = 1/(n+1)$.

    L'inégalité que nous voulons résoudre est :

    $$ \frac{1}{n+1} \le \epsilon $$

4.  Isolons $n$. Comme $\epsilon > 0$ et $n+1 > 0$, nous pouvons inverser les termes en changeant le sens de l'inégalité :

    $$ n+1 \ge \frac{1}{\epsilon} $$

    $$ n \ge \frac{1}{\epsilon} - 1 $$

5.  Nous avons trouvé la condition sur $n$. Il nous suffit de choisir un entier $N$ qui la satisfait.

    Posons $N$ comme un entier tel que $N \ge \frac{1}{\epsilon} - 1$. Par exemple, nous pouvons choisir $N = \max\left(1, \lfloor \frac{1}{\epsilon} - 1 \rfloor + 1\right)$ pour nous assurer que $N$ est un entier positif et supérieur à la valeur requise.

6.  Vérifions notre choix. Soit un tel $N$ choisi. Pour tout entier $n \ge N$, on a aussi $n \ge \frac{1}{\epsilon} - 1$, ce qui implique $n+1 \ge \frac{1}{\epsilon}$, et donc $\frac{1}{n+1} \le \epsilon$.

    Ceci est équivalent à $|u_n - 3| \le \epsilon$.

7.  La définition est satisfaite. Nous avons montré que pour tout $\epsilon > 0$, on peut trouver un rang $N$ à partir duquel les termes de la suite sont à une distance de $3$ inférieure ou égale à $\epsilon$.

**Answer:** La suite $(u_n)$ converge bien vers $3$ selon la définition formelle.

$\lim_{n \to \infty} \frac{3n+2}{n+1} = 3$

</details>

## Exercise 8: [Suite Bornée et Divergente]

**Problem:** Soit la suite $(u_n)_{n \in \mathbb{N}}$ définie par $u_n = \sin(\frac{n\pi}{2})$.

1.  Calculer les 5 premiers termes de la suite (pour $n=0, 1, 2, 3, 4$).
2.  Montrer que la suite est bornée.
3.  En utilisant un raisonnement par l'absurde, montrer que la suite est divergente.

<details>

<summary>Solution</summary>

**Method:** Nous allons d'abord calculer les termes pour comprendre le comportement de la suite. Pour montrer qu'elle est bornée, nous utilisons les propriétés de la fonction sinus. Pour la divergence, nous supposons qu'elle converge vers une limite $l$ et nous montrons que cela mène à une contradiction en utilisant la définition de la convergence.

**Steps:**

1.  **Calcul des premiers termes:**
    -   $u_0 = \sin(0) = 0$
    -   $u_1 = \sin(\pi/2) = 1$
    -   $u_2 = \sin(\pi) = 0$
    -   $u_3 = \sin(3\pi/2) = -1$
    -   $u_4 = \sin(2\pi) = 0$
    -   La suite est périodique de période 4 et ses termes sont $0, 1, 0, -1, 0, 1, 0, -1, \dots$

2.  **Montrer que la suite est bornée:**
    -   Pour tout $x \in \mathbb{R}$, on sait que $-1 \le \sin(x) \le 1$.
    -   Donc, pour tout $n \in \mathbb{N}$, on a $-1 \le \sin(\frac{n\pi}{2}) \le 1$.
    -   Cela signifie que $-1 \le u_n \le 1$.
    -   La suite est minorée par $-1$ et majorée par $1$. Elle est donc bornée. On peut aussi dire que $|u_n| \le 1$ pour tout $n$.

3.  **Montrer que la suite est divergente:**
    -   **Raisonnement par l'absurde** : Supposons que la suite $(u_n)$ converge vers une limite $l \in \mathbb{R}$.
    -   Selon la définition de la convergence, pour n'importe quel $\epsilon > 0$, il existe un rang $N$ tel que pour tout $n \ge N$, on a $|u_n - l| \le \epsilon$.
    -   Choisissons $\epsilon = 1/2$. Il doit donc exister un rang $N$ tel que pour $n \ge N$, tous les termes $u_n$ sont dans l'intervalle $[l-1/2, l+1/2]$.
    -   Cependant, la suite prend une infinité de fois la valeur $1$ (pour $n = 1, 5, 9, \dots$) et une infinité de fois la valeur $-1$ (pour $n = 3, 7, 11, \dots$).
    -   On peut donc trouver un entier $n_1 \ge N$ tel que $u_{n_1}=1$. Pour ce terme, on doit avoir $|1-l| \le 1/2$, ce qui implique $l \in [1/2, 3/2]$.
    -   On peut aussi trouver un entier $n_2 \ge N$ tel que $u_{n_2}=-1$. Pour ce terme, on doit avoir $|-1-l| \le 1/2$, ce qui implique $l \in [-3/2, -1/2]$.
    -   La limite $l$ doit appartenir simultanément aux intervalles $[1/2, 3/2]$ et $[-3/2, -1/2]$.
    -   Ces deux intervalles sont disjoints. C'est une **contradiction**.
    -   Notre hypothèse de départ ("la suite converge") est donc fausse. La suite $(u_n)$ est divergente.

**Answer:** La suite $(u_n)$ est bornée mais divergente.

</details>

## Exercise 9: [Algèbre des Limites]

**Problem:** Calculer la limite de la suite $(u_n)_{n \in \mathbb{N}}$ définie par $u_n = \frac{-2n^3 + 5n - 8}{4n^3 + n^2 + 1}$.

<details>

<summary>Solution</summary>

**Method:** La suite est une fraction rationnelle en $n$. Lorsque $n \to \infty$, nous avons une forme indéterminée du type "$\infty/\infty$". Pour lever l'indétermination, on factorise le numérateur et le dénominateur par le terme de plus haut degré, ici $n^3$.

**Steps:**

1.  Factorisons $n^3$ au numérateur et au dénominateur :

    $$ u_n = \frac{n^3(-2 + \frac{5n}{n^3} - \frac{8}{n^3})}{n^3(4 + \frac{n^2}{n^3} + \frac{1}{n^3})} $$

2.  Simplifions l'expression en simplifiant par $n^3$ (pour $n \ge 1$, $n^3 \neq 0$) et en réduisant les fractions :

    $$ u_n = \frac{-2 + \frac{5}{n^2} - \frac{8}{n^3}}{4 + \frac{1}{n} + \frac{1}{n^3}} $$

3.  Utilisons les limites de référence. On sait que pour $k > 0$, $\lim_{n \to \infty} \frac{1}{n^k} = 0$.

    Donc, $\lim_{n \to \infty} \frac{5}{n^2} = 0$, $\lim_{n \to \infty} \frac{8}{n^3} = 0$, $\lim_{n \to \infty} \frac{1}{n} = 0$, $\lim_{n \to \infty} \frac{1}{n^3} = 0$.

4.  Appliquons l'algèbre des limites (limite d'une somme, d'un quotient) :
    -   Limite du numérateur : $\lim_{n \to \infty} (-2 + \frac{5}{n^2} - \frac{8}{n^3}) = -2 + 0 - 0 = -2$.
    -   Limite du dénominateur : $\lim_{n \to \infty} (4 + \frac{1}{n} + \frac{1}{n^3}) = 4 + 0 + 0 = 4$.

5.  La limite du dénominateur est non nulle ($4 \neq 0$), on peut donc calculer la limite du quotient :

    $$ \lim_{n \to \infty} u_n = \frac{\lim (\text{numérateur})}{\lim (\text{dénominateur})} = \frac{-2}{4} = -\frac{1}{2} $$

**Answer:** $\lim_{n \to \infty} \frac{-2n^3 + 5n - 8}{4n^3 + n^2 + 1} = -\frac{1}{2}$

</details>

## Exercise 10: [Limite et Composition]

**Problem:** Calculer la limite de la suite $(u_n)_{n \ge 1}$ définie par $u_n = \sqrt{\frac{9n^2 - 2n}{n^2 + 3n + 1}}$.

<details>

<summary>Solution</summary>

**Method:** La suite est de la forme $u_n = f(v_n)$ avec $f(x) = \sqrt{x}$ et $v_n = \frac{9n^2 - 2n}{n^2 + 3n + 1}$. Nous allons d'abord calculer la limite de la suite $(v_n)$ en utilisant la méthode pour les fractions rationnelles. Ensuite, comme la fonction racine carrée est continue, nous pourrons appliquer le théorème de composition des limites.

**Steps:**

1.  **Calculer la limite de la suite interne $(v_n)$:**

    $$ v_n = \frac{9n^2 - 2n}{n^2 + 3n + 1} $$

    On factorise par le terme de plus haut degré, $n^2$:

    $$ v_n = \frac{n^2(9 - \frac{2}{n})}{n^2(1 + \frac{3}{n} + \frac{1}{n^2})} = \frac{9 - \frac{2}{n}}{1 + \frac{3}{n} + \frac{1}{n^2}} $$

    En utilisant $\lim_{n \to \infty} \frac{c}{n^k} = 0$, on obtient:

    $$ \lim_{n \to \infty} v_n = \frac{9 - 0}{1 + 0 + 0} = 9 $$

    Soit $l = 9$.

2.  **Appliquer le théorème de composition:**
    -   La suite $(v_n)$ converge vers $l = 9$.
    -   La fonction $f(x) = \sqrt{x}$ est continue sur son domaine de définition $[0, +\infty[$. En particulier, elle est continue en $x=9$.
    -   Le théorème de composition des limites nous dit que si $v_n \to l$ et $f$ est continue en $l$, alors $\lim_{n \to \infty} f(v_n) = f(l)$.

3.  **Calculer la limite finale:**

    $$ \lim_{n \to \infty} u_n = \lim_{n \to \infty} f(v_n) = f(\lim_{n \to \infty} v_n) = f(9) = \sqrt{9} = 3 $$

**Answer:** $\lim_{n \to \infty} \sqrt{\frac{9n^2 - 2n}{n^2 + 3n + 1}} = 3$

</details>

## Exercise 11: [Limite et Quantité Conjuguée]

**Problem:** Calculer la limite de la suite $(u_n)_{n \in \mathbb{N}}$ définie par $u_n = \sqrt{n^2 + 4n} - n$.

<details>

<summary>Solution</summary>

**Method:** Lorsque $n \to \infty$, nous avons une forme indéterminée du type "$\infty - \infty$". Pour lever cette indétermination, nous utilisons la technique de la "quantité conjuguée". Cela consiste à multiplier et diviser l'expression par son conjugué, qui est ici $\sqrt{n^2 + 4n} + n$. On utilise l'identité remarquable $(a-b)(a+b) = a^2 - b^2$.

**Steps:**

1.  Multiplions et divisons $u_n$ par sa quantité conjuguée :

    $$ u_n = (\sqrt{n^2 + 4n} - n) \times \frac{\sqrt{n^2 + 4n} + n}{\sqrt{n^2 + 4n} + n} $$

2.  Appliquons l'identité remarquable au numérateur :

    $$ u_n = \frac{(\sqrt{n^2 + 4n})^2 - n^2}{\sqrt{n^2 + 4n} + n} = \frac{(n^2 + 4n) - n^2}{\sqrt{n^2 + 4n} + n} = \frac{4n}{\sqrt{n^2 + 4n} + n} $$

3.  Nous avons maintenant une forme indéterminée "$\infty/\infty$". Pour la lever, nous factorisons par le terme dominant au dénominateur. Sous la racine, le terme dominant est $n^2$.

    $$ \sqrt{n^2 + 4n} = \sqrt{n^2(1 + \frac{4}{n})} = \sqrt{n^2}\sqrt{1 + \frac{4}{n}} = |n|\sqrt{1 + \frac{4}{n}} $$

    Comme $n \to \infty$, $n$ est positif, donc $|n|=n$.

    Le dénominateur devient : $n\sqrt{1 + \frac{4}{n}} + n$.

4.  Factorisons par $n$ au dénominateur et simplifions l'expression de $u_n$:

    $$ u_n = \frac{4n}{n(\sqrt{1 + \frac{4}{n}} + 1)} = \frac{4}{\sqrt{1 + \frac{4}{n}} + 1} $$

5.  Calculons la limite de cette nouvelle expression. On sait que $\lim_{n \to \infty} \frac{4}{n} = 0$.

    $$ \lim_{n \to \infty} u_n = \frac{4}{\sqrt{1 + 0} + 1} = \frac{4}{\sqrt{1} + 1} = \frac{4}{1+1} = \frac{4}{2} = 2 $$

**Answer:** $\lim_{n \to \infty} (\sqrt{n^2 + 4n} - n) = 2$

</details>
