---
id: 69022bb2
type: exercises
order: 11
title: Suites et séries de fonctions - exercices (A)
tags:
  - suites de fonctions
  - séries de fonctions
  - convergence simple
  - convergence uniforme
  - convergence normale
  - continuité
  - dérivabilité
  - intégration
createdAt: '2025-12-26T21:13:38.058Z'
level: regular
course: Analyse
courseId: 79d3ec6b
chapter: Suites et séries de fonctions
chapterId: 8e0d527b
---
# Exercices "Suites et séries de fonctions"

---

## Exercice 1 : Convergence simple et convergence uniforme

**Problème :**

Soit la suite de fonctions $(f_n)_{n \in \mathbb{N}^*}$ définie sur l'intervalle $I = [0, 1]$ par :

$$ f_n(x) = \frac{x}{x+n} $$

1. Déterminer la limite simple de la suite $(f_n)$ sur $I$. Notez $f$ cette fonction limite.
2. Calculer la norme infinie $\|f_n - f\|_\infty$ sur $I$.
3. La suite $(f_n)$ converge-t-elle uniformément vers $f$ sur $I$ ?

<details>

<summary>Solution</summary>

**Méthode :**

Pour la convergence simple, on fixe $x$ et on fait tendre $n$ vers l'infini. Pour la convergence uniforme, on étudie le maximum de la différence $|f_n(x) - f(x)|$ sur l'intervalle.

**Étapes :**

1.  **Convergence simple :**

    Soit $x \in [0, 1]$ fixé.

    $$ \lim_{n \to +\infty} f_n(x) = \lim_{n \to +\infty} \frac{x}{x+n} = 0 $$

    La suite converge simplement vers la fonction nulle : $f(x) = 0$ pour tout $x \in [0, 1]$.

2.  **Calcul de la norme infinie :**

    On cherche $\|f_n - f\|_\infty = \sup_{x \in [0, 1]} |f_n(x) - 0| = \sup_{x \in [0, 1]} \frac{x}{x+n}$.

    La fonction $g_n(x) = \frac{x}{x+n}$ est dérivable sur $[0, 1]$ :

    $$ g_n'(x) = \frac{1(x+n) - x(1)}{(x+n)^2} = \frac{n}{(x+n)^2} $$

    Comme $n > 0$, $g_n'(x) > 0$ sur $[0, 1]$. La fonction est strictement croissante.

    Le maximum est donc atteint à la borne droite de l'intervalle, en $x = 1$.

    $$ \|f_n - f\|_\infty = f_n(1) = \frac{1}{1+n} $$

3.  **Conclusion sur la convergence uniforme :**

    On regarde si la norme infinie tend vers 0 :

    $$ \lim_{n \to +\infty} \|f_n - f\|_\infty = \lim_{n \to +\infty} \frac{1}{1+n} = 0 $$

    Puisque la limite est 0, la suite $(f_n)$ converge **uniformément** vers la fonction nulle sur $[0, 1]$.

**Réponse :** La suite converge uniformément vers 0.

</details>

---

## Exercice 2 : Absence de convergence uniforme

**Problème :**

Soit la suite de fonctions définie sur $[0, 1]$ par $f_n(x) = x^n$.

1. Déterminer la fonction limite simple $f$ de cette suite sur $[0, 1]$.
2. Étudier la continuité de la fonction limite $f$.
3. En déduire, sans calcul de borne supérieure, si la convergence est uniforme sur $[0, 1]$.

<details>

<summary>Solution</summary>

**Méthode :**

Utiliser le théorème de continuité : si une suite de fonctions continues converge uniformément, la limite doit être continue. On utilise ici la contraposée.

**Étapes :**

