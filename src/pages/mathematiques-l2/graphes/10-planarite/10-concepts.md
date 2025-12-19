---
id: fd8ad67c
type: concepts
order: 10
title: Planarité - concepts (A)
tags:
  - Graphes planaires
  - Formule d'Euler
  - Théorème de Kuratowski
  - Coloration
  - Théorème des 4 couleurs
course: Graphes et Combinatoire
courseId: 7027276b
chapter: Planarité
chapterId: '40818759'
level: regular
createdAt: '2025-12-19T13:24:26.380Z'
---
# Planarité (A)

---

## Concept 1 : Graphes Planaires et Dessins Plans

### Prérequis

- Définition d'un graphe $G=(S, A)$ (sommets et arêtes).
- Notion de sous-graphe.
- Intersection d'ensembles.
- Topologie de base de $\mathbb{R}^2$ (point, courbe).

### Définition

Il est crucial de distinguer le graphe (objet abstrait) de sa représentation graphique.

Un **dessin plan** d'un graphe $G$ est une représentation géométrique de ce graphe dans le plan $\mathbb{R}^2$ telle que :

1.  Les sommets sont des points distincts du plan.
2.  Les arêtes sont des courbes (arcs) reliant les points correspondants aux sommets.
3.  L'intersection de deux arêtes distinctes est **vide**, sauf éventuellement à leurs extrémités (les sommets). Autrement dit, les arêtes ne se croisent pas.

Un graphe $G$ est dit **planaire** s'il **admet** (s'il existe) un dessin plan.

### Propriétés Clés

- **Existence vs Représentation :** Un graphe peut être planaire même si l'on en dessine une version avec des croisements. La propriété d'être "planaire" signifie qu'il est *possible* de le redessiner sans croisement.
- **Topologie :** La définition formelle repose sur des arcs (images injectives continues de $[0,1]$ dans $\mathbb{R}^2$).

### Exemples

**Exemple 1 : Le graphe complet $K_4$**

Le graphe complet à 4 sommets, $K_4$, est planaire.

On peut le dessiner comme un carré avec ses deux diagonales.

- Si on trace les diagonales à l'intérieur du carré, elles se croisent. Ce dessin n'est pas un *dessin plan*.
- Cependant, on peut déplacer une des diagonales à l'extérieur du carré pour relier les deux sommets opposés. Ce nouveau dessin n'a aucun croisement. Puisqu'il existe un tel dessin, $K_4$ est planaire.

**Exemple 2 : Les arbres**

Tout arbre (graphe connexe sans cycle) est un graphe planaire. On peut toujours dessiner un arbre dans le plan sans que ses branches ne se croisent.

**Exemple 3 : Cycles**

Un cycle simple $C_n$ (avec $n \ge 3$) est toujours planaire. Il se dessine comme un polygone à $n$ côtés.

### Contre-exemples

- **Dessin non-plan d'un graphe planaire :** Dessiner un cycle $C_4$ comme un "8" (un sablier) crée un croisement au centre. Ce n'est pas un dessin plan, mais le graphe $C_4$ reste planaire car on peut le dessiner comme un carré.
- **Graphes non planaires :** Certains graphes ne peuvent jamais être dessinés sans croisements, quelle que soit la façon dont on s'y prend (voir concepts suivants sur $K_5$ et $K_{3,3}$).

### Concepts Liés

- **Faces** (régions définies par le dessin plan).
- **Théorème de Kuratowski** (critère de planarité).
- **Immersion de graphes**.

## Applications

- **Conception de circuits imprimés (PCB) :** Éviter que les pistes conductrices ne se croisent pour éviter les courts-circuits (sur une seule couche).
- **Cartographie :** Représentation de frontières entre pays.

---

## Concept 2 : Théorème de la Courbe de Jordan

### Prérequis

- Notion de continuité et d'injectivité.
- Notion de connexité.

### Définition

Pour formaliser la planarité, on utilise des concepts de topologie.

