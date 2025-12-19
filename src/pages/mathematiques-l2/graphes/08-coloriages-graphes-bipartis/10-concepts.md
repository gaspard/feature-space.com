---
id: a7750579
type: concepts
order: 10
title: Chapitre 8 Coloration et graphes bipartis - concepts (A)
tags:
  - Graphes
  - Coloration
  - Nombre chromatique
  - Algorithme glouton
  - Graphes bipartis
course: Graphes et Combinatoire
courseId: 7027276b
chapter: Chapitre 8 Coloration et graphes bipartis
chapterId: dc0134f0
level: regular
createdAt: '2025-12-19T13:11:44.697Z'
---
# Chapitre 8 Coloration et graphes bipartis (A)

---

## Concept 1: Coloration de graphe et nombre chromatique

### Prérequis

- Définition d'un graphe $G=(S, A)$ (sommets et arêtes).
- Notion de sommets voisins (adjacents).
- Notion de sous-graphe, de clique ($K_n$) et de cycle ($C_n$).
- Notion d'ensemble stable (indépendant).

### Définition

Soit $G = (S, A)$ un graphe non orienté.

Une **coloration** de $G$ est une application $f : S \to C$ (où $C$ est un ensemble de "couleurs", souvent des entiers $\{1, 2, \dots, k\}$) qui attribue une couleur à chaque sommet, de telle sorte que deux sommets reliés par une arête aient toujours des couleurs différentes.

Formellement, la condition s'écrit :

$$ \forall \{u, v\} \in A, \quad f(u) \neq f(v) $$

On dit que le graphe $G$ est **$k$-coloriable** s'il existe une coloration valide de $G$ utilisant au plus $k$ couleurs (c'est-à-dire que $|f(S)| \le k$).

Le **nombre chromatique** de $G$, noté $\chi(G)$ (la lettre grecque "khi"), est le plus petit entier $k$ pour lequel le graphe est $k$-coloriable.

### Propriétés clés

