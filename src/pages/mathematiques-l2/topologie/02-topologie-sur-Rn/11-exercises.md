---
id: 4bc2b80a
type: exercises
order: 11
title: Topologie sur Rn - exercices (A)
tags:
  - Topologie
  - Espaces vectoriels normés
  - Ensembles ouverts
  - Ensembles fermés
  - Compacité
  - Suites de Cauchy
createdAt: '2025-10-12T14:36:44.756Z'
level: regular
course: Topologie
courseId: 34e61f8e
chapter: Topologie sur Rn
chapterId: 3c3b95a8
---
# Exercices "Topologie sur Rn" (A)

## Exercice 1: [Problème de Calcul]

**Problème :** Dans l'espace $\mathbb{R}^2$, on considère le point $x = \begin{pmatrix} 1 \\ -1 \end{pmatrix}$ et le rayon $r=2$.

Décrivez et dessinez la boule fermée $B_N^f(x, r)$ pour les trois normes suivantes :

1.  La norme 1 : $N = \|\cdot\|_1$
2.  La norme euclidienne : $N = \|\cdot\|_2$
3.  La norme infinie : $N = \|\cdot\|_\infty$

<details>

<summary>Solution</summary>

**Méthode :** Pour chaque norme, nous allons traduire la définition de la boule fermée $B_N^f(x, r) = \{z \in \mathbb{R}^2 : N(z - x) \le r\}$ en une inéquation portant sur les coordonnées $z = (z_1, z_2)$. Ensuite, nous identifierons la forme géométrique correspondante et la dessinerons.

**Étapes :**

Soit $z = \begin{pmatrix} z_1 \\ z_2 \end{pmatrix}$ un point de $\mathbb{R}^2$. Le vecteur $z-x$ a pour coordonnées $\begin{pmatrix} z_1 - 1 \\ z_2 - (-1) \end{pmatrix} = \begin{pmatrix} z_1 - 1 \\ z_2 + 1 \end{pmatrix}$.

1.  **Pour la norme $\|\cdot\|_1$**:

    L'inéquation est $\|z-x\|_1 \le 2$.

    Cela se traduit par : $|z_1 - 1| + |z_2 + 1| \le 2$.

    C'est l'équation d'un carré plein, centré en $(1, -1)$, dont les diagonales sont parallèles aux axes et les sommets sont $(1+2, -1)$, $(1-2, -1)$, $(1, -1+2)$, $(1, -1-2)$, c'est-à-dire $(3,-1)$, $(-1,-1)$, $(1,1)$, $(1,-3)$.

2.  **Pour la norme $\|\cdot\|_2$**:

    L'inéquation est $\|z-x\|_2 \le 2$.

    Cela se traduit par : $\sqrt{(z_1 - 1)^2 + (z_2 + 1)^2} \le 2$, ou encore $(z_1 - 1)^2 + (z_2 + 1)^2 \le 4$.

    C'est l'équation d'un disque plein (cercle et son intérieur) de centre $(1, -1)$ et de rayon $2$.

3.  **Pour la norme $\|\cdot\|_\infty$**:

    L'inéquation est $\|z-x\|_\infty \le 2$.

    Cela se traduit par : $\max(|z_1 - 1|, |z_2 + 1|) \le 2$.

    Ceci est équivalent au système d'inéquations : $|z_1 - 1| \le 2$ et $|z_2 + 1| \le 2$.

    Soit $-2 \le z_1 - 1 \le 2$ et $-2 \le z_2 + 1 \le 2$.

    Ce qui donne $-1 \le z_1 \le 3$ et $-3 \le z_2 \le 1$.

    C'est un carré plein de centre $(1, -1)$ et de côté $4$, dont les côtés sont parallèles aux axes de coordonnées. C'est le produit cartésien des intervalles $[-1, 3] \times [-3, 1]$.

**Dessin récapitulatif :**

**Réponse :** Les trois boules fermées sont :

1.  Pour $\|\cdot\|_1$: un carré plein (losange) centré en $(1,-1)$ de sommets $(3,-1), (1,1), (-1,-1), (1,-3)$.
2.  Pour $\|\cdot\|_2$: un disque plein de centre $(1,-1)$ et de rayon $2$.
3.  Pour $\|\cdot\|_\infty$: le carré plein défini par $[-1, 3] \times [-3, 1]$.

</details>

## Exercice 2: [Problème d'Application]

