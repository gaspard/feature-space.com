---
title: 1 - Espaces Euclidiens et Hermitiens
level: basic
course: Géométrie
chapter: Espaces Euclidiens et Hermitiens
order: 20
layout: '../../../../layouts/Layout.astro'
tags:
  [
    'algèbre linéaire',
    'géométrie',
    'espace euclidien',
    'produit scalaire',
    'orthogonalité',
    'gram-schmidt'
  ]
---

# Espaces Euclidiens et Hermitiens

---

## Concept 1: Formes Bilinéaires et Sesquilinéaires

### Prérequis

- Espace vectoriel sur un corps $\mathbb{K}$ (principalement $\mathbb{R}$ ou $\mathbb{C}$)
- Concept d'application (fonction)
- Propriété de linéarité d'une application

### Définition

Soit $E$ un espace vectoriel sur un corps $\mathbb{K}$.

1.  **Forme Bilinéaire** (cas où $\mathbb{K} = \mathbb{R}$)
    Une application $\varphi : E \times E \to \mathbb{R}$ est une **forme bilinéaire** si elle est linéaire par rapport à chacune de ses deux variables. C'est-à-dire :

    - Linéarité à gauche : $\varphi(u_1 + \lambda u_2, v) = \varphi(u_1, v) + \lambda\varphi(u_2, v)$
    - Linéarité à droite : $\varphi(u, v_1 + \lambda v_2) = \varphi(u, v_1) + \lambda\varphi(u, v_2)$
      pour tous vecteurs $u, u_1, u_2, v, v_1, v_2 \in E$ et tout scalaire $\lambda \in \mathbb{R}$.

2.  **Forme Sesquilinéaire** (cas où $\mathbb{K} = \mathbb{C}$)
    Une application $\varphi : E \times E \to \mathbb{C}$ est une **forme sesquilinéaire** si elle est linéaire par rapport à sa première variable et "semi-linéaire" (ou anti-linéaire) par rapport à la seconde.
    - Linéarité à gauche : $\varphi(u_1 + \lambda u_2, v) = \varphi(u_1, v) + \lambda\varphi(u_2, v)$
    - Semi-linéarité à droite : $\varphi(u, v_1 + \lambda v_2) = \varphi(u, v_1) + \bar{\lambda}\varphi(u, v_2)$
      pour tous vecteurs $u, u_1, u_2, v, v_1, v_2 \in E$ et tout scalaire $\lambda \in \mathbb{C}$. Le symbole $\bar{\lambda}$ désigne le conjugué du nombre complexe $\lambda$.

### Explications détaillées

Une forme bilinéaire ou sesquilinéaire est une sorte de "produit" entre deux vecteurs qui donne un scalaire (un nombre réel ou complexe).

- La **bilinéarité** signifie que l'application se comporte comme la distributivité de la multiplication que vous connaissez. Si on fixe le deuxième vecteur, l'application est linéaire par rapport au premier, et vice-versa.
- La **sesquilinéarité** ("sesqui" signifie "un et demi" en latin) est une variation utilisée pour les espaces vectoriels complexes. La semi-linéarité à droite, avec le conjugué $\bar{\lambda}$, est une astuce mathématique cruciale qui garantit que la "longueur" d'un vecteur au carré, $\varphi(x,x)$, soit un nombre réel, ce qui est indispensable pour définir des notions géométriques.

Une conséquence directe de la linéarité est que si l'un des vecteurs est le vecteur nul, le résultat est toujours 0 : $\varphi(0_E, v) = \varphi(u, 0_E) = 0$.

### Propriétés principales

- **Linéarité par rapport à chaque variable** (séparément) pour les formes bilinéaires.
- **Linéarité à gauche et semi-linéarité à droite** pour les formes sesquilinéaires.
- L'image d'un couple contenant le vecteur nul est le scalaire nul.

### Exemples

**Exemple 1 : Le produit scalaire usuel sur $\mathbb{R}^2$**
Soit $E = \mathbb{R}^2$. L'application $\varphi(x, y) = x_1y_1 + x_2y_2$ où $x=(x_1, x_2)$ et $y=(y_1, y_2)$ est une forme bilinéaire.
Vérifions la linéarité à gauche :
Soient $u_1 = (a_1, a_2)$, $u_2 = (b_1, b_2)$, $v = (c_1, c_2)$ et $\lambda \in \mathbb{R}$.
$\varphi(u_1 + \lambda u_2, v) = \varphi((a_1+\lambda b_1, a_2+\lambda b_2), (c_1, c_2))$
$= (a_1+\lambda b_1)c_1 + (a_2+\lambda b_2)c_2$
$= (a_1c_1 + a_2c_2) + \lambda(b_1c_1 + b_2c_2) = \varphi(u_1, v) + \lambda\varphi(u_2, v)$.

**Exemple 2 : Une forme sesquilinéaire sur $\mathbb{C}^2$**
Soit $E = \mathbb{C}^2$. L'application $\varphi(x, y) = x_1\bar{y_1} + x_2\bar{y_2}$ est une forme sesquilinéaire.
Vérifions la semi-linéarité à droite :
Soient $u = (a_1, a_2)$, $v_1 = (b_1, b_2)$, $v_2 = (c_1, c_2)$ et $\lambda \in \mathbb{C}$.
$\varphi(u, v_1 + \lambda v_2) = \varphi((a_1, a_2), (b_1+\lambda c_1, b_2+\lambda c_2))$
$= a_1\overline{(b_1+\lambda c_1)} + a_2\overline{(b_2+\lambda c_2)}$
$= a_1(\bar{b_1}+\bar{\lambda}\bar{c_1}) + a_2(\bar{b_2}+\bar{\lambda}\bar{c_2})$
$= (a_1\bar{b_1} + a_2\bar{b_2}) + \bar{\lambda}(a_1\bar{c_1} + a_2\bar{c_2}) = \varphi(u, v_1) + \bar{\lambda}\varphi(u, v_2)$.

**Exemple 3 : Forme bilinéaire sur les polynômes**
Soit $E = \mathbb{R}_n[X]$ l'espace des polynômes de degré $\le n$. L'application $\varphi(P, Q) = \int_0^1 P(t)Q(t)dt$ est une forme bilinéaire, grâce à la linéarité de l'intégrale.

### Contre-exemples

**Contre-exemple 1 : Non-linéarité**
Soit $E = \mathbb{R}$. L'application $\varphi(x, y) = x y^2$ n'est pas bilinéaire. Elle est linéaire par rapport à $x$, mais pas par rapport à $y$ : $\varphi(x, \lambda y) = x(\lambda y)^2 = \lambda^2 xy^2 = \lambda^2 \varphi(x, y) \neq \lambda \varphi(x, y)$ en général.

**Contre-exemple 2 : Mauvais espace d'arrivée**
Soit $E = \mathbb{R}^2$. L'application $\psi(x, y) = (x_1y_1, x_2y_2)$ n'est pas une forme bilinéaire car son résultat est un vecteur de $\mathbb{R}^2$, pas un scalaire de $\mathbb{R}$.

### Concepts liés

