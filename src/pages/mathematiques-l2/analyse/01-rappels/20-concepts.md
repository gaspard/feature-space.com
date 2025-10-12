---
id: 8b0055a7
type: concepts
order: 20
title: Rappels de logique et suites numériques - concepts (B)
tags:
  - logique
  - suites numériques
  - analyse
  - mathématiques
course: Analyse
courseId: 99c39a0d
chapter: Rappels de logique et suites numériques
chapterId: 684d8511
level: pro
createdAt: '2025-10-12T14:33:12.503Z'
---
# Rappels de logique et suites numériques (B)

---

## Concept 1: Logique Formelle et Techniques de Démonstration

### Prérequis

- Théorie élémentaire des ensembles (appartenance, inclusion, union, intersection, complémentaire).
- Notions de base sur les ensembles de nombres ($\mathbb{N}$, $\mathbb{R}$, $\mathbb{C}$).

### Définition

Le raisonnement mathématique repose sur la **logique des prédicats du premier ordre**. Une **proposition** (ou prédicat) est un énoncé $P$ auquel on peut assigner une valeur de vérité (Vrai ou Faux). Les propositions peuvent être combinées à l'aide de connecteurs logiques :

- **Négation** ($\neg P$): "non P"
- **Conjonction** ($P \land Q$): "P et Q"
- **Disjonction** ($P \lor Q$): "P ou Q" (inclusif)
- **Implication** ($P \Rightarrow Q$): "si P alors Q". Équivalente à $(\neg P \lor Q)$. $P$ est l'hypothèse, $Q$ la conclusion.
- **Équivalence** ($P \Leftrightarrow Q$): "P si et seulement si Q". Équivalente à $(P \Rightarrow Q) \land (Q \Rightarrow P)$.

Les propositions peuvent dépendre de variables, et leur portée est définie par des **quantificateurs** :

- **Quantificateur universel** ($\forall$): "pour tout". La proposition $(\forall x \in E, P(x))$ est vraie si $P(x)$ est vraie pour chaque élément $x$ de l'ensemble $E$.
- **Quantificateur existentiel** ($\exists$): "il existe". La proposition $(\exists x \in E, P(x))$ est vraie s'il existe au moins un élément $x \in E$ pour lequel $P(x)$ est vraie. On note $\exists!$ pour "il existe un unique".

### Propriétés Clés

- **Ordre des quantificateurs**: L'ordre est primordial. Intervertir $\forall$ et $\exists$ change radicalement le sens de la proposition. En général, $(\exists y, \forall x, P(x,y)) \Rightarrow (\forall x, \exists y, P(x,y))$, mais la réciproque est fausse. En revanche, l'ordre de quantificateurs de même nature peut être interverti: $(\forall x, \forall y, P(x,y)) \Leftrightarrow (\forall y, \forall x, P(x,y))$.

- **Négation des propositions quantifiées**:
  - $\neg(\forall x \in E, P(x)) \Leftrightarrow (\exists x \in E, \neg P(x))$
  - $\neg(\exists x \in E, P(x)) \Leftrightarrow (\forall x \in E, \neg P(x))$

- **Techniques de démonstration**:
  1.  **Démonstration directe**: Pour prouver $P \Rightarrow Q$, on suppose $P$ vraie et on en déduit $Q$.
  2.  **Démonstration par contraposée**: On prouve l'implication logiquement équivalente $\neg Q \Rightarrow \neg P$.
  3.  **Démonstration par l'absurde (reductio ad absurdum)**: Pour prouver $P$, on suppose $\neg P$ et on en déduit une contradiction (un énoncé de la forme $Q \land \neg Q$). Pour prouver $P \Rightarrow Q$, on suppose $P \land \neg Q$ et on aboutit à une contradiction.
  4.  **Principe de récurrence (simple)**: Soit $P(n)$ une proposition dépendant de $n \in \mathbb{N}$. Si $P(n_0)$ est vraie (initialisation) et si $(\forall n \ge n_0, P(n) \Rightarrow P(n+1))$ est vraie (hérédité), alors $\forall n \ge n_0, P(n)$ est vraie. Une variante, la **récurrence forte**, utilise l'hypothèse $(\forall k \in \{n_0, \dots, n\}, P(k))$ pour prouver $P(n+1)$.

### Exemples

**Exemple 1 : Ordre des quantificateurs**

