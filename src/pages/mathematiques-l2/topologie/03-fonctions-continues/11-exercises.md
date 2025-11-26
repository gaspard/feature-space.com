---
id: 1d565a5d
type: exercises
order: 11
title: Fonctions continues - exercices (A)
tags:
  - fonctions continues
  - limite
  - topologie
  - connexité
  - compacité
  - continuité uniforme
createdAt: '2025-11-26T13:08:33.861Z'
level: regular
course: Topologie
courseId: 34e61f8e
chapter: Fonctions continues
chapterId: 70ecfb0a
---
# Exercices "Fonctions continues" (A)

---

## Exercice 1 : Domaine de définition

**Problème:** Déterminer le domaine de définition $D_f$ de la fonction $f: \mathbb{R}^2 \to \mathbb{R}$ définie par $f(x, y) = \sqrt{y - x^2} + \ln(4 - y)$. Donnez une description géométrique et une représentation graphique de cet ensemble.

<details>

<summary>Solution</summary>

**Méthode:** Pour trouver le domaine de définition, nous devons identifier toutes les contraintes mathématiques imposées par les expressions de la fonction. Ici, nous avons une racine carrée et un logarithme naturel. Nous devons poser les conditions nécessaires pour que chacune de ces expressions soit bien définie, puis trouver l'ensemble des points $(x,y)$ qui satisfont toutes ces conditions simultanément.

**Étapes:**

1.  **Contrainte de la racine carrée**: L'argument d'une racine carrée doit être positif ou nul.

    $$ y - x^2 \ge 0 \iff y \ge x^2 $$

    Cette inéquation décrit tous les points $(x,y)$ situés sur ou au-dessus de la parabole d'équation $y = x^2$.

2.  **Contrainte du logarithme**: L'argument d'un logarithme naturel doit être strictement positif.

    $$ 4 - y > 0 \iff y < 4 $$

    Cette inéquation décrit tous les points $(x,y)$ situés strictement en dessous de la droite horizontale d'équation $y=4$.

3.  **Combinaison des contraintes**: Le domaine de définition $D_f$ est l'ensemble des points $(x,y)$ qui satisfont les deux conditions en même temps.

    $$ D_f = \{ (x, y) \in \mathbb{R}^2 \mid y \ge x^2 \text{ et } y < 4 \} $$

4.  **Description géométrique et graphique**:

    Le domaine $D_f$ est la région du plan délimitée par la parabole $y=x^2$ (incluse) et la droite horizontale $y=4$ (exclue). C'est la zone située à l'intérieur de la parabole, en dessous de la "couverture" horizontale.

    

**Réponse:** Le domaine de définition est l'ensemble

$$ D_f = \{ (x, y) \in \mathbb{R}^2 \mid x^2 \le y < 4 \} $$

</details>

---

## Exercice 2 : Calcul d'une limite

**Problème:** Calculez la limite suivante, si elle existe :

$$ \lim_{(x,y) \to (0,0)} \frac{x^2 y^2}{x^2 + y^2} $$

<details>

<summary>Solution</summary>

**Méthode:** L'expression est une forme indéterminée $\frac{0}{0}$. Nous allons essayer de majorer la valeur absolue de la fonction par une expression plus simple qui tend vers 0. Le théorème des gendarmes est un excellent outil pour cela. L'inégalité $x^2 \le x^2 + y^2$ est souvent utile dans ce genre de situation.

**Étapes:**

1.  Nous voulons évaluer le comportement de $f(x,y) = \frac{x^2 y^2}{x^2 + y^2}$ lorsque $(x,y)$ s'approche de $(0,0)$.

    Considérons la valeur absolue de la fonction :

    $$ |f(x,y) - 0| = \left| \frac{x^2 y^2}{x^2 + y^2} \right| = \frac{x^2 y^2}{x^2 + y^2} $$

2.  Nous cherchons une majoration. Remarquons que pour tout $(x,y) \neq (0,0)$, nous avons $x^2 \ge 0$ et $y^2 \ge 0$, donc $x^2 + y^2 > 0$. De plus, il est clair que $x^2 \le x^2 + y^2$.

