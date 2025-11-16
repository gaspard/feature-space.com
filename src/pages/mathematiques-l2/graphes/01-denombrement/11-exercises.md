---
id: 600f62b7
type: exercises
order: 11
title: Principes de dénombrement - exercices (A)
tags:
  - Combinatoire
  - Dénombrement
  - Cardinalité
  - Ensembles finis
  - Principes de comptage
createdAt: '2025-10-15T18:52:28.770Z'
level: regular
course: Graphes et Combinatoire
courseId: 7027276b
chapter: Principes de dénombrement
chapterId: 1a14d8a4
---
# Exercices "Principes de dénombrement" (A)

---

## Exercice 1

**Problème:** Soit $V = \{a, e, i, o, u, y\}$ l'ensemble des voyelles de l'alphabet français. Déterminez le cardinal de $V$ en construisant une bijection explicite entre $V$ et un ensemble $[n]$ pour un certain entier $n$.

<details>

<summary>Solution</summary>

**Méthode:** Pour trouver le cardinal d'un ensemble fini $V$, il faut, par définition, trouver un entier naturel $n$ et une bijection $f: V \to [n]$, où $[n] = \{1, 2, \dots, n\}$. Nous allons lister les éléments de $V$ et leur assigner un numéro unique de 1 jusqu'à ce que tous les éléments soient numérotés.

**Étapes:**

1.  Listons les éléments de l'ensemble $V$: $a, e, i, o, u, y$.
2.  Nous devons construire une application $f$ qui associe chaque voyelle à un entier unique. Le premier entier que nous utilisons est 1, le deuxième est 2, et ainsi de suite.
3.  Définissons l'application $f: V \to \{1, 2, 3, 4, 5, 6\}$ comme suit :
    -   $f(a) = 1$
    -   $f(e) = 2$
    -   $f(i) = 3$
    -   $f(o) = 4$
    -   $f(u) = 5$
    -   $f(y) = 6$
4.  L'ensemble d'arrivée est $[6] = \{1, 2, 3, 4, 5, 6\}$.
5.  Vérifions que $f$ est une bijection :
    -   **Injectivité**: Chaque voyelle est associée à un numéro différent. Il n'y a pas deux voyelles qui ont la même image.
    -   **Surjectivité**: Tous les numéros de 1 à 6 sont l'image d'une voyelle. Il n'y a pas de numéro "oublié" dans l'ensemble d'arrivée.
6.  Puisqu'il existe une bijection entre $V$ et $[6]$, le cardinal de $V$ est, par définition, 6.

**Réponse:** $|V| = 6$

</details>

---

## Exercice 2

**Problème:** Soit $E$ l'ensemble des nombres entiers pairs entre 1 et 100 (inclus) et $F$ l'ensemble des nombres entiers impairs entre 101 et 200 (inclus). Montrez que $|E| = |F|$ en construisant une bijection explicite de $E$ vers $F$.

<details>

<summary>Solution</summary>

**Méthode:** Le principe de bijection stipule que s'il existe une bijection entre deux ensembles, alors ils ont le même cardinal. Notre objectif est de trouver une fonction $f: E \to F$ et de prouver qu'elle est à la fois injective et surjective.

**Étapes:**

1.  Identifions les ensembles.
    -   $E = \{2, 4, 6, \dots, 100\}$. Un élément de $E$ peut s'écrire sous la forme $2k$ pour $k \in \{1, 2, \dots, 50\}$. Donc $|E|=50$.
    -   $F = \{101, 103, 105, \dots, 199\}$. Un élément de $F$ peut s'écrire sous la forme $2j+1$ pour $j \in \{50, 51, \dots, 99\}$. Le nombre d'éléments est $99 - 50 + 1 = 50$. Donc $|F|=50$.
    -   Nous savons déjà que les cardinaux sont égaux. L'exercice demande de le prouver via une bijection.