Soit $f: \mathbb{R} \to \mathbb{R}$.

- **Proposition A**: $\forall x \in \mathbb{R}, \exists y \in \mathbb{R}, y = f(x)$. C'est la définition d'une fonction, elle est toujours vraie.
- **Proposition B**: $\exists y \in \mathbb{R}, \forall x \in \mathbb{R}, y = f(x)$. Ceci affirme que la fonction $f$ est constante.

Clairement, $B \Rightarrow A$, mais $A \nRightarrow B$.

**Exemple 2 : Démonstration par contraposée**

Soit $n \in \mathbb{Z}$. Montrons que : si $n^2$ est pair, alors $n$ est pair.

- **Proposition A**: "$n^2$ est pair". **Proposition B**: "$n$ est pair".
- On montre $\neg B \Rightarrow \neg A$.
- **Hypothèse ($\neg B$)**: $n$ est impair. Il existe donc $k \in \mathbb{Z}$ tel que $n = 2k+1$.
- **Démonstration**: $n^2 = (2k+1)^2 = 4k^2 + 4k + 1 = 2(2k^2+2k) + 1$.
- Puisque $2k^2+2k \in \mathbb{Z}$, $n^2$ est de la forme $2m+1$, donc $n^2$ est impair ($\neg A$).
- On a bien montré $\neg B \Rightarrow \neg A$, ce qui prouve $A \Rightarrow B$.

**Exemple 3 : Démonstration par l'absurde**

Montrons que $\sqrt{2}$ est irrationnel.

- Supposons par l'absurde que $\sqrt{2}$ est rationnel. Alors $\exists (p,q) \in \mathbb{Z} \times \mathbb{N}^*$ tels que $\sqrt{2} = p/q$ avec la fraction $p/q$ irréductible (i.e., $\text{pgcd}(p,q)=1$).
- En élevant au carré, $2 = p^2/q^2$, donc $p^2 = 2q^2$.
- Ceci implique que $p^2$ est pair. D'après l'Exemple 2, $p$ est pair. Donc $\exists k \in \mathbb{Z}$ tel que $p=2k$.
- En substituant, $(2k)^2 = 2q^2 \Rightarrow 4k^2 = 2q^2 \Rightarrow q^2 = 2k^2$.
- Ceci implique que $q^2$ est pair, et donc que $q$ est pair.
- $p$ et $q$ sont tous deux pairs, ce qui contredit l'hypothèse que la fraction $p/q$ est irréductible.
- La supposition initiale est donc fausse, et $\sqrt{2}$ est irrationnel.

### Contre-exemples

- **Affirmation du conséquent**: Le fait que $A \Rightarrow B$ et $B$ soient vrais n'implique pas que $A$ soit vrai. Soit $x \in \mathbb{R}$. On a $x = 2 \Rightarrow x^2 = 4$. Si l'on observe que $x^2=4$, on ne peut pas en conclure que $x=2$ (car $x=-2$ est une autre solution).

- **Négation incorrecte d'une proposition quantifiée**: La négation de "Tous les étudiants ont réussi l'examen" ($\forall x, R(x)$) n'est pas "Aucun étudiant n'a réussi l'examen" ($\forall x, \neg R(x)$), mais "Au moins un étudiant n'a pas réussi l'examen" ($\exists x, \neg R(x)$).

### Concepts Liés

- **Théorie des ensembles (ZFC)**: La logique formelle est le langage dans lequel les axiomes de la théorie des ensembles sont exprimés.
- **Calculabilité et Théorèmes d'incomplétude de Gödel**: Ces théories explorent les limites intrinsèques des systèmes formels et de la démonstration.

---

## Concept 2: Suites Numériques : Convergence et Analyse Asymptotique

### Prérequis

- Concept 1: Logique Formelle et Techniques de Démonstration.
- Topologie de base de $\mathbb{R}$ et $\mathbb{C}$ (valeur absolue/module, distance).
- Fonctions continues.

### Définition

Une **suite numérique** est une application $s: \mathbb{N} \to \mathbb{K}$, où $\mathbb{K}$ est $\mathbb{R}$ ou $\mathbb{C}$. On la note $(s_n)_{n \in \mathbb{N}}$ ou simplement $(s_n)$.

**Convergence** : Une suite $(s_n)$ converge vers une limite $l \in \mathbb{K}$ si :

