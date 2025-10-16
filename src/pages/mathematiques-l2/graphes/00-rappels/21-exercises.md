---
id: 1f978093
type: exercises
order: 21
title: Rappels et notation - exercices (B)
tags:
  - set theory
  - relations
  - functions
  - induction
  - combinatorics
createdAt: '2025-10-15T19:12:12.026Z'
level: pro
course: Graphes et Combinatoire
courseId: 7027276b
chapter: Rappels et notation
chapterId: 58e4ac98
---
# Exercices "Rappels et notation" (B)

## Exercise 1: [Theoretical Investigation]

**Problem:** Soit $E$ un ensemble. La **différence symétrique** de deux sous-ensembles $A, B \subseteq E$ est définie par $A \Delta B = (A \setminus B) \cup (B \setminus A)$. Démontrer que l'ensemble des parties $\mathcal{P}(E)$, muni de l'opération $\Delta$, forme un groupe abélien. C'est-à-dire, prouver les propriétés suivantes pour tous $A, B, C \in \mathcal{P}(E)$:

1.  **Commutativité**: $A \Delta B = B \Delta A$
2.  **Associativité**: $(A \Delta B) \Delta C = A \Delta (B \Delta C)$
3.  **Élément neutre**: Il existe un élément $N \in \mathcal{P}(E)$ tel que $A \Delta N = A$ pour tout $A$.
4.  **Élément symétrique (inverse)**: Pour tout $A \in \mathcal{P}(E)$, il existe un élément $A' \in \mathcal{P}(E)$ tel que $A \Delta A' = N$.

<details>

<summary>Solution</summary>

**Method:** La méthode consiste à utiliser les définitions des opérations ensemblistes pour vérifier chaque propriété. Une approche alternative, particulièrement utile pour l'associativité, consiste à utiliser les fonctions caractéristiques. La fonction caractéristique $\mathbb{1}_A: E \to \{0, 1\}$ d'un ensemble $A$ est telle que $\mathbb{1}_A(x)=1$ si $x \in A$ et $0$ sinon. Les opérations ensemblistes correspondent à des opérations arithmétiques sur ces fonctions dans le corps $\mathbb{F}_2 = \{0, 1\}$. On a $\mathbb{1}_{A \cap B} = \mathbb{1}_A \cdot \mathbb{1}_B$ et $\mathbb{1}_{A \Delta B} = \mathbb{1}_A + \mathbb{1}_B \pmod 2$.

**Steps:**

1.  **Caractérisation de la différence symétrique**:

    On peut réécrire $A \Delta B$ comme $(A \cup B) \setminus (A \cap B)$.

    Un élément $x$ est dans $A \Delta B$ si et seulement si il est dans $A$ ou dans $B$, mais pas dans les deux.

    En termes de fonctions caractéristiques, on a $\mathbb{1}_{A \Delta B}(x) = (\mathbb{1}_A(x) + \mathbb{1}_B(x)) \pmod 2$.

2.  **Commutativité**:

    $A \Delta B = (A \setminus B) \cup (B \setminus A) = (B \setminus A) \cup (A \setminus B) = B \Delta A$.

    Avec les fonctions caractéristiques: $\mathbb{1}_A + \mathbb{1}_B = \mathbb{1}_B + \mathbb{1}_A \pmod 2$. La propriété est évidente.

3.  **Élément neutre**:

    Cherchons $N$ tel que $A \Delta N = A$. Cela signifie $(A \setminus N) \cup (N \setminus A) = A$. Si $N = \emptyset$, on a $(A \setminus \emptyset) \cup (\emptyset \setminus A) = A \cup \emptyset = A$.

    Donc, l'élément neutre est l'ensemble vide $\emptyset$.

    Avec les fonctions caractéristiques: $\mathbb{1}_A + \mathbb{1}_\emptyset = \mathbb{1}_A + 0 = \mathbb{1}_A$.

4.  **Élément symétrique**:

    Pour un ensemble $A$, cherchons $A'$ tel que $A \Delta A' = \emptyset$.

    Si on prend $A' = A$, on a $A \Delta A = (A \setminus A) \cup (A \setminus A) = \emptyset \cup \emptyset = \emptyset$.

    Donc, chaque élément est son propre inverse.

    Avec les fonctions caractéristiques: $\mathbb{1}_A + \mathbb{1}_A = 2 \cdot \mathbb{1}_A \equiv 0 \pmod 2$.

5.  **Associativité**:

    C'est la partie la plus complexe. Utilisons les fonctions caractéristiques, car l'addition modulo 2 est associative.

    $\mathbb{1}_{(A \Delta B) \Delta C} = \mathbb{1}_{A \Delta B} + \mathbb{1}_C = (\mathbb{1}_A + \mathbb{1}_B) + \mathbb{1}_C \pmod 2$.

    $\mathbb{1}_{A \Delta (B \Delta C)} = \mathbb{1}_A + \mathbb{1}_{B \Delta C} = \mathbb{1}_A + (\mathbb{1}_B + \mathbb{1}_C) \pmod 2$.

    Puisque l'addition est associative, les deux expressions sont égales. Ceci prouve que $(A \Delta B) \Delta C = A \Delta (B \Delta C)$.

    *Preuve directe (plus longue)*: $x \in (A \Delta B) \Delta C \iff x$ est dans exactement un des ensembles $A \Delta B, C$.

    $x \in (A \Delta B) \iff x$ est dans exactement un des ensembles $A, B$.

    En combinant, on trouve que $x \in (A \Delta B) \Delta C$ si et seulement si $x$ appartient à un nombre impair d'ensembles parmi $A, B, C$. Cette condition est symétrique en $A, B, C$, donc elle est la même pour $A \Delta (B \Delta C)$.

**Answer:** Les quatre propriétés (commutativité, associativité, élément neutre, élément symétrique) sont vérifiées. L'ensemble $(\mathcal{P}(E), \Delta)$ est donc un groupe abélien. L'élément neutre est $\emptyset$ et chaque élément $A$ est son propre inverse.

</details>

## Exercise 2: [Complex Proof]

**Problem:** Démontrer qu'il n'existe aucune application surjective d'un ensemble $E$ vers son ensemble des parties $\mathcal{P}(E)$. Ce résultat est une généralisation du théorème de Cantor.

<details>

<summary>Solution</summary>

**Method:** La preuve se fait par l'absurde. On suppose qu'une telle application surjective $f: E \to \mathcal{P}(E)$ existe, puis on construit un ensemble spécifique $D \in \mathcal{P}(E)$ qui ne peut pas être dans l'image de $f$, ce qui contredit la surjectivité. Cette technique est connue sous le nom d'argument diagonal de Cantor.

**Steps:**

1.  **Hypothèse par l'absurde**: Supposons qu'il existe un ensemble $E$ et une application surjective $f: E \to \mathcal{P}(E)$. Cela signifie que pour tout sous-ensemble $A \subseteq E$, il existe au moins un élément $x \in E$ tel que $f(x) = A$.

2.  **Construction de l'ensemble diagonal**: Considérons le sous-ensemble suivant de $E$, que nous nommerons $D$ (pour "diagonal"):

    $$ D = \{x \in E \mid x \notin f(x)\} $$

    La définition de $D$ est valide. Pour chaque $x \in E$, $f(x)$ est un sous-ensemble de $E$, donc la condition $x \notin f(x)$ a un sens.

3.  **Recherche d'un antécédent pour D**: Puisque $D$ est un sous-ensemble de $E$, $D \in \mathcal{P}(E)$. Par notre hypothèse de surjectivité de $f$, il doit exister un élément $d \in E$ tel que $f(d) = D$.

