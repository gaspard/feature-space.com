---
title: Concepts
level: regular
course: Géométrie
chapter: Espaces Euclidiens et Hermitiens
order: 10
layout: '../../../../layouts/Article.astro'
tags:
  [
    'algèbre linéaire',
    'géométrie',
    'espace euclidien',
    'espace hermitien',
    'produit scalaire'
  ]
---

# Espaces Euclidiens et Hermitiens

---

## Concept 1: Formes Bilinéaires et Sesquilinéaires

### Prérequis

- **Espaces vectoriels** : Maîtrise de la définition d'un espace vectoriel sur un corps $\mathbb{K}$ (ici, $\mathbb{K}$ sera $\mathbb{R}$ ou $\mathbb{C}$).
- **Applications linéaires** : Connaissance des propriétés de linéarité d'une application entre deux espaces vectoriels.
- **Nombres complexes** : Opérations sur les nombres complexes, en particulier la conjugaison.

### Définition

Soit $E$ un espace vectoriel sur un corps $\mathbb{K}$ (où $\mathbb{K} = \mathbb{R}$ ou $\mathbb{K} = \mathbb{C}$).

Une application $\varphi: E \times E \to \mathbb{K}$ est appelée :

1.  **Forme bilinéaire** (si $\mathbb{K} = \mathbb{R}$) si elle est linéaire par rapport à chacune de ses deux variables. C'est-à-dire, pour tous vecteurs $u, u_1, u_2, v, v_1, v_2 \in E$ et tout scalaire $\lambda \in \mathbb{R}$ :

    - Linéarité à gauche : $\varphi(u_1 + \lambda u_2, v) = \varphi(u_1, v) + \lambda\varphi(u_2, v)$.
    - Linéarité à droite : $\varphi(u, v_1 + \lambda v_2) = \varphi(u, v_1) + \lambda\varphi(u, v_2)$.

2.  **Forme sesquilinéaire** (si $\mathbb{K} = \mathbb{C}$) si elle est linéaire par rapport à sa première variable et semi-linéaire (ou anti-linéaire) par rapport à sa seconde variable. C'est-à-dire, pour tous vecteurs $u, u_1, u_2, v, v_1, v_2 \in E$ et tout scalaire $\lambda \in \mathbb{C}$ :
    - Linéarité à gauche : $\varphi(u_1 + \lambda u_2, v) = \varphi(u_1, v) + \lambda\varphi(u_2, v)$.
    - Semi-linéarité à droite : $\varphi(u, v_1 + \lambda v_2) = \varphi(u, v_1) + \bar{\lambda}\varphi(u, v_2)$, où $\bar{\lambda}$ est le conjugué de $\lambda$.

**Explication détaillée**

Une forme bilinéaire ou sesquilinéaire est une sorte de "produit" généralisé entre deux vecteurs, dont le résultat est un scalaire.

- Dans le cas **réel (bilinéaire)**, la situation est symétrique : l'application se comporte comme une application linéaire que l'on regarde la première ou la deuxième variable. On peut "distribuer" la forme sur les sommes de vecteurs et "sortir" les scalaires de chaque côté.

- Dans le cas **complexe (sesquilinéaire)**, il y a une asymétrie. Le terme "sesqui" signifie "un et demi" en latin. Cela reflète le fait que la forme est linéaire pour la première variable (une fois linéaire) mais seulement "à moitié" linéaire pour la seconde. La semi-linéarité signifie que lorsqu'on "sort" un scalaire $\lambda$ de la deuxième variable, il est transformé en son conjugué $\bar{\lambda}$. Cette propriété est cruciale pour obtenir une norme à valeurs réelles positives, comme nous le verrons plus tard.

### Propriétés Clés

- Pour toute forme bilinéaire ou sesquilinéaire $\varphi$, on a $\varphi(0_E, v) = \varphi(u, 0_E) = 0$ pour tous $u, v \in E$.
  _Démonstration :_ $\varphi(0_E, v) = \varphi(0 \cdot 0_E, v) = 0 \cdot \varphi(0_E, v) = 0$.

### Exemples

**Exemple 1 : Le produit scalaire usuel sur $\mathbb{R}^2$ (Forme bilinéaire)**

Soit $E = \mathbb{R}^2$. Pour $u = (x_1, x_2)$ et $v = (y_1, y_2)$, on définit $\varphi(u, v) = x_1 y_1 + x_2 y_2$.

Vérifions la bilinéarité. Soit $u_1 = (x_{11}, x_{12})$, $u_2 = (x_{21}, x_{22})$ et $\lambda \in \mathbb{R}$.

$\varphi(u_1 + \lambda u_2, v) = (x_{11} + \lambda x_{21})y_1 + (x_{12} + \lambda x_{22})y_2$

$= (x_{11}y_1 + x_{12}y_2) + \lambda(x_{21}y_1 + x_{22}y_2) = \varphi(u_1, v) + \lambda \varphi(u_2, v)$.

La linéarité à droite se vérifie de la même manière.

**Exemple 2 : Forme bilinéaire sur $\mathbb{R}_2[X]$**

Soit $E = \mathbb{R}_2[X]$ l'espace des polynômes de degré au plus 2. Pour $P, Q \in E$, on définit $\varphi(P, Q) = \int_0^1 P(t)Q(t) dt$.

L'intégrale étant linéaire, on a :

$\varphi(P_1 + \lambda P_2, Q) = \int_0^1 (P_1(t) + \lambda P_2(t))Q(t) dt$

$= \int_0^1 P_1(t)Q(t) dt + \lambda \int_0^1 P_2(t)Q(t) dt = \varphi(P_1, Q) + \lambda \varphi(P_2, Q)$.

Ceci est une forme bilinéaire.

**Exemple 3 : Le produit scalaire canonique sur $\mathbb{C}^2$ (Forme sesquilinéaire)**

Soit $E = \mathbb{C}^2$. Pour $u = (z_1, z_2)$ et $v = (w_1, w_2)$, on définit $\varphi(u, v) = z_1 \bar{w_1} + z_2 \bar{w_2}$.

Vérifions la semi-linéarité à droite. Soit $v_1 = (w_{11}, w_{12})$, $v_2 = (w_{21}, w_{22})$ et $\lambda \in \mathbb{C}$.

$\varphi(u, v_1 + \lambda v_2) = z_1 \overline{(w_{11} + \lambda w_{21})} + z_2 \overline{(w_{12} + \lambda w_{22})}$

$= z_1 (\bar{w_{11}} + \bar{\lambda} \bar{w_{21}}) + z_2 (\bar{w_{12}} + \bar{\lambda} \bar{w_{22}})$

$= (z_1 \bar{w_{11}} + z_2 \bar{w_{12}}) + \bar{\lambda} (z_1 \bar{w_{21}} + z_2 \bar{w_{22}}) = \varphi(u, v_1) + \bar{\lambda} \varphi(u, v_2)$.

La linéarité à gauche est simple à vérifier.

### Contre-exemples

**Contre-exemple 1 : Non-linéarité**

Soit $E = \mathbb{R}$. L'application $\varphi(x, y) = x^2 + y^2$ n'est ni bilinéaire, ni sesquilinéaire.

Par exemple, $\varphi(2x, y) = (2x)^2 + y^2 = 4x^2 + y^2$, ce qui est différent de $2\varphi(x, y) = 2(x^2 + y^2)$.

**Contre-exemple 2 : Application bilinéaire sur $\mathbb{C}$ au lieu de sesquilinéaire**

Soit $E = \mathbb{C}^n$. L'application $\varphi(z, w) = \sum_{i=1}^n z_i w_i$ est bilinéaire, mais pas sesquilinéaire. Le scalaire $\lambda$ sort "sans conjugaison" de la deuxième variable: $\varphi(z, \lambda w) = \lambda \varphi(z, w)$.

Comme nous le verrons, une telle forme ne peut pas définir une norme "propre" sur $\mathbb{C}^n$ (par exemple, $\varphi((i), (i)) = i^2 = -1$, ce qui poserait un problème pour la positivité).

### Concepts Liés

- **Formes symétriques et hermitiennes** : Ce sont des cas particuliers de formes bilinéaires/sesquilinéaires qui possèdent une propriété de symétrie.
- **Produit scalaire** : Un produit scalaire est une forme bilinéaire (ou sesquilinéaire) qui est aussi symétrique (ou hermitienne) et définie positive. C'est le concept central de ce chapitre.
- **Forme quadratique** : À toute forme bilinéaire $\varphi$, on peut associer une forme quadratique $q(x) = \varphi(x, x)$.

---

## Concept 2: Formes Symétriques et Hermitiennes

### Prérequis

- **Concept 1 : Formes Bilinéaires et Sesquilinéaires**.
- **Nombres complexes** : Maîtrise de la conjugaison.

### Définition

Soit $E$ un $\mathbb{K}$-espace vectoriel et $\varphi: E \times E \to \mathbb{K}$ une application.

1.  **Forme symétrique** (cas bilinéaire, $\mathbb{K} = \mathbb{R}$)
    Une forme bilinéaire $\varphi$ est dite **symétrique** si pour tous les vecteurs $x, y \in E$, on a :
    $$ \varphi(x, y) = \varphi(y, x) $$

2.  **Forme hermitienne symétrique (ou simplement hermitienne)** (cas sesquilinéaire, $\mathbb{K} = \mathbb{C}$)
    Une forme sesquilinéaire $\varphi$ est dite **hermitienne** si pour tous les vecteurs $x, y \in E$, on a :
    $$ \varphi(x, y) = \overline{\varphi(y, x)} $$

**Explication détaillée**

La symétrie généralise l'idée que "l'ordre ne compte pas".

- Dans le cas réel, la définition est très intuitive : échanger les deux vecteurs ne change pas le résultat.
- Dans le cas complexe, la définition est plus subtile. Échanger les vecteurs a pour effet de conjuguer le résultat. Cette "symétrie hermitienne" est la bonne notion pour les espaces complexes car elle garantit une propriété fondamentale.

Une conséquence directe de la définition d'une forme hermitienne est que $\varphi(x, x)$ est toujours un nombre réel.
En effet, $\varphi(x, x) = \overline{\varphi(x, x)}$, ce qui est la définition d'un nombre réel. C'est essentiel pour pouvoir parler de "longueur" ou de "norme" d'un vecteur, qui doit être un nombre réel positif.

### Propriétés Clés

- Si $\varphi$ est une forme bilinéaire symétrique, alors $x \mapsto \varphi(x,x)$ est une forme quadratique.
- Si $\varphi$ est une forme hermitienne, alors $\varphi(x, x) \in \mathbb{R}$ pour tout $x \in E$.

### Exemples

**Exemple 1 : Produit scalaire usuel sur $\mathbb{R}^n$ (Symétrique)**

Soit $E = \mathbb{R}^n$ et $\varphi(x, y) = \sum_{i=1}^n x_i y_i$.

$\varphi(y, x) = \sum_{i=1}^n y_i x_i = \sum_{i=1}^n x_i y_i = \varphi(x, y)$.

La forme est bien symétrique.

**Exemple 2 : Forme bilinéaire avec une matrice symétrique**

Soit $E = \mathbb{R}^n$ et $S$ une matrice carrée symétrique ($S = {}^tS$). L'application $\varphi(X, Y) = {}^tXSY$ est une forme bilinéaire symétrique.

En effet, comme ${}^tXSY$ est un scalaire, il est égal à sa transposée :

$\varphi(X, Y) = {}^t({}^tXSY) = {}^tY {}^tS {}^t({}^tX) = {}^tY S X = \varphi(Y, X)$.

**Exemple 3 : Produit scalaire canonique sur $\mathbb{C}^n$ (Hermitienne)**

Soit $E = \mathbb{C}^n$ et $\varphi(x, y) = \sum_{i=1}^n x_i \bar{y}_i$.

$\overline{\varphi(y, x)} = \overline{\sum_{i=1}^n y_i \bar{x}_i} = \sum_{i=1}^n \overline{y_i \bar{x}_i} = \sum_{i=1}^n \bar{y}_i \overline{(\bar{x}_i)} = \sum_{i=1}^n x_i \bar{y}_i = \varphi(x, y)$.

La forme est bien hermitienne.

**Exemple 4 : Forme sur un espace de fonctions continues (Hermitienne)**

Soit $E$ l'espace des fonctions continues de $[0, 1]$ dans $\mathbb{C}$. L'application $\varphi(f, g) = \int_0^1 f(t)\overline{g(t)} dt$ est une forme sesquilinéaire hermitienne.

