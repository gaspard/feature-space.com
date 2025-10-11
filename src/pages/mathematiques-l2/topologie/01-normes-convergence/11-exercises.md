---
title: A - Exercises
order: 11
level: regular
chapter: A - Concepts
course: Topologie et Calcul Différentiel I
tags: ["exercises", "practice", "regular"]
---

# Exercices : A - Concepts

## Exercice 1: [Question Conceptuelle]

**Problème:** Déterminer si l'application $N: \mathbb{R}^2 \to \mathbb{R}_+$ définie par $N(x, y) = |x - 2y|$ est une norme sur $\mathbb{R}^2$. Justifiez votre réponse en vérifiant les trois axiomes d'une norme.

<details>

<summary>Solution</summary>

**Méthode:** Pour déterminer si $N$ est une norme, nous devons vérifier un par un les trois axiomes : séparation, homogénéité et inégalité triangulaire. Si l'un des axiomes n'est pas satisfait, l'application n'est pas une norme.

**Étapes:**

1.  **Vérification de l'axiome de séparation :**

    L'axiome de séparation stipule que $N(v) = 0 \iff v = 0_{\mathbb{R}^2}$. Ici, $v=(x,y)$ et $0_{\mathbb{R}^2}=(0,0)$.

    On a $N(x, y) = 0 \iff |x - 2y| = 0 \iff x - 2y = 0 \iff x = 2y$.

    Cette condition n'implique pas que $(x, y) = (0, 0)$. Par exemple, si nous prenons le vecteur non nul $v = (2, 1)$, nous avons $N(2, 1) = |2 - 2(1)| = |0| = 0$.

    Puisqu'il existe un vecteur non nul dont la "norme" est nulle, l'axiome de séparation n'est pas satisfait.

2.  **Conclusion :**

    Comme l'axiome de séparation n'est pas vérifié, il est inutile de vérifier les deux autres. L'application $N$ n'est pas une norme sur $\mathbb{R}^2$. (Une telle application est appelée une semi-norme).

**Réponse:** L'application $N(x, y) = |x - 2y|$ n'est **pas une norme** sur $\mathbb{R}^2$ car elle ne satisfait pas l'axiome de séparation.

</details>

## Exercice 2: [Question Conceptuelle]

**Problème:** Montrez que l'application $N: \mathbb{R}^2 \to \mathbb{R}_+$ définie par $N(x, y) = 2|x| + 3|y|$ est une norme sur $\mathbb{R}^2$.

<details>

<summary>Solution</summary>

**Méthode:** Nous devons vérifier que les trois axiomes d'une norme (séparation, homogénéité, inégalité triangulaire) sont satisfaits pour l'application $N$ donnée.

**Étapes:**

1.  **Axiome de séparation :** $N(x, y) = 0 \iff (x, y) = (0, 0)$.
    - $(\impliedby)$ Si $(x, y) = (0, 0)$, alors $N(0, 0) = 2|0| + 3|0| = 0$.
    - $(\implies)$ Si $N(x, y) = 0$, alors $2|x| + 3|y| = 0$. Comme $2|x| \ge 0$ et $3|y| \ge 0$, leur somme est nulle si et seulement si les deux termes sont nuls.

      $2|x|=0 \implies |x|=0 \implies x=0$.

      $3|y|=0 \implies |y|=0 \implies y=0$.

      Donc, $(x, y) = (0, 0)$.

    L'axiome de séparation est vérifié.

2.  **Axiome d'homogénéité :** $N(\lambda(x, y)) = |\lambda| N(x, y)$ pour tout $\lambda \in \mathbb{R}$.

    Soit $\lambda \in \mathbb{R}$ et $(x, y) \in \mathbb{R}^2$. Le vecteur $\lambda(x,y)$ est $(\lambda x, \lambda y)$.

    $N(\lambda x, \lambda y) = 2|\lambda x| + 3|\lambda y|$

    En utilisant la propriété $|\alpha \beta| = |\alpha||\beta|$, on obtient :

    $N(\lambda x, \lambda y) = 2|\lambda||x| + 3|\lambda||y| = |\lambda|(2|x| + 3|y|) = |\lambda| N(x, y)$.

    L'axiome d'homogénéité est vérifié.

