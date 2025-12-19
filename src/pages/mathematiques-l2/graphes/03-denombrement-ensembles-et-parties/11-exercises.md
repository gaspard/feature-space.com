---
id: 3fe32248
type: exercises
order: 11
title: Dénombrement d’ensembles et parties - exercices (A)
tags:
  - combinatoire
  - dénombrement
  - coefficients binomiaux
  - ensembles
  - formule du binôme
  - coefficients multinomiaux
createdAt: '2025-12-16T16:58:51.096Z'
level: regular
course: Graphes et Combinatoire
courseId: 7027276b
chapter: Dénombrement d’ensembles et parties
chapterId: 1c5df22e
---
# Exercices "Dénombrement d’ensembles et parties" (A)

---

## Exercice 1

**Problème :** Calculer la valeur numérique exacte des coefficients binomiaux suivants en utilisant la définition factorielle et les propriétés de symétrie.

1.  $\binom{7}{3}$
2.  $\binom{10}{8}$
3.  $\binom{15}{1}$

<details>

<summary>Solution</summary>

**Méthode :** Nous utilisons la formule de la factorielle $\binom{n}{k} = \frac{n!}{k!(n-k)!}$ et la propriété de symétrie $\binom{n}{k} = \binom{n}{n-k}$ pour simplifier les calculs.

**Étapes :**

1.  **Calcul de $\binom{7}{3}$ :**

    Appliquons la formule :

    $$ \binom{7}{3} = \frac{7!}{3!(7-3)!} = \frac{7!}{3!4!} $$

    On simplifie $7!$ avec $4!$ (le plus grand facteur au dénominateur) :

    $$ \frac{7 \times 6 \times 5 \times 4!}{3! \times 4!} = \frac{7 \times 6 \times 5}{3 \times 2 \times 1} $$

    Comme $3 \times 2 \times 1 = 6$, on simplifie par 6 :

    $$ 7 \times 5 = 35 $$

2.  **Calcul de $\binom{10}{8}$ :**

    Utilisons la propriété de symétrie pour réduire la taille de $k$. Comme $\binom{n}{k} = \binom{n}{n-k}$ :

    $$ \binom{10}{8} = \binom{10}{10-8} = \binom{10}{2} $$

    Calculons maintenant $\binom{10}{2}$ :

    $$ \binom{10}{2} = \frac{10 \times 9}{2 \times 1} = \frac{90}{2} = 45 $$

3.  **Calcul de $\binom{15}{1}$ :**

    Appliquons la propriété connue pour choisir 1 élément parmi $n$ :

    $$ \binom{15}{1} = 15 $$

    (Vérification : $\frac{15!}{1!14!} = \frac{15 \times 14!}{14!} = 15$).

**Réponse :**

1. $\binom{7}{3} = 35$
2. $\binom{10}{8} = 45$
3. $\binom{15}{1} = 15$

</details>

---

## Exercice 2

**Problème :** Une association étudiante composée de 10 hommes et 12 femmes doit former un comité de 5 personnes.

1.  Combien de comités différents peut-on former au total ?
2.  Combien de comités peut-on former s'ils doivent être constitués exactement de 3 femmes et 2 hommes ?

<details>

<summary>Solution</summary>

**Méthode :** Un comité est un sous-ensemble de personnes où l'ordre ne compte pas. Nous utilisons les combinaisons $\binom{n}{k}$. Pour la question 2, nous utilisons le principe multiplicatif car nous effectuons deux choix indépendants (choisir les femmes ET choisir les hommes).

**Étapes :**

1.  **Nombre total de comités :**

    Le nombre total de personnes est $10 + 12 = 22$.

    Il faut choisir 5 personnes parmi 22.

    $$ N_{total} = \binom{22}{5} = \frac{22 \times 21 \times 20 \times 19 \times 18}{5 \times 4 \times 3 \times 2 \times 1} $$

    $$ N_{total} = 22 \times 21 \times 19 \times \frac{20 \times 18}{120} = 22 \times 21 \times 19 \times 3 = 26\,334 $$

2.  **Comité avec 3 femmes et 2 hommes :**
    *   Étape A : Choisir 3 femmes parmi 12.

        $$ \binom{12}{3} = \frac{12 \times 11 \times 10}{3 \times 2 \times 1} = \frac{1320}{6} = 220 $$

    *   Étape B : Choisir 2 hommes parmi 10.

        $$ \binom{10}{2} = \frac{10 \times 9}{2} = 45 $$

    *   Étape C : Principe multiplicatif (on combine les choix).

        $$ 220 \times 45 = 9\,900 $$

