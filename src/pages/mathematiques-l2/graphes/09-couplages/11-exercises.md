---
id: 74c7140e
type: exercises
order: 11
title: Chapitre 9 Couplages - exercices (A)
tags:
  - Couplages
  - Théorème de Berge
  - Théorème de Hall
  - Graphes bipartis
  - Algorithme de Gale et Shapley
  - Couplages stables
createdAt: '2025-12-19T13:18:01.776Z'
level: regular
course: Graphes et Combinatoire
courseId: 7027276b
chapter: Chapitre 9 Couplages
chapterId: c89a6b95
---
# Exercices "Chapitre 9 Couplages" (A)

---

## Exercice 1 : Identification et Propriétés de Base

**Problème :**

Soit un graphe $G = (S, A)$ avec l'ensemble de sommets $S = \{1, 2, 3, 4, 5, 6\}$ et l'ensemble d'arêtes suivant :

$$ A = \{\{1,2\}, \{1,4\}, \{2,3\}, \{2,5\}, \{3,6\}, \{4,5\}, \{5,6\}\} $$

On considère l'ensemble d'arêtes $M = \{\{1,4\}, \{2,3\}, \{5,6\}\}$.

1.  Vérifiez si $M$ est un couplage valide pour $G$.
2.  Identifiez les sommets **saturés** et les sommets **insaturés** par $M$.
3.  Le couplage $M$ est-il un couplage parfait ? Justifiez.

<details>

<summary>Solution</summary>

**Méthode :**

Pour vérifier si un ensemble d'arêtes est un couplage, il faut s'assurer qu'aucun sommet n'apparaît plus d'une fois parmi les arêtes sélectionnées. Un couplage est parfait s'il sature tous les sommets du graphe.

**Étapes :**

1.  **Vérification de la définition de couplage :**

    Examinons les arêtes de $M = \{\{1,4\}, \{2,3\}, \{5,6\}\}$.

    *   L'arête $\{1,4\}$ utilise les sommets 1 et 4.
    *   L'arête $\{2,3\}$ utilise les sommets 2 et 3.
    *   L'arête $\{5,6\}$ utilise les sommets 5 et 6.
    
    Aucun sommet n'est répété. Chaque sommet est extrémité d'au plus une arête de $M$. Donc, $M$ est bien un couplage.

2.  **Identification des sommets saturés/insaturés :**
    *   Sommets présents dans $M$ : $\{1, 4, 2, 3, 5, 6\}$.
    *   Ensemble des sommets du graphe $S = \{1, 2, 3, 4, 5, 6\}$.
    *   Tous les sommets de $S$ sont extrémités d'une arête de $M$.
    *   Sommets saturés : $\{1, 2, 3, 4, 5, 6\}$.
    *   Sommets insaturés : $\emptyset$ (aucun).

