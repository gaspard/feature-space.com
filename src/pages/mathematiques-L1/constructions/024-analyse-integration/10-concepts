---
id: ccac2077
type: concepts
order: 10
title: "Analyse: Intégration"
tags:
  - analyse
  - suites
  - limites
  - continuité
  - dérivabilité
  - intégration
course: Constructions et raisonnements mathématiques
courseId: d2e11e03
chapter: "Analyse: Intégration"
chapterId: a5489a34
level: regular
createdAt: '2025-10-18T19:12:12.801Z'
---
# Analyse: Intégration (A)

---

## Concept 1: Fonctions en escalier et leur intégrale

### Prérequis

- **Fonctions** : Connaissance de la définition d'une fonction $f: I \to \mathbb{R}$ où $I$ est un intervalle.
- **Intervalles de $\mathbb{R}$** : Savoir ce qu'est un intervalle borné $[a, b]$.
- **Géométrie élémentaire** : Calcul de l'aire d'un rectangle.

### Définition

#### Subdivision d'un intervalle

Soit $[a, b]$ un intervalle fermé et borné de $\mathbb{R}$. Une **subdivision** de $[a, b]$ est un ensemble fini de points $\sigma = \{x_0, x_1, \dots, x_n\}$ tel que $a = x_0 < x_1 < \dots < x_n = b$.

#### Fonction en escalier

Une fonction $f: [a, b] \to \mathbb{R}$ est dite **en escalier** s'il existe une subdivision $\sigma = \{x_0, x_1, \dots, x_n\}$ de $[a, b]$ telle que $f$ est constante sur chaque intervalle ouvert $]x_{i-1}, x_i[$ pour $i = 1, \dots, n$.

La subdivision $\sigma$ est dite **adaptée** à $f$.

#### Intégrale d'une fonction en escalier