$\overline{\varphi(g, f)} = \overline{\int_0^1 g(t)\overline{f(t)} dt} = \int_0^1 \overline{g(t)\overline{f(t)}} dt = \int_0^1 \overline{g(t)} f(t) dt = \varphi(f, g)$.

### Contre-exemples

**Contre-exemple 1 : Forme bilinéaire non symétrique**

Sur $E = \mathbb{R}^2$, soit $\varphi(x, y) = x_1 y_2 - x_2 y_1$ (le déterminant des vecteurs $x, y$).

C'est une forme bilinéaire. Mais $\varphi((1,0), (0,1)) = 1 \cdot 1 - 0 \cdot 0 = 1$, alors que $\varphi((0,1), (1,0)) = 0 \cdot 0 - 1 \cdot 1 = -1$.

Comme $\varphi(x, y) = -\varphi(y, x)$, elle est dite antisymétrique.

**Contre-exemple 2 : Forme sesquilinéaire non hermitienne**

Sur $E = \mathbb{C}^2$, soit $\varphi(z, w) = z_1 \bar{w_2}$. C'est une forme sesquilinéaire.

Calculons $\varphi((1,0), (0,i)) = 1 \cdot \bar{i} = -i$.

Calculons $\varphi((0,i), (1,0)) = 0 \cdot \bar{0} = 0$.

On a $\varphi((1,0), (0,i)) \neq \overline{\varphi((0,i), (1,0))}$, donc la forme n'est pas hermitienne.

### Concepts Liés

- **Produit scalaire** : C'est le concept suivant, qui ajoute la condition "définie positive" à une forme symétrique ou hermitienne.
- **Matrice de Gram** : La matrice d'une forme bilinéaire (ou sesquilinéaire) dans une base. La forme est symétrique (ou hermitienne) si et seulement si sa matrice de Gram est symétrique (ou hermitienne).

---

## Concept 3: Produit Scalaire et Espaces Préhilbertiens

### Prérequis

- **Concept 1 & 2** : Formes bilinéaires/sesquilinéaires, symétriques/hermitiennes.
- **Notions d'ordre** sur $\mathbb{R}$ (positivité).

### Définition

Soit $E$ un $\mathbb{K}$-espace vectoriel de dimension finie.

1.  Une forme $\varphi: E \times E \to \mathbb{K}$ est dite **positive** si pour tout $x \in E$, $\varphi(x, x) \ge 0$.
    (Note : pour que cette définition ait un sens dans le cas complexe, on demande que $\varphi$ soit hermitienne, pour que $\varphi(x,x)$ soit réel).

2.  Une forme positive $\varphi$ est dite **définie** si elle vérifie l'équivalence :
    $$ \varphi(x, x) = 0 \iff x = 0_E $$
    Autrement dit, le seul vecteur "de longueur nulle" est le vecteur nul.

3.  Un **produit scalaire** est une forme qui est :

    - Sur un $\mathbb{R}$-espace vectoriel $E$ (cas **Euclidien**) : une forme bilinéaire, symétrique et définie positive.
    - Sur un $\mathbb{C}$-espace vectoriel $E$ (cas **Hermitien**) : une forme sesquilinéaire, hermitienne et définie positive.

4.  Un espace vectoriel muni d'un produit scalaire est appelé un **espace préhilbertien**. S'il est de dimension finie, on l'appelle :
    - **Espace Euclidien** dans le cas réel.
    - **Espace Hermitien** dans le cas complexe.

On note souvent un produit scalaire par $\langle x, y \rangle$ ou $(x|y)$ au lieu de $\varphi(x, y)$.

**Explication détaillée**