**Problème :** Dans $\mathbb{R}^3$ muni de la norme euclidienne $\|\cdot\|_2$, on considère le point $x = (1, 2, -1)$ et la boule ouverte $B(x, 4)$. Le point $z = (3, 3, 1)$ appartient-il à cette boule ? Et le point $w = (4, 3, -2)$ ?

<details>

<summary>Solution</summary>

**Méthode :** Pour déterminer si un point appartient à une boule ouverte, il faut calculer la distance entre ce point et le centre de la boule, puis comparer cette distance au rayon. Un point $p$ appartient à $B(x, r)$ si et seulement si $d(p, x) < r$, ce qui est équivalent à $\|p-x\| < r$.

**Étapes :**

1.  **Vérification pour le point $z = (3, 3, 1)$**:

    Nous devons calculer la distance entre $z$ et $x$, c'est-à-dire la norme de leur différence.

    Le vecteur $z-x$ est :

    $z - x = (3-1, 3-2, 1-(-1)) = (2, 1, 2)$.

    Calculons sa norme euclidienne :

    $\|z-x\|_2 = \sqrt{2^2 + 1^2 + 2^2} = \sqrt{4 + 1 + 4} = \sqrt{9} = 3$.

    Nous comparons cette distance au rayon $r=4$.

    Puisque $3 < 4$, la distance est strictement inférieure au rayon.

2.  **Vérification pour le point $w = (4, 3, -2)$**:

    Nous calculons la distance entre $w$ et $x$.

    Le vecteur $w-x$ est :

    $w - x = (4-1, 3-2, -2-(-1)) = (3, 1, -1)$.

    Calculons sa norme euclidienne :

    $\|w-x\|_2 = \sqrt{3^2 + 1^2 + (-1)^2} = \sqrt{9 + 1 + 1} = \sqrt{11}$.

    Nous comparons cette distance au rayon $r=4$.

    On sait que $3^2=9$ et $4^2=16$. Comme $9 < 11 < 16$, on a $3 < \sqrt{11} < 4$.

    Puisque $\sqrt{11} < 4$, la distance est strictement inférieure au rayon.

**Réponse :**

- Le point $z$ appartient à la boule ouverte $B(x, 4)$ car $\|z-x\|_2 = 3 < 4$.
- Le point $w$ appartient également à la boule ouverte $B(x, 4)$ car $\|w-x\|_2 = \sqrt{11} < 4$.

</details>

## Exercice 3: [Question Conceptuelle]

**Problème :** En utilisant la définition formelle d'un ensemble ouvert, montrez que le demi-plan strict $P = \{(x, y) \in \mathbb{R}^2 : x > 3\}$ est un ensemble ouvert.

<details>

<summary>Solution</summary>

**Méthode :** Pour montrer qu'un ensemble $U$ est ouvert, il faut montrer que pour *tout* point $a \in U$, on peut trouver un rayon $r > 0$ tel que la boule ouverte $B(a, r)$ soit entièrement contenue dans $U$. Nous allons choisir la norme infinie $\|\cdot\|_\infty$ pour simplifier les calculs, car les ouverts ne dépendent pas de la norme choisie en dimension finie.

**Étapes :**

1.  **Prendre un point arbitraire dans $P$**:

    Soit $a = (a_1, a_2)$ un point quelconque de $P$. Par définition de $P$, on a $a_1 > 3$.

2.  **Choisir un rayon approprié**:

    La distance entre le point $a$ et la "frontière" de l'ensemble (la droite d'équation $x=3$) est $a_1 - 3$. C'est une quantité strictement positive.

    Choisissons un rayon $r$ strictement plus petit que cette distance. Prenons par exemple $r = \frac{a_1 - 3}{2}$. Puisque $a_1 > 3$, on a bien $r > 0$.

    On peut aussi plus simplement choisir $r = a_1 - 3$. Montrons que ce choix fonctionne. Posons $r = a_1-3$.

3.  **Montrer l'inclusion $B(a,r) \subset P$**:

    Nous devons montrer que tout point $z = (z_1, z_2)$ dans la boule ouverte $B_\infty(a, r)$ est aussi dans $P$.

    Par définition de la boule pour la norme infinie, $z \in B_\infty(a, r)$ signifie que $\max(|z_1 - a_1|, |z_2 - a_2|) < r$.

    Ceci implique en particulier que $|z_1 - a_1| < r$.

    Cette inégalité s'écrit $-r < z_1 - a_1 < r$.

    En utilisant l'inégalité de gauche, on obtient $a_1 - r < z_1$.

    En remplaçant $r$ par sa valeur ($r = a_1 - 3$) :

    $z_1 > a_1 - (a_1 - 3) \implies z_1 > 3$.

    La première coordonnée de $z$ est donc strictement supérieure à 3. Ceci est la condition pour qu'un point appartienne à $P$. Donc, $z \in P$.

