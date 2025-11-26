---
id: f8675c36
type: concepts
order: 10
title: Fonctions continues - concepts (A)
tags:
  - fonctions continues
  - limite
  - topologie
  - connexité
  - compacité
  - continuité uniforme
course: Topologie
courseId: 34e61f8e
chapter: Fonctions continues
chapterId: 70ecfb0a
level: regular
createdAt: '2025-11-26T13:08:33.861Z'
---
# Fonctions continues (A)

---

## Concept 1: Domaine de définition d'une fonction de plusieurs variables

### Prérequis

-   Connaissance des fonctions usuelles d'une variable réelle (logarithme, racine carrée, fonctions trigonométriques, etc.) et de leurs domaines de définition.
-   Notion de fonction de plusieurs variables.

### Définition

Soit une fonction $f: D \subseteq \mathbb{R}^n \to \mathbb{R}^p$. L'**ensemble de définition** (ou **domaine de définition**) de la fonction $f$, noté $D_f$, est le plus grand sous-ensemble de $\mathbb{R}^n$ sur lequel l'expression définissant $f(x_1, \dots, x_n)$ est bien définie et a un sens mathématique.

En d'autres termes, c'est l'ensemble de tous les points $x = (x_1, \dots, x_n) \in \mathbb{R}^n$ pour lesquels $f(x)$ peut être calculé.

### Explication Détaillée

Avant toute étude d'une fonction (limite, continuité, dérivation), la première étape cruciale est de déterminer son domaine de définition. Cela revient à identifier toutes les contraintes mathématiques imposées par l'expression de la fonction. Les contraintes les plus courantes sont :

1.  **Dénominateurs non nuls** : Une fraction $\frac{N(x)}{D(x)}$ n'est définie que si son dénominateur $D(x)$ est différent de zéro.
2.  **Arguments de logarithmes strictement positifs** : Une expression $\ln(u(x))$ n'est définie que si son argument $u(x)$ est strictement positif ($u(x) > 0$).
3.  **Arguments de racines carrées positifs ou nuls** : Une expression $\sqrt{u(x)}$ n'est définie que si son argument $u(x)$ est positif ou nul ($u(x) \geq 0$).
4.  **Arguments d'autres fonctions** : D'autres fonctions comme $\tan(u(x))$ ou $\arcsin(u(x))$ ont aussi des contraintes sur leur argument.

Déterminer le domaine de définition consiste donc à traduire ces contraintes en un système d'équations ou d'inéquations sur les variables $(x_1, \dots, x_n)$, puis à décrire géométriquement l'ensemble des solutions dans $\mathbb{R}^n$.

### Exemples

**Exemple 1**

Soit la fonction $f(x, y) = \ln(3 - x^2 - y^2)$.

Pour que le logarithme soit défini, son argument doit être strictement positif.

$$ 3 - x^2 - y^2 > 0 \iff x^2 + y^2 < 3 $$

Le domaine de définition $D_f$ est donc l'ensemble des points $(x,y)$ à l'intérieur du cercle de centre $(0,0)$ et de rayon $\sqrt{3}$. Il s'agit d'une boule ouverte dans $\mathbb{R}^2$.

$$ D_f = \{ (x, y) \in \mathbb{R}^2 \mid x^2 + y^2 < 3 \} = B_2((0,0), \sqrt{3}) $$

**Exemple 2**

Soit la fonction $g(x, y) = \frac{\sqrt{4 - x^2}}{y}$.

Cette fonction impose deux contraintes :

1.  L'argument de la racine carrée doit être positif ou nul : $4 - x^2 \ge 0 \iff x^2 \le 4 \iff -2 \le x \le 2$.
2.  Le dénominateur doit être non nul : $y \neq 0$.

Le domaine de définition est donc l'ensemble des points $(x,y)$ tels que $x$ est dans l'intervalle $[-2, 2]$ et $y$ est différent de zéro. Géométriquement, c'est une bande verticale de largeur 4, centrée sur l'axe des y, privée de l'axe des x.

$$ D_g = \{ (x, y) \in \mathbb{R}^2 \mid -2 \le x \le 2 \text{ et } y \neq 0 \} $$

**Exemple 3**

Soit la fonction $h(x, y, z) = \sqrt{z - x^2 - y^2}$.

La seule contrainte est que l'argument de la racine carrée soit positif ou nul.

$$ z - x^2 - y^2 \ge 0 \iff z \ge x^2 + y^2 $$

Le domaine de définition $D_h$ est l'ensemble des points $(x,y,z)$ de $\mathbb{R}^3$ situés au-dessus ou sur le paraboloïde de révolution d'équation $z = x^2 + y^2$.

### Contre-exemples (Points n'appartenant pas au domaine)

**Contre-exemple 1**

Pour la fonction $f(x, y) = \ln(3 - x^2 - y^2)$ de l'Exemple 1, le point $(2, 1)$ n'est pas dans le domaine de définition car $3 - 2^2 - 1^2 = 3 - 4 - 1 = -2 \le 0$.

**Contre-exemple 2**

Pour la fonction $g(x, y) = \frac{\sqrt{4 - x^2}}{y}$ de l'Exemple 2, le point $(1, 0)$ n'est pas dans le domaine de définition car le dénominateur est nul. Le point $(3, 1)$ n'y est pas non plus car l'argument de la racine serait négatif.

### Concepts Connexes

-   **Prolongement d'une fonction** : Une fois le domaine de définition naturel $D_f$ trouvé, on peut se demander s'il est possible d'attribuer une valeur à la fonction en des points qui ne sont pas dans $D_f$ tout en conservant de bonnes propriétés (comme la continuité). C'est la notion de **prolongement par continuité**.
-   **Ensembles ouverts, fermés, adhérence** : La nature topologique du domaine de définition (ouvert, fermé, etc.) est souvent importante pour l'étude de la fonction.

---

## Concept 2: Limite d'une fonction de plusieurs variables

### Prérequis

-   Notion de norme sur $\mathbb{R}^n$.
-   Notion de distance associée à une norme : $d_N(x, y) = N(x-y)$.
-   Convergence d'une suite dans $\mathbb{R}^n$.
-   Point adhérent à un ensemble.

### Définition

Soit $D \subset \mathbb{R}^n$, $z$ un point adhérent à $D$, et $f : D \to \mathbb{R}^p$ une fonction.

On dit que $f(x)$ **tend vers** $l \in \mathbb{R}^p$ quand $x$ tend vers $z$ si, pour n'importe quel choix de norme sur $\mathbb{R}^n$ et $\mathbb{R}^p$ :

$$

\forall \varepsilon > 0, \exists \delta > 0 : \forall x \in D, (d(x, z) < \delta \implies d(f(x), l) < \varepsilon).

$$

On note alors $\lim_{x\to z} f(x) = l$.

### Explication Détaillée

Cette définition est la généralisation directe de la limite pour les fonctions d'une variable. Elle formalise l'idée intuitive suivante : "on peut rendre $f(x)$ aussi proche que l'on veut de $l$, à condition de prendre $x$ suffisamment proche de $z$".

-   $\varepsilon$ ("epsilon") représente la marge d'erreur tolérée à l'arrivée, c'est-à-dire la proximité souhaitée entre $f(x)$ et la limite $l$. C'est un défi : "Pouvez-vous garantir que $f(x)$ est à une distance inférieure à $\varepsilon$ de $l$ ?".
-   $\delta$ ("delta") représente la proximité requise au départ. La définition dit que pour n'importe quel défi $\varepsilon$, aussi petit soit-il, on peut trouver un $\delta$ correspondant tel que tous les points $x$ dans un rayon $\delta$ autour de $z$ ont leur image $f(x)$ dans un rayon $\varepsilon$ autour de $l$.

Une des propriétés fondamentales en dimension finie est que **la notion de limite ne dépend pas des normes choisies** sur l'espace de départ $\mathbb{R}^n$ et d'arrivée $\mathbb{R}^p$. Cela est dû au fait que toutes les normes sur $\mathbb{R}^n$ (ou $\mathbb{R}^p$) sont équivalentes. On peut donc utiliser la norme qui simplifie le plus les calculs (souvent la norme euclidienne $\| \cdot \|_2$ ou la norme infinie $\| \cdot \|_\infty$).

### Propriétés Clés