Le produit scalaire est la structure fondamentale qui introduit la géométrie (notions d'angle, de longueur) dans l'algèbre linéaire. Les trois axiomes (symétrie, linéarité/sesquilinéarité, et positivité définie) sont essentiels.

- La **bilinéarité/sesquilinéarité** assure que le produit scalaire interagit bien avec les opérations de l'espace vectoriel (addition et multiplication par un scalaire).
- La **symétrie/symétrie hermitienne** garantit que l'ordre des vecteurs a un effet prévisible et, dans le cas complexe, que $\langle x, x \rangle$ est réel.
- La condition **définie positive** est la plus importante pour la géométrie :
  - $\langle x, x \rangle \ge 0$ (positivité) permet de définir la longueur d'un vecteur comme un nombre réel positif ($\sqrt{\langle x, x \rangle}$).
  - $\langle x, x \rangle = 0 \iff x=0$ (caractère défini) assure que tout vecteur non nul a une longueur strictement positive.

Un espace euclidien est donc un espace vectoriel réel où l'on peut mesurer des longueurs et des angles de la manière habituelle. Un espace hermitien est son analogue pour les nombres complexes.

### Exemples

**Exemple 1 : L'espace euclidien canonique $\mathbb{R}^n$**

$E = \mathbb{R}^n$ avec $\langle x, y \rangle = \sum_{i=1}^n x_i y_i$.

C'est une forme bilinéaire symétrique. Vérifions qu'elle est définie positive.

$\langle x, x \rangle = \sum_{i=1}^n x_i^2$. C'est une somme de carrés de réels, donc $\langle x, x \rangle \ge 0$.

Si $\langle x, x \rangle = 0$, alors $\sum_{i=1}^n x_i^2 = 0$. Comme chaque $x_i^2 \ge 0$, la somme ne peut être nulle que si chaque terme est nul, i.e., $x_i^2=0$ pour tout $i$, donc $x_i=0$ pour tout $i$. Ainsi $x = 0_E$.

C'est donc un produit scalaire.

**Exemple 2 : L'espace hermitien canonique $\mathbb{C}^n$**

$E = \mathbb{C}^n$ avec $\langle x, y \rangle = \sum_{i=1}^n x_i \bar{y}_i$.

C'est une forme sesquilinéaire hermitienne. Vérifions qu'elle est définie positive.

$\langle x, x \rangle = \sum_{i=1}^n x_i \bar{x}_i = \sum_{i=1}^n |x_i|^2$. C'est une somme de modules au carré, qui sont des réels positifs, donc $\langle x, x \rangle \ge 0$.

Si $\langle x, x \rangle = 0$, alors $\sum_{i=1}^n |x_i|^2 = 0$. Cela implique $|x_i|^2 = 0$ pour tout $i$, donc $x_i=0$ pour tout $i$. Ainsi $x=0_E$.

C'est donc un produit scalaire hermitien.

**Exemple 3 : Produit scalaire sur les polynômes**

Soit $E = \mathbb{R}_n[X]$. L'application $\langle P, Q \rangle = \int_{-1}^1 P(t)Q(t) dt$ est un produit scalaire.

C'est une forme bilinéaire symétrique. Pour la positivité :

$\langle P, P \rangle = \int_{-1}^1 (P(t))^2 dt \ge 0$, car $(P(t))^2 \ge 0$ et on intègre sur un intervalle où la borne inférieure est plus petite que la borne supérieure.

Si $\langle P, P \rangle = 0$, alors $\int_{-1}^1 (P(t))^2 dt = 0$. Comme la fonction $t \mapsto (P(t))^2$ est continue et positive, son intégrale ne peut être nulle que si la fonction est identiquement nulle sur $[-1,1]$. Un polynôme non nul n'ayant qu'un nombre fini de racines, $P$ doit être le polynôme nul. La forme est donc définie positive.

### Contre-exemples

**Contre-exemple 1 : Forme positive mais non définie**

Soit $E = \mathbb{R}^2$ et $\varphi(x, y) = x_1 y_1$. C'est une forme bilinéaire symétrique.

$\varphi(x, x) = x_1^2 \ge 0$, donc elle est positive.

Mais elle n'est pas définie. Prenons $x = (0, 1)$. Ce vecteur est non nul, pourtant $\varphi(x, x) = 0^2 = 0$.

**Contre-exemple 2 : Forme symétrique non positive (signature de Minkowski)**

Soit $E = \mathbb{R}^2$ et $\varphi(x, y) = x_1 y_1 - x_2 y_2$. C'est une forme bilinéaire symétrique.

Mais elle n'est pas positive. Prenons $x = (0, 1)$. On a $\varphi(x, x) = 0^2 - 1^2 = -1 < 0$.

### Concepts Liés

- **Norme** : Tout produit scalaire induit naturellement une notion de longueur, appelée norme.
- **Orthogonalité** : Le produit scalaire permet de définir ce que signifie pour deux vecteurs d'être orthogonaux (perpendiculaires).
- **Inégalité de Cauchy-Schwarz** : C'est la première grande propriété des produits scalaires.

---

## Concept 4: Inégalité de Cauchy-Schwarz

### Prérequis

- **Concept 3 : Produit Scalaire et Espaces Préhilbertiens**.
- **Analyse de polynômes du second degré** (discriminant).

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien. Pour tous vecteurs $x, y \in E$, on a l'inégalité suivante :
$$ |\langle x, y \rangle| \le \sqrt{\langle x, x \rangle} \sqrt{\langle y, y \rangle} $$
De plus, il y a égalité si et seulement si les vecteurs $x$ et $y$ sont colinéaires (c'est-à-dire, il existe un scalaire $\lambda$ tel que $x = \lambda y$ ou $y = \lambda x$).

**Explication détaillée**

L'inégalité de Cauchy-Schwarz est l'une des plus importantes en mathématiques. Elle établit un lien fondamental entre le produit scalaire de deux vecteurs et leurs "longueurs" respectives (la racine carrée de $\langle x, x \rangle$ sera la norme de $x$).

Intuitivement, dans $\mathbb{R}^2$ ou $\mathbb{R}^3$ avec le produit scalaire usuel, on sait que $\langle x, y \rangle = \|x\| \|y\| \cos(\theta)$, où $\theta$ est l'angle entre les vecteurs. Comme $|\cos(\theta)| \le 1$, on a $|\langle x, y \rangle| \le \|x\| \|y\|$, ce qui est exactement l'inégalité de Cauchy-Schwarz. L'inégalité généralise cette idée à n'importe quel espace euclidien ou hermitien, même si la notion d'angle n'est pas explicitement définie.

Le cas d'égalité est aussi très important : il nous dit que l'inégalité devient une égalité précisément lorsque les vecteurs pointent dans la même direction ou dans des directions opposées (ils sont sur la même "ligne").

La preuve standard, présentée dans le cours, est très élégante. Elle consiste à étudier le polynôme $P(\lambda) = \langle x + \lambda y, x + \lambda y \rangle$. Par positivité du produit scalaire, $P(\lambda) \ge 0$ pour tout $\lambda \in \mathbb{R}$. Ce polynôme étant du second degré en $\lambda$, son discriminant doit être négatif ou nul, ce qui donne directement l'inégalité.

### Propriétés Clés

- L'inégalité permet de borner la valeur d'un produit scalaire par le produit des normes.
- Elle est cruciale pour démontrer l'inégalité triangulaire pour la norme associée au produit scalaire.
- Le cas d'égalité caractérise la dépendance linéaire d'une famille de deux vecteurs.

### Exemples

**Exemple 1 : Dans $\mathbb{R}^n$**
Soit $x = (x_1, \dots, x_n)$ et $y = (y_1, \dots, y_n)$. L'inégalité s'écrit :
$$ \left| \sum*{i=1}^n x_i y_i \right| \le \sqrt{\sum*{i=1}^n x*i^2} \sqrt{\sum*{i=1}^n y*i^2} $$
Ou encore :
$$ \left( \sum*{i=1}^n x*i y_i \right)^2 \le \left( \sum*{i=1}^n x*i^2 \right) \left( \sum*{i=1}^n y_i^2 \right) $$

**Exemple 2 : Dans l'espace des fonctions continues**
Soit $E$ l'espace des fonctions réelles continues sur $[a,b]$, avec le produit scalaire $\langle f, g \rangle = \int_a^b f(t)g(t) dt$. L'inégalité de Cauchy-Schwarz devient :
$$ \left| \int_a^b f(t)g(t) dt \right| \le \sqrt{\int_a^b f(t)^2 dt} \sqrt{\int_a^b g(t)^2 dt} $$
C'est un résultat très utile en analyse.

**Exemple 3 : Application numérique dans $\mathbb{R}^3$**
Soit $x = (1, 2, 3)$ et $y = (-1, 0, 2)$.
$\langle x, y \rangle = 1(-1) + 2(0) + 3(2) = -1 + 6 = 5$.
$\langle x, x \rangle = 1^2 + 2^2 + 3^2 = 1 + 4 + 9 = 14$.
$\langle y, y \rangle = (-1)^2 + 0^2 + 2^2 = 1 + 0 + 4 = 5$.
L'inégalité nous dit que $|\langle x, y \rangle| \le \sqrt{14} \sqrt{5}$.
$|5| \le \sqrt{70}$.
Comme $5^2 = 25$ et $(\sqrt{70})^2 = 70$, l'inégalité $25 \le 70$ est bien vérifiée. Les vecteurs ne sont pas colinéaires, donc l'inégalité est stricte.

### Contre-exemples

L'inégalité de Cauchy-Schwarz est un théorème, il n'y a donc pas de contre-exemple où elle serait fausse dans un espace préhilbertien. Les "contre-exemples" illustrent ce qui se passe si les hypothèses ne sont pas respectées.

**Contre-exemple 1 : Avec une forme non positive**
Soit $E = \mathbb{R}^2$ avec la forme de Minkowski $\varphi(x, y) = x_1 y_1 - x_2 y_2$.
Soit $x = (2, 1)$ et $y = (2, -1)$.
$\varphi(x, y) = 2(2) - 1(-1) = 5$.
$\varphi(x, x) = 2^2 - 1^2 = 3$.
$\varphi(y, y) = 2^2 - (-1)^2 = 3$.
L'inégalité de Cauchy-Schwarz s'écrirait $|\varphi(x, y)|^2 \le \varphi(x,x)\varphi(y,y)$, soit $5^2 \le 3 \cdot 3$, c'est-à-dire $25 \le 9$, ce qui est faux. Cela vient du fait que la forme n'est pas positive.

**Contre-exemple 2 : Mauvaise formule dans $\mathbb{C}^n$**
Si l'on utilisait la forme bilinéaire $\varphi(z, w) = \sum z_i w_i$ sur $\mathbb{C}^n$ au lieu de la forme sesquilinéaire correcte.
Soit $z = (i, 0)$ et $w = (i, 0)$.
$\varphi(z, w) = i \cdot i = -1$.
$\varphi(z, z) = i \cdot i = -1$.
$\varphi(w, w) = i \cdot i = -1$.
L'inégalité $|\varphi(z, w)|^2 \le \varphi(z,z)\varphi(w,w)$ donnerait $|-1|^2 \le (-1)(-1)$, soit $1 \le 1$. L'inégalité est vérifiée ici, mais le problème est que $\varphi(z,z)$ est négatif, ce qui rend la définition de la norme impossible.

### Concepts Liés

- **Norme associée à un produit scalaire** : L'inégalité de Cauchy-Schwarz est la clé pour prouver l'inégalité triangulaire, qui est l'un des axiomes d'une norme.
- **Angle entre deux vecteurs** : Dans un espace euclidien, on peut définir le cosinus de l'angle entre deux vecteurs non nuls $x$ et $y$ par $\cos(\theta) = \frac{\langle x, y \rangle}{\|x\| \|y\|}$. L'inégalité de Cauchy-Schwarz garantit que cette valeur est bien comprise entre -1 et 1.

---

## Concept 5: Norme Associée à un Produit Scalaire

### Prérequis

- **Concept 3 : Produit Scalaire**.
- **Concept 4 : Inégalité de Cauchy-Schwarz**.
- **Définition générale d'une norme sur un espace vectoriel**.

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien. L'application **norme**, notée $\| \cdot \|$, est définie pour tout vecteur $x \in E$ par :
$$ \|x\| = \sqrt{\langle x, x \rangle} $$
Cette norme est appelée **norme euclidienne** (ou hermitienne).

Elle vérifie les trois propriétés qui définissent une norme :

1.  **Séparation (ou définie positive)** : Pour tout $x \in E$, $\|x\| \ge 0$, et $\|x\| = 0 \iff x = 0_E$.
2.  **Homogénéité** : Pour tout $x \in E$ et tout scalaire $\lambda \in \mathbb{K}$, $\|\lambda x\| = |\lambda| \|x\|$.
3.  **Inégalité triangulaire** : Pour tout $x, y \in E$, $\|x + y\| \le \|x\| + \|y\|$.

**Explication détaillée**

La norme d'un vecteur représente sa "longueur" ou sa "magnitude". Le produit scalaire nous donne un moyen naturel de définir cette longueur. La racine carrée est utilisée pour que la norme ait la même "dimension" que le vecteur (si les composantes sont en mètres, la norme est en mètres, alors que $\langle x, x \rangle$ serait en mètres carrés).

- La propriété de **séparation** vient directement du caractère défini positif du produit scalaire. Elle assure que tout vecteur non nul a une longueur strictement positive.
- L'**homogénéité** signifie que si on multiplie un vecteur par un scalaire $\lambda$, sa longueur est multipliée par la valeur absolue (ou le module) de $\lambda$.
- L'**inégalité triangulaire** est la plus profonde. Géométriquement, elle dit que la longueur d'un côté d'un triangle est toujours inférieure ou égale à la somme des longueurs des deux autres côtés. Sa démonstration repose de manière cruciale sur l'inégalité de Cauchy-Schwarz.

Toute norme ne provient pas d'un produit scalaire. Celles qui en proviennent ont des propriétés géométriques particulières, comme la validité du théorème de Pythagore ou l'identité du parallélogramme.

### Propriétés Clés

- **Identité du parallélogramme** : Une norme $\| \cdot \|$ dérive d'un produit scalaire si et seulement si elle vérifie, pour tous $x, y \in E$ :
  $$ \|x + y\|^2 + \|x - y\|^2 = 2(\|x\|^2 + \|y\|^2) $$
  Géométriquement, cela signifie que la somme des carrés des longueurs des diagonales d'un parallélogramme est égale à la somme des carrés des longueurs de ses quatre côtés.

- **Formules de polarisation** : Si une norme provient d'un produit scalaire, on peut retrouver le produit scalaire à partir de la norme.
  - **Cas euclidien ($\mathbb{K}=\mathbb{R}$)** :
    $$ \langle x, y \rangle = \frac{1}{2}(\|x + y\|^2 - \|x\|^2 - \|y\|^2) $$
        ou une forme plus symétrique : $\langle x, y \rangle = \frac{1}{4}(\|x + y\|^2 - \|x - y\|^2)$.
  - **Cas hermitien ($\mathbb{K}=\mathbb{C}$)** :
    $$ \langle x, y \rangle = \frac{1}{4}(\|x + y\|^2 - \|x - y\|^2 + i(\|x + iy\|^2 - \|x - iy\|^2)) $$

### Exemples

**Exemple 1 : Norme euclidienne usuelle sur $\mathbb{R}^n$**
La norme associée au produit scalaire usuel $\langle x, y \rangle = \sum x_i y_i$ est :
$$ \|x\| = \sqrt{\sum\_{i=1}^n x_i^2} $$
C'est la distance euclidienne classique de l'origine au point $x$. Pour $x = (3, 4) \in \mathbb{R}^2$, $\|x\| = \sqrt{3^2+4^2} = \sqrt{9+16} = \sqrt{25}=5$.

**Exemple 2 : Norme hermitienne usuelle sur $\mathbb{C}^n$**
La norme associée au produit scalaire usuel $\langle z, w \rangle = \sum z_i \bar{w}_i$ est :
$$ \|z\| = \sqrt{\sum*{i=1}^n z_i \bar{z}\_i} = \sqrt{\sum*{i=1}^n |z_i|^2} $$
Pour $z = (1+i, 2) \in \mathbb{C}^2$, $\|z\| = \sqrt{|1+i|^2 + |2|^2} = \sqrt{(\sqrt{1^2+1^2})^2 + 2^2} = \sqrt{2+4} = \sqrt{6}$.

**Exemple 3 : Norme $L^2$ sur les polynômes**
Pour $E = \mathbb{R}_n[X]$ avec $\langle P, Q \rangle = \int_{-1}^1 P(t)Q(t) dt$, la norme est :
$$ \|P\| = \sqrt{\int*{-1}^1 (P(t))^2 dt} $$
Pour $P(t)=t$, $\|P\| = \sqrt{\int*{-1}^1 t^2 dt} = \sqrt{\left[\frac{t^3}{3}\right]\_{-1}^1} = \sqrt{\frac{1}{3} - (-\frac{1}{3})} = \sqrt{\frac{2}{3}}$.

### Contre-exemples

Il s'agit de normes qui ne proviennent pas d'un produit scalaire, car elles ne vérifient pas l'identité du parallélogramme.

**Contre-exemple 1 : La norme 1 sur $\mathbb{R}^2$**
Définie par $\|x\|_1 = |x_1| + |x_2|$. C'est bien une norme.
Prenons $x=(1,0)$ et $y=(0,1)$.
$\|x\|_1 = 1$, $\|y\|_1 = 1$.
$x+y = (1,1)$, $\|x+y\|_1 = |1|+|1|=2$.
$x-y = (1,-1)$, $\|x-y\|_1 = |1|+|-1|=2$.
Vérifions l'identité du parallélogramme :
$\|x+y\|_1^2 + \|x-y\|_1^2 = 2^2+2^2 = 8$.
$2(\|x\|_1^2 + \|y\|_1^2) = 2(1^2+1^2) = 4$.
Comme $8 \neq 4$, cette norme ne dérive pas d'un produit scalaire.

**Contre-exemple 2 : La norme infinie sur $\mathbb{R}^2$**
Définie par $\|x\|_\infty = \max(|x_1|, |x_2|)$.
Utilisons les mêmes vecteurs $x=(1,0)$ et $y=(0,1)$.
$\|x\|_\infty = 1$, $\|y\|_\infty = 1$.
$x+y = (1,1)$, $\|x+y\|_\infty = \max(1,1)=1$.
$x-y = (1,-1)$, $\|x-y\|_\infty = \max(1,1)=1$.
Identité du parallélogramme :
$\|x+y\|_\infty^2 + \|x-y\|_\infty^2 = 1^2+1^2 = 2$.
$2(\|x\|_\infty^2 + \|y\|_\infty^2) = 2(1^2+1^2) = 4$.
Comme $2 \neq 4$, cette norme ne dérive pas non plus d'un produit scalaire.

### Concepts Liés

- **Orthogonalité** : Deux vecteurs sont orthogonaux si leur produit scalaire est nul. Cette notion est au cœur de la géométrie euclidienne.
- **Distance** : La norme permet de définir la distance entre deux vecteurs $x$ et $y$ comme $d(x,y) = \|x-y\|$.

---

## Concept 6: Orthogonalité

### Prérequis

- **Concept 3 : Produit Scalaire**.
- **Concept 5 : Norme associée**.

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien.

1.  **Vecteurs orthogonaux** : Deux vecteurs $x, y \in E$ sont dits **orthogonaux** si leur produit scalaire est nul :
    $$ \langle x, y \rangle = 0 $$
On note souvent $x \perp y$.

2.  **Famille orthogonale** : Une famille de vecteurs $(v_i)_{i \in I}$ est dite **orthogonale** si ses vecteurs sont deux à deux orthogonaux. Pour tous $i \neq j$, $\langle v_i, v_j \rangle = 0$.

3.  **Famille orthonormée** : Une famille est dite **orthonormée** (ou **orthonormale**) si elle est orthogonale et si tous ses vecteurs sont de norme 1. Pour tous $i, j$ :
    $$ \langle v_i, v_j \rangle = \delta_{ij} = \begin{cases} 1 & \text{si } i=j \\ 0 & \text{si } i \neq j \end{cases} $$
    où $\delta_{ij}$ est le symbole de Kronecker.

**Explication détaillée**

L'orthogonalité est la généralisation de la notion géométrique de "perpendiculaire" à des espaces de dimension quelconque et à des espaces complexes. C'est une des notions les plus puissantes introduites par le produit scalaire.

Le vecteur nul $0_E$ est orthogonal à tous les vecteurs de l'espace, car $\langle 0_E, y \rangle = 0$ pour tout $y \in E$. C'est le seul vecteur ayant cette propriété.

Une propriété fondamentale des familles orthogonales est qu'elles sont "presque" libres. Plus précisément, une famille orthogonale de vecteurs **non nuls** est toujours libre. C'est une conséquence directe du théorème de Pythagore.

### Propriétés Clés

- **Théorème de Pythagore** : Si une famille de vecteurs $(v_1, \dots, v_n)$ est orthogonale, alors le carré de la norme de leur somme est égal à la somme des carrés de leurs normes :
  $$ \left\| \sum*{i=1}^n v_i \right\|^2 = \sum*{i=1}^n \|v*i\|^2 $$
  *Démonstration :_
  $\|\sum_i v_i\|^2 = \langle \sum_i v_i, \sum_j v_j \rangle = \sum_{i,j} \langle v_i, v_j \rangle$.
    Comme la famille est orthogonale, $\langle v_i, v_j \rangle = 0$ si $i \neq j$. Il ne reste que les termes où $i=j$ :
  $\sum_i \langle v_i, v_i \rangle = \sum_i \|v_i\|^2$.

- **Liberté des familles orthogonales** : Toute famille orthogonale de vecteurs non nuls est libre.
  _Démonstration :_ Soit $(v_1, \dots, v_n)$ une telle famille. Supposons $\sum_{i=1}^n \lambda_i v_i = 0_E$.
  Faisons le produit scalaire avec un vecteur $v_k$ de la famille :
  $\langle \sum_i \lambda_i v_i, v_k \rangle = \langle 0_E, v_k \rangle = 0$.
  Par linéarité, $\sum_i \lambda_i \langle v_i, v_k \rangle = 0$.
  Par orthogonalité, $\langle v_i, v_k \rangle = 0$ pour $i \neq k$. Il ne reste que le terme $i=k$ :
  $\lambda_k \langle v_k, v_k \rangle = \lambda_k \|v_k\|^2 = 0$.
  Comme $v_k \neq 0_E$, on a $\|v_k\|^2 > 0$, donc $\lambda_k=0$. Ceci est vrai pour tout $k$, donc la famille est libre.

### Exemples

**Exemple 1 : Base canonique de $\mathbb{R}^3$**
Dans $\mathbb{R}^3$ avec le produit scalaire usuel, considérons $e_1=(1,0,0)$, $e_2=(0,1,0)$, $e_3=(0,0,1)$.
$\langle e_1, e_2 \rangle = 1 \cdot 0 + 0 \cdot 1 + 0 \cdot 0 = 0$.
De même, $\langle e_1, e_3 \rangle = 0$ et $\langle e_2, e_3 \rangle = 0$. La famille est orthogonale.
$\|e_1\|^2 = 1^2+0+0 = 1$, de même $\|e_2\|=1, \|e_3\|=1$.
La famille $(e_1, e_2, e_3)$ est donc orthonormée.

**Exemple 2 : Vecteurs orthogonaux dans $\mathbb{R}^2$**
Soit $x = (2, 1)$ et $y = (-1, 2)$.
$\langle x, y \rangle = 2(-1) + 1(2) = -2+2 = 0$.
Les vecteurs $x$ et $y$ sont orthogonaux.
Vérifions Pythagore : $x+y=(1,3)$.
$\|x+y\|^2 = 1^2+3^2 = 10$.
$\|x\|^2 = 2^2+1^2 = 5$.
$\|y\|^2 = (-1)^2+2^2 = 5$.
On a bien $\|x+y\|^2 = \|x\|^2 + \|y\|^2$ (i.e. $10 = 5+5$).

**Exemple 3 : Polynômes de Legendre (famille orthogonale)**
Dans l'espace $\mathbb{R}[X]$ avec le produit scalaire $\langle P, Q \rangle = \int_{-1}^1 P(t)Q(t)dt$, les premiers polynômes de Legendre sont :
$P_0(t)=1$, $P_1(t)=t$, $P_2(t) = \frac{1}{2}(3t^2-1)$.
$\langle P_0, P_1 \rangle = \int_{-1}^1 1 \cdot t dt = [\frac{t^2}{2}]_{-1}^1 = 0$.
$\langle P_1, P_2 \rangle = \int_{-1}^1 t \cdot \frac{1}{2}(3t^2-1) dt = \frac{1}{2} \int_{-1}^1 (3t^3-t) dt = \frac{1}{2} [\frac{3t^4}{4}-\frac{t^2}{2}]_{-1}^1 = 0$.
Cette famille est orthogonale. Pour la rendre orthonormée, il faudrait diviser chaque polynôme par sa norme.

### Contre-exemples

**Contre-exemple 1 : Vecteurs non orthogonaux**
Dans $\mathbb{R}^2$, soient $u=(1,1)$ et $v=(1,0)$.
$\langle u, v \rangle = 1 \cdot 1 + 1 \cdot 0 = 1 \neq 0$. Ils ne sont pas orthogonaux.
Le théorème de Pythagore ne s'applique pas : $u+v=(2,1)$.
$\|u+v\|^2 = 2^2+1^2=5$.
$\|u\|^2 = 1^2+1^2=2$, $\|v\|^2=1^2+0^2=1$.
$5 \neq 2+1$.

**Contre-exemple 2 : Famille libre mais non orthogonale**
Dans $\mathbb{R}^2$, la famille $v_1=(1,0)$ et $v_2=(1,1)$ est une base, donc elle est libre.
Mais $\langle v_1, v_2 \rangle = 1 \neq 0$, donc elle n'est pas orthogonale.

### Concepts Liés

- **Base orthonormée** : Une base qui est aussi une famille orthonormée. Elles simplifient énormément les calculs.
- **Projection orthogonale** : L'orthogonalité permet de définir la projection d'un vecteur sur un sous-espace.
- **Procédé de Gram-Schmidt** : Un algorithme pour construire une base orthonormée à partir de n'importe quelle base.

---

## Concept 7: Bases Orthonormées et Matrice de Gram

### Prérequis

- **Concept 6 : Orthogonalité**.
- **Bases d'un espace vectoriel**.
- **Calcul matriciel**.

### Définition

1.  **Base orthonormée (ou orthonormale)** : C'est une base $(e_1, \dots, e_n)$ d'un espace euclidien ou hermitien $E$ qui est aussi une famille orthonormée.
    C'est-à-dire : $\langle e_i, e_j \rangle = \delta_{ij}$.

2.  **Matrice de Gram** : Soit $(e_1, \dots, e_n)$ une base _quelconque_ de $E$. La **matrice de Gram** associée à cette base est la matrice $G$ de taille $n \times n$ dont les coefficients sont les produits scalaires des vecteurs de base :
    $$ G\_{ij} = \langle e_i, e_j \rangle $$
    $$ G = \begin{pmatrix} \langle e_1, e_1 \rangle & \cdots & \langle e_1, e_n \rangle \\ \vdots & \ddots & \vdots \\ \langle e_n, e_1 \rangle & \cdots & \langle e_n, e_n \rangle \end{pmatrix} $$

**Explication détaillée**

Les bases orthonormées sont les "meilleures" bases possibles pour travailler dans un espace euclidien ou hermitien. Elles transforment les calculs de produits scalaires, de normes ou de coordonnées en opérations très simples, similaires à celles effectuées dans $\mathbb{R}^n$ avec sa base canonique.

**Intérêt des bases orthonormées :**
Soit $\mathcal{B}=(e_1, \dots, e_n)$ une base orthonormée de $E$.

- **Calcul des coordonnées** : Pour tout $x \in E$, ses coordonnées $(x_1, \dots, x_n)$ dans la base $\mathcal{B}$ sont très simples à obtenir :
  $$ x*i = \langle x, e_i \rangle $$
  On a donc la décomposition : $x = \sum*{i=1}^n \langle x, e_i \rangle e_i$.
- **Calcul du produit scalaire** : Si $x = \sum x_i e_i$ et $y = \sum y_j e_j$, le produit scalaire devient :
  - Cas euclidien : $\langle x, y \rangle = \sum_{i=1}^n x_i y_i$
  - Cas hermitien : $\langle x, y \rangle = \sum_{i=1}^n x_i \bar{y}_i$
- **Calcul de la norme (Identité de Parseval)** :
  $$ \|x\|^2 = \sum*{i=1}^n |x_i|^2 = \sum*{i=1}^n |\langle x, e_i \rangle|^2 $$

**Rôle de la Matrice de Gram :**
Que se passe-t-il si la base n'est pas orthonormée ? Le calcul du produit scalaire est plus compliqué et fait intervenir la matrice de Gram. Si $X$ et $Y$ sont les vecteurs colonnes des coordonnées de $x$ et $y$ dans une base $\mathcal{B}$, alors :

- Cas euclidien : $\langle x, y \rangle = {}^tX G Y$
- Cas hermitien : $\langle x, y \rangle = {}^tX G \bar{Y}$

La matrice de Gram encode toute l'information sur le produit scalaire par rapport à une base donnée.
Une base est orthonormée si et seulement si sa matrice de Gram est la matrice identité ($G=I_n$).

### Propriétés Clés

- Toute base orthonormée est une base. (Vu que c'est une famille orthogonale de vecteurs non nuls, elle est libre. Si elle a le bon nombre d'éléments, c'est une base).
- La matrice de Gram $G$ est toujours symétrique (cas euclidien) ou hermitienne (cas hermitien).
- La matrice de Gram $G$ d'une base est toujours inversible.

### Exemples

**Exemple 1 : Calculs dans une base orthonormée**
Dans $\mathbb{R}^3$ avec la base canonique $\mathcal{B}=(e_1, e_2, e_3)$ (qui est orthonormée). Soit $x = (2, -1, 3)$.
Les coordonnées de $x$ sont trivialement $(2, -1, 3)$. On peut les retrouver par produit scalaire :
$x_1 = \langle x, e_1 \rangle = \langle (2,-1,3), (1,0,0) \rangle = 2$.
$x_2 = \langle x, e_2 \rangle = \langle (2,-1,3), (0,1,0) \rangle = -1$.
$x_3 = \langle x, e_3 \rangle = \langle (2,-1,3), (0,0,1) \rangle = 3$.
La norme de $x$ est $\|x\|^2 = 2^2 + (-1)^2 + 3^2 = 14$.

**Exemple 2 : Matrice de Gram pour une base non orthonormée**
Soit $E = \mathbb{R}^2$ avec le produit scalaire usuel. Considérons la base $\mathcal{B}' = (v_1, v_2)$ avec $v_1 = (1,1)$ et $v_2 = (1,0)$.
Calculons la matrice de Gram $G$ :
$G_{11} = \langle v_1, v_1 \rangle = 1^2+1^2=2$.
$G_{12} = \langle v_1, v_2 \rangle = 1 \cdot 1 + 1 \cdot 0 = 1$.
$G_{21} = \langle v_2, v_1 \rangle = 1$.
$G_{22} = \langle v_2, v_2 \rangle = 1^2+0^2=1$.
$$ G = \begin{pmatrix} 2 & 1 \\ 1 & 1 \end{pmatrix} $$
Soit $x=v_1=(1,1)$ et $y=v_2=(1,0)$. Leurs coordonnées dans $\mathcal{B}'$ sont $X = \begin{pmatrix} 1 \\ 0 \end{pmatrix}$ et $Y = \begin{pmatrix} 0 \\ 1 \end{pmatrix}$.
Le produit scalaire est $\langle x, y \rangle = 1$.
Via la matrice de Gram : ${}^tX G Y = \begin{pmatrix} 1 & 0 \end{pmatrix} \begin{pmatrix} 2 & 1 \\ 1 & 1 \end{pmatrix} \begin{pmatrix} 0 \\ 1 \end{pmatrix} = \begin{pmatrix} 2 & 1 \end{pmatrix} \begin{pmatrix} 0 \\ 1 \end{pmatrix} = 1$. Le résultat est correct.

**Exemple 3 : Expression de Parseval pour les séries de Fourier**
Dans l'espace $\mathcal{T}_n$ des polynômes trigonométriques avec $\langle P, Q \rangle = \frac{1}{2\pi} \int_0^{2\pi} P(t)\overline{Q(t)}dt$. La famille $(e_k)_{k=-n..n}$ avec $e_k(t) = e^{ikt}$ est orthonormée.
Si $P(t) = \sum_{k=-n}^n a_k e^{ikt} = \sum a_k e_k(t)$, les $a_k$ sont les coordonnées de $P$.
L'identité de Parseval donne alors :
$$ \|P\|^2 = \frac{1}{2\pi} \int*0^{2\pi} |P(t)|^2 dt = \sum*{k=-n}^n |a_k|^2 $$

### Contre-exemples

**Contre-exemple 1 : Calcul de coordonnées erroné dans une base non orthonormée**
Avec la base $\mathcal{B}' = (v_1, v_2)$ de l'exemple 2. Soit $x=(2,1)$.
Les coordonnées de $x$ dans $\mathcal{B}'$ sont $(1, 1)$ car $x = 1 \cdot v_1 + 1 \cdot v_2 = (1,1)+(1,0) = (2,1)$.
Si on appliquait la formule pour les bases orthonormées, on trouverait :
$\langle x, v_1 \rangle = \langle (2,1), (1,1) \rangle = 3$.
$\langle x, v_2 \rangle = \langle (2,1), (1,0) \rangle = 2$.
On voit que $(3,2)$ ne sont pas les bonnes coordonnées.

**Contre-exemple 2 : Matrice de Gram d'une famille liée**
Soit $v_1=(1,1)$ et $v_2=(2,2)$ dans $\mathbb{R}^2$. Cette famille est liée.
$G_{11} = 2$, $G_{12} = \langle (1,1),(2,2) \rangle = 4$, $G_{22} = \langle (2,2),(2,2) \rangle = 8$.
$G = \begin{pmatrix} 2 & 4 \\ 4 & 8 \end{pmatrix}$.
Le déterminant de $G$ est $2 \cdot 8 - 4 \cdot 4 = 16-16=0$. La matrice n'est pas inversible, ce qui confirme que la famille n'est pas une base.

### Concepts Liés

- **Procédé de Gram-Schmidt** : La question naturelle est : existe-t-il toujours une base orthonormée ? La réponse est oui, et cet algorithme en fournit une construction explicite.
- **Projection orthogonale** : La formule de la projection orthogonale est particulièrement simple lorsqu'on dispose d'une base orthonormée du sous-espace.

---

## Concept 8: Procédé d'Orthonormalisation de Gram-Schmidt

### Prérequis

- **Concept 7 : Bases Orthonormées**.
- **Notion de sous-espace vectoriel engendré** (Vect).

### Définition

Le **procédé de Gram-Schmidt** est un algorithme qui prend une base quelconque $(v_1, \dots, v_n)$ d'un espace euclidien ou hermitien et la transforme en une base orthonormée $(e_1, \dots, e_n)$.

L'algorithme fonctionne par récurrence. En supposant que l'on a déjà construit une famille orthonormée $(e_1, \dots, e_k)$ qui engendre le même sous-espace que $(v_1, \dots, v_k)$, on construit $e_{k+1}$ en deux étapes :

1.  **Orthogonalisation** : On prend le vecteur suivant $v_{k+1}$ et on lui soustrait sa projection sur le sous-espace déjà construit. On obtient un vecteur $e'_{k+1}$ orthogonal aux précédents :
    $$ e'_{k+1} = v_{k+1} - \sum*{j=1}^k \langle v*{k+1}, e_j \rangle e_j $$
2.  **Normalisation** : On divise le vecteur $e'_{k+1}$ par sa norme pour obtenir un vecteur unitaire $e_{k+1}$ :
    $$ e*{k+1} = \frac{e'*{k+1}}{\|e'\_{k+1}\|} $$

On commence avec $k=0$ (famille vide) et on continue jusqu'à $k=n-1$.

**Explication détaillée**

L'idée de Gram-Schmidt est très géométrique. Imaginons que nous construisons notre base orthonormée pas à pas.

- **Étape 1** : On prend le premier vecteur $v_1$. Pour en faire un vecteur de norme 1, il suffit de le diviser par sa longueur. On pose $e_1 = v_1 / \|v_1\|$.
- **Étape 2** : On prend le deuxième vecteur $v_2$. Il n'est probablement ni orthogonal à $e_1$, ni de norme 1. Pour le rendre orthogonal à $e_1$, on doit lui enlever sa "composante" dans la direction de $e_1$. Cette composante est exactement la projection de $v_2$ sur la droite dirigée par $e_1$, qui est $\langle v_2, e_1 \rangle e_1$. Le nouveau vecteur $e'_2 = v_2 - \langle v_2, e_1 \rangle e_1$ est maintenant orthogonal à $e_1$. Il ne reste plus qu'à le normaliser : $e_2 = e'_2 / \|e'_2\|$.
- **Étape k+1** : On continue le processus. On prend $v_{k+1}$. Pour le rendre orthogonal à tous les $e_1, \dots, e_k$ déjà construits, on lui enlève sa projection sur le sous-espace $F_k = \text{Vect}(e_1, \dots, e_k)$. Cette projection est $\sum_{j=1}^k \langle v_{k+1}, e_j \rangle e_j$. Le vecteur résultant $e'_{k+1}$ est orthogonal à $F_k$. On le normalise pour obtenir $e_{k+1}$.

Une propriété importante de ce procédé est qu'à chaque étape $k$, le sous-espace engendré par la nouvelle famille est le même que celui engendré par l'ancienne : $\text{Vect}(e_1, \dots, e_k) = \text{Vect}(v_1, \dots, v_k)$.

### Propriétés Clés

- **Existence de bases orthonormées** : Le procédé de Gram-Schmidt prouve que tout espace euclidien ou hermitien de dimension finie admet une base orthonormée. C'est un résultat fondamental.
- L'algorithme préserve l'orientation de la base dans le cas réel si l'on ne change pas l'ordre des vecteurs.

### Exemples

**Exemple 1 : Orthonormalisation d'une base de $\mathbb{R}^3$**
Soit $E=\mathbb{R}^3$ avec le produit scalaire usuel. Partons de la base $v_1=(1,1,0)$, $v_2=(1,0,1)$, $v_3=(0,1,1)$.

- **Étape 1 : Construire $e_1$**
  $e_1 = \frac{v_1}{\|v_1\|}$.
  $\|v_1\|^2 = 1^2+1^2+0^2=2$, donc $\|v_1\|=\sqrt{2}$.
  $e_1 = \frac{1}{\sqrt{2}}(1,1,0)$.

- **Étape 2 : Construire $e_2$**
  D'abord, $e'_2 = v_2 - \langle v_2, e_1 \rangle e_1$.
  $\langle v_2, e_1 \rangle = \langle (1,0,1), \frac{1}{\sqrt{2}}(1,1,0) \rangle = \frac{1}{\sqrt{2}}(1\cdot 1 + 0 \cdot 1 + 1 \cdot 0) = \frac{1}{\sqrt{2}}$.
  $e'_2 = (1,0,1) - \frac{1}{\sqrt{2}} \left( \frac{1}{\sqrt{2}}(1,1,0) \right) = (1,0,1) - \frac{1}{2}(1,1,0) = (\frac{1}{2}, -\frac{1}{2}, 1)$.
  Maintenant, on normalise : $\|e'_2\|^2 = (\frac{1}{2})^2 + (-\frac{1}{2})^2 + 1^2 = \frac{1}{4}+\frac{1}{4}+1 = \frac{3}{2}$. Donc $\|e'_2\| = \sqrt{\frac{3}{2}}$.
  $e_2 = \frac{1}{\sqrt{3/2}} (\frac{1}{2}, -\frac{1}{2}, 1) = \sqrt{\frac{2}{3}} (\frac{1}{2}, -\frac{1}{2}, 1) = \frac{1}{\sqrt{6}}(1, -1, 2)$.

- **Étape 3 : Construire $e_3$**
  $e'_3 = v_3 - \langle v_3, e_1 \rangle e_1 - \langle v_3, e_2 \rangle e_2$.
  $\langle v_3, e_1 \rangle = \langle (0,1,1), \frac{1}{\sqrt{2}}(1,1,0) \rangle = \frac{1}{\sqrt{2}}$.
  $\langle v_3, e_2 \rangle = \langle (0,1,1), \frac{1}{\sqrt{6}}(1,-1,2) \rangle = \frac{1}{\sqrt{6}}(0-1+2) = \frac{1}{\sqrt{6}}$.
  $e'_3 = (0,1,1) - \frac{1}{\sqrt{2}} e_1 - \frac{1}{\sqrt{6}} e_2$
  $e'_3 = (0,1,1) - \frac{1}{2}(1,1,0) - \frac{1}{6}(1,-1,2) = (0,1,1) - (\frac{1}{2}, \frac{1}{2}, 0) - (\frac{1}{6}, -\frac{1}{6}, \frac{2}{6})$
  $e'_3 = (-\frac{1}{2}-\frac{1}{6}, 1-\frac{1}{2}+\frac{1}{6}, 1-\frac{2}{6}) = (-\frac{4}{6}, \frac{4}{6}, \frac{4}{6}) = (-\frac{2}{3}, \frac{2}{3}, \frac{2}{3})$.
  Normalisation : $\|e'_3\|^2 = 3 \cdot (\frac{2}{3})^2 = 3 \cdot \frac{4}{9} = \frac{4}{3}$. $\|e'_3\| = \frac{2}{\sqrt{3}}$.
  $e_3 = \frac{\sqrt{3}}{2} (-\frac{2}{3}, \frac{2}{3}, \frac{2}{3}) = \frac{1}{\sqrt{3}}(-1,1,1)$.

La base orthonormée est $(e_1, e_2, e_3)$.

### Contre-exemples

L'algorithme ne peut pas échouer si on part d'une base.

**Contre-exemple 1 : Appliquer l'algorithme à une famille liée**
Soit $v_1 = (1,1)$, $v_2 = (2,2)$ dans $\mathbb{R}^2$.
Étape 1 : $e_1 = \frac{1}{\sqrt{2}}(1,1)$.
Étape 2 : $e'_2 = v_2 - \langle v_2, e_1 \rangle e_1$.
$\langle v_2, e_1 \rangle = \langle (2,2), \frac{1}{\sqrt{2}}(1,1) \rangle = \frac{1}{\sqrt{2}}(2+2) = \frac{4}{\sqrt{2}} = 2\sqrt{2}$.
$e'_2 = (2,2) - 2\sqrt{2} \cdot \frac{1}{\sqrt{2}}(1,1) = (2,2) - 2(1,1) = (0,0)$.
Le vecteur $e'_2$ est le vecteur nul. On ne peut pas le normaliser. C'est normal : $v_2$ était déjà dans le sous-espace engendré par $v_1$, donc sa projection sur cet espace est lui-même. La soustraction donne zéro.

### Concepts Liés

- **Projection orthogonale** : Le cœur de l'algorithme est de soustraire la projection orthogonale sur le sous-espace déjà construit.
- **Décomposition QR** : En algèbre linéaire numérique, le procédé de Gram-Schmidt est l'idée derrière la décomposition QR d'une matrice, qui l'écrit comme le produit d'une matrice orthogonale $Q$ et d'une matrice triangulaire supérieure $R$.

---

## Concept 9: Supplémentaire Orthogonal et Projection Orthogonale

### Prérequis

- **Sous-espaces vectoriels**.
- **Somme directe de sous-espaces ($F \oplus G$)**.
- **Concept 6 : Orthogonalité**.

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien.

1.  **Supplémentaire Orthogonal** : Soit $F$ un sous-espace vectoriel de $E$. L'**orthogonal** de $F$, noté $F^\perp$ (lire "F perp"), est l'ensemble de tous les vecteurs de $E$ qui sont orthogonaux à _tous_ les vecteurs de $F$ :
    $$ F^\perp = \{ x \in E \mid \forall y \in F, \langle x, y \rangle = 0 \} $$
    $F^\perp$ est toujours un sous-espace vectoriel de $E$.

2.  **Somme directe orthogonale** : Pour tout sous-espace vectoriel $F$ de $E$, l'espace $E$ se décompose en somme directe de $F$ et de son orthogonal $F^\perp$ :
    $$ E = F \oplus F^\perp $$
    Cela signifie que tout vecteur $x \in E$ peut s'écrire de manière unique comme la somme d'un vecteur de $F$ et d'un vecteur de $F^\perp$.

3.  **Projection Orthogonale** : L'application $P_F: E \to E$ qui à un vecteur $x = x_F + x_{F^\perp}$ (avec $x_F \in F$ et $x_{F^\perp} \in F^\perp$) associe le vecteur $x_F$ est appelée la **projection orthogonale** sur $F$.
    $$ P_F(x) = x_F $$
    C'est un projecteur, ce qui signifie que $P_F \circ P_F = P_F$. Son image est $F$ et son noyau est $F^\perp$.

**Explication détaillée**

L'idée du supplémentaire orthogonal est de rassembler "toutes les directions perpendiculaires" à un sous-espace donné. Par exemple, dans $\mathbb{R}^3$, l'orthogonal d'un plan passant par l'origine est la droite qui lui est perpendiculaire et qui passe aussi par l'origine. L'orthogonal d'une droite est le plan qui lui est perpendiculaire.

La décomposition $E = F \oplus F^\perp$ est un résultat très puissant. Elle garantit que pour tout vecteur $x$, il existe une unique "partie" de $x$ qui vit dans $F$ et une unique "partie" qui vit dans son orthogonal $F^\perp$. La première partie, $x_F$, est ce qu'on appelle la projection orthogonale de $x$ sur $F$. C'est le "meilleur" représentant de $x$ dans $F$.

**Comment calculer la projection ?**
Si on dispose d'une base **orthonormée** $(e_1, \dots, e_p)$ de $F$, le calcul de la projection est très simple :
$$ P*F(x) = \sum*{i=1}^p \langle x, e_i \rangle e_i $$
Cette formule est une généralisation de la décomposition d'un vecteur dans une base orthonormée de $E$ tout entier. Ici, on ne décompose que la "partie" de $x$ qui est dans $F$.

### Propriétés Clés

- $F \cap F^\perp = \{0_E\}$.
- $(F^\perp)^\perp = F$.
- $\dim(F) + \dim(F^\perp) = \dim(E)$.
- Le projecteur orthogonal $P_F$ est un endomorphisme autoadjoint ($P_F^* = P_F$).
- Le projecteur sur $F^\perp$ est $P_{F^\perp} = \text{Id}_E - P_F$.

### Exemples

**Exemple 1 : Orthogonal d'un plan dans $\mathbb{R}^3$**
Soit $E = \mathbb{R}^3$ et $F$ le plan d'équation $x+y+z=0$. Un vecteur $u=(a,b,c)$ est dans $F^\perp$ s'il est orthogonal à tous les vecteurs de $F$. Il suffit qu'il soit orthogonal à une base de $F$. Une base de $F$ est $v_1 = (1, -1, 0)$ et $v_2 = (1, 0, -1)$.
$\langle u, v_1 \rangle = a - b = 0 \implies a=b$.
$\langle u, v_2 \rangle = a - c = 0 \implies a=c$.
Donc $u = (a, a, a) = a(1,1,1)$.
$F^\perp$ est la droite vectorielle dirigée par le vecteur normal au plan, $n=(1,1,1)$. On a bien $\dim(F)=2$, $\dim(F^\perp)=1$ et $2+1=3$.

**Exemple 2 : Calcul d'une projection**
Toujours dans $E = \mathbb{R}^3$, projetons le vecteur $x=(1,2,3)$ sur le plan $F$ de l'exemple 1.
Il faut une base orthonormée de $F$. Une base est $v_1=(1,-1,0)$, $v_2=(1,0,-1)$. Appliquons Gram-Schmidt :
$e_1 = \frac{1}{\sqrt{2}}(1,-1,0)$.
$e'_2 = v_2 - \langle v_2, e_1 \rangle e_1 = (1,0,-1) - \frac{1}{\sqrt{2}} \cdot \frac{1}{\sqrt{2}}(1,-1,0) = (1,0,-1) - \frac{1}{2}(1,-1,0) = (\frac{1}{2}, \frac{1}{2}, -1)$.
$\|e'_2\| = \sqrt{1/4+1/4+1} = \sqrt{3/2}$.
$e_2 = \sqrt{2/3} (\frac{1}{2}, \frac{1}{2}, -1) = \frac{1}{\sqrt{6}}(1,1,-2)$.
La base orthonormée de $F$ est $(e_1, e_2)$.
$P_F(x) = \langle x, e_1 \rangle e_1 + \langle x, e_2 \rangle e_2$.
$\langle x, e_1 \rangle = \langle (1,2,3), \frac{1}{\sqrt{2}}(1,-1,0) \rangle = \frac{1}{\sqrt{2}}(1-2) = -\frac{1}{\sqrt{2}}$.
$\langle x, e_2 \rangle = \langle (1,2,3), \frac{1}{\sqrt{6}}(1,1,-2) \rangle = \frac{1}{\sqrt{6}}(1+2-6) = -\frac{3}{\sqrt{6}}$.
$P_F(x) = (-\frac{1}{\sqrt{2}}) \frac{1}{\sqrt{2}}(1,-1,0) + (-\frac{3}{\sqrt{6}}) \frac{1}{\sqrt{6}}(1,1,-2)$
$P_F(x) = -\frac{1}{2}(1,-1,0) - \frac{3}{6}(1,1,-2) = (-\frac{1}{2}, \frac{1}{2}, 0) - (\frac{1}{2}, \frac{1}{2}, -1) = (-1, 0, 1)$.
Le projeté de $(1,2,3)$ sur le plan $x+y+z=0$ est $(-1,0,1)$. On peut vérifier que $(-1)+0+1=0$, donc le point est bien dans le plan.

**Exemple 3 : Autre méthode de projection**
On peut aussi calculer $P_{F^\perp}(x)$ et utiliser $P_F(x) = x - P_{F^\perp}(x)$. C'est plus simple ici car $F^\perp$ est une droite.
$F^\perp = \text{Vect}(n)$ avec $n=(1,1,1)$. Une base orthonormée de $F^\perp$ est $e_n = \frac{n}{\|n\|} = \frac{1}{\sqrt{3}}(1,1,1)$.
$P_{F^\perp}(x) = \langle x, e_n \rangle e_n = \langle (1,2,3), \frac{1}{\sqrt{3}}(1,1,1) \rangle \frac{1}{\sqrt{3}}(1,1,1)$
$P_{F^\perp}(x) = \frac{1+2+3}{\sqrt{3}} \frac{1}{\sqrt{3}}(1,1,1) = \frac{6}{3}(1,1,1) = (2,2,2)$.
$P_F(x) = x - P_{F^\perp}(x) = (1,2,3) - (2,2,2) = (-1,0,1)$. On retrouve le même résultat.

### Contre-exemples

**Contre-exemple 1 : Somme directe non orthogonale**
Dans $\mathbb{R}^2$, soient $F = \text{Vect}((1,0))$ et $G = \text{Vect}((1,1))$. On a $\mathbb{R}^2 = F \oplus G$ (tout vecteur se décompose de manière unique), mais ce n'est pas une somme directe orthogonale car $F$ et $G$ ne sont pas orthogonaux: $\langle(1,0), (1,1)\rangle = 1 \neq 0$.

**Contre-exemple 2 : Mauvaise formule de projection**
Si la base de $F$ n'est pas orthonormée, la formule $\sum \langle x, e_i \rangle e_i$ est fausse.
Reprenons l'exemple 2 avec la base non orthonormée $v_1=(1,-1,0)$, $v_2=(1,0,-1)$ de $F$.
$\langle x, v_1 \rangle = -1$, $\langle x, v_2 \rangle = -2$.
La formule donnerait $(-1)v_1 + (-2)v_2 = (-1,1,0) + (-2,0,2) = (-3,1,2)$, ce qui n'est pas le bon résultat $(-1,0,1)$.

### Concepts Liés

- **Distance à un sous-espace vectoriel** : Le projeté orthogonal est le point d'un sous-espace le plus proche d'un point extérieur.
- **Adjoint d'un endomorphisme** : Le projecteur orthogonal est un exemple prototypique d'endomorphisme autoadjoint.

---

## Concept 10: Distance à un Sous-Espace Vectoriel

### Prérequis

- **Concept 9 : Projection Orthogonale**.
- **Notion de borne inférieure (infimum)**.

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien, $F$ un sous-espace vectoriel de $E$, et $x$ un vecteur de $E$.

La **distance** de $x$ à $F$, notée $d(x, F)$, est définie comme la plus petite distance possible entre $x$ et un point quelconque de $F$ :
$$ d(x, F) = \inf\_{y \in F} \|x - y\| $$

**Théorème de la projection orthogonale** :
Cette distance est atteinte en un unique point de $F$, qui est le projeté orthogonal $P_F(x)$ de $x$ sur $F$. La distance est alors la norme du vecteur $x - P_F(x)$ :
$$ d(x, F) = \|x - P_F(x)\| $$

**Explication détaillée**

Géométriquement, ce théorème formalise l'intuition que le chemin le plus court d'un point à un plan (ou une droite) est le long de la perpendiculaire.

Le vecteur $x - P_F(x)$ est la composante de $x$ dans $F^\perp$. Le théorème dit donc que la distance de $x$ à $F$ est la longueur de sa partie orthogonale à $F$.

La preuve de ce théorème est une application directe du théorème de Pythagore. Pour n'importe quel $y \in F$, le vecteur $P_F(x) - y$ est aussi dans $F$. Le vecteur $x - P_F(x)$ est dans $F^\perp$. Ces deux vecteurs sont donc orthogonaux.
On écrit $x - y = (x - P_F(x)) + (P_F(x) - y)$. Par Pythagore :
$$ \|x - y\|^2 = \|x - P_F(x)\|^2 + \|P_F(x) - y\|^2 $$
Comme $\|P_F(x) - y\|^2 \ge 0$, on a toujours $\|x - y\|^2 \ge \|x - P_F(x)\|^2$. Le minimum est atteint lorsque $\|P_F(x) - y\|^2 = 0$, c'est-à-dire quand $y = P_F(x)$, ce qui prouve le théorème.

### Propriétés Clés

- Le point de $F$ qui minimise la distance à $x$ est unique.
- $d(x,F)=0$ si et seulement si $x \in F$.
- La distance est la norme de la composante de $x$ dans $F^\perp$ : $d(x,F) = \|P_{F^\perp}(x)\|$.

### Exemples

**Exemple 1 : Distance d'un point à un plan dans $\mathbb{R}^3$**
Calculons la distance du point $x=(1,2,1)$ au plan $F = \{(a,b,c) \in \mathbb{R}^3 \mid a+b+c=0\}$.
Nous savons que $F^\perp = \text{Vect}(n)$ avec $n=(1,1,1)$.
La distance est $d(x, F) = \|P_{F^\perp}(x)\|$.
Calculons $P_{F^\perp}(x)$. La base orthonormée de $F^\perp$ est $e_n = \frac{1}{\sqrt{3}}(1,1,1)$.
$P_{F^\perp}(x) = \langle x, e_n \rangle e_n = \langle (1,2,1), \frac{1}{\sqrt{3}}(1,1,1) \rangle \frac{1}{\sqrt{3}}(1,1,1)$
$P_{F^\perp}(x) = \frac{1+2+1}{\sqrt{3}} \frac{1}{\sqrt{3}}(1,1,1) = \frac{4}{3}(1,1,1) = (\frac{4}{3}, \frac{4}{3}, \frac{4}{3})$.
La distance est la norme de ce vecteur :
$d(x, F) = \|(\frac{4}{3}, \frac{4}{3}, \frac{4}{3})\| = \sqrt{(\frac{4}{3})^2 + (\frac{4}{3})^2 + (\frac{4}{3})^2} = \sqrt{3 \cdot \frac{16}{9}} = \sqrt{\frac{16}{3}} = \frac{4}{\sqrt{3}} = \frac{4\sqrt{3}}{3}$.

**Exemple 2 : Problème de moindres carrés**
En statistiques, on cherche souvent à trouver la "meilleure" droite de régression pour un nuage de points $(t_i, y_i)$. Cela revient à résoudre un système linéaire $A X = Y$ qui n'a en général pas de solution. La méthode des moindres carrés consiste à trouver le $X$ qui minimise $\|AX - Y\|^2$.
Cela revient à trouver la meilleure approximation de $Y$ dans le sous-espace $\text{Im}(A)$. La solution est donc le projeté orthogonal de $Y$ sur $\text{Im}(A)$. Le vecteur $X$ solution vérifie $AX = P_{\text{Im}(A)}(Y)$.

**Exemple 3 : Distance d'une fonction à un sous-espace de polynômes**
Soit $E=C([0,1], \mathbb{R})$ l'espace des fonctions continues sur $[0,1]$ avec $\langle f,g \rangle = \int_0^1 f(t)g(t)dt$. Soit $F = \mathbb{R}_1[X]$ le sous-espace des polynômes de degré au plus 1.
Quelle est la meilleure approximation de $f(t)=t^2$ par un polynôme de degré 1 ? C'est le projeté de $f$ sur $F$.
Une base orthogonale (non normée) de $F$ est $v_1=1, v_2=t - 1/2$.
$P_F(f) = \frac{\langle f, v_1 \rangle}{\|v_1\|^2}v_1 + \frac{\langle f, v_2 \rangle}{\|v_2\|^2}v_2$.
$\langle t^2, 1 \rangle = \int_0^1 t^2 dt = 1/3$. $\|1\|^2 = \int_0^1 1^2 dt = 1$.
$\langle t^2, t-1/2 \rangle = \int_0^1 (t^3-t^2/2)dt = [t^4/4-t^3/6]_0^1 = 1/4-1/6=1/12$.
$\|t-1/2\|^2 = \int_0^1 (t-1/2)^2 dt = [ (t-1/2)^3/3 ]_0^1 = (1/8)/3 - (-1/8)/3 = 1/12$.
Le projeté est $P_F(f)(t) = \frac{1/3}{1}(1) + \frac{1/12}{1/12}(t-1/2) = 1/3 + t - 1/2 = t - 1/6$.
L'approximation est le polynôme $t \mapsto t-1/6$. La distance est $\|t^2 - (t-1/6)\|$.

### Contre-exemples

Il n'y a pas de contre-exemple au théorème lui-même.

**Contre-exemple 1 : Point de distance minimale non unique dans un ensemble non-convexe**
Le théorème repose sur le fait que $F$ est un sous-espace vectoriel (donc convexe). Si on cherche la distance d'un point à un ensemble non-convexe, le point le plus proche peut ne pas être unique. Par exemple, la distance de l'origine $(0,0)$ à un cercle centré en $(2,0)$ de rayon 1 est 1, mais elle est atteinte au seul point $(1,0)$. Si on prend l'ensemble formé des deux points $\{(1,0), (-1,0)\}$, la distance du point $(0,1)$ à cet ensemble est $\sqrt{2}$, et elle est atteinte aux deux points.

**Contre-exemple 2 : Mauvais calcul de distance**
La distance n'est PAS la distance au projeté sur $F^\perp$. La distance est la NORME du projeté sur $F^\perp$. C'est une erreur fréquente.
Dans l'exemple 1, $x=(1,2,1)$, $P_{F^\perp}(x)=(\frac{4}{3},\frac{4}{3},\frac{4}{3})$. La distance de $x$ à ce projeté est $\|(1,2,1)-(\frac{4}{3},\frac{4}{3},\frac{4}{3})\| = \|(-\frac{1}{3},\frac{2}{3},-\frac{1}{3})\| = \sqrt{1/9+4/9+1/9}=\sqrt{6}/3$. Ce n'est pas $d(x,F)$.

### Concepts Liés

- **Approximation** : Le théorème de la projection orthogonale est au cœur des théories de l'approximation (par exemple, les séries de Fourier sont des projections sur des sous-espaces de fonctions trigonométriques).
- **Moindres carrés** : application directe en statistique et en analyse de données.

---

## Concept 11: Adjoint d'un Endomorphisme

### Prérequis

- **Endomorphismes (applications linéaires d'un espace dans lui-même)**.
- **Produit scalaire**.
- **Représentation matricielle d'un endomorphisme**.

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien de dimension finie et $f: E \to E$ un endomorphisme.

L'**adjoint** de $f$, noté $f^*$, est l'unique endomorphisme de $E$ qui vérifie la relation suivante pour tous les vecteurs $x, y \in E$ :
$$ \langle f(x), y \rangle = \langle x, f^\*(y) \rangle $$

**Explication détaillée**

L'adjoint est un concept fondamental qui permet de "transférer" un endomorphisme d'un côté à l'autre d'un produit scalaire.

- Dans le cas **euclidien** ($\mathbb{K}=\mathbb{R}$), la relation est parfaitement symétrique.
- Dans le cas **hermitien** ($\mathbb{K}=\mathbb{C}$), il faut faire attention. La relation $\langle f(x), y \rangle = \langle x, f^*(y) \rangle$ est la convention la plus courante en mathématiques (linéarité à gauche). Certains physiciens utilisent une convention où le produit scalaire est linéaire à droite, ce qui change la définition de l'adjoint.

**Existence et Unicité** : Le cours prouve qu'un tel endomorphisme $f^*$ existe toujours et qu'il est unique. L'unicité vient du fait que si deux endomorphismes $f_1^*$ et $f_2^*$ vérifiaient la relation, alors $\langle x, f_1^*(y) - f_2^*(y) \rangle = 0$ pour tous $x,y$, ce qui implique $f_1^*(y) = f_2^*(y)$ car le produit scalaire est non dégénéré. L'existence est montrée par une construction explicite (par exemple via sa matrice dans une base orthonormée).

**Matrice de l'adjoint**
Si $\mathcal{B}$ est une base **orthonormée** de $E$, et si $A = \text{Mat}_{\mathcal{B}}(f)$ est la matrice de $f$ dans cette base, alors la matrice de l'adjoint $f^*$ est :

- Cas euclidien : $\text{Mat}_{\mathcal{B}}(f^*) = {}^tA$ (la **transposée** de A).
- Cas hermitien : $\text{Mat}_{\mathcal{B}}(f^*) = \overline{{}^tA}$ (la **transposée conjuguée** ou **adjointe** de A, notée aussi $A^\dagger$ ou $A^*$).

**ATTENTION** : Cette relation simple entre les matrices n'est vraie que dans une base **orthonormée**.

### Propriétés Clés

- $(f+g)^* = f^* + g^*$
- $(\lambda f)^* = \bar{\lambda} f^*$
- $(f \circ g)^* = g^* \circ f^*$ (l'ordre est inversé !)
- $(f^*)^* = f$
- $\text{Ker}(f^*) = (\text{Im}(f))^\perp$
- $\text{Im}(f^*) = (\text{Ker}(f))^\perp$

Ces deux dernières relations sont très utiles. Par exemple, elles impliquent que $f$ est injectif si et seulement si $f^*$ est surjectif.

### Exemples

**Exemple 1 : Adjoint d'une matrice réelle**
Soit $E=\mathbb{R}^2$ avec le produit scalaire usuel et la base canonique (orthonormée). Soit $f$ l'endomorphisme dont la matrice est $A = \begin{pmatrix} 1 & 2 \\ 3 & 4 \end{pmatrix}$.
L'adjoint $f^*$ a pour matrice $A^* = {}^tA = \begin{pmatrix} 1 & 3 \\ 2 & 4 \end{pmatrix}$.
Vérifions la définition avec $x=(1,0)$ et $y=(0,1)$.
$f(x) = (1,3)$. $\langle f(x), y \rangle = \langle (1,3), (0,1) \rangle = 3$.
$f^*(y) = (3,4)$. $\langle x, f^*(y) \rangle = \langle (1,0), (3,4) \rangle = 3$.
La relation est bien vérifiée.

**Exemple 2 : Adjoint d'une matrice complexe**
Soit $E=\mathbb{C}^2$ avec le produit scalaire usuel et la base canonique. Soit $f$ de matrice $A = \begin{pmatrix} 1 & i \\ 2-i & 0 \end{pmatrix}$.
L'adjoint $f^*$ a pour matrice $A^* = \overline{{}^tA} = \overline{\begin{pmatrix} 1 & 2-i \\ i & 0 \end{pmatrix}} = \begin{pmatrix} 1 & 2+i \\ -i & 0 \end{pmatrix}$.

**Exemple 3 : L'opérateur de dérivation**
Ce n'est pas en dimension finie, mais c'est un bon exemple. Soit $E$ l'espace des fonctions $C^\infty$ de $[0,1]$ dans $\mathbb{C}$ nulles en 0 et 1, avec $\langle f,g \rangle = \int_0^1 f(t)\overline{g(t)}dt$. Soit $D$ l'opérateur de dérivation $D(f)=f'$.
Calculons l'adjoint $D^*$ en utilisant une intégration par parties :
$\langle Df, g \rangle = \int_0^1 f'(t)\overline{g(t)}dt = [f(t)\overline{g(t)}]_0^1 - \int_0^1 f(t)\overline{g'(t)}dt$.
Comme les fonctions sont nulles aux bords, le premier terme est nul.
$\langle Df, g \rangle = - \int_0^1 f(t)\overline{g'(t)}dt = \langle f, -Dg \rangle$.
Donc, $D^* = -D$. L'opérateur est dit anti-autoadjoint.

### Contre-exemples

**Contre-exemple 1 : Matrice de l'adjoint dans une base non orthonormée**
Soit $E = \mathbb{R}^2$ avec le produit scalaire usuel. Prenons la base non orthonormée $\mathcal{B} = (v_1, v_2)$ avec $v_1=(1,0)$ et $v_2=(1,1)$.
Soit $f(x,y)=(y,x)$. Sa matrice dans la base canonique est $A=\begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix}$. Comme la base canonique est orthonormée, la matrice de $f^*$ est ${}^tA=A$. Donc $f^*=f$.
Cherchons la matrice de $f$ dans la base $\mathcal{B}$.
$f(v_1) = f(1,0)=(0,1) = -v_1+v_2$.
$f(v_2) = f(1,1)=(1,1) = v_2$.
Donc $\text{Mat}_\mathcal{B}(f) = B = \begin{pmatrix} -1 & 0 \\ 1 & 1 \end{pmatrix}$.
La matrice de $f^*$ dans cette base est aussi $B$.
Or ${}^tB = \begin{pmatrix} -1 & 1 \\ 0 & 1 \end{pmatrix} \neq B$. La relation $\text{Mat}(f^*) = {}^t\text{Mat}(f)$ est fausse.

### Concepts Liés

- **Endomorphismes remarquables** : La notion d'adjoint permet de définir des classes très importantes d'endomorphismes (autoadjoints, unitaires, normaux) qui sont au cœur de la théorie spectrale.

---

## Concept 12: Endomorphismes Remarquables (Auto-adjoint, Unitaire, Normal)

### Prérequis

- **Concept 11 : Adjoint d'un Endomorphisme**.
- **Isomorphismes**, **inverse d'un endomorphisme**.

### Définition

Soit $f$ un endomorphisme d'un espace euclidien ou hermitien $E$.

1.  **Endomorphisme auto-adjoint** : $f$ est dit **auto-adjoint** (ou **symétrique** dans le cas euclidien, **hermitien** dans le cas hermitien) si $f$ est égal à son propre adjoint :
    $$ f = f^_ $$
    Matriciellement, dans une base orthonormée, sa matrice $A$ vérifie $A = A^_$ (i.e., $A={}^tA$ en réel, $A=\overline{{}^tA}$ en complexe).

2.  **Endomorphisme unitaire (ou orthogonal)** : $f$ est dit **unitaire** (cas hermitien) ou **orthogonal** (cas euclidien) s'il est un isomorphisme et que son inverse est son adjoint :
    $$ f^{-1} = f^_ \iff f^_ \circ f = f \circ f^* = \text{Id}\_E $$
    Matriciellement, sa matrice $A$ dans une base orthonormée vérifie $A^*A = AA^\*=I$.

3.  **Endomorphisme normal** : $f$ est dit **normal** s'il commute avec son adjoint :
    $$ f \circ f^_ = f^_ \circ f $$
    Matriciellement, sa matrice $A$ dans une base orthonormée vérifie $AA^* = A^*A$.

**Explication détaillée**

Ces trois classes d'endomorphismes sont fondamentales car elles possèdent des propriétés spectrales (valeurs propres, vecteurs propres) très fortes.

- Les **endomorphismes auto-adjoints** sont la généralisation des nombres réels. Leurs valeurs propres sont toujours réelles. Ils sont diagonalisables dans une base orthonormée.

- Les **endomorphismes unitaires/orthogonaux** sont la généralisation des nombres complexes de module 1. Ils représentent les **isométries**, c'est-à-dire les transformations qui préservent le produit scalaire (et donc les longueurs et les angles).
  $\langle f(x), f(y) \rangle = \langle x, f^*(f(y)) \rangle = \langle x, y \rangle$.
  Géométriquement, ce sont les rotations, les réflexions, et leurs compositions. Leurs valeurs propres sont de module 1. Ils sont aussi diagonalisables (dans $\mathbb{C}$) dans une base orthonormée.

- Les **endomorphismes normaux** sont une classe plus générale qui contient les deux précédentes. Le théorème principal à leur sujet (le **théorème spectral**) dit qu'un endomorphisme est normal si et seulement si il est diagonalisable dans une base orthonormée (sur $\mathbb{C}$). C'est une propriété extrêmement puissante.

On a la relation d'inclusion :
{Auto-adjoints} $\subset$ {Normaux}
{Unitaires} $\subset$ {Normaux}

### Exemples

**Exemple 1 : Endomorphisme auto-adjoint**
Dans $\mathbb{R}^3$ muni de la base canonique, un endomorphisme de matrice $A = \begin{pmatrix} 1 & 2 & 3 \\ 2 & 4 & 5 \\ 3 & 5 & 6 \end{pmatrix}$ est auto-adjoint car $A$ est symétrique. Le projecteur orthogonal $P_F$ est un autre exemple fondamental d'endomorphisme auto-adjoint.

**Exemple 2 : Endomorphisme orthogonal (une rotation)**
Dans $\mathbb{R}^2$, la rotation d'angle $\theta$ a pour matrice $R_\theta = \begin{pmatrix} \cos\theta & -\sin\theta \\ \sin\theta & \cos\theta \end{pmatrix}$.
Son adjoint (sa transposée) est $R_\theta^* = \begin{pmatrix} \cos\theta & \sin\theta \\ -\sin\theta & \cos\theta \end{pmatrix} = R_{-\theta}$.
On vérifie bien que $R_\theta^* R_\theta = R_{-\theta} R_\theta = R_0 = I_2$. Donc $R_\theta$ est orthogonal.

**Exemple 3 : Endomorphisme normal mais ni auto-adjoint ni unitaire**
Dans $\mathbb{C}^2$, soit $f$ de matrice $A = \begin{pmatrix} 1 & 1 \\ 0 & 2 \end{pmatrix}$.
$A^* = \begin{pmatrix} 1 & 0 \\ 1 & 2 \end{pmatrix}$.
$AA^* = \begin{pmatrix} 1 & 1 \\ 0 & 2 \end{pmatrix}\begin{pmatrix} 1 & 0 \\ 1 & 2 \end{pmatrix} = \begin{pmatrix} 2 & 2 \\ 2 & 4 \end{pmatrix}$.
$A^*A = \begin{pmatrix} 1 & 0 \\ 1 & 2 \end{pmatrix}\begin{pmatrix} 1 & 1 \\ 0 & 2 \end{pmatrix} = \begin{pmatrix} 1 & 1 \\ 1 & 5 \end{pmatrix}$.
$AA^* \neq A^*A$, donc $f$ n'est pas normal.

Prenons $A = \begin{pmatrix} 1 & i \\ i & 1 \end{pmatrix}$.
$A^* = \begin{pmatrix} 1 & -i \\ -i & 1 \end{pmatrix}$.
$AA^* = \begin{pmatrix} 1 & i \\ i & 1 \end{pmatrix}\begin{pmatrix} 1 & -i \\ -i & 1 \end{pmatrix} = \begin{pmatrix} 1+1 & -i+i \\ i-i & 1+1 \end{pmatrix} = \begin{pmatrix} 2 & 0 \\ 0 & 2 \end{pmatrix}$.
$A^*A = \begin{pmatrix} 1 & -i \\ -i & 1 \end{pmatrix}\begin{pmatrix} 1 & i \\ i & 1 \end{pmatrix} = \begin{pmatrix} 1+1 & i-i \\ -i+i & 1+1 \end{pmatrix} = \begin{pmatrix} 2 & 0 \\ 0 & 2 \end{pmatrix}$.
$f$ est normal. Il n'est pas auto-adjoint ($A \neq A^*$) ni unitaire ($AA^* \neq I$).

### Contre-exemples

**Contre-exemple 1 : Non-normal**
L'endomorphisme de $\mathbb{R}^2$ de matrice $A = \begin{pmatrix} 1 & 1 \\ 0 & 1 \end{pmatrix}$ (une transvection).
$A^* = {}^tA = \begin{pmatrix} 1 & 0 \\ 1 & 1 \end{pmatrix}$.
$AA^* = \begin{pmatrix} 1 & 1 \\ 0 & 1 \end{pmatrix}\begin{pmatrix} 1 & 0 \\ 1 & 1 \end{pmatrix} = \begin{pmatrix} 2 & 1 \\ 1 & 1 \end{pmatrix}$.
$A^*A = \begin{pmatrix} 1 & 0 \\ 1 & 1 \end{pmatrix}\begin{pmatrix} 1 & 1 \\ 0 & 1 \end{pmatrix} = \begin{pmatrix} 1 & 1 \\ 1 & 2 \end{pmatrix}$.
Il n'est pas normal. Un tel endomorphisme n'est pas diagonalisable (même sur $\mathbb{C}$).

**Contre-exemple 2 : Unitaire mais pas autoadjoint**
La rotation d'angle $\pi/2$ dans $\mathbb{R}^2$ a pour matrice $A=\begin{pmatrix} 0 & -1 \\ 1 & 0 \end{pmatrix}$.
Elle est orthogonale (donc normale), mais pas symétrique ($A \neq {}^tA$).

### Concepts Liés

- **Théorème spectral** : Le principal résultat de ce chapitre (souvent vu dans le suivant) est que les endomorphismes normaux sont ceux qui sont diagonalisables dans une base orthonormée.
- **Diagonalisation / Réduction des endomorphismes**.

---

## Concept 13: Théorème de Représentation de Riesz

### Prérequis

- **Espace vectoriel dual ($E^*$)** : Connaissance de la définition de $E^* = \mathcal{L}(E, \mathbb{K})$, l'espace des formes linéaires sur $E$.
- **Produit scalaire**.

### Définition

**Théorème de Représentation de Riesz** :
Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien de dimension finie.
Pour toute forme linéaire $l \in E^*$, il existe un **unique** vecteur $y \in E$ tel que, pour tout $x \in E$ :
$$ l(x) = \langle x, y \rangle $$

**Explication détaillée**

Ce théorème établit une correspondance canonique (c'est-à-dire qui ne dépend pas du choix d'une base) entre un espace préhilbertien $E$ et son dual $E^*$. Il nous dit que toute forme linéaire (une application qui "mange" un vecteur et renvoie un scalaire) peut être "représentée" par un produit scalaire avec un vecteur fixe, spécialement choisi. Ce vecteur est parfois appelé le **vecteur de Riesz** associé à la forme linéaire.

L'application $\Phi: E \to E^*$ qui à un vecteur $y$ associe la forme linéaire $l_y(x) = \langle x, y \rangle$ est :

- **Linéaire** dans le cas euclidien.
- **Semi-linéaire (ou anti-linéaire)** dans le cas hermitien : $\Phi(\lambda y) = \bar{\lambda}\Phi(y)$. C'est un isomorphisme semi-linéaire.

La preuve du théorème repose sur le fait que cette application $\Phi$ est injective (car si $\Phi(y)=0$, alors $\langle x,y \rangle=0$ pour tout $x$, donc $y=0$) et que $E$ et $E^*$ ont la même dimension finie. Une application injective entre espaces de même dimension finie est un isomorphisme. Donc $\Phi$ est surjective, ce qui signifie que toute forme linéaire $l \in E^*$ est l'image d'un certain $y \in E$.

Ce théorème est l'un des plus fondamentaux de l'analyse fonctionnelle et il s'étend aux espaces de Hilbert de dimension infinie.

### Propriétés Clés

- L'isomorphisme entre $E$ et $E^*$ fourni par le théorème de Riesz est canonique.
- Il permet d'identifier l'espace et son dual. En pratique, cela permet de "transformer" des formes linéaires en vecteurs, et vice-versa.

### Exemples

**Exemple 1 : Forme linéaire "coordonnée" dans $\mathbb{R}^n$**
Soit $E=\mathbb{R}^n$ avec le produit scalaire usuel. Considérons la forme linéaire $l(x) = x_1$, qui donne la première coordonnée de $x$.
Quel est le vecteur $y$ tel que $l(x) = \langle x, y \rangle$ pour tout $x$ ?
On cherche $y=(y_1, \dots, y_n)$ tel que $x_1 = \sum_{i=1}^n x_i y_i$.
Cette égalité doit être vraie pour tout $x$.
Si on prend $x = e_1 = (1,0,\dots,0)$, on obtient $1 = y_1$.
Si on prend $x = e_2 = (0,1,\dots,0)$, on obtient $0 = y_2$.
Et ainsi de suite, on trouve $y_k=0$ pour $k>1$.
Le vecteur de Riesz est donc $y=e_1=(1,0,\dots,0)$.

**Exemple 2 : Forme linéaire "trace" sur les matrices**
Soit $E = M_n(\mathbb{R})$ l'espace des matrices carrées, avec le produit scalaire $\langle A, B \rangle = \text{Tr}({}^tAB)$.
Considérons la forme linéaire $l(A) = \text{Tr}(A)$.
On cherche une matrice $B$ telle que $l(A) = \langle A, B \rangle$ pour toute matrice $A$.
$\text{Tr}(A) = \text{Tr}({}^tAB)$.
On sait que $\text{Tr}(M) = \text{Tr}({}^tM)$. Donc $\text{Tr}({}^tAB) = \text{Tr}({}^t({}^tAB)) = \text{Tr}({}^tB A)$.
On a donc $\text{Tr}(A) = \text{Tr}({}^tB A)$. Pour que ceci soit vrai pour tout $A$, il faut que ${}^tB = I_n$, soit $B=I_n$.
Le représentant de Riesz de la forme trace est la matrice identité.

**Exemple 3 : Forme linéaire "évaluation" sur les polynômes**
Soit $E = \mathbb{R}_1[X]$ avec le produit scalaire $\langle P, Q \rangle = \int_0^1 P(t)Q(t)dt$.
Considérons la forme linéaire $l(P) = P(0)$ (évaluation en 0).
On cherche un polynôme $Q_0(t) = at+b$ tel que $P(0) = \int_0^1 P(t)(at+b)dt$ pour tout $P \in \mathbb{R}_1[X]$.
Il suffit de tester sur une base de $\mathbb{R}_1[X]$, par exemple $(1, t)$.
Pour $P(t)=1$, $P(0)=1$. On doit avoir $1 = \int_0^1 1 \cdot (at+b)dt = [at^2/2+bt]_0^1 = a/2+b$.
Pour $P(t)=t$, $P(0)=0$. On doit avoir $0 = \int_0^1 t \cdot (at+b)dt = [at^3/3+bt^2/2]_0^1 = a/3+b/2$.
On a un système de deux équations :
$a/2+b=1$
$a/3+b/2=0 \implies 2a+3b=0 \implies a = -3b/2$.
En remplaçant dans la première : $(-3b/2)/2+b=1 \implies -3b/4+b=1 \implies b/4=1 \implies b=4$.
Alors $a=-3(4)/2=-6$.
Le polynôme de Riesz est $Q_0(t) = -6t+4$.

### Contre-exemples

Le théorème est toujours vrai en dimension finie.

**Contre-exemple 1 : Unicité**
L'unicité est cruciale. S'il existait deux vecteurs $y_1, y_2$ représentant la même forme $l$, on aurait $\langle x, y_1 \rangle = \langle x, y_2 \rangle$ pour tout $x$, soit $\langle x, y_1-y_2 \rangle = 0$. En choisissant $x=y_1-y_2$, on aurait $\|y_1-y_2\|^2=0$, donc $y_1=y_2$. Il ne peut y avoir deux représentants distincts.

**Contre-exemple 2 : Mauvais produit scalaire sur $\mathbb{C}^n$**
Si sur $\mathbb{C}^n$ on utilisait la forme bilinéaire $\varphi(z,w)=\sum z_i w_i$, l'application $\Phi: w \mapsto \varphi(\cdot, w)$ serait linéaire et non semi-linéaire. L'isomorphisme entre $E$ et $E^*$ serait différent. L'énoncé du théorème de Riesz est intimement lié à la structure sesquilinéaire du produit scalaire hermitien.

### Concepts Liés

- **Espace dual** : Ce théorème donne une incarnation concrète des objets abstraits que sont les formes linéaires.
- **Analyse fonctionnelle** : Le théorème de Riesz est un pilier de l'étude des espaces de Hilbert, qui sont la généralisation en dimension infinie des espaces euclidiens/hermitiens.
- **Tenseurs** : En physique et en géométrie différentielle, ce théorème est la première étape pour comprendre comment "monter et descendre les indices" des tenseurs à l'aide d'une métrique.