4.  **Conclusion**:

    Nous avons montré que pour un point $a$ quelconque dans $P$, il existe un rayon $r>0$ tel que $B_\infty(a, r) \subset P$. Par définition, $P$ est donc un ensemble ouvert.

**Réponse :** L'ensemble $P$ est un ouvert. Pour tout point $a=(a_1, a_2) \in P$, le rayon $r = a_1 - 3$ est strictement positif et la boule ouverte $B(a, r)$ est incluse dans $P$.

</details>

## Exercice 4: [Question Conceptuelle]

**Problème :** L'ensemble $A = \{(x,y) \in \mathbb{R}^2 \mid x \ge 0 \text{ et } y > 0 \}$ est-il ouvert ? Fermé ? Ni l'un ni l'autre ? Justifiez votre réponse.

<details>

<summary>Solution</summary>

**Méthode :** Nous allons tester successivement si l'ensemble est ouvert, puis s'il est fermé.

- Pour montrer qu'il n'est pas ouvert, il suffit de trouver un seul point de l'ensemble pour lequel aucune boule centrée en ce point n'est incluse dans l'ensemble.
- Pour montrer qu'il n'est pas fermé, il suffit de trouver une suite de points de l'ensemble dont la limite n'est pas dans l'ensemble.

**Étapes :**

1.  **Test : $A$ est-il ouvert ?**

    Un ensemble est ouvert si autour de chacun de ses points, on peut tracer une boule ouverte qui reste dans l'ensemble.

    Considérons le point $p = (0, 1)$. Ce point est dans $A$ car $0 \ge 0$ et $1 > 0$.

    Considérons n'importe quelle boule ouverte centrée en $p$, $B(p, r)$ avec $r > 0$.

    Cette boule contient forcément des points dont la première coordonnée est négative. Par exemple, le point $p' = (-r/2, 1)$ est dans $B(p,r)$ (sa distance à $p$ est $r/2 < r$), mais il n'est pas dans $A$ car sa première coordonnée est $-r/2 < 0$.

    Puisqu'on a trouvé un point de $A$ qui n'est pas un point intérieur, l'ensemble $A$ n'est pas ouvert.

2.  **Test : $A$ est-il fermé ?**

    Un ensemble est fermé s'il contient les limites de toutes ses suites convergentes.

    Considérons la suite de points $(p_k)_{k \ge 1}$ définie par $p_k = (1, 1/k)$.

    Pour tout $k \ge 1$, on a $x_k = 1 \ge 0$ et $y_k = 1/k > 0$, donc chaque point $p_k$ est dans $A$.

    Cette suite converge dans $\mathbb{R}^2$ : $\lim_{k \to \infty} p_k = \lim_{k \to \infty} (1, 1/k) = (1, 0)$.

    Appelons $L = (1, 0)$ cette limite. Le point $L$ n'appartient pas à $A$ car sa deuxième coordonnée est $0$, ce qui ne satisfait pas la condition stricte $y > 0$.

    Nous avons trouvé une suite de points de $A$ dont la limite n'est pas dans $A$. Par la caractérisation séquentielle des fermés, l'ensemble $A$ n'est pas fermé.

**Réponse :** L'ensemble $A$ n'est **ni ouvert, ni fermé**.

</details>

## Exercice 5: [Problème d'Application]

**Problème :** Soit la parabole $P$ dans $\mathbb{R}^2$ définie par l'ensemble $P = \{(x, y) \in \mathbb{R}^2 : y = x^2\}$. En utilisant la caractérisation séquentielle des ensembles fermés, montrez que $P$ est un ensemble fermé.

<details>

<summary>Solution</summary>

**Méthode :** La caractérisation séquentielle stipule qu'un ensemble $F$ est fermé si et seulement si pour toute suite $(x_k)$ de points de $F$ qui converge vers une limite $x$, cette limite $x$ appartient aussi à $F$. Nous allons appliquer cette méthode à l'ensemble $P$.

**Étapes :**

1.  **Prendre une suite convergente dans $P$**:

    Soit $(p_k)_{k \in \mathbb{N}}$ une suite de points de $P$. On note chaque point $p_k = (x_k, y_k)$.

    Puisque chaque $p_k$ est dans $P$, ses coordonnées vérifient la relation $y_k = x_k^2$ pour tout $k \in \mathbb{N}$.

