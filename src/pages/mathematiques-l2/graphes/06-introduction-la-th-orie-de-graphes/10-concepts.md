---
id: ef0e4a57
type: concepts
order: 10
title: Introduction à la théorie de graphes - concepts (A)
tags:
  - Graphes
  - Isomorphisme
  - Degrés
  - Lemme des poignées de main
  - Havel-Hakimi
  - Théorie extrémale
  - Turán
  - Ramsey
course: Graphes et Combinatoire
courseId: 7027276b
chapter: Introduction à la théorie de graphes
chapterId: 51b24cb0
level: regular
createdAt: '2025-12-16T17:22:40.816Z'
---
# Introduction à la théorie de graphes (A)

---

## Concept 1 : Graphe Simple Non-Orienté

### Prérequis

- Théorie des ensembles (ensembles finis, sous-ensembles).
- Paires non ordonnées (ensemble des parties à 2 éléments $\mathcal{P}_2(S)$).

### Définition

Un **graphe** (simple non-orienté) est un couple $G = (S, A)$, où :

- $S$ est un ensemble fini non vide appelé l'ensemble des **sommets** (ou nœuds).
- $A$ est un sous-ensemble de $\mathcal{P}_2(S)$, appelé l'ensemble des **arêtes**.

Une arête est donc une paire de sommets $\{x, y\}$ distincts.

- Si $\{x, y\} \in A$, on dit que $x$ et $y$ sont **adjacents** ou **voisins**.
- $x$ et $y$ sont les **extrémités** de l'arête.
- On dit que le sommet $x$ est **incident** à l'arête $a$ si $x \in a$.
- L'**ordre** du graphe est le nombre de sommets, noté $|S|$.

### Propriétés Clés