3.  **Inégalité triangulaire :** $N(v_1 + v_2) \leq N(v_1) + N(v_2)$.

    Soient $v_1 = (x_1, y_1)$ et $v_2 = (x_2, y_2)$. Leur somme est $v_1 + v_2 = (x_1+x_2, y_1+y_2)$.

    $N(v_1 + v_2) = N(x_1+x_2, y_1+y_2) = 2|x_1+x_2| + 3|y_1+y_2|$.

    On utilise l'inégalité triangulaire pour la valeur absolue sur $\mathbb{R}$ : $|a+b| \le |a|+|b|$.

    $2|x_1+x_2| \le 2(|x_1| + |x_2|) = 2|x_1| + 2|x_2|$.

    $3|y_1+y_2| \le 3(|y_1| + |y_2|) = 3|y_1| + 3|y_2|$.

    En additionnant ces deux inégalités :

    $N(v_1 + v_2) \le (2|x_1| + 2|x_2|) + (3|y_1| + 3|y_2|)$.

    En réarrangeant les termes :

    $N(v_1 + v_2) \le (2|x_1| + 3|y_1|) + (2|x_2| + 3|y_2|) = N(x_1, y_1) + N(x_2, y_2) = N(v_1) + N(v_2)$.

    L'inégalité triangulaire est vérifiée.

**Réponse:** L'application $N(x, y) = 2|x| + 3|y|$ est une norme sur $\mathbb{R}^2$ car elle satisfait les trois axiomes de séparation, d'homogénéité et d'inégalité triangulaire.

</details>

## Exercice 3: [Calcul]

**Problème:** Soit le vecteur $v = {^t(1, -3, 0, 5)}$ dans $\mathbb{R}^4$. Calculez $\|v\|_1$, $\|v\|_2$, et $\|v\|_\infty$.

<details>

<summary>Solution</summary>

**Méthode:** Nous appliquons directement les définitions des normes 1, 2 et infinie pour le vecteur $v$ donné.

Pour un vecteur $x = (x_1, x_2, x_3, x_4)$:

$\|x\|_1 = |x_1| + |x_2| + |x_3| + |x_4|$

$\|x\|_2 = \sqrt{x_1^2 + x_2^2 + x_3^2 + x_4^2}$

$\|x\|_\infty = \max(|x_1|, |x_2|, |x_3|, |x_4|)$

**Étapes:**

1.  **Calcul de la norme 1 :**

    $\|v\|_1 = |1| + |-3| + |0| + |5|$

    $\|v\|_1 = 1 + 3 + 0 + 5 = 9$

2.  **Calcul de la norme 2 (euclidienne) :**

    $\|v\|_2 = \sqrt{1^2 + (-3)^2 + 0^2 + 5^2}$

    $\|v\|_2 = \sqrt{1 + 9 + 0 + 25} = \sqrt{35}$

3.  **Calcul de la norme infinie :**

    $\|v\|_\infty = \max(|1|, |-3|, |0|, |5|)$

    $\|v\|_\infty = \max(1, 3, 0, 5) = 5$

**Réponse:** Pour le vecteur $v = {^t(1, -3, 0, 5)}$, nous avons :

$\|v\|_1 = 9$

$\|v\|_2 = \sqrt{35}$

$\|v\|_\infty = 5$

</details>

## Exercice 4: [Application]

**Problème:** Vérifiez l'inégalité de Cauchy-Schwarz pour les vecteurs $x = {^t(1, -2, 3)}$ et $y = {^t(2, 0, -1)}$ dans $\mathbb{R}^3$.

<details>

<summary>Solution</summary>

