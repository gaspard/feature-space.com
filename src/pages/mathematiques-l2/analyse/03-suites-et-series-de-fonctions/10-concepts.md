---
id: ec531c2d
type: concepts
order: 10
title: Suites et séries de fonctions - concepts (A)
tags:
  - suites de fonctions
  - séries de fonctions
  - convergence simple
  - convergence uniforme
  - convergence normale
  - continuité
  - dérivabilité
  - intégration
course: Analyse
courseId: 79d3ec6b
chapter: Suites et séries de fonctions
chapterId: 8e0d527b
level: regular
createdAt: '2025-12-26T21:13:38.058Z'
---
# Suites et séries de fonctions

---

## Concept 1: Convergence simple

### Prérequis

- Convergence des suites numériques (suites de nombres réels ou complexes).
- Convergence des séries numériques.
- Notion de fonction, domaine de définition et image.

### Définition

La convergence simple est la notion la plus intuitive de convergence pour une suite ou une série de fonctions. Elle revient à fixer la variable $t$ et à regarder la convergence de la suite ou série de nombres résultante.

Soit $D$ une partie non vide de $\mathbb{K}$ (où $\mathbb{K} = \mathbb{R}$ ou $\mathbb{C}$).

**Pour une suite de fonctions :**

Une suite de fonctions $(f_n)_{n \in \mathbb{N}}$ de $D$ dans $\mathbb{K}$ converge simplement vers la fonction $f$ sur $D$ si, pour tout $t \in D$ fixé, la suite numérique $(f_n(t))_{n \in \mathbb{N}}$ converge vers le nombre $f(t)$.

$$ \forall t \in D, \lim_{n \to +\infty} f_n(t) = f(t) $$

**Pour une série de fonctions :**

Une série de fonctions de terme général $u_n$ converge simplement sur $D$ si la suite de ses sommes partielles $s_n(t) = \sum_{i=0}^n u_i(t)$ converge simplement. Cela signifie que pour tout $t \in D$, la série numérique $\sum u_n(t)$ est convergente.

### Propriétés Clés

- **Dépendance ponctuelle :** La vitesse de convergence peut dépendre de $t$. Dans la définition formelle avec les $\varepsilon$, le rang $N$ dépend à la fois de $\varepsilon$ et de $t$ :

  $$ \forall t \in D , \forall \varepsilon > 0 , \exists N_{t,\varepsilon} \in \mathbb{N} \text{ tel que } n \ge N_{t,\varepsilon} \Rightarrow | f_n(t) - f(t)| \le \varepsilon $$

