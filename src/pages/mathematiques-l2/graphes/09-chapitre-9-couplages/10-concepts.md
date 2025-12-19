---
id: b0d5051e
type: concepts
order: 10
title: Chapitre 9 Couplages - concepts (A)
tags:
  - Couplages
  - Théorème de Berge
  - Théorème de Hall
  - Graphes bipartis
  - Algorithme de Gale et Shapley
  - Couplages stables
course: Graphes et Combinatoire
courseId: 7027276b
chapter: Chapitre 9 Couplages
chapterId: c89a6b95
level: regular
createdAt: '2025-12-19T13:18:01.776Z'
---
# Chapitre 9 Couplages (A)

---

## Concept 1 : Couplage et Saturation

### Prérequis

- Définition d'un graphe $G=(S, A)$ (sommets et arêtes).
- Notion de sous-ensemble.
- Notion de graphe biparti (pour certains exemples).

### Définition

Soit un graphe $G=(S, A)$. Un **couplage** (ou appariement) $M$ est un sous-ensemble d'arêtes ($M \subseteq A$) tel que deux arêtes distinctes de $M$ n'ont jamais d'extrémité en commun. Autrement dit, chaque sommet du graphe touche au plus une arête du couplage.

*   Un sommet $v \in S$ est dit **saturé** par $M$ s'il est l'extrémité d'une arête appartenant à $M$. Sinon, il est dit **insaturé** (ou libre).
*   Un ensemble de sommets $X \subseteq S$ est **saturé** si tous les sommets de $X$ sont saturés.
*   Un couplage est dit **parfait** si l'ensemble de tous les sommets $S$ est saturé (c'est-à-dire que chaque sommet du graphe fait partie d'une paire).

### Propriétés Clés

- **Cardinalité :** La taille d'un couplage $|M|$ est le nombre d'arêtes qu'il contient. Le nombre de sommets saturés est toujours $2|M|$.
- **Parité :** Un couplage parfait ne peut exister que si le graphe possède un nombre pair de sommets.
- **Indépendance :** Les arêtes d'un couplage sont dites indépendantes car elles ne se touchent pas.

### Exemples

**Exemple 1 : Couplage dans un chemin**

Soit un graphe chemin $P_4$ avec les sommets $S=\{1, 2, 3, 4\}$ et les arêtes $A=\{\{1,2\}, \{2,3\}, \{3,4\}\}$.

Un ensemble $M = \{\{1,2\}, \{3,4\}\}$ est un **couplage parfait**.

- Les arêtes $\{1,2\}$ et $\{3,4\}$ ne partagent aucun sommet.
- Tous les sommets $\{1, 2, 3, 4\}$ sont saturés.

**Exemple 2 : Couplage non parfait**

Dans le même graphe $P_4$, considérons $M' = \{\{2,3\}\}$.

- C'est un couplage valide (une seule arête).
- Les sommets 2 et 3 sont saturés.
- Les sommets 1 et 4 sont insaturés.
- Ce n'est pas un couplage parfait.

**Exemple 3 : Graphe biparti complet $K_{3,3}$**

Soit $K_{3,3}$ avec $X=\{x_1, x_2, x_3\}$ et $Y=\{y_1, y_2, y_3\}$.

L'ensemble $M = \{\{x_1, y_1\}, \{x_2, y_2\}, \{x_3, y_3\}\}$ est un couplage parfait. Il définit une bijection entre $X$ et $Y$. Le nombre de couplages parfaits dans $K_{n,n}$ est $n!$.

### Contre-exemples

**Contre-exemple 1 : Arêtes adjacentes**

Dans un triangle avec sommets $\{1, 2, 3\}$, l'ensemble d'arêtes $E = \{\{1,2\}, \{2,3\}\}$ **n'est pas** un couplage car les deux arêtes partagent le sommet $2$.

**Contre-exemple 2 : Graphe impair**

Le graphe complet $K_3$ (triangle) ou $K_{2n+1}$ ne peut jamais admettre de couplage parfait car le nombre de sommets est impair. Il restera toujours au moins un sommet insaturé.

### Concepts Liés