Une **courbe de Jordan** est un arc fermé simple dans le plan. C'est l'image d'une fonction continue injective $\gamma : [0, 1] \to \mathbb{R}^2$ telle que $\gamma(0) = \gamma(1)$ (les extrémités se rejoignent), et injective sur $[0, 1)$ (elle ne se recoupe pas elle-même).

Le **Théorème de la courbe de Jordan** affirme que toute courbe de Jordan $\alpha$ divise le plan (son complémentaire) en exactement deux parties connexes disjointes :

1.  L'**intérieur** d'$\alpha$ (borné).
2.  L'**extérieur** d'$\alpha$ (non borné).

De plus, $\alpha$ est la frontière commune de ces deux parties.

### Propriétés Clés

- **Frontière infranchissable :** Tout arc continu joignant un point de l'intérieur à un point de l'extérieur doit nécessairement croiser la courbe $\alpha$.
- **Fondamental pour les graphes :** Ce théorème justifie rigoureusement la notion de "face" et prouve pourquoi certaines arêtes (cordes) entrent en conflit dans un cycle.

### Exemples

**Exemple 1 : Un cercle**

Le cercle unité $x^2 + y^2 = 1$ est une courbe de Jordan.

- L'intérieur est le disque ouvert $x^2 + y^2 < 1$.
- L'extérieur est la région $x^2 + y^2 > 1$.
- Impossible d'aller de l'origine $(0,0)$ au point $(2,0)$ sans traverser le cercle.

**Exemple 2 : Un cycle dans un graphe**

Dans un dessin plan d'un graphe, tout cycle constitue une courbe de Jordan. Si un sommet $u$ est dessiné à l'intérieur du cycle et un sommet $v$ à l'extérieur, toute arête $\{u,v\}$ devra croiser le cycle. Si le graphe ne contient pas le sommet d'intersection, l'arête ne peut pas exister sans violer la planarité.

### Contre-exemples

