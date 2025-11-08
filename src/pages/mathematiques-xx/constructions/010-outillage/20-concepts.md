---
id: 06526dee
type: concepts
order: 20
title: Outillage - concepts (B)
tags:
  - logique
  - ensembles
  - fonctions
  - nombres réels
  - nombres complexes
  - langage mathématique
course: Constructions et raisonnements mathématiques
courseId: d2e11e03
chapter: Outillage
chapterId: 4caba84b
level: pro
createdAt: '2025-10-18T18:17:06.452Z'
---
# Outillage (B)

---

## Concept 1: Calcul Propositionnel et Prédicats du Premier Ordre

### Prérequis

-   Notion intuitive de vérité et de fausseté.
-   Familiarité avec le raisonnement déductif.

### Définition

Une **proposition** est un énoncé mathématique $P$ auquel on peut assigner sans ambiguïté une **valeur de vérité**, soit Vrai (V), soit Faux (F). L'ensemble des valeurs de vérité est $\{V, F\}$ ou $\{1, 0\}$.

Les **connecteurs logiques** sont des opérations sur l'ensemble des propositions. Étant donné des propositions $P$ et $Q$, on définit :

-   La **négation** $\neg P$ (ou non $P$).
-   La **conjonction** $P \land Q$ (ou $P$ et $Q$).
-   La **disjonction** $P \lor Q$ (ou $P$ ou $Q$).
-   L'**implication** $P \Rightarrow Q$ (si $P$ alors $Q$).
-   L'**équivalence** $P \Leftrightarrow Q$ ($P$ si et seulement si $Q$).

Leurs définitions sont données par les tables de vérité suivantes :

| $P$ | $Q$ | $\neg P$ | $P \land Q$ | $P \lor Q$ | $P \Rightarrow Q$ | $P \Leftrightarrow Q$ |

|:---:|:---:|:---:|:---:|:---:|:---:|:---:|

| V | V | F | V | V | V | V |

| V | F | F | F | V | F | F |

| F | V | V | F | V | V | F |

| F | F | V | F | F | V | V |

Un **prédicat** est une proposition $P(x_1, \dots, x_n)$ dont la valeur de vérité dépend de variables $x_1, \dots, x_n$ appartenant à des ensembles (domaines) respectifs $E_1, \dots, E_n$.

Les **quantificateurs** permettent de former des propositions à partir de prédicats :

-   **Quantificateur universel** : $\forall x \in E, P(x)$ est vraie si et seulement si $P(x)$ est vraie pour chaque élément $x$ de $E$.
-   **Quantificateur existentiel** : $\exists x \in E, P(x)$ est vraie si et seulement s'il existe au moins un élément $x$ de $E$ pour lequel $P(x)$ est vraie.

### Propriétés Clés

-   **Double négation** : $\neg(\neg P) \Leftrightarrow P$.
-   **Lois de De Morgan** :
    -   $\neg(P \land Q) \Leftrightarrow (\neg P) \lor (\neg Q)$.
    -   $\neg(P \lor Q) \Leftrightarrow (\neg P) \land (\neg Q)$.
-   **Définition alternative de l'implication** : $(P \Rightarrow Q) \Leftrightarrow (\neg P \lor Q)$.
-   **Négation de l'implication** : $\neg(P \Rightarrow Q) \Leftrightarrow (P \land \neg Q)$.
-   **Contraposition** : L'implication $P \Rightarrow Q$ est équivalente à sa contraposée $\neg Q \Rightarrow \neg P$.
-   **Réciproque** : La réciproque de $P \Rightarrow Q$ est $Q \Rightarrow P$. Il n'y a pas de lien logique entre une implication et sa réciproque.
-   **Double implication** : $(P \Leftrightarrow Q) \Leftrightarrow ((P \Rightarrow Q) \land (Q \Rightarrow P))$.
-   **Négation des quantificateurs** :
    -   $\neg(\forall x \in E, P(x)) \Leftrightarrow (\exists x \in E, \neg P(x))$.
    -   $\neg(\exists x \in E, P(x)) \Leftrightarrow (\forall x \in E, \neg P(x))$.
-   **Permutation des quantificateurs** :
    -   $(\forall x \in E, \forall y \in F, P(x, y)) \Leftrightarrow (\forall y \in F, \forall x \in E, P(x, y))$.
    -   $(\exists x \in E, \exists y \in F, P(x, y)) \Leftrightarrow (\exists y \in F, \exists x \in E, P(x, y))$.
    -   En général, $(\forall x \in E, \exists y \in F, P(x, y)) \not\Leftrightarrow (\exists y \in F, \forall x \in E, P(x, y))$.

### Exemples

**Exemple 1 (Démonstration par contraposition)**

