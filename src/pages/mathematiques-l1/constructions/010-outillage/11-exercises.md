---
id: 812b68a6
type: exercises
order: 11
title: Outillage - exercices (A)
tags:
  - logique
  - ensembles
  - fonctions
  - nombres réels
  - nombres complexes
  - langage mathématique
createdAt: '2025-10-18T18:14:04.958Z'
level: regular
course: Constructions et raisonnements mathématiques
courseId: d2e11e03
chapter: Outillage
chapterId: 4caba84b
---
# Exercices "Outillage" (A)

## Exercice 1

**Problème:** Soient les deux propositions suivantes :

-   $P$ : "17 est un nombre premier."
-   $Q$ : "Paris est la capitale de l'Espagne."

Déterminez la valeur de vérité (Vrai ou Faux) des propositions suivantes, en justifiant votre réponse :

1.  $P \text{ et } Q$
2.  $P \text{ ou } Q$
3.  non $P$
4.  (non $P$) ou $Q$

<details>

<summary>Solution</summary>

**Méthode:** La première étape est de déterminer la valeur de vérité de chaque proposition de base, $P$ et $Q$. Ensuite, on applique les définitions des connecteurs logiques "et", "ou" et "non" pour trouver la valeur de vérité des propositions composées.

**Étapes:**

1.  **Évaluer les propositions de base :**
    -   $P$ : "17 est un nombre premier." Un nombre premier est un entier supérieur à 1 qui n'a que deux diviseurs : 1 et lui-même. 17 n'est divisible que par 1 et 17. Donc, la proposition $P$ est **Vraie (V)**.
    -   $Q$ : "Paris est la capitale de l'Espagne." La capitale de l'Espagne est Madrid. Donc, la proposition $Q$ est **Fausse (F)**.

2.  **Évaluer $P \text{ et } Q$ :**
    -   La conjonction "et" est vraie uniquement si les deux propositions sont vraies.
    -   Ici, nous avons V et F.
    -   Le résultat est donc **Faux**.

3.  **Évaluer $P \text{ ou } Q$ :**
    -   La disjonction "ou" est vraie si au moins l'une des deux propositions est vraie.
    -   Ici, nous avons V ou F.
    -   Puisque $P$ est vraie, le résultat est **Vrai**.

4.  **Évaluer non $P$ :**
    -   La négation inverse la valeur de vérité.
    -   Puisque $P$ est Vraie, non $P$ est **Fausse**.

5.  **Évaluer (non $P$) ou $Q$ :**
    -   Nous avons déjà déterminé que non $P$ est Fausse et $Q$ est Fausse.
    -   Nous devons évaluer F ou F.
    -   La disjonction est fausse uniquement si les deux propositions sont fausses.
    -   Le résultat est donc **Faux**.

**Réponse:**

1.  $P \text{ et } Q$ : **Faux**
2.  $P \text{ ou } Q$ : **Vrai**
3.  non $P$ : **Faux**
4.  (non $P$) ou $Q$ : **Faux**

</details>

## Exercice 2

**Problème:** Soit $n$ un entier. Utilisez les lois de De Morgan pour écrire la négation de la proposition suivante :

" $n$ est divisible par 2 ou $n$ est divisible par 3. "

Donnez un exemple d'entier $n$ pour lequel la proposition initiale est vraie, et un exemple pour lequel elle est fausse.

<details>

<summary>Solution</summary>

**Méthode:** On identifie d'abord les deux propositions de base, $P$ et $Q$. La proposition donnée est de la forme $P \text{ ou } Q$. On applique ensuite la loi de De Morgan appropriée, qui stipule que `non(P ou Q)` est équivalent à `(non P) et (non Q)`.

**Étapes:**

1.  **Identifier les propositions de base :**
    -   Soit $P$ : "$n$ est divisible par 2".
    -   Soit $Q$ : "$n$ est divisible par 3".
    -   La proposition initiale est $P \text{ ou } Q$.

2.  **Appliquer la loi de De Morgan :**
    -   La négation est `non(P ou Q)`.
    -   Selon la loi de De Morgan, `non(P ou Q)` est équivalent à `(non P) et (non Q)`.

3.  **Traduire les négations en langage courant :**
    -   `non P` est "$n$ n'est pas divisible par 2".
    -   `non Q` est "$n$ n'est pas divisible par 3".

4.  **Combiner pour former la négation finale :**
    -   La négation est donc : "$n$ n'est pas divisible par 2 et $n$ n'est pas divisible par 3."

5.  **Trouver des exemples :**
    -   **Exemple où la proposition initiale est vraie** : "$n$ est divisible par 2 ou par 3". Choisissons $n=9$. 9 n'est pas divisible par 2, mais il est divisible par 3. La condition "ou" est donc satisfaite. La proposition est vraie pour $n=9$. (De même pour $n=10$ ou $n=12$).
    -   **Exemple où la proposition initiale est fausse** : Il nous faut un nombre qui n'est ni divisible par 2, ni par 3. C'est-à-dire un nombre pour lequel la négation est vraie. Choisissons $n=7$. 7 n'est pas divisible par 2 et n'est pas divisible par 3. La proposition initiale est donc fausse pour $n=7$.

