---
id: eb66a94d
type: concepts
order: 10
title: Comptage des applications - concepts (A)
tags:
  - Combinatoire
  - Applications
  - Injections
  - Surjections
  - Stirling
  - Factorielle
course: Graphes et Combinatoire
courseId: 7027276b
chapter: Comptage des applications
chapterId: 586f5519
level: regular
createdAt: '2025-12-16T16:50:01.715Z'
---
# Comptage des applications (A)

---

## Concept 1 : Le nombre d'applications entre ensembles finis

### Prérequis

- Définition d'un ensemble fini et de son cardinal.
- Définition d'une application (domaine, codomaine, image).
- Produit cartésien d'ensembles.

### Définition

Soient $E$ et $F$ deux ensembles finis. On note $\mathcal{F}(E, F)$ ou $F^E$ l'ensemble de toutes les applications de $E$ dans $F$.

Le cardinal (le nombre total) de ces applications est donné par :

$$|\mathcal{F}(E, F)| = |F|^{|E|}$$

Si on pose $|E| = k$ et $|F| = n$, alors le nombre d'applications est $n^k$.

Cette formule repose sur le principe multiplicatif : pour chaque élément de $E$, il y a $|F|$ choix possibles d'image dans $F$.

### Propriétés clés

- **Convention $0^0$** : Si $E = \varnothing$ et $F = \varnothing$, il existe exactement une application (l'application vide), donc $|\mathcal{F}(\varnothing, \varnothing)| = 0^0 = 1$.
- **Ensemble de départ vide** : Pour tout ensemble $F$, $|\mathcal{F}(\varnothing, F)| = |F|^0 = 1$. L'unique application est l'application vide.
- **Ensemble d'arrivée vide** : Si $E \neq \varnothing$ et $F = \varnothing$, alors $|\mathcal{F}(E, \varnothing)| = 0^{|E|} = 0$. Il est impossible d'associer une image à un élément de $E$.
- **Bijection avec les $n$-uplets** : L'ensemble $\mathcal{F}(E, F)$ est en bijection avec le produit cartésien $F \times \dots \times F$ ($|E|$ fois), noté $F^{|E|}$.

### Exemples

**Exemple 1 : Applications binaires**

Soit $E = \{a, b, c\}$ ($|E|=3$) et $F = \{0, 1\}$ ($|F|=2$).

Le nombre d'applications de $E$ dans $F$ est :

$$|F|^{|E|} = 2^3 = 8$$

Une de ces applications est $f$ telle que $f(a)=0, f(b)=1, f(c)=0$.

**Exemple 2 : Lancer de dés**

On lance un dé standard (6 faces) 4 fois de suite. On peut modéliser cela comme une application de l'ensemble des lancers $E=\{1, 2, 3, 4\}$ vers l'ensemble des résultats possibles $F=\{1, 2, 3, 4, 5, 6\}$.

Le nombre total de séquences de résultats possibles est :

$$6^4 = 1296$$

**Exemple 3 : Coloration**

De combien de façons peut-on colorier 5 objets distincts avec 3 couleurs disponibles (Rouge, Vert, Bleu) ?

Ici, $E = \{\text{objets}\}$, $|E|=5$ et $F = \{\text{couleurs}\}$, $|F|=3$.

Chaque objet reçoit une couleur. Le nombre de coloriages est :

$$3^5 = 243$$

### Contre-exemples

- **Confusion base/exposant** : Dans l'Exemple 1, le nombre d'applications n'est PAS $3^2 = 9$. Il est crucial de se rappeler que c'est $|\text{Arrivée}|^{|\text{Départ}|}$. Pensez : "pour chaque élément du départ, j'ai le choix de l'arrivée".
- **Ensembles infinis** : Si $E = \mathbb{N}$ (infini), la formule $|F|^{|E|}$ au sens arithmétique standard ne s'applique pas directement pour donner un entier naturel. Ce concept est restreint aux ensembles finis dans ce chapitre.

### Concepts liés

- **Produit Cartésien** : Le lien direct entre une application et un vecteur de ses images.
- **Fonction caractéristique** : Cas particulier où $F = \{0, 1\}$.

---

## Concept 2 : Cardinal de l'ensemble des parties (Fonction caractéristique)

### Prérequis

- Concept d'application (Concept 1).
- Définition de l'ensemble des parties $\mathcal{P}(E)$.
- Principe de bijection.

### Définition

Soit $E$ un ensemble fini. Le nombre de sous-ensembles (ou parties) de $E$, noté $|\mathcal{P}(E)|$, est :

$$|\mathcal{P}(E)| = 2^{|E|}$$

Pour démontrer cela, on utilise la **fonction caractéristique** (ou indicatrice) d'une partie $A \subseteq E$, notée $f_A$ ou $\mathbf{1}_A$, définie de $E$ vers $\{0, 1\}$ par :

$$f_A(x) = \begin{cases} 1 & \text{si } x \in A \\ 0 & \text{si } x \notin A \end{cases}$$

### Propriétés clés

- **Bijection canonique** : Il existe une bijection naturelle entre l'ensemble des parties $\mathcal{P}(E)$ et l'ensemble des applications $\mathcal{F}(E, \{0, 1\})$.
- **Codage binaire** : Chaque sous-ensemble peut être représenté de manière unique par une suite binaire de longueur $|E|$.
- **Croissance** : Le nombre de parties croît exponentiellement avec la taille de l'ensemble.

### Exemples

**Exemple 1 : Ensemble à 3 éléments**

Soit $E = \{a, b, c\}$. $|E|=3$.

Le nombre de parties est $2^3 = 8$.

Les parties sont : $\varnothing, \{a\}, \{b\}, \{c\}, \{a,b\}, \{a,c\}, \{b,c\}, \{a,b,c\}$.

La fonction caractéristique de $A=\{a, c\}$ correspond au triplet $(1, 0, 1)$ (1 pour $a$, 0 pour $b$, 1 pour $c$).

**Exemple 2 : Interrupteurs**

On dispose d'un panneau avec $n=10$ interrupteurs, chacun pouvant être allumé (ON) ou éteint (OFF). L'ensemble des interrupteurs allumés correspond à une partie de l'ensemble des 10 interrupteurs.

Le nombre de configurations possibles est :

$$2^{10} = 1024$$

**Exemple 3 : Ensemble vide**

Si $E = \varnothing$, alors $|E|=0$.

Le nombre de parties est $2^0 = 1$.

Cette unique partie est l'ensemble vide lui-même : $\mathcal{P}(\varnothing) = \{\varnothing\}$.

### Contre-exemples

- **Nombre de parties de taille fixe** : La formule $2^{|E|}$ compte *toutes* les parties. Elle ne donne pas le nombre de parties ayant exactement $k$ éléments (ceci correspond au coefficient binomial $\binom{n}{k}$).
- **Sous-ensembles ordonnés** : $\mathcal{P}(E)$ contient des ensembles, où l'ordre ne compte pas. $\{a, b\}$ est la même partie que $\{b, a\}$. On ne compte pas deux fois.

### Concepts liés

- **Coefficients binomiaux** : Lien via la somme $\sum_{k=0}^n \binom{n}{k} = 2^n$.
- **Informatique** : Représentation binaire des ensembles (bitmasks).

---

## Concept 3 : Factorielle et Permutations

### Prérequis

- Entiers naturels.
- Produit d'entiers.
- Définition d'une bijection.

### Définition

La **factorielle** d'un entier naturel $n$, notée $n!$, est définie par :

$$n! = \begin{cases} 1 & \text{si } n = 0 \\ 1 \times 2 \times \dots \times n = \prod_{i=1}^n i & \text{si } n \ge 1 \end{cases}$$

Ceci correspond au nombre de **permutations** d'un ensemble fini $E$ de cardinal $n$ (c'est-à-dire le nombre de bijections de $E$ dans $E$).