2.  **Supposer que la suite converge**:

    Supposons que cette suite converge vers une limite dans $\mathbb{R}^2$, que nous notons $L = (a, b)$.

    La convergence dans $\mathbb{R}^2$ implique la convergence des coordonnées :

    $\lim_{k \to \infty} x_k = a$ et $\lim_{k \to \infty} y_k = b$.

3.  **Passer à la limite dans la relation**:

    Nous partons de la relation qui définit l'appartenance à $P$ pour chaque terme de la suite :

    $y_k = x_k^2$.

    Nous pouvons prendre la limite des deux côtés de l'équation :

    $\lim_{k \to \infty} y_k = \lim_{k \to \infty} (x_k^2)$.

4.  **Utiliser la continuité des fonctions**:

    La fonction $f(x) = x^2$ est continue sur $\mathbb{R}$. La continuité nous permet d'échanger la limite et la fonction : $\lim(f(x_k)) = f(\lim(x_k))$.

    Donc, $\lim_{k \to \infty} (x_k^2) = (\lim_{k \to \infty} x_k)^2 = a^2$.

    L'équation devient alors : $b = a^2$.

5.  **Conclusion**:

    Les coordonnées $(a, b)$ de la limite $L$ satisfont la relation $b=a^2$. Ceci signifie, par définition, que le point $L = (a, b)$ appartient à l'ensemble $P$.

    Nous avons montré que la limite de n'importe quelle suite convergente de points de $P$ est encore dans $P$. Donc, $P$ est un ensemble fermé.

**Réponse :** L'ensemble $P$ est un ensemble fermé, car il est stable par passage à la limite.

</details>

## Exercice 6: [Problème de Calcul]

**Problème :** Soit l'ensemble $A = \{(x,y) \in \mathbb{R}^2 \mid x^2+y^2 < 4\} \setminus \{(0,0)\}$. Cet ensemble est le disque unité ouvert de rayon 2, privé de son centre.

Déterminez son intérieur $\mathring{A}$, son adhérence $\bar{A}$, et sa frontière $\partial A$.

<details>

<summary>Solution</summary>

**Méthode :**

1.  **Intérieur $\mathring{A}$**: C'est le plus grand ouvert contenu dans $A$. On part de $A$ et on retire les points qui ne sont pas intérieurs.
2.  **Adhérence $\bar{A}$**: C'est le plus petit fermé contenant $A$. On part de $A$ et on ajoute tous les points limites.
3.  **Frontière $\partial A$**: C'est l'ensemble des points qui sont dans l'adhérence mais pas dans l'intérieur, i.e., $\partial A = \bar{A} \setminus \mathring{A}$.

**Étapes :**

1.  **Détermination de l'intérieur $\mathring{A}$**:

    L'ensemble $A$ est la boule ouverte $B_2(0, 2)$ de laquelle on a enlevé le point $(0,0)$.

    La boule $B_2(0, 2)$ est un ensemble ouvert. Le singleton $\{(0,0)\}$ est un ensemble fermé. L'ensemble $A$ est donc un ouvert (car c'est le complémentaire d'un fermé dans un ouvert, ou plus simplement l'intersection de deux ouverts : $B_2(0,2)$ et $\mathbb{R}^2\setminus\{(0,0)\}$).

    Puisque $A$ est lui-même un ensemble ouvert, son intérieur est lui-même.

    $\mathring{A} = A = \{(x,y) \in \mathbb{R}^2 \mid 0 < x^2+y^2 < 4\}$.

2.  **Détermination de l'adhérence $\bar{A}$**:

    L'adhérence est l'ensemble des points de $A$ plus les limites des suites de points de $A$.

    Considérons la suite $p_k = (1/k, 0)$. Tous les points $p_k$ (pour $k$ assez grand) sont dans $A$. Cette suite converge vers $(0,0)$. Donc $(0,0)$ est dans l'adhérence de $A$.

    Considérons des points proches du cercle extérieur, par exemple $q_k = ( (2-1/k) \cos\theta, (2-1/k) \sin\theta )$. Ces points sont dans $A$ et convergent vers $(2\cos\theta, 2\sin\theta)$, un point sur le cercle de rayon 2. Donc tous les points du cercle de rayon 2 sont dans l'adhérence.

    En ajoutant ces points limites à $A$, on "comble" le trou au centre et on "ferme" la frontière extérieure. On obtient le disque fermé de centre $(0,0)$ et de rayon 2.

    $\bar{A} = \{(x,y) \in \mathbb{R}^2 \mid x^2+y^2 \le 4\} = B_2^f(0, 2)$.