**Réponse :**

1. Il y a $26\,334$ comités possibles au total.
2. Il y a $9\,900$ comités constitués de 3 femmes et 2 hommes.

</details>

---

## Exercice 3

**Problème :** On donne les valeurs suivantes de la ligne 12 du triangle de Pascal :

$$ \binom{12}{5} = 792 \quad \text{et} \quad \binom{12}{6} = 924 $$

Sans calculer de factorielles, déterminez la valeur de $\binom{13}{6}$.

<details>

<summary>Solution</summary>

**Méthode :** Nous utilisons la relation de récurrence de Pascal (Identité de Pascal) : $\binom{n}{k} = \binom{n-1}{k} + \binom{n-1}{k-1}$.

**Étapes :**

1.  Identifions les paramètres de la formule pour notre cible $\binom{13}{6}$. Ici, $n=13$ et $k=6$.
2.  D'après l'identité de Pascal, le terme à la ligne $n$ est la somme des deux termes situés au-dessus à la ligne $n-1$ :

    $$ \binom{13}{6} = \binom{12}{6} + \binom{12}{5} $$

3.  Utilisons les valeurs fournies :

    $$ \binom{13}{6} = 924 + 792 $$

4.  Effectuons l'addition :

    $$ 924 + 792 = 1716 $$

**Réponse :**

$$ \binom{13}{6} = 1\,716 $$

</details>

---

## Exercice 4

**Problème :** Développer l'expression suivante à l'aide de la formule du Binôme de Newton :

$$ (2x - 1)^4 $$

<details>

<summary>Solution</summary>

**Méthode :** La formule du Binôme de Newton est $(a+b)^n = \sum_{k=0}^n \binom{n}{k} a^k b^{n-k}$. Ici, $n=4$, $a=2x$ et $b=-1$.

**Étapes :**

1.  Écrivons la somme pour $n=4$ :

    $$ (2x - 1)^4 = \binom{4}{0}(2x)^4(-1)^0 + \binom{4}{1}(2x)^3(-1)^1 + \binom{4}{2}(2x)^2(-1)^2 + \binom{4}{3}(2x)^1(-1)^3 + \binom{4}{4}(2x)^0(-1)^4 $$

2.  Calculons les coefficients binomiaux (ligne 4 de Pascal : 1, 4, 6, 4, 1) :

    $$ \binom{4}{0}=1, \binom{4}{1}=4, \binom{4}{2}=6, \binom{4}{3}=4, \binom{4}{4}=1 $$

3.  Calculons les puissances de $(2x)$ et de $(-1)$ :
    *   Terme $k=0$ : $1 \cdot (16x^4) \cdot 1 = 16x^4$
    *   Terme $k=1$ : $4 \cdot (8x^3) \cdot (-1) = -32x^3$
    *   Terme $k=2$ : $6 \cdot (4x^2) \cdot 1 = 24x^2$
    *   Terme $k=3$ : $4 \cdot (2x) \cdot (-1) = -8x$
    *   Terme $k=4$ : $1 \cdot 1 \cdot 1 = 1$

4.  Assemblons le tout :

    $$ (2x - 1)^4 = 16x^4 - 32x^3 + 24x^2 - 8x + 1 $$

**Réponse :**

$$ (2x - 1)^4 = 16x^4 - 32x^3 + 24x^2 - 8x + 1 $$

</details>

---

## Exercice 5

**Problème :** Quel est le coefficient devant le terme $x^3$ dans le développement de $(x + 2)^7$ ?

<details>

<summary>Solution</summary>

**Méthode :** Nous cherchons un terme spécifique de la forme $C \cdot x^3$ dans le développement $\sum_{k=0}^7 \binom{7}{k} x^k 2^{7-k}$.

**Étapes :**

