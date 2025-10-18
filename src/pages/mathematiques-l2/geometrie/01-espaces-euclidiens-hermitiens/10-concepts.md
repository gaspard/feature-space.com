---
id: 0d2ba30e
type: concepts
order: 10
title: Espaces Euclidiens et Hermitiens
tags:
  - Espaces Euclidiens
  - Espaces Hermitiens
  - Produit scalaire
  - Gram-Schmidt
  - Projection orthogonale
  - Endomorphismes adjoints
  - Théorème de Riesz
course: Géométrie
courseId: d9494343
chapter: Espaces Euclidiens et Hermitiens
chapterId: 67b3d760
level: regular
createdAt: '2025-10-12T18:13:04.161Z'
---
# Espaces Euclidiens et Hermitiens (A)

---

## Concept 1: Formes bilinéaires et sesquilinéaires

### Prérequis

- Espace vectoriel sur un corps $\mathbb{K}$ (principalement $\mathbb{R}$ ou $\mathbb{C}$)
- Applications (fonctions) d'un ensemble produit vers un corps
- Propriétés des corps $\mathbb{R}$ et $\mathbb{C}$ (notamment la conjugaison complexe)
- Algèbre matricielle de base (produit matriciel, transposée)

### Définition

Soit $E$ un espace vectoriel sur un corps $\mathbb{K}$ ($\mathbb{K} = \mathbb{R}$ ou $\mathbb{C}$).

Une application $\varphi: E \times E \to \mathbb{K}$ est appelée :

1.  **Forme bilinéaire** si elle est linéaire par rapport à chacune de ses deux variables. Formellement, pour tous vecteurs $u, v, u_1, u_2, v_1, v_2 \in E$ et tout scalaire $\lambda \in \mathbb{K}$ :
    *   Linéarité à gauche : $\varphi(u_1 + \lambda u_2, v) = \varphi(u_1, v) + \lambda\varphi(u_2, v)$
    *   Linéarité à droite : $\varphi(u, v_1 + \lambda v_2) = \varphi(u, v_1) + \lambda\varphi(u, v_2)$

2.  **Forme sesquilinéaire** (uniquement pour $\mathbb{K} = \mathbb{C}$) si elle est linéaire par rapport à sa première variable et semi-linéaire (ou anti-linéaire) par rapport à sa seconde. Formellement, pour tous vecteurs $u, v, u_1, u_2, v_1, v_2 \in E$ et tout scalaire $\lambda \in \mathbb{C}$ :
    *   Linéarité à gauche : $\varphi(u_1 + \lambda u_2, v) = \varphi(u_1, v) + \lambda\varphi(u_2, v)$
    *   Semi-linéarité à droite : $\varphi(u, v_1 + \lambda v_2) = \varphi(u, v_1) + \bar{\lambda}\varphi(u, v_2)$, où $\bar{\lambda}$ est le conjugué de $\lambda$.

De plus, on introduit des propriétés de symétrie :

- Une forme bilinéaire $\varphi$ est dite **symétrique** si pour tous $x, y \in E$, $\varphi(x, y) = \varphi(y, x)$.
- Une forme sesquilinéaire $\varphi$ est dite **hermitienne symétrique** (ou simplement hermitienne) si pour tous $x, y \in E$, $\varphi(x, y) = \overline{\varphi(y, x)}$.

**Explication détaillée :**

Une forme bilinéaire peut être vue comme une généralisation du produit usuel de nombres. L'idée est de "multiplier" deux vecteurs pour obtenir un scalaire, de manière à ce que la distributivité et la compatibilité avec la multiplication par un scalaire soient conservées pour chaque vecteur. Par exemple, si on fixe le deuxième vecteur $v$, l'application $u \mapsto \varphi(u, v)$ est une application linéaire. De même si on fixe le premier.

Dans le cas complexe, la forme sesquilinéaire est une adaptation nécessaire pour obtenir des propriétés géométriques intéressantes (comme une norme à valeurs réelles). La semi-linéarité à droite, avec le conjugué, est la clé.

### Propriétés Clés

- Pour toute forme bilinéaire ou sesquilinéaire $\varphi$, on a $\varphi(x, 0_E) = \varphi(0_E, x) = 0$ pour tout $x \in E$.
- Une forme bilinéaire symétrique sur $\mathbb{R}^n$ peut toujours s'écrire sous la forme $\varphi(X, Y) = {}^tX S Y$ où $S$ est une matrice symétrique.
- Pour une forme hermitienne $\varphi$, la valeur $\varphi(x, x)$ est toujours un nombre réel, car $\varphi(x, x) = \overline{\varphi(x, x)}$.

### Exemples

**Exemple 1 (Forme bilinéaire symétrique canonique sur $\mathbb{R}^n$)**

Soit $E = \mathbb{R}^n$. Pour $x = (x_1, \dots, x_n)$ and $y = (y_1, \dots, y_n)$, l'application $\varphi(x, y) = \sum_{i=1}^n x_i y_i$ est une forme bilinéaire symétrique.

- **Bilinéarité** : $\varphi(x+\lambda z, y) = \sum (x_i+\lambda z_i)y_i = \sum x_i y_i + \lambda \sum z_i y_i = \varphi(x,y) + \lambda \varphi(z,y)$. La linéarité à droite est similaire.
- **Symétrie** : $\varphi(x, y) = \sum x_i y_i = \sum y_i x_i = \varphi(y, x)$.

**Exemple 2 (Forme sesquilinéaire hermitienne canonique sur $\mathbb{C}^n$)**

Soit $E = \mathbb{C}^n$. Pour $x = (x_1, \dots, x_n)$ and $y = (y_1, \dots, y_n)$, l'application $\varphi(x, y) = \sum_{i=1}^n x_i \bar{y_i}$ est une forme sesquilinéaire hermitienne.

- **Linéarité à gauche** : $\varphi(x+\lambda z, y) = \sum (x_i+\lambda z_i)\bar{y_i} = \sum x_i \bar{y_i} + \lambda \sum z_i \bar{y_i} = \varphi(x,y) + \lambda \varphi(z,y)$.
- **Semi-linéarité à droite** : $\varphi(x, y+\lambda z) = \sum x_i \overline{(y_i+\lambda z_i)} = \sum x_i (\bar{y_i}+\bar{\lambda}\bar{z_i}) = \sum x_i\bar{y_i} + \bar{\lambda}\sum x_i\bar{z_i} = \varphi(x,y) + \bar{\lambda}\varphi(x,z)$.
- **Symétrie hermitienne** : $\overline{\varphi(y, x)} = \overline{\sum y_i \bar{x_i}} = \sum \bar{y_i} \overline{\bar{x_i}} = \sum \bar{y_i} x_i = \varphi(x, y)$.

**Exemple 3 (Forme bilinéaire sur un espace de polynômes)**

Soit $E = \mathbb{R}_n[X]$ l'espace des polynômes de degré au plus $n$. L'application $\varphi(P, Q) = \int_0^1 P(t)Q(t)dt$ est une forme bilinéaire symétrique.

- La bilinéarité découle de la linéarité de l'intégrale: $\int_0^1 (P_1(t)+\lambda P_2(t))Q(t)dt = \int_0^1 P_1(t)Q(t)dt + \lambda \int_0^1 P_2(t)Q(t)dt$.
- La symétrie est évidente car $P(t)Q(t) = Q(t)P(t)$.

### Contre-exemples

**Contre-exemple 1 (Non-linéarité)**

Soit $E = \mathbb{R}^2$. L'application $\psi(x, y) = x_1^2 + y_2$ n'est ni bilinéaire, ni sesquilinéaire. Elle n'est pas linéaire par rapport à la première variable : $\psi(2x, y) = (2x_1)^2 + y_2 = 4x_1^2 + y_2 \ne 2\psi(x,y)$.

**Contre-exemple 2 (Forme bilinéaire non symétrique)**

Soit $E = \mathbb{R}^2$. L'application $\psi(x, y) = x_1 y_2 - x_2 y_1$ (le déterminant des vecteurs colonnes $x$ et $y$) est bilinéaire.

Cependant, elle n'est pas symétrique. On a $\psi(y, x) = y_1 x_2 - y_2 x_1 = - (x_1 y_2 - x_2 y_1) = -\psi(x, y)$. C'est une forme antisymétrique.

### Concepts Connexes

- **Produit Scalaire** : Un produit scalaire est un cas particulier de forme bilinéaire symétrique (ou sesquilinéaire hermitienne) qui est de plus "définie positive".
- **Forme quadratique** : À toute forme bilinéaire symétrique $\varphi$ est associée une forme quadratique $q(x) = \varphi(x, x)$.

### Applications

