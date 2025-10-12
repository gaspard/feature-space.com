---
id: 1d1144c3
type: concepts
order: 20
title: Séries Numériques - concepts (B)
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
level: pro
createdAt: '2025-10-12T17:49:32.985Z'
---
# Séries Numériques (B)

---

## Concept 1: Définition et Propriétés Fondamentales des Séries Numériques

### Prérequis

-   Suites numériques dans $\mathbb{K}$ (avec $\mathbb{K} = \mathbb{R}$ ou $\mathbb{C}$)
-   Notion de limite d'une suite
-   Structure d'espace vectoriel

### Définition

Soit $(u_n)_{n \in \mathbb{N}}$ une suite d'éléments de $\mathbb{K}$.

Une **série numérique** est le couple de suites $((u_n)_{n \in \mathbb{N}}, (s_n)_{n \in \mathbb{N}})$ où la suite $(s_n)_{n \in \mathbb{N}}$ est définie par :

$$ \forall n \in \mathbb{N}, \quad s_n = \sum_{k=0}^{n} u_k $$

-   La suite $(u_n)$ est appelée la suite du **terme général** de la série.
-   La suite $(s_n)$ est appelée la suite des **sommes partielles** de la série.
-   La série est dite **convergente** si la suite des sommes partielles $(s_n)$ converge dans $\mathbb{K}$. Dans ce cas, sa limite $s = \lim_{n \to \infty} s_n$ est appelée **somme de la série**, et on note $s = \sum_{n=0}^{\infty} u_n$.
-   Si la série est convergente de somme $s$, le **reste d'ordre n**, noté $r_n$, est défini par $r_n = s - s_n = \sum_{k=n+1}^{\infty} u_k$. Par définition, $\lim_{n \to \infty} r_n = 0$.
-   Une série qui ne converge pas est dite **divergente**.

### Propriétés Clés

-   **Caractère de la série** : La nature (convergence ou divergence) d'une série est inchangée par la modification d'un nombre fini de ses termes. Cependant, la valeur de la somme, si elle existe, dépend de tous les termes.

-   **Structure d'espace vectoriel** : L'ensemble des séries convergentes à valeurs dans $\mathbb{K}$ est un $\mathbb{K}$-espace vectoriel.

    **Hypothèses** : Soient $\sum u_n$ et $\sum v_n$ deux séries convergentes de sommes respectives $S_u$ et $S_v$, et $\lambda \in \mathbb{K}$.

    **Conclusion** :

    1.  La série somme $\sum (u_n + v_n)$ converge et sa somme est $S_u + S_v$.
    2.  La série produit par un scalaire $\sum (\lambda u_n)$ converge et sa somme est $\lambda S_u$.

    **Preuve** : Soient $s_n = \sum_{k=0}^n u_k$ et $\sigma_n = \sum_{k=0}^n v_k$. Par hypothèse, $\lim_{n \to \infty} s_n = S_u$ et $\lim_{n \to \infty} \sigma_n = S_v$.

    1.  La somme partielle de $\sum (u_n+v_n)$ est $\sum_{k=0}^n (u_k+v_k) = s_n + \sigma_n$. Par linéarité de la limite de suites, $\lim_{n \to \infty} (s_n + \sigma_n) = S_u + S_v$.
    2.  La somme partielle de $\sum (\lambda u_n)$ est $\sum_{k=0}^n (\lambda u_k) = \lambda s_n$. Par propriété de la limite de suites, $\lim_{n \to \infty} (\lambda s_n) = \lambda S_u$.

### Exemples

**Exemple 1 : Série géométrique**

Soit $a, r \in \mathbb{K}$ avec $a \ne 0$. La série de terme général $u_n = ar^n$ est appelée série géométrique.

-   Si $r=1$, $s_n = a(n+1)$, la série diverge.
-   Si $r \ne 1$, $s_n = a \frac{1-r^{n+1}}{1-r}$. La suite $(s_n)$ converge si et seulement si $|r|<1$.
-   **Conclusion** : La série géométrique $\sum ar^n$ converge si et seulement si $|r|<1$, et sa somme est alors $S = \frac{a}{1-r}$.

**Exemple 2 : Série télescopique**

Soit $(a_n)_{n \in \mathbb{N}}$ une suite dans $\mathbb{K}$. La série de terme général $u_n = a_n - a_{n+1}$ est une série télescopique.

Sa somme partielle est $s_n = \sum_{k=0}^n (a_k - a_{k+1}) = a_0 - a_{n+1}$.

La série converge si et seulement si la suite $(a_n)$ converge. Si $\lim_{n \to \infty} a_n = L$, alors la somme de la série est $S = a_0 - L$.