4.  **Arriver à une contradiction**: Maintenant, posons la question: l'élément $d$ appartient-il à l'ensemble $D$ ?
    - **Cas 1**: Supposons que $d \in D$. Par la définition de $D$, si un élément $x$ est dans $D$, alors $x \notin f(x)$. En appliquant cela à $x=d$, on obtient $d \notin f(d)$. Mais nous savons que $f(d)=D$. Donc, on a $d \notin D$. C'est une contradiction avec notre supposition ($d \in D$).
    - **Cas 2**: Supposons que $d \notin D$. Par la définition de $D$, si un élément $x$ n'est pas dans $D$, c'est que la condition $x \notin f(x)$ est fausse. Autrement dit, $x \in f(x)$. En appliquant cela à $x=d$, on obtient $d \in f(d)$. Puisque $f(d)=D$, cela signifie que $d \in D$. C'est une contradiction avec notre supposition ($d \notin D$).

5.  **Conclusion**: Dans les deux cas possibles, nous arrivons à une contradiction logique ($d \in D \iff d \notin D$). Par conséquent, notre hypothèse initiale selon laquelle il existe un élément $d \in E$ tel que $f(d) = D$ doit être fausse.

    Ceci signifie que l'ensemble $D$ n'a pas d'antécédent par $f$. L'application $f$ n'est donc pas surjective.

    Ceci contredit notre hypothèse de départ. L'hypothèse qu'une telle application surjective existe est donc fausse.

**Answer:** Pour tout ensemble $E$, il n'existe aucune application surjective $f: E \to \mathcal{P}(E)$. En conséquence, $|E| < |\mathcal{P}(E)|$.

</details>

## Exercise 3: [Advanced Application]

**Problem:** En théorie de la mesure, une **$\sigma$-algèbre** (ou tribu) sur un ensemble $X$ est un sous-ensemble $\mathcal{A} \subseteq \mathcal{P}(X)$ satisfaisant les trois axiomes:

1.  $X \in \mathcal{A}$.
2.  Si $A \in \mathcal{A}$, alors son complémentaire $X \setminus A$ est aussi dans $\mathcal{A}$ (stabilité par complémentation).
3.  Si $(A_n)_{n \in \mathbb{N}}$ est une suite d'ensembles dans $\mathcal{A}$, alors leur union $\bigcup_{n=0}^{\infty} A_n$ est aussi dans $\mathcal{A}$ (stabilité par union dénombrable).

**Questions:**

a) Démontrer qu'une $\sigma$-algèbre est également stable par intersection dénombrable.

b) Soit $( \mathcal{A}_i )_{i \in I}$ une famille quelconque (finie ou infinie) de $\sigma$-algèbres sur $X$. Démontrer que leur intersection $\mathcal{A} = \bigcap_{i \in I} \mathcal{A}_i$ est encore une $\sigma$-algèbre sur $X$.

c) L'union de deux $\sigma$-algèbres est-elle toujours une $\sigma$-algèbre? Fournir une preuve ou un contre-exemple.

<details>

<summary>Solution</summary>

**Method:** Les questions (a) et (b) se résolvent en appliquant directement les définitions. Pour (a), on utilise les lois de De Morgan. Pour (b), on vérifie que l'intersection de la famille de collections d'ensembles satisfait les trois axiomes d'une $\sigma$-algèbre. Pour (c), on cherche un contre-exemple simple.

**Steps:**

**a) Stabilité par intersection dénombrable**

1.  Soit $(A_n)_{n \in \mathbb{N}}$ une suite d'ensembles dans une $\sigma$-algèbre $\mathcal{A}$.
2.  Pour chaque $n \in \mathbb{N}$, comme $A_n \in \mathcal{A}$, son complémentaire $A_n^c = X \setminus A_n$ est aussi dans $\mathcal{A}$ par l'axiome 2.
3.  La suite $(A_n^c)_{n \in \mathbb{N}}$ est donc une suite d'ensembles de $\mathcal{A}$. Par l'axiome 3, leur union $\bigcup_{n=0}^\infty A_n^c$ est dans $\mathcal{A}$.
4.  Par la loi de De Morgan généralisée, on a $\bigcap_{n=0}^\infty A_n = \left( \bigcup_{n=0}^\infty A_n^c \right)^c$.
5.  Puisque $\bigcup_{n=0}^\infty A_n^c \in \mathcal{A}$, son complémentaire est aussi dans $\mathcal{A}$ par l'axiome 2. Donc, $\bigcap_{n=0}^\infty A_n \in \mathcal{A}$.

**b) Intersection de $\sigma$-algèbres**

Soit $\mathcal{A} = \bigcap_{i \in I} \mathcal{A}_i$. Vérifions les trois axiomes pour $\mathcal{A}$.

1.  **Axiome 1 ($X \in \mathcal{A}$ ?)**: Pour tout $i \in I$, $\mathcal{A}_i$ est une $\sigma$-algèbre, donc $X \in \mathcal{A}_i$. Par conséquent, $X$ appartient à leur intersection, $X \in \mathcal{A}$.
2.  **Axiome 2 (Stabilité par complémentation)**: Soit $A \in \mathcal{A}$. Par définition de l'intersection, $A \in \mathcal{A}_i$ for all $i \in I$. Puisque chaque $\mathcal{A}_i$ est une $\sigma$-algèbre, le complémentaire $A^c$ est aussi dans chaque $\mathcal{A}_i$. Donc, $A^c \in \bigcap_{i \in I} \mathcal{A}_i = \mathcal{A}$.
3.  **Axiome 3 (Stabilité par union dénombrable)**: Soit $(A_n)_{n \in \mathbb{N}}$ une suite d'ensembles dans $\mathcal{A}$. Alors, pour chaque $n$, $A_n \in \mathcal{A}_i$ pour tout $i \in I$. Puisque chaque $\mathcal{A}_i$ est une $\sigma$-algèbre, l'union dénombrable $\bigcup_{n=0}^\infty A_n$ appartient à $\mathcal{A}_i$ pour tout $i \in I$. Par conséquent, $\bigcup_{n=0}^\infty A_n \in \bigcap_{i \in I} \mathcal{A}_i = \mathcal{A}$.

Les trois axiomes sont vérifiés, donc $\mathcal{A}$ est une $\sigma$-algèbre.

**c) Union de $\sigma$-algèbres**

L'union de deux $\sigma$-algèbres n'est pas nécessairement une $\sigma$-algèbre. Fournissons un contre-exemple.

1.  Soit $X = \{1, 2, 3\}$.
2.  Considérons la $\sigma$-algèbre $\mathcal{A}_1 = \{\emptyset, \{1\}, \{2, 3\}, X\}$. C'est bien une $\sigma$-algèbre.
3.  Considérons la $\sigma$-algèbre $\mathcal{A}_2 = \{\emptyset, \{2\}, \{1, 3\}, X\}$. C'est aussi une $\sigma$-algèbre.
4.  Leur union est $\mathcal{A}_1 \cup \mathcal{A}_2 = \{\emptyset, \{1\}, \{2\}, \{1, 3\}, \{2, 3\}, X\}$.
5.  Prenons deux ensembles de cette union: $A = \{1\} \in \mathcal{A}_1 \cup \mathcal{A}_2$ et $B = \{2\} \in \mathcal{A}_1 \cup \mathcal{A}_2$.
6.  Si $\mathcal{A}_1 \cup \mathcal{A}_2$ était une $\sigma$-algèbre, leur union $A \cup B = \{1, 2\}$ devrait aussi y appartenir.
7.  Or, $\{1, 2\} \notin \mathcal{A}_1 \cup \mathcal{A}_2$.
8.  Donc, $\mathcal{A}_1 \cup \mathcal{A}_2$ n'est pas stable par union (finie, donc a fortiori dénombrable) et n'est pas une $\sigma$-algèbre.

**Answer:**

a) Oui, une $\sigma$-algèbre est stable par intersection dénombrable.

b) Oui, l'intersection d'une famille quelconque de $\sigma$-algèbres est une $\sigma$-algèbre.

c) Non, l'union de deux $\sigma$-algèbres n'est pas nécessairement une $\sigma$-algèbre, comme le montre le contre-exemple fourni.

</details>

## Exercise 4: [Complex Proof]

