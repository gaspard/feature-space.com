---
id: 4e4905b1
type: concepts
order: 10
title: Séries Numériques (suite) - concepts (A)
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
level: regular
createdAt: '2025-10-12T17:44:18.176Z'
---
# Séries Numériques (suite) (A)

---

## Concept 1: Intégrale Généralisée (ou Impropore)

### Prérequis

-   **Intégrale de Riemann :** Compréhension de l'intégrale d'une fonction continue (ou continue par morceaux) sur un intervalle fermé et borné $[a, b]$, notée $\int_a^b f(t)dt$.
-   **Calcul de primitives :** Maîtrise des techniques de base pour trouver une primitive d'une fonction.
-   **Limites de fonctions :** Savoir calculer la limite d'une fonction en un point ou en l'infini.

### Définition

Une intégrale généralisée étend la notion d'intégrale de Riemann à des cas où soit l'intervalle d'intégration n'est pas borné, soit la fonction à intégrer n'est pas bornée sur l'intervalle.

Il y a deux cas principaux :

1.  **Intégrale sur un intervalle non borné :** Soit $f$ une fonction continue par morceaux sur $[a, +\infty[$. L'intégrale généralisée de $f$ de $a$ à $+\infty$ est définie comme la limite, si elle existe et est finie, de l'intégrale sur $[a, b]$ lorsque $b$ tend vers $+\infty$.

    $$ \int_a^{+\infty} f(t)dt = \lim_{b \to +\infty} \int_a^b f(t)dt $$

    De même, sur $]-\infty, b]$, on définit :

    $$ \int_{-\infty}^{b} f(t)dt = \lim_{a \to -\infty} \int_a^b f(t)dt $$

    Si la limite est un nombre réel fini, on dit que l'intégrale **converge**. Sinon, on dit qu'elle **diverge**.

2.  **Intégrale d'une fonction non bornée en une borne :** Soit $f$ une fonction continue par morceaux sur $]a, b]$ (le problème étant en $a$). L'intégrale généralisée de $f$ sur $]a, b]$ est définie comme la limite, si elle existe et est finie, de l'intégrale sur $[a+\varepsilon, b]$ lorsque $\varepsilon$ tend vers $0^+$.

    $$ \int_a^b f(t)dt = \lim_{\varepsilon \to 0^+} \int_{a+\varepsilon}^b f(t)dt $$

    Si la limite est un nombre réel fini, l'intégrale **converge**. Sinon, elle **diverge**.

**Cas d'une intégrale doublement généralisée :** Une intégrale comme $\int_{-\infty}^{+\infty} f(t)dt$ converge si et seulement si, pour un $c \in \mathbb{R}$ quelconque, les deux intégrales $\int_{-\infty}^c f(t)dt$ et $\int_c^{+\infty} f(t)dt$ convergent. Sa valeur est alors la somme des deux.

### Explications Détaillées

L'intégrale de Riemann $\int_a^b f(t)dt$ calcule l'aire (algébrique) sous la courbe de $f$ sur un segment fini $[a, b]$. L'intégrale généralisée cherche à répondre à la question : "Peut-on calculer l'aire sous une courbe sur une longueur infinie, ou lorsque la courbe s'envole vers l'infini à un certain point ?".

