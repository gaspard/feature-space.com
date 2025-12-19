---
id: 0e3b19cc
type: exercises
order: 11
title: Principe d'inclusion-exclusion - exercices (A)
tags:
  - combinatoire
  - inclusion-exclusion
  - dénombrement
  - surjections
  - dérangements
  - formule du crible
createdAt: '2025-12-16T17:04:57.312Z'
level: regular
course: Graphes et Combinatoire
courseId: 7027276b
chapter: Principe d'inclusion-exclusion
chapterId: e535f58d
---
# Exercices "Principe d'inclusion-exclusion" (A)

---

## Exercice 1

**Problème :** Application de base pour trois ensembles

Dans une promotion de 100 étudiants en informatique :

- 60 étudient le Python (Ensemble $A$).
- 50 étudient le Java (Ensemble $B$).
- 40 étudient le C++ (Ensemble $C$).

On connait également les intersections suivantes :

- 30 étudient à la fois Python et Java.
- 20 étudient à la fois Python et C++.
- 15 étudient à la fois Java et C++.
- 10 étudient les trois langages.

Combien d'étudiants apprennent **au moins un** de ces trois langages ? Combien n'en apprennent **aucun** ?

<details>

<summary>Solution</summary>

**Méthode :** Nous utilisons le principe d'inclusion-exclusion pour la réunion de trois ensembles (Concept 1), puis nous utilisons le complémentaire pour trouver ceux qui n'apprennent aucun langage.

**Étapes :**

1.  **Identifier la formule :**

    Pour trois ensembles, la formule est :

    $$ |A \cup B \cup C| = (|A| + |B| + |C|) - (|A \cap B| + |A \cap C| + |B \cap C|) + |A \cap B \cap C| $$

2.  **Calculer la somme des singletons ($S_1$) :**

    $$ S_1 = |A| + |B| + |C| = 60 + 50 + 40 = 150 $$

3.  **Calculer la somme des intersections par paires ($S_2$) :**

    $$ S_2 = |A \cap B| + |A \cap C| + |B \cap C| = 30 + 20 + 15 = 65 $$

4.  **Identifier l'intersection triple ($S_3$) :**

    $$ S_3 = |A \cap B \cap C| = 10 $$

5.  **Appliquer la formule pour "au moins un" :**

    $$ |A \cup B \cup C| = 150 - 65 + 10 = 95 $$

6.  **Calculer le nombre d'étudiants n'apprenant aucun langage :**

    Soit $E$ l'ensemble total des étudiants ($|E| = 100$). On cherche le cardinal du complémentaire.

    $$ |\overline{A \cup B \cup C}| = |E| - |A \cup B \cup C| = 100 - 95 = 5 $$

**Réponse :**

95 étudiants apprennent au moins un langage, et 5 n'en apprennent aucun.

</details>

---

## Exercice 2

**Problème :** Dénombrement et Divisibilité

Combien d'entiers dans l'ensemble $E = \{1, 2, \dots, 200\}$ sont divisibles par 4, 5 ou 6 ?

Note : On note $A_k$ l'ensemble des multiples de $k$ dans $E$. Rappelons que $|A_k| = \lfloor \frac{200}{k} \rfloor$.

<details>

<summary>Solution</summary>

**Méthode :** Appliquer le principe d'inclusion-exclusion sur les ensembles $A_4, A_5, A_6$. Il faut faire attention aux intersections : l'intersection des multiples de $a$ et $b$ est l'ensemble des multiples de $PPCM(a,b)$.

**Étapes :**

1.  **Calculer les cardinaux des ensembles individuels :**
    - $|A_4| = \lfloor \frac{200}{4} \rfloor = 50$
    - $|A_5| = \lfloor \frac{200}{5} \rfloor = 40$
    - $|A_6| = \lfloor \frac{200}{6} \rfloor = 33$ (car $6 \times 33 = 198$)