- **Produit Scalaire** : Un produit scalaire est un cas particulier de forme bilinéaire ou sesquilinéaire avec des propriétés supplémentaires (symétrie et positivité).
- **Forme quadratique** : Associée à une forme bilinéaire $\varphi$, c'est l'application $q(x) = \varphi(x, x)$.

---

## Concept 2: Produit Scalaire et Espaces Euclidiens / Hermitiens

### Prérequis

- Espace vectoriel sur $\mathbb{R}$ ou $\mathbb{C}$
- Formes bilinéaires et sesquilinéaires

### Définition

Soit $E$ un espace vectoriel de dimension finie sur $\mathbb{K}$ ($\mathbb{R}$ ou $\mathbb{C}$).

Un **produit scalaire** sur $E$ est une application $\varphi : E \times E \to \mathbb{K}$ qui possède les propriétés suivantes :

1.  C'est une forme bilinéaire (si $\mathbb{K}=\mathbb{R}$) ou sesquilinéaire (si $\mathbb{K}=\mathbb{C}$).
2.  **Symétrie** :
    - (Cas réel) **Symétrique** : Pour tous $x, y \in E$, $\varphi(x, y) = \varphi(y, x)$.
    - (Cas complexe) **Hermitienne** : Pour tous $x, y \in E$, $\varphi(x, y) = \overline{\varphi(y, x)}$.
3.  **Définie positive** :
    - (Positive) Pour tout $x \in E$, $\varphi(x, x)$ est un nombre réel positif ou nul ($\varphi(x, x) \ge 0$).
    - (Définie) Pour tout $x \in E$, $\varphi(x, x) = 0 \iff x = 0_E$.

Un espace vectoriel muni d'un produit scalaire est appelé un **espace préhilbertien**.

- Si $\mathbb{K}=\mathbb{R}$, on parle d'**espace euclidien**.
- Si $\mathbb{K}=\mathbb{C}$, on parle d'**espace hermitien**.
  Le produit scalaire est souvent noté $\langle x, y \rangle$ au lieu de $\varphi(x, y)$.

### Explications détaillées

Le produit scalaire est le concept fondamental qui permet d'introduire la géométrie (notions de longueur, d'angle, de perpendicularité) dans les espaces vectoriels abstraits. Il généralise le produit scalaire que vous avez vu au lycée dans le plan ou l'espace.

- La **symétrie** (ou symétrie hermitienne) assure que l' "angle" entre $x$ et $y$ est le même que celui entre $y$ et $x$.
- Le caractère **défini positif** est essentiel. Il garantit que $\langle x, x \rangle$ peut être interprété comme le carré de la "longueur" d'un vecteur $x$. Cette longueur est positive, et seul le vecteur nul a une longueur nulle.

### Propriétés principales

- Bilinéaire symétrique (cas réel) ou sesquilinéaire hermitienne (cas complexe).
- Définie positive.
- Permet de définir une norme (longueur) et une notion d'orthogonalité (angle droit).

### Exemples

**Exemple 1 : Le produit scalaire canonique sur $\mathbb{R}^3$ (Espace Euclidien)**
Soit $E = \mathbb{R}^3$. Le produit scalaire usuel est défini par $\langle x, y \rangle = x_1y_1 + x_2y_2 + x_3y_3$.
Par exemple, si $x = (1, 2, 3)$ et $y = (4, -1, 0)$, alors $\langle x, y \rangle = 1 \cdot 4 + 2 \cdot (-1) + 3 \cdot 0 = 4 - 2 + 0 = 2$.
Cette forme est bien bilinéaire, symétrique et définie positive.

**Exemple 2 : Le produit scalaire canonique sur $\mathbb{C}^2$ (Espace Hermitien)**
Soit $E = \mathbb{C}^2$. Le produit scalaire usuel est $\langle x, y \rangle = x_1\bar{y_1} + x_2\bar{y_2}$.
Si $x = (1, i)$ et $y = (2+i, 3)$, alors $\langle x, y \rangle = 1 \cdot \overline{(2+i)} + i \cdot \bar{3} = 1 \cdot (2-i) + i \cdot 3 = 2 - i + 3i = 2 + 2i$.
Par contre, $\langle x, x \rangle = 1 \cdot \bar{1} + i \cdot \bar{i} = 1 \cdot 1 + i \cdot (-i) = 1 + 1 = 2$, qui est bien un réel positif.

**Exemple 3 : Produit scalaire sur les polynômes**
Soit $E = \mathbb{R}_1[X]$ l'espace des polynômes de degré $\le 1$. On définit $\langle P, Q \rangle = \int_0^1 P(t)Q(t)dt$.
Soient $P(t) = t$ et $Q(t) = 2-t$.
$\langle P, Q \rangle = \int_0^1 t(2-t)dt = \int_0^1 (2t-t^2)dt = [t^2 - t^3/3]_0^1 = 1 - 1/3 = 2/3$.
Cette forme est un produit scalaire.

### Contre-exemples

**Contre-exemple 1 : Forme non symétrique**
Sur $\mathbb{R}^2$, $\varphi(x, y) = x_1y_2 - x_2y_1$. Cette forme est bilinéaire, mais non symétrique : $\varphi((1,0), (0,1)) = 1$ alors que $\varphi((0,1), (1,0)) = -1$.

**Contre-exemple 2 : Forme non positive**
Sur $\mathbb{R}^2$, $\varphi(x, y) = x_1y_1 - x_2y_2$. Cette forme est bilinéaire et symétrique. Mais elle n'est pas positive. Pour $x=(0,1)$, $\varphi(x,x) = 0^2 - 1^2 = -1 < 0$. (C'est la forme de Minkowski de la relativité restreinte).

**Contre-exemple 3 : Forme non définie**
Sur $\mathbb{R}^2$, $\varphi(x, y) = x_1y_1$. Cette forme est bilinéaire, symétrique et positive. Mais elle n'est pas définie. Pour $x=(0,1) \neq 0_E$, on a $\varphi(x,x) = 0^2 = 0$.

### Concepts liés

- **Norme euclidienne / hermitienne** : La notion de longueur dérivée du produit scalaire.
- **Orthogonalité** : La notion d'angle droit.
- **Inégalité de Cauchy-Schwarz** : Une inégalité fondamentale liant le produit scalaire aux longueurs des vecteurs.

---

## Concept 3: Norme et Inégalité de Cauchy-Schwarz

### Prérequis

- Produit scalaire
- Racine carrée, Valeur absolue (ou module pour les complexes)

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien.

1.  **Norme**
    La **norme** associée au produit scalaire est l'application $\|\cdot\| : E \to \mathbb{R}^+$ définie par :
    $$ \|x\| = \sqrt{\langle x, x \rangle} $$

2.  **Inégalité de Cauchy-Schwarz**
    Pour tous vecteurs $x, y \in E$, on a l'inégalité :
    $$ |\langle x, y \rangle| \le \|x\| \|y\| $$
    L'égalité a lieu si et seulement si les vecteurs $x$ et $y$ sont colinéaires (c'est-à-dire, l'un est un multiple de l'autre).

### Explications détaillées

La **norme** d'un vecteur, $\|x\|$, est sa **longueur** ou sa magnitude. Puisque $\langle x, x \rangle \ge 0$, la racine carrée est toujours bien définie.

