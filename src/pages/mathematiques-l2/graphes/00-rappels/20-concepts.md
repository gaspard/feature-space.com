---
id: '13423146'
type: concepts
order: 20
title: Rappels et notation - concepts (B)
tags:
  - set theory
  - relations
  - functions
  - induction
  - combinatorics
course: Graphes et Combinatoire
courseId: 7027276b
chapter: Rappels et notation
chapterId: 58e4ac98
level: pro
createdAt: '2025-10-15T19:12:12.026Z'
---
# Rappels et notation (B)

---

## Concept 1: Ensembles et Opérations Ensemblistes

### Prérequis

- Logique propositionnelle (prédicats, quantificateurs $\forall, \exists$, connecteurs logiques $\et, \ou, \implies$).
- Notion intuitive de collection d'objets.

### Définition

Un **ensemble** est une collection d'objets distincts, appelés **éléments**, sans notion d'ordre ou de répétition. Cette définition, issue de la théorie naïve des ensembles, est suffisante pour la plupart des applications mais peut conduire à des paradoxes (e.g., le paradoxe de Russell). Le cadre formel est celui de la théorie axiomatique des ensembles, typiquement Zermelo-Fraenkel avec l'axiome du choix (ZFC).

- **Appartenance**: $x \in E$ signifie que $x$ est un élément de l'ensemble $E$.
- **Égalité**: Deux ensembles $A$ et $B$ sont égaux, noté $A=B$, si et seulement si ils ont les mêmes éléments: $\forall x, (x \in A \iff x \in B)$.
- **Inclusion**: $A$ est un sous-ensemble (ou une partie) de $B$, noté $A \subseteq B$, si tout élément de $A$ est aussi un élément de $B$: $\forall x, (x \in A \implies x \in B)$.
- **Ensemble vide**: L'unique ensemble ne contenant aucun élément est noté $\emptyset$.
- **Ensemble des parties (Power Set)**: L'ensemble de tous les sous-ensembles de $E$, noté $\mathcal{P}(E)$. Formellement, $\mathcal{P}(E) = \{A : A \subseteq E\}$.

Soient $A$ et $B$ deux sous-ensembles d'un ensemble de référence $E$.

- **Union**: $A \cup B = \{x \in E : x \in A \text{ ou } x \in B\}$.
- **Intersection**: $A \cap B = \{x \in E : x \in A \text{ et } x \in B\}$.
- **Différence**: $A \setminus B = \{x \in E : x \in A \text{ et } x \notin B\}$.
- **Complémentaire**: Le complémentaire de $A$ dans $E$ est $\bar{A} = E \setminus A = \{x \in E : x \notin A\}$.
- **Produit Cartésien**: $A \times B = \{(a, b) : a \in A, b \in B\}$. Les éléments sont des couples ordonnés. Plus généralement, $\prod_{i=1}^n A_i = \{(a_1, \dots, a_n) : \forall i \in [1,n], a_i \in A_i\}$.

### Propriétés Clés

- **Associativité**: $A \cup (B \cup C) = (A \cup B) \cup C$ et $A \cap (B \cap C) = (A \cap B) \cap C$.
- **Commutativité**: $A \cup B = B \cup A$ et $A \cap B = B \cap A$.
- **Distributivité**:
  - $A \cap (B \cup C) = (A \cap B) \cup (A \cap C)$
  - $A \cup (B \cap C) = (A \cup B) \cap (A \cup C)$
- **Lois de De Morgan**:
  - $\overline{A \cup B} = \bar{A} \cap \bar{B}$
  - $\overline{A \cap B} = \bar{A} \cup \bar{B}$
- **Cardinalité de l'ensemble des parties**: Si $E$ est un ensemble fini de cardinal $|E|=n$, alors $|\mathcal{P}(E)|=2^n$.

  *Preuve*: Un sous-ensemble de $E$ est déterminé par le choix, pour chaque élément de $E$, de l'inclure ou non. Il y a 2 choix pour chacun des $n$ éléments. Par le principe multiplicatif, il y a $2^n$ sous-ensembles possibles.

### Exemples

**Exemple 1**

Soit $E = \{1, 2, 3\}$. L'ensemble des parties de $E$ est :