**Méthode:** L'inégalité de Cauchy-Schwarz stipule que $|\langle x, y \rangle| \leq \|x\|_2 \|y\|_2$. Nous allons calculer séparément le membre de gauche (la valeur absolue du produit scalaire) et le membre de droite (le produit des normes euclidiennes) pour les vecteurs donnés, puis comparer les résultats.

**Étapes:**

1.  **Calcul du produit scalaire $\langle x, y \rangle$ :**

    Le produit scalaire usuel est $\langle x, y \rangle = \sum_{j=1}^n x_j y_j$.

    $\langle x, y \rangle = (1)(2) + (-2)(0) + (3)(-1)$

    $\langle x, y \rangle = 2 + 0 - 3 = -1$

2.  **Calcul du membre de gauche : $|\langle x, y \rangle|$**

    $|\langle x, y \rangle| = |-1| = 1$

3.  **Calcul de la norme euclidienne de $x$ : $\|x\|_2$**

    $\|x\|_2 = \sqrt{1^2 + (-2)^2 + 3^2} = \sqrt{1 + 4 + 9} = \sqrt{14}$

4.  **Calcul de la norme euclidienne de $y$ : $\|y\|_2$**

    $\|y\|_2 = \sqrt{2^2 + 0^2 + (-1)^2} = \sqrt{4 + 0 + 1} = \sqrt{5}$

5.  **Calcul du membre de droite : $\|x\|_2 \|y\|_2$**

    $\|x\|_2 \|y\|_2 = \sqrt{14} \times \sqrt{5} = \sqrt{14 \times 5} = \sqrt{70}$

6.  **Vérification de l'inégalité :**

    Nous devons comparer $1$ et $\sqrt{70}$.

    Puisque $8^2 = 64$ et $9^2 = 81$, on a $\sqrt{70} \approx 8.36$.

    Clairement, $1 \leq \sqrt{70}$. L'inégalité est vérifiée.

**Réponse:** Pour les vecteurs $x$ et $y$ donnés, nous avons $|\langle x, y \rangle| = 1$ et $\|x\|_2 \|y\|_2 = \sqrt{70}$. L'inégalité de Cauchy-Schwarz $1 \leq \sqrt{70}$ est bien vérifiée.

</details>

## Exercice 5: [Question Conceptuelle et Géométrique]

**Problème:** Dans $\mathbb{R}^2$, on considère la norme $N(x, y) = \max(|x|, 2|y|)$.

1.  Vérifiez brièvement que $N$ est bien une norme.
2.  Décrivez et dessinez la sphère unité associée à cette norme, c'est-à-dire l'ensemble $S = \{(x, y) \in \mathbb{R}^2 \mid N(x, y) = 1\}$.

<details>

<summary>Solution</summary>

**Méthode:**

1. Pour prouver que $N$ est une norme, on vérifie les trois axiomes. La preuve est très similaire à celle pour la norme infinie standard.
2. Pour dessiner la sphère unité, on analyse l'équation $N(x,y)=1$, soit $\max(|x|, 2|y|) = 1$. Cette équation se décompose en deux conditions : $|x| \le 1$ et $2|y| \le 1$, avec au moins une égalité.

**Étapes:**

