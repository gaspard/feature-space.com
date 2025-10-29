---
id: 19088a48
type: concepts
order: 10
title: Séries Numériques - Concepts (A)
tags:
  - séries numériques
  - convergence
  - critère de Cauchy
  - séries à termes positifs
  - intégrales généralisées
  - théorème d'Abel
course: Analyse
courseId: 9c2d50b3
chapter: Séries Numériques
chapterId: c9bf30da
level: regular
createdAt: '2025-10-12T17:47:40.884Z'
---
# Séries Numériques (A)

---

## Concept 1: Série Numérique : Définition et Convergence

### Prérequis

- **Suites numériques** : Compréhension de ce qu'est une suite $(u_n)_{n \in \mathbb{N}}$.
- **Limite d'une suite** : Savoir ce que signifie pour une suite de converger vers une limite finie.

### Définition

Une **série numérique** est un couple de deux suites, la suite du **terme général** $(u_n)_{n \in \mathbb{N}}$ et la suite des **sommes partielles** $(s_n)_{n \in \mathbb{N}}$, liées par la relation :

$$ \forall n \in \mathbb{N}, \quad s_n = \sum_{k=0}^{n} u_k = u_0 + u_1 + \dots + u_n $$

- On dit que la série de terme général $u_n$ (notée $\sum u_n$) **converge** si la suite des sommes partielles $(s_n)$ converge vers une limite finie $s \in \mathbb{K}$ (où $\mathbb{K}$ est $\mathbb{R}$ ou $\mathbb{C}$).
- Cette limite $s$ est appelée la **somme de la série**. On note alors :

$$ s = \sum_{k=0}^{\infty} u_k = \lim_{n \to \infty} s_n $$

- Si la suite $(s_n)$ ne converge pas, on dit que la série **diverge**.

Lorsque la série converge vers une somme $s$, on définit le **reste d'ordre n** par :

$$ r_n = s - s_n = \sum_{k=n+1}^{\infty} u_k $$

Par définition, on a toujours $\lim_{n \to \infty} r_n = 0$ pour une série convergente.

### Propriétés Clés

- **Caractère de la série** : La nature d'une série (convergente ou divergente) n'est pas affectée par la modification, l'ajout ou la suppression d'un nombre fini de termes. Cependant, la valeur de la somme, si elle existe, en dépend.
- **Linéarité** : Si $\sum u_n$ et $\sum v_n$ sont deux séries convergentes de sommes respectives $S_u$ et $S_v$, et $\lambda \in \mathbb{K}$ est un scalaire, alors :
    - La série somme $\sum (u_n + v_n)$ converge et sa somme est $S_u + S_v$.
    - La série produit par un scalaire $\sum (\lambda u_n)$ converge et sa somme est $\lambda S_u$.

### Exemples

**Exemple 1 : Série géométrique**

Considérons la série de terme général $u_n = \left(\frac{1}{2}\right)^n$.

La somme partielle d'ordre $n$ est :

$$ s_n = \sum_{k=0}^{n} \left(\frac{1}{2}\right)^k = \frac{1 - (1/2)^{n+1}}{1 - 1/2} = 2 \left(1 - \left(\frac{1}{2}\right)^{n+1}\right) $$

Lorsque $n \to \infty$, le terme $(1/2)^{n+1}$ tend vers 0. Donc :

$$ \lim_{n \to \infty} s_n = 2(1 - 0) = 2 $$

La série converge et sa somme est 2. On note $\sum_{n=0}^{\infty} \left(\frac{1}{2}\right)^n = 2$.

**Exemple 2 : Série télescopique**

Considérons la série de terme général $u_n = \frac{1}{n(n+1)}$ pour $n \ge 1$.

On peut décomposer le terme général en éléments simples : $u_n = \frac{1}{n} - \frac{1}{n+1}$.

La somme partielle d'ordre $n$ est :

$$ s_n = \sum_{k=1}^{n} \left(\frac{1}{k} - \frac{1}{k+1}\right) = \left(1 - \frac{1}{2}\right) + \left(\frac{1}{2} - \frac{1}{3}\right) + \dots + \left(\frac{1}{n} - \frac{1}{n+1}\right) $$

Les termes intermédiaires s'annulent deux à deux. Il reste :

$$ s_n = 1 - \frac{1}{n+1} $$

Lorsque $n \to \infty$, $\frac{1}{n+1}$ tend vers 0. Donc :

$$ \lim_{n \to \infty} s_n = 1 - 0 = 1 $$

La série converge et sa somme est 1.

**Exemple 3 : Série divergente**

Considérons la série de terme général $u_n = 1$.

La somme partielle d'ordre $n$ est :

$$ s_n = \sum_{k=0}^{n} 1 = n+1 $$

La suite $(s_n)$ tend vers $+\infty$ lorsque $n \to \infty$. La série diverge.

### Contre-exemples

- **Une suite n'est pas une série** : La suite $(u_n)_{n \in \mathbb{N}}$ avec $u_n=1/n$ converge vers 0. Cependant, la série $\sum 1/n$ (série harmonique) diverge. Il est crucial de ne pas confondre la convergence du terme général avec la convergence de la série.
- **Une série dont les sommes partielles n'ont pas de limite** : Soit la série $\sum (-1)^n$. Les sommes partielles sont $s_0=1$, $s_1=1-1=0$, $s_2=1-1+1=1$, $s_3=0$, etc. La suite $(s_n)$ oscille entre 1 et 0 et n'a donc pas de limite. La série diverge.

### Concepts Connexes

- **Suites Numériques** : Le concept de série est une extension de celui de suite. L'étude de la convergence d'une série se ramène à l'étude de la convergence de la suite de ses sommes partielles.
- **Condition Nécessaire de Convergence** : Une condition de base pour qu'une série puisse converger.

### Applications

- Calcul d'aires et de volumes (intégration).
- Modélisation de phénomènes en physique (décomposition de signaux, mécanique quantique).
- Calculs de probabilités (espérance de variables aléatoires discrètes).

---

## Concept 2: Condition Nécessaire de Convergence

### Prérequis

- **Série Numérique : Définition et Convergence**
- **Limite d'une suite**

### Définition

Si une série numérique de terme général $u_n$ converge, alors son terme général tend nécessairement vers 0.

$$ \text{Si } \sum_{n=0}^{\infty} u_n \text{ converge, alors } \lim_{n \to \infty} u_n = 0 $$

Cette condition est **nécessaire** mais **pas suffisante**.

L'utilité principale de cette proposition est sa **contraposée**, qui fournit un test de divergence simple et efficace :

$$ \text{Si } \lim_{n \to \infty} u_n \neq 0 \text{ (ou si la limite n'existe pas), alors la série } \sum_{n=0}^{\infty} u_n \text{ diverge.} $$

On appelle parfois ce test le **test de divergence grossière**.

### Propriétés Clés

- **Test de divergence** : C'est la première vérification à faire face à une série. Si le terme général ne tend pas vers 0, on peut conclure immédiatement à la divergence.
- **Implication à sens unique** : Le fait que $\lim_{n \to \infty} u_n = 0$ ne donne **aucune information** sur la convergence de la série. Elle peut converger ou diverger.

### Exemples

**Exemple 1 : Divergence car le terme général ne tend pas vers 0**

Soit la série $\sum_{n=1}^{\infty} \frac{n}{2n+1}$.

Le terme général est $u_n = \frac{n}{2n+1}$.

Calculons sa limite :

$$ \lim_{n \to \infty} u_n = \lim_{n \to \infty} \frac{n}{n(2+1/n)} = \lim_{n \to \infty} \frac{1}{2+1/n} = \frac{1}{2} $$

Comme la limite est $\frac{1}{2} \neq 0$, la série diverge.

**Exemple 2 : Divergence car le terme général n'a pas de limite**

Soit la série $\sum_{n=0}^{\infty} (-1)^n$.

Le terme général est $u_n = (-1)^n$. La suite $(u_n)$ prend les valeurs $1, -1, 1, -1, \dots$ et n'a pas de limite.

Comme le terme général ne tend pas vers 0, la série diverge.

**Exemple 3 : Divergence d'une série trigonométrique**

Soit la série $\sum_{n=0}^{\infty} \cos(n)$.

Le terme général $u_n = \cos(n)$ n'admet pas de limite lorsque $n \to \infty$. On peut montrer que la suite $(\cos(n))$ ne tend pas vers 0.

Par conséquent, la série $\sum \cos(n)$ diverge.

### Contre-exemples

Ces exemples montrent que la réciproque est fausse. Le terme général tend vers 0, mais la série diverge.

**Contre-exemple 1 : La série harmonique**

Considérons la série $\sum_{n=1}^{\infty} \frac{1}{n}$.

Le terme général $u_n = \frac{1}{n}$ tend bien vers 0 quand $n \to \infty$.

Cependant, la série harmonique diverge (on peut le montrer en comparant la somme partielle à une intégrale, ou en groupant les termes comme dans la démonstration du critère de Cauchy).

**Contre-exemple 2 : Série de Riemann divergente**

Considérons la série $\sum_{n=1}^{\infty} \frac{1}{\sqrt{n}}$.

Le terme général $u_n = \frac{1}{\sqrt{n}}$ tend bien vers 0 quand $n \to \infty$.

Cependant, cette série diverge (c'est une série de Riemann avec $p = 1/2 \le 1$).

### Concepts Connexes

- **Critère de Cauchy pour les séries** : La démonstration formelle de la condition nécessaire de convergence s'appuie sur le critère de Cauchy.
- **Séries de Riemann** : Fournissent une famille d'exemples et de contre-exemples pour illustrer que $u_n \to 0$ n'est pas suffisant.

### Applications

- C'est le premier outil pour "filtrer" les séries et écarter rapidement les cas de divergence évidents.

---

## Concept 3: Convergence Absolue et Semi-Convergence

### Prérequis

- **Série Numérique : Définition et Convergence**
- **Valeur absolue** (ou module pour les nombres complexes)
- **Séries à Termes Positifs**

### Définition

- Une série de terme général $u_n$ est dite **absolument convergente** si la série des valeurs absolues (ou des modules), $\sum_{n=0}^{\infty} |u_n|$, converge.

- Le théorème fondamental est : **toute série absolument convergente est convergente**.

$$ \text{Si } \sum |u_n| \text{ converge, alors } \sum u_n \text{ converge.} $$

De plus, on a l'inégalité triangulaire pour les sommes :

$$ \left| \sum_{n=0}^{\infty} u_n \right| \le \sum_{n=0}^{\infty} |u_n| $$

- Une série est dite **semi-convergente** si elle est convergente, mais pas absolument convergente.

$$ \sum u_n \text{ est semi-convergente si } \left( \sum u_n \text{ converge ET } \sum |u_n| \text{ diverge} \right) $$

### Propriétés Clés

- **Simplification de l'étude** : La convergence absolue permet d'étudier la convergence de séries à termes de signe quelconque en se ramenant à l'étude de séries à termes positifs, pour lesquelles on dispose de nombreux outils (théorème de comparaison, tests de d'Alembert, de Cauchy, etc.).
- **Caractérisation de la convergence absolue pour les séries à termes positifs** : Pour une série $\sum u_n$ à termes positifs, la convergence et la convergence absolue sont équivalentes, puisque $u_n = |u_n|$.
- **Stabilité** : Les séries absolument convergentes sont "robustes". On peut réarranger l'ordre de leurs termes sans changer leur somme (ce qui est faux pour les séries semi-convergentes).
- **Linéarité** : Si $\sum u_n$ et $\sum v_n$ sont absolument convergentes, alors $\sum (u_n + v_n)$ l'est aussi.

### Exemples

**Exemple 1 : Une série absolument convergente**

Considérons la série $\sum_{n=1}^{\infty} \frac{(-1)^n}{n^2}$.

Pour étudier la convergence absolue, on regarde la série $\sum_{n=1}^{\infty} \left| \frac{(-1)^n}{n^2} \right| = \sum_{n=1}^{\infty} \frac{1}{n^2}$.

Cette série est une série de Riemann avec $p=2 > 1$, donc elle converge.

Puisque la série des valeurs absolues converge, la série initiale $\sum \frac{(-1)^n}{n^2}$ est absolument convergente, et donc elle converge.

**Exemple 2 : Une autre série absolument convergente**

Soit la série $\sum_{n=0}^{\infty} \frac{\sin(n)}{2^n}$.

On étudie la convergence absolue : $\sum_{n=0}^{\infty} \left| \frac{\sin(n)}{2^n} \right| = \sum_{n=0}^{\infty} \frac{|\sin(n)|}{2^n}$.

On sait que pour tout $n$, $0 \le |\sin(n)| \le 1$. Donc :

$$ 0 \le \frac{|\sin(n)|}{2^n} \le \frac{1}{2^n} $$

La série $\sum \frac{1}{2^n}$ est une série géométrique de raison $1/2 < 1$, donc elle converge.

Par le théorème de comparaison pour les séries à termes positifs, la série $\sum \frac{|\sin(n)|}{2^n}$ converge.

La série initiale est donc absolument convergente, et par conséquent convergente.

**Exemple 3 : Une série semi-convergente (la série harmonique alternée)**

Considérons la série $\sum_{n=1}^{\infty} \frac{(-1)^{n+1}}{n} = 1 - \frac{1}{2} + \frac{1}{3} - \frac{1}{4} + \dots$.

1.  **Convergence** : On peut montrer (avec le critère des séries alternées, non présenté ici mais qui est un résultat classique) que cette série converge (sa somme est $\ln(2)$).
2.  **Convergence absolue** : On étudie $\sum_{n=1}^{\infty} \left| \frac{(-1)^{n+1}}{n} \right| = \sum_{n=1}^{\infty} \frac{1}{n}$. C'est la série harmonique, qui diverge.

Puisque la série converge mais pas absolument, elle est **semi-convergente**.

### Contre-exemples

- **Une série convergente qui n'est pas absolument convergente** : L'exemple 3 ci-dessus est le contre-exemple standard. La convergence n'implique pas la convergence absolue.
- **Utilisation abusive des tests pour séries à termes positifs** : On ne peut pas appliquer le test de d'Alembert directement à $\sum \frac{(-1)^n}{n}$. Le rapport $\frac{u_{n+1}}{u_n} = \frac{(-1)^{n+1}/(n+1)}{(-1)^n/n} = -\frac{n}{n+1}$ tend vers -1. Le test de d'Alembert (pour les séries à termes positifs) ne s'applique pas. Il faut l'appliquer à la série des valeurs absolues.

### Concepts Connexes

- **Séries à Termes Positifs** : L'étude de la convergence absolue s'y ramène toujours.
- **Théorème de Comparaison**, **Critères de d'Alembert et de Cauchy** : Outils principaux pour établir la convergence absolue.
- **Produit de Cauchy de Séries** : La convergence absolue est une condition suffisante pour que le produit de Cauchy de deux séries converge vers le produit des sommes.

### Applications

- La convergence absolue garantit que la somme est indépendante de l'ordre de sommation, une propriété cruciale en analyse avancée et en physique.
- Permet de définir des fonctions via des séries (séries entières, séries de Fourier) sur des domaines complexes.

---

## Concept 4: Séries à Termes Positifs

### Prérequis

- **Série Numérique : Définition et Convergence**
- **Suites monotones** : En particulier, le théorème de la limite monotone (toute suite croissante et majorée converge).

### Définition

Une série $\sum u_n$ est dite **à termes positifs** si $u_n \ge 0$ pour tout $n \in \mathbb{N}$ (ou au moins à partir d'un certain rang).

La propriété fondamentale de ces séries concerne leur suite de sommes partielles $(s_n)_{n \in \mathbb{N}}$.

Comme $s_n = s_{n-1} + u_n$ et que $u_n \ge 0$, on a $s_n \ge s_{n-1}$. La suite $(s_n)$ est donc **croissante**.

En vertu du théorème de la limite monotone, une telle suite a deux issues possibles :

1.  Si la suite $(s_n)$ est **majorée** (c'est-à-dire qu'il existe un nombre $M$ tel que $s_n \le M$ pour tout $n$), alors elle **converge** vers une limite finie.
2.  Si la suite $(s_n)$ n'est **pas majorée**, alors elle **diverge vers $+\infty$**.

Conclusion : une série à termes positifs **converge si et seulement si la suite de ses sommes partielles est majorée**.

### Propriétés Clés

- **Pas d'oscillation** : Une série à termes positifs ne peut pas diverger en oscillant (comme $\sum (-1)^n$). Soit elle converge, soit elle explose vers $+\infty$.
- **Base de comparaison** : Ces séries servent de "briques de base" pour l'étude de séries plus complexes via le concept de convergence absolue.
- **Tests spécifiques** : De nombreux tests de convergence puissants s'appliquent spécifiquement aux séries à termes positifs (Comparaison, d'Alembert, Cauchy, Riemann, etc.).

### Exemples

**Exemple 1 : Série de Riemann convergente**

Soit la série $\sum_{n=1}^{\infty} \frac{1}{n^2}$. C'est une série à termes positifs. On peut montrer que ses sommes partielles sont majorées. Par exemple :

$$ s_n = \sum_{k=1}^{n} \frac{1}{k^2} = 1 + \sum_{k=2}^{n} \frac{1}{k^2} \le 1 + \sum_{k=2}^{n} \frac{1}{k(k-1)} $$

Or $\sum_{k=2}^{n} \frac{1}{k(k-1)} = \sum_{k=2}^{n} (\frac{1}{k-1} - \frac{1}{k}) = 1 - \frac{1}{n} < 1$.

Donc $s_n \le 1 + 1 = 2$ pour tout $n$. La suite $(s_n)$ est croissante et majorée, donc la série converge.

**Exemple 2 : Série géométrique (positive)**

Soit la série $\sum_{n=0}^{\infty} r^n$ avec $0 \le r < 1$. Les termes sont positifs.

La somme partielle $s_n = \frac{1-r^{n+1}}{1-r}$ est majorée par $\frac{1}{1-r}$. Étant croissante, la série converge.

**Exemple 3 : Série harmonique (divergente)**

Soit la série $\sum_{n=1}^{\infty} \frac{1}{n}$. Les termes sont positifs.

On peut montrer que la suite des sommes partielles n'est pas majorée. Par exemple, en groupant les termes :

$$ s_{2^k} = 1 + \frac{1}{2} + (\frac{1}{3}+\frac{1}{4}) + (\frac{1}{5}+\dots+\frac{1}{8}) + \dots \ge 1 + \frac{1}{2} + \frac{2}{4} + \frac{4}{8} + \dots = 1 + \frac{k}{2} $$

Comme $k$ peut être aussi grand que l'on veut, la suite $(s_{2^k})$ n'est pas majorée. Donc $(s_n)$ n'est pas majorée et la série diverge vers $+\infty$.

### Contre-exemples

- **Série à termes non positifs** : $\sum \frac{(-1)^n}{n}$. Sa suite de sommes partielles n'est pas monotone. $s_1=1, s_2=1-1/2=0.5, s_3=0.5+1/3 \approx 0.83$. Elle n'est ni croissante, ni décroissante. Le critère de la suite majorée ne s'applique pas directement (bien que la suite $(s_n)$ soit bornée et convergente).
- **Série à termes de signe variable** : $\sum \cos(n)$. Les termes sont positifs et négatifs. La suite des sommes partielles n'est pas monotone et on sait que la série diverge.

### Concepts Connexes

- **Théorème de Comparaison**, **Critères de d'Alembert et de Cauchy** : Ce sont les outils privilégiés pour déterminer si une série à termes positifs est majorée (et donc convergente).
- **Convergence Absolue** : L'étude de la convergence absolue transforme n'importe quelle série en une série à termes positifs.

### Applications

- En probabilités, la somme des probabilités d'événements disjoints forme une série à termes positifs dont la somme ne peut excéder 1.
- En physique, les quantités comme l'énergie, la masse ou l'intensité sont positives, et leur sommation mène à des séries à termes positifs.

---

## Concept 5: Théorèmes de Comparaison pour les Séries à Termes Positifs

### Prérequis

- **Séries à Termes Positifs**
- Connaissance de séries de référence (géométriques, de Riemann).

### Définition

Les théorèmes de comparaison permettent de déterminer la nature d'une série à termes positifs $\sum u_n$ en la comparant à une autre série à termes positifs $\sum v_n$ dont la nature est connue.

**Théorème 1 : Comparaison par inégalité**

Soient $\sum u_n$ et $\sum v_n$ deux séries à termes positifs. On suppose qu'il existe un rang $N$ tel que pour tout $n \ge N$, on ait $0 \le u_n \le v_n$.

- Si $\sum v_n$ converge, alors $\sum u_n$ converge.
- Si $\sum u_n$ diverge, alors $\sum v_n$ diverge.

Intuitivement : ce qui est plus petit qu'une quantité finie est fini ; ce qui est plus grand qu'une quantité infinie est infini.

**Théorème 2 : Comparaison par équivalence ou limite (Critère d'équivalence)**

Soient $\sum u_n$ et $\sum v_n$ deux séries à termes strictement positifs. On suppose que la limite du rapport existe :

$$ \lim_{n \to \infty} \frac{u_n}{v_n} = L $$

- Si $L \in ]0, +\infty[$ (L est un réel fini et non nul), alors les deux séries $\sum u_n$ et $\sum v_n$ ont la **même nature**.
- Si $L=0$ et que $\sum v_n$ converge, alors $\sum u_n$ converge.
- Si $L=+\infty$ et que $\sum v_n$ diverge, alors $\sum u_n$ diverge.

### Propriétés Clés

- **Choix de la série de référence** : Le succès de la méthode dépend du choix judicieux de la série de comparaison $\sum v_n$. On utilise très souvent les séries de Riemann ($\sum 1/n^p$) ou les séries géométriques ($\sum r^n$).
- **Utilisation des équivalents** : Le critère d'équivalence est très puissant. Il suffit souvent de trouver un équivalent simple $v_n$ de $u_n$ quand $n \to \infty$ pour connaître la nature de $\sum u_n$. Par exemple, si $u_n \sim v_n$, alors $\lim u_n/v_n = 1$, et les séries sont de même nature.

### Exemples

**Exemple 1 : Comparaison par inégalité**

Étudier la nature de $\sum_{n=1}^{\infty} \frac{1}{n^2 + n}$.

Les termes sont positifs. Pour $n \ge 1$, on a $n^2 + n > n^2$, donc $0 < \frac{1}{n^2+n} < \frac{1}{n^2}$.

On choisit $u_n = \frac{1}{n^2+n}$ et $v_n = \frac{1}{n^2}$.

La série de référence $\sum v_n = \sum \frac{1}{n^2}$ est une série de Riemann avec $p=2 > 1$, donc elle converge.

Puisque $u_n \le v_n$ et que $\sum v_n$ converge, le théorème de comparaison par inégalité affirme que $\sum u_n$ converge aussi.

**Exemple 2 : Comparaison par équivalence**

Étudier la nature de la série $\sum_{n=1}^{\infty} \sin\left(\frac{1}{n}\right)$.

Le terme général est $u_n = \sin(1/n)$. Pour $n \ge 1$, $1/n \in ]0, 1]$, donc $u_n > 0$.

Quand $n \to \infty$, $1/n \to 0$. On sait que $\sin(x) \sim x$ quand $x \to 0$.

Donc, $u_n = \sin(1/n) \sim \frac{1}{n}$.

Prenons $v_n = \frac{1}{n}$. La série $\sum v_n$ est la série harmonique, qui diverge.

Comme $u_n \sim v_n$, les deux séries ont la même nature. Donc $\sum \sin(1/n)$ diverge.

**Exemple 3 : Limite du rapport valant 0**

Étudier la nature de $\sum_{n=1}^{\infty} \frac{n}{3^n}$.

Posons $u_n = \frac{n}{3^n}$. C'est une série à termes positifs.

Comparons-la à une série géométrique. Choisissons $v_n = (\frac{2}{3})^n$.

$$ \lim_{n \to \infty} \frac{u_n}{v_n} = \lim_{n \to \infty} \frac{n/3^n}{(2/3)^n} = \lim_{n \to \infty} n \left(\frac{2}{3}\cdot\frac{1}{3}\right)^n = \lim_{n \to \infty} n \left(\frac{2}{9}\right)^n = 0 $$

(par croissances comparées).

La série de référence $\sum v_n = \sum (2/3)^n$ est une série géométrique de raison $r=2/3 < 1$, donc elle converge.

Puisque la limite du rapport est 0 et que $\sum v_n$ converge, on conclut que $\sum u_n$ converge.

### Contre-exemples

- **Séries à termes non positifs** : Le théorème ne s'applique pas à $\sum \frac{(-1)^n}{\sqrt{n}}$. Si on essaie de comparer avec $\sum \frac{1}{\sqrt{n}}$, on ne peut rien conclure sur la série alternée (qui, en réalité, converge).
- **Mauvais choix de comparaison** : Si on étudie $\sum \frac{1}{n^2}$ (convergente) et qu'on la compare à $\sum \frac{1}{n}$ (divergente), on a bien $\frac{1}{n^2} \le \frac{1}{n}$. Le fait que la série majorante $\sum 1/n$ diverge ne donne aucune information sur la série minorée $\sum 1/n^2$.

### Concepts Connexes

- **Séries de Riemann et séries géométriques** : Les principales familles de séries utilisées pour la comparaison.
- **Développements limités et équivalents** : Outils essentiels pour appliquer le critère d'équivalence.

### Applications

- C'est l'une des méthodes les plus utilisées en pratique pour déterminer la nature de séries complexes en les ramenant à des cas connus.

# Séries Numériques (A)

---

## Concept 1: Série Numérique et Convergence

### Prérequis

- **Suites numériques** : Compréhension de ce qu'est une suite $(u_n)_{n \in \mathbb{N}}$.
- **Limite d'une suite** : Savoir ce que signifie pour une suite de converger vers une limite finie.
- **Opérations sur les limites** : Connaître les propriétés des limites de sommes et de produits de suites.

### Définition

Soit $(u_n)_{n \in \mathbb{N}}$ une suite de nombres réels ou complexes ($\mathbb{K} = \mathbb{R}$ ou $\mathbb{C}$).

i) Une **série numérique** est un couple de suites, la suite des **termes généraux** $(u_n)_{n \in \mathbb{N}}$ et la suite des **sommes partielles** $(s_n)_{n \in \mathbb{N}}$, définies par la relation :