- **Non-transmission des propriétés :** La convergence simple est souvent trop faible pour conserver les propriétés qualitatives des fonctions $f_n$ (comme la continuité, la dérivabilité ou l'intégrabilité) lors du passage à la limite $f$.

### Exemples

**Exemple 1 : Suite de puissances**

Soit la suite de fonctions définie sur $D = [0, 1]$ par $f_n(t) = t^n$.

Pour étudier la convergence simple, on fixe $t$ :

- Si $0 \le t < 1$, alors $t^n \to 0$ quand $n \to +\infty$ (suite géométrique de raison $< 1$).
- Si $t = 1$, alors $f_n(1) = 1^n = 1$, donc la limite est $1$.

La suite converge simplement vers la fonction limite $f$ définie par :

$$ f(t) = \begin{cases} 0 & \text{si } t \in [0, 1[ \\ 1 & \text{si } t = 1 \end{cases} $$

**Exemple 2 : Étalement de bosse**

Soit la suite définie sur $\mathbb{R}$ par $f_n(t) = \frac{t}{n}$.

Pour tout $t \in \mathbb{R}$ fixé, $\lim_{n \to +\infty} \frac{t}{n} = 0$.

La suite converge simplement vers la fonction nulle $f(t) = 0$ sur $\mathbb{R}$.

**Exemple 3 : Série géométrique de fonctions**

Soit la série de terme général $u_n(t) = t^n$ définie sur $D = ]-1, 1[$.

Pour tout $t \in D$, la série numérique $\sum t^n$ est une série géométrique de raison $|t| < 1$, donc elle converge.

La série converge simplement vers la somme :

$$ s(t) = \sum_{n=0}^{+\infty} t^n = \frac{1}{1-t} $$

### Contre-exemples

**Contre-exemple de transmission de la continuité**

L'exemple 1 ci-dessus montre une suite de fonctions $f_n(t) = t^n$ qui sont toutes continues sur $[0, 1]$. Pourtant, leur limite simple $f$ est discontinue en $t=1$ (saut de 0 à 1). La convergence simple ne préserve pas la continuité.

**Contre-exemple de transmission de l'intégrale**

Soit $f_n(t) = n t (1-t^2)^n$ sur $[0, 1]$. Cette suite converge simplement vers la fonction nulle (car pour $t \in ]0,1[$, la puissance l'emporte sur le facteur $n$). L'intégrale de la limite est $\int_0^1 0 dt = 0$.

Cependant, le calcul direct donne $\int_0^1 f_n(t) dt = \frac{n}{2n+2} \to \frac{1}{2}$.

Ici, $\lim \int f_n \neq \int \lim f_n$.

### Concepts Liés

- **Convergence uniforme :** Une convergence plus forte qui corrige les défauts de la convergence simple.
- **Topologie :** La convergence simple correspond à la topologie de la convergence ponctuelle (topologie produit).

---

## Concept 2: Convergence uniforme et Norme infinie

### Prérequis

- Convergence simple.
- Bornes supérieures (sup).
- Espace vectoriel des fonctions bornées.

### Définition

La convergence uniforme est une convergence "globale" sur l'ensemble $D$. Elle exige que la suite de fonctions s'approche de la limite avec la même "vitesse" (ou du moins une vitesse minimale commune) pour tous les points $t \in D$.

**Norme de la convergence uniforme (Norme infinie) :**

Pour une fonction $f$ bornée sur $D$, on définit :

$$ \|f\|_\infty = \sup_{t \in D} |f(t)| $$

**Définition pour les suites :**

La suite $(f_n)_{n \in \mathbb{N}}$ converge uniformément vers $f$ sur $D$ si la distance maximale entre $f_n$ et $f$ tend vers 0.

$$ \lim_{n \to +\infty} \|f_n - f\|_\infty = 0 \iff \lim_{n \to +\infty} \left( \sup_{t \in D} |f_n(t) - f(t)| \right) = 0 $$

En termes de quantificateurs, le rang $N$ dépend de $\varepsilon$ mais **pas** de $t$ :

$$ \forall \varepsilon > 0, \exists N \in \mathbb{N}, \forall n \ge N, \forall t \in D, |f_n(t) - f(t)| \le \varepsilon $$

**Définition pour les séries :**

La série de terme général $u_n$ converge uniformément sur $D$ si la suite des sommes partielles $s_n = \sum_{i=0}^n u_i$ converge uniformément vers la somme $s$. Cela revient à dire que la suite des restes $r_n(t) = \sum_{i=n+1}^{+\infty} u_i(t)$ converge uniformément vers 0.

### Propriétés Clés

- **Implique la convergence simple :** Si $f_n$ converge uniformément vers $f$, alors elle converge simplement vers $f$.
- **Critère de Cauchy uniforme :** L'espace des fonctions bornées muni de la norme $\|\cdot\|_\infty$ est complet (Espace de Banach). Une suite converge uniformément si et seulement si $\|f_p - f_q\|_\infty \to 0$ quand $p, q \to \infty$.
- **Condition nécessaire pour les séries :** Si la série $\sum u_n$ converge uniformément, alors la suite des termes généraux converge uniformément vers 0 ($\|u_n\|_\infty \to 0$).

### Exemples

**Exemple 1 : Convergence uniforme**

Soit $f_n(t) = \frac{\sin(nt)}{n}$ sur $\mathbb{R}$.

On a $|f_n(t) - 0| = \left| \frac{\sin(nt)}{n} \right| \le \frac{1}{n}$.

Donc $\sup_{t \in \mathbb{R}} |f_n(t) - 0| \le \frac{1}{n}$.

Comme $\lim_{n \to +\infty} \frac{1}{n} = 0$, la suite converge uniformément vers la fonction nulle sur $\mathbb{R}$.

**Exemple 2 : Calcul de la norme infinie**

Soit $f_n(t) = x^n$ sur $D = [0, \frac{1}{2}]$. La limite simple est 0.

$\|f_n - 0\|_\infty = \sup_{t \in [0, 1/2]} |t^n| = (\frac{1}{2})^n$.

Comme $(\frac{1}{2})^n \to 0$, il y a convergence uniforme sur $[0, \frac{1}{2}]$.

**Exemple 3 : Série de fonctions**

La série de terme général $u_n(z) = z^n$ sur le disque fermé $D_r = \{z \in \mathbb{C} : |z| \le r\}$ avec $r < 1$.

Le reste est majoré : $|r_n(z)| = |\sum_{i=n+1}^\infty z^i| \le \sum_{i=n+1}^\infty r^i = \frac{r^{n+1}}{1-r}$.

Puisque ce majorant (indépendant de $z$) tend vers 0, la convergence est uniforme sur $D_r$.

### Contre-exemples

**Absence de convergence uniforme**

Reprenons $f_n(t) = t^n$ sur $[0, 1]$. La limite simple est $f$ (qui vaut 0 sur $[0,1[$ et 1 en 1).

Étudions $\sup_{t \in [0,1]} |f_n(t) - f(t)|$.

Pour $t \in [0, 1[$, $|t^n - 0| = t^n$. Le sup est 1 (atteint à la limite en $1^-$).

Pour $t=1$, $|1^n - 1| = 0$.

Donc $\|f_n - f\|_\infty = 1$. Cette suite ne tend pas vers 0. La convergence n'est pas uniforme sur $[0, 1]$.

**Série convergente simplement mais pas uniformément**

La série géométrique $\sum t^n$ sur $]-1, 1[$.

Bien qu'elle converge simplement vers $\frac{1}{1-t}$, elle ne converge pas uniformément sur tout l'intervalle ouvert. En effet, le terme général $u_n(t) = t^n$ ne tend pas uniformément vers 0 car $\sup_{t \in ]-1,1[} |t^n| = 1 \nrightarrow 0$.

### Concepts Liés

- **Convergence normale :** Une condition suffisante plus facile à vérifier pour les séries.
- **Espace de Banach :** $\mathcal{B}(D)$ muni de la norme sup est complet.

---

## Concept 3: Convergence Normale (pour les séries)

### Prérequis

- Convergence uniforme.
- Séries numériques à termes positifs.
- Norme infinie.

### Définition

C'est un critère pratique et très fort pour prouver la convergence uniforme des séries. Au lieu de regarder les restes de la série, on regarde la série des normes.

Une série de fonctions de terme général $u_n$ converge **normalement** sur $D$ si la série numérique à termes positifs $\sum \|u_n\|_\infty$ est convergente.

C'est-à-dire :

$$ \sum_{n=0}^{+\infty} \left( \sup_{t \in D} |u_n(t)| \right) < +\infty $$

### Propriétés Clés

- **Implication fondamentale :**

  $$ \text{Convergence Normale} \Rightarrow \text{Convergence Uniforme} \Rightarrow \text{Convergence Simple} $$

  C'est le moyen le plus standard de montrer qu'une série de fonctions converge uniformément.

- **Facilité d'étude :** On se ramène à l'étude d'une série numérique (souvent via des comparaisons ou des équivalents), ce qui évite de manipuler des sommes partielles complexes.

### Exemples

**Exemple 1 : Série trigonométrique**

Soit la série définie par $u_n(t) = \frac{\sin(nt)}{n^2}$ sur $\mathbb{R}$.

On majore le terme général indépendamment de $t$ :

$$ |u_n(t)| = \left| \frac{\sin(nt)}{n^2} \right| \le \frac{1}{n^2} $$

Donc $\|u_n\|_\infty \le \frac{1}{n^2}$.

La série numérique $\sum \frac{1}{n^2}$ est une série de Riemann convergente ($2 > 1$).

La série de fonctions converge donc normalement (et donc uniformément) sur $\mathbb{R}$.

**Exemple 2 : Série entière sur un disque compact**

Pour la série $u_n(z) = \frac{z^n}{n!}$ sur le disque $D_R = \{z \in \mathbb{C} : |z| \le R\}$.

$\|u_n\|_\infty = \sup_{|z| \le R} \frac{|z|^n}{n!} = \frac{R^n}{n!}$.

La série numérique $\sum \frac{R^n}{n!}$ converge (vers $e^R$). Donc la série de fonctions converge normalement sur $D_R$.

**Exemple 3 : Domaine dépendant**

$u_n(t) = e^{-nt}$ sur $[a, +\infty[$ avec $a > 0$.

$\|u_n\|_\infty = e^{-na}$. La série géométrique $\sum (e^{-a})^n$ converge car $e^{-a} < 1$.

Il y a convergence normale sur $[a, +\infty[$.

### Contre-exemples

**Convergence Uniforme sans Convergence Normale**

La série alternée $u_n(t) = \frac{(-1)^n}{n+t}$ sur $[0, 1]$.

- Convergence Normale ? $\|u_n\|_\infty = \sup_{t \in [0,1]} \frac{1}{n+t} = \frac{1}{n}$. La série $\sum \frac{1}{n}$ diverge (série harmonique). Donc **pas** de convergence normale.
- Convergence Uniforme ? Oui, grâce au critère des séries alternées. Le reste est majoré par la valeur absolue du premier terme négligé : $|r_n(t)| \le |u_{n+1}(t)| = \frac{1}{n+1+t} \le \frac{1}{n+1}$.

Comme $\frac{1}{n+1}$ tend vers 0 indépendamment de $t$, il y a convergence uniforme.

### Concepts Liés

- **Critère de Weierstrass (M-test) :** C'est le nom international souvent donné à la méthode consistant à majorer $|u_n(t)|$ par un terme $M_n$ tel que $\sum M_n$ converge.

---

## Concept 4: Continuité sous convergence uniforme

### Prérequis

- Notion de continuité en un point et sur un ensemble.
- Convergence uniforme des suites et séries.
- Interversion de limites.

### Définition (Théorème)

Ce théorème donne une condition suffisante pour que la limite d'une suite (ou la somme d'une série) de fonctions continues soit elle-même continue.

**Pour les suites :**

Si une suite de fonctions $(f_n)_{n \in \mathbb{N}}$ converge **uniformément** vers $f$ sur $D$, et si chaque $f_n$ est continue en $t_0 \in D$, alors la fonction limite $f$ est continue en $t_0$.

**Pour les séries :**

Si une série de fonctions de terme général $u_n$ continu converge **uniformément** sur $D$, alors sa somme $s = \sum_{n=0}^\infty u_n$ est continue sur $D$.

### Propriétés Clés

- **Interversion des limites :** Ce résultat permet d'intervertir la limite de la fonction et la limite de la suite :

  $$ \lim_{t \to t_0} \left( \lim_{n \to +\infty} f_n(t) \right) = \lim_{n \to +\infty} \left( \lim_{t \to t_0} f_n(t) \right) $$

- **Contraposée utile :** Si une suite de fonctions continues converge simplement vers une fonction discontinue, alors la convergence n'est **pas** uniforme. C'est un moyen très efficace pour prouver la non-uniformité.

### Exemples

**Exemple 1 : Continuité de la somme**

La série $\sum_{n=1}^\infty \frac{\sin(nt)}{n^2}$ converge normalement (voir Concept 3) donc uniformément sur $\mathbb{R}$.

Puisque chaque fonction $t \mapsto \frac{\sin(nt)}{n^2}$ est continue, la fonction somme $S(t) = \sum_{n=1}^\infty \frac{\sin(nt)}{n^2}$ est obligatoirement continue sur $\mathbb{R}$.

**Exemple 2 : Fonction Zêta (sur un domaine restreint)**

La série $\sum_{n=1}^\infty \frac{1}{n^t}$ définit la fonction $\zeta(t)$.

Sur l'intervalle $[a, +\infty[$ avec $a > 1$, on a $|\frac{1}{n^t}| \le \frac{1}{n^a}$.

La série converge normalement sur $[a, +\infty[$, donc uniformément.

Les fonctions termes étant continues, $\zeta$ est continue sur $[a, +\infty[$. Comme ceci est vrai pour tout $a > 1$, $\zeta$ est continue sur $]1, +\infty[$.

**Exemple 3 : Utilisation de la contraposée**

Reprenons $f_n(t) = t^n$ sur $[0, 1]$.

Les $f_n$ sont continues. La limite simple $f$ est discontinue en 1.

Conclusion immédiate : la convergence n'est pas uniforme sur $[0, 1]$.

### Contre-exemples

**Limite continue mais pas de convergence uniforme**

Attention, la réciproque est fausse. Une limite peut être continue sans que la convergence soit uniforme.

Soit $f_n(t) = n^2 t e^{-nt}$ sur $[0, +\infty[$.

La limite simple est $f(t) = 0$ (fonction continue).

Pourtant, le maximum de $f_n$ est $\frac{n}{e}$, qui tend vers l'infini. La convergence n'est pas uniforme, bien que la limite soit continue.

### Concepts Liés

- **Espace $\mathcal{C}(D)$ :** Si $D$ est compact, l'espace des fonctions continues muni de la norme uniforme est un espace de Banach.

---

## Concept 5: Intégration sous convergence uniforme

### Prérequis

- Intégrale de Riemann.
- Convergence uniforme.
- Continuité sur un segment.

### Définition (Théorème)

Ce concept permet d'échanger les symboles "limite" (ou "somme") et "intégrale".

**Pour les suites :**

Soit $(f_n)_{n \in \mathbb{N}}$ une suite de fonctions continues sur un segment $[a, b]$ qui converge **uniformément** vers $f$. Alors :

1. La suite des intégrales converge vers l'intégrale de la limite.
2. La suite des primitives converge uniformément vers la primitive de la limite.

$$ \lim_{n \to +\infty} \int_a^b f_n(t) dt = \int_a^b \left( \lim_{n \to +\infty} f_n(t) \right) dt = \int_a^b f(t) dt $$

**Pour les séries :**

Si la série $\sum u_n$ de fonctions continues converge uniformément sur $[a, b]$, alors on peut intégrer terme à terme :

$$ \int_a^b \left( \sum_{n=0}^{+\infty} u_n(t) \right) dt = \sum_{n=0}^{+\infty} \left( \int_a^b u_n(t) dt \right) $$

### Propriétés Clés

- **Robustesse :** Contrairement à la dérivation, l'intégration est une opération "lissante". La convergence uniforme est suffisante (et même parfois des conditions plus faibles suffisent, comme en théorie de Lebesgue, mais dans ce cours on se limite à la convergence uniforme).
- **Extension aux bornes variables :** Si on définit $F_n(x) = \int_a^x f_n(t) dt$, alors $(F_n)$ converge uniformément vers $F(x) = \int_a^x f(t) dt$ sur $[a, b]$.

### Exemples

**Exemple 1 : Intégration terme à terme**

On veut calculer l'intégrale de la série géométrique sur $[0, x]$ avec $|x| < 1$.

On sait que $\sum_{n=0}^\infty t^n = \frac{1}{1-t}$.

La convergence est uniforme sur le segment $[0, x]$ (si $x<1$ est fixé, on est sur un compact inclus dans le disque de convergence).

$$ \int_0^x \frac{1}{1-t} dt = \sum_{n=0}^\infty \int_0^x t^n dt = \sum_{n=0}^\infty \left[ \frac{t^{n+1}}{n+1} \right]_0^x = \sum_{n=0}^\infty \frac{x^{n+1}}{n+1} $$

On retrouve le développement en série de $-\ln(1-x)$.

**Exemple 2 : Suite polynomiale**

$f_n(t) = t^n (1-t)^n$ sur $[0, 1]$.

On a $|f_n(t)| \le (1/4)^n$. La suite converge uniformément vers 0.

Donc $\lim_{n \to \infty} \int_0^1 t^n(1-t)^n dt = \int_0^1 0 dt = 0$.

**Exemple 3 : Échange non valide (Convergence simple)**

L'exemple $f_n(t) = nt(1-t^2)^n$ converge simplement vers 0 mais $\int f_n \to 1/2 \neq 0$. Cela illustre que la convergence simple ne suffit pas pour appliquer ce théorème.

### Contre-exemples

**Intégrale sur un intervalle non borné**

Même avec convergence uniforme, l'intégration sur un intervalle infini (intégrale impropre) peut poser problème.

$f_n(t) = \frac{1}{n}$ sur $[0, n]$ et 0 ailleurs.

$f_n$ converge uniformément vers 0 sur $\mathbb{R}$ (le sup est $1/n$).

Pourtant $\int_{-\infty}^{+\infty} f_n(t) dt = \int_0^n \frac{1}{n} dt = 1$.

La limite des intégrales (1) n'est pas l'intégrale de la limite (0). Le théorème énoncé s'applique strictement sur un segment $[a, b]$.

### Concepts Liés

- **Primitives :** L'intégration est l'opération inverse de la dérivation. Ce théorème est souvent utilisé pour justifier la dérivation (voir Concept 6).

---

## Concept 6: Dérivabilité sous convergence uniforme

### Prérequis

- Dérivabilité $\mathcal{C}^1$.
- Convergence uniforme.
- Théorème d'intégration (Concept 5).

### Définition (Théorème)

C'est le théorème le plus délicat. La convergence uniforme des fonctions $f_n$ ne suffit absolument pas à garantir la convergence des dérivées $f'_n$. Il faut **supposer** la convergence uniforme des dérivées.

Soit $(f_n)_{n \in \mathbb{N}}$ une suite de fonctions de classe $\mathcal{C}^1$ sur un intervalle $I$.

Hypothèses :

1. Il existe au moins un point $t_0 \in I$ où la suite numérique $(f_n(t_0))$ converge.
2. La suite des dérivées $(f'_n)_{n \in \mathbb{N}}$ converge **uniformément** vers une fonction $g$ sur tout sous-intervalle borné de $I$.

Alors :

- La suite $(f_n)$ converge uniformément vers une fonction $f$ sur tout borné.
- La fonction limite $f$ est dérivable (et $\mathcal{C}^1$).
- $f' = g$ (c'est-à-dire $(\lim f_n)' = \lim (f'_n)$).

**Version Séries :**

Si $\sum u_n(t_0)$ converge et si $\sum u'_n$ converge uniformément sur tout borné, alors la somme $S(t)$ est dérivable et $S'(t) = \sum u'_n(t)$.

### Propriétés Clés

- **Importance de l'hypothèse sur $f'_n$ :** On contrôle la fonction par ses variations. Si les variations convergent bien (uniformément), alors la fonction converge bien.
- **Perte de régularité possible sans uniforme :** Sans la convergence uniforme des dérivées, la limite de fonctions lisses peut être "tordue" ou non dérivable.

### Exemples

**Exemple 1 : Dérivation d'une série**

Soit $s(t) = \sum_{n=1}^\infty \frac{\sin(nt)}{n^3}$.

C'est une série de fonctions $\mathcal{C}^1$.

La série des dérivées est $\sum \frac{n \cos(nt)}{n^3} = \sum \frac{\cos(nt)}{n^2}$.

Cette série dérivée converge normalement (donc uniformément) sur $\mathbb{R}$ car $|\frac{\cos(nt)}{n^2}| \le \frac{1}{n^2}$.

De plus, la série initiale converge (simplement et normalement).

Donc $s$ est $\mathcal{C}^1$ et $s'(t) = \sum_{n=1}^\infty \frac{\cos(nt)}{n^2}$.

**Exemple 2 : La fonction exponentielle**

La série $\sum \frac{x^n}{n!}$ converge sur $\mathbb{R}$.

La série des dérivées est $\sum_{n=1}^\infty \frac{n x^{n-1}}{n!} = \sum_{k=0}^\infty \frac{x^k}{k!}$. C'est la même série !

La convergence est uniforme sur tout intervalle $[-R, R]$.

Donc la somme $S(x)$ vérifie $S'(x) = S(x)$. C'est la définition de l'exponentielle.

**Exemple 3 : Écriture formelle**

Le théorème légitime le calcul :

$$ \frac{d}{dt} \left( \sum_{n=0}^{+\infty} u_n(t) \right) = \sum_{n=0}^{+\infty} \frac{d}{dt} u_n(t) $$

### Contre-exemples

**Contre-exemple classique de Weierstrass**

Soit $f_n(t) = \frac{\sin(nt)}{\sqrt{n}}$.

La suite converge uniformément vers $f(t) = 0$ (car le sup est $1/\sqrt{n}$).

La limite $f$ est dérivable et $f'(t) = 0$.

Regardons les dérivées : $f'_n(t) = \sqrt{n} \cos(nt)$.

Cette suite ne converge pas (elle oscille avec une amplitude croissante). On ne peut pas intervertir limite et dérivée ici car l'hypothèse de convergence uniforme des dérivées n'est pas vérifiée.

**Limite non dérivable**

La suite $f_n(t) = \sqrt{t^2 + \frac{1}{n}}$ converge uniformément vers $f(t) = |t|$ sur $\mathbb{R}$.

Les $f_n$ sont $\mathcal{C}^1$ partout.

La limite $f$ n'est pas dérivable en 0.

Cela montre que la convergence uniforme de $f_n$ seule ne préserve pas la dérivabilité.

### Concepts Liés

- **Fonctions holomorphes :** Dans le cadre complexe, les théorèmes sont plus puissants (la convergence uniforme sur tout compact suffit à garantir la dérivabilité à tous les ordres).

---

## Applications

Les concepts de ce chapitre sont fondamentaux pour :

1.  **Séries entières et de Fourier :** Justifier qu'on peut dériver ou intégrer ces séries terme à terme.
2.  **Résolution d'équations différentielles :** Construire des solutions sous forme de séries.
3.  **Fonctions spéciales :** Définir et étudier des fonctions comme la fonction Zêta de Riemann ($\zeta(s)$) ou la fonction Gamma ($\Gamma(z)$) qui sont définies par des séries ou des intégrales dépendant d'un paramètre.
4.  **Approximation :** Remplacer une fonction complexe par une suite de fonctions simples (polynômes) tout en contrôlant l'erreur (Théorème de Weierstrass).