Par exemple, pour $u_n = \frac{1}{n(n+1)} = \frac{1}{n} - \frac{1}{n+1}$ (pour $n \ge 1$), on a $s_n = \sum_{k=1}^n (\frac{1}{k} - \frac{1}{k+1}) = 1 - \frac{1}{n+1} \to 1$. La série converge et sa somme est 1.

**Exemple 3 : Série de Riemann**

La série de terme général $u_n = \frac{1}{n^\alpha}$ pour $\alpha \in \mathbb{R}$ est une série de Riemann. Il est connu qu'elle converge si et seulement si $\alpha > 1$. La démonstration de ce résultat nécessite des outils plus avancés (comparaison série-intégrale).

### Contre-exemples

**Contre-exemple 1 : Série divergente**

La série de terme général $u_n = c$ avec $c \in \mathbb{K}^*$. La suite des sommes partielles est $s_n = (n+1)c$, qui diverge. Donc la série diverge.

**Contre-exemple 2 : Modification d'une infinité de termes**

Considérons la série convergente $\sum u_n$ où $u_n=0$ pour tout $n$. Sa somme est 0. Modifions une infinité de termes en posant $v_n = u_n$ si $n$ est impair et $v_n=1$ si $n$ est pair. La nouvelle série $\sum v_n$ a pour somme partielle $\sigma_{2p+1} = \sigma_{2p} = p+1$, qui diverge vers $+\infty$. La nature de la série a été modifiée.

### Concepts Liés

-   **Suites numériques** : L'étude de la convergence des séries se ramène entièrement à l'étude de la convergence de la suite de leurs sommes partielles.
-   **Applications linéaires** : L'opérateur "somme" $S: \mathcal{C} \to \mathbb{K}$, où $\mathcal{C}$ est l'espace vectoriel des séries convergentes, qui associe à une série sa somme, est une application linéaire.

---

## Concept 2: Critère de Cauchy et Condition Nécessaire de Convergence

### Prérequis

-   Suites de Cauchy
-   Complétude de $\mathbb{R}$ et $\mathbb{C}$

### Définition

**Théorème (Critère de Cauchy pour les séries)** : Soit $\sum u_n$ une série numérique à valeurs dans $\mathbb{K}$ (complet). La série $\sum u_n$ converge si et seulement si :

$$ \forall \varepsilon > 0, \exists N \in \mathbb{N}, \forall q \ge p > N, \left| \sum_{k=p}^{q} u_k \right| \le \varepsilon $$

**Preuve** :

Soit $(s_n)$ la suite des sommes partielles. Par définition, la série $\sum u_n$ converge si et seulement si la suite $(s_n)$ converge. Comme $\mathbb{K}$ est complet, la suite $(s_n)$ converge si et seulement si c'est une suite de Cauchy.

La condition de Cauchy pour $(s_n)$ s'écrit :

$$ \forall \varepsilon > 0, \exists N' \in \mathbb{N}, \forall m > n > N', |s_m - s_n| \le \varepsilon $$