$$ \forall n \in \mathbb{N}, \quad s_n = \sum_{k=0}^{n} u_k = u_0 + u_1 + \dots + u_n $$

On note la série de terme général $u_n$ par le symbole $\sum u_n$.

ii) On dit que la série $\sum u_n$ **converge** si la suite de ses sommes partielles $(s_n)_{n \in \mathbb{N}}$ converge vers une limite finie $s \in \mathbb{K}$. Cette limite $s$ est appelée la **somme** de la série. On note alors :

$$ s = \sum_{k=0}^{\infty} u_k = \lim_{n \to \infty} s_n = \lim_{n \to \infty} \sum_{k=0}^{n} u_k $$

iii) Si la suite $(s_n)$ ne converge pas (soit parce qu'elle tend vers l'infini, soit parce qu'elle n'a pas de limite), on dit que la série **diverge**.

iv) Si la série converge vers une somme $s$, on définit le **reste d'ordre n** comme la différence $r_n = s - s_n$. Le reste représente "ce qu'il manque" à la somme partielle $s_n$ pour atteindre la somme totale $s$. On a :

$$ r_n = s - s_n = \sum_{k=n+1}^{\infty} u_k \quad \text{et} \quad \lim_{n \to \infty} r_n = 0 $$

### Explications Détaillées

L'idée d'une série est de donner un sens à la somme d'un nombre infini de termes. Directement, on ne peut pas additionner une infinité de nombres. Le concept de série contourne ce problème en utilisant la notion de limite.

On ne somme pas tout d'un coup. On procède par étapes :

1.  On calcule $s_0 = u_0$.
2.  On calcule $s_1 = u_0 + u_1$.
3.  On calcule $s_2 = u_0 + u_1 + u_2$.
4.  Et ainsi de suite, on construit la suite $(s_n)$ des sommes partielles.

La question "Quelle est la somme de tous les $u_n$ ?" se traduit alors par "Vers quelle valeur la suite des sommes partielles $(s_n)$ tend-elle lorsque $n$ devient infiniment grand ?".

- Si $(s_n)$ se rapproche d'une valeur finie $s$, alors on dit que la série converge et que sa somme est $s$.
- Si $(s_n)$ grandit sans limite (tend vers $+\infty$ ou $-\infty$) ou si elle oscille sans se stabiliser, alors la série diverge.

Le reste $r_n$ est une notion très importante en analyse numérique. Il mesure l'erreur que l'on commet si l'on approxime la somme infinie $s$ par la somme finie $s_n$. Le fait que $r_n \to 0$ pour une série convergente est fondamental : cela signifie que l'on peut rendre l'erreur aussi petite que l'on veut, à condition de sommer suffisamment de termes.

### Propriétés Clés

- **Linéarité** : Si $\sum u_n$ et $\sum v_n$ sont deux séries convergentes de sommes respectives $U$ et $V$, et si $\lambda \in \mathbb{K}$ est un scalaire, alors :
  - La série somme $\sum (u_n + v_n)$ converge et sa somme est $U+V$.
  - La série produit $\sum (\lambda u_n)$ converge et sa somme est $\lambda U$.

  L'ensemble des séries convergentes forme un espace vectoriel.

- **Nature indépendante des premiers termes** : La nature (convergence ou divergence) d'une série ne change pas si l'on modifie, ajoute ou supprime un nombre fini de termes. Cependant, si la série converge, la valeur de sa somme dépend de tous ses termes. Par exemple, si $\sum_{n=0}^\infty u_n$ converge, alors $\sum_{n=10}^\infty u_n$ converge aussi, mais leurs sommes sont différentes.

### Exemples

**Exemple 1 : Série géométrique**

Considérons la série de terme général $u_n = (\frac{1}{2})^n$.

Les sommes partielles sont :

$s_n = \sum_{k=0}^{n} (\frac{1}{2})^k = 1 + \frac{1}{2} + \dots + (\frac{1}{2})^n = \frac{1 - (1/2)^{n+1}}{1 - 1/2} = 2(1 - (\frac{1}{2})^{n+1}) = 2 - \frac{1}{2^n}$.

Lorsque $n \to \infty$, le terme $\frac{1}{2^n}$ tend vers 0.

Donc, $\lim_{n \to \infty} s_n = 2$.

La série converge et sa somme est $s=2$. Le reste d'ordre $n$ est $r_n = s - s_n = \frac{1}{2^n}$.

**Exemple 2 : Série télescopique**

Considérons la série de terme général $u_n = \frac{1}{n(n+1)}$ pour $n \ge 1$.

On peut décomposer le terme général en éléments simples : $u_n = \frac{1}{n} - \frac{1}{n+1}$.

Calculons les sommes partielles :

$s_n = \sum_{k=1}^{n} (\frac{1}{k} - \frac{1}{k+1}) = (\frac{1}{1} - \frac{1}{2}) + (\frac{1}{2} - \frac{1}{3}) + \dots + (\frac{1}{n} - \frac{1}{n+1})$.

Les termes intermédiaires s'annulent deux à deux. Il ne reste que le premier et le dernier terme :

$s_n = 1 - \frac{1}{n+1}$.

Lorsque $n \to \infty$, $\frac{1}{n+1}$ tend vers 0.

Donc, $\lim_{n \to \infty} s_n = 1$.

La série converge et sa somme est $s=1$.

**Exemple 3 : Série divergente**

Considérons la série de terme général $u_n = n$.

Les sommes partielles sont $s_n = \sum_{k=0}^{n} k = \frac{n(n+1)}{2}$.

Lorsque $n \to \infty$, $s_n \to +\infty$.

La suite des sommes partielles ne converge pas vers une limite finie, donc la série diverge.

### Contre-exemples

**Contre-exemple 1 : Une suite qui ne tend pas vers 0**

Considérons la série $\sum (-1)^n$. Le terme général est $u_n = (-1)^n$.

La suite des sommes partielles est :

$s_0 = 1$

$s_1 = 1 - 1 = 0$

$s_2 = 1 - 1 + 1 = 1$

$s_3 = 1 - 1 + 1 - 1 = 0$

La suite $(s_n)$ est $(1, 0, 1, 0, \dots)$. Elle oscille et n'a pas de limite. La série diverge.

**Contre-exemple 2 : La série harmonique**

Considérons la série $\sum_{n=1}^\infty \frac{1}{n}$. Le terme général $u_n = \frac{1}{n}$ tend bien vers 0.