Intuitivement, pour calculer l'aire sur $[a, +\infty[$, on calcule l'aire sur un segment de plus en plus grand $[a, b]$ et on regarde si cette aire se "stabilise" vers une valeur finie à mesure que $b$ grandit. Si c'est le cas, l'intégrale converge. Sinon, elle diverge (souvent parce que l'aire accumulée devient infinie).

Le même raisonnement s'applique quand la fonction n'est pas définie ou tend vers l'infini en un point, par exemple en $a$. On "rogne" l'intervalle d'un petit morceau $]a, a+\varepsilon]$ où la fonction pose problème, on calcule l'intégrale sur le reste $[a+\varepsilon, b]$, puis on observe ce qui se passe quand on fait tendre la taille du morceau rogné $\varepsilon$ vers zéro.

**Attention importante :** Pour une intégrale sur $\mathbb{R}$ entier, comme $\int_{-\infty}^{+\infty} f(t)dt$, il est crucial d'étudier les deux bornes *séparément*. La limite $\lim_{A \to +\infty} \int_{-A}^A f(t)dt$ (appelée valeur principale de Cauchy) peut exister même si l'intégrale diverge. C'est le cas pour $f(t)=t$, où les aires négative et positive se compensent symétriquement, mais où chaque "moitié" de l'aire est infinie.

### Propriétés Clés

-   **Linéarité :** Si $\int f$ et $\int g$ convergent, alors $\int (\lambda f + \mu g)$ converge et $\int (\lambda f + \mu g) = \lambda \int f + \mu \int g$.
-   **Relation de Chasles :** Pour tout $c$ dans l'intervalle d'intégration, $\int_a^b f(t)dt = \int_a^c f(t)dt + \int_c^b f(t)dt$, à condition que toutes les intégrales en jeu aient un sens.
-   **Monotonie :** Si $0 \le f(t) \le g(t)$ sur l'intervalle, et si $\int g(t)dt$ converge, alors $\int f(t)dt$ converge. Si $\int f(t)dt$ diverge, alors $\int g(t)dt$ diverge.
-   **Convergence absolue :** Si $\int |f(t)|dt$ converge (on dit que l'intégrale est *absolument convergente*), alors $\int f(t)dt$ converge. La réciproque est fausse.

### Exemples

**Exemple 1 : Intégrale de Riemann convergente en $+\infty$**

Étudions la convergence de $\int_1^{+\infty} \frac{1}{t^2} dt$.

La fonction $f(t) = 1/t^2$ est continue sur $[1, +\infty[$.

On calcule d'abord l'intégrale sur $[1, b]$ pour $b > 1$ :

$$ \int_1^b \frac{1}{t^2} dt = \left[ -\frac{1}{t} \right]_1^b = \left(-\frac{1}{b}\right) - \left(-\frac{1}{1}\right) = 1 - \frac{1}{b} $$

Ensuite, on prend la limite lorsque $b \to +\infty$ :

$$ \lim_{b \to +\infty} \left(1 - \frac{1}{b}\right) = 1 - 0 = 1 $$

La limite est finie, donc l'intégrale converge et sa valeur est 1.

**Exemple 2 : Intégrale de Riemann divergente en $+\infty$**

Étudions la convergence de $\int_1^{+\infty} \frac{1}{t} dt$.

La fonction $f(t) = 1/t$ est continue sur $[1, +\infty[$.

$$ \int_1^b \frac{1}{t} dt = \left[ \ln(t) \right]_1^b = \ln(b) - \ln(1) = \ln(b) $$

On prend la limite lorsque $b \to +\infty$ :

$$ \lim_{b \to +\infty} \ln(b) = +\infty $$

La limite n'est pas finie, donc l'intégrale diverge.

**Exemple 3 : Intégrale convergente avec une borne "problématique"**

Étudions la convergence de $\int_0^1 \frac{1}{\sqrt{t}} dt$. Le problème est en $0$ car la fonction tend vers $+\infty$.

On intègre sur $[\varepsilon, 1]$ pour $\varepsilon > 0$ :

$$ \int_\varepsilon^1 t^{-1/2} dt = \left[ 2t^{1/2} \right]_\varepsilon^1 = [2\sqrt{t}]_\varepsilon^1 = 2\sqrt{1} - 2\sqrt{\varepsilon} = 2 - 2\sqrt{\varepsilon} $$

On prend la limite lorsque $\varepsilon \to 0^+$ :

$$ \lim_{\varepsilon \to 0^+} (2 - 2\sqrt{\varepsilon}) = 2 - 0 = 2 $$

La limite est finie, donc l'intégrale converge et vaut 2.

### Contre-exemples

**Contre-exemple 1 : Divergence en une borne finie**

L'intégrale $\int_0^1 \frac{1}{t^2} dt$ diverge.

$$ \int_\varepsilon^1 \frac{1}{t^2} dt = \left[ -\frac{1}{t} \right]_\varepsilon^1 = -1 - (-\frac{1}{\varepsilon}) = \frac{1}{\varepsilon} - 1 $$

$$ \lim_{\varepsilon \to 0^+} \left(\frac{1}{\varepsilon} - 1\right) = +\infty $$

L'intégrale diverge.

**Contre-exemple 2 : Le piège de la compensation symétrique**

Considérons $\int_{-\infty}^{+\infty} t dt$. Si on calcule abusivement $\lim_{A \to +\infty} \int_{-A}^A t dt$ :

$$ \int_{-A}^A t dt = \left[ \frac{t^2}{2} \right]_{-A}^A = \frac{A^2}{2} - \frac{(-A)^2}{2} = 0 $$

La limite est 0. Cependant, pour que l'intégrale converge, il faut que $\int_0^{+\infty} t dt$ ET $\int_{-\infty}^0 t dt$ convergent. Or :

$$ \int_0^{+\infty} t dt = \lim_{b \to +\infty} \left[\frac{t^2}{2}\right]_0^b = \lim_{b \to +\infty} \frac{b^2}{2} = +\infty $$

Cette intégrale diverge, donc $\int_{-\infty}^{+\infty} t dt$ diverge, même si sa valeur principale de Cauchy est nulle.

### Concepts Connexes

-   **Séries numériques :** Il existe une forte analogie entre la convergence des séries et celle des intégrales. Le critère de comparaison série-intégrale formalise ce lien.
-   **Critères de convergence pour les intégrales :** Tout comme pour les séries, il existe des critères (comparaison, équivalence) pour déterminer la nature d'une intégrale généralisée sans calculer sa valeur.

---

## Concept 2: Critère de Comparaison Série-Intégrale

### Prérequis

-   **Séries numériques à termes positifs :** Connaissance de la définition de la convergence d'une série et des critères de comparaison.
-   **Intégrale généralisée :** Savoir définir et déterminer la nature (convergence/divergence) d'une intégrale généralisée.
-   **Fonctions monotones :** Comprendre la notion de fonction croissante ou décroissante.

### Définition

Soit $f$ une fonction définie sur $[a, +\infty[$ (avec $a \in \mathbb{R}$) qui vérifie les trois hypothèses suivantes :

1.  **Continuité :** $f$ est continue (ou au moins continue par morceaux).
2.  **Positivité :** $f(t) \ge 0$ pour tout $t \ge a$.
3.  **Décroissance :** $f$ est décroissante sur $[a, +\infty[$.

Alors, la série numérique $\sum_{n \ge a} f(n)$ et l'intégrale généralisée $\int_a^{+\infty} f(t)dt$ sont de même nature.

C'est-à-dire :

$$ \text{La série } \sum_{n=N}^\infty f(n) \text{ converge} \quad \Longleftrightarrow \quad \text{L'intégrale } \int_N^{+\infty} f(t)dt \text{ converge} $$

où $N$ est un entier tel que $N \ge a$.

### Explications Détaillées

Ce critère établit un pont fondamental entre les sommes discrètes (séries) et les sommes continues (intégrales). L'idée intuitive se visualise très bien.

Considérons la série $\sum f(n)$ et l'intégrale $\int f(t)dt$. On peut interpréter la somme partielle $\sum_{k=1}^n f(k)$ comme l'aire d'une collection de rectangles de largeur 1 et de hauteur $f(k)$.

Comme la fonction $f$ est décroissante, pour tout entier $k \ge 1$, sur l'intervalle $[k, k+1]$, on a $f(k+1) \le f(t) \le f(k)$.

En intégrant cette inégalité sur $[k, k+1]$, on obtient :

$$ \int_k^{k+1} f(k+1) dt \le \int_k^{k+1} f(t) dt \le \int_k^{k+1} f(k) dt $$

$$ f(k+1) \le \int_k^{k+1} f(t) dt \le f(k) $$

-   La première inégalité $\int_k^{k+1} f(t) dt \le f(k)$ signifie que l'aire sous la courbe entre $k$ et $k+1$ est plus petite que l'aire du rectangle de hauteur $f(k)$ (rectangle "par-dessus").
-   La deuxième inégalité $f(k+1) \le \int_k^{k+1} f(t) dt$ signifie que l'aire sous la courbe est plus grande que l'aire du rectangle de hauteur $f(k+1)$ (rectangle "par-dessous").

En sommant ces inégalités pour $k$ de $N$ à $M-1$, on peut encadrer la somme partielle de la série par deux intégrales (et vice-versa), ce qui montre que si l'un des deux (la somme ou l'intégrale) est borné, l'autre l'est aussi. Comme il s'agit de termes/fonctions positifs, être borné équivaut à converger.

Ce critère est extrêmement puissant pour déterminer la nature de séries de référence, comme les séries de Riemann.

### Propriétés Clés

-   **Encadrement de la somme partielle :** Sous les hypothèses du théorème, pour $n > N$:

    $$ \int_N^{n+1} f(t)dt \le \sum_{k=N}^n f(k) \le f(N) + \int_N^n f(t)dt $$

-   **Estimation du reste (Corollaire) :** Si la série et l'intégrale convergent, le reste d'ordre $n$ de la série, $R_n = \sum_{k=n+1}^\infty f(k)$, peut être encadré par des intégrales :

    $$ \int_{n+1}^{+\infty} f(t)dt \le R_n \le \int_n^{+\infty} f(t)dt $$

    Cette propriété est très utile pour estimer la vitesse de convergence d'une série et pour obtenir des approximations de sa somme avec une erreur contrôlée.

### Exemples

**Exemple 1 : Séries de Riemann $\sum \frac{1}{n^\alpha}$**

Soit la série $\sum_{n=1}^\infty \frac{1}{n^\alpha}$ avec $\alpha > 0$.

On pose $f(t) = \frac{1}{t^\alpha}$ sur $[1, +\infty[$.

-   **Continuité :** $f$ est continue sur $[1, +\infty[$.
-   **Positivité :** Si $t \ge 1$, $t^\alpha > 0$ donc $f(t) > 0$.
-   **Décroissance :** $f'(t) = -\alpha t^{-\alpha-1} = -\frac{\alpha}{t^{\alpha+1}} < 0$ pour $t \ge 1$. Donc $f$ est décroissante.

Les hypothèses sont vérifiées. La série a la même nature que l'intégrale $\int_1^{+\infty} \frac{1}{t^\alpha} dt$.

-   Si $\alpha \neq 1$: $\int_1^b \frac{dt}{t^\alpha} = \left[\frac{t^{1-\alpha}}{1-\alpha}\right]_1^b = \frac{b^{1-\alpha}-1}{1-\alpha}$. La limite quand $b\to+\infty$ est finie si et seulement si $1-\alpha < 0$, c'est-à-dire $\alpha > 1$.
-   Si $\alpha = 1$: $\int_1^b \frac{dt}{t} = [\ln(t)]_1^b = \ln(b)$. La limite quand $b\to+\infty$ est $+\infty$.

**Conclusion :** La série de Riemann $\sum \frac{1}{n^\alpha}$ converge si et seulement si $\alpha > 1$.

**Exemple 2 : Séries de Bertrand $\sum \frac{1}{n(\ln n)^\alpha}$**

Soit la série $\sum_{n=2}^\infty \frac{1}{n(\ln n)^\alpha}$ avec $\alpha > 0$.

On pose $f(t) = \frac{1}{t(\ln t)^\alpha}$ sur $[2, +\infty[$. Cette fonction est continue, positive et décroissante.

La série a la même nature que $\int_2^{+\infty} \frac{dt}{t(\ln t)^\alpha}$. On fait le changement de variable $u = \ln t$, donc $du = dt/t$.

$$ \int_{\ln 2}^{+\infty} \frac{du}{u^\alpha} $$

D'après l'exemple 1, cette intégrale converge si et seulement si $\alpha > 1$.

**Conclusion :** La série de Bertrand $\sum \frac{1}{n(\ln n)^\alpha}$ converge si et seulement si $\alpha > 1$.

**Exemple 3 : Estimation d'un reste**

Pour la série convergente $\sum_{n=1}^\infty \frac{1}{n^2}$, quel est l'ordre de grandeur du reste $R_{10}$ ?

$R_{10} = \sum_{k=11}^\infty \frac{1}{k^2}$. On utilise l'encadrement du reste avec $f(t)=1/t^2$.

$$ \int_{11}^{+\infty} \frac{1}{t^2}dt \le R_{10} \le \int_{10}^{+\infty} \frac{1}{t^2}dt $$

Calculons les bornes :

$\int_N^{+\infty} \frac{1}{t^2}dt = \lim_{b\to\infty} [-\frac{1}{t}]_N^b = \frac{1}{N}$.

Donc :

$$ \frac{1}{11} \le R_{10} \le \frac{1}{10} $$

Le reste est compris entre $0.0909...$ et $0.1$.

### Contre-exemples

**Contre-exemple 1 : Fonction non décroissante**

Soit $u_n = \frac{2+\sin(n)}{n^2}$. La série $\sum u_n$ converge par comparaison, car $0 < u_n \le \frac{3}{n^2}$.

Cependant, la fonction associée $f(t)=\frac{2+\sin(t)}{t^2}$ n'est pas décroissante à cause des oscillations du sinus. Le critère série-intégrale ne s'applique pas directement, même si l'intégrale $\int_1^\infty f(t)dt$ converge aussi.

**Contre-exemple 2 : Fonction non positive**

Soit $u_n = \frac{(-1)^n}{n}$. La série converge (série alternée).

La fonction associée $f(t) = \frac{\cos(\pi t)}{t}$ change de signe. Le critère ne s'applique donc pas. L'intégrale $\int_1^\infty \frac{\cos(\pi t)}{t} dt$ converge aussi, mais le critère ne permet pas de le prouver.

### Concepts Connexes

-   **Séries de Riemann et de Bertrand :** Ce sont les applications les plus directes et importantes de ce critère. Elles fournissent une échelle de référence pour les critères de comparaison.
-   **Développement asymptotique :** L'encadrement obtenu dans la démonstration peut être affiné pour donner un équivalent de la somme partielle ou du reste.

---

## Concept 3: Critère des Équivalents pour les Séries

### Prérequis

-   **Suites équivalentes :** Définition de $u_n \sim v_n$ quand $n \to +\infty$, qui signifie $\lim_{n \to \infty} \frac{u_n}{v_n} = 1$.
-   **Séries à termes positifs :** Connaissance des bases sur les séries dont les termes sont positifs.
-   **Critère de comparaison :** Si $0 \le u_n \le K v_n$ à partir d'un certain rang, la convergence de $\sum v_n$ implique celle de $\sum u_n$.
-   **Séries de référence :** Connaître la nature des séries de Riemann, géométriques, etc.

### Définition

Soient $(u_n)_{n \in \mathbb{N}}$ et $(v_n)_{n \in \mathbb{N}}$ deux suites à **termes positifs** à partir d'un certain rang $N_0$.

On suppose que $u_n \sim v_n$ lorsque $n \to +\infty$.

Alors les séries $\sum u_n$ et $\sum v_n$ sont de même nature.

C'est-à-dire :

$$ \left( \sum u_n \text{ converge} \right) \Longleftrightarrow \left( \sum v_n \text{ converge} \right) $$

### Explications Détaillées

Ce critère est l'un des outils les plus pratiques pour étudier la nature d'une série. L'idée fondamentale est que la convergence d'une série dépend du comportement de ses termes "à l'infini" (pour les grandes valeurs de $n$). Si deux suites $u_n$ et $v_n$ sont équivalentes, cela signifie que pour $n$ très grand, $u_n$ est "presque égal" à $v_n$. Il est donc naturel que la somme de leurs termes ait le même comportement : soit les deux explosent (divergence), soit les deux se stabilisent (convergence).

La démonstration formalise cette intuition. Par définition de $u_n \sim v_n$, pour tout $\varepsilon > 0$, il existe un rang $N$ tel que pour $n > N$ :

$$ 1 - \varepsilon < \frac{u_n}{v_n} < 1 + \varepsilon $$

En choisissant par exemple $\varepsilon = 1/2$, on obtient pour $n>N$ :

$$ \frac{1}{2} v_n < u_n < \frac{3}{2} v_n $$

On est alors ramené au critère de comparaison classique.

-   Si $\sum v_n$ converge, alors $\sum \frac{3}{2} v_n$ converge aussi, et comme $u_n < \frac{3}{2} v_n$, $\sum u_n$ converge.
-   Si $\sum u_n$ converge, alors comme $\frac{1}{2} v_n < u_n$ (ou $v_n < 2 u_n$), $\sum v_n$ converge.

**Comment trouver un équivalent ?** La méthode la plus courante est d'utiliser les développements limités ou les équivalents usuels au voisinage de 0. Si le terme général $u_n$ est de la forme $f(x_n)$ avec $x_n \to 0$, on cherche un équivalent de $f(x)$ en 0.

### Propriétés Clés

-   **Condition de positivité :** Ce critère ne s'applique **que** pour les séries à termes de signe constant (positif ou négatif) à partir d'un certain rang. Pour les séries à termes de signe quelconque, il est faux.
-   **Pas d'équivalence pour les sommes :** Si $\sum u_n$ et $\sum v_n$ convergent et $u_n \sim v_n$, on a en général $\sum_{n=0}^\infty u_n \neq \sum_{n=0}^\infty v_n$.
-   **Équivalence des restes :** Cependant, si les séries convergent, on peut montrer que leurs restes sont équivalents : $R_n = \sum_{k=n+1}^\infty u_k \sim \sum_{k=n+1}^\infty v_k = R'_n$.

### Exemples

**Exemple 1 : Utilisation de $\ln(1+x)$**

Étudions la nature de la série de terme général $u_n = \ln\left(1 + \frac{1}{n^2}\right)$ pour $n \ge 1$.

Les termes sont positifs. On a $\frac{1}{n^2} \to 0$ quand $n \to +\infty$.

On utilise l'équivalent usuel $\ln(1+x) \sim x$ quand $x \to 0$.

En posant $x = \frac{1}{n^2}$, on obtient :

$$ u_n = \ln\left(1 + \frac{1}{n^2}\right) \sim \frac{1}{n^2} $$

La série de Riemann $\sum \frac{1}{n^2}$ converge (car $\alpha=2 > 1$).

Donc, par le critère des équivalents, la série $\sum u_n$ converge.

**Exemple 2 : Utilisation de $\cos(x)$ et $\sin(x)$**

Étudions la nature de $v_n = \frac{1 - \cos(\frac{1}{n})}{\sin(\frac{1}{n^2})}$.

Les termes sont positifs pour $n$ assez grand. On utilise les équivalents :

-   $1-\cos(x) \sim \frac{x^2}{2}$ quand $x \to 0$. Avec $x=1/n$, on a $1 - \cos(\frac{1}{n}) \sim \frac{1}{2n^2}$.
-   $\sin(x) \sim x$ quand $x \to 0$. Avec $x=1/n^2$, on a $\sin(\frac{1}{n^2}) \sim \frac{1}{n^2}$.

Donc,

$$ v_n \sim \frac{\frac{1}{2n^2}}{\frac{1}{n^2}} = \frac{1}{2} $$

Le terme général $v_n$ tend vers $1/2 \neq 0$. La série $\sum v_n$ diverge grossièrement.

**Exemple 3 : Équivalent plus complexe**

Étudions la nature de la série de terme général $u_n = \sin\left(\frac{\pi}{n}\right) - \frac{\pi}{n}$.

Pour $n \ge 2$, $\frac{\pi}{n} \in ]0, \pi]$, donc $\sin(\frac{\pi}{n}) > 0$. Mais $u_n$ est négatif. On étudie donc $\sum (-u_n) = \sum (\frac{\pi}{n} - \sin(\frac{\pi}{n}))$. Les termes sont positifs.

On utilise un développement limité de $\sin(x)$ en 0 : $\sin(x) = x - \frac{x^3}{6} + o(x^3)$.

Avec $x = \pi/n$ :

$$ \frac{\pi}{n} - \sin\left(\frac{\pi}{n}\right) = \frac{\pi}{n} - \left(\frac{\pi}{n} - \frac{(\pi/n)^3}{6} + o\left(\frac{1}{n^3}\right)\right) = \frac{\pi^3}{6n^3} + o\left(\frac{1}{n^3}\right) $$

Donc, $-u_n \sim \frac{\pi^3}{6n^3}$.

La série $\sum \frac{\pi^3}{6n^3} = \frac{\pi^3}{6} \sum \frac{1}{n^3}$ est une série de Riemann avec $\alpha=3 > 1$, elle converge.

Par le critère des équivalents, la série $\sum (-u_n)$ converge, donc $\sum u_n$ converge aussi.

### Contre-exemples

**Contre-exemple 1 : Séries non à termes positifs**

Soit $u_n = \frac{(-1)^n}{\sqrt{n}}$ et $v_n = \frac{(-1)^n}{\sqrt{n}} + \frac{1}{n}$.

La série $\sum u_n$ converge (série alternée).

Calculons la limite du rapport :

$$ \frac{v_n}{u_n} = \frac{\frac{(-1)^n}{\sqrt{n}} + \frac{1}{n}}{\frac{(-1)^n}{\sqrt{n}}} = 1 + \frac{\sqrt{n}}{n(-1)^n} = 1 + \frac{(-1)^n}{\sqrt{n}} \xrightarrow[n\to\infty]{} 1 $$

Donc $u_n \sim v_n$.

Cependant, la série $\sum v_n$ est la somme de $\sum \frac{(-1)^n}{\sqrt{n}}$ (convergente) et $\sum \frac{1}{n}$ (divergente). Donc $\sum v_n$ diverge.

Le critère ne s'applique pas car les termes ne sont pas de signe constant.

**Contre-exemple 2 : Un exemple plus subtil**

Soit $u_n = \ln\left(1 + \frac{(-1)^n}{\sqrt{n}}\right)$.

Pour $n$ grand, $u_n = \frac{(-1)^n}{\sqrt{n}} - \frac{1}{2n} + O(n^{-3/2})$.

La série $\sum u_n$ diverge car elle est la somme d'une série convergente ($\sum \frac{(-1)^n}{\sqrt{n}}$), d'une série divergente ($\sum -\frac{1}{2n}$) et d'une série convergente ($\sum O(n^{-3/2})$).

Soit $v_n = \frac{(-1)^n}{\sqrt{n}}$. La série $\sum v_n$ converge.

Pourtant, $\frac{u_n}{v_n} = \sqrt{n}(-1)^n \ln(1 + \frac{(-1)^n}{\sqrt{n}}) = \sqrt{n}(-1)^n (\frac{(-1)^n}{\sqrt{n}} - \frac{1}{2n} + ...) = 1 - \frac{(-1)^n}{2\sqrt{n}} + ... \to 1$.

Donc $u_n \sim v_n$, mais les séries sont de natures différentes. Le critère échoue car les termes ne sont pas positifs.

### Concepts Connexes

-   **Développements limités et asymptotiques :** C'est l'outil principal pour trouver des équivalents de termes généraux complexes.
-   **Critères de comparaison :** Le critère des équivalents est une forme plus puissante et plus simple à utiliser du critère de comparaison par inégalités.

---

## Concept 4: Critère d'Abel et Séries Alternées

### Prérequis

-   **Critère de Cauchy pour les séries :** Une série converge si et seulement si ses sommes partielles forment une suite de Cauchy.
-   **Suites monotones et bornées :** Compréhension de la convergence des suites monotones.
-   **Sommation par parties (Transformation d'Abel) :** Analogue discret de l'intégration par parties.

### Définition

#### Théorème d'Abel (cas général)

Soit une série de terme général $u_n = a_n b_n$, où $(a_n)$ est une suite de nombres complexes et $(b_n)$ est une suite de nombres réels.

La série $\sum u_n$ converge si les trois conditions suivantes sont remplies :

1.  **(Sommes partielles bornées) :** La suite des sommes partielles $A_n = \sum_{k=0}^n a_k$ est bornée. C'est-à-dire, il existe $M > 0$ tel que $|A_n| \le M$ for all $n$.
2.  **(Monotonie) :** La suite $(b_n)$ est décroissante.
3.  **(Convergence vers zéro) :** $\lim_{n \to \infty} b_n = 0$.

#### Critère des Séries Alternées (cas particulier important)

Soit une série de terme général $u_n = (-1)^n b_n$.

La série $\sum u_n$ converge si les deux conditions suivantes sont remplies :

1.  **(Décroissance) :** La suite $(b_n)$ est positive et décroissante.
2.  **(Convergence vers zéro) :** $\lim_{n \to \infty} b_n = 0$.

### Explications Détaillées

Le critère d'Abel est un résultat puissant pour prouver la convergence de séries qui ne sont pas absolument convergentes (dites semi-convergentes). L'intuition est que l'on multiplie une suite $(b_n)$ qui "amortit" les termes (décroissante et tendant vers 0) par une suite $(a_n)$ dont les termes peuvent osciller, mais dont la somme ne "s'échappe" pas (sommes partielles bornées). La décroissance de $(b_n)$ assure que les oscillations successives se compensent de plus en plus précisément, menant à la convergence.

Le critère des séries alternées est le cas le plus célèbre. On prend $a_n = (-1)^n$. Les sommes partielles $A_n = \sum_{k=0}^n (-1)^k$ valent 1, 0, 1, 0, ... et sont donc bornées par 1. Le critère d'Abel s'applique directement.

Pour une série alternée, on peut visualiser la convergence. Les sommes partielles $s_n$ oscillent autour de la somme finale $S$. Les sommes d'indices pairs $(s_{2k})$ forment une suite décroissante, et les sommes d'indices impairs $(s_{2k+1})$ forment une suite croissante. Ces deux suites sont adjacentes et convergent vers la même limite $S$.

$$ s_1 \le s_3 \le \dots \le S \le \dots \le s_2 \le s_0 $$

### Propriétés Clés

-   **Majoration du reste (Critère d'Abel) :** Si les hypothèses sont vérifiées, le reste $R_p = \sum_{k=p+1}^\infty a_k b_k$ est majoré en module par $|R_p| \le 2M b_{p+1}$.
-   **Majoration du reste (Séries alternées) :** C'est un résultat plus simple et très utile. Pour une série alternée qui satisfait le critère, le reste $R_n = S - s_n$ est toujours du signe du premier terme négligé, $u_{n+1}$, et sa valeur absolue est plus petite que celle de ce terme.

    $$ |R_n| = |S - s_n| \le |u_{n+1}| = b_{n+1} $$

    Cela permet une estimation très simple de l'erreur lorsqu'on approxime la somme par une somme partielle.

### Exemples

**Exemple 1 : Série harmonique alternée**

Considérons la série $\sum_{n=1}^\infty \frac{(-1)^{n+1}}{n} = 1 - \frac{1}{2} + \frac{1}{3} - \dots$

Ici, $u_n = (-1)^{n+1} b_n$ avec $b_n = \frac{1}{n}$.

1.  **Décroissance :** La suite $(b_n) = (1/n)_{n\ge 1}$ est positive et clairement décroissante.
2.  **Limite nulle :** $\lim_{n \to \infty} \frac{1}{n} = 0$.

Les deux conditions du critère des séries alternées sont remplies, donc la série converge. (On peut montrer que sa somme est $\ln(2)$).

Elle n'est pas absolument convergente car $\sum \frac{1}{n}$ diverge.

**Exemple 2 : Estimation d'une somme**

Approchons la somme $S = \sum_{n=1}^\infty \frac{(-1)^n}{n^2}$ avec une erreur inférieure à $0.01$.

On utilise la majoration du reste : $|R_n| \le b_{n+1} = \frac{1}{(n+1)^2}$.

On veut $|R_n| \le 0.01$, il suffit donc de trouver $n$ tel que $\frac{1}{(n+1)^2} \le 0.01$.

$$ (n+1)^2 \ge 100 \implies n+1 \ge 10 \implies n \ge 9 $$

Il suffit de calculer la somme partielle $s_9 = \sum_{k=1}^9 \frac{(-1)^k}{k^2}$ pour avoir une approximation de $S$ à $0.01$ près.

**Exemple 3 : Application du critère d'Abel (série trigonométrique)**

Étudions la série $\sum_{n=1}^\infty \frac{\cos(n\theta)}{n}$ pour $\theta \in ]0, 2\pi[$.

C'est la partie réelle de la série $\sum \frac{e^{in\theta}}{n}$.

On pose $a_n = e^{in\theta}$ et $b_n = \frac{1}{n}$.

1.  **Sommes partielles de $a_n$ :** $A_N = \sum_{k=1}^N (e^{i\theta})^k = e^{i\theta} \frac{1-e^{iN\theta}}{1-e^{i\theta}}$.

    Comme $\theta \neq 2k\pi$, le dénominateur n'est pas nul.

    $|A_N| = \left|\frac{1-e^{iN\theta}}{1-e^{i\theta}}\right| \le \frac{|1|+|e^{iN\theta}|}{|1-e^{i\theta}|} = \frac{2}{|1-e^{i\theta}|}$. C'est une constante (qui ne dépend pas de $N$), donc la suite $(A_N)$ est bornée.

2.  **Monotonie de $b_n$ :** $(b_n) = (1/n)$ est décroissante.
3.  **Limite de $b_n$ :** $\lim b_n = 0$.

Les trois conditions du théorème d'Abel sont vérifiées. La série $\sum \frac{e^{in\theta}}{n}$ converge. Par conséquent, sa partie réelle $\sum \frac{\cos(n\theta)}{n}$ et sa partie imaginaire $\sum \frac{\sin(n\theta)}{n}$ convergent aussi.

### Contre-exemples

**Contre-exemple 1 : Suite non décroissante**

Considérons la série alternée définie par $b_{2p} = \frac{1}{p^2}$ et $b_{2p+1} = \frac{1}{p^3}$.

Le terme général $(-1)^n b_n$ tend bien vers 0.

Cependant, la suite $(b_n)$ n'est pas décroissante. Par exemple, $b_3 = 1/1^3=1$ et $b_4 = 1/2^2 = 1/4$. Mais $b_4=1/4$ et $b_5 = 1/2^3 = 1/8$. Mais $b_5=1/8$ et $b_6=1/3^2=1/9$. Le critère ne s'applique pas. (L'étude de cette série est plus complexe).

**Contre-exemple 2 : Suite ne tendant pas vers 0**

La série $\sum_{n=1}^\infty (-1)^n \frac{n}{n+1}$.

La suite $b_n = \frac{n}{n+1}$ est bien positive et croissante (donc pas décroissante), mais surtout $\lim_{n \to \infty} b_n = 1 \neq 0$.

Le terme général $u_n$ ne tend pas vers 0, donc la série diverge grossièrement.

### Concepts Connexes

-   **Convergence absolue vs. semi-convergence :** Ces critères sont l'outil principal pour identifier les séries semi-convergentes.
-   **Séries de Fourier :** Les séries trigonométriques étudiées avec le critère d'Abel sont les briques de base de la théorie des séries de Fourier.

---

## Concept 5: Réarrangement des Termes et Sommation par Paquets

### Prérequis

-   **Séries convergentes :** Définition de la convergence d'une série.
-   **Convergence absolue :** Définition d'une série $\sum u_n$ absolument convergente ($\sum |u_n|$ converge).
-   **Permutations :** Notion de permutation $\sigma$ de l'ensemble $\mathbb{N}$ (une bijection de $\mathbb{N}$ dans lui-même).

### Définition

#### Réarrangement des Termes (Commutativité)

Une série $\sum u_n$ est dite **commutativement convergente** si pour *toute* permutation $\sigma$ de $\mathbb{N}$, la série réarrangée $\sum u_{\sigma(n)}$ converge et a la même somme que $\sum u_n$.

**Théorème de réarrangement de Riemann :**

1.  Une série est **absolument convergente** si et seulement si elle est **commutativement convergente**.
2.  Si une série est **semi-convergente** (convergente mais pas absolument convergente), alors pour n'importe quel réel $L \in \mathbb{R}$, il existe une permutation $\sigma$ de $\mathbb{N}$ telle que la série réarrangée $\sum u_{\sigma(n)}$ converge vers $L$. On peut même la faire diverger vers $+\infty$ ou $-\infty$.

#### Sommation par Paquets (Associativité)

Soit $\sum u_n$ une série. On dit que $\sum v_k$ est une série obtenue par **sommation par paquets** s'il existe une suite d'entiers strictement croissante $(p_k)_{k \in \mathbb{N}}$ avec $p_0=0$ telle que :

$$ v_k = \sum_{n=p_{k-1}+1}^{p_k} u_n $$

Autrement dit, on regroupe les termes de la série initiale en "paquets" successifs.

**Théorème de sommation par paquets :**

1.  Si la série $\sum u_n$ **converge**, alors toute série $\sum v_k$ formée par sommation par paquets converge vers la **même somme**.
2.  La réciproque est **fausse en général**. Cependant, si $\sum u_n$ est une série à **termes positifs**, alors la convergence de la série par paquets $\sum v_k$ implique la convergence de la série initiale $\sum u_n$.

### Explications Détaillées

Ces concepts explorent jusqu'à quel point les propriétés des sommes finies (commutativité et associativité) s'étendent aux sommes infinies. La réponse est : cela dépend crucialement de la **convergence absolue**.

**Commutativité (Réarrangement) :** Pour une somme finie, l'ordre des termes ne change pas le résultat. Pour une série, c'est vrai uniquement si la série converge absolument. Pourquoi ? Une série absolument convergente a une "réserve" finie de valeurs positives et négatives. Peu importe comment on les pioche, le total final sera le même.

En revanche, une série semi-convergente, comme $\sum (-1)^{n+1}/n$, a une somme infinie de termes positifs et une somme infinie de termes négatifs qui s'annulent "juste assez" pour converger. En réarrangeant les termes, on peut puiser plus vite dans les termes positifs pour faire tendre la somme vers $+\infty$, ou au contraire puiser plus dans les négatifs pour la faire tendre vers $-\infty$, ou doser finement pour atteindre n'importe quelle cible $L$.

**Associativité (Sommation par Paquets) :** Regrouper des termes est toujours permis si la série de départ converge. En effet, la somme partielle de la série par paquets est une sous-suite de la suite des sommes partielles de la série initiale. Si une suite converge, toutes ses sous-suites convergent vers la même limite.

La réciproque est délicate. On peut créer artificiellement une convergence par paquets en faisant en sorte que les termes d'un paquet s'annulent, alors que la série de départ diverge. Par exemple, la série $\sum (-1)^n$ diverge. Mais si on fait des paquets de deux : $v_k = u_{2k} + u_{2k+1} = (-1)^{2k} + (-1)^{2k+1} = 1 - 1 = 0$. La série des paquets $\sum v_k = \sum 0$ converge vers 0, mais la série initiale divergeait.

Cette pathologie disparaît pour les séries à termes positifs : si les paquets ont une somme finie, comme rien ne peut s'annuler, la somme totale des termes initiaux doit aussi être finie.

### Exemples

**Exemple 1 : Réarrangement d'une série semi-convergente**

La série harmonique alternée $S = 1 - \frac{1}{2} + \frac{1}{3} - \frac{1}{4} + \frac{1}{5} - \frac{1}{6} + \dots$ converge vers $\ln(2)$.

Réarrangeons-la en prenant un terme positif pour deux termes négatifs :

$S' = \left(1 - \frac{1}{2} - \frac{1}{4}\right) + \left(\frac{1}{3} - \frac{1}{6} - \frac{1}{8}\right) + \left(\frac{1}{5} - \frac{1}{10} - \frac{1}{12}\right) + \dots$

Regroupons les termes différemment pour le calcul :

$S' = \left(1 - \frac{1}{2}\right) - \frac{1}{4} + \left(\frac{1}{3} - \frac{1}{6}\right) - \frac{1}{8} + \left(\frac{1}{5} - \frac{1}{10}\right) - \frac{1}{12} + \dots$

$S' = \frac{1}{2} - \frac{1}{4} + \frac{1}{6} - \frac{1}{8} + \frac{1}{10} - \frac{1}{12} + \dots$

$S' = \frac{1}{2} \left(1 - \frac{1}{2} + \frac{1}{3} - \frac{1}{4} + \dots \right) = \frac{1}{2} S = \frac{\ln(2)}{2}$.

En changeant l'ordre des termes, on a divisé la somme par deux.

**Exemple 2 : Sommation par paquets d'une série convergente**

Soit la série convergente $\sum_{n=1}^\infty \frac{(-1)^{n+1}}{n}$ de somme $\ln(2)$.

Regroupons les termes deux par deux :

$v_k = u_{2k-1} + u_{2k} = \frac{1}{2k-1} - \frac{1}{2k} = \frac{1}{(2k-1)(2k)}$.

La série $\sum_{k=1}^\infty v_k = \sum_{k=1}^\infty \frac{1}{(2k-1)(2k)}$ converge bien vers la même somme $\ln(2)$.

**Exemple 3 : Théorème de Fubini (extension à des séries doubles)**

Le théorème de Fubini dit que pour une série double $\sum_{m,n} u_{m,n}$, si la somme des valeurs absolues converge ($\sum_{m,n} |u_{m,n}| < \infty$), alors on peut sommer dans n'importe quel ordre : par lignes, par colonnes, ou par diagonales, le résultat sera le même.

$$ \sum_{m=0}^\infty \left( \sum_{n=0}^\infty u_{m,n} \right) = \sum_{n=0}^\infty \left( \sum_{m=0}^\infty u_{m,n} \right) $$

C'est une généralisation de la commutativité et de l'associativité pour les séries absolument convergentes.

### Contre-exemples

**Contre-exemple 1 : Sommation par paquets d'une série divergente**

Soit la série de Grandi : $\sum_{n=0}^\infty u_n = \sum_{n=0}^\infty (-1)^n = 1 - 1 + 1 - 1 + \dots$.

Les sommes partielles oscillent entre 1 et 0, la série diverge.

Faisons des paquets de deux termes : $v_k = u_{2k} + u_{2k+1} = (-1)^{2k} + (-1)^{2k+1} = 1 - 1 = 0$.

La série $\sum v_k = \sum 0$ converge vers 0. La convergence de la série par paquets n'implique pas celle de la série initiale.

**Contre-exemple 2 : Réarrangement d'une série à termes positifs**

Soit la série convergente $\sum_{n=1}^\infty \frac{1}{n^2}$. Ses termes sont tous positifs, elle est donc absolument convergente. Quel que soit la permutation $\sigma$, la série $\sum_{n=1}^\infty \frac{1}{(\sigma(n))^2}$ convergera toujours vers la même somme, $\frac{\pi^2}{6}$. Il n'est pas possible de changer la somme par réarrangement.

### Concepts Connexes

-   **Semi-convergence :** Le théorème de Riemann met en lumière la nature "fragile" des séries semi-convergentes.
-   **Intégrales multiples et Théorème de Fubini :** L'interversion des sommes dans les séries doubles sous condition de convergence absolue est l'analogue discret du théorème de Fubini pour l'interversion des intégrales multiples.