- **Degré d'un sommet :** Dans le sous-graphe partiel formé par les arêtes du couplage, tout sommet a un degré de 1 (s'il est saturé) ou 0 (s'il est insaturé).
- **Bijection :** Un couplage parfait dans un graphe biparti correspond à une bijection entre les deux classes de la bipartition.

---

## Concept 2 : Couplage Maximal et Maximum

### Prérequis

- Définition d'un couplage (Concept 1).
- Comparaison d'ensembles (inclusion et cardinalité).

### Définition

Il est crucial de distinguer deux notions d'optimalité pour un couplage $M$ :

1.  **Couplage Maximal :** Un couplage $M$ est maximal s'il est impossible d'ajouter une arête supplémentaire de $G$ à $M$ tout en conservant la propriété d'être un couplage. C'est un optimum *local*.
2.  **Couplage Maximum :** Un couplage $M$ est maximum s'il contient le plus grand nombre d'arêtes possible parmi tous les couplages de $G$. C'est un optimum *global*.

$$

\text{Tout couplage maximum est maximal, mais la réciproque est fausse.}

$$

### Propriétés Clés

- **Inclusion vs Taille :** La maximalité concerne l'inclusion (on ne peut pas agrandir l'ensemble $M$), tandis que le maximum concerne la cardinalité $|M|$ (on ne peut pas trouver un ensemble plus grand).
- **Lien avec le Couplage Parfait :** Si un couplage est parfait, il est nécessairement maximum (et donc maximal). Cependant, un couplage maximum n'est pas forcément parfait (ex: cycle de longueur 5).

### Exemples

Considérons le graphe chemin $P_4 : 1-2-3-4$.

**Exemple 1 : Couplage Maximal non Maximum**

Soit $M_1 = \{\{2,3\}\}$.

- Les sommets 2 et 3 sont pris.
- On ne peut pas ajouter $\{1,2\}$ car 2 est pris.
- On ne peut pas ajouter $\{3,4\}$ car 3 est pris.
- $M_1$ est **maximal** (on ne peut rien ajouter).
- Sa taille est 1.

**Exemple 2 : Couplage Maximum**

Soit $M_2 = \{\{1,2\}, \{3,4\}\}$.

- C'est un couplage de taille 2.
- C'est la taille la plus grande possible pour ce graphe (car il a 4 sommets, max 2 arêtes).
- $M_2$ est **maximum** (et aussi parfait).

**Exemple 3 : Étoile $S_4$**

Soit un sommet central 0 relié à 1, 2, 3.

- $M = \{\{0,1\}\}$ est maximal et maximum. On ne peut prendre aucune autre arête car elles passent toutes par 0. Ici, maximal et maximum coïncident à une taille de 1.

### Contre-exemples

**Contre-exemple 1**