1.  **Caractérisation séquentielle** : $\lim_{x\to z} f(x) = l$ si et seulement si pour **toute** suite $(x^k)_{k \in \mathbb{N}}$ de points de $D$ qui converge vers $z$, la suite des images $(f(x^k))_{k \in \mathbb{N}}$ converge vers $l$.
2.  **Unicité de la limite** : Si la limite existe, elle est unique. C'est une conséquence directe de la caractérisation séquentielle et de l'unicité de la limite d'une suite.
3.  **Indépendance du chemin** : Pour que la limite existe, la valeur de $l$ doit être la même quel que soit le "chemin" par lequel $x$ s'approche de $z$. C'est une différence majeure avec les fonctions d'une variable où il n'y a que deux "chemins" (gauche et droite). Dans $\mathbb{R}^n$ avec $n \ge 2$, il y a une infinité de chemins (droites, paraboles, spirales, etc.).

### Exemples

**Exemple 1**

Étudier la limite en $(0,0)$ de $f(x, y) = \frac{x^2 y}{x^2 + y^2}$ pour $(x,y) \neq (0,0)$.

On soupçonne que la limite est 0. Pour le prouver, on cherche à majorer $|f(x,y) - 0|$.

On a $x^2 \le x^2 + y^2$, donc $\frac{x^2}{x^2+y^2} \le 1$.

$$ |f(x,y)| = \left| \frac{x^2 y}{x^2 + y^2} \right| = \frac{x^2}{x^2+y^2} |y| \le |y| $$

Comme $\lim_{(x,y) \to (0,0)} |y| = 0$, par le théorème des gendarmes, on conclut que $\lim_{(x,y) \to (0,0)} f(x, y) = 0$.

**Exemple 2**

Étudier la limite en $(0,0)$ de $g(x, y) = (x^2 + y^2) \ln(x^2 + y^2)$.

Le passage en coordonnées polaires est ici très efficace. Posons $x = r \cos(\theta)$ et $y = r \sin(\theta)$. Alors $x^2 + y^2 = r^2$. Quand $(x,y) \to (0,0)$, on a $r \to 0^+$.

$$ g(r\cos\theta, r\sin\theta) = r^2 \ln(r^2) = 2r^2 \ln(r) $$

On étudie la limite de cette expression lorsque $r \to 0^+$. C'est une forme indéterminée $0 \times (-\infty)$. Par croissances comparées (ou en posant $t = 1/r$), on sait que $\lim_{r \to 0^+} r^2 \ln(r) = 0$. La limite ne dépend pas de $\theta$, donc la limite existe et vaut 0.

$$ \lim_{(x,y) \to (0,0)} g(x, y) = 0 $$

**Exemple 3**

Étudier la limite en $(0,0)$ de $h(x, y) = \cos \left( \frac{x^3 + y^3}{x^2 + y^2} \right)$.

Le problème est la fraction à l'intérieur du cosinus. Étudions la limite de $\frac{x^3 + y^3}{x^2 + y^2}$ en $(0,0)$. En coordonnées polaires :

$$ \frac{r^3\cos^3\theta + r^3\sin^3\theta}{r^2} = r(\cos^3\theta + \sin^3\theta) $$

On a $|\cos^3\theta + \sin^3\theta| \le |\cos^3\theta| + |\sin^3\theta| \le 1+1=2$.

Donc $|r(\cos^3\theta + \sin^3\theta)| \le 2r$. Comme $2r \to 0$ quand $r \to 0$, la limite de la fraction est 0.

La fonction cosinus étant continue en 0, on peut composer les limites :

$$ \lim_{(x,y) \to (0,0)} h(x, y) = \cos(0) = 1 $$

### Contre-exemples (où la limite n'existe pas)

**Contre-exemple 1**

Soit $f(x, y) = \frac{xy}{x^2 + y^2}$ pour $(x,y) \neq (0,0)$.

Pour prouver que la limite n'existe pas, il suffit de trouver deux chemins d'approche de $(0,0)$ qui donnent des limites différentes.

-   **Chemin 1 : l'axe des abscisses** ($y=0$). Pour $x \neq 0$, $f(x, 0) = \frac{x \cdot 0}{x^2+0^2} = 0$. La limite le long de ce chemin est $0$.
-   **Chemin 2 : la droite $y=x$**. Pour $x \neq 0$, $f(x, x) = \frac{x \cdot x}{x^2+x^2} = \frac{x^2}{2x^2} = \frac{1}{2}$. La limite le long de ce chemin est $\frac{1}{2}$.

Comme $0 \neq \frac{1}{2}$, la limite en $(0,0)$ n'existe pas.

**Contre-exemple 2**

Soit $g(x, y) = \frac{x^2 y}{x^4 + y^2}$ pour $(x,y) \neq (0,0)$.

-   **Chemin 1 : les droites $y=mx$**. Pour $x \neq 0$, $g(x, mx) = \frac{x^2(mx)}{x^4+(mx)^2} = \frac{mx^3}{x^4+m^2x^2} = \frac{mx}{x^2+m^2}$.

    Quand $x \to 0$, cette expression tend vers $0$ pour n'importe quelle pente $m$. Cela pourrait nous faire croire que la limite est 0.

-   **Chemin 2 : la parabole $y=x^2$**. Pour $x \neq 0$, $g(x, x^2) = \frac{x^2(x^2)}{x^4+(x^2)^2} = \frac{x^4}{2x^4} = \frac{1}{2}$.

    La limite le long de ce chemin est $\frac{1}{2}$.

Puisque nous avons trouvé un chemin qui donne une limite différente de 0, la limite de $g$ en $(0,0)$ n'existe pas.

### Concepts Connexes

-   **Continuité** : La notion de continuité en un point est définie directement à partir de celle de limite.
-   **Prolongement par continuité** : Une fonction est prolongeable par continuité en un point si et seulement si elle admet une limite finie en ce point.

---

## Concept 3: Continuité d'une fonction en un point

### Prérequis

-   Limite d'une fonction en un point.
-   Domaine de définition d'une fonction.

### Définition

Soit $D \subset \mathbb{R}^n$, $f : D \to \mathbb{R}^p$ une fonction, et $a$ un point de $D$. On dit que $f$ est **continue** en $a$ si l'une des trois conditions équivalentes suivantes est vérifiée :

(i) **Avec la limite** : $f$ admet une limite en $a$ et cette limite est égale à $f(a)$.

$$ \lim_{x\to a} f(x) = f(a) $$

(ii) **Avec $\varepsilon-\delta$** : Pour toutes normes sur $\mathbb{R}^n$ et $\mathbb{R}^p$,

$$ \forall \varepsilon > 0, \exists \delta > 0 : \forall x \in D, (d(x, a) < \delta \implies d(f(x), f(a)) < \varepsilon). $$

(iii) **Caractérisation séquentielle** : Pour toute suite $(x^k)_{k \in \mathbb{N}}$ de points de $D$ qui converge vers $a$, la suite des images $(f(x^k))_{k \in \mathbb{N}}$ converge vers $f(a)$.

Une fonction est dite **continue sur $D$** si elle est continue en chaque point de $D$. On note $C^0(D; \mathbb{R}^p)$ l'ensemble de ces fonctions.

### Explication Détaillée

La continuité est l'une des notions les plus fondamentales de l'analyse. Intuitivement, une fonction est continue en un point $a$ si les valeurs de $f(x)$ ne "sautent" pas brusquement lorsque $x$ est proche de $a$. En d'autres termes, une petite variation de l'entrée $x$ autour de $a$ n'entraîne qu'une petite variation de la sortie $f(x)$ autour de $f(a)$.

Les trois définitions sont équivalentes et offrent des outils différents pour étudier la continuité :

-   La définition (i) est la plus intuitive et la plus utilisée lorsque la limite est facile à calculer.
-   La définition (ii) est la définition formelle et rigoureuse, utile pour les preuves théoriques. Elle est très similaire à la définition de la limite, mais la limite est imposée comme étant la valeur $f(a)$.
-   La définition (iii) est extrêmement puissante, en particulier pour prouver qu'une fonction n'est *pas* continue. Il suffit de trouver une seule suite $x^k \to a$ telle que $f(x^k)$ ne converge pas vers $f(a)$.

### Propriétés Clés