En posant $m=q$ et $n=p-1$ (avec $q \ge p > N'+1$), on a $|s_q - s_{p-1}| = |\sum_{k=p}^{q} u_k|$. La condition du théorème est donc équivalente à la condition de Cauchy pour la suite $(s_n)$.

### Propriétés Clés

**Proposition (Condition nécessaire de convergence)** : Si la série $\sum u_n$ converge, alors son terme général tend vers 0.

$$ \left( \sum u_n \text{ converge} \right) \implies \left( \lim_{n \to \infty} u_n = 0 \right) $$

La réciproque est fausse.

**Preuve** :

Si $\sum u_n$ converge, elle satisfait le critère de Cauchy. Soit $\varepsilon > 0$. Il existe $N \in \mathbb{N}$ tel que pour $q \ge p > N$, $|\sum_{k=p}^{q} u_k| \le \varepsilon$.

En particulier, en choisissant $p=n$ et $q=n$ pour $n > N$, on obtient $|u_n| = |\sum_{k=n}^{n} u_k| \le \varepsilon$.

Ceci démontre que $\lim_{n \to \infty} u_n = 0$.

### Exemples

**Exemple 1 : Divergence de la série harmonique**

Soit la série harmonique $\sum_{n \ge 1} \frac{1}{n}$. Son terme général $\frac{1}{n}$ tend vers 0. Montrons qu'elle ne satisfait pas le critère de Cauchy.

Prenons $\varepsilon = 1/2$. Pour tout $N \in \mathbb{N}$, choisissons $p=N+1$ et $q=2(N+1)=2p$. Alors :

$$ \left| \sum_{k=p}^{q} \frac{1}{k} \right| = \sum_{k=N+1}^{2(N+1)} \frac{1}{k} = \frac{1}{N+1} + \frac{1}{N+2} + \dots + \frac{1}{2N+2} $$

Chaque terme de la somme est supérieur ou égal au dernier, $\frac{1}{2N+2}$. Il y a $(2N+2) - (N+1) + 1 = N+2$ termes.

$$ \sum_{k=N+1}^{2(N+1)} \frac{1}{k} \ge (N+2) \times \frac{1}{2N+2} = \frac{N+2}{2(N+1)} > \frac{N+1}{2(N+1)} = \frac{1}{2} $$

La condition de Cauchy n'est pas vérifiée pour $\varepsilon=1/2$. La série diverge.

**Exemple 2 : Divergence grossière**

Considérons la série $\sum \frac{n}{n+1}$. Le terme général $u_n = \frac{n}{n+1}$ tend vers 1, et non vers 0. La condition nécessaire de convergence n'est pas satisfaite, donc la série diverge. On parle de divergence grossière.

**Exemple 3 : Convergence de $\sum \frac{1}{n^2}$**

Montrons que $\sum_{n \ge 1} \frac{1}{n^2}$ satisfait le critère de Cauchy. Pour $q > p \ge 1$:

$$ \left| \sum_{k=p}^{q} \frac{1}{k^2} \right| = \sum_{k=p}^{q} \frac{1}{k^2} < \sum_{k=p}^{q} \frac{1}{k(k-1)} \quad (\text{pour } k \ge 2) $$

$$ \sum_{k=p}^{q} \frac{1}{k(k-1)} = \sum_{k=p}^{q} \left( \frac{1}{k-1} - \frac{1}{k} \right) = \frac{1}{p-1} - \frac{1}{q} $$

Pour $p$ assez grand, cette quantité peut être rendue arbitrairement petite. Soit $\varepsilon > 0$. Choisissons $N$ tel que $\frac{1}{N-1} < \varepsilon$. Alors pour $q > p > N$, on a $\frac{1}{p-1} < \varepsilon$, donc $|\sum_{k=p}^{q} \frac{1}{k^2}| < \varepsilon$. La série converge.

### Contre-exemples

**Contre-exemple 1 : Réciproque de la condition nécessaire**

La série harmonique $\sum \frac{1}{n}$ (cf. Exemple 1) est le contre-exemple standard. Son terme général tend vers 0, mais la série diverge.

**Contre-exemple 2 : Une autre série divergente avec $u_n \to 0$**

La série $\sum_{n \ge 2} \frac{1}{n \ln n}$ diverge (ce qui peut être montré par comparaison avec une intégrale), bien que son terme général tende vers 0.

### Concepts Liés

-   **Complétude d'un espace normé** : Le critère de Cauchy est une propriété fondamentale des espaces de Banach. Le fait qu'il s'applique aux séries dans $\mathbb{R}$ ou $\mathbb{C}$ est une conséquence directe de la complétude de ces corps.
-   **Convergence de suites** : Le critère reformule la convergence d'une série en une propriété intrinsèque de la suite de ses termes généraux, sans faire référence à la limite.

---

## Concept 3: Convergence Absolue et Semi-Convergence

### Prérequis

-   Critère de Cauchy pour les séries
-   Valeur absolue et inégalité triangulaire

### Définition

-   Une série $\sum u_n$ est dite **absolument convergente** si la série des valeurs absolues (ou des modules dans $\mathbb{C}$) $\sum |u_n|$ est convergente.
-   Une série est dite **semi-convergente** si elle est convergente mais non absolument convergente.

### Propriétés Clés

**Proposition 1 : La convergence absolue implique la convergence.**

**Hypothèse** : La série $\sum u_n$ est absolument convergente.

**Conclusion** : La série $\sum u_n$ est convergente.

**Preuve** : On utilise le critère de Cauchy. L'hypothèse que $\sum |u_n|$ converge implique qu'elle vérifie le critère de Cauchy :

$$ \forall \varepsilon > 0, \exists N \in \mathbb{N}, \forall q \ge p > N, \sum_{k=p}^{q} |u_k| \le \varepsilon $$

Par l'inégalité triangulaire généralisée, on a :

$$ \left| \sum_{k=p}^{q} u_k \right| \le \sum_{k=p}^{q} |u_k| \le \varepsilon $$

La série $\sum u_n$ vérifie donc aussi le critère de Cauchy, et par complétude de $\mathbb{K}$, elle converge.

**Proposition 2 : Caractérisation pour les séries à termes positifs.**

Pour une série $\sum u_n$ à termes positifs ($u_n \ge 0$), la convergence et la convergence absolue sont équivalentes. La série converge si et seulement si la suite de ses sommes partielles est majorée.

**Proposition 3 : Structure d'espace de Banach.**

L'ensemble $\ell^1$ des suites $(u_n)$ telles que la série $\sum u_n$ converge absolument est un $\mathbb{K}$-espace vectoriel normé par $\|(u_n)\|_{\ell^1} = \sum_{n=0}^\infty |u_n|$. C'est un espace de Banach.

### Exemples

**Exemple 1 : Convergence absolue**

La série $\sum \frac{(-1)^n}{n^2}$ est absolument convergente car la série $\sum |\frac{(-1)^n}{n^2}| = \sum \frac{1}{n^2}$ est une série de Riemann avec $\alpha=2>1$, qui est convergente.

**Exemple 2 : Semi-convergence**

La série harmonique alternée $\sum_{n \ge 1} \frac{(-1)^{n-1}}{n}$ est convergente (d'après le critère des séries alternées, sa somme est $\ln 2$). Cependant, elle n'est pas absolument convergente car la série des valeurs absolues est la série harmonique $\sum \frac{1}{n}$, qui diverge. C'est donc une série semi-convergente.

**Exemple 3 : Une série dans $\mathbb{C}$**

La série $\sum \frac{e^{in\theta}}{n^2}$ pour $\theta \in \mathbb{R}$ est absolument convergente. En effet, $|u_n| = |\frac{e^{in\theta}}{n^2}| = \frac{|e^{in\theta}|}{n^2} = \frac{1}{n^2}$. La série $\sum \frac{1}{n^2}$ converge.

### Contre-exemples

**Contre-exemple 1 : La réciproque est fausse**

La série harmonique alternée (Exemple 2) montre qu'une série peut être convergente sans être absolument convergente.

**Contre-exemple 2 : Une série divergente**

La série $\sum \frac{(-1)^n}{\sqrt{n}}$ est semi-convergente. La série $\sum \frac{1}{\sqrt{n}}$ est divergente. Si on prend la série $\sum \frac{1}{\sqrt{n}}$, elle diverge et n'est bien sûr pas absolument convergente non plus (les notions coïncident pour les séries à termes positifs).

### Concepts Liés

-   **Théorème de réarrangement de Riemann** : Un résultat avancé stipule que si une série est semi-convergente, on peut réarranger l'ordre de ses termes pour la faire converger vers n'importe quelle valeur de $\overline{\mathbb{R}}$, ou même la faire diverger. En revanche, si une série est absolument convergente, tout réarrangement de ses termes converge vers la même somme. La convergence absolue est donc une forme de convergence "inconditionnelle".
-   **Séries à termes positifs** : L'étude de la convergence absolue d'une série quelconque $\sum u_n$ se ramène à l'étude de la convergence d'une série à termes positifs $\sum |u_n|$, pour laquelle des outils puissants (comme les critères de comparaison) sont disponibles.

---

## Concept 4: Produit de Cauchy de Séries

### Prérequis

-   Convergence absolue
-   Manipulation de sommes doubles
-   Limites de suites

### Définition

Soient deux séries $\sum_{n=0}^\infty u_n$ et $\sum_{n=0}^\infty v_n$. Le **produit de Cauchy** de ces deux séries est la série $\sum_{n=0}^\infty w_n$ dont le terme général est défini par :

$$ w_n = \sum_{k=0}^{n} u_k v_{n-k} = \sum_{p+q=n, p,q \ge 0} u_p v_q $$

Cette définition est inspirée du produit de deux polynômes ou de deux séries entières.

### Propriétés Clés

**Théorème (de Mertens, version forte)**

**Hypothèses** : Soient $\sum u_n$ et $\sum v_n$ deux séries absolument convergentes, de sommes respectives $S = \sum_{n=0}^\infty u_n$ et $\sigma = \sum_{n=0}^\infty v_n$.

**Conclusion** : Leur produit de Cauchy $\sum w_n$ est absolument convergent et sa somme est $S\sigma$.

$$ \sum_{n=0}^{\infty} w_n = \left(\sum_{n=0}^{\infty} u_n\right) \left(\sum_{n=0}^{\infty} v_n\right) $$

**Esquisse de la preuve** :

1.  **Convergence absolue de $\sum w_n$**: On note $\tilde{s} = \sum |u_n|$ et $\tilde{\sigma} = \sum |v_n|$.

    $|w_n| = |\sum_{k=0}^n u_k v_{n-k}| \le \sum_{k=0}^n |u_k||v_{n-k}|$.

    La somme partielle des valeurs absolues de $\sum w_n$ est $\sum_{k=0}^n |w_k| \le \sum_{k=0}^n \sum_{j=0}^k |u_j||v_{k-j}|$.

    Cette somme correspond aux termes $|u_p||v_q|$ où $p+q \le n$. Elle est donc majorée par $(\sum_{p=0}^n |u_p|)(\sum_{q=0}^n |v_q|) \le \tilde{s}\tilde{\sigma}$. La suite des sommes partielles de $\sum |w_n|$ est croissante et majorée, donc elle converge.

2.  **Valeur de la somme**: Soient $s_n, \sigma_n, \Pi_n$ les sommes partielles de $\sum u_n, \sum v_n, \sum w_n$.

    On montre que $\lim_{n \to \infty} (s_n \sigma_n - \Pi_n) = 0$.

    $s_n \sigma_n = (\sum_{i=0}^n u_i)(\sum_{j=0}^n v_j) = \sum_{i=0}^n \sum_{j=0}^n u_i v_j$.

    $\Pi_n = \sum_{k=0}^n w_k = \sum_{k=0}^n \sum_{i=0}^k u_i v_{k-i} = \sum_{i+j \le n} u_i v_j$.

    La différence $s_n \sigma_n - \Pi_n$ est la somme des termes $u_i v_j$ sur l'ensemble d'indices $E_n = \{(i,j) \in \{0,...,n\}^2 \mid i+j > n\}$.

    En utilisant la convergence absolue des séries de départ, on montre que la somme des modules des termes sur $E_n$ tend vers 0.

**Pointeur vers d'autres résultats** :

-   **Théorème de Mertens (version faible)**: Si $\sum u_n$ converge absolument et $\sum v_n$ converge (pas forcément absolument), alors leur produit de Cauchy converge et sa somme est le produit des sommes.
-   **Théorème d'Abel**: Si $\sum u_n$, $\sum v_n$ et leur produit de Cauchy $\sum w_n$ convergent tous les trois vers $S, \sigma, \Pi$ respectivement, alors $\Pi = S\sigma$.

### Exemples

**Exemple 1 : Exponentielle complexe**

Soient $x, y \in \mathbb{C}$. Les séries $e^x = \sum_{n=0}^\infty \frac{x^n}{n!}$ et $e^y = \sum_{n=0}^\infty \frac{y^n}{n!}$ sont absolument convergentes.

Le terme général de leur produit de Cauchy est :

$$ w_n = \sum_{k=0}^{n} \frac{x^k}{k!} \frac{y^{n-k}}{(n-k)!} = \frac{1}{n!} \sum_{k=0}^{n} \frac{n!}{k!(n-k)!} x^k y^{n-k} = \frac{(x+y)^n}{n!} $$

Le produit de Cauchy est donc la série $\sum_{n=0}^\infty \frac{(x+y)^n}{n!} = e^{x+y}$. Le théorème confirme que $e^x e^y = e^{x+y}$.

**Exemple 2 : Produit de séries géométriques**

Soit $u_n = a^n, v_n = b^n$ avec $|a|<1, |b|<1$ et $a \ne b$.

$$ w_n = \sum_{k=0}^n a^k b^{n-k} = b^n \sum_{k=0}^n (a/b)^k = b^n \frac{1-(a/b)^{n+1}}{1-(a/b)} = \frac{b^{n+1} - a^{n+1}}{b-a} $$

La série $\sum w_n$ converge et sa somme est $\frac{1}{b-a}(\frac{b}{1-b} - \frac{a}{1-a}) = \frac{1}{(1-a)(1-b)}$, qui est bien le produit des sommes $\frac{1}{1-a}$ et $\frac{1}{1-b}$.

**Exemple 3 : Produit avec une série nulle**

Si $u_0 = 1, u_1=-1$ et $u_n=0$ pour $n \ge 2$, et $v_n=1$ pour tout $n$. $\sum u_n$ converge absolument vers 0. $\sum v_n$ diverge. $w_n = \sum_{k=0}^n u_k v_{n-k} = u_0 v_n + u_1 v_{n-1} = 1 - 1 = 0$. Le produit de Cauchy est la série nulle, qui converge vers 0.

### Contre-exemples

**Contre-exemple 1 : Produit de deux séries semi-convergentes**

Soit $u_n = v_n = \frac{(-1)^n}{\sqrt{n+1}}$ pour $n \ge 0$. Les séries $\sum u_n$ et $\sum v_n$ sont semi-convergentes (par le critère des séries alternées).

Le terme général du produit de Cauchy est :

$$ w_n = \sum_{k=0}^{n} u_k v_{n-k} = \sum_{k=0}^{n} \frac{(-1)^k}{\sqrt{k+1}} \frac{(-1)^{n-k}}{\sqrt{n-k+1}} = (-1)^n \sum_{k=0}^{n} \frac{1}{\sqrt{(k+1)(n-k+1)}} $$

L'inégalité arithmético-géométrique donne $\sqrt{(k+1)(n-k+1)} \le \frac{(k+1)+(n-k+1)}{2} = \frac{n+2}{2}$.

Donc $\frac{1}{\sqrt{(k+1)(n-k+1)}} \ge \frac{2}{n+2}$.

$$ |w_n| = \sum_{k=0}^{n} \frac{1}{\sqrt{(k+1)(n-k+1)}} \ge \sum_{k=0}^{n} \frac{2}{n+2} = (n+1)\frac{2}{n+2} $$

Comme $\lim_{n \to \infty} \frac{2(n+1)}{n+2} = 2$, le terme général $|w_n|$ ne tend pas vers 0. La série produit diverge grossièrement.

### Concepts Liés

-   **Séries entières** : Le produit de Cauchy est l'outil principal pour multiplier des séries entières, ce qui correspond à la multiplication des fonctions analytiques qu'elles représentent.
-   **Convolution de suites** : Le terme général $w_n$ est le produit de convolution discret des suites $(u_n)$ et $(v_n)$.

---

## Concept 5: Séries à Termes Positifs et Critère de Comparaison

### Prérequis

-   Suites monotones
-   Théorème de la limite monotone

### Définition

Une série $\sum u_n$ est dite **à termes positifs** si $u_n \ge 0$ pour tout $n \in \mathbb{N}$ (ou au moins à partir d'un certain rang).

### Propriétés Clés

**Proposition 1 : Critère fondamental de convergence**

**Hypothèse** : $\sum u_n$ est une série à termes positifs.

**Conclusion** : La série $\sum u_n$ converge si et seulement si la suite de ses sommes partielles $(s_n)$ est majorée. Si elle n'est pas majorée, elle diverge vers $+\infty$.

**Preuve** : La suite des sommes partielles $s_n = \sum_{k=0}^n u_k$ est croissante car $s_n - s_{n-1} = u_n \ge 0$. D'après le théorème de la limite monotone, une suite croissante converge dans $\mathbb{R}$ si et seulement si elle est majorée. Sinon, elle tend vers $+\infty$.

**Théorème 2 : Théorème de comparaison par inégalité**

**Hypothèses** : Soient $\sum u_n$ et $\sum v_n$ deux séries à termes positifs telles qu'il existe $N_0 \in \mathbb{N}$ pour lequel $0 \le u_n \le v_n$ pour tout $n \ge N_0$.

**Conclusion** :

1.  Si $\sum v_n$ converge, alors $\sum u_n$ converge.
2.  Si $\sum u_n$ diverge, alors $\sum v_n$ diverge.

**Preuve** : Soient $s_n = \sum_{k=N_0}^n u_k$ et $\sigma_n = \sum_{k=N_0}^n v_k$. L'hypothèse implique $0 \le s_n \le \sigma_n$.

1.  Si $\sum v_n$ converge, alors la suite des sommes partielles de $\sum v_n$ est majorée, donc $(\sigma_n)$ est majorée. Par conséquent, $(s_n)$ est aussi majorée. Étant croissante, $(s_n)$ converge. Comme la nature d'une série ne dépend pas de ses premiers termes, $\sum u_n$ converge.
2.  La deuxième assertion est la contraposée de la première.

**Pointeur vers d'autres résultats** :

-   **Comparaison par équivalents** : Si $u_n \ge 0$, $v_n > 0$ et $u_n \sim v_n$ quand $n \to \infty$, alors les séries $\sum u_n$ et $\sum v_n$ sont de même nature.
-   **Comparaison par négligeabilité** : Si $u_n = o(v_n)$ et $\sum v_n$ converge, alors $\sum u_n$ converge. Si $v_n = o(u_n)$ et $\sum v_n$ diverge, alors $\sum u_n$ diverge.

### Exemples

**Exemple 1 : Convergence de $\sum \frac{1}{n^2}$**

Pour $n \ge 2$, on a $n^2 \ge n(n-1)$, d'où $0 \le \frac{1}{n^2} \le \frac{1}{n(n-1)}$.

On a vu que la série télescopique $\sum_{n \ge 2} \frac{1}{n(n-1)}$ converge. Par le théorème de comparaison, la série $\sum \frac{1}{n^2}$ converge.

**Exemple 2 : Divergence de $\sum \frac{1}{\sqrt{n}}$**

Pour $n \ge 1$, on a $\sqrt{n} \le n$, d'où $\frac{1}{\sqrt{n}} \ge \frac{1}{n} \ge 0$.

La série harmonique $\sum \frac{1}{n}$ diverge. Par le théorème de comparaison, la série $\sum \frac{1}{\sqrt{n}}$ diverge.

**Exemple 3 : Convergence de $\sum e^{-n^2}$**

Pour $n \ge 1$, on a $n^2 \ge n$, donc $-n^2 \le -n$, et $0 \le e^{-n^2} \le e^{-n} = (1/e)^n$.

La série $\sum (1/e)^n$ est une série géométrique de raison $1/e \in ]0,1[$, donc elle converge. Par comparaison, $\sum e^{-n^2}$ converge.

### Contre-exemples

**Contre-exemple 1 : Importance de la positivité**

Soit $u_n = \frac{(-1)^n}{n}$ et $v_n = \frac{1}{n^2}$. On n'a pas $u_n \ge 0$. L'inégalité $u_n \le v_n$ est vraie pour $n$ impair. La série $\sum v_n$ converge, mais on ne peut rien conclure pour $\sum u_n$ avec ce théorème. (En fait, $\sum u_n$ converge).

**Contre-exemple 2 : Mauvais sens de l'inégalité**

Soit $u_n = \frac{1}{n}$ et $v_n = \frac{1}{n^2}$. Pour $n \ge 2$, $u_n \ge v_n \ge 0$. La série $\sum v_n$ converge, mais cela ne donne aucune information sur la nature de $\sum u_n$ (qui diverge).

### Concepts Liés

-   **Séries de Riemann** : Les séries $\sum \frac{1}{n^\alpha}$ forment une échelle de référence essentielle pour les tests de comparaison.
-   **Comparaison série-intégrale** : Une méthode puissante pour déterminer la nature de séries à termes positifs dont le terme général est monotone est de la comparer à l'intégrale de la fonction associée.

---

## Concept 6: Critères de Convergence de Cauchy et d'Alembert

### Prérequis

-   Limite supérieure et limite inférieure (limsup, liminf) d'une suite
-   Séries géométriques
-   Théorème de comparaison

### Définition

Soit $\sum u_n$ une série à termes **strictement positifs** ($u_n > 0$).

**Proposition 1 : Règle de Cauchy (Root Test)**

Soit $l = \limsup_{n \to \infty} (u_n)^{1/n}$.

1.  Si $l < 1$, la série $\sum u_n$ converge.
2.  Si $l > 1$, la série $\sum u_n$ diverge.
3.  Si $l = 1$, on ne peut pas conclure.

**Preuve** :

1.  Si $l<1$, on choisit $\rho$ tel que $l < \rho < 1$. Par définition de la limite supérieure, il existe $N \in \mathbb{N}$ tel que $\forall n \ge N, (u_n)^{1/n} \le \rho$, soit $u_n \le \rho^n$. Comme $0 < \rho < 1$, la série géométrique $\sum \rho^n$ converge. Par comparaison, $\sum u_n$ converge.
2.  Si $l>1$, par définition de la limite supérieure, il existe une sous-suite $(u_{n_k})^{1/n_k}$ qui converge vers $l > 1$. Donc, pour $k$ assez grand, $(u_{n_k})^{1/n_k} > 1$, soit $u_{n_k} > 1$. Le terme général $u_n$ ne tend pas vers 0. La série diverge grossièrement.

**Proposition 2 : Règle de d'Alembert (Ratio Test)**

Soit $\sum u_n$ une série à termes strictement positifs.

1.  Si $\limsup_{n \to \infty} \frac{u_{n+1}}{u_n} < 1$, la série $\sum u_n$ converge.
2.  Si $\liminf_{n \to \infty} \frac{u_{n+1}}{u_n} > 1$, la série $\sum u_n$ diverge.
3.  Si $\liminf_{n \to \infty} \frac{u_{n+1}}{u_n} \le 1 \le \limsup_{n \to \infty} \frac{u_{n+1}}{u_n}$, on ne peut pas conclure.

**Preuve** :

1.  Si $\limsup \frac{u_{n+1}}{u_n} = L < 1$, on choisit $\rho$ tel que $L < \rho < 1$. Il existe $N \in \mathbb{N}$ tel que $\forall n \ge N, \frac{u_{n+1}}{u_n} \le \rho$. Par récurrence, $u_n \le u_N \rho^{n-N} = (u_N \rho^{-N})\rho^n$. La convergence de $\sum u_n$ découle de la convergence de la série géométrique $\sum \rho^n$ par comparaison.
2.  Si $\liminf \frac{u_{n+1}}{u_n} = l > 1$, il existe $N \in \mathbb{N}$ tel que $\forall n \ge N, \frac{u_{n+1}}{u_n} \ge 1$. La suite $(u_n)_{n \ge N}$ est donc croissante. Comme $u_N > 0$, la suite $(u_n)$ ne peut tendre vers 0. La série diverge grossièrement.

### Propriétés Clés

-   **Comparaison des critères** : Le critère de Cauchy est plus puissant que celui de d'Alembert. On a toujours l'inégalité :

    $$ \liminf \frac{u_{n+1}}{u_n} \le \liminf (u_n)^{1/n} \le \limsup (u_n)^{1/n} \le \limsup \frac{u_{n+1}}{u_n} $$

    Ainsi, si d'Alembert permet de conclure, Cauchy aussi. L'inverse n'est pas vrai.

-   **Cas limite** : Lorsque la limite (si elle existe) du rapport ou de la racine n-ième est 1, ces tests ne sont pas concluants. Il faut utiliser des règles plus fines (comparaison avec une série de Riemann, règle de Raabe-Duhamel, critère de Bertrand).

-   **Estimation du reste** : Si un des critères de convergence est vérifié avec une constante $\rho < 1$ (i.e. $u_n \le C\rho^n$ pour $n \ge N$), on peut majorer le reste $r_n = \sum_{k=n+1}^\infty u_k$ par la somme d'une série géométrique:

    $$ r_n \le \sum_{k=n+1}^\infty C\rho^k = C \frac{\rho^{n+1}}{1-\rho} $$

    Cela permet d'obtenir des estimations de la vitesse de convergence.

### Exemples

**Exemple 1 (d'Alembert)**

Soit $u_n = \frac{n^2}{2^n}$.

$$ \frac{u_{n+1}}{u_n} = \frac{(n+1)^2}{2^{n+1}} \frac{2^n}{n^2} = \frac{1}{2} \left(\frac{n+1}{n}\right)^2 = \frac{1}{2} \left(1+\frac{1}{n}\right)^2 \to \frac{1}{2} < 1 $$

La série converge par le critère de d'Alembert.

**Exemple 2 (Cauchy)**

Soit $u_n = \left(\frac{2n+1}{3n+4}\right)^n$.

$$ (u_n)^{1/n} = \frac{2n+1}{3n+4} \to \frac{2}{3} < 1 $$

La série converge par le critère de Cauchy.

**Exemple 3 (Cas $l=1$)**

Pour les séries de Riemann $\sum \frac{1}{n^\alpha}$, on a :

-   d'Alembert: $\frac{u_{n+1}}{u_n} = (\frac{n}{n+1})^\alpha \to 1$.
-   Cauchy: $(u_n)^{1/n} = (\frac{1}{n^\alpha})^{1/n} = n^{-\alpha/n} = e^{-\frac{\alpha \ln n}{n}} \to e^0 = 1$.

Les deux critères sont inefficaces, alors que la série converge pour $\alpha>1$ et diverge pour $\alpha \le 1$.

### Contre-exemples

**Contre-exemple 1 : Cauchy plus fort que d'Alembert**

Considérons la série de terme général $u_n$ défini par $u_{2k} = 2^{-2k}$ et $u_{2k+1} = 3 \cdot 2^{-(2k+1)}$.

-   Critère de Cauchy : $(u_{2k})^{1/(2k)} = 2^{-1} = 1/2$. $(u_{2k+1})^{1/(2k+1)} = (3 \cdot 2^{-(2k+1)})^{1/(2k+1)} = 3^{1/(2k+1)} \cdot 1/2 \to 1/2$.

    Donc $\limsup (u_n)^{1/n} = 1/2 < 1$. La série converge.

-   Critère de d'Alembert :

    $\frac{u_{2k+1}}{u_{2k}} = \frac{3 \cdot 2^{-2k-1}}{2^{-2k}} = 3/2 > 1$.

    $\frac{u_{2k+2}}{u_{2k+1}} = \frac{2^{-2k-2}}{3 \cdot 2^{-2k-1}} = \frac{1}{3 \cdot 2} = 1/6 < 1$.

    On a $\liminf \frac{u_{n+1}}{u_n} = 1/6$ et $\limsup \frac{u_{n+1}}{u_n} = 3/2$. Le critère de d'Alembert ne permet pas de conclure.

### Concepts Liés

-   **Rayon de convergence** : Les critères de Cauchy et d'Alembert sont fondamentaux pour déterminer le rayon de convergence des séries entières. La formule de Cauchy-Hadamard pour le rayon de convergence $R$ d'une série entière $\sum a_n z^n$ est $R = 1/\limsup |a_n|^{1/n}$.
-   **Vitesse de convergence** : Une série qui converge par l'un de ces critères est dite à convergence géométrique, car son terme général est majoré par le terme d'une série géométrique. C'est une convergence très rapide.