2.  **Calculer les intersections deux à deux (PPCM) :**
    - $|A_4 \cap A_5| = |A_{20}|$ (car $PPCM(4,5)=20$).

      $\lfloor \frac{200}{20} \rfloor = 10$.

    - $|A_4 \cap A_6| = |A_{12}|$ (car $PPCM(4,6)=12$, et non 24).

      $\lfloor \frac{200}{12} \rfloor = 16$ (car $12 \times 16 = 192$).

    - $|A_5 \cap A_6| = |A_{30}|$ (car $PPCM(5,6)=30$).

      $\lfloor \frac{200}{30} \rfloor = 6$ (car $30 \times 6 = 180$).

3.  **Calculer l'intersection triple :**
    - $|A_4 \cap A_5 \cap A_6| = |A_{60}|$ (car $PPCM(4,5,6)=60$).

      $\lfloor \frac{200}{60} \rfloor = 3$ (car $60 \times 3 = 180$).

4.  **Appliquer la formule d'inclusion-exclusion :**

    $$ |A_4 \cup A_5 \cup A_6| = (50 + 40 + 33) - (10 + 16 + 6) + 3 $$

    $$ = 123 - 32 + 3 $$

    $$ = 94 $$

**Réponse :**

Il y a $94$ entiers divisibles par 4, 5 ou 6 entre 1 et 200.

</details>

---

## Exercice 3

**Problème :** Comptage de solutions entières avec contraintes

On cherche le nombre de solutions entières $(x_1, x_2, x_3)$ de l'équation suivante :

$$ x_1 + x_2 + x_3 = 15 $$

avec les contraintes : $0 \le x_i \le 6$ pour tout $i \in \{1, 2, 3\}$.

*Indice : Calculer d'abord le nombre total de solutions sans la contrainte supérieure ($\le 6$), puis utiliser le principe d'inclusion-exclusion pour retirer les cas où au moins une variable dépasse 6.*

<details>

<summary>Solution</summary>

**Méthode :** Utiliser la combinatoire avec répétition (bâtons et étoiles) combinée au principe d'inclusion-exclusion (Forme Complémentaire).

L'univers $E$ est l'ensemble des solutions avec $x_i \ge 0$.

Les "mauvaises" propriétés $P_i$ sont "$x_i \ge 7$".

**Étapes :**

1.  **Calculer le nombre total de solutions positives ($|E|$) :**

    Le nombre de solutions à $x_1 + x_2 + x_3 = 15$ avec $x_i \ge 0$ est $\binom{15+3-1}{3-1} = \binom{17}{2}$.

    $$ |E| = \frac{17 \times 16}{2} = 136 $$

2.  **Définir les ensembles à exclure :**

    Soit $A_1$ l'ensemble des solutions où $x_1 \ge 7$.

    Pour compter $|A_1|$, on pose $x_1 = y_1 + 7$ (où $y_1 \ge 0$).

    L'équation devient $(y_1 + 7) + x_2 + x_3 = 15 \implies y_1 + x_2 + x_3 = 8$.

    Nombre de solutions : $\binom{8+3-1}{2} = \binom{10}{2} = 45$.

    Par symétrie, $|A_1| = |A_2| = |A_3| = 45$.

3.  **Calculer les intersections deux à deux :**

    Soit $A_1 \cap A_2$ les solutions où $x_1 \ge 7$ et $x_2 \ge 7$.

    On pose $x_1 = y_1 + 7$ et $x_2 = y_2 + 7$.

    L'équation devient $(y_1+7) + (y_2+7) + x_3 = 15 \implies y_1 + y_2 + x_3 = 1$.

    Nombre de solutions : $\binom{1+3-1}{2} = \binom{3}{2} = 3$.

    Par symétrie, $|A_1 \cap A_2| = |A_1 \cap A_3| = |A_2 \cap A_3| = 3$.

4.  **Calculer l'intersection triple :**

    $A_1 \cap A_2 \cap A_3$ implique $x_1, x_2, x_3 \ge 7$.

    La somme minimale serait $7+7+7 = 21$, ce qui est impossible car la somme doit faire 15.

    Donc $|A_1 \cap A_2 \cap A_3| = 0$.

5.  **Appliquer la formule (Complémentaire) :**

    $$ N = |E| - \sum |A_i| + \sum |A_i \cap A_j| - |A_1 \cap A_2 \cap A_3| $$

    $$ N = 136 - (45 + 45 + 45) + (3 + 3 + 3) - 0 $$

    $$ N = 136 - 135 + 9 = 10 $$