L'ensemble vide $\emptyset$ est un couplage, mais il n'est presque jamais maximal (sauf si le graphe n'a aucune arête). On peut presque toujours y ajouter une arête.

**Contre-exemple 2**

Dans l'Exemple 1 ci-dessus ($M_1 = \{\{2,3\}\}$), affirmer que ce couplage est maximum est faux, car il existe un couplage de taille supérieure ($M_2$).

### Concepts Liés

- **Algorithmes gloutons :** Un algorithme glouton (qui ajoute des arêtes tant qu'il peut) trouvera un couplage *maximal*, mais pas forcément *maximum*.
- **Nombre de couplage :** La taille d'un couplage maximum est un invariant du graphe, souvent noté $\nu(G)$.

---

## Concept 3 : Chaînes Alternées et Théorème de Berge

### Prérequis

- Notion de chaîne (suite de sommets reliés par des arêtes).
- Couplage Maximal et Maximum (Concept 2).
- Différence symétrique d'ensembles (pour la preuve).

### Définition

Soit un graphe $G=(S, A)$ et un couplage $M$.

1.  **Chaîne Alternée :** Une chaîne est dite alternée par rapport à $M$ si ses arêtes appartiennent alternativement à $M$ et hors de $M$ ($A \setminus M$).
2.  **Chaîne Augmentante :** Une chaîne alternée est dite augmentante si ses deux extrémités (le sommet de départ et le sommet de fin) sont des sommets **insaturés** (non couverts par $M$).

**Théorème de Berge (1957) :** Un couplage $M$ est **maximum** si et seulement s'il n'existe pas de chaîne augmentante par rapport à $M$ dans $G$.

### Propriétés Clés

- **Amélioration du couplage :** Si on trouve une chaîne augmentante, on peut "inverser" les arêtes le long de la chaîne (mettre celles de $M$ hors de $M$, et celles hors de $M$ dans $M$). Le nouveau couplage aura exactement **une arête de plus** que le précédent.
- **Critère d'arrêt :** Ce théorème fournit un algorithme : tant qu'on trouve une chaîne augmentante, on augmente la taille du couplage. Quand il n'y en a plus, le couplage est optimal.

### Exemples

**Exemple 1 : Chaîne alternée simple**

Graphe : $1-2-3-4$. Couplage $M = \{\{2,3\}\}$.

- Chaîne $\gamma = (1, 2, 3, 4)$ (arêtes $\{1,2\}, \{2,3\}, \{3,4\}$).
- $\{1,2\} \notin M$, $\{2,3\} \in M$, $\{3,4\} \notin M$.
- C'est une chaîne **alternée**.

**Exemple 2 : Chaîne augmentante**

Reprenons l'exemple 1.

- Les extrémités de $\gamma$ sont 1 et 4.
- 1 n'est pas dans $M$ (insaturé).
- 4 n'est pas dans $M$ (insaturé).
- $\gamma$ est donc une chaîne **augmentante**.
- **Augmentation :** On échange.
    - Ancien $M$: $\{\{2,3\}\}$ (taille 1).
    - Nouveau $M'$: $\{\{1,2\}, \{3,4\}\}$ (taille 2).
    - $M'$ est plus grand.

**Exemple 3 : Pas de chaîne augmentante**

Graphe : Triangle $1-2-3-1$. Couplage $M=\{\{1,2\}\}$.

- Sommet insaturé : 3.
- Si on part de 3, on va vers 1 (ou 2). Arête $\{3,1\} \notin M$.
- Ensuite on doit prendre une arête de $M$. Arête $\{1,2\} \in M$.
- On est en 2. On doit prendre une arête hors de $M$. Arête $\{2,3\}$.
- On revient en 3. Ce n'est pas une chaîne simple qui finit sur un *autre* sommet insaturé. Il n'y a pas de chaîne augmentante. $M$ est maximum.

### Contre-exemples

**Contre-exemple 1**

Une chaîne qui commence par un sommet insaturé et finit par un sommet saturé est alternée, mais pas augmentante. L'échange des arêtes ne changerait pas la taille du couplage (juste sa position).

**Contre-exemple 2**

Une chaîne dont les arêtes sont toutes hors de $M$ n'est pas alternée (sauf si elle a longueur 1).

### Concepts Liés

- **Différence symétrique :** La combinaison de deux couplages donne des cycles et des chaînes alternés.
- **Algorithme d'Edmonds :** Algorithme utilisant ce principe pour trouver le couplage maximum dans un graphe quelconque (gère les "fleurs/blossoms").

---

## Concept 4 : Théorème de Hall (Mariages)

### Prérequis

- Graphes bipartis (partition des sommets en $X$ et $Y$).
- Notion de voisinage $N(U)$.

### Définition

Soit $G=(S, A)$ un graphe biparti de bipartition $(X, Y)$. Pour un sous-ensemble de sommets $U \subseteq X$, le **voisinage** $N(U)$ est l'ensemble des sommets de $Y$ reliés à au moins un sommet de $U$.

**Théorème de Hall (1935) :** Le graphe admet un couplage qui sature $X$ (chaque élément de $X$ a un partenaire) si et seulement si :

$$ \forall U \subseteq X, \quad |N(U)| \ge |U| $$

Cette condition est souvent appelée la **condition de Hall** ou condition des mariages.

### Propriétés Clés

- **Condition nécessaire :** Si un ensemble de $k$ personnes (dans $X$) ne connait collectivement que $k-1$ personnes (dans $Y$), il est impossible de marier tout le monde. C'est le principe des tiroirs.
- **Corollaire Régulier :** Tout graphe biparti $k$-régulier ($k>0$) admet un couplage parfait.

### Exemples

**Exemple 1 : Condition vérifiée**

$X=\{x_1, x_2\}$, $Y=\{y_1, y_2\}$.

Arêtes : $(x_1, y_1), (x_1, y_2), (x_2, y_1)$.

- Pour $U=\{x_1\}$, $N(U)=\{y_1, y_2\}$, $2 \ge 1$. Ok.
- Pour $U=\{x_2\}$, $N(U)=\{y_1\}$, $1 \ge 1$. Ok.
- Pour $U=\{x_1, x_2\}$, $N(U)=\{y_1, y_2\}$, $2 \ge 2$. Ok.

Il existe un couplage saturant $X$.

**Exemple 2 : Condition violée (Bottleneck)**

$X=\{x_1, x_2\}$, $Y=\{y_1, y_2\}$.

Arêtes : $(x_1, y_1), (x_2, y_1)$. (Les deux ne connaissent que $y_1$).

- Prenons $U = \{x_1, x_2\}$.
- $N(U) = \{y_1\}$.
- $|N(U)| = 1$ et $|U| = 2$.
- $1 < 2$, la condition n'est pas respectée. Impossible de coupler $X$ entièrement.

**Exemple 3 : Graphe biparti régulier**

Un graphe où chaque sommet a exactement 3 voisins ($k=3$). D'après le corollaire 9.7, ce graphe a obligatoirement un couplage parfait.

### Contre-exemples

**Contre-exemple**

Le théorème de Hall s'applique spécifiquement aux graphes **bipartis**. Il ne donne pas une condition suffisante pour les graphes quelconques (où la structure est plus complexe, voir formule de Tutte-Berge).

### Concepts Liés

- **Couplage Parfait :** Si $|X|=|Y|$ et que la condition de Hall est vérifiée, le couplage est parfait.
- **Coupe minimum (Min-Cut) :** Le théorème de Hall peut être prouvé via le théorème du flux maximum / coupe minimum.

---

## Concept 5 : Couplages Stables et Algorithme de Gale-Shapley

### Prérequis

- Graphe biparti complet $K_{n,n}$ (deux ensembles de même taille).
- Notion d'ordre total / préférences.

### Définition

On considère un graphe biparti complet avec deux ensembles $X$ (ex: candidats) et $Y$ (ex: entreprises) de même taille $n$. Chaque élément possède une liste de **préférences** classant tous les membres de l'autre groupe (ordre total strict).

Un couplage $M$ est **stable** s'il est parfait et s'il ne contient pas de **paire instable**.

Une paire $(x, y) \notin M$ est instable (ou bloquante) si :

1.  $x$ préfère $y$ à son partenaire actuel dans $M$.
2.  $y$ préfère $x$ à son partenaire actuel dans $M$.

En d'autres termes, $x$ et $y$ ont tous les deux intérêt à quitter leur partenaire actuel pour se mettre ensemble.

**Théorème 9.9 :** Il existe toujours au moins un couplage stable.

### Propriétés Clés

- **Existence :** Contrairement aux couplages parfaits dans les graphes quelconques, un couplage stable existe *toujours* dans cette configuration.
- **Algorithme de Gale-Shapley :**
    - Les éléments de $X$ font des propositions à leur préféré dans $Y$.
    - Les éléments de $Y$ conservent provisoirement la meilleure proposition reçue et rejettent les autres.
    - Les éléments de $X$ rejetés proposent au suivant sur leur liste.
    - L'algorithme termine toujours.
- **Optimalité :** L'algorithme où $X$ propose produit un couplage **optimal pour $X$** (chaque $x$ obtient le meilleur partenaire possible parmi tous les couplages stables) et **pessimal pour $Y$** (chaque $y$ obtient le pire partenaire possible parmi tous les couplages stables).

### Exemples

**Exemple 1 : Préférences simples**

$X=\{x_1, x_2\}$, $Y=\{y_1, y_2\}$.

- $x_1$ préfère $y_1 > y_2$. $x_2$ préfère $y_2 > y_1$.
- $y_1$ préfère $x_1 > x_2$. $y_2$ préfère $x_2 > x_1$.

Ici, chacun obtient son premier choix : $M=\{(x_1, y_1), (x_2, y_2)\}$. C'est stable.

**Exemple 2 : Instabilité**

Supposons un couplage $M=\{(x_1, y_2), (x_2, y_1)\}$.

Si $x_1$ préfère $y_1$ (plutôt que $y_2$) ET $y_1$ préfère $x_1$ (plutôt que $x_2$), alors le couple $(x_1, y_1)$ va se former et briser le couplage. $M$ n'est pas stable.

**Exemple 3 : Exécution Gale-Shapley**

1. $x_1$ et $x_2$ proposent à leur préféré.
2. Si $y_1$ reçoit deux propositions, il garde la meilleure et rejette l'autre.
3. Le rejeté propose à son deuxième choix.
4. Le processus s'arrête quand tout le monde est couplé.

### Contre-exemples

**Contre-exemple 1**

Un couplage stable n'est pas nécessairement unique. En inversant les rôles (si $Y$ propose), on peut obtenir un couplage stable différent.

**Contre-exemple 2**

Un couplage stable ne maximise pas le "bonheur global". Il assure juste que personne ne peut "tricher" en formant un couple dissident.

### Concepts Liés

- **Paire possible :** Une paire $(x,y)$ est possible s'il existe *un* couplage stable qui la contient.
- **Affectation :** Utilisé pour l'affectation des étudiants aux universités (Parcoursup), des internes aux hôpitaux, etc.

## Applications

- **Attribution de ressources :** Affectation de tâches à des machines.
- **Marchés économiques :** Mariages stables (prix Nobel d'économie Shapley & Roth).
- **Chimie :** Liaisons entre atomes dans une molécule (structure de Kékulé pour le benzène est un couplage parfait).