L'**inégalité de Cauchy-Schwarz** est l'un des résultats les plus importants de l'algèbre linéaire. Elle établit un lien fondamental entre le produit scalaire (qui contient des informations sur l'angle) et les normes (les longueurs). Intuitivement, elle dit que le produit scalaire de deux vecteurs est au maximum le produit de leurs longueurs. Ce maximum est atteint lorsque les vecteurs pointent dans la même direction ou dans des directions opposées.

### Propriétés principales

La norme issue d'un produit scalaire vérifie les trois propriétés qui définissent formellement une norme :

1.  **Séparation** : $\|x\| = 0 \iff x = 0_E$.
2.  **Homogénéité** : Pour tout $\lambda \in \mathbb{K}$, $\|\lambda x\| = |\lambda| \|x\|$. (Si on multiplie un vecteur par 2, sa longueur est doublée).
3.  **Inégalité triangulaire** : Pour tous $x, y \in E$, $\|x + y\| \le \|x\| + \|y\|$. (Le chemin direct est toujours le plus court).

La preuve de l'inégalité triangulaire utilise de manière cruciale l'inégalité de Cauchy-Schwarz.

On a aussi des identités importantes :

- **Identité du parallélogramme** : $\|x+y\|^2 + \|x-y\|^2 = 2(\|x\|^2 + \|y\|^2)$.
- **Formules de polarisation** (expriment le produit scalaire à partir de la norme) :
  - Cas réel : $\langle x, y \rangle = \frac{1}{2}(\|x + y\|^2 - \|x\|^2 - \|y\|^2)$.

### Exemples

**Exemple 1 : Norme euclidienne sur $\mathbb{R}^3$**
Soit $x = (1, -2, 2) \in \mathbb{R}^3$. Sa norme est :
$\|x\| = \sqrt{1^2 + (-2)^2 + 2^2} = \sqrt{1 + 4 + 4} = \sqrt{9} = 3$.

**Exemple 2 : Vérification de Cauchy-Schwarz sur $\mathbb{R}^2$**
Soient $x = (1, 2)$ et $y = (3, 1)$.
$\|x\| = \sqrt{1^2+2^2} = \sqrt{5}$.
$\|y\| = \sqrt{3^2+1^2} = \sqrt{10}$.
$\langle x, y \rangle = 1 \cdot 3 + 2 \cdot 1 = 5$.
L'inégalité de Cauchy-Schwarz dit $|\langle x, y \rangle| \le \|x\|\|y\|$, soit $|5| \le \sqrt{5}\sqrt{10} = \sqrt{50}$.
$5 \le \sqrt{50}$ est vrai, car $25 \le 50$.

**Exemple 3 : Norme sur les polynômes**
Dans $E = \mathbb{R}_1[X]$ avec $\langle P, Q \rangle = \int_0^1 P(t)Q(t)dt$.
Pour $P(t) = \sqrt{3}(2t-1)$, calculons sa norme :
$\|P\|^2 = \int_0^1 (\sqrt{3}(2t-1))^2 dt = 3 \int_0^1 (4t^2-4t+1) dt$
$= 3 [4t^3/3 - 2t^2 + t]_0^1 = 3(4/3 - 2 + 1) = 3(1/3) = 1$.
Donc $\|P\| = 1$.

### Contre-exemples

**Contre-exemple 1 : Une fonction qui n'est pas une norme**
Soit $E = \mathbb{R}^2$. La fonction $f(x) = |x_1 - x_2|$ n'est pas une norme. Elle ne vérifie pas la propriété de séparation. Si $x=(1,1)$, $f(x)=0$ mais $x \ne 0_E$.

**Contre-exemple 2 : Une norme non-euclidienne**
Sur $\mathbb{R}^2$, la norme "Manhattan" $\|x\|_1 = |x_1| + |x_2|$ est une norme valide. Mais elle ne provient pas d'un produit scalaire car elle ne vérifie pas l'identité du parallélogramme.
Prenons $x=(1,0)$ et $y=(0,1)$.
$\|x\|_1=1$, $\|y\|_1=1$.
$x+y=(1,1)$, $\|x+y\|_1 = 2$.
$x-y=(1,-1)$, $\|x-y\|_1 = 2$.
$\|x+y\|_1^2 + \|x-y\|_1^2 = 2^2 + 2^2 = 8$.
$2(\|x\|_1^2 + \|y\|_1^2) = 2(1^2+1^2) = 4$.
Puisque $8 \ne 4$, cette norme n'est pas euclidienne.

### Concepts liés

- **Orthogonalité** : Concept défini lorsque le produit scalaire est nul.
- **Distance** : La distance entre deux vecteurs $x$ et $y$ est définie par $d(x,y) = \|x-y\|$.
- **Angle** : Dans un espace euclidien, on peut définir l'angle $\theta$ entre deux vecteurs non nuls par $\cos(\theta) = \frac{\langle x, y \rangle}{\|x\|\|y\|}$. L'inégalité de Cauchy-Schwarz garantit que ce cosinus est bien entre -1 et 1.

---

## Concept 4: Orthogonalité et Théorème de Pythagore

### Prérequis

- Produit scalaire
- Norme associée

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien.

1.  **Vecteurs Orthogonaux**
    Deux vecteurs $x, y \in E$ sont dits **orthogonaux** si leur produit scalaire est nul :
    $$ \langle x, y \rangle = 0 $$
    On note parfois $x \perp y$.

2.  **Famille Orthogonale / Orthonormée**
    - Une famille de vecteurs $(v_1, ..., v_n)$ est dite **orthogonale** si ses vecteurs sont deux à deux orthogonaux ($\langle v_i, v_j \rangle = 0$ pour tout $i \ne j$).
    - Elle est dite **orthonormée** si elle est orthogonale et si tous ses vecteurs sont de norme 1 ($\|v_i\| = 1$ pour tout $i$).

### Explications détaillées

L'orthogonalité est la généralisation de la notion de "perpendicularité" de la géométrie classique. C'est une notion purement algébrique définie par l'annulation du produit scalaire. Cette simple définition a des conséquences géométriques profondes.

Une famille de vecteurs non nuls qui est orthogonale est toujours une famille libre. Cela signifie que des directions orthogonales sont indépendantes les unes des autres.

### Propriétés principales

- **Théorème de Pythagore** : Si des vecteurs $v_1, ..., v_n$ sont deux à deux orthogonaux, alors la norme au carré de leur somme est la somme de leurs normes au carré :
  $$ \left\| \sum*{i=1}^n v_i \right\|^2 = \sum*{i=1}^n \|v_i\|^2 $$

- **Liberté** : Une famille orthogonale de vecteurs non nuls est toujours une famille libre.

### Exemples