*   **Partition en stables :** Si on regroupe tous les sommets ayant la même couleur, on forme des ensembles de sommets qui ne sont pas reliés entre eux. Chaque ensemble de couleur est donc un **stable** (ou *independant set*). Une coloration correspond à une partition de l'ensemble des sommets $S$ en $k$ stables.
*   **Relation avec la taille du graphe :** Pour tout graphe à $n$ sommets, on a $1 \le \chi(G) \le n$.
*   **Valeurs remarquables :**
    *   $\chi(G) = 1$ si et seulement si $G$ ne contient aucune arête (c'est un graphe vide ou $n$-stable).
    *   $\chi(G) = n$ si et seulement si tous les sommets sont reliés entre eux (c'est une clique $K_n$).
    *   Pour un chemin $P_n$ ($n \ge 1$), $\chi(P_n) = 2$ (on alterne les couleurs).
    *   Pour un cycle $C_n$ :
        *   Si $n$ est pair, $\chi(C_n) = 2$.
        *   Si $n$ est impair, $\chi(C_n) = 3$.
    *   Pour le graphe de Petersen, $\chi(\text{Petersen}) = 3$.

### Exemples

**Exemple 1 : Le chemin à 3 sommets ($P_3$)**

Soit le graphe $P_3$ avec $S = \{1, 2, 3\}$ et les arêtes $A = \{\{1, 2\}, \{2, 3\}\}$.

On cherche à colorier ce graphe :

*   On colorie le sommet $1$ en **Bleu**.
*   Le sommet $2$ est voisin de $1$, il doit avoir une couleur différente, disons **Rouge**.
*   Le sommet $3$ est voisin de $2$ (Rouge), mais pas de $1$. On peut donc réutiliser **Bleu** pour le sommet $3$.

La coloration est valide avec 2 couleurs. On ne peut pas faire moins (car il y a des arêtes), donc $\chi(P_3) = 2$.

**Exemple 2 : Le cycle à 3 sommets ($C_3$ ou $K_3$)**

Soit un triangle avec $S = \{1, 2, 3\}$ où tous les sommets sont connectés deux à deux.

*   Sommet $1$ : **Couleur 1**.
*   Sommet $2$ (voisin de 1) : **Couleur 2**.
*   Sommet $3$ (voisin de 1 ET de 2) : Il ne peut être ni Couleur 1, ni Couleur 2. Il faut une **Couleur 3**.

Comme il faut 3 couleurs, $\chi(C_3) = 3$.

**Exemple 3 : Graphe étoile ($K_{1,4}$)**

Soit un graphe avec un sommet central $c$ relié à 4 feuilles $f_1, f_2, f_3, f_4$. Les feuilles ne sont pas reliées entre elles.

*   On donne la couleur $A$ au centre $c$.
*   Toutes les feuilles sont voisines de $c$, elles ne peuvent pas être $A$. Cependant, elles ne sont pas voisines entre elles. On peut donc donner la couleur $B$ à $f_1, f_2, f_3$ et $f_4$.
*   On utilise 2 couleurs ($A$ et $B$).

Donc $\chi(K_{1,4}) = 2$.

### Contre-exemples

**Contre-exemple 1 : Coloration invalide**

Soit un graphe avec une arête reliant $u$ et $v$. Si on définit une application $f$ telle que $f(u) = \text{Rouge}$ et $f(v) = \text{Rouge}$, alors $f$ **n'est pas** une coloration valide, car deux voisins partagent la même couleur.

**Contre-exemple 2 : Nombre chromatique et sous-graphes**

Ce n'est pas parce qu'un graphe contient un cycle $C_4$ (qui nécessite 2 couleurs) que le graphe entier a un nombre chromatique de 2. Si ce $C_4$ fait partie d'un graphe plus complexe contenant aussi un triangle ($K_3$), le nombre chromatique du graphe total sera au moins 3. Le nombre chromatique est déterminé par la contrainte la plus forte dans le graphe.

### Concepts liés

- **Graphes bipartis :** Graphes dont le nombre chromatique est exactement 2 (voir Concept 3).
- **Clique maximale :** Si un graphe contient une clique de taille $k$ ($K_k$), alors $\chi(G) \ge k$.
- **Algorithme glouton :** Méthode pour trouver une coloration (voir Concept 2).

## Applications

- **Attribution de fréquences :** Assigner des fréquences radio à des antennes de sorte que deux antennes proches (voisines) n'interfèrent pas (couleurs différentes).
- **Planification d'horaires :** Assigner des créneaux horaires (couleurs) à des examens (sommets) de sorte que deux examens ayant des étudiants en commun (arête) ne soient pas en même temps.

---

## Concept 2: Algorithme glouton et bornes du nombre chromatique

### Prérequis

- Concept de coloration (Concept 1).
- Notion de voisinage et de degré d'un sommet ($d(v)$).
- Notion de degré maximum du graphe $\Delta(G) = \max_{v \in S} d(v)$.
- Ordonnancement/numérotation des sommets.

### Définition

L'**Algorithme glouton** est une méthode heuristique pour trouver une coloration d'un graphe $G = (S, A)$. Il dépend de l'ordre dans lequel on considère les sommets.

**Algorithme :**

1.  Ordonner les sommets de $G$ : $v_1, v_2, \dots, v_n$.
2.  Disposer d'un ensemble de couleurs ordonnées $\{1, 2, 3, \dots\}$.
3.  Pour $i$ allant de 1 à $n$ :
    *   Attribuer au sommet $v_i$ la **plus petite couleur possible** qui n'est pas déjà utilisée par ses voisins précédemment coloriés ($v_1, \dots, v_{i-1}$).

Grâce à cet algorithme, on obtient la propriété fondamentale suivante liant le nombre chromatique $\chi(G)$ au degré maximum $\Delta(G)$ :

$$ \chi(G) \le \Delta(G) + 1 $$

### Propriétés clés

*   **Dépendance à l'ordre :** Le nombre de couleurs utilisées par l'algorithme glouton dépend fortement de l'ordre des sommets choisi initialement.
*   **Optimalité non garantie :** L'algorithme glouton ne donne pas toujours le nombre chromatique minimal $\chi(G)$. Il donne une borne supérieure.
*   **Justification de la borne $\Delta(G)+1$ :** Lorsqu'on arrive à un sommet $s$ pour le colorier, il a au maximum $\Delta(G)$ voisins. Dans le "pire" des cas, tous ses voisins sont déjà coloriés avec des couleurs différentes. Cela "interdit" $\Delta(G)$ couleurs. Il reste donc toujours au moins la $(\Delta(G)+1)$-ième couleur disponible pour $s$.
*   **Existence d'un ordre optimal :** Il existe toujours un ordre des sommets pour lequel l'algorithme glouton utilise exactement $\chi(G)$ couleurs, mais trouver cet ordre est difficile.

### Exemples

**Exemple 1 : Application sur un chemin $P_4$ (ordre naturel)**

Graphe : $1 - 2 - 3 - 4$.

Ordre de traitement : $1, 2, 3, 4$.

*   Sommet 1 : pas de voisin colorié. $\to$ **Couleur 1**.
*   Sommet 2 : voisin de 1 (Couleur 1). $\to$ **Couleur 2**.
*   Sommet 3 : voisin de 2 (Couleur 2). $\to$ **Couleur 1** (la 1 est libre pour lui).
*   Sommet 4 : voisin de 3 (Couleur 1). $\to$ **Couleur 2**.

Total : 2 couleurs. C'est optimal car $\chi(P_4)=2$.

**Exemple 2 : Application sur un cycle $C_4$ (mauvais ordre)**

Imaginez un cycle $1-2-3-4-1$. Supposons qu'on traite les sommets dans l'ordre $1, 3, 2, 4$ (non contigus d'abord).

*   Sommet 1 : $\to$ **Couleur 1**.
*   Sommet 3 : (non voisin de 1) $\to$ **Couleur 1**.
*   Sommet 2 : voisin de 1 (C1) et de 3 (C1). $\to$ **Couleur 2**.
*   Sommet 4 : voisin de 1 (C1) et de 3 (C1). $\to$ **Couleur 2**.

Total : 2 couleurs. Ici, malgré l'ordre étrange, l'algorithme trouve l'optimal.

**Exemple 3 : Illustration de la borne $\Delta(G) + 1$**

Soit un cycle $C_5$ (pentagone). Le degré de chaque sommet est 2, donc $\Delta(G) = 2$.

La borne nous dit que $\chi(C_5) \le 2 + 1 = 3$.

En effet, on sait que pour un cycle impair, $\chi(C_5) = 3$. La borne est ici atteinte.

### Contre-exemples

**Contre-exemple 1 : L'algorithme glouton n'est pas toujours optimal**

Considérons le graphe biparti $P_4$ avec les arêtes $(1,2), (2,3), (3,4)$.

Supposons l'ordre de traitement : $2, 3, 1, 4$.

*   Sommet 2 : **Couleur 1**.
*   Sommet 3 : voisin de 2 (C1) $\to$ **Couleur 2**.
*   Sommet 1 : voisin de 2 (C1) $\to$ **Couleur 2**.
*   Sommet 4 : voisin de 3 (C2) $\to$ **Couleur 1**.

Ici on utilise 2 couleurs (optimal).

Mais il existe des graphes ("Couronne" par exemple) où un mauvais ordre peut donner un nombre de couleurs bien supérieur à $\chi(G)$, tout en restant inférieur à $\Delta(G)+1$.

**Contre-exemple 2 : La borne n'est pas une égalité**

Pour un graphe étoile $K_{1, 10}$ (un centre, 10 rayons).

Le degré max est $\Delta(G) = 10$.

La borne dit $\chi(G) \le 11$.

Or, on sait que $\chi(K_{1, 10}) = 2$. La différence peut être très grande.

### Concepts liés

- **Algorithme de Welsh-Powell :** Une amélioration de l'algorithme glouton qui trie d'abord les sommets par degré décroissant pour tenter d'améliorer le résultat.
- **Complexité algorithmique :** Déterminer $\chi(G)$ est un problème NP-complet (très difficile), d'où l'usage d'heuristiques comme l'algorithme glouton.

## Applications

- **Allocation de registres en compilation :** Les variables sont les sommets. Si deux variables sont actives en même temps, elles sont reliées. On veut minimiser le nombre de registres processeur (couleurs) utilisés. L'algorithme glouton est souvent utilisé pour sa rapidité.

---

## Concept 3: Graphes bipartis et caractérisation par les cycles

### Prérequis

- Coloration (Concept 1).
- Notion de chemin et de cycle dans un graphe.
- Parité (nombre pair/impair).
- Connexité.

### Définition

Un graphe $G=(S, A)$ est dit **biparti** s'il est **2-coloriable**. Cela signifie que $\chi(G) \le 2$.

De manière équivalente, un graphe est biparti si l'on peut diviser l'ensemble de ses sommets $S$ en deux parties disjointes (classes) $X$ et $Y$ ($S = X \sqcup Y$) de telle sorte que :

*   Toutes les arêtes du graphe relient un sommet de $X$ à un sommet de $Y$.
*   Aucune arête ne relie deux sommets de $X$.
*   Aucune arête ne relie deux sommets de $Y$.

Une propriété fondamentale (Théorème 8.5) permet de les identifier :

**Un graphe est biparti si et seulement s'il ne contient aucun cycle de longueur impaire.**

### Propriétés clés

*   **Classes de bipartition :** Les ensembles $X$ et $Y$ sont des ensembles stables (couleur 1 et couleur 2).
*   **Cycles pairs :** Un graphe biparti peut contenir des cycles, mais ils doivent obligatoirement être de longueur paire (4, 6, 8...).
*   **Graphes sans arêtes :** Un graphe sans aucune arête est biparti (on peut mettre tous les sommets dans $X$ et $Y=\emptyset$, ou n'importe quelle autre répartition, car la condition sur les arêtes est satisfaite par vacuité).
*   **Implication algorithmique :** On peut vérifier si un graphe est biparti en temps polynomial (par un parcours en largeur/profondeur) contrairement au calcul général du nombre chromatique.

### Exemples

**Exemple 1 : Le carré ($C_4$)**

Le cycle $1-2-3-4-1$ est de longueur 4 (pair).

On peut partitionner les sommets en :

$X = \{1, 3\}$ et $Y = \{2, 4\}$.

Les arêtes sont $\{1,2\}, \{2,3\}, \{3,4\}, \{4,1\}$.

Chaque arête relie bien un élément de $X$ à un élément de $Y$. C'est un graphe biparti.

**Exemple 2 : Graphe biparti complet $K_{2,3}$**

Soit $X = \{u_1, u_2\}$ et $Y = \{v_1, v_2, v_3\}$.

Toutes les arêtes possibles entre $X$ et $Y$ existent.

Aucune arête n'existe à l'intérieur de $X$ ou de $Y$.

C'est un graphe biparti par définition.

**Exemple 3 : Arbres**

Tout arbre (graphe connexe sans cycle) est un graphe biparti.

Comme il n'a pas de cycle du tout, il n'a pas de cycle impair. La condition est vérifiée.

On peut le colorier avec 2 couleurs en partant de la racine (Couleur 1) et en alternant les couleurs à chaque niveau de profondeur.

### Contre-exemples

**Contre-exemple 1 : Le triangle ($K_3$ ou $C_3$)**

C'est un cycle de longueur 3.

3 est impair.

D'après le théorème, ce graphe n'est **pas** biparti. Il nécessite 3 couleurs, donc il n'est pas 2-coloriable.

**Contre-exemple 2 : Un pentagone avec une corde**

Soit un cycle $C_5$ (longueur 5, impair). Même si on rajoute des arêtes à l'intérieur (cordes), le cycle impair $C_5$ existe toujours en tant que sous-graphe. Le graphe ne peut donc pas être biparti.

### Concepts liés

- **Couplage (Matching) :** Les graphes bipartis ont des propriétés très fortes concernant les couplages (Théorème de Hall, abordé dans d'autres chapitres).
- **Parcours en largeur (BFS) :** Algorithme utilisé pour tester la bipartition (on colorie couche par couche et on vérifie s'il y a un conflit).

## Applications

- **Affectation de tâches :** Si on a un ensemble de travailleurs $X$ et un ensemble de machines $Y$, et que chaque travailleur est qualifié pour certaines machines, on modélise cela par un graphe biparti.
- **Systèmes de recommandation :** Utilisateurs $X$ et Produits $Y$. Une arête représente un achat ou un "j'aime". Le graphe est naturellement biparti.
