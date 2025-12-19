---
id: d8b6589d
type: exercises
order: 11
title: 'Chaînes, parcours, cycles et tours - exercices (A)'
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
createdAt: '2025-12-19T13:05:28.995Z'
level: regular
course: Graphes et Combinatoire
courseId: 7027276b
chapter: 'Chaînes, parcours, cycles et tours'
chapterId: b866ccc5
---
# Exercices "Chaînes, parcours, cycles et tours" (A)

---

## Exercice 1 : Distinguer Chaînes, Parcours, Cycles et Tours

**Problème :**

Soit un graphe $G = (S, A)$ avec $S = \{1, 2, 3, 4, 5\}$ et les arêtes suivantes :

$A = \{\{1,2\}, \{2,3\}, \{3,4\}, \{4,2\}, \{3,5\}, \{5,5\}\}$.

(Notez que $\{5,5\}$ est une boucle sur le sommet 5).

Pour chacune des suites de sommets suivantes, déterminez si elle constitue un **parcours**, une **chaîne**, un **tour** et/ou un **cycle**. Justifiez votre réponse en vérifiant les définitions (unicité des sommets, unicité des arêtes, fermeture).

1.  $L_1 = (1, 2, 3, 5)$
2.  $L_2 = (1, 2, 3, 4, 2)$
3.  $L_3 = (2, 3, 4, 2)$
4.  $L_4 = (5, 5)$

<details>

<summary>Solution</summary>

**Méthode :** Pour chaque suite, on vérifie l'existence des arêtes, puis si les sommets sont distincts (chaîne/cycle) et si les arêtes sont distinctes (tour).

**Étapes :**

1.  **Analyse de $L_1 = (1, 2, 3, 5)$** :
    *   Les arêtes $\{1,2\}, \{2,3\}, \{3,5\}$ existent dans $G$. C'est un **parcours**.
    *   Les sommets $(1, 2, 3, 5)$ sont tous distincts.
    *   Ce n'est pas fermé (début $\neq$ fin).
    *   **Réponse :** C'est une **chaîne** (et donc un parcours).

2.  **Analyse de $L_2 = (1, 2, 3, 4, 2)$** :
    *   Arêtes : $\{1,2\}, \{2,3\}, \{3,4\}, \{4,2\}$. Elles existent.
    *   Le sommet 2 apparaît deux fois. Ce n'est **pas une chaîne**.
    *   Les arêtes empruntées sont toutes distinctes. C'est un parcours simple.
    *   Ce n'est pas fermé ($1 \neq 2$).
    *   **Réponse :** C'est un **parcours** (mais pas une chaîne).

3.  **Analyse de $L_3 = (2, 3, 4, 2)$** :
    *   Arêtes : $\{2,3\}, \{3,4\}, \{4,2\}$. Elles existent.
    *   C'est fermé ($s_0 = s_k = 2$).
    *   Les sommets intermédiaires (3, 4) sont distincts de l'origine/fin et entre eux.
    *   Les arêtes sont distinctes.
    *   **Réponse :** C'est un **cycle** (et donc un tour).

4.  **Analyse de $L_4 = (5, 5)$** :
    *   Arête : $\{5,5\}$. Elle existe (boucle).
    *   C'est fermé. Longueur 1.
    *   Un cycle doit avoir une longueur $k \geq 3$ (selon la définition stricte pour graphes simples, bien que certains contextes acceptent les boucles comme 1-cycles). Dans ce cours, avec $k \ge 3$ pour les cycles, ce n'est pas un cycle.
    *   C'est un tour (arête unique distincte).
    *   **Réponse :** C'est un **tour** (de longueur 1).

**Réponse Finale :**

1. Chaîne ; 2. Parcours ; 3. Cycle ; 4. Tour.

</details>

---

## Exercice 2 : Connexité et Composantes Connexes

**Problème :**

Soit un graphe $G = (S, A)$ d'ordre 8 avec $S = \{1, 2, 3, 4, 5, 6, 7, 8\}$.

La liste des arêtes est $A = \{\{1,3\}, \{3,5\}, \{5,1\}, \{2,4\}, \{4,6\}, \{6,8\}, \{8,2\}, \{2,6\}\}$.