3.  **Détermination de la frontière $\partial A$**:

    La frontière est $\partial A = \bar{A} \setminus \mathring{A}$.

    $\partial A = \{ (x,y) \mid x^2+y^2 \le 4 \} \setminus \{ (x,y) \mid 0 < x^2+y^2 < 4 \}$.

    Les points qui sont dans le premier ensemble mais pas dans le second sont ceux pour lesquels $x^2+y^2=4$ (le cercle extérieur) ou $x^2+y^2=0$ (le centre).

    $\partial A = \{(x,y) \in \mathbb{R}^2 \mid x^2+y^2=4\} \cup \{(0,0)\}$.

**Réponse :**

- Intérieur : $\mathring{A} = \{(x,y) \in \mathbb{R}^2 \mid 0 < x^2+y^2 < 4\}$
- Adhérence : $\bar{A} = \{(x,y) \in \mathbb{R}^2 \mid x^2+y^2 \le 4\}$
- Frontière : $\partial A = \{(x,y) \in \mathbb{R}^2 \mid x^2+y^2=4\} \cup \{(0,0)\}$

</details>

## Exercice 7: [Question Conceptuelle]

**Problème :** On considère l'ensemble des points à coordonnées rationnelles dans le plan, $A = \mathbb{Q}^2 = \{(x, y) \in \mathbb{R}^2 \mid x \in \mathbb{Q}, y \in \mathbb{Q}\}$.

Déterminez son intérieur $\mathring{A}$, son adhérence $\bar{A}$, et sa frontière $\partial A$.

<details>

<summary>Solution</summary>

**Méthode :** On utilise les définitions de l'intérieur et de l'adhérence. Pour l'intérieur, on cherche s'il existe une boule ouverte entièrement contenue dans $\mathbb{Q}^2$. Pour l'adhérence, on se demande quels points de $\mathbb{R}^2$ peuvent être approchés par des suites de points de $\mathbb{Q}^2$.

**Étapes :**

1.  **Détermination de l'intérieur $\mathring{\mathbb{Q}^2}$**:

    Soit $p=(x,y)$ un point quelconque de $\mathbb{Q}^2$.

    Considérons n'importe quelle boule ouverte $B(p, r)$ centrée en $p$ avec un rayon $r > 0$.

    On sait qu'entre deux nombres réels distincts, il y a toujours un nombre irrationnel.

    Donc, dans l'intervalle $]x, x+r[$, il existe un nombre irrationnel $x'$.

    De même, dans l'intervalle $]y, y+r[$, il existe un irrationnel $y'$.

    Le point $q = (x', y)$ a une coordonnée irrationnelle, donc $q \notin \mathbb{Q}^2$. Pourtant, ce point est dans la boule $B(p,r)$ (pour la norme infinie par exemple, car $|x'-x|<r$ et $|y-y|=0<r$).

    Puisque toute boule ouverte centrée sur un point de $\mathbb{Q}^2$ contient des points qui ne sont pas dans $\mathbb{Q}^2$, aucun point de $\mathbb{Q}^2$ n'est un point intérieur.

    L'intérieur est donc vide : $\mathring{\mathbb{Q}^2} = \emptyset$.

2.  **Détermination de l'adhérence $\overline{\mathbb{Q}^2}$**:

    L'adhérence est l'ensemble des limites de suites de points de $\mathbb{Q}^2$.

    Soit $z=(a, b)$ un point quelconque de $\mathbb{R}^2$.

    Puisque $\mathbb{Q}$ est dense dans $\mathbb{R}$, on sait que pour tout réel, il existe une suite de rationnels qui converge vers lui.

    Il existe donc une suite $(x_k)$ de rationnels telle que $x_k \to a$.

    Il existe aussi une suite $(y_k)$ de rationnels telle que $y_k \to b$.

    Considérons la suite de points $p_k = (x_k, y_k)$. Chaque $p_k$ est dans $\mathbb{Q}^2$.

    Cette suite de points converge vers $(a,b)$ dans $\mathbb{R}^2$.

    Puisque n'importe quel point de $\mathbb{R}^2$ peut être approché par une suite de points de $\mathbb{Q}^2$, l'adhérence de $\mathbb{Q}^2$ est $\mathbb{R}^2$ tout entier.

    $\overline{\mathbb{Q}^2} = \mathbb{R}^2$. On dit que $\mathbb{Q}^2$ est dense dans $\mathbb{R}^2$.