$$ \forall \epsilon > 0, \exists N \in \mathbb{N}, \forall n \in \mathbb{N}, (n \ge N \Rightarrow |s_n - l| \le \epsilon) $$

On note alors $\lim_{n \to \infty} s_n = l$ ou $s_n \to l$. Une suite qui ne converge pas est dite **divergente**.

**Analyse Asymptotique** (Notations de Landau) : Soient $(s_n)$ et $(t_n)$ deux suites, avec $t_n > 0$ pour $n$ assez grand.

- **Grand O**: $s_n = O(t_n)$ s'il existe une constante $C > 0$ et un rang $N \in \mathbb{N}$ tels que $\forall n \ge N, |s_n| \le C t_n$.
- **Petit o**: $s_n = o(t_n)$ si $\lim_{n \to \infty} \frac{s_n}{t_n} = 0$. Cela équivaut à : $\forall \epsilon > 0, \exists N \in \mathbb{N}, \forall n \ge N, |s_n| \le \epsilon t_n$.
- **Équivalence**: $s_n \sim t_n$ si $s_n - t_n = o(t_n)$. Si $t_n \neq 0$ pour $n$ assez grand, cela équivaut à $\lim_{n \to \infty} \frac{s_n}{t_n} = 1$.

### Propriétés Clés

- **Unicité de la limite**: Si une suite converge, sa limite est unique.

  *Preuve*: Soient $l_1, l_2$ deux limites. $\forall \epsilon > 0$, $\exists N_1, n \ge N_1 \Rightarrow |s_n - l_1| \le \epsilon/2$ et $\exists N_2, n \ge N_2 \Rightarrow |s_n - l_2| \le \epsilon/2$. Pour $n \ge \max(N_1, N_2)$, on a $|l_1 - l_2| = |l_1 - s_n + s_n - l_2| \le |s_n - l_1| + |s_n - l_2| \le \epsilon$. Comme $\epsilon$ est arbitraire, $|l_1-l_2|=0$, donc $l_1=l_2$.

- **Toute suite convergente est bornée**.

  *Preuve*: Soit $s_n \to l$. Pour $\epsilon=1$, $\exists N$ tel que $\forall n \ge N, |s_n - l| \le 1$, ce qui implique $|s_n| \le |l|+1$. La suite est donc bornée par $M = \max(|s_0|, \dots, |s_{N-1}|, |l|+1)$.

- **Opérations sur les limites**: Si $s_n \to l_1$ et $t_n \to l_2$, alors :
  - $s_n + t_n \to l_1 + l_2$
  - $\lambda s_n \to \lambda l_1$ pour $\lambda \in \mathbb{K}$
  - $s_n t_n \to l_1 l_2$
  - Si $l_2 \neq 0$, $s_n/t_n \to l_1/l_2$.

- **Théorème de Cesàro**: Si $\lim_{n \to \infty} s_n = l$, alors la suite des moyennes arithmétiques $c_n = \frac{1}{n} \sum_{k=1}^n s_k$ converge aussi vers $l$.

- **Théorème de comparaison (Théorème des gendarmes)**: Soient $(s_n), (t_n), (u_n)$ trois suites réelles. Si $s_n \le t_n \le u_n$ pour $n \ge N_0$ et si $s_n \to l$ et $u_n \to l$, alors $t_n \to l$.

### Exemples

**Exemple 1 : Convergence de $s_n = \frac{\sin(n)}{n}$**

Pour $n \ge 1$, on a $-1 \le \sin(n) \le 1$, donc $-\frac{1}{n} \le \frac{\sin(n)}{n} \le \frac{1}{n}$.

Comme $\lim_{n \to \infty} -\frac{1}{n} = 0$ et $\lim_{n \to \infty} \frac{1}{n} = 0$, par le théorème des gendarmes, $\lim_{n \to \infty} \frac{\sin(n)}{n} = 0$.

**Exemple 2 : Utilisation des équivalents**

Calculer la limite de $s_n = \frac{n^2 + 3n + \ln(n)}{2n^2 - n\cos(n)}$.

Au voisinage de $+\infty$, $3n = o(n^2)$, $\ln(n) = o(n^2)$, donc $n^2 + 3n + \ln(n) \sim n^2$.

$n\cos(n) = O(n) = o(n^2)$, donc $2n^2 - n\cos(n) \sim 2n^2$.

