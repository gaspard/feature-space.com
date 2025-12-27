---
id: f69d69a7
type: exercises
order: 11
title: Chapitre 5 Séries de Fourier - exercices (A)
tags:
  - Séries de Fourier
  - Analyse
  - Séries trigonométriques
  - Théorème de Dirichlet
  - Théorème de Parseval
createdAt: '2025-12-27T05:31:47.061Z'
level: regular
course: Analyse
courseId: aed2b890
chapter: Chapitre 5 Séries de Fourier
chapterId: 5a588ba0
---
# Exercices "Chapitre 5 Séries de Fourier"

---

## Exercice 1 : Calcul de base (Fonction Impaire)

**Problème :**

Soit $f$ une fonction $2\pi$-périodique définie sur $[-\pi, \pi]$ par :

$$f(t) = \begin{cases} -1 & \text{si } -\pi < t < 0 \\ 1 & \text{si } 0 < t < \pi \\ 0 & \text{si } t = -\pi, 0, \pi \end{cases}$$

1. Tracer le graphe de la fonction sur l'intervalle $[-2\pi, 2\pi]$.
2. Déterminer la parité de la fonction $f$.
3. Calculer les coefficients de Fourier trigonométriques $a_n$ et $b_n$.
4. Écrire la série de Fourier $S_f(t)$.

<details>

<summary>Solution</summary>

**Méthode :** On utilise les propriétés de parité pour simplifier le calcul des coefficients, puis on applique les formules d'Euler-Fourier.

**Étapes :**