1.  Le terme général du binôme pour $(x+2)^7$ est :

    $$ T_k = \binom{7}{k} x^k 2^{7-k} $$

    (On peut aussi écrire $\binom{7}{k} x^{7-k} 2^k$, cela donne le même résultat par symétrie, mais gardons $x^k$ pour simplifier l'identification).

2.  Nous voulons le coefficient de $x^3$. Cela correspond donc à $k=3$.

3.  Calculons le terme pour $k=3$ :

    $$ \binom{7}{3} \cdot x^3 \cdot 2^{7-3} = \binom{7}{3} \cdot x^3 \cdot 2^4 $$

4.  Calculons $\binom{7}{3}$ :

    $$ \binom{7}{3} = \frac{7 \times 6 \times 5}{3 \times 2 \times 1} = 35 $$

5.  Calculons $2^4$ :

    $$ 2^4 = 16 $$

6.  Multiplions les constantes :

    $$ 35 \times 16 = 560 $$

**Réponse :**

Le coefficient de $x^3$ est $560$.

</details>

---

## Exercice 6

**Problème :** Un étudiant veut acheter 6 pâtisseries dans une boulangerie. La boulangerie propose 4 types de gâteaux : Éclairs, Mille-feuilles, Tartelettes et Croissants.

L'étudiant peut choisir plusieurs gâteaux du même type (par exemple, 6 éclairs). L'ordre d'achat n'a pas d'importance.

Combien de compositions différentes de 6 gâteaux peut-il acheter ?

<details>

<summary>Solution</summary>

**Méthode :** Il s'agit d'un problème de combinaisons avec répétition (multi-ensembles). Nous devons choisir $k=6$ objets parmi un ensemble de $n=4$ types, avec remise autorisée et sans ordre.

La formule est $\Gamma_n^k = \left(\!\binom{n}{k}\!\right) = \binom{n+k-1}{k}$.

**Étapes :**

1.  Identifions $n$ et $k$ :
    *   $n = 4$ (le nombre de choix/catégories possibles).
    *   $k = 6$ (le nombre d'éléments à choisir).

2.  Appliquons la formule :

    $$ \binom{4+6-1}{6} = \binom{9}{6} $$

3.  Utilisons la symétrie pour simplifier le calcul ($\binom{9}{6} = \binom{9}{3}$) :

    $$ \binom{9}{3} = \frac{9 \times 8 \times 7}{3 \times 2 \times 1} $$

4.  Calculons :

    $$ \frac{9}{3} = 3 \quad \text{et} \quad \frac{8}{2} = 4 $$

    $$ 3 \times 4 \times 7 = 12 \times 7 = 84 $$

**Réponse :**

Il y a $84$ façons différentes de composer la boîte de pâtisseries.

</details>

---

## Exercice 7

**Problème :** Déterminer le nombre de solutions entières positives ou nulles ($x_i \in \mathbb{N}$) de l'équation suivante :

$$ x_1 + x_2 + x_3 + x_4 = 10 $$

<details>

<summary>Solution</summary>

**Méthode :** Ce problème est isomorphe au problème des multi-ensembles (ou méthode des "barres et étoiles"). Nous devons répartir 10 unités ($k=10$) dans 4 variables distinctes ($n=4$).

La formule est $\binom{n+k-1}{k}$.

**Étapes :**

1.  Identifions $n$ et $k$ :
    *   $n = 4$ (nombre de variables).
    *   $k = 10$ (somme totale à atteindre).

2.  Appliquons la formule :

    $$ \binom{4+10-1}{10} = \binom{13}{10} $$

3.  Par symétrie $\binom{13}{10} = \binom{13}{3}$ :

    $$ \binom{13}{3} = \frac{13 \times 12 \times 11}{3 \times 2 \times 1} $$

4.  Simplifions : $3 \times 2 \times 1 = 6$ et $12 / 6 = 2$.

    $$ 13 \times 2 \times 11 = 26 \times 11 $$

5.  Calcul final :

    $$ 26 \times 10 + 26 = 260 + 26 = 286 $$

**Réponse :**

Il y a $286$ solutions distinctes.

</details>

---

## Exercice 8

**Problème :** Combien d'anagrammes distincts peut-on former avec les lettres du mot **"COMBINATOIRE"** ?

<details>

<summary>Solution</summary>

**Méthode :** C'est un problème de permutations avec répétition (ou coefficient multinomial). On compte le nombre total de lettres et on divise la factorielle de ce total par les factorielles des répétitions de chaque lettre.

**Étapes :**

1.  Comptons le nombre total de lettres ($N$) :

    C, O, M, B, I, N, A, T, O, I, R, E

    $N = 12$ lettres.

2.  Comptons les occurrences de chaque lettre :
    *   O : 2 fois
    *   I : 2 fois
    *   C, M, B, N, A, T, R, E : 1 fois chacune (8 lettres uniques)

3.  La formule du coefficient multinomial est :

    $$ \frac{N!}{k_1! k_2! \dots k_r!} $$

    Où les $k_i$ sont les multiplicités.

4.  Application :

    $$ \frac{12!}{2! \times 2! \times 1! \dots} = \frac{12!}{2 \times 2} = \frac{12!}{4} $$

5.  Calculons la valeur (note : $12! = 479\,001\,600$) :

    $$ \frac{479\,001\,600}{4} = 119\,750\,400 $$

    *Alternativement, on peut laisser le résultat sous forme factorielle si le nombre est trop grand, mais un calcul exact est souvent attendu à ce niveau.*

**Réponse :**

Le nombre d'anagrammes est $\frac{12!}{4} = 119\,750\,400$.

</details>

---

## Exercice 9

**Problème :** Un professeur dispose de 10 livres **distincts**. Il souhaite les répartir entre 3 étudiants : Alice, Bob et Charlie.

Alice doit recevoir 5 livres, Bob doit en recevoir 3, et Charlie doit en recevoir 2.

De combien de façons le professeur peut-il distribuer les livres ?

<details>

<summary>Solution</summary>

**Méthode :** Il s'agit de partitionner un ensemble de 10 objets distincts en 3 groupes ordonnés (étiquetés par les noms des étudiants) de tailles fixées. Nous utilisons le coefficient multinomial $\binom{n}{k_1, k_2, k_3}$.

**Étapes :**

1.  Identifions les paramètres :
    *   Total d'objets $n = 10$.
    *   Tailles des groupes : $k_1 = 5$ (Alice), $k_2 = 3$ (Bob), $k_3 = 2$ (Charlie).
    *   Vérification : $5 + 3 + 2 = 10$.

2.  Appliquons la formule du coefficient multinomial :

    $$ \binom{10}{5, 3, 2} = \frac{10!}{5! 3! 2!} $$

3.  Calculons :

    $$ \frac{10!}{5! 3! 2!} = \frac{3\,628\,800}{120 \times 6 \times 2} $$

    Simplifions intelligemment :

    $$ \frac{10!}{5!3!2!} = \binom{10}{5} \times \binom{5}{3} \times \binom{2}{2} $$

    (Cela revient à choisir 5 livres pour Alice parmi 10, puis 3 pour Bob parmi les 5 restants, puis les 2 derniers vont à Charlie).

4.  Calcul par étapes :
    *   $\binom{10}{5} = \frac{10 \times 9 \times 8 \times 7 \times 6}{120} = 2 \times 9 \times 2 \times 7 = 252$
    *   $\binom{5}{3} = 10$
    *   $\binom{2}{2} = 1$

5.  Produit final :

    $$ 252 \times 10 \times 1 = 2\,520 $$

**Réponse :**

Il y a $2\,520$ façons de distribuer les livres.

</details>

---

## Exercice 10

**Problème :** En utilisant la formule du Binôme de Newton, calculer la valeur de la somme suivante :

$$ S = \sum_{k=0}^{n} \binom{n}{k} 3^k $$

<details>

<summary>Solution</summary>

**Méthode :** Nous devons reconnaître dans cette somme la forme développée de $(a+b)^n$. La formule est $\sum_{k=0}^n \binom{n}{k} a^k b^{n-k}$.

**Étapes :**

1.  Observons l'expression donnée : $\sum_{k=0}^{n} \binom{n}{k} 3^k$.
2.  Pour faire correspondre cela à la formule générale $\sum_{k=0}^n \binom{n}{k} a^k b^{n-k}$, nous pouvons identifier :
    *   $a = 3$ (puisque nous avons $3^k$)
    *   $b^{n-k}$ n'apparaît pas explicitement, ce qui implique que $b=1$ (car $1^{n-k} = 1$).
3.  Réécrivons la somme avec ces identifications :

    $$ S = \sum_{k=0}^{n} \binom{n}{k} 3^k 1^{n-k} $$

4.  D'après le théorème du Binôme, cette somme est égale à :

    $$ (3 + 1)^n $$

5.  Simplifions :

    $$ 4^n $$

**Réponse :**

$$ \sum_{k=0}^{n} \binom{n}{k} 3^k = 4^n $$

</details>