- **Le chiffre 8 :** Une courbe en forme de 8 n'est pas une courbe de Jordan car elle n'est pas simple (elle se croise elle-même au centre). Elle divise le plan en 3 régions (deux boucles internes et l'extérieur).
- **Un segment de droite :** Ce n'est pas une courbe fermée, donc il ne définit pas un intérieur et un extérieur.

### Concepts Liés

- **Conflit de cordes** (utilisé pour prouver la non-planarité).
- **Dualité de graphes**.

---

## Concept 3 : Obstructions Fondamentales ($K_5$ et $K_{3,3}$)

### Prérequis

- Graphes complets $K_n$.
- Graphes bipartis complets $K_{n,m}$.
- Théorème de la courbe de Jordan.

### Définition

Il existe deux graphes fondamentaux qui ne sont **pas planaires**. Ils représentent les structures minimales impossibles à dessiner sans croisement.

1.  **$K_5$ :** Le graphe complet à 5 sommets. (5 sommets, toutes les paires reliées, 10 arêtes).
2.  **$K_{3,3}$ :** Le graphe biparti complet avec deux partitions de 3 sommets. (3 sommets "gauche", 3 sommets "droite", toutes les connexions gauche-droite, 9 arêtes).

### Propriétés Clés

- **Conflit de cordes :** La preuve de leur non-planarité repose sur l'impossibilité de placer les arêtes (cordes) d'un cycle couvrant sans qu'elles ne se croisent.
    - Dans un cycle, deux cordes sont en **conflit** si leurs extrémités s'alternent sur le cycle. Si elles sont en conflit, l'une doit être à l'intérieur, l'autre à l'extérieur.
- **Saturation :**
    - $K_{3,3}$ possède 3 cordes en conflit deux à deux. On ne peut en mettre au plus qu'une dedans et une dehors (total 2), mais il en faut 3.
    - $K_5$ possède 5 cordes avec des contraintes d'incompatibilité qui limitent le placement à 2 dedans et 2 dehors, ce qui est insuffisant.

### Exemples

**Exemple 1 : Tentative de dessin de $K_{3,3}$**

Imaginez 3 maisons et 3 usines (eau, gaz, électricité). On veut relier chaque maison à chaque usine sans que les tuyaux ne se croisent.

1. Formons un cycle passant par Maison 1 - Eau - Maison 2 - Gaz - Maison 1.
2. La Maison 3 et l'Électricité doivent être placées.
3. Le théorème de Jordan montre que peu importe où on les place (intérieur ou extérieur du cycle), il y aura forcément un croisement pour relier la dernière paire.

**Exemple 2 : Tentative de dessin de $K_5$**

Dessinez un pentagone (les 5 sommets reliés en cycle). Il reste à dessiner les diagonales (formant une étoile).

On peut dessiner certaines diagonales à l'intérieur du pentagone, mais elles finiront par se croiser. Si on essaie d'en faire passer une à l'extérieur, elle bloquera l'accès pour les autres. Il y aura toujours au moins un croisement.

### Contre-exemples

- **$K_4$ :** Comme vu précédemment, $K_4$ est planaire. L'ajout d'un seul sommet connecté à tous les autres transforme $K_4$ en $K_5$ et brise la planarité.
- **$K_{2,3}$ :** Un graphe biparti avec 2 sommets d'un côté et 3 de l'autre est planaire.

### Concepts Liés

- **Théorème de Kuratowski**.
- **Mineurs de graphes**.

---

## Concept 4 : Subdivision et Théorème de Kuratowski

### Prérequis

- Isomorphisme de graphes.
- $K_5$ et $K_{3,3}$ (obstructions).

### Définition

**Subdivision élémentaire :**

Soit $G=(S, A)$ un graphe et $\{u, v\} \in A$ une arête. La subdivision de cette arête consiste à ajouter un nouveau sommet $x$ et à remplacer l'arête $\{u, v\}$ par deux arêtes $\{u, x\}$ et $\{x, v\}$.

Le nouveau graphe est $G' = (S \cup \{x\}, (A \setminus \{u, v\}) \cup \{\{u, x\}, \{x, v\}\})$.

**Subdivision d'un graphe :**

Un graphe $H$ est une subdivision de $G$ s'il est obtenu par une suite de subdivisions d'arêtes successives à partir de $G$. Intuitivement, on ajoute des sommets le long des arêtes.

**Théorème de Kuratowski (10.4) :**

Un graphe $G$ est planaire **si et seulement s'il** ne contient pas de sous-graphe isomorphe à une subdivision de $K_5$ ou de $K_{3,3}$.

### Propriétés Clés

- **Caractérisation complète :** Ce théorème donne une condition nécessaire et suffisante pour la planarité.
- **Conservation de la non-planarité :** Si un graphe n'est pas planaire, ajouter des sommets au milieu de ses arêtes (subdivision) ne le rendra pas planaire. Les croisements sont topologiques.

### Exemples

**Exemple 1 : Subdivision de $K_{3,3}$**

Prenons $K_{3,3}$. Si on ajoute un sommet au milieu d'une de ses 9 arêtes, le graphe résultant n'est toujours pas planaire. Selon Kuratowski, si un grand graphe contient cette structure, le grand graphe n'est pas planaire.

**Exemple 2 : Détection de non-planarité**

Soit un graphe $G$. Si en supprimant quelques arêtes et sommets (prise de sous-graphe), et en "lissant" les sommets de degré 2 (opération inverse de la subdivision), on obtient $K_5$, alors $G$ n'est pas planaire.

### Contre-exemples

- Un graphe peut contenir un $K_4$ subdivisé et rester planaire (car $K_4$ est planaire). La condition de Kuratowski concerne spécifiquement $K_5$ et $K_{3,3}$.

### Concepts Liés

- **Homéomorphisme de graphes**.
- **Mineurs interdits** (Théorème de Wagner, variation de Kuratowski).

---

## Concept 5 : Formule d'Euler

### Prérequis

- Graphe planaire connexe.
- Composantes connexes.
- Récurrence.

### Définition

Soit un dessin plan d'un graphe planaire. Les **faces** sont les composantes connexes du complément du dessin dans le plan $\mathbb{R}^2$.

- Il y a toujours exactement une **face externe** (la région non bornée).
- Les autres sont des **faces internes** (bornées).

**Théorème (Formule d'Euler) :**

Soit $G = (S, A)$ un graphe planaire **connexe** avec :

- $s = |S|$ (nombre de sommets)
- $a = |A|$ (nombre d'arêtes)
- $f$ le nombre de faces du dessin.

Alors :

$$s - a + f = 2$$

### Propriétés Clés

- **Invariance :** Peu importe comment on dessine le graphe (tant que c'est un dessin plan), le nombre de faces $f$ sera toujours le même pour un $s$ et $a$ donnés.
- **Incidence :** Une arête sépare deux faces (si elle est dans un cycle) ou est dans une seule face (si c'est un "pont" ou une branche d'arbre).
- **Arbres :** Pour un arbre, $a = s-1$. La formule donne $s - (s-1) + f = 2 \Rightarrow 1 + f = 2 \Rightarrow f = 1$. Un arbre a une seule face (l'externe).

### Exemples

**Exemple 1 : Le Carré (Cycle $C_4$)**

- Sommets $s = 4$.
- Arêtes $a = 4$.
- Faces : 1 interne (le carré) + 1 externe = 2 faces ($f=2$).
- Vérification : $4 - 4 + 2 = 2$. Correct.

**Exemple 2 : Le Tétraèdre ($K_4$ planaire)**

Imaginez le dessin plan de $K_4$ (un triangle avec un point central relié aux 3 coins).

- Sommets $s = 4$.
- Arêtes $a = 6$.
- Faces : 3 petits triangles internes + 1 grand triangle externe (le contour) = 4 faces ($f=4$).
- Vérification : $4 - 6 + 4 = 2$. Correct.

**Exemple 3 : Deux triangles collés par une arête**

- Sommets $s = 4$.
- Arêtes $a = 5$ (le tour + la diagonale).
- Faces : 2 triangles internes + 1 externe = 3 faces ($f=3$).
- Vérification : $4 - 5 + 3 = 2$. Correct.

### Contre-exemples

- **Graphe non connexe :** Si le graphe a $k$ composantes connexes, la formule devient $s - a + f = 1 + k$. La formule standard ne s'applique pas directement (le "2" suppose la connexité $k=1$).
- **Graphe non planaire :** La notion de "face" n'est pas définie de la même manière si les arêtes se croisent hors des sommets.

### Concepts Liés

- **Polyèdres** (La formule d'Euler pour les polyèdres convexes $S-A+F=2$).
- **Dual planaire**.

---

## Concept 6 : Densité d'Arêtes dans les Graphes Planaires

### Prérequis

- Formule d'Euler.
- Notion de frontière de face (parcours fermé).
- Graphe simple (pas de boucles, pas d'arêtes multiples).

### Définition

Pour un graphe planaire simple, il existe une limite maximale au nombre d'arêtes par rapport au nombre de sommets. Si un graphe a trop d'arêtes, il ne peut pas être planaire.

**Corollaire 10.8 :**

Soit $G = (S, A)$ un graphe planaire avec $s \geq 3$ sommets. Alors :

$$|A| \leq 3|S| - 6$$

Ou simplement : $a \leq 3s - 6$.

### Propriétés Clés

- **Triangulation :** L'égalité $a = 3s - 6$ est atteinte lorsque toutes les faces sont des triangles (graphes triangulés maximaux).
- **Condition Nécessaire :** Si un graphe ne respecte pas cette inégalité, il n'est **pas** planaire. (Attention : respecter l'inégalité ne garantit pas la planarité).
- **Démonstration :** Repose sur le fait que chaque face est bordée par au moins 3 arêtes ($3f \le 2a$) et la formule d'Euler.

### Exemples

**Exemple 1 : Test de non-planarité de $K_5$**

Pour $K_5$, nous avons $s=5$ et $a=10$.

Calculons la borne maximale : $3s - 6 = 3(5) - 6 = 15 - 6 = 9$.

Or, le nombre d'arêtes est $10$.

Puisque $10 > 9$, l'inégalité n'est pas respectée. Donc $K_5$ n'est pas planaire.

**Exemple 2 : Graphe planaire dense**

Considérons $K_4$. $s=4, a=6$.

Borne : $3(4) - 6 = 6$.

Ici $6 \leq 6$. L'inégalité tient, ce qui est cohérent avec le fait que $K_4$ est planaire.

**Exemple 3 : $K_{3,3}$ (Piège)**

Pour $K_{3,3}$, $s=6, a=9$.

Borne : $3(6) - 6 = 12$.

On a $9 \leq 12$. L'inégalité est respectée, pourtant $K_{3,3}$ n'est pas planaire.

*Note :* Pour les graphes bipartis (sans triangles), on a une inégalité plus forte $a \leq 2s - 4$. Pour $K_{3,3}$ : $9 \not\leq 2(6)-4=8$, ce qui prouverait sa non-planarité.

### Contre-exemples

- Un graphe avec $s=6$ et $a=10$ respecte $10 \leq 12$, mais pourrait contenir un sous-graphe non planaire (ex: une subdivision de $K_5$). L'inégalité n'est pas une condition suffisante.

### Concepts Liés

- **Degré moyen**.
- **Graphes clairsemés**.

---

## Concept 7 : Coloration des Graphes Planaires

### Prérequis

- Définition de la coloration de graphe (assigner une couleur à chaque sommet telle que deux voisins aient des couleurs différentes).
- Degré d'un sommet.
- Lemme des poignées de mains ($\sum d(v) = 2a$).
- Densité d'arêtes ($a \leq 3s - 6$).

### Définition

Les théorèmes de coloration pour les graphes planaires déterminent le nombre minimal de couleurs nécessaires pour colorier n'importe quel graphe planaire.

1.  **Propriété du degré (Corollaire 10.9) :** Tout graphe planaire possède au moins un sommet de degré inférieur ou égal à 5 ($\delta \le 5$).
2.  **Théorème des 6-couleurs (10.10) :** Tout graphe planaire est 6-coloriable.
3.  **Théorème des 4-couleurs (10.11) :** Tout graphe planaire est 4-coloriable (résultat célèbre et difficile).

### Propriétés Clés

- **Preuve par récurrence (6 couleurs) :** On retire le sommet $v$ de degré $\le 5$. On colorie le reste (récurrence). Comme $v$ a au plus 5 voisins, il reste au moins une couleur libre parmi les 6 pour $v$.
- **Complexité :** Le théorème des 4 couleurs a nécessité une preuve assistée par ordinateur (Appel et Haken, 1976), vérifiant plus de 1500 configurations.

### Exemples

**Exemple 1 : Carte géographique**

Imaginez une carte où les pays sont les sommets et les frontières communes sont les arêtes. C'est un graphe planaire. Le théorème des 4 couleurs dit qu'on peut colorier la carte avec seulement 4 couleurs sans que deux pays voisins aient la même couleur.

**Exemple 2 : Coloration de $K_4$**

$K_4$ est planaire. Chaque sommet est relié aux 3 autres. Il faut donc 4 couleurs distinctes. C'est l'exemple qui montre qu'on ne peut pas descendre en dessous de 4 (3 couleurs ne suffisent pas).

**Exemple 3 : Preuve de 6-coloration (Mécanisme)**

Soit un graphe planaire $G$. On trouve un sommet $v$ avec $d(v) \le 5$.

On suppose que $G-v$ est colorié. Les voisins de $v$ utilisent au maximum 5 couleurs (disons Bleu, Rouge, Vert, Jaune, Noir).

On dispose d'une 6ème couleur (Blanc) pour colorier $v$. Cela marche toujours.

### Contre-exemples

- $K_5$ nécessite 5 couleurs, mais il n'est pas planaire. Cela ne contredit pas le théorème (qui ne s'applique qu'aux graphes planaires).

### Concepts Liés

- **Nombre chromatique** $\chi(G)$.
- **Algorithmes gloutons de coloration**.

## Applications

- **Allocation de registres :** Dans la compilation informatique, si le graphe d'interférence des variables est planaire (ou presque), on peut utiliser peu de registres.
- **Planification de fréquences :** Assigner des fréquences à des tours radio pour éviter les interférences (si la géographie le permet).