**Réponse :**

Il y a 10 solutions respectant toutes les contraintes.

</details>

---

## Exercice 4

**Problème :** Calcul direct de Surjections

Soit $E = \{a, b, c, d, e\}$ un ensemble de 5 éléments et $F = \{1, 2, 3\}$ un ensemble de 3 éléments.

Calculer le nombre de surjections de $E$ vers $F$.

<details>

<summary>Solution</summary>

**Méthode :** Utiliser la formule explicite du nombre de surjections (Concept 4).

$$ Surj(n, k) = \sum_{j=0}^{k} (-1)^{k-j} \binom{k}{j} j^n $$

Ici, $n=5$ (départ) et $k=3$ (arrivée).

**Étapes :**

1.  **Identifier les termes de la somme :**

    La somme va de $j=0$ à $j=3$.

    $$ Surj(5, 3) = \sum_{j=0}^{3} (-1)^{3-j} \binom{3}{j} j^5 $$

2.  **Développer la somme :**
    - Pour $j=0$ : $(-1)^3 \binom{3}{0} 0^5 = -1 \times 1 \times 0 = 0$
    - Pour $j=1$ : $(-1)^2 \binom{3}{1} 1^5 = 1 \times 3 \times 1 = 3$
    - Pour $j=2$ : $(-1)^1 \binom{3}{2} 2^5 = -1 \times 3 \times 32 = -96$
    - Pour $j=3$ : $(-1)^0 \binom{3}{3} 3^5 = 1 \times 1 \times 243 = 243$

3.  **Calculer le résultat final :**

    $$ Surj(5, 3) = 0 + 3 - 96 + 243 $$

    $$ Surj(5, 3) = 246 - 96 = 150 $$

**Réponse :**

Il existe $150$ surjections de $E$ vers $F$.

</details>

---

## Exercice 5

**Problème :** Application des Surjections (Distribution)

Un professeur veut distribuer 6 sujets de projets différents à 4 groupes d'étudiants (G1, G2, G3, G4).

Chaque groupe doit recevoir **au moins un** sujet. De combien de façons le professeur peut-il distribuer les sujets ?

<details>

<summary>Solution</summary>

**Méthode :** Distribuer des objets distincts (sujets) à des entités distinctes (groupes) de sorte qu'aucune entité ne soit vide équivaut à compter le nombre de surjections de l'ensemble des sujets vers l'ensemble des groupes.

**Étapes :**

1.  **Modélisation :**
    - Ensemble de départ $E$ : Les 6 sujets ($n=6$).
    - Ensemble d'arrivée $F$ : Les 4 groupes ($k=4$).
    - Condition "au moins un sujet" : Surjection.

2.  **Appliquer la formule des surjections :**

    $$ S(6, 4) = \sum_{j=0}^{4} (-1)^{4-j} \binom{4}{j} j^6 $$

3.  **Calculer terme par terme :**
    - $j=0$ : 0
    - $j=1$ : $(-1)^3 \binom{4}{1} 1^6 = -4 \times 1 = -4$
    - $j=2$ : $(-1)^2 \binom{4}{2} 2^6 = 6 \times 64 = 384$
    - $j=3$ : $(-1)^1 \binom{4}{3} 3^6 = -4 \times 729 = -2916$
    - $j=4$ : $(-1)^0 \binom{4}{4} 4^6 = 1 \times 4096 = 4096$

4.  **Sommer les résultats :**

    $$ S(6, 4) = 0 - 4 + 384 - 2916 + 4096 $$

    $$ S(6, 4) = 4480 - 2920 = 1560 $$

**Réponse :**

Il y a $1560$ façons de distribuer les sujets.

</details>

---

## Exercice 6

**Problème :** Dérangements (Le problème des cadeaux)

Quatre amis (Alice, Bob, Charlie, David) organisent un échange de cadeaux ("Secret Santa"). Chacun apporte un cadeau, les met dans une hotte, et en tire un au hasard.