3.  **Détermination de la frontière $\partial \mathbb{Q}^2$**:

    On utilise la formule $\partial A = \bar{A} \setminus \mathring{A}$.

    $\partial \mathbb{Q}^2 = \overline{\mathbb{Q}^2} \setminus \mathring{\mathbb{Q}^2} = \mathbb{R}^2 \setminus \emptyset = \mathbb{R}^2$.

    Intuitivement, tout point de $\mathbb{R}^2$ est "sur le bord" de $\mathbb{Q}^2$, car toute boule centrée en ce point contient à la fois des points de $\mathbb{Q}^2$ et des points qui n'y sont pas.

**Réponse :**

- Intérieur : $\mathring{\mathbb{Q}^2} = \emptyset$
- Adhérence : $\overline{\mathbb{Q}^2} = \mathbb{R}^2$
- Frontière : $\partial \mathbb{Q}^2 = \mathbb{R}^2$

</details>

## Exercice 8: [Problème d'Application]

**Problème :** Déterminez si les ensembles suivants de $\mathbb{R}^2$ sont compacts en justifiant votre réponse par le théorème de Heine-Borel (c'est-à-dire en vérifiant s'ils sont fermés et bornés).

a) $A = \{(x,y) \in \mathbb{R}^2 \mid x^2 + y^2 \le 1 \}$ (le disque unité fermé)

b) $B = \{(x,y) \in \mathbb{R}^2 \mid x+y=1 \}$ (une droite)

c) $C = B_2((1,0), 3) \cap B_2((-1,0), 3)$ (l'intersection de deux disques ouverts)

<details>

<summary>Solution</summary>

**Méthode :** Le théorème de Heine-Borel stipule qu'une partie de $\mathbb{R}^n$ est compacte si et seulement si elle est à la fois fermée et bornée. Pour chaque ensemble, nous allons vérifier ces deux propriétés.

**Étapes :**

1.  **Ensemble A = $\{(x,y) \in \mathbb{R}^2 \mid x^2 + y^2 \le 1 \}$**
    - **Fermé ?** Oui. C'est une boule fermée ($B_2^f(0,1)$), qui est par définition un ensemble fermé. On peut aussi le voir comme l'image réciproque de l'intervalle fermé $]-\infty, 1]$ par la fonction continue $f(x,y)=x^2+y^2$.
    - **Borné ?** Oui. Si $(x,y) \in A$, alors $\|(x,y)\|_2 = \sqrt{x^2+y^2} \le \sqrt{1} = 1$. L'ensemble est contenu dans la boule de centre l'origine et de rayon 2 (par exemple). Il est donc borné.
    - **Conclusion :** A est fermé et borné, donc A est **compact**.

2.  **Ensemble B = $\{(x,y) \in \mathbb{R}^2 \mid x+y=1 \}$**
    - **Fermé ?** Oui. On peut le voir comme l'image réciproque du singleton fermé $\{1\}$ par la fonction continue $g(x,y) = x+y$. L'ensemble est donc fermé.
    - **Borné ?** Non. La droite s'étend à l'infini dans les deux directions. Par exemple, les points $(k, 1-k)$ sont sur la droite pour tout $k \in \mathbb{R}$. La norme de ces points, $\sqrt{k^2+(1-k)^2}$, tend vers l'infini quand $k \to \infty$. L'ensemble n'est pas borné.
    - **Conclusion :** B n'est pas borné, donc B n'est **pas compact**.

3.  **Ensemble C = $B_2((1,0), 3) \cap B_2((-1,0), 3)$**
    - **Fermé ?** Non. $B_2((1,0), 3)$ est un ensemble ouvert. $B_2((-1,0), 3)$ est aussi un ensemble ouvert. L'intersection (finie) de deux ouverts est un ouvert. L'ensemble C est donc ouvert. S'il n'est pas vide, il ne peut pas être fermé.
    - **Borné ?** Oui. L'ensemble C est inclus dans chacun des disques. Il est donc inclus dans $B_2((1,0), 3)$, qui est un ensemble borné.
    - **Conclusion :** C n'est pas fermé, donc C n'est **pas compact**.

**Réponse :**

a) $A$ est **compact**.

b) $B$ n'est **pas compact**.

c) $C$ n'est **pas compact**.

</details>

## Exercice 9: [Question Conceptuelle]