Cependant, la suite des sommes partielles $s_n = 1 + \frac{1}{2} + \dots + \frac{1}{n}$ ne converge pas. On peut montrer qu'elle tend vers $+\infty$ (elle croît très lentement, environ comme $\ln(n)$). Donc, la série diverge. Ceci montre qu'il ne suffit pas que le terme général tende vers 0 pour que la série converge.

### Concepts Connexes

- **Suites Numériques** : Le concept de série est une extension de celui de suite. L'étude de la convergence d'une série se ramène entièrement à l'étude de la convergence de la suite de ses sommes partielles.
- **Condition Nécessaire de Convergence** : Une conséquence directe de la définition de la convergence. Si $\sum u_n$ converge, alors $\lim u_n = 0$.

### Applications

- **Calcul approché** : Les séries convergentes permettent de calculer des valeurs de fonctions (comme $e^x, \sin(x)$) ou des constantes (comme $\pi, e$) avec une précision arbitraire en calculant les sommes partielles. Le reste $r_n$ permet de borner l'erreur de l'approximation.
- **Modélisation** : En physique, de nombreux phénomènes sont décrits par des séries (décomposition en série de Fourier pour les ondes, séries de Taylor en mécanique).
- **Probabilités** : Les séries géométriques sont utilisées pour modéliser des processus où un événement a une probabilité constante de se produire à chaque étape.

---

## Concept 2: Condition Nécessaire de Convergence

### Prérequis

- **Convergence d'une série** : Savoir ce que signifie la convergence d'une série et la définition de la somme.
- **Limite d'une suite** : Être à l'aise avec la notion de limite d'une suite.

### Définition

Si une série numérique $\sum u_n$ converge, alors son terme général $u_n$ tend nécessairement vers 0 lorsque $n$ tend vers l'infini.

$$ \text{Si } \sum_{n=0}^{\infty} u_n \text{ converge, alors } \lim_{n \to \infty} u_n = 0. $$

Cette condition est **nécessaire** mais **pas suffisante**.

### Explications Détaillées

Cette proposition est l'un des premiers tests que l'on applique à une série. L'intuition est assez simple : pour qu'une somme infinie ait une chance d'être un nombre fini, il faut que les termes que l'on ajoute deviennent de plus en plus petits, et même "infiniment petits". Si les termes que l'on ajoute ne tendent pas vers 0, on continue d'ajouter des "briques" de taille non négligeable, et la somme ne peut pas se stabiliser vers une valeur finie.

La démonstration est basée sur la définition de la convergence. Si la série converge vers une somme $s$, cela signifie que la suite des sommes partielles $(s_n)$ converge vers $s$. On a $s_n = u_0 + \dots + u_n$ et $s_{n-1} = u_0 + \dots + u_{n-1}$. Donc, $u_n = s_n - s_{n-1}$.

Puisque $\lim_{n \to \infty} s_n = s$ et $\lim_{n \to \infty} s_{n-1} = s$, par différence des limites, on a :

$$ \lim_{n \to \infty} u_n = \lim_{n \to \infty} (s_n - s_{n-1}) = s - s = 0. $$

L'aspect le plus important à retenir est que **la réciproque est fausse**. Ce n'est pas parce que $\lim_{n \to \infty} u_n = 0$ que la série $\sum u_n$ converge. L'exemple de la série harmonique $\sum 1/n$ est le contre-exemple fondamental à mémoriser.

En pratique, on utilise surtout la **contraposée** de cette proposition, qui est un test de divergence très efficace :

**Test de divergence (ou test grossier)** :

Si le terme général $u_n$ ne tend pas vers 0 (c'est-à-dire si sa limite est non nulle ou si elle n'existe pas), alors la série $\sum u_n$ diverge.

### Propriétés Clés

- **Condition nécessaire** : C'est une porte d'entrée. Si la condition n'est pas remplie, on s'arrête là : la série diverge.
- **Non-suffisance** : Si la condition est remplie ($u_n \to 0$), on ne peut rien conclure. La série peut converger ou diverger. Il faut utiliser des tests plus fins.
- **Test de divergence** : La contraposée est un outil simple et puissant pour prouver la divergence de nombreuses séries.

### Exemples

**Exemple 1 : Utilisation du test de divergence**

Soit la série $\sum_{n=1}^\infty \frac{n^2 - 1}{2n^2 + n}$.

Le terme général est $u_n = \frac{n^2 - 1}{2n^2 + n}$.

Calculons sa limite :

$$ \lim_{n \to \infty} u_n = \lim_{n \to \infty} \frac{n^2(1 - 1/n^2)}{n^2(2 + 1/n)} = \frac{1}{2}. $$

Puisque la limite n'est pas 0, la série diverge.

**Exemple 2 : Limite qui n'existe pas**

Soit la série $\sum_{n=0}^\infty \cos(n\pi) = \sum_{n=0}^\infty (-1)^n$.

Le terme général est $u_n = (-1)^n$. La suite $(u_n)$ prend les valeurs $(1, -1, 1, -1, \dots)$.

Cette suite n'a pas de limite. En particulier, elle ne tend pas vers 0.

Donc, la série diverge.

**Exemple 3 : Limite nulle, mais divergence**

Soit la série $\sum_{n=1}^\infty \frac{1}{\sqrt{n}}$.

Le terme général est $u_n = \frac{1}{\sqrt{n}}$.

On a bien $\lim_{n \to \infty} u_n = 0$. La condition nécessaire est remplie.

Pourtant, cette série diverge (c'est une série de Riemann avec $p=1/2 \le 1$). Cela montre que la condition n'est pas suffisante. Il faut une analyse plus poussée pour conclure.

### Contre-exemples

Il est plus pertinent ici de donner des contre-exemples à la suffisance de la condition.

**Contre-exemple 1 : La série harmonique**

La série $\sum_{n=1}^\infty \frac{1}{n}$ est le contre-exemple canonique.

On a $\lim_{n \to \infty} \frac{1}{n} = 0$, mais la série diverge. Cela montre que $u_n \to 0$ ne garantit pas la convergence.

**Contre-exemple 2 : La série des logarithmes**

Considérons la série $\sum_{n=2}^\infty \frac{1}{n \ln(n)}$.

Le terme général $u_n = \frac{1}{n \ln(n)}$ tend clairement vers 0.

Cependant, on peut montrer (avec le critère de comparaison avec une intégrale) que cette série diverge.

### Concepts Connexes

- **Critère de Cauchy pour les séries** : La démonstration de la condition nécessaire de convergence est une application simple du critère de Cauchy.
- **Séries de Riemann** : L'étude des séries de la forme $\sum 1/n^p$ fournit une famille d'exemples et de contre-exemples pour illustrer que $u_n \to 0$ est une condition non suffisante.

### Applications

- **Filtre initial** : En pratique, face à une série, la première chose à vérifier est le comportement de son terme général. Si $u_n$ ne tend pas vers 0, on a immédiatement la réponse (divergence). Cela permet d'écarter rapidement de nombreux cas.

---

## Concept 3: Convergence Absolue et Semi-Convergence

### Prérequis

- **Convergence d'une série** : Définition de la convergence.
- **Séries à termes positifs** : Notions de base sur les séries dont les termes sont toujours positifs.
- **Valeur absolue** et inégalité triangulaire.

### Définition

Soit $\sum u_n$ une série à termes réels ou complexes.

i) On dit que la série $\sum u_n$ **converge absolument** si la série des valeurs absolues (ou des modules) de ses termes, $\sum |u_n|$, est une série convergente.

ii) Une série est dite **semi-convergente** (ou conditionnellement convergente) si elle est convergente, mais pas absolument convergente.

Le théorème fondamental reliant ces notions est le suivant :

**Toute série absolument convergente est convergente.**

$$ \sum_{n=0}^{\infty} |u_n| \text{ converge } \implies \sum_{n=0}^{\infty} u_n \text{ converge. } $$

### Explications Détaillées

La convergence "simple" d'une série peut parfois dépendre d'annulations subtiles entre les termes positifs et les termes négatifs. Par exemple, dans la série $1 - 1/2 + 1/3 - 1/4 + \dots$, la convergence est due au fait que chaque terme positif est suivi d'un terme négatif légèrement plus petit, créant une oscillation qui s'amortit.

La convergence absolue est une condition beaucoup plus forte. Elle signifie que la série convergerait même si tous ses termes étaient rendus positifs. En d'autres termes, la convergence ne dépend pas des annulations, mais du fait que les termes deviennent petits "assez vite".

Pourquoi est-ce si important ?

1.  **Simplification** : L'étude des séries à termes positifs est beaucoup plus simple. Nous avons de nombreux outils puissants (comparaison, d'Alembert, Cauchy) qui s'appliquent directement. Pour étudier la convergence absolue de $\sum u_n$, on peut donc utiliser tous ces outils sur la série à termes positifs $\sum |u_n|$.
2.  **Robustesse** : Les séries absolument convergentes ont de meilleures propriétés. Par exemple, on peut réarranger l'ordre de leurs termes sans changer la somme, ce qui est faux pour les séries semi-convergentes (Théorème de réarrangement de Riemann).

L'implication "absolument convergente $\Rightarrow$ convergente" est un résultat puissant. Sa preuve repose sur le critère de Cauchy. Intuitivement, si la somme des $|u_i|$ sur un "bout" de la série est petite, alors grâce à l'inégalité triangulaire $|\sum u_i| \le \sum |u_i|$, la somme des $u_i$ sur ce même bout sera encore plus petite, ce qui assure la convergence de $\sum u_n$.

### Propriétés Clés

- **Implication** : Convergence absolue $\implies$ Convergence. La réciproque est fausse.
- **Séries à termes positifs** : Pour une série à termes positifs, convergence et convergence absolue sont équivalentes.
- **Opérations** : Si $\sum u_n$ et $\sum v_n$ convergent absolument, alors $\sum(u_n+v_n)$ et $\sum \lambda u_n$ convergent aussi absolument.
- **Critère de convergence** : Pour montrer qu'une série $\sum u_n$ converge, il suffit de montrer que $\sum |u_n|$ converge.

### Exemples

**Exemple 1 : Série absolument convergente**

Considérons la série $\sum_{n=1}^\infty \frac{(-1)^n}{n^2}$.

Pour étudier la convergence absolue, on regarde la série des valeurs absolues :

$\sum_{n=1}^\infty \left|\frac{(-1)^n}{n^2}\right| = \sum_{n=1}^\infty \frac{1}{n^2}$.

Cette série est une série de Riemann avec $p=2 > 1$, elle est donc convergente.

Puisque la série des valeurs absolues converge, la série initiale $\sum \frac{(-1)^n}{n^2}$ converge absolument. Et par le théorème, elle est aussi simplement convergente.

**Exemple 2 : Utilisation de la comparaison**

Considérons la série $\sum_{n=0}^\infty \frac{\sin(n)}{2^n}$.

On regarde la série des valeurs absolues : $\sum_{n=0}^\infty \left|\frac{\sin(n)}{2^n}\right| = \sum_{n=0}^\infty \frac{|\sin(n)|}{2^n}$.

On sait que pour tout $n$, $0 \le |\sin(n)| \le 1$. Donc :

$0 \le \frac{|\sin(n)|}{2^n} \le \frac{1}{2^n}$.

La série $\sum \frac{1}{2^n}$ est une série géométrique de raison $1/2$, elle converge.

Par le théorème de comparaison pour les séries à termes positifs, la série $\sum \frac{|\sin(n)|}{2^n}$ converge.

La série initiale $\sum \frac{\sin(n)}{2^n}$ est donc absolument convergente, et par conséquent convergente.

**Exemple 3 : Série semi-convergente**

La série harmonique alternée $\sum_{n=1}^\infty \frac{(-1)^{n+1}}{n} = 1 - \frac{1}{2} + \frac{1}{3} - \frac{1}{4} + \dots$

1.  **Convergence simple** : On peut montrer (avec le critère des séries alternées) que cette série converge (sa somme est $\ln(2)$).
2.  **Convergence absolue** : On étudie $\sum_{n=1}^\infty \left|\frac{(-1)^{n+1}}{n}\right| = \sum_{n=1}^\infty \frac{1}{n}$. C'est la série harmonique, qui diverge.

Puisque la série converge mais ne converge pas absolument, elle est semi-convergente.

### Contre-exemples

Le concept de contre-exemple ici est une série qui est convergente mais pas absolument convergente.

**Contre-exemple 1 : La série harmonique alternée (déjà citée)**

$\sum_{n=1}^\infty \frac{(-1)^{n+1}}{n}$ converge, mais $\sum_{n=1}^\infty \frac{1}{n}$ diverge.

**Contre-exemple 2 : Une autre série alternée**

Considérons la série $\sum_{n=2}^\infty \frac{(-1)^n}{\sqrt{n}}$.

-   Elle converge (par le critère des séries alternées).
-   La série des valeurs absolues est $\sum_{n=2}^\infty \frac{1}{\sqrt{n}}$, qui est une série de Riemann avec $p=1/2 \le 1$, donc elle diverge.

Cette série est donc semi-convergente.

### Concepts Connexes

- **Critère de Cauchy pour les séries** : Il est au cœur de la preuve que la convergence absolue implique la convergence.
- **Séries à termes positifs** : L'étude de la convergence absolue se ramène à l'étude d'une série à termes positifs, pour laquelle on dispose de nombreux outils.
- **Critère des séries alternées** : C'est un outil puissant pour démontrer la convergence simple de nombreuses séries qui s'avèrent être semi-convergentes.

### Applications

- **Produit de Cauchy de séries** : Le théorème principal sur le produit de séries nécessite que les deux séries soient absolument convergentes pour garantir que le produit converge vers le produit des sommes.
- **Analyse de Fourier** : La convergence absolue des coefficients de Fourier d'une fonction garantit des propriétés de régularité très fortes pour cette fonction.
- **Permutation des termes** : Seules les séries absolument convergentes permettent de changer l'ordre des termes de la somme sans en affecter la valeur. C'est crucial dans de nombreuses manipulations algébriques de séries.

---

## Concept 4: Critère de Cauchy pour les Séries

### Prérequis

- **Suites de Cauchy** : Une suite $(s_n)$ est de Cauchy si $\forall \varepsilon > 0, \exists N, \forall p,q > N, |s_p - s_q| \le \varepsilon$.
- **Complétude de $\mathbb{R}$ et $\mathbb{C}$** : Le fait qu'une suite est convergente si et seulement si elle est de Cauchy.
- **Sommes partielles** : Définition de $s_n$.

### Définition

Une série numérique de terme général $u_n$ est convergente si et seulement si elle satisfait le **critère de Cauchy**. C'est-à-dire :

$$ \forall \varepsilon > 0, \quad \exists N \in \mathbb{N} \text{ tel que pour tous entiers } q \ge p > N, \text{ on a } \left| \sum_{k=p}^{q} u_k \right| \le \varepsilon. $$

### Explications Détaillées

Ce critère est la traduction directe du critère de Cauchy pour les suites, appliqué à la suite des sommes partielles $(s_n)$. En effet, si $q \ge p$, la somme $\sum_{k=p}^{q} u_k$ peut s'écrire comme une différence de sommes partielles :

$$ \sum_{k=p}^{q} u_k = u_p + u_{p+1} + \dots + u_q = (u_0 + \dots + u_q) - (u_0 + \dots + u_{p-1}) = s_q - s_{p-1} $$

Le critère de Cauchy pour la série $\sum u_n$ est donc rigoureusement équivalent à dire que la suite $(s_n)$ est une suite de Cauchy. Comme $\mathbb{R}$ et $\mathbb{C}$ sont des espaces complets, une suite est de Cauchy si et seulement si elle converge.

Quelle est l'intuition ? Le critère dit qu'une série converge si et seulement si les "blocs" de termes, ou "queues de la série", peuvent être rendus aussi petits que l'on veut, à condition d'aller assez loin dans la série. Peu importe le nombre de termes que l'on somme entre les indices $p$ et $q$, si $p$ et $q$ sont assez grands, le résultat de la somme sera proche de zéro.

Ce critère est d'une grande importance théorique. Il permet de prouver la convergence sans avoir à connaître la valeur de la somme. C'est l'outil principal pour démontrer des théorèmes de convergence, comme celui qui dit que "toute série absolument convergente est convergente". En pratique, il est moins utilisé pour tester une série spécifique, car il peut être difficile de majorer la somme $|\sum_{k=p}^{q} u_k|$.

### Propriétés Clés

