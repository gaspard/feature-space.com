---
id: 5b9685d9
type: concepts
order: 10
title: Rappels de logique et suites numériques - concepts (A)
tags:
  - logique
  - suites numériques
  - analyse
  - mathématiques
course: Analyse
courseId: 99c39a0d
chapter: Rappels de logique et suites numériques
chapterId: 684d8511
level: regular
createdAt: '2025-10-12T14:18:16.499Z'
---
# Rappels de logique et suites numériques (A)

---

## Concept 1: Implication, Équivalence et Raisonnements Logiques

### Prérequis

-   Notion de **proposition** : un énoncé qui peut être soit vrai, soit faux.
-   Opérateurs logiques de base : **ET** (conjonction), **OU** (disjonction), **NON** (négation).

### Définition

En mathématiques, nous assemblons des propositions pour construire des raisonnements. Deux connecteurs logiques fondamentaux sont l'implication et l'équivalence.

1.  **L'Implication ($A \Rightarrow B$)**

    Une implication est un énoncé de la forme "Si A est vraie, alors B est vraie". On la note $A \Rightarrow B$.

    -   $A$ est appelée l'**hypothèse** ou la prémisse.
    -   $B$ est appelée la **conclusion**.
    
    L'implication $A \Rightarrow B$ est considérée comme vraie dans tous les cas, sauf un : lorsque l'hypothèse $A$ est vraie et que la conclusion $B$ est fausse. Si l'hypothèse $A$ est fausse, l'implication est toujours vraie, quelle que soit la valeur de vérité de $B$.

2.  **L'Équivalence ($A \Leftrightarrow B$)**

    Une équivalence est un énoncé qui signifie que $A$ et $B$ ont la même valeur de vérité. On la note $A \Leftrightarrow B$ et on lit "$A$ est équivalent à $B$" ou "$A$ si et seulement si $B$".

    Cela revient à dire que l'implication $A \Rightarrow B$ est vraie ET que l'implication réciproque $B \Rightarrow A$ est aussi vraie.

    $$ (A \Leftrightarrow B) \text{ signifie } (A \Rightarrow B) \text{ et } (B \Rightarrow A) $$

### Propriétés Clés

-   **Raisonnement direct** : Pour prouver $A \Rightarrow B$, on suppose que $A$ est vraie et on utilise des déductions logiques pour démontrer que $B$ doit aussi être vraie.

-   **La Contraposée** : L'implication $A \Rightarrow B$ est logiquement équivalente à sa contraposée : $non(B) \Rightarrow non(A)$. Démontrer l'une revient à démontrer l'autre. C'est une technique de preuve très utile.

    $$ (A \Rightarrow B) \Leftrightarrow (non(B) \Rightarrow non(A)) $$

-   **Raisonnement par l'absurde** : Pour démontrer une proposition $P$ (qui peut être une implication $A \Rightarrow B$), on suppose que sa négation $non(P)$ est vraie, et on montre que cette hypothèse mène à une contradiction (un énoncé qui est toujours faux, comme $1=0$). Si $non(P)$ mène à une contradiction, alors $non(P)$ doit être fausse, et donc $P$ doit être vraie.

    Pour prouver $A \Rightarrow B$, on suppose $A$ et $non(B)$ et on cherche une contradiction.

-   **Lien avec la théorie des ensembles** : Si $P$ et $Q$ sont deux ensembles, l'implication logique est directement liée à la notion d'inclusion.

    $$ (x \in P \Rightarrow x \in Q) \Leftrightarrow (P \subset Q) $$

### Exemples

**Exemple 1 (Implication simple)**

Soient $A$ la proposition "$x$ est un nombre réel tel que $x = 3$" et $B$ la proposition "$x^2 = 9$".

L'implication $A \Rightarrow B$ s'écrit : $x = 3 \Rightarrow x^2 = 9$.

**Démonstration (directe)** : Supposons que l'hypothèse $A$ soit vraie, c'est-à-dire $x = 3$. En élevant au carré les deux membres de l'égalité, on obtient $x^2 = 3^2$, ce qui donne $x^2 = 9$. La conclusion $B$ est donc vraie. L'implication est correcte.

**Exemple 2 (Démonstration par contraposée)**

Soit $n$ un entier. Montrons l'implication : "Si $n^2$ est pair, alors $n$ est pair".

L'énoncé est de la forme $A \Rightarrow B$ avec $A: \{n^2 \text{ est pair}\}$ et $B: \{n \text{ est pair}\}$.

**Démonstration (par contraposée)** : La contraposée est $non(B) \Rightarrow non(A)$.

$non(B)$ est "$n$ n'est pas pair", c'est-à-dire "$n$ est impair".

$non(A)$ est "$n^2$ n'est pas pair", c'est-à-dire "$n^2$ est impair".

Nous devons donc prouver : "Si $n$ est impair, alors $n^2$ est impair".

Supposons que $n$ est impair. Alors il existe un entier $k$ tel que $n = 2k + 1$.

Calculons $n^2$:

$$ n^2 = (2k+1)^2 = 4k^2 + 4k + 1 = 2(2k^2 + 2k) + 1 $$

Posons $k' = 2k^2 + 2k$. Comme $k$ est un entier, $k'$ est aussi un entier. On a donc $n^2 = 2k' + 1$, ce qui prouve que $n^2$ est impair. La contraposée est vraie, donc l'implication initiale est vraie.

**Exemple 3 (Équivalence)**

Montrons que pour un nombre réel $x$, on a l'équivalence : $x^2 - 5x + 6 = 0 \Leftrightarrow (x = 2 \text{ ou } x=3)$.

**Démonstration** : Nous devons prouver les deux implications.

