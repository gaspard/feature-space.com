---
id: 3b3bee4e
type: concepts
order: 20
title: Séries Numériques (suite) - concepts (B)
tags:
  - séries numériques
  - convergence
  - critère de Cauchy
  - séries à termes positifs
  - intégrales généralisées
  - théorème d'Abel
course: Analyse
courseId: 9c2d50b3
chapter: Séries Numériques (suite)
chapterId: c9bf30da
level: pro
createdAt: '2025-10-12T17:46:44.893Z'
---
# Séries Numériques (suite) (B)

---

## Concept 1: Intégrales Généralisées (ou Impropres)

### Prérequis

- Intégrale de Riemann sur un intervalle compact $[a,b]$
- Fonctions continues par morceaux
- Limites de fonctions et critère de Cauchy pour les fonctions

### Définition

Soit $I$ un intervalle de $\mathbb{R}$ et $f: I \to \mathbb{R}$ (ou $\mathbb{C}$) une fonction continue par morceaux sur tout sous-intervalle compact de $I$. Une intégrale de $f$ sur $I$ est dite **généralisée** (ou impropre) si soit l'intervalle $I$ n'est pas borné, soit la fonction $f$ n'est pas bornée au voisinage d'une des bornes de $I$.

1.  **Intervalle non borné :** Soit $f: [a, +\infty[ \to \mathbb{R}$ continue par morceaux. L'intégrale généralisée $\int_a^{+\infty} f(t)dt$ **converge** si la fonction $F(x) = \int_a^x f(t)dt$ admet une limite finie lorsque $x \to +\infty$. Cette limite est alors la valeur de l'intégrale. Sinon, l'intégrale **diverge**.

    $$ \int_a^{+\infty} f(t)dt := \lim_{x \to +\infty} \int_a^x f(t)dt $$

    La définition est analogue pour $\int_{-\infty}^b f(t)dt$. Pour $\int_{-\infty}^{+\infty} f(t)dt$, on choisit un $c \in \mathbb{R}$ et on dit que l'intégrale converge si et seulement si $\int_{-\infty}^c f(t)dt$ et $\int_c^{+\infty} f(t)dt$ convergent. Sa valeur est alors la somme des deux.

2.  **Fonction non bornée :** Soit $f: ]a, b] \to \mathbb{R}$ continue par morceaux, non bornée au voisinage de $a$. L'intégrale généralisée $\int_a^b f(t)dt$ **converge** si la fonction $G(\epsilon) = \int_{a+\epsilon}^b f(t)dt$ admet une limite finie lorsque $\epsilon \to 0^+$.

    $$ \int_a^b f(t)dt := \lim_{\epsilon \to 0^+} \int_{a+\epsilon}^b f(t)dt $$

    La définition est analogue pour une fonction non bornée en $b$.

Une intégrale généralisée $\int_I f(t)dt$ est dite **absolument convergente** si $\int_I |f(t)|dt$ converge.

### Propriétés Clés

