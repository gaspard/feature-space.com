---
id: 8f9423aa
type: concepts
order: 10
title: 'Chaînes, parcours, cycles et tours - concepts (A)'
tags:
  - Graphes
  - Chaînes
  - Parcours
  - Connexité
  - Distance
  - Dijkstra
  - Eulérien
  - Hamiltonien
  - Arbres
course: Graphes et Combinatoire
courseId: 7027276b
chapter: 'Chaînes, parcours, cycles et tours'
chapterId: b866ccc5
level: regular
createdAt: '2025-12-19T13:05:28.995Z'
---
# Chaînes, parcours, cycles et tours (A)

---

## Concept 1 : Chaînes et Parcours

### Prérequis

- Définition d'un graphe $G = (S, A)$
- Notion de sous-graphe
- Notion d'arête et de sommets adjacents

### Définition

Dans un graphe $G = (S, A)$, il est fondamental de distinguer les déplacements où l'on peut repasser par le même endroit et ceux où les éléments doivent être distincts.

Soit $k \in \mathbb{N}$ un entier naturel.

1.  Un **parcours** de longueur $k$ est une suite de sommets $(s_0, s_1, \dots, s_k)$ où chaque paire consécutive $\{s_i, s_{i+1}\}$ forme une arête de $G$.
    -   On peut repasser plusieurs fois par le même sommet ou la même arête.
    -   $s_0$ est l'**origine**, $s_k$ est l'**extrémité**. On dit que le parcours **relie** $s_0$ et $s_k$.

2.  Une **$k$-chaîne** (ou chaîne de longueur $k$) est un parcours particulier où tous les **sommets sont distincts** deux à deux.
    -   C'est un sous-graphe isomorphe à une ligne de $k$ arêtes.

**Remarque de vocabulaire :** Attention, certains ouvrages (comme le polycopié de Bernardi) inversent ces termes. Dans ce cours, "chaîne" implique l'unicité des sommets ("élémentaire"), alors que "parcours" est le terme général.

### Propriétés Clés

-   **Relation Parcours/Chaîne :** Une chaîne est toujours un parcours, mais la réciproque est fausse.
-   **Réduction (Lemme 7.3) :** S'il existe un *parcours* reliant deux sommets $x$ et $y$, alors il existe nécessairement une *chaîne* (sans répétition de sommets) reliant $x$ et $y$. On peut l'obtenir en supprimant les boucles inutiles du parcours.

### Exemples

Considérons un graphe triangle avec les sommets $S=\{1, 2, 3\}$ et les arêtes $\{\{1,2\}, \{2,3\}, \{3,1\}\}$.

**Exemple 1 : Une chaîne**

La suite $(1, 2, 3)$ est une chaîne de longueur 2.

-   Arêtes empruntées : $\{1,2\}$ puis $\{2,3\}$.
-   Les sommets 1, 2 et 3 sont tous distincts.

