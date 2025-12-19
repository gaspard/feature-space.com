---
id: 11abf2fa
type: exercises
order: 11
title: Introduction à la théorie de graphes - exercices (A)
tags:
  - Graphes
  - Isomorphisme
  - Degrés
  - Lemme des poignées de main
  - Havel-Hakimi
  - Théorie extrémale
  - Turán
  - Ramsey
createdAt: '2025-12-16T17:22:40.816Z'
level: regular
course: Graphes et Combinatoire
courseId: 7027276b
chapter: Introduction à la théorie de graphes
chapterId: 51b24cb0
---
# Exercices "Introduction à la théorie de graphes" (A)

---

## Exercice 1 : Modélisation et Définitions de Base

**Problème :**

Soit un ensemble de sommets $S = \{2, 3, 4, 5, 6\}$. On définit un graphe $G = (S, A)$ où une arête relie deux sommets $x$ et $y$ si et seulement si leur somme $x+y$ est un nombre impair.

1. Listez explicitement l'ensemble des arêtes $A$ (sous forme de paires $\{x,y\}$).
2. Quel est l'ordre du graphe ?
3. Dessinez le graphe.
4. Ce graphe est-il biparti ? Justifiez.

<details>

<summary>Solution</summary>

**Méthode :**

Pour construire $A$, nous devons tester chaque paire de sommets distincts dans $\mathcal{P}_2(S)$. Si la condition "somme impaire" est remplie, la paire est ajoutée à $A$. La somme de deux entiers est impaire si et seulement si l'un est pair et l'autre est impair.

**Étapes :**

1.  **Identification de la parité des sommets :**
    *   Pairs : $\{2, 4, 6\}$ (Disons ensemble $P$)
    *   Impairs : $\{3, 5\}$ (Disons ensemble $I$)

2.  **Construction des arêtes ($x+y$ impair) :**

    Une arête existe entre $x$ et $y$ si l'un est dans $P$ et l'autre dans $I$.

    *   Connexions avec 3 ($I$) : $\{3,2\}, \{3,4\}, \{3,6\}$
    *   Connexions avec 5 ($I$) : $\{5,2\}, \{5,4\}, \{5,6\}$
    *   Pas de connexion entre pairs ($2+4=6$ pair, etc.)
    *   Pas de connexion entre impairs ($3+5=8$ pair).

3.  **Liste des arêtes :**

    $A = \{\{2,3\}, \{2,5\}, \{3,4\}, \{3,6\}, \{4,5\}, \{5,6\}\}$.

4.  **Ordre du graphe :**

    C'est le cardinal de $S$. Ici $|S| = 5$.

5.  **Bipartition :**

    Un graphe est biparti si on peut séparer les sommets en deux ensembles disjoints tels que toutes les arêtes relient un sommet d'un ensemble à l'autre.

    Ici, nous avons relié uniquement les éléments de $P=\{2,4,6\}$ aux éléments de $I=\{3,5\}$. Il n'y a aucune arête interne à $P$ ni à $I$. Le graphe est donc biparti complet $K_{2,3}$.

**Réponse :**

1. $A = \{\{2,3\}, \{2,5\}, \{3,4\}, \{3,6\}, \{4,5\}, \{5,6\}\}$
2. Ordre = 5
3. (Dessin non affiché, mais imaginez deux colonnes : $\{3,5\}$ à gauche et $\{2,4,6\}$ à droite, avec toutes les connexions possibles entre gauche et droite).
4. Oui, c'est un graphe biparti ($K_{2,3}$).

</details>

---

## Exercice 2 : Lemme des Poignées de Main

**Problème :**

Un graphe simple $G$ possède 15 arêtes. Il contient 3 sommets de degré 4, et tous les autres sommets ont un degré 3.

Combien de sommets ce graphe possède-t-il au total ?

<details>

<summary>Solution</summary>

**Méthode :**

On utilise le Lemme des Poignées de Main : $\sum d(s) = 2|A|$. On pose une équation où l'inconnue est le nombre de sommets restants.

**Étapes :**

1.  **Données :**
    *   Nombre d'arêtes $|A| = 15$.
    *   Sommets de type 1 : 3 sommets de degré 4.
    *   Sommets de type 2 : $x$ sommets de degré 3 (où $x$ est inconnu).
    *   Ordre total du graphe $n = 3 + x$.