$$ \mathcal{P}(E) = \{\emptyset, \{1\}, \{2\}, \{3\}, \{1, 2\}, \{1, 3\}, \{2, 3\}, \{1, 2, 3\}\} $$

On a bien $|\mathcal{P}(E)| = 8 = 2^3$.

**Exemple 2**

Soient $A = \{n \in \mathbb{Z} : 2 \text{ divise } n\}$ (les entiers pairs) et $B = \{n \in \mathbb{Z} : 3 \text{ divise } n\}$ (les multiples de 3).

- $A \cap B = \{n \in \mathbb{Z} : 6 \text{ divise } n\}$
- $A \cup B = \{n \in \mathbb{Z} : 2 \text{ divise } n \text{ ou } 3 \text{ divise } n\}$
- $A \setminus B = \{n \in \mathbb{Z} : n \text{ est pair et non multiple de 3}\}$

**Exemple 3**

Le produit cartésien $\mathbb{R} \times \mathbb{R} = \mathbb{R}^2$ est l'ensemble des coordonnées des points du plan euclidien. Le produit $\mathbb{R} \times [0, 1]$ est une bande infinie.

### Contre-exemples

- **Multiensemble vs. Ensemble**: Le multiensemble $\{a, a, b\}$ n'est pas l'ensemble $\{a, b\}$. En théorie des ensembles, $\{a, a, b\} = \{a, b\}$.
- **Couple vs. Paire**: Le couple $(a, b)$ est un objet ordonné. La paire $\{a, b\}$ est un ensemble non ordonné. Ainsi, $(a, b) = (b, a) \iff a=b$, tandis que $\{a, b\} = \{b, a\}$ est toujours vrai.
- **Classe vs. Ensemble**: En ZFC, la "collection de tous les ensembles", notée $\mathcal{U}$, n'est pas un ensemble (c'est une classe propre), car supposer que c'en est un mène au paradoxe de Russell. Si $\mathcal{U}$ était un ensemble, alors $\mathcal{P}(\mathcal{U}) \subseteq \mathcal{U}$. Mais le théorème de Cantor implique que $|\mathcal{P}(\mathcal{U})| > |\mathcal{U}|$, une contradiction.

### Concepts Connexes

- **Cardinalité**: Théorie de la taille des ensembles (finis et infinis).
- **Théorie axiomatique des ensembles (ZFC)**: Fondation formelle des mathématiques pour éviter les paradoxes de la théorie naïve.
- **Catégorie des ensembles (Set)**: Une catégorie où les objets sont des ensembles et les morphismes sont des applications.

### Applications

- **Fondations des mathématiques**: Presque toutes les structures mathématiques (groupes, espaces topologiques, etc.) sont définies en termes d'ensembles.
- **Informatique théorique**: Les langages formels sont des ensembles de chaînes de caractères.
- **Bases de données relationnelles**: Les tables sont des ensembles de n-uplets, et les opérations (jointures, sélections) sont basées sur la théorie des ensembles.

---

## Concept 2: Applications (Fonctions)

### Prérequis

- Concept 1: Ensembles et Opérations Ensemblistes (en particulier, le produit cartésien).

### Définition

Une **application** (ou **fonction**) $f$ d'un ensemble de départ $E$ vers un ensemble d'arrivée $F$ est un triplet $f = (E, F, \mathcal{G})$ où $\mathcal{G}$ est un sous-ensemble de $E \times F$, appelé le **graphe** de $f$, satisfaisant la condition suivante:

$$ \forall x \in E, \exists! y \in F \text{ tel que } (x, y) \in \mathcal{G} $$

L'unique $y$ associé à $x$ est noté $f(x)$. On note $f: E \to F$.

- **Image (directe)** d'une partie $A \subseteq E$: $f(A) = \{f(x) : x \in A\} \subseteq F$.
- **Image réciproque** d'une partie $B \subseteq F$: $f^{-1}(B) = \{x \in E : f(x) \in B\} \subseteq E$.

Une application $f: E \to F$ est dite:

- **Injective** si tout élément de l'ensemble d'arrivée a au plus un antécédent:

  $$ \forall x_1, x_2 \in E, (f(x_1) = f(x_2) \implies x_1 = x_2) $$