3.  En divisant par $x^2 + y^2$ (qui est strictement positif), on obtient :

    $$ \frac{x^2}{x^2 + y^2} \le 1 $$

4.  Utilisons cette inégalité pour majorer notre fonction :

    $$ \frac{x^2 y^2}{x^2 + y^2} = \left( \frac{x^2}{x^2 + y^2} \right) y^2 \le 1 \cdot y^2 = y^2 $$

5.  Nous avons donc l'encadrement suivant pour tout $(x,y) \neq (0,0)$ :

    $$ 0 \le \frac{x^2 y^2}{x^2 + y^2} \le y^2 $$

6.  Nous savons que $\lim_{(x,y) \to (0,0)} 0 = 0$ et $\lim_{(x,y) \to (0,0)} y^2 = 0$.

7.  Par le théorème des gendarmes, nous pouvons conclure que la limite de notre fonction est également 0.

**Réponse:**

$$ \lim_{(x,y) \to (0,0)} \frac{x^2 y^2}{x^2 + y^2} = 0 $$

</details>

---

## Exercice 3 : Preuve de non-existence d'une limite

**Problème:** Montrez que la limite suivante n'existe pas :

$$ \lim_{(x,y) \to (0,0)} \frac{xy^2}{x^2 + y^4} $$

<details>

<summary>Solution</summary>

**Méthode:** Pour prouver que la limite d'une fonction de plusieurs variables n'existe pas en un point, il suffit de trouver deux chemins (ou "trajectoires") d'approche différents qui mènent à des limites différentes. Si les limites dépendent du chemin suivi pour s'approcher de $(0,0)$, alors la limite globale n'existe pas. Nous allons tester des chemins simples comme les droites passant par l'origine, puis des chemins plus complexes si nécessaire.

**Étapes:**

1.  Soit $f(x,y) = \frac{xy^2}{x^2 + y^4}$. Nous étudions la limite en $(0,0)$.

2.  **Chemin 1 : Approche le long de l'axe des abscisses ($y=0$).**

    Si nous nous approchons de $(0,0)$ le long de la droite $y=0$ (pour $x \neq 0$), la fonction devient :

    $$ f(x, 0) = \frac{x(0)^2}{x^2 + 0^4} = \frac{0}{x^2} = 0 $$

    La limite le long de ce chemin est donc $\lim_{x \to 0} f(x,0) = 0$.

3.  **Chemin 2 : Approche le long des droites $y=mx$.**

    Si nous nous approchons de $(0,0)$ le long d'une droite d'équation $y=mx$ (pour $x \neq 0$ et $m$ une constante), la fonction devient :

    $$ f(x, mx) = \frac{x(mx)^2}{x^2 + (mx)^4} = \frac{m^2x^3}{x^2 + m^4x^4} = \frac{m^2x}{1 + m^4x^2} $$

    Lorsque $x \to 0$, cette expression tend vers $\frac{0}{1} = 0$.

    Ce test n'est pas concluant, car il donne 0 pour toutes les droites. Cela suggère que si la limite n'existe pas, il faut un chemin non linéaire.

4.  **Chemin 3 : Approche le long de la parabole $x=y^2$.**

    Ce choix de chemin est motivé par la structure du dénominateur ($x^2$ et $y^4$). En posant $x=y^2$, les puissances vont s'équilibrer.

    Si nous nous approchons de $(0,0)$ le long de la parabole $x=y^2$ (pour $y \neq 0$), la fonction devient :

    $$ f(y^2, y) = \frac{(y^2)y^2}{(y^2)^2 + y^4} = \frac{y^4}{y^4 + y^4} = \frac{y^4}{2y^4} = \frac{1}{2} $$

    La limite le long de ce chemin est donc $\lim_{y \to 0} f(y^2, y) = \frac{1}{2}$.

5.  **Conclusion**: Nous avons trouvé deux chemins d'approche vers $(0,0)$ qui donnent des limites différentes :
    - Le long de $y=0$, la limite est $0$.
    - Le long de $x=y^2$, la limite est $\frac{1}{2}$.

    Puisque $0 \neq \frac{1}{2}$, la limite de la fonction en $(0,0)$ n'existe pas.

