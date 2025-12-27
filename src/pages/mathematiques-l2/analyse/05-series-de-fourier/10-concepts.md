---
id: b3f79c7a
type: concepts
order: 10
title: Chapitre 5 Séries de Fourier - concepts (A)
tags:
  - Séries de Fourier
  - Analyse
  - Séries trigonométriques
  - Théorème de Dirichlet
  - Théorème de Parseval
course: Analyse
courseId: aed2b890
chapter: Chapitre 5 Séries de Fourier
chapterId: 5a588ba0
level: regular
createdAt: '2025-12-27T05:31:47.061Z'
---
# Chapitre 5 Séries de Fourier

---

## Concept 1 : Définition et Formes des Séries de Fourier

### Prérequis

- Séries numériques et convergence.
- Nombres complexes (module, argument, forme exponentielle).
- Fonctions trigonométriques ($\cos, \sin$) et périodicité.
- Séries de fonctions (convergence simple).

### Définition

Une **série de Fourier** (ou série trigonométrique) est une série de fonctions d'une variable réelle $t$, $2\pi$-périodique, qui peut se présenter sous deux formes équivalentes :

**1. Forme Trigonométrique :**

C'est une série dont le terme général est défini par deux suites de scalaires $(a_n)_{n \in \mathbb{N}}$ et $(b_n)_{n \in \mathbb{N}^*}$ (avec $b_0=0$) :

$$S(t) = a_0 + \sum_{n=1}^{+\infty} (a_n \cos(nt) + b_n \sin(nt))$$

**2. Forme Exponentielle :**

C'est une représentation souvent plus simple pour les calculs, utilisant une suite de coefficients $(c_n)_{n \in \mathbb{Z}}$ :

$$S(t) = \sum_{n=-\infty}^{+\infty} c_n e^{int} = \lim_{N \to +\infty} \sum_{n=-N}^{N} c_n e^{int}$$

**Relation entre les coefficients :**

Les coefficients des deux formes sont liés par les relations d'Euler :

$$c_0 = a_0, \quad c_n = \frac{a_n - i b_n}{2}, \quad c_{-n} = \frac{a_n + i b_n}{2} \quad (\text{pour } n \ge 1)$$

Inversement :

$$a_n = c_n + c_{-n}, \quad b_n = i(c_n - c_{-n})$$

### Propriétés Clés

- **Périodicité :** Les sommes partielles et la somme de la série (si elle converge) sont toujours des fonctions $2\pi$-périodiques.
- **Rôle du terme constant :** Le terme $a_0$ (ou $c_0$) représente la "moyenne" du signal, tandis que les termes pour $n \ge 1$ représentent les harmoniques (oscillations).
- **Adaptation à la période $T$ :** Si la période est $T$ au lieu de $2\pi$, on remplace $nt$ par $\frac{2\pi n t}{T}$.

### Exemples

**Exemple 1 : Forme trigonométrique simple**

Soit la série définie par $a_0=1$, $a_n = \frac{1}{n^2}$ pour $n \ge 1$ et $b_n = 0$.

$$S(t) = 1 + \sum_{n=1}^{+\infty} \frac{\cos(nt)}{n^2} = 1 + \cos(t) + \frac{\cos(2t)}{4} + \frac{\cos(3t)}{9} + \dots$$

C'est une somme de cosinus dont l'amplitude décroît rapidement.

**Exemple 2 : Forme exponentielle**

Soit la série définie par $c_n = \frac{1}{2^{|n|}}$.

$$S(t) = \sum_{n \in \mathbb{Z}} \frac{e^{int}}{2^{|n|}} = \dots + \frac{e^{-2it}}{4} + \frac{e^{-it}}{2} + 1 + \frac{e^{it}}{2} + \frac{e^{2it}}{4} + \dots$$

En regroupant les termes $n$ et $-n$, on retrouve $c_n + c_{-n} = \frac{1}{2^n} + \frac{1}{2^n} = \frac{1}{2^{n-1}} = a_n$. C'est une série réelle car $c_n = c_{-n}$.

**Exemple 3 : Série harmonique alternée**

$$S(t) = \sum_{n=1}^{+\infty} \frac{(-1)^n \sin(nt)}{n}$$

Ici $a_n = 0$ pour tout $n$, et $b_n = \frac{(-1)^n}{n}$. C'est une série impaire (ne contient que des sinus).

### Contre-exemples

**Contre-exemple 1 : Série entière**

La série $\sum_{n=0}^\infty a_n t^n$ (série entière) n'est pas une série de Fourier car les fonctions de base $t^n$ ne sont pas périodiques (sauf pour $n=0$).