1.  Dessinez ou visualisez le graphe.
2.  Ce graphe est-il connexe ? Si non, donnez la partition des sommets en composantes connexes.
3.  Vérifiez le théorème de partition : trouvez deux ensembles $U$ et $V$ tels que $S = U \cup V$ et qu'il n'existe aucune arête entre $U$ et $V$.

<details>

<summary>Solution</summary>

**Méthode :** On trace les liens entre les sommets. L'ensemble des sommets qui peuvent s'atteindre mutuellement forme une composante connexe.

**Étapes :**

1.  **Analyse des liens (Tracé mental) :**
    *   On part de 1 : relié à 3, relié à 5, relié à 1. Le groupe $\{1, 3, 5\}$ forme un triangle fermé. Aucun de ces sommets n'est relié aux autres (2, 4, 6, 8, 7).
    *   On part de 2 : relié à 4 et 8 et 6. 4 relié à 6. 8 relié à 6.
    *   Le groupe $\{2, 4, 6, 8\}$ est tout relié ensemble.
    *   On regarde le sommet 7 : Il n'apparaît dans aucune arête. Il est isolé.

2.  **Identification des composantes :**
    *   $C_1 = \{1, 3, 5\}$
    *   $C_2 = \{2, 4, 6, 8\}$
    *   $C_3 = \{7\}$

3.  **Conclusion sur la connexité :**
    *   Le graphe n'est pas connexe car il possède plusieurs composantes disjointes (il est impossible d'aller de 1 à 2 par exemple).

4.  **Vérification de la partition ($U, V$) :**
    *   On peut choisir $U = C_1 = \{1, 3, 5\}$ et $V = S \setminus C_1 = \{2, 4, 6, 7, 8\}$.
    *   Il n'y a aucune arête connectant un sommet impair de $U$ à un sommet pair (ou 7) de $V$.

**Réponse :**

Le graphe n'est **pas connexe**.

Les composantes connexes sont : $\{1, 3, 5\}$, $\{2, 4, 6, 8\}$ et $\{7\}$.

</details>

---

## Exercice 3 : Matrice d'Adjacence et Nombre de Parcours

**Problème :**

Soit le graphe $G$ défini par la matrice d'adjacence $M$ suivante (les sommets sont numérotés 1, 2, 3) :

$$

M = \begin{pmatrix}

0 & 1 & 1 \\

1 & 0 & 0 \\

1 & 0 & 0

\end{pmatrix}

$$

1.  Dessinez le graphe associé.
2.  Calculez la matrice $M^2$.
3.  Que représente le coefficient $(M^2)_{2,3}$ ? Vérifiez-le sur votre dessin.
4.  Quelle est la distance $d_G(2, 3)$ ?

<details>

<summary>Solution</summary>

**Méthode :** Utiliser le produit matriciel classique. Interpréter les coefficients $(M^k)_{ij}$ comme le nombre de parcours de longueur $k$ entre $i$ et $j$.

**Étapes :**

1.  **Dessin du graphe :**
    *   Sommet 1 est relié à 2 et 3.
    *   Sommet 2 est relié uniquement à 1.
    *   Sommet 3 est relié uniquement à 1.
    *   C'est un graphe en forme de "V" avec 1 au centre.

2.  **Calcul de $M^2 = M \times M$ :**

    $$

    M^2 = \begin{pmatrix}

    0 & 1 & 1 \\

    1 & 0 & 0 \\

    1 & 0 & 0

    \end{pmatrix}

    \times

    \begin{pmatrix}

    0 & 1 & 1 \\

    1 & 0 & 0 \\

    1 & 0 & 0

    \end{pmatrix}

    $$

    *   Ligne 1, Col 1: $0\cdot0 + 1\cdot1 + 1\cdot1 = 2$
    *   Ligne 1, Col 2: $0\cdot1 + 1\cdot0 + 1\cdot0 = 0$
    *   Ligne 1, Col 3: $0\cdot1 + 1\cdot0 + 1\cdot0 = 0$
    *   Ligne 2, Col 1: $1\cdot0 + 0\cdot1 + 0\cdot1 = 0$
    *   Ligne 2, Col 2: $1\cdot1 + 0\cdot0 + 0\cdot0 = 1$
    *   Ligne 2, Col 3: $1\cdot1 + 0\cdot0 + 0\cdot0 = 1$
    *   Ligne 3, Col 1: $1\cdot0 + 0\cdot1 + 0\cdot0 = 0$
    *   Ligne 3, Col 2: $1\cdot1 + 0\cdot0 + 0\cdot0 = 1$
    *   Ligne 3, Col 3: $1\cdot1 + 0\cdot0 + 0\cdot0 = 1$

    $$

    M^2 = \begin{pmatrix}

    2 & 0 & 0 \\

    0 & 1 & 1 \\

    0 & 1 & 1

    \end{pmatrix}

    $$