**Réponse:** La limite n'existe pas.

</details>

---

## Exercice 4 : Continuité et prolongement par continuité

**Problème:** Soit la fonction $g(x,y) = \frac{e^{x^2+y^2} - 1}{x^2+y^2}$ définie sur $\mathbb{R}^2 \setminus \{(0,0)\}$.

La fonction $g$ est-elle prolongeable par continuité en $(0,0)$ ? Si oui, quelle est la valeur de son prolongement en ce point ?

<details>

<summary>Solution</summary>

**Méthode:** Une fonction $g$ est prolongeable par continuité en un point $a$ si la limite $\lim_{x\to a} g(x)$ existe et est finie. Si cette limite, que nous appellerons $\ell$, existe, alors le prolongement continu $\tilde{g}$ est la fonction qui vaut $g(x)$ sur son domaine initial et $\ell$ au point $a$.

Ici, nous devons calculer $\lim_{(x,y) \to (0,0)} g(x,y)$. Le passage en coordonnées polaires ou l'utilisation d'une limite connue d'une fonction d'une variable est une bonne stratégie.

**Étapes:**

1.  Nous devons calculer la limite de $g(x,y)$ quand $(x,y) \to (0,0)$.

    $$ \lim_{(x,y) \to (0,0)} \frac{e^{x^2+y^2} - 1}{x^2+y^2} $$

2.  Posons $u = x^2+y^2$. Lorsque $(x,y) \to (0,0)$, la variable $u$ tend vers $0^+$.

    La limite peut donc être réécrite comme une limite d'une seule variable :

    $$ \lim_{u \to 0^+} \frac{e^u - 1}{u} $$

3.  Cette limite est une limite fondamentale, qui correspond à la définition du nombre dérivé de la fonction $h(u) = e^u$ au point $u=0$.

    Rappel : $h'(0) = \lim_{u \to 0} \frac{h(u) - h(0)}{u-0}$.

    Avec $h(u) = e^u$, on a $h(0) = e^0 = 1$ et $h'(u) = e^u$, donc $h'(0) = e^0 = 1$.

    Ainsi :

    $$ \lim_{u \to 0^+} \frac{e^u - 1}{u} = 1 $$

4.  Puisque la limite existe et est finie (elle vaut 1), la fonction $g$ est prolongeable par continuité en $(0,0)$.

5.  La valeur du prolongement en $(0,0)$ est la valeur de la limite, soit 1. Le prolongement continu $\tilde{g}$ est défini par :

    $$ \tilde{g}(x, y) = \begin{cases} \frac{e^{x^2+y^2} - 1}{x^2+y^2} & \text{si } (x, y) \neq (0, 0) \\ 1 & \text{si } (x, y) = (0, 0) \end{cases} $$

**Réponse:** Oui, la fonction est prolongeable par continuité en $(0,0)$, et son prolongement vaut $1$ en ce point.

</details>

---

## Exercice 5 : Justification de la continuité

**Problème:** En utilisant les théorèmes sur les opérations de fonctions continues, justifiez que la fonction $f: \mathbb{R}^2 \to \mathbb{R}$ définie par $f(x, y) = \cos(x^2 y) + \frac{\sin(x)}{1+y^2}$ est continue sur $\mathbb{R}^2$.

<details>

<summary>Solution</summary>

**Méthode:** Nous allons décomposer la fonction $f$ en une somme de deux termes, $f_1(x,y) = \cos(x^2 y)$ et $f_2(x,y) = \frac{\sin(x)}{1+y^2}$. Nous montrerons que chaque terme est continu en utilisant les propriétés de continuité pour le produit, le quotient et la composition de fonctions continues. La somme de deux fonctions continues étant continue, nous pourrons conclure.

**Étapes:**