**Contre-exemple 2 : Fréquences non entières**

La série $\sum_{n=1}^\infty \frac{\cos(\sqrt{n} t)}{n^2}$ n'est pas une série de Fourier classique au sens de ce chapitre car les fréquences $\sqrt{n}$ ne sont pas des multiples entiers d'une fréquence fondamentale. La fonction somme ne sera généralement pas périodique.

### Concepts Liés

- **Séries entières :** Une série de Fourier peut être vue comme la partie réelle ou imaginaire d'une série entière sur le cercle unité ($z = r e^{it}$).
- **Polynômes trigonométriques :** Les sommes partielles des séries de Fourier sont des polynômes trigonométriques.

---

## Concept 2 : Convergence Normale et Régularité

### Prérequis

- Convergence simple et uniforme des suites de fonctions.
- Convergence normale des séries de fonctions.
- Théorèmes de continuité et dérivabilité sous le signe somme.

### Définition

La convergence de la série de Fourier dépend de la vitesse de décroissance des coefficients $a_n, b_n$ (ou $c_n$).

Si les séries numériques $\sum |a_n|$ et $\sum |b_n|$ (ou de manière équivalente $\sum |c_n|$) sont **absolument convergentes**, alors la série de Fourier converge **normalement** (et donc uniformément) sur $\mathbb{R}$.

La convergence normale implique :

$$\sup_{t \in \mathbb{R}} |S_N(t) - S(t)| \xrightarrow{N \to \infty} 0$$

### Propriétés Clés

- **Continuité :** Si $\sum |c_n|$ converge, la somme $S(t)$ est une fonction continue sur $\mathbb{R}$.
- **Dérivabilité :** Si la série $\sum |n c_n|$ converge, alors $S(t)$ est de classe $\mathcal{C}^1$ et on peut dériver terme à terme :

  $$S'(t) = \sum_{n \in \mathbb{Z}} (in c_n) e^{int}$$

- **Lien Régularité-Décroissance :** Plus les coefficients tendent vite vers 0, plus la fonction somme est régulière (dérivable). Si $c_n = O(1/n^k)$ avec $k > m+1$, la fonction est $m$ fois dérivable.

### Exemples

**Exemple 1 : Convergence Normale**

La série $\sum_{n=1}^\infty \frac{\cos(nt)}{n^2}$ converge normalement car $|\frac{\cos(nt)}{n^2}| \le \frac{1}{n^2}$, qui est le terme général d'une série de Riemann convergente. La somme est donc une fonction continue.

**Exemple 2 : Non-Convergence Normale**

La série $\sum_{n=1}^\infty \frac{\sin(nt)}{n}$ ne converge pas absolument (la série harmonique diverge). Elle ne converge pas normalement sur $\mathbb{R}$, bien qu'elle puisse converger simplement (c'est le cas du signal en créneaux). La somme présente des discontinuités (sauts).

**Exemple 3 : Dérivation**

Pour dériver $S(t) = \sum_{n=1}^\infty \frac{\sin(nt)}{n^3}$, on vérifie la convergence de la série des dérivées : terme général $\frac{n \cos(nt)}{n^3} = \frac{\cos(nt)}{n^2}$. Comme $\sum \frac{1}{n^2}$ converge, $S(t)$ est $\mathcal{C}^1$ et $S'(t) = \sum_{n=1}^\infty \frac{\cos(nt)}{n^2}$.

### Contre-exemples

**Contre-exemple 1**

La fonction somme de $\sum_{n=1}^\infty \frac{\sin(nt)}{n}$ n'est pas continue partout (discontinuité en $t=0$), ce qui illustre que sans la convergence absolue des coefficients (ici $1/n$ décroît trop lentement), la continuité n'est pas garantie.

**Contre-exemple 2**

Une fonction peut être continue mais avoir une série de Fourier qui ne converge pas absolument. La condition $\sum |c_n| < \infty$ est suffisante mais pas nécessaire pour la continuité simple.

### Concepts Liés

- **Espace vectoriel normé :** La convergence uniforme correspond à la norme infinie $\|\cdot\|_\infty$.
- **Dérivation terme à terme :** Application directe des théorèmes d'analyse réelle sur les séries de fonctions.

## Applications

- Lissage de signal : Les coefficients d'ordre élevé (hautes fréquences) étant négligeables pour les fonctions régulières, on peut compresser un signal en ne gardant que les premiers coefficients.

---

## Concept 3 : Calcul des Coefficients de Fourier (Analyse)

### Prérequis

- Intégration sur un segment (intégrale de Riemann).
- Intégration par parties.
- Fonctions paires et impaires.