### Propriétés clés

- **Récurrence** : $n! = n \times (n-1)!$.
- **Croissance très rapide** : La factorielle croît plus vite que n'importe quelle fonction exponentielle $a^n$.
- **Bijections** : Si $|E| = |F| = n$, alors $|\mathcal{F}_{bij}(E, F)| = n!$.
- **Approximation** : Pour $n$ grand, $n! \approx \sqrt{2\pi n} (\frac{n}{e})^n$ (Formule de Stirling).

### Exemples

**Exemple 1 : Anagrammes simples**

Combien de mots (ayant un sens ou non) peut-on former avec les lettres du mot "LOUP" ?

Les 4 lettres sont distinctes. Il s'agit de permuter 4 éléments.

Nombre de mots = $4! = 4 \times 3 \times 2 \times 1 = 24$.

**Exemple 2 : Classement**

Dans une course avec 8 participants, combien y a-t-il d'ordres d'arrivée possibles (sans ex aequo) ?

C'est le nombre de permutations de l'ensemble des 8 coureurs.

$$8! = 40\,320$$

**Exemple 3 : Calcul avec simplification**

Calculons $\frac{10!}{8!}$.

$$\frac{10!}{8!} = \frac{10 \times 9 \times 8 \times \dots \times 1}{8 \times \dots \times 1} = 10 \times 9 = 90$$