1.  **Vérification des axiomes de la norme :**
    - **Séparation:** $N(x,y)=0 \iff \max(|x|, 2|y|)=0 \iff |x|=0 \text{ et } 2|y|=0 \iff x=0 \text{ et } y=0$. C'est vérifié.
    - **Homogénéité:** $N(\lambda x, \lambda y) = \max(|\lambda x|, 2|\lambda y|) = \max(|\lambda||x|, |\lambda|2|y|) = |\lambda|\max(|x|, 2|y|) = |\lambda|N(x,y)$. C'est vérifié.
    - **Inégalité triangulaire:** $N(x_1+x_2, y_1+y_2) = \max(|x_1+x_2|, 2|y_1+y_2|)$. Par l'inégalité triangulaire sur $\mathbb{R}$, on a $|x_1+x_2| \le |x_1|+|x_2|$ et $2|y_1+y_2| \le 2|y_1|+2|y_2|$.

    $\max(|x_1+x_2|, 2|y_1+y_2|) \le \max(|x_1|+|x_2|, 2|y_1|+2|y_2|)$.

    On a $|x_1| \le \max(|x_1|, 2|y_1|) = N(x_1, y_1)$ et $|x_2| \le N(x_2, y_2)$.

    De même, $2|y_1| \le N(x_1, y_1)$ et $2|y_2| \le N(x_2, y_2)$.

    Donc $|x_1|+|x_2| \le N(x_1, y_1) + N(x_2, y_2)$ et $2|y_1|+2|y_2| \le N(x_1, y_1) + N(x_2, y_2)$.

    Finalement, $\max(|x_1|+|x_2|, 2|y_1|+2|y_2|) \le N(x_1, y_1) + N(x_2, y_2)$. L'inégalité triangulaire est vérifiée.

2.  **Description et dessin de la sphère unité :**

    L'équation de la sphère unité est $\max(|x|, 2|y|) = 1$.

    Cette équation est équivalente au système suivant :

    (a) $|x| \leq 1$

    (b) $2|y| \leq 1 \iff |y| \leq 1/2$

    (c) Au moins une des deux inégalités (a) ou (b) doit être une égalité. C'est-à-dire $|x|=1$ ou $|y|=1/2$.

    Cela décrit les bords d'un rectangle. Les conditions (a) et (b) définissent un rectangle centré à l'origine, dont les côtés sont délimités par les droites $x=1, x=-1, y=1/2, y=-1/2$. La condition (c) nous dit que les points de la sphère unité sont précisément les points sur le bord de ce rectangle.

    Les sommets de ce rectangle sont $(1, 1/2)$, $(-1, 1/2)$, $(-1, -1/2)$ et $(1, -1/2)$.

    **Dessin :**

    ```mermaid

    graph TD

        subgraph Plan cartésien

            A[ ] -- x --> B[ ]

            C[ ] -- y --> D[ ]

        end

        style A fill:none,stroke:none

        style B fill:none,stroke:none

        style C fill:none,stroke:none

        style D fill:none,stroke:none

        linkStyle 0 stroke:black,stroke-width:1px

        linkStyle 1 stroke:black,stroke-width:1px

        subgraph Sphère Unité

            S1((1, 1/2)) --- S2((-1, 1/2))

            S2 --- S3((-1, -1/2))

            S3 --- S4((1, -1/2))

            S4 --- S1

        end

    ```

    (Mermaid ne permet pas un dessin précis, mais il s'agit d'un rectangle avec les sommets indiqués.)

**Réponse:** La sphère unité pour la norme $N(x, y) = \max(|x|, 2|y|)$ est un rectangle centré à l'origine avec les sommets aux points $(1, 1/2), (-1, 1/2), (-1, -1/2), (1, -1/2)$.

</details>

## Exercice 6: [Application]

**Problème:** Montrez que les normes $\|\cdot\|_\infty$ et $N(x, y) = |x| + |x-y|$ sont équivalentes sur $\mathbb{R}^2$. Pour cela, trouvez deux constantes $\alpha, \beta > 0$ telles que pour tout $v=(x,y) \in \mathbb{R}^2$, on ait $\alpha \|v\|_\infty \leq N(v) \leq \beta \|v\|_\infty$.

<details>

<summary>Solution</summary>

**Méthode:** Nous devons trouver des constantes $\alpha$ et $\beta$ en établissant une double inégalité. On commence par l'inégalité la plus simple (trouver $\beta$) en majorant $N(v)$ par un multiple de $\|v\|_\infty$. Ensuite, on cherche à minorer $N(v)$ par un multiple de $\|v\|_\infty$ pour trouver $\alpha$.

**Étapes:**