3.  **Interprétation de $(M^2)_{2,3}$ :**
    *   Le coefficient à la ligne 2, colonne 3 vaut **1**.
    *   Cela signifie qu'il existe exactement **1 parcours de longueur 2** reliant le sommet 2 au sommet 3.
    *   *Vérification :* Le seul chemin est $2 \to 1 \to 3$.

4.  **Distance $d_G(2, 3)$ :**
    *   Dans $M^1$, le coefficient $(2,3)$ est 0 (pas de lien direct).
    *   Dans $M^2$, le coefficient $(2,3)$ est non nul (1).
    *   La plus petite puissance $k$ pour laquelle le coefficient est non nul est $k=2$.

**Réponse :**

$d_G(2, 3) = 2$.

</details>

---

## Exercice 4 : Algorithme de Dijkstra (Pas à pas)

**Problème :**

Soit un graphe valué avec les sommets $S = \{A, B, C, D\}$.

Les arêtes et leurs poids (coûts) sont :

*   $\{A, B\}$ : 2
*   $\{A, C\}$ : 5
*   $\{B, C\}$ : 1
*   $\{B, D\}$ : 4
*   $\{C, D\}$ : 1

Appliquez l'algorithme de Dijkstra pour trouver le chemin le plus court (et sa longueur) partant de **A** pour aller à **D**. Remplissez le tableau de suivi.

<details>

<summary>Solution</summary>

**Méthode :** On maintient pour chaque sommet la distance minimale provisoire depuis A. On "fixe" le sommet non visité ayant la plus petite distance, puis on met à jour ses voisins.

**Étapes :**

*Initialisation :*

*   $d(A) = 0$, $d(B)=\infty, d(C)=\infty, d(D)=\infty$.
*   Sommets non fixés : $\{A, B, C, D\}$.

**Itération 1 :**

*   Sommet non fixé le plus proche : **A** ($d=0$).
*   On fixe A.
*   Voisins de A : B (poids 2), C (poids 5).
*   Mise à jour B : $\min(\infty, 0+2) = 2$. Prédécesseur : A.
*   Mise à jour C : $\min(\infty, 0+5) = 5$. Prédécesseur : A.
*   *État :* $d(A)=0, d(B)=2, d(C)=5, d(D)=\infty$. Non fixés : $\{B, C, D\}$.

**Itération 2 :**

*   Sommet non fixé le plus proche : **B** ($d=2$).
*   On fixe B.
*   Voisins de B non fixés : C (poids 1), D (poids 4).
*   Mise à jour C : On compare l'actuel (5) avec (dist B + poids B-C) = $2 + 1 = 3$.
    *   $3 < 5$, donc nouvelle distance $d(C) = 3$. Prédécesseur : B.
*   Mise à jour D : $\min(\infty, 2+4) = 6$. Prédécesseur : B.
*   *État :* $d(A)=0, d(B)=2, d(C)=3, d(D)=6$. Non fixés : $\{C, D\}$.

**Itération 3 :**

*   Sommet non fixé le plus proche : **C** ($d=3$).
*   On fixe C.
*   Voisins de C non fixés : D (poids 1).
*   Mise à jour D : On compare l'actuel (6) avec (dist C + poids C-D) = $3 + 1 = 4$.
    *   $4 < 6$, donc nouvelle distance $d(D) = 4$. Prédécesseur : C.
*   *État :* $d(A)=0, d(B)=2, d(C)=3, d(D)=4$. Non fixés : $\{D\}$.

**Itération 4 :**

*   Il ne reste que D. On le fixe. Fin.

**Reconstruction du chemin :**

*   $D$ vient de $C$ (coût cumulé 4).
*   $C$ vient de $B$ (coût cumulé 3).
*   $B$ vient de $A$ (coût cumulé 2).

**Réponse :**

La distance minimale est **4**.

Le chemin est **$A \to B \to C \to D$**.

</details>

---