### Définition

Pour une fonction $f$ donnée, $2\pi$-périodique et continue par morceaux, on définit ses **coefficients de Fourier** par les formules intégrales suivantes :

**Forme exponentielle :**

$$c_n(f) = \frac{1}{2\pi} \int_{-\pi}^{\pi} f(t) e^{-int} dt, \quad \forall n \in \mathbb{Z}$$

**Forme trigonométrique :**

$$a_0(f) = \frac{1}{2\pi} \int_{-\pi}^{\pi} f(t) dt \quad (\text{valeur moyenne})$$

$$a_n(f) = \frac{1}{\pi} \int_{-\pi}^{\pi} f(t) \cos(nt) dt, \quad \forall n \ge 1$$

$$b_n(f) = \frac{1}{\pi} \int_{-\pi}^{\pi} f(t) \sin(nt) dt, \quad \forall n \ge 1$$

L'intervalle d'intégration peut être n'importe quel intervalle de longueur $2\pi$, souvent $[-\pi, \pi]$ ou $[0, 2\pi]$.

### Propriétés Clés

- **Linéarité :** L'application $f \mapsto c_n(f)$ est linéaire. $c_n(\lambda f + \mu g) = \lambda c_n(f) + \mu c_n(g)$.
- **Parité (Simplification importante) :**
  - Si $f$ est **paire** ($f(-t) = f(t)$), alors $b_n = 0$ pour tout $n$. Le développement ne contient que des $\cos$. De plus, $c_n = c_{-n}$.
  - Si $f$ est **impaire** ($f(-t) = -f(t)$), alors $a_n = 0$ pour tout $n$. Le développement ne contient que des $\sin$. De plus, $c_n = -c_{-n}$.
- **Lemme de Riemann-Lebesgue :** Les coefficients $c_n, a_n, b_n$ tendent vers $0$ quand $n \to \infty$.

### Exemples

**Exemple 1 : Fonction Impaire (Créneau)**

Soit $f(t)$ définie sur $]-\pi, \pi]$ par $f(t) = -1$ si $t < 0$ et $f(t) = 1$ si $t > 0$ (impaire).

- Comme $f$ est impaire, $a_n = 0$.
- $b_n = \frac{1}{\pi} \int_{-\pi}^{\pi} f(t) \sin(nt) dt = \frac{2}{\pi} \int_{0}^{\pi} 1 \cdot \sin(nt) dt = \frac{2}{\pi} \left[ \frac{-\cos(nt)}{n} \right]_0^\pi$
- $b_n = \frac{2}{n\pi} (1 - (-1)^n)$.
  - Si $n$ est pair, $b_n = 0$.
  - Si $n$ est impair ($n=2k+1$), $b_n = \frac{4}{(2k+1)\pi}$.

Série associée : $\frac{4}{\pi} \sum_{k=0}^\infty \frac{\sin((2k+1)t)}{2k+1}$.

**Exemple 2 : Fonction Paire (Valeur absolue)**

Soit $g(t) = |t|$ sur $[-\pi, \pi]$, prolongée par périodicité.

- $g$ est paire, donc $b_n = 0$.
- $a_0 = \frac{1}{2\pi} \int_{-\pi}^{\pi} |t| dt = \frac{1}{\pi} \int_0^\pi t dt = \frac{\pi}{2}$.
- $a_n = \frac{2}{\pi} \int_0^\pi t \cos(nt) dt$. Par intégration par parties, on trouve $a_n = \frac{2}{\pi n^2}((-1)^n - 1)$.
- Termes non nuls pour $n$ impair : $a_{2k+1} = \frac{-4}{\pi(2k+1)^2}$.

**Exemple 3 : Forme exponentielle**