1.  **Trouver la constante de majoration $\beta$ :**

    On veut majorer $N(x, y) = |x| + |x-y|$ en fonction de $\|v\|_\infty = \max(|x|, |y|)$.

    On utilise l'inégalité triangulaire pour la valeur absolue : $|x-y| \le |x| + |-y| = |x| + |y|$.

    Donc, $N(x, y) = |x| + |x-y| \le |x| + (|x| + |y|) = 2|x| + |y|$.

    Par définition de la norme infinie, $|x| \le \|v\|_\infty$ et $|y| \le \|v\|_\infty$.

    Ainsi, $N(x, y) \le 2\|v\|_\infty + \|v\|_\infty = 3\|v\|_\infty$.

    Nous pouvons donc prendre $\beta = 3$.

2.  **Trouver la constante de minoration $\alpha$ :**

    On veut minorer $N(x, y) = |x| + |x-y|$ en fonction de $\|v\|_\infty = \max(|x|, |y|)$.

    On doit minorer $|x|$ et $|y|$ en fonction de $N(x,y)$.

    On a $|x| \le |x| + |x-y| = N(x,y)$.

    Pour minorer $|y|$, on utilise l'inégalité triangulaire renversée : $|y| = |x - (x-y)| \le |x| + |x-y| = N(x, y)$.

    Puisque $|x| \le N(x, y)$ et $|y| \le N(x, y)$, on peut dire que le maximum des deux est aussi inférieur ou égal à $N(x, y)$.

    $\|v\|_\infty = \max(|x|, |y|) \le N(x, y)$.

    Cela s'écrit $1 \cdot \|v\|_\infty \le N(x, y)$.

    Nous pouvons donc prendre $\alpha = 1$.

3.  **Conclusion :**

    Nous avons trouvé $\alpha = 1$ et $\beta = 3$ tels que pour tout $v=(x,y) \in \mathbb{R}^2$ :

    $1 \cdot \|v\|_\infty \leq N(v) \leq 3 \cdot \|v\|_\infty$.

    Les normes sont donc équivalentes.

**Réponse:** Les normes sont équivalentes. On peut prendre les constantes $\alpha=1$ et $\beta=3$, ce qui donne l'encadrement :

$$ \|v\|_\infty \leq |x| + |x-y| \leq 3 \|v\|_\infty $$

</details>

## Exercice 7: [Calcul]

**Problème:** En utilisant les inégalités connues entre les normes usuelles sur $\mathbb{R}^n$, trouvez des constantes $\alpha, \beta > 0$ qui montrent l'équivalence entre $\|\cdot\|_1$ et $\|\cdot\|_2$ sur $\mathbb{R}^3$.

<details>

<summary>Solution</summary>

**Méthode:** Nous utilisons les inégalités générales prouvées en cours pour l'équivalence des normes sur $\mathbb{R}^n$ :

1. $\|x\|_2 \le \|x\|_1$
2. $\|x\|_1 \le \sqrt{n} \|x\|_2$

Nous allons appliquer ces formules au cas spécifique où $n=3$.

**Étapes:**

1.  **Majoration de $\|x\|_2$ par $\|x\|_1$ :**

    L'inégalité $\|x\|_2 \le \|x\|_1$ est vraie pour tout $n$.

    Pour le voir, on met au carré les deux côtés (qui sont positifs) :

    $\|x\|_2^2 = \sum_{j=1}^n x_j^2$

    $\|x\|_1^2 = (\sum_{j=1}^n |x_j|)^2 = \sum_{j=1}^n x_j^2 + \sum_{i \neq j} |x_i||x_j|$.

    Clairement, $\sum_{j=1}^n x_j^2 \le (\sum_{j=1}^n |x_j|)^2$. En prenant la racine carrée, on obtient $\|x\|_2 \le \|x\|_1$.

    Cette inégalité nous donne une partie de l'encadrement.

