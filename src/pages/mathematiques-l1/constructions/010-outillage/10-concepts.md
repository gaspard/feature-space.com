---
id: 189e84aa
type: concepts
order: 10
title: Outillage
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
level: regular
createdAt: '2025-10-18T18:14:04.958Z'
---
# Outillage (A)

---

## Concept 1: Propositions et Connecteurs Logiques

### Prérequis

- Aucune connaissance mathématique formelle n'est requise. Une familiarité avec le raisonnement logique de base est utile.

### Définition

Une **proposition** est un énoncé (une phrase) qui peut être soit vrai (V), soit faux (F), mais pas les deux en même temps. Cette caractéristique (vrai ou faux) est appelée la **valeur de vérité** de la proposition.

Les **connecteurs logiques** sont des opérations qui permettent de combiner une ou plusieurs propositions pour en former une nouvelle. La valeur de vérité de la nouvelle proposition est entièrement déterminée par les valeurs de vérité des propositions initiales. Les connecteurs de base sont :

1.  **Négation (non)** : La négation d'une proposition $P$, notée `non P`, est vraie si $P$ est fausse, et fausse si $P$ est vraie.

    | P | non P |

    |---|---|

    | V | F |

    | F | V |

2.  **Conjonction (et)** : La conjonction de deux propositions $P$ et $Q$, notée `P et Q`, est vraie uniquement si $P$ et $Q$ sont toutes les deux vraies.

    | P | Q | P et Q |

    |---|---|---|

    | V | V | V |

    | V | F | F |

    | F | V | F |

    | F | F | F |

3.  **Disjonction (ou)** : La disjonction de deux propositions $P$ et $Q$, notée `P ou Q`, est vraie si au moins l'une des deux propositions $P$ ou $Q$ est vraie. C'est un "ou" inclusif.

    | P | Q | P ou Q |

    |---|---|---|

    | V | V | V |

    | V | F | V |

    | F | V | V |

    | F | F | F |

### Propriétés Clés

-   **Double négation** : La proposition `non(non P)` a toujours la même valeur de vérité que $P$. C'est le principe qu'une double négation équivaut à une affirmation.
-   **Lois de De Morgan** : Elles expliquent comment nier une conjonction ou une disjonction.
    -   `non(P et Q)` est équivalent à `(non P) ou (non Q)`.
    -   `non(P ou Q)` est équivalent à `(non P) et (non Q)`.
-   **Commutativité** : L'ordre des propositions ne change pas le résultat pour `et` et `ou`.
    -   `P et Q` est équivalent à `Q et P`.
    -   `P ou Q` est équivalent à `Q ou P`.

### Exemples

**Exemple 1**

Soient les propositions $P$ : "Le soleil brille" et $Q$ : "Il fait chaud".

-   `non P` : "Le soleil ne brille pas".
-   `P et Q` : "Le soleil brille et il fait chaud". Cette proposition est vraie seulement les jours où les deux conditions sont réunies.
-   `P ou Q` : "Le soleil brille ou il fait chaud". Cette proposition est vraie s'il fait un temps ensoleillé mais frais, s'il fait chaud mais nuageux, ou s'il fait chaud et ensoleillé. Elle n'est fausse que s'il ne fait ni soleil ni chaud.

**Exemple 2**

Soit $x$ un nombre réel. Considérons les propositions $P$ : "$x > 2$" et $Q$ : "$x < 5$".