2.  **Application du lemme :**

    $$ \sum d(s) = 2 \times 15 = 30 $$

3.  **Expression de la somme des degrés :**

    $$ (3 \times 4) + (x \times 3) = 30 $$

    $$ 12 + 3x = 30 $$

4.  **Résolution :**

    $$ 3x = 30 - 12 $$

    $$ 3x = 18 $$

    $$ x = 6 $$

5.  **Calcul de l'ordre total :**

    Le graphe a les 3 sommets initiaux plus les 6 sommets trouvés.

    $$ n = 3 + 6 = 9 $$

**Réponse :**

Le graphe possède **9 sommets**.

</details>

---

## Exercice 3 : Matrices d'Adjacence et Degrés

**Problème :**

Soit la matrice d'adjacence $M$ d'un graphe $G$ définie comme suit (les sommets sont numérotés de 1 à 4) :

$$

M = \begin{pmatrix}

0 & 1 & 1 & 0 \\

1 & 0 & 1 & 1 \\

1 & 1 & 0 & 1 \\

0 & 1 & 1 & 0

\end{pmatrix}

$$

1. Dessinez le graphe associé.
2. Déterminez le degré de chaque sommet directement à partir de la matrice.
3. Vérifiez le lemme des poignées de main.

<details>

<summary>Solution</summary>

**Méthode :**

Dans une matrice d'adjacence, l'élément $a_{i,j}=1$ signifie qu'il y a une arête entre $i$ et $j$. Le degré d'un sommet $i$ s'obtient en sommant les éléments de la ligne $i$.

**Étapes :**

1.  **Analyse de la matrice (Arêtes) :**
    *   Ligne 1 : connectée à 2, 3. Arêtes : $\{1,2\}, \{1,3\}$.
    *   Ligne 2 : connectée à 1, 3, 4. Arêtes : $\{2,1\}, \{2,3\}, \{2,4\}$.
    *   Ligne 3 : connectée à 1, 2, 4. Arêtes : $\{3,1\}, \{3,2\}, \{3,4\}$.
    *   Ligne 4 : connectée à 2, 3. Arêtes : $\{4,2\}, \{4,3\}$.
    *   Liste unique d'arêtes $A = \{\{1,2\}, \{1,3\}, \{2,3\}, \{2,4\}, \{3,4\}\}$.

2.  **Calcul des degrés (Somme des lignes) :**
    *   $d(1) = 0+1+1+0 = 2$
    *   $d(2) = 1+0+1+1 = 3$
    *   $d(3) = 1+1+0+1 = 3$
    *   $d(4) = 0+1+1+0 = 2$

3.  **Vérification du lemme :**
    *   Somme des degrés : $2 + 3 + 3 + 2 = 10$.
    *   Nombre d'arêtes $|A|$ : On a compté 5 arêtes uniques.
    *   Formule : $10 = 2 \times 5$. C'est vérifié.

**Réponse :**

1. Graphe avec les arêtes $\{\{1,2\}, \{1,3\}, \{2,3\}, \{2,4\}, \{3,4\}\}$.
2. $d(1)=2, d(2)=3, d(3)=3, d(4)=2$.
3. Somme = 10, Arêtes = 5. $10 = 2 \times 5$.

</details>

---

## Exercice 4 : Isomorphisme de Graphes

**Problème :**

Considérons deux graphes :

*   $G_1 = C_4$ (un cycle de longueur 4) avec sommets $\{1, 2, 3, 4\}$ et arêtes $\{\{1,2\}, \{2,3\}, \{3,4\}, \{4,1\}\}$.
*   $G_2$ défini par les sommets $\{a, b, c, d\}$ et les arêtes $\{\{a,c\}, \{c,b\}, \{b,d\}, \{d,a\}\}$.

Existe-t-il un isomorphisme $\varphi : G_1 \to G_2$ ? Si oui, donnez explicitement la correspondance des sommets.

<details>

<summary>Solution</summary>

**Méthode :**

Pour prouver l'isomorphisme, il faut trouver une bijection qui préserve les arêtes. Si on parcourt le cycle $G_1$ (1-2-3-4-1), on doit pouvoir parcourir $G_2$ dans le même ordre d'adjacence.

**Étapes :**

