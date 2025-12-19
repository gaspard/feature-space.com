---
id: 4de6b062
type: exercises
order: 11
title: Chapitre 8 Coloration et graphes bipartis - exercices (A)
tags:
  - Graphes
  - Coloration
  - Nombre chromatique
  - Algorithme glouton
  - Graphes bipartis
createdAt: '2025-12-19T13:11:44.697Z'
level: regular
course: Graphes et Combinatoire
courseId: 7027276b
chapter: Chapitre 8 Coloration et graphes bipartis
chapterId: dc0134f0
---
# Exercices "Chapitre 8 Coloration et graphes bipartis" (A)

---

## Exercice 1

**Problème :** Calcul du nombre chromatique de graphes classiques

Déterminez le nombre chromatique $\chi(G)$ pour chacun des graphes suivants :

1. $K_6$ (le graphe complet à 6 sommets).
2. $C_8$ (le cycle à 8 sommets).
3. $C_{15}$ (le cycle à 15 sommets).
4. $P_{10}$ (le chemin à 10 sommets).

<details>

<summary>Solution</summary>

**Méthode :** Nous utilisons les propriétés connues des classes de graphes classiques (cliques, cycles pairs/impairs, chemins).

**Étapes :**

1.  **Pour $K_6$ (Clique) :**

    Dans un graphe complet, chaque sommet est relié à tous les autres. Par conséquent, chaque sommet doit avoir une couleur distincte.

    Pour $K_n$, on a $\chi(K_n) = n$.

    $$ \chi(K_6) = 6 $$

2.  **Pour $C_8$ (Cycle pair) :**

    La longueur du cycle est $n=8$. Comme 8 est un nombre pair, on peut alterner les couleurs (1, 2, 1, 2...) sans conflit au point de fermeture du cycle.

    Pour $C_n$ avec $n$ pair, $\chi(C_n) = 2$.

    $$ \chi(C_8) = 2 $$

3.  **Pour $C_{15}$ (Cycle impair) :**

    La longueur du cycle est $n=15$. Comme 15 est un nombre impair, l'alternance de 2 couleurs crée un conflit entre le premier et le dernier sommet. Il faut une 3ème couleur pour résoudre ce conflit.

    Pour $C_n$ avec $n$ impair, $\chi(C_n) = 3$.

    $$ \chi(C_{15}) = 3 $$

4.  **Pour $P_{10}$ (Chemin) :**

    Un chemin $P_n$ avec $n \ge 2$ ne nécessite que 2 couleurs (on alterne simplement le long de la ligne).

    $$ \chi(P_{10}) = 2 $$

**Réponse :**

1. $\chi(K_6) = 6$
2. $\chi(C_8) = 2$
3. $\chi(C_{15}) = 3$
4. $\chi(P_{10}) = 2$

</details>

---

## Exercice 2

**Problème :** Nombre chromatique d'un graphe composite

Soit le graphe "Roue" $W_5$, formé par un cycle de longueur 5 ($C_5$) dont les sommets sont $\{v_1, v_2, v_3, v_4, v_5\}$, et un sommet central $c$ relié à tous les sommets du cycle.

Déterminez $\chi(W_5)$ en expliquant le raisonnement.

<details>

<summary>Solution</summary>

**Méthode :** On analyse d'abord le sous-graphe extérieur (le cycle), puis on intègre la contrainte imposée par le sommet central.

**Étapes :**

1.  **Analyse du cycle externe ($C_5$) :**

    Le contour de la roue est un cycle à 5 sommets. Comme 5 est impair, nous savons que $\chi(C_5) = 3$.

    Il faut donc au minimum 3 couleurs (disons Bleu, Rouge, Vert) pour colorier le contour $\{v_1, \dots, v_5\}$.

2.  **Analyse du sommet central ($c$) :**

    Le sommet $c$ est relié à *tous* les sommets du cycle $C_5$.

    Par définition d'une coloration valide, la couleur de $c$ doit être différente de toutes les couleurs utilisées pour ses voisins.