1.  **Convergence simple :**

    Soit $x \in [0, 1]$.

    *   Si $0 \le x < 1$, alors $\lim_{n \to +\infty} x^n = 0$.
    *   Si $x = 1$, alors $f_n(1) = 1^n = 1$, donc $\lim_{n \to +\infty} f_n(1) = 1$.

    La fonction limite est :

    $$ f(x) = \begin{cases} 0 & \text{si } x \in [0, 1[ \\ 1 & \text{si } x = 1 \end{cases} $$

2.  **Continuité de la limite :**

    La fonction $f$ est discontinue en $x=1$ car $\lim_{x \to 1^-} f(x) = 0$ mais $f(1) = 1$.

3.  **Conclusion sur la convergence uniforme :**

    Les fonctions $f_n$ sont des polynômes, donc elles sont continues sur $[0, 1]$.

    Si la convergence était uniforme sur $[0, 1]$, la fonction limite $f$ serait nécessairement continue.

    Puisque $f$ n'est pas continue, la convergence **n'est pas uniforme**.

**Réponse :** La suite converge simplement mais pas uniformément.

</details>

---

## Exercice 3 : Convergence normale d'une série de fonctions

**Problème :**

On considère la série de fonctions $\sum u_n$ définie sur $\mathbb{R}$ par :

$$ u_n(x) = \frac{\sin(nx)}{n^3} \quad \text{pour } n \ge 1 $$

1. Montrer que la série converge simplement pour tout $x \in \mathbb{R}$.
2. Montrer que la série converge normalement sur $\mathbb{R}$.
3. En déduire que la fonction somme $S(x) = \sum_{n=1}^{+\infty} u_n(x)$ est continue sur $\mathbb{R}$.

<details>

<summary>Solution</summary>

**Méthode :**

Pour la convergence normale, on majore $|u_n(x)|$ par une suite numérique $a_n$ indépendante de $x$ telle que $\sum a_n$ converge. La convergence normale implique la convergence uniforme, qui implique la continuité de la somme (car les termes sont continus).

**Étapes :**

1.  **Convergence simple :**

    Pour tout $x \in \mathbb{R}$, $|\sin(nx)| \le 1$. Donc $|u_n(x)| \le \frac{1}{n^3}$.

    La série numérique $\sum \frac{1}{n^3}$ est une série de Riemann convergente ($\alpha = 3 > 1$). Par comparaison, la série $\sum u_n(x)$ converge absolument, donc simplement.

2.  **Convergence normale :**

    On calcule la norme infinie du terme général :

    $$ \|u_n\|_\infty = \sup_{x \in \mathbb{R}} \left| \frac{\sin(nx)}{n^3} \right| = \frac{1}{n^3} $$

    (Le sup est atteint car $\sin(nx)$ prend la valeur 1).

    La série numérique $\sum \|u_n\|_\infty = \sum \frac{1}{n^3}$ est convergente.

    Donc, par définition, la série de fonctions converge **normalement** sur $\mathbb{R}$.

3.  **Continuité :**
    *   La convergence normale implique la convergence uniforme sur $\mathbb{R}$.
    *   Pour tout $n \ge 1$, la fonction $x \mapsto \frac{\sin(nx)}{n^3}$ est continue sur $\mathbb{R}$.
    *   D'après le théorème de continuité sous convergence uniforme, la somme $S(x)$ est continue sur $\mathbb{R}$.

**Réponse :** La série converge normalement, donc uniformément, définissant une fonction continue.

</details>

---

## Exercice 4 : Étude d'une suite et intégration

**Problème :**

Soit la suite de fonctions $(f_n)_{n \ge 1}$ définie sur $[0, 1]$ par $f_n(x) = \frac{2nx}{1+n^2x^4}$.

1. Déterminer la limite simple $f$ de la suite sur $[0, 1]$.
2. Calculer l'intégrale $I_n = \int_0^1 f_n(x) dx$.
3. Calculer $\lim_{n \to +\infty} I_n$ et $\int_0^1 f(x) dx$.
4. Que peut-on en déduire concernant la convergence uniforme de $(f_n)$ sur $[0, 1]$ ?

<details>

<summary>Solution</summary>

**Méthode :**

Comparer la limite de l'intégrale et l'intégrale de la limite. Si elles diffèrent, le théorème d'interversion ne s'applique pas, ce qui implique l'absence de convergence uniforme.

**Étapes :**

1.  **Limite simple :**
    *   Si $x = 0$, $f_n(0) = 0 \to 0$.
    *   Si $x \in ]0, 1]$, $f_n(x) \sim \frac{2nx}{n^2x^4} = \frac{2}{nx^3} \xrightarrow{n \to \infty} 0$.

    Donc $f_n$ converge simplement vers la fonction nulle $f(x) = 0$.

2.  **Calcul de l'intégrale $I_n$ :**

    $$ I_n = \int_0^1 \frac{2nx}{1+(nx^2)^2} dx $$

    On pose le changement de variable $u = nx^2$, donc $du = 2nx dx$.

    Les bornes : si $x=0, u=0$ ; si $x=1, u=n$.

    $$ I_n = \int_0^n \frac{1}{1+u^2} du = [\arctan(u)]_0^n = \arctan(n) - \arctan(0) = \arctan(n) $$

3.  **Comparaison des limites :**
    *   Limite de la suite des intégrales : $\lim_{n \to +\infty} I_n = \lim_{n \to +\infty} \arctan(n) = \frac{\pi}{2}$.
    *   Intégrale de la limite : $\int_0^1 f(x) dx = \int_0^1 0 dx = 0$.