**Exemple 1 : Vecteurs orthogonaux dans $\mathbb{R}^3$**
Dans $\mathbb{R}^3$ avec le produit scalaire usuel, soient $v_1 = (1, 1, 0)$ et $v_2 = (1, -1, 2)$.
$\langle v_1, v_2 \rangle = 1 \cdot 1 + 1 \cdot (-1) + 0 \cdot 2 = 1 - 1 + 0 = 0$.
Ces vecteurs sont orthogonaux.
Maintenant, soit $v_3 = (-2, 2, 2)$.
$\langle v_1, v_3 \rangle = 1(-2) + 1(2) + 0(2) = 0$.
$\langle v_2, v_3 \rangle = 1(-2) + (-1)(2) + 2(2) = -2 - 2 + 4 = 0$.
La famille $(v_1, v_2, v_3)$ est donc une famille orthogonale.

**Exemple 2 : Théorème de Pythagore**
Avec $v_1=(1,1,0)$ et $v_2=(1,-1,2)$ de l'exemple précédent.
$\|v_1\|^2 = 1^2+1^2+0^2 = 2$.
$\|v_2\|^2 = 1^2+(-1)^2+2^2 = 6$.
$v_1+v_2 = (2,0,2)$.
$\|v_1+v_2\|^2 = 2^2+0^2+2^2 = 8$.
On vérifie bien que $\|v_1+v_2\|^2 = \|v_1\|^2 + \|v_2\|^2$ (car $8=2+6$).

**Exemple 3 : Orthogonalité de fonctions**
Dans l'espace des fonctions continues sur $[-\pi, \pi]$ avec le produit scalaire $\langle f, g \rangle = \int_{-\pi}^{\pi} f(t)g(t)dt$.
Les fonctions $f(t) = \cos(t)$ et $g(t) = \sin(t)$ sont orthogonales :
$\langle \cos, \sin \rangle = \int_{-\pi}^{\pi} \cos(t)\sin(t)dt = \left[\frac{\sin^2(t)}{2}\right]_{-\pi}^{\pi} = 0 - 0 = 0$.

### Contre-exemples

**Contre-exemple 1 : Vecteurs non-orthogonaux**
Dans $\mathbb{R}^2$, $x = (1, 1)$ et $y = (1, 2)$.
$\langle x, y \rangle = 1 \cdot 1 + 1 \cdot 2 = 3 \ne 0$. Ils ne sont pas orthogonaux.
Pour ces vecteurs, Pythagore ne s'applique pas :
$\|x\|^2=2, \|y\|^2=5$. $x+y=(2,3)$, $\|x+y\|^2=13$.
On a bien $13 \ne 2+5$.

**Contre-exemple 2 : Dépendance du produit scalaire**
Considérons $\mathbb{R}^2$ avec un autre produit scalaire : $\langle x, y \rangle' = 2x_1y_1 + x_2y_2$.
Les vecteurs $x=(1,1)$ et $y=(1,-1)$ sont orthogonaux pour le produit scalaire usuel, car $\langle x, y \rangle = 1(1) + 1(-1) = 0$.
Cependant, pour le nouveau produit scalaire, ils ne le sont pas : $\langle (1,1), (1,-1) \rangle' = 2(1)(1) + (1)(-1) = 1 \ne 0$.
L'orthogonalité dépend donc crucialement du produit scalaire choisi.

### Concepts liés

- **Base Orthonormée** : Une base de l'espace constituée de vecteurs deux à deux orthogonaux et de norme 1.
- **Projection Orthogonale** : Projeter un vecteur sur un sous-espace se fait "orthogonalement".
- **Sous-espace orthogonal** ($F^\perp$) : L'ensemble de tous les vecteurs orthogonaux à un sous-espace $F$.

---

## Concept 5: Bases Orthonormées

### Prérequis

- Base d'un espace vectoriel
- Orthogonalité et Norme

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien de dimension $n$.

Une base $(e_1, ..., e_n)$ de $E$ est dite **orthonormée** si elle est une famille orthonormée, c'est-à-dire :

1.  **Orthogonalité** : $\langle e_i, e_j \rangle = 0$ pour tout $i \ne j$.
2.  **Normalisation** : $\|e_i\| = 1$ pour tout $i$.

Ces deux conditions peuvent se résumer par la formule compacte : $\langle e_i, e_j \rangle = \delta_{ij}$, où $\delta_{ij}$ est le symbole de Kronecker ($\delta_{ij}=1$ si $i=j$ et $0$ sinon).

### Explications détaillées

Une base orthonormée (BON) est la "meilleure" base possible pour travailler dans un espace euclidien ou hermitien. Elle simplifie énormément tous les calculs impliquant des coordonnées. Dans une telle base, les calculs de produit scalaire, de norme ou de coordonnées se font aussi simplement que dans $\mathbb{R}^n$ avec la base canonique et le produit scalaire usuel.

L'existence d'une telle base dans tout espace euclidien ou hermitien de dimension finie est un résultat fondamental, garanti par le procédé de Gram-Schmidt.

### Propriétés principales

Soit $\mathcal{B}=(e_1, ..., e_n)$ une base orthonormée de $E$.

- **Calcul des coordonnées** : Les coordonnées d'un vecteur $x \in E$ dans la base $\mathcal{B}$ sont très simples à obtenir :
  $$ x = \sum\_{i=1}^n \langle x, e_i \rangle e_i $$
    La $i$-ème coordonnée de $x$ est simplement $x_i = \langle x, e_i \rangle$.

- **Calcul du produit scalaire** : Si $x = \sum x_i e_i$ et $y = \sum y_i e_i$, le produit scalaire devient :

  - Cas réel : $\langle x, y \rangle = \sum_{i=1}^n x_i y_i$
  - Cas complexe : $\langle x, y \rangle = \sum_{i=1}^n x_i \bar{y_i}$

- **Calcul de la norme** :
  $$ \|x\|^2 = \sum\_{i=1}^n |x_i|^2 $$
  C'est le théorème de Pythagore généralisé aux composantes du vecteur.

### Exemples

**Exemple 1 : La base canonique de $\mathbb{R}^n$**
La base $e_1=(1,0,...,0), e_2=(0,1,0,...,0), ..., e_n=(0,...,0,1)$ est une base orthonormée pour le produit scalaire usuel.
$\langle e_i, e_j \rangle = 0$ si $i \ne j$ et $\langle e_i, e_i \rangle = 1$.

**Exemple 2 : Une autre base orthonormée de $\mathbb{R}^2$**
Soit $\mathcal{B} = (u, v)$ avec $u = (\frac{1}{\sqrt{2}}, \frac{1}{\sqrt{2}})$ et $v = (\frac{1}{\sqrt{2}}, -\frac{1}{\sqrt{2}})$.
Vérifions :
$\|u\|^2 = (\frac{1}{\sqrt{2}})^2 + (\frac{1}{\sqrt{2}})^2 = \frac{1}{2} + \frac{1}{2} = 1 \implies \|u\|=1$.
$\|v\|^2 = (\frac{1}{\sqrt{2}})^2 + (-\frac{1}{\sqrt{2}})^2 = \frac{1}{2} + \frac{1}{2} = 1 \implies \|v\|=1$.
$\langle u, v \rangle = \frac{1}{\sqrt{2}}\frac{1}{\sqrt{2}} + \frac{1}{\sqrt{2}}(-\frac{1}{\sqrt{2}}) = \frac{1}{2} - \frac{1}{2} = 0$.
C'est bien une base orthonormée.