**Exemple 2 : Un parcours (qui n'est pas une chaîne)**

La suite $(1, 2, 3, 1, 2)$ est un parcours de longueur 4.

-   Il relie le sommet 1 au sommet 2.
-   Ce n'est pas une chaîne car les sommets 1 et 2 apparaissent deux fois.

**Exemple 3 : Parcours de longueur 0**

La suite $(s_0)$ composée d'un seul sommet est un parcours de longueur 0 reliant $s_0$ à lui-même. C'est aussi une chaîne triviale.

### Contre-exemples

-   Dans le graphe ci-dessus, la suite $(1, 3, 2)$ est une chaîne. Cependant, la suite $(1, 3, 4)$ **n'est pas** un parcours ni une chaîne, car le sommet 4 n'existe pas dans le graphe (ou s'il existait mais n'était pas relié à 3, $\{3,4\}$ ne serait pas une arête).

### Concepts Liés

-   **Connexité :** L'existence d'une chaîne entre deux points définit la connexité.
-   **Cycles et Tours :** Ce sont les équivalents "fermés" (où le début est la fin) des chaînes et parcours.

## Applications

-   Planification de trajet (trouver une route sans passer deux fois au même endroit).
-   Réseaux informatiques (routage de paquets).

---

## Concept 2 : Cycles et Tours

### Prérequis

- Concept 1 : Chaînes et Parcours
- Notion d'ordre d'un graphe

### Définition

Il s'agit des concepts de déplacements "fermés", où l'on revient au point de départ ($s_0 = s_k$).

1.  Un **tour** de longueur $k$ est un parcours fermé $(s_0, s_1, \dots, s_k)$ où $s_0 = s_k$ et toutes les **arêtes** $\{s_i, s_{i+1}\}$ empruntées sont **distinctes**.
    -   On peut repasser par un sommet, mais pas emprunter la même arête deux fois.

2.  Un **$k$-cycle** (ou cycle de longueur $k$) est un tour particulier où tous les **sommets** $s_0, \dots, s_{k-1}$ sont **distincts**.
    -   Seuls le premier et le dernier sommet sont identiques ($s_0 = s_k$).
    -   Un cycle a un ordre $k \geq 3$.

### Propriétés Clés

-   **Structure :** Un $k$-cycle est un sous-graphe régulier de degré 2 connexe.
-   **Hiérarchie :** Tout cycle est un tour (car si les sommets sont distincts, les arêtes entre eux le sont forcément), mais tout tour n'est pas un cycle.

### Exemples

Soit un graphe en forme de "8" : deux triangles $1-2-3-1$ et $3-4-5-3$ se touchant au sommet 3.

**Exemple 1 : Un cycle**

La suite $(1, 2, 3, 1)$ est un 3-cycle.

-   Sommets distincts (sauf 1 à la fin).
-   Longueur 3.

**Exemple 2 : Un tour**

La suite $(1, 2, 3, 4, 5, 3, 1)$ est un tour de longueur 6.

-   Il parcourt les deux triangles.
-   Toutes les arêtes sont distinctes.
-   Ce **n'est pas un cycle** car le sommet 3 est visité deux fois "au milieu" de la séquence.

### Contre-exemples

-   $(1, 2, 1)$ dans un graphe simple n'est ni un cycle ni un tour (selon la définition stricte de cycle $k \ge 3$, et pour un tour, on emprunte l'arête $\{1,2\}$ à l'aller et l'arête $\{2,1\}$ au retour, qui est la même arête non orientée).
-   Une suite $(1, 2, 3, 4)$ n'est pas un cycle car elle n'est pas fermée ($1 \neq 4$).

### Concepts Liés

-   **Graphes Eulériens :** Basés sur la notion de *tour* (passer par toutes les arêtes).
-   **Graphes Hamiltoniens :** Basés sur la notion de *cycle* (passer par tous les sommets).
-   **Arbres :** Graphes définis par l'absence de cycles.

---

## Concept 3 : Connexité

### Prérequis

- Chaînes et Parcours
- Relation d'équivalence

### Définition

La connexité capture l'idée qu'un graphe est "d'un seul tenant".

1.  **Relation "être relié à" :** Deux sommets $x$ et $y$ sont reliés s'il existe une chaîne (ou un parcours) allant de $x$ à $y$.
2.  **Graphe Connexe :** Un graphe est connexe si pour toute paire de sommets $\{x, y\}$, il existe une chaîne reliant $x$ à $y$.
3.  **Composantes Connexes :** Si un graphe n'est pas connexe, il est divisé en sous-ensembles maximaux de sommets reliés entre eux, appelés composantes connexes.

### Propriétés Clés

-   **Relation d'équivalence (Théorème 7.4) :** La relation "être relié à" est :
    -   *Réflexive* ($x$ est relié à $x$ par un chemin de longueur 0).
    -   *Symétrique* (si $x$ mène à $y$, $y$ mène à $x$ car les graphes sont non orientés ici).
    -   *Transitive* (si $x$ est relié à $y$ et $y$ à $z$, alors $x$ est relié à $z$ par concaténation).