1.  **Analyse de $G_1$ :**

    C'est un carré. On peut suivre le chemin $1 \to 2 \to 3 \to 4 \to 1$.

2.  **Analyse de $G_2$ :**

    Regardons les connexions.

    $a$ est relié à $c$ et $d$.

    Essayons de suivre un cycle en partant de $a$ :

    $a \to c \to b \to d \to a$.

    C'est aussi un cycle de longueur 4.

3.  **Construction de la bijection $\varphi$ :**

    On mappe les sommets du cycle de $G_1$ aux sommets du cycle de $G_2$ dans l'ordre.

    *   $\varphi(1) = a$
    *   $\varphi(2) = c$ (car $c$ est voisin de $a$)
    *   $\varphi(3) = b$ (car $b$ est voisin de $c$)
    *   $\varphi(4) = d$ (car $d$ est voisin de $b$ et de $a$)

4.  **Vérification des arêtes :**
    *   $\{1,2\} \to \{a,c\}$ (Présent dans $G_2$)
    *   $\{2,3\} \to \{c,b\}$ (Présent dans $G_2$)
    *   $\{3,4\} \to \{b,d\}$ (Présent dans $G_2$)
    *   $\{4,1\} \to \{d,a\}$ (Présent dans $G_2$)

**Réponse :**

Oui, les graphes sont isomorphes. Une bijection possible est :

$$ \varphi(1)=a, \varphi(2)=c, \varphi(3)=b, \varphi(4)=d $$

</details>

---

## Exercice 5 : Familles de Graphes et Hypercubes

**Problème :**

Considérons l'hypercube de dimension 3, noté $Q_3$.

1. Quel est l'ordre de ce graphe ?
2. Quel est le degré de chaque sommet ? Le graphe est-il régulier ?
3. Combien d'arêtes possède-t-il au total ?
4. Quel est le diamètre du graphe (la distance maximale entre deux sommets) ?

<details>

<summary>Solution</summary>

**Méthode :**

Les sommets de $Q_d$ sont les chaînes binaires de longueur $d$. L'ordre est $2^d$. Le degré est $d$.

**Étapes :**

1.  **Ordre ($n$) :**

    Pour $d=3$, les sommets sont les suites binaires de longueur 3 (000, 001, ..., 111).

    $n = 2^3 = 8$.

2.  **Degré et Régularité :**

    Dans un hypercube $Q_d$, chaque sommet est relié aux sommets qui diffèrent d'exactement 1 bit. Dans une chaîne de 3 bits, on peut changer 3 positions différentes.

    Chaque sommet a donc un degré $k=3$.

    Puisque $\delta(G) = \Delta(G) = 3$, le graphe est $3$-régulier.

3.  **Nombre d'arêtes ($m$) :**

    On utilise le lemme des poignées de main : $2m = n \times k$.

    $2m = 8 \times 3 = 24 \implies m = 12$.

4.  **Diamètre :**

    La distance entre deux sommets est le nombre de bits différents (distance de Hamming). La distance maximale est entre $000$ et $111$ (3 bits différents).

    Diamètre = 3.

**Réponse :**

1. Ordre = 8
2. Degré = 3 (3-régulier)
3. 12 arêtes
4. Diamètre = 3

</details>

---

## Exercice 6 : Théorème de Havel-Hakimi

**Problème :**

Déterminez si la suite d'entiers suivante est graphique (c'est-à-dire s'il existe un graphe simple ayant ces degrés) en utilisant l'algorithme de Havel-Hakimi :

$$ S = (4, 4, 3, 2, 2, 1) $$

Montrez chaque étape de la réduction.

<details>

<summary>Solution</summary>

**Méthode :**

On applique l'algorithme itératif : trier (décroissant), supprimer le premier élément $d_1$, soustraire 1 aux $d_1$ éléments suivants, répéter. Si on bloque (nombres négatifs) ou si la somme est impaire à la fin, c'est faux. Si on arrive à des zéros, c'est vrai.

**Étapes :**

1.  **Suite initiale :** $(4, 4, 3, 2, 2, 1)$ (déjà triée).

    On supprime le premier **4**.

    On soustrait 1 aux **4** suivants : $(4-1, 3-1, 2-1, 2-1, 1)$.