**Problème :** Soit l'ensemble $A = \left\{ \left(x, \cos\left(\frac{\pi}{x}\right)\right) \in \mathbb{R}^2 \mid x \in (0, 1] \right\}$. Cet ensemble est-il compact ? Justifiez soigneusement votre réponse.

<details>

<summary>Solution</summary>

**Méthode :** Nous allons utiliser le théorème de Heine-Borel en vérifiant si l'ensemble A est fermé et borné.

**Étapes :**

1.  **Vérification : $A$ est-il borné ?**

    Un point de $A$ est de la forme $(x, y)$ avec $x \in (0, 1]$ et $y = \cos(\pi/x)$.

    Pour la première coordonnée, on a $0 < x \le 1$.

    Pour la seconde coordonnée, la fonction cosinus est toujours à valeurs dans $[-1, 1]$, donc $-1 \le y \le 1$.

    Ainsi, tout point de $A$ est contenu dans le rectangle $(0, 1] \times [-1, 1]$. Ce rectangle est lui-même contenu dans une boule plus grande, par exemple la boule $B_2(0, 2)$.

    L'ensemble $A$ est donc **borné**.

2.  **Vérification : $A$ est-il fermé ?**

    Pour vérifier si $A$ est fermé, nous utilisons la caractérisation séquentielle. Nous cherchons une suite de points de $A$ dont la limite n'est pas dans $A$.

    Considérons la suite de valeurs pour $x$ : $x_k = \frac{1}{k}$ pour $k \in \mathbb{N}$ avec $k \ge 1$.

    Lorsque $k \to \infty$, on a $x_k \to 0$.

    Pour chaque $k \ge 1$, $x_k$ est dans l'intervalle $(0, 1]$.

    Construisons la suite de points $(p_k)$ dans $A$ correspondante :

    $p_k = \left(x_k, \cos\left(\frac{\pi}{x_k}\right)\right) = \left(\frac{1}{k}, \cos(k\pi)\right)$.

    La valeur de $\cos(k\pi)$ est $(-1)^k$. La suite est donc $p_k = \left(\frac{1}{k}, (-1)^k\right)$.

    Cette suite ne converge pas car la deuxième coordonnée oscille entre -1 et 1.

    Essayons une autre suite. Choisissons $x_k = \frac{1}{2k}$ pour $k \ge 1$.

    $p_k = \left(\frac{1}{2k}, \cos\left(\frac{\pi}{1/(2k)}\right)\right) = \left(\frac{1}{2k}, \cos(2k\pi)\right) = \left(\frac{1}{2k}, 1\right)$.

    Cette suite $(p_k)$ est bien une suite de points de $A$.

    Elle converge vers $\lim_{k \to \infty} p_k = (0, 1)$.

    Le point limite $L = (0, 1)$ n'appartient pas à $A$, car la première coordonnée $x$ doit être dans l'intervalle $(0, 1]$, et $0$ n'est pas dans cet intervalle.

    Puisque nous avons trouvé une suite de points de $A$ dont la limite n'est pas dans $A$, l'ensemble $A$ n'est **pas fermé**.

3.  **Conclusion**

    L'ensemble $A$ est borné mais n'est pas fermé. Selon le théorème de Heine-Borel, il n'est donc pas compact.

**Réponse :** L'ensemble $A$ n'est **pas compact** car il n'est pas fermé.

</details>

## Exercice 10: [Problème de Calcul]

**Problème :** Soit le vecteur $v = (4, -12, 3)$ dans $\mathbb{R}^3$.

1. Calculez sa norme pour les trois normes usuelles : $\|v\|_1$, $\|v\|_2$ et $\|v\|_\infty$.
2. Vérifiez que les inégalités d'équivalence $\|v\|_\infty \le \|v\|_2 \le \|v\|_1$ sont satisfaites.

<details>

<summary>Solution</summary>

**Méthode :** Nous allons appliquer directement les formules de définition de chaque norme au vecteur donné, puis comparer les résultats numériques obtenus.

**Étapes :**

1.  **Calcul des normes**:

    Le vecteur est $v = (4, -12, 3)$.

    - **Norme 1**: $\|v\|_1 = \sum_{i=1}^3 |v_i|$

      $\|v\|_1 = |4| + |-12| + |3| = 4 + 12 + 3 = 19$.

    - **Norme 2 (euclidienne)**: $\|v\|_2 = \sqrt{\sum_{i=1}^3 v_i^2}$

      $\|v\|_2 = \sqrt{4^2 + (-12)^2 + 3^2} = \sqrt{16 + 144 + 9} = \sqrt{169} = 13$.

    - **Norme infinie**: $\|v\|_\infty = \max_{i=1,2,3} |v_i|$

      $\|v\|_\infty = \max(|4|, |-12|, |3|) = \max(4, 12, 3) = 12$.