### Contre-exemples

- **Lettres répétées** : Le nombre d'anagrammes de "MAMAN" n'est pas $5!$ car les lettres ne sont pas toutes distinctes (il y a répétition de M et A).
- **Somme de factorielles** : $(n+m)! \neq n! + m!$ et $(nm)! \neq n! \times m!$. Par exemple $(2+2)! = 24$ mais $2! + 2! = 4$.

### Concepts liés

- **Groupe symétrique $S_n$** : L'ensemble des permutations muni de la loi de composition.
- **Formule de Stirling** : Estimation asymptotique.

---

## Concept 4 : Le nombre d'injections (Arrangements)

### Prérequis

- Définition d'une injection ($f(x) = f(y) \implies x = y$).
- Factorielle (Concept 3).
- $|E| \le |F|$ pour qu'une injection existe (Principe des tiroirs).

### Définition

Soient $E$ et $F$ deux ensembles finis avec $|E| = k$ et $|F| = n$.

Le nombre d'injections de $E$ dans $F$, noté $|\mathcal{F}_{inj}(E, F)|$, correspond au nombre de **$k$-arrangements** de $F$. Il est donné par :

$$|\mathcal{F}_{inj}(E, F)| = \begin{cases} 

\frac{n!}{(n-k)!} = n(n-1)\dots(n-k+1) & \text{si } k \le n \\

0 & \text{si } k > n

\end{cases}$$

La notation classique pour les arrangements est parfois $A_n^k$.

### Propriétés clés