1.  Sens ($\Rightarrow$): Supposons $x^2 - 5x + 6 = 0$. Le polynôme se factorise en $(x-2)(x-3)$. L'équation devient $(x-2)(x-3)=0$. Un produit de facteurs est nul si et seulement si l'un des facteurs est nul. Donc, $x-2=0$ ou $x-3=0$. Cela donne $x=2$ ou $x=3$. L'implication est prouvée.
2.  Sens ($\Leftarrow$): Supposons que $x=2$ ou $x=3$.
    -   Si $x=2$, alors $x^2 - 5x + 6 = 2^2 - 5(2) + 6 = 4 - 10 + 6 = 0$. L'équation est vérifiée.
    -   Si $x=3$, alors $x^2 - 5x + 6 = 3^2 - 5(3) + 6 = 9 - 15 + 6 = 0$. L'équation est vérifiée.

    Dans les deux cas, la conclusion est vraie. L'implication réciproque est prouvée.

Puisque les deux implications sont vraies, l'équivalence est démontrée.

### Contre-exemples

**Contre-exemple 1 (Implication réciproque fausse)**

Considérons l'implication de l'exemple 1 : $x=3 \Rightarrow x^2=9$. L'implication réciproque est $x^2=9 \Rightarrow x=3$.

Cette réciproque est **fausse**. Pour le prouver, il suffit de trouver un **contre-exemple** : un cas où l'hypothèse ($x^2=9$) est vraie mais la conclusion ($x=3$) est fausse.

Le nombre $x=-2$ n'est pas un contre-exemple, car l'hypothèse est fausse ($(-2)^2 = 4 \ne 9$).

Le nombre $x=-3$ est un contre-exemple car $x^2 = (-3)^2 = 9$ (hypothèse vraie) mais $x=-3 \neq 3$ (conclusion fausse).

Comme la réciproque est fausse, on n'a pas l'équivalence $x=3 \Leftrightarrow x^2=9$.

**Contre-exemple 2 (Confondre implication et causalité)**

L'implication "$s'il pleut, alors le sol est mouillé$" est généralement vraie. La réciproque "$si le sol est mouillé, alors il pleut$" est fausse. Le sol peut être mouillé parce que quelqu'un l'a arrosé.

En mathématiques : soit la proposition "Si un entier $n$ est divisible par 6, alors il est divisible par 3". C'est vrai.

La réciproque "Si un entier $n$ est divisible par 3, alors il est divisible par 6" est fausse. Contre-exemple : $n=9$. Il est divisible par 3 mais pas par 6.

### Concepts Connexes

-   **Quantificateurs Logiques** : Les propositions contiennent souvent des variables. Les quantificateurs ($\forall, \exists$) précisent pour quelles valeurs de ces variables la proposition est vraie.
-   **Théorie des Ensembles** : Les opérations logiques ont des équivalents en théorie des ensembles : l'implication correspond à l'inclusion ($\subset$), le "ET" à l'intersection ($\cap$), le "OU" à la réunion ($\cup$), et la négation au complémentaire.

---

## Concept 2: Quantificateurs Logiques

### Prérequis

-   Notion de **proposition** et d'**ensemble**.
-   Connaissance des ensembles de nombres usuels ($\mathbb{N}, \mathbb{Z}, \mathbb{Q}, \mathbb{R}, \mathbb{C}$).

### Définition

Les quantificateurs sont des symboles logiques qui indiquent le "degré de généralité" d'une proposition qui dépend d'une variable. Ils permettent de transformer un énoncé ouvert (dont la valeur de vérité dépend d'une variable) en une proposition (qui est soit vraie, soit fausse).

1.  **Le Quantificateur Universel ($\forall$)**

    Le symbole $\forall$ se lit "pour tout" ou "quel que soit". Une proposition de la forme "$\forall x \in E, P(x)$" affirme que la propriété $P(x)$ est vraie pour **tous** les éléments $x$ de l'ensemble $E$. Pour que cette proposition soit vraie, il ne faut aucune exception.

2.  **Le Quantificateur Existentiel ($\exists$)**

    Le symbole $\exists$ se lit "il existe". Une proposition de la forme "$\exists x \in E, P(x)$" affirme qu'il existe **au moins un** élément $x$ dans l'ensemble $E$ pour lequel la propriété $P(x)$ est vraie. Pour que cette proposition soit vraie, un seul exemple suffit.

3.  **Le Quantificateur d'Unicité ($\exists!$)**

    Le symbole $\exists!$ se lit "il existe un unique". La proposition "$\exists! x \in E, P(x)$" affirme qu'il y a un et un seul élément $x$ dans $E$ qui vérifie $P(x)$.

### Propriétés Clés

-   **L'ordre des quantificateurs est crucial** : Inverser l'ordre de deux quantificateurs de nature différente ($\forall$ et $\exists$) change radicalement le sens de la proposition.
    -   $\forall x \in E, \exists y \in F, P(x, y)$ signifie que pour chaque $x$, on peut trouver un $y$ (qui peut dépendre de $x$) tel que $P(x, y)$ soit vraie.
    -   $\exists y \in F, \forall x \in E, P(x, y)$ signifie qu'il existe un $y$ "universel" qui fonctionne pour tous les $x$ à la fois. C'est une affirmation beaucoup plus forte.

-   **Négation d'une proposition quantifiée** : Pour nier une proposition commençant par des quantificateurs, on applique les règles suivantes :
    -   La négation de $\forall$ est $\exists$.
    -   La négation de $\exists$ est $\forall$.
    -   On nie la proposition qui suit les quantificateurs.

    Exemple : $non(\forall x \in E, P(x))$ est $\exists x \in E, non(P(x))$.

    Exemple : $non(\exists x \in E, P(x))$ est $\forall x \in E, non(P(x))$.

-   **Contre-exemple** : Pour démontrer qu'une proposition universelle "$\forall x \in E, P(x)$" est **fausse**, il suffit de trouver **un seul** élément $x_0 \in E$ pour lequel $P(x_0)$ est fausse. Cet élément $x_0$ est appelé un **contre-exemple**. C'est la mise en pratique de la règle de négation.

### Exemples

**Exemple 1 (Quantificateur universel)**

Considérons la proposition $P_1 : \forall x \in \mathbb{R}, x^2 \ge 0$.

Cette proposition affirme que le carré de n'importe quel nombre réel est positif ou nul. C'est une propriété fondamentale de $\mathbb{R}$, donc la proposition $P_1$ est **vraie**.

**Exemple 2 (Quantificateur existentiel et unicité)**

Considérons les propositions suivantes dans $\mathbb{R}$:

-   $P_2 : \exists x \in \mathbb{R}, x^2 - 4 = 0$. Cette proposition est **vraie**, car on peut trouver au moins une solution. Par exemple, $x=2$ fonctionne ($2^2-4=0$). $x=-2$ fonctionne aussi.
-   $P_3 : \exists! x \in \mathbb{R}, x^2 - 4 = 0$. Cette proposition est **fausse**, car il y a deux solutions ($2$ et $-2$), et non une seule.
-   $P_4 : \exists! x \in \mathbb{R}, 2x + 6 = 0$. Cette proposition est **vraie**, car l'unique solution est $x=-3$.

**Exemple 3 (Ordre des quantificateurs)**

Comparons les deux propositions suivantes pour des fonctions $f: \mathbb{R} \to \mathbb{R}$:

-   $P_5: \forall x \in \mathbb{R}, \exists M \in \mathbb{R}, f(x) \le M$.

    Cette proposition est toujours **vraie** pour n'importe quelle fonction $f$. Pour un $x$ donné, $f(x)$ est un nombre réel. On peut toujours choisir $M = f(x)$ ou $M = f(x)+1$, et l'inégalité sera vérifiée. Le choix de $M$ dépend de $x$.

-   $P_6: \exists M \in \mathbb{R}, \forall x \in \mathbb{R}, f(x) \le M$.

    Cette proposition signifie que la fonction $f$ est **majorée**. Elle est **vraie** pour certaines fonctions (par exemple $f(x) = -x^2$, on peut prendre $M=0$) mais **fausse** pour d'autres (par exemple $f(x)=x$, qui n'est pas majorée sur $\mathbb{R}$).

