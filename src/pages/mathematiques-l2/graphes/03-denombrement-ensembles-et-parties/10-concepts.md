---
id: d39cfc20
type: concepts
order: 10
title: Dénombrement d’ensembles et parties - concepts (A)
tags:
  - combinatoire
  - dénombrement
  - coefficients binomiaux
  - ensembles
  - formule du binôme
  - coefficients multinomiaux
course: Graphes et Combinatoire
courseId: 7027276b
chapter: Dénombrement d’ensembles et parties
chapterId: 1c5df22e
level: regular
createdAt: '2025-12-16T16:58:51.096Z'
---
# Dénombrement d’ensembles et parties (A)

---

## Concept 1: Le Coefficient Binomial

### Prerequisites

- **Théorie des ensembles** : Notion d'ensemble fini, de sous-ensemble (partie), de cardinalité.
- **Principe de bijection** : Savoir que deux ensembles en bijection ont le même cardinal.
- **Ensemble des parties** : La notation $\mathcal{P}(E)$ désignant l'ensemble de toutes les parties de $E$.

### Definition

Soit $E$ un ensemble fini de cardinal $n$ (c'est-à-dire contenant $n$ éléments).

Le **coefficient binomial**, noté $\binom{n}{k}$ (on lit "$k$ parmi $n$"), est défini comme le nombre de parties de $E$ ayant exactement $k$ éléments.

Formellement, si on note $\mathcal{P}_k(E)$ l'ensemble des parties de $E$ de cardinal $k$, alors :

$$

\binom{n}{k} = |\mathcal{P}_k(E)|

$$

Autrement dit, $\binom{n}{k}$ compte le nombre de façons de choisir $k$ objets distincts parmi $n$, **sans tenir compte de l'ordre** et **sans répétition**.

### Key Properties

- **Symétrie** : Choisir les $k$ éléments que l'on garde revient à choisir les $n-k$ éléments que l'on rejette.

  $$

  \binom{n}{k} = \binom{n}{n-k}

  $$

- **Conditions aux limites** :
  - Il n'y a qu'une seule façon de choisir 0 élément (l'ensemble vide) : $\binom{n}{0} = 1$.
  - Il n'y a qu'une seule façon de choisir tous les éléments (l'ensemble $E$ lui-même) : $\binom{n}{n} = 1$.
  - Si $k > n$, il est impossible de choisir $k$ éléments distincts, donc $\binom{n}{k} = 0$.
- **Somme totale** : La somme de tous les coefficients binomiaux pour un $n$ donné est égale au nombre total de parties de $E$.

  $$

  \sum_{k=0}^n \binom{n}{k} = 2^n

  $$

### Examples

**Exemple 1 : Choix d'une équipe**

Un professeur doit choisir 2 délégués parmi un groupe de 4 élèves $\{A, B, C, D\}$. L'ordre de sélection ne compte pas (être choisi premier ou deuxième revient au même rôle).

Les paires possibles sont : $\{A,B\}, \{A,C\}, \{A,D\}, \{B,C\}, \{B,D\}, \{C,D\}$.

Il y a 6 possibilités. Donc :

$$

\binom{4}{2} = 6

$$

**Exemple 2 : Parties d'un ensemble à 3 éléments**

Soit $E = \{1, 2, 3\}$. Cherchons $\binom{3}{1}$.

Les sous-ensembles de taille 1 sont $\{1\}, \{2\}, \{3\}$.

$$

\binom{3}{1} = 3

$$

Par symétrie, le nombre de sous-ensembles de taille 2 est aussi 3 : $\{1,2\}, \{1,3\}, \{2,3\}$. Donc $\binom{3}{2} = \binom{3}{1} = 3$.

**Exemple 3 : Cas impossible**

Combien de façons y a-t-il de choisir 5 cartes distinctes dans une main qui n'en contient que 3 ?

C'est impossible. Mathématiquement :

$$

\binom{3}{5} = 0

$$

### Counter-examples

- **L'ordre compte (Arrangement)** : Si on choisit un président et un trésorier parmi 4 personnes, l'ordre compte (A puis B est différent de B puis A). Ce n'est **pas** $\binom{4}{2}$, mais un arrangement (qui vaudrait $4 \times 3 = 12$).
- **Avec répétition** : Si on tire des boules d'une urne en les remettant à chaque fois, on peut choisir le même élément plusieurs fois. Ce n'est pas un coefficient binomial classique (voir Multi-ensembles).

### Related Concepts

- **Arrangements** : Sélections ordonnées.
- **Principe de Pascal** : Relation de récurrence entre les coefficients (voir Concept 2).

## Applications

- **Jeux de hasard** : Calculer la probabilité d'obtenir une main spécifique au poker (ex: un Full) nécessite de compter les combinaisons de cartes.
- **Loterie** : Calculer le nombre de grilles possibles au Loto.

---

## Concept 2: Calcul des Coefficients Binomiaux (Pascal et Factorielle)

### Prerequisites

- **Concept 1** : Définition du coefficient binomial.
- **Factorielle** : La notation $n! = n \times (n-1) \times \dots \times 1$.

### Definition

Il existe deux méthodes principales pour calculer la valeur numérique de $\binom{n}{k}$.

1.  **Formule de la Factorielle** : Pour $0 \leq k \leq n$ :

    $$

    \binom{n}{k} = \frac{n!}{k!(n-k)!} = \frac{n(n-1)\cdots(n-k+1)}{k!}

    $$

    Cette formule relie les combinaisons aux arrangements (numérateur) en divisant par les permutations des $k$ éléments choisis (dénominateur) pour "oublier" l'ordre.

2.  **Identité de Pascal (Récurrence)** :

    $$

    \binom{n}{k} = \binom{n-1}{k} + \binom{n-1}{k-1}

    $$

    Cette relation permet de construire le **Triangle de Pascal**, où chaque terme est la somme des deux termes situés juste au-dessus de lui.

### Key Properties

- **Triangle de Pascal** : Tableau triangulaire où la ligne $n$ contient les nombres $\binom{n}{0}, \binom{n}{1}, \dots, \binom{n}{n}$.
- **Unimodalité** : Sur une ligne $n$ donnée, les valeurs augmentent jusqu'au milieu ($n/2$) puis redescendent symétriquement.
- **Formule d'absorption** : Utile pour manipuler les sommes et les indices.

  $$

  k\binom{n}{k} = n\binom{n-1}{k-1}

  $$

### Examples

**Exemple 1 : Calcul par factorielle**

Calculons "2 parmi 5" :

$$

\binom{5}{2} = \frac{5!}{2!(5-2)!} = \frac{5 \times 4 \times 3 \times 2 \times 1}{(2 \times 1) \times (3 \times 2 \times 1)} = \frac{120}{2 \times 6} = 10

$$

Ou plus simplement en simplifiant avant de multiplier :

$$

\binom{5}{2} = \frac{5 \times 4}{2 \times 1} = 10

$$

**Exemple 2 : Utilisation de Pascal**

Supposons que l'on connaisse la ligne $n=4$ du triangle de Pascal : $1, 4, 6, 4, 1$.

Pour trouver $\binom{5}{3}$ (qui est sur la ligne 5), on utilise l'identité :

$$

\binom{5}{3} = \binom{4}{3} + \binom{4}{2} = 4 + 6 = 10

$$

**Exemple 3 : Formule d'absorption**

Vérifions $k\binom{n}{k} = n\binom{n-1}{k-1}$ avec $n=5, k=2$.

$$

2 \times \binom{5}{2} = 2 \times 10 = 20

$$

$$

5 \times \binom{4}{1} = 5 \times 4 = 20

$$

L'égalité est vérifiée.

### Counter-examples

- **Division non entière** : $\frac{n!}{k!}$ n'est pas la formule complète. Cela correspond aux arrangements ($k$-uplets ordonnés). Il faut diviser par $(n-k)!$ pour obtenir le coefficient binomial.
- **Factorielle négative** : Appliquer la formule factorielle pour $k > n$ donnerait $(n-k)!$ avec un nombre négatif, ce qui n'est pas défini de cette manière. Dans ce cas, la valeur est simplement 0 par définition combinatoire.

### Related Concepts

- **Triangle de Pascal** : Représentation géométrique.
- **Suite de Fibonacci** : Apparaît dans les diagonales du triangle de Pascal.

## Applications

- **Calcul algébrique** : Développement de polynômes.
- **Informatique** : Algorithmes récursifs pour générer des combinaisons (basés sur l'identité de Pascal).

---

## Concept 3: Le Binôme de Newton

### Prerequisites

- **Concept 1 & 2** : Coefficients binomiaux.
- **Algèbre de base** : Distributivité, puissances ($a^k$).
- **Symbole Somme** : Notation $\sum$.

### Definition

Le **Théorème du Binôme de Newton** donne une formule pour développer la puissance $n$-ième d'une somme de deux termes $(a+b)$.

Pour tout entier naturel $n$ et pour tous éléments $a, b$ d'un anneau commutatif (comme $\mathbb{R}$ ou $\mathbb{C}$), on a :

$$

(a+b)^n = \sum_{k=0}^n \binom{n}{k} a^k b^{n-k}

$$

Cela signifie que le coefficient devant le terme $a^k b^{n-k}$ est exactement le nombre de façons de choisir $k$ fois le terme $a$ (et donc $n-k$ fois le terme $b$) lors du développement du produit de $n$ facteurs $(a+b)$.

### Key Properties

- **Nombre de termes** : Le développement contient $n+1$ termes.
- **Somme des exposants** : Dans chaque terme $a^k b^{n-k}$, la somme des exposants est toujours $k + (n-k) = n$.
- **Symétrie** : Comme $\binom{n}{k} = \binom{n}{n-k}$, les coefficients sont symétriques par rapport au centre du développement.

### Examples

**Exemple 1 : Identité remarquable (n=2)**

Pour $n=2$, la formule donne :

$$

(a+b)^2 = \binom{2}{0}a^0b^2 + \binom{2}{1}a^1b^1 + \binom{2}{2}a^2b^0

$$

$$

(a+b)^2 = 1 \cdot b^2 + 2 \cdot ab + 1 \cdot a^2 = a^2 + 2ab + b^2

$$

**Exemple 2 : Puissance 3**

Pour $n=3$, les coefficients sont la ligne 3 de Pascal (1, 3, 3, 1) :

$$

(x+1)^3 = 1 \cdot x^3 1^0 + 3 \cdot x^2 1^1 + 3 \cdot x^1 1^2 + 1 \cdot x^0 1^3

$$

$$

(x+1)^3 = x^3 + 3x^2 + 3x + 1

$$

**Exemple 3 : Somme des coefficients binomiaux**

Si on pose $a=1$ et $b=1$ dans la formule :

$$

(1+1)^n = \sum_{k=0}^n \binom{n}{k} 1^k 1^{n-k} = \sum_{k=0}^n \binom{n}{k}

$$

D'où l'égalité fondamentale : $2^n = \sum_{k=0}^n \binom{n}{k}$.

### Counter-examples

- **"Rêve de l'étudiant"** : $(a+b)^n \neq a^n + b^n$ pour $n > 1$. Il ne faut pas oublier les termes croisés (les termes "mixtes" avec les coefficients binomiaux).
- **Non-commutativité** : Si $a$ et $b$ sont des matrices qui ne commutent pas ($ab \neq ba$), la formule de Newton ne s'applique pas telle quelle.

### Related Concepts

- **Polynômes** : Les coefficients binomiaux sont les coefficients des polynômes de base.
- **Multinôme de Newton** : Généralisation à $(a_1 + \dots + a_r)^n$.

## Applications

- **Analyse** : Calcul de dérivées d'ordre $n$ (Formule de Leibniz).
- **Probabilités** : Loi binomiale (nombre de succès dans une suite d'épreuves de Bernoulli).

---

## Concept 4: Multi-ensembles (Combinaisons avec répétition)

### Prerequisites

- **Concept 1** : Coefficients binomiaux classiques.
- **Fonctions** : Application d'un ensemble vers $\mathbb{N}$.

### Definition

Un **multi-ensemble** sur un ensemble $E$ est une collection d'éléments de $E$ où les répétitions sont autorisées. L'ordre n'a pas d'importance.

On peut le voir comme une fonction $f: E \to \mathbb{N}$ qui associe à chaque élément sa **multiplicité** (nombre de fois qu'il est choisi).

Le nombre de multi-ensembles de taille $k$ (contenant $k$ éléments au total, comptés avec leur multiplicité) formés à partir d'un ensemble $E$ de cardinal $n$ est noté $\left(\!\binom{n}{k}\!\right)$. Il est donné par la formule :

$$

\left(\!\binom{n}{k}\!\right) = \binom{n+k-1}{k}

$$

### Key Properties

- **Lien avec les équations** : Compter ces multi-ensembles revient à compter le nombre de solutions entières $(x_1, \dots, x_n)$ de l'équation $x_1 + \dots + x_n = k$, où $x_i \geq 0$.
- **Technique des "Balles et Barres"** : La preuve repose sur l'idée de placer $k$ balles (indiscernables) et $n-1$ barres de séparation sur une ligne. Le nombre total de positions est $k + n - 1$.

### Examples

**Exemple 1 : Glace à 3 boules**

Un glacier propose 4 parfums (Vanille, Chocolat, Fraise, Pistache). Combien de coupes de 3 boules peut-on composer ? (On peut prendre 3 fois Chocolat, ou 2 Vanille et 1 Fraise).

Ici $n=4$ (parfums) et $k=3$ (boules).

$$

\text{Nombre} = \binom{4+3-1}{3} = \binom{6}{3} = \frac{6 \times 5 \times 4}{3 \times 2 \times 1} = 20 \text{ combinaisons.}

$$

**Exemple 2 : Équation entière**

Combien de solutions entières positives ou nulles a l'équation $x + y + z = 10$ ?

Cela revient à distribuer 10 unités ($k=10$) dans 3 variables ($n=3$).

$$

\binom{3+10-1}{10} = \binom{12}{10} = \binom{12}{2} = \frac{12 \times 11}{2} = 66 \text{ solutions.}

$$

**Exemple 3 : Multi-ensemble de lettres**

Soit $E = \{a, b\}$. Les multi-ensembles de taille 2 sont :

$\{a, a\}$, $\{a, b\}$, $\{b, b\}$.

Formule : $\binom{2+2-1}{2} = \binom{3}{2} = 3$.

### Counter-examples

- **Combinaison classique** : Si on ne peut pas reprendre le même parfum, on revient à $\binom{n}{k}$. Ici $\binom{4}{3} = 4$. C'est différent de 20.
- **Arrangement avec répétition** : Si l'ordre des boules de glace compte (Vanille-Chocolat est différent de Chocolat-Vanille), le nombre est $n^k = 4^3 = 64$. Ce n'est pas un multi-ensemble.

### Related Concepts

- **Partition d'entiers** : Concept proche mais où l'ordre des variables ne compte pas non plus.
- **Principe des tiroirs** : Utilisé dans des contextes de distribution.

## Applications

- **Physique statistique** : Statistique de Bose-Einstein (particules indiscernables).
- **Distribution de ressources** : Répartir des tâches identiques à des processeurs distincts.

---

## Concept 5: Coefficients Multinomiaux

### Prerequisites

- **Concept 1 & 2** : Coefficients binomiaux et Factorielles.
- **Permutations** : Nombre de façons d'ordonner $n$ éléments ($n!$).

### Definition

Le **coefficient multinomial** généralise le coefficient binomial. Il compte le nombre de façons de partitionner un ensemble de $n$ objets en $r$ groupes étiquetés (distincts) de tailles respectives $k_1, k_2, \dots, k_r$, avec $k_1 + \dots + k_r = n$.

On le note $\binom{n}{k_1, k_2, \dots, k_r}$ et il se calcule par la formule :

$$

\binom{n}{k_1, k_2, \dots, k_r} = \frac{n!}{k_1! k_2! \cdots k_r!}

$$

### Key Properties

- **Lien avec le Binomial** : Si $r=2$, on a deux groupes de taille $k$ et $n-k$.

  $$

  \binom{n}{k, n-k} = \frac{n!}{k!(n-k)!} = \binom{n}{k}

  $$

- **Anagrammes** : C'est le nombre de permutations d'un mot ayant des lettres répétées (où $k_i$ est le nombre d'occurrences de la lettre $i$).
- **Multinôme de Newton** : Permet de développer $(x_1 + \dots + x_r)^n$.

### Examples

**Exemple 1 : Anagrammes de MISSISSIPPI**

Le mot contient $n=11$ lettres au total.

Les fréquences sont : M=1, I=4, S=4, P=2.

Le nombre d'anagrammes distincts est :

$$

\binom{11}{1, 4, 4, 2} = \frac{11!}{1! 4! 4! 2!} = 34\,650

$$

**Exemple 2 : Répartition d'élèves**

Comment répartir 10 élèves dans 3 salles : Salle A (5 places), Salle B (3 places), Salle C (2 places) ?

$$

\frac{10!}{5! 3! 2!} = \frac{3\,628\,800}{120 \times 6 \times 2} = \frac{3\,628\,800}{1440} = 2\,520 \text{ façons.}

$$

**Exemple 3 : Groupes triviaux**

Répartir 3 objets en 3 groupes de 1 objet :

$$

\binom{3}{1, 1, 1} = \frac{3!}{1!1!1!} = 6

$$

Cela correspond simplement aux $3!$ permutations des objets.

### Counter-examples

- **Groupes non étiquetés** : Si les salles A, B et C sont identiques (on veut juste faire des tas de 5, 3 et 2 élèves sans attribuer de salle spécifique), le coefficient multinomial s'applique car les tailles sont différentes. Mais si on voulait faire 2 groupes de 5 élèves (tailles identiques) sans nommer les groupes, il faudrait diviser par $2!$ pour enlever l'ordre des groupes. Le coefficient multinomial suppose que les groupes sont **distincts** (Groupe 1, Groupe 2...).
- **Somme incorrecte** : Si la somme des $k_i$ n'est pas égale à $n$, la définition ne s'applique pas (on ne partitionne pas tout l'ensemble).

### Related Concepts

- **Permutations avec répétition** : Synonyme dans le contexte des anagrammes.
- **Partitions d'ensembles** : Le nombre de Stirling de seconde espèce (où les groupes ne sont pas étiquetés).

## Applications

- **Génétique** : Calculs de probabilités avec plusieurs allèles.
- **Traitement du langage naturel** : Analyse de fréquences de mots.