1.  **Analyse du premier terme : $f_1(x,y) = \cos(x^2 y)$**
    - Les fonctions de projection $p_1(x,y) = x$ et $p_2(x,y) = y$ sont continues sur $\mathbb{R}^2$.
    - La fonction $h_1(x,y) = x^2y$ est le produit de fonctions continues ($x \cdot x \cdot y$), elle est donc continue sur $\mathbb{R}^2$.
    - La fonction $t \mapsto \cos(t)$ est continue sur $\mathbb{R}$.
    - $f_1$ est la composée de $h_1$ et de la fonction cosinus : $f_1 = \cos \circ h_1$. La composée de fonctions continues étant continue, $f_1$ est continue sur $\mathbb{R}^2$.

2.  **Analyse du second terme : $f_2(x,y) = \frac{\sin(x)}{1+y^2}$**
    - Le numérateur, $N(x,y) = \sin(x)$, est la composition de la projection $p_1(x,y)=x$ (continue) et de la fonction sinus (continue). Il est donc continu sur $\mathbb{R}^2$.
    - Le dénominateur, $D(x,y) = 1+y^2$, est la somme d'une constante et du carré de la projection $p_2(x,y)=y$. Il est donc continu sur $\mathbb{R}^2$.
    - De plus, le dénominateur ne s'annule jamais, car $y^2 \ge 0$, donc $1+y^2 \ge 1 > 0$.
    - $f_2$ est le quotient de deux fonctions continues dont le dénominateur ne s'annule jamais. Elle est donc continue sur $\mathbb{R}^2$.

3.  **Conclusion**: La fonction $f$ est la somme des fonctions $f_1$ et $f_2$. Puisque $f_1$ et $f_2$ sont toutes deux continues sur $\mathbb{R}^2$, leur somme $f = f_1 + f_2$ est également continue sur $\mathbb{R}^2$.

**Réponse:** La fonction $f$ est continue sur $\mathbb{R}^2$ car elle est construite par composition, produit, quotient (avec un dénominateur non nul) et somme de fonctions continues usuelles.

</details>

---

## Exercice 6 : Caractérisation topologique de la continuité

**Problème:** Montrez que l'ensemble $F = \{ (x, y) \in \mathbb{R}^2 \mid x^2 + 4y^2 \le 4 \}$ est un ensemble fermé de $\mathbb{R}^2$.

<details>

<summary>Solution</summary>

**Méthode:** Nous allons utiliser la caractérisation topologique de la continuité. Cette propriété stipule que l'image réciproque d'un ensemble fermé par une fonction continue est un ensemble fermé. Nous devons trouver une fonction continue $g: \mathbb{R}^2 \to \mathbb{R}$ et un ensemble fermé $A \subset \mathbb{R}$ tels que $F = g^{-1}(A)$.

**Étapes:**

1.  Considérons la fonction $g: \mathbb{R}^2 \to \mathbb{R}$ définie par $g(x, y) = x^2 + 4y^2$.

    Cette fonction est une fonction polynomiale en $x$ et $y$. Toute fonction polynomiale de plusieurs variables est continue sur son domaine, ici $\mathbb{R}^2$.

2.  Réécrivons la condition définissant l'ensemble $F$ en utilisant la fonction $g$.

    Un point $(x,y)$ est dans $F$ si et seulement si $g(x,y) \le 4$.

3.  Cela signifie que $F$ est l'ensemble de tous les points $(x,y)$ de $\mathbb{R}^2$ dont l'image par $g$ appartient à l'intervalle $]-\infty, 4]$.

    En d'autres termes, $F$ est l'image réciproque de l'intervalle $]-\infty, 4]$ par la fonction $g$.

    $$ F = g^{-1}(]-\infty, 4]) $$

4.  L'intervalle $A = ]-\infty, 4]$ est un ensemble fermé de $\mathbb{R}$.

5.  Nous avons une fonction continue $g$ et un ensemble fermé $A$. La caractérisation topologique de la continuité nous permet d'affirmer que son image réciproque $F = g^{-1}(A)$ est un ensemble fermé de $\mathbb{R}^2$.

**Réponse:** L'ensemble $F$ est un fermé car il est l'image réciproque de l'intervalle fermé $]-\infty, 4]$ par la fonction continue $g(x,y) = x^2 + 4y^2$.

