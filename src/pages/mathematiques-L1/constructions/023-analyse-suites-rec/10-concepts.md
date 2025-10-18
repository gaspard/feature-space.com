---
id: 1ad9be8d
type: concepts
order: 10
title: "Analyse: Suites récurrentes"
tags:
  - analyse
  - suites
  - limites
  - continuité
  - dérivabilité
  - intégration
course: Constructions et raisonnements mathématiques
courseId: d2e11e03
chapter: "Analyse: Suites récurrentes"
chapterId: a5489a34
level: regular
createdAt: '2025-10-18T19:10:37.543Z'
---
# Analyse: Suites récurrentes (A)

---

## Concept 1: Suite Récurrente et Intervalle Stable

### Prérequis

- Définition d'une suite de nombres réels.
- Notion de fonction, d'intervalle et de domaine de définition.
- Définitions par récurrence.

### Définition

Une **suite récurrente** réelle est une suite $(u_n)_{n\in\mathbb{N}}$ dont les termes sont définis par une relation de récurrence de la forme :

$$ u_{n+1} = f(u_n) $$

où $f$ est une fonction réelle ($f: I \to \mathbb{R}$ avec $I$ un intervalle de $\mathbb{R}$) et $u_0$ est un terme initial donné, appartenant à $I$.

Pour que la suite $(u_n)$ soit bien définie pour tout entier $n$, il faut que chaque terme $u_n$ reste dans le domaine de définition de $f$. Une condition simple qui garantit cela est que l'intervalle $I$ soit stable par $f$.

Un intervalle $I$ est dit **stable** (ou **stabilisé**) par une fonction $f$ si l'image de $I$ par $f$ est incluse dans $I$. Autrement dit :

$$ \forall x \in I, \quad f(x) \in I $$

Si $I$ est un intervalle stable par $f$ et que le premier terme $u_0$ appartient à $I$, alors tous les termes de la suite $u_n$ sont bien définis et appartiennent à $I$.

### Propriétés Clés

- **Existence de la suite** : Si $I$ est un intervalle stable par $f$ et que $u_0 \in I$, alors la suite récurrente $u_{n+1} = f(u_n)$ est bien définie pour tout $n \in \mathbb{N}$.
- **Appartenance à l'intervalle** : Dans les mêmes conditions, tous les termes de la suite restent dans l'intervalle $I$. On peut le prouver par récurrence :
    - **Initialisation** : $u_0 \in I$ par hypothèse.
    - **Hérédité** : Supposons que $u_n \in I$ pour un certain $n \ge 0$. Alors $u_{n+1} = f(u_n)$ est bien défini. Comme $I$ est stable par $f$, et que $u_n \in I$, on a $f(u_n) \in I$, donc $u_{n+1} \in I$.
    - **Conclusion** : Pour tout $n \in \mathbb{N}$, $u_n \in I$.

### Exemples

**Exemple 1**

Soit la fonction $f(x) = \sqrt{x+2}$ et l'intervalle $I = [0, +\infty[$.

Pour montrer que $I$ est stable par $f$, on prend un $x$ quelconque dans $I$.

*Hypothèse* : $x \ge 0$.

Alors $x+2 \ge 2$, donc $\sqrt{x+2} \ge \sqrt{2}$.