2.  Cherchons une règle simple pour transformer un élément de $E$ en un élément de $F$. Essayons une fonction linéaire simple. Prenons un élément $x \in E$. On veut lui associer un élément $y \in F$.
    -   Prenons le plus petit élément de $E$, $x=2$. On pourrait l'associer au plus petit élément de $F$, $y=101$. Une idée est d'ajouter une constante : $2 + 99 = 101$.
    -   Vérifions si cette règle fonctionne pour d'autres éléments. Si $x=4$, $4+99 = 103$, qui est bien dans $F$. Si $x=100$, $100+99=199$, qui est le dernier élément de $F$.
    -   La fonction semble être $f(x) = x+99$.

3.  Définissons formellement l'application $f: E \to F$ par $f(x) = x + 99$.

4.  Prouvons que $f$ est une bijection :
    -   **L'application est bien définie**: Si $x \in E$, alors $x$ est pair. Donc $x+99$ est impair. De plus, si $2 \le x \le 100$, alors $2+99 \le x+99 \le 100+99$, ce qui donne $101 \le f(x) \le 199$. Donc $f(x)$ est bien un élément de $F$.
    -   **Injectivité**: Supposons que $f(x_1) = f(x_2)$ pour $x_1, x_2 \in E$. Alors $x_1+99 = x_2+99$, ce qui implique $x_1=x_2$. Donc $f$ est injective.
    -   **Surjectivité**: Soit $y$ un élément quelconque de $F$. Nous devons trouver un antécédent $x \in E$ tel que $f(x)=y$. L'équation est $x+99=y$, donc $x=y-99$. Puisque $y \in F$, $y$ est impair et $101 \le y \le 199$. Alors $y-99$ est pair, et $101-99 \le y-99 \le 199-99$, ce qui donne $2 \le x \le 100$. Donc cet antécédent $x$ est bien dans $E$. La fonction est surjective.

5.  Puisque nous avons construit une bijection de $E$ vers $F$, le principe de bijection nous permet de conclure que les deux ensembles ont le même cardinal.

**Réponse:** La fonction $f(x) = x+99$ est une bijection de $E$ vers $F$, ce qui prouve que $|E| = |F|$.

</details>

---

## Exercice 3

**Problème:** On choisit 6 nombres entiers distincts dans l'ensemble $S = \{1, 2, 3, 4, 5, 6, 7, 8, 9, 10\}$. Montrez qu'il existe au moins une paire de nombres parmi ceux choisis dont la somme est égale à 11.

<details>

<summary>Solution</summary>

**Méthode:** C'est un problème classique d'application du principe des tiroirs. Il faut identifier les "objets" (les nombres choisis) et les "tiroirs" (des catégories dans lesquelles on range ces nombres). Si le nombre d'objets est supérieur au nombre de tiroirs, alors au moins un tiroir contiendra au moins deux objets.

**Étapes:**

1.  **Identifier les objets** : Les objets sont les 6 nombres que nous choisissons dans l'ensemble $S$.
2.  **Identifier les tiroirs** : Nous devons regrouper les nombres de $S$ en paires dont la somme est 11.
    -   $\{1, 10\}$ (somme 11)
    -   $\{2, 9\}$ (somme 11)
    -   $\{3, 8\}$ (somme 11)
    -   $\{4, 7\}$ (somme 11)
    -   $\{5, 6\}$ (somme 11)

    Nous avons ainsi 5 paires. Ces paires seront nos "tiroirs".

3.  **Définir l'application de rangement** : L'application $f$ associe chaque nombre choisi au "tiroir" (la paire) auquel il appartient.
    -   Par exemple, si on choisit le nombre 3, on le met dans le tiroir $\{3, 8\}$. Si on choisit 7, on le met dans le tiroir $\{4, 7\}$.

4.  **Appliquer le principe des tiroirs** :
    -   Nous avons $|E| = 6$ objets (les 6 nombres choisis).
    -   Nous avons $|F| = 5$ tiroirs (les 5 paires).
    -   Puisque le nombre d'objets (6) est strictement supérieur au nombre de tiroirs (5), le principe des tiroirs garantit qu'il existe au moins un tiroir qui contient au moins deux objets.