3.  **Synthèse :**

    Les voisins de $c$ (le cycle) utilisent déjà 3 couleurs. Le sommet $c$ ne peut être ni Bleu, ni Rouge, ni Vert. Il faut donc obligatoirement introduire une 4ème couleur (disons Jaune).

    Ainsi, $\chi(W_5) = \chi(C_5) + 1 = 3 + 1 = 4$.

**Réponse :** $\chi(W_5) = 4$

</details>

---

## Exercice 3

**Problème :** Application de l'Algorithme Glouton (Ordre donné)

Soit le graphe $G=(S, A)$ avec $S = \{A, B, C, D, E\}$ et les arêtes :

$A = \{\{A,B\}, \{A,C\}, \{B,C\}, \{B,D\}, \{C,E\}, \{D,E\}\}$.

Appliquez l'algorithme glouton pour colorier ce graphe en traitant les sommets dans l'ordre alphabétique : **A, B, C, D, E**.

Utilisez les couleurs $\{1, 2, 3, \dots\}$.

<details>

<summary>Solution</summary>

**Méthode :** On suit l'algorithme pas à pas. Pour chaque sommet, on lui attribue la plus petite couleur possible qui n'est pas présente chez ses voisins *déjà coloriés*.

**Étapes :**

1.  **Sommet A :**

    Voisins déjà coloriés : aucun.

    $\to$ Couleur **1**.

2.  **Sommet B :**

    Voisins : A, C, D.

    Voisin déjà colorié : A (Couleur 1).

    La couleur 1 est prise. La couleur 2 est libre.

    $\to$ Couleur **2**.

3.  **Sommet C :**

    Voisins : A, B, E.

    Voisins déjà coloriés : A (Couleur 1), B (Couleur 2).

    Les couleurs 1 et 2 sont prises. La couleur 3 est libre.

    $\to$ Couleur **3**.

