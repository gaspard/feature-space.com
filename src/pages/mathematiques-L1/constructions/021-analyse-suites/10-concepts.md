---
id: 8f2e2d20
type: concepts
order: 10
title: "Analyse: Suites"
tags:
  - analyse
  - suites
  - limites
  - continuité
  - dérivabilité
  - intégration
course: Constructions et raisonnements mathématiques
courseId: d2e11e03
chapter: "Analyse: Suites"
chapterId: a5489a34
level: regular
createdAt: '2025-10-18T19:08:32.827Z'
---
# Analyse: Suites (A)

---

## Concept 1 : Suite de nombres complexes

### Prérequis

-   Ensembles de nombres : entiers naturels ($\mathbb{N}$) et nombres complexes ($\mathbb{C}$).
-   Notion de fonction (ou application) d'un ensemble de départ vers un ensemble d'arrivée.
-   Opérations de base sur les nombres complexes (addition, multiplication, module).

### Définition

Une **suite de nombres complexes** est une fonction $u$ dont l'ensemble de départ est l'ensemble des entiers naturels $\mathbb{N}$ (ou une partie de $\mathbb{N}$ de la forme $\{n \in \mathbb{N} \mid n \ge n_0\}$) et dont l'ensemble d'arrivée est l'ensemble des nombres complexes $\mathbb{C}$.

$$ u : \mathbb{N} \to \mathbb{C} $$

Pour un entier $n$, l'image $u(n)$ est appelée le **terme d'indice n** (ou le n-ième terme) de la suite. On le note plus couramment $u_n$. La suite elle-même est notée $(u_n)_{n\in\mathbb{N}}$ ou simplement $(u_n)$.

Il existe deux manières principales de définir une suite :

1.  **Formule explicite :** Le terme $u_n$ est donné par une formule qui dépend directement de $n$.
2.  **Relation de récurrence :** Le terme $u_{n+1}$ (ou $u_{n+k}$) est défini à partir d'un ou plusieurs termes précédents ($u_n, u_{n-1}, \dots$). Il faut alors aussi spécifier les premiers termes de la suite (par exemple $u_0$).

### Propriétés Clés

-   **Ordre des termes :** Une suite est une liste ordonnée de nombres. L'ordre est donné par les indices $n=0, 1, 2, \dots$.
-   **Nombre infini de termes :** Sauf mention contraire, une suite a une infinité de termes.
-   **Indexation :** L'indexation commence souvent à $n=0$ ou $n=1$, mais peut commencer à n'importe quel entier $n_0$. On note alors la suite $(u_n)_{n \ge n_0}$.

### Exemples

**Exemple 1 : Formule explicite**

Soit la suite $(u_n)_{n\in\mathbb{N}}$ définie par la formule $u_n = \frac{n}{n+1} + i \cdot (-1)^n$.

C'est une suite de nombres complexes. Pour trouver un terme, on remplace $n$ par sa valeur.

-   Pour $n=0$, $u_0 = \frac{0}{0+1} + i \cdot (-1)^0 = 0 + i \cdot 1 = i$.
-   Pour $n=1$, $u_1 = \frac{1}{1+1} + i \cdot (-1)^1 = \frac{1}{2} - i$.
-   Pour $n=2$, $u_2 = \frac{2}{2+1} + i \cdot (-1)^2 = \frac{2}{3} + i$.

**Exemple 2 : Suite géométrique (par récurrence)**

Une suite géométrique est définie par son premier terme $u_0 \in \mathbb{C}$ et une raison $\lambda \in \mathbb{C}$ via la relation de récurrence :

$$ \forall n \in \mathbb{N}, \quad u_{n+1} = \lambda \cdot u_n $$

Si $u_0 = 3$ et $\lambda = 2i$, les premiers termes sont :

-   $u_0 = 3$
-   $u_1 = \lambda u_0 = (2i) \cdot 3 = 6i$
-   $u_2 = \lambda u_1 = (2i) \cdot (6i) = 12i^2 = -12$
-   $u_3 = \lambda u_2 = (2i) \cdot (-12) = -24i$

On peut montrer par récurrence que la formule explicite est $u_n = \lambda^n u_0$. Pour notre exemple, $u_n = (2i)^n \cdot 3$.

**Exemple 3 : Suite de Fibonacci (par récurrence)**

La suite de Fibonacci est une suite de nombres réels (qui sont un cas particulier de nombres complexes) définie par ses deux premiers termes $u_0 = 1, u_1 = 1$ et la relation de récurrence :

$$ \forall n \in \mathbb{N}, \quad u_{n+2} = u_{n+1} + u_n $$

Chaque terme est la somme des deux termes qui le précèdent.

-   $u_0 = 1$
-   $u_1 = 1$
-   $u_2 = u_1 + u_0 = 1 + 1 = 2$
-   $u_3 = u_2 + u_1 = 2 + 1 = 3$
-   $u_4 = u_3 + u_2 = 3 + 2 = 5$

Les termes sont $1, 1, 2, 3, 5, 8, 13, \dots$

### Contre-exemples

1.  **Une fonction sur $\mathbb{R}$ :** La fonction $f(x) = x^2$ pour $x \in \mathbb{R}$ n'est pas une suite. Son ensemble de départ est $\mathbb{R}$, un ensemble continu, et non $\mathbb{N}$, un ensemble discret.
2.  **Un ensemble non ordonné :** L'ensemble $\{1, -1, i, -i\}$ est un ensemble de quatre nombres complexes. Ce n'est pas une suite car il n'y a pas d'ordre défini entre les éléments (pas de premier terme, de deuxième terme, etc.). La suite $(i^n)$ contient ces valeurs, mais dans un ordre précis.