5.  **Interpréter le résultat** : Un tiroir contenant deux objets signifie que nous avons choisi les deux nombres qui forment la paire correspondante. Par exemple, si le tiroir $\{3, 8\}$ reçoit deux objets, cela signifie que nous avons choisi à la fois le nombre 3 et le nombre 8. La somme de ces deux nombres est $3+8=11$.

6.  **Conclusion** : Par conséquent, parmi les 6 nombres choisis, il y en a forcément deux qui appartiennent à la même paire, et leur somme est donc égale à 11.

**Réponse:** En formant 5 paires de nombres dont la somme est 11, le choix de 6 nombres impose, par le principe des tiroirs, que deux des nombres choisis appartiennent à la même paire, garantissant ainsi une somme de 11.

</details>

---

## Exercice 4

**Problème:** Un amphithéâtre contient 200 étudiants. Montrez qu'au moins 17 d'entre eux sont nés le même mois. Expliquez le raisonnement en utilisant la version généralisée du principe des tiroirs.

<details>

<summary>Solution</summary>

**Méthode:** La version généralisée du principe des tiroirs stipule que si l'on range $m$ objets dans $n$ tiroirs, il existe au moins un tiroir contenant au moins $\lceil m/n \rceil$ objets, où $\lceil \cdot \rceil$ est la fonction partie entière supérieure.

**Étapes:**

1.  **Identifier les objets** : Les objets sont les $m = 200$ étudiants.
2.  **Identifier les tiroirs** : Les tiroirs sont les $n = 12$ mois de l'année.
3.  **Définir l'application de rangement** : On associe chaque étudiant (objet) à son mois de naissance (tiroir).
4.  **Appliquer le principe des tiroirs généralisé** :
    -   Nous avons $m = 200$ objets et $n = 12$ tiroirs.
    -   Le principe garantit qu'au moins un tiroir (un mois) contiendra au moins $\lceil m/n \rceil$ objets (étudiants).
5.  **Calculer la valeur** :

    $$ \left\lceil \frac{200}{12} \right\rceil $$

    Effectuons la division : $200 / 12 = 16.666...$

    La partie entière supérieure de $16.666...$ est 17.

    $$ \left\lceil \frac{200}{12} \right\rceil = 17 $$

6.  **Conclusion** : Le principe des tiroirs généralisé nous assure qu'il y a au moins un mois de l'année qui est le mois de naissance d'au moins 17 étudiants.

**Réponse:** Il y a au moins $\lceil 200/12 \rceil = 17$ étudiants nés le même mois.

</details>

---

## Exercice 5

**Problème:** Une librairie propose 12 romans de science-fiction, 8 romans policiers et 5 biographies. Un client souhaite acheter un seul livre. Combien de choix différents a-t-il ?

<details>

<summary>Solution</summary>