1.  **Indépendance des normes** : Comme pour la limite, la continuité en dimension finie ne dépend pas du choix des normes.
2.  **Continuité et composantes** : Une fonction à valeurs vectorielles $f(x) = (f_1(x), \dots, f_p(x))$ est continue en $a$ si et seulement si chacune de ses fonctions composantes $f_j : D \to \mathbb{R}$ est continue en $a$. Cela permet de ramener l'étude d'une fonction vectorielle à l'étude de plusieurs fonctions scalaires.
3.  **Continuité partielle n'implique pas la continuité** : Attention ! Le fait que les fonctions partielles $x \mapsto f(x, y_0)$ et $y \mapsto f(x_0, y)$ soient continues en $x_0$ et $y_0$ respectivement, n'est **pas suffisant** pour garantir que $f$ est continue en $(x_0, y_0)$. La continuité est une propriété plus forte qui requiert une "bonne" Acomportement dans toutes les directions simultanément.

### Exemples

**Exemple 1**

Toute fonction polynomiale à plusieurs variables est continue sur $\mathbb{R}^n$. Par exemple, $f(x, y) = 3x^2y - 5xy^3 + 2$ est continue en tout point de $\mathbb{R}^2$. C'est parce qu'elle est construite par des sommes et des produits de fonctions continues de base (les projections $(x,y) \mapsto x$ et $(x,y) \mapsto y$, et les constantes).

**Exemple 2**

La fonction norme euclidienne $f(x) = \|x\|_2 = \sqrt{x_1^2 + \dots + x_n^2}$ est continue sur $\mathbb{R}^n$.

Cela découle de l'inégalité triangulaire renversée :

$$ | \|x\|_2 - \|y\|_2 | \le \|x - y\|_2 $$

En prenant $\delta = \varepsilon$ dans la définition $(\varepsilon, \delta)$, on voit que si $\|x-y\|_2 < \delta$, alors $|f(x)-f(y)| < \varepsilon$, ce qui prouve la continuité (et même la continuité uniforme).

**Exemple 3**

Considérons la fonction $\psi : \mathbb{R}^2 \to \mathbb{R}$ définie par

$$

\psi(x, y) = \begin{cases} \frac{1 - \cos(xy)}{y} & \text{si } y \neq 0 \\ 0 & \text{si } y = 0 \end{cases}

$$

- Si $y_0 \neq 0$, la fonction est un quotient de fonctions continues dont le dénominateur ne s'annule pas au voisinage de $(x_0, y_0)$, donc elle est continue.
- Le point délicat est en $(x_0, 0)$. Montrons la continuité en $(x_0, 0)$. On doit montrer que $\lim_{(x,y) \to (x_0, 0)} \psi(x,y) = \psi(x_0, 0) = 0$.

En utilisant le développement limité $1 - \cos(u) \sim u^2/2$ pour $u \to 0$. Ici $u=xy \to 0$.

$$ |\psi(x,y)| = \left| \frac{1 - \cos(xy)}{y} \right| \approx \left| \frac{(xy)^2/2}{y} \right| = \frac{x^2|y|}{2} $$

Quand $(x,y) \to (x_0, 0)$, $x \to x_0$ et $y \to 0$, donc $\frac{x^2|y|}{2} \to 0$. La limite est bien 0.

La fonction est donc continue sur $\mathbb{R}^2$.

### Contre-exemples

**Contre-exemple 1**

La fonction $f : \mathbb{R}^2 \to \mathbb{R}$ définie par

$$

f(x, y) = \begin{cases} \frac{xy}{x^2 + y^2} & \text{si } (x, y) \neq (0, 0) \\ 0 & \text{si } (x, y) = (0, 0), \end{cases}

$$

n'est pas continue en $(0, 0)$. Comme nous l'avons vu, $\lim_{(x,y)\to(0,0)} f(x,y)$ n'existe pas. Donc la condition (i) de la définition n'est pas remplie. Pourtant, les fonctions partielles $x \mapsto f(x, 0) = 0$ et $y \mapsto f(0, y) = 0$ sont continues partout ! C'est l'exemple classique de la continuité partielle qui n'implique pas la continuité.

**Contre-exemple 2**

La fonction "partie entière" $g(x,y) = \lfloor x \rfloor$ est une fonction de deux variables qui est discontinue en tout point $(x,y)$ où $x$ est un entier. Par exemple en $(1, 2)$, considérons la suite $x^k = (1 - 1/k, 2)$. Elle converge vers $(1,2)$, mais $g(x^k) = \lfloor 1 - 1/k \rfloor = 0$ pour $k > 1$. La limite de la suite image est 0, ce qui est différent de $g(1,2) = \lfloor 1 \rfloor = 1$. La fonction n'est donc pas continue en $(1,2)$.

### Concepts Connexes

