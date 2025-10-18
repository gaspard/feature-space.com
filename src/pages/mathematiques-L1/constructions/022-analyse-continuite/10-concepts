---
id: d385e460
type: concepts
order: 10
title: "Analyse: Continuïté"
tags:
  - analyse
  - suites
  - limites
  - continuité
  - dérivabilité
  - intégration
course: Constructions et raisonnements mathématiques
courseId: d2e11e03
chapter: "Analyse: Continuïté"
chapterId: a5489a34
level: regular
createdAt: '2025-10-18T19:09:27.304Z'
---
# Analyse (Section 2) (A)

---

## Concept 1: Limite d'une fonction en un point

### Prérequis

-   Notion de fonction d'une variable réelle.
-   Manipulation des valeurs absolues et des inégalités.
-   Connaissance des intervalles de $\mathbb{R}$.
-   Concept de limite d'une suite numérique.

### Définition

Soit $f$ une fonction définie sur un intervalle $I \subset \mathbb{R}$, et soit $a$ un point de $I$ ou une de ses bornes (on note $a \in \bar{I}$). Soit $l$ un nombre réel.

On dit que **la fonction $f$ tend vers la limite $l$ lorsque $x$ tend vers $a$**, si pour tout nombre réel $\varepsilon > 0$ (aussi petit que l'on veut), on peut trouver un nombre réel $\eta > 0$ tel que, pour tout $x$ dans l'intervalle $I$, si $x$ est à une distance de $a$ inférieure à $\eta$, alors $f(x)$ est à une distance de $l$ inférieure à $\varepsilon$.

Avec les notations mathématiques, cela s'écrit :

$$ \forall \varepsilon > 0, \exists \eta > 0, \forall x \in I, |x - a| < \eta \implies |f(x) - l| < \varepsilon. $$

On note alors $\lim_{x\to a} f(x) = l$ ou $\lim_a f = l$.

**Variantes de la définition :**

-   **Limite infinie en un point $a$ :** On dit que $f$ tend vers $+\infty$ en $a$ si :

    $$ \forall A \in \mathbb{R}, \exists \eta > 0, \forall x \in I, |x - a| < \eta \implies f(x) > A. $$

-   **Limite finie en $+\infty$ :** On dit que $f$ tend vers $l$ en $+\infty$ si :

    $$ \forall \varepsilon > 0, \exists B > 0, \forall x \in I, x > B \implies |f(x) - l| < \varepsilon. $$

-   **Limite à gauche en $a$ :** On regarde le comportement de $f(x)$ pour les $x$ strictement inférieurs à $a$. On note $\lim_{x\to a^-} f(x) = l$ si :

    $$ \forall \varepsilon > 0, \exists \eta > 0, \forall x \in I, a - \eta < x < a \implies |f(x) - l| < \varepsilon. $$

-   **Limite à droite en $a$ :** De même pour les $x$ strictement supérieurs à $a$. On note $\lim_{x\to a^+} f(x) = l$ si :

    $$ \forall \varepsilon > 0, \exists \eta > 0, \forall x \in I, a < x < a + \eta \implies |f(x) - l| < \varepsilon. $$

### Propriétés Clés

-   **Unicité de la limite :** Si une fonction admet une limite en un point, cette limite est unique.
-   **Caractérisation séquentielle :** La fonction $f$ tend vers $l$ en $a$ si et seulement si pour **toute** suite $(x_n)$ d'éléments de $I$ qui converge vers $a$ (avec $x_n \neq a$), la suite des images $(f(x_n))$ converge vers $l$. C'est un pont fondamental entre les limites de fonctions et les limites de suites.
-   **Opérations sur les limites :** Les limites se comportent bien avec les opérations arithmétiques (somme, produit, quotient), de manière analogue aux limites de suites. Par exemple, si $\lim_{x\to a} f(x) = l_1$ et $\lim_{x\to a} g(x) = l_2$, alors $\lim_{x\to a} (f(x) + g(x)) = l_1 + l_2$.
-   **Limite et ordre :** Les inégalités larges sont préservées par passage à la limite (théorème des gendarmes).

### Exemples

**Exemple 1 : Une fonction polynomiale**

Soit la fonction $f(x) = x^2$ et cherchons sa limite en $a=3$. On s'attend à trouver $l=9$.

Montrons-le avec la définition.

Soit $\varepsilon > 0$. Nous devons trouver un $\eta > 0$ tel que si $|x-3| < \eta$, alors $|x^2 - 9| < \varepsilon$.

On a $|x^2 - 9| = |(x-3)(x+3)| = |x-3| |x+3|$.

Pour contrôler le terme $|x+3|$, on peut d'abord imposer une condition sur $\eta$, par exemple $\eta \le 1$.

Si $|x-3| < 1$, alors $2 < x < 4$, donc $5 < x+3 < 7$, ce qui implique $|x+3| < 7$.

Ainsi, $|x^2 - 9| < 7|x-3|$.

Pour avoir $7|x-3| < \varepsilon$, il suffit de choisir $|x-3| < \varepsilon/7$.

Nous devons donc satisfaire deux conditions : $|x-3| < 1$ et $|x-3| < \varepsilon/7$.

En choisissant $\eta = \min(1, \varepsilon/7)$, les deux conditions sont remplies.

Donc, $\lim_{x\to 3} x^2 = 9$.

**Exemple 2 : Une fonction rationnelle avec une "valeur interdite"**

Soit $f(x) = \frac{x^2 - 4}{x - 2}$ définie sur $\mathbb{R} \setminus \{2\}$. Cherchons la limite en $a=2$.

Pour $x \neq 2$, on peut simplifier l'expression : $f(x) = \frac{(x-2)(x+2)}{x-2} = x+2$.

La limite de $f(x)$ en 2 est donc la même que la limite de $x+2$ en 2, qui est $2+2=4$.

Avec la définition : soit $\varepsilon > 0$. On veut $|f(x) - 4| < \varepsilon$ pour $|x-2| < \eta$.

$|f(x)-4| = |(x+2)-4| = |x-2|$.

Il suffit donc de choisir $\eta = \varepsilon$. Si $|x-2| < \varepsilon$, alors $|f(x)-4| < \varepsilon$.

Donc, $\lim_{x\to 2} \frac{x^2 - 4}{x - 2} = 4$.

**Exemple 3 : Limite à gauche et à droite**

Soit la fonction $f(x)$ définie par $f(x) = x+1$ si $x > 0$ et $f(x) = x-1$ si $x < 0$. Étudions la limite en $a=0$.

-   **Limite à droite :** On s'intéresse aux $x > 0$. $\lim_{x\to 0^+} f(x) = \lim_{x\to 0^+} (x+1) = 1$.
-   **Limite à gauche :** On s'intéresse aux $x < 0$. $\lim_{x\to 0^-} f(x) = \lim_{x\to 0^-} (x-1) = -1$.

Comme la limite à gauche est différente de la limite à droite, la fonction n'admet pas de limite en $0$.

### Contre-exemples

**Contre-exemple 1 : La fonction "partie entière"**

Soit $f(x) = E(x)$, la partie entière de $x$. Étudions la limite en $a=1$.

-   Pour $x \in [1, 2[$, $f(x)=1$. Donc $\lim_{x\to 1^+} f(x) = 1$.
-   Pour $x \in [0, 1[$, $f(x)=0$. Donc $\lim_{x\to 1^-} f(x) = 0$.

Les limites à gauche et à droite sont différentes, donc la fonction n'admet pas de limite en $1$.

**Contre-exemple 2 : Une fonction qui oscille indéfiniment**

Soit $f(x) = \sin(\frac{1}{x})$ pour $x \neq 0$. Cherchons la limite en $a=0$.

Considérons la suite $x_n = \frac{1}{n\pi}$. Elle tend vers 0. $f(x_n) = \sin(n\pi) = 0$. La suite $(f(x_n))$ tend vers 0.

Considérons une autre suite $y_n = \frac{1}{\frac{\pi}{2} + 2n\pi}$. Elle tend aussi vers 0. $f(y_n) = \sin(\frac{\pi}{2} + 2n\pi) = 1$. La suite $(f(y_n))$ tend vers 1.

Puisque nous avons trouvé deux suites tendant vers 0 dont les images par $f$ convergent vers des limites différentes, la fonction $f$ n'admet pas de limite en 0 (d'après la caractérisation séquentielle).

### Concepts Connexes

-   **Continuité :** La notion de continuité est directement définie à partir de celle de limite. Une fonction $f$ est continue en $a$ si $\lim_{x\to a} f(x) = f(a)$.
-   **Dérivabilité :** La dérivée d'une fonction en un point est définie comme la limite du taux d'accroissement.

### Applications

-   La notion de limite est le concept fondamental sur lequel repose tout le calcul différentiel et intégral (l'Analyse).
-   Elle permet d'étudier le comportement de fonctions au voisinage de points critiques ou à l'infini (asymptotes).
-   En physique, elle permet de définir des grandeurs instantanées, comme la vitesse instantanée qui est la limite de la vitesse moyenne.

---

## Concept 2: Continuité d'une fonction

### Prérequis

-   Concept 1: Limite d'une fonction en un point.
-   Domaine de définition d'une fonction.

### Définition

Soit $f$ une fonction définie sur un intervalle $I$ et soit $a$ un point de $I$.

On dit que **la fonction $f$ est continue en $a$** si la limite de $f(x)$ quand $x$ tend vers $a$ est égale à la valeur de la fonction en $a$, c'est-à-dire $f(a)$.

Mathématiquement, cela s'écrit :

$$ \lim_{x\to a} f(x) = f(a). $$

En utilisant la définition de la limite, cela se traduit par :

$$ \forall \varepsilon > 0, \exists \eta > 0, \forall x \in I, |x - a| < \eta \implies |f(x) - f(a)| < \varepsilon. $$

Intuitivement, une fonction est continue en un point si son graphe ne présente pas de "saut" ou de "trou" en ce point. On peut tracer son graphe autour de ce point "sans lever le crayon".

On dit que **la fonction $f$ est continue sur l'intervalle $I$** si elle est continue en tout point $a$ de $I$.

### Propriétés Clés

-   **Caractérisation séquentielle :** $f$ est continue en $a$ si et seulement si pour toute suite $(x_n)$ d'éléments de $I$ qui converge vers $a$, la suite des images $(f(x_n))$ converge vers $f(a)$.
-   **Opérations et continuité :**
    -   Si $f$ et $g$ sont continues en $a$, alors $f+g$ et $f \times g$ sont continues en $a$.
    -   Si de plus $f(a) \neq 0$, alors $1/f$ est continue en $a$.
-   **Composition :** Si $f: I \to J$ est continue en $a \in I$ et $g: J \to \mathbb{R}$ est continue en $f(a) \in J$, alors la fonction composée $g \circ f$ est continue en $a$.
-   **Prolongement par continuité :** Si une fonction $f$ est définie et continue sur un intervalle de la forme $]a, b[$ et admet une limite finie $l$ en $a$, on peut la "prolonger" en une fonction $\tilde{f}$ continue sur $[a, b[$ en posant $\tilde{f}(a) = l$ et $\tilde{f}(x) = f(x)$ pour $x \in ]a, b[$.

### Exemples

**Exemple 1 : Les fonctions usuelles**

Les fonctions polynomiales, la fonction exponentielle, les fonctions sinus et cosinus sont continues sur $\mathbb{R}$. Les fonctions rationnelles (quotients de polynômes) sont continues sur leur domaine de définition. La fonction logarithme népérien est continue sur $]0, +\infty[$.

Par exemple, la fonction $f(x) = 3x^3 - 2x + 5$ est continue en tout point de $\mathbb{R}$.

**Exemple 2 : Prolongement par continuité**

Soit la fonction $f(x) = \frac{\sin(x)}{x}$ définie sur $\mathbb{R}^*$. Cette fonction est continue sur son domaine de définition.

On sait que $\lim_{x\to 0} \frac{\sin(x)}{x} = 1$. La limite en 0 est finie.

On peut donc prolonger $f$ par continuité en 0 en définissant une nouvelle fonction $\tilde{f}$ sur $\mathbb{R}$ entier :

$$ \tilde{f}(x) = \begin{cases} \frac{\sin(x)}{x} & \text{si } x \neq 0 \\ 1 & \text{si } x = 0 \end{cases} $$

Cette fonction $\tilde{f}$ est continue sur $\mathbb{R}$.

**Exemple 3 : Une fonction définie par morceaux**

Considérons la fonction $f$ définie par :

$$ f(x) = \begin{cases} x^2 + 1 & \text{si } x \ge 1 \\ 2x & \text{si } x < 1 \end{cases} $$

Cette fonction est clairement continue pour $x \neq 1$. Étudions la continuité en $a=1$.

-   $f(1) = 1^2 + 1 = 2$.
-   Limite à droite : $\lim_{x\to 1^+} f(x) = \lim_{x\to 1^+} (x^2 + 1) = 2$.
-   Limite à gauche : $\lim_{x\to 1^-} f(x) = \lim_{x\to 1^-} (2x) = 2$.

Les limites à gauche et à droite sont égales à $f(1)$. Donc $f$ est continue en 1. La fonction est donc continue sur $\mathbb{R}$.

### Contre-exemples

**Contre-exemple 1 : Une discontinuité de première espèce (saut)**

Soit la fonction $f$ de l'Exemple 13 du cours : $f(x) = 1$ si $x \ge 0$ et $f(x) = 0$ si $x < 0$.

-   $f(0) = 1$.
-   $\lim_{x\to 0^+} f(x) = 1$.
-   $\lim_{x\to 0^-} f(x) = 0$.

La limite à gauche est différente de $f(0)$, donc la fonction n'est pas continue en 0. On observe un "saut" dans le graphe.

**Contre-exemple 2 : Une fonction non prolongeable par continuité**

Soit la fonction $g(x) = \frac{1}{x}$ sur $\mathbb{R}^*$.

$\lim_{x\to 0^+} \frac{1}{x} = +\infty$ et $\lim_{x\to 0^-} \frac{1}{x} = -\infty$.

La fonction n'admet pas de limite finie en 0. Il est donc impossible de la prolonger par continuité en ce point.

### Concepts Connexes

-   **Théorème des valeurs intermédiaires** et **Théorème des bornes atteintes** : Ce sont des propriétés fondamentales des fonctions continues sur des intervalles fermés et bornés (segments).
-   **Dérivabilité** : Toute fonction dérivable en un point est nécessairement continue en ce point. La réciproque est fausse.
-   **Intégrabilité** : Toute fonction continue sur un segment $[a,b]$ est intégrable sur ce segment.

### Applications

-   La continuité est une hypothèse cruciale dans de nombreux théorèmes d'analyse (TVI, Rolle, accroissements finis, etc.).
-   En modélisation, elle représente des processus qui évoluent sans changement brutal. Par exemple, la température ou la position d'un objet en mouvement sont généralement modélisées par des fonctions continues.

---

## Concept 3: Théorèmes fondamentaux des fonctions continues sur un segment

### Prérequis

-   Concept 2: Continuité d'une fonction.
-   Notion de segment $[a, b]$.
-   Notions de borne supérieure (sup) et borne inférieure (inf).

### Définition

Ce concept regroupe deux théorèmes majeurs qui décrivent le comportement des fonctions continues sur un intervalle fermé et borné, appelé **segment**.

1.  **Théorème des Valeurs Intermédiaires (TVI)**

    **Hypothèses :** Soit $f$ une fonction continue sur un segment $[a, b]$.

    **Conclusion :** Pour tout réel $y$ compris entre $f(a)$ et $f(b)$, il existe au moins un réel $c$ dans le segment $[a, b]$ tel que $f(c) = y$.

    Autrement dit, la fonction prend toutes les valeurs intermédiaires entre $f(a)$ et $f(b)$.

2.  **Théorème des Bornes Atteintes**

    **Hypothèses :** Soit $f$ une fonction continue sur un segment $[a, b]$.

    **Conclusion :** La fonction $f$ est bornée sur $[a, b]$ (c'est-à-dire qu'il existe $m$ et $M$ tels que $m \le f(x) \le M$ pour tout $x \in [a, b]$). De plus, elle atteint ses bornes : il existe $x_{min} \in [a, b]$ tel que $f(x_{min})$ est le minimum de $f$ sur $[a, b]$, et il existe $x_{max} \in [a, b]$ tel que $f(x_{max})$ est le maximum de $f$ sur $[a, b]$.

### Propriétés Clés

-   **Image d'un intervalle :** L'image d'un intervalle $I$ par une fonction continue $f$ est un intervalle $J = f(I)$.
-   **Image d'un segment :** Une conséquence directe des deux théorèmes est que l'image d'un segment $[a, b]$ par une fonction continue est un segment $[m, M]$, où $m$ est le minimum de $f$ et $M$ est son maximum sur $[a, b]$.
-   **Corollaire du TVI (Théorème de Bolzano) :** Si $f$ est continue sur $[a, b]$ et si $f(a)$ et $f(b)$ sont de signes opposés (c'est-à-dire $f(a)f(b) < 0$), alors il existe au moins un $c \in ]a, b[$ tel que $f(c) = 0$. Ce corollaire est très utile pour prouver l'existence de solutions à des équations.

### Exemples

**Exemple 1 : Existence d'une solution (TVI)**

Montrons que l'équation $x^3 + 2x - 5 = 0$ admet au moins une solution dans l'intervalle $[1, 2]$.

Soit $f(x) = x^3 + 2x - 5$.

-   La fonction $f$ est une fonction polynomiale, elle est donc continue sur $\mathbb{R}$, et en particulier sur le segment $[1, 2]$.
-   Calculons les valeurs aux bornes : $f(1) = 1^3 + 2(1) - 5 = -2$ et $f(2) = 2^3 + 2(2) - 5 = 8 + 4 - 5 = 7$.
-   Le nombre $y=0$ est bien compris entre $f(1)=-2$ et $f(2)=7$.
-   D'après le Théorème des Valeurs Intermédiaires, il existe donc un $c \in [1, 2]$ tel que $f(c) = 0$.

**Exemple 2 : Existence d'un maximum et minimum (Bornes Atteintes)**

Soit la fonction $f(x) = x^2 - 4x + 3$ sur le segment $[0, 3]$.

-   $f$ est continue sur $[0, 3]$ car c'est un polynôme.
-   Le théorème des bornes atteintes nous garantit que $f$ admet un minimum et un maximum sur cet intervalle.
-   Pour les trouver, on étudie les variations. $f'(x) = 2x-4$, qui s'annule en $x=2$.
-   On compare les valeurs aux points critiques et aux bornes : $f(0)=3$, $f(2) = 4 - 8 + 3 = -1$, et $f(3) = 9 - 12 + 3 = 0$.
-   Le maximum est $M=3$, atteint en $x_{max}=0$. Le minimum est $m=-1$, atteint en $x_{min}=2$.
-   L'image du segment $[0, 3]$ est le segment $[-1, 3]$.

**Exemple 3 : Image d'un intervalle**

Soit $f(x) = e^x$ sur l'intervalle $I = ]-\infty, 1]$. $f$ est continue sur $I$.

-   $\lim_{x\to-\infty} f(x) = 0$.
-   $f(1) = e^1 = e$.
-   La fonction exponentielle est croissante.

L'image de l'intervalle $I=]-\infty, 1]$ est donc l'intervalle $J = ]0, e]$. C'est bien un intervalle.

### Contre-exemples

**Contre-exemple 1 : Fonction non continue**

Soit $f(x)$ définie sur $[0, 2]$ par $f(x) = 0$ si $x \in [0, 1]$ et $f(x) = 2$ si $x \in ]1, 2]$.

-   $f(0) = 0$ et $f(2) = 2$.
-   La valeur $y=1$ est bien entre $f(0)$ et $f(2)$, mais il n'existe aucun $c \in [0, 2]$ tel que $f(c)=1$. Le TVI ne s'applique pas car $f$ n'est pas continue en 1.

**Contre-exemple 2 : Intervalle non fermé (non-atteinte des bornes)**

Soit $f(x) = x$ sur l'intervalle ouvert $I = ]0, 1[$.

-   $f$ est continue sur $I$.
-   L'ensemble des valeurs de $f$ sur $I$ est $]0, 1[$.
-   La borne supérieure des valeurs est 1, mais elle n'est jamais atteinte (il n'y a pas de $x \in ]0, 1[$ tel que $f(x)=1$). De même pour la borne inférieure 0. Le théorème des bornes atteintes ne s'applique pas car l'intervalle n'est pas un segment.

### Concepts Connexes

-   **Suite convergente (Théorème de Bolzano-Weierstrass)** : La preuve du théorème des bornes atteintes repose sur l'extraction d'une sous-suite convergente d'une suite bornée.
-   **Dérivabilité** : Le théorème de Rolle, un résultat clé sur les fonctions dérivables, est une conséquence du théorème des bornes atteintes.

### Applications

-   **Résolution d'équations** : Le TVI est un outil théorique fondamental pour prouver l'existence de solutions, ce qui justifie la recherche de ces solutions par des méthodes numériques (dichotomie).
-   **Optimisation** : Le théorème des bornes atteintes garantit l'existence d'un optimum (maximum ou minimum) pour une fonction continue sur un domaine "compact" (généralisation d'un segment), ce qui est à la base de nombreux problèmes d'optimisation en sciences, ingénierie et économie.

---

## Concept 4: Dérivabilité d'une fonction en un point

### Prérequis

-   Concept 1: Limite d'une fonction en un point.
-   Notion de taux d'accroissement.

### Définition

Soit $f$ une fonction définie sur un intervalle $I$ et soit $a$ un point de $I$.

On dit que **la fonction $f$ est dérivable en $a$** si le taux d'accroissement de $f$ entre $a$ et $x$ admet une limite finie lorsque $x$ tend vers $a$.

Ce taux d'accroissement est le quotient $\frac{f(x) - f(a)}{x - a}$.

La limite, si elle existe et est finie, est appelée le **nombre dérivé** de $f$ en $a$, et est notée $f'(a)$.

$$ f'(a) = \lim_{x\to a} \frac{f(x) - f(a)}{x - a} $$

On dit que **la fonction $f$ est dérivable sur $I$** si elle est dérivable en tout point de $I$. La fonction qui à chaque $x \in I$ associe $f'(x)$ est appelée la **fonction dérivée** de $f$.

### Propriétés Clés

-   **Interprétation géométrique :** Le nombre dérivé $f'(a)$ est la pente (ou le coefficient directeur) de la tangente au graphe de la fonction $f$ au point d'abscisse $a$. L'équation de cette tangente est $y = f(a) + f'(a)(x-a)$.
-   **Développement limité d'ordre 1 :** Une fonction $f$ est dérivable en $a$ si et seulement si elle admet un développement limité d'ordre 1 au voisinage de $a$. C'est-à-dire qu'il existe un réel $\alpha$ tel que :

    $$ f(x) = f(a) + \alpha(x-a) + o(x-a) \quad \text{quand } x \to a $$

    Dans ce cas, on a $\alpha = f'(a)$. Cette formulation signifie que la fonction $f$ peut être approximée localement par une fonction affine (sa tangente).

-   **La dérivabilité implique la continuité :** Si une fonction $f$ est dérivable en un point $a$, alors elle est nécessairement continue en $a$. La réciproque est fausse.

### Exemples

**Exemple 1 : Dérivée de la fonction carré**

Soit $f(x) = x^2$. Calculons sa dérivée au point $a=3$.

Le taux d'accroissement est :

$$ \frac{f(x) - f(3)}{x - 3} = \frac{x^2 - 3^2}{x - 3} = \frac{(x-3)(x+3)}{x-3} = x+3 \quad (\text{pour } x \neq 3) $$

On calcule la limite de ce taux lorsque $x$ tend vers 3 :

$$ f'(3) = \lim_{x\to 3} (x+3) = 6. $$

La fonction carré est dérivable en 3 et sa dérivée vaut 6.

**Exemple 2 : Dérivée de la fonction racine carrée**

Soit $f(x) = \sqrt{x}$ pour $x \ge 0$. Calculons sa dérivée en un point $a > 0$.

Le taux d'accroissement est :

$$ \frac{\sqrt{x} - \sqrt{a}}{x - a} = \frac{\sqrt{x} - \sqrt{a}}{(\sqrt{x} - \sqrt{a})(\sqrt{x} + \sqrt{a})} = \frac{1}{\sqrt{x} + \sqrt{a}} \quad (\text{pour } x \neq a) $$

On calcule la limite lorsque $x$ tend vers $a$ :

$$ f'(a) = \lim_{x\to a} \frac{1}{\sqrt{x} + \sqrt{a}} = \frac{1}{\sqrt{a} + \sqrt{a}} = \frac{1}{2\sqrt{a}}. $$

La fonction est dérivable pour tout $a > 0$.

**Exemple 3 : Développement limité d'ordre 1**

Pour la fonction $f(x) = \sin(x)$ au voisinage de $a=0$.

On sait que $\sin(0)=0$ et $\cos(0)=1$, donc on s'attend à $f'(0)=1$.

Le développement limité connu de $\sin(x)$ en 0 est $\sin(x) = x + o(x)$.

Ceci s'écrit aussi $\sin(x) = \sin(0) + 1 \cdot (x-0) + o(x-0)$.

On identifie directement $f'(0)=1$.

### Contre-exemples

**Contre-exemple 1 : La fonction valeur absolue**

Soit $f(x) = |x|$. Étudions la dérivabilité en $a=0$.

Le taux d'accroissement est $\frac{|x| - |0|}{x - 0} = \frac{|x|}{x}$.

-   Si $x > 0$, le taux vaut $\frac{x}{x} = 1$. La limite à droite est donc 1.
-   Si $x < 0$, le taux vaut $\frac{-x}{x} = -1$. La limite à gauche est donc -1.

Les limites à gauche et à droite du taux d'accroissement sont différentes. La fonction n'est donc pas dérivable en 0. Elle est continue en 0, mais pas dérivable : le graphe présente un "point anguleux".

**Contre-exemple 2 : Une tangente verticale**

Soit $f(x) = \sqrt{x}$ en $a=0$.

Le taux d'accroissement pour $x > 0$ est :

$$ \frac{\sqrt{x} - \sqrt{0}}{x - 0} = \frac{\sqrt{x}}{x} = \frac{1}{\sqrt{x}} $$

Lorsque $x$ tend vers $0^+$, ce taux tend vers $+\infty$. La limite n'est pas finie.

La fonction n'est donc pas dérivable en 0. Géométriquement, la courbe admet une tangente verticale en ce point.

### Concepts Connexes

-   **Continuité :** La dérivabilité est une condition plus forte que la continuité.
-   **Théorème des accroissements finis :** Ce théorème relie la variation globale d'une fonction sur un intervalle à la valeur de sa dérivée en un point de cet intervalle.
-   **Développement de Taylor :** Le développement limité d'ordre 1 est le premier pas vers les développements de Taylor d'ordre supérieur, qui permettent d'approximer une fonction par des polynômes.

### Applications

-   **Optimisation :** Trouver les maxima et minima d'une fonction en cherchant les points où sa dérivée s'annule.
-   **Physique :** La dérivée représente des taux de variation instantanés : vitesse (dérivée de la position), accélération (dérivée de la vitesse), courant électrique (dérivée de la charge), etc.
-   **Méthode de Newton :** Un algorithme puissant pour trouver des zéros d'une fonction, qui utilise la dérivée pour construire une suite d'approximations.

---

## Concept 5: Opérations sur les fonctions dérivables

### Prérequis

-   Concept 4: Dérivabilité d'une fonction en un point.

### Définition

Ce concept n'est pas une définition unique, mais un ensemble de règles (propositions) permettant de calculer la dérivée de fonctions construites à partir de fonctions plus simples.

**Hypothèses :** Soient $f$ et $g$ deux fonctions dérivables en un point $a$ (ou sur un intervalle $I$).

### Propriétés Clés (Règles de dérivation)

1.  **Dérivée d'une somme :** La fonction somme $f+g$ est dérivable en $a$ et :

    $$ (f+g)'(a) = f'(a) + g'(a) $$

2.  **Dérivée d'un produit par un scalaire :** Pour tout réel $\lambda$, la fonction $\lambda f$ est dérivable en $a$ et :

    $$ (\lambda f)'(a) = \lambda f'(a) $$

3.  **Dérivée d'un produit (Règle de Leibniz) :** La fonction produit $f \times g$ est dérivable en $a$ et :

    $$ (fg)'(a) = f'(a)g(a) + f(a)g'(a) $$

4.  **Dérivée d'un inverse :** Si de plus $f(a) \neq 0$, la fonction $1/f$ est dérivable en $a$ et :

    $$ \left(\frac{1}{f}\right)'(a) = -\frac{f'(a)}{f(a)^2} $$

5.  **Dérivée d'un quotient :** Si de plus $g(a) \neq 0$, la fonction $f/g$ est dérivable en $a$ et :

    $$ \left(\frac{f}{g}\right)'(a) = \frac{f'(a)g(a) - f(a)g'(a)}{g(a)^2} $$

6.  **Dérivée d'une composée (Règle de la chaîne) :** Soit $f: I \to J$ dérivable en $a$ et $g: J \to \mathbb{R}$ dérivable en $f(a)$. Alors la fonction composée $g \circ f$ est dérivable en $a$ et :

    $$ (g \circ f)'(a) = g'(f(a)) \times f'(a) $$

### Exemples

**Exemple 1 : Dérivée d'un polynôme**

Soit $P(x) = 5x^3 - 2x^2 + 7$.

En utilisant les règles de la somme, du produit par un scalaire, et la formule connue $(x^n)'=nx^{n-1}$ :

$P'(x) = (5x^3)' - (2x^2)' + (7)'$

$P'(x) = 5(x^3)' - 2(x^2)' + 0$

$P'(x) = 5(3x^2) - 2(2x) = 15x^2 - 4x$.

**Exemple 2 : Dérivée d'une fraction rationnelle**

Soit $h(x) = \frac{x^2+1}{2x-3}$. On pose $f(x)=x^2+1$ et $g(x)=2x-3$.

$f'(x) = 2x$ et $g'(x)=2$.

En utilisant la formule du quotient :

$h'(x) = \frac{f'(x)g(x) - f(x)g'(x)}{g(x)^2} = \frac{(2x)(2x-3) - (x^2+1)(2)}{(2x-3)^2}$

$h'(x) = \frac{4x^2 - 6x - 2x^2 - 2}{(2x-3)^2} = \frac{2x^2 - 6x - 2}{(2x-3)^2}$.

**Exemple 3 : Dérivée d'une fonction composée**

Soit $k(x) = \sin(x^3)$. C'est la composée $g \circ f$ avec $f(x)=x^3$ et $g(y)=\sin(y)$.

On a $f'(x) = 3x^2$ et $g'(y)=\cos(y)$.

La règle de la chaîne donne :

$k'(x) = g'(f(x)) \times f'(x) = \cos(x^3) \times (3x^2) = 3x^2 \cos(x^3)$.

Un autre exemple : $l(x) = \sqrt{1+x^2} = (1+x^2)^{1/2}$.

C'est $g \circ f$ avec $f(x)=1+x^2$ et $g(y)=\sqrt{y}=y^{1/2}$.

$f'(x)=2x$ et $g'(y)=\frac{1}{2\sqrt{y}} = \frac{1}{2}y^{-1/2}$.

$l'(x) = g'(f(x)) \times f'(x) = \frac{1}{2\sqrt{1+x^2}} \times (2x) = \frac{x}{\sqrt{1+x^2}}$.

### Contre-exemples

Il n'y a pas de "contre-exemples" à ces règles qui sont des théorèmes. Les erreurs courantes viennent d'une mauvaise application de ces règles.

**Erreur 1 : Oublier la règle du produit**

L'erreur classique est de penser que la dérivée d'un produit est le produit des dérivées :

$(fg)' \neq f'g'$.

Par exemple, pour $f(x)=x$ et $g(x)=x^2$, on a $(fg)(x) = x^3$, donc $(fg)'(x) = 3x^2$.

Cependant, $f'(x)=1$ et $g'(x)=2x$, donc $f'(x)g'(x) = 2x$, ce qui est différent de $3x^2$.

**Erreur 2 : Oublier le terme intérieur dans la règle de la chaîne**

L'erreur est d'oublier le facteur $f'(a)$ dans la formule $(g \circ f)'(a) = g'(f(a)) \times f'(a)$.

Par exemple, pour dériver $\sin(2x)$, on pourrait penser que la dérivée est $\cos(2x)$. C'est faux.

La formule correcte donne $(\sin(2x))' = \cos(2x) \times (2x)' = 2\cos(2x)$.

### Concepts Connexes

-   **Toutes les techniques de dérivation :** Ces règles sont la boîte à outils de base pour calculer la dérivée de presque toutes les fonctions rencontrées en pratique.
-   **Intégration par parties :** Cette technique d'intégration est la "version intégrale" de la formule de dérivation d'un produit.

### Applications

-   Ces règles permettent d'étudier les variations de fonctions complexes en calculant le signe de leur dérivée.
-   Elles sont essentielles en physique et en ingénierie pour dériver des équations qui modélisent des systèmes (par exemple, dériver l'énergie pour obtenir la puissance).
-   En optimisation, on les utilise pour trouver les zéros de la dérivée (points critiques) de la fonction que l'on souhaite optimiser.

---

## Concept 6: Théorèmes de Rolle et des accroissements finis

### Prérequis

-   Concept 3: Théorèmes fondamentaux des fonctions continues sur un segment.
-   Concept 4: Dérivabilité d'une fonction en un point.

### Définition

Ces théorèmes établissent un lien fondamental entre la valeur globale d'une fonction sur un intervalle et la valeur locale de sa dérivée.

1.  **Condition nécessaire d'extremum local**

    **Hypothèses :** Soit $f$ une fonction définie sur un intervalle **ouvert** $]a, b[$ et dérivable en un point $c \in ]a, b[$. Si $f$ admet un extremum local (maximum ou minimum) en $c$.

    **Conclusion :** Alors $f'(c) = 0$.

    Géométriquement, cela signifie que la tangente à la courbe en un point d'extremum local est horizontale.

2.  **Théorème de Rolle**

    **Hypothèses :** Soit $f$ une fonction continue sur un segment $[a, b]$, dérivable sur l'intervalle ouvert $]a, b[$, et telle que $f(a) = f(b)$.

    **Conclusion :** Alors il existe au moins un point $c \in ]a, b[$ tel que $f'(c) = 0$.

3.  **Théorème des accroissements finis (TAF)**

    **Hypothèses :** Soit $f$ une fonction continue sur un segment $[a, b]$ et dérivable sur l'intervalle ouvert $]a, b[$.

    **Conclusion :** Alors il existe au moins un point $c \in ]a, b[$ tel que :

    $$ f(b) - f(a) = f'(c)(b-a) $$

    Géométriquement, cela signifie qu'il existe un point sur la courbe où la tangente est parallèle à la sécante joignant les points $(a, f(a))$ et $(b, f(b))$.

### Propriétés Clés

-   **Inégalité des accroissements finis :** Si la dérivée est bornée sur $]a, b[$, c'est-à-dire s'il existe $M \ge 0$ tel que $|f'(x)| \le M$ pour tout $x \in ]a, b[$, alors :

    $$ |f(b) - f(a)| \le M |b-a| $$

    Ceci permet de contrôler la variation de la fonction par une borne sur sa dérivée.

-   **Lien entre le signe de la dérivée et la monotonie :** Soit $f$ dérivable sur un intervalle $I$.
    -   $f$ est croissante sur $I \iff f'(x) \ge 0$ pour tout $x \in I$.
    -   $f$ est décroissante sur $I \iff f'(x) \le 0$ pour tout $x \in I$.
    -   $f$ est constante sur $I \iff f'(x) = 0$ pour tout $x \in I$.
    -   Si $f'(x) > 0$ pour tout $x \in I$, alors $f$ est strictement croissante sur $I$.

### Exemples

**Exemple 1 : Théorème de Rolle**

Soit $f(x) = x^2 - 4x + 3$ sur le segment $[1, 3]$.

-   $f$ est continue sur $[1, 3]$ et dérivable sur $]1, 3[$ (polynôme).
-   $f(1) = 1-4+3=0$ et $f(3) = 9-12+3=0$. Donc $f(1)=f(3)$.
-   Les hypothèses du théorème de Rolle sont vérifiées. Il existe donc $c \in ]1, 3[$ tel que $f'(c)=0$.
-   En effet, $f'(x) = 2x-4$. L'équation $f'(c)=0$ donne $2c-4=0$, soit $c=2$. Le point $c=2$ est bien dans l'intervalle $]1, 3[$.

**Exemple 2 : Théorème des accroissements finis**

Soit $f(x) = \ln(x)$ sur le segment $[1, e]$.

-   $f$ est continue sur $[1, e]$ et dérivable sur $]1, e[$.
-   Le TAF garantit qu'il existe $c \in ]1, e[$ tel que $f(e)-f(1) = f'(c)(e-1)$.
-   $f(e) = \ln(e) = 1$ et $f(1) = \ln(1) = 0$.
-   $f'(x) = 1/x$.
-   L'égalité devient $1 - 0 = \frac{1}{c}(e-1)$, ce qui donne $c = e-1$.
-   On vérifie que $c = e-1 \approx 1.718$ est bien dans l'intervalle $]1, e[$.

**Exemple 3 : Inégalité des accroissements finis**

Montrons que pour tout $x \in \mathbb{R}$, $|\sin(x)| \le |x|$.

Soit $f(t) = \sin(t)$. Pour $x>0$, on applique l'inégalité des accroissements finis sur $[0, x]$.

$f'(t) = \cos(t)$, donc $|f'(t)| = |\cos(t)| \le 1$. La borne $M$ est 1.

L'inégalité donne : $|\sin(x) - \sin(0)| \le 1 \cdot |x - 0|$.

Comme $\sin(0)=0$, on obtient $|\sin(x)| \le x$.

Pour $x<0$, on applique sur $[x, 0]$ et on obtient $|\sin(0) - \sin(x)| \le 1 \cdot |0 - x|$, soit $|-\sin(x)| \le -x$, ce qui est $|\sin(x)| \le |x|$. Pour $x=0$, l'inégalité est triviale.

### Contre-exemples

**Contre-exemple 1 : Non-dérivabilité (pour Rolle)**

Soit $f(x)=|x|$ sur $[-1, 1]$.

-   $f$ est continue sur $[-1, 1]$.
-   $f(-1)=1$ et $f(1)=1$, donc $f(-1)=f(1)$.
-   Cependant, $f$ n'est pas dérivable en 0.
-   Il n'existe aucun point $c \in ]-1, 1[$ où la dérivée s'annule (elle vaut -1 ou 1 partout où elle est définie). Le théorème de Rolle ne s'applique pas.

**Contre-exemple 2 : Un extremum au bord**

Soit $f(x)=x$ sur le segment $[0, 1]$.

Le maximum de $f$ est 1, atteint en $x=1$. Mais $f'(1)=1 \neq 0$.

La condition $f'(c)=0$ pour un extremum n'est valable que si l'extremum est atteint à l'**intérieur** d'un intervalle ouvert. Ici, il est atteint à la borne.

### Concepts Connexes

-   **Optimisation de fonctions :** La recherche de points critiques (où la dérivée s'annule) est la première étape de l'étude des variations d'une fonction.
-   **Formule de Taylor :** Le théorème des accroissements finis est le cas $n=0$ de la formule de Taylor-Lagrange.

### Applications

-   **Analyse de fonctions :** Permet de déterminer rigoureusement les intervalles de croissance et de décroissance d'une fonction.
-   **Démonstration d'inégalités :** L'inégalité des accroissements finis est un outil très puissant pour majorer des expressions complexes.
-   **Convergence de suites :** Elle est utilisée pour prouver la convergence de certaines suites récurrentes (théorème du point fixe).

---

## Concept 7: Théorème de la bijection et fonctions réciproques

### Prérequis

-   Concept 2: Continuité d'une fonction.
-   Concept 6: Lien entre signe de la dérivée et monotonie.
-   Notions d'application injective, surjective, bijective.

### Définition

Le **théorème de la bijection** établit des conditions sous lesquelles une fonction admet une fonction réciproque, et décrit les propriétés de cette réciproque.

**Hypothèses :** Soit $f$ une fonction **continue** et **strictement monotone** (strictement croissante ou strictement décroissante) sur un intervalle $I$.

Soit $J = f(I)$ l'intervalle image de $I$ par $f$.

**Conclusion :**

1.  La fonction $f$ réalise une **bijection** de l'intervalle $I$ vers l'intervalle $J$.
2.  Cela signifie que pour tout $y \in J$, l'équation $f(x)=y$ admet une **unique** solution $x \in I$.
3.  On peut donc définir une **fonction réciproque** $f^{-1}$ de $J$ vers $I$, qui à chaque $y \in J$ associe cette unique solution $x$.

    $$ \forall y \in J, \forall x \in I, \quad y = f(x) \iff x = f^{-1}(y) $$

### Propriétés Clés de la fonction réciproque $f^{-1}$

-   **Continuité :** La fonction réciproque $f^{-1}$ est continue sur l'intervalle $J$.
-   **Monotonie :** La fonction réciproque $f^{-1}$ est strictement monotone sur $J$, et a le même sens de variation que $f$.
-   **Dérivabilité :**
    -   **Hypothèses :** Si de plus $f$ est dérivable en un point $a \in I$ et si $f'(a) \neq 0$.
    -   **Conclusion :** Alors $f^{-1}$ est dérivable au point $b = f(a) \in J$, et sa dérivée est donnée par :

        $$ (f^{-1})'(b) = \frac{1}{f'(a)} = \frac{1}{f'(f^{-1}(b))} $$

-   **Graphe :** Le graphe de la fonction $f^{-1}$ est le symétrique du graphe de la fonction $f$ par rapport à la droite d'équation $y=x$ (la première bissectrice).

### Exemples

**Exemple 1 : La fonction exponentielle et le logarithme**

Soit $f(x) = e^x$.

-   $f$ est continue sur $I=\mathbb{R}$.
-   $f'(x) = e^x > 0$, donc $f$ est strictement croissante sur $\mathbb{R}$.
-   L'intervalle image est $J = f(\mathbb{R}) = ]0, +\infty[$.
-   Le théorème de la bijection s'applique. $f$ admet une fonction réciproque $f^{-1}$ de $]0, +\infty[$ vers $\mathbb{R}$. Cette fonction est le logarithme népérien, $f^{-1}(y) = \ln(y)$.
-   Calcul de la dérivée : Soit $b \in ]0, +\infty[$. Posons $a = \ln(b)$, donc $e^a = b$.

    $(\ln)'(b) = (f^{-1})'(b) = \frac{1}{f'(a)} = \frac{1}{e^a} = \frac{1}{b}$. On retrouve la dérivée connue du logarithme.

**Exemple 2 : La fonction carré et la racine carrée**

Soit $f(x) = x^2$. Cette fonction n'est pas monotone sur $\mathbb{R}$.

-   Restreignons-la à l'intervalle $I = [0, +\infty[$. Sur $I$, $f$ est continue et strictement croissante.
-   L'intervalle image est $J = f(I) = [0, +\infty[$.
-   $f$ réalise une bijection de $I$ vers $J$. Sa réciproque est la fonction racine carrée, $f^{-1}(y) = \sqrt{y}$.
-   Dérivée : $f'(x) = 2x$. Pour $a>0$, $f'(a) \neq 0$. Soit $b = f(a) = a^2$.

    $(\sqrt{\cdot})'(b) = (f^{-1})'(b) = \frac{1}{f'(a)} = \frac{1}{2a}$.

    Comme $a = \sqrt{b}$, on a $(\sqrt{\cdot})'(b) = \frac{1}{2\sqrt{b}}$.

**Exemple 3 : La fonction cube**

Soit $f(x) = x^3$ sur $I=\mathbb{R}$.

-   $f$ est continue et strictement croissante sur $\mathbb{R}$ (car $f'(x)=3x^2 \ge 0$, et ne s'annule qu'en 0).
-   L'intervalle image est $J=\mathbb{R}$.
-   Sa réciproque est la fonction racine cubique, $f^{-1}(y) = \sqrt[3]{y} = y^{1/3}$.
-   Dérivabilité : $f'(x)=3x^2$. Cette dérivée s'annule en $x=0$.
    -   Pour $a \neq 0$, $f'(a) \neq 0$, donc la racine cubique est dérivable en $b=a^3$.
    -   En $a=0$, $f'(0)=0$. La formule de dérivation ne s'applique pas. En $b=f(0)=0$, la fonction racine cubique n'est pas dérivable (le graphe a une tangente verticale).

### Contre-exemples

**Contre-exemple 1 : Fonction non monotone**

Soit $f(x) = x^2$ sur $I = [-1, 1]$.

$f$ est continue, mais n'est pas strictement monotone. Elle est décroissante sur $[-1, 0]$ et croissante sur $[0, 1]$.

Elle n'est pas bijective : par exemple, $f(-1) = 1$ et $f(1) = 1$. Le théorème ne s'applique pas.

**Contre-exemple 2 : Fonction non continue**

Soit $f(x)$ définie sur $[0, 2]$ par $f(x)=x$ si $x \in [0, 1]$ et $f(x)=x+1$ si $x \in ]1, 2]$.

-   Cette fonction est strictement croissante.
-   Cependant, elle n'est pas continue en $x=1$.
-   L'image de $[0, 2]$ est $[0, 1] \cup ]2, 3]$. Ce n'est pas un intervalle.

Le théorème ne s'applique pas.

### Concepts Connexes

-   **Fonctions trigonométriques réciproques :** arcsin, arccos, arctan sont définies en appliquant le théorème de la bijection aux fonctions trigonométriques sur des intervalles bien choisis.
-   **Changement de variable dans les intégrales :** La formule de dérivation de la réciproque est liée à la formule de changement de variable.

### Applications

-   **Définition de nouvelles fonctions :** Ce théorème est un outil puissant pour construire de nouvelles fonctions (logarithme, fonctions trigonométriques inverses, etc.) à partir de fonctions connues, et pour établir leurs propriétés.
-   **Résolution d'équations :** L'existence et l'unicité de la solution à $f(x)=y$ sont garanties par le théorème.

---

## Concept 8: Fonctions trigonométriques réciproques

### Prérequis

-   Concept 7: Théorème de la bijection.
-   Connaissance des fonctions trigonométriques : sinus, cosinus, tangente (graphes, propriétés, dérivées).

### Définition

Les fonctions trigonométriques ne sont pas monotones sur $\mathbb{R}$, donc elles n'admettent pas de réciproque globale. On les définit en restreignant leur domaine de définition à un intervalle où elles sont continues et strictement monotones.

1.  **Fonction Arcsinus ($\arcsin$)**
    -   On restreint la fonction **sinus** à l'intervalle $I = [-\pi/2, \pi/2]$. Sur cet intervalle, sinus est continue et strictement croissante.
    -   Son image est $J = [-1, 1]$.
    -   La fonction **arcsinus** est la réciproque de cette restriction.

        $$ \arcsin : [-1, 1] \to [-\pi/2, \pi/2] $$

    -   Pour $x \in [-1, 1]$, $\arcsin(x)$ est l'**unique** angle $y \in [-\pi/2, \pi/2]$ tel que $\sin(y) = x$.

2.  **Fonction Arccosinus ($\arccos$)**
    -   On restreint la fonction **cosinus** à l'intervalle $I = [0, \pi]$. Sur cet intervalle, cosinus est continue et strictement décroissante.
    -   Son image est $J = [-1, 1]$.
    -   La fonction **arccosinus** est la réciproque de cette restriction.

        $$ \arccos : [-1, 1] \to [0, \pi] $$

    -   Pour $x \in [-1, 1]$, $\arccos(x)$ est l'**unique** angle $y \in [0, \pi]$ tel que $\cos(y) = x$.

3.  **Fonction Arctangente ($\arctan$)**
    -   On restreint la fonction **tangente** à l'intervalle $I = ]-\pi/2, \pi/2[$. Sur cet intervalle, tangente est continue et strictement croissante.
    -   Son image est $J = \mathbb{R}$.
    -   La fonction **arctangente** est la réciproque de cette restriction.

        $$ \arctan : \mathbb{R} \to ]-\pi/2, \pi/2[ $$

    -   Pour $x \in \mathbb{R}$, $\arctan(x)$ est l'**unique** angle $y \in ]-\pi/2, \pi/2[$ tel que $\tan(y) = x$.

### Propriétés Clés

| Fonction                      | Domaine          | Image                 | Monotonie             | Dérivée (sur domaine ouvert)                               |

| ----------------------------- | ---------------- | --------------------- | --------------------- | ---------------------------------------------------------- |

| $\arcsin(x)$                  | $[-1, 1]$        | $[-\pi/2, \pi/2]$     | Strictement croissante | $\frac{1}{\sqrt{1-x^2}}$ sur $]-1, 1[$                      |

| $\arccos(x)$                  | $[-1, 1]$        | $[0, \pi]$            | Strictement décroissante | $-\frac{1}{\sqrt{1-x^2}}$ sur $]-1, 1[$                     |

| $\arctan(x)$                  | $\mathbb{R}$     | $]-\pi/2, \pi/2[$     | Strictement croissante | $\frac{1}{1+x^2}$ sur $\mathbb{R}$                             |

-   **Limites de arctan :** $\lim_{x\to+\infty} \arctan(x) = \pi/2$ et $\lim_{x\to-\infty} \arctan(x) = -\pi/2$.
-   **Relation :** Pour tout $x \in [-1, 1]$, on a $\arcsin(x) + \arccos(x) = \pi/2$.

### Exemples

**Exemple 1 : Calcul de valeurs**

-   Calculer $\arcsin(1/2)$ : On cherche l'angle $y \in [-\pi/2, \pi/2]$ tel que $\sin(y) = 1/2$. Cet angle est $y=\pi/6$.
-   Calculer $\arccos(-\sqrt{2}/2)$ : On cherche l'angle $y \in [0, \pi]$ tel que $\cos(y) = -\sqrt{2}/2$. Cet angle est $y=3\pi/4$.
-   Calculer $\arctan(-1)$ : On cherche l'angle $y \in ]-\pi/2, \pi/2[$ tel que $\tan(y) = -1$. Cet angle est $y=-\pi/4$.

**Exemple 2 : Démonstration de la dérivée de arcsin**

Soit $f(x) = \sin(x)$ sur $[-\pi/2, \pi/2]$. Sa réciproque est $g(y) = \arcsin(y)$.

On a $f'(x) = \cos(x)$. Pour $x \in ]-\pi/2, \pi/2[$, $\cos(x) > 0$.

La formule de dérivation de la réciproque donne, pour $y = \sin(x)$ :

$g'(y) = \frac{1}{f'(x)} = \frac{1}{\cos(x)}$.

On exprime $\cos(x)$ en fonction de $y$. Comme $x \in ]-\pi/2, \pi/2[$, $\cos(x)$ est positif. Donc $\cos(x) = \sqrt{1-\sin^2(x)} = \sqrt{1-y^2}$.

Finalement, $(\arcsin)'(y) = \frac{1}{\sqrt{1-y^2}}$ pour $y \in ]-1, 1[$.

**Exemple 3 : Simplification d'expressions**

Simplifier $\cos(\arcsin(x))$ pour $x \in [-1, 1]$.

Posons $y = \arcsin(x)$. Par définition, $y \in [-\pi/2, \pi/2]$ et $\sin(y)=x$.

On cherche $\cos(y)$. On sait que $\cos^2(y) + \sin^2(y) = 1$, donc $\cos^2(y) = 1 - x^2$.

Comme $y \in [-\pi/2, \pi/2]$, son cosinus est positif ou nul. Donc $\cos(y) = \sqrt{1-x^2}$.

Ainsi, $\cos(\arcsin(x)) = \sqrt{1-x^2}$.

### Contre-exemples

**Erreur 1 : Domaine de définition**

L'expression $\arcsin(3)$ n'a pas de sens, car 3 n'est pas dans le domaine de définition $[-1, 1]$ de arcsinus.

**Erreur 2 : Identité de composition**

L'égalité $\arcsin(\sin(x)) = x$ est **fausse** en général. Elle n'est vraie que si $x$ appartient à l'intervalle de restriction, c'est-à-dire $x \in [-\pi/2, \pi/2]$.

Par exemple, soit $x = \pi$.

$\sin(\pi) = 0$.

$\arcsin(\sin(\pi)) = \arcsin(0) = 0$.

On a bien $0 \neq \pi$.

### Concepts Connexes

-   **Intégration :** Les dérivées de ces fonctions sont des fonctions algébriques. Réciproquement, ces fonctions apparaissent comme primitives de fractions rationnelles ou de fonctions avec des racines carrées. Par exemple, $\int \frac{1}{1+x^2} dx = \arctan(x) + C$.
-   **Nombres complexes :** L'arctangente est liée à l'argument d'un nombre complexe.

### Applications

-   **Géométrie :** Elles permettent de calculer des angles dans des figures. Par exemple, dans un triangle rectangle de côtés $a, b, c$, l'angle opposé au côté $a$ est $\arcsin(a/c)$.
-   **Physique :** Utilisées pour décrire des angles dans des problèmes de mécanique, d'optique (loi de Snell-Descartes) ou d'électricité (déphasage).
-   **Calcul intégral :** Essentielles pour le calcul de nombreuses intégrales par changement de variable trigonométrique.