- **Ordre important** : Dans une injection, l'ordre d'attribution des images compte (contrairement aux combinaisons).
- **Sans répétition** : Une injection attribue des images distinctes à des éléments distincts (on ne "remet" pas l'élément choisi dans l'ensemble des choix possibles).
- **Principe des tiroirs** : Si $k > n$ (plus d'éléments au départ qu'à l'arrivée), il est impossible d'être injectif, le nombre est 0.

### Exemples

**Exemple 1 : Code secret sans répétition**

Combien de codes à 3 chiffres distincts peut-on former avec les chiffres $\{1, 2, 3, 4, 5\}$ ?

Ici $|E|=3$ (positions dans le code) et $|F|=5$ (chiffres disponibles).

$$A_5^3 = \frac{5!}{(5-3)!} = 5 \times 4 \times 3 = 60$$

**Exemple 2 : Podium**

Dans une course de 10 athlètes, combien de podiums (Or, Argent, Bronze) sont possibles ?

Il s'agit de choisir et ordonner 3 athlètes parmi 10.

$$10 \times 9 \times 8 = 720$$

**Exemple 3 : Attribution de tâches**

On doit attribuer une tâche différente à chacun des 4 employés parmi 7 tâches disponibles.

C'est une injection de l'ensemble des employés vers l'ensemble des tâches ($k=4, n=7$).

$$\frac{7!}{3!} = 7 \times 6 \times 5 \times 4 = 840$$

### Contre-exemples

- **Tirage avec remise** : Si on peut réutiliser les chiffres pour le code (ex: 112), ce n'est plus une injection mais une application quelconque ($n^k$).
- **$k > n$** : Essayer de placer 5 pigeons dans 4 trous de manière à ce que chaque pigeon ait son propre trou. Nombre d'injections = 0.

### Concepts liés

- **Factorielle** : Cas particulier où $k=n$.
- **Combinaisons** : Si l'ordre ne comptait pas (juste choisir les images), on diviserait par $k!$.

---

## Concept 5 : Nombres de Stirling de seconde espèce (Partitions)

### Prérequis

- Définition d'une partition d'un ensemble.
- Récurrence.

### Définition

Les **nombres de Stirling de seconde espèce**, notés $S(n, k)$ ou $\left\{ {n \atop k} \right\}$, comptent le nombre de façons de partitionner un ensemble $E$ de cardinal $n$ en $k$ sous-ensembles **non vides** et disjoints dont la réunion est $E$.

Ils vérifient la relation de récurrence pour $2 \le k \le n-1$ :

$$S(n, k) = S(n-1, k-1) + k \cdot S(n-1, k)$$

Avec les conditions aux bords :

- $S(n, 1) = 1$ (tout dans un seul groupe)
- $S(n, n) = 1$ (chaque élément est un groupe)
- $S(n, k) = 0$ si $k > n$

### Propriétés clés

- **Indiscernabilité des groupes** : L'ordre des parties ne compte pas. $\{ \{a,b\}, \{c\} \}$ est la même partition que $\{ \{c\}, \{a,b\} \}$.
- **Construction logique** : La récurrence vient du fait que pour un élément $x$ fixé, soit il est seul dans son groupe ($S(n-1, k-1)$), soit il rejoint un des $k$ groupes existants formés par les autres éléments ($k \cdot S(n-1, k)$).

### Exemples

**Exemple 1 : Partitionner 3 éléments en 2 groupes**

Soit $E=\{a, b, c\}$. On veut $k=2$ groupes.

Les partitions possibles sont : $\{ \{a,b\}, \{c\} \}$, $\{ \{a,c\}, \{b\} \}$, $\{ \{b,c\}, \{a\} \}$.

Donc $S(3, 2) = 3$.

Vérification formule : $S(3, 2) = S(2, 1) + 2 S(2, 2) = 1 + 2(1) = 3$.

**Exemple 2 : Calcul de $S(4, 2)$**

En utilisant la table ou la récurrence :

$S(4, 2) = S(3, 1) + 2 S(3, 2) = 1 + 2(3) = 7$.

Cela correspond à séparer 4 personnes en 2 équipes non vides.

**Exemple 3 : Valeurs spéciales**

$S(n, n-1) = \binom{n}{2}$. Pour $n=4$, $S(4, 3) = \binom{4}{2} = 6$.

Cela correspond à choisir 2 éléments pour être ensemble, les autres étant seuls.

### Contre-exemples

- **Boîtes distinctes** : Si on distribue des objets dans des boîtes *numérotées* ou distinctes, ce n'est pas directement $S(n, k)$ (voir Surjections).
- **Groupes vides autorisés** : $S(n, k)$ impose que les $k$ parties soient non vides. Si des groupes vides sont permis, le problème est différent.

### Concepts liés

- **Nombre de Bell** : Somme totale des partitions pour tout $k$ ($\sum_k S(n, k)$).
- **Surjections** : Lien direct via multiplication par $k!$.

---

## Concept 6 : Le nombre de surjections

### Prérequis

- Définition d'une surjection (tout élément de l'arrivée a au moins un antécédent).
- Nombres de Stirling de seconde espèce.
- Factorielle.