1. **Graphe :** C'est un signal "créneau" (carré). Il oscille entre -1 et 1.
2. **Parité :**

   Pour tout $t \in ]-\pi, \pi[$, on a $f(-t) = -f(t)$.

   Par exemple, si $t \in ]0, \pi[$, alors $-t \in ]-\pi, 0[$, donc $f(-t) = -1$ et $-f(t) = -1$.

   La fonction est donc **impaire**.

3. **Calcul des coefficients :**
   *   Puisque $f$ est impaire, $a_n = 0$ pour tout $n \ge 0$.
   *   Calculons $b_n$ pour $n \ge 1$ :

     $$b_n = \frac{1}{\pi} \int_{-\pi}^{\pi} f(t) \sin(nt) \, dt$$

     Comme $f(t)\sin(nt)$ est le produit de deux fonctions impaires, c'est une fonction paire. On peut donc intégrer sur $[0, \pi]$ et multiplier par 2 :

     $$b_n = \frac{2}{\pi} \int_{0}^{\pi} 1 \cdot \sin(nt) \, dt$$

     $$b_n = \frac{2}{\pi} \left[ \frac{-\cos(nt)}{n} \right]_{0}^{\pi} = \frac{2}{n\pi} (-\cos(n\pi) + \cos(0))$$

     On sait que $\cos(n\pi) = (-1)^n$.

     $$b_n = \frac{2}{n\pi} (1 - (-1)^n)$$

     *   Si $n$ est pair ($n=2k$), $b_{2k} = \frac{2}{2k\pi}(1-1) = 0$.
     *   Si $n$ est impair ($n=2k+1$), $b_{2k+1} = \frac{2}{(2k+1)\pi}(1 - (-1)) = \frac{4}{(2k+1)\pi}$.
4. **Série de Fourier :**

   $$S_f(t) = \sum_{k=0}^{+\infty} \frac{4}{(2k+1)\pi} \sin((2k+1)t)$$

**Réponse :** $S_f(t) = \frac{4}{\pi} \left( \sin(t) + \frac{\sin(3t)}{3} + \frac{\sin(5t)}{5} + \dots \right)$

</details>

---

## Exercice 2 : Calcul de base (Fonction Paire)

**Problème :**

Soit $g$ la fonction $2\pi$-périodique définie par $g(t) = |t|$ sur $[-\pi, \pi]$.

1. Déterminer la parité de $g$.
2. Calculer le coefficient $a_0$.
3. Calculer les coefficients $a_n$ et $b_n$ pour $n \ge 1$.
4. Écrire la série de Fourier.

<details>

<summary>Solution</summary>

**Méthode :** Utiliser la parité pour annuler $b_n$ et intégrer par parties pour trouver $a_n$.

**Étapes :**

1. **Parité :** $|-t| = |t|$, la fonction est **paire**. Donc $b_n = 0$ pour tout $n \ge 1$.
2. **Calcul de $a_0$ :**

   $$a_0 = \frac{1}{2\pi} \int_{-\pi}^{\pi} |t| \, dt = \frac{2}{2\pi} \int_{0}^{\pi} t \, dt = \frac{1}{\pi} \left[ \frac{t^2}{2} \right]_0^\pi = \frac{1}{\pi} \frac{\pi^2}{2} = \frac{\pi}{2}$$

3. **Calcul de $a_n$ ($n \ge 1$) :**

   $$a_n = \frac{2}{\pi} \int_{0}^{\pi} t \cos(nt) \, dt$$

   On effectue une intégration par parties :

   $u = t \Rightarrow u' = 1$

   $v' = \cos(nt) \Rightarrow v = \frac{\sin(nt)}{n}$

   $$a_n = \frac{2}{\pi} \left( \left[ t \frac{\sin(nt)}{n} \right]_0^\pi - \int_0^\pi \frac{\sin(nt)}{n} \, dt \right)$$

   Le terme entre crochets est nul car $\sin(n\pi)=0$ et $\sin(0)=0$.

   $$a_n = \frac{2}{\pi} \left[ \frac{\cos(nt)}{n^2} \right]_0^\pi = \frac{2}{\pi n^2} (\cos(n\pi) - 1) = \frac{2}{\pi n^2} ((-1)^n - 1)$$

   *   Si $n$ est pair, $a_n = 0$.
   *   Si $n$ est impair ($n=2k+1$), $a_n = \frac{2}{\pi (2k+1)^2} (-2) = \frac{-4}{\pi (2k+1)^2}$.
4. **Série de Fourier :**

   $$S_g(t) = \frac{\pi}{2} - \frac{4}{\pi} \sum_{k=0}^{+\infty} \frac{\cos((2k+1)t)}{(2k+1)^2}$$

**Réponse :** $S_g(t) = \frac{\pi}{2} - \frac{4}{\pi} \left( \cos(t) + \frac{\cos(3t)}{9} + \frac{\cos(5t)}{25} + \dots \right)$

</details>

---

## Exercice 3 : Forme Exponentielle

**Problème :**

Soit la fonction $h(t) = e^{2t}$ définie sur $[0, 2\pi[$, et prolongée par $2\pi$-périodicité sur $\mathbb{R}$.

Calculer les coefficients de Fourier complexes $c_n(h)$ pour tout $n \in \mathbb{Z}$.

<details>

<summary>Solution</summary>

**Méthode :** Appliquer directement la formule de définition des coefficients complexes $c_n$.

**Étapes :**

1. **Formule :**

   $$c_n = \frac{1}{2\pi} \int_{0}^{2\pi} h(t) e^{-int} \, dt$$

   *(Note : L'intervalle de définition est $[0, 2\pi[$, on intègre donc sur cet intervalle).*

2. **Calcul :**

   $$c_n = \frac{1}{2\pi} \int_{0}^{2\pi} e^{2t} e^{-int} \, dt = \frac{1}{2\pi} \int_{0}^{2\pi} e^{(2-in)t} \, dt$$

   Primitive de $e^{\alpha t}$ est $\frac{e^{\alpha t}}{\alpha}$. Ici $\alpha = 2-in \neq 0$.

   $$c_n = \frac{1}{2\pi} \left[ \frac{e^{(2-in)t}}{2-in} \right]_0^{2\pi}$$

   $$c_n = \frac{1}{2\pi(2-in)} (e^{(2-in)2\pi} - e^0)$$

   On sait que $e^{(2-in)2\pi} = e^{4\pi} e^{-i 2\pi n}$. Comme $n$ est entier, $e^{-i 2\pi n} = 1$.

   $$c_n = \frac{1}{2\pi(2-in)} (e^{4\pi} - 1)$$

3. **Simplification (forme algébrique) :**

   On multiplie par le conjugué $(2+in)$ :

   $$c_n = \frac{e^{4\pi}-1}{2\pi} \cdot \frac{2+in}{4+n^2}$$

**Réponse :** $c_n = \frac{(e^{4\pi}-1)(2+in)}{2\pi(4+n^2)}$

</details>

---

## Exercice 4 : Théorème de Dirichlet (Convergence Ponctuelle)

**Problème :**

On reprend la fonction $f(t)$ de l'**Exercice 1** (créneau : $1$ sur $]0, \pi[$, $-1$ sur $]-\pi, 0[$).

Sa série de Fourier est $S_f(t) = \frac{4}{\pi} \sum_{k=0}^{+\infty} \frac{\sin((2k+1)t)}{2k+1}$.

Utiliser le théorème de Dirichlet pour déterminer la valeur vers laquelle converge la série $S_f(t)$ aux points :

1. $t = \frac{\pi}{2}$
2. $t = 0$
3. $t = \pi$

<details>

<summary>Solution</summary>

**Méthode :** Vérifier les hypothèses du théorème de Dirichlet ($f$ est $2\pi$-périodique et $\mathcal{C}^1$ par morceaux) et calculer la limite $\frac{f(t^+) + f(t^-)}{2}$.

**Étapes :**

1. **Vérification des hypothèses :**

   La fonction est constante par morceaux (donc $\mathcal{C}^1$ par morceaux) et périodique. Le théorème s'applique.

2. **En $t = \frac{\pi}{2}$ :**

   La fonction est continue en ce point.

   $f(\frac{\pi}{2}^-) = 1$ et $f(\frac{\pi}{2}^+) = 1$.

   La série converge vers $f(\frac{\pi}{2}) = 1$.

   *Vérification :* $\sin((2k+1)\frac{\pi}{2}) = (-1)^k$. La série donne $\frac{4}{\pi}(1 - 1/3 + 1/5 \dots) = 1$ (série de Leibniz).

3. **En $t = 0$ :**

   C'est un point de discontinuité.

   $\lim_{t \to 0^+} f(t) = 1$

   $\lim_{t \to 0^-} f(t) = -1$

   La série converge vers $\frac{1 + (-1)}{2} = 0$.

   *Vérification :* Tous les termes $\sin((2k+1)0)$ sont nuls.

4. **En $t = \pi$ :**

   C'est un point de discontinuité (aux bornes de la période).

   $\lim_{t \to \pi^+} f(t) = -1$ (valeur après le saut, début période suivante)

   $\lim_{t \to \pi^-} f(t) = 1$

   La série converge vers $\frac{-1 + 1}{2} = 0$.

**Réponse :** 

1. $S_f(\frac{\pi}{2}) = 1$
2. $S_f(0) = 0$
3. $S_f(\pi) = 0$

</details>

---

## Exercice 5 : Application au calcul de sommes (Parseval)

**Problème :**

On considère la fonction $g(t) = |t|$ sur $[-\pi, \pi]$ de l'**Exercice 2**.

On rappelle que sa série de Fourier est $S_g(t) = \frac{\pi}{2} - \frac{4}{\pi} \sum_{k=0}^{+\infty} \frac{\cos((2k+1)t)}{(2k+1)^2}$.

1. Écrire l'égalité de Parseval pour cette fonction.
2. En déduire la valeur de la somme de la série numérique :

   $$A = \sum_{k=0}^{+\infty} \frac{1}{(2k+1)^4} = 1 + \frac{1}{3^4} + \frac{1}{5^4} + \dots$$

<details>

<summary>Solution</summary>

**Méthode :** Calculer l'énergie du signal (intégrale du carré) et égaler à la somme des carrés des coefficients de Fourier.

**Étapes :**

1. **Calcul de l'intégrale (membre de gauche) :**

   $$\frac{1}{2\pi} \int_{-\pi}^{\pi} |g(t)|^2 \, dt = \frac{1}{2\pi} \int_{-\pi}^{\pi} t^2 \, dt = \frac{1}{\pi} \int_{0}^{\pi} t^2 \, dt$$

   $$= \frac{1}{\pi} \left[ \frac{t^3}{3} \right]_0^\pi = \frac{1}{\pi} \frac{\pi^3}{3} = \frac{\pi^2}{3}$$

2. **Somme des coefficients (membre de droite) :**

   Les coefficients sont $a_0 = \frac{\pi}{2}$, $a_{2k+1} = \frac{-4}{\pi(2k+1)^2}$, et les autres sont nuls.

   Formule de Parseval : $|a_0|^2 + \frac{1}{2} \sum_{n=1}^\infty (|a_n|^2 + |b_n|^2)$

   $$= \left(\frac{\pi}{2}\right)^2 + \frac{1}{2} \sum_{k=0}^{+\infty} \left( \frac{-4}{\pi(2k+1)^2} \right)^2$$

   $$= \frac{\pi^2}{4} + \frac{1}{2} \sum_{k=0}^{+\infty} \frac{16}{\pi^2 (2k+1)^4}$$

   $$= \frac{\pi^2}{4} + \frac{8}{\pi^2} \sum_{k=0}^{+\infty} \frac{1}{(2k+1)^4}$$

3. **Égalité et résolution :**

   $$\frac{\pi^2}{3} = \frac{\pi^2}{4} + \frac{8}{\pi^2} A$$

   $$\frac{8}{\pi^2} A = \frac{\pi^2}{3} - \frac{\pi^2}{4} = \frac{4\pi^2 - 3\pi^2}{12} = \frac{\pi^2}{12}$$

   $$A = \frac{\pi^2}{12} \times \frac{\pi^2}{8} = \frac{\pi^4}{96}$$

**Réponse :** $\sum_{k=0}^{+\infty} \frac{1}{(2k+1)^4} = \frac{\pi^4}{96}$

</details>

---

## Exercice 6 : Calcul de sommes (Dirichlet)

**Problème :**

Soit la fonction $k(t) = t^2$ sur $[-\pi, \pi]$, $2\pi$-périodique.

On donne son développement en série de Fourier (à admettre ou vérifier rapidement) :

$$t^2 = \frac{\pi^2}{3} + 4 \sum_{n=1}^{+\infty} \frac{(-1)^n}{n^2} \cos(nt), \quad \forall t \in [-\pi, \pi]$$

En évaluant cette série en un point $t$ judicieusement choisi, calculer la valeur de la somme :

$$\zeta(2) = \sum_{n=1}^{+\infty} \frac{1}{n^2}$$

<details>

<summary>Solution</summary>

**Méthode :** Choisir $t$ tel que $\cos(nt)$ simplifie le terme $(-1)^n$ pour obtenir une somme de termes positifs.

**Étapes :**

1. **Choix de $t$ :**

   On veut faire apparaître $\sum \frac{1}{n^2}$.

   Si on prend $t = \pi$, on a $\cos(n\pi) = (-1)^n$.

   Le terme général devient $\frac{(-1)^n}{n^2} (-1)^n = \frac{(-1)^{2n}}{n^2} = \frac{1}{n^2}$.

2. **Application de Dirichlet :**

   La fonction $k(t) = t^2$ est continue sur $[-\pi, \pi]$ et $k(-\pi) = (-\pi)^2 = \pi^2 = k(\pi)$. La fonction périodisée est continue partout.

   En $t=\pi$, $S_k(\pi) = k(\pi) = \pi^2$.

3. **Résolution :**

   $$\pi^2 = \frac{\pi^2}{3} + 4 \sum_{n=1}^{+\infty} \frac{1}{n^2}$$

   $$\pi^2 - \frac{\pi^2}{3} = 4 \sum_{n=1}^{+\infty} \frac{1}{n^2}$$

   $$\frac{2\pi^2}{3} = 4 \sum_{n=1}^{+\infty} \frac{1}{n^2}$$

   $$\sum_{n=1}^{+\infty} \frac{1}{n^2} = \frac{2\pi^2}{3 \times 4} = \frac{\pi^2}{6}$$

**Réponse :** $\sum_{n=1}^{+\infty} \frac{1}{n^2} = \frac{\pi^2}{6}$

</details>

---

## Exercice 7 : Convergence et Régularité

**Problème :**

On considère deux séries trigonométriques :

1. $S_1(t) = \sum_{n=1}^{+\infty} \frac{\sin(nt)}{n^3}$
2. $S_2(t) = \sum_{n=1}^{+\infty} \frac{\sin(nt)}{\sqrt{n}}$

Pour chacune des séries :

1. La série converge-t-elle normalement sur $\mathbb{R}$ ?
2. La fonction somme est-elle continue sur $\mathbb{R}$ ?
3. La fonction somme est-elle de classe $\mathcal{C}^1$ sur $\mathbb{R}$ ?

<details>

<summary>Solution</summary>

**Méthode :** Utiliser les critères de convergence normale ($\sum |u_n(t)|$ majorée par une série numérique convergente) et les théorèmes de dérivation terme à terme.

**Étapes :**

**Pour $S_1(t)$ :**

1. **Convergence Normale :**

   $\left| \frac{\sin(nt)}{n^3} \right| \le \frac{1}{n^3}$.

   La série numérique $\sum \frac{1}{n^3}$ (Riemann $\alpha=3 > 1$) converge.

   Donc $S_1$ converge normalement (et uniformément).

2. **Continuité :**

   La convergence uniforme de fonctions continues ($\sin(nt)$) implique la continuité de la somme. $S_1$ est continue.

3. **Caractère $\mathcal{C}^1$ :**

   La série des dérivées terme à terme est $\sum \frac{n \cos(nt)}{n^3} = \sum \frac{\cos(nt)}{n^2}$.

   On a $\left| \frac{\cos(nt)}{n^2} \right| \le \frac{1}{n^2}$. La série $\sum \frac{1}{n^2}$ converge.

   La série des dérivées converge normalement, donc $S_1$ est $\mathcal{C}^1$.

**Pour $S_2(t)$ :**

1. **Convergence Normale :**

   Le majorant naturel est $\frac{1}{\sqrt{n}}$. La série $\sum \frac{1}{\sqrt{n}}$ diverge (Riemann $\alpha = 1/2 \le 1$).

   La convergence n'est pas normale.

2. **Continuité :**

   Bien qu'elle ne converge pas absolument, cette série converge simplement pour tout $t$ (sauf peut-être $t=0$) par le critère d'Abel, mais la convergence n'est pas uniforme au voisinage de 0. La fonction n'est pas forcément continue (en général elle a une singularité en 0).

   *Note niveau régulier : Il suffit de dire "Pas de convergence normale, donc les théorèmes simples ne s'appliquent pas".*

3. **Caractère $\mathcal{C}^1$ :**

   La série des dérivées serait $\sum \sqrt{n} \cos(nt)$, qui ne tend même pas vers 0. Elle diverge grossièrement. La fonction n'est pas $\mathcal{C}^1$.

**Réponse :**

*   $S_1$ : Converge normalement, est Continue, est $\mathcal{C}^1$.
*   $S_2$ : Ne converge pas normalement.

</details>

---

## Exercice 8 : Période arbitraire $T$

**Problème :**

Soit $f$ une fonction périodique de période $T = 2$. Elle est définie sur $[-1, 1]$ par $f(x) = x$.

Calculer le coefficient $b_n$ de sa série de Fourier.

*Indication : Pour une période $T$, on remplace $nt$ par $\frac{2\pi n x}{T}$.*

<details>

<summary>Solution</summary>

**Méthode :** Adapter les formules de Fourier pour une période $T$ arbitraire. La pulsation fondamentale est $\omega = \frac{2\pi}{T} = \pi$.

**Étapes :**

1. **Analyse de la fonction :**

   $f(x) = x$ sur $[-1, 1]$. C'est une fonction impaire.

   Donc $a_n = 0$.

2. **Formule pour $b_n$ :**

   Sur une période $T$, la formule est :

   $$b_n = \frac{2}{T} \int_{-T/2}^{T/2} f(x) \sin\left(\frac{2\pi n x}{T}\right) \, dx$$

   Ici $T=2$, donc :

   $$b_n = \frac{2}{2} \int_{-1}^{1} x \sin(\pi n x) \, dx = \int_{-1}^{1} x \sin(\pi n x) \, dx$$

3. **Calcul :**

   La fonction sous l'intégrale est paire ($Impaire \times Impaire$).

   $$b_n = 2 \int_{0}^{1} x \sin(\pi n x) \, dx$$

   Intégration par parties :

   $u = x, v' = \sin(\pi n x) \Rightarrow u'=1, v = \frac{-\cos(\pi n x)}{\pi n}$

   $$b_n = 2 \left( \left[ \frac{-x \cos(\pi n x)}{\pi n} \right]_0^1 - \int_0^1 \frac{-\cos(\pi n x)}{\pi n} \, dx \right)$$

   $$b_n = 2 \left( \frac{-1 \cdot \cos(\pi n)}{\pi n} - 0 + \left[ \frac{\sin(\pi n x)}{(\pi n)^2} \right]_0^1 \right)$$

   Le terme en sinus est nul car $\sin(\pi n) = 0$.

   $$b_n = 2 \left( \frac{-(-1)^n}{\pi n} \right) = \frac{2(-1)^{n+1}}{\pi n}$$

**Réponse :** $b_n = \frac{2(-1)^{n+1}}{n\pi}$

</details>

---

## Exercice 9 : Relation Coefficients et Translation

**Problème :**

Soit $f(t)$ une fonction $2\pi$-périodique dont les coefficients de Fourier complexes sont notés $c_n$.

On définit la fonction translatée $g(t) = f(t - t_0)$ où $t_0$ est un réel fixé.

Exprimer les coefficients de Fourier complexes $d_n$ de $g$ en fonction de $c_n$ et de $t_0$.

<details>

<summary>Solution</summary>

**Méthode :** Utiliser la définition intégrale et effectuer un changement de variable.

**Étapes :**

1. **Définition de $d_n$ :**

   $$d_n = \frac{1}{2\pi} \int_{0}^{2\pi} g(t) e^{-int} \, dt = \frac{1}{2\pi} \int_{0}^{2\pi} f(t-t_0) e^{-int} \, dt$$

2. **Changement de variable :**

   Posons $u = t - t_0$, donc $t = u + t_0$ et $dt = du$.

   Les bornes deviennent $-t_0$ et $2\pi - t_0$. Comme l'intégrande est $2\pi$-périodique, l'intégrale sur tout intervalle de longueur $2\pi$ est identique. On peut intégrer sur $[0, 2\pi]$ (ou garder les bornes, le résultat est le même).

   $$d_n = \frac{1}{2\pi} \int_{0}^{2\pi} f(u) e^{-in(u+t_0)} \, du$$

3. **Factorisation :**

   $$d_n = \frac{1}{2\pi} \int_{0}^{2\pi} f(u) e^{-inu} e^{-int_0} \, du$$

   Le terme $e^{-int_0}$ est constant par rapport à l'intégration.

   $$d_n = e^{-int_0} \left( \frac{1}{2\pi} \int_{0}^{2\pi} f(u) e^{-inu} \, du \right)$$

   On reconnaît $c_n$.

**Réponse :** $d_n = c_n e^{-int_0}$

*(Le décalage temporel correspond à un déphasage dans le domaine fréquentiel).*

</details>

---

## Exercice 10 : Équation différentielle et Séries de Fourier

**Problème :**

On cherche une solution $2\pi$-périodique particulière $y(t)$ de l'équation différentielle :

$$y''(t) + 2y(t) = \sin(3t)$$

1. On suppose que $y(t)$ s'écrit sous la forme $y(t) = \sum_{n=-\infty}^{+\infty} c_n e^{int}$. Exprimer $y''(t)$ en fonction des $c_n$.
2. Injecter ces expressions dans l'équation différentielle.
3. Déterminer les coefficients $c_n$ de la solution $y(t)$.
4. En déduire l'expression réelle de $y(t)$.

<details>

<summary>Solution</summary>

**Méthode :** Transformer l'équation différentielle en une équation algébrique sur les coefficients de Fourier $c_n$.

**Étapes :**

1. **Dérivation :**

   Si $y(t) = \sum c_n e^{int}$, alors $y''(t) = \sum c_n (in)^2 e^{int} = \sum -n^2 c_n e^{int}$.

2. **Substitution :**

   L'équation devient :

   $$\sum -n^2 c_n e^{int} + 2 \sum c_n e^{int} = \sin(3t)$$

   $$\sum c_n (2 - n^2) e^{int} = \frac{e^{i3t} - e^{-i3t}}{2i}$$

3. **Identification :**

   Le terme de droite est une série de Fourier où seuls les coefficients pour $n=3$ et $n=-3$ sont non nuls.

   *   Pour $n=3$ : Le coeff est $\frac{1}{2i}$. Donc $c_3 (2 - 3^2) = \frac{1}{2i} \Rightarrow c_3(-7) = \frac{1}{2i} \Rightarrow c_3 = \frac{-1}{14i}$.
   *   Pour $n=-3$ : Le coeff est $\frac{-1}{2i}$. Donc $c_{-3} (2 - (-3)^2) = \frac{-1}{2i} \Rightarrow c_{-3}(-7) = \frac{-1}{2i} \Rightarrow c_{-3} = \frac{1}{14i}$.
   *   Pour $|n| \neq 3$ : Le coeff à droite est 0. Comme $2-n^2 \neq 0$ (car $\sqrt{2}$ n'est pas entier), alors $c_n = 0$.
4. **Expression réelle :**

   $y(t) = c_3 e^{3it} + c_{-3} e^{-3it} = \frac{-1}{14i} e^{3it} + \frac{1}{14i} e^{-3it}$

   $y(t) = -\frac{1}{7} \frac{e^{3it} - e^{-3it}}{2i} = -\frac{1}{7} \sin(3t)$.

**Réponse :** $y(t) = -\frac{1}{7} \sin(3t)$

</details>