Par compatibilité de l'équivalence avec le quotient, $s_n \sim \frac{n^2}{2n^2} = \frac{1}{2}$. Donc $\lim_{n \to \infty} s_n = \frac{1}{2}$.

**Exemple 3 : Théorème de Cesàro**

Soit $s_n = \frac{1}{n}$. On sait que $s_n \to 0$. La suite de Cesàro est $c_n = \frac{1}{n} \sum_{k=1}^n \frac{1}{k} = \frac{H_n}{n}$. Comme $H_n \sim \ln(n)$, on a $c_n \sim \frac{\ln(n)}{n} \to 0$, ce qui est cohérent avec le théorème.

### Contre-exemples

- **Suite bornée non convergente**: La suite $s_n = (-1)^n$ est bornée (par 1), mais elle diverge car elle oscille entre -1 et 1.

- **Réciproque du théorème de Cesàro**: La réciproque est fausse. Soit $s_n = (-1)^n$. La suite $(s_n)$ diverge. Cependant, $\sum_{k=1}^n (-1)^k$ vaut -1 si n est impair et 0 si n est pair. Donc $|c_n| = |\frac{1}{n}\sum_{k=1}^n (-1)^k| \le \frac{1}{n}$, et $c_n \to 0$.

### Concepts Liés

- **Séries numériques**: L'étude de la convergence de la suite des sommes partielles $S_N = \sum_{n=0}^N u_n$.
- **Espaces métriques**: La définition de la convergence est un cas particulier de la convergence dans un espace métrique $(E, d)$, où $|s_n - l|$ est remplacé par $d(s_n, l)$.
- **Développements limités**: Outil puissant pour trouver des équivalents de suites définies par des fonctions.

---

## Concept 3: Critères de Convergence et Complétude de $\mathbb{R}$

### Prérequis

- Concept 2: Suites Numériques et Convergence.
- Propriétés de l'ordre dans $\mathbb{R}$.

### Définition

- **Borne supérieure/inférieure**: Soit $A \subset \mathbb{R}$ non vide.
  - $M = \sup A$ (borne supérieure) est le plus petit des majorants de $A$.
  - $m = \inf A$ (borne inférieure) est le plus grand des minorants de $A$.
- **Axiome de la borne supérieure**: Toute partie non vide et majorée de $\mathbb{R}$ admet une borne supérieure dans $\mathbb{R}$. (Cette propriété fondamentale distingue $\mathbb{R}$ de $\mathbb{Q}$).
- **Suite monotone**: Une suite réelle $(s_n)$ est croissante si $s_{n+1} \ge s_n$ pour tout $n$, et décroissante si $s_{n+1} \le s_n$ pour tout $n$.
- **Suites adjacentes**: Deux suites réelles $(a_n)$ et $(b_n)$ sont adjacentes si $(a_n)$ est croissante, $(b_n)$ est décroissante, et $\lim_{n \to \infty} (b_n - a_n) = 0$.
- **Sous-suite (ou suite extraite)**: Une suite $(t_k)$ est une sous-suite de $(s_n)$ s'il existe une application $\phi: \mathbb{N} \to \mathbb{N}$ strictement croissante telle que $t_k = s_{\phi(k)}$ pour tout $k$.
- **Suite de Cauchy**: Une suite $(s_n)$ dans $\mathbb{K}$ est de Cauchy si :

  $$ \forall \epsilon > 0, \exists N \in \mathbb{N}, \forall p,q \in \mathbb{N}, (p,q \ge N \Rightarrow |s_p - s_q| \le \epsilon) $$

### Propriétés Clés

- **Théorème de la convergence monotone**: Toute suite réelle croissante et majorée est convergente. Toute suite réelle décroissante et minorée est convergente.

  *Preuve (cas croissant)*: Soit $(s_n)$ croissante et majorée. L'ensemble $A = \{s_n | n \in \mathbb{N}\}$ est non vide et majoré, il admet donc une borne supérieure $l = \sup A$. Montrons que $s_n \to l$. Soit $\epsilon > 0$. Par caractérisation de la borne supérieure, il existe $N \in \mathbb{N}$ tel que $l-\epsilon < s_N \le l$. Comme $(s_n)$ est croissante, pour tout $n \ge N$, on a $s_N \le s_n$. De plus, $s_n \le l$ car $l$ est un majorant. Ainsi, $\forall n \ge N, l-\epsilon < s_n \le l$, ce qui implique $|s_n - l| < \epsilon$.