De combien de manières différentes le tirage peut-il se dérouler pour que **personne** ne tire son propre cadeau ?

<details>

<summary>Solution</summary>

**Méthode :** On cherche le nombre de permutations sans point fixe (dérangements) pour un ensemble de taille $n=4$. On utilise la formule des dérangements $D_n$.

**Étapes :**

1.  **Formule des dérangements :**

    $$ D_n = n! \sum_{k=0}^n \frac{(-1)^k}{k!} $$

2.  **Application pour $n=4$ :**

    $$ D_4 = 4! \left( \frac{1}{0!} - \frac{1}{1!} + \frac{1}{2!} - \frac{1}{3!} + \frac{1}{4!} \right) $$

3.  **Simplification :**

    Les deux premiers termes s'annulent ($1 - 1 = 0$).

    $$ D_4 = 24 \left( \frac{1}{2} - \frac{1}{6} + \frac{1}{24} \right) $$

4.  **Calcul :**

    $$ D_4 = 24 \left( \frac{12}{24} - \frac{4}{24} + \frac{1}{24} \right) $$

    $$ D_4 = 12 - 4 + 1 = 9 $$

**Réponse :**

Il y a $9$ tirages possibles où personne ne reçoit son propre cadeau.

</details>

---

## Exercice 7

**Problème :** Dérangements partiels

Lors d'un test à l'aveugle, 5 personnes goûtent chacune leur boisson favorite parmi 5 verres mélangés.

Quelle est le nombre de cas où **exactement 2 personnes** reconnaissent leur propre boisson (trouvent leur verre) et les 3 autres se trompent ?

<details>

<summary>Solution</summary>

**Méthode :** Ce problème combine les combinaisons et les dérangements.