2.  **Vérification des inégalités**:

    Nous avons trouvé les valeurs :

    $\|v\|_\infty = 12$

    $\|v\|_2 = 13$

    $\|v\|_1 = 19$

    Nous devons vérifier si $\|v\|_\infty \le \|v\|_2 \le \|v\|_1$.

    En remplaçant par les valeurs, nous obtenons :

    $12 \le 13 \le 19$.

    Cette double inégalité est vraie.

**Réponse :**

1.  Les normes du vecteur $v$ sont :
    - $\|v\|_1 = 19$
    - $\|v\|_2 = 13$
    - $\|v\|_\infty = 12$
2.  Les inégalités $\|v\|_\infty \le \|v\|_2 \le \|v\|_1$ sont bien vérifiées, car $12 \le 13 \le 19$.

</details>

## Exercice 11: [Question Conceptuelle]

**Problème :** On dit que $\mathbb{R}^n$ est un espace complet.

1. Qu'est-ce qu'une suite de Cauchy ?
2. Que signifie pour un espace d'être complet ?
3. Montrez par un exemple que $\mathbb{Q}$ (l'ensemble des nombres rationnels) n'est pas un espace complet.

<details>

<summary>Solution</summary>

**Méthode :** Nous allons d'abord rappeler les définitions, puis construire un exemple classique de suite de nombres rationnels qui "devrait" converger, mais dont la limite n'est pas un nombre rationnel.

**Étapes :**

1.  **Suite de Cauchy**:

    Une suite $(x_k)$ dans un espace normé est une suite de Cauchy si ses termes se rapprochent arbitrairement les uns des autres à mesure que $k$ augmente. Formellement, cela signifie que pour tout réel $\varepsilon > 0$, il existe un rang $N$ tel que pour tous les indices $p, q > N$, la distance $d(x_p, x_q)$ est inférieure à $\varepsilon$.

    Intuitivement, une suite de Cauchy est une suite qui "a toutes les raisons de converger", même si on ne connaît pas encore sa limite.

2.  **Espace Complet**:

    Un espace normé est dit complet si **toute** suite de Cauchy dans cet espace converge vers une limite **qui appartient à cet espace**. La complétude garantit qu'il n'y a pas de "trous" dans l'espace. Si une suite semble converger, alors sa limite existe bien dans l'espace.

3.  **Contre-exemple dans $\mathbb{Q}$**:

    Considérons la suite $(x_k)_{k \ge 1}$ définie par les approximations décimales de $\sqrt{2}$.

    $x_1 = 1$

    $x_2 = 1.4$

    $x_3 = 1.41$

    $x_4 = 1.414$

    ...

    - **Chaque terme est dans $\mathbb{Q}$**: Chaque $x_k$ est un nombre décimal fini, il peut donc s'écrire comme une fraction. Par exemple, $1.414 = 1414/1000$. La suite est bien une suite d'éléments de $\mathbb{Q}$.
    - **C'est une suite de Cauchy**: Pour $p, q$ grands, les termes $x_p$ et $x_q$ partagent de nombreuses décimales. Leur différence $|x_p - x_q|$ devient donc très petite. Par exemple, $|x_4 - x_3| = 0.004$. On peut rendre cette différence aussi petite que l'on veut en allant assez loin dans la suite.
    - **La limite n'est pas dans $\mathbb{Q}$**: Cette suite est construite pour converger vers $\sqrt{2}$. Dans l'espace des réels $\mathbb{R}$, on a bien $\lim_{k \to \infty} x_k = \sqrt{2}$.

    Cependant, on sait que $\sqrt{2}$ est un nombre irrationnel, c'est-à-dire que $\sqrt{2} \notin \mathbb{Q}$.

    - **Conclusion**: Nous avons trouvé une suite de Cauchy de nombres rationnels dont la limite n'est pas un nombre rationnel. La suite ne converge donc pas *dans l'espace $\mathbb{Q}$*. Par conséquent, $\mathbb{Q}$ n'est pas un espace complet.

**Réponse :** $\mathbb{Q}$ n'est pas complet car il existe des suites de Cauchy, comme la suite des approximations décimales de $\sqrt{2}$, dont les termes sont tous rationnels mais dont la limite, $\sqrt{2}$, est irrationnelle et n'appartient donc pas à $\mathbb{Q}$.

</details>