-   **Limite d'une fonction** : La continuité est un cas particulier de la limite.
-   **Continuité uniforme** : C'est une forme plus forte de continuité, où le choix de $\delta$ ne dépend que de $\varepsilon$ et pas du point considéré.
-   **Propriétés des fonctions continues** : Les fonctions continues jouissent de nombreuses propriétés (stabilité par somme, produit, composition, image d'un compact, etc.).

---

## Concept 4: Propriétés des fonctions continues (Opérations)

### Prérequis

-   Définition de la continuité en un point.
-   Opérations sur les fonctions (somme, produit, composition).

### Définition (Propriétés)

Les fonctions continues se comportent très bien vis-à-vis des opérations algébriques usuelles et de la composition. Soit $D$ une partie de $\mathbb{R}^n$, et $f, g: D \to \mathbb{R}^p$ deux fonctions continues en un point $a \in D$.

1.  **Stabilité par combinaison linéaire** : Pour tous scalaires $\lambda, \mu \in \mathbb{R}$, la fonction $\lambda f + \mu g$ est continue en $a$. Cela implique que l'ensemble des fonctions continues $C^0(D; \mathbb{R}^p)$ est un espace vectoriel.

2.  **Stabilité du produit (pour les fonctions à valeurs réelles)** : Si $p=1$ (fonctions à valeurs dans $\mathbb{R}$), le produit $f \cdot g$ est continu en $a$. L'ensemble $C^0(D; \mathbb{R})$ est donc une algèbre.

3.  **Stabilité du quotient (pour les fonctions à valeurs réelles)** : Si $p=1$ et si $g(a) \neq 0$, alors la fonction $f/g$ est continue en $a$. (Elle est définie sur un voisinage de $a$ où $g$ ne s'annule pas).

4.  **Stabilité par composition** : Soit $f: \mathbb{R}^n \to \mathbb{R}^p$ continue en $a \in \mathbb{R}^n$, et $g: \mathbb{R}^p \to \mathbb{R}^r$ continue en $f(a) \in \mathbb{R}^p$. Alors la fonction composée $g \circ f : \mathbb{R}^n \to \mathbb{R}^r$ est continue en $a$.

### Explication Détaillée

Ces propriétés sont extrêmement utiles en pratique. Elles permettent de démontrer la continuité d'une grande classe de fonctions "complexes" en les décomposant en fonctions plus simples dont on connaît déjà la continuité (fonctions de base). Les fonctions de base sont typiquement :

-   Les fonctions constantes.
-   Les fonctions de projection : $\pi_i(x_1, \dots, x_n) = x_i$.
-   Les fonctions usuelles d'une variable (exp, ln, sin, cos, etc.), qui sont continues sur leur domaine de définition.

La démonstration de ces propriétés se fait très élégamment en utilisant la caractérisation séquentielle de la continuité et les propriétés correspondantes sur les limites de suites. Par exemple, si $x^k \to a$, alors par continuité de $f$ et $g$, on a $f(x^k) \to f(a)$ et $g(x^k) \to g(a)$. Les théorèmes sur les suites convergentes nous disent alors que $f(x^k) + g(x^k) \to f(a) + g(a)$, ce qui prouve la continuité de la somme $f+g$.

### Exemples

**Exemple 1**

Montrer que la fonction $f(x, y, z) = \frac{\exp(x + y + z) \ln(1 + x^2)}{2 + \cos(z)}$ est continue sur $\mathbb{R}^3$.

On la décompose :

1.  Les projections $(x,y,z) \mapsto x$, $(x,y,z) \mapsto y$, $(x,y,z) \mapsto z$ sont continues.
2.  $h_1(x,y,z) = x+y+z$ est continue (somme de fonctions continues).
3.  $h_2(x) = x^2$ est continue. $h_3(x) = 1+x^2$ est continue.
4.  La fonction $\exp$ est continue, donc $\exp(h_1(x,y,z)) = \exp(x+y+z)$ est continue par composition.
5.  La fonction $\ln$ est continue sur $\mathbb{R}_+^*$. Comme $1+x^2 \ge 1 > 0$, $\ln(1+x^2)$ est continue par composition.
6.  Le numérateur est un produit de fonctions continues, il est donc continu.
7.  Le dénominateur $2+\cos(z)$ est continu. De plus, comme $-1 \le \cos(z) \le 1$, on a $1 \le 2+\cos(z) \le 3$. Le dénominateur ne s'annule jamais.
8.  La fonction $f$ est le quotient de deux fonctions continues dont le dénominateur ne s'annule jamais, elle est donc continue sur $\mathbb{R}^3$.

**Exemple 2**

Montrer que toute application linéaire $L: \mathbb{R}^n \to \mathbb{R}^p$ est continue.

Soit $L(x) = A x$, où $A$ est la matrice de $L$ dans les bases canoniques. Les composantes de $L(x)$ sont $L_i(x) = \sum_{j=1}^n a_{ij} x_j$. Chaque $L_i$ est une fonction polynomiale des variables $x_j$, donc elle est continue. Puisque toutes les composantes de $L$ sont continues, $L$ est continue.

**Exemple 3**

Montrer que la fonction $f(x,y) = \sqrt{1 + \sin(xy)}$ est continue sur $\mathbb{R}^2$.

1.  $h_1(x,y) = xy$ est continue (produit).
2.  $\sin$ est continue, donc $h_2(x,y) = \sin(xy)$ est continue (composition).
3.  $h_3(x,y) = 1 + \sin(xy)$ est continue (somme).
4.  L'argument de la racine, $1+\sin(xy)$, est toujours dans $[0, 2]$, donc toujours positif ou nul.
5.  La fonction racine carrée est continue sur $\mathbb{R}_+$, donc $f(x,y) = \sqrt{h_3(x,y)}$ est continue par composition.

### Contre-exemples

**Contre-exemple 1**

Le quotient de deux fonctions continues n'est pas nécessairement continu si le dénominateur peut s'annuler. La fonction $f(x,y) = x/y$ est le quotient de deux fonctions continues, mais elle n'est pas continue sur tout domaine qui intersecte la droite $y=0$. Par exemple, elle n'est pas continue en $(0,0)$ (elle n'y est même pas définie).

**Contre-exemple 2**

La composition peut mal se passer si les domaines ne sont pas compatibles. Soit $f(x,y) = x+y$ (continue) et $g(t) = \ln(t)$ (continue sur $\mathbb{R}_+^*$). La composée $g \circ f (x,y) = \ln(x+y)$ n'est pas continue sur $\mathbb{R}^2$, mais seulement sur son domaine de définition, l'ouvert $\{ (x,y) \in \mathbb{R}^2 \mid x+y > 0 \}$.

### Concepts Connexes

-   **Continuité en un point** : Ces propriétés sont construites sur la définition de base de la continuité.
-   **Espaces vectoriels de fonctions** : La stabilité par combinaison linéaire donne à $C^0(D; \mathbb{R}^p)$ une structure d'espace vectoriel, ce qui est fondamental en analyse fonctionnelle.

---

## Concept 5: Prolongement par continuité

### Prérequis

-   Limite d'une fonction en un point.
-   Notion d'adhérence d'un ensemble ($\bar{D}$).
-   Continuité en un point.

### Définition

Soit $f$ une fonction définie et continue sur une partie $D \subset \mathbb{R}^n$, et soit $z$ un point qui n'appartient pas à $D$ mais qui est adhérent à $D$ (c'est-à-dire $z \in \bar{D} \setminus D$).

On dit que $f$ est **prolongeable par continuité** en $z$ s'il existe une fonction continue $\tilde{f} : D \cup \{z\} \to \mathbb{R}^p$ qui coïncide avec $f$ sur $D$ (c'est-à-dire $\tilde{f}(x) = f(x)$ pour tout $x \in D$).

La fonction $\tilde{f}$ est alors appelée le **prolongement continu** de $f$ au point $z$.

### Propriétés Clés

1.  **Condition d'existence** : Une fonction $f$ admet un prolongement continu en $z$ si et seulement si la limite $\lim_{x\to z} f(x)$ existe et est finie. Soit $\ell = \lim_{x\to z} f(x)$, alors le prolongement continu est défini par :

    $$

    \tilde{f}(x) = \begin{cases} f(x) & \text{si } x \in D, \\ \ell & \text{si } x = z. \end{cases}

    $$

2.  **Unicité** : Si le prolongement continu existe, il est unique. Cela découle de l'unicité de la limite.
3.  **Théorème des gendarmes** : C'est un outil très puissant pour prouver l'existence d'une limite (et donc d'un prolongement). Si $f$ est une fonction à valeurs réelles et qu'on peut trouver deux fonctions $\varphi$ et $\psi$ telles que $\varphi(x) \le f(x) \le \psi(x)$ sur un voisinage de $z$, et si $\lim_{x\to z} \varphi(x) = \lim_{x\to z} \psi(x) = \ell$, alors $\lim_{x\to z} f(x) = \ell$ et $f$ est prolongeable par continuité en $z$ par la valeur $\ell$.

### Exemples

**Exemple 1**

La fonction $f(x) = \frac{\sin(x)}{x}$ est définie et continue sur $D = \mathbb{R}^*$. Le point $z=0$ est dans $\bar{D} \setminus D$. On sait que $\lim_{x\to 0} \frac{\sin(x)}{x} = 1$.

Donc, $f$ est prolongeable par continuité en 0. Son prolongement est la fonction $\tilde{f}: \mathbb{R} \to \mathbb{R}$ définie par :

$$ \tilde{f}(x) = \begin{cases} \frac{\sin(x)}{x} & \text{si } x \neq 0, \\ 1 & \text{si } x = 0. \end{cases} $$

Cette fonction $\tilde{f}$ est continue sur $\mathbb{R}$ entier.

**Exemple 2**

Soit $f(x, y) = \frac{x^4}{x^2 + 3y^2}$ définie sur $\mathbb{R}^2 \setminus \{(0,0)\}$. Peut-on la prolonger en $(0,0)$ ?

On cherche la limite en $(0,0)$. On a $x^2 \le x^2 + 3y^2$. Donc :

$$ 0 \le f(x,y) = \frac{x^2}{x^2 + 3y^2} \cdot x^2 \le 1 \cdot x^2 = x^2 $$

On a l'encadrement $0 \le f(x,y) \le x^2$. Comme $\lim_{(x,y)\to(0,0)} 0 = 0$ et $\lim_{(x,y)\to(0,0)} x^2 = 0$, le théorème des gendarmes s'applique et $\lim_{(x,y)\to(0,0)} f(x,y) = 0$.

La fonction est donc prolongeable par continuité en $(0,0)$ par la valeur 0.

**Exemple 3**

Soit $g(f) = f'$, l'opérateur de dérivation, qui à une fonction $f \in C^1(\mathbb{R})$ associe sa dérivée. Soit $F(x_1, x_2) = \frac{f(x_1) - f(x_2)}{x_1 - x_2}$ définie pour $x_1 \neq x_2$. Peut-on la prolonger sur la diagonale $x_1=x_2=t$ ?

On cherche $\lim_{(x_1, x_2) \to (t, t)} F(x_1, x_2)$.

Par définition du nombre dérivé, on sait que $\lim_{h \to 0} \frac{f(t+h) - f(t)}{h} = f'(t)$.

La limite de $F$ lorsque $(x_1, x_2)$ tend vers $(t, t)$ correspond exactement à la définition de la dérivée de $f$ en $t$. Donc $\lim_{(x_1, x_2) \to (t, t)} F(x_1, x_2) = f'(t)$.

Le prolongement continu est donc la fonction $\tilde{F}$ définie par :

$$ \tilde{F}(x_1, x_2) = \begin{cases} \frac{f(x_1) - f(x_2)}{x_1 - x_2} & \text{si } x_1 \neq x_2 \\ f'(t) & \text{si } x_1 = x_2 = t. \end{cases} $$

### Contre-exemples

**Contre-exemple 1**

La fonction $g(x, y) = \frac{\sin(x^2)}{x + y}$ n'est pas prolongeable en $(0,0)$.

Le domaine est $D = \{(x,y) \in \mathbb{R}^2 \mid y \neq -x\}$.