3.  **Couplage parfait :**

    Puisque l'ensemble des sommets saturés est égal à l'ensemble total des sommets $S$ (aucun sommet n'est laissé libre), le couplage est parfait.

**Réponse :**

1. Oui, $M$ est un couplage.
2. Tous les sommets $\{1, 2, 3, 4, 5, 6\}$ sont saturés. Aucun n'est insaturé.
3. Oui, c'est un couplage parfait.

</details>

---

## Exercice 2 : Couplage Maximal vs Maximum

**Problème :**

Soit le graphe chemin $P_6$ constitué des sommets $S=\{1, 2, 3, 4, 5, 6\}$ et des arêtes $A=\{\{1,2\}, \{2,3\}, \{3,4\}, \{4,5\}, \{5,6\}\}$.

Considérons l'ensemble d'arêtes $M_1 = \{\{2,3\}, \{4,5\}\}$.

1.  Montrez que $M_1$ est un couplage **maximal**.
2.  Montrez que $M_1$ n'est pas un couplage **maximum**.
3.  Donnez un couplage maximum $M^*$ pour ce graphe.

<details>

<summary>Solution</summary>

**Méthode :**

Un couplage est *maximal* si on ne peut pas ajouter d'arête sans briser la règle du couplage (optimum local). Il est *maximum* s'il a la plus grande cardinalité possible pour ce graphe (optimum global).

**Étapes :**

1.  **Test de maximalité pour $M_1$ :**
    *   $M_1 = \{\{2,3\}, \{4,5\}\}$.
    *   Les sommets saturés sont $\{2, 3, 4, 5\}$. Les sommets libres sont $\{1, 6\}$.
    *   Pouvons-nous ajouter une arête de $G$ ?
        *   $\{1,2\}$ ? Impossible, 2 est déjà pris.
        *   $\{3,4\}$ ? Impossible, 3 et 4 sont déjà pris.
        *   $\{5,6\}$ ? Impossible, 5 est déjà pris.
    *   Aucune arête ne peut être ajoutée à $M_1$. Donc, $M_1$ est **maximal**.

2.  **Test de maximum :**
    *   La taille de $M_1$ est $|M_1| = 2$.
    *   Est-il possible de trouver un couplage de taille supérieure ?
    *   Le graphe a 6 sommets. Un couplage parfait aurait une taille de $6/2 = 3$. Si un couplage de taille 3 existe, alors $M_1$ (taille 2) n'est pas maximum.

3.  **Construction d'un couplage maximum $M^*$ :**
    *   Prenons les arêtes une sur deux en partant du début du chemin.
    *   $M^* = \{\{1,2\}, \{3,4\}, \{5,6\}\}$.
    *   C'est un couplage valide.
    *   Taille $|M^*| = 3$.
    *   Puisque $|M^*| > |M_1|$, $M_1$ n'était pas maximum.

**Réponse :**

1. $M_1$ est maximal car on ne peut ajouter aucune arête disjointe.
2. $M_1$ n'est pas maximum car sa taille est 2, et il existe un couplage de taille 3.
3. Un couplage maximum est $M^* = \{\{1,2\}, \{3,4\}, \{5,6\}\}$.

</details>

---

## Exercice 3 : Chaînes Alternées et Augmentantes

**Problème :**

On considère un graphe $G$ et un couplage actuel $M$. On a identifié une chaîne simple de sommets :

$$ \mu = (x_1, x_2, x_3, x_4, x_5, x_6) $$

Les statuts des arêtes de la chaîne sont les suivants :

*   $\{x_1, x_2\} \notin M$
*   $\{x_2, x_3\} \in M$
*   $\{x_3, x_4\} \notin M$
*   $\{x_4, x_5\} \in M$
*   $\{x_5, x_6\} \notin M$

De plus, on sait que les sommets $x_1$ et $x_6$ sont **insaturés** par $M$ dans $G$.

1.  Quel type de chaîne est $\mu$ ?
2.  En utilisant le théorème de Berge, construisez un nouveau couplage $M'$ plus grand que $M$.
3.  Si $|M| = k$, quelle est la taille de $|M'|$ ?

<details>

<summary>Solution</summary>

**Méthode :**

On analyse l'alternance des arêtes (dans $M$, hors de $M$) et l'état des extrémités. Si la chaîne est alternée et relie deux sommets libres distincts, c'est une chaîne augmentante. On applique alors la différence symétrique (inversion des arêtes) pour augmenter le couplage.

**Étapes :**

1.  **Identification de la chaîne :**
    *   Les arêtes alternent : Hors-Dans-Hors-Dans-Hors. C'est une **chaîne alternée**.
    *   Les extrémités $x_1$ et $x_6$ sont insaturées (libres).
    *   Par définition, une chaîne alternée reliant deux sommets insaturés est une **chaîne augmentante**.

2.  **Construction de $M'$ :**
    *   On effectue la différence symétrique $M' = M \oplus \mu$ (on inverse l'appartenance à $M$ le long de la chaîne).
    *   Arêtes à retirer de $M$ : $\{x_2, x_3\}, \{x_4, x_5\}$.
    *   Arêtes à ajouter à $M$ : $\{x_1, x_2\}, \{x_3, x_4\}, \{x_5, x_6\}$.
    *   $M'$ contient toutes les arêtes de $M$ qui n'étaient pas dans la chaîne, plus les nouvelles arêtes ajoutées.

3.  **Calcul de la taille :**
    *   Nous avons retiré 2 arêtes et ajouté 3 arêtes.
    *   Bilan : $+1$ arête.
    *   $|M'| = |M| + 1 = k + 1$.

**Réponse :**

1. $\mu$ est une chaîne augmentante.
2. $M'$ est obtenu en remplaçant $\{\{x_2, x_3\}, \{x_4, x_5\}\}$ par $\{\{x_1, x_2\}, \{x_3, x_4\}, \{x_5, x_6\}\}$.
3. $|M'| = k+1$.

</details>

---