Soit $f$ une fonction en escalier sur $[a, b]$ et $\sigma = \{x_0, \dots, x_n\}$ une subdivision adaptée. Soit $c_i$ la valeur constante de $f$ sur $]x_{i-1}, x_i[$. L'**intégrale de $f$ sur $[a, b]$** est le nombre réel noté $\int_a^b f(t) dt$ ou $\int_a^b f$ et défini par :

$$ \int_a^b f = \sum_{i=1}^n (x_i - x_{i-1}) c_i $$

### Explications Détaillées

L'idée de l'intégrale est de calculer "l'aire sous la courbe" d'une fonction. Pour des fonctions compliquées, cette notion d'aire peut être difficile à définir. On commence donc par la classe de fonctions la plus simple pour laquelle cette aire est évidente : les **fonctions en escalier**.

Le graphe d'une fonction en escalier ressemble, comme son nom l'indique, à un escalier. Il est composé de segments horizontaux. L'aire sous un tel graphe est simplement une collection de rectangles.

- **Subdivision** : Pour définir une fonction en escalier, on a d'abord besoin de "découper" l'intervalle de base $[a, b]$ en plus petits morceaux. C'est le rôle de la subdivision. Une subdivision $\sigma = \{x_0, x_1, \dots, x_n\}$ découpe $[a, b]$ en $n$ sous-intervalles $[x_{i-1}, x_i]$.

- **Fonction en escalier** : Une fois l'intervalle découpé, une fonction en escalier est une fonction qui ne change pas de valeur à l'intérieur de chaque morceau ouvert $]x_{i-1}, x_i[$. Elle est constante sur chaque "marche". Notez bien que la définition ne dit rien sur les valeurs que la fonction prend aux points de la subdivision ($x_0, x_1, \dots$). Ces valeurs peuvent être n'importe quoi, elles n'affecteront pas l'intégrale.

- **Intégrale** : L'intégrale est définie comme la somme des aires des rectangles formés par le graphe de la fonction. Pour chaque intervalle $]x_{i-1}, x_i[$, on a un rectangle de base $(x_i - x_{i-1})$ et de hauteur $c_i$ (la valeur de $f$ sur cet intervalle). L'aire de ce rectangle est $(x_i - x_{i-1})c_i$. On somme ces aires pour tous les rectangles.

Si une hauteur $c_i$ est négative, le graphe est sous l'axe des abscisses, et on compte une "aire algébrique" négative. L'intégrale est donc la somme des aires des rectangles au-dessus de l'axe moins la somme des aires des rectangles en dessous.

Une propriété importante est que la valeur de l'intégrale **ne dépend pas du choix de la subdivision adaptée**. Si on choisit une subdivision plus fine (en ajoutant des points), on découpe les rectangles existants en plus petits rectangles, mais la somme totale des aires reste la même.

### Propriétés Clés

Soient $f$ et $g$ deux fonctions en escalier sur $[a, b]$ et $\lambda \in \mathbb{R}$.

- **Linéarité** : La fonction $f + \lambda g$ est en escalier et $\int_a^b (f + \lambda g) = \int_a^b f + \lambda \int_a^b g$.
- **Relation de Chasles** : Pour tout $c \in ]a, b[$, $\int_a^b f = \int_a^c f + \int_c^b f$.
- **Croissance** : Si $f(x) \le g(x)$ pour tout $x \in [a, b]$, alors $\int_a^b f \le \int_a^b g$.
- **Inégalité triangulaire** : La fonction $|f|$ est en escalier et $|\int_a^b f| \le \int_a^b |f|$.

### Exemples

**Exemple 1**

Soit $f$ la fonction constante $f(x) = 3$ sur l'intervalle $[1, 5]$.

C'est une fonction en escalier. On peut prendre la subdivision la plus simple $\sigma = \{1, 5\}$. Ici $x_0 = 1, x_1 = 5$.

Sur l'intervalle $]1, 5[$, $f$ est constante et vaut $c_1 = 3$.

L'intégrale est $\int_1^5 f(x) dx = (5 - 1) \times 3 = 4 \times 3 = 12$.

Cela correspond bien à l'aire d'un rectangle de base 4 et de hauteur 3.

**Exemple 2**

Soit $g$ la fonction définie sur $[0, 4]$ par :

$$ g(x) = \begin{cases} 2 & \text{si } 0 \le x < 2 \\ -1 & \text{si } 2 \le x \le 4 \end{cases} $$

Une subdivision adaptée est $\sigma = \{0, 2, 4\}$.

- Sur $]0, 2[$, $g(x) = 2$.
- Sur $]2, 4[$, la valeur est constante. Comme $g(x)=-1$ sur $[2,4]$, elle vaut $-1$ sur $]2,4[$ aussi.

L'intégrale est :

$$ \int_0^4 g(x) dx = (2 - 0) \times 2 + (4 - 2) \times (-1) = 2 \times 2 + 2 \times (-1) = 4 - 2 = 2. $$

L'aire au-dessus de l'axe (4) est plus grande que l'aire en dessous (2).

**Exemple 3**

Soit $h$ la fonction partie entière $h(x) = E(x)$ sur l'intervalle $[0, 3]$.

Une subdivision adaptée est $\sigma = \{0, 1, 2, 3\}$.

- Sur $]0, 1[$, $h(x) = 0$.
- Sur $]1, 2[$, $h(x) = 1$.
- Sur $]2, 3[$, $h(x) = 2$.

L'intégrale est :

$$ \int_0^3 E(x) dx = (1-0)\times 0 + (2-1)\times 1 + (3-2)\times 2 = 0 + 1 + 2 = 3. $$

### Contre-exemples

**Contre-exemple 1**

La fonction $f(x) = x$ sur $[0, 1]$. Cette fonction n'est pas en escalier car elle n'est constante sur aucun intervalle. Quelle que soit la finesse de la subdivision, la fonction prend une infinité de valeurs différentes sur chaque sous-intervalle $]x_{i-1}, x_i[$.

**Contre-exemple 2**

La fonction $f(x) = \sin(1/x)$ sur $]0, 1]$, avec $f(0)=0$. Près de 0, cette fonction oscille infiniment. Il est impossible de trouver une subdivision $\{x_0, x_1, \dots\}$ telle que $f$ soit constante sur $]x_0, x_1[ = ]0, x_1[$, car la fonction prend toutes les valeurs entre -1 et 1 une infinité de fois dans cet intervalle.

### Concepts Connexes

- **Subdivision** : Outil de base pour définir les fonctions en escalier et l'intégrale de Riemann.
- **Intégrale de Riemann** : L'intégrale d'une fonction plus générale (par exemple continue) est définie en l'approximant par des intégrales de fonctions en escalier.
- **Fonction continue par morceaux** : Une généralisation des fonctions en escalier. Elles sont constituées de "morceaux" de fonctions continues.

### Applications

- **Calcul d'aires** : Le concept le plus direct, pour des formes composées de rectangles.
- **Fondement théorique** : Les fonctions en escalier sont le pilier de la construction de l'intégrale de Riemann, qui a d'innombrables applications en physique (calcul de travail, de flux), en probabilités (calcul d'espérances) et en analyse.

---

## Concept 2: Intégrale de Riemann pour une fonction bornée

### Prérequis

- **Fonctions en escalier et leur intégrale** : Le concept précédent est fondamental.
- **Fonction bornée** : Une fonction $f$ est bornée sur $[a, b]$ s'il existe un nombre $M$ tel que $|f(x)| \le M$ pour tout $x \in [a, b]$.
- **Borne supérieure (sup) et borne inférieure (inf)** : Comprendre la définition du plus petit des majorants et du plus grand des minorants d'un ensemble de nombres réels.

### Définition

Soit $f: [a, b] \to \mathbb{R}$ une fonction **bornée**.

1.  L'**intégrale inférieure** de $f$ sur $[a, b]$ est le nombre :

    $$ I_{a,b}^-(f) = \sup \left\{ \int_a^b \varphi(t) dt \mid \varphi \text{ est en escalier et } \varphi \le f \right\} $$

    C'est la borne supérieure des intégrales de toutes les fonctions en escalier qui sont "en dessous" de $f$.

2.  L'**intégrale supérieure** de $f$ sur $[a, b]$ est le nombre :

    $$ I_{a,b}^+(f) = \inf \left\{ \int_a^b \psi(t) dt \mid \psi \text{ est en escalier et } \psi \ge f \right\} $$

    C'est la borne inférieure des intégrales de toutes les fonctions en escalier qui sont "au-dessus" de $f$.

3.  On dit que $f$ est **intégrable au sens de Riemann** (ou simplement **intégrable**) sur $[a, b]$ si son intégrale inférieure et son intégrale supérieure sont égales :

    $$ I_{a,b}^-(f) = I_{a,b}^+(f) $$

    Cette valeur commune est alors appelée l'**intégrale de Riemann** de $f$ sur $[a, b]$ et est notée $\int_a^b f(t) dt$.

### Explications Détaillées

Comment définir l'aire sous la courbe d'une fonction $f$ qui n'est pas en escalier ? L'idée de Riemann est d'encadrer cette aire inconnue.

On approche la fonction $f$ de deux manières :

- **Par en dessous (intégrale inférieure)** : On considère toutes les fonctions en escalier $\varphi$ qui restent entièrement sous le graphe de $f$ ($\varphi(x) \le f(x)$ pour tout $x$). Pour chacune de ces fonctions $\varphi$, on sait calculer son intégrale, $\int_a^b \varphi$. On obtient ainsi un ensemble d'aires, qui sont toutes plus petites que l'aire que nous cherchons. L'intégrale inférieure, $I_{a,b}^-(f)$, est la "meilleure" approximation par en dessous : c'est la borne supérieure (le plus grand de ces "minorants" de l'aire) de toutes ces aires.
- **Par au-dessus (intégrale supérieure)** : De la même manière, on considère toutes les fonctions en escalier $\psi$ qui restent au-dessus du graphe de $f$ ($\psi(x) \ge f(x)$). Leurs intégrales forment un ensemble d'aires qui sont toutes plus grandes que l'aire cherchée. L'intégrale supérieure, $I_{a,b}^+(f)$, est la "meilleure" approximation par au-dessus : c'est la borne inférieure (le plus petit de ces "majorants" de l'aire) de toutes ces aires.

On a toujours $I_{a,b}^-(f) \le I_{a,b}^+(f)$. L'aire que nous cherchons est coincée entre ces deux valeurs.

Si, en améliorant sans cesse nos approximations par en dessous et par au-dessus, on peut rendre l'écart entre elles aussi petit que l'on veut, alors elles convergent vers une unique valeur commune. C'est le cas où la fonction est **intégrable**. Cette valeur commune est, par définition, l'intégrale de $f$. Si l'écart ne peut pas être rendu nul, c'est que la notion d'aire sous la courbe n'est pas bien définie pour cette fonction : elle n'est pas intégrable.

L'hypothèse que $f$ est **bornée** est cruciale. Si la fonction n'est pas bornée, on ne peut pas l'encadrer par des fonctions en escalier (qui sont, par définition, bornées), et la construction ne fonctionne pas.

### Propriétés Clés

- Pour toute fonction bornée $f$, on a $I_{a,b}^-(f) \le I_{a,b}^+(f)$.
- **Critère d'intégrabilité** : Une fonction bornée $f$ est intégrable sur $[a, b]$ si et seulement si :

  $$ \forall \varepsilon > 0, \exists \varphi, \psi \text{ en escalier t.q. } \varphi \le f \le \psi \text{ et } \int_a^b (\psi - \varphi) < \varepsilon $$

  Ceci signifie qu'on peut trouver un "sandwich" de fonctions en escalier dont l'aire entre les deux est arbitrairement petite.

- Les propriétés de l'intégrale (linéarité, Chasles, croissance) s'étendent aux fonctions intégrables.

### Exemples

**Exemple 1 : Une fonction en escalier**

Si $f$ est déjà une fonction en escalier, on peut prendre $\varphi = f$ et $\psi = f$. Alors $\varphi \le f \le \psi$. Dans ce cas, $I^-(f) \ge \int f$ et $I^+(f) \le \int f$. Comme on sait que $I^-(f) \le I^+(f)$, on en déduit que $I^-(f) = I^+(f) = \int f$. Toute fonction en escalier est donc intégrable, et sa nouvelle intégrale coïncide avec l'ancienne.

**Exemple 2 : La fonction $f(x) = x$ sur $[0, 1]$**

Soit $n \in \mathbb{N}^*$. Considérons la subdivision régulière $\sigma_n = \{0, 1/n, 2/n, \dots, 1\}$.

- Construisons une fonction en escalier $\varphi_n \le f$. Sur chaque intervalle $[(i-1)/n, i/n]$, la plus petite valeur de $f(x)=x$ est $(i-1)/n$. Prenons $\varphi_n(x) = (i-1)/n$ pour $x \in [(i-1)/n, i/n[$.

$\int_0^1 \varphi_n = \sum_{i=1}^n \frac{1}{n} \times \frac{i-1}{n} = \frac{1}{n^2} \sum_{j=0}^{n-1} j = \frac{1}{n^2} \frac{(n-1)n}{2} = \frac{n-1}{2n}$.

- Construisons $\psi_n \ge f$. Sur $[(i-1)/n, i/n]$, la plus grande valeur est $i/n$. Prenons $\psi_n(x) = i/n$.

$\int_0^1 \psi_n = \sum_{i=1}^n \frac{1}{n} \times \frac{i}{n} = \frac{1}{n^2} \sum_{i=1}^{n} i = \frac{1}{n^2} \frac{n(n+1)}{2} = \frac{n+1}{2n}$.

Quand $n \to \infty$, $\int \varphi_n \to 1/2$ et $\int \psi_n \to 1/2$. Donc $I^-(f) \ge 1/2$ et $I^+(f) \le 1/2$. On en conclut que $I^-(f) = I^+(f) = 1/2$, donc $f$ est intégrable et $\int_0^1 x dx = 1/2$.

**Exemple 3 : Une fonction discontinue mais intégrable**

Soit $f(x) = 1$ si $x = 1/2$ et $f(x) = 0$ sinon, sur $[0, 1]$.

Pour tout $\varepsilon > 0$, on peut construire un encadrement.

- Prenons $\varphi(x) = 0$ pour tout $x$. C'est une fonction en escalier, $\varphi \le f$, et $\int_0^1 \varphi = 0$. Donc $I^-(f) \ge 0$.
- Prenons la subdivision $\{0, 1/2 - \varepsilon/2, 1/2 + \varepsilon/2, 1\}$. Définissons $\psi(x) = 1$ sur $]1/2 - \varepsilon/2, 1/2 + \varepsilon/2[$ et $0$ ailleurs. Alors $\psi \ge f$.

$\int_0^1 \psi = 0 \times (1/2-\varepsilon/2) + 1 \times (\varepsilon) + 0 \times (1/2 - \varepsilon/2) = \varepsilon$.

Comme on peut rendre $\varepsilon$ aussi petit qu'on veut, $I^+(f) \le 0$.

On a donc $I^-(f) = I^+(f) = 0$. La fonction est intégrable d'intégrale nulle.

### Contre-exemples

**Contre-exemple 1 : La fonction de Dirichlet**

Soit $f(x) = 1$ si $x \in \mathbb{Q}$ et $f(x) = 0$ si $x \notin \mathbb{Q}$, sur $[0, 1]$.

- Toute fonction en escalier $\varphi \le f$ doit être négative ou nulle partout. En effet, sur tout intervalle $]x_{i-1}, x_i[$, il y a des nombres irrationnels, où $f$ vaut 0. Donc la constante sur cet intervalle doit être $\le 0$. La plus grande intégrale possible pour $\varphi$ est 0. Donc $I_{0,1}^-(f) = 0$.
- Toute fonction en escalier $\psi \ge f$ doit être supérieure ou égale à 1 partout. En effet, sur tout intervalle $]x_{i-1}, x_i[$, il y a des nombres rationnels, où $f$ vaut 1. Donc la constante doit être $\ge 1$. La plus petite intégrale possible pour $\psi$ est $1 \times (1-0)=1$. Donc $I_{0,1}^+(f) = 1$.

Puisque $I^-(f) \ne I^+(f)$, cette fonction n'est pas intégrable au sens de Riemann.

**Contre-exemple 2 : Une fonction non bornée**

Soit $f(x) = 1/x$ sur $]0, 1]$. Cette fonction n'est pas bornée au voisinage de 0. La construction de Riemann ne s'applique pas car on ne peut pas trouver de fonction en escalier $\psi$ telle que $\psi \ge f$ sur $[0, 1]$. (On parle dans ce cas d'intégrale impropre, un autre concept).

### Concepts Connexes

- **Fonctions continues et continues par morceaux** : Ce sont les classes de fonctions les plus importantes qui s'avèrent être intégrables au sens de Riemann.
- **Théorème fondamental de l'analyse** : Lie l'intégrale de Riemann à la notion de primitive, montrant que l'intégration et la dérivation sont des opérations inverses l'une de l'autre.
- **Sommes de Riemann** : Une autre façon d'aborder l'intégrale de Riemann, plus proche du calcul numérique, comme limite de sommes.

---

## Concept 3: Intégrabilité des Fonctions Continues et Continues par Morceaux

### Prérequis

- **Intégrale de Riemann** : Définition de l'intégrabilité pour une fonction bornée.
- **Continuité** : Définition d'une fonction continue sur un intervalle.
- **Limite d'une fonction** : Savoir ce que sont les limites à gauche et à droite.
- **Primitive** : Une fonction $F$ est une primitive de $f$ si $F' = f$.

### Définition

#### Fonction continue par morceaux

Une fonction $f: [a, b] \to \mathbb{R}$ est dite **continue par morceaux** s'il existe une subdivision $\sigma = \{x_0 < x_1 < \dots < x_n\}$ de $[a, b]$ telle que pour chaque $i \in \{1, \dots, n\}$ :

1.  $f$ est continue sur l'intervalle ouvert $]x_{i-1}, x_i[$.
2.  $f$ admet une limite finie à droite en $x_{i-1}$ (notée $\lim_{x \to x_{i-1}^+} f(x)$).
3.  $f$ admet une limite finie à gauche en $x_i$ (notée $\lim_{x \to x_i^-} f(x)$).

#### Théorèmes d'intégrabilité

1.  Toute fonction **continue** sur un segment $[a, b]$ est intégrable sur $[a, b]$.
2.  Toute fonction **continue par morceaux** sur un segment $[a, b]$ est intégrable sur $[a, b]$.
3.  **Théorème fondamental de l'analyse (partie 1)** : Si $f$ est une fonction continue sur $[a, b]$, alors la fonction $F$ définie par $F(x) = \int_a^x f(t) dt$ pour $x \in [a, b]$ est dérivable sur $[a, b]$ et $F'(x) = f(x)$. Autrement dit, $F$ est une primitive de $f$.

### Explications Détaillées

La définition de l'intégrale de Riemann est assez abstraite. En pratique, on a besoin de savoir quelles fonctions "usuelles" sont intégrables. Ce concept répond à cette question : les fonctions les plus courantes que nous étudions, les fonctions continues et celles qui sont "presque" continues, sont bien intégrables.

- **Fonctions continues** : Une fonction continue sur un segment $[a, b]$ ne fait pas de "sauts" et est bornée. Son graphe est "bien élevé". Intuitivement, il semble évident qu'on peut définir une aire sous sa courbe. Le théorème confirme cette intuition : on peut toujours faire en sorte que l'écart entre les approximations par en-dessous et par en-dessus devienne nul.

- **Fonctions continues par morceaux** : Cette classe de fonctions est une généralisation naturelle. Une telle fonction est simplement une collection de fonctions continues "collées" les unes aux autres. Elle peut avoir un nombre fini de "sauts" (discontinuités de première espèce). Les fonctions en escalier sont un cas particulier de fonctions continues par morceaux (où les morceaux sont constants). Comme on peut découper l'intégrale au niveau de chaque saut (grâce à la relation de Chasles), et que chaque morceau est essentiellement continu, l'intégrale totale est bien définie.

- **Le lien avec les primitives** : Le théorème fondamental est une des pierres angulaires de l'analyse. Il établit un pont extraordinaire entre deux concepts qui semblaient a priori distincts :
    - L'**intégrale**, vue comme le calcul d'une aire (un concept géométrique).
    - La **dérivée**, vue comme le calcul d'une pente de tangente (un concept géométrique aussi, mais différent).

Ce théorème dit que ces deux opérations sont inverses l'une de l'autre. Calculer l'intégrale de $f$ revient à trouver une fonction dont $f$ est la dérivée (une primitive). Cela nous donne un outil de calcul extrêmement puissant : pour calculer $\int_a^b f(t) dt$, il suffit de trouver une primitive $F$ de $f$ et de calculer $F(b) - F(a)$.

### Propriétés Clés

- Toute fonction continue sur $[a, b]$ est bornée sur $[a, b]$.
- Toute fonction continue par morceaux sur $[a, b]$ est bornée sur $[a, b]$.
- Si $f$ est continue par morceaux sur $[a, b]$ associée à une subdivision $\{x_0, \dots, x_n\}$, alors $\int_a^b f = \sum_{i=1}^n \int_{x_{i-1}}^{x_i} f$. L'intégrale sur chaque $[x_{i-1}, x_i]$ se calcule en prolongeant $f$ par continuité aux bornes.

### Exemples

**Exemple 1 : Fonction continue**

La fonction $f(x) = \cos(x)$ est continue sur $[0, \pi]$. Elle est donc intégrable.

Pour calculer son intégrale, on utilise le théorème fondamental. Une primitive de $\cos(x)$ est $\sin(x)$.

$$ \int_0^\pi \cos(x) dx = [\sin(x)]_0^\pi = \sin(\pi) - \sin(0) = 0 - 0 = 0. $$

Géométriquement, l'aire au-dessus de l'axe entre 0 et $\pi/2$ est exactement compensée par l'aire en dessous de l'axe entre $\pi/2$ et $\pi$.

**Exemple 2 : Fonction continue par morceaux**

Soit $f$ définie sur $[0, 2]$ par $f(x) = x$ si $x \in [0, 1]$ et $f(x) = 1$ si $x \in ]1, 2]$.

Cette fonction est continue par morceaux. La subdivision est $\{0, 1, 2\}$.

Elle est donc intégrable. On calcule l'intégrale en la découpant :

$$ \int_0^2 f(x) dx = \int_0^1 f(x) dx + \int_1^2 f(x) dx = \int_0^1 x dx + \int_1^2 1 dx $$

$$ = \left[\frac{x^2}{2}\right]_0^1 + [x]_1^2 = \left(\frac{1^2}{2} - 0\right) + (2 - 1) = \frac{1}{2} + 1 = \frac{3}{2}. $$

**Exemple 3 : Valeur absolue**

La fonction $f(x) = |x-1|$ est continue sur $[0, 3]$, donc intégrable. On peut la voir comme une fonction continue par morceaux pour la calculer.

$f(x) = 1-x$ si $x \in [0, 1]$ et $f(x) = x-1$ si $x \in [1, 3]$.

$$ \int_0^3 |x-1| dx = \int_0^1 (1-x) dx + \int_1^3 (x-1) dx $$

$$ = \left[x - \frac{x^2}{2}\right]_0^1 + \left[\frac{x^2}{2} - x\right]_1^3 = \left(1-\frac{1}{2}\right) - 0 + \left(\frac{9}{2}-3\right) - \left(\frac{1}{2}-1\right) $$

$$ = \frac{1}{2} + \frac{3}{2} - \left(-\frac{1}{2}\right) = \frac{1+3+1}{2} = \frac{5}{2}. $$

### Contre-exemples

**Contre-exemple 1 : Une fonction non continue par morceaux**

La fonction de Dirichlet ($1$ sur les rationnels, $0$ sur les irrationnels) n'est continue en aucun point. Elle n'est donc pas continue par morceaux. On a déjà vu qu'elle n'est pas intégrable.

**Contre-exemple 2 : Une fonction avec une discontinuité non finie**

La fonction $f(x) = \sin(1/x)$ sur $]0, 1]$ et $f(0)=0$. Elle n'est pas continue par morceaux sur $[0, 1]$ car elle n'admet pas de limite à droite en 0 (elle oscille indéfiniment). Il est remarquable que cette fonction soit tout de même intégrable au sens de Riemann, mais elle sort du cadre des théorèmes simples présentés ici.

### Concepts Connexes

- **Dérivation** : Le théorème fondamental de l'analyse montre que la dérivation est l'opération inverse de l'intégration.
- **Calcul intégral** : L'ensemble des techniques pour calculer des intégrales, qui reposent massivement sur la recherche de primitives.
- **Équations différentielles** : La résolution d'équations comme $y' = f(x)$ passe par le calcul de l'intégrale de $f$.

---

## Concept 4: Sommes de Riemann

### Prérequis

- **Intégrale de Riemann** : Savoir qu'une fonction intégrable possède une intégrale $\int_a^b f$.
- **Subdivision d'un intervalle** : Définition de $\sigma = \{x_0, \dots, x_n\}$.
- **Limite d'une suite** : Comprendre la convergence d'une suite $S_n$ vers une limite $L$.

### Définition

Soit $f$ une fonction définie sur $[a, b]$.

1.  Une **subdivision marquée** de $[a, b]$ est un couple $(\sigma, \theta)$ où :
    - $\sigma = \{x_0 < x_1 < \dots < x_n\}$ est une subdivision de $[a, b]$.
    - $\theta = \{y_1, y_2, \dots, y_n\}$ est un ensemble de points (les "marqueurs" ou "tags") tels que $y_i \in [x_{i-1}, x_i]$ pour chaque $i=1, \dots, n$.

2.  La **somme de Riemann** de $f$ associée à la subdivision marquée $(\sigma, \theta)$ est le nombre :

    $$ S(f, \sigma, \theta) = \sum_{i=1}^n (x_i - x_{i-1}) f(y_i) $$

3.  Le **pas** de la subdivision $\sigma$ est la longueur du plus grand sous-intervalle : $|\sigma| = \max_{i=1..n} (x_i - x_{i-1})$.

**Théorème de convergence :**

Si $f$ est une fonction **intégrable** sur $[a, b]$, alors ses sommes de Riemann convergent vers son intégrale lorsque le pas de la subdivision tend vers 0. Formellement :

$$ \lim_{|\sigma| \to 0} S(f, \sigma, \theta) = \int_a^b f(t) dt $$

### Explications Détaillées

Les sommes de Riemann offrent une vision plus concrète et calculatoire de l'intégrale. L'idée est de revenir à l'approximation de l'aire sous la courbe par une somme d'aires de rectangles.

- Sur chaque sous-intervalle $[x_{i-1}, x_i]$ de la subdivision, au lieu de chercher la borne supérieure ou inférieure de $f$, on choisit simplement **un point au hasard** $y_i$ dans cet intervalle.
- On construit alors un rectangle de base $(x_i - x_{i-1})$ et de hauteur $f(y_i)$. L'aire de ce rectangle est $(x_i - x_{i-1})f(y_i)$.
- La somme de Riemann est la somme des aires (algébriques) de tous ces rectangles. C'est une approximation de l'intégrale de $f$.

Le point crucial est que si la fonction $f$ est "gentille" (intégrable), alors **le choix des points marqueurs $y_i$ n'a pas d'importance à la limite**. Que l'on choisisse le point à gauche, à droite, au milieu, ou n'importe où dans chaque sous-intervalle, tant que les sous-intervalles deviennent de plus en plus petits (le pas $|\sigma|$ tend vers 0), la somme convergera toujours vers la même valeur : l'intégrale de $f$.

Cette approche est fondamentale pour deux raisons :

1.  **Théorique** : Elle donne une définition équivalente de l'intégrale de Riemann pour les fonctions continues.
2.  **Pratique** : Elle est à la base de presque toutes les méthodes de **calcul numérique d'intégrales**. Un ordinateur ne peut pas calculer une borne `sup` ou `inf` sur une infinité de fonctions, mais il peut calculer une somme finie. En prenant une subdivision avec un grand nombre de points $n$, la somme de Riemann donne une bonne approximation de l'intégrale.

### Propriétés Clés

- Pour une fonction de classe $\mathcal{C}^1$ sur $[a, b]$, on a une estimation de l'erreur :

  $$ \left| \int_a^b f(t) dt - S(f, \sigma, \theta) \right| \le |\sigma| (b-a) \sup_{[a,b]} |f'| $$

- La convergence est plus rapide (l'erreur est plus petite) avec des choix judicieux de points $y_i$, comme la **méthode des points milieux** ($y_i = (x_{i-1}+x_i)/2$), où l'erreur est de l'ordre de $1/n^2$ au lieu de $1/n$ pour une subdivision régulière.

### Exemples

**Exemple 1 : Calcul d'une intégrale connue**

Calculons $\int_0^1 x^2 dx$ comme limite de sommes de Riemann.

Prenons la subdivision régulière $x_i = i/n$ pour $i=0, \dots, n$. Le pas est $1/n$.

Choisissons les points marqueurs à droite : $y_i = x_i = i/n$.

La somme de Riemann est :

$$ S_n = \sum_{i=1}^n (x_i - x_{i-1}) f(y_i) = \sum_{i=1}^n \frac{1}{n} f\left(\frac{i}{n}\right) = \frac{1}{n} \sum_{i=1}^n \left(\frac{i}{n}\right)^2 = \frac{1}{n^3} \sum_{i=1}^n i^2 $$

On utilise la formule $\sum_{i=1}^n i^2 = \frac{n(n+1)(2n+1)}{6}$.

$$ S_n = \frac{1}{n^3} \frac{n(n+1)(2n+1)}{6} = \frac{2n^2 + 3n + 1}{6n^2} = \frac{1}{3} + \frac{1}{2n} + \frac{1}{6n^2} $$

Quand $n \to \infty$, $S_n \to 1/3$. On retrouve bien $\int_0^1 x^2 dx = [x^3/3]_0^1 = 1/3$.

**Exemple 2 : Calcul d'une limite de série**

Trouver la limite de $L_n = \sum_{k=1}^n \frac{n}{n^2+k^2}$ quand $n \to \infty$.

On essaie de la faire ressembler à une somme de Riemann. Factorisons par $n^2$ au dénominateur :

$$ L_n = \sum_{k=1}^n \frac{n}{n^2(1+(k/n)^2)} = \sum_{k=1}^n \frac{1}{n} \frac{1}{1+(k/n)^2} $$

C'est la somme de Riemann de la fonction $f(x) = \frac{1}{1+x^2}$ sur $[0, 1]$, avec une subdivision régulière et les points marqueurs à droite.

Comme $f$ est continue, la limite est l'intégrale :

$$ \lim_{n \to \infty} L_n = \int_0^1 \frac{1}{1+x^2} dx = [\arctan(x)]_0^1 = \arctan(1) - \arctan(0) = \frac{\pi}{4}. $$

**Exemple 3 : Approximation numérique**

Approchons $\int_1^2 \frac{1}{t} dt = \ln(2) \approx 0.693$ avec $n=4$.

Subdivision régulière de $[1, 2]$ : $\{1, 1.25, 1.5, 1.75, 2\}$. Le pas est $0.25$.

Méthode des points milieux : $y_1=1.125, y_2=1.375, y_3=1.625, y_4=1.875$.

$$ S_4 = 0.25 \left( \frac{1}{1.125} + \frac{1}{1.375} + \frac{1}{1.625} + \frac{1}{1.875} \right) \approx 0.25 (0.888... + 0.727... + 0.615... + 0.533...) \approx 0.691 $$

C'est déjà une assez bonne approximation.

### Contre-exemples

**Contre-exemple 1 : Pas ne tendant pas vers 0**

Considérons $f(x)=x$ sur $[0, 2]$. Prenons la suite de subdivisions $\sigma_n = \{0, 1, 2\}$ pour tout $n$. Le pas est constant $|\sigma_n| = 1 \ne 0$.

Si on marque à gauche, $S_n = (1-0)f(0) + (2-1)f(1) = 0+1=1$.

Si on marque à droite, $S_n = (1-0)f(1) + (2-1)f(2) = 1+2=3$.

Les sommes ne convergent pas vers l'intégrale $\int_0^2 x dx = 2$.

**Contre-exemple 2 : Fonction non intégrable**

Pour la fonction de Dirichlet sur $[0, 1]$, prenons une subdivision régulière.

- Si on choisit des points marqueurs $y_i$ tous rationnels (par exemple les bornes gauches $y_i=(i-1)/n$), alors $f(y_i)=1$ pour tout $i$, et la somme de Riemann vaut $\sum (1/n) \times 1 = 1$.
- Si on choisit des points marqueurs $y_i$ tous irrationnels (c'est toujours possible), alors $f(y_i)=0$ et la somme de Riemann vaut 0.

Même avec un pas qui tend vers 0, la somme ne converge pas vers une valeur unique.

### Concepts Connexes

- **Intégration numérique** : Discipline qui développe des méthodes efficaces pour approximer des intégrales (méthode des rectangles, des trapèzes, de Simpson...).
- **Séries** : Les sommes de Riemann établissent un lien fort entre les sommes discrètes (séries) et les sommes continues (intégrales), souvent utilisé pour comparer une série à une intégrale.

---

## Concept 5: Formules de Taylor avec Reste Intégral

### Prérequis

- **Dérivées d'ordre supérieur** : Connaître la notion de dérivée n-ième, notée $f^{(n)}$.
- **Fonction de classe $\mathcal{C}^k$** : Une fonction $k$ fois dérivable dont la dérivée $k$-ième est continue.
- **Intégration par parties** : Maîtriser la formule $\int u v' = [uv] - \int u' v$.
- **Théorème fondamental de l'analyse** : Le lien entre intégrale et primitive.

### Définition

Soit $f$ une fonction de classe $\mathcal{C}^{n+1}$ sur un intervalle $I$. Pour tous $a, b \in I$, la **formule de Taylor avec reste intégral** à l'ordre $n$ en $a$ s'écrit :

$$ f(b) = \sum_{k=0}^n \frac{f^{(k)}(a)}{k!} (b-a)^k + R_n(b) $$

où le terme polynomial est le **polynôme de Taylor** de $f$ en $a$ :

$$ \sum_{k=0}^n \frac{f^{(k)}(a)}{k!} (b-a)^k = f(a) + f'(a)(b-a) + \frac{f''(a)}{2!}(b-a)^2 + \dots + \frac{f^{(n)}(a)}{n!}(b-a)^n $$

et le **reste intégral** $R_n(b)$ est donné par la formule exacte :

$$ R_n(b) = \int_a^b \frac{f^{(n+1)}(t)}{n!} (b-t)^n dt $$

### Explications Détaillées

La formule de Taylor est l'un des outils les plus puissants de l'analyse. Elle permet d'approximer une fonction "compliquée" $f$ au voisinage d'un point $a$ par un polynôme, qui est beaucoup plus simple à manipuler.

Le polynôme de Taylor de degré $n$ est le seul polynôme $P_n$ qui "ressemble le plus" à $f$ au point $a$ : il a la même valeur et les mêmes $n$ premières dérivées que $f$ en ce point ($P_n^{(k)}(a) = f^{(k)}(a)$ pour $k=0, \dots, n$).

La question est : à quel point cette approximation est-elle bonne ? La formule de Taylor-Young donne une information qualitative sur l'erreur (le "reste"), disant qu'elle est "petite" (un $o((b-a)^n)$). La formule de Taylor avec reste intégral va beaucoup plus loin : elle donne une **expression exacte** de cette erreur.

L'erreur $f(b) - P_n(b)$ n'est pas une vague quantité petite, c'est précisément l'intégrale $R_n(b)$. Cette formule est une **égalité**, pas une approximation. Elle est valable pour tous les points $a$ et $b$ de l'intervalle, qu'ils soient proches ou non.

Cette formule est une généralisation du théorème fondamental de l'analyse.

- Pour $n=0$, la formule donne $f(b) = f(a) + \int_a^b f'(t) dt$, ce qui est exactement le théorème fondamental.
- On obtient la formule générale en appliquant l'intégration par parties de manière répétée à partir du reste $R_{n-1}$.

Cette formule est très utile car l'intégrale du reste peut souvent être estimée (majorée ou minorée), ce qui permet de contrôler précisément la qualité de l'approximation polynomiale.

### Propriétés Clés

- **Expression exacte de l'erreur** : C'est la propriété fondamentale.
- **Lien avec Taylor-Lagrange** : En appliquant la formule de la moyenne au reste intégral, on peut montrer qu'il existe un $c$ entre $a$ et $b$ tel que $R_n(b) = \frac{f^{(n+1)}(c)}{(n+1)!}(b-a)^{n+1}$. C'est la formule de Taylor-Lagrange.
- **Applications aux développements limités** : Elle permet de justifier rigoureusement les développements limités et d'estimer la taille du reste.

### Exemples

**Exemple 1 : Fonction exponentielle**

Appliquons la formule à $f(x)=e^x$ sur $\mathbb{R}$, avec $a=0$ et à l'ordre $n=2$.

On a $f^{(k)}(x) = e^x$, donc $f^{(k)}(0) = 1$ pour tout $k$.

Le polynôme de Taylor est $P_2(b) = f(0) + f'(0)b + \frac{f''(0)}{2}b^2 = 1 + b + \frac{b^2}{2}$.

La dérivée troisième est $f^{(3)}(t) = e^t$. Le reste intégral est :

$$ R_2(b) = \int_0^b \frac{e^t}{2!} (b-t)^2 dt $$

La formule de Taylor nous donne donc l'égalité exacte pour tout $b \in \mathbb{R}$ :

$$ e^b = 1 + b + \frac{b^2}{2} + \frac{1}{2} \int_0^b e^t (b-t)^2 dt $$

**Exemple 2 : Une majoration de l'erreur**

Utilisons l'exemple précédent pour majorer l'erreur lorsqu'on approxime $e^1$ par $1 + 1 + 1/2 = 2.5$. Ici $b=1$.

$$ R_2(1) = \frac{1}{2} \int_0^1 e^t (1-t)^2 dt $$

Sur $[0, 1]$, on a $e^t \le e^1 = e$. Donc :

$$ 0 \le R_2(1) \le \frac{1}{2} \int_0^1 e (1-t)^2 dt = \frac{e}{2} \left[ -\frac{(1-t)^3}{3} \right]_0^1 = \frac{e}{2} \left( 0 - (-\frac{1}{3}) \right) = \frac{e}{6} $$

Sachant $e < 3$, l'erreur $R_2(1)$ est inférieure à $3/6 = 0.5$. On sait donc que $2.5 \le e \le 2.5 + 0.5 = 3$.

**Exemple 3 : Formule pour le logarithme**

Soit $f(x) = \ln(1+x)$ pour $x > -1$. Prenons $a=0$.

$f(0)=0$, $f'(x) = \frac{1}{1+x} \Rightarrow f'(0)=1$, $f''(x) = -\frac{1}{(1+x)^2} \Rightarrow f''(0)=-1$.

La formule à l'ordre $n=1$ pour $b=x$ s'écrit :

$$ \ln(1+x) = f(0) + f'(0)x + \int_0^x \frac{f''(t)}{1!} (x-t)^1 dt $$

$$ \ln(1+x) = x - \int_0^x \frac{x-t}{(1+t)^2} dt $$

C'est une expression exacte pour $\ln(1+x)$.

### Contre-exemples

**Contre-exemple 1 : Fonction pas assez régulière**

Soit $f(x) = x^{3/2}$ sur $[0, \infty[$.

$f'(x) = \frac{3}{2}x^{1/2}$, $f''(x) = \frac{3}{4}x^{-1/2}$.

La fonction est de classe $\mathcal{C}^1$ sur $[0, \infty[$ mais pas $\mathcal{C}^2$ car $f''$ n'est pas définie en 0. On ne peut donc pas écrire la formule de Taylor avec reste intégral à l'ordre $n=1$ en $a=0$. L'intégrale $\int_0^b f''(t)(b-t)dt$ n'aurait pas de sens.

**Contre-exemple 2 : Mauvaise utilisation de la formule**

La formule de Taylor-Young $f(x) = 1+x+o(x)$ pour $e^x$ en 0 est une **approximation locale**. Elle ne dit rien de précis sur la valeur de $e^{10}$.

La formule avec reste intégral est une **égalité globale**. Elle nous dit que $e^{10} = 1 + 10 + \int_0^{10} e^t(10-t)dt$. Elle est vraie, mais le terme de reste est très grand et l'approximation polynomiale $1+10=11$ est très mauvaise. La formule est exacte, mais l'approximation polynomiale n'est utile que si le reste est petit, ce qui est généralement le cas pour $b$ proche de $a$.

### Concepts Connexes

- **Séries de Taylor/entières** : Si le reste $R_n(b)$ tend vers 0 quand $n \to \infty$, alors la fonction $f(b)$ est égale à la somme de sa série de Taylor.
- **Développements limités** : La formule de Taylor est l'outil principal pour calculer les développements limités des fonctions.
- **Analyse numérique** : Les formules de Taylor sont à la base de nombreuses méthodes numériques, par exemple pour résoudre des équations différentielles ou optimiser des fonctions.