4.  **Sommet D :**

    Voisins : B, E.

    Voisin déjà colorié : B (Couleur 2).

    Seule la couleur 2 est interdite. La couleur 1 est libre (A n'est pas voisin de D).

    $\to$ Couleur **1**.

5.  **Sommet E :**

    Voisins : C, D.

    Voisins déjà coloriés : C (Couleur 3), D (Couleur 1).

    Les couleurs 1 et 3 sont interdites. La couleur 2 est libre.

    $\to$ Couleur **2**.

**Réponse :**

La coloration obtenue est :

- A : 1
- B : 2
- C : 3
- D : 1
- E : 2

Nombre de couleurs utilisées : 3.

</details>

---

## Exercice 4

**Problème :** Influence de l'ordre dans l'Algorithme Glouton

Considérons le chemin $P_4$ défini par les arêtes : $\{1, 2\}, \{2, 3\}, \{3, 4\}$.

Nous savons que $\chi(P_4) = 2$.

Appliquez l'algorithme glouton avec l'ordre suivant : **1, 4, 2, 3**.

Comparez le résultat avec le nombre chromatique réel.

<details>

<summary>Solution</summary>

**Méthode :** Appliquer l'algorithme strictement dans l'ordre demandé et compter les couleurs utilisées.

**Étapes :**

1.  **Sommet 1 :** Pas de voisin colorié $\to$ **Couleur 1**.
2.  **Sommet 4 :** Voisin $3$ (non colorié). Pas de contrainte $\to$ **Couleur 1**.
3.  **Sommet 2 :**
    *   Voisins : 1 et 3.
    *   Voisins coloriés : 1 (Couleur 1).
    *   Contrainte : $\neq 1$. $\to$ **Couleur 2**.
4.  **Sommet 3 :**
    *   Voisins : 2 et 4.
    *   Voisins coloriés : 2 (Couleur 2) et 4 (Couleur 1).
    *   Contraintes : $\neq 1$ et $\neq 2$.
    *   Il faut une nouvelle couleur $\to$ **Couleur 3**.

**Conclusion :**

Avec l'ordre $1, 4, 2, 3$, l'algorithme glouton utilise **3 couleurs**.

Or, nous savons que $\chi(P_4) = 2$ (couleurs alternées 1-2-1-2).

Cela illustre que l'algorithme glouton n'est pas toujours optimal et dépend de l'ordre des sommets.

**Réponse :** 3 couleurs (ce qui est supérieur à l'optimal $\chi(P_4)=2$).

</details>

---

## Exercice 5

**Problème :** Bornes du nombre chromatique et degrés

Soit un graphe $G$ possédant 8 sommets. Les degrés des sommets sont les suivants :

$d(v_1)=5, d(v_2)=5, d(v_3)=4, d(v_4)=4, d(v_5)=3, d(v_6)=3, d(v_7)=2, d(v_8)=2$.

1.  Quelle est la borne supérieure du nombre chromatique donnée par le degré maximum ?
2.  Est-il possible que ce graphe soit coloriable avec seulement 2 couleurs ? Justifiez.

<details>

<summary>Solution</summary>

**Méthode :** Utiliser la propriété $\chi(G) \le \Delta(G) + 1$ et la définition des graphes bipartis.

**Étapes :**

1.  **Calcul de la borne supérieure :**

    On cherche le degré maximum $\Delta(G)$ dans la liste fournie.

    $\Delta(G) = \max(5, 5, 4, 4, 3, 3, 2, 2) = 5$.

    D'après le cours, l'algorithme glouton garantit une coloration avec au plus $\Delta(G) + 1$ couleurs.

    $$ \chi(G) \le 5 + 1 = 6 $$

2.  **Possibilité d'être 2-coloriable :**

    Un graphe est 2-coloriable s'il est biparti (c'est-à-dire sans cycle impair).

    La liste des degrés seule ne nous donne pas la structure exacte (cycles) du graphe.

    *   Il est possible que le graphe contienne un triangle ($K_3$) ou un autre cycle impair, auquel cas $\chi(G) \ge 3$.
    *   Il est aussi possible que le graphe soit biparti (par exemple, un sous-graphe de $K_{5,3}$), auquel cas $\chi(G) = 2$.

    Rien dans les degrés n'empêche le graphe d'être biparti (il n'y a pas de contrainte immédiate comme un sommet de degré $n-1$ forçant des structures complexes, ou trop d'arêtes pour être biparti).

**Réponse :**

1. La borne supérieure est 6.
2. Oui, c'est possible (mais pas certain sans voir les arêtes), car la borne n'est qu'un maximum, pas une valeur exacte. $\chi(G)$ pourrait valoir 2, 3, 4, 5 ou 6.

</details>

---

## Exercice 6

**Problème :** Identification de graphes bipartis

Les graphes suivants sont-ils bipartis ? Justifiez votre réponse en utilisant la caractérisation par les cycles ou en proposant une partition $X, Y$.

1.  Un cycle $C_5$ (pentagone).
2.  Un cycle $C_6$ (hexagone).
3.  Le graphe formé par un carré ($C_4$) avec une diagonale (arête reliant deux sommets opposés).

<details>

<summary>Solution</summary>

**Méthode :** Un graphe est biparti si et seulement s'il ne contient pas de cycle de longueur impaire.

**Étapes :**

1.  **Pour le $C_5$ :**

    C'est un cycle de longueur 5.

    5 est impair.

    Donc, le graphe n'est **pas** biparti.

2.  **Pour le $C_6$ :**

    C'est un cycle de longueur 6 (pair).

    Il ne contient pas d'autres cycles. Comme le seul cycle est pair, le graphe **est** biparti.

3.  **Pour le carré avec une diagonale :**

    Soit le carré $1-2-3-4-1$. Ajoutons la diagonale $\{1, 3\}$.

    Le graphe contient maintenant les arêtes $\{1,2\}, \{2,3\}$ et la diagonale $\{1,3\}$.

    Ces trois sommets forment un triangle $1-2-3-1$, qui est un cycle de longueur 3 ($C_3$).

    Puisqu'il contient un cycle impair, le graphe n'est **pas** biparti.

**Réponse :**

1. Non (cycle impair).
2. Oui (cycle pair seulement).
3. Non (contient un triangle, donc un cycle impair).

</details>

---

## Exercice 7

**Problème :** Partition d'un graphe biparti

Soit le graphe $G=(S, A)$ défini par :

*   $S = \{1, 2, 3, 4, 5, 6\}$
*   $A = \{\{1,4\}, \{1,5\}, \{2,4\}, \{2,6\}, \{3,5\}, \{3,6\}\}$

1.  Montrez que ce graphe est biparti en trouvant explicitement les deux ensembles de sommets $X$ et $Y$ de la partition.
2.  Dessinez (mentalement ou au brouillon) le graphe pour vérifier que toutes les arêtes vont bien de $X$ vers $Y$.

<details>

<summary>Solution</summary>

**Méthode :** On cherche à séparer les sommets en deux groupes tels qu'aucune arête ne relie deux sommets du même groupe.

**Étapes :**

1.  Observons les arêtes :
    *   1 est relié à 4 et 5.
    *   2 est relié à 4 et 6.
    *   3 est relié à 5 et 6.

2.  Essayons de mettre les sommets $\{1, 2, 3\}$ dans un ensemble $X$.

    Vérifions s'ils sont reliés entre eux :

    *   Y a-t-il une arête $\{1,2\}$ ? Non.
    *   Y a-t-il une arête $\{2,3\}$ ? Non.
    *   Y a-t-il une arête $\{1,3\}$ ? Non.

    Donc $X = \{1, 2, 3\}$ est un stable.

3.  Mettons les sommets restants $\{4, 5, 6\}$ dans l'ensemble $Y$.

    Vérifions s'ils sont reliés entre eux :

    *   Y a-t-il une arête $\{4,5\}$ ? Non.
    *   Y a-t-il une arête $\{5,6\}$ ? Non.
    *   Y a-t-il une arête $\{4,6\}$ ? Non.

    Donc $Y = \{4, 5, 6\}$ est un stable.

4.  Toutes les arêtes de $A$ relient bien un élément de $X$ (1, 2 ou 3) à un élément de $Y$ (4, 5 ou 6).

**Réponse :**

Le graphe est biparti avec la partition :

$X = \{1, 2, 3\}$ et $Y = \{4, 5, 6\}$.

(Note : C'est en fait un sous-graphe de $K_{3,3}$ sans l'arête $\{1,6\}, \{2,5\}, \{3,4\}$).

</details>

---

## Exercice 8

**Problème :** Application réelle (Problème de fréquences)

On doit attribuer des fréquences radio à 5 émetteurs (A, B, C, D, E). Deux émetteurs ne peuvent pas avoir la même fréquence s'ils sont proches géographiquement.

Les incompatibilités (proximités) sont les suivantes :

*   A est proche de B et C.
*   B est proche de A, C et D.
*   C est proche de A, B et E.
*   D est proche de B et E.
*   E est proche de C and D.

Quel est le nombre minimum de fréquences nécessaires ? Modélisez le problème par un graphe et donnez son nombre chromatique.

<details>

<summary>Solution</summary>

**Méthode :** Modéliser chaque émetteur par un sommet et chaque incompatibilité par une arête. Chercher le nombre chromatique $\chi(G)$.

**Étapes :**

1.  **Construction du graphe :**
    *   Sommets : $\{A, B, C, D, E\}$
    *   Arêtes : $\{A,B\}, \{A,C\}, \{B,C\}, \{B,D\}, \{C,E\}, \{D,E\}$

2.  **Analyse du graphe :**

    Regardons les sommets A, B, C.

    A est relié à B.

    B est relié à C.

    C est relié à A.

    Ces trois sommets forment un triangle ($K_3$).

    Il faut donc au moins 3 fréquences pour {A, B, C}. Disons $f(A)=1, f(B)=2, f(C)=3$.

3.  **Coloration du reste (Greedy ou logique) :**
    *   Sommet D : voisin de B (2) et E (?).
    *   Sommet E : voisin de C (3) et D (?).
    *   Essayons de colorier D et E sans ajouter de 4ème couleur.
    *   D est voisin de B(2). D peut être 1 ou 3. Essayons $f(D)=1$.
    *   E est voisin de C(3) et D(1). E peut être 2.
    *   Vérifions les arêtes de E : E relié à C(3) $\to$ OK. E relié à D(1) $\to$ OK.

4.  **Validation :**

    Coloration proposée : A:1, B:2, C:3, D:1, E:2.

    Aucun voisin n'a la même couleur.

    Nous avons utilisé 3 couleurs. Comme le graphe contient un $K_3$, on ne peut pas faire moins de 3.

**Réponse :**

Il faut **3 fréquences** minimum.

$\chi(G) = 3$.

</details>

---

## Exercice 9

**Problème :** Concepts de stables et cliques

Soit $G$ un graphe dont le nombre chromatique est $\chi(G) = 4$.

Répondez par Vrai ou Faux aux affirmations suivantes et justifiez brièvement :

1.  $G$ contient nécessairement une clique de taille 4 ($K_4$).
2.  On peut partitionner les sommets de $G$ en 4 ensembles stables disjoints.
3.  Le degré maximum $\Delta(G)$ est nécessairement au moins 3.

<details>

<summary>Solution</summary>

**Méthode :** Utiliser les définitions et propriétés théoriques du nombre chromatique.

**Étapes :**

1.  **Affirmation 1 : Faux.**

    Bien que $\chi(K_4) = 4$, l'inverse n'est pas vrai. Il existe des graphes avec un nombre chromatique élevé qui ne contiennent pas de grandes cliques (ex: Graphe de Mycielski). La présence d'un $K_4$ force $\chi(G) \ge 4$, mais $\chi(G)=4$ n'implique pas la présence d'un $K_4$.

2.  **Affirmation 2 : Vrai.**

    C'est la définition même de la $k$-coloration. Chaque couleur correspond à un ensemble de sommets qui ne sont pas reliés entre eux (un ensemble stable). Si $\chi(G)=4$, il existe une coloration en 4 couleurs, donc une partition en 4 stables.

3.  **Affirmation 3 : Vrai.**

    Nous savons que $\chi(G) \le \Delta(G) + 1$.

    Si $\chi(G) = 4$, alors $4 \le \Delta(G) + 1$, ce qui implique $\Delta(G) \ge 3$.

    Il doit y avoir au moins un sommet de degré 3 ou plus pour nécessiter 4 couleurs. (En fait, s'il n'y avait que des degrés $\le 2$, le graphe serait une collection de chemins et cycles, donc $\chi \le 3$ sauf cas très particuliers non applicables ici, mais la borne suffit à justifier).

**Réponse :**

1. Faux.
2. Vrai.
3. Vrai.

</details>

---

## Exercice 10

**Problème :** Arbres et bipartition

Un arbre est un graphe connexe sans cycle.

1. Quel est le nombre chromatique d'un arbre ayant au moins une arête ?
2. Un arbre est-il toujours un graphe biparti ? Justifiez.

<details>

<summary>Solution</summary>

**Méthode :** Utiliser les propriétés des cycles et la définition des arbres.

**Étapes :**

1.  **Nombre chromatique :**

    On peut colorier un arbre en partant d'une racine (couleur 1). Ses enfants prennent la couleur 2. Les enfants des enfants reprennent la couleur 1, et ainsi de suite.

    Comme il n'y a pas de cycle, on ne rencontrera jamais de conflit où un sommet a deux voisins de couleurs différentes qui l'obligeraient à prendre une 3ème couleur.

    Donc pour tout arbre avec au moins une arête ($n \ge 2$), $\chi(T) = 2$.

2.  **Bipartition :**

    Un graphe est biparti s'il ne contient pas de cycle impair.

    Un arbre ne contient **aucun** cycle (ni pair, ni impair).

    Par conséquent, il ne contient pas de cycle impair.

    La condition est vérifiée.

**Réponse :**

1. $\chi(T) = 2$.
2. Oui, tout arbre est un graphe biparti.

</details>