- **Condition nécessaire et suffisante** : C'est un critère d'équivalence. Il caractérise complètement la convergence des séries dans $\mathbb{R}$ et $\mathbb{C}$.
- **Indépendance de la limite** : Permet de prouver la convergence sans calculer la somme.
- **Outil théorique fondamental** : Base de nombreuses démonstrations en analyse des séries.

### Exemples

**Exemple 1 : Prouver la divergence de la série harmonique**

Montrons que $\sum_{n=1}^\infty \frac{1}{n}$ ne satisfait pas le critère de Cauchy.

Il faut trouver un $\varepsilon > 0$ pour lequel on ne pourra jamais trouver de $N$ qui fonctionne. Prenons $\varepsilon = 1/2$.

Pour n'importe quel $N \in \mathbb{N}$, choisissons $p=N+1$ et $q=2p = 2N+2$. On a bien $q \ge p > N$.

Regardons la somme :

$$ \sum_{k=p}^{q} u_k = \sum_{k=N+1}^{2(N+1)} \frac{1}{k} = \frac{1}{N+1} + \frac{1}{N+2} + \dots + \frac{1}{2(N+1)} $$

Chacun des termes de cette somme est supérieur ou égal au dernier terme, $\frac{1}{2(N+1)}$.

Il y a $q-p+1 = (2N+2)-(N+1)+1 = N+2$ termes dans la somme.

Donc, $\sum_{k=N+1}^{2(N+1)} \frac{1}{k} \ge (N+2) \times \frac{1}{2(N+1)} = \frac{N+2}{2N+2}$.

Lorsque $N \to \infty$, cette quantité tend vers $1/2$. En particulier, elle est toujours supérieure à $1/2$ (car $N+2 > N+1$).

Nous avons donc montré que pour $\varepsilon = 1/2$, quel que soit $N$, on peut trouver $p, q > N$ tels que $|\sum_{k=p}^{q} u_k| \ge 1/2$. Le critère de Cauchy n'est pas vérifié, donc la série diverge.

**Exemple 2 : Application à une série convergente**

Soit la série $\sum_{n=1}^\infty \frac{1}{n^2}$. Montrons qu'elle vérifie le critère.

Pour $q \ge p > N$, on a :

$$ \left| \sum_{k=p}^{q} \frac{1}{k^2} \right| = \sum_{k=p}^{q} \frac{1}{k^2} \le \sum_{k=p}^{q} \frac{1}{k(k-1)} \quad (\text{car } k^2 > k(k-1)) $$

$$ \sum_{k=p}^{q} \frac{1}{k(k-1)} = \sum_{k=p}^{q} \left(\frac{1}{k-1} - \frac{1}{k}\right) $$

C'est une somme télescopique :

$$ \left(\frac{1}{p-1} - \frac{1}{p}\right) + \left(\frac{1}{p} - \frac{1}{p+1}\right) + \dots + \left(\frac{1}{q-1} - \frac{1}{q}\right) = \frac{1}{p-1} - \frac{1}{q} < \frac{1}{p-1} $$

Puisque $p > N$, on a $p-1 > N-1$, donc $\frac{1}{p-1} < \frac{1}{N-1}$.

Soit $\varepsilon > 0$. On veut $\frac{1}{N-1} \le \varepsilon$, ce qui est vrai si $N-1 \ge 1/\varepsilon$, soit $N \ge 1/\varepsilon + 1$.

Il suffit de choisir un entier $N$ vérifiant cette condition. Pour ce $N$, pour tous $q \ge p > N$, on aura $|\sum_{k=p}^{q} \frac{1}{k^2}| \le \varepsilon$. Le critère est vérifié.

**Exemple 3 : Condition nécessaire de convergence**

Le critère de Cauchy permet de prouver que si $\sum u_n$ converge, alors $u_n \to 0$.

En effet, si la série converge, elle vérifie le critère. Prenons un $\varepsilon > 0$ quelconque. Il existe un $N$ tel que pour $q \ge p > N$, $|\sum_{k=p}^{q} u_k| \le \varepsilon$.

Choisissons $p=n$ et $q=n$, avec $n > N$. C'est un choix valide.

On obtient alors : $|\sum_{k=n}^{n} u_k| = |u_n| \le \varepsilon$.

Ceci est exactement la définition de $\lim_{n \to \infty} u_n = 0$.

### Contre-exemples

Un contre-exemple serait une série divergente, qui ne respecte donc pas le critère.

**Contre-exemple 1 : La série harmonique (déjà vue)**

$\sum 1/n$ diverge car on peut toujours trouver des "blocs" de somme supérieure à $1/2$, peu importe où on se place dans la série.

**Contre-exemple 2 : Une série dont le terme ne tend pas vers 0**

Soit $\sum \frac{n}{n+1}$. Prenons $\varepsilon=1/2$. Choisissons $p=q=n > N$. Alors $|\sum_{k=n}^n u_k| = |u_n| = \frac{n}{n+1}$. Pour $n$ grand, cette valeur est proche de 1, et donc toujours supérieure à $1/2$. Le critère n'est pas satisfait.

### Concepts Connexes

- **Complétude de $\mathbb{R}$ et $\mathbb{C}$** : Le critère de Cauchy n'est un critère de convergence que parce que les espaces de travail sont complets. Dans un espace non complet comme $\mathbb{Q}$, une suite de Cauchy peut ne pas converger.
- **Convergence absolue** : La preuve que "absolument convergente $\implies$ convergente" est une application directe du critère de Cauchy et de l'inégalité triangulaire.

### Applications

- **Théorie de l'analyse** : C'est un outil essentiel pour construire la théorie des espaces de Banach et d'autres structures fondamentales en analyse fonctionnelle.
- **Fondement des preuves** : Il sert à établir la validité d'autres tests de convergence plus pratiques.

# Séries Numériques (A)

---

## Concept 1: Série Numérique et Convergence

### Prérequis

-   Connaissance des suites numériques (définition, convergence, limite).
-   Maîtrise du concept de limite d'une suite.
-   Opérations sur les limites de suites.

### Définition

Une **série numérique** est formellement un couple de suites $\{(u_n)_{n \in \mathbb{N}}, (s_n)_{n \in \mathbb{N}}\}$ où la seconde suite est construite à partir de la première.

1.  La suite $(u_n)_{n \in \mathbb{N}}$ est appelée la suite du **terme général** de la série.
2.  La suite $(s_n)_{n \in \mathbb{N}}$ est la suite des **sommes partielles**, définie pour tout entier $n \ge 0$ par :

    $$ s_n = \sum_{k=0}^{n} u_k = u_0 + u_1 + \dots + u_n $$

On désigne souvent la série par la notation $\sum u_n$.

La série est dite **convergente** si la suite des sommes partielles $(s_n)_{n \in \mathbb{N}}$ converge vers une limite finie $s \in \mathbb{K}$ (où $\mathbb{K}$ est $\mathbb{R}$ ou $\mathbb{C}$). Cette limite $s$ est appelée la **somme de la série**. On note alors :

$$ s = \sum_{n=0}^{\infty} u_n = \lim_{n \to \infty} s_n $$

Si la suite $(s_n)$ diverge (c'est-à-dire n'a pas de limite finie), la série est dite **divergente**.

Si la série converge vers $s$, on définit le **reste d'ordre n** comme la différence $r_n = s - s_n$. Le reste représente l' "erreur" commise en approximant la somme infinie $s$ par la somme finie $s_n$. On a toujours $\lim_{n \to \infty} r_n = 0$.

### Propriétés Clés

-   **Nature d'une série** : La nature d'une série (convergente ou divergente) n'est pas affectée par la modification, l'ajout ou la suppression d'un nombre fini de termes. Cependant, la valeur de la somme (si elle existe) en dépend.
-   **Linéarité** : Si les séries $\sum u_n$ et $\sum v_n$ convergent respectivement vers les sommes $S_u$ et $S_v$, et si $\lambda \in \mathbb{K}$ est un scalaire, alors :
    -   La série somme $\sum (u_n + v_n)$ converge et sa somme est $S_u + S_v$.
    -   La série produit par un scalaire $\sum (\lambda u_n)$ converge et sa somme est $\lambda S_u$.

    L'ensemble des séries convergentes forme un espace vectoriel.

### Exemples

**Exemple 1 : Série télescopique**

Considérons la série de terme général $u_n = \frac{1}{n(n+1)}$ pour $n \ge 1$.

On peut décomposer le terme général en éléments simples : $u_n = \frac{1}{n} - \frac{1}{n+1}$.

Calculons la somme partielle d'ordre $n$ :

$$ s_n = \sum_{k=1}^{n} u_k = \sum_{k=1}^{n} \left(\frac{1}{k} - \frac{1}{k+1}\right) $$

$$ s_n = \left(1 - \frac{1}{2}\right) + \left(\frac{1}{2} - \frac{1}{3}\right) + \dots + \left(\frac{1}{n} - \frac{1}{n+1}\right) $$

Les termes intermédiaires s'annulent deux à deux. Il reste :

$$ s_n = 1 - \frac{1}{n+1} $$

La limite de la suite des sommes partielles est :

$$ \lim_{n \to \infty} s_n = \lim_{n \to \infty} \left(1 - \frac{1}{n+1}\right) = 1 $$

La série converge et sa somme est 1.

**Exemple 2 : Série géométrique**

Soit la série de terme général $u_n = \left(\frac{1}{2}\right)^n$.

La somme partielle d'ordre $n$ est la somme des termes d'une suite géométrique :

$$ s_n = \sum_{k=0}^{n} \left(\frac{1}{2}\right)^k = \frac{1 - (1/2)^{n+1}}{1 - 1/2} = 2 \left(1 - \left(\frac{1}{2}\right)^{n+1}\right) $$

Quand $n \to \infty$, le terme $(1/2)^{n+1}$ tend vers 0.

$$ \lim_{n \to \infty} s_n = 2(1 - 0) = 2 $$

La série converge et sa somme est 2.

**Exemple 3 : Une série divergente**

Considérons la série de terme général $u_n = 1$.

La somme partielle d'ordre $n$ est :

$$ s_n = \sum_{k=0}^{n} 1 = n+1 $$

La suite des sommes partielles $(s_n)$ est $(1, 2, 3, \dots, n+1, \dots)$.

Clairement, $\lim_{n \to \infty} s_n = +\infty$.

La série diverge.

### Contre-exemples

**Contre-exemple 1 : Une suite qui tend vers 0 ne garantit pas la convergence**

La série $\sum \frac{1}{n}$ (pour $n \ge 1$), appelée série harmonique, est un exemple fondamental. Son terme général $u_n = 1/n$ tend bien vers 0. Cependant, la série diverge (ce qui sera prouvé plus tard). Cela montre que la condition $\lim u_n = 0$ est nécessaire, mais pas suffisante.

**Contre-exemple 2 : Non-linéarité avec le produit**

Le produit de deux séries convergentes n'est généralement pas la série des produits des termes généraux. Si $\sum u_n = S_u$ et $\sum v_n = S_v$, en général $\sum (u_n v_n)$ n'est pas reliée simplement à $S_u S_v$ et peut même diverger.

Par exemple, $u_n = v_n = \frac{(-1)^n}{\sqrt{n+1}}$. La série $\sum u_n$ converge (série alternée), mais $\sum u_n v_n = \sum \frac{1}{n+1}$ est la série harmonique décalée, qui diverge.

### Concepts Connexes

-   **Suites Numériques** : La convergence d'une série est définie par la convergence de sa suite de sommes partielles.
-   **Condition Nécessaire de Convergence** : Une condition de base pour qu'une série puisse converger.
-   **Convergence Absolue** : Un type de convergence plus fort qui a d'importantes propriétés.

---

## Concept 2: Condition Nécessaire de Convergence

### Prérequis

-   Concept de série numérique et de convergence (Concept 1).
-   Limite d'une suite.

### Définition

Si une série numérique $\sum u_n$ est convergente, alors son terme général $u_n$ doit nécessairement tendre vers 0 lorsque $n$ tend vers l'infini.

$$ \text{Si } \sum_{n=0}^{\infty} u_n \text{ converge, alors } \lim_{n \to \infty} u_n = 0. $$

**Explication (Idée de la preuve) :**

Si la série converge vers une somme $s$, cela signifie que la suite des sommes partielles $(s_n)$ converge vers $s$. Par définition, on a $s_n = u_0 + \dots + u_n$ et $s_{n-1} = u_0 + \dots + u_{n-1}$. Donc, le terme général peut s'exprimer comme $u_n = s_n - s_{n-1}$ pour $n \ge 1$.

Lorsque $n \to \infty$, $s_n \to s$ et $s_{n-1} \to s$. Par conséquent :

$$ \lim_{n \to \infty} u_n = \lim_{n \to \infty} (s_n - s_{n-1}) = \lim_{n \to \infty} s_n - \lim_{n \to \infty} s_{n-1} = s - s = 0. $$

### Propriétés Clés

-   **Condition Nécessaire mais Non Suffisante** : C'est le point le plus important. Ce n'est pas parce que $\lim_{n \to \infty} u_n = 0$ que la série $\sum u_n$ converge. L'exemple le plus célèbre est la série harmonique $\sum \frac{1}{n}$.
-   **Test de Divergence (ou test grossier)** : La contraposée de cette proposition est un outil très utile pour prouver qu'une série diverge. Si le terme général $u_n$ ne tend pas vers 0 (soit il tend vers une limite non nulle, soit il n'a pas de limite), alors la série $\sum u_n$ diverge. On appelle cela la **divergence grossière**.

### Exemples

**Exemple 1 : Application du test de divergence**

Considérons la série $\sum_{n=1}^{\infty} \frac{n}{n+1}$.

Le terme général est $u_n = \frac{n}{n+1}$. Calculons sa limite :

$$ \lim_{n \to \infty} u_n = \lim_{n \to \infty} \frac{n}{n(1+1/n)} = \lim_{n \to \infty} \frac{1}{1+1/n} = 1. $$

Puisque la limite n'est pas 0, la série diverge grossièrement.

**Exemple 2 : Divergence d'une série alternée**

Soit la série $\sum_{n=0}^{\infty} (-1)^n$.

Le terme général est $u_n = (-1)^n$. La suite des termes généraux est $(1, -1, 1, -1, \dots)$. Cette suite n'a pas de limite, et en particulier, elle ne tend pas vers 0. Donc, la série $\sum (-1)^n$ diverge.

**Exemple 3 : Une série convergente vérifiant la condition**

Reprenons la série géométrique $\sum_{n=0}^{\infty} \left(\frac{1}{3}\right)^n$. Nous savons qu'elle converge.

Son terme général est $u_n = (1/3)^n$.

$$ \lim_{n \to \infty} u_n = \lim_{n \to \infty} \left(\frac{1}{3}\right)^n = 0. $$

La condition nécessaire de convergence est bien satisfaite, ce qui est cohérent avec le fait que la série converge.

### Contre-exemples

**Contre-exemple 1 : La série harmonique**

La série $\sum_{n=1}^{\infty} \frac{1}{n}$ a un terme général $u_n = \frac{1}{n}$ qui tend vers 0.

$$ \lim_{n \to \infty} \frac{1}{n} = 0. $$

Pourtant, la série diverge. Cela montre que la réciproque de la proposition est fausse. Avoir $\lim u_n = 0$ ne suffit pas pour conclure à la convergence.

**Contre-exemple 2 : La série de Riemann $\sum \frac{1}{\sqrt{n}}$**

La série $\sum_{n=1}^{\infty} \frac{1}{\sqrt{n}}$ a un terme général $u_n = \frac{1}{\sqrt{n}}$ qui tend vers 0.

$$ \lim_{n \to \infty} \frac{1}{\sqrt{n}} = 0. $$