Pour $f(t) = e^{t}$ sur $[0, 2\pi[$.

$$c_n = \frac{1}{2\pi} \int_0^{2\pi} e^t e^{-int} dt = \frac{1}{2\pi} \int_0^{2\pi} e^{(1-in)t} dt = \frac{1}{2\pi} \frac{e^{2\pi(1-in)} - 1}{1-in}$$

Comme $e^{-2\pi i n} = 1$, on a $c_n = \frac{e^{2\pi}-1}{2\pi(1-in)}$.

### Contre-exemples

**Contre-exemple 1 : Non périodique**

On ne peut pas calculer les coefficients de Fourier "classiques" (discrets) pour la fonction $f(t) = t$ définie sur $\mathbb{R}$ tout entier, car l'intégrale sur une période n'a pas de sens (fonction non bornée, non périodique).

**Contre-exemple 2 : Symétrie fausse**

Si une fonction n'est ni paire ni impaire (ex: $f(t) = e^t$ sur $[-\pi, \pi]$), alors en général $a_n \neq 0$ et $b_n \neq 0$. Il ne faut pas supposer que des coefficients s'annulent sans vérifier la parité.

### Concepts Liés

- **Produit scalaire $L^2$ :** Le calcul de $c_n$ correspond au produit scalaire $\langle f, e_n \rangle$ où $e_n(t) = e^{int}$.

---

## Concept 4 : Théorème de Dirichlet (Convergence Ponctuelle)

### Prérequis

- Limites à gauche et à droite ($f(t_0^+), f(t_0^-)$).
- Fonctions de classe $\mathcal{C}^1$ par morceaux.
- Continuité.

### Définition

Le Théorème de Dirichlet énonce les conditions pour que la série de Fourier d'une fonction $f$ converge vers la fonction elle-même (convergence simple).

Soit $f$ une fonction $2\pi$-périodique et **de classe $\mathcal{C}^1$ par morceaux** sur $\mathbb{R}$.

Alors, pour tout réel $t_0$, la série de Fourier de $f$ converge vers la **demi-somme des limites à gauche et à droite** de $f$ en $t_0$ :

$$\lim_{N \to +\infty} S_N f(t_0) = \frac{f(t_0^+) + f(t_0^-)}{2}$$

On note souvent $\tilde{f}(t_0)$ cette valeur régularisée.

### Propriétés Clés

- **En un point de continuité :** Si $f$ est continue en $t_0$, alors $f(t_0^+) = f(t_0^-) = f(t_0)$. La série converge donc vers $f(t_0)$.
- **En un point de discontinuité :** Si $f$ fait un saut en $t_0$, la série converge vers le milieu du saut.
- **Hypothèse $\mathcal{C}^1$ par morceaux :** Cela signifie que sur une période, $f$ est continue et dérivable sauf en un nombre fini de points, et qu'en ces points, la fonction et sa dérivée admettent des limites finies.

### Exemples

**Exemple 1 : Signal Carré**

Pour la fonction créneau $f(t)$ valant $1$ sur $]0, \pi[$ et $-1$ sur $]-\pi, 0[$.

- En $t = \frac{\pi}{2}$ (point de continuité), la série converge vers $f(\frac{\pi}{2}) = 1$.
- En $t = 0$ (discontinuité), la limite à droite est $1$, la limite à gauche est $-1$. La série converge vers $\frac{1 + (-1)}{2} = 0$. On vérifie que la série de sinus (Exemple 3.1) vaut bien 0 en $t=0$.

**Exemple 2 : Fonction continue**

Pour $g(t) = |t|$ sur $[-\pi, \pi]$, $g$ est continue partout. Elle est $\mathcal{C}^1$ par morceaux (dérivée $-1$ puis $1$).

La série converge vers $|t|$ pour tout $t$. En particulier en $t=0$, $S(0) = 0$.

**Exemple 3 : Calcul de sommes de séries numériques**

En appliquant Dirichlet à la fonction carrée $h(t)=t^2$ (périodique) en $t=\pi$ :

$h$ est continue, $h(\pi)=\pi^2$. Sa série de Fourier est $\frac{\pi^2}{3} + 4 \sum \frac{(-1)^n \cos(nt)}{n^2}$.

En $t=\pi$, $\cos(n\pi)=(-1)^n$. Donc $\pi^2 = \frac{\pi^2}{3} + 4 \sum \frac{1}{n^2}$.

Cela permet de trouver $\sum_{n=1}^\infty \frac{1}{n^2} = \frac{\pi^2}{6}$.

### Contre-exemples

**Contre-exemple 1**

Si $f$ est seulement continue mais pas $\mathcal{C}^1$ par morceaux (par exemple une fonction fractale ou très irrégulière), le théorème de Dirichlet ne s'applique pas. Il existe des fonctions continues dont la série de Fourier diverge en certains points.

**Contre-exemple 2**

En un point de discontinuité $t_0$, on a $S_N f(t_0) \neq f(t_0)$ si la fonction n'a pas été définie comme la moyenne du saut à cet endroit (ex: si on avait défini $f(0)=1$ pour le signal carré, la série convergerait toujours vers 0, donc différent de $f(0)$).

### Concepts Liés

- **Phénomène de Gibbs :** Aux alentours d'une discontinuité, la somme partielle $S_N$ oscille et dépasse la valeur de la limite ("overshoot") avant de converger.
- **Noyau de Dirichlet :** La démonstration repose sur l'expression de la somme partielle comme une convolution avec le noyau de Dirichlet $D_n(t)$.

---

## Concept 5 : Théorème de Parseval (Identité énergétique)

### Prérequis

- Intégrale de fonctions à valeurs complexes.
- Module d'un nombre complexe.
- Produit scalaire hermitien.

### Définition

Le théorème de Parseval établit une égalité fondamentale entre la "puissance" du signal (intégrale du carré de la fonction) et la somme des carrés des modules de ses coefficients de Fourier.

Si $f$ est $2\pi$-périodique et continue par morceaux, alors :

**Avec les coefficients exponentiels :**

$$\frac{1}{2\pi} \int_{-\pi}^{\pi} |f(t)|^2 dt = \sum_{n=-\infty}^{+\infty} |c_n|^2$$

**Avec les coefficients trigonométriques :**

$$\frac{1}{2\pi} \int_{-\pi}^{\pi} |f(t)|^2 dt = |a_0|^2 + \frac{1}{2} \sum_{n=1}^{+\infty} (|a_n|^2 + |b_n|^2)$$

### Propriétés Clés

- **Conservation de l'énergie :** En physique, si $f(t)$ est un signal, l'intégrale représente son énergie (ou puissance moyenne) totale. Le théorème dit que l'énergie totale est la somme des énergies de chaque harmonique.
- **Convergence quadratique :** Le théorème assure que la série $\sum |c_n|^2$ est toujours convergente.
- **Isométrie :** C'est une isométrie entre l'espace des fonctions de carré intégrable ($L^2$) et l'espace des suites de carré sommable ($l^2$).

### Exemples

**Exemple 1 : Calcul de $\zeta(4)$**

Reprenons $h(t) = t^2$ sur $[-\pi, \pi]$.

$a_0 = \frac{\pi^2}{3}$, $a_n = \frac{4(-1)^n}{n^2}$, $b_n=0$.

L'intégrale de $|f|^2$ vaut $\frac{1}{2\pi} \int_{-\pi}^\pi t^4 dt = \frac{1}{2\pi} [\frac{t^5}{5}]_{-\pi}^\pi = \frac{\pi^4}{5}$.

Parseval : $\frac{\pi^4}{5} = (\frac{\pi^2}{3})^2 + \frac{1}{2} \sum_{n=1}^\infty (\frac{4}{n^2})^2 = \frac{\pi^4}{9} + 8 \sum \frac{1}{n^4}$.

On en déduit $\sum_{n=1}^\infty \frac{1}{n^4} = \frac{\pi^4}{90}$.

**Exemple 2 : Signal créneau**

Pour le créneau ($f=\pm 1$), $|f(t)|^2 = 1$. Donc $\frac{1}{2\pi} \int_{-\pi}^\pi 1 dt = 1$.

Les coefficients non nuls sont $b_{2k+1} = \frac{4}{(2k+1)\pi}$.

Parseval : $1 = \frac{1}{2} \sum_{k=0}^\infty (\frac{4}{(2k+1)\pi})^2 = \frac{8}{\pi^2} \sum \frac{1}{(2k+1)^2}$.

On retrouve $\sum \frac{1}{(2k+1)^2} = \frac{\pi^2}{8}$.

**Exemple 3 : Coefficients $c_n$**

Si $\sum |c_n|^2 = A$, alors l'énergie du signal est $A$. Si on filtre le signal en mettant à zéro les coefficients pour $|n| > N$, l'erreur quadratique commise est exactement $\sum_{|n|>N} |c_n|^2$.

### Contre-exemples

**Contre-exemple 1**

Le théorème de Parseval est une égalité. Si on trouve une inégalité stricte (inégalité de Bessel) avec une somme infinie, c'est que la famille de fonctions n'est pas une "base" complète (ce qui n'est pas le cas pour les séries de Fourier classiques qui sont complètes).

**Contre-exemple 2**

Il ne s'applique pas directement si l'intégrale de $|f|^2$ diverge (fonction non de carré intégrable), bien que pour les fonctions continues par morceaux ce soit toujours fini.

### Concepts Liés

- **Espaces de Hilbert :** Parseval est la généralisation du théorème de Pythagore $\|x\|^2 = \sum |\langle x, e_k \rangle|^2$ dans un espace de dimension infinie.
- **Inégalité de Bessel :** Pour une somme partielle, $\sum_{|k|\le N} |c_k|^2 \le \frac{1}{2\pi} \int |f|^2$.

## Applications

- Calcul de sommes de séries numériques complexes (comme $\sum 1/n^4$).
- Analyse spectrale de signaux (répartition de l'énergie par fréquence).