</details>

---

## Exercice 7 : Application du Théorème des bornes atteintes

**Problème:** Un randonneur se trouve sur un terrain montagneux modélisé par la surface d'équation $z = h(x,y)$. Le randonneur se déplace à l'intérieur d'un domaine circulaire délimité par $x^2 + y^2 \le 9$. La fonction altitude $h(x,y) = 1000 - x^2 - y^2 + 2x$ est continue.

Justifiez, sans faire de calcul, qu'il existe un point où le randonneur atteint son altitude maximale et un point où il atteint son altitude minimale.

<details>

<summary>Solution</summary>

**Méthode:** Ce problème est une application directe du Théorème des bornes atteintes (ou Théorème de Weierstrass). Ce théorème stipule qu'une fonction continue sur un ensemble compact (fermé et borné) atteint son maximum et son minimum sur cet ensemble. Nous devons vérifier que les deux hypothèses (domaine compact, fonction continue) sont bien remplies.

**Étapes:**

1.  **Identifier le domaine d'étude**: Le randonneur se déplace sur le domaine $K = \{ (x,y) \in \mathbb{R}^2 \mid x^2 + y^2 \le 9 \}$. Ce domaine est un disque fermé de centre $(0,0)$ et de rayon 3.

2.  **Vérifier la compacité du domaine**:
    - **Borné**: Le domaine est borné car il est contenu dans une boule (par exemple, la boule de rayon 4 centrée à l'origine). La distance de n'importe quel point du disque à l'origine est au plus 3.
    - **Fermé**: L'inégalité $x^2+y^2 \le 9$ est une inégalité large. Comme vu dans l'exercice précédent, cet ensemble est l'image réciproque de l'intervalle fermé $]-\infty, 9]$ par la fonction continue $(x,y) \mapsto x^2+y^2$. Il est donc fermé.
    - Puisque $K$ est fermé et borné dans $\mathbb{R}^2$, il est compact (Théorème de Heine-Borel).

3.  **Vérifier la continuité de la fonction**: La fonction altitude est $h(x,y) = 1000 - x^2 - y^2 + 2x$. C'est une fonction polynomiale, elle est donc continue sur tout $\mathbb{R}^2$, et en particulier sur le compact $K$.

4.  **Appliquer le Théorème des bornes atteintes**: Nous avons une fonction continue ($h$) définie sur un ensemble compact non vide ($K$). Le théorème s'applique et garantit que $h$ est bornée sur $K$ et atteint ses bornes.

    Cela signifie qu'il existe au moins un point $(x_{min}, y_{min}) \in K$ et un point $(x_{max}, y_{max}) \in K$ tels que :

    $$ h(x_{min}, y_{min}) = \min_{(x,y) \in K} h(x,y) \quad \text{et} \quad h(x_{max}, y_{max}) = \max_{(x,y) \in K} h(x,y) $$

**Réponse:** L'existence d'un point d'altitude maximale et d'un point d'altitude minimale est garantie par le Théorème des bornes atteintes, car la fonction altitude est continue et le domaine de déplacement du randonneur est un ensemble compact (disque fermé).

</details>

---

## Exercice 8 : Image d'un compact

**Problème:** Soit le chemin $\gamma: [0, \pi] \to \mathbb{R}^2$ défini par $\gamma(t) = (2\cos(t), \sin(t))$.

1. Justifiez pourquoi l'ensemble de départ $[0, \pi]$ est compact.
2. Justifiez pourquoi l'image $\gamma([0, \pi])$ est un ensemble compact de $\mathbb{R}^2$.
3. Que représente géométriquement l'ensemble $\gamma([0, \pi])$ ?

<details>

<summary>Solution</summary>

**Méthode:** Nous utiliserons le théorème de Heine-Borel pour la compacité de l'intervalle de départ, puis le théorème fondamental qui stipule que l'image d'un compact par une application continue est un compact. Enfin, nous analyserons l'équation paramétrique pour identifier la nature géométrique de l'image.

**Étapes:**