Cependant, cette série diverge également (c'est une série de Riemann $\sum 1/n^p$ avec $p=1/2 \le 1$).

### Concepts Connexes

-   **Convergence d'une série** : Cette condition est une conséquence directe de la définition de la convergence.
-   **Séries de Riemann** : L'étude des séries de la forme $\sum 1/n^p$ fournit une famille clé d'exemples et de contre-exemples pour cette condition.

---

## Concept 3: Convergence Absolue et Semi-Convergence

### Prérequis

-   Concept de série numérique et de convergence (Concept 1).
-   Séries à termes positifs (la suite des sommes partielles est croissante).
-   Inégalité triangulaire : $|a+b| \le |a| + |b|$.

### Définition

1.  Une série $\sum u_n$ est dite **absolument convergente** si la série des valeurs absolues (ou des modules dans $\mathbb{C}$) de ses termes, $\sum |u_n|$, est convergente.

2.  Une série est dite **semi-convergente** si elle est convergente, mais pas absolument convergente.

Le lien fondamental entre ces notions est le théorème suivant :

**Toute série absolument convergente est convergente.**

$$ \sum |u_n| \text{ converge } \implies \sum u_n \text{ converge. } $$

De plus, la somme d'une série absolument convergente vérifie l'inégalité triangulaire généralisée :

$$ \left| \sum_{n=0}^{\infty} u_n \right| \le \sum_{n=0}^{\infty} |u_n| $$

### Propriétés Clés

-   **Utilité de la convergence absolue** : Pour étudier la convergence d'une série $\sum u_n$ dont les termes changent de signe, on peut étudier la série à termes positifs $\sum |u_n|$. Si cette dernière converge, alors on est assuré que la série initiale $\sum u_n$ converge aussi. Les séries à termes positifs sont plus faciles à étudier car leur suite de sommes partielles est croissante.
-   **Condition pour les séries à termes positifs** : Pour une série $\sum u_n$ où $u_n \ge 0$ pour tout $n$, la convergence et la convergence absolue sont équivalentes, puisque $|u_n| = u_n$.
-   **Stabilité par opérations** : L'ensemble des séries absolument convergentes est stable par addition et multiplication par un scalaire. Le produit de Cauchy de deux séries absolument convergentes est absolument convergent.
-   **Commutativité** : Un avantage majeur de la convergence absolue est que l'on peut changer l'ordre des termes d'une série absolument convergente sans changer sa somme. Ce n'est pas le cas pour les séries semi-convergentes (Théorème de réarrangement de Riemann).

### Exemples

**Exemple 1 : Une série absolument convergente**

Considérons la série $\sum_{n=1}^{\infty} \frac{(-1)^n}{n^2}$.

Pour tester la convergence absolue, on étudie la série des valeurs absolues :

$$ \sum_{n=1}^{\infty} \left| \frac{(-1)^n}{n^2} \right| = \sum_{n=1}^{\infty} \frac{1}{n^2} $$

C'est une série de Riemann avec $p=2 > 1$, donc elle converge.

Puisque la série des valeurs absolues converge, la série initiale $\sum \frac{(-1)^n}{n^2}$ est absolument convergente, et donc elle est aussi convergente.

**Exemple 2 : Une série géométrique alternée**

Soit la série $\sum_{n=0}^{\infty} \left(-\frac{1}{2}\right)^n$.

La série des valeurs absolues est :

$$ \sum_{n=0}^{\infty} \left| \left(-\frac{1}{2}\right)^n \right| = \sum_{n=0}^{\infty} \left(\frac{1}{2}\right)^n $$

C'est une série géométrique de raison $r=1/2$. Comme $|r|<1$, elle converge.

La série initiale est donc absolument convergente.

**Exemple 3 : Une série semi-convergente (la série harmonique alternée)**

Considérons la série $\sum_{n=1}^{\infty} \frac{(-1)^{n+1}}{n} = 1 - \frac{1}{2} + \frac{1}{3} - \frac{1}{4} + \dots$.

1.  **Convergence simple** : On peut montrer (avec le critère des séries alternées) que cette série converge (vers $\ln 2$).
2.  **Convergence absolue** : La série des valeurs absolues est $\sum_{n=1}^{\infty} \left| \frac{(-1)^{n+1}}{n} \right| = \sum_{n=1}^{\infty} \frac{1}{n}$.

    C'est la série harmonique, qui est divergente.

Puisque la série converge mais pas absolument, elle est **semi-convergente**.

### Contre-exemples

**Contre-exemple 1 : La réciproque est fausse**

La convergence n'implique pas la convergence absolue. L'exemple 3 ci-dessus ($\sum \frac{(-1)^{n+1}}{n}$) est le contre-exemple parfait. La série converge, mais la série des valeurs absolues diverge.

**Contre-exemple 2 : Une série divergente dont la série des valeurs absolues diverge aussi**

Soit la série $\sum_{n=1}^{\infty} \frac{(-1)^n n}{n+1}$.

La série des valeurs absolues est $\sum \frac{n}{n+1}$. Le terme général $\frac{n}{n+1}$ tend vers 1 (non 0), donc cette série diverge.

La série initiale $\sum \frac{(-1)^n n}{n+1}$ diverge aussi, car son terme général $u_n = (-1)^n \frac{n}{n+1}$ ne tend pas vers 0. Ici, ni la série, ni la série des valeurs absolues ne converge. Il ne faut pas conclure qu'une série qui n'est pas absolument convergente est forcément semi-convergente ; elle peut tout simplement être divergente.

### Concepts Connexes

-   **Séries à termes positifs** : L'étude de la convergence absolue se ramène à l'étude d'une série à termes positifs, pour laquelle on dispose de nombreux outils (tests de comparaison, de d'Alembert, de Cauchy).
-   **Critère des séries alternées** : Un outil puissant pour prouver la convergence simple de nombreuses séries semi-convergentes.
-   **Produit de Cauchy de séries** : La convergence absolue est une hypothèse cruciale pour que le produit de Cauchy de deux séries converge vers le produit des sommes.

---

## Concept 4: Critère de Cauchy pour les Séries

### Prérequis

-   Concept de série numérique et de sommes partielles (Concept 1).
-   Suites de Cauchy : une suite $(s_n)$ est de Cauchy si pour tout $\varepsilon > 0$, il existe un rang $N$ tel que pour tous $p, q > N$, on a $|s_q - s_p| < \varepsilon$.
-   Complétude de $\mathbb{R}$ et $\mathbb{C}$ : Dans $\mathbb{R}$ ou $\mathbb{C}$, une suite converge si et seulement si elle est de Cauchy.

### Définition

Le critère de Cauchy pour les séries est une reformulation du critère de Cauchy pour les suites, appliqué à la suite des sommes partielles $(s_n)$.

Une série numérique $\sum u_n$ est convergente si et seulement si :

$$ \forall \varepsilon > 0, \exists N \in \mathbb{N} \text{ tel que } \forall q \ge p > N, \text{ on a } \left| \sum_{k=p}^{q} u_k \right| < \varepsilon. $$

**Explication intuitive :**

Ce critère signifie qu'une série converge si et seulement si les "queues" de la série peuvent être rendues arbitrairement petites. La somme de n'importe quel bloc de termes consécutifs, $\sum_{k=p}^{q} u_k = u_p + u_{p+1} + \dots + u_q$, doit devenir négligeable à mesure que l'on avance dans la série (c'est-à-dire pour $p$ et $q$ grands).

### Propriétés Clés