**Proposition.** Soit $n \in \mathbb{Z}$. Si $n^2$ est pair, alors $n$ est pair.

**Hypothèses.** Soit $P$ la proposition "$n^2$ est pair" et $Q$ la proposition "$n$ est pair". L'énoncé est $P \Rightarrow Q$.

**Preuve.** Nous prouvons la contraposée $\neg Q \Rightarrow \neg P$.

L'hypothèse $\neg Q$ signifie que $n$ est impair. Il existe donc un entier $p \in \mathbb{Z}$ tel que $n = 2p+1$.

Alors $n^2 = (2p+1)^2 = 4p^2 + 4p + 1 = 2(2p^2+2p) + 1$.

Puisque $2p^2+2p \in \mathbb{Z}$, $n^2$ est de la forme $2k+1$, donc $n^2$ est impair. Ceci est $\neg P$.

Nous avons prouvé $\neg Q \Rightarrow \neg P$. Par équivalence, $P \Rightarrow Q$ est vraie.

**Exemple 2 (Négation d'un énoncé quantifié)**

**Proposition.** Soit la définition de la continuité d'une fonction $f$ en un point $x_0$ :

$$ P : \forall \varepsilon > 0, \exists \eta > 0, \forall x \in \mathbb{R}, |x-x_0|<\eta \Rightarrow |f(x)-f(x_0)| < \varepsilon $$

La négation de $P$ (la non-continuité de $f$ en $x_0$) est :

$$ \neg P : \exists \varepsilon > 0, \forall \eta > 0, \exists x \in \mathbb{R}, |x-x_0|<\eta \land |f(x)-f(x_0)| \ge \varepsilon $$

**Preuve.** On applique les règles de négation successivement :

$\neg(\forall \varepsilon > 0, \dots) \Leftrightarrow \exists \varepsilon > 0, \neg(\dots)$

$\exists \varepsilon > 0, \neg(\exists \eta > 0, \dots) \Leftrightarrow \exists \varepsilon > 0, \forall \eta > 0, \neg(\dots)$

$\exists \varepsilon > 0, \forall \eta > 0, \neg(\forall x \in \mathbb{R}, \dots) \Leftrightarrow \exists \varepsilon > 0, \forall \eta > 0, \exists x \in \mathbb{R}, \neg(\dots)$

$\exists \varepsilon > 0, \forall \eta > 0, \exists x \in \mathbb{R}, \neg(|x-x_0|<\eta \Rightarrow |f(x)-f(x_0)| < \varepsilon)$

En utilisant $\neg(A \Rightarrow B) \Leftrightarrow (A \land \neg B)$, on obtient la proposition finale.

**Exemple 3 (Ordre des quantificateurs)**

Considérons l'ensemble des entiers naturels $\mathbb{N}$.

La proposition $P_1 : \forall x \in \mathbb{N}, \exists y \in \mathbb{N}, x < y$ est vraie. Pour un $x$ donné, on peut choisir $y=x+1$, et on a bien $x < x+1$. Ici, $y$ dépend de $x$.

La proposition $P_2 : \exists y \in \mathbb{N}, \forall x \in \mathbb{N}, x < y$ est fausse. Elle affirme l'existence d'un entier naturel $y$ qui serait strictement plus grand que *tous* les entiers naturels, y compris lui-même ($x=y$ aboutit à $y < y$, une contradiction). Il n'existe pas de plus grand entier.

### Contre-exemples

**Contre-exemple 1 (Implication vs. Déduction)**

Le symbole $\Rightarrow$ est un connecteur logique, non un marqueur de déduction. Écrire $x=2 \Rightarrow x^2=4 \Rightarrow x^2-4=0$ est un abus de langage. La première proposition "$x=2$" n'implique pas la deuxième "$x^2=4$". Ce sont des propositions, pas des étapes de raisonnement. Un raisonnement correct serait : "Supposons $x=2$. Alors $x^2=4$. Donc $x^2-4=0$". Le syllogisme sous-jacent est : "On sait que $(x=2 \Rightarrow x^2=4)$ est une proposition vraie. On suppose que $x=2$ est vraie. Par *modus ponens*, on en déduit que $x^2=4$ est vraie."

**Contre-exemple 2 (Réciproque)**

Soit $n \in \mathbb{Z}$. L'implication "si $n$ est divisible par 4, alors $n$ est pair" est vraie. Sa réciproque "si $n$ est pair, alors $n$ est divisible par 4" est fausse. Un contre-exemple est $n=2$, qui est pair mais non divisible par 4.

### Concepts Liés

-   **Théorie des modèles** : Étude des relations entre la syntaxe formelle (formules) et la sémantique (structures mathématiques).
-   **Logiques d'ordre supérieur** : Logiques qui autorisent la quantification sur des ensembles de prédicats ou de fonctions.
-   **Logique intuitionniste** : Une logique qui rejette le principe du tiers exclu ($P \lor \neg P$) et la preuve par l'absurde.

## Applications

Le calcul propositionnel et la logique des prédicats sont le fondement du langage mathématique moderne. Ils sont essentiels en informatique théorique pour la spécification et la vérification de programmes, ainsi qu'en intelligence artificielle pour la représentation des connaissances et le raisonnement automatisé.

---

## Concept 2: Théorie Élémentaire des Ensembles

### Prérequis

-   Calcul Propositionnel et Prédicats du Premier Ordre.

### Définition

Un **ensemble** est une collection d'objets distincts, appelés **éléments**. Si $x$ est un élément de l'ensemble $E$, on note $x \in E$.

-   **Inclusion** : Un ensemble $A$ est un **sous-ensemble** (ou une **partie**) de $E$, noté $A \subset E$, si tout élément de $A$ est aussi un élément de $E$.

    $$ A \subset E \Leftrightarrow (\forall x, x \in A \Rightarrow x \in E) $$

-   **Égalité** : Deux ensembles $A$ et $B$ sont égaux, noté $A = B$, s'ils ont exactement les mêmes éléments.

    $$ A=B \Leftrightarrow (A \subset B \land B \subset A) \Leftrightarrow (\forall x, x \in A \Leftrightarrow x \in B) $$

-   **Opérations ensemblistes** : Pour des ensembles $A, B$ inclus dans un ensemble de référence $E$:
    -   **Union** : $A \cup B = \{x \in E \mid x \in A \lor x \in B\}$.
    -   **Intersection** : $A \cap B = \{x \in E \mid x \in A \land x \in B\}$.
    -   **Complémentaire** : $A^c = E \setminus A = \{x \in E \mid x \notin A\}$.

### Propriétés Clés

-   **Distributivité** :
    -   $A \cap (B \cup C) = (A \cap B) \cup (A \cap C)$
    -   $A \cup (B \cap C) = (A \cup B) \cap (A \cup C)$
-   **Lois de De Morgan** :
    -   $(A \cup B)^c = A^c \cap B^c$
    -   $(A \cap B)^c = A^c \cup B^c$
-   **Ensemble vide** : Il existe un unique ensemble sans élément, noté $\emptyset$. Pour tout ensemble $A$, $\emptyset \subset A$.
-   **Ensemble des parties** : Pour un ensemble $A$, l'ensemble de tous ses sous-ensembles est noté $\mathcal{P}(A)$.

### Exemples

**Exemple 1 (Preuve de la distributivité)**

**Proposition.** $A \cap (B \cup C) = (A \cap B) \cup (A \cap C)$.

**Preuve.** On procède par double inclusion.

1.  **Montrons que $A \cap (B \cup C) \subset (A \cap B) \cup (A \cap C)$**.

    Soit $x \in A \cap (B \cup C)$. Par définition, $x \in A$ et $x \in B \cup C$.

    $x \in B \cup C$ signifie que $x \in B$ ou $x \in C$.

    -   Si $x \in B$, alors comme $x \in A$, on a $x \in A \cap B$. Donc $x \in (A \cap B) \cup (A \cap C)$.
    -   Si $x \in C$, alors comme $x \in A$, on a $x \in A \cap C$. Donc $x \in (A \cap B) \cup (A \cap C)$.

    Dans tous les cas, $x \in (A \cap B) \cup (A \cap C)$. L'inclusion est prouvée.

2.  **Montrons que $(A \cap B) \cup (A \cap C) \subset A \cap (B \cup C)$**.

    Soit $x \in (A \cap B) \cup (A \cap C)$. Par définition, $x \in A \cap B$ ou $x \in A \cap C$.

    -   Si $x \in A \cap B$, alors $x \in A$ et $x \in B$. Comme $x \in B$, on a $x \in B \cup C$. Donc $x \in A \cap (B \cup C)$.
    -   Si $x \in A \cap C$, alors $x \in A$ et $x \in C$. Comme $x \in C$, on a $x \in B \cup C$. Donc $x \in A \cap (B \cup C)$.

    Dans tous les cas, $x \in A \cap (B \cup C)$. L'inclusion est prouvée.

L'égalité est donc démontrée.

**Exemple 2 (Caractérisation d'un ensemble à au plus un élément)**

Un ensemble $E$ a au plus un élément si, quels que soient les deux éléments que l'on choisit dans $E$, ils sont en fait identiques. Formellement :

$$ \forall x_1 \in E, \forall x_2 \in E, x_1 = x_2 $$

Cette proposition est vraie si $E$ est vide (les quantificateurs sont sur un domaine vide) ou si $E$ est un singleton $\{a\}$ (car $x_1=a$ et $x_2=a$ impliquent $x_1=x_2$).

**Exemple 3 (Loi de De Morgan ensembliste)**

**Proposition.** $(A \cup B)^c = A^c \cap B^c$.

**Preuve.** On peut raisonner par équivalences logiques. Pour un élément $x$ de l'ensemble de référence :

$x \in (A \cup B)^c \Leftrightarrow \neg(x \in A \cup B)$

$\Leftrightarrow \neg(x \in A \lor x \in B)$

$\Leftrightarrow \neg(x \in A) \land \neg(x \in B)$ (Loi de De Morgan logique)

$\Leftrightarrow x \in A^c \land x \in B^c$

$\Leftrightarrow x \in A^c \cap B^c$.

L'égalité est donc établie.

### Contre-exemples

**Contre-exemple 1**

L'égalité $A \cup B = A \cup C$ n'implique pas $B = C$.

Soit $A=\{1,2\}$, $B=\{3\}$, $C=\{2,3\}$.

Alors $A \cup B = \{1,2,3\}$ et $A \cup C = \{1,2,3\}$.

On a bien $A \cup B = A \cup C$, mais $B \neq C$.

**Contre-exemple 2**

L'appartenance n'est pas transitive. $x \in A$ et $A \in B$ n'implique pas $x \in B$.

Soit $x = 1$, $A = \{1\}$. On a $x \in A$.

Soit $B = \{\{1\}\}$. On a $A \in B$.

Cependant, $x=1$ n'est pas un élément de $B$. Le seul élément de $B$ est l'ensemble $\{1\}$.

### Concepts Liés

-   **Théorie axiomatique des ensembles (ZFC)** : Formalisation rigoureuse de la théorie des ensembles pour éviter les paradoxes (comme le paradoxe de Russell).
-   **Cardinaux et ordinaux** : Théories permettant de mesurer la "taille" des ensembles, y compris infinis.
-   **Algèbre de Boole** : Structure algébrique qui généralise les opérations sur les ensembles et les connecteurs logiques.

## Applications

La théorie des ensembles est le langage fondamental de presque toutes les branches des mathématiques modernes, notamment la topologie, la théorie de la mesure, l'algèbre abstraite et l'analyse.

---

## Concept 3: Fonctions et Applications

### Prérequis

-   Théorie Élémentaire des Ensembles.
-   Produit cartésien d'ensembles.

### Définition

Soient $A$ et $B$ deux ensembles. Une **fonction** (ou **application**) $f$ de $A$ dans $B$, notée $f: A \to B$, est la donnée d'un sous-ensemble $\Gamma_f \subset A \times B$, appelé **graphe** de $f$, satisfaisant la condition :

$$ \forall a \in A, \exists! b \in B, (a, b) \in \Gamma_f $$

L'unique $b$ associé à $a$ est noté $f(a)$ et est appelé l'**image** de $a$ par $f$. $A$ est le **domaine** (ou ensemble de départ) et $B$ est le **codomaine** (ou ensemble d'arrivée). Un élément $a \in A$ tel que $f(a)=b$ est un **antécédent** de $b$.

-   **Injectivité** : $f$ est injective si tout élément du codomaine admet au plus un antécédent.

    $$ \forall a_1, a_2 \in A, (f(a_1) = f(a_2) \Rightarrow a_1 = a_2) $$

-   **Surjectivité** : $f$ est surjective si tout élément du codomaine admet au moins un antécédent.

    $$ \forall b \in B, \exists a \in A, f(a) = b $$

-   **Bijectivité** : $f$ est bijective si elle est à la fois injective et surjective. Tout élément du codomaine admet alors un unique antécédent.

### Propriétés Clés

-   **Composition** : Soient $f: A \to B$ et $g: B \to C$. La composée $g \circ f$ est la fonction de $A$ dans $C$ définie par $(g \circ f)(a) = g(f(a))$.
    -   La composition est associative : $h \circ (g \circ f) = (h \circ g) \circ f$.
    -   La composition n'est pas commutative en général.
-   **Stabilité par composition** :
    -   La composée de deux injections est une injection.
    -   La composée de deux surjections est une surjection.
    -   La composée de deux bijections est une bijection.
-   **Fonction identité** : Pour tout ensemble $A$, $\text{id}_A: A \to A$ définie par $\text{id}_A(a)=a$ est une bijection.
-   **Fonction réciproque** : Une fonction $f: A \to B$ est bijective si et seulement s'il existe une fonction $f^{-1}: B \to A$, appelée sa réciproque, telle que :

    $$ f^{-1} \circ f = \text{id}_A \quad \text{et} \quad f \circ f^{-1} = \text{id}_B $$

### Exemples

**Exemple 1 (Analyse d'injectivité/surjectivité)**

Considérons la fonction $f(x)=x^2$.

-   $f_1: \mathbb{R} \to \mathbb{R}$ n'est ni injective ($f_1(-1)=f_1(1)=1$) ni surjective ($-1$ n'a pas d'antécédent).
-   $f_2: \mathbb{R}_+ \to \mathbb{R}$ est injective ($x_1^2 = x_2^2 \Rightarrow x_1=x_2$ pour $x_1, x_2 \ge 0$) mais non surjective.
-   $f_3: \mathbb{R} \to \mathbb{R}_+$ est surjective (tout $y \ge 0$ a un antécédent $\sqrt{y}$) mais non injective.
-   $f_4: \mathbb{R}_+ \to \mathbb{R}_+$ est bijective. Sa réciproque est $f_4^{-1}(y) = \sqrt{y}$.

**Exemple 2 (Preuve de la stabilité par composition)**

**Proposition.** Si $f: A \to B$ et $g: B \to C$ sont injectives, alors $g \circ f: A \to C$ est injective.

**Hypothèses.** $f$ injective : $\forall a_1, a_2 \in A, f(a_1)=f(a_2) \Rightarrow a_1=a_2$.

$g$ injective : $\forall b_1, b_2 \in B, g(b_1)=g(b_2) \Rightarrow b_1=b_2$.

**Preuve.** Soient $a_1, a_2 \in A$ tels que $(g \circ f)(a_1) = (g \circ f)(a_2)$.

Par définition de la composition, $g(f(a_1)) = g(f(a_2))$.

Posons $b_1 = f(a_1)$ et $b_2 = f(a_2)$. On a $g(b_1) = g(b_2)$.

Comme $g$ est injective, on en déduit $b_1 = b_2$, c'est-à-dire $f(a_1) = f(a_2)$.

Comme $f$ est injective, on en déduit $a_1 = a_2$.

La proposition est démontrée.

**Exemple 3 (Preuve de l'existence de l'inverse)**

La preuve de la Proposition 1 du texte est un excellent exemple.

**Proposition.** $f: A \to B$ est bijective $\Leftrightarrow \exists g: B \to A$ telle que $g \circ f = \text{id}_A$ et $f \circ g = \text{id}_B$.

**Preuve.**

($\Rightarrow$) Supposons $f$ bijective. Pour tout $b \in B$, il existe un unique $a \in A$ tel que $f(a)=b$. On définit $g(b) = a$. Ceci définit une fonction $g: B \to A$. Par construction, $f(g(b)) = f(a) = b$ pour tout $b \in B$, donc $f \circ g = \text{id}_B$. De plus, pour tout $a \in A$, si on pose $b=f(a)$, alors l'unique antécédent de $b$ est $a$, donc $g(b)=a$, ce qui signifie $g(f(a))=a$. Ainsi $g \circ f = \text{id}_A$.

($\Leftarrow$) Supposons qu'un tel $g$ existe.

Injectivité : Soient $a_1, a_2 \in A$ avec $f(a_1)=f(a_2)$. En appliquant $g$, on a $g(f(a_1))=g(f(a_2))$. Comme $g \circ f = \text{id}_A$, il vient $a_1=a_2$. Donc $f$ est injective.

Surjectivité : Soit $b \in B$. Posons $a = g(b) \in A$. Alors $f(a) = f(g(b))$. Comme $f \circ g = \text{id}_B$, on a $f(a) = b$. Donc $b$ a un antécédent. $f$ est surjective.

Finalement, $f$ est bijective.

### Contre-exemples

**Contre-exemple 1 (Relation non fonctionnelle)**

Le cercle unité $C = \{(x,y) \in \mathbb{R}^2 \mid x^2+y^2=1\}$ n'est pas le graphe d'une fonction de $\mathbb{R}$ dans $\mathbb{R}$. Pour $x=0$, il existe deux valeurs de $y$ (1 et -1) telles que $(x,y) \in C$, ce qui viole la condition d'unicité.

**Contre-exemple 2 (Non-commutativité de la composition)**

Soient $f, g: \mathbb{R} \to \mathbb{R}$ avec $f(x) = x+1$ et $g(x) = x^2$.

$(g \circ f)(x) = g(f(x)) = g(x+1) = (x+1)^2 = x^2+2x+1$.

$(f \circ g)(x) = f(g(x)) = f(x^2) = x^2+1$.

Clairement, $g \circ f \neq f \circ g$.

### Concepts Liés

-   **Théorie des catégories** : Étude des structures mathématiques via les "morphismes" (fonctions préservant la structure) et leur composition. Les fonctions sont les morphismes de la catégorie des ensembles.
-   **Homomorphismes** : Fonctions entre structures algébriques (groupes, anneaux, etc.) qui préservent les opérations.
-   **Permutations** : Bijections d'un ensemble fini sur lui-même, formant une structure de groupe pour la composition.

## Applications

Les fonctions sont omniprésentes en mathématiques. Elles modélisent les transformations, les dépendances entre variables (analyse), les opérations (algèbre), les algorithmes (informatique), et les lois physiques.

---

## Concept 4: Structure du Corps Ordonné des Nombres Réels

### Prérequis

-   Théorie Élémentaire des Ensembles.
-   Connaissances de base sur les ensembles de nombres $\mathbb{N}, \mathbb{Z}, \mathbb{Q}$.

### Définition

L'ensemble des nombres réels, noté $\mathbb{R}$, peut être défini axiomatiquement comme l'unique **corps totalement ordonné complet**.

-   **Corps** : $(\mathbb{R}, +, \times)$ est un corps commutatif.
-   **Ordre total** : La relation $\le$ est une relation d'ordre total compatible avec les opérations du corps :
    -   $\forall x,y,z \in \mathbb{R}, x \le y \Rightarrow x+z \le y+z$.
    -   $\forall x,y \in \mathbb{R}, (x \ge 0 \land y \ge 0) \Rightarrow xy \ge 0$.
-   **Complétude (Axiome de la borne supérieure)** : Toute partie non vide et majorée de $\mathbb{R}$ admet une borne supérieure dans $\mathbb{R}$.
-   **Valeur absolue** : Pour $x \in \mathbb{R}$, $|x| = \begin{cases} x & \text{si } x \ge 0 \\ -x & \text{si } x < 0 \end{cases}$. Géométriquement, c'est la distance de $x$ à 0. On a $|x| = \max(x,-x) = \sqrt{x^2}$.

### Propriétés Clés

-   **Propriété d'Archimède** : Pour tout $x \in \mathbb{R}$, il existe $n \in \mathbb{N}$ tel que $n > x$. (Ceci est une conséquence de l'axiome de la borne supérieure).
-   **Partie entière** : Pour tout $x \in \mathbb{R}$, il existe un unique entier $E(x) \in \mathbb{Z}$ tel que $E(x) \le x < E(x)+1$.
-   **Densité de $\mathbb{Q}$ dans $\mathbb{R}$** : Pour tous réels $x < y$, il existe un rationnel $q$ tel que $x < q < y$.
-   **Densité de $\mathbb{R}\setminus\mathbb{Q}$ dans $\mathbb{R}$** : Pour tous réels $x < y$, il existe un irrationnel $z$ tel que $x < z < y$.
-   **Propriétés de la valeur absolue** : Pour tous $x, y \in \mathbb{R}$,
    1.  $|xy| = |x||y|$.
    2.  $|x+y| \le |x|+|y|$ (Inégalité triangulaire).
    3.  $||x|-|y|| \le |x+y|$ (Inégalité triangulaire inversée).

### Exemples

**Exemple 1 (Preuve de l'inégalité triangulaire)**

**Proposition.** $\forall x, y \in \mathbb{R}, |x+y| \le |x|+|y|$.

**Preuve.** On utilise le fait que $|z|^2=z^2$ pour tout $z \in \mathbb{R}$ et que la fonction racine carrée est croissante sur $\mathbb{R}_+$.

$|x+y|^2 = (x+y)^2 = x^2+2xy+y^2$.

On sait que $xy \le |xy| = |x||y|$.

Donc, $x^2+2xy+y^2 \le x^2+2|x||y|+y^2 = |x|^2+2|x||y|+|y|^2 = (|x|+|y|)^2$.

On a donc $|x+y|^2 \le (|x|+|y|)^2$. En prenant la racine carrée des deux membres (qui sont positifs), on obtient $|x+y| \le |x|+|y|$.

**Exemple 2 (Preuve de la densité de $\mathbb{Q}$)**

**Proposition.** $\forall x, y \in \mathbb{R}$ avec $x < y$, $\exists q \in \mathbb{Q}$ tel que $x < q < y$.

**Preuve.**

Puisque $y-x > 0$, par la propriété d'Archimède, il existe un entier $n \in \mathbb{N}^*$ tel que $n > \frac{1}{y-x}$.

Ceci implique $n(y-x) > 1$, soit $ny - nx > 1$.

Il existe donc un entier $m$ entre $nx$ et $ny$. Précisément, soit $m = E(nx)+1$. On a $E(nx) \le nx < E(nx)+1=m$.

De plus, $m-1 = E(nx) \le nx < ny-1$, donc $m < ny$.

On a donc $nx < m < ny$. En divisant par $n > 0$, il vient $x < \frac{m}{n} < y$.

Le nombre $q = \frac{m}{n}$ est un rationnel qui satisfait la condition.

**Exemple 3 (Construction par coupures de Dedekind)**

Un réel peut être défini comme une "coupure" de $\mathbb{Q}$, c'est-à-dire une partition $(A, B)$ de $\mathbb{Q}$ telle que $A \cup B = \mathbb{Q}$, $A \neq \emptyset$, $B \neq \emptyset$, $\forall a \in A, \forall b \in B, a < b$, et $A$ n'a pas de plus grand élément.

Par exemple, le nombre irrationnel $\sqrt{2}$ correspond à la coupure $(A, B)$ où $A = \{q \in \mathbb{Q} \mid q \le 0 \text{ ou } q^2 < 2\}$ et $B = \{q \in \mathbb{Q} \mid q > 0 \text{ et } q^2 \ge 2\}$.

Cette construction permet de définir $\mathbb{R}$ et ses opérations, et de prouver l'axiome de la borne supérieure.

### Contre-exemples

**Contre-exemple 1 ( $\mathbb{Q}$ n'est pas complet)**

L'ensemble $A = \{x \in \mathbb{Q} \mid x^2 < 2\}$ est une partie de $\mathbb{Q}$. Il est non vide ($1 \in A$) et majoré dans $\mathbb{Q}$ (par 2 par exemple). Cependant, $A$ n'admet pas de borne supérieure *dans* $\mathbb{Q}$. La borne supérieure dans $\mathbb{R}$ est $\sqrt{2}$, qui n'est pas rationnel.

**Contre-exemple 2 (Un corps non ordonnable)**

Le corps des nombres complexes $\mathbb{C}$ ne peut pas être muni d'une relation d'ordre total compatible avec sa structure de corps. Si un tel ordre existait, on aurait soit $i>0$, soit $i<0$.

-   Si $i>0$, alors $i^2 = -1 > 0$, une contradiction.
-   Si $i<0$, alors $-i>0$, donc $(-i)^2 = i^2 = -1 > 0$, une autre contradiction.

Comme $i \neq 0$, ceci est impossible.

### Concepts Liés

-   **Espaces métriques** : La valeur absolue $|x-y|$ définit une distance sur $\mathbb{R}$, qui en fait un espace métrique complet.
-   **Topologie de la droite réelle** : Les intervalles ouverts forment la base d'une topologie sur $\mathbb{R}$.
-   **Analyse non standard** : Une approche alternative de l'analyse qui utilise des nombres infinitésimaux et infiniment grands.

## Applications

La structure de $\mathbb{R}$ est le fondement de toute l'analyse réelle, du calcul différentiel et intégral à la théorie de la mesure. Elle est indispensable en physique, en ingénierie et en finance.

---

## Concept 5: Le Corps des Nombres Complexes

### Prérequis

-   Structure du Corps Ordonné des Nombres Réels.
-   Géométrie du plan euclidien $\mathbb{R}^2$.

### Définition

L'ensemble des **nombres complexes**, noté $\mathbb{C}$, est l'ensemble $\mathbb{R}^2$ muni de deux opérations :

-   **Addition** : $(a, b) + (c, d) = (a+c, b+d)$.
-   **Multiplication** : $(a, b) \times (c, d) = (ac-bd, ad+bc)$.

On note $z = a+ib$ le complexe $(a,b)$, où $i=(0,1)$ vérifie $i^2 = (-1,0)=-1$.

-   **Partie réelle** : $\text{Re}(z) = a$.
-   **Partie imaginaire** : $\text{Im}(z) = b$.
-   **Conjugué** : Si $z=a+ib$, son conjugué est $\bar{z} = a-ib$.
-   **Module** : $|z| = \sqrt{a^2+b^2} = \sqrt{\text{Re}(z)^2 + \text{Im}(z)^2}$. C'est la norme euclidienne du vecteur $(a,b)$.

### Propriétés Clés

-   $(\mathbb{C}, +, \times)$ est un corps commutatif.
-   **Lien avec la conjugaison** :
    -   $\text{Re}(z) = \frac{z+\bar{z}}{2}$ et $\text{Im}(z) = \frac{z-\bar{z}}{2i}$.
    -   $\overline{z+w} = \bar{z}+\bar{w}$ et $\overline{zw} = \bar{z}\bar{w}$.
    -   $z\bar{z} = |z|^2$. Cette relation est fondamentale.
-   **Inverse d'un complexe non nul** : Si $z \neq 0$, $z^{-1} = \frac{1}{z} = \frac{\bar{z}}{|z|^2}$.
-   **Propriétés du module** : Pour tous $z, w \in \mathbb{C}$,
    1.  $|zw| = |z||w|$.
    2.  $|z+w| \le |z|+|w|$ (Inégalité triangulaire).
    3.  $||z|-|w|| \le |z+w|$ (Inégalité triangulaire inversée).
-   **Inégalités** : $| \text{Re}(z) | \le |z|$ et $| \text{Im}(z) | \le |z|$.
-   **Cas d'égalité dans l'inégalité triangulaire** : $|z+w|=|z|+|w|$ si et seulement si $z=0$ ou $w=0$ ou $z = \lambda w$ avec $\lambda \in \mathbb{R}_+$. Géométriquement, $z$ et $w$ sont colinéaires et de même sens.

### Exemples

**Exemple 1 (Preuve de la multiplicativité du module)**

**Proposition.** $\forall z, w \in \mathbb{C}, |zw| = |z||w|$.

**Preuve.** On utilise la propriété $|u|^2 = u\bar{u}$.

$|zw|^2 = (zw)\overline{(zw)} = (zw)(\bar{z}\bar{w})$ (car la conjugaison est un morphisme de corps).

Par commutativité et associativité, $|zw|^2 = (z\bar{z})(w\bar{w}) = |z|^2|w|^2$.

Comme les modules sont des réels positifs, on peut prendre la racine carrée pour obtenir $|zw| = |z||w|$.

**Exemple 2 (Preuve de l'inégalité triangulaire complexe)**

**Proposition.** $\forall z, w \in \mathbb{C}, |z+w| \le |z|+|w|$.

**Preuve.**

$|z+w|^2 = (z+w)\overline{(z+w)} = (z+w)(\bar{z}+\bar{w}) = z\bar{z} + z\bar{w} + w\bar{z} + w\bar{w}$.

$|z+w|^2 = |z|^2 + |w|^2 + z\bar{w} + \overline{z\bar{w}}$.

Or, pour tout complexe $u$, $u+\bar{u} = 2\text{Re}(u)$. Donc $z\bar{w} + \overline{z\bar{w}} = 2\text{Re}(z\bar{w})$.

De plus, pour tout complexe $u$, $\text{Re}(u) \le |\text{Re}(u)| \le |u|$.

Donc, $2\text{Re}(z\bar{w}) \le 2|z\bar{w}| = 2|z||\bar{w}| = 2|z||w|$.

Finalement, $|z+w|^2 \le |z|^2 + |w|^2 + 2|z||w| = (|z|+|w|)^2$.

En prenant la racine carrée, on obtient le résultat.

**Exemple 3 (Forme trigonométrique/exponentielle)**

Tout complexe non nul $z$ peut s'écrire $z = |z|(\cos \theta + i \sin \theta) = |z|e^{i\theta}$, où $\theta$ est un **argument** de $z$. Cette forme simplifie la multiplication :

Si $z_1 = r_1 e^{i\theta_1}$ et $z_2 = r_2 e^{i\theta_2}$, alors $z_1z_2 = r_1r_2 e^{i(\theta_1+\theta_2)}$.

Le produit correspond à une rotation-homothétie dans le plan complexe.

### Contre-exemples

**Contre-exemple 1 (Pas d'ordre)**

Comme vu précédemment, il n'existe pas de relation d'ordre total sur $\mathbb{C}$ qui soit compatible avec les opérations du corps. On ne peut pas "comparer" des nombres complexes de manière cohérente avec l'addition et la multiplication. Écrire $z_1 < z_2$ pour des complexes non réels n'a pas de sens standard.

**Contre-exemple 2 (La valeur absolue réelle vs. le module complexe)**

Pour les réels, $|x| \le R \Leftrightarrow -R \le x \le R$. Cette double inégalité n'a pas d'analogue pour les complexes. $|z| \le R$ signifie que $z$ appartient au disque fermé de centre 0 et de rayon $R$ dans le plan complexe. C'est une condition sur la distance à l'origine, pas un encadrement entre deux valeurs.

### Concepts Liés

-   **Théorème fondamental de l'algèbre** : Tout polynôme non constant à coefficients dans $\mathbb{C}$ a au moins une racine dans $\mathbb{C}$. On dit que $\mathbb{C}$ est un corps **algébriquement clos**.
-   **Analyse complexe** : Étude des fonctions de variable complexe, en particulier les fonctions holomorphes (dérivables au sens complexe).
-   **Quaternions ($\mathbb{H}$)** : Une extension de $\mathbb{C}$ à quatre dimensions où la multiplication n'est plus commutative.

## Applications

Les nombres complexes sont fondamentaux en physique (mécanique quantique, électromagnétisme, traitement du signal), en ingénierie (analyse de circuits, automatique) et en mathématiques (géométrie, théorie des nombres, systèmes dynamiques - fractales de Mandelbrot et Julia).