**Réponse:** La négation de la proposition est : **"$n$ n'est pas divisible par 2 et $n$ n'est pas divisible par 3."**

</details>

## Exercice 3

**Problème:** Soit l'implication $I$ suivante, où $x$ est un nombre réel :

"Si $x < -4$, alors $x^2 > 16$."

Analysez la valeur de vérité de l'implication $I$ pour les cas suivants :

1.  $x = -5$
2.  $x = 3$
3.  $x = 5$

L'implication $I$ est-elle vraie pour tout $x \in \mathbb{R}$ ?

<details>

<summary>Solution</summary>

**Méthode:** On identifie l'hypothèse $P$ et la conclusion $Q$. Pour chaque valeur de $x$, on détermine la valeur de vérité de $P$ et de $Q$, puis on utilise la table de vérité de l'implication ($P \Rightarrow Q$) pour en déduire la valeur de vérité de $I$. Rappel : $P \Rightarrow Q$ est fausse uniquement si $P$ est vraie et $Q$ est fausse.

**Étapes:**

1.  **Identifier l'hypothèse et la conclusion :**
    -   Hypothèse $P$ : "$x < -4$".
    -   Conclusion $Q$ : "$x^2 > 16$".
    -   L'implication est $P \Rightarrow Q$.

2.  **Analyse pour $x = -5$ :**
    -   $P$ : "$-5 < -4$" est **Vraie**.
    -   $Q$ : "$(-5)^2 > 16$", soit "$25 > 16$", est **Vraie**.
    -   L'implication $V \Rightarrow V$ est **Vraie**.

3.  **Analyse pour $x = 3$ :**
    -   $P$ : "$3 < -4$" est **Fausse**.
    -   $Q$ : "$3^2 > 16$", soit "$9 > 16$", est **Fausse**.
    -   L'implication $F \Rightarrow F$ est **Vraie**. (Une hypothèse fausse implique n'importe quoi).

4.  **Analyse pour $x = 5$ :**
    -   $P$ : "$5 < -4$" est **Fausse**.
    -   $Q$ : "$5^2 > 16$", soit "$25 > 16$", est **Vraie**.
    -   L'implication $F \Rightarrow V$ est **Vraie**. (Une hypothèse fausse implique n'importe quoi).

5.  **Validité générale de l'implication $I$ :**
    -   L'implication $P \Rightarrow Q$ est fausse s'il existe un cas où $P$ est Vraie et $Q$ est Fausse.
    -   On cherche donc un $x$ tel que $x < -4$ (P Vraie) ET $x^2 \le 16$ (Q Fausse).
    -   Cependant, si $x < -4$, alors en multipliant par $x$ (qui est négatif), on change le sens de l'inégalité : $x \cdot x > -4 \cdot x$. De plus, comme $x < -4$, on a aussi $-x > 4$, donc $x^2 = (-x)^2 > 4^2 = 16$.
    -   Il est donc impossible que l'hypothèse soit vraie et la conclusion fausse. Le cas $V \Rightarrow F$ ne se produit jamais.
    -   L'implication est donc vraie pour tout $x \in \mathbb{R}$.

**Réponse:** L'implication est **vraie** pour $x=-5$, $x=3$, et $x=5$. Oui, l'implication est **vraie pour tout $x \in \mathbb{R}$**.

</details>

## Exercice 4

**Problème:** Soit $n$ un entier. Considérez l'implication suivante :

"Si $n$ est divisible par 6, alors $n$ est divisible par 2."

1.  Écrivez la réciproque de cette implication. Est-elle vraie ?
2.  Écrivez la contraposée de cette implication. Est-elle vraie ?
3.  Écrivez la négation de cette implication.

<details>

<summary>Solution</summary>

**Méthode:** On identifie les propositions $P$ et $Q$. L'implication est $P \Rightarrow Q$.

-   La réciproque est $Q \Rightarrow P$.
-   La contraposée est $(\text{non } Q) \Rightarrow (\text{non } P)$.
-   La négation est $P \text{ et (non } Q)$.

On analyse ensuite la véracité de chaque nouvelle proposition.

**Étapes:**

1.  **Identifier les propositions de base :**
    -   $P$ : "$n$ est divisible par 6".
    -   $Q$ : "$n$ est divisible par 2".
    -   L'implication initiale $P \Rightarrow Q$ est vraie, car si un nombre est un multiple de 6, il est de la forme $6k = 2(3k)$, donc c'est aussi un multiple de 2.

2.  **Réciproque ($Q \Rightarrow P$) :**
    -   L'énoncé est : "Si $n$ est divisible par 2, alors $n$ est divisible par 6."
    -   **Véracité :** Cette proposition est **fausse**. Pour le prouver, il suffit de trouver un contre-exemple. Soit $n=4$. $n$ est divisible par 2, mais $n$ n'est pas divisible par 6.