**Problem:** Soit $f: E \to F$ une application. Démontrer l'équivalence des trois propositions suivantes :

(i) $f$ est injective.

(ii) Pour toute partie $A \subseteq E$, $f^{-1}(f(A)) = A$.

(iii) Pour toutes parties $A, B \subseteq E$, $f(A \cap B) = f(A) \cap f(B)$.

<details>

<summary>Solution</summary>

**Method:** Pour prouver l'équivalence de plusieurs propositions, on démontre un cycle d'implications, par exemple (i) $\implies$ (ii), (ii) $\implies$ (iii), et (iii) $\implies$ (i).

Il est utile de rappeler que pour toute application $f$ et tout $A \subseteq E$, on a toujours l'inclusion $A \subseteq f^{-1}(f(A))$. De même, pour tous $A, B \subseteq E$, on a toujours $f(A \cap B) \subseteq f(A) \cap f(B)$. Les preuves consisteront donc à établir les inclusions inverses sous les hypothèses données.

**Steps:**

**1. Preuve de (i) $\implies$ (ii)**

Supposons que $f$ est injective. Soit $A \subseteq E$.

- L'inclusion $A \subseteq f^{-1}(f(A))$ est toujours vraie. En effet, si $x \in A$, alors $f(x) \in f(A)$, ce qui par définition de l'image réciproque signifie que $x \in f^{-1}(f(A))$.
- Montrons l'inclusion inverse: $f^{-1}(f(A)) \subseteq A$. Soit $x \in f^{-1}(f(A))$. Par définition, cela signifie que $f(x) \in f(A)$.
- Par définition de $f(A)$, il existe un élément $a \in A$ tel que $f(x) = f(a)$.
- Puisque $f$ est injective, $f(x) = f(a)$ implique $x = a$.
- Comme $a \in A$, on a $x \in A$.
- Donc, $f^{-1}(f(A)) \subseteq A$.
- Les deux inclusions prouvent que $f^{-1}(f(A)) = A$.

**2. Preuve de (ii) $\implies$ (iii)**

Supposons que pour tout $X \subseteq E$, $f^{-1}(f(X)) = X$. Soient $A, B \subseteq E$.