2.  **Résultat étape 1 :** $(3, 2, 1, 1, 1)$.

    La suite est déjà triée.

    On supprime le premier **3**.

    On soustrait 1 aux **3** suivants : $(2-1, 1-1, 1-1, 1)$.

3.  **Résultat étape 2 :** $(1, 0, 0, 1)$.

    Il faut **retrier** la suite : $(1, 1, 0, 0)$.

    On supprime le premier **1**.

    On soustrait 1 au **1** suivant : $(1-1, 0, 0)$.

4.  **Résultat étape 3 :** $(0, 0, 0)$.

    Cette suite correspond à un graphe avec 3 sommets isolés (valide).

**Réponse :**

Puisque l'algorithme termine sur une suite de zéros, la suite initiale $(4, 4, 3, 2, 2, 1)$ est **graphique**.

</details>

---

## Exercice 7 : Théorème de Turán (Optimisation)

**Problème :**

Un ingénieur réseau doit relier 8 serveurs (sommets) avec le maximum de câbles (arêtes) possible, mais une contrainte technique interdit la formation de tout "triangle" de connexion (3 serveurs tous reliés entre eux, c'est-à-dire un sous-graphe $K_3$).

1. Quel est le nombre maximum de câbles qu'il peut installer ?
2. Quelle structure de graphe permet d'atteindre ce maximum ?

<details>

<summary>Solution</summary>

**Méthode :**

Ceci est une application directe du Théorème de Turán. On cherche le nombre d'arêtes maximal dans un graphe d'ordre $n=8$ sans clique de taille $r=3$ ($K_3$).

**Étapes :**

1.  **Identification des paramètres :**

    $n = 8$

    $r = 3$ (on veut éviter $K_3$)

2.  **Formule de Turán :**

    La borne est $m \le \left(1 - \frac{1}{r-1}\right) \frac{n^2}{2}$.

    $$ m \le \left(1 - \frac{1}{3-1}\right) \frac{8^2}{2} $$

    $$ m \le \left(1 - \frac{1}{2}\right) \frac{64}{2} $$

    $$ m \le 0.5 \times 32 $$

    $$ m \le 16 $$

3.  **Structure optimale :**

    Le graphe de Turán $T(n, r-1)$ pour éviter $K_r$ est un graphe multipartite complet équilibré à $r-1$ partitions.

    Ici $r-1 = 2$. C'est un graphe **biparti complet**.

    On divise les 8 sommets en 2 groupes de 4 ($K_{4,4}$).

    Nombre d'arêtes = $4 \times 4 = 16$.

**Réponse :**

1. Le nombre maximum de câbles est **16**.
2. La structure est un graphe **biparti complet équilibré** ($K_{4,4}$).

</details>

---

## Exercice 8 : Sous-graphes et Sous-graphes Induits

**Problème :**

Soit le graphe $G = C_5$ (un cycle pentagonal) avec les sommets $\{1, 2, 3, 4, 5\}$ et les arêtes $\{\{1,2\}, \{2,3\}, \{3,4\}, \{4,5\}, \{5,1\}\}$.

Considérons le sous-ensemble de sommets $S' = \{1, 2, 3, 5\}$.

1. Dessinez (ou décrivez) le sous-graphe **induit** par $S'$ dans $G$, noté $G[S']$.
2. Quel est l'ordre et le nombre d'arêtes de $G[S']$ ?
3. $G[S']$ est-il isomorphe à $P_3$ (chaîne de longueur 3) ou à $C_4$ ?

<details>

<summary>Solution</summary>

**Méthode :**

Pour trouver le sous-graphe induit par $S'$, on prend les sommets de $S'$ et on conserve **toutes** les arêtes de $G$ dont les deux extrémités sont dans $S'$.

**Étapes :**

1.  **Sommets :** $\{1, 2, 3, 5\}$.
2.  **Vérification des arêtes potentielles dans $G$ :**
    *   $\{1,2\}$ ? Oui (dans $G$).
    *   $\{2,3\}$ ? Oui (dans $G$).
    *   $\{3,5\}$ ? Non (pas dans $G$, ce sont des non-voisins dans $C_5$).
    *   $\{5,1\}$ ? Oui (dans $G$).
    *   $\{1,3\}$ ? Non.
    *   $\{2,5\}$ ? Non.
3.  **Liste des arêtes de $G[S']$ :**

    $A' = \{\{1,2\}, \{2,3\}, \{5,1\}\}$.

    Graphiquement, cela ressemble à $3-2-1-5$. C'est une chaîne.

4.  **Comparaison :**

    Le graphe a 4 sommets et 3 arêtes.

    Les degrés sont : $d(3)=1, d(2)=2, d(1)=2, d(5)=1$.

    Cela correspond à la structure d'une chaîne de 4 sommets ($P_3$).

**Réponse :**

1. $G[S']$ a les arêtes $\{\{1,2\}, \{2,3\}, \{1,5\}\}$.
2. Ordre 4, Taille 3.
3. Il est isomorphe à $P_3$ (une chaîne).

</details>

---

## Exercice 9 : Nombres de Ramsey (Application)

**Problème :**

On sait que le nombre de Ramsey $R(3, 4) = 9$.

Expliquez ce que cela signifie concrètement si on considère un groupe de 9 personnes où chaque paire de personnes sont soit "amis", soit "étrangers".

<details>

<summary>Solution</summary>

**Méthode :**

La définition de $R(s, t)$ concerne l'existence garantie d'une clique de taille $s$ ($K_s$) ou d'un stable de taille $t$ ($S_t$).

**Étapes :**

1.  **Modélisation :**

    Les personnes sont les sommets.

    Une arête (couleur bleue) signifie "Amis".

    L'absence d'arête (ou arête rouge) signifie "Étrangers".

    $s=3$ correspond à un triangle d'amis ($K_3$).

    $t=4$ correspond à un groupe de 4 étrangers mutuels ($S_4$).

2.  **Interprétation de $n=9$ :**

    Puisque le graphe a 9 sommets (ce qui est égal au nombre de Ramsey), la propriété est forcée.

**Réponse :**

Dans n'importe quel groupe de 9 personnes, il est mathématiquement certain que l'une des deux situations suivantes se produit :

*   Soit il existe un groupe de **3 personnes qui sont toutes amies** entre elles.
*   Soit il existe un groupe de **4 personnes qui sont toutes étrangères** les unes aux autres.

Il est impossible d'éviter simultanément ces deux configurations.

</details>

---

## Exercice 10 : Matrice d'Incidence

**Problème :**

Soit un graphe complet $K_3$ avec les sommets $\{1, 2, 3\}$.

1. Écrivez la matrice d'incidence $M$ de ce graphe (lignes = sommets, colonnes = arêtes).
2. Vérifiez que la somme de chaque colonne est 2.
3. Quelle est la somme de chaque ligne ? Que représente-t-elle ?

<details>

<summary>Solution</summary>

**Méthode :**

$K_3$ a 3 sommets et 3 arêtes : $a=\{1,2\}, b=\{2,3\}, c=\{1,3\}$.

La matrice d'incidence $M$ est de taille $3 \times 3$. $M_{i,j} = 1$ si le sommet $i$ appartient à l'arête $j$.

**Étapes :**

1.  **Construction de la matrice :**

    Colonnes : $C_1=\{1,2\}$, $C_2=\{2,3\}$, $C_3=\{1,3\}$.

    Lignes : Sommets 1, 2, 3.

    $$ M = \begin{matrix} & \{1,2\} & \{2,3\} & \{1,3\} \\ 1 & 1 & 0 & 1 \\ 2 & 1 & 1 & 0 \\ 3 & 0 & 1 & 1 \end{matrix} $$

    (Note : L'ordre des colonnes peut varier, mais la structure reste la même).

2.  **Somme des colonnes :**
    *   Col 1 : $1+1+0 = 2$
    *   Col 2 : $0+1+1 = 2$
    *   Col 3 : $1+0+1 = 2$

    C'est toujours 2 car une arête a exactement 2 extrémités.

3.  **Somme des lignes :**
    *   Ligne 1 : $1+0+1 = 2$
    *   Ligne 2 : $1+1+0 = 2$
    *   Ligne 3 : $0+1+1 = 2$

**Réponse :**

$$ M = \begin{pmatrix} 1 & 0 & 1 \\ 1 & 1 & 0 \\ 0 & 1 & 1 \end{pmatrix} $$

La somme de chaque ligne est 2. Cela représente le **degré** de chaque sommet dans le triangle (chaque sommet a 2 voisins).

</details>