2.  **Majoration de $\|x\|_1$ par $\|x\|_2$ :**

    L'inégalité générale est $\|x\|_1 \le \sqrt{n} \|x\|_2$.

    Dans notre cas, $n=3$, donc l'inégalité devient $\|x\|_1 \le \sqrt{3} \|x\|_2$.

    Cette inégalité peut être prouvée en utilisant l'inégalité de Cauchy-Schwarz. Soit $u=(|x_1|, |x_2|, |x_3|)$ et $v=(1, 1, 1)$.

    $\langle u, v \rangle = |x_1| + |x_2| + |x_3| = \|x\|_1$.

    $\|u\|_2 = \sqrt{|x_1|^2+|x_2|^2+|x_3|^2} = \sqrt{x_1^2+x_2^2+x_3^2} = \|x\|_2$.

    $\|v\|_2 = \sqrt{1^2+1^2+1^2} = \sqrt{3}$.

    Par Cauchy-Schwarz, $|\langle u, v \rangle| \le \|u\|_2 \|v\|_2$, ce qui donne $\|x\|_1 \le \|x\|_2 \sqrt{3}$.

3.  **Combinaison des inégalités :**

    Nous avons $\|x\|_2 \le \|x\|_1$ et $\|x\|_1 \le \sqrt{3} \|x\|_2$.

    De la première inégalité, on peut écrire $\frac{1}{\sqrt{3}} \|x\|_1 \le \|x\|_2$.

    En combinant, on obtient :

    $\frac{1}{\sqrt{3}} \|x\|_1 \leq \|x\|_2 \leq 1 \cdot \|x\|_1$.

    Les constantes d'équivalence sont donc $\alpha = \frac{1}{\sqrt{3}}$ et $\beta = 1$.

**Réponse:** Pour tout $x \in \mathbb{R}^3$, on a l'encadrement suivant :

$$ \frac{1}{\sqrt{3}} \|x\|_1 \leq \|x\|_2 \leq \|x\|_1 $$

Ceci montre que les normes $\|\cdot\|_1$ et $\|\cdot\|_2$ sont équivalentes sur $\mathbb{R}^3$ avec les constantes $\alpha = \frac{1}{\sqrt{3}}$ et $\beta = 1$.

</details>

## Exercice 8: [Calcul]

**Problème:** Étudiez la convergence de la suite $(x^k)_{k \ge 1}$ dans $\mathbb{R}^3$ définie par :

$$ x^k = \left( \frac{2k^2 - 1}{k^2 + k}, (1 + \frac{3}{k})^k, \frac{\cos(k\pi)}{k^2} \right) $$

Si elle converge, déterminez sa limite.

<details>

<summary>Solution</summary>

**Méthode:** Une suite de vecteurs converge si et seulement si chacune de ses suites de composantes converge. Nous allons donc étudier la limite de chaque composante séparément.

**Étapes:**

1.  **Étude de la première composante : $x_1^k = \frac{2k^2 - 1}{k^2 + k}$**

    Il s'agit d'une fraction rationnelle en $k$. Pour trouver la limite quand $k \to \infty$, on factorise par le terme de plus haut degré au numérateur et au dénominateur :

    $x_1^k = \frac{k^2(2 - 1/k^2)}{k^2(1 + 1/k)} = \frac{2 - 1/k^2}{1 + 1/k}$

    Quand $k \to \infty$, $1/k^2 \to 0$ et $1/k \to 0$.

    Donc, $\lim_{k \to \infty} x_1^k = \frac{2 - 0}{1 + 0} = 2$.

2.  **Étude de la deuxième composante : $x_2^k = (1 + \frac{3}{k})^k$**

    C'est une forme indéterminée de type $1^\infty$. On reconnaît la forme de la limite qui définit l'exponentielle : $\lim_{n \to \infty} (1 + \frac{a}{n})^n = e^a$.

    Ici, $a=3$.

    Donc, $\lim_{k \to \infty} x_2^k = e^3$.