- **Surjective** si tout élément de l'ensemble d'arrivée a au moins un antécédent:

  $$ \forall y \in F, \exists x \in E, f(x) = y $$

- **Bijective** si elle est à la fois injective et surjective. Cela équivaut à:

  $$ \forall y \in F, \exists! x \in E, f(x) = y $$

### Propriétés Clés

- **Composition**: Soient $f: E \to F$ et $g: F \to G$. L'application composée $g \circ f: E \to G$ est définie par $(g \circ f)(x) = g(f(x))$. La composition est associative.
- **Stabilité des propriétés par composition (Lemme 0.6)**:
  - Si $f$ et $g$ sont injectives, alors $g \circ f$ est injective.

    *Preuve*: Soient $x_1, x_2 \in E$ tels que $(g \circ f)(x_1) = (g \circ f)(x_2)$. Alors $g(f(x_1)) = g(f(x_2))$. Par injectivité de $g$, $f(x_1) = f(x_2)$. Par injectivité de $f$, $x_1 = x_2$.

  - Si $f$ et $g$ sont surjectives, alors $g \circ f$ est surjective.

    *Preuve*: Soit $z \in G$. Par surjectivité de $g$, $\exists y \in F, g(y) = z$. Par surjectivité de $f$, $\exists x \in E, f(x)=y$. Donc, $(g \circ f)(x) = g(f(x)) = g(y) = z$.

- **Application inverse**: Une application $f: E \to F$ est bijective si et seulement si il existe une application $f^{-1}: F \to E$ (appelée application inverse ou réciproque) telle que $f^{-1} \circ f = id_E$ et $f \circ f^{-1} = id_F$. L'application $f^{-1}$ est alors unique et bijective.

### Exemples

**Exemple 1**

Soit $f: \mathbb{R} \to \mathbb{R}$ définie par $f(x) = x^2$.

- $f$ n'est pas injective car $f(-1) = f(1) = 1$.
- $f$ n'est pas surjective car $f(\mathbb{R}) = [0, +\infty) \neq \mathbb{R}$.

L'image réciproque de $B = [1, 4]$ est $f^{-1}([1, 4]) = [-2, -1] \cup [1, 2]$.

**Exemple 2**

Soit $g: \mathbb{R} \to [0, +\infty)$ définie par $g(x) = x^2$.

- $g$ n'est pas injective (même raison que $f$).
- $g$ est surjective car pour tout $y \in [0, +\infty)$, $x=\sqrt{y}$ est un antécédent.

**Exemple 3**

L'application $h: \mathbb{N} \to \mathbb{Z}$ définie par $h(n) = \begin{cases} n/2 & \text{si } n \text{ est pair} \\ -(n+1)/2 & \text{si } n \text{ est impair} \end{cases}$ est une bijection.

Elle énumère $\mathbb{Z}$ comme suit: $0, -1, 1, -2, 2, -3, 3, \dots$

### Contre-exemples

- **Relation non fonctionnelle**: Soit $\mathcal{R} \subseteq \mathbb{R} \times \mathbb{R}$ définie par $x^2 + y^2 = 1$ (le cercle unité). Ce n'est pas le graphe d'une fonction $f: [-1,1] \to \mathbb{R}$ car pour $x=0$, il existe deux valeurs de $y$ ($1$ et $-1$).
- **Image réciproque vs. Application inverse**: Le symbole $f^{-1}$ dans $f^{-1}(B)$ dénote toujours l'image réciproque, même si $f$ n'est pas bijective. L'application inverse $f^{-1}: F \to E$ n'existe que si $f$ est bijective. Pour $f(x)=x^2$, $f^{-1}(\{4\}) = \{-2, 2\}$, mais il n'y a pas d'application $f^{-1}$.

### Concepts Connexes

- **Isomorphismes**: Dans de nombreuses structures algébriques (groupes, anneaux, espaces vectoriels), une bijection qui préserve la structure est appelée isomorphisme. Elle établit une équivalence structurelle.
- **Homéomorphismes**: En topologie, une bijection continue dont l'inverse est continue.
- **Cardinalité**: Deux ensembles sont dits équipotents (ont le même cardinal) s'il existe une bijection entre eux.
- **Morphismes (Théorie des catégories)**: Les applications sont les morphismes dans la catégorie des ensembles (Set).