Considérons le chemin $y = -x + x^2$ (une parabole qui s'approche de la droite interdite $y=-x$).

$$ g(x, -x+x^2) = \frac{\sin(x^2)}{x + (-x+x^2)} = \frac{\sin(x^2)}{x^2} $$

Quand $x \to 0$, cette expression tend vers 1.

Considérons maintenant le chemin $y=0$.

$$ g(x,0) = \frac{\sin(x^2)}{x} \sim \frac{x^2}{x} = x $$

Quand $x \to 0$, cette expression tend vers 0.

Comme nous avons trouvé deux chemins menant à des limites différentes (1 et 0), la limite globale n'existe pas, et la fonction n'est pas prolongeable par continuité en $(0,0)$.

**Contre-exemple 2**

La fonction $h(x, y) = \sin(1/x)$ n'est pas prolongeable en $x=0$.

Quand $x \to 0$, l'argument $1/x$ tend vers $\pm\infty$. La fonction sinus oscille indéfiniment entre -1 et 1 sans se stabiliser vers une valeur unique. La limite n'existe donc pas.

### Concepts Connexes

-   **Limite d'une fonction** : C'est le concept central pour définir le prolongement.
-   **Dérivabilité** : L'exemple 3 montre que le taux d'accroissement est une fonction prolongeable par continuité en un point si la fonction de départ est dérivable en ce point.

---

## Concept 6: Caractérisation topologique de la continuité

### Prérequis

-   Ensembles ouverts et fermés de $\mathbb{R}^n$.
-   Définition de la continuité.
-   Notions d'image directe $f(A)$ et d'image réciproque $f^{-1}(B)$.

### Définition (Caractérisation)

Soit une application $f : \mathbb{R}^n \to \mathbb{R}^p$. Les trois affirmations suivantes sont équivalentes :

(i) $f$ est continue (en tout point de $\mathbb{R}^n$).

(ii) Pour tout ensemble **ouvert** $V$ de $\mathbb{R}^p$, son image réciproque $f^{-1}(V)$ est un ensemble **ouvert** de $\mathbb{R}^n$.

(iii) Pour tout ensemble **fermé** $F$ de $\mathbb{R}^p$, son image réciproque $f^{-1}(F)$ est un ensemble **fermé** de $\mathbb{R}^n$.

**Rappel :** L'image réciproque de $B \subset \mathbb{R}^p$ est $f^{-1}(B) = \{ x \in \mathbb{R}^n \mid f(x) \in B \}$.

### Explication Détaillée

Cette proposition offre une perspective entièrement nouvelle sur la continuité. Au lieu de la voir comme une propriété locale (point par point, avec des $\varepsilon$ et des $\delta$), on peut la voir comme une propriété globale qui relie les structures topologiques (les collections d'ouverts ou de fermés) de l'espace de départ et d'arrivée.

Une fonction continue est une fonction qui "respecte" les ouverts et les fermés lorsqu'on les "tire en arrière" (via l'image réciproque). C'est pourquoi on dit parfois que les fonctions continues sont les *morphismes* des espaces topologiques.

**Attention !** Cette propriété ne fonctionne que pour l'**image réciproque**. L'image **directe** d'un ouvert par une fonction continue n'est pas nécessairement un ouvert, et l'image directe d'un fermé n'est pas nécessairement un fermé.

Cette caractérisation est un outil très puissant pour prouver qu'un ensemble est ouvert ou fermé de manière élégante, sans avoir à manipuler des boules ou des suites. Si on peut décrire un ensemble comme l'image réciproque d'un ouvert (ou fermé) simple par une fonction continue, alors on a immédiatement sa nature topologique.

### Exemples (d'application de la caractérisation)

**Exemple 1**

Montrer que l'ensemble $U = \{ (x, y) \in \mathbb{R}^2 \mid x^2 - y^2 > 0 \}$ est un ouvert de $\mathbb{R}^2$.

Considérons la fonction $f: \mathbb{R}^2 \to \mathbb{R}$ définie par $f(x,y) = x^2 - y^2$. C'est une fonction polynomiale, donc elle est continue sur $\mathbb{R}^2$.

L'ensemble $U$ peut s'écrire $U = \{ (x, y) \in \mathbb{R}^2 \mid f(x,y) > 0 \}$.

C'est donc l'image réciproque de l'intervalle ouvert $]0, +\infty[$ par la fonction $f$.

$$ U = f^{-1}(]0, +\infty[) $$

Puisque $]0, +\infty[$ est un ouvert de $\mathbb{R}$ et que $f$ est continue, son image réciproque $U$ est un ouvert de $\mathbb{R}^2$.

**Exemple 2**

Montrer que l'ellipse pleine $F = \{ (x, y) \in \mathbb{R}^2 \mid x^2 + 3y^2 \le 4 \}$ est un fermé de $\mathbb{R}^2$.

Considérons la fonction $g(x,y) = x^2 + 3y^2$. Elle est continue sur $\mathbb{R}^2$.

L'ensemble $F$ peut s'écrire $F = \{ (x, y) \in \mathbb{R}^2 \mid g(x,y) \le 4 \}$.

C'est l'image réciproque de l'intervalle fermé $]-\infty, 4]$ par la fonction $g$.

$$ F = g^{-1}(]-\infty, 4]) $$

Puisque $]-\infty, 4]$ est un fermé de $\mathbb{R}$ et que $g$ est continue, son image réciproque $F$ est un fermé de $\mathbb{R}^2$.

**Exemple 3**

Montrer que l'ensemble $A = \{ (x,y) \in \mathbb{R}^2 \mid x > 0 \text{ et } y < \sin(x) \}$ est un ouvert.

Cet ensemble peut s'écrire comme l'intersection de deux ensembles :

$A = U_1 \cap U_2$ avec $U_1 = \{ (x,y) \mid x > 0 \}$ et $U_2 = \{ (x,y) \mid y - \sin(x) < 0 \}$.