- **Théorème des suites adjacentes**: Deux suites adjacentes convergent vers la même limite.

- **Théorème de Bolzano-Weierstrass**: De toute suite bornée dans $\mathbb{R}$ (ou $\mathbb{C}$), on peut extraire une sous-suite convergente.

- **Théorème de complétude de $\mathbb{R}$**: Un espace métrique dans lequel toute suite de Cauchy converge est dit complet. $\mathbb{R}$ et $\mathbb{C}$ sont des espaces complets.

  **Théorème fondamental**: Une suite $(s_n)$ dans $\mathbb{R}$ ou $\mathbb{C}$ converge si et seulement si elle est de Cauchy.

  *Preuve ($\Leftarrow$)*: Soit $(s_n)$ une suite de Cauchy. D'abord, on montre qu'elle est bornée. Puis, d'après le théorème de Bolzano-Weierstrass, elle admet une sous-suite $(s_{\phi(k)})$ qui converge vers une limite $l$. Finalement, on montre que la suite entière $(s_n)$ converge vers $l$ en utilisant la définition d'une suite de Cauchy et la convergence de la sous-suite.

- **Théorème du point fixe de Picard (Théorème de la contraction)**: Soit $I \subset \mathbb{R}$ un intervalle fermé et $f: I \to I$ une application contractante, i.e., $\exists L \in [0, 1)$ tel que $\forall x, y \in I, |f(x) - f(y)| \le L|x-y|$. Alors $f$ admet un unique point fixe $l \in I$. De plus, pour tout $s_0 \in I$, la suite récurrente $s_{n+1} = f(s_n)$ converge vers $l$.

  *Preuve*: On montre que la suite $(s_n)$ est de Cauchy. $|s_{n+1} - s_n| \le L|s_n - s_{n-1}| \le \dots \le L^n|s_1-s_0|$. Pour $q>p$, $|s_q - s_p| \le \sum_{k=p}^{q-1} |s_{k+1}-s_k| \le |s_1-s_0|\sum_{k=p}^{q-1} L^k = |s_1-s_0| \frac{L^p-L^q}{1-L}$. Comme $L<1$, le terme de droite tend vers 0 quand $p,q \to \infty$. La suite est de Cauchy, donc elle converge vers $l \in I$ (car $I$ est fermé). Par continuité de $f$, $l$ est un point fixe. L'unicité découle de $|l_1 - l_2| = |f(l_1) - f(l_2)| \le L|l_1 - l_2|$, ce qui impose $l_1=l_2$ car $L<1$.

### Exemples

**Exemple 1 : Critère de Cauchy pour une série**

Montrons que la suite $s_n = \sum_{k=1}^n \frac{1}{k^2}$ converge. Soient $p > q \ge 1$.

$|s_p - s_q| = \sum_{k=q+1}^p \frac{1}{k^2}$. On utilise la majoration $\frac{1}{k^2} < \frac{1}{k(k-1)} = \frac{1}{k-1} - \frac{1}{k}$ pour $k \ge 2$.

$|s_p - s_q| < \sum_{k=q+1}^p (\frac{1}{k-1} - \frac{1}{k}) = (\frac{1}{q} - \frac{1}{q+1}) + \dots + (\frac{1}{p-1} - \frac{1}{p}) = \frac{1}{q} - \frac{1}{p}$.

Pour tout $\epsilon > 0$, on peut choisir $N$ tel que $1/N < \epsilon$. Alors pour $p > q \ge N$, $|s_p - s_q| < 1/q \le 1/N < \epsilon$. La suite est de Cauchy, donc elle converge.

**Exemple 2 : Bolzano-Weierstrass**

Soit $s_n = \sin(n)$. La suite est bornée dans $[-1, 1]$. Le théorème de Bolzano-Weierstrass garantit l'existence d'une sous-suite convergente. Il est plus difficile de l'exhiber, mais son existence est certaine.

**Exemple 3 : Point fixe de Picard**

Soit $f(x) = \frac{x+2}{x+1}$ sur $I = [1, 2]$.

