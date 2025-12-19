---
id: 19f6f821
type: exercises
order: 11
title: Comptage des applications - exercices (A)
tags:
  - Combinatoire
  - Applications
  - Injections
  - Surjections
  - Stirling
  - Factorielle
createdAt: '2025-12-16T16:50:01.715Z'
level: regular
course: Graphes et Combinatoire
courseId: 7027276b
chapter: Comptage des applications
chapterId: 586f5519
---
# Exercices "Comptage des applications" (A)

---

## Exercice 1 : Dénombrement d'applications simples

**Problème :**

Soient deux ensembles finis $A = \{x, y, z\}$ et $B = \{1, 2, 3, 4\}$.

1. Quel est le cardinal de l'ensemble de départ $|A|$ et de l'ensemble d'arrivée $|B|$ ?
2. Combien d'applications différentes peut-on construire de $A$ dans $B$ ?
3. Combien d'applications différentes peut-on construire de $B$ dans $A$ ?

<details>

<summary>Solution</summary>

**Méthode :** On utilise la formule du nombre d'applications d'un ensemble $E$ vers un ensemble $F$, qui est $|F|^{|E|}$. Il est crucial de bien identifier quel est l'ensemble en exposant (l'ensemble de départ) et quel est l'ensemble en base (l'ensemble d'arrivée).

**Étapes :**

1.  **Identifier les cardinaux :**
    *   L'ensemble $A$ a 3 éléments, donc $|A| = 3$.
    *   L'ensemble $B$ a 4 éléments, donc $|B| = 4$.

2.  **Calculer le nombre d'applications de $A$ vers $B$ :**
    *   L'ensemble de départ est $A$ (exposant) et l'ensemble d'arrivée est $B$ (base).
    *   Nombre = $|B|^{|A|} = 4^3$.
    *   Calcul : $4 \times 4 \times 4 = 64$.

3.  **Calculer le nombre d'applications de $B$ vers $A$ :**
    *   L'ensemble de départ est $B$ (exposant) et l'ensemble d'arrivée est $A$ (base).
    *   Nombre = $|A|^{|B|} = 3^4$.
    *   Calcul : $3 \times 3 \times 3 \times 3 = 81$.

**Réponse :**

1. $|A|=3$ et $|B|=4$.
2. Il y a **64** applications de $A$ dans $B$.
3. Il y a **81** applications de $B$ dans $A$.

</details>

---

## Exercice 2 : Le QCM (Questionnaire à Choix Multiples)

**Problème :**

Un examen est composé de 10 questions. Pour chaque question, il y a 4 réponses possibles (A, B, C, D), dont une seule est correcte. Un étudiant répond au hasard à toutes les questions.

Combien de grilles de réponses différentes est-il possible de remplir ?

<details>

<summary>Solution</summary>

**Méthode :** Modéliser ce problème comme une application entre l'ensemble des questions et l'ensemble des choix de réponses.

**Étapes :**

1.  **Définir les ensembles :**
    *   Soit $Q$ l'ensemble des questions. $|Q| = 10$. C'est l'ensemble de départ (on attribue une réponse *à* chaque question).
    *   Soit $R$ l'ensemble des choix de réponses possibles. $|R| = 4$. C'est l'ensemble d'arrivée.

2.  **Appliquer le principe multiplicatif (ou formule des applications) :**
    *   Pour la question 1, il y a 4 choix.
    *   Pour la question 2, il y a 4 choix.
    *   ...
    *   Pour la question 10, il y a 4 choix.

3.  **Calculer :**

    Le nombre total de configurations est $|R|^{|Q|} = 4^{10}$.

**Réponse :**

Il y a $4^{10}$ (soit **1 048 576**) grilles de réponses possibles.

</details>

---

## Exercice 3 : Sous-ensembles et Garnitures

**Problème :**

Une pizzeria propose une "pizza à composer". Le client peut choisir n'importe quels ingrédients parmi une liste de 5 ingrédients disponibles : \{Fromage, Champignons, Olives, Poivrons, Oignons\}.

Combien de types de pizzas différents peut-on composer ? (Note : une pizza sans aucun ingrédient — juste la pâte — est possible, tout comme une pizza avec tous les ingrédients).

<details>

<summary>Solution</summary>

**Méthode :** Choisir une combinaison d'ingrédients revient à choisir un sous-ensemble (une partie) de l'ensemble des ingrédients disponibles. On utilise la formule du cardinal de l'ensemble des parties $\mathcal{P}(E)$.

**Étapes :**