- Les formes bilinéaires sont fondamentales en géométrie (définition des angles, longueurs) et en physique (produit scalaire en mécanique, métrique de l'espace-temps en relativité).
- Les formes sesquilinéaires sont la pierre angulaire de la mécanique quantique pour décrire les espaces d'états (espaces de Hilbert).

---

## Concept 2: Produit Scalaire et Espace Préhilbertien

### Prérequis

- Formes bilinéaires et sesquilinéaires
- Nombres réels positifs ($\mathbb{R}^+$)
- Notion de vecteur nul ($0_E$)

### Définition

Soit $E$ un $\mathbb{K}$-espace vectoriel ($\mathbb{K}=\mathbb{R}$ ou $\mathbb{C}$) et $\varphi$ une forme sur $E \times E$.

1.  $\varphi$ est dite **positive** si pour tout vecteur $x \in E$, la valeur $\varphi(x,x)$ est un nombre réel positif ou nul ($\varphi(x,x) \in \mathbb{R}^+$).
2.  $\varphi$ est dite **définie** si pour tout vecteur $x \in E$, l'implication suivante est vraie :

    $$ \varphi(x,x) = 0 \implies x = 0_E $$

    Autrement dit, le seul vecteur qui "multiplié par lui-même" donne 0 est le vecteur nul.

Un **produit scalaire** est une forme qui combine ces propriétés avec la symétrie.

- Sur un $\mathbb{R}$-espace vectoriel $E$, c'est une **forme bilinéaire symétrique définie positive**.
- Sur un $\mathbb{C}$-espace vectoriel $E$, c'est une **forme sesquilinéaire hermitienne définie positive**.

Un espace vectoriel muni d'un produit scalaire est appelé **espace préhilbertien**. S'il est de dimension finie, on l'appelle :

- **Espace euclidien** dans le cas réel.
- **Espace hermitien** dans le cas complexe.

On note souvent le produit scalaire par $\langle x, y \rangle$ au lieu de $\varphi(x, y)$.

### Propriétés Clés

- **Positivité** : $\langle x, x \rangle \ge 0$ pour tout $x \in E$.
- **Caractère défini** : $\langle x, x \rangle = 0 \iff x = 0_E$.
- **Symétrie** (cas réel) : $\langle x, y \rangle = \langle y, x \rangle$.
- **Symétrie hermitienne** (cas complexe) : $\langle x, y \rangle = \overline{\langle y, x \rangle}$.
- **Linéarité à gauche** : $\langle x+\lambda z, y \rangle = \langle x,y \rangle + \lambda \langle z,y \rangle$.
- **(Semi-)Linéarité à droite** : $\langle x, y+\lambda z \rangle = \langle x,y \rangle + c \langle x,z \rangle$, où $c=\lambda$ si $\mathbb{K}=\mathbb{R}$ et $c=\bar{\lambda}$ si $\mathbb{K}=\mathbb{C}$.

### Exemples

**Exemple 1 (Produit scalaire usuel sur $\mathbb{R}^n$)**

L'espace $\mathbb{R}^n$ muni de $\langle x, y \rangle = \sum_{i=1}^n x_i y_i$ est un espace euclidien.

Vérifions le caractère défini positif :

- $\langle x, x \rangle = \sum_{i=1}^n x_i^2$. C'est une somme de carrés de réels, donc $\ge 0$.
- Si $\langle x, x \rangle = 0$, alors $\sum x_i^2 = 0$. Comme chaque $x_i^2 \ge 0$, la somme est nulle si et seulement si chaque terme est nul, i.e., $x_i^2=0$ pour tout $i$. Donc $x_i=0$ pour tout $i$, et $x=0_E$.

C'est donc bien un produit scalaire.

**Exemple 2 (Produit scalaire usuel sur $\mathbb{C}^n$)**

L'espace $\mathbb{C}^n$ muni de $\langle x, y \rangle = \sum_{i=1}^n x_i \bar{y_i}$ est un espace hermitien.

Vérifions le caractère défini positif :

- $\langle x, x \rangle = \sum_{i=1}^n x_i \bar{x_i} = \sum_{i=1}^n |x_i|^2$. C'est une somme de modules au carré (qui sont des réels positifs), donc $\ge 0$.
- Si $\langle x, x \rangle = 0$, alors $\sum |x_i|^2 = 0$. Ceci implique $|x_i|^2=0$ pour tout $i$, donc $x_i=0$ pour tout $i$, et $x=0_E$.

**Exemple 3 (Produit scalaire sur un espace de fonctions)**

Soit $E$ l'espace des fonctions continues de $[a,b]$ dans $\mathbb{R}$, noté $\mathcal{C}([a,b], \mathbb{R})$.

L'application $\langle f, g \rangle = \int_a^b f(t)g(t)dt$ est un produit scalaire.

Vérifions le caractère défini positif :

- $\langle f, f \rangle = \int_a^b f(t)^2 dt$. Comme $f(t)^2 \ge 0$ pour tout $t$, l'intégrale est positive.
- Si $\langle f, f \rangle = 0$, alors $\int_a^b f(t)^2 dt=0$. Puisque $f^2$ est une fonction continue et positive, son intégrale est nulle si et seulement si la fonction est identiquement nulle. Donc $f(t)^2=0$ pour tout $t$, ce qui signifie $f(t)=0$ pour tout $t$. Donc $f$ est la fonction nulle.

### Contre-exemples

**Contre-exemple 1 (Forme non positive)**

Sur $\mathbb{R}^2$, considérons la forme bilinéaire symétrique $\varphi(x, y) = x_1 y_1 - x_2 y_2$.

Elle n'est pas positive. Prenons $x = (0, 1)$. Alors $\varphi(x, x) = 0^2 - 1^2 = -1 < 0$. Ce n'est pas un produit scalaire. (C'est la métrique de Minkowski en 2D).

**Contre-exemple 2 (Forme positive mais non définie)**

Sur $\mathbb{R}^2$, considérons la forme bilinéaire symétrique $\varphi(x, y) = x_1 y_1$.

- Elle est positive : $\varphi(x, x) = x_1^2 \ge 0$.
- Mais elle n'est pas définie. Prenons le vecteur non nul $x = (0, 1)$. On a $\varphi(x, x) = 0^2 = 0$. Comme un vecteur non nul donne 0, la forme n'est pas définie. Ce n'est pas un produit scalaire.

### Concepts Connexes

- **Norme** : Tout produit scalaire induit naturellement une notion de "longueur" appelée norme.
- **Orthogonalité** : Deux vecteurs dont le produit scalaire est nul sont dits orthogonaux. Cette notion est centrale en géométrie euclidienne.
- **Espace de Hilbert** : Un espace préhilbertien qui est complet (une propriété d'analyse) est appelé un espace de Hilbert. C'est le cadre naturel pour la mécanique quantique et l'analyse fonctionnelle.

---

## Concept 3: Inégalité de Cauchy-Schwarz

### Prérequis

- Produit scalaire
- Notion de module d'un nombre réel ou complexe

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien. Pour tous vecteurs $x, y \in E$, on a l'inégalité suivante :

$$ |\langle x, y \rangle| \le \sqrt{\langle x, x \rangle} \sqrt{\langle y, y \rangle} $$

En utilisant la notation de la norme $\|v\| = \sqrt{\langle v, v \rangle}$ (voir concept suivant), l'inégalité se réécrit de façon plus compacte :

$$ |\langle x, y \rangle| \le \|x\| \|y\| $$

De plus, il y a **égalité** si et seulement si les vecteurs $x$ et $y$ sont colinéaires (c'est-à-dire, il existe un scalaire $\lambda$ tel que $x = \lambda y$ ou $y = \lambda x$).

**Explication détaillée :**

Cette inégalité est l'une des plus importantes en mathématiques. Elle établit une relation fondamentale entre le produit scalaire de deux vecteurs et leurs longueurs respectives. Intuitivement, dans $\mathbb{R}^2$ ou $\mathbb{R}^3$, on sait que $\langle x, y \rangle = \|x\|\|y\|\cos(\theta)$, où $\theta$ est l'angle entre les deux vecteurs. L'inégalité de Cauchy-Schwarz $|\langle x, y \rangle| \le \|x\|\|y\|$ découle alors du fait que $|\cos(\theta)| \le 1$. L'inégalité généralise cette idée à n'importe quel espace euclidien ou hermitien, même là où la notion d'angle n'est pas directement visible.

### Propriétés Clés

- **Fondamentale** : Elle est cruciale pour démontrer l'inégalité triangulaire pour la norme associée au produit scalaire.
- **Cas d'égalité** : L'analyse du cas d'égalité (colinéarité) est souvent aussi importante que l'inégalité elle-même. Si $\|x\|\|y\| \ne 0$, l'égalité a lieu si et seulement si $y = \frac{\langle y,x \rangle}{\|x\|^2} x$.

### Exemples

**Exemple 1 (Dans $\mathbb{R}^n$)**

Soient $x = (x_1, \dots, x_n)$ et $y = (y_1, \dots, y_n)$ deux vecteurs de $\mathbb{R}^n$. L'inégalité s'écrit :

$$ \left| \sum_{i=1}^n x_i y_i \right| \le \sqrt{\sum_{i=1}^n x_i^2} \sqrt{\sum_{i=1}^n y_i^2} $$

Par exemple, pour $x=(1, 2, 3)$ et $y=(4, 5, 6)$,

$|\langle x,y \rangle| = |1\cdot4 + 2\cdot5 + 3\cdot6| = |4+10+18| = 32$.

$\|x\| = \sqrt{1^2+2^2+3^2} = \sqrt{14}$.

$\|y\| = \sqrt{4^2+5^2+6^2} = \sqrt{16+25+36} = \sqrt{77}$.

On vérifie que $32 \le \sqrt{14}\sqrt{77} \approx \sqrt{1078} \approx 32.8$. L'inégalité est bien satisfaite.

**Exemple 2 (Dans un espace de fonctions)**

Soit $E = \mathcal{C}([0,1], \mathbb{R})$ avec $\langle f,g \rangle = \int_0^1 f(t)g(t)dt$. L'inégalité de Cauchy-Schwarz devient :

$$ \left| \int_0^1 f(t)g(t)dt \right| \le \sqrt{\int_0^1 f(t)^2 dt} \sqrt{\int_0^1 g(t)^2 dt} $$

Par exemple, pour $f(t)=1$ et $g(t)=t$.

$|\langle f,g \rangle| = |\int_0^1 t dt| = |[t^2/2]_0^1| = 1/2$.

$\|f\|^2 = \int_0^1 1^2 dt = 1 \implies \|f\|=1$.

$\|g\|^2 = \int_0^1 t^2 dt = [t^3/3]_0^1 = 1/3 \implies \|g\|=1/\sqrt{3}$.

On vérifie que $1/2 \le 1 \cdot (1/\sqrt{3}) \approx 0.577$.

**Exemple 3 (Cas d'égalité)**

Dans $\mathbb{R}^3$, soient $x=(1, 2, 3)$ et $y=(2, 4, 6)$. Ces vecteurs sont colinéaires car $y=2x$.

$|\langle x,y \rangle| = |1\cdot2 + 2\cdot4 + 3\cdot6| = |2+8+18| = 28$.

$\|x\| = \sqrt{1^2+2^2+3^2} = \sqrt{14}$.

$\|y\| = \sqrt{2^2+4^2+6^2} = \sqrt{4+16+36} = \sqrt{56} = \sqrt{4 \cdot 14} = 2\sqrt{14}$.

On a bien $|\langle x,y \rangle| = 28$ et $\|x\|\|y\| = \sqrt{14} \cdot (2\sqrt{14}) = 2 \cdot 14 = 28$. Il y a égalité.

### Contre-exemples

L'inégalité de Cauchy-Schwarz est un théorème, elle est donc toujours vraie pour un produit scalaire. Les "contre-exemples" illustrent des situations où elle ne s'applique pas car l'hypothèse (la forme est un produit scalaire) n'est pas vérifiée.

**Contre-exemple 1 (Forme non positive)**

Reprenons la forme $\varphi(x, y) = x_1 y_1 - x_2 y_2$ sur $\mathbb{R}^2$.

Soit $x = (2, 1)$ et $y = (1, 2)$.

$|\varphi(x, y)| = |2 \cdot 1 - 1 \cdot 2| = 0$.

$\varphi(x, x) = 2^2 - 1^2 = 3$.

$\varphi(y, y) = 1^2 - 2^2 = -3$.

Ici $\sqrt{\varphi(y,y)}$ n'est même pas un nombre réel. L'inégalité n'a pas de sens.

**Contre-exemple 2 (Forme non positive, un autre cas)**

Toujours avec $\varphi(x, y) = x_1 y_1 - x_2 y_2$, choisissons $x = (3, 2)$ et $y = (3, -2)$.

$|\varphi(x, y)| = |3 \cdot 3 - 2 \cdot (-2)| = |9 + 4| = 13$.

$\varphi(x, x) = 3^2 - 2^2 = 5$.

$\varphi(y, y) = 3^2 - (-2)^2 = 5$.

On a $13 > \sqrt{5}\sqrt{5}=5$. L'inégalité est violée.

### Concepts Connexes

- **Norme** : L'inégalité de Cauchy-Schwarz est la clé pour prouver que la norme induite par un produit scalaire satisfait l'inégalité triangulaire.
- **Angle entre vecteurs** : Dans un espace euclidien, elle permet de définir le cosinus de l'angle entre deux vecteurs non nuls par $\cos(\theta) = \frac{\langle x, y \rangle}{\|x\|\|y\|}$, car elle garantit que cette valeur est bien dans l'intervalle $[-1, 1]$.

---

## Concept 4: Norme associée à un produit scalaire

### Prérequis

- Produit scalaire
- Inégalité de Cauchy-Schwarz

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien. On définit la **norme** d'un vecteur $x \in E$, notée $\|x\|$, comme la racine carrée de son produit scalaire avec lui-même :

$$ \|x\| := \sqrt{\langle x, x \rangle} $$

Cette application $\|\cdot\| : E \to \mathbb{R}^+$ est bien une norme, car elle vérifie les trois axiomes suivants pour tous $x, y \in E$ et tout $\lambda \in \mathbb{K}$:

1.  **Séparation (ou caractère défini)** : $\|x\| = 0 \iff x = 0_E$.
2.  **Homogénéité** : $\|\lambda x\| = |\lambda| \|x\|$.
3.  **Inégalité triangulaire (ou de Minkowski)** : $\|x + y\| \le \|x\| + \|y\|$.

La norme mesure la "longueur" ou la "magnitude" d'un vecteur. Un espace vectoriel muni d'une norme est appelé un espace vectoriel normé.

### Propriétés Clés

- **Théorème de Pythagore** : Si deux vecteurs $x$ et $y$ sont orthogonaux (c'est-à-dire $\langle x, y \rangle = 0$), alors :

  $$ \|x+y\|^2 = \|x\|^2 + \|y\|^2 $$

  Ceci se généralise à une famille de $n$ vecteurs deux à deux orthogonaux $(v_1, \dots, v_n)$:

  $$ \left\|\sum_{i=1}^n v_i\right\|^2 = \sum_{i=1}^n \|v_i\|^2 $$

- **Identités de polarisation** : Elles permettent de reconstituer le produit scalaire à partir de la norme, montrant que la "géométrie des longueurs" détermine la "géométrie des angles".
  - Cas euclidien ($\mathbb{K}=\mathbb{R}$) :

    $$ \langle x, y \rangle = \frac{1}{2} \left( \|x+y\|^2 - \|x\|^2 - \|y\|^2 \right) $$

  - Cas hermitien ($\mathbb{K}=\mathbb{C}$) :

    $$ \langle x, y \rangle = \frac{1}{4} \left( \|x+y\|^2 - \|x-y\|^2 + i(\|x+iy\|^2 - \|x-iy\|^2) \right) $$

- **Identité du parallélogramme** : Une norme dérive d'un produit scalaire si et seulement si elle vérifie cette identité pour tous vecteurs $x, y \in E$ :

  $$ \|x+y\|^2 + \|x-y\|^2 = 2(\|x\|^2 + \|y\|^2) $$

  Géométriquement, cela signifie que la somme des carrés des longueurs des diagonales d'un parallélogramme est égale à la somme des carrés des longueurs de ses quatre côtés.

### Exemples

**Exemple 1 (Norme euclidienne sur $\mathbb{R}^3$)**

Pour $x = (x_1, x_2, x_3) \in \mathbb{R}^3$, la norme associée au produit scalaire usuel est :

$\|x\| = \sqrt{x_1^2 + x_2^2 + x_3^2}$.

Si $x=(1, -2, 2)$, $\|x\| = \sqrt{1^2+(-2)^2+2^2} = \sqrt{1+4+4} = \sqrt{9}=3$.

**Exemple 2 (Vérification de l'inégalité triangulaire)**

Soit $x=(1,0)$ et $y=(0,1)$ dans $\mathbb{R}^2$.

$\|x\|=1$, $\|y\|=1$.

$x+y=(1,1)$, donc $\|x+y\|=\sqrt{1^2+1^2}=\sqrt{2}$.

On vérifie bien que $\|x+y\| = \sqrt{2} \le \|x\|+\|y\| = 1+1=2$.

**Exemple 3 (Identité du parallélogramme)**

Soit $x=(2,1)$ et $y=(1,3)$ dans $\mathbb{R}^2$.

$\|x\|^2=2^2+1^2=5$, $\|y\|^2=1^2+3^2=10$.

$x+y = (3,4)$, $\|x+y\|^2 = 3^2+4^2=25$.

$x-y = (1,-2)$, $\|x-y\|^2 = 1^2+(-2)^2=5$.

Vérifions l'identité :

$\|x+y\|^2 + \|x-y\|^2 = 25+5 = 30$.

$2(\|x\|^2 + \|y\|^2) = 2(5+10) = 2(15) = 30$.

L'identité est bien vérifiée.

### Contre-exemples

Ce sont des exemples de normes qui ne proviennent pas d'un produit scalaire, ce que l'on démontre en montrant que l'identité du parallélogramme n'est pas satisfaite.

**Contre-exemple 1 (La norme 1)**

Sur $\mathbb{R}^2$, on définit $\|x\|_1 = |x_1|+|x_2|$. C'est bien une norme.

Prenons $x=(1,0)$ et $y=(0,1)$.

$\|x\|_1=1$, $\|y\|_1=1$.

$x+y=(1,1)$, $\|x+y\|_1 = 1+1=2$.

$x-y=(1,-1)$, $\|x-y\|_1 = |1|+|-1|=2$.

Vérifions l'identité du parallélogramme :

$\|x+y\|_1^2 + \|x-y\|_1^2 = 2^2+2^2 = 8$.

$2(\|x\|_1^2 + \|y\|_1^2) = 2(1^2+1^2) = 4$.

Puisque $8 \ne 4$, cette norme ne dérive pas d'un produit scalaire.

**Contre-exemple 2 (La norme infinie)**

Sur $\mathbb{R}^2$, on définit $\|x\|_\infty = \max(|x_1|,|x_2|)$. C'est bien une norme.

Prenons les mêmes $x=(1,0)$ et $y=(0,1)$.

$\|x\|_\infty=1$, $\|y\|_\infty=1$.

$x+y=(1,1)$, $\|x+y\|_\infty = \max(1,1)=1$.

$x-y=(1,-1)$, $\|x-y\|_\infty = \max(1,1)=1$.

Vérifions l'identité du parallélogramme :

$\|x+y\|_\infty^2 + \|x-y\|_\infty^2 = 1^2+1^2 = 2$.

$2(\|x\|_\infty^2 + \|y\|_\infty^2) = 2(1^2+1^2) = 4$.

Puisque $2 \ne 4$, cette norme ne dérive pas d'un produit scalaire.

### Concepts Connexes

- **Distance** : Une norme induit une distance $d(x,y) = \|x-y\|$. Un espace euclidien est donc un cas particulier d'espace métrique.
- **Vecteur unitaire** : Un vecteur $u$ tel que $\|u\|=1$ est dit unitaire ou normé.
- **Normalisation** : Le processus de remplacer un vecteur non nul $x$ par le vecteur unitaire $u = \frac{x}{\|x\|}$.

# Espaces Euclidiens et Hermitiens (A)

---

## Concept 1: Formes Bilinéaires et Sesquilinéaires

### Prérequis

- Algèbre Linéaire : Espaces vectoriels sur un corps $\mathbb{K}$ (principalement $\mathbb{R}$ ou $\mathbb{C}$), applications linéaires.
- Nombres Complexes : Conjugué d'un nombre complexe.

### Définition

Soit $E$ un espace vectoriel sur un corps $\mathbb{K}$ (soit $\mathbb{K} = \mathbb{R}$ ou $\mathbb{K} = \mathbb{C}$).

1.  **Forme bilinéaire** (cas $\mathbb{K}=\mathbb{R}$ ou $\mathbb{C}$) :

    Une application $\varphi : E \times E \to \mathbb{K}$ est une **forme bilinéaire** si elle est linéaire par rapport à chacune de ses deux variables. C'est-à-dire, pour tous vecteurs $u, u_1, u_2, v, v_1, v_2 \in E$ et tout scalaire $\lambda \in \mathbb{K}$ :

    - **Linéarité à gauche** : $\varphi(u_1 + \lambda u_2, v) = \varphi(u_1, v) + \lambda\varphi(u_2, v)$.
    - **Linéarité à droite** : $\varphi(u, v_1 + \lambda v_2) = \varphi(u, v_1) + \lambda\varphi(u, v_2)$.

2.  **Forme sesquilinéaire** (cas $\mathbb{K}=\mathbb{C}$) :

    Une application $\varphi : E \times E \to \mathbb{C}$ est une **forme sesquilinéaire** si elle est linéaire par rapport à sa première variable et "semi-linéaire" (ou anti-linéaire) par rapport à sa seconde. C'est-à-dire :

    - **Linéarité à gauche** : $\varphi(u_1 + \lambda u_2, v) = \varphi(u_1, v) + \lambda\varphi(u_2, v)$.
    - **Semi-linéarité à droite** : $\varphi(u, v_1 + \lambda v_2) = \varphi(u, v_1) + \bar{\lambda}\varphi(u, v_2)$, où $\bar{\lambda}$ est le conjugué de $\lambda$.

Une forme bilinéaire est dite **symétrique** si $\forall x, y \in E, \varphi(x, y) = \varphi(y, x)$.

Une forme sesquilinéaire est dite **hermitienne** (ou hermitienne symétrique) si $\forall x, y \in E, \varphi(x, y) = \overline{\varphi(y, x)}$.

### Explications Détaillées

L'idée d'une forme bilinéaire ou sesquilinéaire est de généraliser le concept de produit. Tout comme on multiplie deux nombres pour en obtenir un troisième, ces formes "multiplient" deux vecteurs pour obtenir un scalaire.

- La **bilinéarité** (pour les espaces réels) signifie que l'application se comporte comme une multiplication distributive. Si on fixe le deuxième vecteur, l'application est linéaire par rapport au premier, et vice-versa.
- La **sesquilinéarité** (pour les espaces complexes) est une adaptation nécessaire pour obtenir des propriétés géométriques intéressantes, comme une "longueur" (norme) qui soit un nombre réel positif. La semi-linéarité à droite, avec le conjugué, assure cette propriété.

La symétrie (ou symétrie hermitienne) est une condition naturelle qui garantit que "l'ordre des vecteurs ne change pas le résultat" (ou le change d'une manière prévisible, par conjugaison).

### Exemples

**Exemple 1 (Forme bilinéaire symétrique sur $\mathbb{R}^2$)**

Soit $E = \mathbb{R}^2$. Pour $x = (x_1, x_2)$ et $y = (y_1, y_2)$, on définit $\varphi(x, y) = x_1 y_1 + x_2 y_2$. C'est le produit scalaire standard.

- **Linéarité à gauche** : $\varphi(\lambda u + v, w) = (\lambda u_1 + v_1)w_1 + (\lambda u_2 + v_2)w_2 = \lambda(u_1w_1 + u_2w_2) + (v_1w_1 + v_2w_2) = \lambda\varphi(u,w) + \varphi(v,w)$.
- La linéarité à droite est similaire.
- **Symétrie** : $\varphi(x, y) = x_1 y_1 + x_2 y_2 = y_1 x_1 + y_2 x_2 = \varphi(y, x)$.

**Exemple 2 (Forme sesquilinéaire hermitienne sur $\mathbb{C}^2$)**

Soit $E = \mathbb{C}^2$. Pour $x = (x_1, x_2)$ et $y = (y_1, y_2)$, on définit $\varphi(x, y) = x_1 \bar{y_1} + x_2 \bar{y_2}$. C'est le produit scalaire hermitien standard.

- **Linéarité à gauche** : $\varphi(\lambda u, v) = (\lambda u_1)\bar{v_1} + (\lambda u_2)\bar{v_2} = \lambda(u_1\bar{v_1} + u_2\bar{v_2}) = \lambda\varphi(u,v)$.
- **Semi-linéarité à droite** : $\varphi(u, \lambda v) = u_1\overline{(\lambda v_1)} + u_2\overline{(\lambda v_2)} = u_1(\bar{\lambda}\bar{v_1}) + u_2(\bar{\lambda}\bar{v_2}) = \bar{\lambda}(u_1\bar{v_1} + u_2\bar{v_2}) = \bar{\lambda}\varphi(u,v)$.
- **Symétrie hermitienne** : $\overline{\varphi(y, x)} = \overline{y_1 \bar{x_1} + y_2 \bar{x_2}} = \overline{y_1}x_1 + \overline{y_2}x_2 = x_1 \bar{y_1} + x_2 \bar{y_2} = \varphi(x, y)$.

**Exemple 3 (Forme bilinéaire sur les polynômes)**

Soit $E = \mathbb{R}_n[X]$ l'espace des polynômes de degré $\le n$. L'application $\varphi(P, Q) = \int_{0}^{1} P(t)Q(t) dt$ est une forme bilinéaire symétrique. La linéarité découle de la linéarité de l'intégrale. La symétrie est évidente car $P(t)Q(t) = Q(t)P(t)$.

### Contre-exemples

**Contre-exemple 1 (Non bilinéaire)**

Sur $\mathbb{R}^2$, soit $\varphi(x, y) = x_1 y_1 + 1$. Cette forme n'est pas bilinéaire car $\varphi(2x, y) = (2x_1)y_1 + 1 = 2x_1y_1 + 1$, ce qui est différent de $2\varphi(x,y) = 2(x_1y_1 + 1) = 2x_1y_1 + 2$.

**Contre-exemple 2 (Bilinéaire mais non symétrique)**

Sur $\mathbb{R}^2$, soit $\varphi(x, y) = x_1 y_2 - x_2 y_1$ (le déterminant). C'est une forme bilinéaire. Cependant, $\varphi(y, x) = y_1 x_2 - y_2 x_1 = -(x_1 y_2 - x_2 y_1) = -\varphi(x, y)$. Elle est donc anti-symétrique, et non symétrique (sauf si elle est nulle).

### Concepts Liés

- **Produit Scalaire** : Un produit scalaire est un cas particulier de forme bilinéaire symétrique (ou sesquilinéaire hermitienne) qui est de plus "définie positive". C'est le concept central de ce chapitre.
- **Matrice de Gram** : Toute forme bilinéaire ou sesquilinéaire sur un espace de dimension finie peut être représentée par une matrice une fois qu'une base est choisie.

---

## Concept 2: Produit Scalaire et Espaces Préhilbertiens

### Prérequis

- **Concept 1** : Formes Bilinéaires et Sesquilinéaires.
- Algèbre Linéaire : Espaces vectoriels, notion de positivité pour les nombres réels.

### Définition

Soit $E$ un espace vectoriel de dimension finie sur $\mathbb{K}$ ($\mathbb{R}$ ou $\mathbb{C}$).

Soit $\varphi: E \times E \to \mathbb{K}$ une forme.

- Si $\mathbb{K}=\mathbb{R}$, $\varphi$ est une forme bilinéaire symétrique.
- Si $\mathbb{K}=\mathbb{C}$, $\varphi$ est une forme sesquilinéaire hermitienne.

On dit que $\varphi$ est **positive** si pour tout vecteur $x \in E$, $\varphi(x, x) \ge 0$. (Note : si la forme est hermitienne, $\varphi(x,x) = \overline{\varphi(x,x)}$, donc $\varphi(x,x)$ est toujours un nombre réel, ce qui rend la condition de positivité bien définie).

On dit que $\varphi$ est **définie** si pour tout vecteur $x \in E$, l'implication suivante est vraie :

$$ \varphi(x, x) = 0 \implies x = 0_E $$

où $0_E$ est le vecteur nul de $E$.

Un **produit scalaire** (noté $\langle \cdot, \cdot \rangle$) est une forme qui est à la fois positive et définie.

- Sur un espace réel, c'est une forme bilinéaire symétrique définie positive.
- Sur un espace complexe, c'est une forme sesquilinéaire hermitienne définie positive.

Un espace vectoriel muni d'un produit scalaire est appelé un **espace préhilbertien**.

- S'il est réel et de dimension finie, on l'appelle **espace Euclidien**.
- S'il est complexe et de dimension finie, on l'appelle **espace Hermitien**.

### Explications Détaillées

Un produit scalaire dote un espace vectoriel d'une **structure géométrique**. Il permet de définir des notions intuitives comme la **longueur** d'un vecteur, l'**angle** entre deux vecteurs, et l'**orthogonalité**.

- La condition de **symétrie** (ou hermitienne) assure que $\langle x, y \rangle$ et $\langle y, x \rangle$ sont liés de manière simple.
- La **positivité** ($\langle x, x \rangle \ge 0$) est essentielle pour que la "longueur au carré" d'un vecteur soit positive ou nulle.
- La condition **définie** ($\langle x, x \rangle = 0 \iff x=0_E$) garantit que seul le vecteur nul a une longueur nulle. C'est ce qui permet de distinguer des vecteurs non nuls.

En résumé, un produit scalaire est l'outil algébrique qui capture les propriétés fondamentales du produit scalaire usuel que l'on connaît dans $\mathbb{R}^2$ ou $\mathbb{R}^3$.

### Exemples

**Exemple 1 (Produit scalaire canonique sur $\mathbb{R}^n$)**

Soit $E = \mathbb{R}^n$. Pour $x = (x_1, \dots, x_n)$ et $y = (y_1, \dots, y_n)$, le produit scalaire canonique est $\langle x, y \rangle = \sum_{i=1}^n x_i y_i$.

- C'est une forme bilinéaire symétrique.
- **Positive** : $\langle x, x \rangle = \sum_{i=1}^n x_i^2 \ge 0$, car c'est une somme de carrés de réels.
- **Définie** : Si $\langle x, x \rangle = \sum_{i=1}^n x_i^2 = 0$, alors chaque $x_i^2$ doit être nul (car ils sont tous positifs). Donc $x_i=0$ pour tout $i$, ce qui signifie $x = 0_E$.

$(\mathbb{R}^n, \langle \cdot, \cdot \rangle)$ est donc un espace euclidien.

**Exemple 2 (Produit scalaire canonique sur $\mathbb{C}^n$)**

Soit $E = \mathbb{C}^n$. Pour $x = (x_1, \dots, x_n)$ et $y = (y_1, \dots, y_n)$, le produit scalaire canonique est $\langle x, y \rangle = \sum_{i=1}^n x_i \bar{y_i}$.

- C'est une forme sesquilinéaire hermitienne.
- **Positive** : $\langle x, x \rangle = \sum_{i=1}^n x_i \bar{x_i} = \sum_{i=1}^n |x_i|^2 \ge 0$, car le module au carré est un réel positif.
- **Définie** : Si $\langle x, x \rangle = \sum_{i=1}^n |x_i|^2 = 0$, alors chaque $|x_i|^2$ doit être nul, donc $x_i=0$ pour tout $i$, et $x=0_E$.

$(\mathbb{C}^n, \langle \cdot, \cdot \rangle)$ est un espace hermitien.

**Exemple 3 (Produit scalaire sur un espace de fonctions)**

Soit $E = C([a, b], \mathbb{R})$ l'espace des fonctions continues de $[a,b]$ dans $\mathbb{R}$. On définit $\langle f, g \rangle = \int_a^b f(t)g(t) dt$.

- C'est une forme bilinéaire symétrique.
- **Positive** : $\langle f, f \rangle = \int_a^b f(t)^2 dt \ge 0$ car $f(t)^2 \ge 0$ et l'intégrale d'une fonction positive est positive.
- **Définie** : Si $\langle f, f \rangle = \int_a^b f(t)^2 dt = 0$, comme $f^2$ est continue et positive, cela implique que $f(t)^2 = 0$ pour tout $t \in [a,b]$, donc $f(t)=0$ pour tout $t$. La fonction $f$ est la fonction nulle.

C'est donc un produit scalaire.

### Contre-exemples

**Contre-exemple 1 (Positive mais non définie)**

Sur $\mathbb{R}^2$, soit $\varphi(x, y) = x_1 y_1$.

- C'est une forme bilinéaire symétrique.
- **Positive** : $\varphi(x, x) = x_1^2 \ge 0$.
- **Non définie** : Soit $x = (0, 1)$. C'est un vecteur non nul, mais $\varphi(x, x) = 0^2 = 0$. La condition "définie" n'est pas remplie.

**Contre-exemple 2 (Non positive)**

Sur $\mathbb{R}^2$, soit $\varphi(x, y) = x_1 y_1 - x_2 y_2$ (la forme de Minkowski en 2D).

- C'est une forme bilinéaire symétrique.
- **Non positive** : Soit $x = (0, 1)$. Alors $\varphi(x, x) = 0^2 - 1^2 = -1 < 0$.

### Concepts Liés

- **Norme** : Tout produit scalaire induit naturellement une notion de longueur, appelée norme.
- **Inégalité de Cauchy-Schwarz** : Une inégalité fondamentale qui relie le produit scalaire de deux vecteurs à leurs longueurs.
- **Orthogonalité** : Deux vecteurs sont dits orthogonaux si leur produit scalaire est nul.

---

## Concept 3: Inégalité de Cauchy-Schwarz

### Prérequis

- **Concept 2** : Produit Scalaire.
- Analyse : Polynômes du second degré, discriminant.

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien. Pour tous vecteurs $x, y \in E$, on a l'inégalité suivante :

$$ |\langle x, y \rangle| \le \sqrt{\langle x, x \rangle} \sqrt{\langle y, y \rangle} $$

En utilisant la notation de la norme $\|x\| = \sqrt{\langle x, x \rangle}$, l'inégalité s'écrit :

$$ |\langle x, y \rangle| \le \|x\| \|y\| $$

De plus, il y a égalité si et seulement si les vecteurs $x$ et $y$ sont colinéaires (c'est-à-dire, il existe un scalaire $\lambda$ tel que $x = \lambda y$ ou $y = \lambda x$).

### Explications Détaillées

L'inégalité de Cauchy-Schwarz est l'un des résultats les plus importants des espaces préhilbertiens. Elle établit un lien fondamental entre le produit scalaire (qui contient des informations sur l'angle) et la norme (la longueur).

L'idée de la preuve (dans le cas réel) est d'étudier la fonction $f(\lambda) = \langle x + \lambda y, x + \lambda y \rangle = \|x+\lambda y\|^2$.

Par la propriété de positivité du produit scalaire, on sait que $f(\lambda) \ge 0$ pour tout $\lambda \in \mathbb{R}$.

En développant par bilinéarité, on obtient :

$f(\lambda) = \langle x, x \rangle + 2\lambda \langle x, y \rangle + \lambda^2 \langle y, y \rangle = \|x\|^2 + 2\lambda \langle x, y \rangle + \lambda^2 \|y\|^2$.

C'est un polynôme du second degré en $\lambda$. Puisqu'il est toujours positif ou nul, son discriminant doit être négatif ou nul :

$\Delta = (2\langle x, y \rangle)^2 - 4 \|y\|^2 \|x\|^2 \le 0$

$4 \langle x, y \rangle^2 \le 4 \|x\|^2 \|y\|^2$

$\langle x, y \rangle^2 \le \|x\|^2 \|y\|^2$

En prenant la racine carrée, on obtient $|\langle x, y \rangle| \le \|x\| \|y\|$.

Le cas d'égalité, $\Delta=0$, correspond à l'existence d'une racine réelle unique $\lambda_0$. Pour cette valeur, $\|x+\lambda_0 y\|^2 = 0$. Comme le produit scalaire est défini, cela implique $x+\lambda_0 y = 0_E$, c'est-à-dire que $x$ et $y$ sont colinéaires.

### Exemples

**Exemple 1 (Dans $\mathbb{R}^n$)**

Soient $x = (x_1, \dots, x_n)$ et $y = (y_1, \dots, y_n)$ deux vecteurs de $\mathbb{R}^n$. L'inégalité s'écrit :

$$ \left| \sum_{i=1}^n x_i y_i \right| \le \left( \sum_{i=1}^n x_i^2 \right)^{1/2} \left( \sum_{i=1}^n y_i^2 \right)^{1/2} $$

Par exemple, pour $x=(1, 2)$ et $y=(3, 4)$ dans $\mathbb{R}^2$:

- $\langle x, y \rangle = 1 \cdot 3 + 2 \cdot 4 = 11$.
- $\|x\| = \sqrt{1^2+2^2} = \sqrt{5}$.
- $\|y\| = \sqrt{3^2+4^2} = \sqrt{25} = 5$.
- On vérifie : $|11| \le \sqrt{5} \cdot 5 \approx 11.18$. L'inégalité est respectée.

**Exemple 2 (Dans l'espace des fonctions continues)**

Soit $E = C([0, 1], \mathbb{R})$ avec le produit scalaire $\langle f, g \rangle = \int_0^1 f(t)g(t) dt$. L'inégalité de Cauchy-Schwarz devient l'inégalité de Bouniakowsky-Schwarz :

$$ \left| \int_0^1 f(t)g(t) dt \right| \le \left( \int_0^1 f(t)^2 dt \right)^{1/2} \left( \int_0^1 g(t)^2 dt \right)^{1/2} $$

Pour $f(t)=t$ et $g(t)=1$:

- $\langle f, g \rangle = \int_0^1 t \cdot 1 dt = [t^2/2]_0^1 = 1/2$.
- $\|f\|^2 = \int_0^1 t^2 dt = [t^3/3]_0^1 = 1/3 \implies \|f\| = 1/\sqrt{3}$.
- $\|g\|^2 = \int_0^1 1^2 dt = [t]_0^1 = 1 \implies \|g\| = 1$.
- On vérifie : $|1/2| \le (1/\sqrt{3}) \cdot 1 \approx 0.577$. L'inégalité est respectée.

**Exemple 3 (Cas d'égalité)**

Soient $x=(1, 2, 3)$ et $y=(2, 4, 6)$ dans $\mathbb{R}^3$. On a $y=2x$, donc ils sont colinéaires.

- $\langle x, y \rangle = 1 \cdot 2 + 2 \cdot 4 + 3 \cdot 6 = 2+8+18 = 28$.
- $\|x\| = \sqrt{1^2+2^2+3^2} = \sqrt{14}$.
- $\|y\| = \sqrt{2^2+4^2+6^2} = \sqrt{4+16+36} = \sqrt{56} = \sqrt{4 \cdot 14} = 2\sqrt{14}$.
- On vérifie : $|\langle x, y \rangle| = 28$ et $\|x\|\|y\| = \sqrt{14} \cdot 2\sqrt{14} = 2 \cdot 14 = 28$. Il y a bien égalité.

### Contre-exemples

Il n'y a pas de "contre-exemple" à un théorème valide. On peut montrer des cas où une inégalité similaire serait fausse si l'on n'utilisait pas un produit scalaire.

**Contre-exemple 1 (Avec une forme non positive)**

Dans $\mathbb{R}^2$ avec la forme de Minkowski $\varphi(x, y) = x_1 y_1 - x_2 y_2$. Soit $x=(1,2)$ et $y=(1,2)$.

$|\varphi(x,y)| = |1-4|=3$. Mais $\sqrt{\varphi(x,x)}\sqrt{\varphi(y,y)} = \sqrt{-3}\sqrt{-3}$ n'est même pas un nombre réel. L'inégalité n'a pas de sens.

**Contre-exemple 2 (Rappel du cas de non-égalité)**

Pour des vecteurs non colinéaires, l'inégalité est stricte. Reprenons $x=(1,2)$ et $y=(3,4)$. On a bien $|11| < 5\sqrt{5}$.

### Concepts Liés

- **Norme** : L'inégalité est cruciale pour démontrer que la norme induite par un produit scalaire vérifie l'inégalité triangulaire.
- **Angle entre deux vecteurs** : Dans un espace euclidien, on définit le cosinus de l'angle $\theta$ entre deux vecteurs non nuls $x$ et $y$ par $\cos(\theta) = \frac{\langle x, y \rangle}{\|x\|\|y\|}$. L'inégalité de Cauchy-Schwarz garantit que cette valeur est bien comprise entre -1 et 1.

---

## Concept 4: Norme Associée et ses Propriétés

### Prérequis

- **Concept 2** : Produit Scalaire.
- **Concept 3** : Inégalité de Cauchy-Schwarz.
- Algèbre Linéaire : Définition d'une norme.

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien. La **norme** associée au produit scalaire est l'application $\|\cdot\| : E \to \mathbb{R}^+$ définie pour tout vecteur $x \in E$ par :

$$ \|x\| = \sqrt{\langle x, x \rangle} $$

Cette application est bien définie car $\langle x, x \rangle \ge 0$ (positivité du produit scalaire). Une norme issue d'un produit scalaire est dite **euclidienne** (ou hermitienne).

Cette norme vérifie les trois axiomes qui définissent une norme sur un espace vectoriel :

1.  **Séparation** : Pour tout $x \in E$, $\|x\| = 0 \iff x = 0_E$.
2.  **Homogénéité** : Pour tout $x \in E$ et tout $\lambda \in \mathbb{K}$, $\|\lambda x\| = |\lambda| \|x\|$.
3.  **Inégalité triangulaire** (ou de Minkowski) : Pour tout $x, y \in E$, $\|x + y\| \le \|x\| + \|y\|$.

### Explications Détaillées

La norme est l'abstraction de la notion de **longueur** d'un vecteur.

- La propriété de **séparation** découle directement de la propriété "définie" du produit scalaire.
- L'**homogénéité** montre comment la longueur d'un vecteur change lorsqu'on le multiplie par un scalaire : elle est multipliée par la valeur absolue (ou le module) du scalaire.
- L'**inégalité triangulaire** est la propriété la plus profonde. Elle formalise l'idée que le chemin le plus court entre deux points est la ligne droite. La longueur du côté d'un triangle ($x+y$) est toujours inférieure ou égale à la somme des longueurs des deux autres côtés ($x$ et $y$). Sa preuve repose de manière cruciale sur l'inégalité de Cauchy-Schwarz.

### Propriétés Clés

1.  **Théorème de Pythagore** : Si deux vecteurs $x$ et $y$ sont orthogonaux (c'est-à-dire $\langle x, y \rangle = 0$), alors :

    $$ \|x + y\|^2 = \|x\|^2 + \|y\|^2 $$

    *Généralisation* : Si $v_1, \dots, v_n$ sont des vecteurs deux à deux orthogonaux, alors $\|\sum_{i=1}^n v_i\|^2 = \sum_{i=1}^n \|v_i\|^2$.

2.  **Identités de polarisation** : Elles permettent de reconstituer le produit scalaire à partir de la norme, montrant que la norme contient toute l'information du produit scalaire.
    - **Cas euclidien ($\mathbb{K}=\mathbb{R}$)** : $\langle x, y \rangle = \frac{1}{2}(\|x + y\|^2 - \|x\|^2 - \|y\|^2)$.
    - **Cas hermitien ($\mathbb{K}=\mathbb{C}$)** : $\langle x, y \rangle = \frac{1}{4}(\|x+y\|^2 - \|x-y\|^2 + i\|x-iy\|^2 - i\|x+iy\|^2)$. (Une forme plus simple existe dans le texte)

3.  **Identité du parallélogramme** : Pour tous vecteurs $x, y \in E$ :

    $$ \|x+y\|^2 + \|x-y\|^2 = 2(\|x\|^2 + \|y\|^2) $$

    Géométriquement, cela signifie que la somme des carrés des longueurs des diagonales d'un parallélogramme est égale à la somme des carrés des longueurs de ses quatre côtés. Cette identité caractérise les normes qui proviennent d'un produit scalaire.

### Exemples

**Exemple 1 (Norme euclidienne sur $\mathbb{R}^3$)**

Soit $x = (1, 2, 2) \in \mathbb{R}^3$. La norme euclidienne est $\|x\| = \sqrt{1^2 + 2^2 + 2^2} = \sqrt{1+4+4} = \sqrt{9} = 3$.

**Exemple 2 (Théorème de Pythagore)**

Dans $\mathbb{R}^3$, soient $x=(1,0,0)$ et $y=(0,1,0)$. Ils sont orthogonaux car $\langle x, y \rangle = 1\cdot0+0\cdot1+0\cdot0 = 0$.

- $x+y = (1,1,0)$.
- $\|x\|^2 = 1^2 = 1$.
- $\|y\|^2 = 1^2 = 1$.
- $\|x+y\|^2 = 1^2+1^2+0^2 = 2$.

On vérifie bien $\|x+y\|^2 = \|x\|^2 + \|y\|^2 \implies 2 = 1+1$.

**Exemple 3 (Identité du parallélogramme)**

Dans $\mathbb{R}^2$, soient $x=(2,1)$ et $y=(1,3)$.

- $x+y = (3,4)$ et $x-y = (1,-2)$.
- $\|x+y\|^2 = 3^2+4^2 = 25$.
- $\|x-y\|^2 = 1^2+(-2)^2 = 5$.
- $\|x\|^2 = 2^2+1^2 = 5$.
- $\|y\|^2 = 1^2+3^2 = 10$.
- On vérifie : $\|x+y\|^2 + \|x-y\|^2 = 25+5=30$. Et $2(\|x\|^2+\|y\|^2) = 2(5+10) = 30$. L'identité est vérifiée.

### Contre-exemples

**Contre-exemple 1 (Norme non euclidienne)**

Sur $\mathbb{R}^2$, considérons la "norme 1" : $\|x\|_1 = |x_1| + |x_2|$. C'est une norme valide.

Soient $x=(1,0)$ et $y=(0,1)$.

- $\|x\|_1 = 1$, $\|y\|_1 = 1$.
- $x+y = (1,1)$, $x-y = (1,-1)$.
- $\|x+y\|_1 = |1|+|1|=2$, $\|x-y\|_1 = |1|+|-1|=2$.
- Vérifions l'identité du parallélogramme :

  $\|x+y\|_1^2 + \|x-y\|_1^2 = 2^2+2^2 = 8$.

  $2(\|x\|_1^2+\|y\|_1^2) = 2(1^2+1^2) = 4$.

Puisque $8 \neq 4$, l'identité du parallélogramme n'est pas vérifiée. Cette norme ne provient donc d'aucun produit scalaire.

**Contre-exemple 2 (Non-application de Pythagore)**

Avec la même norme $\| \cdot \|_1$, si on définit l'orthogonalité par le produit scalaire usuel, $x=(1,0)$ et $y=(0,1)$ sont orthogonaux.

- $\|x\|_1^2 = 1^2=1$, $\|y\|_1^2 = 1^2=1$.
- $\|x+y\|_1^2 = 2^2=4$.

On voit que $\|x+y\|_1^2 \neq \|x\|_1^2 + \|y\|_1^2$. Le théorème de Pythagore ne s'applique qu'aux normes euclidiennes.

### Concepts Liés

- **Distance** : La norme permet de définir la distance entre deux vecteurs $x$ et $y$ comme $d(x,y) = \|x-y\|$.
- **Vecteur unitaire** : Un vecteur $u$ est dit unitaire si sa norme est 1, i.e., $\|u\|=1$. "Normaliser" un vecteur non nul $x$ consiste à le diviser par sa norme : $u = x/\|x\|$.

---

## Concept 5: Orthogonalité et Bases Orthonormées

### Prérequis

- **Concept 2** : Produit Scalaire.
- **Concept 4** : Norme Associée.
- Algèbre Linéaire : Bases d'un espace vectoriel, famille libre.

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien.

1.  **Orthogonalité** :
    - Deux vecteurs $x, y \in E$ sont dits **orthogonaux** si leur produit scalaire est nul : $\langle x, y \rangle = 0$. On note parfois $x \perp y$.
    - Une famille de vecteurs $(v_1, \dots, v_k)$ est dite **orthogonale** si ses vecteurs sont deux à deux orthogonaux, c'est-à-dire $\forall i \neq j, \langle v_i, v_j \rangle = 0$.

2.  **Orthonormalité** :
    - Une famille de vecteurs $(e_1, \dots, e_k)$ est dite **orthonormée** (ou orthonormale) si elle est orthogonale et si tous ses vecteurs sont unitaires (de norme 1). C'est-à-dire :

    $$ \forall i, j \in \{1, \dots, k\}, \quad \langle e_i, e_j \rangle = \delta_{ij} $$

    où $\delta_{ij}$ est le symbole de Kronecker ($\delta_{ij}=1$ si $i=j$ et $\delta_{ij}=0$ si $i \neq j$).

3.  **Base Orthonormée** :

    Une **base orthonormée** (B.O.N.) d'un espace $E$ est une base de $E$ qui est aussi une famille orthonormée.

### Propriétés Clés

1.  **Indépendance linéaire** : Toute famille orthogonale composée de vecteurs non nuls est une famille libre. Par conséquent, une famille orthonormée est toujours libre.

2.  **Simplification des calculs** : Le principal intérêt des bases orthonormées est qu'elles simplifient énormément les calculs de coordonnées, produits scalaires et normes.

    Soit $\mathcal{B} = (e_1, \dots, e_n)$ une base orthonormée de $E$.

    - **Coordonnées** : Pour tout $x \in E$, ses coordonnées $(x_1, \dots, x_n)$ dans la base $\mathcal{B}$ sont données par $x_i = \langle x, e_i \rangle$ (dans le cas hermitien, c'est la même chose car on projette sur $e_i$).

      On a donc la décomposition très utile :

      $$ x = \sum_{i=1}^n \langle x, e_i \rangle e_i $$

    - **Produit Scalaire** : Si $x = \sum x_i e_i$ et $y = \sum y_i e_i$, alors le produit scalaire devient le produit scalaire canonique des coordonnées :
      - Cas euclidien : $\langle x, y \rangle = \sum_{i=1}^n x_i y_i$.
      - Cas hermitien : $\langle x, y \rangle = \sum_{i=1}^n x_i \bar{y_i}$.
    - **Norme** (Identité de Parseval) : $\|x\|^2 = \sum_{i=1}^n |x_i|^2 = \sum_{i=1}^n |\langle x, e_i \rangle|^2$.

3.  **Matrice de Gram** : La matrice de Gram d'une base $(v_1, \dots, v_n)$ est $G = (\langle v_i, v_j \rangle)_{ij}$. Une base est orthonormée si et seulement si sa matrice de Gram est la matrice identité $I_n$.

### Exemples

**Exemple 1 (Base canonique de $\mathbb{R}^n$)**

Dans $\mathbb{R}^n$ muni du produit scalaire usuel, la base canonique $(e_1, \dots, e_n)$ où $e_i = (0, \dots, 1, \dots, 0)$ (le 1 est en i-ème position) est une base orthonormée.

- $\langle e_i, e_i \rangle = 1^2 = 1$ (normée).
- $\langle e_i, e_j \rangle = 0$ pour $i \neq j$ (orthogonale).

**Exemple 2 (Une base orthonormée de $\mathbb{R}^2$)**

Dans $\mathbb{R}^2$, la famille $\mathcal{B} = (u_1, u_2)$ avec $u_1 = (\frac{1}{\sqrt{2}}, \frac{1}{\sqrt{2}})$ et $u_2 = (-\frac{1}{\sqrt{2}}, \frac{1}{\sqrt{2}})$ est une base orthonormée.

- $\|u_1\|^2 = (\frac{1}{\sqrt{2}})^2 + (\frac{1}{\sqrt{2}})^2 = \frac{1}{2} + \frac{1}{2} = 1$.
- $\|u_2\|^2 = (-\frac{1}{\sqrt{2}})^2 + (\frac{1}{\sqrt{2}})^2 = \frac{1}{2} + \frac{1}{2} = 1$.
- $\langle u_1, u_2 \rangle = \frac{1}{\sqrt{2}}(-\frac{1}{\sqrt{2}}) + \frac{1}{\sqrt{2}}(\frac{1}{\sqrt{2}}) = -\frac{1}{2} + \frac{1}{2} = 0$.

C'est la base canonique tournée de 45 degrés.

**Exemple 3 (Polynômes de Legendre - orthogonalisation)**

Sur l'espace $\mathbb{R}_2[X]$ avec le produit scalaire $\langle P, Q \rangle = \int_{-1}^1 P(t)Q(t)dt$. La base canonique $(1, X, X^2)$ n'est pas orthonormée.

- $\langle 1, X \rangle = \int_{-1}^1 t dt = 0$. Donc $1$ et $X$ sont orthogonaux.
- $\langle 1, X^2 \rangle = \int_{-1}^1 t^2 dt = [t^3/3]_{-1}^1 = 2/3 \neq 0$.
- $\|1\|^2 = \int_{-1}^1 1^2 dt = 2$.

Pour la rendre orthonormée, il faudrait utiliser le procédé de Gram-Schmidt.

### Contre-exemples

**Contre-exemple 1 (Orthogonale mais pas orthonormée)**

Dans $\mathbb{R}^2$, la famille $v_1 = (2,0), v_2 = (0,3)$ est orthogonale : $\langle v_1, v_2 \rangle = 0$.

Cependant, elle n'est pas orthonormée car $\|v_1\|=2$ et $\|v_2\|=3$. Pour la normaliser, on prendrait $e_1 = v_1/2 = (1,0)$ et $e_2=v_2/3=(0,1)$.

**Contre-exemple 2 (Base non orthogonale)**

Dans $\mathbb{R}^2$, la base $v_1=(1,0), v_2=(1,1)$ est une base valide, mais elle n'est pas orthogonale.

$\langle v_1, v_2 \rangle = 1 \cdot 1 + 0 \cdot 1 = 1 \neq 0$.

### Concepts Liés

- **Procédé d'Orthonormalisation de Gram-Schmidt** : L'algorithme qui permet de construire une base orthonormée à partir de n'importe quelle base.
- **Projection Orthogonale** : La décomposition d'un vecteur sur une base orthonormée est une somme de projections orthogonales sur les lignes générées par chaque vecteur de base.

---

## Concept 6: Procédé d'Orthonormalisation de Gram-Schmidt

### Prérequis

- **Concept 5** : Orthogonalité et Bases Orthonormées.
- Algèbre Linéaire : Famille libre, base, sous-espace vectoriel engendré.

### Définition

Le procédé de Gram-Schmidt est un algorithme qui permet de transformer une base quelconque $(v_1, \dots, v_n)$ d'un espace euclidien ou hermitien $E$ en une base orthonormée $(e_1, \dots, e_n)$.

L'algorithme fonctionne par récurrence. On construit la famille $(e_1, \dots, e_n)$ étape par étape de telle sorte que pour tout $k \in \{1, \dots, n\}$, le sous-espace engendré par les $k$ premiers vecteurs soit le même :

$$ \text{Vect}(e_1, \dots, e_k) = \text{Vect}(v_1, \dots, v_k) $$

**Algorithme :**

Soit $(v_1, \dots, v_n)$ une base de $E$.

1.  **Étape 1 :** On normalise le premier vecteur.
    - On pose $e_1 = \frac{v_1}{\|v_1\|}$.

2.  **Étape $k+1$ (pour $k=1, \dots, n-1$) :** On suppose avoir construit une famille orthonormée $(e_1, \dots, e_k)$ telle que $\text{Vect}(e_1, \dots, e_k) = \text{Vect}(v_1, \dots, v_k)$.

    a. **Orthogonalisation :** On prend le vecteur suivant $v_{k+1}$ et on lui soustrait sa projection sur le sous-espace déjà construit, $\text{Vect}(e_1, \dots, e_k)$. On obtient un vecteur $e'_{k+1}$ qui est orthogonal à tous les $e_j$ pour $j \le k$.

    $$ e'_{k+1} = v_{k+1} - \sum_{j=1}^k \langle v_{k+1}, e_j \rangle e_j $$

    b. **Normalisation :** On normalise le vecteur $e'_{k+1}$ pour obtenir $e_{k+1}$.

    $$ e_{k+1} = \frac{e'_{k+1}}{\|e'_{k+1}\|} $$

Le résultat principal est le **Corollaire 1.2.4** : Tout espace euclidien ou hermitien de dimension finie possède une base orthonormée.

### Explications Détaillées

L'idée fondamentale de l'étape $k+1$ est de "nettoyer" le vecteur $v_{k+1}$ de toutes ses composantes qui se trouvent dans la direction des vecteurs $e_1, \dots, e_k$ déjà construits. Le terme $\langle v_{k+1}, e_j \rangle e_j$ est précisément la projection du vecteur $v_{k+1}$ sur la droite dirigée par le vecteur unitaire $e_j$. En soustrayant la somme de ces projections, on obtient un vecteur $e'_{k+1}$ qui est par construction dans l'orthogonal du sous-espace $\text{Vect}(e_1, \dots, e_k)$.

Comme la famille $(v_1, \dots, v_n)$ est une base, $v_{k+1}$ n'est pas dans $\text{Vect}(v_1, \dots, v_k) = \text{Vect}(e_1, \dots, e_k)$. Par conséquent, le vecteur $e'_{k+1}$ ne peut pas être le vecteur nul, et on peut donc toujours le normaliser.

### Exemples

**Exemple 1 (Tiré du cours, sur $\mathbb{R}^3$)**

Soit $E=\mathbb{R}^3$ avec le produit scalaire usuel. On part de la base $v_1 = (1,0,0)$, $v_2 = (1,1,0)$, $v_3 = (1,1,1)$.

- **Étape 1 :**

  $\|v_1\| = \sqrt{1^2} = 1$. Donc $e_1 = v_1 = (1,0,0)$.

- **Étape 2 :**

  a. Orthogonalisation de $v_2$:

     $e'_2 = v_2 - \langle v_2, e_1 \rangle e_1 = (1,1,0) - \langle (1,1,0), (1,0,0) \rangle (1,0,0)$

     $e'_2 = (1,1,0) - 1 \cdot (1,0,0) = (0,1,0)$.

  b. Normalisation :

     $\|e'_2\| = \sqrt{0^2+1^2+0^2} = 1$. Donc $e_2 = e'_2 = (0,1,0)$.

- **Étape 3 :**

  a. Orthogonalisation de $v_3$:

     $e'_3 = v_3 - \langle v_3, e_1 \rangle e_1 - \langle v_3, e_2 \rangle e_2$

     $e'_3 = (1,1,1) - \langle (1,1,1), (1,0,0) \rangle e_1 - \langle (1,1,1), (0,1,0) \rangle e_2$

     $e'_3 = (1,1,1) - 1 \cdot (1,0,0) - 1 \cdot (0,1,0) = (0,0,1)$.

  b. Normalisation :

     $\|e'_3\| = 1$. Donc $e_3 = e'_3 = (0,0,1)$.

La base orthonormée obtenue est la base canonique $(e_1, e_2, e_3)$.

**Exemple 2 (Sur l'espace des polynômes $\mathbb{R}_1[X]$)**

Soit $E = \mathbb{R}_1[X]$ avec $\langle P, Q \rangle = \int_0^1 P(t)Q(t)dt$. Partons de la base $(v_1, v_2)$ avec $v_1(t)=1$ et $v_2(t)=t$.

- **Étape 1 :**

  $\|v_1\|^2 = \int_0^1 1^2 dt = 1 \implies \|v_1\|=1$. Donc $e_1(t) = 1$.

- **Étape 2 :**

  a. Orthogonalisation de $v_2$:

     $\langle v_2, e_1 \rangle = \int_0^1 t \cdot 1 dt = 1/2$.

     $e'_2(t) = v_2(t) - \langle v_2, e_1 \rangle e_1(t) = t - \frac{1}{2}$.

  b. Normalisation :

     $\|e'_2\|^2 = \int_0^1 (t - \frac{1}{2})^2 dt = \int_0^1 (t^2 - t + \frac{1}{4}) dt = [\frac{t^3}{3} - \frac{t^2}{2} + \frac{t}{4}]_0^1 = \frac{1}{3} - \frac{1}{2} + \frac{1}{4} = \frac{4-6+3}{12} = \frac{1}{12}$.

     $\|e'_2\| = \frac{1}{\sqrt{12}} = \frac{1}{2\sqrt{3}}$.

     $e_2(t) = \frac{e'_2(t)}{\|e'_2\|} = 2\sqrt{3}(t - \frac{1}{2})$.

La base orthonormée est $(1, 2\sqrt{3}(t-\frac{1}{2}))$.

**Exemple 3 (Ce qui se passe si la famille est liée)**

Soient $v_1=(1,1)$ et $v_2=(2,2)$ dans $\mathbb{R}^2$.

- Étape 1 : $e_1 = \frac{v_1}{\|v_1\|} = (\frac{1}{\sqrt{2}}, \frac{1}{\sqrt{2}})$.
- Étape 2 : $e'_2 = v_2 - \langle v_2, e_1 \rangle e_1 = (2,2) - \langle (2,2), (\frac{1}{\sqrt{2}},\frac{1}{\sqrt{2}}) \rangle e_1 = (2,2) - (\frac{4}{\sqrt{2}}) (\frac{1}{\sqrt{2}},\frac{1}{\sqrt{2}}) = (2,2) - (2,2) = (0,0)$.

On obtient le vecteur nul. On ne peut pas le normaliser. L'algorithme échoue car la famille de départ n'était pas libre.

### Contre-exemples

L'algorithme de Gram-Schmidt n'a pas de "contre-exemple" au sens d'une situation où il donnerait un mauvais résultat à partir d'une base. Le seul cas d'échec est celui où la famille de départ n'est pas libre, comme vu dans l'Exemple 3. Dans ce cas, l'algorithme produit le vecteur nul à une certaine étape, ce qui signifie que le vecteur de départ correspondant était une combinaison linéaire des précédents.

### Concepts Liés

- **Projection Orthogonale** : Le cœur de l'algorithme est de calculer et soustraire la projection d'un vecteur sur un sous-espace. La formule $ \sum_{j=1}^k \langle v_{k+1}, e_j \rangle e_j $ est précisément la formule du projeté orthogonal de $v_{k+1}$ sur $\text{Vect}(e_1, \dots, e_k)$.
- **Décomposition QR** : L'algorithme de Gram-Schmidt est la base de la décomposition QR d'une matrice, une technique très importante en algèbre linéaire numérique.

---

## Concept 7: Projection Orthogonale et Distance

### Prérequis

- **Concept 5** : Orthogonalité et Bases Orthonormées.
- Algèbre Linéaire : Sous-espaces vectoriels, somme directe.

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien.

1.  **Orthogonal d'un sous-ensemble**

    Soit $A \subset E$ une partie de $E$. L'**orthogonal** de $A$, noté $A^\perp$, est l'ensemble des vecteurs de $E$ qui sont orthogonaux à *tous* les vecteurs de $A$ :

    $$ A^\perp := \{x \in E \mid \forall a \in A, \langle x, a \rangle = 0\} $$

    $A^\perp$ est toujours un sous-espace vectoriel de $E$.

2.  **Somme directe orthogonale**

    Si $F$ est un sous-espace vectoriel de $E$, alors $E$ est la somme directe de $F$ et de son orthogonal $F^\perp$ :

    $$ E = F \oplus F^\perp $$

    Cela signifie que tout vecteur $x \in E$ peut s'écrire de manière unique comme la somme d'un vecteur de $F$ et d'un vecteur de $F^\perp$: $x = x_F + x_{F^\perp}$.

3.  **Projection orthogonale**

    L'application $P_F : E \to E$ qui à un vecteur $x$ associe sa composante $x_F$ dans la décomposition ci-dessus est appelée la **projection orthogonale** sur $F$.

    - C'est un projecteur : $P_F \circ P_F = P_F$.
    - Son image est $F$ : $\text{Im}(P_F) = F$.
    - Son noyau est $F^\perp$ : $\text{Ker}(P_F) = F^\perp$.
    - **Formule de calcul** : Si $(e_1, \dots, e_p)$ est une base orthonormée de $F$, alors pour tout $x \in E$ :

      $$ P_F(x) = \sum_{i=1}^p \langle x, e_i \rangle e_i $$

4.  **Distance à un sous-espace**

    La distance d'un point $x$ à un sous-espace $F$ est définie par :

    $$ d(x, F) := \inf_{y \in F} \|x - y\| $$

### Propriétés Clés

**Théorème de la meilleure approximation (Théorème 1.3.3)**

Le projeté orthogonal $P_F(x)$ est l'unique vecteur de $F$ qui est le plus proche de $x$. Autrement dit, la distance de $x$ à $F$ est atteinte en $y = P_F(x)$ et seulement en ce point.

$$ d(x, F) = \|x - P_F(x)\| $$

De plus, le vecteur $x - P_F(x)$ est la composante de $x$ dans $F^\perp$, donc $x - P_F(x) \in F^\perp$.

### Explications Détaillées

La projection orthogonale est une notion géométrique fondamentale. Imaginez un point $x$ et un plan $F$ dans l'espace $\mathbb{R}^3$. Le projeté orthogonal de $x$ sur $F$ est le "pied de la perpendiculaire" abaissée de $x$ sur le plan. C'est le point du plan qui est le plus proche de $x$. La distance de $x$ au plan est la longueur du segment qui relie $x$ à son projeté.

La formule de calcul de $P_F(x)$ est très puissante : elle ramène le problème géométrique de la projection à une série de calculs de produits scalaires avec les vecteurs d'une base orthonormée de $F$. C'est une raison de plus pour laquelle les bases orthonormées sont si utiles.

La preuve du théorème de la meilleure approximation utilise le théorème de Pythagore. Pour tout $y \in F$, on a $x-y = (x - P_F(x)) + (P_F(x) - y)$. Le premier terme, $x - P_F(x)$, est dans $F^\perp$. Le second terme, $P_F(x) - y$, est une différence de deux vecteurs de $F$, il est donc dans $F$. Ces deux termes sont orthogonaux. Par Pythagore :

$\|x-y\|^2 = \|x-P_F(x)\|^2 + \|P_F(x)-y\|^2$.

Cette quantité est minimale lorsque $\|P_F(x)-y\|^2 = 0$, c'est-à-dire quand $y = P_F(x)$.

### Exemples

**Exemple 1 (Projection sur une droite dans $\mathbb{R}^2$)**

Soit $E=\mathbb{R}^2$ et $F$ la droite dirigée par le vecteur $v=(3,4)$. On veut projeter le point $x=(10, 5)$ sur $F$.

1.  **Trouver une B.O.N. de F** : $F$ est de dimension 1. On normalise $v$.

    $\|v\| = \sqrt{3^2+4^2}=5$. Une base orthonormée de $F$ est $(e_1)$ avec $e_1 = \frac{v}{5} = (3/5, 4/5)$.

2.  **Appliquer la formule** :

    $P_F(x) = \langle x, e_1 \rangle e_1 = \langle (10,5), (3/5, 4/5) \rangle e_1$

    $P_F(x) = (10 \cdot \frac{3}{5} + 5 \cdot \frac{4}{5}) e_1 = (6+4)e_1 = 10 e_1 = (6, 8)$.

    Le projeté est $(6,8)$.

3.  **Calculer la distance** :

    $d(x,F) = \|x - P_F(x)\| = \|(10,5) - (6,8)\| = \|(4,-3)\| = \sqrt{4^2+(-3)^2} = \sqrt{25}=5$.

**Exemple 2 (Tiré du cours)**

Calculer la distance du point $x=(1,2,1)$ au plan $F = \{(a,b,c) \in \mathbb{R}^3 \mid a+b+c=0\}$.

$F^\perp$ est la droite dirigée par le vecteur normal au plan, $n=(1,1,1)$.

Il est plus simple de projeter sur $F^\perp$ que sur $F$. Soit $P_{F^\perp}$ cette projection.

1. **B.O.N de $F^\perp$** : $e_1 = \frac{n}{\|n\|} = \frac{1}{\sqrt{3}}(1,1,1)$.
2. **Calcul de $P_{F^\perp}(x)$** :

   $P_{F^\perp}(x) = \langle x, e_1 \rangle e_1 = \langle (1,2,1), \frac{1}{\sqrt{3}}(1,1,1) \rangle e_1 = \frac{1+2+1}{\sqrt{3}} e_1 = \frac{4}{\sqrt{3}} e_1 = \frac{4}{3}(1,1,1) = (4/3, 4/3, 4/3)$.

3. **Relation entre les projections** : $x = P_F(x) + P_{F^\perp}(x)$.

   Donc $d(x,F) = \|x - P_F(x)\| = \|P_{F^\perp}(x)\|$.

4. **Calcul de la distance** :

   $d(x,F) = \|(4/3, 4/3, 4/3)\| = \sqrt{(4/3)^2+(4/3)^2+(4/3)^2} = \sqrt{3 \cdot \frac{16}{9}} = \sqrt{\frac{16}{3}} = \frac{4}{\sqrt{3}} = \frac{4\sqrt{3}}{3}$.

**Exemple 3 (Projection dans un espace de polynômes)**

Soit $E=\mathbb{R}_2[X]$ avec $\langle P, Q \rangle = \int_{-1}^1 P(t)Q(t)dt$. Soit $F = \mathbb{R}_1[X]$. On veut projeter $P(X) = X^2$ sur $F$. Une base orthogonale de $F$ est $(1, X)$. On normalise : $\|1\|^2=2, \|X\|^2=2/3$. Une B.O.N de $F$ est $(e_1, e_2)$ avec $e_1=\frac{1}{\sqrt{2}}$, $e_2=\frac{\sqrt{3}}{\sqrt{2}}X$.

$P_F(X^2) = \langle X^2, e_1 \rangle e_1 + \langle X^2, e_2 \rangle e_2$.

$\langle X^2, e_1 \rangle = \int_{-1}^1 t^2 \frac{1}{\sqrt{2}} dt = \frac{1}{\sqrt{2}}[\frac{t^3}{3}]_{-1}^1 = \frac{2}{3\sqrt{2}}$.

$\langle X^2, e_2 \rangle = \int_{-1}^1 t^2 \frac{\sqrt{3}}{\sqrt{2}}t dt = 0$ (intégrale d'une fonction impaire).

$P_F(X^2) = \frac{2}{3\sqrt{2}} e_1 + 0 \cdot e_2 = \frac{2}{3\sqrt{2}} \frac{1}{\sqrt{2}} = \frac{2}{6} = 1/3$.

La meilleure approximation de $X^2$ par un polynôme de degré $\le 1$ sur $[-1,1]$ est le polynôme constant $1/3$.

### Contre-exemples

**Contre-exemple 1 (Projection non orthogonale)**

Dans $\mathbb{R}^2$, considérons la projection $p$ sur l'axe des abscisses ($F=\text{Vect}((1,0))$) parallèlement à la droite dirigée par $d=(1,1)$.

$p((x,y)) = (x-y, 0)$. Prenons le point $A=(2,2)$. Son projeté est $p(A)=(0,0)$.

La distance de A à F est 2 (atteinte au point $(2,0)$). Mais $\|A-p(A)\| = \|(2,2)-(0,0)\| = \sqrt{8} \neq 2$. Une projection non orthogonale ne minimise pas la distance euclidienne.

**Contre-exemple 2 (Unicité du minimum)**

Le théorème garantit que le minimum de la distance est atteint *uniquement* au projeté orthogonal. Tout autre point $y \in F$ sera strictement plus loin de $x$ que $P_F(x)$.

### Concepts Liés

- **Procédé de Gram-Schmidt** : La formule de Gram-Schmidt $v_{k+1} - \sum \langle v_{k+1}, e_j \rangle e_j$ calcule la composante de $v_{k+1}$ orthogonale au sous-espace $\text{Vect}(e_1, \dots, e_k)$.
- **Moindres carrés** : En statistiques et en analyse de données, la méthode des moindres carrés consiste à trouver la "meilleure" solution à un système d'équations surdéterminé. Ce problème est équivalent à trouver la projection orthogonale d'un vecteur sur un sous-espace.

---

## Concept 8: Endomorphisme Adjoint

### Prérequis

- Algèbre Linéaire : Endomorphismes, matrice d'un endomorphisme dans une base.
- **Concept 2** : Produit Scalaire.
- **Concept 5** : Bases Orthonormées.

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien de dimension finie. Soit $f: E \to E$ un endomorphisme (une application linéaire de $E$ dans $E$).

L'**adjoint** de $f$, noté $f^*$, est l'unique endomorphisme de $E$ qui vérifie la relation suivante pour tous les vecteurs $x, y \in E$ :

$$ \langle f(x), y \rangle = \langle x, f^*(y) \rangle $$

L'existence et l'unicité de $f^*$ sont garanties en dimension finie (c'est une conséquence du théorème de représentation de Riesz).

### Explications Détaillées

L'adjoint est en quelque sorte le "pendant" d'un endomorphisme par rapport au produit scalaire. Il permet de "transférer" l'action de l'endomorphisme d'un côté du produit scalaire à l'autre. Cette opération de transfert est fondamentale pour étudier les propriétés géométriques des endomorphismes (conservation des longueurs, des angles, etc.).

Dans le cas hermitien (complexe), la semi-linéarité à droite du produit scalaire fait que la définition $\langle f(x), y \rangle = \langle x, f^*(y) \rangle$ est la plus naturelle et mène aux propriétés les plus intéressantes.

La manière la plus simple de comprendre l'adjoint est à travers sa représentation matricielle.

### Propriétés Clés

1.  **Matrice de l'adjoint** : Soit $\mathcal{B}$ une base **orthonormée** de $E$. Si $A = \text{Mat}_{\mathcal{B}}(f)$ est la matrice de $f$ dans cette base, alors la matrice de l'adjoint $f^*$ dans la même base, notée $A^* = \text{Mat}_{\mathcal{B}}(f^*)$, est :
    - **Cas euclidien ($\mathbb{K}=\mathbb{R}$)** : La transposée de $A$.

      $$ A^* = {}^tA $$

    - **Cas hermitien ($\mathbb{K}=\mathbb{C}$)** : La transconjuguée (ou adjointe) de $A$.

      $$ A^* = \overline{{}^tA} $$

    **Attention :** Cette relation simple n'est vraie que dans une base orthonormée.

2.  **Propriétés algébriques** :
    - $(f+g)^* = f^* + g^*$
    - $(\lambda f)^* = \bar{\lambda} f^*$
    - $(f \circ g)^* = g^* \circ f^*$ (l'ordre est inversé)
    - $(f^*)^* = f$

3.  **Lien entre Noyau et Image** :

    $$ \text{Ker}(f) = (\text{Im}(f^*))^\perp $$

    $$ \text{Im}(f) = (\text{Ker}(f^*))^\perp $$

    Ces relations sont extrêmement utiles. Par exemple, un vecteur est dans le noyau de $f$ si et seulement s'il est orthogonal à l'image de $f^*$.

### Exemples

**Exemple 1 (Cas réel, $\mathbb{R}^2$)**

Soit $E=\mathbb{R}^2$ avec le produit scalaire usuel. Soit $f$ l'endomorphisme dont la matrice dans la base canonique (qui est orthonormée) est $A = \begin{pmatrix} 1 & 3 \\ 2 & 4 \end{pmatrix}$.

La matrice de l'adjoint $f^*$ est $A^* = {}^tA = \begin{pmatrix} 1 & 2 \\ 3 & 4 \end{pmatrix}$.

Vérifions la définition pour $x=(x_1, x_2)$ et $y=(y_1, y_2)$.

- $f(x) = (x_1+3x_2, 2x_1+4x_2)$.
- $\langle f(x), y \rangle = (x_1+3x_2)y_1 + (2x_1+4x_2)y_2 = x_1y_1 + 3x_2y_1 + 2x_1y_2 + 4x_2y_2$.
- $f^*(y) = (y_1+2y_2, 3y_1+4y_2)$.
- $\langle x, f^*(y) \rangle = x_1(y_1+2y_2) + x_2(3y_1+4y_2) = x_1y_1 + 2x_1y_2 + 3x_2y_1 + 4x_2y_2$.

Les deux expressions sont bien égales.

**Exemple 2 (Cas complexe, $\mathbb{C}^2$)**

Soit $E=\mathbb{C}^2$ avec le produit scalaire usuel. Matrice de $f$ dans la base canonique : $A = \begin{pmatrix} 1 & i \\ 1-i & 2 \end{pmatrix}$.

La matrice de l'adjoint $f^*$ est $A^* = \overline{{}^tA} = \overline{\begin{pmatrix} 1 & 1-i \\ i & 2 \end{pmatrix}} = \begin{pmatrix} 1 & 1+i \\ -i & 2 \end{pmatrix}$.

**Exemple 3 (Opérateur de dérivation)**

Cet exemple est de dimension infinie, mais illustre bien l'idée. Soit $E$ l'espace des fonctions $C^\infty$ $2\pi$-périodiques, avec $\langle f, g \rangle = \int_0^{2\pi} f(t)\overline{g(t)}dt$. Soit $D$ l'opérateur de dérivation $D(f) = f'$.

Cherchons l'adjoint $D^*$.

$\langle Df, g \rangle = \int_0^{2\pi} f'(t)\overline{g(t)}dt$.

Par intégration par parties :

$\int_0^{2\pi} f'(t)\overline{g(t)}dt = [f(t)\overline{g(t)}]_0^{2\pi} - \int_0^{2\pi} f(t)\overline{g'(t)}dt$.

Comme les fonctions sont $2\pi$-périodiques, le terme $[f(t)\overline{g(t)}]_0^{2\pi}$ est nul.

Il reste $\langle Df, g \rangle = - \int_0^{2\pi} f(t)\overline{g'(t)}dt = \int_0^{2\pi} f(t)\overline{(-g'(t))}dt = \langle f, -Dg \rangle$.

On a donc $D^* = -D$. L'opérateur de dérivation est "anti-autoadjoint".

### Contre-exemples

**Contre-exemple 1 (Mauvaise base)**

Soit $f$ l'endomorphisme de $\mathbb{R}^2$ de matrice $A = \begin{pmatrix} 1 & 1 \\ 0 & 1 \end{pmatrix}$ dans la base canonique. L'adjoint a pour matrice $A^* = \begin{pmatrix} 1 & 0 \\ 1 & 1 \end{pmatrix}$.

Considérons la base non orthonormée $\mathcal{B}' = (v_1, v_2)$ avec $v_1=(1,0)$ et $v_2=(1,1)$.

La matrice de $f$ dans cette base est $A' = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix} = I_2$.

La matrice de $f^*$ dans cette base est $A'^* = \begin{pmatrix} 2 & 1 \\ -1 & 0 \end{pmatrix}$.

On voit bien que $A'^* \neq {}^tA'$. La relation matricielle simple ne fonctionne que dans une base orthonormée.

### Concepts Liés

- **Endomorphismes Remarquables** : L'adjoint est l'outil qui permet de définir les classes les plus importantes d'endomorphismes en géométrie :
    - **Auto-adjoints** : $f=f^*$
    - **Unitaires / Orthogonaux** : $f^*f = \text{Id}$
    - **Normaux** : $ff^* = f^*f$

---

## Concept 9: Endomorphismes Remarquables (Auto-adjoint, Unitaire, Normal)

### Prérequis

- **Concept 8** : Endomorphisme Adjoint.

### Définition

Soit $f$ un endomorphisme d'un espace euclidien ou hermitien $(E, \langle \cdot, \cdot \rangle)$.

1.  **Endomorphisme auto-adjoint (ou symétrique/hermitien)**

    $f$ est dit **auto-adjoint** si $f = f^*$.

    Cela équivaut à la condition : $\forall x,y \in E, \langle f(x), y \rangle = \langle x, f(y) \rangle$.

    - Dans une base orthonormée, sa matrice $A$ vérifie :
      - Cas euclidien : $A = {}^tA$ (matrice **symétrique**).
      - Cas hermitien : $A = \overline{{}^tA}$ (matrice **hermitienne**).

2.  **Endomorphisme unitaire (ou orthogonal)**

    $f$ est dit **unitaire** (cas complexe) ou **orthogonal** (cas réel) s'il préserve le produit scalaire. C'est-à-dire :

    $$ \forall x,y \in E, \langle f(x), f(y) \rangle = \langle x, y \rangle $$

    - Cela équivaut à $f^* \circ f = \text{Id}$, et comme on est en dimension finie, aussi à $f \circ f^* = \text{Id}$ et $f^{-1} = f^*$.
    - Dans une base orthonormée, sa matrice $A$ vérifie $A^*A=I$, i.e. ${}^tAA=I$ (cas réel) ou $\overline{{}^tA}A=I$ (cas complexe).

3.  **Endomorphisme normal**

    $f$ est dit **normal** si $f$ et son adjoint $f^*$ commutent :

    $$ f \circ f^* = f^* \circ f $$

    - Dans une base orthonormée, sa matrice $A$ vérifie $AA^* = A^*A$.

### Propriétés Clés

- **Relations entre les classes** :
  - Tout endomorphisme auto-adjoint est normal ($f=f^* \implies ff^*=f^2=f^*f$).
  - Tout endomorphisme unitaire/orthogonal est normal ($f^{-1}=f^* \implies ff^*=f f^{-1}=\text{Id}=f^{-1}f=f^*f$).
  - La réciproque est fausse : un endomorphisme normal n'est pas forcément auto-adjoint ou unitaire.

- **Propriétés des endomorphismes unitaires/orthogonaux** :
  - Ils préservent la norme : $\|f(x)\| = \|x\|$. Ce sont des **isométries**.
  - Ils transforment une base orthonormée en une autre base orthonormée.
  - Géométriquement, en dimension 2 ou 3, les endomorphismes orthogonaux sont des rotations, des réflexions, ou des composées de celles-ci.

- **Théorème Spectral (Hors programme, mais fondamental)** : La grande importance des endomorphismes normaux (et donc des auto-adjoints et unitaires) est qu'ils sont toujours diagonalisables dans une base orthonormée (dans $\mathbb{C}$). Les endomorphismes auto-adjoints sont diagonalisables dans une base orthonormée dans $\mathbb{R}$.

### Exemples

**Exemple 1 (Auto-adjoint / Symétrique)**

Dans $\mathbb{R}^3$ avec base canonique, l'endomorphisme de matrice $A = \begin{pmatrix} 1 & 2 & 3 \\ 2 & 4 & 5 \\ 3 & 5 & 6 \end{pmatrix}$ est auto-adjoint car $A$ est symétrique.

**Exemple 2 (Unitaire / Orthogonal)**

Dans $\mathbb{R}^2$, l'endomorphisme de rotation d'angle $\theta$ a pour matrice $R_\theta = \begin{pmatrix} \cos\theta & -\sin\theta \\ \sin\theta & \cos\theta \end{pmatrix}$.

Il est orthogonal car ${}^t R_\theta R_\theta = \begin{pmatrix} \cos\theta & \sin\theta \\ -\sin\theta & \cos\theta \end{pmatrix} \begin{pmatrix} \cos\theta & -\sin\theta \\ \sin\theta & \cos\theta \end{pmatrix} = \begin{pmatrix} \cos^2\theta+\sin^2\theta & 0 \\ 0 & \sin^2\theta+\cos^2\theta \end{pmatrix} = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix} = I_2$.

**Exemple 3 (Normal, mais ni auto-adjoint ni unitaire)**

Dans $\mathbb{C}^2$, soit l'endomorphisme de matrice $A = \begin{pmatrix} 1 & i \\ i & 1 \end{pmatrix}$.

- $A^* = \overline{{}^tA} = \begin{pmatrix} 1 & -i \\ -i & 1 \end{pmatrix}$.
- $A \neq A^*$, donc il n'est pas auto-adjoint.
- $AA^* = \begin{pmatrix} 1 & i \\ i & 1 \end{pmatrix} \begin{pmatrix} 1 & -i \\ -i & 1 \end{pmatrix} = \begin{pmatrix} 1-i^2 & -i+i \\ -i+i & -i^2+1 \end{pmatrix} = \begin{pmatrix} 2 & 0 \\ 0 & 2 \end{pmatrix}$.
- $A^*A = \begin{pmatrix} 1 & -i \\ -i & 1 \end{pmatrix} \begin{pmatrix} 1 & i \\ i & 1 \end{pmatrix} = \begin{pmatrix} 1-i^2 & i-i \\ i-i & -i^2+1 \end{pmatrix} = \begin{pmatrix} 2 & 0 \\ 0 & 2 \end{pmatrix}$.
- Puisque $AA^* = A^*A$, l'endomorphisme est normal.
- Puisque $AA^* \neq I$, il n'est pas unitaire.

### Contre-exemples

**Contre-exemple 1 (Ni normal, ni auto-adjoint, ni unitaire)**

Dans $\mathbb{R}^2$, soit l'endomorphisme de matrice $A = \begin{pmatrix} 1 & 1 \\ 0 & 1 \end{pmatrix}$ (un cisaillement).

- $A \neq {}^tA$, donc pas auto-adjoint.
- ${}^tAA = \begin{pmatrix} 1 & 0 \\ 1 & 1 \end{pmatrix} \begin{pmatrix} 1 & 1 \\ 0 & 1 \end{pmatrix} = \begin{pmatrix} 1 & 1 \\ 1 & 2 \end{pmatrix} \neq I$, donc pas orthogonal.
- $A {}^tA = \begin{pmatrix} 1 & 1 \\ 0 & 1 \end{pmatrix} \begin{pmatrix} 1 & 0 \\ 1 & 1 \end{pmatrix} = \begin{pmatrix} 2 & 1 \\ 1 & 1 \end{pmatrix}$.
- ${}^tA A = \begin{pmatrix} 1 & 1 \\ 1 & 2 \end{pmatrix}$.
- Puisque $A{}^tA \neq {}^tA A$, il n'est pas normal.

### Concepts Liés

- **Diagonalisation** : Les propriétés de ces endomorphismes sont intimement liées à leur diagonalisabilité. Le théorème spectral est l'un des résultats les plus importants de l'algèbre linéaire.
- **Isométries** : Les endomorphismes unitaires et orthogonaux sont les isométries vectorielles, c'est-à-dire les transformations qui préservent les distances et les angles.

---

## Concept 10: Théorème de Représentation de Riesz

### Prérequis

- Algèbre Linéaire : Espace dual, formes linéaires.
- **Concept 2** : Produit Scalaire.

### Définition

Soit $E$ un espace vectoriel. L'**espace dual** de $E$, noté $E^*$, est l'espace vectoriel de toutes les **formes linéaires** sur $E$, c'est-à-dire les applications linéaires $l : E \to \mathbb{K}$.

**Théorème de représentation de Riesz (en dimension finie)**

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien de dimension finie. Pour toute forme linéaire $l \in E^*$, il existe un **unique** vecteur $y_l \in E$ tel que pour tout $x \in E$, on ait :

$$ l(x) = \langle x, y_l \rangle $$

Ce théorème établit une correspondance canonique entre l'espace $E$ et son dual $E^*$.

### Explications Détaillées

Une forme linéaire est une "mesure" d'un vecteur : elle prend un vecteur en entrée et renvoie un scalaire. Le théorème de Riesz nous dit que dans un espace euclidien ou hermitien, toute "mesure" linéaire peut être réalisée en faisant un produit scalaire avec un vecteur "représentant" fixe. Chaque forme linéaire a son propre vecteur représentant, et cette correspondance est unique.

L'application $\Phi : E \to E^*$ définie par $\Phi(y) = (x \mapsto \langle x, y \rangle)$ est :

- **Linéaire dans le cas euclidien** : $\Phi$ est un isomorphisme d'espaces vectoriels.
- **Anti-linéaire (ou semi-linéaire) dans le cas hermitien** : $\Phi(\lambda y) = \bar{\lambda} \Phi(y)$. C'est un anti-isomorphisme.

La preuve repose sur le fait que cette application $\Phi$ est injective (car le produit scalaire est défini) et que $\dim(E) = \dim(E^*)$ en dimension finie. Une application (anti-)linéaire injective entre espaces de même dimension finie est un (anti-)isomorphisme, donc elle est surjective. La surjectivité signifie que toute forme linéaire $l \in E^*$ est l'image d'un certain $y \in E$, ce qui est exactement l'énoncé du théorème.

### Exemples

**Exemple 1 (Dans $\mathbb{R}^3$)**

Soit $E = \mathbb{R}^3$ avec le produit scalaire usuel. Considérons la forme linéaire $l : \mathbb{R}^3 \to \mathbb{R}$ définie par $l(x_1, x_2, x_3) = 2x_1 - x_2 + 3x_3$.

Le théorème de Riesz affirme qu'il existe un unique vecteur $y_l = (y_1, y_2, y_3)$ tel que $l(x) = \langle x, y_l \rangle$.

$\langle x, y_l \rangle = x_1y_1 + x_2y_2 + x_3y_3$.

Par identification, on doit avoir $2x_1 - x_2 + 3x_3 = x_1y_1 + x_2y_2 + x_3y_3$ pour tout $x$.

Cela impose $y_1=2, y_2=-1, y_3=3$.

Le vecteur représentant de $l$ est donc $y_l = (2, -1, 3)$.

**Exemple 2 (Tiré du cours, sur les polynômes)**

Soit $E = \mathbb{R}_n[X]$. On munit $E$ d'un produit scalaire un peu inhabituel pour simplifier : si $P(X) = \sum a_i X^i$ et $Q(X) = \sum b_i X^i$, on pose $\langle P, Q \rangle = \sum a_i b_i$. (C'est le produit scalaire qui rend la base canonique $(1, X, \dots, X^n)$ orthonormée).

Considérons la forme linéaire $l(P) = \int_0^1 P(t)dt$.

On cherche le polynôme $Q_0(X) = \sum b_i X^i$ tel que $l(P) = \langle P, Q_0 \rangle$.

$l(P) = \int_0^1 (\sum a_i t^i) dt = \sum a_i \int_0^1 t^i dt = \sum a_i \frac{1}{i+1}$.

D'autre part, $\langle P, Q_0 \rangle = \sum a_i b_i$.

Par identification des coefficients de $a_i$, on doit avoir $b_i = \frac{1}{i+1}$.

Le polynôme représentant est donc $Q_0(X) = \sum_{i=0}^n \frac{1}{i+1} X^i = 1 + \frac{1}{2}X + \frac{1}{3}X^2 + \dots$

**Exemple 3 (Forme linéaire d'évaluation)**

Soit $E = \mathbb{R}_2[X]$ avec le produit scalaire $\langle P, Q \rangle = \int_0^1 P(t)Q(t)dt$.

Soit $l(P) = P(0)$ (l'évaluation en 0). C'est une forme linéaire.

Le théorème de Riesz garantit qu'il existe un polynôme $Q_0 \in \mathbb{R}_2[X]$ tel que $P(0) = \int_0^1 P(t)Q_0(t)dt$ pour tout polynôme $P$ de degré $\le 2$. La recherche explicite de $Q_0$ est plus complexe que dans les autres exemples et nécessite de résoudre un système linéaire.

### Contre-exemples

**Contre-exemple 1 (Espace sans produit scalaire)**

Soit $E=\mathbb{R}^2$, mais sans produit scalaire défini. L'espace dual $E^*$ existe, mais il n'y a pas de moyen canonique de "représenter" une forme linéaire par un vecteur de $E$. Le concept même de $\langle x, y \rangle$ n'a pas de sens.

**Contre-exemple 2 (Dimension infinie)**

Le théorème est encore vrai pour les espaces de Hilbert (espaces préhilbertiens complets), qui sont généralement de dimension infinie. Cependant, il peut être faux pour des espaces préhilbertiens non complets. L'hypothèse de complétude (ou de dimension finie, qui implique la complétude) est cruciale.

### Concepts Liés

- **Espace Dual** : Le théorème établit un lien concret et puissant entre un espace et son dual, à condition qu'une structure euclidienne ou hermitienne soit présente.
- **Analyse Fonctionnelle** : Le théorème de Riesz est un pilier de l'analyse fonctionnelle, où il est généralisé aux espaces de Hilbert de dimension infinie. Il est fondamental pour l'étude des équations aux dérivées partielles et de la mécanique quantique.