- L'inclusion $f(A \cap B) \subseteq f(A) \cap f(B)$ est toujours vraie. Si $y \in f(A \cap B)$, alors $y=f(x)$ pour un $x \in A \cap B$. Donc $x \in A$ et $x \in B$, ce qui implique $f(x) \in f(A)$ et $f(x) \in f(B)$. Ainsi $y \in f(A) \cap f(B)$.
- Montrons l'inclusion inverse: $f(A) \cap f(B) \subseteq f(A \cap B)$.
- Soit $y \in f(A) \cap f(B)$. Alors $y \in f(A)$, donc $f^{-1}(\{y\}) \cap A \neq \emptyset$. De même, $y \in f(B)$, donc $f^{-1}(\{y\}) \cap B \neq \emptyset$.
- Appliquons l'hypothèse (ii) à l'ensemble $A \cap B$. On a $f^{-1}(f(A \cap B)) = A \cap B$.
- Soit $y \in f(A) \cap f(B)$. Il existe $a \in A$ tel que $y=f(a)$ et $b \in B$ tel que $y=f(b)$.
- Considérons l'ensemble $X = \{a, b\}$. On a $f(X) = \{y\}$.
- Par hypothèse (ii), $f^{-1}(f(\{a\})) = \{a\}$ et $f^{-1}(f(\{b\})) = \{b\}$. Cela implique que les seules préimages de $y$ sont $a$ et $b$. Or $f^{-1}(\{y\})$ est l'ensemble des préimages, donc $f^{-1}(\{y\}) \subseteq \{a,b\}$. Comme $f(a)=y=f(b)$, on n'a pas nécessairement $a=b$ sans l'injectivité.
- *Correction de l'approche:* Soit $C = f(A) \cap f(B)$. Alors $f^{-1}(C) = f^{-1}(f(A)) \cap f^{-1}(f(B))$. Appliquons l'hypothèse (ii) à $A$ et $B$: $f^{-1}(f(A))=A$ et $f^{-1}(f(B))=B$.
- Donc $f^{-1}(C) = A \cap B$. En appliquant $f$ des deux côtés: $f(f^{-1}(C)) = f(A \cap B)$.
- On sait que $C \subseteq f(f^{-1}(C))$ (c'est vrai si $C \subseteq f(E)$). Comme $C = f(A) \cap f(B)$, tous les éléments de $C$ sont dans l'image de $f$. Donc $C = f(f^{-1}(C))$.
- Ainsi, $f(A) \cap f(B) = f(A \cap B)$.

**3. Preuve de (iii) $\implies$ (i)**

Supposons que pour tous $A, B \subseteq E$, $f(A \cap B) = f(A) \cap f(B)$.

- Pour montrer que $f$ est injective, prenons $x_1, x_2 \in E$ tels que $f(x_1) = f(x_2)$. Nous devons montrer que $x_1=x_2$.
- Posons $A = \{x_1\}$ and $B = \{x_2\}$.
- D'un côté, $f(A \cap B) = f(\{x_1\} \cap \{x_2\})$.
- De l'autre côté, $f(A) \cap f(B) = f(\{x_1\}) \cap f(\{x_2\}) = \{f(x_1)\} \cap \{f(x_2)\}$.
- Comme $f(x_1) = f(x_2)$, cette intersection est $\{f(x_1)\}$. L'ensemble n'est pas vide.
- Par notre hypothèse (iii), $f(A \cap B) = \{f(x_1)\}$, ce qui signifie que $f(A \cap B)$ est non vide.
- Pour que $f(A \cap B)$ soit non vide, l'ensemble $A \cap B$ doit être non vide.
- $A \cap B = \{x_1\} \cap \{x_2\}$ est non vide si et seulement si $x_1 = x_2$.
- Donc $f$ est injective.

**Answer:** Les trois propositions sont logiquement équivalentes.

</details>

## Exercise 5: [Theoretical Investigation]

**Problem:** Soit $S_n$ le groupe des permutations de l'ensemble $E = \{1, 2, \dots, n\}$. Le **centralisateur** d'un élément $\sigma \in S_n$ est l'ensemble $C(\sigma) = \{\tau \in S_n \mid \sigma \circ \tau = \tau \circ \sigma \}$.

Caractériser le centralisateur du cycle $\sigma = (1, 2, \dots, n)$.

Indice: Étudier l'effet de la conjugaison $\tau \sigma \tau^{-1}$ sur la structure cyclique de $\sigma$.

<details>

<summary>Solution</summary>

**Method:** La méthode repose sur un résultat fondamental de la théorie des groupes : la conjugaison préserve la structure cyclique. Spécifiquement, si $\sigma = (c_1, c_2, \dots, c_k)$ est un $k$-cycle, alors $\tau \sigma \tau^{-1}$ est le $k$-cycle $(\tau(c_1), \tau(c_2), \dots, \tau(c_k))$. La condition $\tau \sigma \tau^{-1} = \sigma$ impose des contraintes fortes sur l'image des éléments $\{1, 2, \dots, n\}$ par $\tau$.

**Steps:**

1.  **Action de la conjugaison sur un cycle**:

    Soit $\sigma = (1, 2, \dots, n)$ un $n$-cycle et $\tau \in S_n$. Calculons l'image d'un élément $i \in E$ par $\tau \sigma \tau^{-1}$.

    Soit $j = \tau(i)$. Alors $\tau^{-1}(j) = i$.

    $(\tau \sigma \tau^{-1})(j) = \tau(\sigma(\tau^{-1}(j))) = \tau(\sigma(i))$.

    Puisque $\sigma$ est le cycle $(1, 2, \dots, n)$, on a $\sigma(i) = i+1$ (modulo $n$, en identifiant $n+1$ à $1$).

    Donc $(\tau \sigma \tau^{-1})(j) = \tau(i+1)$.

    En résumé, si $j = \tau(i)$, alors l'image de $j$ par $\tau \sigma \tau^{-1}$ est $\tau(i+1)$.

    Ceci signifie que la permutation $\tau \sigma \tau^{-1}$ envoie $\tau(1)$ sur $\tau(2)$, $\tau(2)$ sur $\tau(3)$, ..., et $\tau(n)$ sur $\tau(1)$.

    Donc, $\tau \sigma \tau^{-1} = (\tau(1), \tau(2), \dots, \tau(n))$.

2.  **Condition du centralisateur**:

    Une permutation $\tau$ est dans le centralisateur $C(\sigma)$ si et seulement si $\sigma \circ \tau = \tau \circ \sigma$, ce qui est équivalent à $\tau \sigma \tau^{-1} = \sigma$.

    En utilisant le résultat de l'étape 1, cela se traduit par l'égalité de cycles:

    $$ (\tau(1), \tau(2), \dots, \tau(n)) = (1, 2, \dots, n) $$

3.  **Caractérisation de $\tau$**:

    Deux cycles sont égaux si et seulement si ils représentent la même permutation. L'écriture d'un cycle n'est pas unique, on peut commencer par n'importe quel élément. Par exemple, $(1, 2, 3) = (2, 3, 1) = (3, 1, 2)$.

    L'égalité $(\tau(1), \tau(2), \dots, \tau(n)) = (1, 2, \dots, n)$ signifie qu'il existe un entier $k \in \{0, 1, \dots, n-1\}$ tel que:

    $\tau(1) = 1+k \pmod n$

    $\tau(2) = 2+k \pmod n$

    ...

    $\tau(i) = i+k \pmod n$

    ...

    $\tau(n) = n+k \pmod n$

    (où les résultats sont compris dans $\{1, \dots, n\}$).

4.  **Identification de $\tau$ aux puissances de $\sigma$**:

    La permutation $\sigma$ est définie par $\sigma(i) = i+1 \pmod n$.

    La permutation $\sigma^2 = \sigma \circ \sigma$ est définie par $\sigma^2(i) = i+2 \pmod n$.

    Plus généralement, la permutation $\sigma^k$ est définie par $\sigma^k(i) = i+k \pmod n$ pour $k \in \{0, 1, \dots, n-1\}$.

    La condition $\tau(i) = i+k \pmod n$ pour un certain $k$ fixe signifie donc que $\tau = \sigma^k$.

5.  **Conclusion**:

    Les permutations $\tau$ qui commutent avec $\sigma = (1, 2, \dots, n)$ sont exactement les puissances de $\sigma$.

    Le centralisateur $C(\sigma)$ est donc l'ensemble $\{\sigma^0, \sigma^1, \sigma^2, \dots, \sigma^{n-1}\}$, où $\sigma^0$ est la permutation identité.

    Cet ensemble est le groupe cyclique engendré par $\sigma$, noté $\langle \sigma \rangle$.

**Answer:** Le centralisateur du $n$-cycle $\sigma = (1, 2, \dots, n)$ dans $S_n$ est le groupe cyclique engendré par $\sigma$ lui-même : $C(\sigma) = \langle \sigma \rangle = \{\text{id}, \sigma, \sigma^2, \dots, \sigma^{n-1}\}$.

</details>

## Exercise 6: [Advanced Application]

**Problem:** Soit $K$ un corps (par exemple $\mathbb{R}$ ou $\mathbb{C}$). L'**espace projectif** de dimension $n$ sur $K$, noté $\mathbb{P}^n(K)$, est défini comme l'ensemble des droites vectorielles de l'espace vectoriel $K^{n+1}$.

Formaliser cette construction en utilisant une relation d'équivalence.

1.  Considérer l'ensemble $E = K^{n+1} \setminus \{ \mathbf{0} \}$, où $\mathbf{0}$ est le vecteur nul.
2.  Définir une relation $\mathcal{R}$ sur $E$ par: pour $\mathbf{x}, \mathbf{y} \in E$, $\mathbf{x} \mathcal{R} \mathbf{y}$ si et seulement s'il existe $\lambda \in K^* = K \setminus \{0\}$ tel que $\mathbf{y} = \lambda \mathbf{x}$.
3.  Prouver que $\mathcal{R}$ est une relation d'équivalence.
4.  Décrire géométriquement les classes d'équivalence. Expliquer pourquoi l'ensemble quotient $E/\mathcal{R}$ peut être identifié à l'ensemble des droites vectorielles de $K^{n+1}$.
5.  Pour le cas de la droite projective réelle $\mathbb{P}^1(\mathbb{R})$, décrire l'ensemble des classes d'équivalence et montrer qu'il est en bijection avec le cercle $\mathbb{S}^1$.

<details>

<summary>Solution</summary>

**Method:** La méthode consiste à vérifier les trois propriétés d'une relation d'équivalence (réflexivité, symétrie, transitivité) en utilisant la définition de la relation et les propriétés d'un corps. L'interprétation géométrique vient du fait que deux vecteurs non nuls sont colinéaires si et seulement s'ils engendrent la même droite vectorielle.

**Steps:**

1.  **Preuve que $\mathcal{R}$ est une relation d'équivalence**:
    - **Réflexivité**: Soit $\mathbf{x} \in E$. On peut choisir $\lambda = 1 \in K^*$. Alors $\mathbf{x} = 1 \cdot \mathbf{x}$, donc $\mathbf{x} \mathcal{R} \mathbf{x}$. La relation est réflexive.
    - **Symétrie**: Soient $\mathbf{x}, \mathbf{y} \in E$ tels que $\mathbf{x} \mathcal{R} \mathbf{y}$. Il existe donc $\lambda \in K^*$ tel que $\mathbf{y} = \lambda \mathbf{x}$. Puisque $\lambda \neq 0$, son inverse $\lambda^{-1}$ existe et est non nul. On peut écrire $\mathbf{x} = \lambda^{-1} \mathbf{y}$. Donc $\mathbf{y} \mathcal{R} \mathbf{x}$. La relation est symétrique.
    - **Transitivité**: Soient $\mathbf{x}, \mathbf{y}, \mathbf{z} \in E$ tels que $\mathbf{x} \mathcal{R} \mathbf{y}$ et $\mathbf{y} \mathcal{R} \mathbf{z}$. Il existe $\lambda_1, \lambda_2 \in K^*$ tels que $\mathbf{y} = \lambda_1 \mathbf{x}$ et $\mathbf{z} = \lambda_2 \mathbf{y}$. En substituant, on obtient $\mathbf{z} = \lambda_2(\lambda_1 \mathbf{x}) = (\lambda_2 \lambda_1) \mathbf{x}$. Puisque $K^*$ est stable par multiplication, $\lambda_2 \lambda_1 \in K^*$. Donc $\mathbf{x} \mathcal{R} \mathbf{z}$. La relation est transitive.

    $\mathcal{R}$ est bien une relation d'équivalence.

2.  **Description des classes d'équivalence**:

    La classe d'équivalence d'un vecteur $\mathbf{x} \in E$ est l'ensemble $\mathcal{R}[\mathbf{x}] = \{\mathbf{y} \in E \mid \exists \lambda \in K^*, \mathbf{y} = \lambda \mathbf{x}\}$.

    Cet ensemble est constitué de tous les multiples scalaires non nuls de $\mathbf{x}$. Géométriquement, c'est la droite vectorielle engendrée par $\mathbf{x}$, privée du vecteur nul.

    Puisque chaque classe d'équivalence correspond à une unique droite vectorielle (privée de l'origine), l'ensemble quotient $E/\mathcal{R}$ est en bijection naturelle avec l'ensemble de toutes les droites vectorielles de $K^{n+1}$. C'est la définition de l'espace projectif $\mathbb{P}^n(K)$.