1.  **Identifier l'ensemble $E$ :**

    $E = \{\text{Fromage, Champignons, Olives, Poivrons, Oignons}\}$.

    Son cardinal est $|E| = 5$.

2.  **Utiliser la formule du nombre de parties :**

    Le nombre de sous-ensembles de $E$ est donné par $2^{|E|}$.

    Ici, $2^5$.

3.  **Interprétation :**

    Cela inclut le cas de la pizza "vide" (ensemble vide $\varnothing$) et la pizza "complète" ($E$ entier). Pour chaque ingrédient, le client a 2 choix binaire : le prendre (1) ou ne pas le prendre (0).

4.  **Calcul :**

    $2^5 = 32$.

**Réponse :**

On peut composer **32** pizzas différentes.

</details>

---

## Exercice 4 : Permutations et Anagrammes

**Problème :**

1. De combien de façons peut-on ordonner les lettres du mot **"LIVRE"** ?
2. De combien de façons peut-on ordonner les lettres du mot **"PAPIER"** sachant que la lettre **P** apparaît deux fois ? (Indice : considérez d'abord les deux P comme distincts $P_1, P_2$, puis divisez par le nombre de leurs permutations).

<details>

<summary>Solution</summary>

**Méthode :** Utiliser la notion de factorielle $n!$ qui compte le nombre de permutations d'un ensemble de $n$ éléments distincts.

**Étapes :**

1.  **Cas "LIVRE" :**
    *   L'ensemble des lettres est $\{L, I, V, R, E\}$.
    *   Il y a $n=5$ lettres, toutes distinctes.
    *   Le nombre de permutations est $5! = 5 \times 4 \times 3 \times 2 \times 1 = 120$.

2.  **Cas "PAPIER" :**
    *   Le mot contient 6 lettres : $\{P, A, P, I, E, R\}$.
    *   Si les deux 'P' étaient distincts ($P_1$ et $P_2$), le nombre d'arrangements serait $6! = 720$.
    *   Cependant, échanger les deux 'P' ne change pas le mot. Il y a $2! = 2$ façons de permuter les deux 'P' entre eux pour une même configuration visible.
    *   On divise le total par $2!$.
    *   Calcul : $\frac{6!}{2!} = \frac{720}{2} = 360$.

**Réponse :**

1. Il y a **120** anagrammes du mot LIVRE.
2. Il y a **360** anagrammes distincts du mot PAPIER.

</details>

---

## Exercice 5 : Injections et Codes secrets

**Problème :**

On souhaite former un code secret de 3 chiffres distincts choisis parmi l'ensemble $\{1, 2, 3, 4, 5, 6, 7, 8, 9\}$.

1. L'ordre des chiffres est-il important dans un code ?
2. S'agit-il d'un tirage avec ou sans répétition ?
3. Calculer le nombre de codes possibles en utilisant la formule des arrangements (injections).

<details>

<summary>Solution</summary>

**Méthode :** Identifier qu'il s'agit d'une injection d'un ensemble de positions (taille 3) vers un ensemble de chiffres (taille 9), car les chiffres doivent être distincts et l'ordre compte.

**Étapes :**

1.  **Analyse :**
    *   **Ordre :** Oui, le code 123 est différent du code 321.
    *   **Répétition :** Non, l'énoncé précise "chiffres distincts".
    *   C'est donc un problème d'**Arrangements** (ou nombre d'injections).

2.  **Paramètres :**
    *   $n = 9$ (nombre d'éléments disponibles/ensemble d'arrivée).
    *   $k = 3$ (nombre d'éléments à choisir et ordonner/ensemble de départ).

3.  **Calcul :**

    On utilise la formule $A_n^k = \frac{n!}{(n-k)!}$.

    $$A_9^3 = \frac{9!}{(9-3)!} = \frac{9!}{6!}$$

    $$A_9^3 = 9 \times 8 \times 7$$

    $$A_9^3 = 72 \times 7 = 504$$

**Réponse :**

Il est possible de former **504** codes secrets différents.

</details>

---

## Exercice 6 : Simplification de factorielles

**Problème :**

Simplifier l'expression suivante pour tout entier $n \ge 1$ :

$$ \frac{(n+2)!}{n!} - (n+1)^2 $$

<details>

<summary>Solution</summary>

**Méthode :** Utiliser la propriété récursive de la factorielle : $(n+1)! = (n+1) \times n!$.

**Étapes :**

1.  **Développer la factorielle au numérateur :**

    On sait que $(n+2)! = (n+2) \times (n+1) \times n!$.

2.  **Simplifier la fraction :**

    $$ \frac{(n+2)!}{n!} = \frac{(n+2)(n+1)n!}{n!} = (n+2)(n+1) $$

3.  **Développer le produit :**

    $(n+2)(n+1) = n^2 + n + 2n + 2 = n^2 + 3n + 2$.

4.  **Soustraire le second terme :**

    L'expression complète est : $(n^2 + 3n + 2) - (n+1)^2$.

    On développe $(n+1)^2 = n^2 + 2n + 1$.

5.  **Calcul final :**

    $$ (n^2 + 3n + 2) - (n^2 + 2n + 1) = n^2 - n^2 + 3n - 2n + 2 - 1 = n + 1 $$

**Réponse :**

L'expression simplifiée est $n+1$.

</details>

---

## Exercice 7 : Partitions (Nombres de Stirling)

**Problème :**

On souhaite répartir 4 étudiants distincts (Alice, Bob, Charlie, David) en 2 groupes de travail non vides. Les groupes n'ont pas de nom (pas de "groupe 1" ou "groupe 2", juste la façon dont ils sont regroupés compte).

1. Lister toutes les partitions possibles.
2. Vérifier le résultat en calculant le nombre de Stirling de seconde espèce $S(4, 2)$ via la relation de récurrence.

<details>

<summary>Solution</summary>

**Méthode :** Les groupes sont indiscernables, on utilise donc les nombres de Stirling $S(n, k)$ avec $n=4$ et $k=2$.

**Étapes :**

1.  **Liste des partitions (Approche logique) :**

    Les structures possibles pour diviser 4 éléments en 2 groupes sont :

    *   *Type 3+1 (3 dans un groupe, 1 tout seul) :*

        $\{\{A,B,C\}, \{D\}\}, \{\{A,B,D\}, \{C\}\}, \{\{A,C,D\}, \{B\}\}, \{\{B,C,D\}, \{A\}\}$. (4 possibilités).

    *   *Type 2+2 (2 dans chaque groupe) :*

        $\{\{A,B\}, \{C,D\}\}, \{\{A,C\}, \{B,D\}\}, \{\{A,D\}, \{B,C\}\}$. (3 possibilités).

    *   Total = $4 + 3 = 7$.

2.  **Calcul via récurrence :**

    Formule : $S(n, k) = S(n-1, k-1) + k \cdot S(n-1, k)$.

    Nous cherchons $S(4, 2)$. Il nous faut $S(3, 1)$ et $S(3, 2)$.

    *   $S(3, 1) = 1$ (tout le monde dans 1 seul groupe).
    *   $S(3, 2) = 3$ (diviser 3 personnes en 2 groupes : 3 partitions de type 2+1).
    *   $S(4, 2) = S(3, 1) + 2 \cdot S(3, 2)$.
    *   $S(4, 2) = 1 + 2(3) = 1 + 6 = 7$.

**Réponse :**

Il y a **7** façons de répartir les étudiants en 2 groupes.

</details>

---

## Exercice 8 : Surjections et Distribution de tâches

**Problème :**

Un manager doit distribuer 5 tâches différentes à 3 employés distincts (Pierre, Paul, Jacques).

Pour que le travail soit équitable, **chaque employé doit recevoir au moins une tâche**.

Combien de distributions sont possibles ?

<details>

<summary>Solution</summary>

**Méthode :** Il s'agit de distribuer des éléments distincts (tâches) vers des boîtes distinctes (employés) sans laisser de boîte vide. C'est la définition du nombre de **surjections** de $E$ (tâches) dans $F$ (employés).

**Étapes :**

1.  **Identifier les paramètres :**
    *   $n = 5$ (tâches, ensemble de départ).
    *   $k = 3$ (employés, ensemble d'arrivée).
    *   Condition : "au moins une tâche" $\rightarrow$ Surjection.

2.  **Formule des surjections :**

    $|\mathcal{F}_{surj}(E, F)| = k! \cdot S(n, k)$.

    Nous devons calculer $3! \times S(5, 3)$.

3.  **Calculer $S(5, 3)$ (Stirling) :**

    Utilisons la récurrence : $S(5, 3) = S(4, 2) + 3 \cdot S(4, 3)$.

    *   D'après l'exercice précédent, $S(4, 2) = 7$.
    *   On sait que $S(n, n-1) = \binom{n}{2}$, donc $S(4, 3) = \binom{4}{2} = 6$.
    *   $S(5, 3) = 7 + 3(6) = 7 + 18 = 25$.

4.  **Calcul final (avec l'ordre des employés) :**

    Nombre = $3! \times 25 = 6 \times 25 = 150$.

**Réponse :**

Il y a **150** façons de distribuer les tâches de manière à ce que tout le monde travaille.

</details>

---

## Exercice 9 : Comparaison Application vs Injection vs Surjection

**Problème :**

On dispose de 3 balles numérotées ($1, 2, 3$) et de 5 boîtes numérotées ($A, B, C, D, E$).

Calculer le nombre de façons de placer les balles dans les boîtes dans les cas suivants :

1.  **Cas A :** Aucune contrainte (plusieurs balles peuvent être dans la même boîte, des boîtes peuvent être vides).
2.  **Cas B :** Chaque boîte ne peut contenir au maximum qu'une seule balle.
3.  **Cas C :** On change la situation : on a maintenant 5 balles et 3 boîtes. Chaque boîte doit contenir au moins une balle.

<details>

<summary>Solution</summary>

**Méthode :** Associer chaque cas au concept mathématique correspondant (Application quelconque, Injection, Surjection).

**Étapes :**

1.  **Cas A : Aucune contrainte**
    *   C'est le nombre total d'applications de $E=\{\text{balles}\}$ vers $F=\{\text{boîtes}\}$.
    *   $|E|=3, |F|=5$.
    *   Formule : $|F|^{|E|} = 5^3 = 125$.

2.  **Cas B : Maximum 1 par boîte**
    *   Les balles doivent aller dans des boîtes distinctes. C'est une **injection**.
    *   Formule : $A_5^3 = 5 \times 4 \times 3 = 60$.

3.  **Cas C : Au moins 1 par boîte (avec $n=5, k=3$)**
    *   C'est une **surjection** de 5 balles vers 3 boîtes.
    *   Formule : $k! \cdot S(n, k) = 3! \cdot S(5, 3)$.
    *   D'après l'exercice précédent, $S(5, 3) = 25$.
    *   Calcul : $6 \times 25 = 150$.

**Réponse :**

1. Cas A : 125 façons.
2. Cas B : 60 façons.
3. Cas C : 150 façons.

</details>

---

## Exercice 10 : Problème de synthèse (Digicode)

**Problème :**

Un digicode possède un clavier avec les chiffres $\{0, 1, \dots, 9\}$ et les lettres $\{A, B\}$. Soit l'ensemble des caractères $C = \{0, \dots, 9, A, B\}$.

1. Quel est le cardinal de $C$ ?
2. On forme un code de 4 caractères. Combien de codes existent si les répétitions sont autorisées ?
3. Combien de codes de 4 caractères existent si tous les caractères doivent être distincts ?
4. Combien de codes de 4 caractères distincts existent si le code doit commencer par une lettre et finir par un chiffre ?

<details>

<summary>Solution</summary>

**Méthode :** Utiliser le principe multiplicatif en décomposant le problème étape par étape.

**Étapes :**

1.  **Cardinal de $C$ :**
    *   10 chiffres + 2 lettres = 12 caractères. $|C| = 12$.

2.  **Répétitions autorisées :**
    *   C'est une application de $\{1,2,3,4\}$ vers $C$.
    *   $12^4 = 12 \times 12 \times 12 \times 12 = 20\,736$.

3.  **Caractères distincts :**
    *   C'est un arrangement (injection) de 4 éléments parmi 12.
    *   $A_{12}^4 = 12 \times 11 \times 10 \times 9$.
    *   $12 \times 11 = 132$. $10 \times 9 = 90$.
    *   $132 \times 90 = 11\,880$.

4.  **Contraintes spécifiques (Lettre au début, Chiffre à la fin, distincts) :**
    *   On construit le code position par position : $\underline{P1} - \underline{P2} - \underline{P3} - \underline{P4}$.
    *   **P1 (1ère position) :** Doit être une lettre. Il y a 2 choix (A ou B).
    *   **P4 (4ème position) :** Doit être un chiffre. Il y a 10 choix.
    *   **P2 (2ème position) :** N'importe quel caractère restant. On a utilisé 1 lettre et 1 chiffre, donc 2 caractères utilisés sur 12. Il reste 10 choix.
    *   **P3 (3ème position) :** N'importe quel caractère restant. On a utilisé 3 caractères. Il reste 9 choix.
    *   Total : $2 \times 10 \times 10 \times 9$. (Attention à l'ordre de remplissage pour garantir la "distinctivité").
    *   Calcul : $2 \times 900 = 1\,800$.

**Réponse :**

1. $|C| = 12$.
2. **20 736** codes avec répétition.
3. **11 880** codes distincts.
4. **1 800** codes avec les contraintes spécifiques.

</details>