**Exemple 3 : Coordonnées dans cette base**
Soit $x=(2,3)$. Cherchons ses coordonnées $(x_u, x_v)$ dans la base $\mathcal{B}$.
$x_u = \langle x, u \rangle = 2 \cdot \frac{1}{\sqrt{2}} + 3 \cdot \frac{1}{\sqrt{2}} = \frac{5}{\sqrt{2}}$.
$x_v = \langle x, v \rangle = 2 \cdot \frac{1}{\sqrt{2}} + 3 \cdot (-\frac{1}{\sqrt{2}}) = -\frac{1}{\sqrt{2}}$.
Donc $x = \frac{5}{\sqrt{2}} u - \frac{1}{\sqrt{2}} v$.

### Contre-exemples

**Contre-exemple 1 : Base orthogonale mais non normée**
Dans $\mathbb{R}^2$, la base $((2,0), (0,3))$ est orthogonale, mais les vecteurs ne sont pas de norme 1. Ce n'est donc pas une base orthonormée. Les formules de calcul de produit scalaire et de norme ne sont pas aussi simples.

**Contre-exemple 2 : Base de vecteurs normés mais non orthogonale**
Dans $\mathbb{R}^2$, la base $((1,0), (\frac{\sqrt{2}}{2}, \frac{\sqrt{2}}{2}))$ est constituée de vecteurs de norme 1. Mais ils ne sont pas orthogonaux, leur produit scalaire est $\frac{\sqrt{2}}{2} \ne 0$. Ce n'est donc pas une base orthonormée.

### Concepts liés

- **Procédé d'orthonormalisation de Gram-Schmidt** : L'algorithme qui permet de construire une base orthonormée à partir de n'importe quelle base.
- **Projection Orthogonale** : La formule de projection sur un sous-espace est très simple si l'on dispose d'une base orthonormée de ce sous-espace.
- **Matrice de Gram** : C'est la matrice des produits scalaires des vecteurs d'une base. Pour une base orthonormée, c'est la matrice identité.

---

## Concept 6: Procédé d'Orthonormalisation de Gram-Schmidt

### Prérequis

- Base d'un espace vectoriel
- Produit scalaire, Norme, Orthogonalité
- Notion de projection (intuitive)

### Définition

Le **procédé de Gram-Schmidt** est un algorithme qui prend en entrée une base quelconque $(v_1, ..., v_n)$ d'un espace euclidien ou hermitien et produit en sortie une base orthonormée $(e_1, ..., e_n)$ qui vérifie une propriété supplémentaire : pour tout entier $k$ de 1 à $n$, le sous-espace engendré par les $k$ premiers vecteurs est le même pour les deux bases.
$$ \text{Vect}(v_1, ..., v_k) = \text{Vect}(e_1, ..., e_k) $$

L'algorithme fonctionne par récurrence :

1.  **Initialisation** : On normalise le premier vecteur.
    $$ e_1 = \frac{v_1}{\|v_1\|} $$
2.  **Étape $k$** : En supposant que $(e_1, ..., e_{k-1})$ est déjà construite, on calcule le $k$-ième vecteur en deux temps :
    a. On prend $v_k$ et on lui soustrait sa projection sur le sous-espace déjà construit $\text{Vect}(e_1, ..., e_{k-1})$. Cela donne un vecteur $e'_k$ orthogonal à tous les $e_j$ pour $j < k$.
    $$ e'_k = v_k - \sum_{j=1}^{k-1} \langle v_k, e_j \rangle e_j $$
    b. On normalise ce nouveau vecteur pour obtenir $e_k$.
    $$ e_k = \frac{e'\_k}{\|e'\_k\|} $$

### Explications détaillées

Gram-Schmidt est une recette de cuisine pour "redresser" et "rétrécir" les vecteurs d'une base afin qu'ils soient tous perpendiculaires entre eux et de longueur 1.

L'idée à l'étape $k$ est de prendre le nouveau vecteur $v_k$ et de lui enlever toutes ses "composantes" qui se trouvent dans les directions déjà traitées ($e_1, ..., e_{k-1}$). La partie qui reste, $e'_k$, est par construction purement "nouvelle" et donc orthogonale à l'espace précédent. Il ne reste plus qu'à la mettre à la bonne longueur (norme 1).

Ce procédé garantit que tout espace euclidien ou hermitien de dimension finie possède au moins une base orthonormée.

### Propriétés principales

- Transforme n'importe quelle base en une base orthonormée.
- Préserve les sous-espaces engendrés à chaque étape.
- Si la famille de départ n'est pas libre (n'est pas une base), le procédé échouera : à un moment, un vecteur $e'_k$ sera nul et ne pourra pas être normalisé.

### Exemples

**Exemple 1 : Orthonormaliser une base de $\mathbb{R}^2$**
Soit $E=\mathbb{R}^2$ avec le produit scalaire usuel. Partons de la base $v_1=(2,1), v_2=(1,1)$.

- **Étape 1 :**
  $\|v_1\| = \sqrt{2^2+1^2} = \sqrt{5}$.
  $e_1 = \frac{v_1}{\|v_1\|} = \frac{1}{\sqrt{5}}(2,1)$.