3.  **Cas de la droite projective réelle $\mathbb{P}^1(\mathbb{R})$**:

    Ici, $n=1$ et $K=\mathbb{R}$. On considère $E = \mathbb{R}^2 \setminus \{(0,0)\}$. Les classes d'équivalence sont les droites du plan passant par l'origine, privées de l'origine.

    Chaque droite passant par l'origine intersecte le cercle unité $\mathbb{S}^1 = \{(x,y) \in \mathbb{R}^2 \mid x^2+y^2=1\}$ en exactement deux points antipodaux, disons $\mathbf{u}$ et $-\mathbf{u}$.

    On peut donc représenter chaque droite (c'est-à-dire chaque point de $\mathbb{P}^1(\mathbb{R})$) par une paire de points antipodaux sur le cercle.

    Formellement, on peut définir une application de $\mathbb{S}^1$ sur $\mathbb{P}^1(\mathbb{R})$ qui envoie un point $\mathbf{u} \in \mathbb{S}^1$ sur la droite qu'il engendre. Cette application est surjective et $f(\mathbf{u}) = f(\mathbf{v})$ si et seulement si $\mathbf{v} = \mathbf{u}$ ou $\mathbf{v} = -\mathbf{u}$.

    L'espace $\mathbb{P}^1(\mathbb{R})$ est donc le quotient de $\mathbb{S}^1$ par la relation d'identification des points antipodaux. Topologiquement, ce quotient est lui-même un cercle.

    Une autre façon de le voir est que chaque droite a une pente $m \in \mathbb{R}$, sauf la droite verticale qui a une "pente infinie". On peut donc voir $\mathbb{P}^1(\mathbb{R})$ comme $\mathbb{R} \cup \{\infty\}$, la droite réelle complétée par un point à l'infini. C'est aussi topologiquement équivalent à un cercle.

**Answer:** $\mathcal{R}$ est une relation d'équivalence. Ses classes sont les droites de $K^{n+1}$ privées de l'origine. L'ensemble quotient $E/\mathcal{R}$ est l'espace projectif $\mathbb{P}^n(K)$. Pour $n=1$ et $K=\mathbb{R}$, $\mathbb{P}^1(\mathbb{R})$ est en bijection avec les paires de points antipodaux sur $\mathbb{S}^1$, et est donc topologiquement un cercle.

</details>

## Exercise 7: [Complex Proof]

**Problem:** Soit $(E, \preceq)$ un ensemble partiellement ordonné (poset). Une **chaîne** est un sous-ensemble $C \subseteq E$ qui est totalement ordonné par $\preceq$. Une **antichaîne** est un sous-ensemble $A \subseteq E$ où deux éléments distincts ne sont jamais comparables. Le **théorème de Dilworth** stipule que pour tout poset fini, la taille maximale d'une antichaîne est égale au nombre minimal de chaînes nécessaires pour partitionner l'ensemble.

Démontrer le lemme suivant, souvent utilisé dans la preuve du théorème :

**Lemme**: Dans tout poset fini $(E, \preceq)$ avec $|E| \ge 1$, il existe soit une chaîne de taille $k+1$, soit une antichaîne de taille $m+1$, où $k$ est la taille de la plus longue chaîne et $m$ est la taille de la plus grande antichaîne. (Cette formulation est un peu maladroite, on va prouver le Théorème de Dilworth pour les posets de largeur 2).

**Problème reformulé:** Soit $(E, \preceq)$ un poset fini. Si la plus grande antichaîne est de taille 2, prouver que $E$ peut être partitionné en 2 chaînes.

<details>

<summary>Solution</summary>

**Method:** La preuve se fait par induction sur la taille de l'ensemble $E$. On définit un "graphe de comparabilité" $G=(E,V)$ où $\{x,y\}$ est une arête si $x \preceq y$ ou $y \preceq x$. L'hypothèse que la plus grande antichaîne est de taille 2 signifie que le graphe complémentaire $\bar{G}$ (le "graphe d'incomparabilité") ne contient pas de triangle. Le théorème de Turan nous dit alors des choses sur $\bar{G}$, mais une preuve directe par induction est plus instructive ici.

**Steps:**

1.  **Hypothèse**: Soit $(E, \preceq)$ un poset fini où la taille maximale d'une antichaîne est 2. Nous voulons montrer que $E$ peut être partitionné en deux chaînes, $C_1$ et $C_2$.

2.  **Base de l'induction**: Si $|E| \le 2$, le résultat est trivial. Si $|E|=1$, $E$ est une chaîne. Si $|E|=2$, soit les éléments sont comparables (et $E$ est une chaîne), soit ils ne le sont pas (ils forment une antichaîne de taille 2), et on peut prendre $C_1=\{x\}, C_2=\{y\}$.

3.  **Hypothèse d'induction**: Supposons que le théorème est vrai pour tous les posets de taille inférieure à $n$. Soit $|E|=n > 2$.

4.  **Étape d'induction**:
    - Soit $M$ l'ensemble des éléments maximaux de $E$. Soit $m$ l'ensemble des éléments minimaux de $E$.
    - Les éléments de $M$ sont deux à deux incomparables, donc $|M| \le 2$. De même, $|m| \le 2$.
    - **Cas 1**: Il existe un élément maximal $x \in M$ et un élément minimal $y \in m$ qui sont comparables ($y \preceq x$). Si $y=x$, alors $E=\{x\}$ car $x$ est à la fois minimal et maximal, un cas trivial. Si $y \prec x$, considérons le poset $E' = E \setminus \{x, y\}$. La plus grande antichaîne dans $E'$ est de taille au plus 2. Par l'hypothèse d'induction, $E'$ peut être partitionné en deux chaînes $C'_1$ et $C'_2$.

      Maintenant, on peut former deux chaînes pour $E$: $C_1 = C'_1 \cup \{x\}$ et $C_2 = C'_2 \cup \{y\}$? Non, ce n'est pas si simple.

      Prenons plutôt une chaîne maximale $C$ dans $E$. Si $E \setminus C$ ne contient pas d'antichaîne de taille 2, alors $E \setminus C$ est une chaîne, et nous avons fini.

    - **Approche plus structurée**: Définissons une relation sur $E$. Soit $x \in E$. Soit $L(x)$ la longueur de la plus longue chaîne se terminant en $x$.

      Définissons les ensembles $A_i = \{x \in E \mid L(x)=i \}$.

    - **Propriété clé**: Chaque $A_i$ est une antichaîne.

      *Preuve*: Soient $x, y \in A_i$ avec $x \neq y$. Supposons, pour contradiction, qu'ils sont comparables, disons $x \prec y$. Soit $C_x$ une chaîne de longueur $i$ se terminant en $x$. Alors $C_x \cup \{y\}$ est une chaîne de longueur $i+1$ se terminant en $y$. Donc $L(y) \ge i+1$, ce qui contredit $y \in A_i$.

    - Puisque la plus grande antichaîne est de taille au plus 2, on a $|A_i| \le 2$ pour tout $i$.
    - On peut maintenant construire nos deux chaînes. Soit $A_i = \{x_i\}$ ou $A_i = \{x_i, y_i\}$. Pour chaque $z \in A_{i+1}$, il doit exister un prédécesseur $w \in A_i$ tel que $w \prec z$.
    - On construit les chaînes $C_1$ et $C_2$ de manière "gloutonne".

      On prend $x_1 \in A_1$. On trouve $x_2 \in A_2$ tel que $x_1 \prec x_2$, puis $x_3 \in A_3$ tel que $x_2 \prec x_3$, etc. Cela forme la chaîne $C_1 = (x_1, x_2, \dots)$.

      Les éléments restants $y_i$ forment la deuxième chaîne $C_2$.

      Soient $C_1 = \{x \in E : |A_{L(x)}|=1 \text{ ou } x \text{ est le 1er élément de } A_{L(x)}\}$

      Soient $C_2 = \{x \in E : |A_{L(x)}|=2 \text{ et } x \text{ est le 2e élément de } A_{L(x)}\}$

      Il reste à montrer que $C_1$ et $C_2$ sont des chaînes.

      Soient $x, y \in C_1$ avec $L(x) < L(y)$. Il existe une chaîne de longueur $L(y)$ finissant en $y$. L'élément précédent dans cette chaîne, disons $z$, a $L(z) = L(y)-1$. $z$ est soit dans $C_1$, soit dans $C_2$. Par construction, $y$ est "connecté" à un élément de $A_{L(y)-1}$. Cette construction garantit que $E$ est partitionné en deux ensembles, et chaque ensemble est une chaîne.

**Answer:** Le théorème est vrai. En partitionnant l'ensemble $E$ en niveaux $A_i$ correspondant à la longueur de la plus longue chaîne se terminant à un élément, chaque niveau $A_i$ est une antichaîne. Puisque la taille maximale d'une antichaîne est 2, $|A_i| \le 2$. On peut alors construire explicitement deux chaînes qui partitionnent $E$.

</details>

## Exercise 8: [Complex Proof]

**Problem:** Théorème d'Erdős–Szekeres. Démontrer que toute suite de $n^2+1$ nombres réels distincts possède une sous-suite monotone (soit croissante, soit décroissante) de longueur $n+1$.

<details>

<summary>Solution</summary>

**Method:** La preuve est élégante et utilise une idée liée à la théorie des ordres partiels. Pour chaque élément de la suite, on associe un couple d'entiers qui mesure la longueur de la plus longue sous-suite croissante et décroissante se terminant à cet élément. On utilise ensuite le principe des tiroirs (ou de Dirichlet).

**Steps:**

1.  **Formalisation**: Soit la suite $S = (x_1, x_2, \dots, x_{n^2+1})$ où les $x_i$ sont des nombres réels distincts.

2.  **Association d'un couple**: Pour chaque $i \in \{1, \dots, n^2+1\}$, on définit un couple $(a_i, b_i)$ où:
    - $a_i$ est la longueur de la plus longue sous-suite croissante de $S$ qui se termine par $x_i$.
    - $b_i$ est la longueur de la plus longue sous-suite décroissante de $S$ qui se termine par $x_i$.

3.  **Propriété des couples**: Montrons que si $i < j$, alors le couple $(a_i, b_i)$ est différent du couple $(a_j, b_j)$.
    - Soient $i < j$. On a $x_i \neq x_j$.
    - **Cas 1: $x_i < x_j$**. Considérons une sous-suite croissante de longueur $a_i$ se terminant par $x_i$. En ajoutant $x_j$ à la fin de cette sous-suite, on obtient une nouvelle sous-suite croissante de longueur $a_i+1$ se terminant par $x_j$. Par conséquent, la longueur de la plus longue sous-suite croissante se terminant par $x_j$ est au moins $a_i+1$. Donc $a_j \ge a_i+1$. Cela implique $a_i \neq a_j$, et donc $(a_i, b_i) \neq (a_j, b_j)$.
    - **Cas 2: $x_i > x_j$**. Considérons une sous-suite décroissante de longueur $b_i$ se terminant par $x_i$. En ajoutant $x_j$ à la fin de cette sous-suite, on obtient une nouvelle sous-suite décroissante de longueur $b_i+1$ se terminant par $x_j$. Par conséquent, la longueur de la plus longue sous-suite décroissante se terminant par $x_j$ est au moins $b_i+1$. Donc $b_j \ge b_i+1$. Cela implique $b_i \neq b_j$, et donc $(a_i, b_i) \neq (a_j, b_j)$.
    - Dans tous les cas, si $i \neq j$, alors $(a_i, b_i) \neq (a_j, b_j)$.

4.  **Application du principe des tiroirs**:
    - Nous avons $n^2+1$ couples distincts $(a_i, b_i)$.
    - Cherchons à déterminer l'intervalle des valeurs possibles pour $a_i$ et $b_i$. Supposons qu'il n'existe aucune sous-suite monotone de longueur $n+1$.
    - Cela signifierait que pour tout $i$, $a_i \le n$ et $b_i \le n$.
    - Ainsi, chaque couple $(a_i, b_i)$ doit appartenir à l'ensemble $\{1, \dots, n\} \times \{1, \dots, n\}$.
    - Cet ensemble contient $n \times n = n^2$ couples possibles.
    - Or, nous avons $n^2+1$ couples distincts (les "pigeons") à placer dans $n^2$ tiroirs (les paires possibles).
    - Par le principe des tiroirs, c'est impossible.

5.  **Conclusion**:

    Notre supposition initiale (qu'il n'existe aucune sous-suite monotone de longueur $n+1$) doit être fausse.

    Par conséquent, il doit exister au moins un $i$ tel que $a_i \ge n+1$ ou $b_i \ge n+1$.

    Cela garantit l'existence d'une sous-suite monotone de longueur au moins $n+1$.

**Answer:** En associant à chaque élément $x_i$ de la suite un couple $(a_i, b_i)$ représentant les longueurs des plus longues sous-suites croissante et décroissante se terminant en $x_i$, on obtient $n^2+1$ couples distincts. Si aucune sous-suite monotone de longueur $n+1$ n'existait, ces couples devraient tous appartenir à un ensemble de taille $n^2$, ce qui contredit le principe des tiroirs.

</details>

## Exercise 9: [Theoretical Investigation]

**Problem:** Une relation binaire $\mathcal{R}$ sur un ensemble $E$ est dite **bien fondée** si toute partie non vide de $E$ admet un élément minimal pour $\mathcal{R}$. (Un élément $m \in A$ est minimal si $\forall x \in A, x \mathcal{R} m \implies x=m$). Notez que $\mathcal{R}$ n'a pas besoin d'être une relation d'ordre.

Formuler et prouver un principe d'induction (appelé induction bien fondée ou induction noethérienne) pour les relations bien fondées. Montrer que la récurrence forte sur $(\mathbb{N}, \le)$ en est un cas particulier.

<details>

<summary>Solution</summary>

**Method:** La preuve du principe d'induction bien fondée suit la même logique que la preuve de l'équivalence entre le principe du bon ordre et le principe de récurrence sur $\mathbb{N}$. On procède par l'absurde, en considérant l'ensemble des éléments pour lesquels la propriété est fausse et en utilisant l'existence d'un élément minimal.

**Steps:**

1.  **Formulation du principe d'induction bien fondée**:

    Soit $\mathcal{R}$ une relation bien fondée sur un ensemble $E$, et soit $P(x)$ une proposition définie pour chaque $x \in E$.

    Le principe d'induction bien fondée stipule que si l'hypothèse d'induction suivante est vraie :

    $$ (\forall x \in E) \; [(\forall y \in E, y \mathcal{R} x \text{ et } y \neq x \implies P(y)) \implies P(x)] $$

    Alors la conclusion est que $P(x)$ est vraie pour tout $x \in E$.

    Autrement dit, si pour prouver $P(x)$, on peut supposer que $P(y)$ est vraie pour tous les "prédécesseurs" $y$ de $x$, alors $P(x)$ est vraie pour tout le monde. Notez l'absence de cas de base explicite; il est implicitement contenu dans l'hypothèse (pour un élément minimal $m$, l'ensemble de ses prédécesseurs est vide, donc l'implication $(\forall y, \dots) \implies P(m)$ se réduit à $\text{True} \implies P(m)$, ce qui exige de prouver $P(m)$ sans hypothèse).

2.  **Preuve du principe**:
    - Supposons que l'hypothèse d'induction est vraie, mais que la conclusion est fausse.
    - Soit $F = \{x \in E \mid P(x) \text{ est fausse}\}$. Par notre supposition, $F$ est un ensemble non vide.
    - Puisque $\mathcal{R}$ est une relation bien fondée, l'ensemble non vide $F$ doit contenir au moins un élément minimal. Appelons-le $m$.
    - Par définition d'un élément minimal de $F$, il n'existe aucun élément $z \in F$ tel que $z \mathcal{R} m$ et $z \neq m$.
    - Cela signifie que pour tout $y \in E$ tel que $y \mathcal{R} m$ et $y \neq m$, on a $y \notin F$. Autrement dit, pour tous les prédécesseurs $y$ de $m$, la proposition $P(y)$ est vraie.
    - Maintenant, regardons l'hypothèse d'induction appliquée à l'élément $x=m$:

      $$ (\forall y \in E, y \mathcal{R} m \text{ et } y \neq m \implies P(y)) \implies P(m) $$

    - Nous venons de montrer que la prémisse de cette implication, $(\forall y \in E, y \mathcal{R} m \text{ et } y \neq m \implies P(y))$, est vraie.
    - Par conséquent, la conclusion de l'implication, $P(m)$, doit aussi être vraie.
    - Mais $m$ a été choisi dans $F$, l'ensemble où $P$ est fausse. Donc $P(m)$ est fausse.
    - Nous avons une contradiction ($P(m)$ est à la fois vraie et fausse). L'hypothèse que $F$ est non vide doit être fausse.
    - Donc $F = \emptyset$, ce qui signifie que $P(x)$ est vraie pour tout $x \in E$.

3.  **Cas particulier de la récurrence forte sur $\mathbb{N}$**:
    - Soit $E = \mathbb{N}$ et la relation d'ordre usuelle $\le$. La relation stricte associée est $y < x$.
    - La relation $<$ est bien fondée sur $\mathbb{N}$. C'est une conséquence directe du principe du bon ordre (toute partie non vide de $\mathbb{N}$ a un plus petit élément, qui est un élément minimal pour $<$).
    - Appliquons le principe d'induction bien fondée à $(\mathbb{N}, <)$. La proposition devient:

      Si $(\forall n \in \mathbb{N}) \; [(\forall k \in \mathbb{N}, k < n \implies P(k)) \implies P(n)]$,

      Alors $(\forall n \in \mathbb{N}), P(n)$.

    - La condition $(\forall k \in \mathbb{N}, k < n \implies P(k))$ est exactement l'hypothèse de la récurrence forte $(\forall k \in \{0, \dots, n-1\}, P(k))$.
    - Pour $n=0$, l'ensemble des $k<0$ est vide, l'hypothèse est donc trivialement vraie. L'implication devient $\text{True} \implies P(0)$, ce qui est la base de la récurrence forte.
    - Le principe d'induction bien fondée sur $(\mathbb{N}, <)$ est donc identique au principe de récurrence forte.

**Answer:** Le principe d'induction bien fondée stipule que si, pour un élément $x$ quelconque, la validité de la propriété $P$ pour tous ses prédécesseurs stricts sous $\mathcal{R}$ implique la validité de $P(x)$, alors $P$ est vraie sur tout l'ensemble. La récurrence forte sur $\mathbb{N}$ est un cas particulier de ce principe en utilisant la relation $<$ qui est bien fondée en vertu du principe du bon ordre.

</details>

## Exercise 10: [Complex Proof]

**Problem:** Soit l'axiome du choix (AC) et le lemme de Zorn (ZL).

**Axiome du Choix**: Pour toute collection $(S_i)_{i \in I}$ d'ensembles non vides, leur produit cartésien $\prod_{i \in I} S_i$ est non vide.

**Lemme de Zorn**: Soit $(E, \preceq)$ un ensemble partiellement ordonné. Si toute chaîne (sous-ensemble totalement ordonné) de $E$ admet un majorant dans $E$, alors $E$ admet au moins un élément maximal.

Démontrer que le Lemme de Zorn implique l'Axiome du Choix.

(Indice: Considérer l'ensemble des "fonctions de choix partielles".)

<details>

<summary>Solution</summary>

**Method:** Pour prouver (ZL $\implies$ AC), on suppose que le Lemme de Zorn est vrai. Étant donné une famille d'ensembles non vides $(S_i)_{i \in I}$, on veut construire une fonction de choix $f: I \to \bigcup_{i \in I} S_i$ telle que $f(i) \in S_i$ pour tout $i \in I$. On construit cette fonction en utilisant un élément maximal dans un poset de fonctions de choix partielles.

**Steps:**

1.  **Mise en place**: Soit $(S_i)_{i \in I}$ une famille d'ensembles non vides. Nous voulons prouver que $\prod_{i \in I} S_i \neq \emptyset$, ce qui revient à montrer l'existence d'une fonction $f: I \to \bigcup S_i$ avec $f(i) \in S_i$ pour tout $i \in I$.

2.  **Définition du poset**: Considérons l'ensemble $\mathcal{F}$ des fonctions de choix partielles. Un élément $g \in \mathcal{F}$ est une fonction dont le domaine est un sous-ensemble de $I$, disons $\text{dom}(g) = J \subseteq I$, et telle que pour tout $j \in J$, $g(j) \in S_j$.

    $$ \mathcal{F} = \{ g \mid \text{dom}(g) \subseteq I \text{ et } \forall j \in \text{dom}(g), g(j) \in S_j \} $$

    On munit $\mathcal{F}$ d'une relation d'ordre partiel $\preceq$ définie par le prolongement de fonction :

    $$ g_1 \preceq g_2 \iff \text{dom}(g_1) \subseteq \text{dom}(g_2) \text{ et } g_2|_{\text{dom}(g_1)} = g_1 $$

    (c'est-à-dire que $g_2$ est un prolongement de $g_1$). Il est facile de vérifier que $(\mathcal{F}, \preceq)$ est un ensemble partiellement ordonné (réflexivité, antisymétrie, transitivité).

3.  **Vérification de l'hypothèse de Zorn**: Soit $\mathcal{C} = \{g_k\}_{k \in K}$ une chaîne dans $\mathcal{F}$. Nous devons montrer que $\mathcal{C}$ admet un majorant dans $\mathcal{F}$.
    - Définissons une fonction $g^*$ comme suit:
      - Le domaine de $g^*$ est l'union des domaines des fonctions de la chaîne: $\text{dom}(g^*) = J^* = \bigcup_{k \in K} \text{dom}(g_k)$.
      - Pour tout $j \in J^*$, il existe au moins un $k \in K$ tel que $j \in \text{dom}(g_k)$. On définit $g^*(j) = g_k(j)$.
    - Cette définition est cohérente. Si $j \in \text{dom}(g_{k_1})$ et $j \in \text{dom}(g_{k_2})$, alors comme $\mathcal{C}$ est une chaîne, l'une des fonctions prolonge l'autre. Disons $g_{k_1} \preceq g_{k_2}$. Alors par définition du prolongement, $g_{k_2}(j) = g_{k_1}(j)$. La valeur de $g^*(j)$ est donc bien définie.
    - La fonction $g^*$ est un élément de $\mathcal{F}$ car pour tout $j \in J^*$, $g^*(j) = g_k(j) \in S_j$ pour un certain $k$.
    - Par construction, pour tout $g_k \in \mathcal{C}$, on a $\text{dom}(g_k) \subseteq \text{dom}(g^*)$ et $g^*$ prolonge $g_k$. Donc $g_k \preceq g^*$.
    - Ainsi, $g^*$ est un majorant de la chaîne $\mathcal{C}$ dans $\mathcal{F}$.

4.  **Application du Lemme de Zorn**:

    L'hypothèse du Lemme de Zorn est satisfaite. Par conséquent, l'ensemble $\mathcal{F}$ admet au moins un élément maximal. Soit $f$ un tel élément maximal.

5.  **Montrer que l'élément maximal est une fonction de choix totale**:

    Il nous reste à montrer que le domaine de $f$ est $I$ tout entier.

    - Supposons, par l'absurde, que $\text{dom}(f) \neq I$. Il existe donc un indice $i_0 \in I \setminus \text{dom}(f)$.
    - L'ensemble $S_{i_0}$ est non vide, donc on peut choisir un élément $s_0 \in S_{i_0}$.
    - On peut maintenant construire une nouvelle fonction $f'$ qui prolonge $f$:
      - $\text{dom}(f') = \text{dom}(f) \cup \{i_0\}$.
      - $f'(j) = f(j)$ si $j \in \text{dom}(f)$.
      - $f'(i_0) = s_0$.
    - La fonction $f'$ est clairement un élément de $\mathcal{F}$. Par construction, $f \preceq f'$ et $f \neq f'$ (puisque leurs domaines sont différents).
    - Ceci contredit le fait que $f$ est un élément maximal de $\mathcal{F}$.
    - L'hypothèse $\text{dom}(f) \neq I$ est donc fausse. On doit avoir $\text{dom}(f) = I$.

6.  **Conclusion**:

    L'élément maximal $f$ est une fonction de choix dont le domaine est $I$. Elle satisfait donc $\forall i \in I, f(i) \in S_i$. L'existence d'une telle fonction prouve que le produit cartésien est non vide. L'Axiome du Choix est donc démontré.

**Answer:** En supposant le Lemme de Zorn, on considère le poset des fonctions de choix partielles ordonné par prolongement. On montre que ce poset satisfait les conditions du Lemme de Zorn, garantissant l'existence d'un élément maximal. On prouve alors par l'absurde que cet élément maximal doit être une fonction de choix définie sur tout l'ensemble d'indices, ce qui prouve l'Axiome du Choix.

</details>

## Exercise 11: [Theoretical Investigation]

**Problem:** Démontrer l'équivalence logique sur $\mathbb{N}$ des trois énoncés suivants:

1.  **Principe du bon ordre (PBO)**: Toute partie non vide de $\mathbb{N}$ admet un plus petit élément.
2.  **Principe de récurrence faible (PRF)**: Si $P(0)$ est vraie et si $(\forall n \in \mathbb{N}, P(n) \implies P(n+1))$, alors $(\forall n \in \mathbb{N}, P(n))$.
3.  **Principe de récurrence forte (PRForte)**: Si $(\forall n \in \mathbb{N}, (\forall k < n, P(k)) \implies P(n))$, alors $(\forall n \in \mathbb{N}, P(n))$.

<details>

<summary>Solution</summary>

**Method:** Pour prouver l'équivalence $1 \iff 2 \iff 3$, nous allons démontrer le cycle d'implications: (1) $\implies$ (2), (2) $\implies$ (3), et (3) $\implies$ (1).

**Steps:**

**1. Preuve de (PBO) $\implies$ (PRF)**

- On suppose le Principe du bon ordre (PBO). Soit $P(n)$ une proposition vérifiant les hypothèses du PRF: $P(0)$ est vraie, et $\forall n, P(n) \implies P(n+1)$.
- On veut montrer que $P(n)$ est vraie pour tout $n \in \mathbb{N}$.
- Procédons par l'absurde. Soit $E = \{n \in \mathbb{N} \mid P(n) \text{ est fausse}\}$. Supposons $E \neq \emptyset$.
- Par le PBO, $E$ admet un plus petit élément, noté $n_0$.
- Puisque $P(0)$ est vraie, $0 \notin E$, donc $n_0 > 0$.
- L'entier $n_0 - 1$ existe et $n_0 - 1 < n_0$. Comme $n_0$ est le *plus petit* élément de $E$, on a $n_0 - 1 \notin E$.
- Cela signifie que $P(n_0-1)$ est vraie.
- Par l'hypothèse d'hérédité du PRF appliquée à $n = n_0 - 1$, on a $P(n_0-1) \implies P(n_0)$.
- Puisque $P(n_0-1)$ est vraie, $P(n_0)$ doit être vraie.
- Mais $n_0 \in E$, ce qui signifie que $P(n_0)$ est fausse. C'est une contradiction.
- L'hypothèse $E \neq \emptyset$ est donc fausse. $E = \emptyset$, ce qui signifie que $P(n)$ est vraie pour tout $n \in \mathbb{N}$.

**2. Preuve de (PRF) $\implies$ (PRForte)**

- On suppose le Principe de récurrence faible (PRF). Soit $P(n)$ une proposition vérifiant l'hypothèse du PRForte: $\forall n, (\forall k < n, P(k)) \implies P(n)$.
- On veut montrer que $\forall n, P(n)$.
- Définissons une nouvelle proposition $Q(n)$ par: "$P(k)$ est vraie pour tout $k \le n$". C'est-à-dire $Q(n) \equiv \forall k \in \{0, \dots, n\}, P(k)$.
- Nous allons prouver $\forall n, Q(n)$ par récurrence faible (en utilisant le PRF).
- **Base**: $Q(0)$ signifie $P(0)$. L'hypothèse du PRForte pour $n=0$ est $(\forall k < 0, P(k)) \implies P(0)$. L'antécédent est vide, donc vrai. L'hypothèse implique donc $P(0)$. Ainsi $Q(0)$ est vraie.
- **Hérédité**: Supposons $Q(n)$ vraie pour un certain $n$. Cela signifie que $\forall k \le n, P(k)$.
- On veut montrer $Q(n+1)$, c'est-à-dire $\forall k \le n+1, P(k)$.
- Par hypothèse de récurrence $Q(n)$, on sait déjà que $P(k)$ est vraie pour $k \le n$. Il ne reste qu'à prouver $P(n+1)$.
- L'hypothèse du PRForte appliquée à $n+1$ est $(\forall k < n+1, P(k)) \implies P(n+1)$.
- L'antécédent $(\forall k < n+1, P(k))$ est exactement notre hypothèse de récurrence $Q(n)$.
- Puisque $Q(n)$ est supposée vraie, l'hypothèse du PRForte nous donne que $P(n+1)$ est vraie.
- Donc, si $Q(n)$ est vraie, alors $P(k)$ est vraie pour $k \le n$ et $P(n+1)$ est vraie, ce qui signifie que $Q(n+1)$ est vraie.
- Par le PRF, $Q(n)$ est vraie pour tout $n$. Si $Q(n)$ est vraie pour tout $n$, alors a fortiori $P(n)$ est vraie pour tout $n$.

**3. Preuve de (PRForte) $\implies$ (PBO)**

- On suppose le Principe de récurrence forte (PRForte). Soit $E$ un sous-ensemble de $\mathbb{N}$. On veut montrer que si $E \neq \emptyset$, alors $E$ a un plus petit élément.
- On va prouver la contraposée: si $E$ n'a pas de plus petit élément, alors $E$ est vide.
- Soit $E \subseteq \mathbb{N}$ un ensemble qui n'a pas de plus petit élément.
- Définissons la proposition $P(n) \equiv n \notin E$. Nous allons prouver $\forall n, P(n)$ par récurrence forte.
- Soit $n \in \mathbb{N}$. L'hypothèse de récurrence forte est: supposons que pour tout $k < n$, $P(k)$ est vraie. C'est-à-dire, $\forall k < n, k \notin E$.
- Montrons que $P(n)$ est vraie (c'est-à-dire $n \notin E$).
- Si $n$ était dans $E$, alors comme tous les entiers $k<n$ ne sont pas dans $E$, $n$ serait le plus petit élément de $E$.
- Mais on a supposé que $E$ n'a pas de plus petit élément.
- Donc, $n$ ne peut pas être dans $E$. C'est-à-dire $P(n)$ est vraie.
- L'implication $(\forall k < n, P(k)) \implies P(n)$ est donc vraie pour tout $n$.
- Par le PRForte, on conclut que $P(n)$ est vraie pour tout $n \in \mathbb{N}$.
- $P(n)$ vraie pour tout $n$ signifie que $n \notin E$ pour tout $n$.
- Cela signifie que $E = \emptyset$.
- On a donc prouvé que si une partie de $\mathbb{N}$ n'a pas de plus petit élément, elle est vide. C'est la contraposée du PBO.

**Answer:** Le cycle d'implications (PBO) $\implies$ (PRF) $\implies$ (PRForte) $\implies$ (PBO) a été démontré, prouvant ainsi l'équivalence logique des trois principes pour les entiers naturels.

</details>