## Exercice 5 : Graphes Eulériens et Semi-Eulériens

**Problème :**

Considérez les trois graphes connexes suivants décrits par les degrés de leurs sommets :

1.  **Graphe $G_1$** : 4 sommets, degrés $(2, 2, 2, 2)$.
2.  **Graphe $G_2$** : 5 sommets, degrés $(3, 3, 2, 2, 2)$.
3.  **Graphe $G_3$** : 4 sommets, degrés $(3, 3, 3, 3)$.

Pour chaque graphe :

a) Est-il Eulérien ? (Admet-il un cycle passant par toutes les arêtes une seule fois)

b) Est-il Semi-Eulérien ? (Admet-il une chaîne ouverte passant par toutes les arêtes)

c) Justifiez en utilisant le théorème d'Euler.

<details>

<summary>Solution</summary>

**Méthode :** Le théorème d'Euler stipule qu'un graphe connexe est Eulérien ssi tous les sommets sont de degré pair. Il est semi-eulérien ssi il a exactement 2 sommets de degré impair.

**Étapes :**

1.  **Analyse de $G_1$ (2, 2, 2, 2)** :
    *   Tous les degrés sont **pairs**.
    *   **Réponse :** Il est **Eulérien** (donc on peut faire un tour complet et revenir au départ).

2.  **Analyse de $G_2$ (3, 3, 2, 2, 2)** :
    *   Il y a deux sommets de degré 3 (impair) et trois sommets de degré 2 (pair).
    *   Nombre de sommets impairs = 2.
    *   **Réponse :** Il n'est pas Eulérien (pas de cycle fermé), mais il est **Semi-Eulérien**. On peut tracer le graphe d'un trait en commençant par un sommet de degré 3 et en finissant par l'autre.

3.  **Analyse de $G_3$ (3, 3, 3, 3)** :
    *   Tous les 4 sommets sont de degré impair.
    *   Nombre de sommets impairs = 4.
    *   Ce n'est ni 0, ni 2.
    *   **Réponse :** Il n'est **ni Eulérien, ni Semi-Eulérien**. Impossible de le dessiner sans lever le crayon ou repasser sur un trait.

</details>

---

## Exercice 6 : Graphes Hamiltoniens (Application des conditions)

**Problème :**

Soit un graphe simple $G$ d'ordre $n=6$.

On suppose que le degré minimum de tout sommet dans ce graphe est $\delta(G) = 3$.

1.  Ce graphe contient-il nécessairement un cycle Hamiltonien ?
2.  Quel théorème utilisez-vous pour l'affirmer ?
3.  Si le degré minimum était $\delta(G) = 2$, pourrait-on garantir qu'il est Hamiltonien ? (Donnez un contre-exemple mental si possible).

<details>

<summary>Solution</summary>

**Méthode :** Utiliser les conditions suffisantes de Dirac ou Ore.

**Étapes :**

1.  **Application du théorème de Dirac :**
    *   Le théorème de Dirac dit : Soit $G$ un graphe simple d'ordre $n \geq 3$. Si pour tout sommet $v$, $d(v) \geq n/2$, alors $G$ est hamiltonien.
    *   Ici $n=6$. Donc $n/2 = 3$.
    *   La condition donnée est $\delta(G) = 3$, c'est-à-dire que pour tout sommet $v$, $d(v) \geq 3$.
    *   La condition $d(v) \geq n/2$ est satisfaite.

2.  **Conclusion :**
    *   Oui, le graphe contient nécessairement un cycle Hamiltonien.

3.  **Cas $\delta(G) = 2$ :**
    *   Si le degré min est 2 (inférieur à $n/2=3$), le théorème ne s'applique pas. Cela ne veut pas dire qu'il n'est pas hamiltonien, mais on ne peut pas le *garantir*.
    *   *Contre-exemple :* Imaginez deux triangles disjoints ($1-2-3-1$ et $4-5-6-4$) reliés par une seule arête entre 1 et 4. Les degrés seraient (3, 2, 2, 3, 2, 2). Le degré min est 2.
    *   Ce graphe n'est pas hamiltonien car si on passe de 1 à 4 (le "pont"), on ne peut plus revenir visiter les sommets restants du premier triangle sans repasser par le pont (ce qui est interdit dans un cycle).

**Réponse :**