1.  **Compacité de l'ensemble de départ**: L'ensemble de départ est l'intervalle $[0, \pi]$ de $\mathbb{R}$. En dimension 1, un ensemble est compact si et seulement s'il est fermé et borné.
    - $[0, \pi]$ est borné (il est contenu dans l'intervalle $[-1, 4]$ par exemple).
    - $[0, \pi]$ est fermé (car ses bornes 0 et $\pi$ sont incluses).

    Donc, $[0, \pi]$ est un ensemble compact de $\mathbb{R}$.

2.  **Compacité de l'ensemble image**:
    - La fonction $\gamma(t)$ a pour composantes $x(t) = 2\cos(t)$ et $y(t) = \sin(t)$. Les fonctions cosinus et sinus sont continues sur $\mathbb{R}$. La fonction $\gamma$ est donc continue sur son domaine $[0, \pi]$.
    - Le théorème principal sur la continuité et la compacité nous dit que l'image d'un ensemble compact par une fonction continue est un ensemble compact.
    - Puisque $[0, \pi]$ est compact et $\gamma$ est continue, l'image $\gamma([0, \pi])$ est un ensemble compact de $\mathbb{R}^2$.

3.  **Description géométrique**: Soit $(x,y) = \gamma(t) = (2\cos(t), \sin(t))$. Nous avons $x = 2\cos(t)$ et $y = \sin(t)$.

    On peut en déduire que $\cos(t) = x/2$ et $\sin(t) = y$.

    En utilisant l'identité trigonométrique fondamentale $\cos^2(t) + \sin^2(t) = 1$, on obtient la relation cartésienne :

    $$ \left(\frac{x}{2}\right)^2 + y^2 = 1 \iff \frac{x^2}{4} + y^2 = 1 $$

    C'est l'équation d'une ellipse centrée à l'origine, avec un demi-grand axe de 2 le long de l'axe des x et un demi-petit axe de 1 le long de l'axe des y.

    Comme $t$ varie de $0$ à $\pi$, $\cos(t)$ varie de $1$ à $-1$ (donc $x$ varie de 2 à -2) et $\sin(t)$ varie de $0$ à $1$ puis à $0$ (donc $y \ge 0$). Le chemin trace donc la moitié supérieure de l'ellipse.

**Réponse:**

1. L'intervalle $[0, \pi]$ est un fermé borné de $\mathbb{R}$, il est donc compact.
2. La fonction $\gamma$ étant continue, l'image $\gamma([0, \pi])$ est un compact de $\mathbb{R}^2$.
3. Géométriquement, l'ensemble est la demi-ellipse supérieure d'équation $\frac{x^2}{4} + y^2 = 1$ avec $y \ge 0$.

</details>

---

## Exercice 9 : Connexité par arcs

**Problème:** L'ensemble $A = \{ (x,y) \in \mathbb{R}^2 \mid x > 0 \text{ et } y > 0 \} \cup \{ (x,y) \in \mathbb{R}^2 \mid x < 0 \text{ et } y < 0 \}$ est-il connexe par arcs ? Justifiez votre réponse.

<details>

<summary>Solution</summary>

**Méthode:** Un ensemble est connexe par arcs si deux points quelconques de cet ensemble peuvent être reliés par un chemin continu qui reste entièrement dans l'ensemble. Pour montrer qu'un ensemble n'est pas connexe par arcs, il suffit de trouver deux points qui ne peuvent pas être reliés de cette manière.

**Étapes:**

1.  **Description de l'ensemble**: L'ensemble $A$ est la réunion du premier quadrant (strict, sans les axes) et du troisième quadrant (strict, sans les axes).

2.  **Choix de deux points**: Choisissons un point dans chaque "morceau" de l'ensemble.
    - Soit $a = (1, 1)$, qui est dans le premier quadrant ($x>0, y>0$). Clairement, $a \in A$.
    - Soit $b = (-1, -1)$, qui est dans le troisième quadrant ($x<0, y<0$). Clairement, $b \in A$.

3.  **Analyse d'un chemin possible**: Supposons qu'il existe un chemin continu $\gamma: [0, 1] \to A$ tel que $\gamma(0) = a$ et $\gamma(1) = b$.

    Le chemin $\gamma(t)$ peut s'écrire avec ses composantes : $\gamma(t) = (x(t), y(t))$, où $x(t)$ et $y(t)$ sont des fonctions continues de $[0,1]$ dans $\mathbb{R}$.

4.  **Propriétés du chemin**:
    - Au départ, en $t=0$, nous avons $x(0) = 1 > 0$.
    - À l'arrivée, en $t=1$, nous avons $x(1) = -1 < 0$.
    - Puisque la fonction $x(t)$ est continue sur l'intervalle $[0,1]$ et passe d'une valeur positive à une valeur négative, le Théorème des Valeurs Intermédiaires (appliqué à $x(t)$) nous garantit qu'il doit exister au moins un instant $t_0 \in ]0, 1[$ tel que $x(t_0) = 0$.

5.  **Contradiction**: Au point $\gamma(t_0) = (x(t_0), y(t_0))$, la première coordonnée est nulle. Un point avec une coordonnée nulle ne peut pas appartenir à l'ensemble $A$, car $A$ requiert soit $x>0$ et $y>0$, soit $x<0$ et $y<0$.

    Donc, le point $\gamma(t_0)$ n'est pas dans $A$.

6.  **Conclusion**: Ceci contredit notre hypothèse que le chemin $\gamma(t)$ reste entièrement dans $A$. Par conséquent, un tel chemin ne peut pas exister. L'ensemble $A$ n'est pas connexe par arcs.

**Réponse:** Non, l'ensemble $A$ n'est pas connexe par arcs car il est impossible de relier un point du premier quadrant à un point du troisième quadrant par un chemin continu sans passer par un point où au moins une coordonnée est nulle, et de tels points ne sont pas dans $A$.

</details>

---

## Exercice 10 : Continuité uniforme

**Problème:** Montrez que la fonction $f(x,y) = x+2y$ est uniformément continue sur $\mathbb{R}^2$.

<details>

<summary>Solution</summary>

**Méthode:** Pour prouver la continuité uniforme, on peut soit revenir à la définition avec $\varepsilon$ et $\delta$, soit montrer que la fonction est lipschitzienne. Une fonction est lipschitzienne s'il existe une constante $k \ge 0$ telle que $d(f(x), f(y)) \le k \cdot d(x, y)$. Toute fonction lipschitzienne est uniformément continue. Nous allons utiliser les normes euclidiennes.

**Étapes:**

1.  Soient deux points $P_1 = (x_1, y_1)$ et $P_2 = (x_2, y_2)$ dans $\mathbb{R}^2$.

    Nous voulons majorer la distance à l'arrivée, $|f(P_1) - f(P_2)|$, en fonction de la distance au départ, $\|P_1 - P_2\|_2$.

2.  Calculons la différence des valeurs de la fonction :

    $$ f(P_1) - f(P_2) = (x_1 + 2y_1) - (x_2 + 2y_2) = (x_1 - x_2) + 2(y_1 - y_2) $$

3.  Prenons la valeur absolue :

    $$ |f(P_1) - f(P_2)| = |(x_1 - x_2) + 2(y_1 - y_2)| $$

4.  Nous pouvons voir cela comme le produit scalaire du vecteur $v = (1, 2)$ et du vecteur $P_1 - P_2 = (x_1-x_2, y_1-y_2)$.

    $$ |f(P_1) - f(P_2)| = | \langle (1, 2), (x_1-x_2, y_1-y_2) \rangle | $$

5.  Utilisons l'inégalité de Cauchy-Schwarz, qui dit que $|\langle u, v \rangle| \le \|u\|_2 \|v\|_2$.

    $$ | \langle (1, 2), P_1 - P_2 \rangle | \le \|(1, 2)\|_2 \cdot \|P_1 - P_2\|_2 $$

6.  Calculons la norme du vecteur $(1,2)$ :

    $$ \|(1, 2)\|_2 = \sqrt{1^2 + 2^2} = \sqrt{5} $$

7.  Nous obtenons donc la majoration :

    $$ |f(P_1) - f(P_2)| \le \sqrt{5} \|P_1 - P_2\|_2 $$

8.  Cette inégalité montre que $f$ est lipschitzienne avec une constante de Lipschitz $k=\sqrt{5}$.

9.  Puisque $f$ est lipschitzienne, elle est uniformément continue. Pour le prouver formellement à partir de l'inégalité : soit $\varepsilon > 0$. Choisissons $\delta = \frac{\varepsilon}{\sqrt{5}}$. Alors, si $\|P_1 - P_2\|_2 < \delta$, nous avons :

    $$ |f(P_1) - f(P_2)| \le \sqrt{5} \|P_1 - P_2\|_2 < \sqrt{5} \cdot \delta = \sqrt{5} \cdot \frac{\varepsilon}{\sqrt{5}} = \varepsilon $$

    Le choix de $\delta$ ne dépend que de $\varepsilon$, donc la fonction est bien uniformément continue sur $\mathbb{R}^2$.

**Réponse:** La fonction $f$ est uniformément continue sur $\mathbb{R}^2$ car elle est lipschitzienne, avec la constante $k=\sqrt{5}$.

</details>

---

## Exercice 11 : Théorème de Heine

**Problème:** La fonction $f(x) = \frac{1}{x}$ est continue sur l'intervalle $]0, \infty[$, mais elle n'y est pas uniformément continue.

Utilisez le théorème de Heine pour justifier que $f$ est uniformément continue sur l'intervalle $[0.1, 10]$.

<details>

<summary>Solution</summary>

**Méthode:** Le théorème de Heine stipule que toute fonction continue sur un ensemble compact est uniformément continue sur cet ensemble. Pour appliquer ce théorème, nous devons simplement vérifier les deux hypothèses : la continuité de la fonction sur le domaine spécifié et la compacité de ce domaine.

**Étapes:**

1.  **Identifier le domaine d'étude**: Le domaine est l'intervalle $K = [0.1, 10]$.

2.  **Vérifier la compacité du domaine**:
    - L'intervalle $K = [0.1, 10]$ est un intervalle fermé de $\mathbb{R}$ (ses bornes sont incluses).
    - Il est également borné (il est contenu dans l'intervalle $[-1, 11]$ par exemple).
    - Un ensemble fermé et borné de $\mathbb{R}^n$ (ici $n=1$) est compact. Donc, $K$ est compact.

3.  **Vérifier la continuité de la fonction sur le domaine**:
    - La fonction $f(x) = \frac{1}{x}$ est une fonction rationnelle. Elle est continue sur tout son domaine de définition, qui est $\mathbb{R} \setminus \{0\}$.
    - L'intervalle $K = [0.1, 10]$ ne contient pas le point 0 où la fonction n'est pas définie.
    - Par conséquent, la fonction $f$ est continue sur l'intervalle $K$.

4.  **Appliquer le Théorème de Heine**:
    - Nous avons une fonction, $f(x) = 1/x$, qui est continue sur $K$.
    - Nous avons un domaine, $K = [0.1, 10]$, qui est compact.
    - Les deux hypothèses du théorème de Heine sont satisfaites. Nous pouvons donc conclure que la fonction $f$ est uniformément continue sur $K = [0.1, 10]$.

5.  **Pourquoi cela ne contredit pas le fait que $f$ n'est pas uniformément continue sur $]0, \infty[$ ?**

    Le domaine $]0, \infty[$ n'est pas compact (il n'est ni fermé ni borné). Le théorème de Heine ne s'y applique donc pas. En effet, près de 0, la pente de la fonction devient arbitrairement grande, ce qui empêche la continuité uniforme. En se restreignant à $[0.1, 10]$, on s'éloigne du problème en 0 et on se limite à une portion bornée, ce qui rend la continuité uniforme possible.

**Réponse:** La fonction $f(x)=1/x$ est continue sur l'intervalle $[0.1, 10]$ et cet intervalle est compact (car fermé et borné). Par le théorème de Heine, $f$ est donc uniformément continue sur $[0.1, 10]$.

</details>