- **Symétrie de l'adjacence :** Dans un graphe non-orienté, la relation est symétrique. Si $x$ est voisin de $y$, alors $y$ est voisin de $x$ (car $\{x, y\} = \{y, x\}$).
- **Simplicité :**
    - Pas de boucles : une arête ne peut pas relier un sommet à lui-même (car les éléments de $\mathcal{P}_2(S)$ sont des paires d'éléments distincts).
    - Pas d'arêtes multiples : il existe au plus une arête entre deux sommets donnés.
- **Représentation graphique :** Un graphe peut être dessiné de multiples façons (placement des points, courbure des lignes) tant que les connexions (la topologie) restent identiques.

### Exemples

**Exemple 1 : Le graphe triangle**

Soit $S = \{1, 2, 3\}$. L'ensemble de toutes les paires possibles est $\mathcal{P}_2(S) = \{\{1,2\}, \{2,3\}, \{1,3\}\}$.

Si on prend $A = \{\{1,2\}, \{2,3\}, \{1,3\}\}$, on obtient le graphe complet sur 3 sommets (un triangle).

$$G = (\{1, 2, 3\}, \{\{1, 2\}, \{2, 3\}, \{1, 3\}\})$$

**Exemple 2 : Un graphe linéaire**

Soit $S = \{a, b, c, d\}$. On définit les arêtes pour former une ligne :

$$G = (\{a, b, c, d\}, \{\{a, b\}, \{b, c\}, \{c, d\}\})$$

Ici, $a$ est voisin de $b$, mais $a$ n'est pas voisin de $c$. L'ordre du graphe est 4.

**Exemple 3 : Un graphe déconnecté**

Soit $S = \{x, y, z, w\}$.

$$G = (\{x, y, z, w\}, \{\{x, y\}, \{z, w\}\})$$

Ce graphe possède deux arêtes disjointes. Il n'y a aucun chemin pour aller de $x$ à $z$.

### Contre-exemples

**Contre-exemple 1 : Multigraphe**

Un objet où l'on aurait deux arêtes distinctes reliant les mêmes sommets $a$ et $b$ n'est pas un graphe *simple*. Dans notre définition, $A$ est un ensemble, donc l'élément $\{a, b\}$ ne peut y apparaître qu'une seule fois.

**Contre-exemple 2 : Graphe Orienté**

Si la relation a un sens (par exemple, une flèche de $a$ vers $b$ mais pas l'inverse), ce n'est pas un graphe non-orienté. Dans un graphe orienté, les arêtes sont des couples $(a,b)$ et non des paires $\{a,b\}$.

### Concepts Associés

- **Isomorphisme :** La structure structurelle indépendante du nom des sommets.
- **Sous-graphe :** Une partie du graphe.
- **Multigraphe :** Généralisation acceptant les arêtes multiples.

## Applications

- Modélisation de réseaux sociaux (amis sur Facebook).
- Réseaux physiques (routes reliant des villes, câbles reliant des ordinateurs).
- Structure de molécules chimiques.

---

## Concept 2 : Isomorphisme de Graphes

### Prérequis

- Concept de Graphe (Sommets, Arêtes).
- Bijections.

### Définition

Deux graphes $G = (S, A)$ et $G' = (S', A')$ sont **isomorphes**, noté $G \cong G'$, s'il existe une bijection $\varphi : S \to S'$ telle que pour tous sommets $x, y \in S$ :

$$ \{x, y\} \in A \iff \{\varphi(x), \varphi(y)\} \in A' $$

L'application $\varphi$ est appelée un **isomorphisme**.

### Propriétés Clés

- **Préservation de la structure :** L'isomorphisme préserve l'adjacence. Si deux sommets sont reliés dans $G$, leurs images sont reliées dans $G'$. S'ils ne le sont pas, leurs images ne le sont pas non plus.
- **Invariants :** Deux graphes isomorphes ont nécessairement :
    - Le même ordre (nombre de sommets).
    - Le même nombre d'arêtes.
    - La même suite de degrés (voir Concept 4).
- **Relation d'équivalence :** La relation d'isomorphisme est réflexive, symétrique et transitive.

### Exemples

**Exemple 1 : Renommage**

Soit $G_1$ un graphe triangle sur $\{1, 2, 3\}$ et $G_2$ un graphe triangle sur $\{A, B, C\}$.

$$ A(G_1) = \{\{1,2\}, \{2,3\}, \{1,3\}\}, \quad A(G_2) = \{\{A,B\}, \{B,C\}, \{A,C\}\} $$

La fonction $\varphi(1)=A, \varphi(2)=B, \varphi(3)=C$ est un isomorphisme. Les graphes sont structurellement identiques.

**Exemple 2 : Dessins différents**

Considérons un cycle de 4 sommets $1-2-3-4-1$.

- $G$ : Dessiné comme un carré ($1,2,3,4$ dans le sens horaire).
- $G'$ : Dessiné comme un "papillon" ou sablier croisé, mais où les connexions restent $1$ avec $2$, $2$ avec $3$, $3$ avec $4$, $4$ avec $1$.

Bien que les dessins diffèrent (lignes croisées vs non croisées), les graphes sont isomorphes car les listes d'adjacences sont identiques.

**Exemple 3 : Isomorphisme non trivial**

Soit $G$ un pentagone (cycle $C_5$). Soit $H$ le graphe formé par une étoile à 5 branches connectant les sommets $\{1,2,3,4,5\}$ dans l'ordre $1-3-5-2-4-1$.

Il existe un isomorphisme entre $G$ et $H$ car les deux sont des cycles de longueur 5, simplement dessinés différemment.

### Contre-exemples

**Contre-exemple 1 : Différents degrés**

Un cycle sur 4 sommets ($C_4$, carré) et une étoile sur 4 sommets (un centre relié à 3 feuilles) ne sont pas isomorphes. Ils ont le même nombre de sommets (4) et d'arêtes (3 pour l'étoile, 4 pour le cycle - oups, le cycle a 4 arêtes). Prenons plutôt un chemin de 4 sommets ($P_3$, 3 arêtes) et une étoile de 4 sommets (3 arêtes).

Dans l'étoile, un sommet a un degré 3. Dans le chemin, le degré maximum est 2. Impossible de trouver une bijection préservant l'adjacence.

**Contre-exemple 2 : Connectivité différente**

Soit $G_1$ deux triangles disjoints (6 sommets, 6 arêtes). Soit $G_2$ un cycle de 6 sommets (6 sommets, 6 arêtes).

$G_2$ est connexe (d'un seul tenant), $G_1$ ne l'est pas. Ils ne sont pas isomorphes.

### Concepts Associés

- **Classes d'isomorphisme :** L'ensemble de tous les graphes isomorphes à un graphe donné.
- **Problème de l'isomorphisme de graphes :** Problème algorithmique difficile consistant à déterminer si deux graphes finis sont isomorphes.

## Applications

- Reconnaissance de motifs en analyse d'images.
- Vérification que deux circuits électroniques sont identiques malgré une disposition différente des composants.
- Classification des molécules en chimie (isomères).

---

## Concept 3 : Familles Classiques de Graphes (Bestiaire)

### Prérequis

- Définition de graphe.
- Notations ensemblistes ($\llbracket n \rrbracket$).

### Définition

Quelques classes de graphes fondamentales définies par leur structure paramétrée par $n$.

1.  **Stable ($S_n$) :** $n$ sommets, 0 arête.
2.  **Clique / Complet ($K_n$) :** $n$ sommets, toutes les paires sont des arêtes. $|A| = \binom{n}{2}$.
3.  **Chaîne / Chemin ($P_n$) :** Sommets $\{0, \dots, n\}$, arêtes $\{i, i+1\}$. Longueur $n$ (nombre d'arêtes), mais ordre $n+1$.
4.  **Cycle ($C_n$) :** $n$ sommets reliés en boucle fermée. $n$ arêtes.
5.  **Biparti Complet ($K_{n,m}$) :** Sommets séparés en deux groupes de taille $n$ et $m$. Toutes les connexions possibles entre les groupes, aucune à l'intérieur d'un groupe.
6.  **Hypercube ($Q_d$) :** Sommets = chaînes binaires de longueur $d$. Reliés s'ils diffèrent d'exactement un bit.

### Propriétés Clés

- **Régularité :** $K_n$, $C_n$, $Q_d$ sont des graphes réguliers (tous les sommets ont le même degré).
- **Nombre d'arêtes :**
    - $K_n$ a le maximum d'arêtes possible pour un graphe simple ($n(n-1)/2$).
    - $S_n$ a le minimum (0).
    - $K_{n,m}$ a $n \times m$ arêtes.

### Exemples

**Exemple 1 : Le graphe complet $K_4$**

4 sommets, tous reliés entre eux. Visuellement, un carré avec ses deux diagonales. Nombre d'arêtes = 6.

**Exemple 2 : Le graphe biparti $K_{2,3}$**

Groupe A = $\{a_1, a_2\}$, Groupe B = $\{b_1, b_2, b_3\}$.

Arêtes : $\{a_1,b_1\}, \{a_1,b_2\}, \{a_1,b_3\}, \{a_2,b_1\}, \{a_2,b_2\}, \{a_2,b_3\}$.

Total 5 sommets, 6 arêtes. Pas de triangles possibles.

**Exemple 3 : L'hypercube $Q_3$**

Les sommets sont les sommets d'un cube usuel (000, 001, ..., 111). Il y a $2^3 = 8$ sommets. Chaque sommet a 3 voisins (degré 3). Total d'arêtes = $(8 \times 3) / 2 = 12$.

### Contre-exemples

**Contre-exemple 1 : $P_n$ vs $C_n$**

Un chemin $P_3$ a 4 sommets et est ouvert (extrémités). Un cycle $C_4$ a 4 sommets mais est fermé.

**Contre-exemple 2 : Biparti non complet**

Un cycle $C_6$ est biparti (on peut colorier les sommets alternativement en noir et blanc), mais ce n'est pas un biparti *complet* $K_{3,3}$ car il manque des arêtes (par exemple, un sommet noir n'est relié qu'à 2 des 3 sommets blancs).

### Concepts Associés

- **Bipartition :** Séparation des sommets en deux ensembles indépendants.
- **Connectivité :** $S_n$ est totalement déconnecté pour $n>1$, $K_n$ est très connecté.

## Applications

- **Hypercubes :** Architecture des supercalculateurs et codes correcteurs d'erreurs.
- **Bipartis :** Problèmes d'affectation (tâches vs ouvriers).

---

## Concept 4 : Degrés et Lemme des Poignées de Main

### Prérequis

- Définition de graphe.
- Sommes finies ($\Sigma$).

### Définition

Pour un graphe $G = (S, A)$ :

- Le **degré** d'un sommet $s$, noté $d(s)$, est le nombre d'arêtes incidentes à $s$ (le nombre de voisins).
- $\delta(G)$ est le degré minimum du graphe.
- $\Delta(G)$ est le degré maximum du graphe.
- Un graphe est **$k$-régulier** si $\delta(G) = \Delta(G) = k$ (tous les sommets ont degré $k$).

**Lemme des Poignées de Main :**

La somme des degrés des sommets est égale à deux fois le nombre d'arêtes :

$$ \sum_{s \in S} d(s) = 2|A| $$

### Propriétés Clés

- **Parité :** La somme des degrés est toujours un nombre pair.
- **Nombre de sommets impairs :** Le nombre de sommets ayant un degré impair est nécessairement pair.
- **Bornes :** Pour un graphe simple d'ordre $n$, $0 \leq d(s) \leq n-1$.

### Exemples

**Exemple 1 : Calcul sur un triangle ($K_3$)**

3 sommets, chacun relié aux 2 autres.

$d(1)=2, d(2)=2, d(3)=2$.

Somme = $2+2+2 = 6$.

Nombre d'arêtes $|A|=3$.

On vérifie : $6 = 2 \times 3$.

**Exemple 2 : Graphe "Étoile" à 4 branches ($K_{1,4}$)**

Sommet central $c$ de degré 4. 4 feuilles $f_1, f_2, f_3, f_4$ de degré 1.

Liste des degrés : $(4, 1, 1, 1, 1)$.

Somme : $4+4 = 8$.

Nombre d'arêtes : 4.

On vérifie : $8 = 2 \times 4$.

Nombre de sommets de degré impair (1) : 4 (qui est bien un nombre pair).

**Exemple 3 : Régularité**

Le cube $Q_3$ a 8 sommets de degré 3.

Somme des degrés = $8 \times 3 = 24$.

Nombre d'arêtes = $24 / 2 = 12$.

### Contre-exemples

**Contre-exemple 1 : Graphe impossible (Somme impaire)**

Il est impossible de construire un graphe avec les degrés $(3, 3, 3)$. Somme = 9 (impair). Cela violerait le lemme.

**Contre-exemple 2 : Graphe impossible (Nombre impair de degrés impairs)**

La suite de degrés $(3, 2, 2)$ est impossible. Il y a un seul sommet de degré impair (le 3). Or, le corollaire dit que ce nombre doit être pair.

### Concepts Associés

- **Suites graphiques (Havel-Hakimi) :** Algorithme pour décider si une suite d'entiers peut correspondre aux degrés d'un graphe.

## Applications

- Vérification de cohérence dans les bases de données de réseaux.
- Chimie : La valence des atomes correspond à leur degré (Carbone = 4, Hydrogène = 1). La somme des valences doit être paire pour former une molécule stable fermée.

---

## Concept 5 : Représentation Matricielle (Incidence et Adjacence)

### Prérequis

- Calcul matriciel de base (lignes, colonnes, matrices symétriques).
- Degrés des sommets.

### Définition

Pour un graphe $G$ avec $n$ sommets $\{s_1, \dots, s_n\}$ et $m$ arêtes $\{a_1, \dots, a_m\}$ :

1.  **Matrice d'incidence ($M$) :** Matrice de taille $n \times m$.

    $$m_{i,j} = 1 \text{ si le sommet } s_i \text{ appartient à l'arête } a_j, \text{ sinon } 0.$$

    Chaque colonne contient exactement deux "1".

2.  **Matrice d'adjacence ($A_G$) :** Matrice carrée $n \times n$.

    $$a_{i,j} = 1 \text{ si } \{s_i, s_j\} \in A, \text{ sinon } 0.$$

    C'est une matrice symétrique ($a_{i,j} = a_{j,i}$) avec des 0 sur la diagonale (pour les graphes simples).

### Propriétés Clés

- **Lien avec les degrés :**
    - Dans la matrice d'incidence, la somme de la ligne $i$ est $d(s_i)$.
    - Dans la matrice d'adjacence, la somme de la ligne $i$ (ou colonne $i$) est $d(s_i)$.
- **Symétrie :** La matrice d'adjacence d'un graphe non-orienté est toujours symétrique par rapport à la diagonale principale.

### Exemples

**Exemple 1 : Matrice d'adjacence de $K_3$**

Sommets 1, 2, 3 tous connectés.

$$ A_{K_3} = \begin{pmatrix} 0 & 1 & 1 \\ 1 & 0 & 1 \\ 1 & 1 & 0 \end{pmatrix} $$

**Exemple 2 : Matrice d'incidence d'un chemin $P_2$ ($1-2-3$)**

Sommets $s_1, s_2, s_3$. Arêtes $a_1=\{1,2\}, a_2=\{2,3\}$.

$$ M = \begin{matrix} & a_1 & a_2 \\ s_1 & 1 & 0 \\ s_2 & 1 & 1 \\ s_3 & 0 & 1 \end{matrix} $$

La ligne $s_2$ somme à 2 (degré 2). Les colonnes somment à 2.

**Exemple 3 : Matrice d'adjacence avec sommet isolé**

Graphe : $1-2$ et $3$ isolé.

$$ A_G = \begin{pmatrix} 0 & 1 & 0 \\ 1 & 0 & 0 \\ 0 & 0 & 0 \end{pmatrix} $$

La ligne 3 ne contient que des 0.

### Contre-exemples

**Contre-exemple 1 : Matrice non symétrique**

La matrice $\begin{pmatrix} 0 & 1 \\ 0 & 0 \end{pmatrix}$ ne peut pas être la matrice d'adjacence d'un graphe non-orienté car elle n'est pas symétrique ($a_{1,2}=1$ mais $a_{2,1}=0$). Elle représenterait un graphe orienté.

**Contre-exemple 2 : Diagonale non nulle**

Si la matrice d'adjacence a un "1" sur la diagonale ($a_{i,i}=1$), le graphe n'est pas simple (il contient une boucle sur le sommet $i$).

### Concepts Associés

- **Algèbre linéaire spectrale :** Étude des valeurs propres de la matrice d'adjacence.
- **Chemins :** La puissance $k$-ième de la matrice d'adjacence ($A_G^k$) donne le nombre de chemins de longueur $k$ entre deux sommets.

## Applications

- Stockage de graphes en informatique (Adjacence pour graphes denses, Listes pour graphes creux).
- Algorithmes de recherche (PageRank de Google utilise une variante de la matrice d'adjacence).

---

## Concept 6 : Théorème de Havel-Hakimi (Suites Graphiques)

### Prérequis

- Degrés.
- Tri de suites numériques.
- Raisonnement algorithmique.

### Définition

Une suite d'entiers $(d_1, \dots, d_n)$ est dite **graphique** s'il existe au moins un graphe simple dont ce sont les degrés.

**Théorème :** Une suite décroissante $d_1 \geq d_2 \geq \dots \geq d_n$ est graphique si et seulement si la suite réduite suivante est graphique :

On supprime $d_1$, et on soustrait 1 aux $d_1$ termes suivants.

La suite résultante doit être réordonnée si nécessaire.

Processus itératif : On répète l'opération jusqu'à obtenir une suite de zéros (graphique) ou des nombres négatifs/impossibles (non graphique).

### Propriétés Clés

- **Condition nécessaire et suffisante :** L'algorithme donne une réponse définitive.
- **Construction :** La méthode fournit une "recette" pour construire le graphe en reliant le sommet de plus haut degré aux sommets suivants.

### Exemples

**Exemple 1 : Suite valide $(3, 3, 2, 2, 2)$**

1. On retire le premier 3. On doit retirer 1 aux 3 suivants (3, 2, 2).
2. Nouvelle suite : $(3-1, 2-1, 2-1, 2) \to (2, 1, 1, 2)$.
3. On trie : $(2, 2, 1, 1)$.
4. On retire le premier 2. On retire 1 aux 2 suivants.
5. Nouvelle suite : $(2-1, 1-1, 1) \to (1, 0, 1)$.
6. On trie : $(1, 1, 0)$.
7. On retire le 1. On retire 1 au suivant.
8. Nouvelle suite : $(1-1, 0) \to (0, 0)$.
9. $(0, 0)$ correspond à 2 sommets isolés (graphe valide).

Conclusion : La suite initiale est graphique.

**Exemple 2 : Suite invalide $(3, 3, 3, 1)$**

1. On retire 3. On retire 1 aux 3 suivants (3, 3, 1).
2. Nouvelle suite : $(2, 2, 0)$.
3. On retire 2. On retire 1 aux 2 suivants.
4. Nouvelle suite : $(2-1, 0-1) \to (1, -1)$.
5. Un degré négatif est impossible.

Conclusion : Pas graphique.

**Exemple 3 : Élimination rapide par parité**

Suite $(3, 3, 1)$. Somme = 7. Impair. Pas besoin de Havel-Hakimi, on sait déjà que c'est impossible par le lemme des poignées de main.

### Contre-exemples

**Contre-exemple 1 : L'ordre compte**

Si on applique l'algorithme sans trier la suite à chaque étape (si on soustrait 1 à des termes qui ne sont pas les plus grands restants), le théorème ne garantit pas le résultat. Il faut toujours considérer la suite triée décroissante pour appliquer la réduction.

**Contre-exemple 2 : Unicité**

Le fait qu'une suite soit graphique ne signifie pas que le graphe est unique. $(2, 2, 2, 2, 2, 2)$ peut être deux triangles ($2 \times K_3$) ou un hexagone ($C_6$). Havel-Hakimi prouve l'existence, pas l'unicité.

### Concepts Associés

- **Réalisation de graphes :** Problème consistant à construire un graphe donné des contraintes.

---

## Concept 7 : Sous-graphes et Théorème de Turán

### Prérequis

- Inclusions d'ensembles.
- Graphes complets ($K_n$).
- Optimisation.

### Définition

1.  **Sous-graphe :** $G'=(S', A')$ est un sous-graphe de $G=(S, A)$ si $S' \subseteq S$ et $A' \subseteq A$.
2.  **Sous-graphe induit :** On garde une partie des sommets $S'$ et on garde **toutes** les arêtes de $G$ qui relient ces sommets entre eux. $A' = A \cap \mathcal{P}_2(S')$.
3.  **Théorème de Turán :** Quelle est le nombre maximum d'arêtes qu'un graphe à $n$ sommets peut avoir sans contenir de clique de taille $r$ ($K_r$) ?

    Réponse : $m \leq (1 - \frac{1}{r-1})\frac{n^2}{2}$.

### Propriétés Clés

- **Induction :** Un sous-graphe induit est déterminé uniquement par le choix des sommets.
- **Densité :** Le théorème de Turán donne une borne de densité. Si un graphe est "trop rempli" d'arêtes, il contient forcément une clique $K_r$.
- **Graphe de Turán :** La configuration optimale (nombre max d'arêtes sans $K_r$) est un graphe multipartite complet (sommets divisés en $r-1$ groupes, toutes les arêtes entre groupes, aucune dans les groupes).

### Exemples

**Exemple 1 : Sous-graphe induit**

Soit un carré $a-b-c-d-a$ avec une diagonale $a-c$.

Si on prend $S'=\{a, b, c\}$, le sous-graphe induit contient les arêtes $\{a,b\}, \{b,c\}$ et la diagonale $\{a,c\}$. C'est un triangle ($K_3$).

Si on prend juste un sous-graphe (non induit) sur ces sommets, on pourrait choisir de ne pas inclure $\{a,c\}$.

**Exemple 2 : Turán pour $K_3$ (sans triangle)**

On veut éviter $K_3$ ($r=3$) avec $n=4$ sommets.

Formule : $m \leq (1 - 1/2) \frac{16}{2} = 0.5 \times 8 = 4$.

Le graphe biparti complet $K_{2,2}$ (carré) a 4 arêtes et pas de triangle. Si on ajoute une 5ème arête (diagonale), on crée forcément deux triangles.

**Exemple 3 : Turán pour $K_4$**

Pour éviter $K_4$, la meilleure stratégie est de diviser les sommets en 3 groupes (graphe tri-parti).

### Contre-exemples

**Contre-exemple 1 : Sous-graphe vs Induit**

Dans $K_3$ (triangle $abc$), le graphe avec sommets $\{a,b,c\}$ et arêtes $\{\{a,b\}, \{b,c\}\}$ (chemin) est un sous-graphe de $K_3$, mais ce n'est PAS un sous-graphe *induit*, car dans $K_3$, $a$ et $c$ sont reliés, donc cette arête devrait être présente.

**Contre-exemple 2 : Borne non atteinte**

Un pentagone $C_5$ n'a pas de triangle ($K_3$). Il a 5 sommets et 5 arêtes. La borne de Turán pour $n=5, r=3$ est $\lfloor 5^2/4 \rfloor = 6$. Le pentagone respecte la borne ($5 \leq 6$) mais ne l'atteint pas (le graphe optimal serait $K_{2,3}$ avec 6 arêtes).

### Concepts Associés

- **Théorie extrémale :** Étude des valeurs extrêmes (max/min arêtes) sous contraintes structurelles.
- **Clique maximale :** La plus grande clique contenue dans un graphe.

## Applications

- **Géométrie :** Problème d'Erdős sur les distances (Concept 6.15 du chapitre). Combien de paires de points peuvent être à une distance $> d$ ?
- **Allocation de ressources :** Si les arêtes représentent des conflits, Turán aide à comprendre la densité maximale de conflits tolérable sans créer de "conflit total" entre $r$ parties.

---

## Concept 8 : Théorie de Ramsey

### Prérequis

- Graphes complets ($K_n$).
- Stables (ensemble de sommets sans aucune arête entre eux).
- Principe des tiroirs (Pigeonhole Principle).

### Définition

Le **nombre de Ramsey** $R(s, t)$ est le plus petit entier $n$ tel que :

Tout graphe $G$ d'ordre $n$ contient soit :

- Une clique d'ordre $s$ ($K_s$, $s$ sommets tous reliés).
- Un stable d'ordre $t$ ($S_t$, $t$ sommets aucun relié, ce qui équivaut à une clique dans le complémentaire $\overline{G}$).

En termes simples : "Dans tout graphe suffisamment grand, on trouve de l'ordre (soit beaucoup d'amis, soit beaucoup d'étrangers)."

### Propriétés Clés

- **Symétrie :** $R(s, t) = R(t, s)$.
- **Valeurs limites :** $R(2, t) = t$. (Si on veut éviter un stable de taille $t$, dès qu'on a une arête, on a un $K_2$. Si on n'a aucune arête, on a un $S_n$. Donc il faut $n=t$).
- **Croissance :** Les nombres de Ramsey grandissent très vite avec $s$ et $t$.

### Exemples

**Exemple 1 : $R(3, 3) = 6$ (Le problème de la soirée)**

Dans n'importe quel groupe de 6 personnes, il y a toujours soit 3 personnes qui se connaissent toutes mutuellement (triangle $K_3$), soit 3 personnes qui ne se connaissent pas du tout (stable $S_3$).

Ce n'est pas garanti avec 5 personnes (on peut former un cycle $C_5$ où il n'y a ni triangle ni 3 sommets indépendants).

**Exemple 2 : $R(3, 4) = 9$**

Dans un graphe de 9 sommets, on est sûr d'avoir un triangle ($K_3$) ou un stable de 4 sommets ($S_4$).

**Exemple 3 : Calcul théorique simple**

$R(s, 2) = s$.

On cherche soit un $K_s$, soit un $S_2$ (deux sommets non reliés).

Si le graphe est un graphe complet $K_{s-1}$, il n'a pas de $S_2$ et pas de $K_s$.

Si on ajoute un sommet pour avoir $s$ sommets, soit c'est un $K_s$, soit il manque une arête et on a un $S_2$.

### Contre-exemples

**Contre-exemple 1 : $n < R(s,t)$**

Pour $n=5$ et on cherche $K_3$ ou $S_3$. Le pentagone $C_5$ est le contre-exemple qui prouve que $R(3,3) > 5$. Il ne contient ni triangle, ni 3 sommets indépendants.

**Contre-exemple 2 : Connaissance exacte**

On ne connait pas la valeur exacte de $R(5, 5)$. On sait juste qu'elle est entre 43 et 48. C'est un exemple de problème simple à énoncer mais extrêmement difficile à résoudre numériquement.

### Concepts Associés

- **Graphe complémentaire :** $\overline{G}$ a les mêmes sommets que $G$, mais les arêtes sont inversées (présentes $\leftrightarrow$ absentes). Ramsey dit que $G$ contient $K_s$ ou $\overline{G}$ contient $K_t$.
- **Principe des tiroirs :** Outil fondamental pour prouver l'existence de ces structures.

## Applications

- Théorie de l'information.
- Mathématiques pures (Théorie des nombres, Géométrie combinatoire).
- Prouve que le désordre total est impossible à grande échelle.

# Introduction à la théorie de graphes (A)

---

## Concept 1 : Définition d'un Graphe Simple Non-Orienté

### Prérequis

- Théorie des ensembles (ensembles finis, cardinalité, sous-ensembles).
- Notion de paires (ensembles à 2 éléments).

### Définition

Un **graphe simple non-orienté** $G$ est défini comme un couple $G = (S, A)$ où :

1.  $S$ est un ensemble fini non vide appelé l'ensemble des **sommets** (ou nœuds).
2.  $A$ est un sous-ensemble de $\mathcal{P}_2(S)$, l'ensemble des parties de $S$ à deux éléments. Les éléments de $A$ sont appelés les **arêtes**.

Si $\{s, s'\} \in A$, on dit que les sommets $s$ et $s'$ sont **adjacents** ou **voisins**. Ces sommets sont les **extrémités** de l'arête.

L'**ordre** du graphe est le nombre de sommets, noté $|S|$.

### Propriétés Clés

- **Symétrie de l'adjacence** : Dans un graphe non-orienté, la relation "être voisin de" est symétrique. Si $s$ est relié à $s'$, alors $s'$ est relié à $s$.
- **Absence de boucle** : Une arête est une paire de sommets *distincts* (car c'est un élément de $\mathcal{P}_2(S)$). Un sommet ne peut pas être relié à lui-même.
- **Unicité de l'arête** : Entre deux sommets donnés, il existe au plus une arête (pas d'arêtes multiples).
- **Représentation graphique** : Un graphe peut être dessiné de multiples façons (placement des points, tracé des lignes), mais le dessin n'est qu'une représentation de la structure mathématique $(S, A)$.

### Exemples

**Exemple 1 : Le Carré**

Soit le graphe $G_1 = (S_1, A_1)$ défini par :

$$S_1 = \{a, b, c, d\}$$

$$A_1 = \{\{a, b\}, \{b, c\}, \{c, d\}, \{d, a\}\}$$

C'est un graphe d'ordre 4. Visuellement, cela correspond aux côtés d'un carré.

**Exemple 2 : Le Triangle avec un sommet isolé**

Soit le graphe $G_2 = (S_2, A_2)$ défini par :

$$S_2 = \{1, 2, 3, 4\}$$

$$A_2 = \{\{1, 2\}, \{2, 3\}, \{1, 3\}\}$$

Ici, les sommets $\{1, 2, 3\}$ forment un triangle, et le sommet $4$ n'a aucune arête incidente.

**Exemple 3 : Graphe sur un ensemble abstrait**

Soit $S_3 = \{ \emptyset, \{\emptyset\}, \{\{\emptyset\}\} \}$ et on définit une arête entre deux ensembles si l'un est inclus dans l'autre.

$$A_3 = \{ \{ \emptyset, \{\emptyset\} \}, \{ \{\emptyset\}, \{\{\emptyset\}\} \}, \{ \emptyset, \{\{\emptyset\}\} \} \}$$

Ceci forme un triangle complet ($K_3$) sur ces 3 éléments.

### Contre-exemples

**Contre-exemple 1 : Multigraphe**

Le couple $(\{a, b\}, \{e_1, e_2\})$ où $e_1$ et $e_2$ relient tous deux $a$ et $b$ n'est pas un graphe simple, car il y a deux arêtes entre les mêmes sommets.

**Contre-exemple 2 : Graphe avec boucles**

Si $A$ contient l'élément $\{a, a\}$ (ou simplement $\{a\}$ selon la notation), ce n'est pas un graphe simple, car une arête doit relier deux sommets distincts.

### Concepts Liés

- **Sous-graphe** : Partie d'un graphe.
- **Multigraphe** : Extension autorisant les arêtes multiples.
- **Graphe orienté** : Où les arêtes sont des couples ordonnés $(u, v)$.

---

## Concept 2 : Isomorphisme de Graphes

### Prérequis

- Concept de graphe (Concept 1).
- Bijections et fonctions.

### Définition

Deux graphes $G = (S, A)$ et $G' = (S', A')$ sont dits **isomorphes** (noté $G \cong G'$) s'il existe une bijection $\varphi : S \to S'$ telle que pour tout couple de sommets $\{x, y\} \in \mathcal{P}_2(S)$ :

$$\{x, y\} \in A \iff \{\varphi(x), \varphi(y)\} \in A'$$

La bijection $\varphi$ est appelée un **isomorphisme**.

### Propriétés Clés

- **Préservation de la structure** : L'isomorphisme préserve l'adjacence. Deux sommets sont voisins dans $G$ si et seulement si leurs images sont voisines dans $G'$.
- **Relation d'équivalence** : La relation "être isomorphe" est réflexive, symétrique et transitive.
- **Invariants** : Deux graphes isomorphes ont nécessairement le même ordre, le même nombre d'arêtes et la même suite de degrés.
- **Renommage** : Intuitivement, deux graphes sont isomorphes si l'on peut passer de l'un à l'autre simplement en renommant les sommets et en redessinant les arêtes sans les couper.

### Exemples

**Exemple 1 : Le chemin à 3 sommets**

Soit $G = (\{1, 2, 3\}, \{\{1, 2\}, \{2, 3\}\})$ et $H = (\{a, b, c\}, \{\{a, c\}, \{c, b\}\})$.

Ces graphes sont isomorphes via la bijection $\varphi$ :

$$\varphi(1) = a, \quad \varphi(2) = c, \quad \varphi(3) = b$$

On vérifie les arêtes : $\{1, 2\} \to \{a, c\} \in A(H)$ et $\{2, 3\} \to \{c, b\} \in A(H)$.

**Exemple 2 : Le carré et le "huit"**

Un graphe dessiné comme un carré $a-b-c-d-a$ est isomorphe à un graphe dessiné comme un sablier où les arêtes se croisent ($a$ relié à $b$, $b$ à $c$, $c$ à $d$, $d$ à $a$), tant que la connectivité reste identique. La position géométrique ne compte pas.

**Exemple 3 : Complémentarité**

Si $G \cong H$, alors leurs complémentaires sont aussi isomorphes : $\overline{G} \cong \overline{H}$.

### Contre-exemples

**Contre-exemple 1 : Inégalité des arêtes**

Un graphe $G$ avec 4 sommets et 3 arêtes ne peut pas être isomorphe à un graphe $H$ avec 4 sommets et 4 arêtes, car aucune bijection ne peut satisfaire la condition d'équivalence des arêtes.

**Contre-exemple 2 : Structure différente malgré même ordre et taille**

Soit $G$ un cycle de 4 sommets ($C_4$) et $H$ un triangle avec un sommet rattaché à l'un des sommets du triangle. Ils ont tous deux 4 sommets et 4 arêtes. Cependant, dans $H$, il y a un sommet de degré 3 (celui du triangle relié à l'extérieur) et un sommet de degré 1. Dans $C_4$, tous les sommets ont degré 2. Ils ne sont pas isomorphes.

### Concepts Liés

- **Classes d'isomorphisme** : Regroupement de tous les graphes isomorphes entre eux.
- **Complexité algorithmique** : Le problème de l'isomorphisme de graphe est notoirement difficile à résoudre algorithmiquement pour de grands graphes.

## Applications

- **Chimie** : Identifier si deux molécules ont la même structure topologique.
- **Reconnaissance de motifs** : Identifier des structures similaires dans des réseaux sociaux ou informatiques.

---

## Concept 3 : Familles Classiques de Graphes (Bestiaire)

### Prérequis

- Définition de graphe et notations d'ensembles.
- Arithmétique modulaire (pour les cycles).

### Définition

Voici les définitions formelles de certaines familles de graphes fondamentales d'ordre $n$ :

1.  **Stable ($S_n$)** : Graphe sans aucune arête. $A(S_n) = \varnothing$.
2.  **Graphe Complet ($K_n$)** : (ou Clique). Tous les sommets sont connectés deux à deux. $A(K_n) = \mathcal{P}_2(S)$.
3.  **Chaîne ($P_n$)** : (Attention : $P_n$ est souvent défini par sa longueur $n$, donc $n+1$ sommets). Sommets $\{0, \dots, n\}$, arêtes $\{i, i+1\}$.
4.  **Cycle ($C_n$)** : Sommets $\{1, \dots, n\}$, arêtes $\{i, j\}$ si $|i-j|=1$ ou si $\{i, j\} = \{1, n\}$.
5.  **Graphe Biparti Complet ($K_{n,m}$)** : Sommets partitionnés en deux ensembles $U$ (taille $n$) et $V$ (taille $m$). Toutes les arêtes possibles entre $U$ et $V$ existent, aucune arête à l'intérieur de $U$ ou de $V$.

### Propriétés Clés

- **Taille de $K_n$** : Un graphe complet d'ordre $n$ possède exactement $\binom{n}{2} = \frac{n(n-1)}{2}$ arêtes.
- **Régularité** : $K_n$ est $(n-1)$-régulier. $C_n$ est 2-régulier.
- **Bipartition** : $C_n$ est biparti si et seulement si $n$ est pair. $K_{n,m}$ est par définition biparti.

### Exemples

**Exemple 1 : $K_3$ (Le Triangle)**

$S = \{1, 2, 3\}$, $A = \{\{1, 2\}, \{2, 3\}, \{1, 3\}\}$. C'est aussi isomorphe à $C_3$.

**Exemple 2 : $K_{1,3}$ (L'Étoile)**

Un sommet central relié à 3 feuilles. $S = \{c, f_1, f_2, f_3\}$, $A = \{\{c, f_1\}, \{c, f_2\}, \{c, f_3\}\}$.

**Exemple 3 : $Q_2$ (L'Hypercube de dimension 2)**

Sommets $\{00, 01, 10, 11\}$. Arêtes entre sommets différant d'un bit : $\{00, 01\}, \{00, 10\}, \{11, 01\}, \{11, 10\}$. C'est isomorphe à un cycle $C_4$.

### Contre-exemples

**Contre-exemple 1**

$P_3$ (chaîne de longueur 3, donc 4 sommets) n'est pas isomorphe à $C_4$ car $P_3$ a deux sommets de degré 1 (les extrémités), alors que $C_4$ n'en a aucun.

**Contre-exemple 2**

$K_{2,2}$ (carré) est un graphe biparti complet, mais $K_3$ (triangle) ne l'est pas car on ne peut pas partitionner ses sommets en deux ensembles indépendants.

### Concepts Liés

- **Connexité** : $S_n$ est totalement déconnecté (pour $n>1$), tandis que $K_n$, $P_n$, $C_n$ sont connexes.

---

## Concept 4 : Degrés et Lemme des Poignées de Main

### Prérequis

- Définition de graphe.
- Sommations.

### Définition

Le **degré** d'un sommet $x$, noté $d(x)$, est le nombre de ses voisins (le cardinal de son voisinage).

$$d(x) = |\{y \in S \setminus \{x\} : \{x, y\} \in A\}|$$

Le **Lemme des poignées de main** (Théorème 6.6) énonce que pour tout graphe $G=(S, A)$ :

$$\sum_{s \in S} d(s) = 2|A|$$

### Propriétés Clés

- **Parité de la somme** : La somme des degrés est toujours paire.
- **Lien sommets/arêtes** : Ce théorème relie une propriété locale (degré) à une propriété globale (nombre d'arêtes).
- **Corollaire important** : Dans tout graphe, le nombre de sommets de degré impair est pair.

### Exemples

**Exemple 1 : Calcul sur un graphe simple**

Soit un triangle $K_3$. Chaque sommet a un degré 2.

Somme des degrés = $2 + 2 + 2 = 6$.

Nombre d'arêtes $|A| = 3$.

On vérifie : $6 = 2 \times 3$.

**Exemple 2 : Graphe $3$-régulier**

Si un graphe a 10 sommets et que chaque sommet a un degré 3.

Somme des degrés = $10 \times 3 = 30$.

Nombre d'arêtes = $30 / 2 = 15$.

**Exemple 3 : Application du Corollaire**

Est-il possible d'avoir un groupe de 5 personnes où chacun connaît exactement 3 autres personnes ?

Cela correspondrait à un graphe d'ordre 5 où chaque degré est 3 (impair).

Nombre de sommets de degré impair = 5.

Or, 5 est impair. D'après le corollaire, ce graphe est **impossible**.

### Contre-exemples

**Contre-exemple 1 : Suite de degrés impossible**

La suite de degrés $(1, 1, 1, 2)$ est impossible. Somme = 5 (impair), ce qui viole le lemme des poignées de main.

**Contre-exemple 2**

Un graphe où $\sum d(s) = |A|$ est impossible (sauf si le graphe est vide), car chaque arête contribue pour 2 à la somme (une fois pour chaque extrémité).

### Concepts Liés

- **Matrices d'incidence** : Le lemme peut être prouvé via la matrice d'incidence.
- **Graphes eulériens** : L'existence de cycles eulériens dépend de la parité des degrés.

---

## Concept 5 : Matrices Associées (Incidence et Adjacence)

### Prérequis

- Matrices, dimensions, indices lignes/colonnes.
- Degrés de sommets.

### Définition

Pour un graphe $G$ avec sommets $s_1, \dots, s_n$ et arêtes $a_1, \dots, a_m$ :

1.  **Matrice d'incidence** ($M \in \mathcal{M}_{n,m}$) :

    $$m_{i,j} = 1 \text{ si } s_i \in a_j, \quad 0 \text{ sinon.}$$

2.  **Matrice d'adjacence** ($A_G \in \mathcal{M}_{n,n}$) :

    $$a_{i,j} = 1 \text{ si } \{s_i, s_j\} \in A, \quad 0 \text{ sinon.}$$

### Propriétés Clés

- **Matrice d'incidence** : La somme de chaque colonne est exactement 2 (chaque arête a 2 extrémités). La somme de la ligne $i$ est le degré $d(s_i)$.
- **Matrice d'adjacence** : Elle est **symétrique** ($a_{i,j} = a_{j,i}$) pour les graphes non-orientés. Sa diagonale est nulle (pas de boucles). La somme de la ligne $i$ est $d(s_i)$.
- **Spectre** : Les valeurs propres de la matrice d'adjacence donnent des informations profondes sur le graphe (théorie spectrale).

### Exemples

**Exemple 1 : Matrice d'adjacence de $P_2$**

Graphe $1-2-3$. Sommets $\{1, 2, 3\}$.

$$A_G = \begin{pmatrix} 0 & 1 & 0 \\ 1 & 0 & 1 \\ 0 & 1 & 0 \end{pmatrix}$$

**Exemple 2 : Matrice d'incidence d'un triangle $K_3$**

Sommets $\{1, 2, 3\}$, Arêtes $e_1=\{1,2\}, e_2=\{2,3\}, e_3=\{1,3\}$.

$$M = \begin{pmatrix} 1 & 0 & 1 \\ 1 & 1 & 0 \\ 0 & 1 & 1 \end{pmatrix}$$

Colonne 1 (pour $e_1$) a des 1 aux lignes 1 et 2.

**Exemple 3 : Lien avec les degrés**

Dans l'exemple précédent, la somme de la première ligne est $1+0+1 = 2$, ce qui est bien le degré du sommet 1 dans un triangle.

### Contre-exemples

**Contre-exemple 1**

Une matrice d'adjacence avec des $1$ sur la diagonale représente un graphe avec des boucles, pas un graphe simple au sens strict du chapitre.

**Contre-exemple 2**

Une matrice non symétrique ne peut pas être la matrice d'adjacence d'un graphe non-orienté.

### Concepts Liés

- **Marches aléatoires** : Utilisent la matrice d'adjacence normalisée.
- **Compter les chemins** : La puissance $k$-ième de la matrice d'adjacence, $(A_G)^k$, donne le nombre de chemins de longueur $k$ entre deux sommets.

---

## Concept 6 : Théorème de Havel-Hakimi (Suites Graphiques)

### Prérequis

- Tri de suites d'entiers.
- Notion de degré.
- Récurrence / Algorithmique.

### Définition

Une suite d'entiers est dite **graphique** si elle correspond à la suite des degrés d'un graphe simple.

Le **Théorème de Havel-Hakimi** fournit un algorithme pour déterminer si une suite est graphique :

Une suite triée $d_1 \leq \dots \leq d_n$ est graphique si et seulement si la suite réduite obtenue en supprimant $d_n$ et en soustrayant 1 aux $d_n$ plus grands éléments restants est graphique (après re-tri éventuel).

La condition d'arrêt est qu'une suite de zéros est toujours graphique (graphe sans arêtes).

### Propriétés Clés

- **Algorithmique** : Ce théorème est constructif. Il permet non seulement de dire oui/non, mais de construire le graphe étape par étape.
- **Condition Nécessaire** : La somme des termes doit être paire (Lemme des poignées de main), mais ce n'est pas suffisant. Havel-Hakimi est nécessaire et suffisant.

### Exemples

**Exemple 1 : Test de la suite $(1, 1, 1, 3, 4)$**

1. Suite : $(1, 1, 1, 3, 4)$. On retire 4. Il faut réduire les 4 termes restants.
2. Réduction : $(1-1, 1-1, 1-1, 3-1) = (0, 0, 0, 2)$.
3. On retire 2. Il faut réduire 2 termes restants parmi les plus grands.
4. Réduction sur $(0, 0, 0)$ en retirant le dernier 0 (non, on retire le 2): reste $(0, 0, 0)$. On retire 1 aux deux plus grands (les 0).
5. On obtiendrait $(-1, -1, 0)$. Impossible (degré négatif).

Conclusion : La suite n'est pas graphique.

**Exemple 2 : Test de la suite $(3, 3, 2, 2, 2)$** (Décroissant pour faciliter le calcul)

1. On retire le premier 3. On soustrait 1 aux 3 suivants : $(3-1, 2-1, 2-1, 2) \to (2, 1, 1, 2)$.
2. On re-trie : $(2, 2, 1, 1)$.
3. On retire un 2. On soustrait 1 aux 2 suivants : $(2-1, 1-1, 1) \to (1, 0, 1)$.
4. On re-trie : $(1, 1, 0)$.
5. On retire 1. On soustrait 1 au suivant : $(1-1, 0) \to (0, 0)$.
6. $(0, 0)$ est graphique (2 sommets isolés).

Conclusion : La suite initiale est graphique.

**Exemple 3 : Construction**

Si la suite réduite est graphique, on remonte les étapes en ajoutant un sommet et en le connectant aux sommets dont on a réduit le degré.

### Contre-exemples

**Contre-exemple 1**

La suite $(2, 2, 2)$ pour 3 sommets est graphique ($K_3$).

Mais la suite $(3, 3, 3)$ pour 3 sommets est impossible (le degré max est $n-1 = 2$). Havel-Hakimi donnerait des degrés négatifs ou un manque de termes à réduire.

**Contre-exemple 2**

Toute suite dont la somme est impaire échoue immédiatement, mais Havel-Hakimi le détectera en finissant par une incohérence (comme un besoin de réduire plus de termes qu'il n'en reste).

### Concepts Liés

- **Théorème d'Erdős-Gallai** : Autre caractérisation des suites graphiques basée sur des inégalités.

---

## Concept 7 : Sous-graphes et Théorème de Turán

### Prérequis

- Inclusion d'ensembles.
- Graphes complets ($K_n$).
- Optimisation sous contrainte.

### Définition

- **Sous-graphe induit** $G[S']$ : On garde un sous-ensemble de sommets $S' \subset S$ et **toutes** les arêtes de $G$ qui relient deux sommets de $S'$.
- **Théorème de Turán** : Soit $G$ un graphe d'ordre $n$ ne contenant pas de $K_r$ (clique de taille $r$). Alors le nombre maximal d'arêtes $m$ est :

$$m \leq \left( 1 - \frac{1}{r - 1} \right) \frac{n^2}{2}$$

### Propriétés Clés

- **Graphe de Turán** : La borne est atteinte par le graphe de Turán, qui est un graphe multipartite complet équilibré (les sommets sont divisés en $r-1$ groupes de tailles aussi égales que possible).
- **Extrémal** : C'est un résultat fondateur de la "Théorie extrémale des graphes" : combien d'arêtes peut-on avoir sans créer une certaine structure ?

### Exemples

**Exemple 1 : Graphe sans triangle ($r=3$)**

On cherche le max d'arêtes pour un graphe d'ordre $n$ sans $K_3$.

Formule : $m \leq (1 - \frac{1}{2}) \frac{n^2}{2} = \frac{n^2}{4}$.

Pour $n=4$, max arêtes = 4. C'est le graphe biparti complet $K_{2,2}$ (le carré). Il n'a pas de triangle.

**Exemple 2 : Graphe induit**

Si $G$ est un carré $a-b-c-d-a$. Le sous-graphe induit par $\{a, c\}$ est deux sommets isolés (car pas d'arête $\{a, c\}$ dans $G$). Le sous-graphe induit par $\{a, b, c\}$ est une chaîne $a-b-c$.

**Exemple 3 : Application géométrique (Erdős)**

Dans un ensemble de $n$ points de diamètre 1, le nombre de paires distantes de plus de $1/\sqrt{2}$ est borné par $n^2/3$. Cela vient du fait que le graphe des "grandes distances" ne peut pas contenir de $K_4$ géométriquement.

### Contre-exemples

**Contre-exemple 1 : Sous-graphe non induit**

Prendre $K_3$ (sommets $\{1,2,3\}$, arêtes toutes présentes). Le graphe avec les mêmes sommets mais juste l'arête $\{1,2\}$ est un sous-graphe, mais pas un sous-graphe *induit*, car l'arête $\{2,3\}$ existe dans $G$ mais a été omise.

**Contre-exemple 2 : Dépassement de la borne**

Un graphe d'ordre 4 avec 5 arêtes contient nécessairement un $K_3$. En effet, la borne de Turán pour $r=3, n=4$ est 4. Si on a 5 arêtes, on dépasse la borne, donc l'hypothèse "ne contient pas $K_3$" est fausse.

### Concepts Liés

- **Clique maximale** : La taille de la plus grande clique est notée $\omega(G)$.
- **Nombre chromatique** : Le graphe de Turán est $(r-1)$-coloriable.

---

## Concept 8 : Nombre de Ramsey

### Prérequis

- Clique ($K_s$) et Stable ($S_t$).
- Complémentaire d'un graphe.
- Principe des tiroirs.

### Définition

Le **nombre de Ramsey** $R(s, t)$ est le plus petit entier $n$ tel que tout graphe d'ordre $n$ contient :

- Soit une clique d'ordre $s$ ($K_s$).
- Soit un stable d'ordre $t$ ($S_t$).

De manière équivalente, quelle que soit la façon dont on colorie les arêtes d'un $K_n$ en bleu ou rouge, il y a soit un $K_s$ tout bleu, soit un $K_t$ tout rouge.

### Propriétés Clés

- **Existence** : $R(s, t)$ est fini (Théorème de Ramsey).
- **Symétrie** : $R(s, t) = R(t, s)$.
- **Borne supérieure** : $R(s, t) \leq \binom{s+t-2}{s-1}$.
- **Valeurs limites** : $R(2, t) = t$.

### Exemples

**Exemple 1 : $R(3, 3) = 6$**

Dans tout groupe de 6 personnes, il y a soit 3 personnes qui se connaissent toutes ($K_3$), soit 3 personnes qui ne se connaissent pas du tout ($S_3$).

Pour 5 personnes, ce n'est pas garanti (le cycle $C_5$ ne contient ni triangle ni stable de 3 sommets).

**Exemple 2 : Calcul avec la borne**

Estimation de $R(3, 4)$.

Formule : $R(3, 4) \leq R(2, 4) + R(3, 3) = 4 + 6 = 10$.

(La valeur réelle est $R(3, 4) = 9$).

**Exemple 3 : $R(s, 2)$**

On cherche $n$ pour avoir $K_s$ ou $S_2$. Un stable $S_2$ signifie deux sommets non reliés.

Si le graphe n'a pas de $S_2$, c'est que toutes les paires sont reliées. Donc c'est un graphe complet.

Pour avoir $K_s$, il faut $s$ sommets. Donc $R(s, 2) = s$.

### Contre-exemples

**Contre-exemple 1 : $n < R(s, t)$**

Si $n=5$, on peut construire un graphe (le pentagone $C_5$) qui n'a ni $K_3$ ni $S_3$. Donc $R(3, 3) > 5$.

**Contre-exemple 2**

Penser que $R(s, t) = (s-1)(t-1) + 1$. C'est une borne inférieure commune mais pas la valeur exacte. La croissance est exponentielle.

### Concepts Liés

- **Théorie de Ramsey** : "Le désordre complet est impossible". Toute structure assez grande contient une sous-structure ordonnée.
- **Principe des tiroirs** : Utilisé fondamentalement dans la preuve de l'existence des nombres de Ramsey.

## Applications

- **Théorie de l'information** : Bornes sur les capacités de communication.
- **Géométrie combinatoire** : Problèmes de type "Happy Ending Problem" (polygones convexes dans des ensembles de points).