1. Oui.
2. Théorème de Dirac.
3. Non, on ne peut pas le garantir (exemple des deux triangles reliés par un pont).

</details>

---

## Exercice 7 : Arbres et Propriétés

**Problème :**

On étudie un graphe $G=(S, A)$.

1.  $G$ est connexe et possède $n=12$ sommets et $m=11$ arêtes. Est-ce un arbre ?
2.  $G$ est sans cycle et possède $n=12$ sommets et $m=10$ arêtes. Est-ce un arbre ?
3.  Si $G$ est un arbre avec $n=12$ sommets, combien de feuilles possède-t-il au minimum ?

<details>

<summary>Solution</summary>

**Méthode :** Utiliser les équivalences de définition des arbres (Théorème 7.19). Pour un arbre d'ordre $n$, il y a toujours $n-1$ arêtes.

**Étapes :**

1.  **Cas 1 : Connexe, $n=12, m=11$**
    *   On a $m = n - 1$ ($11 = 12 - 1$).
    *   Un graphe connexe avec $n-1$ arêtes est nécessairement un arbre (et donc acyclique).
    *   **Réponse :** Oui.

2.  **Cas 2 : Sans cycle (Acyclique), $n=12, m=10$**
    *   Pour être un arbre (donc connexe et sans cycle), il faudrait exactement $m = n - 1 = 11$ arêtes.
    *   Ici il y a 10 arêtes, soit moins que nécessaire pour connecter 12 sommets.
    *   Le graphe n'est pas connexe. C'est une **forêt** composée de plusieurs arbres (ici exactement $12 - 10 = 2$ composantes connexes).
    *   **Réponse :** Non, c'est une forêt (pas connexe).

3.  **Cas 3 : Nombre de feuilles minimal**
    *   Un arbre (avec $n \ge 2$) a toujours au moins 2 feuilles.
    *   Le cas minimal est la "chaîne" linéaire : $1-2-3-...-12$. Seuls les deux bouts sont de degré 1.
    *   **Réponse :** Au minimum 2 feuilles.

</details>

---

## Exercice 8 : Identification dans une figure

**Problème :**

Soit le graphe "Papillon" composé de deux triangles $\{1, 2, 3\}$ et $\{3, 4, 5\}$ partageant le sommet commun 3.

Arêtes : $\{1,2\}, \{2,3\}, \{3,1\}, \{3,4\}, \{4,5\}, \{5,3\}$.