### Concepts Connexes

-   **Fonctions :** Une suite est un cas particulier de fonction.
-   **Séries numériques :** Une série est la somme des termes d'une suite.
-   **Convergence de suites :** Le concept le plus important lié aux suites est leur comportement lorsque l'indice $n$ devient très grand.

### Applications

-   **Modélisation :** Les suites sont utilisées pour modéliser des phénomènes qui évoluent par étapes discrètes, comme la croissance d'une population, l'évolution d'un compte en banque avec intérêts, ou des processus algorithmiques.
-   **Analyse numérique :** De nombreux algorithmes, comme la méthode de Newton, génèrent des suites de nombres qui approchent la solution d'un problème.

---

## Concept 2 : Convergence d'une suite complexe

### Prérequis

-   [Concept 1 : Suite de nombres complexes](#concept-1-suite-de-nombres-complexes)
-   Module d'un nombre complexe et ses propriétés (en particulier l'inégalité triangulaire).
-   Distance dans le plan complexe : la distance entre $z_1$ et $z_2$ est $|z_1 - z_2|$.
-   Logique mathématique de base (quantificateurs universel $\forall$ et existentiel $\exists$).

### Définition

Une suite complexe $(u_n)_{n\in\mathbb{N}}$ est dite **convergente** s'il existe un nombre complexe $l$ tel que les termes de la suite se rapprochent indéfiniment de $l$ à mesure que $n$ grandit.

Formellement, cela s'écrit :

Il existe un nombre $l \in \mathbb{C}$ (la limite) tel que pour tout nombre réel strictement positif $\varepsilon$ (la tolérance), il existe un entier naturel $N$ (un rang à partir duquel la condition est vraie) tel que pour tout entier $n$ supérieur ou égal à $N$, la distance entre $u_n$ et $l$ est strictement inférieure à $\varepsilon$.

$$ \exists l \in \mathbb{C}, \forall \varepsilon > 0, \exists N \in \mathbb{N}, \forall n \ge N, |u_n - l| < \varepsilon. $$

Le nombre $l$ est appelé la **limite** de la suite $(u_n)$. On note alors :

$$ \lim_{n\to+\infty} u_n = l \quad \text{ou} \quad (u_n) \to l $$

**Interprétation géométrique :**

-   $|u_n - l| < \varepsilon$ signifie que le point $u_n$ se trouve à l'intérieur du disque ouvert de centre $l$ et de rayon $\varepsilon$, noté $D(l, \varepsilon)$.
-   La définition dit que pour n'importe quel disque (aussi petit soit-il) centré en $l$, tous les termes de la suite à partir d'un certain rang $N$ sont à l'intérieur de ce disque.

### Propriétés Clés