### Applications

- **Cryptographie**: Les fonctions de hachage et les chiffrements par bloc reposent sur des fonctions complexes (souvent des permutations de grands ensembles finis).
- **Analyse**: L'étude des fonctions (continuité, dérivabilité, intégrabilité) est centrale.
- **Informatique**: Toute fonction pure en programmation est une implémentation d'une application mathématique.

---

## Concept 3: Relations d'Équivalence et Partitions

### Prérequis

- Concept 1: Ensembles (en particulier, produit cartésien et ensemble des parties).
- Logique des prédicats.

### Définition

Une **relation binaire** $\mathcal{R}$ sur un ensemble $E$ est un sous-ensemble de $E \times E$. On note $x\mathcal{R}y$ pour $(x, y) \in \mathcal{R}$.

Une relation binaire $\mathcal{R}$ sur $E$ est une **relation d'équivalence** si elle est:

1.  **Réflexive**: $\forall x \in E, x\mathcal{R}x$.
2.  **Symétrique**: $\forall x, y \in E, (x\mathcal{R}y \implies y\mathcal{R}x)$.
3.  **Transitive**: $\forall x, y, z \in E, (x\mathcal{R}y \text{ et } y\mathcal{R}z \implies x\mathcal{R}z)$.

Soit $\mathcal{R}$ une relation d'équivalence sur $E$.

- La **classe d'équivalence** de $x \in E$ est l'ensemble $\mathcal{R}[x] = \{y \in E : x\mathcal{R}y\}$.
- L'**ensemble quotient** de $E$ par $\mathcal{R}$ est l'ensemble des classes d'équivalence: $E/\mathcal{R} = \{\mathcal{R}[x] : x \in E\}$.

Une **partition** de $E$ est un sous-ensemble $P \subseteq \mathcal{P}(E)$ tel que:

1.  Les éléments de $P$ sont non vides: $\forall A \in P, A \neq \emptyset$.
2.  Les éléments de $P$ sont deux à deux disjoints: $\forall A, B \in P, (A \neq B \implies A \cap B = \emptyset)$.
3.  L'union des éléments de $P$ recouvre $E$: $\bigcup_{A \in P} A = E$.

### Propriétés Clés