1.  Trouvez un cycle de longueur 3.
2.  Le graphe possède-t-il un cycle de longueur 6 ?
3.  Quelle est la longueur du plus long tour possible (sans répéter d'arêtes) ?
4.  Quel est le diamètre du graphe (la plus grande distance entre deux points) ?

<details>

<summary>Solution</summary>

**Méthode :** Observer la structure du graphe pour identifier les chemins possibles.

**Étapes :**

1.  **Cycle de longueur 3 :**
    *   Il y en a deux évidents : $(1, 2, 3, 1)$ ou $(3, 4, 5, 3)$.

2.  **Cycle de longueur 6 :**
    *   Un cycle doit avoir tous ses sommets distincts.
    *   Pour passer du triangle gauche au droit, il faut passer par 3. Pour revenir (fermer le cycle), il faudrait repasser par 3.
    *   Le sommet 3 serait visité deux fois.
    *   **Réponse :** Non, pas de cycle passant par tous les sommets (le graphe n'est pas hamiltonien).

3.  **Tour maximal :**
    *   Un tour peut repasser par les sommets mais pas les arêtes.
    *   Le graphe est eulérien (degrés : $d(1)=2, d(2)=2, d(3)=4, d(4)=2, d(5)=2$, tous pairs).
    *   On peut parcourir toutes les arêtes. Il y a 6 arêtes.
    *   **Réponse :** Le tour maximal a une longueur de 6 (c'est un tour eulérien). Exemple : $(1, 2, 3, 4, 5, 3, 1)$.

4.  **Diamètre :**
    *   Les points les plus éloignés semblent être "le bout de l'aile gauche" (ex: 1 ou 2) et "le bout de l'aile droite" (ex: 4 ou 5).
    *   Chemin de 1 à 4 : $1 \to 3 \to 4$. Longueur 2.
    *   Chemin de 2 à 5 : $2 \to 3 \to 5$. Longueur 2.
    *   Il n'y a pas de chemin plus court de longueur 3.
    *   **Réponse :** Diamètre = 2.

</details>

---

## Exercice 9 : Calcul de distance dans un graphe complexe

**Problème :**

On considère le graphe $K_5$ (graphe complet à 5 sommets) duquel on retire l'arête $\{1, 5\}$.

Toutes les arêtes présentes ont un poids de 1 (distance standard).

1.  Quelle est la distance $d(1, 2)$ ?
2.  Quelle est la distance $d(1, 5)$ ? Justifiez en détaillant le chemin.

<details>

<summary>Solution</summary>

**Méthode :** Dans un graphe complet, tout est relié à tout (distance 1). Si on retire une arête $\{u,v\}$, on ne peut plus aller directement de $u$ à $v$.

**Étapes :**

1.  **Distance $d(1, 2)$ :**
    *   L'arête $\{1, 2\}$ n'a pas été retirée (seule $\{1, 5\}$ l'est).
    *   Le lien direct existe.
    *   **Réponse :** 1.

2.  **Distance $d(1, 5)$ :**
    *   Lien direct $\{1, 5\}$ inexistant.
    *   On doit passer par un intermédiaire.
    *   Comme c'était un graphe complet à l'origine, 1 est relié à 2, 3, 4. Et 5 est relié à 2, 3, 4.
    *   On peut faire le chemin $1 \to 2 \to 5$ (ou via 3, ou via 4).
    *   C'est un chemin de longueur 2.
    *   **Réponse :** 2.

</details>

---

## Exercice 10 : Problème d'Application (Réseau)

**Problème :**

Un architecte réseau doit relier 5 ordinateurs (A, B, C, D, E). Le coût de câblage entre chaque paire est donné par la matrice suivante (en centaines d'euros). Si la valeur est $\infty$, le câblage est impossible.

$$

\begin{pmatrix}

0 & 4 & 2 & \infty & \infty \\

4 & 0 & 5 & 10 & \infty \\

2 & 5 & 0 & \infty & 3 \\

\infty & 10 & \infty & 0 & 4 \\

\infty & \infty & 3 & 4 & 0

\end{pmatrix}

$$

On veut relier tous les ordinateurs entre eux (connexité) avec un coût total minimal.

Quelle structure de graphe cherchez-vous ? Dessinez la solution optimale et calculez son coût total.

<details>

<summary>Solution</summary>

**Méthode :** On cherche un sous-graphe connexe qui contient tous les sommets avec un coût minimal et sans cycle (pour minimiser les coûts). C'est la définition d'un **Arbre Couvrant de Poids Minimum** (Minimum Spanning Tree). On peut utiliser l'algorithme de Kruskal ou Prim (intuitif ici vu la petite taille).

**Étapes :**

1.  **Identifier les arêtes possibles et leurs coûts (tri croissant) :**
    *   $\{A, C\} = 2$
    *   $\{C, E\} = 3$
    *   $\{A, B\} = 4$
    *   $\{D, E\} = 4$
    *   $\{B, C\} = 5$
    *   $\{B, D\} = 10$

2.  **Sélection des arêtes (Kruskal) :**
    *   On prend la moins chère : $\{A, C\}$ (Coût 2). Groupe $\{A, C\}$.
    *   Suivante : $\{C, E\}$ (Coût 3). Groupe $\{A, C, E\}$.
    *   Suivante : $\{A, B\}$ ou $\{D, E\}$. Prenons $\{A, B\}$ (Coût 4). Groupe $\{B, A, C, E\}$.
    *   Suivante : $\{D, E\}$ (Coût 4). Groupe $\{B, A, C, E, D\}$.
    *   Tous les sommets sont connectés.
    *   Vérification : Pas de cycle créé.

3.  **Vérification des arêtes rejetées :**
    *   Si on ajoutait $\{B, C\}$ (5), on créerait le cycle $A-B-C-A$. Inutile.
    *   Si on ajoutait $\{B, D\}$ (10), on créerait un cycle.

4.  **Calcul du coût total :**
    *   $2 + 3 + 4 + 4 = 13$.

**Réponse :**

On cherche un **Arbre Couvrant**.

Les arêtes à installer sont $\{A,C\}, \{C,E\}, \{A,B\}, \{D,E\}$.

Coût total : 13 (soit 1300 euros).

</details>