L'inversion des quantificateurs a changé une proposition toujours vraie en une qui définit une propriété spécifique (être majorée).

### Contre-exemples

**Contre-exemple 1 (Démontrer qu'une proposition universelle est fausse)**

Considérons la proposition $P : \forall n \in \mathbb{N}, n^2+n+41$ est un nombre premier.

Testons les premières valeurs de $n$:

-   $n=0 : 41$ (premier)
-   $n=1 : 1+1+41 = 43$ (premier)
-   $n=2 : 4+2+41 = 47$ (premier)

...

-   $n=39 : 39^2+39+41 = 1521+39+41 = 1601$ (premier)

La proposition semble vraie. Cependant, pour la prouver, il faudrait un raisonnement général. Pour la réfuter, un seul contre-exemple suffit.

Cherchons un contre-exemple. Essayons $n=40$:

$40^2 + 40 + 41 = 1600 + 40 + 41 = 1681$.

Or, $1681 = 41^2 = 41 \times 41$. Ce n'est pas un nombre premier.

Donc, $n=40$ est un **contre-exemple**. La proposition $P$ est **fausse**.

**Contre-exemple 2 (Négation d'une proposition)**

Soit la définition (simplifiée) de la convergence d'une suite $(u_n)$ vers 0 : $\forall \epsilon > 0, \exists N \in \mathbb{N}, \forall n \ge N, |u_n| \le \epsilon$.

Considérons la suite $u_n = (-1)^n$. Montrons qu'elle ne converge pas vers 0 en prouvant que la proposition de convergence est fausse.

La négation de cette proposition est :

$non(\forall \epsilon > 0, \dots) \equiv \exists \epsilon > 0, non(\exists N, \dots) \equiv \exists \epsilon > 0, \forall N \in \mathbb{N}, non(\forall n \ge N, \dots) \equiv \exists \epsilon > 0, \forall N \in \mathbb{N}, \exists n \ge N, non(|u_n| \le \epsilon)$.

Soit $\exists \epsilon > 0, \forall N \in \mathbb{N}, \exists n \ge N, |u_n| > \epsilon$.

Pour montrer que la négation est vraie, nous devons trouver un $\epsilon$ qui fonctionne. Choisissons $\epsilon = 1/2$.

Maintenant, nous devons montrer que pour n'importe quel $N \in \mathbb{N}$, on peut trouver un entier $n \ge N$ tel que $|(-1)^n| > 1/2$.

Quel que soit $N$, on peut toujours choisir $n=N$ (ou n'importe quel entier plus grand). Pour ce $n$, on a $|u_n| = |(-1)^n| = 1$.

Et $1 > 1/2$.

Donc, la négation est vraie. La suite ne converge pas vers 0.

### Concepts Connexes

-   **Démonstration** : La plupart des théorèmes mathématiques sont des propositions universelles. Leur preuve nécessite un raisonnement général, pas seulement des exemples.
-   **Analyse (Continuité, Limites)** : Les définitions formelles en analyse sont un champ d'application majeur des quantificateurs, notamment avec l'alternance $\forall \epsilon, \exists \alpha, \dots$.

---

## Concept 3: Raisonnement par Récurrence

### Prérequis

-   Logique de base (implication).
-   Manipulation des expressions algébriques (sommes, factorisation).
-   Ensemble des entiers naturels $\mathbb{N} = \{0, 1, 2, \dots\}$.

### Définition

Le raisonnement par récurrence (ou induction mathématique) est une technique de démonstration utilisée pour prouver qu'une propriété $P(n)$ est vraie pour tous les entiers naturels $n$ à partir d'un certain rang $n_0$.

Un raisonnement par récurrence se déroule en deux étapes fondamentales :

1.  **Initialisation (ou cas de base)** : On vérifie que la propriété $P(n_0)$ est vraie pour le premier entier concerné, $n_0$ (souvent $n_0=0$ ou $n_0=1$).

2.  **Hérédité (ou pas de récurrence)** : On suppose que la propriété $P(k)$ est vraie pour un entier quelconque $k \ge n_0$. Cette supposition est appelée l'**hypothèse de récurrence (HR)**. À partir de cette hypothèse, on démontre que la propriété est également vraie pour l'entier suivant, c'est-à-dire que $P(k+1)$ est vraie. On prouve donc l'implication $P(k) \Rightarrow P(k+1)$ pour tout $k \ge n_0$.

Si ces deux étapes sont validées, on peut conclure que la propriété $P(n)$ est vraie pour tous les entiers $n \ge n_0$. L'idée est que si la propriété est vraie au début et que l'on sait passer d'un rang au suivant, on peut "atteindre" tous les entiers de proche en proche.

Il existe une variante, la **récurrence forte**, où l'hypothèse de récurrence consiste à supposer que $P(i)$ est vraie pour *tous* les entiers $i$ de $n_0$ à $k$, pour en déduire $P(k+1)$.

### Propriétés Clés

-   **Domaine de validité** : La récurrence prouve la propriété pour tous les entiers *à partir* du cas de base $n_0$.
-   **Hypothèse de récurrence** : C'est le cœur du raisonnement. On ne démontre pas $P(k)$, on le *suppose* pour démontrer $P(k+1)$. C'est la structure de l'implication $A \Rightarrow B$ où $A=P(k)$ et $B=P(k+1)$.
-   **Structure de la preuve d'hérédité** :
    -   Énoncer clairement l'hypothèse de récurrence pour un entier $k$ fixé.
    -   Énoncer ce que l'on veut démontrer (la propriété au rang $k+1$).
    -   Partir d'un côté de l'expression de $P(k+1)$ et utiliser l'hypothèse de récurrence pour la transformer et arriver à l'autre côté.

### Exemples

**Exemple 1 (Somme des entiers impairs)**

Prouvons que pour tout entier $n \ge 1$, la somme des $n$ premiers entiers impairs est égale à $n^2$.

Soit $P(n)$ la proposition : $1 + 3 + 5 + \dots + (2n-1) = \sum_{i=1}^{n} (2i-1) = n^2$.

1.  **Initialisation ($n_0=1$)** : Pour $n=1$, la somme se réduit à son premier terme, 1. D'autre part, $1^2 = 1$. On a bien $1 = 1$, donc $P(1)$ est vraie.

2.  **Hérédité** : Soit $k \ge 1$ un entier quelconque.

    **Hypothèse de récurrence (HR)** : Supposons que $P(k)$ est vraie, c'est-à-dire $\sum_{i=1}^{k} (2i-1) = k^2$.

    **But** : Montrons que $P(k+1)$ est vraie, c'est-à-dire $\sum_{i=1}^{k+1} (2i-1) = (k+1)^2$.

    Calculons la somme au rang $k+1$:

    $$ \sum_{i=1}^{k+1} (2i-1) = \underbrace{1 + 3 + \dots + (2k-1)}_{\text{somme jusqu'à k}} + \underbrace{(2(k+1)-1)}_{\text{terme suivant}} $$

    $$ = \left( \sum_{i=1}^{k} (2i-1) \right) + (2k+2-1) $$

    En utilisant l'HR, on remplace la première partie par $k^2$:

    $$ = k^2 + (2k+1) $$

    On reconnaît une identité remarquable :

    $$ k^2 + 2k + 1 = (k+1)^2 $$

    Nous avons bien montré que $\sum_{i=1}^{k+1} (2i-1) = (k+1)^2$. Donc $P(k+1)$ est vraie.

**Conclusion** : Par le principe de récurrence, la propriété $P(n)$ est vraie pour tout entier $n \ge 1$.

**Exemple 2 (Inégalité de Bernoulli)**

Prouvons que pour tout $x \ge -1$ réel et tout entier $n \ge 0$, on a $(1+x)^n \ge 1+nx$.

Soit $x \ge -1$ fixé. Soit $P(n)$ la proposition : $(1+x)^n \ge 1+nx$.

1.  **Initialisation ($n_0=0$)** : Pour $n=0$, on a $(1+x)^0 = 1$ et $1+0x = 1$. L'inégalité $1 \ge 1$ est vraie. Donc $P(0)$ est vraie.

2.  **Hérédité** : Soit $k \ge 0$ un entier.

    **HR** : Supposons $P(k)$ vraie : $(1+x)^k \ge 1+kx$.

    **But** : Montrons $P(k+1)$ vraie : $(1+x)^{k+1} \ge 1+(k+1)x$.

    Partons du membre de gauche de $P(k+1)$:

    $$ (1+x)^{k+1} = (1+x)^k \cdot (1+x) $$

    Puisque $x \ge -1$, on a $1+x \ge 0$. On peut donc multiplier l'inégalité de l'HR par $(1+x)$ sans changer le sens de l'inégalité :

    $$ (1+x)^k \cdot (1+x) \ge (1+kx) \cdot (1+x) $$

    Développons le membre de droite :

    $$ (1+kx)(1+x) = 1 + x + kx + kx^2 = 1 + (k+1)x + kx^2 $$

    On a donc $(1+x)^{k+1} \ge 1 + (k+1)x + kx^2$.

    Comme $k \ge 0$ et $x^2 \ge 0$, le terme $kx^2$ est toujours positif ou nul ($kx^2 \ge 0$).

    Donc, $1 + (k+1)x + kx^2 \ge 1 + (k+1)x$.

    Par transitivité, on obtient :

    $$ (1+x)^{k+1} \ge 1 + (k+1)x $$

    Donc $P(k+1)$ est vraie.

**Conclusion** : Par récurrence, l'inégalité est vraie pour tout entier $n \ge 0$.

**Exemple 3 (Divisibilité)**

Montrons que pour tout $n \in \mathbb{N}$, $3^{2n} - 1$ est divisible par 8.

Soit $P(n)$ : "$3^{2n} - 1$ est un multiple de 8".

1.  **Initialisation ($n=0$)** : $3^{2 \cdot 0} - 1 = 3^0 - 1 = 1 - 1 = 0$. Or $0 = 8 \times 0$, donc 0 est divisible par 8. $P(0)$ est vraie.

2.  **Hérédité** : Soit $k \in \mathbb{N}$.

    **HR** : Supposons $P(k)$ vraie, c'est-à-dire qu'il existe un entier $q$ tel que $3^{2k} - 1 = 8q$.

    **But** : Montrer que $P(k+1)$ est vraie, c'est-à-dire que $3^{2(k+1)}-1$ est divisible par 8.

    Calculons l'expression au rang $k+1$:

    $$ 3^{2(k+1)} - 1 = 3^{2k+2} - 1 = 3^{2k} \cdot 3^2 - 1 = 9 \cdot 3^{2k} - 1 $$

    L'astuce est de faire apparaître l'expression de l'HR. On a $3^{2k} = 8q + 1$. Substituons :

    $$ 9 \cdot (8q+1) - 1 = 72q + 9 - 1 = 72q + 8 = 8(9q+1) $$

    Puisque $q$ est un entier, $9q+1$ est aussi un entier. On a donc montré que $3^{2(k+1)}-1$ est un multiple de 8. $P(k+1)$ est vraie.

**Conclusion** : Par récurrence, $3^{2n}-1$ est divisible par 8 pour tout $n \in \mathbb{N}$.

### Contre-exemples

**Contre-exemple 1 (Hérédité seule ne suffit pas)**

Considérons la proposition $P(n)$ : "$n = n+1$".

**Hérédité** : Supposons $P(k)$ vraie pour un entier $k$, c'est-à-dire $k = k+1$. Ajoutons 1 des deux côtés : $k+1 = (k+1)+1$. C'est exactement la proposition $P(k+1)$. Donc l'hérédité $P(k) \Rightarrow P(k+1)$ est prouvée.

Cependant, la proposition $P(n)$ est manifestement fausse. Le problème est que l'**initialisation** est impossible. Pour $n=0$, $P(0)$ est "$0=1$", ce qui est faux. Sans un point de départ vrai, la "chaîne de dominos" de la récurrence ne peut pas commencer à tomber.

**Contre-exemple 2 (Raisonnement d'hérédité défectueux)**

Tentons de "prouver" par récurrence que tous les chevaux ont la même couleur.

Soit $P(n)$ : "Dans tout groupe de $n$ chevaux, tous les chevaux ont la même couleur."

1.  **Initialisation ($n=1$)** : Dans un groupe d'un seul cheval, tous les chevaux (il n'y en a qu'un) ont la même couleur. $P(1)$ est vraie.
2.  **Hérédité** : Supposons $P(k)$ vraie pour un $k \ge 1$.

    Considérons un groupe de $k+1$ chevaux $\{C_1, C_2, \dots, C_k, C_{k+1}\}$.

    -   Le sous-groupe $\{C_1, \dots, C_k\}$ est un groupe de $k$ chevaux. Par HR, ils ont tous la même couleur.
    -   Le sous-groupe $\{C_2, \dots, C_{k+1}\}$ est aussi un groupe de $k$ chevaux. Par HR, ils ont tous la même couleur.

    Comme le cheval $C_2$ est dans les deux groupes, sa couleur est la même que celle des chevaux de $\{C_1, \dots, C_k\}$ et aussi la même que celle des chevaux de $\{C_2, \dots, C_{k+1}\}$. Par transitivité, les $k+1$ chevaux ont tous la même couleur.

**Le défaut** : Le raisonnement qui lie les deux sous-groupes via un cheval commun ne fonctionne que si les deux sous-groupes ont une intersection non vide. L'intersection est $\{C_2, \dots, C_k\}$. Pour que cette intersection ne soit pas vide, il faut que $k \ge 2$. Le passage de $k=1$ à $k+1=2$ est donc défectueux. Pour $k=1$, les deux sous-groupes sont $\{C_1\}$ et $\{C_2\}$, et ils sont disjoints. La logique s'effondre.

### Concepts Connexes

-   **Suites définies par récurrence** : Les suites de la forme $u_{n+1} = f(u_n)$ sont intrinsèquement liées à la récurrence, qui est souvent utilisée pour prouver des propriétés de leurs termes (signe, monotonie, etc.).
-   **Axiomes de Peano** : Le principe de récurrence est l'un des axiomes qui définissent formellement l'ensemble des entiers naturels.

---

## Concept 4: Suites Numériques : Définitions et Convergence

### Prérequis

-   Notion de **fonction** et d'**ensemble** (en particulier $\mathbb{N}, \mathbb{R}, \mathbb{C}$).
-   Notion de **valeur absolue** sur $\mathbb{R}$ et de **module** sur $\mathbb{C}$.

### Définition

1.  **Suite Numérique**

    Une suite numérique est une fonction dont l'ensemble de départ est l'ensemble des entiers naturels $\mathbb{N}$ (ou une partie de $\mathbb{N}$ comme $\{n \in \mathbb{N} \mid n \ge n_0\}$) et dont l'ensemble d'arrivée est un corps de nombres $\mathbb{K}$ (typiquement $\mathbb{R}$ ou $\mathbb{C}$).

    $$ s: \mathbb{N} \to \mathbb{K} $$

    $$ n \mapsto s(n) $$

    On note l'image de l'entier $n$ par $s_n$ plutôt que $s(n)$. La suite elle-même est notée $(s_n)_{n \in \mathbb{N}}$, $(s_n)_{n \ge 0}$, ou simplement $(s_n)$.

    -   Si $\mathbb{K} = \mathbb{R}$, on parle de **suite réelle**.
    -   Si $\mathbb{K} = \mathbb{C}$, on parle de **suite complexe**.

2.  **Suite Majorée, Minorée, Bornée**
    -   Une suite réelle $(s_n)$ est **majorée** s'il existe un réel $M$ tel que pour tout $n \in \mathbb{N}$, $s_n \le M$. $M$ est un **majorant** de la suite.
    -   Une suite réelle $(s_n)$ est **minorée** s'il existe un réel $m$ tel que pour tout $n \in \mathbb{N}$, $s_n \ge m$. $m$ est un **minorant** de la suite.
    -   Une suite réelle ou complexe $(s_n)$ est **bornée** s'il existe un réel positif $A$ tel que pour tout $n \in \mathbb{N}$, $|s_n| \le A$. Pour une suite réelle, être bornée équivaut à être à la fois majorée et minorée.

3.  **Convergence d'une Suite**

    Une suite $(s_n)$ est dite **convergente** vers une limite $l \in \mathbb{K}$ si ses termes deviennent "arbitrairement proches" de $l$ à mesure que $n$ devient "suffisamment grand".

    La définition formelle, dite "en $\epsilon-N$", est :

    > La suite $(s_n)_{n \in \mathbb{N}}$ converge vers $l \in \mathbb{K}$ si :

    > $$ \forall \epsilon > 0, \exists N \in \mathbb{N}, \forall n \in \mathbb{N}, (n \ge N \Rightarrow |s_n - l| \le \epsilon) $$

    On note alors $\lim_{n \to +\infty} s_n = l$ ou $s_n \xrightarrow[n \to +\infty]{} l$.

    Une suite qui ne converge pas est dite **divergente**.

### Explications Détaillées

La définition de la convergence est centrale en analyse. Décortiquons-la :

-   **$\forall \epsilon > 0$** : "Pour n'importe quelle marge d'erreur $\epsilon$ que vous me donnez, aussi petite soit-elle...". $\epsilon$ représente la distance maximale autorisée entre les termes de la suite et la limite $l$. On peut voir l'intervalle $[l-\epsilon, l+\epsilon]$ comme un "tube" ou un "corridor" autour de la limite $l$.
-   **$\exists N \in \mathbb{N}$** : "...je peux trouver un rang $N$...". Ce rang $N$ dépend du $\epsilon$ choisi. Si $\epsilon$ est très petit, $N$ devra probablement être très grand.
-   **$\forall n \ge N \Rightarrow |s_n - l| \le \epsilon$** : "...tel qu'à partir de ce rang $N$, tous les termes suivants de la suite $s_n$ se trouvent dans le corridor $[l-\epsilon, l+\epsilon]$". La condition $|s_n - l| \le \epsilon$ signifie que la distance entre $s_n$ et $l$ est inférieure ou égale à $\epsilon$.

En résumé, la convergence signifie que peu importe la taille du "corridor" autour de la limite $l$, la suite finit par y entrer et ne plus jamais en sortir.

### Exemples

**Exemple 1 (Suite convergente simple)**

Considérons la suite réelle $(s_n)_{n \ge 1}$ définie par $s_n = \frac{1}{n}$. Montrons qu'elle converge vers $l=0$.

Soit $\epsilon > 0$ un réel quelconque. Nous devons trouver un entier $N$ tel que pour tout $n \ge N$, on ait $|s_n - 0| \le \epsilon$.

La condition est $|\frac{1}{n} - 0| \le \epsilon$, ce qui est équivalent à $\frac{1}{n} \le \epsilon$ (car $n \ge 1 > 0$).

En inversant (et en changeant le sens de l'inégalité car les termes sont positifs), on obtient $n \ge \frac{1}{\epsilon}$.

Il suffit donc de choisir un entier $N$ qui soit plus grand que $\frac{1}{\epsilon}$. Par exemple, on peut prendre $N = \lfloor \frac{1}{\epsilon} \rfloor + 1$ (partie entière + 1).

Pour ce choix de $N$, si $n \ge N$, alors $n \ge \frac{1}{\epsilon}$, et donc $\frac{1}{n} \le \epsilon$.

La définition est satisfaite, donc $\lim_{n \to +\infty} \frac{1}{n} = 0$.

**Exemple 2 (Suite constante)**

Soit la suite $(s_n)_{n \in \mathbb{N}}$ définie par $s_n = c$ pour tout $n$, où $c$ est une constante. Cette suite converge vers $l=c$.

Soit $\epsilon > 0$. On cherche $N$ tel que pour $n \ge N$, $|s_n - c| \le \epsilon$.

$|s_n - c| = |c - c| = 0$.

Puisque $0 \le \epsilon$ pour n'importe quel $\epsilon > 0$, la condition est toujours vérifiée. On peut donc choisir n'importe quel $N$, par exemple $N=0$. La suite converge bien vers $c$.

**Exemple 3 (Suite bornée mais divergente)**

Considérons la suite $s_n = (-1)^n$. Ses termes sont $-1, 1, -1, 1, \dots$.

-   **Bornée** : La suite est bornée car pour tout $n$, $|s_n| = |(-1)^n| = 1$. On peut prendre $A=1$. Elle est majorée par 1 et minorée par -1.
-   **Divergente** : Montrons qu'elle ne converge pas. Raisonnons par l'absurde. Supposons qu'elle converge vers une limite $l$.

    Prenons $\epsilon = 1/2$. Selon la définition de la convergence, il devrait exister un rang $N$ tel que pour tout $n \ge N$, $|s_n - l| \le 1/2$.

    Cela signifie que tous les termes $s_n$ pour $n \ge N$ doivent être dans l'intervalle $[l-1/2, l+1/2]$, de longueur 1.

    Or, pour $n \ge N$, la suite prend une infinité de fois la valeur 1 et une infinité de fois la valeur -1.

    On devrait donc avoir simultanément :

    -   $|1 - l| \le 1/2 \implies l \in [1/2, 3/2]$
    -   $|-1 - l| \le 1/2 \implies l \in [-3/2, -1/2]$

    Ces deux intervalles sont disjoints. Il est impossible pour $l$ d'appartenir aux deux en même temps. C'est une contradiction.

    Donc, la suite $(s_n)$ ne converge pas, elle est divergente.

### Contre-exemples

**Contre-exemple 1 (Suite non bornée)**

La suite $s_n = n$ pour $n \in \mathbb{N}$ est $0, 1, 2, 3, \dots$.

Elle n'est pas majorée : pour tout réel $M$, on peut trouver un entier $n$ (par exemple $n = \lfloor M \rfloor + 1$) tel que $s_n > M$.

Puisqu'elle n'est pas bornée, elle ne peut pas être convergente (voir Concept 5). Elle est donc divergente. (On dira plus tard qu'elle tend vers $+\infty$).

**Contre-exemple 2 (Suite complexe)**

La suite $s_n = i^n$ dans $\mathbb{C}$. Ses termes sont $i, -1, -i, 1, i, \dots$.

Elle est bornée car $|s_n| = |i^n| = |i|^n = 1^n = 1$.

Cependant, elle est divergente. Comme pour $s_n=(-1)^n$, les termes sautent entre quatre valeurs distinctes et ne se rapprochent d'aucune valeur unique.

### Concepts Connexes

-   **Propriétés des Suites Convergentes** : Unicité de la limite, opérations sur les limites.
-   **Critères de Convergence** : Méthodes pour prouver la convergence sans utiliser directement la définition (théorème de la convergence monotone, critère de Cauchy).
-   **Séries Numériques** : Une série est la suite des sommes partielles des termes d'une autre suite. La convergence des séries est définie par la convergence de cette suite de sommes.

---

## Concept 5: Propriétés des Suites Convergentes

### Prérequis

-   Définition de la **convergence d'une suite**.
-   Propriétés de la **valeur absolue** et de l'**inégalité triangulaire** : $|a+b| \le |a|+|b|$.
-   Notion de **fonction continue**.

### Définition

Les suites convergentes possèdent plusieurs propriétés fondamentales qui permettent de les manipuler et de calculer leurs limites sans revenir systématiquement à la définition en $\epsilon-N$.

### Propriétés Clés

1.  **Unicité de la limite**

    Si une suite $(s_n)$ converge, sa limite est unique.

    *Démonstration (par l'absurde)* : Supposons que $(s_n)$ converge vers deux limites distinctes $l$ et $l'$. Soit $\epsilon = \frac{|l-l'|}{2} > 0$.

    Puisque $s_n \to l$, il existe $N_1$ tel que pour $n \ge N_1$, $|s_n - l| \le \epsilon$.

    Puisque $s_n \to l'$, il existe $N_2$ tel que pour $n \ge N_2$, $|s_n - l'| \le \epsilon$.

    Pour $n \ge \max(N_1, N_2)$, les deux conditions sont vraies. On a alors :

    $|l-l'| = |l - s_n + s_n - l'| \le |l - s_n| + |s_n - l'| \le \epsilon + \epsilon = 2\epsilon = |l-l'|$.

    On obtient $|l-l'| \le |l-l'|$. Pour obtenir une contradiction, il faut utiliser des inégalités strictes. Reprenons avec $\epsilon = \frac{|l-l'|}{3}$.

    Pour $n \ge \max(N_1, N_2)$, on a $|l-l'| \le |s_n - l| + |s_n - l'| < \epsilon + \epsilon = 2\epsilon = \frac{2}{3}|l-l'|$.

    L'inégalité $|l-l'| < \frac{2}{3}|l-l'|$ est impossible pour $|l-l'|>0$. Contradiction. Donc $l=l'$.

2.  **Toute suite convergente est bornée**

    Si $(s_n)$ converge vers $l$, alors la suite $(s_n)$ est bornée. La réciproque est fausse.

    *Démonstration* : Prenons $\epsilon=1$. Il existe $N$ tel que pour $n \ge N$, $|s_n-l| \le 1$, ce qui implique (par inégalité triangulaire inversée) $|s_n| - |l| \le |s_n-l| \le 1$, donc $|s_n| \le |l|+1$.

    Les termes de la suite sont donc tous bornés par $|l|+1$ à partir du rang $N$. Les premiers termes $s_0, s_1, \dots, s_{N-1}$ sont en nombre fini, donc leur ensemble est borné.

    La suite entière est donc bornée par $A = \max(|s_0|, |s_1|, \dots, |s_{N-1}|, |l|+1)$.

3.  **Opérations sur les limites (Algèbre des limites)**

    Soient $(s_n)$ et $(t_n)$ deux suites convergeant respectivement vers $l$ et $l'$. Alors :

    -   **Somme** : $(s_n + t_n)$ converge vers $l+l'$.
    -   **Produit par un scalaire** : Pour $\lambda \in \mathbb{K}$, $(\lambda s_n)$ converge vers $\lambda l$.
    -   **Produit** : $(s_n \cdot t_n)$ converge vers $l \cdot l'$.
    -   **Inverse** : Si $l \ne 0$ (et $s_n \ne 0$ pour $n$ assez grand), $(1/s_n)$ converge vers $1/l$.
    -   **Quotient** : Si $l' \ne 0$, $(s_n/t_n)$ converge vers $l/l'$.

4.  **Composition avec une fonction continue**

    Si $(s_n)$ converge vers $l$ et que $f$ est une fonction continue en $l$, alors la suite $(f(s_n))$ converge vers $f(l)$.

5.  **Convergence des suites complexes**

    Une suite complexe $s_n = a_n + i b_n$ (où $a_n = \mathcal{R}(s_n)$ et $b_n = \mathcal{I}(s_n)$ sont réelles) converge vers $l = a+ib$ si et seulement si la suite réelle $(a_n)$ converge vers $a$ ET la suite réelle $(b_n)$ converge vers $b$.

6.  **Théorème de Cesàro**

    Si une suite $(s_n)$ converge vers une limite $l$, alors la suite de ses moyennes arithmétiques $(c_n)$, définie par $c_n = \frac{s_1+s_2+\dots+s_n}{n}$, converge aussi vers $l$. La réciproque est fausse.

### Exemples

**Exemple 1 (Utilisation de l'algèbre des limites)**

Calculer la limite de la suite $s_n = \frac{3n^2 - 4n + 1}{2n^2 + 5}$.

On ne peut pas appliquer directement le théorème sur le quotient car numérateur et dénominateur tendent vers l'infini. L'astuce est de factoriser par le terme de plus haut degré :

$$ s_n = \frac{n^2(3 - 4/n + 1/n^2)}{n^2(2 + 5/n^2)} = \frac{3 - 4/n + 1/n^2}{2 + 5/n^2} $$

On sait que $\lim_{n \to +\infty} 1/n = 0$ et $\lim_{n \to +\infty} 1/n^2 = 0$.

En utilisant les propriétés de la somme et du produit par un scalaire :

-   Le numérateur $N_n = 3 - 4/n + 1/n^2$ converge vers $3 - 4(0) + 0 = 3$.
-   Le dénominateur $D_n = 2 + 5/n^2$ converge vers $2 + 5(0) = 2$.

Comme la limite du dénominateur est non nulle, on peut utiliser la propriété du quotient :

$$ \lim_{n \to +\infty} s_n = \frac{\lim N_n}{\lim D_n} = \frac{3}{2} $$

**Exemple 2 (Composition avec une fonction continue)**

Calculer la limite de la suite $t_n = \cos(\frac{\pi}{n})$.

La suite $s_n = \frac{\pi}{n}$ converge vers $l=0$.

La fonction $f(x) = \cos(x)$ est continue sur $\mathbb{R}$, donc en particulier en $x=0$.

Par le théorème de composition, la suite $(f(s_n)) = (\cos(\frac{\pi}{n}))$ converge vers $f(l) = \cos(0) = 1$.

**Exemple 3 (Moyenne de Cesàro)**

Soit la suite $(s_n)$ définie par $s_n = \frac{n+1}{n}$. On a $\lim_{n \to +\infty} s_n = \lim \frac{n(1+1/n)}{n} = 1$.

Le théorème de Cesàro nous assure que la suite des moyennes $(c_n)$ converge aussi vers 1, sans avoir à la calculer explicitement.

Vérifions : $c_n = \frac{1}{n}\sum_{k=1}^n \frac{k+1}{k} = \frac{1}{n}\sum_{k=1}^n (1+\frac{1}{k}) = \frac{1}{n}(n + \sum_{k=1}^n \frac{1}{k}) = 1 + \frac{H_n}{n}$, où $H_n$ est la n-ième somme harmonique.

On sait (ou on admet) que $H_n \sim \ln(n)$, donc $\frac{H_n}{n} \sim \frac{\ln(n)}{n} \to 0$. Donc $\lim c_n = 1$.

### Contre-exemples

**Contre-exemple 1 (La réciproque de "convergente $\Rightarrow$ bornée" est fausse)**

La suite $s_n = (-1)^n$ est bornée car $|s_n| = 1 \le 1$. Cependant, comme nous l'avons vu, elle est divergente. Être bornée est une condition nécessaire pour la convergence, mais pas suffisante.

**Contre-exemple 2 (La réciproque du théorème de Cesàro est fausse)**

Considérons la suite $s_n = (-1)^{n+1}$, soit $1, -1, 1, -1, \dots$. Elle est divergente.

Calculons la suite de ses moyennes $(c_n)$:

-   $c_1 = 1$
-   $c_2 = (1-1)/2 = 0$
-   $c_3 = (1-1+1)/3 = 1/3$
-   $c_4 = (1-1+1-1)/4 = 0$

La somme $\sum_{k=1}^n s_k$ vaut 1 si $n$ est impair, et 0 si $n$ est pair.

Donc $c_n = 1/n$ si $n$ est impair, et $c_n=0$ si $n$ est pair.

Dans les deux cas, la suite $(c_n)$ tend vers 0.

Ainsi, la suite des moyennes converge vers 0, mais la suite originale diverge.

### Concepts Connexes

-   **Formes Indéterminées** : Les règles de l'algèbre des limites ne s'appliquent pas directement aux cas comme "$\infty - \infty$", "$0 \times \infty$", "$\infty / \infty$", "$0/0$". Ces cas nécessitent une analyse plus poussée (factorisation, équivalents, etc.).
-   **Théorèmes de Comparaison** : Pour les suites réelles, si $s_n \le t_n$ pour tout $n$, et que les deux convergent, alors $\lim s_n \le \lim t_n$. Cette propriété permet "d'encadrer" des suites.

---

CONTINUATION_NEEDED: Il reste 9 concepts à documenter selon le plan établi (Notations de Landau, Bornes Sup/Inf, Critères de Convergence, Sous-suites, Cauchy, Suites récurrentes, Limites dans $\bar{\mathbb{R}}$, Limsup/Liminf).