**Proposition 0.12 (Correspondance entre relations d'équivalence et partitions)**.

1.  Si $\mathcal{R}$ est une relation d'équivalence sur $E$, alors l'ensemble quotient $E/\mathcal{R}$ est une partition de $E$.
2.  Réciproquement, si $P$ est une partition de $E$, il existe une unique relation d'équivalence $\mathcal{R}$ sur $E$ telle que $E/\mathcal{R} = P$.

*Démonstration (Esquisse)*.

1.  Pour tout $x \in E$, $x \in \mathcal{R}[x]$ (par réflexivité), donc les classes sont non vides et leur union est $E$. Il faut montrer qu'elles sont disjointes ou identiques. Soient $\mathcal{R}[x]$ et $\mathcal{R}[y]$ deux classes. Si leur intersection est non vide, soit $z \in \mathcal{R}[x] \cap \mathcal{R}[y]$. Alors $x\mathcal{R}z$ et $y\mathcal{R}z$. Par symétrie, $z\mathcal{R}y$. Par transitivité, $x\mathcal{R}y$. Montrons que $\mathcal{R}[x] = \mathcal{R}[y]$. Soit $w \in \mathcal{R}[y]$, donc $y\mathcal{R}w$. Comme $x\mathcal{R}y$, par transitivité $x\mathcal{R}w$, donc $w \in \mathcal{R}[x]$. Ainsi $\mathcal{R}[y] \subseteq \mathcal{R}[x]$. L'inclusion inverse se montre de même.
2.  Étant donné une partition $P$, on définit $x\mathcal{R}y \iff \exists A \in P, \{x, y\} \subseteq A$. La vérification des axiomes (réflexivité, symétrie, transitivité) est directe à partir des propriétés d'une partition. L'unicité est également claire.

### Exemples

**Exemple 1: Congruence modulo n**

Sur $\mathbb{Z}$, la relation $x \equiv y \pmod{n}$ est définie par $n \text{ divise } (x-y)$. C'est une relation d'équivalence.

Les classes d'équivalence sont les ensembles de la forme $\bar{k} = \{k + qn : q \in \mathbb{Z}\}$.

L'ensemble quotient est $\mathbb{Z}/n\mathbb{Z} = \{\bar{0}, \bar{1}, \dots, \overline{n-1}\}$, qui est l'ensemble des entiers modulo $n$.

**Exemple 2: Construction de $\mathbb{Q}$**

Sur l'ensemble $E = \mathbb{Z} \times (\mathbb{Z} \setminus \{0\})$, on définit la relation $(a, b)\mathcal{R}(c, d) \iff ad = bc$. C'est une relation d'équivalence.

La classe d'équivalence de $(a,b)$ représente le nombre rationnel $a/b$.

L'ensemble quotient $E/\mathcal{R}$ est l'ensemble $\mathbb{Q}$ des nombres rationnels.

**Exemple 3: Noyau d'une application**

Soit $f: E \to F$ une application. La relation sur $E$ définie par $x\mathcal{R}y \iff f(x) = f(y)$ est une relation d'équivalence.

Les classes d'équivalence sont les images réciproques des singletons de l'image de $f$, i.e., les ensembles non vides de la forme $f^{-1}(\{y\})$, appelés les *fibres* de $f$.

### Contre-exemples

- **Relation non transitive**: Sur $\mathbb{R}$, soit $x\mathcal{R}y \iff |x-y| \le 1$. $\mathcal{R}$ est réflexive et symétrique, mais pas transitive. Par exemple, $1\mathcal{R}2$ et $2\mathcal{R}3$, mais on n'a pas $1\mathcal{R}3$ car $|1-3|=2 > 1$.
- **Relation d'ordre**: La relation $\le$ sur $\mathbb{N}$ est réflexive et transitive, mais antisymétrique, pas symétrique. Ce n'est pas une relation d'équivalence.

### Concepts Connexes

- **Structures quotient**: En algèbre, on quotiente des groupes, anneaux, espaces vectoriels par des sous-structures compatibles (sous-groupes normaux, idéaux, sous-espaces) pour créer de nouvelles structures.
- **Premier théorème d'isomorphisme**: Pour de nombreuses structures algébriques, si $f: A \to B$ est un homomorphisme, alors $A/\ker(f) \cong \text{im}(f)$.
- **Espace quotient en topologie**: Une topologie peut être définie sur un ensemble quotient à partir de celle de l'ensemble de départ.

### Applications

- **Classification**: Les relations d'équivalence sont l'outil mathématique pour classer des objets selon un critère donné. Les classes d'équivalence sont les catégories de la classification.
- **Construction d'objets mathématiques**: $\mathbb{Z}/n\mathbb{Z}$, $\mathbb{Q}$, $\mathbb{R}$ (via les suites de Cauchy), et bien d'autres objets sont formellement construits comme des ensembles quotients.

---

## Concept 4: Relations d'Ordre

### Prérequis

- Concept 1: Ensembles.
- Logique des prédicats.

### Définition

Une relation binaire $\preceq$ sur un ensemble $E$ est une **relation d'ordre (partiel)** si elle est:

1.  **Réflexive**: $\forall x \in E, x \preceq x$.
2.  **Antisymétrique**: $\forall x, y \in E, (x \preceq y \text{ et } y \preceq x \implies x = y)$.
3.  **Transitive**: $\forall x, y, z \in E, (x \preceq y \text{ et } y \preceq z \implies x \preceq z)$.

Un ensemble $E$ muni d'une relation d'ordre, noté $(E, \preceq)$, est un **ensemble partiellement ordonné** (poset).

L'ordre est dit **total** si deux éléments sont toujours comparables: $\forall x, y \in E, (x \preceq y \text{ ou } y \preceq x)$.

Soit $(E, \preceq)$ un ensemble partiellement ordonné et $A \subseteq E$.

- $m \in E$ est un **majorant** de $A$ si $\forall x \in A, x \preceq m$.
- $a \in A$ est un **plus grand élément** de $A$ s'il est un majorant de $A$ ($ \forall x \in A, x \preceq a$). S'il existe, il est unique.
- $a \in A$ est un **élément maximal** de $A$ si aucun autre élément de $A$ n'est plus grand que lui: $\neg (\exists x \in A, a \preceq x \text{ et } a \neq x)$.

Les notions de **minorant**, **plus petit élément** et **élément minimal** sont définies dualement.

### Propriétés Clés

- **Unicité**: Le plus grand (ou plus petit) élément d'un ensemble, s'il existe, est unique.

  *Preuve*: Soient $a$ et $b$ deux plus grands éléments de $A$. Par définition, $a \preceq b$ (car $b \in A$ et $a$ est un plus grand élément) et $b \preceq a$ (car $a \in A$ et $b$ est un plus grand élément). Par antisymétrie, $a=b$.

- **Élément maximal vs. Plus grand élément**: Un plus grand élément est toujours maximal. La réciproque n'est vraie que si l'ordre est total. Dans un ordre partiel, il peut y avoir plusieurs éléments maximaux, et aucun plus grand élément.

### Exemples

**Exemple 1: Ordre usuel sur $\mathbb{R}$**

$(\mathbb{R}, \le)$ est un ensemble totalement ordonné. Tout sous-ensemble fini non vide a un plus grand et un plus petit élément. L'intervalle $(0, 1)$ n'a ni plus grand ni plus petit élément dans $\mathbb{R}$, mais il a une borne supérieure (1) et inférieure (0).

**Exemple 2: Ordre de divisibilité sur $\mathbb{N}^*$**

Sur $\mathbb{N}^* = \mathbb{N} \setminus \{0\}$, la relation $a|b$ (a divise b) est une relation d'ordre partiel.

- Réflexive: $a|a$.
- Antisymétrique: Si $a|b$ et $b|a$, alors $\exists k, l \in \mathbb{N}^*$ tels que $b=ak$ et $a=bl$. Donc $a=akl$, d'où $kl=1$. Comme $k,l \in \mathbb{N}^*$, $k=l=1$ et $a=b$.
- Transitive: Si $a|b$ et $b|c$, alors $b=ak_1$ et $c=bk_2$, donc $c=a(k_1k_2)$, donc $a|c$.

Cet ordre n'est pas total: $2$ ne divise pas $3$ et $3$ ne divise pas $2$. Dans l'ensemble $\{1, 2, 3, 4, 5, 6\}$, les éléments maximaux sont $4, 5, 6$. Il n'y a pas de plus grand élément.

**Exemple 3: Ordre d'inclusion sur $\mathcal{P}(X)$**

Soit $X$ un ensemble. $(\mathcal{P}(X), \subseteq)$ est un ensemble partiellement ordonné.

Le plus petit élément est $\emptyset$ et le plus grand élément est $X$.

Cet ordre n'est pas total dès que $|X| \ge 2$. Si $X=\{a,b\}$, les ensembles $\{a\}$ et $\{b\}$ ne sont pas comparables.

### Contre-exemples

- **Préordre**: La relation $\mathcal{R}$ sur l'ensemble des fonctions $f: \mathbb{N} \to \mathbb{N}$ définie par $f \mathcal{R} g \iff f = O(g)$ est réflexive et transitive, mais pas antisymétrique (e.g., $f(n)=n$ et $g(n)=2n$ vérifient $f=O(g)$ et $g=O(f)$ mais $f \neq g$). C'est un préordre.
- **Relation d'équivalence**: L'égalité sur $\mathbb{N}$ est une relation d'ordre, mais la congruence modulo 5 ne l'est pas, car elle n'est pas antisymétrique ($2 \equiv 7 \pmod 5$ et $7 \equiv 2 \pmod 5$ mais $2 \neq 7$).

### Concepts Connexes

- **Treillis (Lattice)**: Un ensemble partiellement ordonné où toute paire d'éléments admet une borne supérieure (supremum) et une borne inférieure (infimum). $(\mathcal{P}(X), \subseteq)$ est un treillis complet.
- **Ensemble bien ordonné (Well-ordered set)**: Un ensemble totalement ordonné où toute partie non vide admet un plus petit élément. $(\mathbb{N}, \le)$ est l'exemple canonique.
- **Lemme de Zorn**: Un outil puissant (équivalent à l'axiome du choix) qui garantit l'existence d'éléments maximaux dans certains ensembles partiellement ordonnés.
- **Tri topologique**: Un algorithme pour trouver un ordre total compatible avec un ordre partiel donné sur un ensemble fini.

### Applications

- **Planification de tâches**: Les dépendances entre tâches forment une relation d'ordre partiel. Un tri topologique donne un ordre d'exécution valide.
- **Théorie de la calculabilité**: La réduction de Turing entre problèmes de décision est un préordre qui structure les degrés d'indécidabilité.
- **Généalogie**: L'arbre généalogique est structuré par la relation "est un ancêtre de", qui est une relation d'ordre partiel stricte.

---

## Concept 5: Entiers Naturels et Principe de Récurrence

### Prérequis

- Logique propositionnelle.
- Concept 4: Relations d'Ordre.

### Définition

L'ensemble des **entiers naturels** $\mathbb{N} = \{0, 1, 2, \dots\}$ est formellement défini par les axiomes de Peano. Intuitivement, il est caractérisé par la propriété fondamentale suivante:

**Axiome 0.15 (Principe du bon ordre)**. L'ensemble $(\mathbb{N}, \le)$ est **bien ordonné**, c'est-à-dire que toute partie non vide de $\mathbb{N}$ possède un plus petit élément.

Cet axiome est équivalent au principe de récurrence.

### Propriétés Clés

**Proposition 0.16 (Principe de récurrence faible)**. Soit $P(n)$ une proposition dépendant de $n \in \mathbb{N}$. Si les deux conditions suivantes sont vérifiées:

1.  **Initialisation (ou Base)**: $P(0)$ est vraie.
2.  **Hérédité**: Pour tout $n \in \mathbb{N}$, l'implication $P(n) \implies P(n+1)$ est vraie.

Alors $P(n)$ est vraie pour tout $n \in \mathbb{N}$.

*Démonstration (par l'absurde, en utilisant le bon ordre)*.

Soit $E = \{n \in \mathbb{N} : P(n) \text{ est fausse}\}$. Supposons, pour contradiction, que $E \neq \emptyset$. Par le principe du bon ordre, $E$ admet un plus petit élément, notons-le $n_0$.

- Par l'hypothèse d'initialisation (i), $P(0)$ est vraie, donc $0 \notin E$. Par conséquent, $n_0 > 0$.
- Puisque $n_0 > 0$, l'entier $n_0 - 1$ appartient à $\mathbb{N}$.
- Comme $n_0$ est le *plus petit* élément de $E$, $n_0 - 1 \notin E$. Ceci signifie que $P(n_0-1)$ est vraie.
- Par l'hypothèse d'hérédité (ii) appliquée à $n = n_0 - 1$, on a $P(n_0-1) \implies P(n_0)$. Puisque $P(n_0-1)$ est vraie, $P(n_0)$ doit être vraie.
- Mais $n_0 \in E$, ce qui signifie que $P(n_0)$ est fausse. C'est une contradiction.
- L'hypothèse initiale ($E \neq \emptyset$) est donc fausse. On conclut que $E = \emptyset$, c'est-à-dire que $P(n)$ est vraie pour tout $n \in \mathbb{N}$.

**Corollaire 0.17 (Principe de récurrence forte)**. Soit $P(n)$ une proposition dépendant de $n \in \mathbb{N}$. Si:

1.  **Initialisation**: $P(0)$ est vraie.
2.  **Hérédité forte**: Pour tout $n \in \mathbb{N}$, l'implication $(\forall k \in \{0, \dots, n\}, P(k)) \implies P(n+1)$ est vraie.

Alors $P(n)$ est vraie pour tout $n \in \mathbb{N}$.

(Ce principe est équivalent au précédent).

### Exemples

**Exemple 1 (Récurrence faible)**

Montrons que pour tout $n \in \mathbb{N}$, $\sum_{k=0}^{n} k = \frac{n(n+1)}{2}$.

Soit $P(n)$ la proposition.

- **Initialisation**: Pour $n=0$, $\sum_{k=0}^{0} k = 0$. Et $\frac{0(0+1)}{2} = 0$. Donc $P(0)$ est vraie.
- **Hérédité**: Supposons que $P(n)$ est vraie pour un certain $n \in \mathbb{N}$ (hypothèse de récurrence, HR). Montrons $P(n+1)$.

$$ \sum_{k=0}^{n+1} k = \left(\sum_{k=0}^{n} k\right) + (n+1) \stackrel{\text{HR}}{=} \frac{n(n+1)}{2} + (n+1) $$

$$ = (n+1) \left(\frac{n}{2} + 1\right) = (n+1) \frac{n+2}{2} = \frac{(n+1)(n+2)}{2} $$

Ceci est la formule pour le rang $n+1$. Donc $P(n+1)$ est vraie.

Par le principe de récurrence, $P(n)$ est vraie pour tout $n \in \mathbb{N}$.

**Exemple 2 (Récurrence forte)**

Montrons que tout entier $n \ge 2$ est un produit de nombres premiers (Théorème fondamental de l'arithmétique, partie existence).

Soit $P(n)$ la proposition "$n$ est un produit de nombres premiers".

- **Initialisation**: Pour $n=2$, $2$ est un nombre premier, donc un produit d'un seul nombre premier. $P(2)$ est vraie.
- **Hérédité forte**: Soit $n \ge 2$. Supposons que pour tout entier $k$ tel que $2 \le k \le n$, $P(k)$ est vraie. Montrons $P(n+1)$.
  - Si $n+1$ est premier, alors $P(n+1)$ est vraie.
  - Si $n+1$ est composé, alors il existe $a, b \in \mathbb{N}$ tels que $n+1=ab$ avec $2 \le a \le n$ et $2 \le b \le n$.
  - Par l'hypothèse de récurrence forte, $P(a)$ et $P(b)$ sont vraies. Donc $a$ et $b$ sont des produits de nombres premiers.
  - Par conséquent, $n+1=ab$ est aussi un produit de nombres premiers.

Donc $P(n+1)$ est vraie. Par le principe de récurrence forte, la propriété est vraie pour tout $n \ge 2$.

**Exemple 3 (Initialisation à $k > 0$)**

Montrons que $2^n > n^2$ pour $n \ge 5$.

- **Initialisation**: Pour $n=5$, $2^5 = 32$ et $5^2=25$. $32>25$, donc $P(5)$ est vraie.
- **Hérédité**: Soit $n \ge 5$ tel que $2^n > n^2$.

$2^{n+1} = 2 \cdot 2^n > 2n^2$. Il faut montrer que $2n^2 > (n+1)^2 = n^2 + 2n + 1$.

Ceci est équivalent à $n^2 - 2n - 1 > 0$. Les racines de $x^2-2x-1=0$ sont $1 \pm \sqrt{2}$. Le polynôme est positif pour $n > 1+\sqrt{2} \approx 2.41$. Comme $n \ge 5$, l'inégalité est vérifiée.

Donc $2^{n+1} > (n+1)^2$.

### Contre-exemples

- **Initialisation oubliée**: La proposition "$P(n) \implies P(n+1)$" peut être vraie sans que $P(n)$ le soit. Par exemple, si $P(n)$ est "$n=n+1$", alors $P(n)$ est toujours fausse. L'implication $F \implies F$ est vraie.
- **Hérédité défaillante**: Le paradoxe des chevaux ("tous les chevaux sont de la même couleur"). L'argument d'hérédité pour passer de $n$ à $n+1$ chevaux ne fonctionne pas pour passer de $n=1$ à $n=2$.

### Concepts Connexes

- **Axiomes de Peano**: La construction axiomatique de $\mathbb{N}$.
- **Induction structurelle**: Une généralisation de la récurrence aux structures définies récursivement (arbres, listes, formules logiques).
- **Induction transfinie**: Une généralisation de la récurrence à tout ensemble bien ordonné, y compris les ensembles infinis non dénombrables.

### Applications

- **Preuves d'algorithmes**: Prouver la correction et la terminaison des boucles et des algorithmes récursifs.
- **Combinatoire et théorie des nombres**: De nombreux théorèmes fondamentaux se démontrent par récurrence.
- **Définitions récursives**: La récurrence est le pendant "démonstration" des définitions par récurrence (e.g., la suite de Fibonacci, la factorielle).