-   `P et Q` s'écrit "$x > 2$ et $x < 5$", ce qui correspond à l'intervalle $]2, 5[$. Un nombre $x$ doit vérifier les deux conditions simultanément.
-   `non P` s'écrit "non($x > 2$)", ce qui est équivalent à "$x \leq 2$".
-   En utilisant une loi de De Morgan, `non(P ou Q)` est `(non P) et (non Q)`, ce qui se traduit par "$x \leq 2$ et $x \geq 5$". Aucune valeur de $x$ ne peut vérifier cela, cette proposition est donc toujours fausse.

**Exemple 3**

Soit $n$ un entier. Considérons $P$ : "$n$ est divisible par 2" et $Q$ : "$n$ est divisible par 3".

-   `P et Q` : "$n$ est divisible par 2 et par 3". C'est équivalent à "$n$ est divisible par 6". Pour $n=12$, $P$ et $Q$ sont vraies, donc `P et Q` est vraie. Pour $n=10$, $P$ est vraie mais $Q$ est fausse, donc `P et Q` est fausse.
-   `P ou Q` : "$n$ est divisible par 2 ou par 3". Pour $n=9$, $P$ est fausse mais $Q$ est vraie, donc `P ou Q` est vraie. Pour $n=7$, $P$ et $Q$ sont fausses, donc `P ou Q` est fausse.

### Contre-exemples

1.  **Une question n'est pas une proposition** : "Quel temps fait-il ?" n'a pas de valeur de vérité. On ne peut pas y répondre par "vrai" ou "faux".
2.  **Un ordre n'est pas une proposition** : "Ferme la porte" n'est ni vrai ni faux.
3.  **Un paradoxe** : "Cette phrase est fausse." Si elle est vraie, alors ce qu'elle dit est vrai, donc elle est fausse. Si elle est fausse, alors ce qu'elle dit est faux, donc elle est vraie. Elle ne peut pas se voir attribuer une valeur de vérité V ou F de manière cohérente.

### Concepts Connexes

-   **Implication logique ($P \Rightarrow Q$)** : Un connecteur logique crucial construit à partir de ceux-ci.
-   **Équivalence logique ($P \Leftrightarrow Q$)** : Indique que deux propositions ont la même valeur de vérité.
-   **Théorie des ensembles** : Les opérations d'union, intersection et complémentaire sont les miroirs des connecteurs `ou`, `et`, `non`.

### Applications

-   **Mathématiques** : La logique propositionnelle est le fondement de tous les raisonnements mathématiques.
-   **Informatique** : Les ordinateurs fonctionnent sur la base de la logique binaire (0 et 1, équivalent à Faux et Vrai). Les conditions dans les programmes (`if`, `while`) utilisent des expressions booléennes basées sur ces connecteurs.
-   **Électronique** : La conception de circuits logiques (portes ET, OU, NON) est une application directe de ces concepts.

---

## Concept 2: Implication Logique

### Prérequis

-   [Concept 1: Propositions et Connecteurs Logiques](#concept-1-propositions-et-connecteurs-logiques)

### Définition

L'**implication logique** est une proposition formée à partir de deux autres propositions $P$ et $Q$. On la note $P \Rightarrow Q$ et on la lit "si $P$, alors $Q$", ou "$P$ implique $Q$".

L'hypothèse de l'implication est la proposition $P$ (aussi appelée l'antécédent).

La conclusion de l'implication est la proposition $Q$ (aussi appelée le conséquent).

La proposition $P \Rightarrow Q$ est définie par la table de vérité suivante. Elle est fausse dans un seul cas : lorsque l'hypothèse $P$ est vraie et que la conclusion $Q$ est fausse.

| P | Q | P ⇒ Q |

|---|---|---|

| V | V | V |

| V | F | F |

| F | V | V |

| F | F | V |

Une manière importante de comprendre l'implication est qu'elle ne modélise pas une relation de cause à effet, mais plutôt un "transfert de véracité". L'affirmation "$P \Rightarrow Q$ est vraie" signifie que si jamais $P$ est vraie, alors on est certain que $Q$ est aussi vraie. Si $P$ est fausse, l'implication ne nous dit rien sur $Q$ et reste vraie par défaut. C'est pour cela que "d'une hypothèse fausse, on peut déduire n'importe quoi".

### Propriétés Clés

-   **Non-symétrie** : En général, $P \Rightarrow Q$ n'a pas la même valeur de vérité que $Q \Rightarrow P$.
-   **Expression avec `ou` et `non`** : La proposition $P \Rightarrow Q$ est logiquement équivalente à `(non P) ou Q`. On peut le vérifier en comparant leurs tables de vérité.
-   **Négation de l'implication** : La négation de $P \Rightarrow Q$ est `non( (non P) ou Q )`, qui, par la loi de De Morgan, est équivalente à `P et (non Q)`. Pour prouver que $P \Rightarrow Q$ est fausse, il faut donc trouver un cas où $P$ est vraie ET $Q$ est fausse.

### Exemples

**Exemple 1**

Soit la proposition "S'il pleut ($P$), alors la route est mouillée ($Q$)".

-   Cas 1 : Il pleut (P Vrai) et la route est mouillée (Q Vrai). L'implication $P \Rightarrow Q$ est vraie.
-   Cas 2 : Il pleut (P Vrai) et la route est sèche (Q Faux). C'est le seul cas où l'implication est fausse. Notre affirmation initiale était incorrecte.
-   Cas 3 : Il ne pleut pas (P Faux) et la route est mouillée (Q Vrai) (par exemple, un camion de nettoyage est passé). L'implication reste vraie, car elle ne dit rien sur ce qui se passe quand il ne pleut pas.
-   Cas 4 : Il ne pleut pas (P Faux) et la route est sèche (Q Faux). L'implication est également vraie.

**Exemple 2**

Soit $n$ un entier. Considérons l'implication "Si $n$ est un multiple de 4 ($P$), alors $n$ est pair ($Q$)".

Cette implication est vraie pour n'importe quel entier $n$.

-   Si $n=8$, $P$ est vraie, $Q$ est vraie. $V \Rightarrow V$ est Vrai.
-   Si $n=6$, $P$ est fausse, $Q$ est vraie. $F \Rightarrow V$ est Vrai.
-   Si $n=5$, $P$ est fausse, $Q$ est fausse. $F \Rightarrow F$ est Vrai.
-   Il n'existe aucun entier $n$ qui soit un multiple de 4 ($P$ Vrai) sans être pair ($Q$ Faux). Le cas $V \Rightarrow F$ ne se produit jamais.

**Exemple 3**

Soit $x$ un nombre réel. "Si $x = -5$ ($P$), alors $x^2 = 25$ ($Q$)".

Cette implication est vraie.

L'hypothèse $P$ n'est vraie que pour une seule valeur, $x=-5$. Pour cette valeur, la conclusion $Q$ ("$(-5)^2 = 25$") est également vraie. On est dans le cas $V \Rightarrow V$.

Pour toute autre valeur de $x$ (par exemple $x=3$), l'hypothèse $P$ est fausse. L'implication est donc automatiquement vraie, que la conclusion $Q$ soit vraie (comme pour $x=5$) ou fausse (comme pour $x=3$).

### Contre-exemples

1.  **Confusion avec "donc"** : Le symbole `⇒` ne signifie pas "donc". "Donc" est utilisé pour marquer une étape dans un raisonnement déductif. On écrit "On sait que $P$ est vraie, et on sait que $P \Rightarrow Q$ est vraie, **donc** $Q$ est vraie". Le symbole `⇒` est un connecteur qui forme une nouvelle proposition, pas une marque de déduction.
2.  **Confusion avec la causalité** : "Si la Lune est en fromage ($P$), alors $1+1=2$ ($Q$)". En mathématiques, cette implication est vraie. L'hypothèse $P$ est fausse, donc l'implication est vraie, peu importe la conclusion. Il n'y a bien sûr aucun lien de cause à effet entre les deux.

### Concepts Connexes

-   **Contraposée ($(\text{non } Q) \Rightarrow (\text{non } P)$)** : Une proposition logiquement équivalente à $P \Rightarrow Q$.
-   **Réciproque ($Q \Rightarrow P$)** : Une proposition distincte qui n'a pas forcément la même valeur de vérité.
-   **Équivalence ($P \Leftrightarrow Q$)** : Lorsque $P \Rightarrow Q$ et sa réciproque $Q \Rightarrow P$ sont toutes les deux vraies.

### Applications

-   **Théorèmes mathématiques** : La quasi-totalité des théorèmes s'énoncent sous la forme d'une implication : "Si [Hypothèses], alors [Conclusion]".
-   **Raisonnement déductif (Modus Ponens)** : Si on sait que $P$ est vraie et que $P \Rightarrow Q$ est vraie, on peut en déduire que $Q$ est vraie. C'est la base de la démonstration directe.
-   **Logique de programmation** : Les structures conditionnelles (`if-then`) sont une application directe de l'implication.

---

## Concept 3: Contraposée, Réciproque et Équivalence

### Prérequis

-   [Concept 1: Propositions et Connecteurs Logiques](#concept-1-propositions-et-connecteurs-logiques)
-   [Concept 2: Implication Logique](#concept-2-implication-logique)

### Définition

À partir d'une implication $P \Rightarrow Q$, on peut former trois autres propositions importantes :

1.  La **réciproque** : C'est l'implication $Q \Rightarrow P$. On inverse le rôle de l'hypothèse et de la conclusion.
2.  La **contraposée** : C'est l'implication $(\text{non } Q) \Rightarrow (\text{non } P)$. On nie la conclusion et l'hypothèse, et on les inverse.
3.  L'**équivalence** : C'est la proposition $P \Leftrightarrow Q$ (lue "$P$ si et seulement si $Q$"). Elle est vraie lorsque $P$ et $Q$ ont la même valeur de vérité.

| P | Q | Réciproque (Q ⇒ P) | Contraposée ((non Q) ⇒ (non P)) | Équivalence (P ⇔ Q) |

|---|---|---|---|---|

| V | V | V | V | V |

| V | F | V | F | F |

| F | V | F | V | F |

| F | F | V | V | V |

### Propriétés Clés

-   **Implication et Contraposée** : Une implication et sa contraposée sont **logiquement équivalentes**. Elles ont toujours la même table de vérité. Démontrer l'une revient à démontrer l'autre. C'est la base du *raisonnement par contraposition*.
-   **Implication et Réciproque** : Une implication et sa réciproque sont **indépendantes**. La vérité de l'une n'entraîne pas la vérité de l'autre.
-   **Équivalence et Double Implication** : La proposition $P \Leftrightarrow Q$ est logiquement équivalente à $(P \Rightarrow Q) \text{ et } (Q \Rightarrow P)$. Pour démontrer une équivalence, on doit donc démontrer une implication et sa réciproque. C'est la base du *raisonnement par double implication*.

### Exemples

**Exemple 1 (Implication, Réciproque, Contraposée)**

Soit l'implication de base : "Si $x$ est un carré ($P$), alors $x$ est un rectangle ($Q$)".

C'est une implication vraie.

-   **Réciproque** : "Si $x$ est un rectangle, alors $x$ est un carré". C'est faux (un rectangle de 2x3 n'est pas un carré).
-   **Contraposée** : "Si $x$ n'est pas un rectangle, alors $x$ n'est pas un carré". C'est vrai. Si une figure n'est pas un rectangle, elle ne peut certainement pas être un carré (qui est un type particulier de rectangle).

**Exemple 2 (Raisonnement par contraposition)**

On veut montrer : "Soit $n$ un entier. Si $n^2$ est pair, alors $n$ est pair."

-   $P$ : "$n^2$ est pair".
-   $Q$ : "$n$ est pair".

La démonstration directe est peu commode. Utilisons la contraposée $(\text{non } Q) \Rightarrow (\text{non } P)$.

-   $\text{non } Q$ : "$n$ n'est pas pair", c'est-à-dire "$n$ est impair".
-   $\text{non } P$ : "$n^2$ n'est pas pair", c'est-à-dire "$n^2$ est impair".

On doit donc montrer : "Si $n$ est impair, alors $n^2$ est impair".

*Démonstration* : Si $n$ est impair, il existe un entier $k$ tel que $n = 2k+1$.

Alors $n^2 = (2k+1)^2 = 4k^2 + 4k + 1 = 2(2k^2+2k) + 1$.

Puisque $2k^2+2k$ est un entier, $n^2$ est de la forme $2 \times (\text{entier}) + 1$, donc $n^2$ est impair.

La contraposée est vraie, donc l'implication originale est vraie.

**Exemple 3 (Raisonnement par double implication)**

On veut montrer : "Soit $n$ un entier. $n^2$ est pair si et seulement si $n$ est pair."

C'est une équivalence $P \Leftrightarrow Q$.

-   **Implication (sens direct) $\Rightarrow$** : "Si $n^2$ est pair, alors $n$ est pair". On l'a prouvé dans l'Exemple 2.
-   **Réciproque (sens indirect) $\Leftarrow$** : "Si $n$ est pair, alors $n^2$ est pair".

*Démonstration* : Si $n$ est pair, il existe un entier $k$ tel que $n = 2k$.

Alors $n^2 = (2k)^2 = 4k^2 = 2(2k^2)$.

Puisque $2k^2$ est un entier, $n^2$ est un multiple de 2, donc $n^2$ est pair.

Comme les deux implications sont vraies, l'équivalence est démontrée.

### Contre-exemples

1.  **Implication vraie, réciproque fausse** : Soit $x \in \mathbb{R}$. "Si $x = 2$, alors $x^2 = 4$". L'implication est vraie. La réciproque "Si $x^2 = 4$, alors $x = 2$" est fausse, car $x$ pourrait être $-2$. Il n'y a donc pas d'équivalence.
2.  **Ne pas confondre contraposée et négation** : La négation de $P \Rightarrow Q$ est $P \text{ et (non Q)}$. La contraposée est $(\text{non } Q) \Rightarrow (\text{non } P)$. Ce sont deux propositions très différentes. La première contredit l'implication, la seconde lui est équivalente.

### Concepts Connexes

-   **Théorème** : Un théorème est souvent une implication ($P \Rightarrow Q$). Sa réciproque peut être vraie ou fausse et constituer un autre théorème ou un énoncé faux.
-   **Définition** : En mathématiques, une définition est souvent une équivalence. Par exemple, "Un triangle est dit isocèle *si et seulement si* il a deux côtés de même longueur".

### Applications

-   **Démonstrations mathématiques** : Le raisonnement par contraposition est une technique de preuve standard, souvent plus simple que la preuve directe. Le raisonnement par double implication est la méthode standard pour prouver une équivalence.
-   **Clarification du raisonnement** : Distinguer une implication de sa réciproque permet d'éviter des erreurs logiques courantes (par exemple, "tous les A sont des B" ne signifie pas "tous les B sont des A").

---

## Concept 4: Quantificateurs Universel (∀) et Existentiel (∃)

### Prérequis

-   [Concept 1: Propositions et Connecteurs Logiques](#concept-1-propositions-et-connecteurs-logiques)
-   Notion d'ensemble et d'élément.

### Définition

Les quantificateurs sont des symboles logiques qui permettent d'indiquer la portée d'une affirmation. Ils transforment une proposition qui dépend d'une variable (un *prédicat*) en une proposition qui a une valeur de vérité fixe.

Soit $P(x)$ une proposition concernant un élément $x$ d'un ensemble $E$.

1.  **Quantificateur universel (∀)** : La proposition `∀x ∈ E, P(x)` se lit "Pour tout $x$ appartenant à $E$, $P(x)$ est vraie". Elle est vraie si **tous** les éléments de $E$ sans exception vérifient la propriété $P$.
2.  **Quantificateur existentiel (∃)** : La proposition `∃x ∈ E, P(x)` se lit "Il existe au moins un $x$ appartenant à $E$ tel que $P(x)$ soit vraie". Elle est vraie s'il y a **au moins un** élément de $E$ qui vérifie la propriété $P$.

Le symbole `∃!` signifie "il existe un unique".

### Propriétés Clés

-   **Ordre des quantificateurs** : L'ordre est crucial quand on mélange `∀` et `∃`.
    -   `∀x ∈ E, ∃y ∈ F, P(x, y)` signifie que pour chaque $x$, on peut trouver un $y$ (qui peut dépendre de $x$) tel que $P(x,y)$ soit vraie.
    -   `∃y ∈ F, ∀x ∈ E, P(x, y)` signifie qu'il existe un $y$ unique (le même pour tous) qui fonctionne pour tous les $x$. C'est une condition beaucoup plus forte.
-   **Permutation de quantificateurs identiques** : On peut permuter deux `∀` ou deux `∃` sans changer le sens : `∀x ∀y` est équivalent à `∀y ∀x`.
-   **Négation des quantificateurs** :
    -   La négation de `∀x ∈ E, P(x)` est `∃x ∈ E, non P(x)`. Pour prouver qu'une affirmation universelle est fausse, il suffit de trouver **un seul contre-exemple**.
    -   La négation de `∃x ∈ E, P(x)` est `∀x ∈ E, non P(x)`. Pour prouver qu'il n'existe aucun élément vérifiant une propriété, il faut montrer que **tous** les éléments ne la vérifient pas.

### Exemples

**Exemple 1 (Quantificateur universel)**

La proposition `∀n ∈ ℕ, n ≥ 0` ("Tout entier naturel est positif ou nul") est **vraie**.

La proposition `∀x ∈ ℝ, x^2 > 0` ("Le carré de tout nombre réel est strictement positif") est **fausse**. Pour la réfuter, il suffit de trouver un contre-exemple : pour $x=0$, on a $x^2=0$, qui n'est pas strictement positif. La négation est `∃x ∈ ℝ, non(x^2 > 0)`, c'est-à-dire `∃x ∈ ℝ, x^2 ≤ 0`, ce qui est vrai (pour $x=0$).

**Exemple 2 (Quantificateur existentiel)**

La proposition `∃n ∈ ℤ, n^2 = 9` ("Il existe un entier relatif dont le carré est 9") est **vraie**, car $n=3$ (ou $n=-3$) est une solution.

La proposition `∃x ∈ ℝ, x^2 = -1` ("Il existe un nombre réel dont le carré est -1") est **fausse**. Sa négation est `∀x ∈ ℝ, x^2 ≠ -1`, ce qui est vrai.

**Exemple 3 (Ordre des quantificateurs)**

Considérons les entiers naturels $\mathbb{N}$.

-   `∀x ∈ ℕ, ∃y ∈ ℕ, y > x` ("Pour tout entier $x$, il existe un entier $y$ plus grand que $x$").

    Cette proposition est **vraie**. Si on me donne un $x$, je peux toujours choisir $y = x+1$, qui est bien plus grand que $x$. Le $y$ que je choisis dépend du $x$ donné.

-   `∃y ∈ ℕ, ∀x ∈ ℕ, y > x` ("Il existe un entier $y$ qui est plus grand que tous les entiers $x$").

    Cette proposition est **fausse**. Elle affirmerait l'existence d'un "plus grand entier naturel", ce qui n'est pas le cas. Si un tel $y$ existait, on pourrait considérer $x=y$, et l'inégalité $y > y$ serait fausse.

### Contre-exemples

1.  **Variable non liée** : Une phrase comme "$x > 5$" n'est pas une proposition complète tant qu'on ne sait pas qui est $x$. C'est un prédicat. Les quantificateurs "lient" la variable, donnant un sens à la phrase. `∀x ∈ ℝ, x > 5` est une proposition (fausse), `∃x ∈ ℝ, x > 5` est une proposition (vraie).
2.  **Mauvaise négation** : La négation de "Tous les étudiants ont réussi" (`∀x, R(x)`) n'est pas "Aucun étudiant n'a réussi" (`∀x, non R(x)`). C'est "Au moins un étudiant n'a pas réussi" (`∃x, non R(x)`).

### Concepts Connexes

-   **Logique des prédicats** : Le cadre formel qui étudie les propositions avec des variables et des quantificateurs.
-   **Définitions en Analyse** : Les définitions de limite, continuité, etc., sont des énoncés complexes utilisant plusieurs quantificateurs. Par exemple, la continuité de $f$ en $x_0$ s'écrit : `∀ε > 0, ∃η > 0, ∀x, |x-x_0|<η ⇒ |f(x)-f(x_0)|<ε`.

### Applications

-   **Spécification formelle** : En informatique et en ingénierie, les quantificateurs permettent de spécifier de manière non ambiguë les exigences d'un système.
-   **Bases de données** : Les requêtes dans les bases de données utilisent implicitement la logique des quantificateurs pour sélectionner des données qui vérifient certaines conditions.
-   **Mathématiques** : Indispensables pour énoncer rigoureusement toute définition ou théorème portant sur des ensembles infinis.

---

## Concept 5: Fonctions : Définition, Graphe et Vocabulaire

### Prérequis

-   Notion d'ensemble.
-   [Concept 4: Quantificateurs Universel (∀) et Existentiel (∃)](#concept-4-quantificateurs-universel-et-existentiel)

### Définition

Une **fonction** (ou **application**) $f$ d'un ensemble de départ $A$ vers un ensemble d'arrivée $B$ est un procédé qui, à **chaque** élément $a$ de $A$, associe **un unique** élément $b$ de $B$.

On note cela de plusieurs manières :

-   $f: A \to B$
-   $a \mapsto f(a)$

Vocabulaire essentiel :

-   **Domaine** (ou ensemble de départ) : L'ensemble $A$ de tous les éléments de départ possibles.
-   **Codomaine** (ou ensemble d'arrivée) : L'ensemble $B$ où se trouvent les résultats.
-   **Image** : Si $b=f(a)$, on dit que $b$ est l'image de $a$ par $f$.
-   **Antécédent** : Si $b=f(a)$, on dit que $a$ est un antécédent de $b$ par $f$. Un élément de $B$ peut avoir zéro, un ou plusieurs antécédents.
-   **Graphe** : Le graphe de $f$ est l'ensemble de tous les couples $(a, f(a))$, où $a$ parcourt $A$. C'est un sous-ensemble du produit cartésien $A \times B$. Formellement : $\Gamma_f = \{ (a,b) \in A \times B \mid b=f(a) \}$.

La condition "chaque élément de $A$ a une unique image" peut être formalisée avec les quantificateurs :

$\forall a \in A, \exists! b \in B, b = f(a)$.

### Propriétés Clés

-   **Unicité de l'image** : Un élément du domaine ne peut pas avoir plusieurs images. C'est le "test de la droite verticale" pour les fonctions de $\mathbb{R}$ dans $\mathbb{R}$ : toute droite verticale coupe le graphe d'une fonction en au plus un point.
-   **Définition sur tout le domaine** : La fonction doit être définie pour tous les éléments de l'ensemble de départ $A$. Si une droite verticale d'abscisse $a \in A$ est tracée, elle doit couper le graphe exactement une fois.
-   **L'ensemble d'arrivée est crucial** : Les fonctions $f: \mathbb{R} \to \mathbb{R}$ avec $f(x)=x^2$ et $g: \mathbb{R} \to \mathbb{R}_+$ avec $g(x)=x^2$ sont considérées comme des fonctions différentes car leur codomaine est différent. Cela affecte des propriétés comme la surjectivité.

### Exemples

**Exemple 1**

Soit la fonction $f: \mathbb{Z} \to \mathbb{Z}$ définie par $f(n) = n-2$.

-   Domaine : $\mathbb{Z}$ (tous les entiers).
-   Codomaine : $\mathbb{Z}$.
-   L'image de $5$ est $f(5) = 3$.
-   L'unique antécédent de $10$ est $12$, car $f(12)=10$.

**Exemple 2**

Soit la fonction $g: \mathbb{R} \to \mathbb{R}$ définie par $g(x)=x^2$.

-   Domaine : $\mathbb{R}$.
-   Codomaine : $\mathbb{R}$.
-   L'image de $-3$ est $g(-3) = 9$.
-   Les antécédents de $4$ sont $2$ et $-2$, car $g(2)=4$ et $g(-2)=4$.
-   L'élément $-1$ du codomaine n'a aucun antécédent, car il n'existe pas de réel $x$ tel que $x^2=-1$.

**Exemple 3**

Soit la fonction $h: \{ \text{lundi, mardi, ..., dimanche} \} \to \{ \text{scolaire, week-end} \}$ qui associe à chaque jour son type.

-   $h(\text{lundi}) = \text{scolaire}$.
-   $h(\text{samedi}) = \text{week-end}$.
-   L'image de 'mardi' est 'scolaire'.
-   Les antécédents de 'week-end' sont 'samedi' et 'dimanche'.

### Contre-exemples

1.  **Relation qui n'est pas une fonction (image non unique)** : Le cercle d'équation $x^2+y^2=1$. Pour $x=0$, il y a deux valeurs possibles pour $y$ ($1$ et $-1$). Ce n'est donc pas le graphe d'une fonction de $\mathbb{R}$ dans $\mathbb{R}$. Le "test de la droite verticale" échoue.
2.  **Procédé non défini partout** : Le procédé qui associe à un réel $x$ son inverse $1/x$. Ce n'est pas une fonction de $\mathbb{R} \to \mathbb{R}$ car il n'est pas défini pour $x=0$. Pour en faire une fonction, il faut restreindre le domaine, par exemple $f: \mathbb{R}^* \to \mathbb{R}$ où $\mathbb{R}^*=\mathbb{R} \setminus \{0\}$.

### Concepts Connexes

-   **Injectivité, Surjectivité, Bijectivité** : Des propriétés qui décrivent comment la fonction associe les éléments du domaine à ceux du codomaine.
-   **Composition de fonctions** : Combiner deux fonctions pour en créer une troisième.
-   **Fonction réciproque** : Le "chemin inverse" d'une fonction, qui n'existe que si la fonction est bijective.

### Applications

-   **Modélisation scientifique** : En physique, la position d'un objet peut être modélisée comme une fonction du temps. En économie, le coût de production est une fonction de la quantité produite.
-   **Informatique** : Une fonction en programmation est une implémentation directe du concept mathématique. Elle prend des arguments (du domaine) et retourne une valeur (du codomaine).
-   **Statistiques** : Les distributions de probabilité sont des fonctions qui associent une probabilité à des événements ou des valeurs.

---

## Concept 6: Injectivité, Surjectivité et Bijectivité

### Prérequis

-   [Concept 5: Fonctions : Définition, Graphe et Vocabulaire](#concept-5-fonctions-définition-graphe-et-vocabulaire)

### Définition

Soit une fonction $f: A \to B$. Ces propriétés qualifient la manière dont les éléments de l'ensemble d'arrivée $B$ sont "atteints" par $f$.

1.  **Fonction Injective**

    Une fonction $f$ est dite **injective** (ou est une injection) si deux éléments distincts du domaine ont toujours des images distinctes.

    Hypothèse : Soient $a_1, a_2$ deux éléments de $A$.

    Définition formelle : $f(a_1) = f(a_2) \Rightarrow a_1 = a_2$.

    De manière équivalente (par contraposition) : $a_1 \neq a_2 \Rightarrow f(a_1) \neq f(a_2)$.

    Cela signifie que chaque élément $b \in B$ a **au plus un** antécédent par $f$.

2.  **Fonction Surjective**

    Une fonction $f$ est dite **surjective** (ou est une surjection) si tout élément de l'ensemble d'arrivée est l'image d'au moins un élément du domaine.

    Hypothèse : Soit $b$ un élément de $B$.

    Définition formelle : $\forall b \in B, \exists a \in A, f(a) = b$.

    Cela signifie que chaque élément $b \in B$ a **au moins un** antécédent par $f$.

3.  **Fonction Bijective**

    Une fonction $f$ est dite **bijective** (ou est une bijection) si elle est à la fois injective et surjective.

    Cela signifie que chaque élément $b \in B$ a **un unique** antécédent par $f$. Une bijection établit une correspondance parfaite "un pour un" entre les éléments de $A$ et de $B$.

**Interprétation graphique** (pour les fonctions de $\mathbb{R}$ dans $\mathbb{R}$):

-   **Injective** : Toute droite horizontale coupe le graphe **au plus une fois**.
-   **Surjective** : Toute droite horizontale coupe le graphe **au moins une fois**.
-   **Bijective** : Toute droite horizontale coupe le graphe **exactement une fois**.

### Exemples

**Exemple 1 : $f: \mathbb{R} \to \mathbb{R}, f(x)=2x+1$**

-   **Injective ?** Oui. Supposons $f(a_1)=f(a_2)$, alors $2a_1+1 = 2a_2+1$, ce qui donne $2a_1=2a_2$ et donc $a_1=a_2$.
-   **Surjective ?** Oui. Soit $b \in \mathbb{R}$. On cherche un antécédent $a$ tel que $f(a)=b$. On résout $2a+1=b$, ce qui donne $a = (b-1)/2$. Cet antécédent existe pour tout $b \in \mathbb{R}$.
-   **Conclusion** : $f$ est injective et surjective, donc **bijective**.

**Exemple 2 : $g: \mathbb{R} \to \mathbb{R}, g(x)=x^2$**

-   **Injective ?** Non. $g(-2)=4$ et $g(2)=4$, mais $-2 \neq 2$. Des éléments distincts ont la même image.
-   **Surjective ?** Non. Soit $b=-1 \in \mathbb{R}$. Il n'existe aucun réel $a$ tel que $a^2=-1$. Les nombres négatifs n'ont pas d'antécédent.
-   **Conclusion** : $g$ n'est ni injective, ni surjective.

**Exemple 3 : $h: \mathbb{R} \to \mathbb{R}_+, h(x)=x^2$** (où $\mathbb{R}_+ = [0, +\infty[$)

Ici, nous avons changé l'ensemble d'arrivée par rapport à l'exemple 2.

-   **Injective ?** Non. La raison est la même, $h(-2)=h(2)=4$.
-   **Surjective ?** Oui. Soit $b \in \mathbb{R}_+$. On cherche $a$ tel que $a^2=b$. Comme $b \ge 0$, on peut choisir $a=\sqrt{b}$ (ou $a=-\sqrt{b}$), qui est bien un réel. Donc tout élément du nouvel ensemble d'arrivée a un antécédent.
-   **Conclusion** : $h$ est surjective mais non injective.

**Exemple 4 : $k: \mathbb{R}_+ \to \mathbb{R}_+, k(x)=x^2$**

Ici, nous avons aussi changé l'ensemble de départ.

-   **Injective ?** Oui. Si $k(a_1)=k(a_2)$ avec $a_1, a_2 \in \mathbb{R}_+$, alors $a_1^2=a_2^2$. Comme $a_1$ et $a_2$ sont positifs, cela implique $a_1=a_2$.
-   **Surjective ?** Oui, comme pour $h$.
-   **Conclusion** : $k$ est **bijective**.

### Contre-exemples

1.  **Injective mais pas surjective** : La fonction $f: \mathbb{N} \to \mathbb{N}$ définie par $f(n)=n+1$. Elle est injective (si $n+1=m+1$, alors $n=m$). Mais elle n'est pas surjective car $0 \in \mathbb{N}$ n'a aucun antécédent (il n'y a pas de $n \in \mathbb{N}$ tel que $n+1=0$).
2.  **Surjective mais pas injective** : L'exemple 3 ci-dessus ($h(x)=x^2$ de $\mathbb{R}$ vers $\mathbb{R}_+$) est un parfait contre-exemple.

### Concepts Connexes

-   **Fonction réciproque ($f^{-1}$)** : Une fonction admet une fonction réciproque si et seulement si elle est bijective.
-   **Cardinalité** : Les bijections sont utilisées pour définir quand deux ensembles (même infinis) ont "la même taille". S'il existe une bijection de $A$ vers $B$, on dit que $A$ et $B$ sont équipotents.

### Applications

-   **Cryptographie** : Les algorithmes de chiffrement sont des bijections. Une fonction de chiffrement doit être injective pour qu'il n'y ait pas d'ambiguïté, et surjective sur l'ensemble des messages chiffrés pour que le déchiffrement soit toujours possible. La fonction de déchiffrement est alors sa réciproque.
-   **Algèbre** : Les isomorphismes entre structures algébriques (groupes, espaces vectoriels) sont des bijections qui préservent en plus les opérations.
-   **Dénombrement** : Compter le nombre d'éléments d'un ensemble revient à construire une bijection entre cet ensemble et un ensemble de la forme $\{1, 2, ..., n\}$.

---

## Concept 7: Composition et Réciproque de Fonctions

### Prérequis

-   [Concept 5: Fonctions : Définition, Graphe et Vocabulaire](#concept-5-fonctions-définition-graphe-et-vocabulaire)
-   [Concept 6: Injectivité, Surjectivité et Bijectivité](#concept-6-injectivité-surjectivité-et-bijectivité)

### Définition

1.  **Composition de fonctions**

    Soient deux fonctions $f: A \to B$ et $g: B \to C$. Il est crucial que l'ensemble d'arrivée de $f$ soit le même que l'ensemble de départ de $g$.

    La **composée** de $f$ par $g$, notée $g \circ f$ (lire "g rond f"), est la fonction de $A$ vers $C$ définie par :

    Pour tout $a \in A$, $(g \circ f)(a) = g(f(a))$.

    On applique d'abord $f$ à $a$ pour obtenir un résultat dans $B$, puis on applique $g$ à ce résultat.

2.  **Fonction réciproque**

    Soit une fonction $f: A \to B$. On appelle **fonction réciproque** de $f$, si elle existe, une fonction notée $f^{-1}: B \to A$ qui "défait" l'action de $f$.

    Formellement, $f^{-1}$ est la réciproque de $f$ si elle vérifie les deux conditions :

    -   $f^{-1} \circ f = \text{id}_A$, c'est-à-dire $\forall a \in A, f^{-1}(f(a)) = a$.
    -   $f \circ f^{-1} = \text{id}_B$, c'est-à-dire $\forall b \in B, f(f^{-1}(b)) = b$.

    ($\text{id}_A$ est la fonction identité sur $A$, qui envoie chaque élément sur lui-même).

### Propriétés Clés

-   **Condition d'existence de la réciproque** : Une fonction $f: A \to B$ admet une fonction réciproque **si et seulement si** $f$ est **bijective**.
-   **Non-commutativité de la composition** : En général, $g \circ f \neq f \circ g$. Souvent, $f \circ g$ n'est même pas défini.
-   **Associativité de la composition** : La composition est associative. Pour $f: A \to B, g: B \to C, h: C \to D$, on a $h \circ (g \circ f) = (h \circ g) \circ f$.
-   **Propriétés et composition** :
    -   La composée de deux injections est une injection.
    -   La composée de deux surjections est une surjection.
    -   La composée de deux bijections est une bijection.

### Exemples

**Exemple 1 (Composition)**

Soient $f: \mathbb{R} \to \mathbb{R}$ avec $f(x)=x^2$ et $g: \mathbb{R} \to \mathbb{R}$ avec $g(x)=x+1$.

-   $(g \circ f)(x) = g(f(x)) = g(x^2) = x^2+1$.
-   $(f \circ g)(x) = f(g(x)) = f(x+1) = (x+1)^2 = x^2+2x+1$.

On voit bien que $g \circ f \neq f \circ g$.

**Exemple 2 (Fonction réciproque)**

Soit $f: \mathbb{R} \to \mathbb{R}$ définie par $f(x)=3x-2$. On a vu qu'une telle fonction est bijective.

Pour trouver sa réciproque $f^{-1}$, on pose $y=f(x)$ et on exprime $x$ en fonction de $y$.

$y = 3x - 2$

$y + 2 = 3x$

$x = \frac{y+2}{3}$

La fonction réciproque est donc $f^{-1}: \mathbb{R} \to \mathbb{R}$ définie par $f^{-1}(y) = \frac{y+2}{3}$.

*Vérification* : $(f^{-1} \circ f)(x) = f^{-1}(3x-2) = \frac{(3x-2)+2}{3} = \frac{3x}{3} = x$.

**Exemple 3 (Réciproque d'une fonction non-linéaire)**

Soit $f: [0, +\infty[ \to [0, +\infty[$ définie par $f(x)=x^2$. On a vu que cette fonction est bijective.

On pose $y=x^2$. Pour trouver $x$, on prend la racine carrée. Comme $x \in [0, +\infty[$, on choisit la racine positive : $x=\sqrt{y}$.

La fonction réciproque est $f^{-1}: [0, +\infty[ \to [0, +\infty[$ définie par $f^{-1}(y) = \sqrt{y}$.

### Contre-exemples

1.  **Composition non définie** : Soient $f: \mathbb{R} \to \mathbb{N}$ (par ex. $f(x) = \lfloor |x| \rfloor$) et $g: \mathbb{R}_+^* \to \mathbb{R}$ (par ex. $g(x)=\ln(x)$). La composition $g \circ f$ n'est pas définie car l'ensemble d'arrivée de $f$ ($\mathbb{N}$) n'est pas inclus dans l'ensemble de départ de $g$ ($\mathbb{R}_+^*$), puisque $0 \in \mathbb{N}$ mais $0 \notin \mathbb{R}_+^*$.
2.  **Absence de réciproque pour une fonction non-bijective** : Soit $f: \mathbb{R} \to \mathbb{R}$ avec $f(x)=x^2$. Elle n'est pas bijective. Si on cherchait une réciproque, on aurait $y=x^2 \Rightarrow x=\pm \sqrt{y}$. Pour $y=4$, on ne saurait pas si $f^{-1}(4)$ doit valoir $2$ ou $-2$. L'image ne serait pas unique, ce qui contredit la définition d'une fonction.

### Concepts Connexes

-   **Groupe de transformations** : Un ensemble de bijections d'un ensemble sur lui-même, muni de l'opération de composition, forme une structure de groupe. Par exemple, les rotations et symétries d'un carré.
-   **Isomorphisme** : En algèbre, un isomorphisme est une bijection entre deux structures qui préserve les opérations. Sa réciproque est aussi un isomorphisme.

### Applications

-   **Calcul différentiel** : La formule de dérivation des fonctions composées (théorème de la chaîne) est fondamentale : $(g \circ f)'(x) = g'(f(x)) \times f'(x)$.
-   **Informatique** : Le "piping" dans les systèmes d'exploitation (comme `commande1 | commande2` sous Unix/Linux) est une forme de composition, où la sortie de la première commande devient l'entrée de la seconde.
-   **Changements de coordonnées** : Passer d'un système de coordonnées (cartésien) à un autre (polaire) est une bijection. La transformation inverse est sa fonction réciproque.

---

## Concept 8: Ordre et Valeur Absolue dans ℝ

### Prérequis

-   Une connaissance intuitive des ensembles de nombres $\mathbb{N}, \mathbb{Z}, \mathbb{Q}, \mathbb{R}$.

### Définition

1.  **Relation d'ordre**

    L'ensemble des nombres réels $\mathbb{R}$ est muni d'une relation d'ordre total notée `≤`. Pour deux réels $x$ et $y$, on a toujours soit $x \le y$, soit $y \le x$.

    Cette relation est compatible avec les opérations :

    -   Si $x \le y$, alors $x+a \le y+a$ pour tout $a \in \mathbb{R}$.
    -   Si $x \le y$ et $a > 0$, alors $ax \le ay$.
    -   Si $x \le y$ et $a < 0$, alors $ax \ge ay$ (l'inégalité change de sens).

2.  **Valeur absolue**

    La **valeur absolue** d'un nombre réel $x$, notée $|x|$, représente sa "distance" par rapport à zéro sur la droite réelle.

    Hypothèse : Soit $x \in \mathbb{R}$.

    Définition formelle :

    $$

    |x| =

    \begin{cases}

    x & \text{si } x \ge 0 \\

    -x & \text{si } x < 0

    \end{cases}

    $$

### Propriétés Clés

-   **Positivité** : $|x| \ge 0$ pour tout $x \in \mathbb{R}$. De plus, $|x|=0 \Leftrightarrow x=0$.
-   **Lien avec les intervalles** : Pour $R \ge 0$, l'inégalité $|x| \le R$ est équivalente à $-R \le x \le R$, c'est-à-dire $x \in [-R, R]$.
-   **Propriétés algébriques** : Pour tous $x, y \in \mathbb{R}$:
    -   $|xy| = |x| \cdot |y|$
    -   Si $y \ne 0$, $|\frac{x}{y}| = \frac{|x|}{|y|}$
    -   $\sqrt{x^2} = |x|$ (et non $x$ !)
-   **Inégalité triangulaire** : C'est la propriété la plus importante.

    $$|x+y| \le |x|+|y|$$

    Elle exprime que la longueur d'un côté d'un triangle est inférieure ou égale à la somme des longueurs des deux autres côtés.

-   **Inégalité triangulaire inversée** :

    $$||x|-|y|| \le |x+y| \text{ et } ||x|-|y|| \le |x-y|$$

### Exemples

**Exemple 1 (Résolution d'inéquation)**

Résoudre dans $\mathbb{R}$ l'inéquation $|x-5| \le 3$.

L'inégalité est équivalente à :

$-3 \le x-5 \le 3$

On ajoute 5 à chaque membre :

$-3+5 \le x-5+5 \le 3+5$

$2 \le x \le 8$

L'ensemble des solutions est l'intervalle $[2, 8]$. Géométriquement, ce sont les points dont la distance à 5 est inférieure ou égale à 3.

**Exemple 2 (Utilisation de l'inégalité triangulaire)**

On suppose que $|x-2| < 1$ et $|y-3| < 1$. On veut majorer $|(x+y)-5|$.

On utilise l'inégalité triangulaire en regroupant astucieusement les termes :

$|(x+y)-5| = |(x-2)+(y-3)|$

Par l'inégalité triangulaire, $|(x-2)+(y-3)| \le |x-2| + |y-3|$.

Puisque $|x-2| < 1$ et $|y-3| < 1$, on a :

$|x-2| + |y-3| < 1 + 1 = 2$.

Donc, $|(x+y)-5| < 2$.

**Exemple 3 (Minoration avec l'inégalité triangulaire inversée)**

On suppose que $|x| \le 1$. On veut minorer $|x-3|$.

On utilise la seconde forme de l'inégalité triangulaire inversée : $||a|-|b|| \le |a-b|$.

Avec $a=x$ et $b=3$, on a :

$||x|-|3|| \le |x-3|$

$||x|-3| \le |x-3|$

On sait que $|x| \le 1$, donc $0 \le |x| \le 1$.

Alors $|x|-3$ est dans l'intervalle $[-3, -2]$.

La valeur absolue de ce nombre, $||x|-3|$, est donc dans l'intervalle $[2, 3]$.

En particulier, $||x|-3| \ge 2$.

On conclut donc que $|x-3| \ge 2$.

### Contre-exemples

1.  **Erreur courante avec les carrés** : $a \le b$ n'implique pas $a^2 \le b^2$. Contre-exemple : $-5 \le 2$, mais $(-5)^2 = 25$ et $2^2=4$, donc $25 \not\le 4$. L'implication est vraie seulement si $0 \le a \le b$.
2.  **Inégalité triangulaire stricte** : L'égalité $|x+y|=|x|+|y|$ n'est pas toujours vraie. Pour $x=3$ et $y=-2$, on a $|3+(-2)|=|1|=1$, alors que $|3|+|-2|=3+2=5$. L'égalité n'a lieu que si $x$ et $y$ ont le même signe (ou si l'un est nul).

### Concepts Connexes

-   **Distance** : La valeur $|x-y|$ représente la distance entre les points $x$ et $y$ sur la droite réelle.
-   **Espace métrique** : La notion de distance peut être généralisée à d'autres ensembles, créant un espace métrique. $\mathbb{R}$ avec la distance $d(x,y)=|x-y|$ en est l'exemple le plus fondamental.
-   **Analyse réelle** : Les notions de limite, de continuité et de convergence sont toutes définies à l'aide de la valeur absolue pour mesurer la "proximité".

### Applications

-   **Calcul d'erreur** : En sciences physiques et en ingénierie, si $x$ est une mesure et $x_0$ la valeur vraie, $|x-x_0|$ est l'erreur absolue. Les inégalités permettent de borner cette erreur.
-   **Optimisation** : De nombreux problèmes consistent à minimiser une quantité qui est souvent exprimée comme une valeur absolue ou une norme (sa généralisation).
-   **Statistiques** : L'écart absolu moyen est une mesure de la dispersion d'un ensemble de données.

---

## Concept 9: Nombres Complexes : Forme Algébrique et Opérations

### Prérequis

-   Opérations sur les nombres réels.
-   Résolution d'équations du second degré.

### Définition

On construit l'ensemble des **nombres complexes**, noté $\mathbb{C}$, en ajoutant aux nombres réels $\mathbb{R}$ un nouvel "objet" noté $i$, appelé **unité imaginaire**, qui vérifie par définition $i^2 = -1$.

Un nombre complexe $z$ s'écrit de manière unique sous la **forme algébrique** $z = a+ib$, où $a$ et $b$ sont des nombres réels.

-   $a$ est la **partie réelle** de $z$, notée $\text{Re}(z)$.
-   $b$ est la **partie imaginaire** de $z$, notée $\text{Im}(z)$.

Le **conjugué** d'un nombre complexe $z=a+ib$ est le nombre $\bar{z} = a-ib$.

Les opérations de base (addition et multiplication) sont définies en traitant les nombres complexes comme des polynômes en $i$ et en utilisant la règle $i^2 = -1$.

Soient $z = a+ib$ et $w = c+id$.

-   **Addition** : $z+w = (a+c) + i(b+d)$.
-   **Multiplication** : $z \cdot w = (a+ib)(c+id) = ac + iad + ibc + i^2bd = (ac-bd) + i(ad+bc)$.

### Propriétés Clés

-   **Égalité** : Deux nombres complexes sont égaux si et seulement si leurs parties réelles ET leurs parties imaginaires sont égales : $a+ib = c+id \Leftrightarrow (a=c \text{ et } b=d)$.
-   **Nombres réels et imaginaires purs** :
    -   Un complexe $z$ est un nombre réel si et seulement si $\text{Im}(z)=0$ (équivalent à $z=\bar{z}$).
    -   Un complexe $z$ est dit imaginaire pur si et seulement si $\text{Re}(z)=0$ (équivalent à $z=-\bar{z}$ si $z\ne 0$).
-   **Propriétés de la conjugaison** :
    -   $\overline{z+w} = \bar{z}+\bar{w}$
    -   $\overline{z \cdot w} = \bar{z} \cdot \bar{w}$
    -   $\overline{\bar{z}} = z$
-   **Expressions des parties réelle et imaginaire** :
    -   $\text{Re}(z) = \frac{z+\bar{z}}{2}$
    -   $\text{Im}(z) = \frac{z-\bar{z}}{2i}$

### Exemples

**Exemple 1 (Opérations de base)**

Soit $z_1 = 3+2i$ et $z_2 = 1-4i$.

-   $z_1 + z_2 = (3+1) + i(2-4) = 4 - 2i$.
-   $\bar{z_1} = 3-2i$.
-   $z_1 \cdot z_2 = (3+2i)(1-4i) = 3 \cdot 1 - 3 \cdot 4i + 2i \cdot 1 - 2i \cdot 4i = 3 - 12i + 2i - 8i^2 = 3 - 10i - 8(-1) = 11 - 10i$.

**Exemple 2 (Division)**

Pour calculer le quotient $\frac{z_1}{z_2}$, on multiplie le numérateur et le dénominateur par le conjugué du dénominateur.

$\frac{3+2i}{1-4i} = \frac{(3+2i)(1+4i)}{(1-4i)(1+4i)} = \frac{3+12i+2i+8i^2}{1^2 - (4i)^2} = \frac{3+14i-8}{1 - 16i^2} = \frac{-5+14i}{1+16} = \frac{-5+14i}{17} = -\frac{5}{17} + i\frac{14}{17}$.

**Exemple 3 (Résolution d'équation)**

Résoudre l'équation $z^2 = -9$ dans $\mathbb{C}$.

On peut écrire $z^2 = 9 \cdot (-1) = 9i^2 = (3i)^2$.

L'équation devient $z^2 - (3i)^2 = 0$, soit $(z-3i)(z+3i)=0$.

Les solutions sont $z=3i$ et $z=-3i$.

### Contre-exemples

1.  **Pas de relation d'ordre** : On ne peut pas comparer deux nombres complexes avec `<` ou `>`. L'énoncé "$3+2i > 1-4i$" n'a pas de sens. Il n'existe pas de relation d'ordre total sur $\mathbb{C}$ qui soit compatible avec l'addition et la multiplication.
2.  **La partie imaginaire est un réel** : La partie imaginaire de $z=a+ib$ est le nombre réel $b$, et non pas $ib$. Par exemple, $\text{Im}(3+2i) = 2$.

### Concepts Connexes

-   **Module d'un nombre complexe** : Une mesure de la "taille" ou "longueur" d'un nombre complexe, qui généralise la valeur absolue.
-   **Plan complexe (ou plan d'Argand)** : Une représentation géométrique des nombres complexes où $z=a+ib$ est identifié au point de coordonnées $(a,b)$.
-   **Théorème fondamental de l'algèbre** : Tout polynôme non constant à coefficients complexes admet au moins une racine dans $\mathbb{C}$. C'est la raison d'être principale de l'introduction des nombres complexes.

### Applications

-   **Électricité et Électronique** : En régime sinusoïdal, l'impédance des composants (résistances, bobines, condensateurs) est modélisée par des nombres complexes, ce qui simplifie énormément les calculs de circuits.
-   **Traitement du signal** : La transformée de Fourier, un outil essentiel pour analyser les fréquences contenues dans un signal, utilise intensivement les nombres complexes.
-   **Mécanique quantique** : L'état d'un système quantique est décrit par une fonction d'onde à valeurs complexes.

---

## Concept 10: Module d'un Nombre Complexe

### Prérequis

-   [Concept 9: Nombres Complexes : Forme Algébrique et Opérations](#concept-9-nombres-complexes-forme-algébrique-et-opérations)
-   [Concept 8: Ordre et Valeur Absolue dans ℝ](#concept-8-ordre-et-valeur-absolue-dans-r)

### Définition

Le **module** d'un nombre complexe $z=a+ib$ (avec $a, b \in \mathbb{R}$) est le nombre réel positif, noté $|z|$, défini par :

$$|z| = \sqrt{a^2+b^2}$$

Géométriquement, dans le plan complexe, le module de $z$ est la distance entre l'origine $(0,0)$ et le point d'affixe $z$ de coordonnées $(a,b)$. C'est la longueur du vecteur représentant $z$.

### Propriétés Clés

-   **Lien avec le conjugué** : C'est une propriété fondamentale pour les calculs.

    $$|z|^2 = z \cdot \bar{z}$$

    En effet, $(a+ib)(a-ib) = a^2 - (ib)^2 = a^2 - i^2b^2 = a^2+b^2$.

-   **Positivité et annulation** : $|z| \ge 0$. De plus, $|z|=0 \Leftrightarrow z=0$.
-   **Module d'un produit et d'un quotient** : Pour tous complexes $z, w$ :
    -   $|z \cdot w| = |z| \cdot |w|$
    -   Si $w \ne 0$, $|\frac{z}{w}| = \frac{|z|}{|w|}$
-   **Inégalité triangulaire** : Comme pour la valeur absolue, elle est essentielle. Pour tous complexes $z, w$ :

    $$|z+w| \le |z|+|w|$$

    Géométriquement, la longueur du vecteur somme est inférieure ou égale à la somme des longueurs des vecteurs.

-   **Inégalité triangulaire inversée** :

    $$||z|-|w|| \le |z+w|$$

-   **Lien avec les parties réelle et imaginaire** :
    -   $|\text{Re}(z)| \le |z|$
    -   $|\text{Im}(z)| \le |z|$

### Exemples

**Exemple 1 (Calcul de base)**

Soit $z = 5 - 12i$.

$|z| = \sqrt{5^2 + (-12)^2} = \sqrt{25 + 144} = \sqrt{169} = 13$.

**Exemple 2 (Module d'un quotient)**

Soit $z = \frac{1+i\sqrt{3}}{1-i}$.

On utilise la propriété $|z/w| = |z|/|w|$.

-   $|1+i\sqrt{3}| = \sqrt{1^2 + (\sqrt{3})^2} = \sqrt{1+3} = \sqrt{4} = 2$.
-   $|1-i| = \sqrt{1^2 + (-1)^2} = \sqrt{1+1} = \sqrt{2}$.
-   Donc, $|z| = \frac{2}{\sqrt{2}} = \sqrt{2}$.

C'est beaucoup plus rapide que de calculer d'abord la forme algébrique du quotient.

**Exemple 3 (Application de l'inégalité triangulaire)**

On veut trouver une majoration de $|z+4|$ sachant que $|z|=2$.

D'après l'inégalité triangulaire, $|z+4| \le |z|+|4|$.

Comme $|z|=2$ et $|4|=\sqrt{4^2+0^2}=4$, on obtient :

$|z+4| \le 2+4 = 6$.

Géométriquement, les points d'affixe $z$ tels que $|z|=2$ forment un cercle de centre O et de rayon 2. On cherche la distance maximale entre un point de ce cercle et le point d'affixe -4. Cette distance maximale est bien 6, atteinte pour $z=-2$.

### Contre-exemples

1.  **Le module n'est pas linéaire** : $|z+w| \neq |z|+|w|$ en général.

    Soit $z=1$ et $w=i$. $|z|=1$, $|w|=1$, donc $|z|+|w|=2$.

    Mais $z+w = 1+i$, donc $|z+w|=\sqrt{1^2+1^2}=\sqrt{2}$. On a bien $\sqrt{2} \le 2$.

    L'égalité n'a lieu que si $z$ et $w$ sont sur la même demi-droite issue de l'origine (c'est-à-dire si $z=0$, $w=0$ ou $z/w$ est un réel positif).

2.  **Le carré du module n'est pas le carré du complexe** : $|z|^2 \neq z^2$.

    Soit $z=i$. $|i|=1$, donc $|i|^2=1$.

    Mais $z^2 = i^2 = -1$.

### Concepts Connexes

-   **Argument d'un nombre complexe** : L'angle que fait le vecteur représentant $z$ avec l'axe des réels positifs. Module et argument définissent la **forme trigonométrique/polaire** d'un nombre complexe.
-   **Distance dans le plan complexe** : La distance entre les points d'affixes $z_1$ et $z_2$ est donnée par $|z_1 - z_2|$. L'ensemble des points $z$ tels que $|z-z_0|=R$ est le cercle de centre $z_0$ et de rayon $R$.

### Applications

-   **Physique (Ondes et Vibrations)** : Le module d'un nombre complexe représentant une onde (acoustique, électromagnétique) correspond à son **amplitude**. L'inégalité triangulaire est cruciale pour comprendre les phénomènes d'interférences constructives et destructives.
-   **Analyse Complexe** : La notion de convergence pour les suites et séries de nombres complexes est définie à l'aide du module, de manière très similaire à la convergence dans $\mathbb{R}$ avec la valeur absolue.
-   **Géométrie** : De nombreux problèmes de géométrie euclidienne peuvent être élégamment résolus en utilisant les nombres complexes, où le module joue le rôle de la longueur.