3.  **Étude de la troisième composante : $x_3^k = \frac{\cos(k\pi)}{k^2}$**

    Le terme $\cos(k\pi)$ prend les valeurs $-1, 1, -1, 1, \dots$ pour $k=1, 2, 3, 4, \dots$. En fait, $\cos(k\pi) = (-1)^k$.

    Donc, $x_3^k = \frac{(-1)^k}{k^2}$.

    Le numérateur est borné (entre -1 et 1) et le dénominateur tend vers $+\infty$.

    On peut utiliser le théorème des gendarmes :

    $-\frac{1}{k^2} \leq \frac{(-1)^k}{k^2} \leq \frac{1}{k^2}$

    Comme $\lim_{k \to \infty} -\frac{1}{k^2} = 0$ et $\lim_{k \to \infty} \frac{1}{k^2} = 0$, on conclut que :

    $\lim_{k \to \infty} x_3^k = 0$.

4.  **Conclusion :**

    Chacune des trois composantes converge. La suite de vecteurs $(x^k)$ converge donc vers le vecteur dont les composantes sont les limites respectives.

**Réponse:** La suite $(x^k)$ converge vers le vecteur limite $a = {^t(2, e^3, 0)}$.

$$ \lim_{k \to \infty} x^k = \begin{pmatrix} 2 \\ e^3 \\ 0 \end{pmatrix} $$

</details>

## Exercice 9: [Application]

**Problème:** Soit la suite $(x^k)_{k \ge 1}$ dans $\mathbb{R}^2$ définie par $x^k = \left( \frac{1}{k}, k \sin(\frac{1}{k}) \right)$. Montrez que cette suite converge et trouvez sa limite.

<details>

<summary>Solution</summary>

**Méthode:** Nous allons étudier la convergence de chaque composante de la suite. Pour la deuxième composante, nous aurons une forme indéterminée de type $\infty \cdot 0$, que nous lèverons en utilisant une limite usuelle.

**Étapes:**

1.  **Étude de la première composante : $x_1^k = \frac{1}{k}$**

    C'est une suite de référence.

    $\lim_{k \to \infty} x_1^k = \lim_{k \to \infty} \frac{1}{k} = 0$.

2.  **Étude de la deuxième composante : $x_2^k = k \sin(\frac{1}{k})$**

    Quand $k \to \infty$, on a $\frac{1}{k} \to 0$. La forme est donc $\infty \cdot \sin(0) = \infty \cdot 0$, ce qui est une forme indéterminée.

    Pour la résoudre, on effectue le changement de variable $u = \frac{1}{k}$. Lorsque $k \to \infty$, $u \to 0^+$.

    La limite devient :

    $\lim_{k \to \infty} k \sin(\frac{1}{k}) = \lim_{u \to 0^+} \frac{1}{u} \sin(u) = \lim_{u \to 0} \frac{\sin(u)}{u}$

    C'est une limite fondamentale en analyse, dont la valeur est 1.

    Donc, $\lim_{k \to \infty} x_2^k = 1$.

3.  **Conclusion :**

    Les deux composantes convergent. La suite de vecteurs $(x^k)$ converge donc vers le vecteur limite $a = (0, 1)$.

**Réponse:** La suite $(x^k)$ converge vers le vecteur $a = {^t(0, 1)}$.

$$ \lim_{k \to \infty} x^k = \begin{pmatrix} 0 \\ 1 \end{pmatrix} $$

</details>

## Exercice 10: [Application]

**Problème:** En utilisant la définition d'une suite de Cauchy avec la norme $\|\cdot\|_1$, montrez que la suite $(x^k)_{k \ge 1}$ de $\mathbb{R}^2$ définie par $x^k = \left( \frac{k+1}{k}, \frac{1}{2^k} \right)$ est une suite de Cauchy.

<details>

<summary>Solution</summary>

**Méthode:** Nous devons montrer que pour tout $\varepsilon > 0$, il existe un rang $K_\varepsilon$ tel que pour tous $p, q \ge K_\varepsilon$, on a $\|x^p - x^q\|_1 < \varepsilon$. Nous allons calculer $\|x^p - x^q\|_1$ et le majorer par une expression qui tend vers 0.