- **Linéarité :** Si $\int_I f$ et $\int_I g$ convergent, alors pour tout $(\lambda, \mu) \in \mathbb{R}^2$, $\int_I (\lambda f + \mu g)$ converge et $\int_I (\lambda f + \mu g) = \lambda \int_I f + \mu \int_I g$.
- **Relation de Chasles :** Pour tout $c$ dans l'intérieur de $I$, $\int_I f(t)dt$ converge si et seulement si $\int_{I \cap ]-\infty, c]} f(t)dt$ et $\int_{I \cap [c, +\infty[} f(t)dt$ convergent.
- **Critère de Cauchy :** Soit $f: [a,b[ \to \mathbb{R}$ (où $b$ peut être $+\infty$). L'intégrale $\int_a^b f(t)dt$ converge si et seulement si :

  $$ \forall \varepsilon > 0, \exists B \in [a,b[, \forall x, y \in ]B,b[, \left| \int_x^y f(t)dt \right| < \varepsilon. $$

- **Convergence absolue :** Toute intégrale absolument convergente est convergente.

  *Démonstration :* Soit $f$ une fonction telle que $\int_I |f|$ converge. Par le critère de Cauchy pour $|f|$, pour tout $\varepsilon > 0$, il existe un intervalle compact $J \subset I$ tel que pour tout intervalle compact $K$ avec $J \subset K \subset I$, on a $\int_{K \setminus J} |f(t)|dt < \varepsilon$. Par l'inégalité triangulaire, $|\int_{K \setminus J} f(t)dt| \le \int_{K \setminus J} |f(t)|dt < \varepsilon$. Le critère de Cauchy est donc vérifié pour $f$, et $\int_I f$ converge.

- **Théorèmes de comparaison (pour fonctions positives) :** Soient $f,g: I \to \mathbb{R}^+$ continues par morceaux.
    - Si $0 \le f(t) \le g(t)$ sur $I$ et $\int_I g(t)dt$ converge, alors $\int_I f(t)dt$ converge.
    - Si $f(t) \sim_{t \to b} g(t)$ au voisinage d'une borne $b$ où l'intégrale est impropre, alors $\int f(t)dt$ et $\int g(t)dt$ ont même nature.

### Exemples

**Exemple 1 : Intégrales de Riemann**

L'intégrale $\int_1^{+\infty} \frac{1}{t^\alpha} dt$ converge si et seulement si $\alpha > 1$.

*Preuve :* Si $\alpha \ne 1$, une primitive de $t^{-\alpha}$ est $\frac{t^{1-\alpha}}{1-\alpha}$.

$$ \int_1^x \frac{1}{t^\alpha} dt = \left[ \frac{t^{1-\alpha}}{1-\alpha} \right]_1^x = \frac{x^{1-\alpha}-1}{1-\alpha}. $$

La limite pour $x \to +\infty$ est finie (et vaut $\frac{1}{\alpha-1}$) si et seulement si $1-\alpha < 0$, i.e., $\alpha > 1$.

Si $\alpha = 1$, $\int_1^x \frac{1}{t} dt = \ln(x)$, qui diverge vers $+\infty$.

**Exemple 2 : Intégrale semi-convergente (sinus cardinal)**

L'intégrale $\int_1^{+\infty} \frac{\sin(t)}{t} dt$ est convergente mais non absolument convergente.

*Convergence :* On utilise une intégration par parties. Pour $x > 1$:

$$ \int_1^x \frac{\sin(t)}{t} dt = \left[-\frac{\cos(t)}{t}\right]_1^x - \int_1^x \frac{\cos(t)}{t^2} dt = \cos(1) - \frac{\cos(x)}{x} - \int_1^x \frac{\cos(t)}{t^2} dt. $$

Quand $x \to +\infty$, $\frac{\cos(x)}{x} \to 0$. De plus, $|\frac{\cos(t)}{t^2}| \le \frac{1}{t^2}$ et $\int_1^{+\infty} \frac{1}{t^2} dt$ converge (Exemple 1), donc $\int_1^{+\infty} \frac{\cos(t)}{t^2} dt$ est absolument convergente. Par suite, $\int_1^{+\infty} \frac{\sin(t)}{t} dt$ converge.

*Non-convergence absolue :* On a $|\sin(t)| \ge \sin^2(t) = \frac{1-\cos(2t)}{2}$.

$$ \int_1^x \frac{|\sin(t)|}{t} dt \ge \int_1^x \frac{1-\cos(2t)}{2t} dt = \frac{1}{2} \int_1^x \frac{dt}{t} - \frac{1}{2} \int_1^x \frac{\cos(2t)}{t} dt. $$

$\int_1^x \frac{dt}{t} = \ln(x) \to +\infty$. L'intégrale $\int_1^x \frac{\cos(2t)}{t} dt$ converge par un argument similaire au précédent. Donc $\int_1^{+\infty} \frac{|\sin(t)|}{t} dt$ diverge.

**Exemple 3 : Intégrale de Gauss**

L'intégrale $\int_{-\infty}^{+\infty} e^{-t^2} dt$ est convergente.

*Preuve :* La fonction est paire, il suffit d'étudier $\int_0^{+\infty} e^{-t^2} dt$. Pour $t \ge 1$, $t^2 \ge t$, donc $e^{-t^2} \le e^{-t}$.

$$ \int_1^x e^{-t} dt = [-e^{-t}]_1^x = e^{-1} - e^{-x} \xrightarrow{x \to \infty} e^{-1}. $$

Comme $\int_1^{+\infty} e^{-t} dt$ converge, par comparaison, $\int_1^{+\infty} e^{-t^2} dt$ converge. L'intégrale $\int_0^1 e^{-t^2} dt$ est une intégrale sur un segment d'une fonction continue, donc elle est finie. Ainsi, $\int_0^{+\infty} e^{-t^2} dt$ converge. La valeur de cette intégrale est $\sqrt{\pi}$, ce qui se démontre via des intégrales doubles.

### Contre-exemples

1.  **Divergence malgré une limite nulle de l'intégrande :** L'intégrale $\int_1^{+\infty} \frac{1}{t} dt$ diverge bien que l'intégrande $1/t$ tende vers 0. Ceci illustre que la condition $\lim_{t\to\infty} f(t) = 0$ n'est pas suffisante pour la convergence.
2.  **Importance de la convergence séparée des bornes :** Considérons $\int_{-\infty}^{+\infty} t dt$. Si on calcule $\lim_{x \to +\infty} \int_{-x}^x t dt = \lim_{x \to +\infty} \left[\frac{t^2}{2}\right]_{-x}^x = \lim_{x \to +\infty} 0 = 0$. Cependant, l'intégrale diverge car ni $\int_0^{+\infty} t dt$ ni $\int_{-\infty}^0 t dt$ ne convergent. La limite symétrique est appelée la valeur principale de Cauchy et peut exister même si l'intégrale diverge au sens strict.

### Concepts Liés

- **Séries numériques :** Le critère de comparaison série-intégrale établit un lien direct entre la nature d'une série et celle d'une intégrale.
- **Transformées de Fourier et de Laplace :** Ces transformées sont définies par des intégrales généralisées et sont fondamentales en analyse, physique et ingénierie.
- **Fonction Gamma d'Euler :** Définie par $\Gamma(z) = \int_0^{+\infty} t^{z-1} e^{-t} dt$, elle généralise la factorielle aux nombres complexes.
- **Intégrale de Lebesgue :** Une théorie de l'intégration plus puissante où la distinction entre les différents types d'impropriété disparaît. En Lebesgue, une fonction $f$ est intégrable sur $I$ si et seulement si $\int_I |f| d\mu < \infty$.

---

## Concept 2: Critère de Comparaison Série-Intégrale

### Prérequis

- Séries à termes positifs
- Convergence des intégrales généralisées
- Fonctions monotones

### Définition

**Proposition 2.4.1 :** Soit $f: [a, +\infty[ \to \mathbb{R}$ une fonction continue, positive et décroissante pour $a \in \mathbb{R}$. Soit la série $\sum_{n=n_0}^\infty u_n$ avec $n_0 \ge a$ et $u_n = f(n)$. Alors la série $\sum u_n$ et l'intégrale $\int_a^{+\infty} f(t)dt$ sont de même nature.

**Démonstration :**

Puisque $f$ est décroissante, pour tout entier $k \ge a$, on a :

$$ \forall t \in [k, k+1], \quad f(k+1) \le f(t) \le f(k). $$

En intégrant cette inégalité sur $[k, k+1]$ :

$$ \int_k^{k+1} f(k+1) dt \le \int_k^{k+1} f(t) dt \le \int_k^{k+1} f(k) dt $$

$$ f(k+1) \le \int_k^{k+1} f(t) dt \le f(k). $$

Sommons ces inégalités. D'une part, pour $N > n_0$ :

$$ \sum_{k=n_0}^{N-1} f(k+1) \le \sum_{k=n_0}^{N-1} \int_k^{k+1} f(t) dt \implies \sum_{k=n_0+1}^{N} u_k \le \int_{n_0}^N f(t)dt. $$

D'autre part :

$$ \sum_{k=n_0}^{N} \int_k^{k+1} f(t) dt \le \sum_{k=n_0}^{N} f(k) \implies \int_{n_0}^{N+1} f(t)dt \le \sum_{k=n_0}^{N} u_k. $$

Soient $S_N = \sum_{k=n_0}^N u_k$ et $I_N = \int_{n_0}^N f(t)dt$. Les suites $(S_N)$ et $(I_N)$ sont croissantes car $f \ge 0$. Les inégalités précédentes montrent que $(S_N)$ est bornée si et seulement si $(I_N)$ est bornée. Donc, elles convergent ou divergent simultanément.

### Propriétés Clés

- **Encadrement de la somme :** Les inégalités de la preuve fournissent un encadrement de la somme partielle $S_N$:

  $$ \int_{n_0}^{N+1} f(t)dt \le S_N \le u_{n_0} + \int_{n_0}^N f(t)dt. $$

- **Estimation du reste (Corollaire 2.4.3) :** Si la série converge, son reste $R_n = \sum_{k=n+1}^\infty u_k$ vérifie :

  $$ \int_{n+1}^{+\infty} f(t)dt \le R_n \le \int_n^{+\infty} f(t)dt. $$

  *Démonstration :* En sommant l'encadrement $f(k+1) \le \int_k^{k+1} f(t) dt \le f(k)$ pour $k$ de $n+1$ à l'infini, on obtient le résultat.

- Ce critère est particulièrement efficace pour établir des familles de séries de référence.

### Exemples

**Exemple 1 : Séries de Riemann**

La série $\sum_{n=1}^\infty \frac{1}{n^\alpha}$ converge si et seulement si $\alpha > 1$.

On applique le critère à la fonction $f(t) = t^{-\alpha}$ sur $[1, +\infty[$. Elle est continue, positive et décroissante pour $\alpha > 0$. On a déjà montré (Concept 1, Exemple 1) que $\int_1^{+\infty} t^{-\alpha} dt$ converge si et seulement si $\alpha > 1$. Pour $\alpha \le 0$, le terme général ne tend pas vers 0, donc la série diverge.

**Exemple 2 : Séries de Bertrand**

La série $\sum_{n=2}^\infty \frac{1}{n(\ln n)^\alpha}$ converge si et seulement si $\alpha > 1$.

On utilise la fonction $f(t) = \frac{1}{t(\ln t)^\alpha}$ sur $[2, +\infty[$, qui est continue, positive et décroissante. On étudie $\int_2^{+\infty} f(t)dt$.

Pour $\alpha \ne 1$, une primitive est $\frac{(\ln t)^{1-\alpha}}{1-\alpha}$.

$$ \int_2^x \frac{dt}{t(\ln t)^\alpha} = \left[\frac{(\ln t)^{1-\alpha}}{1-\alpha}\right]_2^x = \frac{(\ln x)^{1-\alpha} - (\ln 2)^{1-\alpha}}{1-\alpha}. $$

Cette expression a une limite finie quand $x \to +\infty$ si et seulement si $1-\alpha < 0$, i.e., $\alpha > 1$.

Si $\alpha=1$, une primitive est $\ln(\ln t)$, et $\int_2^x \frac{dt}{t \ln t} = \ln(\ln x) - \ln(\ln 2)$, qui diverge.

**Exemple 3 : Estimation d'une somme**

Approchons la somme $S = \sum_{n=1}^\infty \frac{1}{n^2}$. Le reste $R_{10}$ est encadré par :

$$ \int_{11}^{+\infty} \frac{1}{t^2} dt \le R_{10} \le \int_{10}^{+\infty} \frac{1}{t^2} dt. $$

$$ \left[-\frac{1}{t}\right]_{11}^\infty \le R_{10} \le \left[-\frac{1}{t}\right]_{10}^\infty $$

$$ \frac{1}{11} \le R_{10} \le \frac{1}{10}. $$

La somme partielle $S_{10} = \sum_{n=1}^{10} \frac{1}{n^2} \approx 1.54977$. On peut donc encadrer $S = S_{10} + R_{10}$ :

$1.54977 + \frac{1}{11} \le S \le 1.54977 + \frac{1}{10}$, soit $1.64068 \le S \le 1.64977$. (La valeur exacte est $\pi^2/6 \approx 1.64493$).

### Contre-exemples

1.  **Fonction non monotone :** Soit $u_n = \frac{2+\sin(n)}{n^2}$. Le critère ne s'applique pas car $f(t) = \frac{2+\sin(t)}{t^2}$ n'est pas décroissante. Cependant, la série converge, car $0 < u_n \le \frac{3}{n^2}$ et $\sum \frac{1}{n^2}$ converge.
2.  **Série non à termes positifs :** Le critère ne s'applique pas à la série alternée $\sum_{n=1}^\infty \frac{(-1)^n}{n}$. La série converge, mais l'intégrale $\int_1^\infty \frac{(-1)^t}{t} dt$ n'a pas de sens standard, et l'intégrale de $|f(t)|$ diverge.

### Concepts Liés

- **Formule d'Euler-Maclaurin :** Une formule sophistiquée qui relie une somme discrète et une intégrale avec des termes correctifs faisant intervenir les dérivées de la fonction. Elle peut être vue comme une version très précise du critère de comparaison.
- **Constante d'Euler-Mascheroni :** Définie par $\gamma = \lim_{n \to \infty} \left( \sum_{k=1}^n \frac{1}{k} - \ln n \right)$, son existence peut être démontrée en utilisant l'encadrement du critère de comparaison pour la série harmonique.

---

## Concept 3: Critères de Convergence Avancés pour Séries à Termes Positifs

### Prérequis

- Séries à termes positifs et critères de comparaison de base
- Notion de suites équivalentes ($u_n \sim v_n$)
- Développements limités

### Définition

#### A. Test de Condensation de Cauchy (Test de la loupe)

**Proposition 2.4.7 :** Soit $(u_n)_{n\in\mathbb{N}}$ une suite positive et décroissante. Alors la série $\sum u_n$ converge si et seulement si la série "condensée" $\sum_{j=0}^\infty 2^j u_{2^j}$ converge.

**Démonstration :**

Soient $S_N = \sum_{n=1}^N u_n$ et $T_J = \sum_{j=0}^J 2^j u_{2^j}$.

($\Leftarrow$) Supposons $\sum 2^j u_{2^j}$ converge. Pour $N$, choisissons $J$ tel que $N < 2^{J+1}$.

$$ S_N = \sum_{n=1}^N u_n \le \sum_{n=1}^{2^{J+1}-1} u_n = u_1 + \sum_{j=1}^J \sum_{n=2^j}^{2^{j+1}-1} u_n. $$

Puisque $(u_n)$ décroît, $\sum_{n=2^j}^{2^{j+1}-1} u_n \le \sum_{n=2^j}^{2^{j+1}-1} u_{2^j} = (2^{j+1}-2^j) u_{2^j} = 2^j u_{2^j}$.

Donc $S_N \le u_1 + \sum_{j=1}^J 2^j u_{2^j} \le u_1 + T_\infty$. La suite $(S_N)$ est croissante et majorée, donc elle converge.

($\Rightarrow$) Supposons $\sum u_n$ converge.

$$ T_J = \sum_{j=0}^J 2^j u_{2^j} = u_1 + 2u_2 + 4u_4 + \dots + 2^J u_{2^J}. $$

On a $2u_2 \le 2u_2$, $4u_4 \le 2(u_3+u_4)$, et en général $2^j u_{2^j} \le 2 \sum_{n=2^{j-1}+1}^{2^j} u_n$.

$$ T_J \le u_1 + 2 \sum_{n=2}^2 u_n + 2 \sum_{n=3}^4 u_n + \dots + 2 \sum_{n=2^{J-1}+1}^{2^J} u_n = u_1 + 2(S_{2^J} - u_1) \le 2S_\infty - u_1. $$

La suite $(T_J)$ est croissante et majorée, donc elle converge.

#### B. Test de Comparaison par Équivalents

**Proposition 2.4.8 :** Soient $\sum u_n$ et $\sum v_n$ deux séries à termes **strictement positifs** à partir d'un certain rang. Si $u_n \sim_{n\to\infty} v_n$, alors les deux séries sont de même nature.

**Démonstration :**

$u_n \sim v_n$ signifie $\lim_{n \to \infty} \frac{u_n}{v_n} = 1$. Par définition de la limite, pour $\varepsilon = 1/2 > 0$, il existe un rang $N$ tel que pour tout $n > N$:

$$ \left| \frac{u_n}{v_n} - 1 \right| < \frac{1}{2} \implies \frac{1}{2} < \frac{u_n}{v_n} < \frac{3}{2}. $$

$$ \frac{1}{2} v_n < u_n < \frac{3}{2} v_n. $$

- Si $\sum v_n$ converge, alors $\sum \frac{3}{2}v_n$ converge, et par le critère de comparaison, $\sum u_n$ converge.
- Si $\sum v_n$ diverge, alors $\sum \frac{1}{2}v_n$ diverge, et par le critère de comparaison, $\sum u_n$ diverge.

Les séries ont donc même nature.

### Exemples

**Exemple 1 (Test de la loupe) :**

Re-démontrer le critère pour la série de Bertrand $\sum_{n \ge 2} \frac{1}{n(\ln n)^\alpha}$.

Soit $u_n = \frac{1}{n(\ln n)^\alpha}$. La série a même nature que :

$$ \sum_{j=1}^\infty 2^j u_{2^j} = \sum_{j=1}^\infty 2^j \frac{1}{2^j (\ln(2^j))^\alpha} = \sum_{j=1}^\infty \frac{1}{(j \ln 2)^\alpha} = \frac{1}{(\ln 2)^\alpha} \sum_{j=1}^\infty \frac{1}{j^\alpha}. $$

Ceci est une série de Riemann en $j$, qui converge si et seulement si $\alpha > 1$.

**Exemple 2 (Test des équivalents) :**

Nature de la série de terme général $u_n = \ln(1 + \frac{1}{n^2})$.

Pour $n \to \infty$, $\frac{1}{n^2} \to 0$. On sait que $\ln(1+x) \sim_0 x$. Donc :

$$ u_n = \ln(1 + \frac{1}{n^2}) \sim_{n\to\infty} \frac{1}{n^2}. $$

Puisque la série de Riemann $\sum \frac{1}{n^2}$ converge ($\alpha=2>1$), la série $\sum u_n$ converge.

**Exemple 3 (Test des équivalents) :**

Nature de $v_n = \frac{1 - \cos(\frac{1}{\sqrt{n \ln n}})}{\sin \frac{1}{n}}$.

Pour $n \to \infty$, on utilise les développements limités :

$1 - \cos(x) \sim_0 \frac{x^2}{2}$ et $\sin(x) \sim_0 x$.

$$ 1 - \cos(\frac{1}{\sqrt{n \ln n}}) \sim_{n\to\infty} \frac{1}{2} \left(\frac{1}{\sqrt{n \ln n}}\right)^2 = \frac{1}{2n \ln n}. $$

$$ \sin(\frac{1}{n}) \sim_{n\to\infty} \frac{1}{n}. $$

Par quotient d'équivalents :

$$ v_n \sim_{n\to\infty} \frac{\frac{1}{2n \ln n}}{\frac{1}{n}} = \frac{1}{2 \ln n}. $$

La série $\sum \frac{1}{2 \ln n}$ diverge, car pour $n \ge 3$, $\ln n < n \implies \frac{1}{2 \ln n} > \frac{1}{2n}$, et la série harmonique $\sum \frac{1}{n}$ diverge. Donc $\sum v_n$ diverge.

### Contre-exemples

1.  **Non-positivité :** Le test des équivalents ne s'applique pas aux séries de signe quelconque. Soit $u_n = \frac{(-1)^n}{\sqrt{n}}$ et $v_n = \frac{(-1)^n}{\sqrt{n}} + \frac{1}{n}$. On a $u_n \sim v_n$. Pourtant, $\sum u_n$ converge (série alternée) alors que $\sum v_n$ diverge (somme d'une série convergente et d'une série divergente).
2.  **Suite non décroissante :** Le test de la loupe ne s'applique pas si la suite n'est pas décroissante. Soit $u_n = 1/n$ si $n=2^k$ et $u_n = 1/n^3$ sinon. Cette suite n'est pas décroissante. La série $\sum u_n$ converge car c'est la somme de $\sum 1/2^k$ (géométrique) et d'une sous-série de $\sum 1/n^3$ (Riemann), toutes deux convergentes. Cependant, la série condensée est $\sum 2^j u_{2^j} = \sum 2^j (1/2^j) = \sum 1$, qui diverge.

### Concepts Liés

- **Critère de Raabe-Duhamel :** Un test plus fin, basé sur l'étude de $n(\frac{u_n}{u_{n+1}}-1)$, utile lorsque le critère de d'Alembert donne une limite de 1.
- **Développements Asymptotiques :** Le test des équivalents est le premier ordre d'une analyse plus fine par développements asymptotiques, comme vu au concept 5.

---

## Concept 4: Critère d'Abel pour Séries à Termes Quelconques

### Prérequis

- Séries à termes complexes
- Critère de Cauchy pour les séries
- Suites bornées, suites monotones

### Définition

**Théorème 2.5.1 (Théorème d'Abel) :** Soit la série $\sum u_n$ où $u_n = a_n b_n$ avec $a_n \in \mathbb{C}$ et $b_n \in \mathbb{R}$. La série converge si les trois conditions suivantes sont remplies :

i) La suite des sommes partielles $(A_n)_{n\in\mathbb{N}}$, où $A_n = \sum_{k=0}^n a_k$, est bornée.

ii) La suite $(b_n)_{n\in\mathbb{N}}$ est décroissante.

iii) $\lim_{n \to \infty} b_n = 0$.

**Démonstration (Transformation d'Abel / Sommation par parties) :**

On utilise le critère de Cauchy. Soit $q > p \ge 0$.

$$ S_{p,q} = \sum_{n=p}^q a_n b_n = \sum_{n=p}^q (A_n - A_{n-1}) b_n \quad (\text{avec } A_{-1}=0) $$

En réorganisant la somme (sommation par parties) :

$$ S_{p,q} = (A_p - A_{p-1})b_p + \dots + (A_q - A_{q-1})b_q $$

$$ S_{p,q} = A_q b_q - A_{p-1}b_p + \sum_{n=p}^{q-1} A_n (b_n - b_{n+1}). $$

Par hypothèse (i), il existe $M>0$ tel que $|A_k| \le M$ pour tout $k$. Puisque $(b_n)$ décroît et est positive (car tend vers 0), $b_n - b_{n+1} \ge 0$.

$$ |S_{p,q}| \le |A_q|b_q + |A_{p-1}|b_p + \sum_{n=p}^{q-1} |A_n|(b_n - b_{n+1}) $$

$$ |S_{p,q}| \le M b_q + M b_p + M \sum_{n=p}^{q-1} (b_n - b_{n+1}). $$

La somme est télescopique : $\sum_{n=p}^{q-1} (b_n - b_{n+1}) = b_p - b_q$.

$$ |S_{p,q}| \le M b_q + M b_p + M (b_p - b_q) = 2Mb_p. $$

Comme $\lim_{p\to\infty} b_p = 0$, pour tout $\varepsilon>0$, il existe $N$ tel que pour $p>N$, $2Mb_p < \varepsilon$. La suite des sommes partielles est donc une suite de Cauchy, et la série converge.

### Propriétés Clés

- **Corollaire (Critère des séries alternées) :** Si $(b_n)$ est une suite réelle positive, décroissante et tendant vers 0, alors la série $\sum (-1)^n b_n$ converge.

  *Preuve :* On pose $a_n = (-1)^n$. Les sommes partielles $A_n = \sum_{k=0}^n (-1)^k$ valent 1 ou 0, donc $|A_n| \le 1$. La suite $(A_n)$ est bornée. Les autres hypothèses du théorème d'Abel sont satisfaites.

- **Corollaire (Séries trigonométriques) :** Si $(b_n)$ est une suite réelle positive, décroissante et tendant vers 0, alors pour tout $\theta \ne 2k\pi$ ($k\in\mathbb{Z}$), la série $\sum b_n e^{in\theta}$ converge.

  *Preuve :* On pose $a_n = e^{in\theta}$. La suite $A_n = \sum_{k=0}^n (e^{i\theta})^k$ est une somme géométrique :

  $$ A_n = \frac{1-e^{i(n+1)\theta}}{1-e^{i\theta}}. $$

  Puisque $\theta \ne 2k\pi$, le dénominateur est non nul. Le numérateur est borné : $|1-e^{i(n+1)\theta}| \le |1| + |e^{i(n+1)\theta}| = 2$. Donc $|A_n| \le \frac{2}{|1-e^{i\theta}|}$. La suite $(A_n)$ est bornée.

- **Majoration du reste :** La preuve donne $|r_{p-1}| = |\sum_{n=p}^\infty a_n b_n| = \lim_{q\to\infty} |S_{p,q}| \le 2Mb_p$. Pour une série alternée, la majoration est plus fine : $|r_n| \le |u_{n+1}| = b_{n+1}$.

### Exemples

**Exemple 1 : Série harmonique alternée**

La série $\sum_{n=1}^\infty \frac{(-1)^n}{n}$ converge. Ici $b_n = 1/n$, qui est positive, décroissante et tend vers 0. Il s'agit d'une série semi-convergente car $\sum 1/n$ diverge.

**Exemple 2 : Série trigonométrique**

La série $\sum_{n=1}^\infty \frac{\cos(n\theta)}{n}$ converge pour $\theta \ne 2k\pi$.

On étudie la partie réelle de $\sum \frac{e^{in\theta}}{n}$. Avec $b_n = 1/n$, la série complexe converge. Une série complexe converge si et seulement si ses parties réelle et imaginaire convergent. Donc $\sum \frac{\cos(n\theta)}{n}$ et $\sum \frac{\sin(n\theta)}{n}$ convergent.

**Exemple 3 : Série alternée plus complexe**

La série $\sum_{n=2}^\infty \frac{(-1)^n}{\ln n}$ converge. On applique le critère des séries alternées avec $b_n = 1/\ln n$. La fonction $x \mapsto \ln x$ est croissante pour $x>0$, donc $b_n$ est décroissante. De plus $\lim_{n\to\infty} b_n = 0$.

### Contre-exemples

1.  **Condition de décroissance essentielle :** Soit la série $\sum u_n$ où $u_{2p} = \frac{1}{p^2}$ et $u_{2p+1} = -\frac{1}{p}$. La suite des modules $|u_n|$ tend vers 0, mais n'est pas décroissante. La série diverge car elle est la somme de $\sum \frac{1}{p^2}$ (convergente) et $-\sum \frac{1}{p}$ (divergente).
2.  **Condition de limite nulle essentielle :** La série $\sum_{n=1}^\infty (-1)^n \frac{n}{n+1}$ diverge. Bien que $a_n=(-1)^n$ ait des sommes partielles bornées et $b_n=\frac{n}{n+1}$ soit (croissante, mais le critère peut être adapté), on a $\lim_{n\to\infty} b_n = 1 \ne 0$. Le terme général $u_n$ ne tend pas vers 0.

### Concepts Liés

- **Critère de Dirichlet :** Le théorème d'Abel est souvent appelé Critère de Dirichlet dans la littérature anglo-saxonne.
- **Convergence uniforme :** Des versions du critère d'Abel existent pour les séries de fonctions, garantissant la convergence uniforme, un concept central en analyse.

---

## Concept 5: Analyse Asymptotique des Séries Numériques

### Prérequis

- Développements limités (Taylor-Young) et notations de Landau ($O, o$)
- Critères de convergence (Riemann, séries alternées, etc.)
- Linéarité de la convergence des séries

### Définition

Cette technique consiste à étudier la nature d'une série $\sum u_n$ en effectuant un développement asymptotique de son terme général $u_n$ lorsque $n \to \infty$. Typiquement, on écrit :

$$ u_n = v_n + w_n + O(z_n) $$

où :

- $\sum v_n$ est le terme principal, souvent une série de nature connue mais non absolument convergente (e.g., série alternée de référence).
- $\sum w_n$ est un terme correctif, souvent absolument convergent.
- $\sum O(z_n)$ est le reste, une série absolument convergente.

La série $\sum u_n$ est alors vue comme la somme de plusieurs séries. Si toutes les séries du développement convergent, $\sum u_n$ converge. Si l'une d'elles diverge et les autres convergent, $\sum u_n$ diverge.

### Propriétés Clés

- **Principe :** Décomposer une série compliquée en une somme de séries plus simples dont la nature est connue.
- **Puissance :** Permet de traiter des cas où les critères standards (ratio, racine, comparaison simple) sont inefficaces.
- **Précision :** L'ordre du développement doit être choisi judicieusement. Un développement trop court peut ne pas être concluant, tandis qu'un développement trop long est inutile. Il faut pousser le développement jusqu'à obtenir un reste dont la série est absolument convergente.

### Exemples

**Exemple 1 : Cas convergent**

Nature de la série $\sum_{n=1}^\infty \frac{(-1)^n}{n+(-1)^n}$.

On factorise par $n$ au dénominateur :

$$ u_n = \frac{(-1)^n}{n} \left(1 + \frac{(-1)^n}{n}\right)^{-1} $$

On utilise le développement limité $(1+x)^\alpha = 1 + \alpha x + O(x^2)$ pour $x \to 0$, avec $x = \frac{(-1)^n}{n}$ et $\alpha=-1$.

$$ u_n = \frac{(-1)^n}{n} \left(1 - \frac{(-1)^n}{n} + O\left(\frac{1}{n^2}\right)\right) = \frac{(-1)^n}{n} - \frac{1}{n^2} + O\left(\frac{1}{n^3}\right). $$

La série $\sum u_n$ est la somme de trois séries :

- $\sum \frac{(-1)^n}{n}$ : série harmonique alternée, convergente.
- $\sum -\frac{1}{n^2}$ : série de Riemann, absolument convergente.
- $\sum O(\frac{1}{n^3})$ : série absolument convergente (par comparaison à $\sum 1/n^3$).

La somme de trois séries convergentes est convergente. Donc $\sum u_n$ converge.

**Exemple 2 : Cas divergent**

Nature de la série $\sum_{n=1}^\infty \frac{(-1)^n}{\sqrt{n}+(-1)^n}$.

De même :

$$ v_n = \frac{(-1)^n}{\sqrt{n}} \left(1 + \frac{(-1)^n}{\sqrt{n}}\right)^{-1} = \frac{(-1)^n}{\sqrt{n}} \left(1 - \frac{(-1)^n}{\sqrt{n}} + O\left(\frac{1}{n}\right)\right) $$

$$ v_n = \frac{(-1)^n}{\sqrt{n}} - \frac{1}{n} + O\left(n^{-3/2}\right). $$

La série $\sum v_n$ est la somme de :

- $\sum \frac{(-1)^n}{\sqrt{n}}$ : série alternée convergente (critère avec $b_n=1/\sqrt{n}$).
- $\sum -\frac{1}{n}$ : série harmonique, divergente.
- $\sum O(n^{-3/2})$ : série absolument convergente (par comparaison à $\sum n^{-3/2}$).

La somme d'une série divergente et de deux séries convergentes est divergente. Donc $\sum v_n$ diverge.

**Exemple 3 : Une étude plus subtile**

Nature de $u_n = \sin\left(\frac{(-1)^n}{\sqrt{n}}\right) - \frac{(-1)^n}{\sqrt{n}}$.

On utilise $\sin(x) = x - \frac{x^3}{6} + O(x^5)$ pour $x \to 0$. Avec $x = \frac{(-1)^n}{\sqrt{n}}$:

$$ u_n = \left(\frac{(-1)^n}{\sqrt{n}} - \frac{1}{6}\left(\frac{(-1)^n}{\sqrt{n}}\right)^3 + O(n^{-5/2})\right) - \frac{(-1)^n}{\sqrt{n}} $$

$$ u_n = -\frac{(-1)^{3n}}{6 n^{3/2}} + O(n^{-5/2}) = \frac{(-1)^{n+1}}{6 n^{3/2}} + O(n^{-5/2}). $$

La série $\sum u_n$ est la somme de $\sum \frac{(-1)^{n+1}}{6 n^{3/2}}$ et $\sum O(n^{-5/2})$. Ces deux séries sont absolument convergentes (Riemann avec $\alpha=3/2 > 1$ et $\alpha=5/2 > 1$). Donc $\sum u_n$ est (absolument) convergente.

### Contre-exemples

1.  **Développement insuffisant :** Si pour l'exemple 2 on s'arrête à $v_n = \frac{(-1)^n}{\sqrt{n}} + O(1/n)$, on ne peut pas conclure. Le reste $O(1/n)$ donne lieu à une série $\sum w_n$ où $|w_n| \le C/n$, ce qui ne garantit pas la convergence.
2.  **Technique non applicable :** Pour la série $\sum \frac{\sin(n)}{n}$, un développement asymptotique n'est pas pertinent car l'oscillation de $\sin(n)$ n'est pas liée à une structure simple en $1/n$. Le critère d'Abel est ici la bonne approche.

### Concepts Liés

- **Séries entières et fonctions analytiques :** Les développements limités sont des versions tronquées des séries de Taylor, qui sont des séries entières.
- **Calcul des équivalents de restes et de sommes partielles :** Cette technique peut être inversée pour trouver un équivalent de la somme partielle ou du reste d'une série en la comparant à une intégrale ou à d'autres séries de référence.

---

## Concept 6: Réarrangement et Sommation par Paquets

### Prérequis

- Bijections de $\mathbb{N}$ dans $\mathbb{N}$ (permutations)
- Convergence absolue et semi-convergence
- Notion de sous-suite

### Définition

#### A. Commutativité des Séries

Une série $\sum u_n$ est dite **commutativement convergente** si pour toute permutation (bijection) $\sigma: \mathbb{N} \to \mathbb{N}$, la série réarrangée $\sum u_{\sigma(n)}$ converge et a la même somme que $\sum u_n$.

**Théorème 2.6.2 (Théorème de réarrangement de Riemann) :**

i) Une série à termes réels ou complexes est absolument convergente si et seulement si elle est commutativement convergente.

ii) Si une série réelle $\sum u_n$ est semi-convergente, alors pour tout $l \in \overline{\mathbb{R}} = \mathbb{R} \cup \{-\infty, +\infty\}$, il existe une permutation $\sigma$ de $\mathbb{N}$ telle que $\sum_{n=0}^\infty u_{\sigma(n)} = l$.

#### B. Associativité des Séries (Sommation par Paquets)

Soit $\sum u_n$ une série. Soit $(p_n)_{n\in\mathbb{N}}$ une suite strictement croissante d'entiers avec $p_{-1}=-1$. La série $\sum v_n$ est une **série de paquets** de $\sum u_n$ si son terme général est $v_k = \sum_{j=p_{k-1}+1}^{p_k} u_j$.

**Théorème 2.6.4 :**

i) Si la série $\sum u_n$ converge vers $S$, alors toute série de paquets $\sum v_k$ converge aussi vers $S$.

ii) La réciproque est fausse en général.

iii) **(Réciproque partielle)** Si $\sum u_n$ est à termes positifs, alors la convergence de $\sum v_k$ implique celle de $\sum u_n$ (vers la même somme).

### Propriétés Clés

- **Structure de l'espace des suites sommables :** L'ensemble des suites $(u_n)$ telles que $\sum |u_n| < \infty$ forme un espace de Banach, noté $\ell^1(\mathbb{N})$. Le théorème de Riemann met en lumière la structure fragile des séries semi-convergentes.
- **Preuve du Théorème de Riemann (ii), esquisse :** Soit $\sum u_n$ semi-convergente. Notons $P$ l'ensemble des termes positifs et $N$ celui des termes négatifs. Les séries $\sum_{p \in P} p$ et $\sum_{n \in N} n$ divergent toutes deux (vers $+\infty$ et $-\infty$ respectivement). Pour atteindre une cible $l > 0$, on somme des termes de $P$ jusqu'à dépasser $l$, puis des termes de $N$ jusqu'à passer sous $l$, puis de nouveau des termes de $P$, etc. Comme $u_n \to 0$, l'amplitude des oscillations autour de $l$ tend vers 0, et la somme partielle de la série réarrangée converge vers $l$.
- **Preuve de la sommation par paquets (i) :** La suite des sommes partielles $(\sigma_n)$ de la série de paquets est $\sigma_n = \sum_{k=0}^n v_k = \sum_{j=0}^{p_n} u_j = s_{p_n}$. C'est donc une sous-suite de la suite des sommes partielles $(s_n)$ de $\sum u_n$. Si $(s_n)$ converge vers $S$, toute sous-suite converge vers $S$.

### Exemples

**Exemple 1 (Réarrangement) :**

Soit la série harmonique alternée $S = \sum_{n=1}^\infty \frac{(-1)^{n+1}}{n} = 1 - \frac{1}{2} + \frac{1}{3} - \frac{1}{4} + \dots = \ln 2$.

Réarrangeons-la en prenant deux termes négatifs pour un terme positif :

$$ S' = \left(1 - \frac{1}{2} - \frac{1}{4}\right) + \left(\frac{1}{3} - \frac{1}{6} - \frac{1}{8}\right) + \left(\frac{1}{5} - \frac{1}{10} - \frac{1}{12}\right) + \dots $$

Le $k$-ième paquet est $v_k = \frac{1}{2k-1} - \frac{1}{2(2k-1)} - \frac{1}{4k} = \frac{1}{2(2k-1)} - \frac{1}{4k}$.

$v_k = \frac{2k - (2k-1)}{4k(2k-1)} = \frac{1}{4k(2k-1)} \sim \frac{1}{8k^2}$. La série de paquets converge, donc la série réarrangée converge. Le calcul montre que $S' = \frac{1}{2}\ln 2$. La somme a changé.

**Exemple 2 (Sommation par paquets valide) :**

Soit la série convergente $\sum_{n=0}^\infty q^n = \frac{1}{1-q}$ pour $|q|<1$. Regroupons les termes par deux:

$v_k = u_{2k} + u_{2k+1} = q^{2k} + q^{2k+1} = q^{2k}(1+q)$.

$\sum_{k=0}^\infty v_k = (1+q) \sum_{k=0}^\infty (q^2)^k = (1+q)\frac{1}{1-q^2} = \frac{1+q}{(1-q)(1+q)} = \frac{1}{1-q}$. La somme est inchangée.

**Exemple 3 (Sommation par paquets invalide) :**

Soit la série divergente de Grandi $\sum_{n=0}^\infty (-1)^n$.

En groupant par paquets de deux: $v_k = u_{2k} + u_{2k+1} = (-1)^{2k} + (-1)^{2k+1} = 1 - 1 = 0$.

La série des paquets $\sum v_k = \sum 0$ converge vers 0.

Mais si on groupe différemment : $u_0 + (u_1+u_2) + (u_3+u_4) + \dots = 1+0+0+\dots = 1$.

La convergence de la série de paquets n'implique pas celle de la série initiale.

### Contre-exemples

1.  **Réarrangement d'une série Absolument Convergente :** La série $\sum \frac{(-1)^n}{n^2}$ est absolument convergente. Tout réarrangement de ses termes convergera vers la même somme.
2.  **Réciproque de la sommation par paquets (termes non positifs) :** L'exemple 3 ci-dessus est un contre-exemple parfait. La série de paquets converge, mais la série originale diverge.

### Concepts Liés

- **Convergence inconditionnelle :** Dans des espaces vectoriels normés de dimension infinie (espaces de Banach), une série est dite inconditionnellement convergente si tous ses réarrangements convergent. Le théorème de Dvoretzky-Rogers stipule que dans un espace de Banach, une série est inconditionnellement convergente si et seulement si elle est absolument convergente.
- **Partition de l'unité :** L'idée de sommer par paquets sur une partition de $\mathbb{N}$ est fondamentale dans de nombreux domaines de l'analyse, notamment en théorie de la mesure.

---

## Concept 7: Séries Doubles et Sommabilité

### Prérequis

- Séries numériques, en particulier séries absolument convergentes
- Suites doubles $(u_{m,n})_{(m,n)\in\mathbb{N}^2}$
- Moyennes arithmétiques

### Définition

#### A. Séries Doubles

Soit une suite double $(u_{m,n})_{(m,n)\in\mathbb{N}^2}$ à valeurs dans $\mathbb{R}$ ou $\mathbb{C}$. On peut essayer de la sommer de plusieurs manières :

- **Somme itérée 1 :** $\sum_{m=0}^\infty \left( \sum_{n=0}^\infty u_{m,n} \right)$, si les séries internes (en $n$) et la série externe (en $m$) convergent.
- **Somme itérée 2 :** $\sum_{n=0}^\infty \left( \sum_{m=0}^\infty u_{m,n} \right)$, si les séries internes (en $m$) et la série externe (en $n$) convergent.
- **Somme "totale" :** La série $\sum_{k=0}^\infty v_k$ est dite sommable si $\sum_{(m,n)\in\mathbb{N}^2} |u_{m,n}| < \infty$.

**Théorème 2.6.6 (Théorème de Fubini pour les séries) :**

Si la "somme des modules" converge, i.e., si $\sum_{m=0}^\infty \left( \sum_{n=0}^\infty |u_{m,n}| \right) < \infty$, alors :

1. Les deux sommes itérées convergent.
2. Elles sont égales : $\sum_{m=0}^\infty \left( \sum_{n=0}^\infty u_{m,n} \right) = \sum_{n=0}^\infty \left( \sum_{m=0}^\infty u_{m,n} \right)$.
3. La famille $(u_{m,n})$ est sommable, et la somme peut être calculée en suivant n'importe quel ordre (par exemple, en sommant sur des carrés croissants $m,n \le N$).

#### B. Sommabilité de Césaro et Théorèmes Taubériens

Soit $\sum u_n$ une série et $s_n = \sum_{k=0}^n u_k$ ses sommes partielles.

- La série est dite **Césaro-sommable** de somme $l$ si la suite des moyennes de Césaro $c_n = \frac{1}{n+1} \sum_{k=0}^n s_k$ converge vers $l$.
- Un **théorème Taubérien** est une forme de réciproque : il donne une condition supplémentaire sur $(u_n)$ sous laquelle la Césaro-sommabilité implique la convergence usuelle.

**Théorème 2.6.7 (Théorème Taubérien de Hardy-Littlewood) :**

Si la série $\sum u_n$ est Césaro-sommable vers $l$ et si $u_n = O(1/n)$, alors la série $\sum u_n$ converge (au sens usuel) vers $l$.

### Exemples

**Exemple 1 (Fubini) :**

Soit $u_{m,n} = q^{m+n}$ pour $|q|<1$ et $m,n \ge 0$. C'est une série à termes positifs.

$\sum_{n=0}^\infty |q^{m+n}| = |q|^m \sum_{n=0}^\infty |q|^n = \frac{|q|^m}{1-|q|}$.

$\sum_{m=0}^\infty \left(\sum_{n=0}^\infty |q^{m+n}|\right) = \frac{1}{1-|q|} \sum_{m=0}^\infty |q|^m = \frac{1}{(1-|q|)^2} < \infty$.

L'hypothèse de Fubini est vérifiée. On peut intervertir :

$$ \sum_{m=0}^\infty \left(\sum_{n=0}^\infty q^{m+n}\right) = \sum_{m=0}^\infty \frac{q^m}{1-q} = \frac{1}{(1-q)^2}. $$

$$ \sum_{n=0}^\infty \left(\sum_{m=0}^\infty q^{m+n}\right) = \sum_{n=0}^\infty \frac{q^n}{1-q} = \frac{1}{(1-q)^2}. $$

**Exemple 2 (Césaro-sommabilité) :**

Soit la série de Grandi $\sum_{n=0}^\infty (-1)^n$. Les sommes partielles sont $s_n = (1, 0, 1, 0, 1, \dots)$. La série diverge.

Calculons les moyennes de Césaro :

$c_n = \frac{1}{n+1} \sum_{k=0}^n s_k$.

Si $n$ est impair, $n=2p-1$, on a $p$ termes '1' et $p$ termes '0'. $\sum s_k = p$. $c_{2p-1} = \frac{p}{2p} = \frac{1}{2}$.

Si $n$ est pair, $n=2p$, on a $p+1$ termes '1' et $p$ termes '0'. $\sum s_k = p+1$. $c_{2p} = \frac{p+1}{2p+1} \to \frac{1}{2}$.

Donc $\lim_{n\to\infty} c_n = 1/2$. La série est Césaro-sommable vers 1/2.

**Exemple 3 (Théorème Taubérien) :**

La série $\sum_{n=1}^\infty \frac{(-1)^{n-1}}{n}$ converge vers $\ln 2$. Elle est donc Césaro-sommable vers $\ln 2$. Elle satisfait la condition taubérienne $u_n = O(1/n)$. Le théorème de Hardy-Littlewood confirme que la Césaro-sommabilité implique la convergence.

### Contre-exemples

1.  **Échec de Fubini :** Soit la suite double définie par $u_{n,n}=1$, $u_{n,n+1}=-1$ pour $n \ge 0$, et $u_{m,n}=0$ sinon.
    - Somme par lignes : Pour $m$ fixé, $\sum_n u_{m,n} = u_{m,m} + u_{m,m+1} = 1 - 1 = 0$. Donc $\sum_m (\sum_n u_{m,n}) = \sum_m 0 = 0$.
    - Somme par colonnes : Pour $n=0$, $\sum_m u_{m,0} = u_{0,0} = 1$. Pour $n > 0$, $\sum_m u_{m,n} = u_{n,n} + u_{n-1,n} = 1 - 1 = 0$. Donc $\sum_n (\sum_m u_{m,n}) = 1+0+0+\dots=1$.

    Les sommes sont différentes. L'hypothèse de Fubini n'est pas vérifiée car $\sum_{m,n} |u_{m,n}|$ est la somme de 2 pour chaque $n$, donc diverge.

2.  **Réciproque fausse pour Césaro :** La série de Grandi (Exemple 2) est Césaro-sommable mais ne converge pas. La condition taubérienne $u_n=O(1/n)$ n'est pas vérifiée car $|u_n|=1 \ne O(1/n)$.

### Concepts Liés

- **Théorèmes de Fubini-Tonelli en théorie de la mesure :** Le théorème de Fubini pour les séries est un cas particulier discret du théorème plus général pour les intégrales de Lebesgue sur des espaces produits.
- **Autres méthodes de sommation :** La sommabilité de Césaro est une méthode parmi d'autres (sommation d'Abel, de Borel...) utilisées en analyse pour assigner une valeur à des séries divergentes, avec des applications importantes en physique théorique (e.g., régularisation).
- **Produit de Cauchy de deux séries :** La multiplication de deux séries $\sum a_n$ et $\sum b_n$ donne une série double $u_{m,n}=a_m b_n$. Le théorème de Fubini (via le théorème de Mertens) garantit que si les deux séries convergent absolument, leur produit de Cauchy converge vers le produit de leurs sommes.