- $U_1$ est l'image réciproque de l'ouvert $]0, \infty[$ par la fonction continue $(x,y) \mapsto x$. Donc $U_1$ est ouvert.
- $U_2$ est l'image réciproque de l'ouvert $]-\infty, 0[$ par la fonction continue $(x,y) \mapsto y - \sin(x)$. Donc $U_2$ est ouvert.

L'intersection de deux ouverts est un ouvert, donc $A$ est un ouvert.

### Contre-exemples (pour l'image directe)

**Contre-exemple 1**

Considérons la fonction continue $f: \mathbb{R} \to \mathbb{R}$ définie par $f(x) = x^2$.

L'ensemble $U = ]-1, 1[$ est un ouvert de $\mathbb{R}$.

Son image directe est $f(U) = [0, 1[$. Cet ensemble n'est ni ouvert (car il contient 0 mais aucune boule ouverte centrée en 0), ni fermé.

**Contre-exemple 2**

Considérons la fonction continue $g: \mathbb{R} \to \mathbb{R}$ définie par $g(x) = \frac{1}{1+x^2}$.

L'ensemble $F = \mathbb{R}$ est un fermé de $\mathbb{R}$.

Son image directe est $g(F) = ]0, 1]$. Cet ensemble n'est ni ouvert, ni fermé.

### Concepts Connexes

-   **Topologie** : Ce concept est le pont entre l'analyse (continuité) et la topologie (étude des ouverts et des fermés).
-   **Ensembles de niveaux** : Un ensemble de niveau $c$ d'une fonction $f$ est l'ensemble $\{x \mid f(x) = c\}$. C'est l'image réciproque du singleton fermé $\{c\}$. Si $f$ est continue, tous ses ensembles de niveau sont des fermés.

---

## Concept 7: Image d'un compact par une fonction continue

### Prérequis

-   Définition d'un ensemble compact dans $\mathbb{R}^n$ (fermé et borné).
-   Caractérisation séquentielle de la compacité (théorème de Bolzano-Weierstrass).
-   Caractérisation séquentielle de la continuité.

### Définition (Théorème)

**Théorème** : Soit $K$ une partie **compacte** de $\mathbb{R}^n$ et $f : K \to \mathbb{R}^p$ une fonction **continue**. Alors l'image directe $f(K)$ est une partie **compacte** de $\mathbb{R}^p$.

En d'autres termes, **l'image continue d'un compact est un compact**.

### Explication Détaillée

C'est un des théorèmes les plus importants concernant les fonctions continues. Il énonce qu'une propriété topologique majeure, la compacité, est préservée par les applications continues.

Rappelons que dans $\mathbb{R}^n$, un ensemble est compact si et seulement s'il est fermé et borné. Le théorème nous dit donc que si $f$ est continue et définie sur un ensemble fermé et borné $K$, alors son image $f(K)$ sera également un ensemble fermé et borné.

La démonstration de ce théorème est un très bel exemple d'utilisation de la caractérisation séquentielle :

1.  On veut montrer que $f(K)$ est compact. On utilise la caractérisation séquentielle : on prend une suite quelconque $(y^k)$ dans $f(K)$ et on montre qu'on peut en extraire une sous-suite qui converge dans $f(K)$.
2.  Pour chaque $y^k \in f(K)$, il existe un antécédent $x^k \in K$ tel que $f(x^k) = y^k$. Cela nous donne une suite $(x^k)$ dans $K$.
3.  Puisque $K$ est compact, on peut extraire de $(x^k)$ une sous-suite $(x^{\varphi(k)})$ qui converge vers une limite $a$, et ce point $a$ est dans $K$ (car $K$ est fermé).
4.  Puisque $f$ est continue en $a$, la suite des images $(f(x^{\varphi(k)}))$ converge vers $f(a)$.
5.  Or, $f(x^{\varphi(k)}) = y^{\varphi(k)}$. On a donc trouvé une sous-suite $(y^{\varphi(k)})$ de notre suite de départ qui converge.
6.  Sa limite est $f(a)$, et comme $a \in K$, la limite $f(a)$ appartient à $f(K)$.
7.  Conclusion : $f(K)$ est bien compact.

### Exemples

**Exemple 1**

Soit $f: \mathbb{R}^2 \to \mathbb{R}$ définie par $f(x,y) = x+2y$. Soit $K$ le disque unité fermé $K = \{(x,y) \in \mathbb{R}^2 \mid x^2+y^2 \le 1\}$.

$K$ est un ensemble fermé et borné de $\mathbb{R}^2$, donc il est compact. La fonction $f$ est polynomiale, donc continue.

Le théorème nous assure que l'image $f(K)$ est un compact de $\mathbb{R}$. Un compact de $\mathbb{R}$ est un intervalle fermé et borné, de la forme $[m, M]$. (Cet exemple mène directement au Théorème des bornes atteintes).

**Exemple 2**

Soit $\gamma: [0, 2\pi] \to \mathbb{R}^2$ la fonction (chemin) définie par $\gamma(t) = (\cos(t), \sin(t))$.

L'intervalle $[0, 2\pi]$ est un compact de $\mathbb{R}$. La fonction $\gamma$ est continue car ses composantes le sont.

Le théorème affirme que l'image $\gamma([0, 2\pi])$ est un compact de $\mathbb{R}^2$. Cette image est le cercle unité, qui est bien un ensemble fermé et borné (donc compact) dans $\mathbb{R}^2$.

**Exemple 3**

Soit $f: \mathbb{R}^2 \to \mathbb{R}^2$ définie par $f(x,y) = (x^2-y^2, 2xy)$. Soit $K$ le carré unité $[0,1] \times [0,1]$.

$K$ est un compact de $\mathbb{R}^2$. $f$ est continue. Donc $f(K)$ est un compact de $\mathbb{R}^2$. L'image est une région fermée et bornée du plan.

### Contre-exemples (si les hypothèses ne sont pas vérifiées)

**Contre-exemple 1 (Domaine non compact)**

Soit $f: ]0, 1] \to \mathbb{R}$ définie par $f(x) = 1/x$. La fonction est continue.

Le domaine $D = ]0, 1]$ n'est pas compact car il n'est pas fermé.

L'image $f(D) = [1, +\infty[$ n'est pas bornée, donc elle n'est pas compacte.

**Contre-exemple 2 (Domaine non compact)**

Soit $g: \mathbb{R} \to \mathbb{R}$ définie par $g(x) = \arctan(x)$. La fonction est continue.

Le domaine $D = \mathbb{R}$ n'est pas compact car il n'est pas borné.

L'image $g(D) = ]-\pi/2, \pi/2[$ est bornée mais n'est pas fermée, donc elle n'est pas compacte.

### Concepts Connexes

-   **Ensembles compacts** : Ce théorème est une des propriétés les plus importantes des ensembles compacts.
-   **Théorème des bornes atteintes** : C'est une conséquence directe et extrêmement importante de ce théorème pour les fonctions à valeurs réelles.
-   **Connexité par arcs** : C'est une autre propriété topologique préservée par les applications continues (l'image continue d'un connexe par arcs est connexe par arcs).

---

## Concept 8: Théorème des bornes atteintes

### Prérequis

-   Image d'un compact par une fonction continue.
-   Notions de borne supérieure (supremum) et inférieure (infimum).
-   Notions de maximum et minimum d'une fonction.

### Définition (Théorème)

**Théorème des bornes atteintes (ou Théorème de Weierstrass)** :

Soit $K$ une partie **compacte** et **non vide** de $\mathbb{R}^n$ et $f : K \to \mathbb{R}$ une fonction **continue** à valeurs réelles.

Alors $f$ est **bornée** sur $K$ et **atteint ses bornes**. C'est-à-dire qu'il existe (au moins) deux points $a \in K$ et $b \in K$ tels que :

$$

f(a) = \min_{x \in K} f(x) \quad \text{et} \quad f(b) = \max_{x \in K} f(x)

$$

Autrement dit, le minimum et le maximum de la fonction sur le compact existent et sont des valeurs prises par la fonction.

### Explication Détaillée

Ce théorème garantit l'existence de solutions à de nombreux problèmes d'optimisation (trouver un minimum ou un maximum global). Il est fondamental dans de nombreux domaines des mathématiques et de leurs applications.

La preuve est une conséquence directe du théorème précédent ("l'image d'un compact est un compact") :

1.  On sait que $f(K)$ est un compact de $\mathbb{R}$ car $f$ est continue et $K$ est compact.
2.  Un compact de $\mathbb{R}$ est un ensemble fermé et borné.
3.  Puisque $f(K)$ est borné, la fonction $f$ est bornée. Cela signifie que sa borne supérieure $M = \sup_{x \in K} f(x)$ et sa borne inférieure $m = \inf_{x \in K} f(x)$ sont des nombres réels finis.
4.  Puisque $f(K)$ est fermé, il contient tous ses points adhérents. En particulier, il contient sa borne supérieure et sa borne inférieure.
5.  Donc, $m \in f(K)$ et $M \in f(K)$.
6.  Par définition de l'ensemble image, cela signifie qu'il existe des antécédents $a \in K$ et $b \in K$ tels que $f(a) = m$ et $f(b) = M$. Ces points sont les points où le minimum et le maximum sont atteints.

Les deux hypothèses (domaine **compact** et fonction **continue**) sont **essentielles**. Si l'une d'elles manque, le théorème peut ne pas s'appliquer.

### Exemples

**Exemple 1**

Soit $f(x,y) = xy - x^2$ sur le carré compact $K = [-1, 1] \times [-1, 1]$.

$K$ est fermé et borné, donc compact. $f$ est un polynôme, donc continue.

Le théorème nous garantit qu'il existe un point $(x_0, y_0) \in K$ où $f$ atteint son maximum global sur $K$, et un point $(x_1, y_1) \in K$ où elle atteint son minimum global sur $K$. Le théorème ne nous dit pas comment trouver ces points, mais il nous assure de leur existence.

**Exemple 2**

Soit un point $P \in \mathbb{R}^2$ et un compact non vide $K \subset \mathbb{R}^2$. Montrer qu'il existe un point dans $K$ qui est le plus proche de $P$.

Considérons la fonction "distance au point P", $d_P : \mathbb{R}^2 \to \mathbb{R}$ définie par $d_P(x) = \|x - P\|_2$.

-   La fonction $d_P$ est continue (c'est la composition de la norme, continue, et d'une translation, continue).
-   On étudie cette fonction sur l'ensemble $K$, qui est compact et non vide.
-   D'après le théorème des bornes atteintes, la fonction $d_P$ admet un minimum sur $K$. C'est-à-dire qu'il existe un point $a \in K$ tel que $d_P(a) = \min_{x \in K} d_P(x)$.
-   Ce point $a$ est un point de $K$ qui minimise la distance à $P$.

**Exemple 3**

La fonction $f(x, y) = \frac{x+y}{x^2+y^2+1}$ est continue sur $\mathbb{R}^2$. Sur le disque compact $K = \{(x,y) \mid x^2+y^2 \le 4\}$, elle admet un minimum et un maximum.

### Contre-exemples (quand une hypothèse manque)

**Contre-exemple 1 (Domaine non compact : non fermé)**

Soit $f(x) = x$ sur l'intervalle $K = [0, 1[$.

$K$ n'est pas compact (non fermé). $f$ est continue.

L'ensemble des valeurs est $f(K) = [0, 1[$. La fonction est bornée (infimum 0, supremum 1). Elle atteint son minimum en $x=0$ (car $f(0)=0$), mais elle n'atteint jamais son supremum 1.