- Stabilité: $f'(x) = -1/(x+1)^2 < 0$, donc $f$ est décroissante sur $I$. $f(1) = 3/2 \in I$ et $f(2) = 4/3 \in I$. Donc $f(I) \subset [4/3, 3/2] \subset I$.
- Contraction: $|f'(x)| = 1/(x+1)^2 \le 1/(1+1)^2 = 1/4$ sur $I$. Par le théorème des accroissements finis, $f$ est contractante avec $L=1/4$.
- Conclusion: $f$ a un unique point fixe dans $I$ (qui est $\sqrt{2}$), et toute suite $s_{n+1} = f(s_n)$ avec $s_0 \in I$ converge vers $\sqrt{2}$.

### Contre-exemples

- **Espace non complet**: L'ensemble $\mathbb{Q}$ n'est pas complet. Considérons la suite récurrente $s_0=1, s_{n+1} = \frac{s_n}{2} + \frac{1}{s_n}$. C'est une suite de rationnels qui converge vers $\sqrt{2} \notin \mathbb{Q}$. Elle est de Cauchy dans $\mathbb{Q}$ mais ne converge pas dans $\mathbb{Q}$.

- **Théorème de Picard sans $f(I) \subset I$**: Soit $f(x)=1/x$ sur $I=[1, \infty)$. $f$ est contractante sur $I$ car $|f'(x)|=1/x^2 \le 1$. Cependant, $f$ n'a pas de point fixe dans $I$. La condition $f(I) \subset I$ est violée car $f(2)=1/2 \notin I$.

### Concepts Liés

- **Espaces de Banach**: Espaces vectoriels normés complets, un concept central en analyse fonctionnelle.
- **Compacité**: Un ensemble est compact si de toute suite d'éléments de l'ensemble, on peut extraire une sous-suite qui converge vers un élément de l'ensemble. Dans $\mathbb{R}^n$, "compact" est équivalent à "fermé et borné". Le théorème de Bolzano-Weierstrass est une expression de la compacité des segments de $\mathbb{R}$.

---

## Concept 4: Limites Supérieure et Inférieure

### Prérequis

- Concept 3: En particulier les notions de borne supérieure/inférieure et de sous-suite.
- Connaissance de l'ensemble $\bar{\mathbb{R}} = \mathbb{R} \cup \{-\infty, +\infty\}$.

### Définition

Soit $(s_n)_{n \in \mathbb{N}}$ une suite de nombres réels.

Pour tout $n \in \mathbb{N}$, on définit les suites :

- $s'_n = \sup \{s_k | k \ge n\}$
- $s''_n = \inf \{s_k | k \ge n\}$