## Exercice 4 : Application du Théorème de Berge

**Problème :**

Soit le graphe $G$ défini par le cycle $C_5$ (sommets $1,2,3,4,5$ et arêtes $\{1,2\}, \{2,3\}, \{3,4\}, \{4,5\}, \{5,1\}$).

Soit le couplage $M = \{\{2,3\}, \{4,5\}\}$.

1.  Identifiez le(s) sommet(s) insaturé(s).
2.  Cherchez une chaîne augmentante partant d'un sommet insaturé.
3.  Concluez sur la nature du couplage $M$ (est-il maximum ?).

<details>

<summary>Solution</summary>

**Méthode :**

On part d'un sommet libre et on essaie de construire une chaîne alternée. Si on arrive à un autre sommet libre, on a trouvé une chaîne augmentante. Si on explore toutes les possibilités sans succès, le couplage est maximum (Théorème de Berge).

**Étapes :**

1.  **Sommets insaturés :**
    *   $M$ couvre $\{2,3,4,5\}$.
    *   Le seul sommet insaturé est $1$.

2.  **Recherche de chaîne augmentante :**
    *   Départ : sommet $1$.
    *   Voisins de 1 : $2$ et $5$.
    *   Essayons vers 2 : Arête $\{1,2\} \notin M$. Arrivée en 2.
    *   Depuis 2, nous *devons* prendre l'arête de $M$ : $\{2,3\}$. Arrivée en 3.
    *   Depuis 3, nous devons prendre une arête hors de $M$. Voisin possible : $4$ (car $\{3,4\} \notin M$).
    *   Arrivée en 4. Depuis 4, nous *devons* prendre l'arête de $M$ : $\{4,5\}$. Arrivée en 5.
    *   Depuis 5, nous devons prendre une arête hors de $M$. Voisin possible : $1$.
    *   L'arête est $\{5,1\}$. On revient au point de départ.
    *   La chaîne formée est $(1, 2, 3, 4, 5, 1)$. C'est un cycle alterné, pas une chaîne augmentante (car elle ne finit pas sur un *autre* sommet insaturé).

    *   Note : Une chaîne augmentante doit commencer par un sommet insaturé et finir par un sommet insaturé **distinct**. Ici, il n'y a qu'un seul sommet insaturé (le sommet 1). Il est donc impossible de relier deux sommets insaturés distincts.