-   **Partition (Théorème 7.5) :** Un graphe est connexe si et seulement si pour toute séparation des sommets en deux groupes $U$ et $V$, il existe au moins une arête reliant un sommet de $U$ à un sommet de $V$.

### Exemples

**Exemple 1 : Graphe Connexe**

Un carré (sommets 1, 2, 3, 4 reliés en boucle).

-   On peut aller de n'importe quel coin à un autre. C'est une seule composante connexe.

**Exemple 2 : Graphe non connexe**

Un graphe $G$ avec $S=\{1, 2, 3, 4\}$ et une seule arête $\{1, 2\}$.

-   Il y a 3 composantes connexes : $\{1, 2\}$, $\{3\}$ et $\{4\}$.
-   Il est impossible d'aller de 1 à 3.

**Exemple 3 : Test de la partition**

Dans l'Exemple 2, si on pose $U=\{1, 2\}$ et $V=\{3, 4\}$, il n'y a aucune arête entre $U$ et $V$. Cela prouve (via le Théorème 7.5) que le graphe n'est pas connexe.

### Concepts Liés

-   **Distance :** Elle n'est finie que si les sommets sont reliés.
-   **Arbres :** Un arbre est un graphe connexe minimal (si on enlève une arête, il n'est plus connexe).

---

## Concept 4 : Distance et Matrice d'Adjacence

### Prérequis

- Connexité
- Matrices, Produit matriciel

### Définition

La notion de distance géométrique est transposée aux graphes en comptant les arêtes.

1.  **Distance $d_G(s, t)$ :** C'est la longueur (nombre d'arêtes) de la chaîne la **plus courte** reliant $s$ à $t$.
    -   Si $s$ et $t$ ne sont pas reliés, $d_G(s, t) = \infty$.
    -   Si $s = t$, $d_G(s, t) = 0$.

2.  **Lien avec la Matrice d'Adjacence :** Soit $A_G$ la matrice d'adjacence du graphe. Le coefficient $(A_G^k)_{ij}$ (ligne $i$, colonne $j$ de la matrice élevée à la puissance $k$) est égal au **nombre de parcours** de longueur exactement $k$ reliant le sommet $s_i$ au sommet $s_j$.

### Propriétés Clés

-   **Inégalité triangulaire :** $d_G(x, z) \leq d_G(x, y) + d_G(y, z)$. Passer par un point intermédiaire $y$ ne peut pas être plus court que le chemin direct optimal.
-   **Calcul de la distance (Corollaire 7.8) :** La distance entre $s_i$ et $s_j$ est la plus petite puissance $k$ telle que l'entrée $(i,j)$ de $A_G^k$ soit non nulle.

### Exemples

**Exemple 1 : Distance dans un carré**

Soit un carré $1-2-3-4-1$.

-   $d_G(1, 2) = 1$ (voisins).
-   $d_G(1, 3) = 2$ (chemin $1-2-3$ ou $1-4-3$).

**Exemple 2 : Matrice d'adjacence**

Si $A_G = \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix}$ (une arête entre 1 et 2).