1. Il faut choisir *quelles* sont les 2 personnes qui ont juste.
2. Il faut que les 3 autres personnes soient en situation de dérangement (aucune n'a son verre).

**Étapes :**

1.  **Choisir les points fixes :**

    Nombre de façons de choisir 2 personnes parmi 5 :

    $$ \binom{5}{2} = \frac{5 \times 4}{2} = 10 $$

2.  **Déranger les autres :**

    Les 3 personnes restantes doivent avoir une permutation sans point fixe.

    On calcule $D_3$ (dérangements de 3 éléments) :

    $$ D_3 = 3! \left( \frac{1}{0!} - \frac{1}{1!} + \frac{1}{2!} - \frac{1}{3!} \right) = 6 \left( \frac{1}{2} - \frac{1}{6} \right) = 3 - 1 = 2 $$

    *(Les dérangements de {1,2,3} sont 231 et 312).*

3.  **Multiplier les possibilités :**

    $$ \text{Total} = \binom{5}{2} \times D_3 = 10 \times 2 = 20 $$

**Réponse :**

Il y a $20$ configurations où exactement 2 personnes retrouvent leur verre.

</details>

---

## Exercice 8

**Problème :** Indicateur d'Euler et PIE

Utiliser le Principe d'Inclusion-Exclusion pour calculer $\phi(60)$, c'est-à-dire le nombre d'entiers dans $\{1, \dots, 60\}$ qui sont premiers avec 60.

<details>

<summary>Solution</summary>

**Méthode :** Un nombre est premier avec 60 s'il n'est divisible par aucun des facteurs premiers de 60.

Facteurs premiers de $60 = 2^2 \times 3 \times 5$. Les facteurs premiers distincts sont 2, 3 et 5.

On cherche le cardinal de l'ensemble univers $E=\{1, \dots, 60\}$ privé des multiples de 2, 3 et 5.

**Étapes :**

1.  **Définir les ensembles :**
    - $A_2$ : multiples de 2 ($|A_2| = 60/2 = 30$)
    - $A_3$ : multiples de 3 ($|A_3| = 60/3 = 20$)
    - $A_5$ : multiples de 5 ($|A_5| = 60/5 = 12$)

2.  **Calculer les intersections (multiples du produit) :**
    - $|A_2 \cap A_3| = 60 / 6 = 10$
    - $|A_2 \cap A_5| = 60 / 10 = 6$
    - $|A_3 \cap A_5| = 60 / 15 = 4$
    - $|A_2 \cap A_3 \cap A_5| = 60 / 30 = 2$

3.  **Appliquer la formule complémentaire (Concept 2) :**

    $$ \phi(60) = 60 - (|A_2| + |A_3| + |A_5|) + (|A_2 \cap A_3| + \dots) - |A_2 \cap A_3 \cap A_5| $$

    $$ \phi(60) = 60 - (30 + 20 + 12) + (10 + 6 + 4) - 2 $$

4.  **Calcul final :**

    $$ \phi(60) = 60 - 62 + 20 - 2 = 16 $$

    *Vérification avec la formule multiplicative : $\phi(60) = 60(1-1/2)(1-1/3)(1-1/5) = 60(1/2)(2/3)(4/5) = 16$.*

**Réponse :**

$\phi(60) = 16$.

</details>

---

## Exercice 9

**Problème :** Permutations avec positions interdites

Combien y a-t-il de permutations $\sigma$ de l'ensemble $\{1, 2, 3, 4\}$ telles que :

$$ \sigma(1) \neq 1 \quad \text{ET} \quad \sigma(2) \neq 2 $$

(Les conditions sur 3 et 4 n'importent pas, ils peuvent être fixes ou non).

<details>

<summary>Solution</summary>

**Méthode :** On utilise le principe d'inclusion-exclusion sur l'univers de toutes les permutations.

On veut éviter les propriétés $P_1 : \sigma(1)=1$ et $P_2 : \sigma(2)=2$.

C'est le cardinal de $\overline{P_1 \cup P_2}$.

**Étapes :**

1.  **Univers ($E$) :**

    Toutes les permutations de 4 éléments.

    $|E| = 4! = 24$.

2.  **Ensembles à exclure :**
    - $A_1$ : permutations où $\sigma(1)=1$. Le reste (2, 3, 4) permute librement ($3!$).

      $|A_1| = 3! = 6$.

    - $A_2$ : permutations où $\sigma(2)=2$. Le reste (1, 3, 4) permute librement ($3!$).

      $|A_2| = 3! = 6$.

3.  **Intersection :**
    - $A_1 \cap A_2$ : permutations où $\sigma(1)=1$ ET $\sigma(2)=2$. Le reste (3, 4) permute librement ($2!$).

      $|A_1 \cap A_2| = 2! = 2$.

4.  **Calcul :**

    $$ |\overline{A_1 \cup A_2}| = |E| - (|A_1| + |A_2|) + |A_1 \cap A_2| $$

    $$ = 24 - (6 + 6) + 2 $$

    $$ = 24 - 12 + 2 = 14 $$

**Réponse :**

Il y a $14$ permutations vérifiant ces conditions.

</details>

---

## Exercice 10

**Problème :** Rétro-ingénierie (Données manquantes)

Soient $A$, $B$ et $C$ trois ensembles. On donne les informations suivantes :

- $|A \cup B \cup C| = 45$
- $|A \cap B| = 5$, $|A \cap C| = 8$, $|B \cap C| = 10$
- $|A \cap B \cap C| = 3$
- $|A| = 15$
- $|B| = 20$

Déterminer le cardinal de l'ensemble $C$ ($|C|$).

<details>

<summary>Solution</summary>

**Méthode :** On utilise la formule d'inclusion-exclusion pour la réunion et on isole l'inconnue $|C|$.

**Étapes :**

1.  **Écrire la formule :**

    $$ |A \cup B \cup C| = |A| + |B| + |C| - (|A \cap B| + |A \cap C| + |B \cap C|) + |A \cap B \cap C| $$

2.  **Substituer les valeurs connues :**

    $$ 45 = 15 + 20 + |C| - (5 + 8 + 10) + 3 $$

3.  **Simplifier l'équation :**

    $$ 45 = 35 + |C| - 23 + 3 $$

    $$ 45 = 15 + |C| $$

4.  **Résoudre pour $|C|$ :**

    $$ |C| = 45 - 15 = 30 $$

**Réponse :**

Le cardinal de l'ensemble $C$ est $30$.

</details>