-   **Condition Nécessaire et Suffisante** : C'est un critère très puissant car il donne une condition équivalente à la convergence. Il ne nécessite pas de connaître la valeur de la somme de la série.
-   **Fondement théorique** : C'est un outil théorique fondamental pour démontrer d'autres théorèmes (par exemple, que la convergence absolue implique la convergence, ou la condition nécessaire de convergence).
-   **Moins pratique pour le calcul** : En pratique, il est souvent difficile de vérifier directement cette condition pour une série donnée. On lui préfère des tests plus opérationnels (d'Alembert, Cauchy, etc.).

### Exemples

**Exemple 1 : Preuve que $\lim u_n = 0$ si $\sum u_n$ converge**

Le critère de Cauchy permet de prouver la condition nécessaire de convergence. Si $\sum u_n$ converge, alors le critère de Cauchy s'applique.

$$ \forall \varepsilon > 0, \exists N \in \mathbb{N} \text{ tel que } \forall q \ge p > N, \left| \sum_{k=p}^{q} u_k \right| < \varepsilon. $$

Choisissons $p = q = n$ pour un $n > N$. L'inégalité devient :

$$ |u_n| = \left| \sum_{k=n}^{n} u_k \right| < \varepsilon. $$

Ceci est exactement la définition de $\lim_{n \to \infty} u_n = 0$.

**Exemple 2 : Montrer que la série harmonique $\sum 1/n$ diverge**

Nous allons montrer que la série harmonique ne satisfait pas le critère de Cauchy. Il faut trouver un $\varepsilon > 0$ tel que pour tout $N$, on peut trouver $q \ge p > N$ avec $|\sum_{k=p}^{q} 1/k| \ge \varepsilon$.

Prenons $\varepsilon = 1/2$. Pour n'importe quel $N \in \mathbb{N}$, choisissons $p = N+1$ et $q = 2p = 2(N+1)$. On a bien $q \ge p > N$.

Regardons la somme :

$$ \sum_{k=p}^{q} \frac{1}{k} = \sum_{k=N+1}^{2(N+1)} \frac{1}{k} = \frac{1}{N+1} + \frac{1}{N+2} + \dots + \frac{1}{2(N+1)} $$

Chacun des termes de cette somme est supérieur ou égal au dernier terme, $\frac{1}{2(N+1)}$. Il y a $q - p + 1 = (2N+2) - (N+1) + 1 = N+2$ termes. Une minoration plus simple est de dire qu'il y a $(2p-p)=p$ termes, chacun supérieur à $1/q = 1/2p$.

$$ \sum_{k=p}^{2p-1} \frac{1}{k} \ge \sum_{k=p}^{2p-1} \frac{1}{2p-1} = \frac{p}{2p-1} > \frac{p}{2p} = \frac{1}{2}. $$

Une autre minoration classique:

$$ \sum_{k=p}^{q} \frac{1}{k} = \frac{1}{p} + \dots + \frac{1}{2p} > \underbrace{\frac{1}{2p} + \dots + \frac{1}{2p}}_{p+1 \text{ termes}} = \frac{p+1}{2p} > \frac{p}{2p} = \frac{1}{2} $$

Donc, pour $\varepsilon = 1/2$, nous pouvons toujours trouver des tranches de la série dont la somme dépasse $\varepsilon$. Le critère de Cauchy n'est pas vérifié, donc la série diverge.

**Exemple 3 : Une série convergente**

Pour la série $\sum 1/k^2$, le critère de Cauchy est vérifié (même si c'est plus technique à montrer directement). La preuve que la convergence absolue implique la convergence utilise le critère de Cauchy et l'inégalité triangulaire. Si $\sum |u_k|$ converge, elle est de Cauchy. Donc $\forall \varepsilon > 0, \exists N, \forall q \ge p > N$, $\sum_{k=p}^q |u_k| < \varepsilon$. Or, par l'inégalité triangulaire, $|\sum_{k=p}^q u_k| \le \sum_{k=p}^q |u_k| < \varepsilon$. Donc $\sum u_k$ vérifie aussi le critère de Cauchy et converge.

### Contre-exemples

**Contre-exemple 1 : La série harmonique (déjà vu)**

$\sum 1/n$ est le contre-exemple standard d'une série dont le terme général tend vers 0 mais qui ne vérifie pas le critère de Cauchy.

**Contre-exemple 2 : La série $\sum 1/\sqrt{n}$**

De la même manière que pour la série harmonique, on peut montrer que $\sum 1/\sqrt{n}$ ne vérifie pas le critère de Cauchy. Prenons $p=N+1$ et $q=2p$.

$$ \sum_{k=p}^{2p} \frac{1}{\sqrt{k}} \ge \sum_{k=p}^{2p} \frac{1}{\sqrt{2p}} = \frac{p+1}{\sqrt{2p}} = \frac{p+1}{\sqrt{2}\sqrt{p}} $$

Cette quantité tend vers $+\infty$ quand $p \to \infty$, donc elle ne peut être rendue arbitrairement petite. La série diverge.

### Concepts Connexes

-   **Suites de Cauchy** : Le critère pour les séries est une application directe de ce concept fondamental de l'analyse.
-   **Complétude de $\mathbb{R}$ et $\mathbb{C}$** : Le critère de Cauchy n'est valable que parce que les corps de nombres sur lesquels nous travaillons ($\mathbb{R}$ et $\mathbb{C}$) sont complets. Dans un espace non complet comme $\mathbb{Q}$, une suite de Cauchy peut ne pas converger.

# Séries Numériques (A)

---

## Concept 1: Série Numérique et Convergence

### Prérequis

-   Notion de suite numérique et sa convergence
-   Limite d'une suite
-   Opérations sur les limites de suites (somme, produit par un scalaire)

### Définition

Une **série numérique** est formellement un couple de suites, noté $(\{(u_n)_{n \in \mathbb{N}}, (s_n)_{n \in \mathbb{N}}\})$, où les termes sont liés par la relation :

$$ \forall n \in \mathbb{N}, \quad s_n = \sum_{k=0}^{n} u_k = u_0 + u_1 + \dots + u_n $$

-   La suite $(u_n)_{n \in \mathbb{N}}$ est appelée la suite du **terme général** de la série.
-   La suite $(s_n)_{n \in \mathbb{N}}$ est appelée la suite des **sommes partielles** de la série.

On dit que la série de terme général $u_n$ (notée $\sum u_n$) **converge** si la suite de ses sommes partielles $(s_n)$ converge vers une limite finie $s \in \mathbb{K}$ (où $\mathbb{K}$ est $\mathbb{R}$ ou $\mathbb{C}$). Cette limite $s$ est appelée la **somme de la série**. On note alors :

$$ s = \sum_{k=0}^{\infty} u_k = \lim_{n \to \infty} s_n $$

Si la suite $(s_n)$ ne converge pas (soit elle diverge vers $\pm\infty$, soit elle n'a pas de limite), on dit que la série **diverge**.

Lorsque la série converge vers une somme $s$, on définit le **reste d'ordre n** comme la différence $r_n = s - s_n$.

### Propriétés Clés

-   **Nature d'une série** : La "nature" d'une série est le fait qu'elle soit convergente ou divergente. Modifier un nombre fini de termes d'une série ne change pas sa nature, mais cela change la valeur de sa somme si elle converge.
-   **Linéarité** : Soient $\sum u_n$ et $\sum v_n$ deux séries convergentes de sommes respectives $S_u$ et $S_v$, et $\lambda \in \mathbb{K}$ un scalaire.
    -   La série somme $\sum (u_n + v_n)$ est convergente et sa somme est $S_u + S_v$.
    -   La série produit par un scalaire $\sum (\lambda u_n)$ est convergente et sa somme est $\lambda S_u$.
-   **Reste d'une série convergente** : Pour une série convergente, le reste d'ordre $n$, $r_n = \sum_{k=n+1}^{\infty} u_k$, tend toujours vers 0 lorsque $n \to \infty$. C'est une conséquence directe de la définition $r_n = s - s_n$ et $\lim_{n \to \infty} s_n = s$.

### Exemples

**Exemple 1 : Une série télescopique**

Considérons la série de terme général $u_n = \frac{1}{n(n+1)}$ pour $n \ge 1$.

On peut décomposer le terme général en éléments simples : $u_n = \frac{1}{n} - \frac{1}{n+1}$.

Calculons la somme partielle d'ordre $N$ :

$$ s_N = \sum_{n=1}^{N} u_n = \sum_{n=1}^{N} \left(\frac{1}{n} - \frac{1}{n+1}\right) $$

$$ s_N = \left(1 - \frac{1}{2}\right) + \left(\frac{1}{2} - \frac{1}{3}\right) + \dots + \left(\frac{1}{N} - \frac{1}{N+1}\right) $$

Les termes intermédiaires s'annulent deux à deux. Il reste :

$$ s_N = 1 - \frac{1}{N+1} $$

La limite de la suite des sommes partielles est $\lim_{N \to \infty} s_N = \lim_{N \to \infty} \left(1 - \frac{1}{N+1}\right) = 1$.

La série converge et sa somme est 1.

**Exemple 2 : La série harmonique**

Considérons la série de terme général $u_n = \frac{1}{n}$ pour $n \ge 1$.

On peut montrer que cette série diverge. Considérons la différence entre deux sommes partielles $s_{2n}$ et $s_n$ :

$$ s_{2n} - s_n = \sum_{k=n+1}^{2n} \frac{1}{k} = \frac{1}{n+1} + \frac{1}{n+2} + \dots + \frac{1}{2n} $$

Chacun des $n$ termes de cette somme est supérieur ou égal au dernier terme, $\frac{1}{2n}$. Donc :

$$ s_{2n} - s_n \ge n \times \frac{1}{2n} = \frac{1}{2} $$

Si la suite $(s_n)$ convergeait vers une limite $s$, la différence $s_{2n} - s_n$ devrait tendre vers $s - s = 0$. Comme cette différence est toujours supérieure à $1/2$, la suite $(s_n)$ ne peut pas converger. La série harmonique diverge.

**Exemple 3 : Une série géométrique**

Considérons la série de terme général $u_n = (\frac{1}{2})^n$ pour $n \ge 0$.

La somme partielle d'ordre $n$ est la somme des termes d'une suite géométrique :

$$ s_n = \sum_{k=0}^{n} \left(\frac{1}{2}\right)^k = \frac{1 - (1/2)^{n+1}}{1 - 1/2} = 2 \left(1 - \left(\frac{1}{2}\right)^{n+1}\right) $$

Quand $n \to \infty$, le terme $(1/2)^{n+1}$ tend vers 0. Donc :

$$ \lim_{n \to \infty} s_n = 2(1 - 0) = 2 $$

La série converge et sa somme est 2.

### Contre-exemples

**Contre-exemple 1 : Une série dont le terme général ne tend pas vers 0**

Soit la série $\sum_{n=1}^{\infty} \frac{n}{n+1}$. Le terme général est $u_n = \frac{n}{n+1}$, qui tend vers 1 lorsque $n \to \infty$. La somme partielle $s_n = u_1 + \dots + u_n$ est une somme de termes qui s'approchent de 1. Clairement, $s_n \to +\infty$. La série diverge.

**Contre-exemple 2 : Une série aux sommes partielles oscillantes**

Soit la série de terme général $u_n = (-1)^n$ pour $n \ge 0$.

La suite des sommes partielles est :

-   $s_0 = u_0 = 1$
-   $s_1 = u_0 + u_1 = 1 - 1 = 0$
-   $s_2 = s_1 + u_2 = 0 + 1 = 1$
-   $s_3 = s_2 + u_3 = 1 - 1 = 0$

La suite $(s_n)$ est $(1, 0, 1, 0, \dots)$. Cette suite n'a pas de limite. La série diverge.

### Concepts Liés

-   **Suites numériques** : Le concept de série est une extension de celui de suite. L'étude de la convergence d'une série se ramène à l'étude de la convergence de la suite de ses sommes partielles.
-   **Condition Nécessaire de Convergence** : Une condition fondamentale qui découle de la définition.
-   **Intégrales impropres** : Il existe une analogie forte entre la convergence des séries et la convergence des intégrales impropres (critère de comparaison intégrale).

---

## Concept 2: Condition Nécessaire de Convergence

### Prérequis

-   Définition de la convergence d'une série
-   Limite d'une suite

### Définition

Si une série numérique $\sum u_n$ converge, alors son terme général $u_n$ doit nécessairement tendre vers 0 lorsque $n$ tend vers l'infini.

$$ \text{Si } \sum_{n=0}^\infty u_n \text{ converge, alors } \lim_{n \to \infty} u_n = 0. $$

Cette condition est **nécessaire** mais **non suffisante**.

### Explication Détaillée

L'idée intuitive est simple : pour qu'une somme infinie de termes puisse avoir une valeur finie, il faut que les termes que l'on ajoute deviennent de plus en plus petits, au point de devenir négligeables.

La preuve mathématique est directe. Soit $(s_n)$ la suite des sommes partielles de la série $\sum u_n$. Par définition, $s_n = \sum_{k=0}^n u_k$ et $s_{n-1} = \sum_{k=0}^{n-1} u_k$ pour $n \ge 1$. On a donc la relation :

$$ u_n = s_n - s_{n-1} $$

Si la série converge, cela signifie que la suite $(s_n)$ converge vers une limite finie $s$. Dans ce cas, la suite $(s_{n-1})$ converge également vers la même limite $s$. Par opération sur les limites :

$$ \lim_{n \to \infty} u_n = \lim_{n \to \infty} (s_n - s_{n-1}) = \lim_{n \to \infty} s_n - \lim_{n \to \infty} s_{n-1} = s - s = 0 $$

Cela prouve que si la série converge, son terme général tend vers 0.

L'utilité principale de ce critère est sa **contraposée**, souvent appelée le **test de divergence grossière** :

$$ \text{Si } \lim_{n \to \infty} u_n \ne 0 \text{ (ou si la limite n'existe pas), alors la série } \sum u_n \text{ diverge.} $$

### Exemples

**Exemple 1 : Application du test de divergence**

Considérons la série $\sum_{n=1}^{\infty} \cos\left(\frac{1}{n}\right)$.

Le terme général est $u_n = \cos\left(\frac{1}{n}\right)$.

Lorsque $n \to \infty$, $\frac{1}{n} \to 0$, et donc $\lim_{n \to \infty} u_n = \cos(0) = 1$.

Puisque la limite du terme général n'est pas 0, la série diverge grossièrement.

**Exemple 2 : Une autre divergence grossière**

Soit la série $\sum_{n=0}^{\infty} \frac{3n^2 - 2n}{n^2 + 1}$.

Le terme général est $u_n = \frac{3n^2 - 2n}{n^2 + 1}$. Pour trouver sa limite, on factorise par les termes de plus haut degré :

$$ \lim_{n \to \infty} u_n = \lim_{n \to \infty} \frac{n^2(3 - 2/n)}{n^2(1 + 1/n^2)} = \lim_{n \to \infty} \frac{3 - 2/n}{1 + 1/n^2} = \frac{3}{1} = 3 $$

La limite est 3 (différente de 0), donc la série diverge.

**Exemple 3 : Une limite qui n'existe pas**

Soit la série $\sum_{n=0}^{\infty} (-1)^n \frac{n}{n+1}$.

Le terme général est $u_n = (-1)^n \frac{n}{n+1}$. La valeur absolue $|u_n| = \frac{n}{n+1}$ tend vers 1. La suite $(u_n)$ oscille entre des valeurs proches de 1 et -1, et n'admet donc pas de limite. En particulier, elle ne tend pas vers 0. La série diverge.

### Contre-exemples (montrant que la condition n'est pas suffisante)

**Contre-exemple 1 : La série harmonique**

La série $\sum_{n=1}^{\infty} \frac{1}{n}$ est l'exemple le plus célèbre.

Son terme général $u_n = \frac{1}{n}$ tend bien vers 0 : $\lim_{n \to \infty} \frac{1}{n} = 0$.

Cependant, comme nous l'avons vu précédemment, la série harmonique diverge (vers $+\infty$).

**Contre-exemple 2 : La série de terme général $1/\sqrt{n}$**

Considérons la série $\sum_{n=1}^{\infty} \frac{1}{\sqrt{n}}$.

Le terme général $u_n = \frac{1}{\sqrt{n}}$ tend vers 0.

Cependant, la série diverge. En effet, la somme partielle $s_n = \sum_{k=1}^n \frac{1}{\sqrt{k}}$ est plus grande que la somme partielle de la série harmonique car $\frac{1}{\sqrt{k}} \ge \frac{1}{k}$ pour tout $k \ge 1$. Puisque la série harmonique diverge vers $+\infty$, par comparaison, cette série diverge aussi.

### Concepts Liés

-   **Convergence d'une série** : La condition nécessaire est une première étape pour tester la convergence. Si elle n'est pas remplie, on conclut immédiatement à la divergence.
-   **Critères de convergence** : Si la condition est remplie, il faut utiliser des outils plus puissants (critères de comparaison, de d'Alembert, de Cauchy, etc.) pour déterminer la nature de la série.

---

## Concept 3: Convergence Absolue et Semi-Convergence

### Prérequis

-   Séries numériques et convergence
-   Séries à termes positifs
-   Inégalité triangulaire

### Définition

On dit qu'une série de terme général $u_n$ **converge absolument** si la série des valeurs absolues (ou des modules dans $\mathbb{C}$) de son terme général, $\sum_{n=0}^{\infty} |u_n|$, est convergente.

Une propriété fondamentale relie la convergence absolue à la convergence simple :

**Théorème : Toute série absolument convergente est convergente.**

$$ \sum |u_n| \text{ converge } \implies \sum u_n \text{ converge.} $$

De plus, dans ce cas, on a l'inégalité triangulaire pour les séries : $|\sum_{n=0}^{\infty} u_n| \le \sum_{n=0}^{\infty} |u_n|$.

Une série qui est convergente mais non absolument convergente est dite **semi-convergente**.

### Explication Détaillée

L'étude des séries à termes positifs est plus simple que celle des séries à termes quelconques. La notion de convergence absolue permet de se ramener à ce cas plus simple. Si on peut montrer que la série $\sum |u_n|$ (qui est une série à termes positifs) converge, alors on est assuré que la série de départ $\sum u_n$ converge également.

La preuve de ce théorème repose sur le critère de Cauchy. Si $\sum |u_n|$ converge, elle satisfait le critère de Cauchy. Pour tout $\varepsilon > 0$, il existe un rang $N$ tel que pour $q \ge p > N$, on a $\sum_{k=p}^q |u_k| \le \varepsilon$.

Grâce à l'inégalité triangulaire, on a :

$$ \left| \sum_{k=p}^q u_k \right| \le \sum_{k=p}^q |u_k| \le \varepsilon $$

Ceci montre que la série $\sum u_n$ satisfait aussi le critère de Cauchy, et donc elle converge.

La réciproque est fausse : une série peut être convergente sans être absolument convergente. C'est le cas des séries semi-convergentes. Elles convergent, mais de manière plus "fragile" car la convergence est due à des compensations entre les termes positifs et négatifs.

### Exemples

**Exemple 1 : Une série absolument convergente**

Considérons la série $\sum_{n=1}^{\infty} \frac{(-1)^n}{n^2}$.

Pour étudier la convergence absolue, on regarde la série des valeurs absolues :

$$ \sum_{n=1}^{\infty} \left| \frac{(-1)^n}{n^2} \right| = \sum_{n=1}^{\infty} \frac{1}{n^2} $$

C'est une série de Riemann (ou série p) avec $p=2 > 1$, qui est un exemple de série à termes positifs convergente.

Puisque la série des valeurs absolues converge, la série $\sum_{n=1}^{\infty} \frac{(-1)^n}{n^2}$ est absolument convergente, et donc elle converge.

**Exemple 2 : Une série géométrique alternée**

Soit la série $\sum_{n=0}^{\infty} \left(-\frac{1}{3}\right)^n$.

La série des valeurs absolues est $\sum_{n=0}^{\infty} |\left(-\frac{1}{3}\right)^n| = \sum_{n=0}^{\infty} \left(\frac{1}{3}\right)^n$.

C'est une série géométrique de raison $r = 1/3$. Comme $|r| < 1$, elle converge.

Donc, la série de départ est absolument convergente.

**Exemple 3 : Une série avec des termes complexes**

Considérons la série $\sum_{n=1}^{\infty} \frac{e^{in\theta}}{n^2}$ avec $\theta \in \mathbb{R}$.

Le module du terme général est $|u_n| = \left|\frac{e^{in\theta}}{n^2}\right| = \frac{|e^{in\theta}|}{|n^2|} = \frac{1}{n^2}$.

La série des modules est $\sum_{n=1}^{\infty} \frac{1}{n^2}$, qui converge.

Donc, la série $\sum_{n=1}^{\infty} \frac{e^{in\theta}}{n^2}$ est absolument convergente pour tout $\theta \in \mathbb{R}$.

### Contre-exemples (illustrant la semi-convergence)

**Contre-exemple 1 : La série harmonique alternée**

La série $\sum_{n=1}^{\infty} \frac{(-1)^{n+1}}{n} = 1 - \frac{1}{2} + \frac{1}{3} - \frac{1}{4} + \dots$ est l'exemple canonique de série semi-convergente.

-   Elle **converge**. (On peut le montrer avec le critère des séries alternées, sa somme est $\ln(2)$).
-   Elle n'est **pas absolument convergente**, car la série des valeurs absolues est $\sum_{n=1}^{\infty} \frac{1}{n}$, la série harmonique, qui diverge.

**Contre-exemple 2 : Une autre série semi-convergente**

La série $\sum_{n=2}^{\infty} \frac{(-1)^n}{\ln(n)}$ est semi-convergente.

-   Elle converge (critère des séries alternées).
-   Elle ne converge pas absolument car $\sum_{n=2}^{\infty} \frac{1}{\ln(n)}$ diverge. En effet, pour $n \ge 2$, on a $\ln(n) < n$, donc $\frac{1}{\ln(n)} > \frac{1}{n}$. Par comparaison avec la série harmonique, $\sum \frac{1}{\ln(n)}$ diverge.

### Concepts Liés

-   **Critère de Cauchy pour les séries** : Utilisé pour prouver que la convergence absolue implique la convergence.
-   **Séries à termes positifs** : L'étude de la convergence absolue se ramène à l'étude d'une série à termes positifs.
-   **Critère des séries alternées** : Un outil majeur pour prouver la convergence de nombreuses séries semi-convergentes.
-   **Produit de Cauchy** : Le théorème principal sur le produit de séries nécessite la convergence absolue.

---

## Concept 4: Critère de Cauchy pour les Séries

### Prérequis

-   Critère de Cauchy pour les suites
-   Notion de série et de sommes partielles

### Définition

Le critère de Cauchy pour les séries est une condition nécessaire et suffisante pour la convergence d'une série numérique dans $\mathbb{R}$ ou $\mathbb{C}$.

Une série de terme général $u_n$ converge si et seulement si :

Pour tout réel $\varepsilon > 0$, il existe un entier naturel $N$ tel que, pour tous entiers $q$ et $p$ vérifiant $q \ge p > N$, on ait :

$$ \left| \sum_{k=p}^{q} u_k \right| \le \varepsilon $$

### Explication Détaillée

Ce critère est la traduction directe du critère de Cauchy pour les suites, appliqué à la suite des sommes partielles $(s_n)$.

Rappelons que la suite $(s_n)$ converge si et seulement si elle est une suite de Cauchy, c'est-à-dire :

$$ \forall \varepsilon > 0, \exists N \in \mathbb{N} \text{ tel que } \forall m, n > N, |s_m - s_n| \le \varepsilon. $$

En posant $m = q$ et $n = p-1$ avec $q \ge p > N$, on a $m > N$ et $n \ge N$. La condition devient :

$$ |s_q - s_{p-1}| = \left| \sum_{k=0}^{q} u_k - \sum_{k=0}^{p-1} u_k \right| = \left| \sum_{k=p}^{q} u_k \right| \le \varepsilon $$

Ceci établit l'équivalence.

L'interprétation de ce critère est que pour une série convergente, la somme de n'importe quel "bloc" de termes consécutifs, $\sum_{k=p}^q u_k$, peut être rendue aussi petite que l'on veut, à condition de prendre ces termes suffisamment loin dans la série (i.e., $p$ et $q$ assez grands).

Bien que ce critère soit d'une grande importance théorique (il est utilisé pour démontrer de nombreux autres théorèmes), il est souvent difficile à appliquer en pratique pour déterminer la nature d'une série spécifique.

### Exemples

**Exemple 1 : Preuve de la divergence de la série harmonique**

Nous avons déjà montré que pour la série harmonique $\sum \frac{1}{n}$, on a $s_{2n} - s_n = \sum_{k=n+1}^{2n} \frac{1}{k} \ge \frac{1}{2}$.

Prenons $\varepsilon = 1/4$. Pour n'importe quel $N$, on peut choisir $p=N+1$ et $q=2(N+1)$. Alors $q \ge p > N$ et on a :

$$ \left| \sum_{k=p}^{q} \frac{1}{k} \right| = \sum_{k=N+1}^{2(N+1)} \frac{1}{k} \ge \frac{1}{2} > \varepsilon $$

La condition de Cauchy n'est pas satisfaite, donc la série diverge.

**Exemple 2 : Une série convergente**

Montrons que $\sum \frac{1}{k^2}$ vérifie le critère de Cauchy (ce qui prouve sa convergence).

Pour $q \ge p > N$, on a :

$$ \left| \sum_{k=p}^{q} \frac{1}{k^2} \right| = \sum_{k=p}^{q} \frac{1}{k^2} $$

On utilise l'astuce de comparaison : $\frac{1}{k^2} < \frac{1}{k(k-1)} = \frac{1}{k-1} - \frac{1}{k}$ pour $k \ge 2$.

$$ \sum_{k=p}^{q} \frac{1}{k^2} < \sum_{k=p}^{q} \left(\frac{1}{k-1} - \frac{1}{k}\right) = \left(\frac{1}{p-1} - \frac{1}{p}\right) + \dots + \left(\frac{1}{q-1} - \frac{1}{q}\right) = \frac{1}{p-1} - \frac{1}{q} < \frac{1}{p-1} $$

Comme $p > N$, on a $p-1 \ge N$. Donc $\frac{1}{p-1} \le \frac{1}{N}$.

Étant donné $\varepsilon > 0$, si nous choisissons $N$ tel que $\frac{1}{N} < \varepsilon$ (i.e. $N > 1/\varepsilon$), alors pour tout $q \ge p > N$, on aura $\left| \sum_{k=p}^{q} \frac{1}{k^2} \right| < \frac{1}{p-1} < \frac{1}{N} < \varepsilon$.

Le critère de Cauchy est bien vérifié.

**Exemple 3 : Condition nécessaire de convergence**

Le critère de Cauchy permet de prouver facilement la condition nécessaire de convergence. Si la série $\sum u_n$ converge, elle est de Cauchy. En appliquant le critère avec $q=p=n > N$, on obtient :

$$ |u_n| = \left| \sum_{k=n}^{n} u_k \right| \le \varepsilon $$

Ceci est vrai pour tout $n > N$, ce qui est la définition de $\lim_{n \to \infty} u_n = 0$.

### Contre-exemples

Il n'y a pas de "contre-exemple" au critère de Cauchy puisqu'il s'agit d'une condition nécessaire et suffisante. On peut seulement donner des exemples de séries qui ne le satisfont pas (et donc divergent) ou qui le satisfont (et donc convergent). Les exemples ci-dessus illustrent ces deux cas.

### Concepts Liés

-   **Suites de Cauchy** : Le critère pour les séries est une application directe du critère pour les suites.
-   **Complétude de $\mathbb{R}$ et $\mathbb{C}$** : Le critère de Cauchy est valide parce que les espaces $\mathbb{R}$ et $\mathbb{C}$ sont complets (toute suite de Cauchy y est convergente).
-   **Convergence Absolue** : La preuve que la convergence absolue implique la convergence simple est une application typique et importante du critère de Cauchy.

---

## Concept 5: Séries à Termes Positifs et Critère de Comparaison

### Prérequis

-   Notion de série numérique et de convergence
-   Suites monotones (croissantes) et leur convergence

### Définition

Une série $\sum u_n$ est dite **à termes positifs** si $u_n \ge 0$ pour tout $n \in \mathbb{N}$ (ou au moins à partir d'un certain rang).

**Propriété fondamentale :** Pour une série $\sum u_n$ à termes positifs, la suite de ses sommes partielles $(s_n)$ est croissante. Par conséquent, la série converge si et seulement si la suite $(s_n)$ est majorée. Si $(s_n)$ n'est pas majorée, la série diverge vers $+\infty$.

**Théorème de Comparaison :**

Soient $\sum u_n$ et $\sum v_n$ deux séries à termes positifs telles que $0 \le u_n \le v_n$ pour tout $n$ (ou à partir d'un certain rang).

1.  Si la série "majorante" $\sum v_n$ converge, alors la série "minorée" $\sum u_n$ converge également.
2.  Si la série "minorée" $\sum u_n$ diverge, alors la série "majorante" $\sum v_n$ diverge également.

### Explication Détaillée

L'étude des séries à termes positifs est fondamentale car leur comportement est plus simple : la somme partielle ne fait qu'augmenter. Elle a donc soit une limite finie, soit elle tend vers l'infini. Il n'y a pas d'oscillations possibles.

Le théorème de comparaison est l'un des outils les plus puissants pour ce type de séries. L'idée est intuitive :

1.  Si la somme des termes $v_n$ est finie, et que les termes $u_n$ sont toujours plus petits, alors la somme des $u_n$ doit aussi être finie.
2.  Si la somme des termes $u_n$ est infinie, et que les termes $v_n$ sont toujours plus grands, alors la somme des $v_n$ doit être infinie aussi.

La preuve formelle repose sur la propriété fondamentale. Si $0 \le u_n \le v_n$, alors les sommes partielles $s_n = \sum_{k=0}^n u_k$ et $\sigma_n = \sum_{k=0}^n v_k$ vérifient $0 \le s_n \le \sigma_n$.

-   Si $\sum v_n$ converge, alors $(\sigma_n)$ est convergente, donc majorée par une constante $M$. Ainsi, $(s_n)$ est aussi majorée par $M$. Comme $(s_n)$ est croissante et majorée, elle converge. Donc $\sum u_n$ converge.
-   Le point 2 est la contraposée logique du point 1.

### Exemples

**Exemple 1 : Convergence par majoration**

Étudier la nature de la série $\sum_{n=1}^{\infty} \frac{1}{n^2 + 1}$.

Pour tout $n \ge 1$, on a $n^2 + 1 > n^2$, donc $0 < \frac{1}{n^2+1} < \frac{1}{n^2}$.

On pose $u_n = \frac{1}{n^2+1}$ et $v_n = \frac{1}{n^2}$.

La série $\sum v_n = \sum \frac{1}{n^2}$ est une série de Riemann convergente (avec $p=2>1$).

Puisque $0 \le u_n \le v_n$ et que la série majorante $\sum v_n$ converge, le critère de comparaison nous permet de conclure que la série $\sum u_n$ converge.

**Exemple 2 : Divergence par minoration**

Étudier la nature de la série $\sum_{n=2}^{\infty} \frac{1}{\ln(n)}$.

Pour tout $n \ge 1$, on sait que $\ln(n) < n$. Donc, pour $n \ge 2$, on a $0 < \frac{1}{n} < \frac{1}{\ln(n)}$.

On pose $u_n = \frac{1}{n}$ et $v_n = \frac{1}{\ln(n)}$.

La série $\sum u_n = \sum \frac{1}{n}$ est la série harmonique, qui diverge.

Puisque $v_n \ge u_n \ge 0$ et que la série minorante $\sum u_n$ diverge, on conclut que la série $\sum v_n$ diverge.

**Exemple 3 : Utilisation d'équivalents**

Le critère de comparaison se généralise aux équivalents. Si $u_n \sim v_n$ quand $n \to \infty$ et que les séries sont à termes positifs, alors $\sum u_n$ et $\sum v_n$ ont la même nature.

Étudier la série $\sum_{n=1}^{\infty} \frac{2n+1}{n^3-4n+5}$.

Pour $n$ grand, le terme général $u_n = \frac{2n+1}{n^3-4n+5}$ est positif.

On cherche un équivalent simple : $u_n \sim \frac{2n}{n^3} = \frac{2}{n^2}$.

La série $\sum \frac{2}{n^2} = 2 \sum \frac{1}{n^2}$ converge.

Par le critère de comparaison par équivalence, la série de départ converge.

### Contre-exemples

**Contre-exemple 1 : Le test ne s'applique pas aux séries non positives**

Considérons $u_n = \frac{(-1)^n}{\sqrt{n}}$ et $v_n = \frac{1}{n^{3/2}}$. L'inégalité $u_n \le v_n$ est vraie, et $\sum v_n$ converge. On ne peut rien en conclure sur $\sum u_n$ car $u_n$ n'est pas à termes positifs. (En l'occurrence, $\sum u_n$ converge, mais pas grâce à ce théorème).

**Contre-exemple 2 : Une majoration par une série divergente n'apporte pas d'information**

Soit $u_n = \frac{1}{n^2}$ et $v_n = \frac{1}{n}$. On a bien $0 \le u_n \le v_n$ pour $n \ge 1$.

La série $\sum v_n = \sum \frac{1}{n}$ diverge.

Le critère de comparaison dit: "Si $\sum v_n$ converge, alors $\sum u_n$ converge". Ici, l'hypothèse n'est pas vérifiée. On ne peut donc rien conclure sur $\sum u_n$ à partir de cette majoration. (Il faut trouver un majorant qui converge, comme dans l'Exemple 1).

### Concepts Liés

-   **Convergence absolue** : Pour étudier $\sum |u_n|$, on applique les critères pour les séries à termes positifs.
-   **Critères de Cauchy et de d'Alembert** : Ces critères sont des formes spécialisées de comparaison, où l'on compare la série à une série géométrique.
-   **Séries de Riemann $\sum \frac{1}{n^p}$** : Elles forment une famille de référence essentielle pour les tests de comparaison.

---

## Concept 6: Séries Géométriques

### Prérequis

-   Suites géométriques et leur limite
-   Définition de la convergence d'une série

### Définition

Une **série géométrique** est une série dont le terme général est celui d'une suite géométrique. Elle est de la forme :

$$ \sum_{n=0}^{\infty} ar^n = a + ar + ar^2 + ar^3 + \dots $$

où $a$ est le premier terme ($a \ne 0$) et $r$ est la raison.

### Propriétés Clés

La nature d'une série géométrique ne dépend que de la valeur de sa raison $r$.

-   **Convergence :** La série géométrique $\sum ar^n$ converge si et seulement si le module de sa raison est strictement inférieur à 1, c'est-à-dire **$|r| < 1$**.
-   **Somme :** Si la série converge (i.e., si $|r| < 1$), sa somme est donnée par la formule :

    $$ S = \sum_{n=0}^{\infty} ar^n = \frac{a}{1-r} $$

-   **Divergence :** Si $|r| \ge 1$, la série géométrique diverge.
    -   Si $r \ge 1$, le terme général $ar^n$ ne tend pas vers 0 (il tend vers $a$ ou $\pm\infty$), donc la série diverge grossièrement.
    -   Si $r \le -1$, le terme général $ar^n$ ne tend pas vers 0 (il oscille sans s'amortir), donc la série diverge grossièrement.

**Démonstration :**

La somme partielle d'ordre $n$ est, pour $r \ne 1$, $s_n = a \frac{1-r^{n+1}}{1-r}$.

-   Si $|r| < 1$, $\lim_{n \to \infty} r^{n+1} = 0$. Donc $\lim_{n \to \infty} s_n = a \frac{1-0}{1-r} = \frac{a}{1-r}$.
-   Si $|r| > 1$, $|r|^{n+1} \to \infty$, donc $(s_n)$ diverge.
-   Si $r=1$, $s_n = a(n+1)$, ce qui diverge vers $\pm\infty$.
-   Si $r=-1$, $s_n$ est $a$ si $n$ est pair et $0$ si $n$ est impair. La suite $(s_n)$ n'a pas de limite.

### Exemples

**Exemple 1 : Une série géométrique simple**

Considérons la série $\sum_{n=0}^{\infty} \left(\frac{2}{3}\right)^n$.

C'est une série géométrique avec $a=1$ et $r = 2/3$.

Puisque $|r| = 2/3 < 1$, la série converge.

Sa somme est $S = \frac{1}{1 - 2/3} = \frac{1}{1/3} = 3$.

**Exemple 2 : Une série alternée**

Considérons la série $\sum_{n=0}^{\infty} 5 \left(-\frac{1}{2}\right)^n$.

C'est une série géométrique avec $a=5$ et $r = -1/2$.

Puisque $|r| = |-1/2| = 1/2 < 1$, la série converge.

Sa somme est $S = \frac{5}{1 - (-1/2)} = \frac{5}{1 + 1/2} = \frac{5}{3/2} = \frac{10}{3}$.

**Exemple 3 : Une série commençant à un indice non nul**

Calculer la somme de $\sum_{n=2}^{\infty} \frac{1}{4^n}$.

C'est une série géométrique de raison $r=1/4$. Elle converge car $|r|<1$. Pour calculer la somme, on peut utiliser deux méthodes.

Méthode 1 : Ramener à une somme commençant à 0.

$$ \sum_{n=2}^{\infty} \left(\frac{1}{4}\right)^n = \left( \sum_{n=0}^{\infty} \left(\frac{1}{4}\right)^n \right) - \left(\frac{1}{4}\right)^0 - \left(\frac{1}{4}\right)^1 = \frac{1}{1-1/4} - 1 - \frac{1}{4} = \frac{4}{3} - 1 - \frac{1}{4} = \frac{1}{3} - \frac{1}{4} = \frac{1}{12} $$

Méthode 2 : Factoriser le premier terme.

$$ \sum_{n=2}^{\infty} \left(\frac{1}{4}\right)^n = \left(\frac{1}{4}\right)^2 + \left(\frac{1}{4}\right)^3 + \dots = \left(\frac{1}{4}\right)^2 \left( 1 + \frac{1}{4} + \left(\frac{1}{4}\right)^2 + \dots \right) = \frac{1}{16} \sum_{k=0}^{\infty} \left(\frac{1}{4}\right)^k $$

Le premier terme est $a' = 1/16$ et la raison est $r=1/4$. La somme est $S = \frac{1/16}{1 - 1/4} = \frac{1/16}{3/4} = \frac{1}{16} \cdot \frac{4}{3} = \frac{1}{12}$.

### Contre-exemples

**Contre-exemple 1 : Raison égale à 1**

La série $\sum_{n=0}^{\infty} 3(1)^n = 3+3+3+\dots$ a pour terme général $u_n=3$, qui ne tend pas vers 0. La série diverge grossièrement vers $+\infty$.

**Contre-exemple 2 : Raison supérieure à 1**

La série $\sum_{n=0}^{\infty} (\frac{3}{2})^n$ a une raison $r=3/2 > 1$. Son terme général tend vers $+\infty$. Elle diverge grossièrement.

### Concepts Liés

-   **Critère de d'Alembert et de Cauchy** : Ces critères consistent essentiellement à comparer une série à une série géométrique. La convergence est assurée si, asymptotiquement, le rapport de termes consécutifs ou la racine n-ième du terme général est borné par une quantité de module inférieur à 1.
-   **Séries entières** : Une série entière, $\sum a_n x^n$, peut être vue comme une série géométrique pour chaque valeur de $x$. Le rayon de convergence est déterminé par les valeurs de $x$ pour lesquelles la série se comporte "bien", de façon similaire à une série géométrique convergente.

---

## Concept 7: Critère de Cauchy (Règle de la Racine)

### Prérequis

-   Séries à termes positifs
-   Séries géométriques
-   Notion de limite supérieure (limsup)

### Définition

Soit $\sum u_n$ une série à termes positifs ($u_n \ge 0$). On considère la limite supérieure suivante :

$$ l = \limsup_{n \to \infty} \sqrt[n]{u_n} = \limsup_{n \to \infty} (u_n)^{1/n} $$

Le critère de Cauchy (ou règle de la racine) énonce que :

1.  Si $l < 1$, la série $\sum u_n$ converge.
2.  Si $l > 1$, la série $\sum u_n$ diverge.
3.  Si $l = 1$, le critère ne permet pas de conclure (on dit que c'est un cas douteux).

**Note :** Si la limite $\lim_{n \to \infty} \sqrt[n]{u_n}$ existe, alors elle est égale à la $\limsup$, et le critère s'applique directement avec cette limite.

### Explication Détaillée

L'idée du critère est de comparer le comportement asymptotique de la série $\sum u_n$ à celui d'une série géométrique. Si $l = \limsup \sqrt[n]{u_n}$, cela signifie que pour $n$ assez grand, $\sqrt[n]{u_n}$ est "la plupart du temps" proche de $l$. On peut donc s'attendre à ce que $u_n$ se comporte comme $l^n$. La série $\sum u_n$ devrait donc avoir la même nature que la série géométrique $\sum l^n$.

-   **Cas $l < 1$** : On choisit un réel $r$ tel que $l < r < 1$. Par définition de la limsup, à partir d'un certain rang $N$, on aura toujours $\sqrt[n]{u_n} < r$, soit $u_n < r^n$. La série $\sum u_n$ est donc majorée (à partir du rang $N$) par la série géométrique convergente $\sum r^n$. Par le théorème de comparaison, $\sum u_n$ converge.
-   **Cas $l > 1$** : Par définition de la limsup, il existe une infinité d'indices $n$ pour lesquels $\sqrt[n]{u_n} > 1$, et donc $u_n > 1$. Le terme général $u_n$ ne tend pas vers 0. La série diverge donc grossièrement.
-   **Cas $l = 1$** : Le comportement de $u_n$ est trop proche de $1^n=1$ pour conclure. La convergence dépend de la "vitesse" à laquelle $\sqrt[n]{u_n}$ s'approche de 1.

### Exemples

**Exemple 1 : Cas de convergence ($l < 1$)**

Étudier la série $\sum_{n=1}^{\infty} \left(\frac{3n+1}{4n+2}\right)^n$.

C'est une série à termes positifs. On applique le critère de Cauchy :

$$ \sqrt[n]{u_n} = \sqrt[n]{\left(\frac{3n+1}{4n+2}\right)^n} = \frac{3n+1}{4n+2} $$

On calcule la limite :

$$ l = \lim_{n \to \infty} \frac{3n+1}{4n+2} = \lim_{n \to \infty} \frac{n(3+1/n)}{n(4+2/n)} = \frac{3}{4} $$

Puisque $l = 3/4 < 1$, la série converge.

**Exemple 2 : Cas de divergence ($l > 1$)**

Étudier la série $\sum_{n=1}^{\infty} \left(1 + \frac{1}{n}\right)^{n^2}$.

C'est une série à termes positifs.

$$ \sqrt[n]{u_n} = \sqrt[n]{\left(1 + \frac{1}{n}\right)^{n^2}} = \left(\left(1 + \frac{1}{n}\right)^{n^2}\right)^{1/n} = \left(1 + \frac{1}{n}\right)^n $$

On calcule la limite :

$$ l = \lim_{n \to \infty} \left(1 + \frac{1}{n}\right)^n = e \quad \text{(limite de référence)} $$

Puisque $l = e \approx 2.718 > 1$, la série diverge.

**Exemple 3 : Utilisation de la limsup**

Étudier la série dont le terme général est $u_n = (2+(-1)^n)^{-n}$.

-   Si $n$ est pair, $u_n = (2+1)^{-n} = 3^{-n}$.
-   Si $n$ est impair, $u_n = (2-1)^{-n} = 1^{-n} = 1$.

Le terme général ne tend pas vers 0, la série diverge. Voyons ce que dit le critère de Cauchy :

$$ \sqrt[n]{u_n} = \sqrt[n]{(2+(-1)^n)^{-n}} = (2+(-1)^n)^{-1} $$

La suite $(\sqrt[n]{u_n})$ prend les valeurs $1/3, 1, 1/3, 1, \dots$. Elle n'a pas de limite.

Les valeurs d'adhérence sont $1/3$ et $1$. La plus grande est la limite supérieure.

$l = \limsup \sqrt[n]{u_n} = 1$. Le critère de Cauchy ne conclut pas (même si la série diverge grossièrement).

### Contre-exemples (pour le cas $l=1$)

Le critère de Cauchy ne permet pas de conclure si $l=1$.

**Contre-exemple 1 : Série divergente avec $l=1$**

Pour la série harmonique $\sum \frac{1}{n}$, on a $u_n = 1/n$.

$$ \sqrt[n]{u_n} = \sqrt[n]{1/n} = (n^{-1})^{1/n} = n^{-1/n} = e^{-\frac{\ln n}{n}} $$

Puisque $\lim_{n \to \infty} \frac{\ln n}{n} = 0$, on a $l = \lim_{n \to \infty} e^{-\frac{\ln n}{n}} = e^0 = 1$.

Ici $l=1$ et la série diverge.

**Contre-exemple 2 : Série convergente avec $l=1$**

Pour la série de Riemann $\sum \frac{1}{n^2}$, on a $u_n = 1/n^2$.

$$ \sqrt[n]{u_n} = \sqrt[n]{1/n^2} = (n^{-2})^{1/n} = n^{-2/n} = e^{-\frac{2\ln n}{n}} $$

De même, $\lim_{n \to \infty} \frac{2\ln n}{n} = 0$, donc $l = \lim_{n \to \infty} e^{-\frac{2\ln n}{n}} = e^0 = 1$.

Ici $l=1$ et la série converge.

### Concepts Liés

-   **Critère de d'Alembert** : Un autre critère de comparaison avec les séries géométriques. Le critère de Cauchy est plus "puissant" (si d'Alembert conclut, Cauchy aussi, mais l'inverse n'est pas vrai). Cependant, d'Alembert est souvent plus simple à calculer, surtout avec des factorielles.
-   **Séries entières** : La règle de Cauchy est l'outil principal pour déterminer le rayon de convergence d'une série entière.

---

## Concept 8: Critère de d'Alembert (Règle du Rapport)

### Prérequis

-   Séries à termes positifs
-   Séries géométriques
-   Notions de limite supérieure (limsup) et inférieure (liminf)

### Définition

Soit $\sum u_n$ une série à termes strictement positifs ($u_n > 0$). On s'intéresse au rapport de deux termes consécutifs $\frac{u_{n+1}}{u_n}$.

Le critère de d'Alembert (ou règle du rapport) énonce que :

1.  Si $\limsup_{n \to \infty} \frac{u_{n+1}}{u_n} < 1$, la série $\sum u_n$ converge.
2.  Si $\liminf_{n \to \infty} \frac{u_{n+1}}{u_n} > 1$, la série $\sum u_n$ diverge.
3.  Si $\liminf_{n \to \infty} \frac{u_{n+1}}{u_n} \le 1 \le \limsup_{n \to \infty} \frac{u_{n+1}}{u_n}$, le critère ne permet pas de conclure (cas douteux).

**Note :** Le cas le plus fréquent en pratique est celui où la limite $L = \lim_{n \to \infty} \frac{u_{n+1}}{u_n}$ existe. Le critère devient alors :

1.  Si $L < 1$, la série converge.
2.  Si $L > 1$, la série diverge.
3.  Si $L = 1$, le critère ne permet pas de conclure.

### Explication Détaillée

Comme le critère de Cauchy, celui de d'Alembert compare la série à une série géométrique. Si le rapport $\frac{u_{n+1}}{u_n}$ tend vers une limite $L$, cela signifie que pour $n$ grand, $u_{n+1} \approx L \cdot u_n$. La suite $(u_n)$ se comporte approximativement comme une suite géométrique de raison $L$.

-   **Cas $L < 1$** : On choisit un réel $r$ tel que $L < r < 1$. À partir d'un certain rang $N$, on aura $\frac{u_{n+1}}{u_n} < r$. On peut alors montrer par récurrence que $u_{n} < u_N \cdot r^{n-N}$ pour $n > N$. La série $\sum u_n$ est donc majorée (à un facteur constant près) par la série géométrique convergente $\sum r^n$. Par comparaison, $\sum u_n$ converge.
-   **Cas $L > 1$** : À partir d'un certain rang $N$, on aura $\frac{u_{n+1}}{u_n} > 1$, ce qui signifie que $u_{n+1} > u_n$. La suite $(u_n)$ est donc croissante (à partir de $N$) et comme ses termes sont positifs, elle ne peut pas tendre vers 0. La série diverge donc grossièrement.
-   **Cas $L = 1$** : Le critère n'est pas assez fin pour distinguer les cas. La convergence dépend de la manière dont le rapport s'approche de 1.

### Exemples

**Exemple 1 : Cas de convergence ($L < 1$)**

Étudier la série $\sum_{n=0}^{\infty} \frac{10^n}{n!}$.

C'est une série à termes positifs. On applique le critère de d'Alembert :

$u_n = \frac{10^n}{n!}$.

$$ \frac{u_{n+1}}{u_n} = \frac{10^{n+1}}{(n+1)!} \cdot \frac{n!}{10^n} = \frac{10^{n+1}}{10^n} \cdot \frac{n!}{(n+1)!} = 10 \cdot \frac{1}{n+1} = \frac{10}{n+1} $$

On calcule la limite :

$$ L = \lim_{n \to \infty} \frac{10}{n+1} = 0 $$

Puisque $L = 0 < 1$, la série converge.

**Exemple 2 : Cas de divergence ($L > 1$)**

Étudier la série $\sum_{n=1}^{\infty} \frac{n!}{2^n}$.

C'est une série à termes positifs.

$u_n = \frac{n!}{2^n}$.

$$ \frac{u_{n+1}}{u_n} = \frac{(n+1)!}{2^{n+1}} \cdot \frac{2^n}{n!} = \frac{(n+1)!}{n!} \cdot \frac{2^n}{2^{n+1}} = (n+1) \cdot \frac{1}{2} = \frac{n+1}{2} $$

On calcule la limite :

$$ L = \lim_{n \to \infty} \frac{n+1}{2} = +\infty $$

Puisque $L = +\infty > 1$, la série diverge.

**Exemple 3 : Cas douteux ($L = 1$)**

Étudier la série $\sum_{n=1}^{\infty} \frac{n+1}{n^2+1}$.

$u_n = \frac{n+1}{n^2+1} > 0$.

$$ \frac{u_{n+1}}{u_n} = \frac{(n+1)+1}{(n+1)^2+1} \cdot \frac{n^2+1}{n+1} = \frac{n+2}{n^2+2n+2} \cdot \frac{n^2+1}{n+1} $$

Pour trouver la limite, on regarde les termes de plus haut degré :

$$ \lim_{n \to \infty} \frac{n \cdot n^2}{n^2 \cdot n} = \lim_{n \to \infty} \frac{n^3}{n^3} = 1 $$

Le critère de d'Alembert donne $L=1$ et ne conclut pas. (Remarque : en utilisant une comparaison par équivalent, $u_n \sim \frac{n}{n^2} = \frac{1}{n}$, on peut montrer que cette série diverge).

### Contre-exemples (pour le cas $L=1$)

**Contre-exemple 1 : Série divergente avec $L=1$**

Pour la série harmonique $\sum \frac{1}{n}$, on a $u_n = 1/n$.

$$ \frac{u_{n+1}}{u_n} = \frac{1/(n+1)}{1/n} = \frac{n}{n+1} $$

$L = \lim_{n \to \infty} \frac{n}{n+1} = 1$. Ici $L=1$ et la série diverge.

**Contre-exemple 2 : Série convergente avec $L=1$**

Pour la série de Riemann $\sum \frac{1}{n^2}$, on a $u_n = 1/n^2$.

$$ \frac{u_{n+1}}{u_n} = \frac{1/(n+1)^2}{1/n^2} = \left(\frac{n}{n+1}\right)^2 $$

$L = \lim_{n \to \infty} \left(\frac{n}{n+1}\right)^2 = 1^2 = 1$. Ici $L=1$ et la série converge.

### Concepts Liés

-   **Critère de Cauchy** : Le critère de Cauchy est plus général que celui de d'Alembert. En pratique, d'Alembert est souvent plus facile à appliquer lorsque le terme général fait intervenir des factorielles ou des produits.
-   **Critères de Raabe-Duhamel et de Bertrand** : Des critères plus fins, utilisés spécifiquement lorsque le critère de d'Alembert donne une limite de 1.

---

## Concept 9: Produit de Cauchy de Séries

### Prérequis

-   Séries numériques, convergence, somme
-   Convergence absolue

### Définition

Soient $\sum_{n=0}^\infty u_n$ et $\sum_{n=0}^\infty v_n$ deux séries numériques. Le **produit de Cauchy** de ces deux séries est la série $\sum_{n=0}^\infty w_n$ dont le terme général est défini par :

$$ w_n = \sum_{p=0}^{n} u_p v_{n-p} = u_0v_n + u_1v_{n-1} + \dots + u_nv_0 $$

Cette somme peut aussi être écrite de manière symétrique : $w_n = \sum_{p+q=n} u_p v_q$.

Cette définition est inspirée de la multiplication des polynômes : si $P(x) = \sum u_p x^p$ et $Q(x) = \sum v_q x^q$, le coefficient du terme $x^n$ dans le produit $P(x)Q(x)$ est précisément $w_n$.

### Propriétés Clés

Le théorème principal sur le produit de Cauchy garantit un résultat sous l'hypothèse de convergence absolue.

**Théorème de Mertens :**

Si la série $\sum u_n$ converge absolument vers une somme $S_u$ et la série $\sum v_n$ converge absolument vers une somme $S_v$, alors leur produit de Cauchy $\sum w_n$ converge absolument et sa somme $S_w$ est le produit des sommes :

$$ S_w = \sum_{n=0}^{\infty} w_n = S_u \cdot S_v = \left(\sum_{n=0}^{\infty} u_n\right) \cdot \left(\sum_{n=0}^{\infty} v_n\right) $$

**Remarque :** L'hypothèse de convergence absolue pour les deux séries est cruciale. Si les deux séries sont seulement semi-convergentes, leur produit de Cauchy peut diverger.

### Exemples

**Exemple 1 : Produit de deux séries géométriques**

Soit $\sum u_n = \sum a^n$ et $\sum v_n = \sum b^n$, avec $|a|<1$ et $|b|<1$. Elles convergent absolument.

Le terme général du produit de Cauchy est :

$w_n = \sum_{p=0}^{n} a^p b^{n-p} = b^n \sum_{p=0}^{n} (a/b)^p$.

-   Si $a=b$, $w_n = \sum_{p=0}^n a^p a^{n-p} = \sum_{p=0}^n a^n = (n+1)a^n$. Le produit de Cauchy de $\sum a^n$ par elle-même est $\sum (n+1)a^n$.
-   Les sommes sont $S_u = \frac{1}{1-a}$ et $S_v = \frac{1}{1-b}$. Le théorème garantit que la somme du produit est $\frac{1}{(1-a)(1-b)}$.

**Exemple 2 : Exponentielle**

La série exponentielle est $e^x = \sum_{n=0}^{\infty} \frac{x^n}{n!}$. Cette série converge absolument pour tout $x \in \mathbb{R}$.

Calculons le produit de Cauchy de $e^x = \sum \frac{x^n}{n!}$ et $e^y = \sum \frac{y^n}{n!}$.

Soit $u_n = \frac{x^n}{n!}$ et $v_n = \frac{y^n}{n!}$. Le terme général du produit est :

$$ w_n = \sum_{p=0}^{n} u_p v_{n-p} = \sum_{p=0}^{n} \frac{x^p}{p!} \frac{y^{n-p}}{(n-p)!} $$

On multiplie et divise par $n!$ pour faire apparaître le coefficient binomial :

$$ w_n = \frac{1}{n!} \sum_{p=0}^{n} \frac{n!}{p!(n-p)!} x^p y^{n-p} = \frac{1}{n!} \sum_{p=0}^{n} \binom{n}{p} x^p y^{n-p} $$

D'après la formule du binôme de Newton, la somme est $(x+y)^n$. Donc :

$$ w_n = \frac{(x+y)^n}{n!} $$

La série produit est $\sum w_n = \sum_{n=0}^{\infty} \frac{(x+y)^n}{n!} = e^{x+y}$.

On retrouve ainsi la fameuse propriété $e^x \cdot e^y = e^{x+y}$.

**Exemple 3 : Produit par une constante**

Si $\sum u_n$ est absolument convergente et $v_0=\lambda$, $v_n=0$ pour $n>0$. Alors $\sum v_n$ converge absolument. $w_n = \sum_{p=0}^n u_p v_{n-p} = u_n v_0 = \lambda u_n$. Le produit est $\sum \lambda u_n$ dont la somme est $\lambda \sum u_n$.

### Contre-exemples

**Contre-exemple 1 : Produit de deux séries semi-convergentes**

Soit $u_n = v_n = \frac{(-1)^n}{\sqrt{n+1}}$ pour $n \ge 0$. La série $\sum u_n$ est semi-convergente (elle converge par le critère des séries alternées, mais $\sum |u_n| = \sum \frac{1}{\sqrt{n+1}}$ diverge).

Calculons le terme général $w_n$ du produit de Cauchy :

$$ w_n = \sum_{p=0}^{n} u_p v_{n-p} = \sum_{p=0}^{n} \frac{(-1)^p}{\sqrt{p+1}} \frac{(-1)^{n-p}}{\sqrt{n-p+1}} = (-1)^n \sum_{p=0}^{n} \frac{1}{\sqrt{(p+1)(n-p+1)}} $$

Pour montrer que la série $\sum w_n$ diverge, montrons que $w_n$ ne tend pas vers 0.

Pour $0 \le p \le n$, le produit $(p+1)(n-p+1)$ est maximal quand $p \approx n/2$. On peut minorer le dénominateur : $(p+1)(n-p+1) \le (\frac{(p+1)+(n-p+1)}{2})^2 = (\frac{n+2}{2})^2$.

Donc $\frac{1}{\sqrt{(p+1)(n-p+1)}} \ge \frac{2}{n+2}$.

$$ |w_n| = \sum_{p=0}^{n} \frac{1}{\sqrt{(p+1)(n-p+1)}} \ge \sum_{p=0}^{n} \frac{2}{n+2} = (n+1) \frac{2}{n+2} $$

La limite de $(n+1)\frac{2}{n+2}$ est 2. Donc $|w_n|$ ne tend pas vers 0, et la série produit $\sum w_n$ diverge.

### Concepts Liés

-   **Séries entières** : Le produit de Cauchy est le mécanisme standard pour multiplier deux séries entières. Le produit des sommes des séries entières est la somme de la série entière produit, à l'intérieur du disque de convergence.
-   **Convolution de suites** : Le terme général $w_n$ du produit de Cauchy est la convolution des suites $(u_n)$ et $(v_n)$.