4.  **Conclusion :**

    On observe que $\lim \int f_n \neq \int \lim f_n$ ($\frac{\pi}{2} \neq 0$).

    Le théorème d'intégration sous convergence uniforme énonce que si la convergence était uniforme, ces valeurs seraient égales.

    Par conséquent, la suite $(f_n)$ ne converge **pas uniformément** sur $[0, 1]$.

**Réponse :** $\frac{\pi}{2} \neq 0$, donc pas de convergence uniforme.

</details>

---

## Exercice 5 : Domaine de convergence d'une série

**Problème :**

On considère la série de fonctions définie par $S(x) = \sum_{n=1}^{+\infty} \frac{e^{-nx}}{n}$.

1. Déterminer le domaine de définition $D$ de $S$ (l'ensemble des $x$ pour lesquels la série converge simplement).
2. Montrer que la série converge normalement sur l'intervalle $[a, +\infty[$ pour tout $a > 0$.
3. La convergence est-elle normale sur $]0, +\infty[$ ?

<details>

<summary>Solution</summary>

**Méthode :**

Utiliser les critères de convergence des séries numériques pour le point 1. Utiliser le sup du terme général pour le point 2.

**Étapes :**

1.  **Domaine de définition :**

    Soit $u_n(x) = \frac{e^{-nx}}{n} = \frac{(e^{-x})^n}{n}$.

    *   Si $x < 0$, alors $e^{-x} > 1$. Le terme général tend vers l'infini (croissance comparée), la série diverge grossièrement.
    *   Si $x = 0$, $u_n(0) = \frac{1}{n}$. C'est la série harmonique, qui diverge.
    *   Si $x > 0$, on pose $X = e^{-x} \in ]0, 1[$. La série $\sum \frac{X^n}{n}$ converge (série géométrique ou logarithmique).

    Donc $D = ]0, +\infty[$.

2.  **Convergence normale sur $[a, +\infty[$ :**

    Soit $a > 0$. Pour tout $x \in [a, +\infty[$, on a $e^{-x} \le e^{-a}$.

    $$ |u_n(x)| = \frac{e^{-nx}}{n} \le \frac{e^{-na}}{n} $$

    Le majorant $\frac{(e^{-a})^n}{n}$ est le terme général d'une série convergente (car $e^{-a} < 1$).

    Donc $\sum \|u_n\|_{\infty, [a, +\infty[}$ converge. La convergence est normale sur $[a, +\infty[$.

3.  **Sur $]0, +\infty[$ :**

    Le sup de $|u_n(x)|$ sur $]0, +\infty[$ est $\sup_{x>0} \frac{e^{-nx}}{n} = \frac{1}{n}$ (limite en $0^+$).

    La série $\sum \frac{1}{n}$ diverge.

    Il n'y a donc **pas** convergence normale sur $]0, +\infty[$.

**Réponse :** $D = ]0, +\infty[$. Normale sur $[a, +\infty[$ mais pas sur $D$ entier.

</details>

---

## Exercice 6 : Dérivation d'une série de fonctions

**Problème :**

Soit la fonction définie par la série $f(x) = \sum_{n=1}^{+\infty} \frac{\cos(nx)}{n^4}$ pour tout $x \in \mathbb{R}$.

1. Justifier que $f$ est définie sur $\mathbb{R}$.
2. Montrer que $f$ est de classe $\mathcal{C}^1$ sur $\mathbb{R}$ et exprimer sa dérivée sous forme d'une série.

<details>

<summary>Solution</summary>

**Méthode :**

Pour montrer qu'une somme de série est $\mathcal{C}^1$, on applique le théorème de dérivation terme à terme. Il faut vérifier la convergence de la série simple et la convergence uniforme de la série des dérivées.

**Étapes :**

1.  **Définition de $f$ :**

    $| \frac{\cos(nx)}{n^4} | \le \frac{1}{n^4}$. La série numérique $\sum \frac{1}{n^4}$ converge.

    La série converge (normalement) sur $\mathbb{R}$, donc $f(x)$ existe pour tout $x$.

2.  **Dérivabilité $\mathcal{C}^1$ :**

    Soit $u_n(x) = \frac{\cos(nx)}{n^4}$. Les fonctions $u_n$ sont $\mathcal{C}^1$ sur $\mathbb{R}$.

    Calculons la dérivée :

    $$ u_n'(x) = \frac{-n \sin(nx)}{n^4} = -\frac{\sin(nx)}{n^3} $$

    Étudions la convergence de la série des dérivées $\sum u_n'$.

    $$ \sup_{x \in \mathbb{R}} |u_n'(x)| = \sup_{x \in \mathbb{R}} \left| \frac{\sin(nx)}{n^3} \right| = \frac{1}{n^3} $$

    La série $\sum \frac{1}{n^3}$ converge.

    Donc la série $\sum u_n'$ converge normalement (donc uniformément) sur $\mathbb{R}$.

    **Conclusion :**

    Puisque $\sum u_n$ converge simplement (et même uniformément) et $\sum u_n'$ converge uniformément sur $\mathbb{R}$, le théorème de dérivation s'applique.

    $f$ est $\mathcal{C}^1$ et :

    $$ f'(x) = \sum_{n=1}^{+\infty} u_n'(x) = -\sum_{n=1}^{+\infty} \frac{\sin(nx)}{n^3} $$

**Réponse :** $f$ est $\mathcal{C}^1$ sur $\mathbb{R}$.

</details>

---

## Exercice 7 : Calcul de limite d'intégrale (Théorème de convergence dominée/uniforme)

**Problème :**

Calculer la limite suivante en justifiant soigneusement :

$$ \lim_{n \to +\infty} \int_0^{\frac{\pi}{2}} \frac{\sin(x)}{x + n} dx $$

<details>

<summary>Solution</summary>

**Méthode :**

Identifier une suite de fonctions $f_n$, montrer la convergence uniforme sur le segment d'intégration, puis intervertir limite et intégrale.

**Étapes :**

1.  **Identification de la suite :**

    Soit $f_n(x) = \frac{\sin(x)}{x+n}$ définie sur $I = [0, \frac{\pi}{2}]$.

2.  **Convergence simple :**

    Pour tout $x \in I$ fixé, $\lim_{n \to \infty} f_n(x) = 0$. La limite simple est la fonction nulle $f = 0$.

3.  **Convergence uniforme :**

    Majorons $|f_n(x) - f(x)|$ sur $I$.

    Pour tout $x \in [0, \frac{\pi}{2}]$, on a $|\sin(x)| \le 1$ et $x+n \ge n$.

    $$ |f_n(x)| = \frac{|\sin(x)|}{x+n} \le \frac{1}{n} $$

    Donc $\|f_n - 0\|_\infty \le \frac{1}{n}$.

    Comme $\frac{1}{n} \to 0$, la convergence est uniforme sur $[0, \frac{\pi}{2}]$.

4.  **Calcul de la limite :**

    Par le théorème d'interversion limite/intégrale (valide car la convergence est uniforme sur un segment) :

    $$ \lim_{n \to +\infty} \int_0^{\frac{\pi}{2}} f_n(x) dx = \int_0^{\frac{\pi}{2}} \left( \lim_{n \to +\infty} f_n(x) \right) dx = \int_0^{\frac{\pi}{2}} 0 dx = 0 $$

**Réponse :** La limite vaut 0.

</details>

---

## Exercice 8 : Intégration terme à terme d'une série

**Problème :**

1. Développer la fonction $t \mapsto e^{-t^2}$ en série entière sur $\mathbb{R}$.
2. En déduire l'expression de l'intégrale suivante sous forme de série :

   $$ F(x) = \int_0^x e^{-t^2} dt $$

   (Cette fonction est liée à la fonction d'erreur $\text{erf}(x)$).

3. Justifier la validité de l'intégration terme à terme sur un intervalle $[-A, A]$.

<details>

<summary>Solution</summary>

**Méthode :**

Utiliser le développement connu de l'exponentielle, substituer, puis intégrer la série.

**Étapes :**

1.  **Développement en série :**

    On sait que pour tout $u \in \mathbb{R}$, $e^u = \sum_{n=0}^{+\infty} \frac{u^n}{n!}$.

    En posant $u = -t^2$, on obtient pour tout $t \in \mathbb{R}$ :

    $$ e^{-t^2} = \sum_{n=0}^{+\infty} \frac{(-1)^n t^{2n}}{n!} $$

2.  **Justification de l'intégration :**

    Soit $x$ fixé (supposons $x>0$ sans perte de généralité). Sur l'intervalle compact $[0, x]$, la série entière a un rayon de convergence infini, donc elle converge normalement (et uniformément) sur tout compact.

    La convergence uniforme permet d'intégrer terme à terme.

3.  **Calcul de l'intégrale :**

    $$ \int_0^x e^{-t^2} dt = \int_0^x \left( \sum_{n=0}^{+\infty} \frac{(-1)^n t^{2n}}{n!} \right) dt $$

    $$ = \sum_{n=0}^{+\infty} \frac{(-1)^n}{n!} \left( \int_0^x t^{2n} dt \right) $$

    $$ = \sum_{n=0}^{+\infty} \frac{(-1)^n}{n!} \left[ \frac{t^{2n+1}}{2n+1} \right]_0^x $$

    $$ = \sum_{n=0}^{+\infty} \frac{(-1)^n x^{2n+1}}{n!(2n+1)} $$

**Réponse :** $F(x) = \sum_{n=0}^{+\infty} \frac{(-1)^n x^{2n+1}}{n!(2n+1)}$.

</details>

---

## Exercice 9 : Problème de synthèse (Convergence et Équation Différentielle)

**Problème :**

Soit la série de fonctions $\sum u_n$ définie par $u_n(x) = \frac{x^n}{n!}$ sur $\mathbb{R}$.

On note $S(x)$ sa somme.

1. Montrer que la série converge normalement sur tout intervalle compact $[-R, R]$.
2. Montrer que $S$ est dérivable sur $\mathbb{R}$ et calculer $S'(x)$.
3. Montrer que $S$ est solution de l'équation différentielle $y' = y$ avec la condition initiale $y(0) = 1$.

<details>

<summary>Solution</summary>

**Méthode :**

C'est la construction classique de l'exponentielle. On utilise les théorèmes de convergence normale et de dérivation.

**Étapes :**

1.  **Convergence normale :**

    Soit $R > 0$ et $x \in [-R, R]$.

    $|u_n(x)| \le \frac{R^n}{n!}$.

    La série numérique $\sum \frac{R^n}{n!}$ converge (D'Alembert ou exponentielle connue).

    Donc $\sum u_n$ converge normalement sur tout compact $[-R, R]$.

2.  **Dérivation :**

    Les fonctions $u_n$ sont $\mathcal{C}^1$.

    $$ u_n'(x) = \frac{n x^{n-1}}{n!} = \frac{x^{n-1}}{(n-1)!} \quad \text{pour } n \ge 1 $$

    (Et $u_0' = 0$).

    La série des dérivées est $\sum_{n=1}^{+\infty} \frac{x^{n-1}}{(n-1)!}$.

    En posant $k = n-1$, c'est la série $\sum_{k=0}^{+\infty} \frac{x^k}{k!}$, qui est exactement la même série que $S(x)$.

    Cette série converge aussi normalement sur tout compact.

    Donc $S$ est dérivable et $S'(x) = S(x)$.

3.  **Équation différentielle :**

    On a montré que $S'(x) = S(x)$.

    Calculons $S(0) = u_0(0) + \sum_{n=1}^\infty u_n(0) = 1 + 0 = 1$.

    Donc $S$ vérifie $y' = y$ et $y(0) = 1$.

**Réponse :** $S(x) = e^x$.

</details>

---

## Exercice 10 : Vrai ou Faux (Questions conceptuelles)

**Problème :**

Pour chaque affirmation, dire si elle est vraie ou fausse. Si elle est fausse, donner un contre-exemple.

1. Si une suite de fonctions continues $(f_n)$ converge simplement vers $f$ sur $[a, b]$, alors $\lim \int_a^b f_n = \int_a^b f$.
2. Si une suite de fonctions $(f_n)$ converge uniformément vers $f$ sur $\mathbb{R}$, alors $f$ est bornée. (Supposons les $f_n$ bornées).
3. Si une série de fonctions $\sum u_n$ converge uniformément sur $D$, alors le terme général $(u_n)$ converge uniformément vers 0 sur $D$.

<details>

<summary>Solution</summary>

**Réponses :**

1.  **FAUX.**

    La convergence simple ne suffit pas.

    *Contre-exemple :* La "bosse glissante". $f_n(t) = n t (1-t^2)^n$ sur $[0,1]$ converge vers 0, mais l'intégrale tend vers $1/2$. Ou l'exemple de la fonction triangle de hauteur $n$ et base $2/n$.

2.  **VRAI.**

    Si les $f_n$ sont bornées et que $\|f_n - f\|_\infty \to 0$, alors à partir d'un certain rang $N$, $\|f_N - f\|_\infty \le 1$.

    Donc pour tout $x$, $|f(x)| \le |f(x) - f_N(x)| + |f_N(x)| \le 1 + \sup |f_N|$.

    $f$ est bornée par $1 + \|f_N\|_\infty$.

3.  **VRAI.**

    Si la série converge, la suite des sommes partielles $S_n$ converge uniformément.

    Or $u_n = S_n - S_{n-1}$.

    Puisque $S_n \to S$ et $S_{n-1} \to S$ (uniformément), leur différence tend uniformément vers $S - S = 0$.

</details>