-   **Unicité de la limite :** Si une suite converge, sa limite est unique.

    *Démonstration (par l'absurde) :*

    **Hypothèse :** Supposons que la suite $(u_n)$ converge vers deux limites distinctes, $l$ et $l'$ avec $l \neq l'$.

    La distance entre $l$ et $l'$ est $|l-l'| > 0$. Choisissons une tolérance $\varepsilon = \frac{|l-l'|}{4}$. Ce nombre est bien strictement positif.

    Puisque $(u_n) \to l$, il existe un rang $N_1$ tel que pour tout $n \ge N_1$, $|u_n - l| < \varepsilon$.

    Puisque $(u_n) \to l'$, il existe un rang $N_2$ tel que pour tout $n \ge N_2$, $|u_n - l'| < \varepsilon$.

    Prenons un entier $n$ plus grand que $N_1$ et $N_2$ (par exemple, $n \ge \max(N_1, N_2)$). Pour un tel $n$, les deux inégalités sont vraies. On peut alors écrire :

    $$ |l - l'| = |(l - u_n) + (u_n - l')| $$

    Par l'inégalité triangulaire, $|l - l'| \le |l - u_n| + |u_n - l'|$.

    En utilisant les deux conditions de convergence, on a :

    $$ |l - l'| < \varepsilon + \varepsilon = 2\varepsilon $$

    Mais nous avons choisi $\varepsilon = \frac{|l-l'|}{4}$, ce qui implique $|l - l'| = 4\varepsilon$. L'inégalité devient donc $4\varepsilon < 2\varepsilon$. Ceci est une contradiction car $\varepsilon > 0$.

    Notre hypothèse de départ ($l \neq l'$) est donc fausse. La limite est unique.

### Exemples

**Exemple 1 : La suite $(1/n)_{n \in \mathbb{N}^*}$**

Montrons que $\lim_{n\to+\infty} \frac{1}{n} = 0$.

**Hypothèse :** La suite est $(u_n)_{n \in \mathbb{N}^*}$ avec $u_n = 1/n$. La limite présumée est $l=0$.

Soit $\varepsilon > 0$ un réel quelconque. On cherche un rang $N$ tel que pour tout $n \ge N$, on ait $|u_n - l| < \varepsilon$.

$$ \left| \frac{1}{n} - 0 \right| < \varepsilon \iff \frac{1}{n} < \varepsilon $$

Comme $n$ et $\varepsilon$ sont positifs, cela est équivalent à $n > \frac{1}{\varepsilon}$.

Il suffit donc de choisir un entier $N$ qui soit plus grand que $1/\varepsilon$. Par exemple, on peut prendre $N = \lfloor 1/\varepsilon \rfloor + 1$.

Pour tout $n \ge N$, on aura $n > 1/\varepsilon$, et donc $|1/n - 0| < \varepsilon$. La définition est satisfaite, la suite converge bien vers 0.

**Exemple 2 : La suite $u_n = \frac{2n-i}{n+1}$**

Montrons que cette suite converge vers $l=2$.

**Hypothèse :** $(u_n)_{n \in \mathbb{N}}$ avec $u_n = \frac{2n-i}{n+1}$.

On calcule la distance entre $u_n$ et $l=2$ :

$$ |u_n - 2| = \left| \frac{2n-i}{n+1} - 2 \right| = \left| \frac{2n-i - 2(n+1)}{n+1} \right| = \left| \frac{-i-2}{n+1} \right| = \frac{|-2-i|}{n+1} = \frac{\sqrt{(-2)^2+(-1)^2}}{n+1} = \frac{\sqrt{5}}{n+1} $$

Soit $\varepsilon > 0$. On veut trouver $N$ tel que pour $n \ge N$, on ait $\frac{\sqrt{5}}{n+1} < \varepsilon$.

Ceci est équivalent à $n+1 > \frac{\sqrt{5}}{\varepsilon}$, ou encore $n > \frac{\sqrt{5}}{\varepsilon} - 1$.

On peut choisir $N = \lfloor \frac{\sqrt{5}}{\varepsilon} - 1 \rfloor + 1$ (ou plus simplement $N = \lceil \sqrt{5}/\varepsilon \rceil$). Pour tout $n \ge N$, l'inégalité sera vérifiée. Donc, $(u_n) \to 2$.

**Exemple 3 : Une suite constante**

Soit la suite $(u_n)_{n\in\mathbb{N}}$ définie par $u_n = c$ pour tout $n$, où $c$ est un nombre complexe. Montrons que cette suite converge vers $l=c$.

**Hypothèse :** $(u_n)$ avec $u_n=c$.

Soit $\varepsilon > 0$. On calcule $|u_n - c| = |c - c| = 0$.

Puisque $0 < \varepsilon$ pour tout $\varepsilon > 0$, l'inégalité $|u_n - c| < \varepsilon$ est toujours vraie. On peut donc choisir n'importe quel $N$, par exemple $N=0$. Pour tout $n \ge 0$, on a bien $|u_n - c| < \varepsilon$. La suite converge donc vers $c$.

### Contre-exemples

1.  **La suite $(i^n)$ :** Les termes sont $1, i, -1, -i, 1, i, \dots$. Les points de la suite "sautent" entre quatre valeurs et ne se rapprochent d'aucune valeur unique. Nous prouverons sa divergence formellement dans le concept suivant.
2.  **La suite $(n)$ :** Les termes $0, 1, 2, 3, \dots$ s'éloignent de plus en plus de l'origine et de n'importe quel point fixe $l$. La distance $|u_n - l| = |n-l|$ grandit indéfiniment.

### Concepts Connexes

-   **Divergence d'une suite :** Une suite qui ne converge pas est dite divergente.
-   **Suite bornée :** Une suite convergente est toujours bornée (ses termes ne peuvent pas "s'échapper à l'infini").
-   **Limite d'une fonction :** La définition est très similaire, remplaçant l'entier $n \to +\infty$ par une variable réelle $x \to a$.

### Applications

-   **Algorithmes d'approximation :** De nombreux algorithmes (ex: calcul de $\sqrt{2}$, de $\pi$) produisent une suite de nombres qui converge vers la valeur désirée. La vitesse de convergence est une mesure de l'efficacité de l'algorithme.
-   **Stabilité des systèmes :** En physique ou en ingénierie, la convergence d'une suite décrivant l'état d'un système au cours du temps indique que le système atteint un état d'équilibre stable.

---

## Concept 3 : Divergence d'une suite

### Prérequis

-   [Concept 2 : Convergence d'une suite complexe](#concept-2-convergence-dune-suite-complexe)
-   Négation des propositions logiques avec quantificateurs.

### Définition

Une suite $(u_n)$ est dite **divergente** si elle n'est pas convergente.

En utilisant la négation logique de la définition de la convergence, cela signifie :

Pour tout nombre complexe $l$, il existe un réel $\varepsilon > 0$ tel que pour tout entier naturel $N$, il existe un entier $n \ge N$ pour lequel la distance $|u_n - l|$ est supérieure ou égale à $\varepsilon$.

$$ \forall l \in \mathbb{C}, \exists \varepsilon > 0, \forall N \in \mathbb{N}, \exists n \ge N, |u_n - l| \ge \varepsilon. $$

**Interprétation intuitive :**

Quelle que soit la cible $l$ que l'on propose comme limite, on peut trouver une "marge d'erreur" $\varepsilon$ telle que la suite ne reste jamais indéfiniment dans le disque $D(l, \varepsilon)$. Peu importe jusqu'où on va dans la suite (pour tout $N$), on trouvera toujours plus loin (il existe $n \ge N$) un terme qui est en dehors de ce disque.

Il existe plusieurs types de divergence :

-   La suite tend vers l'infini (pour les suites réelles, comme $u_n=n$).
-   La suite oscille entre plusieurs valeurs (comme $u_n=(-1)^n$).
-   La suite a un comportement chaotique sans tendance claire.

### Propriétés Clés

-   **Négation de la convergence :** La divergence est l'exact opposé de la convergence. Une suite est soit convergente, soit divergente.
-   **Suites non bornées :** Une suite non bornée est toujours divergente (voir Concept 4). C'est un critère très utile pour prouver la divergence.

### Exemples

**Exemple 1 : La suite $(i^n)$**

Montrons que la suite $(u_n)_{n\in\mathbb{N}}$ définie par $u_n = i^n$ est divergente.

**Hypothèse :** $(u_n)$ avec $u_n = i^n$.

Nous raisonnons par l'absurde. Supposons que $(u_n)$ converge vers une limite $l \in \mathbb{C}$.

Choisissons $\varepsilon = 1$. D'après la définition de la convergence, il doit exister un rang $N$ tel que pour tout $n \ge N$, on a $|i^n - l| < 1$.

Cette condition doit être vraie pour tous les entiers au-delà de $N$. Choisissons deux tels entiers, par exemple $n_1 = 4N$ et $n_2 = 4N + 2$ (ils sont bien $\ge N$).

Pour $n_1 = 4N$, $u_{n_1} = i^{4N} = (i^4)^N = 1^N = 1$. L'inégalité devient $|1 - l| < 1$.

Pour $n_2 = 4N+2$, $u_{n_2} = i^{4N+2} = i^{4N} \cdot i^2 = 1 \cdot (-1) = -1$. L'inégalité devient $|-1 - l| < 1$.

Maintenant, utilisons l'inégalité triangulaire :

$$ 2 = |1 - (-1)| = |(1-l) + (l - (-1))| = |(1-l) + (l+1)| \le |1-l| + |l+1| = |1-l| + |-1-l| $$

En utilisant les deux conditions que nous avons trouvées, on obtient :

$$ 2 \le |1-l| + |-1-l| < 1 + 1 = 2 $$

On arrive à la contradiction $2 < 2$. L'hypothèse que la suite converge est donc fausse. La suite $(i^n)$ est divergente.

**Exemple 2 : La suite $u_n = (-1)^n$**

C'est un cas particulier de l'exemple précédent pour une suite réelle. Les termes sont $1, -1, 1, -1, \dots$.

Supposons qu'elle converge vers $l \in \mathbb{R}$. Soit $\varepsilon = 1/2$. Il existerait un $N$ tel que pour $n \ge N$, $|(-1)^n - l| < 1/2$.

Pour un $n$ pair, $n \ge N$, on a $|1-l| < 1/2$, ce qui signifie $1/2 < l < 3/2$.

Pour un $n$ impair, $n \ge N$, on a $|-1-l| < 1/2$, ce qui signifie $-3/2 < l < -1/2$.

La limite $l$ devrait être à la fois dans $]1/2, 3/2[$ et dans $]-3/2, -1/2[$. Ces deux intervalles sont disjoints, c'est impossible. Donc la suite diverge.

**Exemple 3 : La suite $u_n = n$**

Montrons que la suite réelle $(n)_{n\in\mathbb{N}}$ diverge.

Soit $l \in \mathbb{R}$ un candidat pour la limite. Choisissons $\varepsilon = 1$.

On veut montrer qu'il n'existe pas de rang $N$ à partir duquel tous les termes sont dans l'intervalle $]l-1, l+1[$.

Par l'absurde, supposons que la suite converge vers $l$. Alors, il existe $N$ tel que pour tout $n \ge N$, $|n-l| < 1$.

Ceci implique que tous les entiers $N, N+1, N+2, \dots$ sont contenus dans l'intervalle de longueur 2, $]l-1, l+1[$. C'est impossible, car cet intervalle ne peut contenir au plus que deux entiers. La suite est donc divergente. (Plus formellement, cette suite n'est pas bornée, donc elle diverge, voir concept suivant).

### Contre-exemples

1.  **Une suite convergente n'est pas divergente :** La suite $(1/n)$ n'est pas divergente, car elle est convergente (vers 0).
2.  **Une suite dont les termes se rapprochent sans converger :** La suite $u_n = \sum_{k=1}^n \frac{1}{k}$ (série harmonique) est divergente. Ses termes augmentent sans cesse, mais de plus en plus lentement ($u_{n+1}-u_n = 1/(n+1) \to 0$). La condition $u_{n+1}-u_n \to 0$ ne suffit pas pour garantir la convergence.

### Concepts Connexes

-   **Convergence d'une suite :** La divergence est la négation de la convergence.
-   **Suite bornée :** Le fait d'être non borné est une condition suffisante pour diverger.
-   **Limite infinie (pour les suites réelles) :** Certaines suites réelles divergentes ont un comportement prévisible, elles "tendent vers $+\infty$" ou "$-\infty$". C'est un type particulier de divergence.

### Applications

-   **Détection d'instabilité :** En sciences, si une suite modélisant un système est divergente, cela peut indiquer une instabilité, une résonance, ou un phénomène d'emballement.
-   **Analyse d'algorithmes :** Certains algorithmes peuvent ne pas converger vers une solution pour certaines entrées. L'étude de la divergence permet de comprendre les limites de ces algorithmes.

---

## Concept 4 : Suite bornée

### Prérequis

-   [Concept 1 : Suite de nombres complexes](#concept-1-suite-de-nombres-complexes)
-   Module d'un nombre complexe.
-   Notions de majorant et minorant pour des ensembles de nombres réels.

### Définition

Une suite de nombres complexes $(u_n)_{n\in\mathbb{N}}$ est dite **bornée** si l'ensemble des modules de ses termes est majoré.

Formellement, cela signifie qu'il existe un nombre réel positif $M$ tel que pour tout entier naturel $n$, le module de $u_n$ est inférieur ou égal à $M$.

$$ \exists M \in \mathbb{R}_+, \forall n \in \mathbb{N}, |u_n| \le M. $$

**Interprétation géométrique :**

Une suite est bornée si tous ses termes (vus comme des points dans le plan complexe) sont contenus à l'intérieur d'un même disque centré à l'origine, de rayon $M$.

Pour une **suite réelle**, être bornée signifie être à la fois majorée et minorée :

$$ \exists m, M \in \mathbb{R}, \forall n \in \mathbb{N}, m \le u_n \le M. $$

Cette définition est équivalente à la définition complexe pour une suite réelle, car si $m \le u_n \le M$, alors $|u_n| \le \max(|m|, |M|)$.

### Propriétés Clés

-   **Partie réelle et partie imaginaire :** Une suite complexe $(u_n)$ est bornée si et seulement si les deux suites réelles $(\text{Re}(u_n))$ et $(\text{Im}(u_n))$ sont bornées.
    -   *Preuve $(\Rightarrow)$* : Si $|u_n| \le M$, alors $|\text{Re}(u_n)| \le |u_n| \le M$ et $|\text{Im}(u_n)| \le |u_n| \le M$. Les suites des parties réelle et imaginaire sont donc bornées.
    -   *Preuve $(\Leftarrow)$* : Si $|\text{Re}(u_n)| \le M_1$ et $|\text{Im}(u_n)| \le M_2$, alors $|u_n| = \sqrt{\text{Re}(u_n)^2 + \text{Im}(u_n)^2} \le \sqrt{M_1^2 + M_2^2}$. En posant $M = \sqrt{M_1^2 + M_2^2}$, on voit que $(u_n)$ est bornée.

-   **Lien fondamental avec la convergence : Toute suite convergente est bornée.**

    *Démonstration :*

    **Hypothèse :** La suite $(u_n)$ converge vers une limite $l \in \mathbb{C}$.

    En appliquant la définition de la convergence avec $\varepsilon = 1$, on sait qu'il existe un rang $N$ tel que pour tout $n \ge N$, $|u_n - l| < 1$.

    En utilisant l'inégalité triangulaire, pour ces mêmes $n \ge N$, on a :

    $$ |u_n| = |u_n - l + l| \le |u_n - l| + |l| < 1 + |l| $$

    Cela signifie que tous les termes de la suite *à partir du rang N* sont bornés par $1+|l|$.

    Et les premiers termes ? Les termes $u_0, u_1, \dots, u_{N-1}$ sont en nombre fini. L'ensemble de leurs modules $\{|u_0|, |u_1|, \dots, |u_{N-1}|\}$ est donc fini et admet un plus grand élément.

    Posons $M = \max(|u_0|, |u_1|, \dots, |u_{N-1}|, 1 + |l|)$.

    Alors, pour tout $n \in \mathbb{N}$, on a $|u_n| \le M$. La suite est donc bornée.

-   **Contraposée : Toute suite non bornée est divergente.** C'est une conséquence directe de la propriété précédente et c'est un outil très puissant pour prouver la divergence.

### Exemples

**Exemple 1 : La suite $(i^n)$**

La suite $u_n = i^n$ est bornée. Pour tout $n \in \mathbb{N}$, on a $|u_n| = |i^n| = |i|^n = 1^n = 1$.

On peut donc choisir $M=1$ (ou n'importe quel $M \ge 1$). Pour tout $n$, $|u_n| \le 1$.

Cette suite est bornée mais divergente.

**Exemple 2 : La suite $u_n = \frac{\sin(n)}{n} + i \cos(n)$**

Cette suite est bornée. On a :

$$ |u_n| = \left|\frac{\sin(n)}{n} + i \cos(n)\right| = \sqrt{\left(\frac{\sin(n)}{n}\right)^2 + (\cos(n))^2} $$

Puisque $|\sin(n)| \le 1$ et $|\cos(n)| \le 1$, et pour $n \ge 1$, $1/n \le 1$:

$$ |u_n| \le \sqrt{\left(\frac{1}{n}\right)^2 + 1^2} \le \sqrt{1^2 + 1^2} = \sqrt{2} $$

Pour $n=0$, le terme n'est pas défini (ou si on le définit à part). Si on prend $(u_n)_{n \ge 1}$, la suite est bornée par $M=\sqrt{2}$.

**Exemple 3 : Une suite convergente**

La suite $u_n = \frac{3n}{n+1} = \frac{3}{1+1/n}$ converge vers 3. Elle est donc bornée.

En effet, pour tout $n \ge 0$, $n < n+1$, donc $\frac{n}{n+1} < 1$. Ainsi, $0 \le u_n = 3 \frac{n}{n+1} < 3$.

La suite est bornée, par exemple par $M=3$.

### Contre-exemples

1.  **La suite $u_n = n$ :** Cette suite n'est pas bornée. Pour tout réel $M > 0$, on peut trouver un entier $n$ (par exemple $n = \lfloor M \rfloor + 1$) tel que $|u_n| = n > M$. Il n'existe aucun majorant pour l'ensemble des termes. Par conséquent, cette suite est divergente.
2.  **La suite $u_n = n e^{i \arctan n}$ :** Le module de $u_n$ est $|u_n| = |n| \cdot |e^{i \arctan n}| = n \cdot 1 = n$. C'est la même situation que l'exemple précédent. La suite n'est pas bornée et donc diverge.

### Concepts Connexes

-   **Convergence et Divergence :** Le lien entre être borné et converger/diverger est fondamental. Convergent $\Rightarrow$ Borné. Non borné $\Rightarrow$ Divergent.
-   **Théorème de Bolzano-Weierstrass :** Ce théorème stipule que de toute suite bornée (même si elle diverge), on peut extraire une sous-suite qui converge.

### Applications

-   **Analyse de stabilité :** En physique et ingénierie, si une suite décrivant un système est bornée, cela signifie que le système ne "diverge" pas de manière explosive, même s'il n'atteint pas un équilibre stable (il peut osciller par exemple). C'est une première condition pour la stabilité.
-   **Analyse théorique :** La propriété "convergente implique bornée" est un lemme crucial dans de nombreuses démonstrations d'analyse.

---

## Concept 5 : Opérations sur les limites de suites

### Prérequis

-   [Concept 2 : Convergence d'une suite complexe](#concept-2-convergence-dune-suite-complexe)
-   [Concept 4 : Suite bornée](#concept-4-suite-bornée)
-   Opérations sur les suites (somme, produit).
-   Propriétés du module, notamment l'inégalité triangulaire.

### Définition

Ce concept décrit comment la convergence se comporte vis-à-vis des opérations arithmétiques de base. Si on connaît les limites de deux suites, on peut en déduire les limites de leur somme, produit, etc.

Soient $(u_n)$ et $(v_n)$ deux suites complexes.

**Hypothèse :** On suppose que $(u_n)$ converge vers $l \in \mathbb{C}$ et $(v_n)$ converge vers $k \in \mathbb{C}$.

Alors on a les résultats suivants :

1.  **Limite de la somme :** La suite $(u_n + v_n)$ converge et sa limite est la somme des limites.

    $$ \lim_{n\to+\infty} (u_n + v_n) = l + k $$

2.  **Limite du produit :** La suite $(u_n v_n)$ converge et sa limite est le produit des limites.

    $$ \lim_{n\to+\infty} (u_n v_n) = l k $$

3.  **Limite de l'inverse :** Si $l \ne 0$, alors à partir d'un certain rang, les termes $u_n$ sont non nuls, et la suite $(1/u_n)$ converge vers $1/l$.

    $$ \lim_{n\to+\infty} \frac{1}{u_n} = \frac{1}{l} $$

4.  **Limite du quotient :** En combinant le produit et l'inverse, si $k \ne 0$,

    $$ \lim_{n\to+\infty} \frac{u_n}{v_n} = \frac{l}{k} $$

### Propriétés Clés

-   **Stabilité par les opérations :** L'ensemble des suites convergentes est stable par addition, multiplication et passage à l'inverse (pour les limites non nulles). C'est ce qu'on appelle une algèbre.

-   **Convergence des parties réelle et imaginaire :** Une suite complexe $(u_n)$ converge vers $l = a+ib$ si et seulement si sa partie réelle $(\text{Re}(u_n))$ converge vers $a=\text{Re}(l)$ et sa partie imaginaire $(\text{Im}(u_n))$ converge vers $b=\text{Im}(l)$.

    *Démonstration :*

    **Hypothèse $(\Rightarrow)$ :** Supposons $(u_n) \to l$. On a les inégalités $|\text{Re}(u_n) - \text{Re}(l)| = |\text{Re}(u_n-l)| \le |u_n-l|$ et $|\text{Im}(u_n) - \text{Im}(l)| \le |u_n-l|$. Comme $|u_n-l| \to 0$, les deux termes de gauche tendent aussi vers 0. Donc $(\text{Re}(u_n)) \to \text{Re}(l)$ et $(\text{Im}(u_n)) \to \text{Im}(l)$.

    **Hypothèse $(\Leftarrow)$ :** Supposons $(\text{Re}(u_n)) \to a$ et $(\text{Im}(u_n)) \to b$. La suite $u_n$ s'écrit $u_n = \text{Re}(u_n) + i \cdot \text{Im}(u_n)$. En utilisant les opérations sur les limites (somme et produit par une constante $i$), la suite $(u_n)$ converge vers $a+ib$.

-   **Passage à la limite du module :** Si $(u_n) \to l$, alors $(|u_n|) \to |l|$.

    *Démonstration :* D'après l'inégalité triangulaire inversée, on a $||u_n| - |l|| \le |u_n - l|$. Comme le terme de droite tend vers 0, celui de gauche aussi.

### Exemples

**Exemple 1 : Somme et produit**

Soit $u_n = 1/n$ et $v_n = 2 + 1/n^2$. On sait que $\lim u_n = 0$ et $\lim v_n = 2$.

-   **Somme :** $\lim (u_n+v_n) = \lim (1/n + 2 + 1/n^2) = (\lim u_n) + (\lim v_n) = 0+2=2$.
-   **Produit :** $\lim (u_n v_n) = \lim (\frac{1}{n}(2+\frac{1}{n^2})) = \lim (\frac{2}{n} + \frac{1}{n^3}) = (\lim u_n) \cdot (\lim v_n) = 0 \cdot 2 = 0$.

**Exemple 2 : Quotient**

Calculons la limite de $u_n = \frac{3n^2 - 4in + 1}{2n^2 + 5i}$.

On factorise par le terme de plus haut degré au numérateur et au dénominateur :

$$ u_n = \frac{n^2(3 - 4i/n + 1/n^2)}{n^2(2 + 5i/n^2)} = \frac{3 - 4i/n + 1/n^2}{2 + 5i/n^2} $$

Le numérateur est une somme de suites convergentes : $3 \to 3$, $-4i/n \to 0$ et $1/n^2 \to 0$. Donc le numérateur tend vers $3+0+0=3$.

Le dénominateur tend vers $2+0=2$.

Comme la limite du dénominateur est non nulle, la limite du quotient est le quotient des limites :

$$ \lim_{n\to+\infty} u_n = \frac{3}{2} $$

**Exemple 3 : Partie réelle et imaginaire**

Soit la suite $u_n = \frac{n}{n+1} + i \frac{(-1)^n}{n}$.

-   La partie réelle est $\text{Re}(u_n) = \frac{n}{n+1} = \frac{1}{1+1/n}$, qui converge vers 1.
-   La partie imaginaire est $\text{Im}(u_n) = \frac{(-1)^n}{n}$. Montrons qu'elle converge vers 0.

    $|\text{Im}(u_n) - 0| = |\frac{(-1)^n}{n}| = \frac{1}{n}$. Comme $1/n \to 0$, on a $\text{Im}(u_n) \to 0$.

Puisque les parties réelle et imaginaire convergent, la suite $(u_n)$ converge. Sa limite est $\lim \text{Re}(u_n) + i \lim \text{Im}(u_n) = 1 + i \cdot 0 = 1$.

### Contre-exemples

1.  **Formes indéterminées :** Les règles ne s'appliquent pas si les opérations mènent à des formes indéterminées. Soit $u_n = n$ et $v_n = 1/n$. $(u_n)$ et $(v_n)$ ne convergent pas toutes les deux (la première diverge). On ne peut pas calculer $\lim (u_n v_n)$ comme $(\lim u_n)(\lim v_n)$. Ici, $u_n v_n = 1$, qui converge vers 1.
2.  **Quotient avec limite nulle au dénominateur :** Soit $u_n = 1$ et $v_n = 1/n$. $\lim u_n = 1$ et $\lim v_n = 0$. On ne peut pas appliquer la règle du quotient. La suite $u_n/v_n = n$ diverge.
3.  **La réciproque de $|u_n| \to |l|$ est fausse :** La suite $u_n = (-1)^n$ est divergente. Pourtant, la suite des modules $|u_n| = 1$ est constante et converge vers $|l|=1$. La convergence des modules n'implique pas la convergence de la suite.

### Concepts Connexes

-   **Continuité :** Les opérations sur les limites de suites sont à la base de la démonstration des propriétés de la continuité (la somme de deux fonctions continues est continue, etc.) via la caractérisation séquentielle de la continuité.

### Applications

-   **Calcul de limites :** Ces propriétés sont les outils de base pour calculer la plupart des limites de suites, en les décomposant en suites plus simples.
-   **Stabilité des calculs numériques :** Elles garantissent que si des suites d'approximations convergent, les combiner par des opérations arithmétiques produira de nouvelles suites d'approximations qui convergent également de manière prévisible.

---

## Concept 6 : Comparaison asymptotique de suites (Notations de Landau)

### Prérequis

-   [Concept 2 : Convergence d'une suite complexe](#concept-2-convergence-dune-suite-complexe)
-   [Concept 5 : Opérations sur les limites de suites](#concept-5-opérations-sur-les-limites-de-suites)
-   [Concept 4 : Suite bornée](#concept-4-suite-bornée)

### Définition

Les notations de Landau (ou "comparaisons asymptotiques") permettent de décrire le comportement d'une suite $(u_n)$ par rapport à une autre suite de référence $(v_n)$ lorsque $n \to +\infty$.

**Hypothèse :** Soient $(u_n)$ et $(v_n)$ deux suites complexes, avec $v_n \neq 0$ à partir d'un certain rang.

1.  **Négligeable (petit o) :** On dit que $u_n$ est négligeable devant $v_n$, et on note $u_n = o(v_n)$, si le quotient $\frac{u_n}{v_n}$ tend vers 0.

    $$ u_n = o(v_n) \iff \lim_{n\to+\infty} \frac{u_n}{v_n} = 0 $$

    Intuitivement, cela signifie que $u_n$ devient infiniment plus petite que $v_n$ quand $n$ est grand.

2.  **Équivalente :** On dit que $u_n$ est équivalente à $v_n$, et on note $u_n \sim v_n$, si le quotient $\frac{u_n}{v_n}$ tend vers 1.

    $$ u_n \sim v_n \iff \lim_{n\to+\infty} \frac{u_n}{v_n} = 1 $$

    Intuitivement, $u_n$ et $v_n$ ont le même comportement à l'infini.

3.  **Dominée (grand O) :** On dit que $u_n$ est dominée par $v_n$, et on note $u_n = O(v_n)$, si le quotient $\frac{u_n}{v_n}$ est une suite bornée.

    $$ u_n = O(v_n) \iff \exists M \in \mathbb{R}_+, \exists N \in \mathbb{N}, \forall n \ge N, \left|\frac{u_n}{v_n}\right| \le M $$

    Intuitivement, $u_n$ ne grandit pas plus vite que $v_n$ (à un facteur constant près).

### Propriétés Clés

-   **Liens entre les notations :**
    -   Si $u_n = o(v_n)$, alors $u_n = O(v_n)$. (Une suite qui tend vers 0 est bornée).
    -   Si $u_n \sim v_n$, alors $u_n = O(v_n)$. (Une suite qui tend vers 1 est bornée).

-   **Caractérisation de l'équivalence :**

    $$ u_n \sim v_n \iff u_n - v_n = o(v_n) $$

    *Démonstration :* $\frac{u_n - v_n}{v_n} = \frac{u_n}{v_n} - 1$. Ce quotient tend vers 0 si et seulement si $\frac{u_n}{v_n}$ tend vers 1.

    On écrit souvent cela sous la forme $u_n = v_n + o(v_n)$.

-   **Cas particuliers avec $v_n = 1$ :**
    -   $u_n = o(1) \iff \lim_{n\to+\infty} u_n = 0$.
    -   $u_n \sim 1 \iff \lim_{n\to+\infty} u_n = 1$.
    -   $u_n = O(1) \iff (u_n)$ est bornée.

-   **Hiérarchie des suites de référence (croissances comparées) :** Pour $a>0, b \in \mathbb{R}, r>1, z \in \mathbb{C}$:

    $$ \ln(n) = o(n^a) \quad ; \quad n^b = o(r^n) \quad ; \quad z^n = o(n!) \quad ; \quad n! = o(n^n) $$

### Exemples

**Exemple 1 : Polynômes**

Soit $u_n = 3n^2 - 2n + 5$ et $v_n = n^2$.

Le quotient est $\frac{u_n}{v_n} = \frac{3n^2 - 2n + 5}{n^2} = 3 - \frac{2}{n} + \frac{5}{n^2}$.

$$ \lim_{n\to+\infty} \frac{u_n}{v_n} = 3 $$

-   Le quotient ne tend pas vers 1, donc $u_n \not\sim n^2$. Cependant, $\frac{u_n}{3n^2} \to 1$, donc $u_n \sim 3n^2$. Un polynôme est équivalent à son monôme de plus haut degré.
-   Le quotient ne tend pas vers 0, donc $u_n \neq o(n^2)$. Par contre, $n = o(n^2)$ car $n/n^2=1/n \to 0$.
-   Le quotient tend vers 3, c'est une suite convergente donc bornée. Ainsi, $u_n = O(n^2)$.

**Exemple 2 : Utilisation des développements limités**

Considérons $u_n = \ln(1 + 1/n)$ et $v_n = 1/n$.

On sait que pour $x \to 0$, $\ln(1+x) = x + o(x)$.

En posant $x = 1/n$, qui tend bien vers 0 quand $n \to +\infty$, on obtient :

$$ \ln(1+1/n) = \frac{1}{n} + o\left(\frac{1}{n}\right) $$

Ceci est une autre façon d'écrire $\ln(1+1/n) - 1/n = o(1/n)$. D'après la propriété de l'équivalence, cela signifie :

$$ \ln(1+1/n) \sim \frac{1}{n} $$

**Exemple 3 : Grand O**

Soit $u_n = \frac{3n + \sin(n)}{n^2 + 1}$. Montrons que $u_n = O(1/n)$.

On étudie le quotient $\frac{u_n}{1/n}$:

$$ \frac{u_n}{1/n} = n \cdot u_n = \frac{3n^2 + n\sin(n)}{n^2+1} = \frac{3 + (\sin(n))/n}{1 + 1/n^2} $$

Le numérateur tend vers 3 car $(\sin(n))/n \to 0$ (théorème des gendarmes). Le dénominateur tend vers 1. Le quotient tend donc vers 3.

Puisque la suite quotient est convergente, elle est bornée. Donc, $u_n = O(1/n)$.

### Contre-exemples

1.  **Équivalence et addition :** On n'a pas le droit de sommer les équivalents en général.

    Soit $u_n = n+1$ et $v_n = -n$. On a $u_n \sim n$ et $v_n \sim -n$.

    Pourtant, $u_n+v_n = 1$, et la somme des équivalents $n+(-n)=0$. On n'a pas $1 \sim 0$.

2.  **Fonction exponentielle :** On n'a pas le droit de composer avec n'importe quelle fonction.

    $n+1 \sim n$. Mais $e^{n+1} = e \cdot e^n$. Le quotient $e^{n+1}/e^n = e \neq 1$. Donc $e^{n+1} \not\sim e^n$.

### Concepts Connexes

-   **Développements limités :** Ils sont la source principale des relations de négligeabilité et d'équivalence pour les suites qui sont des images d'entiers par des fonctions usuelles.
-   **Vitesse de convergence :** La notation $o(v_n)$ est utilisée pour quantifier la vitesse à laquelle une suite converge. Par exemple, $|u_n-l| = o(1/n)$ signifie que $(u_n)$ converge vers $l$ "plus vite que" $1/n$ ne converge vers 0.

### Applications

-   **Analyse d'algorithmes :** La notation $O$ est fondamentale en informatique pour décrire la complexité d'un algorithme, c'est-à-dire comment son temps d'exécution ou sa mémoire utilisée augmente avec la taille de l'entrée.
-   **Calcul de limites :** L'utilisation d'équivalents simplifie grandement le calcul de limites de produits ou de quotients. Si $u_n \sim u'_n$ et $v_n \sim v'_n$, alors $\lim \frac{u_n}{v_n} = \lim \frac{u'_n}{v'_n}$.
-   **Étude de la nature des séries :** Les critères de comparaison pour les séries numériques reposent sur les relations $o$, $O$ et $\sim$.

---

CONTINUATION_NEEDED: Concepts

7. Borne supérieure et borne inférieure d'une partie de $\mathbb{R}$
8. Théorèmes de convergence pour les suites réelles
9. Convergence des suites monotones
10. Sous-suites (ou suites extraites)
11. Théorème de Bolzano-Weierstrass
12. Valeur d'adhérence