- **Étape 2 :**
  a. Calculer $e'_2 = v_2 - \langle v_2, e_1 \rangle e_1$.
  $\langle v_2, e_1 \rangle = \langle (1,1), \frac{1}{\sqrt{5}}(2,1) \rangle = \frac{1}{\sqrt{5}}(1\cdot 2 + 1\cdot 1) = \frac{3}{\sqrt{5}}$.
  $e'_2 = (1,1) - \frac{3}{\sqrt{5}} \left(\frac{1}{\sqrt{5}}(2,1)\right) = (1,1) - \frac{3}{5}(2,1) = (1,1) - (\frac{6}{5}, \frac{3}{5}) = (-\frac{1}{5}, \frac{2}{5})$.
  (On peut vérifier que $\langle e'_2, e_1 \rangle=0$).
  b. Normaliser $e'_2$.
  $\|e'_2\| = \sqrt{(-\frac{1}{5})^2 + (\frac{2}{5})^2} = \sqrt{\frac{1}{25}+\frac{4}{25}} = \sqrt{\frac{5}{25}} = \frac{\sqrt{5}}{5} = \frac{1}{\sqrt{5}}$.
  $e_2 = \frac{e'_2}{\|e'_2\|} = \sqrt{5} \cdot (-\frac{1}{5}, \frac{2}{5}) = \frac{1}{\sqrt{5}}(-1, 2)$.
  La base orthonormée est $(\frac{1}{\sqrt{5}}(2,1), \frac{1}{\sqrt{5}}(-1, 2))$.

**Exemple 2 : L'exemple du cours sur $\mathbb{R}^3$**
On part de $v_1=(1,0,0)$, $v_2=(1,1,0)$, $v_3=(1,1,1)$.

- **Étape 1 :** $\|v_1\|=1$, donc $e_1 = (1,0,0)$.
- **Étape 2 :** $e'_2 = v_2 - \langle v_2, e_1 \rangle e_1 = (1,1,0) - 1 \cdot (1,0,0) = (0,1,0)$. $\|e'_2\|=1$, donc $e_2=(0,1,0)$.
- **Étape 3 :** $e'_3 = v_3 - \langle v_3, e_1 \rangle e_1 - \langle v_3, e_2 \rangle e_2 = (1,1,1) - 1\cdot(1,0,0) - 1\cdot(0,1,0) = (0,0,1)$. $\|e'_3\|=1$, donc $e_3=(0,0,1)$.
  On retrouve la base canonique.

**Exemple 3 : Orthonormaliser les polynômes $(1, t)$**
Soit $E=\mathbb{R}_1[X]$ avec $\langle P, Q \rangle = \int_{-1}^1 P(t)Q(t)dt$. Partons de $v_1(t)=1, v_2(t)=t$.

- **Étape 1 :** $\|v_1\|^2 = \int_{-1}^1 1^2 dt = 2 \implies \|v_1\|=\sqrt{2}$. Donc $e_1(t) = \frac{1}{\sqrt{2}}$.
- **Étape 2 :** $e'_2 = v_2 - \langle v_2, e_1 \rangle e_1$.
  $\langle v_2, e_1 \rangle = \int_{-1}^1 t \cdot \frac{1}{\sqrt{2}} dt = 0$.
  Donc $e'_2 = v_2 = t$.
  $\|e'_2\|^2 = \int_{-1}^1 t^2 dt = [\frac{t^3}{3}]_{-1}^1 = \frac{2}{3} \implies \|e'_2\| = \sqrt{\frac{2}{3}}$.
  $e_2(t) = \frac{t}{\sqrt{2/3}} = \sqrt{\frac{3}{2}}t$.
  La base orthonormée est $(\frac{1}{\sqrt{2}}, \sqrt{\frac{3}{2}}t)$. (Ce sont les premiers polynômes de Legendre normalisés).

### Contre-exemples

Le procédé de Gram-Schmidt étant un algorithme, il n'a pas de "contre-exemple" au sens mathématique, mais on peut montrer ce qui se passe s'il est mal utilisé.

- **Famille liée** : Si on essaie d'appliquer l'algorithme à une famille liée, comme $v_1=(1,0)$, $v_2=(1,1)$, $v_3=(2,1)$, on obtiendra à l'étape 3 :
  $e_1 = (1,0)$, $e_2 = (0,1)$.
  $e'_3 = v_3 - \langle v_3, e_1 \rangle e_1 - \langle v_3, e_2 \rangle e_2 = (2,1) - 2(1,0) - 1(0,1) = (0,0)$.
  Le vecteur $e'_3$ est nul, on ne peut pas le normaliser. L'algorithme s'arrête.

### Concepts liés

- **Base Orthonormée** : Le résultat de l'algorithme.
- **Projection Orthogonale** : Le cœur de l'algorithme est de soustraire des projections orthogonales successives.

---

## Concept 7: Projection Orthogonale et Distance

### Prérequis

- Sous-espace vectoriel
- Produit scalaire, Orthogonalité
- Base orthonormée

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien et $F$ un sous-espace vectoriel de $E$.

1.  **Orthogonal d'un sous-espace**
    L'**orthogonal de F**, noté $F^\perp$, est l'ensemble des vecteurs de $E$ qui sont orthogonaux à _tous_ les vecteurs de $F$ :
    $$ F^\perp = \{ x \in E \mid \forall y \in F, \langle x, y \rangle = 0 \} $$
    $F^\perp$ est aussi un sous-espace vectoriel de $E$.

2.  **Projection Orthogonale**
    Pour tout vecteur $x \in E$, il existe une décomposition unique $x = y + z$ avec $y \in F$ et $z \in F^\perp$.

    - Le vecteur $y$ est appelé la **projection orthogonale** de $x$ sur $F$, et est noté $P_F(x)$.
    - L'application $P_F: E \to E$ est un endomorphisme appelé le **projecteur orthogonal** sur $F$.

3.  **Distance à un sous-espace**
    Le projeté orthogonal $P_F(x)$ est le point de $F$ le plus proche de $x$. La distance de $x$ à $F$ est donnée par :
    $$ d(x, F) = \inf\_{y \in F} \|x - y\| = \|x - P_F(x)\| $$

### Explications détaillées

Imaginez un plan $F$ dans l'espace $\mathbb{R}^3$ et un point $x$ en dehors de ce plan.

- L'**orthogonal** $F^\perp$ est la droite qui passe par l'origine et qui est perpendiculaire au plan.
- La **projection orthogonale** de $x$ sur $F$, $P_F(x)$, est le "pied de la perpendiculaire" abaissée de $x$ sur le plan. C'est l'ombre de $x$ sur le plan si le soleil est à la verticale.
- Le vecteur $x - P_F(x)$ est le vecteur qui relie le "pied" $P_F(x)$ au point $x$. Il est bien dans $F^\perp$.
- La **distance** de $x$ au plan $F$ est simplement la longueur de ce vecteur vertical, $\|x - P_F(x)\|$. Tout autre point $y$ du plan sera plus loin de $x$.

### Propriétés principales

- **Somme directe** : On a toujours $E = F \oplus F^\perp$. Cela signifie que tout vecteur de $E$ se décompose de manière unique en une partie dans $F$ et une partie dans $F^\perp$.
- **Formule de calcul** : Si $(e_1, ..., e_p)$ est une base orthonormée de $F$, alors la projection de $x$ sur $F$ se calcule facilement :
  $$ P*F(x) = \sum*{i=1}^p \langle x, e_i \rangle e_i $$
- **Caractérisation** : $P_F$ est un projecteur ($P_F \circ P_F = P_F$) qui est autoadjoint ($P_F^* = P_F$).
- $(F^\perp)^\perp = F$.

### Exemples

**Exemple 1 : Projection sur une droite dans $\mathbb{R}^2$**
Soit $E=\mathbb{R}^2$ et $F$ la droite d'équation $y=x$, donc $F=\text{Vect}(v)$ avec $v=(1,1)$.
Pour utiliser la formule, il faut une base orthonormée de $F$. Un vecteur unitaire dirigeant $F$ est $e_1 = \frac{1}{\sqrt{2}}(1,1)$.
Soit $x=(3,1)$. Sa projection sur $F$ est :
$P_F(x) = \langle x, e_1 \rangle e_1 = \langle (3,1), \frac{1}{\sqrt{2}}(1,1) \rangle \frac{1}{\sqrt{2}}(1,1)$
$= \frac{1}{\sqrt{2}}(3 \cdot 1 + 1 \cdot 1) \frac{1}{\sqrt{2}}(1,1) = \frac{4}{\sqrt{2}} \frac{1}{\sqrt{2}}(1,1) = \frac{4}{2}(1,1) = (2,2)$.
Le projeté de $(3,1)$ sur la droite $y=x$ est $(2,2)$.

**Exemple 2 : Distance à la droite**
La distance de $x=(3,1)$ à la droite $F$ est :
$d(x,F) = \|x - P_F(x)\| = \|(3,1) - (2,2)\| = \|(1, -1)\| = \sqrt{1^2+(-1)^2} = \sqrt{2}$.

**Exemple 3 : Projection sur un plan dans $\mathbb{R}^3$**
Soit $F$ le plan $xy$ dans $\mathbb{R}^3$, c'est-à-dire $F = \text{Vect}(e_1, e_2)$ où $e_1=(1,0,0)$ et $e_2=(0,1,0)$. La famille $(e_1, e_2)$ est une base orthonormée de $F$.
Soit $x=(x_1, x_2, x_3)$. Sa projection sur $F$ est :
$P_F(x) = \langle x, e_1 \rangle e_1 + \langle x, e_2 \rangle e_2 = x_1 e_1 + x_2 e_2 = (x_1, x_2, 0)$.
On retrouve le résultat intuitif.
L'orthogonal de $F$ est $F^\perp = \text{Vect}(e_3)$, l'axe des $z$.

### Contre-exemples

**Contre-exemple 1 : Projection non orthogonale**
Dans $\mathbb{R}^2$, la projection sur l'axe des $x$ parallèlement à la droite $y=x$ est donnée par $P(x,y) = (x-y, 0)$. Ce n'est pas une projection orthogonale. Le noyau est la droite $y=x$, qui n'est pas orthogonale à l'image (l'axe des $x$).

**Contre-exemple 2 : Base non orthonormée**
Si on utilise une base de $F$ qui n'est pas orthonormée, la formule $\sum \langle x, e_i \rangle e_i$ ne fonctionne pas. Par exemple, pour la droite $F$ de l'exemple 1, si on utilise la base (non normée) $(v_1)$ avec $v_1=(1,1)$, la formule donnerait $\langle(3,1),(1,1)\rangle(1,1) = 4(1,1)=(4,4)$, ce qui est incorrect.

### Concepts liés

- **Procédé de Gram-Schmidt** : Nécessaire pour trouver une base orthonormée de $F$ afin d'appliquer la formule de projection.
- **Moindres carrés** : La projection orthogonale est la solution au problème des moindres carrés, qui consiste à trouver la meilleure approximation d'une solution à un système linéaire sans solution.
- **Endomorphisme Adjoint** : Un projecteur $P$ est orthogonal si et seulement si il est autoadjoint ($P=P^*$).

---

## Concept 8: Endomorphisme Adjoint

### Prérequis

- Endomorphisme (application linéaire d'un espace dans lui-même)
- Produit scalaire
- Matrice d'une application linéaire dans une base

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien et $f: E \to E$ un endomorphisme.

L'**adjoint** de $f$, noté $f^*$, est l'unique endomorphisme de $E$ qui vérifie la relation suivante pour tous les vecteurs $x, y \in E$ :
$$ \langle f(x), y \rangle = \langle x, f^\*(y) \rangle $$

### Explications détaillées

L'adjoint est une notion fondamentale qui associe à toute application linéaire $f$ une autre application linéaire $f^*$ via le produit scalaire. La relation $\langle f(x), y \rangle = \langle x, f^*(y) \rangle$ signifie que l'on peut "déplacer" l'application linéaire d'un côté à l'autre du produit scalaire, à condition de la transformer en son adjointe.

Dans le cas des matrices et du produit scalaire usuel, l'adjoint correspond simplement à la **transposition** (dans le cas réel) ou à la **transposition conjuguée** (dans le cas complexe). C'est la généralisation de cette idée aux espaces vectoriels abstraits.

### Propriétés principales

- **Unicité et existence** : Pour tout endomorphisme $f$, son adjoint $f^*$ existe et est unique.
- **Expression matricielle** : Si $\mathcal{B}$ est une **base orthonormée** de $E$, alors la matrice de l'adjoint est la transposée (ou transposée conjuguée) de la matrice de l'application initiale :
  - Cas euclidien : $\text{Mat}_{\mathcal{B}}(f^*) = {}^t\text{Mat}_{\mathcal{B}}(f)$
  - Cas hermitien : $\text{Mat}_{\mathcal{B}}(f^*) = \overline{{}^t\text{Mat}_{\mathcal{B}}(f)}$ (aussi noté $\text{Mat}_{\mathcal{B}}(f)^\dagger$)
- **Propriétés algébriques** :
  - $(f+g)^* = f^*+g^*$
  - $(\lambda f)^* = \bar{\lambda} f^*$
  - $(f \circ g)^* = g^* \circ f^*$ (l'ordre est inversé !)
  - $(f^*)^* = f$
- **Lien entre noyau et image** : $\text{Ker}(f) = (\text{Im}(f^*))^\perp$ et $\text{Im}(f) = (\text{Ker}(f^*))^\perp$.

### Endomorphismes remarquables

Certains endomorphismes sont définis par la relation qu'ils entretiennent avec leur adjoint.

- **Autoadjoint** (ou symétrique/hermitien) : Si $f = f^*$. Leurs matrices dans une BON sont symétriques ($A={}^tA$) ou hermitiennes ($A=\overline{{}^tA}$).
- **Unitaire** (ou orthogonal dans le cas réel) : Si $f$ est inversible et $f^{-1} = f^*$. De manière équivalente, $f^* \circ f = f \circ f^* = \text{Id}$. Ces endomorphismes préservent le produit scalaire, et donc les longueurs et les angles. Ce sont les "rotations" et "réflexions" des espaces euclidiens/hermitiens.
- **Normal** : Si $f$ commute avec son adjoint, $f \circ f^* = f^* \circ f$. Les endomorphismes autoadjoints et unitaires sont des cas particuliers d'endomorphismes normaux.

### Exemples

**Exemple 1 : Adjoint en
matrices (cas réel)**
Soit $E=\mathbb{R}^2$ avec le produit scalaire usuel et la base canonique (qui est une BON). Soit $f$ l'endomorphisme dont la matrice est $A = \begin{pmatrix} 1 & 3 \\ 2 & 0 \end{pmatrix}$.
La matrice de l'adjoint $f^*$ est $A^T = \begin{pmatrix} 1 & 2 \\ 3 & 0 \end{pmatrix}$.
Vérifions la définition avec $x=(1,0)$ et $y=(0,1)$ :
$\langle f(x), y \rangle = \langle A\begin{pmatrix}1\\0\end{pmatrix}, \begin{pmatrix}0\\1\end{pmatrix} \rangle = \langle (1,2), (0,1) \rangle = 2$.
$\langle x, f^*(y) \rangle = \langle \begin{pmatrix}1\\0\end{pmatrix}, A^T\begin{pmatrix}0\\1\end{pmatrix} \rangle = \langle (1,0), (2,0) \rangle = 2$.

**Exemple 2 : Endomorphisme autoadjoint**
Le projecteur orthogonal $P_F$ sur un sous-espace $F$ est autoadjoint. C'est une propriété fondamentale qui le caractérise parmi tous les projecteurs.

**Exemple 3 : Endomorphisme orthogonal (rotation)**
Dans $\mathbb{R}^2$, la rotation d'angle $\theta$ a pour matrice $R_\theta = \begin{pmatrix} \cos\theta & -\sin\theta \\ \sin\theta & \cos\theta \end{pmatrix}$.
Son adjoint a pour matrice la transposée : ${}^t R_\theta = \begin{pmatrix} \cos\theta & \sin\theta \\ -\sin\theta & \cos\theta \end{pmatrix}$.
On remarque que ${}^t R_\theta = R_{-\theta}$. Comme la rotation d'angle $-\theta$ est l'inverse de la rotation d'angle $\theta$, on a bien ${}^t R_\theta = R_\theta^{-1}$, donc la rotation est un endomorphisme orthogonal.

### Contre-exemples

**Contre-exemple 1 : Importance de la base orthonormée**
Si la base n'est pas orthonormée, la matrice de l'adjoint n'est plus simplement la transposée. Le lien est plus complexe et fait intervenir la matrice de Gram de la base.

**Contre-exemple 2 : Un endomorphisme non normal**
Reprenons $f$ de l'exemple 1, avec $A = \begin{pmatrix} 1 & 3 \\ 2 & 0 \end{pmatrix}$ et $A^T = \begin{pmatrix} 1 & 2 \\ 3 & 0 \end{pmatrix}$.
$A A^T = \begin{pmatrix} 1 & 3 \\ 2 & 0 \end{pmatrix} \begin{pmatrix} 1 & 2 \\ 3 & 0 \end{pmatrix} = \begin{pmatrix} 10 & 2 \\ 2 & 4 \end{pmatrix}$.
$A^T A = \begin{pmatrix} 1 & 2 \\ 3 & 0 \end{pmatrix} \begin{pmatrix} 1 & 3 \\ 2 & 0 \end{pmatrix} = \begin{pmatrix} 5 & 3 \\ 3 & 9 \end{pmatrix}$.
Puisque $A A^T \ne A^T A$, l'endomorphisme $f$ n'est pas normal.

### Concepts liés

- **Théorème spectral** : Un théorème majeur qui dit que les endomorphismes autoadjoints (ou plus généralement normaux dans le cas complexe) peuvent être "diagonalisés" dans une base orthonormée.
- **Décomposition en valeurs singulières (SVD)** : Une technique puissante qui utilise les adjoints pour décomposer n'importe quelle matrice.

---

## Concept 9: Théorème de Représentation de Riesz

### Prérequis

- Espace vectoriel, Produit scalaire
- Forme linéaire (application linéaire de $E$ vers $\mathbb{K}$)
- Espace dual $E^*$ (l'espace de toutes les formes linéaires sur $E$)

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien de dimension finie.

Le **théorème de représentation de Riesz** affirme que pour toute forme linéaire $l \in E^*$, il existe un et un seul vecteur $y_l \in E$ tel que, pour tout $x \in E$ :
$$ l(x) = \langle x, y_l \rangle $$

### Explications détaillées

Une forme linéaire est une "mesure" sur les vecteurs. Par exemple, prendre la première coordonnée d'un vecteur, ou faire une moyenne pondérée de ses coordonnées, sont des formes linéaires.

Le théorème de Riesz est un résultat puissant qui établit un pont entre deux mondes a priori distincts :

1.  Le monde des vecteurs ($E$).
2.  Le monde des fonctions qui agissent sur les vecteurs ($E^*$, l'espace dual).

Il dit que dans un espace muni d'un produit scalaire, ces deux mondes sont essentiellement les mêmes. Toute fonction de mesure linéaire peut être "représentée" par un unique vecteur. Appliquer la fonction $l$ au vecteur $x$ revient simplement à faire le produit scalaire de $x$ avec ce vecteur représentant $y_l$.

Cela crée une correspondance (un isomorphisme) entre l'espace $E$ et son dual $E^*$, qui est "naturelle" car elle ne dépend pas du choix d'une base, mais seulement du produit scalaire.

### Propriétés principales

- **Existence et Unicité** : Le vecteur représentant $y_l$ existe toujours et il est unique pour chaque forme linéaire $l$.
- **Isomorphisme** : L'application $\Phi: E \to E^*$ définie par $\Phi(y) = \langle \cdot, y \rangle$ est un isomorphisme (dans le cas réel) ou un anti-isomorphisme (dans le cas complexe, car $\Phi(\lambda y) = \bar{\lambda}\Phi(y)$). Cela signifie que les espaces $E$ et $E^*$ ont la même structure.

### Exemples

**Exemple 1 : Forme linéaire sur $\mathbb{R}^3$**
Soit $E=\mathbb{R}^3$ avec le produit scalaire usuel. Considérons la forme linéaire $l: \mathbb{R}^3 \to \mathbb{R}$ définie par $l(x_1, x_2, x_3) = 2x_1 - 5x_2 + 4x_3$.
On peut réécrire cette expression comme un produit scalaire :
$l(x) = \langle (x_1, x_2, x_3), (2, -5, 4) \rangle$.
Le vecteur représentant la forme linéaire $l$ est donc $y_l = (2, -5, 4)$.

**Exemple 2 : Évaluation d'un polynôme**
Soit $E = \mathbb{R}_1[X]$ l'espace des polynômes de degré $\le 1$. Munissons-le du produit scalaire $\langle a_0+a_1X, b_0+b_1X \rangle = a_0b_0 + a_1b_1$.
La base $\mathcal{B}=(1, X)$ est orthonormée pour ce produit scalaire.
Considérons la forme linéaire "évaluation en t=2" : $l(P) = P(2)$.
Pour un polynôme $P(X) = a_0+a_1X$, on a $l(P) = a_0 + 2a_1$.
On cherche un polynôme $Q_0(X) = b_0+b_1X$ tel que $l(P) = \langle P, Q_0 \rangle = a_0b_0+a_1b_1$.
Par identification, on doit avoir $b_0=1$ et $b_1=2$.
Le polynôme représentant est donc $Q_0(X) = 1+2X$.

**Exemple 3 : L'exemple du cours sur l'intégration**
Soit $E=\mathbb{R}_n[X]$ avec le produit scalaire $\langle \sum a_i X^i, \sum b_i X^i \rangle = \sum a_i b_i$.
La forme linéaire est $l(P) = \int_0^1 P(t)dt$. Pour $P(X)=\sum a_i X^i$, on a :
$l(P) = \int_0^1 \sum a_i t^i dt = \sum a_i \int_0^1 t^i dt = \sum a_i \frac{1}{i+1}$.
On cherche $Q_0(X) = \sum b_i X^i$ tel que $l(P) = \langle P, Q_0 \rangle = \sum a_i b_i$.
Par identification, on trouve $b_i = \frac{1}{i+1}$. Le polynôme représentant est $Q_0(X) = \sum_{i=0}^n \frac{1}{i+1} X^i$.

### Contre-exemples

Le théorème de Riesz n'a pas de contre-exemple dans son cadre d'application. Le point important est sa dépendance au produit scalaire.

- **Dépendance du produit scalaire** : Si on change de produit scalaire sur $E$, le vecteur $y_l$ qui représente une même forme linéaire $l$ va changer. La correspondance entre $E$ et $E^*$ n'est "naturelle" qu'une fois le produit scalaire fixé.

### Concepts liés

- **Espace dual** : Le théorème établit un lien canonique entre un espace et son dual.
- **Espace de Hilbert** : Le théorème de Riesz est un résultat encore plus fondamental en dimension infinie, dans le cadre des espaces de Hilbert, qui sont au cœur de l'analyse fonctionnelle et de la mécanique quantique.