Puisque $\sqrt{2} \ge 0$, on a bien $f(x) = \sqrt{x+2} \in [0, +\infty[ = I$.

L'intervalle $I$ est donc stable par $f$. Si on choisit $u_0 = 1 \in I$, la suite $u_{n+1} = \sqrt{u_n+2}$ est bien définie et tous ses termes sont positifs.

$u_0 = 1$, $u_1 = \sqrt{3}$, $u_2 = \sqrt{\sqrt{3}+2}$, etc.

**Exemple 2**

Soit la fonction $f(x) = x^2$ et l'intervalle $I = [0, 1]$.

*Hypothèse* : $x \in [0, 1]$, c'est-à-dire $0 \le x \le 1$.

En élevant au carré (la fonction carré est croissante sur les réels positifs), on obtient $0^2 \le x^2 \le 1^2$, soit $0 \le x^2 \le 1$.

Donc $f(x) = x^2 \in [0, 1] = I$.

L'intervalle $I = [0, 1]$ est stable par $f(x) = x^2$. Si on choisit $u_0 = 0.5 \in I$, la suite $u_{n+1} = u_n^2$ est bien définie et tous ses termes restent dans $[0, 1]$.

$u_0 = 0.5$, $u_1 = 0.25$, $u_2 = 0.0625$, etc.

**Exemple 3**

Soit la fonction $f(x) = \cos(x)$ et l'intervalle $I = [-1, 1]$.

L'image de $\mathbb{R}$ par la fonction cosinus est l'intervalle $[-1, 1]$.

*Hypothèse* : $x \in [-1, 1]$.

Alors $f(x) = \cos(x)$ appartient nécessairement à l'image de $f$, qui est $[-1, 1]$. Donc $f(x) \in I$.

L'intervalle $I = [-1, 1]$ est stable par $f$. La suite $u_{n+1} = \cos(u_n)$ est bien définie pour tout $u_0 \in [-1, 1]$.

### Contre-exemples

**Contre-exemple 1**

Soit la fonction $f(x) = 2x$ et l'intervalle $I = [0, 1]$.

Cet intervalle n'est pas stable par $f$. En effet, si on prend $x=0.8 \in I$, on a $f(0.8) = 1.6$, et $1.6 \notin [0, 1]$.

Si on définit une suite par $u_0 = 0.8$ et $u_{n+1} = 2u_n$, le terme $u_1=1.6$ sort de l'intervalle $I$.

**Contre-exemple 2**

Soit la fonction $f(x) = 1-x^2$ et l'intervalle $I = [0, 1]$.

Cet intervalle n'est pas stable par $f$. Si l'on prend $x=1 \in I$, $f(1) = 1-1^2 = 0 \in I$. Si l'on prend $x=0.5 \in I$, $f(0.5) = 1-0.25 = 0.75 \in I$. Cela semble fonctionner. Cependant, si on prend $x=0 \in I$, $f(0)=1-0=1 \in I$. Mais qu'en est-il de l'ensemble de l'intervalle ? Pour $x \in [0, 1]$, $x^2 \in [0, 1]$, donc $-x^2 \in [-1, 0]$ et $1-x^2 \in [0, 1]$. L'intervalle $I=[0,1]$ est bien stable.

Prenons un autre intervalle, $I'=[0.5, 1]$. Il n'est pas stable. Pour $x=0.5$, $f(0.5)=0.75 \in I'$. Mais pour $x=1$, $f(1)=0 \notin I'$.

### Concepts Connexes

- **Point Fixe** : Un point $l$ tel que $f(l) = l$. Si $u_0 = l$, alors $u_n=l$ pour tout $n$.
- **Domaine de définition** : L'intervalle stable est un sous-ensemble du domaine de définition de la fonction.

### Applications

- Modélisation de l'évolution de populations (modèles logistiques).
- Algorithmes de calcul numérique (par exemple, la méthode de Newton).
- Systèmes dynamiques discrets.

---

## Concept 2: Représentation Graphique d'une Suite Récurrente

### Prérequis

- Repérage dans le plan cartésien.
- Graphe d'une fonction $y = f(x)$.
- Notion de suite récurrente $u_{n+1} = f(u_n)$.

### Définition

La **représentation graphique** d'une suite récurrente $u_{n+1} = f(u_n)$ est une méthode visuelle, souvent appelée **diagramme en toile d'araignée** (ou en escargot), qui permet de construire les termes de la suite et d'anticiper son comportement (convergence, divergence, monotonie).

La construction se fait dans un repère où l'on trace le graphe de la fonction $f$, noté $\mathcal{G}_f$, et la droite d'équation $y=x$, appelée la **première bissectrice**, notée $\mathcal{D}$.

Le processus est le suivant :

1.  **Initialisation** : On place $u_0$ sur l'axe des abscisses.
2.  **Calcul de $u_1$** : On trace un segment vertical de $(u_0, 0)$ jusqu'au graphe $\mathcal{G}_f$. Le point d'intersection a pour coordonnées $(u_0, f(u_0))$, soit $(u_0, u_1)$.
3.  **Report de $u_1$ sur l'abscisse** : Depuis le point $(u_0, u_1)$, on trace un segment horizontal jusqu'à la droite $\mathcal{D}$. Le point d'intersection a pour coordonnées $(u_1, u_1)$.
4.  **Itération** : On répète le processus. Depuis $(u_1, u_1)$, on trace un segment vertical jusqu'à $\mathcal{G}_f$ pour trouver $(u_1, u_2)$, puis un segment horizontal vers $\mathcal{D}$ pour trouver $(u_2, u_2)$, et ainsi de suite.

La suite des abscisses des points sur la droite $\mathcal{D}$ est la suite $(u_n)$.

### Propriétés Clés

- **Visualisation de la convergence** :
    - Si le diagramme forme une spirale ou un escalier qui se rapproche d'un point d'intersection entre $\mathcal{G}_f$ et $\mathcal{D}$, la suite converge vers l'abscisse de ce point (qui est un point fixe).
    - Si le diagramme s'éloigne de plus en plus, la suite diverge.
- **Visualisation de la monotonie** :
    - Si le graphe $\mathcal{G}_f$ est au-dessus de la droite $\mathcal{D}$ et que la construction forme un "escalier montant", la suite est croissante.
    - Si le graphe $\mathcal{G}_f$ est en dessous de la droite $\mathcal{D}$ et que la construction forme un "escalier descendant", la suite est décroissante.
    - Si le graphe de $f$ est décroissant, la construction forme une "spirale" (ou un "escargot"), indiquant que la suite n'est pas monotone mais oscille.

### Exemples

**Exemple 1 : Escalier convergent**

Soit $f(x) = \sqrt{x}$ et $u_0 = 4$. L'intervalle $I=[0, +\infty[$ est stable. La suite converge vers le point fixe $l=1$. Le diagramme forme un escalier descendant qui se rapproche de $(1,1)$.

- $u_0 = 4$
- On va de $(4,0)$ à $(4, \sqrt{4}) = (4, 2)$. C'est le point $(u_0, u_1)$.
- On va de $(4, 2)$ à $(2, 2)$.
- On va de $(2, 2)$ à $(2, \sqrt{2})$. C'est le point $(u_1, u_2)$.
- $u_0=4 > u_1=2 > u_2 \approx 1.414...$ La suite est décroissante.

**Exemple 2 : Spirale convergente**

Soit $f(x) = \frac{1}{x+1}$ et $u_0 = 0.5$. L'intervalle $I=[0, +\infty[$ est stable. Le point fixe est la solution de $x = \frac{1}{x+1}$, soit $x^2+x-1=0$, dont la solution positive est $l = \frac{\sqrt{5}-1}{2} \approx 0.618$.

- $u_0 = 0.5$
- $u_1 = \frac{1}{1.5} \approx 0.667$
- $u_2 = \frac{1}{1.667} \approx 0.6$
- $u_3 = \frac{1}{1.6} \approx 0.625$

La suite oscille autour de la limite $l$: $u_0 < u_2 < l < u_3 < u_1$. Le diagramme forme une spirale qui s'enroule vers le point fixe.

**Exemple 3 : Escalier divergent**

Soit $f(x) = 1.5x$ et $u_0 = 1$. L'intervalle $I=[0, +\infty[$ est stable. Le seul point fixe est $l=0$.

- $u_0 = 1$
- $u_1 = 1.5 \times 1 = 1.5$
- $u_2 = 1.5 \times 1.5 = 2.25$

La suite est croissante et diverge vers $+\infty$. Le diagramme forme un escalier qui monte et s'éloigne de l'origine.

### Contre-exemples

- Cette méthode est purement visuelle et ne constitue pas une preuve. Elle peut être difficile à interpréter si la convergence est très lente ou si le comportement est chaotique.
- La méthode ne s'applique qu'aux suites récurrentes réelles de la forme $u_{n+1} = f(u_n)$. Elle ne fonctionne pas pour les suites complexes ou les suites définies par des récurrences d'ordre supérieur (comme $u_{n+2} = u_{n+1} + u_n$).

### Concepts Connexes

- **Point fixe** : Les points d'intersection de $\mathcal{G}_f$ et $\mathcal{D}$ sont les points fixes de $f$.
- **Monotonie d'une suite** : Le sens de variation est souvent visible sur le diagramme.

### Applications

- Outil pédagogique puissant pour comprendre le comportement des suites récurrentes.
- Permet de formuler des conjectures sur la convergence et la monotonie d'une suite avant de chercher une démonstration rigoureuse.

---

## Concept 3: Monotonie d'une Suite Récurrente

### Prérequis

- Définition d'une suite croissante, décroissante, et monotone.
- Notion de fonction croissante et décroissante.
- Signe d'une fonction.

### Définition

L'étude du **sens de variation** (ou **monotonie**) d'une suite récurrente $u_{n+1} = f(u_n)$ consiste à déterminer si la suite est croissante ($u_{n+1} \ge u_n$ pour tout $n$), décroissante ($u_{n+1} \le u_n$ pour tout $n$), ou non-monotone.

Le sens de variation de la suite $(u_n)$ dépend des propriétés de la fonction $f$.

### Propriétés Clés

Il existe deux critères principaux pour déterminer la monotonie d'une suite récurrente.

**Critère 1 : Position du graphe de $f$ par rapport à la droite $y=x$**

*Hypothèse* : Soit une suite $u_{n+1}=f(u_n)$ avec $u_n \in I$ pour tout $n$.

1.  Si pour tout $x \in I$, on a $f(x) \ge x$, alors la suite $(u_n)$ est **croissante**.

    *Démonstration* : Pour tout $n$, $u_n \in I$. En appliquant l'hypothèse avec $x=u_n$, on obtient $f(u_n) \ge u_n$, ce qui signifie $u_{n+1} \ge u_n$.

2.  Si pour tout $x \in I$, on a $f(x) \le x$, alors la suite $(u_n)$ est **décroissante**.

    *Démonstration* : Pour tout $n$, $u_n \in I$. En appliquant l'hypothèse avec $x=u_n$, on obtient $f(u_n) \le u_n$, ce qui signifie $u_{n+1} \le u_n$.

**Critère 2 : Monotonie de la fonction $f$**

*Hypothèse* : Soit une suite $u_{n+1}=f(u_n)$ avec $u_n \in I$ pour tout $n$.

1.  Si la fonction $f$ est **croissante** sur $I$, alors la suite $(u_n)$ est **monotone**.
    - Son sens de variation est donné par le signe de $u_1 - u_0$.
    - Si $u_1 \ge u_0$, la suite est croissante.
    - Si $u_1 \le u_0$, la suite est décroissante.

    *Démonstration (pour le cas croissant)* : On procède par récurrence. Supposons $u_1 \ge u_0$. Montrons que $u_{n+1} \ge u_n \implies u_{n+2} \ge u_{n+1}$. Si $u_{n+1} \ge u_n$, comme $f$ est croissante, on peut appliquer $f$ aux deux membres : $f(u_{n+1}) \ge f(u_n)$, ce qui donne $u_{n+2} \ge u_{n+1}$. La propriété est donc héréditaire.

2.  Si la fonction $f$ est **décroissante** sur $I$, alors la suite $(u_n)$ n'est en général **pas monotone**. Cependant, les sous-suites des termes de rangs pairs $(u_{2n})$ et de rangs impairs $(u_{2n+1})$ sont monotones, de sens de variation contraires.

    *Justification* : Si $f$ est décroissante, la fonction composée $g = f \circ f$ est croissante. Les suites $(u_{2n})$ et $(u_{2n+1})$ sont des suites récurrentes définies par $u_{2(n+1)} = g(u_{2n})$ et $u_{2(n+1)+1} = g(u_{2n+1})$. D'après le point précédent, elles sont donc monotones.

### Exemples

**Exemple 1 (Critère 1)**

Soit $u_{n+1} = u_n + \frac{1}{u_n}$ avec $u_0 = 1$. Ici, $f(x) = x + \frac{1}{x}$. L'intervalle stable est $I=]0, +\infty[$.

On étudie le signe de $f(x)-x = \frac{1}{x}$.

Pour tout $x \in I=]0, +\infty[$, on a $f(x)-x > 0$, donc $f(x) > x$.

D'après le critère 1, la suite $(u_n)$ est (strictement) croissante.

**Exemple 2 (Critère 2, f croissante)**

Soit $u_{n+1} = u_n^2$ avec $u_0 = 0.8$. Ici $f(x)=x^2$ sur $I=[0,1]$.

La fonction $f(x)=x^2$ est croissante sur $I=[0, \infty[$.

On calcule les premiers termes : $u_0 = 0.8$ et $u_1 = (0.8)^2 = 0.64$.

Puisque $u_1 < u_0$, la suite $(u_n)$ est décroissante.

**Exemple 3 (Critère 2, f décroissante)**

Soit $u_{n+1} = \frac{2}{u_n+1}$ avec $u_0=1$. L'intervalle stable est $[0, +\infty[$.

La fonction $f(x) = \frac{2}{x+1}$ a pour dérivée $f'(x) = \frac{-2}{(x+1)^2}$, qui est négative sur $I$. Donc $f$ est décroissante.

La suite $(u_n)$ n'est pas monotone.

$u_0 = 1$

$u_1 = \frac{2}{1+1} = 1$

La suite est constante (et donc monotone).

Changeons $u_0=2$.

$u_0=2$, $u_1 = \frac{2}{3}$, $u_2=\frac{2}{2/3+1} = \frac{6}{5} = 1.2$, $u_3 = \frac{2}{1.2+1} = \frac{2}{2.2} \approx 0.909$.

On observe que $u_0 > u_2$ et $u_1 < u_3$. La sous-suite $(u_{2n})$ semble décroissante et $(u_{2n+1})$ semble croissante.

### Contre-exemples

**Contre-exemple 1**

Soit $f(x) = 4x(1-x)$ sur $I=[0,1]$. La fonction n'est ni croissante, ni décroissante sur tout l'intervalle.

Si $u_0 = 0.2$, $u_1 = 4(0.2)(0.8) = 0.64$ ($u_1 > u_0$).

$u_2 = 4(0.64)(0.36) = 0.9216$ ($u_2 > u_1$).

$u_3 = 4(0.9216)(0.0784) \approx 0.289$ ($u_3 < u_2$).

La suite n'est pas monotone. Les critères ne s'appliquent pas directement.

**Contre-exemple 2**

Il faut bien vérifier que tous les termes de la suite restent dans l'intervalle où la propriété de $f$ est vérifiée.

Soit $f(x) = \sqrt{x}$. $f$ est croissante sur $[0, \infty[$.

Si on définit $u_0 = -1$ et $u_{n+1} = f(u_n)$, la suite n'est même pas définie car $u_0$ n'est pas dans le domaine de $f$.

### Concepts Connexes

- **Théorème de la convergence monotone** : Une suite réelle croissante et majorée converge. Une suite réelle décroissante et minorée converge. L'étude de la monotonie est donc une étape clé pour prouver la convergence.

### Applications

- Déterminer si un processus modélisé par une suite récurrente va augmenter ou diminuer constamment.
- Établir la convergence d'une suite en montrant qu'elle est monotone et bornée.

---

## Concept 4: Point Fixe et Convergence d'une Suite Récurrente

### Prérequis

- Limite d'une suite.
- Fonction continue.
- Caractérisation séquentielle de la continuité.
- Notion d'intervalle fermé.

### Définition

Un **point fixe** d'une fonction $f$ est un nombre réel $l$ tel que $f(l) = l$.

Graphiquement, les points fixes sont les abscisses des points d'intersection entre le graphe de la fonction $f$ et la droite d'équation $y=x$.

Les points fixes jouent un rôle central dans l'étude de la convergence des suites récurrentes, car ce sont les seules limites possibles pour une telle suite, sous certaines conditions.

### Propriétés Clés

**Théorème de la Limite et du Point Fixe ("Énoncé indispensable 17")**

*Hypothèses* :

1.  Soit $f$ une fonction **continue** sur un intervalle $I$.
2.  L'intervalle $I$ est **stable** par $f$ ($f(I) \subset I$).
3.  L'intervalle $I$ est **fermé** (ex: $[a,b]$, $[a, +\infty[$, etc.).
4.  La suite $(u_n)$ définie par $u_0 \in I$ et $u_{n+1}=f(u_n)$ **converge** vers une limite $l$.

*Conclusion* :

Alors, la limite $l$ est un point fixe de $f$. C'est-à-dire :

$$ f(l) = l $$

De plus, la limite $l$ appartient à l'intervalle $I$.

*Idée de la démonstration* :

- Puisque tous les $u_n$ sont dans l'intervalle fermé $I$, leur limite $l$ doit aussi être dans $I$.
- On part de la relation de récurrence : $u_{n+1} = f(u_n)$.
- On passe à la limite quand $n \to +\infty$ des deux côtés : $\lim_{n \to +\infty} u_{n+1} = \lim_{n \to +\infty} f(u_n)$.
- Le membre de gauche tend vers $l$.
- Pour le membre de droite, comme $f$ est continue et $\lim u_n = l$, on a $\lim f(u_n) = f(\lim u_n) = f(l)$.
- Par unicité de la limite, on conclut que $l = f(l)$.

**Théorème d'Existence du Point Fixe (Proposition 17)**

*Hypothèses* :

1.  Soit $f$ une fonction **continue** sur un intervalle $I$.
2.  L'intervalle $I$ est **stable**, **fermé** et **borné** (c'est un segment de la forme $[a, b]$).

*Conclusion* :

Alors, $f$ admet **au moins un point fixe** dans l'intervalle $I$.

### Exemples

**Exemple 1**

Soit la suite $u_{n+1} = \frac{1}{2}(u_n + \frac{3}{u_n})$ avec $u_0=2$. On admet que cette suite converge.

Ici, $f(x) = \frac{1}{2}(x + \frac{3}{x})$. La fonction $f$ est continue sur $I=]0, +\infty[$.

Si la suite converge vers une limite $l>0$, alors $l$ doit être un point fixe de $f$.

On résout l'équation $f(l)=l$ :

$l = \frac{1}{2}(l + \frac{3}{l}) \implies 2l = l + \frac{3}{l} \implies l = \frac{3}{l} \implies l^2 = 3$.

Comme $l>0$, la seule limite possible est $l=\sqrt{3}$.

**Exemple 2**

Soit la suite $u_{n+1} = \cos(u_n)$ avec $u_0=0$.

La fonction $f(x)=\cos(x)$ est continue sur $I=[-1,1]$. Cet intervalle est stable, fermé et borné.

D'après le théorème d'existence, il existe au moins un point fixe $l \in [-1, 1]$.

On peut montrer que la suite converge. Par conséquent, elle converge vers ce point fixe $l$ qui vérifie $\cos(l)=l$. Il n'y a pas de solution analytique simple, mais sa valeur est approximativement $0.739$.

**Exemple 3**

Soit la suite $u_{n+1} = u_n^2$ avec $u_0=0.5$. L'intervalle stable est $I=[0,1]$.

La fonction $f(x)=x^2$ est continue sur $I$, qui est fermé. La suite est décroissante et minorée par 0, donc elle converge vers une limite $l \in [0,1]$.

Cette limite $l$ doit être un point fixe de $f$. On résout $f(l)=l$ :

$l^2=l \implies l^2-l=0 \implies l(l-1)=0$.

Les points fixes sont $l=0$ et $l=1$. Les limites possibles sont donc 0 et 1.

Comme la suite est décroissante et part de $u_0=0.5$, elle ne peut pas converger vers 1. La limite est donc $l=0$.

### Contre-exemples

**Contre-exemple 1 (f non continue)**

Soit $f(x) = \begin{cases} x/2 & \text{si } x \neq 2 \\ 0 & \text{si } x=2 \end{cases}$.

Considérons la suite $u_0=4$ et $u_{n+1}=f(u_n)$.

$u_0=4$, $u_1=f(4)=2$, $u_2=f(2)=0$, $u_3=f(0)=0, \dots$.

La suite converge vers $l=0$.

Cherchons les points fixes. $f(x)=x \implies x/2=x \implies x=0$. Donc $l=0$ est un point fixe.

Mais la suite $v_0=2$ donne $v_1=0, v_2=0, \dots$, qui converge vers $l=0$. Or $f(v_0)=f(2)=0 \ne 2$. Le point de départ n'est pas un point fixe. Le théorème ne s'applique pas si la continuité n'est pas vérifiée au point de la limite.

**Contre-exemple 2 (Intervalle non fermé)**

Soit $f(x) = \frac{x+2}{2}$ sur l'intervalle ouvert $I=]2, +\infty[$.

Si $x>2$, alors $x+2>4$ et $\frac{x+2}{2}>2$. Donc $I$ est stable.

$f$ est continue sur $I$.

Le seul point fixe de $f$ est la solution de $x = \frac{x+2}{2}$, soit $2x=x+2$, donc $x=2$.

Ce point fixe $l=2$ n'appartient pas à l'intervalle $I$.

Une suite définie par $u_0=3$ et $u_{n+1}=f(u_n)$ est décroissante et minorée par 2, elle converge donc vers $l=2$. La limite n'est pas dans l'intervalle de travail.

### Concepts Connexes

- **Théorème des valeurs intermédiaires** : Utilisé pour prouver l'existence d'un point fixe sur un segment.
- **Théorème de la convergence monotone** : Souvent utilisé en conjonction avec le théorème du point fixe pour prouver la convergence.

### Applications

- Ce théorème est fondamental pour analyser le comportement à long terme des systèmes dynamiques.
- Il permet de restreindre l'ensemble des limites possibles à un petit nombre de candidats (les points fixes), qu'il suffit ensuite de tester.

---

## Concept 5: Fonction Contractante et Théorème du Point Fixe

### Prérequis

- Valeur absolue et inégalité triangulaire.
- Limite d'une suite géométrique.
- Dérivée d'une fonction et inégalité des accroissements finis.

### Définition

Une fonction $f: I \to \mathbb{R}$ est dite **contractante** sur un intervalle $I$ s'il existe une constante réelle $k$ telle que $0 \le k < 1$ et qui vérifie, pour tous les points $x$ et $y$ de $I$ :

$$ |f(x) - f(y)| \le k |x - y| $$

La constante $k$ est appelée le **rapport de contraction**.

Intuitivement, une fonction contractante "rapproche" les points. L'image de deux points quelconques est toujours plus proche que les points de départ, avec un facteur de réduction d'au moins $k$.

### Propriétés Clés

- **Continuité** : Toute fonction contractante est continue.
- **Unicité du point fixe** : Une fonction contractante sur un intervalle $I$ admet au plus un point fixe.
- **Condition suffisante de contraction (via la dérivée)** :

    *Hypothèse* : Soit $f$ une fonction dérivable sur un intervalle $I$.

    *Conclusion* : Si la valeur absolue de sa dérivée est majorée par une constante $k < 1$ sur tout l'intervalle $I$ (c'est-à-dire $\sup_{x \in I} |f'(x)| \le k < 1$), alors $f$ est $k$-contractante sur $I$. Ceci est une conséquence directe de l'inégalité des accroissements finis.

**Théorème du Point Fixe Contractant ("Énoncé indispensable 18")**

*Hypothèses* :

1.  Soit $f$ une fonction **k-contractante** (avec $0 \le k < 1$) sur un intervalle $I$.
2.  L'intervalle $I$ est **stable** par $f$.
3.  L'intervalle $I$ est **fermé** et contient au moins un point.

*Conclusion* :

1.  La fonction $f$ admet un **unique point fixe** $l$ dans $I$.
2.  Pour **n'importe quel point de départ** $u_0 \in I$, la suite récurrente $u_{n+1} = f(u_n)$ **converge** vers cet unique point fixe $l$.
3.  La convergence est **rapide** (géométrique), et on peut estimer la distance à la limite :

    $$ |u_n - l| \le k^n |u_0 - l| $$

### Exemples

**Exemple 1**

Soit $f(x) = \frac{1}{3}\cos(x) + 1$ sur $I = \mathbb{R}$.

Calculons la dérivée : $f'(x) = -\frac{1}{3}\sin(x)$.

Pour tout $x \in \mathbb{R}$, $|f'(x)| = |-\frac{1}{3}\sin(x)| \le \frac{1}{3}$.

Donc $f$ est $1/3$-contractante sur $\mathbb{R}$. L'intervalle $\mathbb{R}$ est stable et fermé.

Le théorème s'applique : il existe un unique point fixe $l$, et toute suite $u_{n+1}=f(u_n)$ converge vers $l$.

**Exemple 2**

On cherche à résoudre $x^3 + 3x - 1 = 0$. On peut réécrire ceci comme $x = \frac{1-x^3}{3}$.

Soit $f(x) = \frac{1-x^3}{3}$ sur l'intervalle $I=[0,1]$.

- **Stabilité** : Si $x \in [0,1]$, alors $x^3 \in [0,1]$, $-x^3 \in [-1,0]$, $1-x^3 \in [0,1]$ et $f(x) \in [0, 1/3] \subset [0,1]$. Donc $I$ est stable.
- **Contraction** : $f'(x) = -x^2$. Sur $I=[0,1]$, $\sup_{x \in [0,1]}|f'(x)| = \sup_{x \in [0,1]}|-x^2|=1$. La condition $|f'|<1$ n'est pas strictement vérifiée sur tout l'intervalle.

Changeons d'intervalle. Prenons $I=[0, 0.5]$.

- **Stabilité** : Si $x \in [0, 0.5]$, $f(x) \in [\frac{1-(0.5)^3}{3}, \frac{1}{3}] = [\frac{0.875}{3}, \frac{1}{3}] \subset [0, 0.5]$. $I$ est stable.
- **Contraction** : $|f'(x)|=x^2 \le (0.5)^2=0.25 < 1$. Donc $f$ est $0.25$-contractante sur $I$.

Le théorème garantit l'existence d'une unique solution dans $[0, 0.5]$ et que la suite convergera vers elle.

**Exemple 3**

Soit $f(x) = \frac{1}{2}(x+\frac{a}{x})$ sur $I=[\sqrt{a}, +\infty[$, pour $a>0$.

- **Stabilité** : On peut montrer que si $x \ge \sqrt{a}$, alors $f(x) \ge \sqrt{a}$. Donc $I$ est stable.
- **Contraction** : $f'(x) = \frac{1}{2}(1 - \frac{a}{x^2})$. Pour $x \in [\sqrt{a}, +\infty[$, on a $x^2 \ge a$, donc $0 < a/x^2 \le 1$, et $-1 \le -a/x^2 < 0$. Ainsi, $0 \le 1-a/x^2 < 1$ et $0 \le f'(x) < 1/2$.

La fonction est donc $1/2$-contractante sur $I$. L'unique point fixe est $\sqrt{a}$, et la suite converge vers $\sqrt{a}$ pour tout $u_0 \ge \sqrt{a}$.

### Contre-exemples

**Contre-exemple 1 (Rapport $k=1$)**

Soit $f(x) = x - \sin(x) + \pi/2$ sur $I = [0, \pi]$.

Le point fixe est $l=\pi/2$. La dérivée est $f'(x) = 1-\cos(x)$.

Au point fixe, $f'(\pi/2) = 1-\cos(\pi/2) = 1$.

La fonction n'est pas contractante. La convergence de la suite $u_{n+1}=f(u_n)$ vers $\pi/2$ sera extrêmement lente. Le théorème ne s'applique pas.

**Contre-exemple 2 (Intervalle non stable)**

Soit $f(x)=x/2 + 5$ sur $I=[0,1]$.

$f$ est $1/2$-contractante sur $\mathbb{R}$. Cependant, l'intervalle $I=[0,1]$ n'est pas stable, car $f(1)=5.5 \notin I$.

Le théorème ne garantit pas la convergence pour un $u_0$ dans $I$, car la suite quitte l'intervalle. (Le point fixe $l=10$ est loin de $I$).

### Concepts Connexes

- **Point fixe attractif** : Un point fixe $l$ tel que $|f'(l)|<1$ est localement contractant. Le théorème du point fixe contractant est une version globale de cette idée.
- **Suites de Cauchy** : La démonstration du théorème dans des espaces plus généraux repose sur le fait que les suites générées par des fonctions contractantes sont des suites de Cauchy.

### Applications

- **Résolution numérique d'équations** : L'équation $g(x)=0$ peut être transformée en un problème de point fixe $x = x - g(x) = f(x)$. Si $f$ est contractante, la méthode itérative convergera.
- **Existence et unicité de solutions d'équations différentielles** (Théorème de Cauchy-Lipschitz).

---

## Concept 6: Points Fixes Répulsifs et Attractifs (Stabilité locale)

### Prérequis

- Notion de point fixe.
- Calcul de dérivées.
- Comportement local d'une fonction (approximation affine).

### Définition

L'étude de la **stabilité locale** d'un point fixe $l$ d'une fonction $f$ consiste à déterminer le comportement de la suite $u_{n+1}=f(u_n)$ lorsque le terme initial $u_0$ est très proche de $l$.

- Un point fixe $l$ est dit **attractif** (ou stable) si, pour tout $u_0$ suffisamment proche de $l$, la suite $(u_n)$ converge vers $l$.
- Un point fixe $l$ est dit **répulsif** (ou instable) si, pour tout $u_0$ proche de $l$ (mais différent de $l$), la suite $(u_n)$ s'éloigne de $l$.

La valeur de la dérivée de $f$ au point fixe, $f'(l)$, permet de caractériser cette stabilité.

### Propriétés Clés

*Hypothèse générale* : Soit $f$ une fonction de classe $C^1$ sur un intervalle stable $I$, et $l \in I$ un point fixe de $f$.

1.  **Cas Attractif** : Si $|f'(l)| < 1$, alors le point fixe $l$ est **attractif**.

    *Explication* : Pour $x$ proche de $l$, on a l'approximation $f(x) \approx f(l) + f'(l)(x-l)$. Comme $f(l)=l$, cela devient $f(x)-l \approx f'(l)(x-l)$.

    Pour la suite, cela signifie que $u_{n+1}-l \approx f'(l)(u_n-l)$. La distance à la limite $|u_n-l|$ est approximativement multipliée par $|f'(l)| < 1$ à chaque étape. Elle tend donc géométriquement vers 0.

2.  **Cas Répulsif (Proposition 18)** : Si $|f'(l)| > 1$, alors le point fixe $l$ est **répulsif**.

    *Explication* : L'approximation $u_{n+1}-l \approx f'(l)(u_n-l)$ est toujours valable. Comme $|f'(l)| > 1$, la distance à la limite $|u_n-l|$ est approximativement multipliée par un facteur plus grand que 1 à chaque étape. La suite s'éloigne donc de $l$ (sauf si $u_n=l$ exactement).

3.  **Cas Douteux** : Si $|f'(l)| = 1$, on ne peut pas conclure sur la stabilité du point fixe avec la seule information de la dérivée première. Le comportement dépendra des dérivées d'ordre supérieur. Le point peut être attractif, répulsif, ou semi-stable.

### Exemples

**Exemple 1 (Attractif)**

Soit $f(x) = \frac{x^2+2}{2x}$ et la suite $u_{n+1}=f(u_n)$ pour $a=2$. Le point fixe est $l=\sqrt{2}$.

$f'(x) = \frac{2x(2x) - 2(x^2+2)}{4x^2} = \frac{4x^2-2x^2-4}{4x^2} = \frac{x^2-2}{2x^2}$.

Au point fixe $l=\sqrt{2}$, on a $f'(\sqrt{2}) = \frac{(\sqrt{2})^2-2}{2(\sqrt{2})^2} = \frac{2-2}{4} = 0$.

Puisque $|f'(\sqrt{2})|=0 < 1$, le point fixe $\sqrt{2}$ est très attractif.

**Exemple 2 (Répulsif)**

Soit $f(x) = x^2 - 2x + 2$. Les points fixes sont les solutions de $x = x^2 - 2x + 2$, soit $x^2-3x+2=0$, qui donne $l_1=1$ et $l_2=2$.

La dérivée est $f'(x) = 2x-2$.

- Pour $l_1=1$: $f'(1) = 2(1)-2 = 0$. Comme $|f'(1)|<1$, le point fixe $l_1=1$ est attractif.
- Pour $l_2=2$: $f'(2) = 2(2)-2 = 2$. Comme $|f'(2)|>1$, le point fixe $l_2=2$ est répulsif.

**Exemple 3 (Cas Douteux)**

Soit $f(x) = x + x^2$. Le seul point fixe est $l=0$.

$f'(x) = 1+2x$, donc $f'(0)=1$. C'est un cas douteux.

Regardons le comportement de la suite près de 0. Si $u_n$ est petit et positif, $u_{n+1} = u_n+u_n^2 > u_n$. La suite s'éloigne de 0. Si $u_n$ est petit et négatif (ex: -0.1), $u_{n+1} = -0.1+(-0.1)^2 = -0.09$, ce qui est plus proche de 0. Le point est donc répulsif à droite et attractif à gauche (on parle de semi-stabilité).

### Contre-exemples

**Contre-exemple 1 (Fonction non-dérivable)**

Soit $f(x) = |2x|$. Le point fixe est $l=0$. La fonction n'est pas dérivable en 0.

Pour $x>0$, la suite est $u_{n+1}=2u_n$, elle s'éloigne de 0.

Pour $x<0$, la suite est $u_{n+1}=-2u_n$, elle s'éloigne aussi de 0 en valeur absolue.

Le point est répulsif, mais le critère de la dérivée ne s'applique pas.

**Contre-exemple 2 (Analyse globale vs locale)**

Le critère est local. Il ne garantit un comportement que pour les points de départ *suffisamment proches* du point fixe.

Soit $f(x) = -2x$ sur l'intervalle $I=[-1, 1]$. $l=0$ est un point fixe. $f'(0)=-2$, donc $|f'(0)|=2>1$, le point est répulsif. Si on part de $u_0=0.1$, on a $u_1=-0.2$, $u_2=0.4$, $u_3=-0.8$, $u_4=1.6$, ce qui sort de l'intervalle. Le comportement répulsif est bien observé.

### Concepts Connexes

- **Développement limité** : L'approximation $f(x) \approx l + f'(l)(x-l)$ est le développement limité d'ordre 1 de $f$ en $l$.
- **Théorie des bifurcations** : Étudie comment le nombre et la stabilité des points fixes changent lorsque l'on modifie un paramètre dans la fonction $f$.

### Applications

- En physique et en biologie, la stabilité des points d'équilibre d'un système (par exemple, un pendule, une population) est cruciale pour comprendre son comportement à long terme.
- En économie, pour analyser la stabilité des équilibres de marché.

---

## Concept 7: Méthode de Newton

### Prérequis

- Recherche de zéros (racines) d'une fonction $F(x)=0$.
- Dérivée et équation de la tangente à une courbe.
- Notion de suite récurrente et de point fixe.

### Définition

La **méthode de Newton** est un algorithme itératif puissant pour trouver des approximations de plus en plus précises des racines (ou zéros) d'une fonction réelle dérivable $F$.

Étant donnée une approximation initiale $u_0$ de la racine, la méthode construit une suite $(u_n)$ où chaque terme est l'abscisse de l'intersection de la tangente au graphe de $F$ en $(u_n, F(u_n))$ avec l'axe des abscisses.

La relation de récurrence est donnée par :

$$ u_{n+1} = u_n - \frac{F(u_n)}{F'(u_n)} $$

Cette suite est une suite récurrente de la forme $u_{n+1} = f(u_n)$ où la fonction d'itération est $f(x) = x - \frac{F(x)}{F'(x)}$.

### Propriétés Clés

- **Lien avec les points fixes** : Les points fixes de la fonction d'itération $f(x)$ sont les solutions de $f(x)=x$.

  $x = x - \frac{F(x)}{F'(x)} \iff \frac{F(x)}{F'(x)} = 0 \iff F(x) = 0$ (en supposant $F'(x) \ne 0$).

  Ainsi, les racines de $F$ sont les points fixes de $f$.

- **Condition de convergence (Proposition 20)** :

  *Hypothèse* : Soit $l$ une racine de $F$ (c'est-à-dire $F(l)=0$) telle que $F'(l) \ne 0$ (on dit que $l$ est une racine simple).

  *Conclusion* : Le point fixe $l$ est **super-attractif**. En effet, la dérivée de la fonction d'itération $f$ en $l$ est nulle : $f'(l) = 0$.

  *Démonstration rapide* : $f'(x) = 1 - \frac{F'(x)F'(x) - F(x)F''(x)}{(F'(x))^2}$. En $x=l$, comme $F(l)=0$, on a $f'(l) = 1 - \frac{(F'(l))^2}{(F'(l))^2} = 1 - 1 = 0$.

  Puisque $|f'(l)| = 0 < 1$, le point fixe $l$ est attractif. Si $u_0$ est choisi suffisamment proche de $l$, la suite $(u_n)$ converge vers $l$.

- **Vitesse de convergence** : La convergence de la méthode de Newton est généralement **quadratique**. Cela signifie que le nombre de chiffres décimaux corrects double approximativement à chaque itération, ce qui est extrêmement rapide.

### Exemples

**Exemple 1 : Calcul de $\sqrt{a}$**

Pour calculer $\sqrt{a}$ (avec $a>0$), on cherche la racine positive de la fonction $F(x) = x^2 - a$.

La dérivée est $F'(x) = 2x$.

La formule de récurrence de Newton est :

$$ u_{n+1} = u_n - \frac{u_n^2 - a}{2u_n} = \frac{2u_n^2 - (u_n^2 - a)}{2u_n} = \frac{u_n^2 + a}{2u_n} = \frac{1}{2}\left(u_n + \frac{a}{u_n}\right) $$

On retrouve l'algorithme de Héron, connu pour sa convergence très rapide.

**Exemple 2 : Résolution de $\cos(x) = x$**

On cherche la racine de $F(x) = \cos(x) - x$.

La dérivée est $F'(x) = -\sin(x) - 1$.

La récurrence de Newton est :

$$ u_{n+1} = u_n - \frac{\cos(u_n) - u_n}{-\sin(u_n) - 1} = u_n + \frac{\cos(u_n) - u_n}{\sin(u_n) + 1} $$

Si on part de $u_0 = 0.5$:

$u_1 \approx 0.5 + \frac{\cos(0.5)-0.5}{\sin(0.5)+1} \approx 0.7552$

$u_2 \approx 0.7552 + \dots \approx 0.7391$

$u_3 \approx 0.739085...$ (très proche de la vraie solution).

**Exemple 3 : Calcul de $1/a$ sans division**

Pour calculer l'inverse d'un nombre $a$, on peut chercher la racine de $F(x) = \frac{1}{x} - a$.

La dérivée est $F'(x) = -1/x^2$.

La récurrence de Newton est :

$$ u_{n+1} = u_n - \frac{1/u_n - a}{-1/u_n^2} = u_n + u_n^2(\frac{1}{u_n} - a) = u_n + u_n - a u_n^2 = u_n(2 - a u_n) $$

Cet algorithme n'utilise que des multiplications et des soustractions pour calculer un inverse.

### Contre-exemples

**Contre-exemple 1 (Mauvais point de départ)**

Pour $F(x)=x^3-2x+2$, si on part de $u_0=0$, la tangente en $(0,2)$ coupe l'axe des x en $x=1$. La tangente en $(1,1)$ coupe l'axe des x en $x=0$. La suite oscille $0, 1, 0, 1, \dots$ et ne converge pas.

**Contre-exemple 2 (Dérivée nulle)**

Pour $F(x) = (x-1)^2$, la racine est $l=1$. Mais $F'(1)=0$.

La récurrence est $u_{n+1} = u_n - \frac{(u_n-1)^2}{2(u_n-1)} = u_n - \frac{u_n-1}{2} = \frac{u_n+1}{2}$.

La fonction d'itération est $f(x) = \frac{x+1}{2}$. La dérivée est $f'(x)=1/2$.

La convergence est assurée, mais elle est seulement linéaire (géométrique de raison 1/2) et non quadratique.

### Concepts Connexes

- **Analyse numérique** : La méthode de Newton est un des algorithmes fondamentaux de cette discipline.
- **Optimisation** : Pour trouver un minimum ou maximum d'une fonction $G(x)$, on peut chercher les racines de sa dérivée $G'(x)$ en utilisant la méthode de Newton.

### Applications

- Utilisée partout en sciences et ingénierie pour résoudre des équations non-linéaires complexes qui n'ont pas de solution analytique.
- Au cœur de nombreux logiciels de calcul scientifique (calculatrices, Matlab, etc.).