3.  **Contraposée ($(\text{non } Q) \Rightarrow (\text{non } P)$) :**
    -   `non Q` : "$n$ n'est pas divisible par 2" (c'est-à-dire "$n$ est impair").
    -   `non P` : "$n$ n'est pas divisible par 6".
    -   L'énoncé est : "Si $n$ n'est pas divisible par 2, alors $n$ n'est pas divisible par 6."
    -   **Véracité :** Cette proposition est **vraie**. Si un nombre n'est pas pair, il ne peut pas être un multiple de 6 (car tous les multiples de 6 sont pairs). Comme attendu, la contraposée a la même valeur de vérité que l'implication originale.

4.  **Négation ($P \text{ et (non } Q)$) :**
    -   L'énoncé est : "$n$ est divisible par 6 et $n$ n'est pas divisible par 2."
    -   **Véracité :** Cette proposition est toujours **fausse**, car il est impossible qu'un nombre soit un multiple de 6 sans être un multiple de 2.

**Réponse:**

1.  **Réciproque :** "Si $n$ est divisible par 2, alors $n$ est divisible par 6." (Fausse)
2.  **Contraposée :** "Si $n$ n'est pas divisible par 2, alors $n$ n'est pas divisible par 6." (Vraie)
3.  **Négation :** "$n$ est divisible par 6 et $n$ n'est pas divisible par 2."

</details>

## Exercice 5

**Problème:** Déterminez si les propositions suivantes sont vraies ou fausses. Justifiez votre réponse en donnant un exemple ou un contre-exemple si nécessaire.

1.  $\forall x \in \mathbb{R}, x^2+1 > 0$
2.  $\exists n \in \mathbb{Z}, n+5 = 2$
3.  $\forall x \in \mathbb{R}, \exists y \in \mathbb{R}, y = x^2$
4.  $\exists y \in \mathbb{R}, \forall x \in \mathbb{R}, y = x^2$

<details>

<summary>Solution</summary>

**Méthode:** Pour chaque proposition, on analyse la condition imposée par les quantificateurs.

-   Pour une proposition `∀x, P(x)`, on doit vérifier que $P(x)$ est vraie pour *tous* les $x$. Si on trouve un seul contre-exemple, elle est fausse.
-   Pour une proposition `∃x, P(x)`, il suffit de trouver *un seul* exemple pour lequel $P(x)$ est vraie.
-   L'ordre des quantificateurs `∀` et `∃` est crucial.

**Étapes:**

1.  **$\forall x \in \mathbb{R}, x^2+1 > 0$**
    -   Pour tout nombre réel $x$, on sait que $x^2 \ge 0$.
    -   En ajoutant 1 des deux côtés, on obtient $x^2+1 \ge 0+1$, soit $x^2+1 \ge 1$.
    -   Puisque $1 > 0$, il est certain que $x^2+1 > 0$ pour tout $x \in \mathbb{R}$.
    -   La proposition est **Vraie**.

2.  **$\exists n \in \mathbb{Z}, n+5 = 2$**
    -   On cherche s'il existe un entier $n$ qui vérifie l'équation.
    -   Résolvons l'équation : $n = 2-5 = -3$.
    -   Le nombre $-3$ est bien un entier ($\-3 \in \mathbb{Z}$).
    -   Nous avons trouvé un tel entier. La proposition est **Vraie**.

3.  **$\forall x \in \mathbb{R}, \exists y \in \mathbb{R}, y = x^2$**
    -   Cette proposition dit : "Pour n'importe quel réel $x$ que l'on choisit, on peut trouver un réel $y$ qui est égal à son carré."
    -   Soit un $x$ quelconque. On peut toujours calculer son carré, $x^2$. Le résultat est un nombre réel. Posons $y=x^2$. Ce $y$ existe.
    -   Par exemple, si $x=7$, on peut trouver $y=49$. Si $x=-2$, on peut trouver $y=4$. Le $y$ dépend du $x$ choisi.
    -   La proposition est **Vraie**.

4.  **$\exists y \in \mathbb{R}, \forall x \in \mathbb{R}, y = x^2$**
    -   Cette proposition dit : "Il existe un unique réel $y$ (le même pour tous) qui est égal au carré de tous les nombres réels $x$."
    -   Ceci est clairement faux. Si un tel $y$ existait, on aurait $y = 1^2=1$ et aussi $y = 2^2=4$. Mais $1 \ne 4$, c'est une contradiction.
    -   Il n'existe pas de nombre qui soit à la fois le carré de 1 et le carré de 2.
    -   La proposition est **Fausse**.

**Réponse:**

1.  **Vraie**
2.  **Vraie**
3.  **Vraie**
4.  **Fausse**

</details>

## Exercice 6

**Problème:** Écrivez la négation de la proposition suivante :

$$ P : \exists x \in \mathbb{R}, \forall y \in \mathbb{R}, x+y > 0 $$

La proposition initiale $P$ est-elle vraie ou fausse ?

<details>

<summary>Solution</summary>

**Méthode:** Pour nier une proposition avec des quantificateurs, on inverse chaque quantificateur (`∀` devient `∃` et `∃` devient `∀`) et on nie la proposition qui suit.

**Étapes:**

1.  **Identifier la structure :** La proposition est de la forme `∃x, Q(x)`, où $Q(x)$ est la proposition `∀y, R(x,y)` et $R(x,y)$ est `x+y > 0`.

2.  **Nier le premier quantificateur :** La négation de `∃x ∈ ℝ, ...` est `∀x ∈ ℝ, non(...)`.

    $$ \text{non } P : \forall x \in \mathbb{R}, \text{ non}(\forall y \in \mathbb{R}, x+y > 0) $$

3.  **Nier le deuxième quantificateur :** La négation de `∀y ∈ ℝ, ...` est `∃y ∈ ℝ, non(...)`.

    $$ \text{non } P : \forall x \in \mathbb{R}, \exists y \in \mathbb{R}, \text{ non}(x+y > 0) $$

4.  **Nier la proposition finale :** La négation de `$x+y > 0$` est `$x+y \le 0$`.

    $$ \text{non } P : \forall x \in \mathbb{R}, \exists y \in \mathbb{R}, x+y \le 0 $$

5.  **Déterminer la valeur de vérité de P :**
    -   $P$ affirme : "Il existe un réel $x$ (un seul pour tout le monde) tel que, pour n'importe quel $y$ qu'on ajoute, la somme est strictement positive."
    -   Supposons qu'un tel $x$ existe. On peut alors choisir un $y$ qui le contredit. Par exemple, choisissons $y = -x - 1$.
    -   Calculons la somme : $x+y = x + (-x - 1) = -1$.
    -   La somme est $-1$, qui n'est pas strictement positive.
    -   Puisque pour n'importe quel $x$, on peut trouver un $y$ qui rend la condition $x+y > 0$ fausse, la proposition $P$ est **Fausse**.
    -   (Alternativement, la négation de $P$ est vraie : pour tout $x$, on peut trouver un $y$ (par ex. $y=-x$) tel que $x+y \le 0$. Puisque la négation est vraie, $P$ est fausse.)

**Réponse:** La négation est $\forall x \in \mathbb{R}, \exists y \in \mathbb{R}, x+y \le 0$. La proposition initiale $P$ est fausse.

</details>

## Exercice 7

**Problème:** Soit la fonction $f: \mathbb{Z} \to \mathbb{Z}$ définie par l'expression $f(n) = n^2 - 5$.

1.  Calculez l'image de $-3$ par $f$.
2.  Calculez $f(0)$.
3.  Trouvez tous les antécédents de $4$ par $f$.
4.  L'entier $-6$ a-t-il des antécédents par $f$ ? Justifiez.

<details>

<summary>Solution</summary>

**Méthode:**

-   Pour trouver l'image d'un nombre, on remplace la variable dans l'expression de la fonction par ce nombre.
-   Pour trouver les antécédents d'un nombre $y$, on résout l'équation $f(n) = y$, où $n$ est l'inconnue. On ne garde que les solutions qui appartiennent à l'ensemble de départ (ici $\mathbb{Z}$).

**Étapes:**

1.  **Calcul de l'image de -3 :**
    -   On calcule $f(-3)$.
    -   $f(-3) = (-3)^2 - 5 = 9 - 5 = 4$.

2.  **Calcul de $f(0)$ :**
    -   On calcule $f(0)$.
    -   $f(0) = (0)^2 - 5 = 0 - 5 = -5$.

3.  **Recherche des antécédents de 4 :**
    -   On doit résoudre l'équation $f(n) = 4$.
    -   $n^2 - 5 = 4$
    -   $n^2 = 9$
    -   Les solutions dans $\mathbb{R}$ sont $n=3$ et $n=-3$.
    -   Ces deux solutions sont des entiers, donc elles appartiennent bien à l'ensemble de départ $\mathbb{Z}$.
    -   Les antécédents de 4 sont donc 3 et -3.

4.  **Recherche des antécédents de -6 :**
    -   On doit résoudre l'équation $f(n) = -6$.
    -   $n^2 - 5 = -6$
    -   $n^2 = -1$
    -   Cette équation n'a pas de solution dans les nombres réels, et donc a fortiori pas de solution dans les entiers $\mathbb{Z}$.
    -   L'entier -6 n'a donc aucun antécédent par $f$.

**Réponse:**

1.  L'image de -3 est $4$.
2.  $f(0) = -5$.
3.  Les antécédents de 4 sont $-3$ et $3$.
4.  Non, -6 n'a pas d'antécédent car l'équation $n^2 = -1$ n'a pas de solution dans $\mathbb{Z}$.

</details>

## Exercice 8

**Problème:** Soit la fonction $f: \mathbb{R} \to \mathbb{R}$ définie par $f(x) = x^3 - x$.

Déterminez si cette fonction est injective.

<details>

<summary>Solution</summary>

**Méthode:** Pour déterminer si une fonction est injective, on peut utiliser deux approches :

1.  Algébrique : On suppose que $f(a) = f(b)$ et on essaie de montrer que cela implique nécessairement $a=b$. Si on trouve un cas où $f(a)=f(b)$ avec $a \ne b$, la fonction n'est pas injective.
2.  Graphique/Recherche de contre-exemple : On cherche deux valeurs distinctes $x_1$ et $x_2$ qui ont la même image. C'est souvent plus simple pour prouver qu'une fonction n'est pas injective.

Utilisons la deuxième méthode, qui est plus directe.

**Étapes:**

1.  **Chercher un contre-exemple :** On cherche deux nombres $a$ et $b$ différents tels que $f(a) = f(b)$.
    -   $a^3 - a = b^3 - b$
    -   $a^3 - b^3 - a + b = 0$
    -   $(a-b)(a^2+ab+b^2) - (a-b) = 0$
    -   $(a-b)(a^2+ab+b^2-1) = 0$
    -   Cette équation est satisfaite si $a=b$ (ce qui est le cas trivial) OU si $a^2+ab+b^2-1=0$.
    -   On cherche donc une solution à $a^2+ab+b^2=1$ avec $a \ne b$.

2.  **Tester des valeurs simples :** Essayons des valeurs entières simples.
    -   $f(0) = 0^3 - 0 = 0$.
    -   $f(1) = 1^3 - 1 = 0$.
    -   $f(-1) = (-1)^3 - (-1) = -1 + 1 = 0$.

3.  **Trouver un contre-exemple explicite :**
    -   Nous avons trouvé que $f(1)=0$ et $f(0)=0$. Cependant, $1 \ne 0$. Ceci est un contre-exemple, mais utilisons un exemple plus clair.
    -   Nous avons $f(1)=0$ et $f(-1)=0$.
    -   Puisque $1 \ne -1$, nous avons trouvé deux éléments distincts de l'ensemble de départ (1 et -1) qui ont la même image (0).

4.  **Conclure :**
    -   La définition de l'injectivité ($a_1 \neq a_2 \Rightarrow f(a_1) \neq f(a_2)$) n'est pas respectée.
    -   La fonction $f$ n'est donc pas injective.

**Réponse:** La fonction $f(x)=x^3-x$ n'est **pas injective**. Par exemple, $f(1)=0$ et $f(-1)=0$, mais $1 \ne -1$.

</details>

## Exercice 9

**Problème:** La fonction $g: \mathbb{R} \to \mathbb{R}$ définie par $g(x) = x^2$ n'est ni injective ni surjective.

Comment pourrait-on modifier l'ensemble de départ et/ou l'ensemble d'arrivée pour que la fonction devienne bijective ? (Il peut y avoir plusieurs réponses correctes).

<details>

<summary>Solution</summary>

**Méthode:** On analyse pourquoi la fonction initiale n'est pas injective et pas surjective, puis on restreint les ensembles de départ et d'arrivée pour corriger ces problèmes.

-   Pour la rendre **injective**, il faut que deux $x$ différents ne puissent plus avoir la même image. Le problème de $x^2$ est que $x$ et $-x$ ont la même image. On doit donc restreindre l'ensemble de départ pour ne garder que l'un des deux (par exemple, que les positifs).
-   Pour la rendre **surjective**, il faut que tout élément de l'ensemble d'arrivée soit une image. Le problème de $x^2$ dans $\mathbb{R}$ est que les nombres négatifs ne sont jamais atteints. On doit donc restreindre l'ensemble d'arrivée aux valeurs que la fonction peut effectivement produire.

**Étapes:**

1.  **Analyser la non-injectivité :**
    -   $g(x)=x^2$ n'est pas injective sur $\mathbb{R}$ car, par exemple, $g(-2)=4$ et $g(2)=4$.
    -   Pour y remédier, on doit restreindre le domaine de définition de sorte qu'il ne contienne pas à la fois un nombre et son opposé (sauf 0).
    -   Une restriction possible est de prendre l'ensemble de départ $A = [0, +\infty[$ (les réels positifs ou nuls). Sur cet ensemble, si $x_1^2 = x_2^2$ avec $x_1, x_2 \ge 0$, alors on a bien $x_1=x_2$.

2.  **Analyser la non-surjectivité :**
    -   $g(x)=x^2$ n'est pas surjective sur $\mathbb{R}$ car l'image d'un carré est toujours positive ou nulle. Un nombre comme $-1$ dans l'ensemble d'arrivée n'a aucun antécédent.
    -   Pour y remédier, on doit restreindre le codomaine à l'ensemble des valeurs réellement atteintes par la fonction. L'ensemble des images de $x^2$ est $[0, +\infty[$.
    -   On choisit donc comme ensemble d'arrivée $B = [0, +\infty[$.

3.  **Construire la nouvelle fonction bijective :**
    -   En combinant les deux restrictions, on définit une nouvelle fonction $h: [0, +\infty[ \to [0, +\infty[$ par $h(x)=x^2$.
    -   **Injectivité de h :** Si $h(x_1)=h(x_2)$ avec $x_1, x_2 \in [0, +\infty[$, alors $x_1^2=x_2^2$. Comme $x_1$ et $x_2$ sont positifs, cela implique $x_1=x_2$. Donc $h$ est injective.
    -   **Surjectivité de h :** Soit $y \in [0, +\infty[$. On cherche un antécédent $x \in [0, +\infty[$ tel que $x^2=y$. Il suffit de prendre $x=\sqrt{y}$. Comme $y \ge 0$, $\sqrt{y}$ est bien défini et est dans $[0, +\infty[$. Donc $h$ est surjective.
    -   Puisque $h$ est injective et surjective, elle est bijective.

4.  **Mentionner une autre solution possible :** On aurait aussi pu restreindre l'ensemble de départ à $]-\infty, 0]$. La fonction $k: ]-\infty, 0] \to [0, +\infty[$ définie par $k(x)=x^2$ est aussi bijective.

**Réponse:** Une façon de rendre la fonction bijective est de la définir comme $h: [0, +\infty[ \to [0, +\infty[$ avec $h(x)=x^2$.

</details>

## Exercice 10

**Problème:** Soient les fonctions $f: \mathbb{R} \to \mathbb{R}$ et $g: \mathbb{R} \to \mathbb{R}$ définies par :

$$ f(x) = 3x - 4 \quad \text{et} \quad g(x) = x^2 + 1 $$

Calculez les expressions de $f \circ g(x)$ et $g \circ f(x)$.

<details>

<summary>Solution</summary>

**Méthode:** On applique les définitions de la composition de fonctions :

-   $(f \circ g)(x)$ signifie $f(g(x))$. On calcule d'abord $g(x)$, puis on utilise le résultat comme argument pour la fonction $f$.
-   $(g \circ f)(x)$ signifie $g(f(x))$. On calcule d'abord $f(x)$, puis on utilise le résultat comme argument pour la fonction $g$.

**Étapes:**

1.  **Calcul de $f \circ g(x)$ :**
    -   Par définition, $(f \circ g)(x) = f(g(x))$.
    -   On remplace $g(x)$ par son expression : $f(x^2+1)$.
    -   Maintenant, on applique la fonction $f$ à l'expression $(x^2+1)$. La fonction $f$ prend son argument, le multiplie par 3 et soustrait 4.
    -   Donc, $f(x^2+1) = 3(x^2+1) - 4$.
    -   On simplifie l'expression : $3x^2 + 3 - 4 = 3x^2 - 1$.

2.  **Calcul de $g \circ f(x)$ :**
    -   Par définition, $(g \circ f)(x) = g(f(x))$.
    -   On remplace $f(x)$ par son expression : $g(3x-4)$.
    -   Maintenant, on applique la fonction $g$ à l'expression $(3x-4)$. La fonction $g$ prend son argument, le met au carré et ajoute 1.
    -   Donc, $g(3x-4) = (3x-4)^2 + 1$.
    -   On développe le carré (identité remarquable $(a-b)^2 = a^2 - 2ab + b^2$) : $(3x)^2 - 2(3x)(4) + 4^2 + 1$.
    -   On simplifie : $9x^2 - 24x + 16 + 1 = 9x^2 - 24x + 17$.

3.  **Conclusion :** On remarque que les deux expressions sont différentes, ce qui illustre que la composition de fonctions n'est pas commutative.

**Réponse:**

$$ (f \circ g)(x) = 3x^2 - 1 $$

$$ (g \circ f)(x) = 9x^2 - 24x + 17 $$

</details>

## Exercice 11

**Problème:** Soit la fonction $f: \mathbb{R} \setminus \{2\} \to \mathbb{R} \setminus \{0\}$ définie par $f(x) = \frac{1}{x-2}$. On admet que cette fonction est bijective.

Déterminez l'expression de sa fonction réciproque $f^{-1}(y)$.

<details>

<summary>Solution</summary>

**Méthode:** Pour trouver la fonction réciproque $f^{-1}$ de $f$, on pose $y = f(x)$ et on résout cette équation pour exprimer $x$ en fonction de $y$. L'expression obtenue pour $x$ sera la formule de $f^{-1}(y)$.

**Étapes:**

1.  **Poser l'équation $y=f(x)$ :**

    $$ y = \frac{1}{x-2} $$

2.  **Isoler $x$ dans l'équation :**
    -   Comme $y \in \mathbb{R} \setminus \{0\}$, on sait que $y \ne 0$. On peut donc multiplier par $(x-2)$ et diviser par $y$.
    -   Multiplier par $(x-2)$ de chaque côté :

        $$ y(x-2) = 1 $$

    -   Diviser par $y$ de chaque côté :

        $$ x-2 = \frac{1}{y} $$

    -   Ajouter 2 de chaque côté :

        $$ x = \frac{1}{y} + 2 $$

3.  **Écrire l'expression de la fonction réciproque :**
    -   L'expression de $x$ en fonction de $y$ nous donne la fonction réciproque.
    -   $f^{-1}(y) = \frac{1}{y} + 2$.
    -   Le domaine de $f^{-1}$ est l'ensemble d'arrivée de $f$, soit $\mathbb{R} \setminus \{0\}$, et son ensemble d'arrivée est le domaine de $f$, soit $\mathbb{R} \setminus \{2\}$. L'expression $\frac{1}{y}+2$ est bien définie pour tout $y \ne 0$.

**Réponse:** La fonction réciproque est $f^{-1}: \mathbb{R} \setminus \{0\} \to \mathbb{R} \setminus \{2\}$ définie par :

$$ f^{-1}(y) = \frac{1}{y} + 2 $$

</details>

## Exercice 12

**Problème:** Résolvez dans $\mathbb{R}$ l'inéquation suivante :

$$ |2x - 6| \ge 4 $$

<details>

<summary>Solution</summary>

**Méthode:** Une inéquation de la forme $|A| \ge B$ (avec $B \ge 0$) est équivalente à la disjonction de deux cas : $A \ge B$ ou $A \le -B$. On résout chacune de ces deux inéquations séparément et on fait l'union de leurs ensembles de solutions.

**Étapes:**

1.  **Traduire l'inéquation en une disjonction :**
    -   L'inéquation $|2x - 6| \ge 4$ est équivalente à :

        $$ (2x - 6 \ge 4) \quad \text{ou} \quad (2x - 6 \le -4) $$

2.  **Résoudre la première inéquation :**
    -   $2x - 6 \ge 4$
    -   Ajouter 6 des deux côtés : $2x \ge 10$
    -   Diviser par 2 (qui est positif, donc on ne change pas le sens de l'inégalité) : $x \ge 5$.
    -   L'ensemble de solutions pour ce cas est $S_1 = [5, +\infty[$.

3.  **Résoudre la deuxième inéquation :**
    -   $2x - 6 \le -4$
    -   Ajouter 6 des deux côtés : $2x \le 2$
    -   Diviser par 2 : $x \le 1$.
    -   L'ensemble de solutions pour ce cas est $S_2 = ]-\infty, 1]$.

4.  **Combiner les ensembles de solutions :**
    -   La solution finale est l'union des solutions des deux cas : $S = S_1 \cup S_2$.
    -   $S = ]-\infty, 1] \cup [5, +\infty[$.

**Réponse:** L'ensemble des solutions est $S = ]-\infty, 1] \cup [5, +\infty[$.

</details>

## Exercice 13

**Problème:** Soient les nombres complexes $z_1 = 1-3i$ et $z_2 = -2+i$.

Calculez sous forme algébrique ($a+ib$) les nombres suivants :

1.  $z_1 + z_2$
2.  $z_1 \cdot z_2$
3.  $\frac{z_1}{z_2}$

<details>

<summary>Solution</summary>

**Méthode:**

1.  Pour l'addition, on additionne les parties réelles entre elles et les parties imaginaires entre elles.
2.  Pour la multiplication, on développe l'expression comme un produit de binômes et on utilise le fait que $i^2 = -1$.
3.  Pour la division, on multiplie le numérateur et le dénominateur par le conjugué du dénominateur pour rendre le dénominateur réel.

**Étapes:**

1.  **Calcul de $z_1 + z_2$ :**
    -   $z_1 + z_2 = (1-3i) + (-2+i)$
    -   $z_1 + z_2 = (1-2) + (-3+1)i$
    -   $z_1 + z_2 = -1 - 2i$

2.  **Calcul de $z_1 \cdot z_2$ :**
    -   $z_1 \cdot z_2 = (1-3i)(-2+i)$
    -   $z_1 \cdot z_2 = 1(-2) + 1(i) -3i(-2) -3i(i)$
    -   $z_1 \cdot z_2 = -2 + i + 6i - 3i^2$
    -   On remplace $i^2$ par $-1$ : $-2 + 7i - 3(-1)$
    -   $z_1 \cdot z_2 = -2 + 7i + 3 = 1 + 7i$

3.  **Calcul de $\frac{z_1}{z_2}$ :**
    -   Le conjugué de $z_2 = -2+i$ est $\bar{z_2} = -2-i$.
    -   On multiplie le numérateur et le dénominateur par $\bar{z_2}$ :

        $$ \frac{z_1}{z_2} = \frac{(1-3i)}{(-2+i)} \cdot \frac{(-2-i)}{(-2-i)} $$

    -   **Numérateur :** $(1-3i)(-2-i) = -2 - i + 6i + 3i^2 = -2 + 5i - 3 = -5+5i$.
    -   **Dénominateur :** $(-2+i)(-2-i) = (-2)^2 - (i)^2 = 4 - i^2 = 4 - (-1) = 5$.
    -   On assemble le tout :

        $$ \frac{z_1}{z_2} = \frac{-5+5i}{5} = \frac{-5}{5} + \frac{5i}{5} = -1+i $$

**Réponse:**

1.  $z_1 + z_2 = -1 - 2i$
2.  $z_1 \cdot z_2 = 1 + 7i$
3.  $\frac{z_1}{z_2} = -1 + i$

</details>

## Exercice 14

**Problème:** Résolvez dans $\mathbb{C}$ l'équation suivante :

$$ (1+i)z = 3-i $$

Donnez la solution sous forme algébrique $a+ib$.

<details>

<summary>Solution</summary>

**Méthode:** Pour résoudre une équation de la forme $w \cdot z = u$, où $w, u$ sont des complexes connus et $z$ est l'inconnue, on isole $z$ en divisant par $w$ (si $w \ne 0$). Cela revient à calculer le quotient $\frac{u}{w}$.

**Étapes:**

1.  **Isoler z :**
    -   L'équation est $(1+i)z = 3-i$.
    -   Pour trouver $z$, on divise les deux côtés par $(1+i)$ :

        $$ z = \frac{3-i}{1+i} $$

2.  **Calculer le quotient :**
    -   Pour mettre ce quotient sous forme algébrique, on multiplie le numérateur et le dénominateur par le conjugué du dénominateur, qui est $1-i$.

        $$ z = \frac{(3-i)}{(1+i)} \cdot \frac{(1-i)}{(1-i)} $$

3.  **Développer le numérateur et le dénominateur :**
    -   **Numérateur :** $(3-i)(1-i) = 3(1) + 3(-i) -i(1) -i(-i) = 3 - 3i - i + i^2 = 3 - 4i - 1 = 2-4i$.
    -   **Dénominateur :** $(1+i)(1-i) = 1^2 - i^2 = 1 - (-1) = 2$.

4.  **Finaliser le calcul :**
    -   On remplace les résultats dans l'expression de $z$ :

        $$ z = \frac{2-4i}{2} = \frac{2}{2} - \frac{4i}{2} = 1 - 2i $$

**Réponse:** La solution de l'équation est $z = 1-2i$.

</details>

## Exercice 15

**Problème:** Soit le nombre complexe $z = \frac{5-5i}{1+2i}$.

Calculez le module $|z|$ de deux manières différentes :

1.  En calculant d'abord la forme algébrique de $z$, puis son module.
2.  En utilisant la propriété $|z_1/z_2| = |z_1|/|z_2|$.

<details>

<summary>Solution</summary>

**Méthode:**

1.  Pour la première méthode, on effectue la division complexe en utilisant le conjugué, on obtient $z=a+ib$, puis on calcule $|z|=\sqrt{a^2+b^2}$.
2.  Pour la deuxième méthode, on calcule séparément le module du numérateur et celui du dénominateur, puis on fait le quotient des deux modules obtenus.

**Étapes:**

1.  **Méthode 1 : Forme algébrique d'abord**
    -   On calcule $z = \frac{5-5i}{1+2i}$. Le conjugué du dénominateur est $1-2i$.
    -   $z = \frac{(5-5i)(1-2i)}{(1+2i)(1-2i)} = \frac{5 - 10i - 5i + 10i^2}{1^2 - (2i)^2} = \frac{5 - 15i - 10}{1 - 4i^2} = \frac{-5 - 15i}{1+4} = \frac{-5 - 15i}{5}$.
    -   La forme algébrique est $z = -1 - 3i$.
    -   On calcule maintenant le module de $z = -1 - 3i$ :

        $$ |z| = \sqrt{(-1)^2 + (-3)^2} = \sqrt{1+9} = \sqrt{10} $$

2.  **Méthode 2 : Propriété des modules**
    -   On pose $z_1 = 5-5i$ et $z_2 = 1+2i$. On utilise $|z| = \frac{|z_1|}{|z_2|}$.
    -   Calcul du module du numérateur :

        $$ |z_1| = |5-5i| = \sqrt{5^2 + (-5)^2} = \sqrt{25+25} = \sqrt{50} $$

    -   Calcul du module du dénominateur :

        $$ |z_2| = |1+2i| = \sqrt{1^2 + 2^2} = \sqrt{1+4} = \sqrt{5} $$

    -   On calcule le quotient des modules :

        $$ |z| = \frac{\sqrt{50}}{\sqrt{5}} = \sqrt{\frac{50}{5}} = \sqrt{10} $$

3.  **Conclusion :** Les deux méthodes donnent le même résultat, mais la deuxième est souvent plus rapide car elle évite le calcul complet de la forme algébrique.

**Réponse:** Le module de $z$ est $|z| = \sqrt{10}$.

</details>