La suite $(s'_n)$ est décroissante (dans $\bar{\mathbb{R}}$) et la suite $(s''_n)$ est croissante (dans $\bar{\mathbb{R}}$). Elles admettent donc des limites dans $\bar{\mathbb{R}}$.

- La **limite supérieure** de $(s_n)$ est :

$$ \limsup_{n \to \infty} s_n := \lim_{n \to \infty} s'_n = \lim_{n \to \infty} (\sup_{k \ge n} s_k) = \inf_{n \ge 0} (\sup_{k \ge n} s_k) $$

- La **limite inférieure** de $(s_n)$ est :

$$ \liminf_{n \to \infty} s_n := \lim_{n \to \infty} s''_n = \lim_{n \to \infty} (\inf_{k \ge n} s_k) = \sup_{n \ge 0} (\inf_{k \ge n} s_k) $$

Ces limites existent toujours dans $\bar{\mathbb{R}}$.

### Propriétés Clés

- **Ordre**: Pour toute suite $(s_n)$, $\liminf_{n \to \infty} s_n \le \limsup_{n \to \infty} s_n$.
- **Caractérisation par les valeurs d'adhérence**: L'ensemble des valeurs d'adhérence d'une suite $(s_n)$ est l'ensemble des limites de toutes ses sous-suites convergentes.
  - $\limsup_{n \to \infty} s_n$ est la plus grande valeur d'adhérence de la suite $(s_n)$.
  - $\liminf_{n \to \infty} s_n$ est la plus petite valeur d'adhérence de la suite $(s_n)$.
- **Critère de convergence**: Une suite $(s_n)$ converge vers $l \in \bar{\mathbb{R}}$ si et seulement si $\liminf_{n \to \infty} s_n = \limsup_{n \to \infty} s_n = l$.
- **Caractérisation par $\epsilon$** ($l = \limsup s_n \in \mathbb{R}$):
  1.  $\forall \epsilon > 0$, $\exists N \in \mathbb{N}$ tel que $\forall n \ge N, s_n < l+\epsilon$. (La suite est éventuellement majorée par $l+\epsilon$).
  2.  $\forall \epsilon > 0$, $\forall N \in \mathbb{N}$, $\exists n \ge N$ tel que $s_n > l-\epsilon$. (La suite dépasse infiniment souvent $l-\epsilon$).

  Une caractérisation analogue existe pour la $\liminf$.

- **Propriétés algébriques (inégalités)**:
  - $\limsup(s_n+t_n) \le \limsup s_n + \limsup t_n$
  - $\liminf(s_n+t_n) \ge \liminf s_n + \liminf t_n$

  (L'égalité n'est pas garantie).

### Exemples

**Exemple 1 : Suite oscillante**

Soit $s_n = (-1)^n$. L'ensemble des termes est $\{-1, 1\}$.

Pour tout $n$, $\sup \{s_k | k \ge n\} = 1$ et $\inf \{s_k | k \ge n\} = -1$.

Donc $s'_n = 1$ et $s''_n = -1$ pour tout $n$.

$\limsup_{n \to \infty} s_n = \lim_{n \to \infty} 1 = 1$.

$\liminf_{n \to \infty} s_n = \lim_{n \to \infty} -1 = -1$.

Les deux limites sont différentes, donc la suite diverge. Les valeurs d'adhérence sont $\{ -1, 1 \}$.

**Exemple 2 : Suite $s_n = (-1)^n(1 + \frac{1}{n})$**

Les termes pairs sont $s_{2p} = 1 + \frac{1}{2p} \to 1$.

Les termes impairs sont $s_{2p+1} = -(1 + \frac{1}{2p+1}) \to -1$.

L'ensemble des valeurs d'adhérence est $\{-1, 1\}$.

La plus grande est 1, la plus petite est -1. Donc $\limsup s_n = 1$ et $\liminf s_n = -1$.

**Exemple 3 : Suite non bornée**

Soit $s_n = n \sin^2(\frac{n\pi}{2})$.

- Si $n$ est pair, $n=2k$, $\sin(k\pi) = 0$, donc $s_{2k}=0$. Une sous-suite converge vers 0.
- Si $n$ est impair, $n=2k+1$, $\sin((2k+1)\pi/2) = (-1)^k$, donc $\sin^2((2k+1)\pi/2)=1$.
  - Pour $n=4k+1$, $s_n = 4k+1 \to +\infty$.
  - Pour $n=4k+3$, $s_n = 4k+3 \to +\infty$.

L'ensemble des valeurs d'adhérence est $\{0, +\infty\}$.

Donc $\liminf s_n = 0$ et $\limsup s_n = +\infty$.

### Contre-exemples

- **Somme des limsup**: L'inégalité $\limsup(s_n+t_n) \le \limsup s_n + \limsup t_n$ peut être stricte.

  Soit $s_n = (-1)^n$ et $t_n = (-1)^{n+1}$.

  $\limsup s_n = 1$ et $\limsup t_n = 1$. Leur somme est 2.

  Cependant, $s_n+t_n = (-1)^n + (-1)^{n+1} = (-1)^n - (-1)^n = 0$ pour tout $n$.

  Donc $\limsup(s_n+t_n) = 0$. On a bien $0 < 1+1$.

- **Produit des limsup**: Aucune règle simple ne s'applique pour le produit, même avec des suites positives.

  Soit $s_n = (1, 2, 1, 2, \dots)$ et $t_n = (2, 1, 2, 1, \dots)$.

  $\limsup s_n = 2$, $\limsup t_n = 2$.

  $s_n t_n = (2, 2, 2, 2, \dots)$. Donc $\limsup(s_n t_n) = 2$.

  Ici $\limsup(s_n t_n) = 2 < (\limsup s_n)(\limsup t_n) = 4$.

### Concepts Liés

- **Topologie générale**: La notion de valeur d'adhérence se généralise à n'importe quel espace topologique. L'ensemble des valeurs d'adhérence est un ensemble fermé.
- **Rayon de convergence des séries entières**: Pour une série entière $\sum a_n z^n$, le rayon de convergence $R$ est donné par la formule de Hadamard : $\frac{1}{R} = \limsup_{n \to \infty} \sqrt[n]{|a_n|}$.
- **Analyse de Fourier**: Le comportement des sommes partielles d'une série de Fourier est intimement lié aux propriétés de limsup et liminf.