**Contre-exemple 2 (Domaine non compact : non borné)**

Soit $f(x) = e^{-x}$ sur l'intervalle $K = [0, +\infty[$.

$K$ n'est pas compact (non borné). $f$ est continue.

L'ensemble des valeurs est $f(K) = ]0, 1]$. La fonction est bornée (infimum 0, supremum 1). Elle atteint son maximum en $x=0$ (car $f(0)=1$), mais elle n'atteint jamais son infimum 0.

**Contre-exemple 3 (Fonction non continue)**

Soit $K = [0, 1]$ (compact). Soit $f: K \to \mathbb{R}$ définie par :

$$ f(x) = \begin{cases} x & \text{si } x \in [0, 1[, \\ 0 & \text{si } x = 1. \end{cases} $$

Cette fonction est discontinue en $x=1$. L'ensemble des valeurs est $[0, 1[$. Le supremum (1) n'est jamais atteint.

### Concepts Connexes

-   **Optimisation** : Ce théorème est la pierre angulaire de l'optimisation continue, garantissant l'existence de solutions globales sous certaines conditions.
-   **Calcul différentiel** : En calcul différentiel, on apprendra des techniques (étude des points critiques) pour localiser ces extrema dont l'existence est garantie par ce théorème.

---

## Concept 9: Connexité par arcs

### Prérequis

-   Fonctions continues.
-   Intervalle $[0, 1]$ dans $\mathbb{R}$.

### Définition

Une partie $A$ de $\mathbb{R}^n$ est dite **connexe par arcs** si pour tout couple de points $(a, b)$ dans $A$, il existe une application continue $\gamma : [0, 1] \to A$ (appelée un **arc** ou un **chemin**) telle que $\gamma(0) = a$ et $\gamma(1) = b$.

### Explication Détaillée

Intuitivement, un ensemble connexe par arcs est un ensemble "d'un seul tenant". On peut aller de n'importe quel point de l'ensemble à n'importe quel autre point sans jamais quitter l'ensemble. Le "chemin" $\gamma(t)$ trace une courbe continue qui relie les deux points en restant entièrement contenue dans l'ensemble.

-   Le paramètre $t \in [0, 1]$ peut être vu comme le "temps".
-   $\gamma(0) = a$ est le point de départ.
-   $\gamma(1) = b$ est le point d'arrivée.
-   La condition $\gamma([0,1]) \subseteq A$ signifie que le chemin ne quitte jamais l'ensemble $A$.

La connexité par arcs est une propriété topologique. Une conséquence importante est une généralisation du **Théorème des Valeurs Intermédiaires (TVI)** : si $f: A \to \mathbb{R}$ est une fonction continue sur un ensemble connexe par arcs $A$, alors l'image $f(A)$ est un intervalle.

### Propriétés Clés

1.  **Ensembles convexes** : Tout ensemble convexe est connexe par arcs. Pour relier deux points $a, b$ d'un convexe, on peut simplement utiliser le segment de droite $[a,b]$, qui est paramétré par $\gamma(t) = (1-t)a + tb$. Ce chemin est continu et reste dans l'ensemble par définition de la convexité.
2.  **Image continue** : L'image d'un ensemble connexe par arcs par une application continue est un ensemble connexe par arcs.
3.  **Réunion** : La réunion de deux ensembles connexes par arcs dont l'intersection est non vide est un ensemble connexe par arcs.

### Exemples

**Exemple 1**

N'importe quelle boule (ouverte ou fermée) de $\mathbb{R}^n$ est un ensemble convexe, et donc connexe par arcs. L'espace $\mathbb{R}^n$ tout entier est aussi connexe par arcs.

**Exemple 2**

La sphère unité $S^2 = \{(x,y,z) \in \mathbb{R}^3 \mid x^2+y^2+z^2=1\}$ est connexe par arcs. On peut toujours relier deux points sur la sphère par un arc de grand cercle.

**Exemple 3**

L'ensemble $A = \mathbb{R}^2 \setminus \{(0,0)\}$ (le plan privé de l'origine) est connexe par arcs. Pour relier deux points $a, b \in A$, on peut utiliser le segment $[a,b]$ si celui-ci ne passe pas par l'origine. S'il passe par l'origine, on peut le "contourner" en utilisant un arc de cercle centré en l'origine.

### Contre-exemples

**Contre-exemple 1**

Soit $A = B(( -2, 0), 1) \cup B((2, 0), 1)$, l'union de deux boules ouvertes disjointes.

Cet ensemble n'est pas connexe par arcs. Il est impossible de trouver un chemin continu qui relie un point de la première boule à un point de la seconde sans sortir de $A$. Tout chemin devrait "sauter" l'espace vide entre les deux boules, ce qui contredirait la continuité.

**Contre-exemple 2**

L'ensemble $A = \{(x,y) \in \mathbb{R}^2 \mid xy > 1 \}$ n'est pas connexe par arcs. Il est composé de deux "branches" disjointes dans les quadrants 1 et 3. On ne peut pas relier un point de la première branche (ex: $(2,2)$) à un point de la seconde (ex: $(-2,-2)$).

### Concepts Connexes

-   **Théorème des Valeurs Intermédiaires** : La propriété la plus célèbre des fonctions continues sur des ensembles connexes par arcs (ou plus généralement, connexes) est que leur image est un intervalle. Cela signifie qu'elles ne peuvent pas "sauter" des valeurs.
-   **Ensembles simplement connexes** : Une notion plus forte qui signifie non seulement que l'ensemble est d'un seul tenant, mais aussi qu'il n'a pas de "trous". Par exemple, $\mathbb{R}^2 \setminus \{(0,0)\}$ est connexe par arcs, mais pas simplement connexe.

---

## Concept 10: Continuité uniforme

### Prérequis

-   Continuité d'une fonction en un point (définition avec $\varepsilon, \delta$).
-   Quantificateurs logiques ($\forall, \exists$).

### Définition

Soit $D \subseteq \mathbb{R}^n$. Une fonction $f : D \to \mathbb{R}^p$ est dite **uniformément continue** sur $D$ si :

$$

\forall \varepsilon > 0, \exists \delta > 0 \text{ tel que } \forall x \in D, \forall y \in D, \quad (d(x, y) < \delta \implies d(f(x), f(y)) < \varepsilon).

$$

### Explication Détaillée

La continuité uniforme est une version plus forte de la continuité. La différence, subtile mais cruciale, réside dans l'ordre des quantificateurs et la dépendance du $\delta$.

-   **Continuité (point par point) sur $D$** :

    $$ \forall \mathbf{a} \in D, \forall \varepsilon > 0, \exists \delta > 0 \text{ tel que } \forall x \in D, \dots $$

    Ici, $\delta$ peut dépendre de $\varepsilon$ ET du point $a$ considéré. On pourrait l'écrire $\delta(\varepsilon, a)$. Pour un même $\varepsilon$, si on change de point $a$, on pourrait avoir besoin d'un $\delta$ beaucoup plus petit.

-   **Continuité uniforme sur $D$** :

    $$ \forall \varepsilon > 0, \exists \delta > 0 \text{ tel que } \forall \mathbf{a} \in D, \forall x \in D, \dots $$

    Ici, le $\delta$ ne dépend QUE de $\varepsilon$. Une fois $\varepsilon$ choisi, on trouve un $\delta$ qui "fonctionne" partout, uniformément sur tout le domaine $D$.

Intuitivement, cela signifie que le "module d'oscillation" de la fonction est contrôlé de la même manière sur tout le domaine. Il n'y a pas d'endroits où la fonction devient "infiniment raide".

### Propriétés Clés

1.  **L'uniforme continuité implique la continuité** : Si une fonction est uniformément continue sur $D$, elle est alors continue en chaque point de $D$. La réciproque est fausse en général.
2.  **Fonctions lipschitziennes** : Si une fonction $f$ est lipschitzienne sur $D$, c'est-à-dire s'il existe une constante $k \ge 0$ telle que $d(f(x), f(y)) \le k \cdot d(x, y)$ pour tous $x, y \in D$, alors $f$ est uniformément continue sur $D$. Il suffit de prendre $\delta = \varepsilon / k$.
3.  **Théorème de Heine** : C'est le résultat principal liant continuité et continuité uniforme. Il stipule que si le domaine $D$ est compact, alors toute fonction continue sur $D$ est automatiquement uniformément continue sur $D$.

### Exemples

**Exemple 1**

La fonction $f(x) = x$ est uniformément continue sur $\mathbb{R}$.

Soit $\varepsilon > 0$. On cherche $\delta > 0$. On veut $|f(x)-f(y)| < \varepsilon$, c'est-à-dire $|x-y| < \varepsilon$. Il suffit de choisir $\delta = \varepsilon$. Ce $\delta$ ne dépend que de $\varepsilon$, donc la fonction est uniformément continue.

**Exemple 2**

La fonction $g(x) = \sqrt{x}$ est uniformément continue sur son domaine $[0, +\infty[$.

Ce cas est moins trivial. Sur $[1, \infty[$, la dérivée $g'(x) = 1/(2\sqrt{x})$ est bornée par $1/2$, donc la fonction est lipschitzienne et donc uniformément continue sur cet intervalle. Autour de 0, on peut montrer directement avec la définition $(\varepsilon, \delta)$ que la continuité est uniforme. En combinant les deux, on obtient la continuité uniforme sur $[0, +\infty[$.

**Exemple 3**

Toute application linéaire $L : \mathbb{R}^n \to \mathbb{R}^p$ est uniformément continue. Une application linéaire est lipschitzienne. Il existe une constante $C$ (la norme de l'opérateur) telle que $\|L(x)-L(y)\| = \|L(x-y)\| \le C \|x-y\|$. On peut donc prendre $\delta = \varepsilon / C$.

### Contre-exemples (fonctions continues mais non uniformément continues)

**Contre-exemple 1**

La fonction $f(x) = x^2$ est continue sur $\mathbb{R}$, mais pas uniformément continue.

Intuitivement, plus on va vers l'infini, plus la pente de la fonction devient grande. Pour un écart donné $\delta$ entre $x$ et $y$, l'écart entre $f(x)$ et $f(y)$ peut être rendu arbitrairement grand en choisissant $x$ et $y$ assez grands.

Formellement : $|f(x)-f(y)| = |x^2-y^2| = |x-y||x+y|$. Si on prend $y=x+\delta/2$, alors $|x-y| < \delta$, mais $|f(x)-f(y)| = (\delta/2)|2x+\delta/2|$. On voit que cette quantité peut dépasser n'importe quel $\varepsilon$ si on prend $x$ assez grand.

**Contre-exemple 2**

La fonction $g(x) = \sin(1/x)$ est continue sur $]0, 1]$ mais n'y est pas uniformément continue.

Près de 0, la fonction oscille de plus en plus vite. On peut trouver des points $x$ et $y$ arbitrairement proches l'un de l'autre, mais tels que $\sin(1/x)=1$ et $\sin(1/y)=-1$. L'écart entre leurs images sera donc de 2, quel que soit le $\delta$ choisi. Par exemple, prenons $x_k = \frac{1}{2k\pi + \pi/2}$ et $y_k = \frac{1}{2k\pi - \pi/2}$. Alors $x_k \to 0$ et $y_k \to 0$, donc $|x_k - y_k| \to 0$. Mais $|g(x_k)-g(y_k)| = |\sin(2k\pi+\pi/2) - \sin(2k\pi-\pi/2)| = |1 - (-1)| = 2$.

### Concepts Connexes

-   **Théorème de Heine** : Fournit une condition suffisante très simple (domaine compact) pour qu'une fonction continue soit uniformément continue.
-   **Analyse fonctionnelle** : La continuité uniforme est une notion cruciale pour la convergence de suites de fonctions et la complétude d'espaces fonctionnels.

---

## Concept 11: Théorème de Heine

### Prérequis

-   Continuité uniforme.
-   Continuité (simple).
-   Ensembles compacts.

### Définition (Théorème)

**Théorème de Heine** : Soit $K$ une partie **compacte** de $\mathbb{R}^n$ et $f : K \to \mathbb{R}^p$ une fonction **continue** sur $K$. Alors $f$ est **uniformément continue** sur $K$.

### Explication Détaillée

Ce théorème est un résultat majeur qui relie trois concepts fondamentaux de l'analyse : la continuité, la compacité et la continuité uniforme. Il affirme que sur un domaine "bien comporté" (c'est-à-dire compact), la notion de continuité simple est automatiquement renforcée en continuité uniforme.

Intuitivement, un domaine compact ne "part pas à l'infini" et ne possède pas de "bords manquants". Cela empêche les deux types de problèmes qui peuvent faire échouer la continuité uniforme :

1.  Les pentes qui deviennent infinies (comme $x^2$ sur $\mathbb{R}$), car le domaine est borné.
2.  Les oscillations infiniment rapides (comme $\sin(1/x)$ près de 0), car le domaine est fermé et la fonction doit être continue en tout point du domaine, y compris sur ses bords.

La preuve de ce théorème se fait souvent par l'absurde. On suppose que $f$ est continue sur un compact $K$ mais *pas* uniformément continue. La négation de la continuité uniforme nous donne l'existence de deux suites $(a^k)$ et $(b^k)$ dans $K$ telles que $\|a^k - b^k\| \to 0$ mais $\|f(a^k) - f(b^k)\|$ reste plus grand qu'un certain $\varepsilon_0 > 0$. On utilise alors la compacité de $K$ pour extraire une sous-suite de $(a^k)$ qui converge vers un point $c \in K$. Comme $\|a^k - b^k\| \to 0$, la sous-suite correspondante de $(b^k)$ converge aussi vers ce même point $c$. Mais alors, par continuité de $f$ en $c$, on devrait avoir $f(a^k)$ et $f(b^k)$ qui se rapprochent de $f(c)$, et donc se rapprochent l'un de l'autre. Ceci contredit le fait que leur distance reste supérieure à $\varepsilon_0$.

### Exemples

**Exemple 1**

La fonction $f(x) = x^2$ n'est pas uniformément continue sur $\mathbb{R}$ (non compact).

Cependant, si on la restreint à n'importe quel intervalle compact, par exemple $K = [-100, 100]$, alors comme $f$ est continue sur ce compact, le théorème de Heine s'applique et on peut affirmer que $f$ est uniformément continue sur $[-100, 100]$.

**Exemple 2**

La fonction $g(x,y) = e^{x^2+y^2}$ est continue sur $\mathbb{R}^2$. Soit $K$ le disque unité fermé, $K = \{(x,y) \mid x^2+y^2 \le 1\}$.

$K$ est compact. $g$ est continue sur $K$.

Par le théorème de Heine, $g$ est uniformément continue sur $K$.

**Exemple 3**

La fonction $h(x) = \tan(x)$ est continue sur l'intervalle $[0, \pi/4]$. Cet intervalle est compact.

Donc, $h$ est uniformément continue sur $[0, \pi/4]$.

Notez que sur $[0, \pi/2[$, qui n'est pas compact, la fonction n'est pas uniformément continue car sa pente tend vers l'infini près de $\pi/2$.

### Contre-exemples (illustrant la nécessité des hypothèses)

**Contre-exemple 1 (Domaine non compact)**

C'est le cas le plus courant. La fonction $f(x)=x^2$ sur $\mathbb{R}$ est continue, mais le domaine n'est pas compact, et la conclusion du théorème (continuité uniforme) est fausse. Cela montre que l'hypothèse de compacité est essentielle.

**Contre-exemple 2 (Fonction non continue)**

Soit le domaine compact $K = [0, 1]$. Considérons la fonction discontinue :

$$ f(x) = \begin{cases} 0 & \text{si } x = 0, \\ 1 & \text{si } x \in ]0, 1]. \end{cases} $$

Le domaine est compact, mais la fonction n'est pas continue en 0. Elle n'est pas non plus uniformément continue. Pour $\varepsilon=1/2$, aucun $\delta > 0$ ne peut fonctionner. Si on prend $x=0$ et $y=\delta/2$, on a $|x-y|<\delta$ mais $|f(x)-f(y)|=|0-1|=1 > 1/2$. Cela montre que l'hypothèse de continuité est essentielle.

### Concepts Connexes

-   **Continuité uniforme** : Le théorème de Heine est le principal outil pour établir la continuité uniforme dans de nombreux cas.
-   **Ensembles compacts** : Ce théorème met en lumière une autre propriété fondamentale des ensembles compacts et leur interaction avec les fonctions continues.
-   **Intégration** : La continuité uniforme est une hypothèse clé dans la construction de l'intégrale de Riemann. Le théorème de Heine garantit que toute fonction continue sur un intervalle fermé $[a,b]$ est intégrable.