### Définition

Soient $E$ et $F$ deux ensembles finis avec $|E| = n$ et $|F| = k$.

Le nombre de surjections de $E$ dans $F$, noté $|\mathcal{F}_{surj}(E, F)|$, est :

$$|\mathcal{F}_{surj}(E, F)| = \begin{cases} 

k! \cdot S(n, k) & \text{si } n \ge k \\

0 & \text{si } n < k

\end{cases}$$

### Propriétés clés

- **Lien Partition-Surjection** : Une surjection induit une partition de $E$ (les images réciproques des éléments de $F$). Comme les éléments de $F$ sont distincts (discernables), on multiplie le nombre de partitions $S(n, k)$ par le nombre de façons d'étiqueter ces partitions avec les éléments de $F$, soit $k!$.
- **Condition d'existence** : Il faut au moins autant d'éléments au départ qu'à l'arrivée ($n \ge k$) pour couvrir tout l'ensemble d'arrivée.

### Exemples

**Exemple 1 : Distribution de tâches exhaustives**

On a 4 tâches différentes ($E$) à répartir entre 2 employés ($F$) de sorte que personne ne soit inactif (chaque employé reçoit au moins une tâche).

$n=4, k=2$.

Nombre de surjections = $2! \cdot S(4, 2) = 2 \times 7 = 14$.

**Exemple 2 : Fonctions surjectives simples**

Surjections de $\{1, 2, 3\}$ vers $\{A, B\}$.

$n=3, k=2$.

$2! \cdot S(3, 2) = 2 \times 3 = 6$.

Les fonctions sont toutes les applications ($2^3=8$) moins celles qui ne sont pas surjectives (celles où tout va sur A ou tout va sur B, soit 2). $8 - 2 = 6$.

**Exemple 3 : Cas $n=k$**

Si $|E| = |F| = n$, une surjection est nécessairement une bijection.

Formule : $n! \cdot S(n, n) = n! \cdot 1 = n!$. On retrouve bien le nombre de bijections.

### Contre-exemples

- **Injections** : $\mathcal{F}_{surj}(E, F)$ ne compte pas les injections (sauf si $n=k$).
- **Applications quelconques** : On exclut les cas où un élément de l'arrivée n'est pas atteint.
- **$n < k$** : Impossible de couvrir 5 cibles avec 3 flèches. Nombre = 0.

### Concepts liés

- **Principe d'inclusion-exclusion** : Une autre méthode pour calculer le nombre de surjections est la formule : $\sum_{i=0}^k (-1)^i \binom{k}{i} (k-i)^n$.
- **Nombres de Stirling** : Composante essentielle de la formule.

---

## Applications

Les concepts de ce chapitre sont fondamentaux pour :

1.  **Probabilités discrètes** : Calculer la taille de l'univers des possibles (dénominateur) et des événements favorables (numérateur). Par exemple, probabilité d'avoir une main de poker spécifique (combinaisons/arrangements), ou probabilité d'anniversaires partagés (injections).
2.  **Informatique (Complexité)** : Analyser la complexité des algorithmes. Par exemple, le problème du voyageur de commerce implique l'analyse de permutations ($n!$), montrant pourquoi la recherche exhaustive est impossible pour $n$ grand.
3.  **Cryptographie** : L'espace des clés est souvent calculé comme un nombre d'applications ou d'arrangements (ex: clés de longueur $L$ sur un alphabet de taille $A$).
4.  **Allocation de ressources** : Modéliser la distribution de tâches, de données ou de ressources (objets) vers des serveurs ou processeurs (boîtes), avec contraintes de charge minimale (surjections) ou capacité unique (injections).