**Étapes:**

1.  **Calculer la distance $\|x^p - x^q\|_1$ :**

    Soient $p, q$ deux entiers, supposons $p > q$ sans perte de généralité.

    $x^p - x^q = \left( \frac{p+1}{p} - \frac{q+1}{q}, \frac{1}{2^p} - \frac{1}{2^q} \right)$

    $x^p - x^q = \left( (1+\frac{1}{p}) - (1+\frac{1}{q}), \frac{1}{2^p} - \frac{1}{2^q} \right) = \left( \frac{1}{p} - \frac{1}{q}, \frac{1}{2^p} - \frac{1}{2^q} \right)$

    La norme 1 de cette différence est :

    $\|x^p - x^q\|_1 = \left| \frac{1}{p} - \frac{1}{q} \right| + \left| \frac{1}{2^p} - \frac{1}{2^q} \right|$

    Comme $p > q$, $\frac{1}{p} < \frac{1}{q}$ et $\frac{1}{2^p} < \frac{1}{2^q}$. Donc les termes dans les valeurs absolues sont négatifs.

    $\|x^p - x^q\|_1 = \left( \frac{1}{q} - \frac{1}{p} \right) + \left( \frac{1}{2^q} - \frac{1}{2^p} \right)$

2.  **Majorer l'expression :**

    Puisque $p>q$, on a $\frac{1}{p} > 0$ et $\frac{1}{2^p} > 0$. On peut majorer en enlevant les termes négatifs :

    $\|x^p - x^q\|_1 < \frac{1}{q} + \frac{1}{2^q}$.

3.  **Trouver le rang $K_\varepsilon$ :**

    Soit $\varepsilon > 0$. On veut trouver $K_\varepsilon$ tel que si $p, q \ge K_\varepsilon$ (et on a supposé $p>q$, donc il suffit de considérer $q \ge K_\varepsilon$), alors $\frac{1}{q} + \frac{1}{2^q} < \varepsilon$.

    On sait que $\frac{1}{q} \to 0$ et $\frac{1}{2^q} \to 0$ quand $q \to \infty$. Leur somme tend donc vers 0. Par définition de la limite, pour un $\varepsilon > 0$ donné, un tel rang $K_\varepsilon$ existe.

    Pour être plus concret, on peut traiter les deux termes séparément. On cherche $K_\varepsilon$ tel que pour $q \ge K_\varepsilon$ :

    $\frac{1}{q} < \frac{\varepsilon}{2}$ ET $\frac{1}{2^q} < \frac{\varepsilon}{2}$.

    La première inégalité est vraie pour $q > 2/\varepsilon$.

    La deuxième est vraie pour $2^q > 2/\varepsilon \iff q > \log_2(2/\varepsilon)$.

    Il suffit donc de choisir $K_\varepsilon$ plus grand que ces deux valeurs.

    Prenons $K_\varepsilon = \max(\lceil 2/\varepsilon \rceil + 1, \lceil \log_2(2/\varepsilon) \rceil + 1)$.

    Pour tout $q \ge K_\varepsilon$, on aura bien $\|x^p - x^q\|_1 < \frac{\varepsilon}{2} + \frac{\varepsilon}{2} = \varepsilon$.

4.  **Conclusion :**

    Pour tout $\varepsilon > 0$, nous avons montré l'existence d'un rang $K_\varepsilon$ tel que $\forall p, q \ge K_\varepsilon$, $N(x^p - x^q) < \varepsilon$. La suite $(x^k)$ est donc bien une suite de Cauchy.

**Réponse:** La suite est une suite de Cauchy. On peut le montrer en majorant $\|x^p - x^q\|_1$ par $\frac{1}{q} + \frac{1}{2^q}$ (pour $p>q$), une quantité qui peut être rendue arbitrairement petite pour $q$ suffisamment grand.

</details>