-   $A_G^2 = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}$.
-   $(A_G^2)_{11} = 1$ : Il y a 1 parcours de longueur 2 de 1 vers 1 (l'aller-retour $1 \to 2 \to 1$).
-   $(A_G^2)_{12} = 0$ : Pas de parcours de longueur 2 de 1 vers 2 (impossible sur une seule arête simple).

### Contre-exemples

-   La distance n'est pas le nombre de sommets entre $s$ et $t$, mais le nombre d'arêtes.
-   Si $G$ n'est pas connexe, la fonction distance ne respecte pas les propriétés d'une distance mathématique classique (à cause de l'infini).

### Concepts Liés

-   **Algorithme de Dijkstra :** Généralisation du calcul de distance pour les graphes où les arêtes ont des poids différents.
-   **Diamètre :** La plus grande distance entre deux sommets quelconques du graphe.

## Applications

-   Théorie des "Six degrés de séparation" (réseaux sociaux).
-   Analyse de la vitesse de propagation d'informations.

---

## Concept 5 : Graphes Valués et Algorithme de Dijkstra

### Prérequis

- Distance
- Algorithmique de base (boucles, conditions)

### Définition

1.  **Graphe Valué $(S, A, \mu)$ :** Un graphe où chaque arête possède un poids (ou coût, longueur) positif donné par la fonction $\mu$. La longueur d'un parcours est la somme des poids des arêtes empruntées.
2.  **Algorithme de Dijkstra :** Une méthode pour trouver le chemin le plus court (de moindre coût) entre un sommet de départ $s$ et tous les autres sommets du graphe.

### Fonctionnement (Idée intuitive)

L'algorithme maintient deux ensembles :

-   $V$ : Les sommets dont on connaît déjà la distance minimale définitive depuis $s$.
-   $W$ : Les sommets restants.

À chaque étape, on choisit le sommet de $W$ le plus proche de $s$, on le déplace dans $V$, et on met à jour les distances potentielles de ses voisins.

### Propriétés Clés

-   **Hypothèse :** Les poids doivent être positifs ($\mu > 0$).
-   **Complexité :** Efficace, environ $O((n+m)\log n)$.
-   **Invariant :** À chaque étape, pour tout sommet dans $V$, la distance calculée est la distance optimale réelle.

### Exemples

**Exemple 1 : Calcul simple**

Sommets $A, B, C$.

Arêtes : $(A,B)$ poids 1, $(B,C)$ poids 2, $(A,C)$ poids 10.

On cherche le chemin de $A$ à $C$.

1.  Départ $A$ : distance 0. Voisins : $B$ (dist 1), $C$ (dist 10).
2.  On valide $B$ (le plus proche). Depuis $B$, on peut aller à $C$. Coût total via $B$ : $1 + 2 = 3$.
3.  On compare : passer par $B$ (coût 3) est mieux que le chemin direct (coût 10). On met à jour la distance de $C$ à 3.

**Exemple 2 : Comparaison avec la distance classique**

Si toutes les arêtes ont un poids de 1, l'algorithme de Dijkstra donne le même résultat que la distance $d_G$ définie précédemment (nombre d'arêtes).

### Contre-exemples

-   Si des arêtes ont des poids négatifs, Dijkstra ne fonctionne pas (il faut utiliser l'algorithme de Bellman-Ford).

### Concepts Liés

-   **GPS et Routage :** C'est l'algorithme de base pour trouver le chemin le plus rapide sur une carte routière.

---

## Concept 6 : Graphes Eulériens

### Prérequis

- Connexité
- Degré d'un sommet
- Tours

### Définition

Ce concept concerne la possibilité de dessiner un graphe sans lever le crayon et sans repasser deux fois sur le même trait.

1.  **Tour Eulérien :** Un tour fermé qui utilise **chaque arête** du graphe exactement une fois.
2.  **Graphe Eulérien :** Un graphe qui possède un tour eulérien.
3.  **Graphe Semi-Eulérien :** Un graphe qui possède un *parcours* (ouvert) utilisant chaque arête exactement une fois (départ et arrivée différents).

### Théorème Fondamental (Théorème 7.11)

Un graphe connexe est **Eulérien** si et seulement si **tous ses sommets sont de degré pair**.

**Corollaire (Semi-eulérien) :** Un graphe connexe est **semi-eulérien** si et seulement si le nombre de sommets de degré impair est exactement **0 ou 2**.

### Exemples

**Exemple 1 : Le Carré (Eulérien)**

Chaque sommet a un degré 2 (pair). On peut faire le tour $1-2-3-4-1$.

**Exemple 2 : L'enveloppe ouverte (Semi-Eulérien)**

Un carré avec une diagonale.

-   2 sommets de degré 3 (les coins de la diagonale).
-   2 sommets de degré 2.
-   Il est semi-eulérien : on doit commencer sur un sommet de degré impair et finir sur l'autre.

**Exemple 3 : Le trident (Non Eulérien)**

Un sommet central relié à 3 feuilles.

-   Le centre est de degré 3. Les feuilles sont de degré 1.
-   4 sommets de degré impair. Impossible de parcourir toutes les arêtes sans en répéter.

### Concepts Liés

-   **Problème des ponts de Königsberg :** L'origine historique de la théorie des graphes (résolu par Euler).

---

## Concept 7 : Graphes Hamiltoniens

### Prérequis

- Connexité
- Cycles
- Degré

### Définition

Contrairement aux graphes eulériens (arêtes), ici on s'intéresse aux sommets.

1.  **Cycle Hamiltonien :** Un cycle qui visite **chaque sommet** du graphe exactement une fois.
2.  **Graphe Hamiltonien :** Un graphe qui contient un cycle hamiltonien.

### Propriétés Clés

-   **Difficulté :** Il n'existe pas de condition nécessaire et suffisante simple (comme "degré pair" pour Euler) pour savoir si un graphe est hamiltonien. C'est un problème algorithmique difficile (NP-complet).
-   **Conditions Suffisantes (Théorème 7.13 & 7.14) :**
    -   Si pour toute paire de sommets non voisins $u, v$, on a $d(u) + d(v) \geq n$ (ordre du graphe), alors le graphe est hamiltonien.
    -   Si le degré minimum $\delta(G) \geq n/2$, le graphe est hamiltonien.

### Exemples

**Exemple 1 : Le Pentagone**

Un cycle de 5 sommets est trivialement hamiltonien (c'est le cycle lui-même).

**Exemple 2 : Graphe Complet $K_n$**

Tout graphe complet ($n \geq 3$) est hamiltonien. On peut visiter les sommets dans n'importe quel ordre.

### Contre-exemples

**Contre-Exemple 1 : L'étoile**

Un sommet central relié à 3 feuilles.

Pour visiter une feuille, on doit aller au centre. Pour aller à la feuille suivante, on doit repasser par le centre. Le centre serait visité plusieurs fois. Ce n'est pas un cycle hamiltonien.

### Concepts Liés

-   **Problème du Voyageur de Commerce :** Trouver le cycle hamiltonien de coût minimal dans un graphe valué.

---

## Concept 8 : Arbres et Forêts

### Prérequis

- Connexité
- Cycles
- Degré

### Définition

Les arbres sont les structures fondamentales sans redondance (pas de boucles).

1.  **Acyclique (Forêt) :** Un graphe qui ne contient aucun cycle.
2.  **Arbre :** Un graphe qui est à la fois **connexe** et **acyclique**.
3.  **Feuille :** Un sommet de degré 1.

### Propriétés Clés (Théorème 7.19)

Il existe de nombreuses définitions équivalentes pour un arbre d'ordre $n$. Un graphe $G$ est un arbre si :

1.  Il est connexe et sans cycle.
2.  Il existe une **chaîne unique** entre toute paire de sommets.
3.  Il est connexe et possède exactement **$n-1$ arêtes**.
4.  Il est sans cycle et possède exactement **$n-1$ arêtes**.
5.  Il est connexe minimal (si on enlève n'importe quelle arête, il n'est plus connexe).

### Exemples

**Exemple 1 : Une chaîne simple**

$1-2-3-4$.

-   C'est connexe.
-   Pas de cycle.
-   4 sommets, 3 arêtes. C'est un arbre.

**Exemple 2 : Une étoile**

Un centre 0 relié à 1, 2, 3, 4.

-   C'est un arbre.
-   Les sommets 1, 2, 3, 4 sont des feuilles.

### Contre-exemples

-   Un triangle (cycle $C_3$) n'est pas un arbre (il n'est pas acyclique).
-   Deux arêtes disjointes ($1-2$ et $3-4$) forment une forêt, mais pas un arbre (pas connexe).

### Applications

-   Arborescence de fichiers dans un ordinateur.
-   Arbres généalogiques.
-   Arbres de décision en probabilités ou algorithmique.