3.  **Conclusion :**
    *   Il n'existe pas de chaîne augmentante.
    *   D'après le Théorème de Berge, $M$ est donc un couplage maximum.
    *   (Note : Dans un cycle impair $C_{2k+1}$, la taille du couplage maximum est $k$. Ici $C_5$, taille 2. C'est cohérent).

**Réponse :**

1. Sommet insaturé : $1$.
2. Aucune chaîne augmentante n'existe (car il n'y a qu'un seul sommet libre).
3. $M$ est un couplage maximum.

</details>

---

## Exercice 5 : Théorème de Hall (Vérification)

**Problème :**

On considère un graphe biparti $G=(X \cup Y, A)$ représentant des offres d'emploi ($X$) et des candidats ($Y$).

$X = \{x_1, x_2, x_3, x_4\}$

$Y = \{y_1, y_2, y_3, y_4\}$

Les arêtes (candidatures possibles) sont :

*   $x_1$ est relié à $\{y_1, y_2\}$
*   $x_2$ est relié à $\{y_1\}$
*   $x_3$ est relié à $\{y_2, y_3\}$
*   $x_4$ est relié à $\{y_1\}$

Existe-t-il un couplage qui sature $X$ (c'est-à-dire qui attribue un emploi à chaque offre) ? Utilisez la condition de Hall pour justifier.

<details>

<summary>Solution</summary>

**Méthode :**

Le Théorème de Hall stipule qu'un couplage saturant $X$ existe si et seulement si pour tout sous-ensemble $U \subseteq X$, le voisinage $|N(U)| \ge |U|$. Nous devons chercher s'il existe un sous-ensemble "goulot d'étranglement" qui viole cette condition.

**Étapes :**

1.  **Analyse des voisinages restreints :**

    Regardons les offres qui ont peu de candidats.

    *   $N(\{x_2\}) = \{y_1\}$ (taille 1 $\ge$ 1, ok).
    *   $N(\{x_4\}) = \{y_1\}$ (taille 1 $\ge$ 1, ok).

2.  **Test d'un sous-ensemble combiné :**

    Considérons l'ensemble $U = \{x_1, x_2, x_4\}$.

    *   Voisins de $x_1$ : $y_1, y_2$
    *   Voisins de $x_2$ : $y_1$
    *   Voisins de $x_4$ : $y_1$
    
    Le voisinage total est $N(U) = \{y_1, y_2\} \cup \{y_1\} \cup \{y_1\} = \{y_1, y_2\}$.

3.  **Vérification de la condition de Hall :**
    *   Taille du sous-ensemble : $|U| = 3$.
    *   Taille du voisinage : $|N(U)| = 2$.
    *   On a $|N(U)| < |U|$ ($2 < 3$).

4.  **Conclusion :**

    La condition de Hall n'est pas respectée pour l'ensemble $U=\{x_1, x_2, x_4\}$. Il est impossible de trouver 3 candidats distincts pour ces 3 offres car elles se partagent seulement 2 candidats ($y_1$ et $y_2$).

**Réponse :**

Non, il n'existe pas de couplage saturant $X$. L'ensemble $U=\{x_1, x_2, x_4\}$ viole la condition de Hall car $|N(U)|=2 < |U|=3$.

</details>

---

## Exercice 6 : Théorème de Hall (Succès)

**Problème :**

Soit un graphe biparti avec $X=\{A, B, C\}$ et $Y=\{1, 2, 3\}$.

Les arêtes sont : $(A,1), (A,2), (B,1), (B,3), (C,2), (C,3)$.

1.  Calculez $|N(U)|$ pour tous les sous-ensembles $U \subseteq X$ de taille 1, 2 et 3.
2.  La condition de Hall est-elle vérifiée ?
3.  Déduisez-en si un couplage parfait existe et donnez-en un exemple.

<details>

<summary>Solution</summary>

**Méthode :**

On liste tous les sous-ensembles possibles de $X$ et on vérifie l'inégalité de Hall systématiquement.

**Étapes :**

1.  **Sous-ensembles de taille 1 :**
    *   $N(\{A\}) = \{1, 2\}$, taille 2 $\ge$ 1. OK.
    *   $N(\{B\}) = \{1, 3\}$, taille 2 $\ge$ 1. OK.
    *   $N(\{C\}) = \{2, 3\}$, taille 2 $\ge$ 1. OK.

2.  **Sous-ensembles de taille 2 :**
    *   $U=\{A, B\} \Rightarrow N(U)=\{1, 2, 3\}$. Taille 3 $\ge$ 2. OK.
    *   $U=\{A, C\} \Rightarrow N(U)=\{1, 2, 3\}$. Taille 3 $\ge$ 2. OK.
    *   $U=\{B, C\} \Rightarrow N(U)=\{1, 2, 3\}$. Taille 3 $\ge$ 2. OK.

3.  **Sous-ensemble de taille 3 :**
    *   $U=\{A, B, C\} \Rightarrow N(U)=\{1, 2, 3\}$. Taille 3 $\ge$ 3. OK.

4.  **Conclusion et Exemple :**
    *   La condition est vérifiée pour tous les sous-ensembles. Un couplage saturant $X$ existe. Comme $|X|=|Y|$, c'est un couplage parfait.
    *   Exemple : Prenons $(A,1)$. Reste $B,C$ et $2,3$. Prenons $(B,3)$. Reste $(C,2)$. L'arête $(C,2)$ existe.
    *   Couplage : $M = \{(A,1), (B,3), (C,2)\}$.

**Réponse :**

1. Voir calculs ci-dessus (tous $|N(U)| \ge |U|$).
2. Oui, la condition de Hall est vérifiée.
3. Oui, un couplage parfait existe, par exemple $M = \{(A,1), (B,3), (C,2)\}$.

</details>

---

## Exercice 7 : Vérification de Stabilité (Mariages)

**Problème :**

On considère deux ensembles $H = \{h_1, h_2, h_3\}$ et $F = \{f_1, f_2, f_3\}$.

Les préférences sont les suivantes (du préféré au moins aimé) :

*   $h_1 : f_2 > f_1 > f_3$
*   $h_2 : f_1 > f_2 > f_3$
*   $h_3 : f_1 > f_2 > f_3$

*   $f_1 : h_1 > h_3 > h_2$
*   $f_2 : h_3 > h_1 > h_2$
*   $f_3 : h_1 > h_3 > h_2$

On propose le couplage $M = \{(h_1, f_1), (h_2, f_2), (h_3, f_3)\}$.

Ce couplage est-il stable ? Si non, trouvez une paire instable (bloquante).

<details>

<summary>Solution</summary>

**Méthode :**

Pour chaque paire $(h, f)$ qui n'est **pas** dans le couplage, on vérifie si $h$ préfère $f$ à sa partenaire actuelle ET si $f$ préfère $h$ à son partenaire actuel. Si les deux conditions sont vraies, la paire bloque la stabilité.

**Étapes :**

1.  **Analyse du couplage actuel :**
    *   $h_1$ est avec $f_1$.
    *   $h_2$ est avec $f_2$.
    *   $h_3$ est avec $f_3$.

2.  **Recherche de paires instables :**

    Regardons les préférences de $h_1$. Son premier choix est $f_2$. Il est actuellement avec $f_1$ (son 2ème choix). Il préfèrerait être avec $f_2$.

    *   Testons la paire $(h_1, f_2)$.
    *   **Coté $h_1$ :** Préfère $f_2$ à $f_1$ ? OUI.
    *   **Coté $f_2$ :** Elle est actuellement avec $h_2$. Regardons sa liste : $h_3 > h_1 > h_2$. Elle préfère $h_1$ à $h_2$.
    *   **Conclusion :** $h_1$ et $f_2$ préfèrent être ensemble plutôt que de rester avec leurs partenaires actuels respectifs.

3.  **Conclusion :**

    Le couplage n'est pas stable à cause de la paire $(h_1, f_2)$. (Il peut y en avoir d'autres, mais une seule suffit pour prouver l'instabilité).

**Réponse :**

Non, le couplage n'est pas stable. La paire $(h_1, f_2)$ est une paire instable.

</details>

---

## Exercice 8 : Algorithme de Gale-Shapley

**Problème :**

Utilisez les mêmes préférences que l'exercice 7.

Appliquez l'algorithme de Gale-Shapley où les **hommes (H) font les propositions** pour trouver un couplage stable.

**Préférences :**

*   $h_1 : f_2, f_1, f_3$
*   $h_2 : f_1, f_2, f_3$
*   $h_3 : f_1, f_2, f_3$
*   $f_1 : h_1, h_3, h_2$
*   $f_2 : h_3, h_1, h_2$
*   $f_3 : h_1, h_3, h_2$

<details>

<summary>Solution</summary>

**Méthode :**

On procède par rondes. À chaque étape, les hommes célibataires proposent à la femme qu'ils préfèrent parmi celles qui ne les ont pas encore rejetés. Les femmes gardent provisoirement la meilleure offre reçue et rejettent les autres.

**Étapes :**

1.  **Ronde 1 :**
    *   $h_1$ propose à $f_2$ (1er choix).
    *   $h_2$ propose à $f_1$ (1er choix).
    *   $h_3$ propose à $f_1$ (1er choix).
    *   *Décisions des femmes :*
        *   $f_2$ reçoit $h_1$. Elle accepte provisoirement $(h_1, f_2)$.
        *   $f_1$ reçoit $h_2$ et $h_3$. Sa liste est $h_1 > h_3 > h_2$. Elle préfère $h_3$ à $h_2$. Elle garde $h_3$ et rejette $h_2$.
    *   *État :* Couples provisoires $\{(h_1, f_2), (h_3, f_1)\}$. Homme libre : $h_2$.

2.  **Ronde 2 :**
    *   $h_2$ a été rejeté par $f_1$. Il propose à son choix suivant : $f_2$.
    *   *Décisions des femmes :*
        *   $f_2$ est avec $h_1$. Elle reçoit une offre de $h_2$. Sa liste est $h_3 > h_1 > h_2$. Elle préfère son partenaire actuel $h_1$ à $h_2$. Elle rejette $h_2$.
    *   *État :* Couples provisoires $\{(h_1, f_2), (h_3, f_1)\}$. Homme libre : $h_2$.

3.  **Ronde 3 :**
    *   $h_2$ a été rejeté par $f_2$. Il propose à son choix suivant : $f_3$.
    *   *Décisions des femmes :*
        *   $f_3$ est libre. Elle accepte $h_2$.
    *   *État :* Tous les hommes sont casés.

4.  **Résultat Final :**

    Les couples formés sont $\{(h_1, f_2), (h_3, f_1), (h_2, f_3)\}$.

**Réponse :**

Le couplage stable obtenu par l'algorithme (H-optimal) est :

$$ M_{stable} = \{(h_1, f_2), (h_2, f_3), (h_3, f_1)\} $$

</details>

---

## Exercice 9 : Calcul de Couplages (Combinatoire)

**Problème :**

1.  Combien existe-t-il de couplages parfaits dans un graphe biparti complet $K_{3,3}$ ?
2.  Combien existe-t-il de couplages parfaits dans un graphe biparti complet $K_{4,4}$ ?
3.  Généralisez pour $K_{n,n}$.

<details>

<summary>Solution</summary>

**Méthode :**

Un couplage parfait dans $K_{n,n}$ (avec partition $X, Y$) correspond à une bijection de $X$ vers $Y$.

**Étapes :**

1.  **Pour $K_{3,3}$ :**
    *   Soit $X = \{x_1, x_2, x_3\}$.
    *   $x_1$ a 3 choix possibles dans $Y$.
    *   Une fois $x_1$ choisi, $x_2$ a 2 choix possibles (il ne peut pas prendre le partenaire de $x_1$).
    *   $x_3$ a 1 choix restant.
    *   Total : $3 \times 2 \times 1 = 3! = 6$.

2.  **Pour $K_{4,4}$ :**
    *   Même logique : $4 \times 3 \times 2 \times 1 = 4! = 24$.

3.  **Généralisation :**
    *   Le premier sommet a $n$ choix, le second $n-1$, etc.
    *   Le nombre de couplages parfaits est $n!$ (factorielle de $n$).

**Réponse :**

1. 6 couplages parfaits.
2. 24 couplages parfaits.
3. $n!$ couplages parfaits.

</details>

---

## Exercice 10 : Problème d'application (Affectation)

**Problème :**

Une entreprise a 4 tâches ($T_1, T_2, T_3, T_4$) à accomplir et 4 employés ($E_1, E_2, E_3, E_4$).

La matrice suivante indique par un "1" que l'employé est qualifié pour la tâche, et "0" sinon.

| | $T_1$ | $T_2$ | $T_3$ | $T_4$ |

|---|---|---|---|---|

| **$E_1$** | 1 | 1 | 0 | 0 |

| **$E_2$** | 0 | 1 | 1 | 0 |

| **$E_3$** | 1 | 0 | 0 | 0 |

| **$E_4$** | 0 | 0 | 1 | 1 |

Trouvez une affectation (couplage parfait) qui assigne chaque employé à une tâche unique pour laquelle il est qualifié. Expliquez votre démarche (vous pouvez utiliser l'heuristique de votre choix, par exemple en regardant les contraintes les plus fortes d'abord).

<details>

<summary>Solution</summary>

**Méthode :**

On peut modéliser cela comme un graphe biparti et chercher un couplage parfait. Une bonne stratégie manuelle consiste à regarder les employés ou les tâches les plus contraints (ceux qui ont le moins de "1").

**Étapes :**

1.  **Identification des contraintes fortes :**
    *   Regardons les lignes (Employés) : $E_3$ ne sait faire que $T_1$. C'est une contrainte critique.
    *   Regardons les colonnes (Tâches) : $T_4$ ne peut être faite que par $E_4$. C'est une contrainte critique.

2.  **Assignations forcées :**
    *   Assignons $E_3 \to T_1$.
    *   Assignons $E_4 \to T_4$.

3.  **Réduction du problème :**
    *   Tâches restantes : $T_2, T_3$.
    *   Employés restants : $E_1, E_2$.
    *   $T_1$ et $T_4$ sont prises.
    *   Regardons $E_1$ : il sait faire $T_1$ et $T_2$. $T_1$ est prise, donc il doit faire $T_2$.
    *   Vérifions $E_2$ : il sait faire $T_2$ et $T_3$. S'il reste $T_3$, est-il qualifié ? Oui, $E_2$ a un "1" pour $T_3$.

4.  **Vérification finale :**
    *   $E_1 \to T_2$ (Qualifié)
    *   $E_2 \to T_3$ (Qualifié)
    *   $E_3 \to T_1$ (Qualifié)
    *   $E_4 \to T_4$ (Qualifié)
    *   Tous les employés et toutes les tâches sont couverts.

**Réponse :**

L'affectation est : $\{(E_1, T_2), (E_2, T_3), (E_3, T_1), (E_4, T_4)\}$.

</details>