**Méthode:** Le client doit choisir un livre parmi trois catégories distinctes. Les ensembles de livres de chaque catégorie sont disjoints (un livre n'est pas à la fois un roman policier et une biographie). Nous pouvons donc utiliser le principe d'addition pour les ensembles disjoints.

**Étapes:**

1.  Définissons les ensembles :
    -   Soit $S$ l'ensemble des romans de science-fiction. $|S| = 12$.
    -   Soit $P$ l'ensemble des romans policiers. $|P| = 8$.
    -   Soit $B$ l'ensemble des biographies. $|B| = 5$.
2.  Ces trois ensembles sont deux à deux disjoints. $S \cap P = \emptyset$, $S \cap B = \emptyset$, et $P \cap B = \emptyset$.
3.  Le nombre total de choix est le cardinal de l'union de ces trois ensembles, $|S \cup P \cup B|$.
4.  En appliquant le principe d'addition pour des ensembles disjoints :

    $$ |S \cup P \cup B| = |S| + |P| + |B| $$

5.  Effectuons le calcul :

    $$ |S \cup P \cup B| = 12 + 8 + 5 = 25 $$

**Réponse:** Le client a 25 choix différents.

</details>

---

## Exercice 6

**Problème:** Dans un groupe de 50 musiciens, 25 jouent du piano, 28 jouent de la guitare et 10 jouent des deux instruments.

1.  Combien de musiciens jouent au moins d'un de ces deux instruments ?
2.  Combien de musiciens ne jouent ni du piano, ni de la guitare ?

<details>

<summary>Solution</summary>

**Méthode:** Ce problème implique deux ensembles non-disjoints (les pianistes et les guitaristes). Nous devons utiliser la formule d'inclusion-exclusion pour deux ensembles : $|A \cup B| = |A| + |B| - |A \cap B|$. Pour la deuxième question, nous utiliserons le principe du complémentaire.

**Étapes:**

1.  **Définir les ensembles :**
    -   Soit $M$ l'ensemble de tous les musiciens, $|M|=50$.
    -   Soit $P$ l'ensemble des musiciens qui jouent du piano, $|P|=25$.
    -   Soit $G$ l'ensemble des musiciens qui jouent de la guitare, $|G|=28$.
    -   L'ensemble des musiciens qui jouent des deux est l'intersection $P \cap G$. On nous donne $|P \cap G|=10$.

2.  **Combien de musiciens jouent au moins d'un de ces deux instruments ?**
    -   Cela correspond au cardinal de l'union $P \cup G$.
    -   On applique la formule d'inclusion-exclusion :

    $$ |P \cup G| = |P| + |G| - |P \cap G| $$

    -   Calcul :

    $$ |P \cup G| = 25 + 28 - 10 = 43 $$

    -   Il y a donc 43 musiciens qui jouent du piano ou de la guitare (ou les deux).

3.  **Combien de musiciens ne jouent ni du piano, ni de la guitare ?**
    -   Cela correspond au nombre de musiciens qui ne sont pas dans l'ensemble $P \cup G$. C'est le cardinal du complémentaire de $P \cup G$ dans l'ensemble total $M$.
    -   Le nombre de musiciens ne jouant d'aucun des deux instruments est $|M| - |P \cup G|$.
    -   Calcul :

    $$ 50 - 43 = 7 $$

    -   Il y a donc 7 musiciens qui ne jouent ni du piano ni de la guitare.

**Réponse:**

1.  Nombre de musiciens jouant au moins d'un instrument : $43$.
2.  Nombre de musiciens ne jouant d'aucun des deux instruments : $7$.

</details>

---

## Exercice 7

**Problème:** On souhaite créer un mot de passe de 4 caractères. Le premier caractère doit être une lettre majuscule (26 choix), les deux suivants doivent être des chiffres (0-9), et le dernier caractère doit être un des symboles suivants : `{@, #, $, %}`. Combien de mots de passe différents peut-on créer ?

<details>

<summary>Solution</summary>

**Méthode:** La création du mot de passe est une séquence de 4 choix indépendants. Le nombre total de possibilités est le produit du nombre de possibilités pour chaque choix. C'est une application directe du principe de multiplication.

**Étapes:**

1.  **Analyser la structure du mot de passe :** Un mot de passe est un quadruplet $(c_1, c_2, c_3, c_4)$.
2.  **Dénombrer les choix pour chaque position :**
    -   **Position 1 ($c_1$)**: Une lettre majuscule. Il y a 26 possibilités.
    -   **Position 2 ($c_2$)**: Un chiffre de 0 à 9. Il y a 10 possibilités.
    -   **Position 3 ($c_3$)**: Un chiffre de 0 à 9. Il y a 10 possibilités.
    -   **Position 4 ($c_4$)**: Un symbole parmi `{@, #, $, %}`. Il y a 4 possibilités.
3.  **Appliquer le principe de multiplication :** Le nombre total de mots de passe est le produit du nombre de choix pour chaque position.

    $$ \text{Nombre total} = (\text{choix pour } c_1) \times (\text{choix pour } c_2) \times (\text{choix pour } c_3) \times (\text{choix pour } c_4) $$

4.  **Effectuer le calcul :**

    $$ \text{Nombre total} = 26 \times 10 \times 10 \times 4 = 10400 $$

**Réponse:** Il est possible de créer $10\,400$ mots de passe différents.

</details>

---

## Exercice 8

**Problème:** 6 personnes souhaitent s'asseoir autour d'une table ronde. Deux arrangements sont considérés identiques si chaque personne a les mêmes voisins (la même personne à sa gauche et la même à sa droite). Combien y a-t-il de manières distinctes de les placer ?

<details>

<summary>Solution</summary>

**Méthode:** C'est un problème classique qui se résout avec le principe des bergers. On commence par compter un ensemble plus grand et plus simple (les permutations en ligne), puis on "divise" par le nombre de permutations qui correspondent à un même arrangement circulaire.

**Étapes:**

1.  **Compter un ensemble plus simple (E) :** Comptons d'abord le nombre de façons de placer les 6 personnes en ligne (sur un banc). C'est le nombre de permutations de 6 éléments.

    $$ |E| = 6! = 6 \times 5 \times 4 \times 3 \times 2 \times 1 = 720 $$

2.  **Définir l'ensemble que l'on veut compter (F) :** Soit $F$ l'ensemble des arrangements distincts autour de la table ronde. Nous cherchons $|F|$.

3.  **Définir l'application (f) :** Soit $f: E \to F$ l'application qui à un arrangement en ligne associe l'arrangement circulaire obtenu en joignant les deux bouts de la ligne. Par exemple, la ligne (A, B, C, D, E, F) devient un cercle où A est assis entre F et B.

4.  **Trouver le nombre d'antécédents (p) :** Pour un arrangement circulaire donné, combien d'arrangements en ligne lui correspondent ?
    -   Prenons un arrangement circulaire, par exemple celui où l'ordre est A-B-C-D-E-F.
    -   Les arrangements en ligne suivants donneront tous ce même arrangement circulaire :
        -   (A, B, C, D, E, F)
        -   (B, C, D, E, F, A)  (une rotation)
        -   (C, D, E, F, A, B)  (une autre rotation)
        -   ...
        -   (F, A, B, C, D, E)
    -   Il y a 6 rotations possibles pour un même arrangement circulaire. Donc, chaque arrangement dans $F$ a exactement $p=6$ antécédents dans $E$.
    -   Formellement, $|f^{-1}(\{y\})| = 6$ pour tout $y \in F$.

5.  **Appliquer le principe des bergers :** Ce principe nous dit que $|E| = p \cdot |F|$.

    $$ 720 = 6 \cdot |F| $$

6.  **Calculer |F| :**

    $$ |F| = \frac{|E|}{p} = \frac{720}{6} = 120 $$

    Une autre façon de voir le résultat est $(n-1)!$ pour $n$ personnes, soit $(6-1)! = 5! = 120$.

**Réponse:** Il y a $120$ manières distinctes de placer les 6 personnes.

</details>

---

## Exercice 9

**Problème:** Combien de nombres entiers entre 1 et 1000 (inclus) sont soit des multiples de 5, soit des multiples de 7 ?

<details>

<summary>Solution</summary>

**Méthode:** Nous cherchons le cardinal de l'union de deux ensembles : les multiples de 5 et les multiples de 7. Ces ensembles ne sont pas disjoints (par exemple, 35 est dans les deux). Nous devons donc utiliser la formule d'inclusion-exclusion : $|A \cup B| = |A| + |B| - |A \cap B|$.

**Étapes:**

1.  **Définir les ensembles :**
    -   Soit $S = \{1, 2, \dots, 1000\}$.
    -   Soit $A$ l'ensemble des nombres dans $S$ qui sont multiples de 5.
    -   Soit $B$ l'ensemble des nombres dans $S$ qui sont multiples de 7.
    -   Nous cherchons $|A \cup B|$.

2.  **Calculer le cardinal de chaque ensemble :**
    -   Pour trouver le nombre de multiples de $k$ jusqu'à $N$, on calcule $\lfloor N/k \rfloor$.
    -   $|A| = \lfloor 1000 / 5 \rfloor = 200$.
    -   $|B| = \lfloor 1000 / 7 \rfloor = 142$.

3.  **Calculer le cardinal de l'intersection :**
    -   L'intersection $A \cap B$ contient les nombres qui sont multiples de 5 ET de 7. Ce sont les multiples du plus petit commun multiple de 5 et 7, qui est $5 \times 7 = 35$.
    -   $|A \cap B| = \lfloor 1000 / 35 \rfloor = 28$.

4.  **Appliquer la formule d'inclusion-exclusion :**

    $$ |A \cup B| = |A| + |B| - |A \cap B| $$

    $$ |A \cup B| = 200 + 142 - 28 $$

    $$ |A \cup B| = 342 - 28 = 314 $$

**Réponse:** Il y a $314$ nombres entiers entre 1 et 1000 qui sont multiples de 5 ou de 7.

</details>

---

## Exercice 10

**Problème:** Montrez que l'ensemble $E = \{\dots, -6, -3, 0, 3, 6, \dots\}$ des entiers multiples de 3 est un ensemble dénombrable en construisant une bijection explicite entre $\mathbb{Z}$ et $E$.

<details>

<summary>Solution</summary>

**Méthode:** Un ensemble est dénombrable s'il est équipotent à $\mathbb{N}$ ou $\mathbb{Z}$. Comme l'ensemble $\mathbb{Z}$ des entiers relatifs est lui-même dénombrable, il suffit de montrer que $E$ est en bijection avec $\mathbb{Z}$ pour prouver qu'il est dénombrable. Nous allons construire une fonction simple $f: \mathbb{Z} \to E$ et prouver qu'elle est une bijection.

**Étapes:**

1.  **Analyser les ensembles :**
    -   $\mathbb{Z} = \{\dots, -2, -1, 0, 1, 2, \dots\}$
    -   $E = \{\dots, -6, -3, 0, 3, 6, \dots\}$. Chaque élément de $E$ est de la forme $3k$ pour un certain $k \in \mathbb{Z}$.

2.  **Proposer une bijection :** L'association la plus naturelle est de relier chaque entier $k \in \mathbb{Z}$ à son multiple par 3, qui est $3k \in E$.

    Définissons l'application $f: \mathbb{Z} \to E$ par :

    $$ f(k) = 3k $$

3.  **Vérifier que $f$ est une bijection :**
    -   **L'application est bien définie** : Pour tout $k \in \mathbb{Z}$, $3k$ est par définition un multiple de 3, donc $f(k)$ appartient bien à $E$.
    -   **Injectivité** : Supposons $f(k_1) = f(k_2)$ pour $k_1, k_2 \in \mathbb{Z}$.

        Alors $3k_1 = 3k_2$. En divisant par 3, on obtient $k_1 = k_2$. L'application est donc injective.

    -   **Surjectivité** : Soit $y$ un élément quelconque de $E$. Par définition de $E$, $y$ est un multiple de 3, donc il existe un entier $k$ tel que $y = 3k$. Cet entier $k$ est un élément de $\mathbb{Z}$ et il est l'antécédent de $y$ car $f(k) = 3k = y$. L'application est donc surjective.

4.  **Conclusion :** Puisque $f(k)=3k$ est une bijection de $\mathbb{Z}$ vers $E$, les deux ensembles sont équipotents. Comme $\mathbb{Z}$ est un ensemble dénombrable, $E$ l'est aussi.

**Réponse:** L'application $f(k)=3k$ est une bijection de $\mathbb{Z}$ à $E$, prouvant que $E$ est dénombrable.

</details>

---

## Exercice 11

**Problème:** Expliquez pourquoi l'ensemble de toutes les suites infinies de 0 et de 1 (par exemple, $s = 01101000...$) est un ensemble non dénombrable. Utilisez l'argument diagonal de Cantor.

<details>

<summary>Solution</summary>

**Méthode:** Pour montrer qu'un ensemble est non dénombrable, on doit prouver qu'il ne peut pas être mis en bijection avec $\mathbb{N}$. On utilise un raisonnement par l'absurde. On suppose qu'une telle bijection existe (c'est-à-dire qu'on peut lister toutes les suites), puis on construit une nouvelle suite qui ne peut pas être dans la liste, ce qui mène à une contradiction.

**Étapes:**

1.  **Hypothèse par l'absurde :** Supposons que l'ensemble $S$ de toutes les suites infinies de 0 et de 1 soit dénombrable. Cela signifie que nous pouvons énumérer toutes les suites de $S$ dans une liste infinie, une par une. Appelons-les $s_1, s_2, s_3, \dots$.

2.  **Représentation de la liste :** Chaque suite est composée de chiffres. Notons $s_{i,j}$ le $j$-ième chiffre de la $i$-ième suite. La liste ressemblerait à ceci :
    -   $s_1 = s_{1,1} s_{1,2} s_{1,3} s_{1,4} \dots$
    -   $s_2 = s_{2,1} s_{2,2} s_{2,3} s_{2,4} \dots$
    -   $s_3 = s_{3,1} s_{3,2} s_{3,3} s_{3,4} \dots$
    -   $s_4 = s_{4,1} s_{4,2} s_{4,3} s_{4,4} \dots$
    -   ...

3.  **Construction de la suite "diagonale" :** Nous allons construire une nouvelle suite, que nous appellerons $s^*$, qui est garantie de ne pas être dans cette liste. On la construit en s'assurant qu'elle diffère de chaque suite $s_i$ de la liste en au moins une position. La méthode la plus simple est de s'assurer que le $i$-ième chiffre de $s^*$ est différent du $i$-ième chiffre de $s_i$.
    -   Pour le premier chiffre de $s^*$, on regarde le premier chiffre de $s_1$ (soit $s_{1,1}$). On choisit le chiffre opposé. Si $s_{1,1}=0$, on prend $s^*_{1}=1$. Si $s_{1,1}=1$, on prend $s^*_{1}=0$.
    -   Pour le deuxième chiffre de $s^*$, on regarde le deuxième chiffre de $s_2$ (soit $s_{2,2}$). On choisit le chiffre opposé.
    -   De manière générale, le $i$-ième chiffre de $s^*$, noté $s^*_{i}$, est défini par :

        $$ s^*_{i} = 1 - s_{i,i} $$

        (ou $s^*_{i} = \neg s_{i,i}$ en logique binaire).

4.  **La contradiction :** La suite $s^*$ que nous avons construite est une suite infinie de 0 et de 1. Elle devrait donc appartenir à l'ensemble $S$ et se trouver quelque part dans notre liste.
    -   Supposons que $s^*$ soit la $k$-ième suite de la liste, c'est-à-dire $s^* = s_k$.
    -   Comparons le $k$-ième chiffre de ces deux suites.
    -   Par construction, le $k$-ième chiffre de $s^*$ est $s^*_{k} = 1 - s_{k,k}$.
    -   Le $k$-ième chiffre de $s_k$ est $s_{k,k}$.
    -   Si $s^* = s_k$, alors leurs $k$-ièmes chiffres doivent être identiques, ce qui signifie $s^*_{k} = s_{k,k}$.
    -   Mais cela nous mène à l'équation $1 - s_{k,k} = s_{k,k}$, qui est impossible pour des chiffres qui ne peuvent être que 0 ou 1. (Si $s_{k,k}=0$, on a $1=0$. Si $s_{k,k}=1$, on a $0=1$).
    -   C'est une contradiction.

5.  **Conclusion :** L'hypothèse de départ, selon laquelle on peut lister toutes les suites, doit être fausse. Par conséquent, l'ensemble de toutes les suites infinies de 0 et de 1 n'est pas dénombrable.

**Réponse:** En supposant que l'ensemble est dénombrable, on peut lister toutes les suites. L'argument diagonal de Cantor permet de construire une nouvelle suite qui diffère de la $i$-ième suite de la liste à la $i$-ième position. Cette nouvelle suite ne peut donc pas être dans la liste, ce qui contredit l'hypothèse initiale. L'ensemble est donc non dénombrable.

</details>
