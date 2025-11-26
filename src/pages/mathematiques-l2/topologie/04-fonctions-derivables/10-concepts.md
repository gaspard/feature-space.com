---
id: 66b08191
type: concepts
order: 10
title: >-
  Fonctions différentiables -
  concepts (A)
tags:
  - Topologie
  - Calcul Différentiel
  - Mathématiques
  - Sorbonne Université
  - Fonctions de plusieurs variables
course: Topologie
courseId: 34e61f8e
chapter: 'Fonctions différentiables'
chapterId: df863ee3
level: regular
createdAt: '2025-11-26T16:10:38.790Z'
---
# Fonctions différentiables (A)

---

## Concept 1: Fonction Différentiable

### Prérequis

- **Calculus I**: Dérivée d'une fonction d'une variable réelle, développement limité d'ordre 1.
- **Topologie**: Espaces vectoriels normés, notion d'ouvert, limites et continuité des fonctions de plusieurs variables.
- **Algèbre Linéaire**: Applications linéaires et leur représentation matricielle.

### Définition

Soit $U$ un ouvert de $\mathbb{R}^n$ et $f : U \rightarrow \mathbb{R}^p$ une fonction. On dit que $f$ est **différentiable** au point $a \in U$ s'il existe une application linéaire $L_a : \mathbb{R}^n \rightarrow \mathbb{R}^p$ telle que pour tout vecteur $h \in \mathbb{R}^n$ tel que $a+h \in U$, on ait :

$$f(a+h) = f(a) + L_a(h) + o(\|h\|)$$

où $o(\|h\|)$ désigne une fonction $R(h)$ telle que $\lim_{h \to 0} \frac{\|R(h)\|}{\|h\|} = 0$.

De manière plus formelle, cela s'écrit :

$$f(a+h) = f(a) + L_a(h) + \epsilon_a(h)\|h\|$$

où la fonction $\epsilon_a : \mathbb{R}^n \rightarrow \mathbb{R}^p$ vérifie $\lim_{h \to 0} \epsilon_a(h) = 0_{\mathbb{R}^p}$.

L'application linéaire $L_a$ est alors unique et est appelée la **différentielle** de $f$ au point $a$, notée $df_a$.

### Explications Détaillées

En calcul à une variable, la dérivée $f'(a)$ est un nombre qui permet d'approximer la fonction $f$ au voisinage de $a$ par une droite (la tangente) : $f(a+h) \approx f(a) + f'(a)h$. L'idée de la différentiabilité est de généraliser cette notion d'approximation locale par une fonction "simple".

Pour une fonction de plusieurs variables $f: \mathbb{R}^n \to \mathbb{R}^p$, une simple multiplication par un nombre ne suffit plus. L'objet le plus simple pour approximer localement une fonction est une **application affine**, c'est-à-dire une application de la forme $x \mapsto C + L(x)$, où $L$ est une application linéaire.

La définition de la différentiabilité stipule qu'une fonction $f$ est différentiable en $a$ si, au voisinage de ce point, elle peut être très bien approximée par l'application affine $x \mapsto f(a) + L_a(x-a)$. L'application linéaire $L_a$ (la différentielle $df_a$) est la "meilleure" approximation linéaire de la variation de $f$ autour de $a$, c'est-à-dire de $f(a+h)-f(a)$.

Le terme d'erreur $\epsilon_a(h)\|h\|$ devient négligeable par rapport à la partie linéaire $L_a(h)$ lorsque $h$ est petit. Plus précisément, l'erreur tend vers zéro "plus vite" que $\|h\|$, ce qui garantit que l'approximation est de très bonne qualité pour des petits accroissements $h$.

Le choix de la norme n'a pas d'importance car toutes les normes sur $\mathbb{R}^n$ sont équivalentes.

### Propriétés Clés

- **Unicité de la différentielle**: Si une telle application linéaire $L_a$ existe, elle est unique. On peut donc parler de *la* différentielle de $f$ en $a$, notée $df_a$.
- **Différentiabilité des composantes**: Une fonction $f = (f_1, \dots, f_p)$ est différentiable en $a$ si et seulement si chacune de ses fonctions composantes $f_i : U \to \mathbb{R}$ est différentiable en $a$.
- **La différentiabilité implique la continuité**: Si une fonction $f$ est différentiable en un point $a$, alors elle est nécessairement continue en ce point. La réciproque est fausse.

### Exemples

**Exemple 1 : Fonction affine**

Soit $f: \mathbb{R}^n \to \mathbb{R}^p$ une fonction affine, définie par $f(x) = M x + b$, où $M$ est une matrice de taille $p \times n$ et $b \in \mathbb{R}^p$. Montrons que $f$ est différentiable en tout point $a \in \mathbb{R}^n$.

On calcule $f(a+h) = M(a+h) + b = (Ma+b) + Mh = f(a) + Mh$.

En posant $L_a(h) = Mh$, qui est bien une application linéaire, on a :

$$f(a+h) = f(a) + L_a(h) + 0$$

Le terme d'erreur est nul. La définition est donc satisfaite en tout point $a$, et la différentielle est l'application linéaire $h \mapsto Mh$, c'est-à-dire $df_a(h) = Mh$.

**Exemple 2 : Fonction quadratique simple**

Soit $f: \mathbb{R}^2 \to \mathbb{R}$ définie par $f(x,y) = x^2+y^2$. Montrons qu'elle est différentiable au point $a=(a_1, a_2)$. Soit $h=(h_1, h_2)$.

$$f(a+h) = f(a_1+h_1, a_2+h_2) = (a_1+h_1)^2 + (a_2+h_2)^2$$

$$= (a_1^2 + 2a_1h_1 + h_1^2) + (a_2^2 + 2a_2h_2 + h_2^2)$$

$$= (a_1^2+a_2^2) + (2a_1h_1 + 2a_2h_2) + (h_1^2 + h_2^2)$$

$$= f(a) + L_a(h) + \|h\|_2^2$$

Ici, $L_a(h) = 2a_1h_1 + 2a_2h_2$ est une application linéaire en $h=(h_1, h_2)$. Le terme d'erreur est $R(h) = h_1^2+h_2^2 = \|h\|_2^2$.

Vérifions que c'est un $o(\|h\|)$. On utilise une norme quelconque, par exemple $\|h\|_2 = \sqrt{h_1^2+h_2^2}$.

$$ \lim_{h \to 0} \frac{|R(h)|}{\|h\|_2} = \lim_{h \to 0} \frac{\|h\|_2^2}{\|h\|_2} = \lim_{h \to 0} \|h\|_2 = 0 $$

La fonction est donc différentiable en $a$, et sa différentielle est $df_a(h_1,h_2) = 2a_1h_1 + 2a_2h_2$.

**Exemple 3 : Fonction de $\mathbb{R}$ dans $\mathbb{R}^2$**

Soit $f: \mathbb{R} \to \mathbb{R}^2$ définie par $f(t) = (\cos(t), \sin(t))$. Cette fonction décrit un cercle.

Une fonction de $\mathbb{R}$ dans $\mathbb{R}^p$ est différentiable si et seulement si ses composantes sont dérivables (au sens usuel).

Ici, $f_1(t) = \cos(t)$ et $f_2(t) = \sin(t)$ sont dérivables sur $\mathbb{R}$, avec $f_1'(t) = -\sin(t)$ et $f_2'(t) = \sin'(t) = \cos(t)$.

Donc $f$ est différentiable. Sa différentielle en $a \in \mathbb{R}$ est l'application linéaire $df_a : \mathbb{R} \to \mathbb{R}^2$ définie par :

$$df_a(h) = h \cdot \begin{pmatrix} f_1'(a) \\ f_2'(a) \end{pmatrix} = h \begin{pmatrix} -\sin(a) \\ \cos(a) \end{pmatrix}$$

### Contre-exemples

**Contre-exemple 1 : Fonction non continue**

Soit $f : \mathbb{R}^2 \rightarrow \mathbb{R}$ définie par

$$f(x,y) = \begin{cases} \frac{xy}{x^2+y^2} & \text{si } (x,y) \neq (0,0) \\ 0 & \text{si } (x,y) = (0,0) \end{cases}$$

Cette fonction n'est pas continue en $(0,0)$ (en s'approchant de l'origine le long de la droite $y=x$, la limite est $1/2 \neq f(0,0)$). Puisque la différentiabilité implique la continuité, $f$ ne peut pas être différentiable en $(0,0)$.

**Contre-exemple 2 : Fonction avec un "coin"**

Soit $f: \mathbb{R}^2 \to \mathbb{R}$ définie par $f(x,y) = |x| + |y|$. Cette fonction est continue en $(0,0)$.

Cherchons s'il existe une application linéaire $L(h_1, h_2) = c_1 h_1 + c_2 h_2$ telle que :

$$f(h_1, h_2) = f(0,0) + L(h_1, h_2) + o(\|h\|)$$

$$|h_1| + |h_2| = 0 + c_1 h_1 + c_2 h_2 + o(\|h\|)$$

Si on prend $h=(t, 0)$ avec $t>0$, on a $t = c_1 t + o(t)$, ce qui donne $c_1=1$ en divisant par $t$ et en faisant $t \to 0$.

Si on prend $h=(t, 0)$ avec $t<0$, on a $-t = c_1 t + o(t)$, ce qui donne $c_1=-1$.

Il est impossible d'avoir $c_1=1$ et $c_1=-1$ en même temps. Donc, il n'existe pas d'application linéaire qui convienne. La fonction n'est pas différentiable en $(0,0)$.

### Concepts Liés

- **Continuité**: La différentiabilité est une condition plus forte que la continuité.
- **Dérivée Partielle et Matrice Jacobienne**: La différentielle $df_a$, si elle existe, est représentée par la matrice Jacobienne, dont les coefficients sont les dérivées partielles de $f$ en $a$. C'est le lien entre le concept abstrait de différentielle et son calcul pratique.

---

## Concept 2: Dérivée Partielle

### Prérequis

- **Calculus I**: Définition de la dérivée d'une fonction d'une variable réelle et techniques de dérivation.
- **Fonctions de plusieurs variables**: Compréhension du domaine de définition et de la notation $f(x_1, \dots, x_n)$.

### Définition

Soit $f$ une fonction définie sur un ouvert $U \subset \mathbb{R}^n$ à valeurs dans $\mathbb{R}^p$. Soit $a = (a_1, \dots, a_n) \in U$.

On dit que $f$ admet une **dérivée partielle par rapport à sa $k$-ième variable** (pour $k \in \{1, \dots, n\}$) au point $a$ si la limite suivante existe :

$$ \lim_{t \to 0} \frac{f(a_1, \dots, a_k+t, \dots, a_n) - f(a_1, \dots, a_n)}{t} $$

Lorsque cette limite existe, on la note $\frac{\partial f}{\partial x_k}(a)$ ou $\partial_k f(a)$. C'est un vecteur de $\mathbb{R}^p$.

### Explications Détaillées

L'idée de la dérivée partielle est très intuitive. Pour comprendre comment une fonction de plusieurs variables change, on peut simplifier le problème en ne faisant varier qu'une seule variable à la fois, tout en considérant les autres comme des constantes.

Calculer la dérivée partielle $\frac{\partial f}{\partial x_k}(a)$ revient à :

1.  **Fixer** toutes les variables de $f$ sauf la $k$-ième, $x_k$. On obtient une fonction d'une seule variable, $t \mapsto g(t) = f(a_1, \dots, a_{k-1}, t, a_{k+1}, \dots, a_n)$.
2.  **Dériver** cette fonction $g(t)$ de la manière habituelle par rapport à $t$.
3.  **Évaluer** cette dérivée au point $t=a_k$.

La dérivée partielle $\frac{\partial f}{\partial x_k}(a)$ mesure le taux de variation instantané de $f$ au point $a$ lorsqu'on se déplace dans la direction de l'axe des $x_k$. Si $f$ est à valeurs dans $\mathbb{R}^p$, ses dérivées partielles sont aussi des vecteurs de $\mathbb{R}^p$. Le calcul se fait alors composante par composante.

### Propriétés Clés

- **Règles de calcul**: Les règles de dérivation usuelles (somme, produit, quotient, composition de fonctions d'une variable) s'appliquent directement au calcul des dérivées partielles, en traitant les autres variables comme des constantes.
- **Linéarité**: L'opérateur de dérivation partielle est linéaire :

  $$ \frac{\partial}{\partial x_k} (f + \lambda g)(a) = \frac{\partial f}{\partial x_k}(a) + \lambda \frac{\partial g}{\partial x_k}(a) $$

### Exemples

**Exemple 1 : Fonction polynomiale**

Soit $f: \mathbb{R}^3 \to \mathbb{R}$ définie par $f(x,y,z) = x^2 y^3 + 5yz^2 - \cos(x)$.

- **Dérivée partielle par rapport à $x$**: On traite $y$ et $z$ comme des constantes.

  $$ \frac{\partial f}{\partial x}(x,y,z) = \frac{\partial}{\partial x}(x^2 y^3) + \frac{\partial}{\partial x}(5yz^2) - \frac{\partial}{\partial x}(\cos(x)) = 2x \cdot y^3 + 0 - (-\sin(x)) = 2xy^3 + \sin(x) $$

- **Dérivée partielle par rapport à $y$**: On traite $x$ et $z$ comme des constantes.

  $$ \frac{\partial f}{\partial y}(x,y,z) = x^2 \cdot (3y^2) + 5z^2 \cdot (1) - 0 = 3x^2y^2 + 5z^2 $$

- **Dérivée partielle par rapport à $z$**: On traite $x$ et $y$ comme des constantes.

  $$ \frac{\partial f}{\partial z}(x,y,z) = 0 + 5y \cdot (2z) - 0 = 10yz $$

**Exemple 2 : Fonction vectorielle**

Soit $g : \mathbb{R}^2 \rightarrow \mathbb{R}^2$ définie par $g(x,y) = \begin{pmatrix} x^2 + y^4 \\ \sin(ye^x) \end{pmatrix}$.

On calcule les dérivées partielles pour chaque composante.

- **Dérivée partielle par rapport à $x$**:

  $$ \frac{\partial g}{\partial x}(x,y) = \begin{pmatrix} \frac{\partial}{\partial x}(x^2 + y^4) \\ \frac{\partial}{\partial x}(\sin(ye^x)) \end{pmatrix} = \begin{pmatrix} 2x \\ \cos(ye^x) \cdot \frac{\partial}{\partial x}(ye^x) \end{pmatrix} = \begin{pmatrix} 2x \\ ye^x \cos(ye^x) \end{pmatrix} $$

- **Dérivée partielle par rapport à $y$**:

  $$ \frac{\partial g}{\partial y}(x,y) = \begin{pmatrix} \frac{\partial}{\partial y}(x^2 + y^4) \\ \frac{\partial}{\partial y}(\sin(ye^x)) \end{pmatrix} = \begin{pmatrix} 4y^3 \\ \cos(ye^x) \cdot \frac{\partial}{\partial y}(ye^x) \end{pmatrix} = \begin{pmatrix} 4y^3 \\ e^x \cos(ye^x) \end{pmatrix} $$

**Exemple 3 : Utilisation de la définition**

Soit $f : \mathbb{R}^2 \rightarrow \mathbb{R}$ définie par $f(x,y) = \begin{cases} \frac{x^3}{x^2+y^2} & \text{si } (x,y) \neq (0,0) \\ 0 & \text{si } (x,y) = (0,0) \end{cases}$.

Calculons les dérivées partielles en $(0,0)$ en utilisant la définition.

- **Par rapport à $x$**:

  $$ \frac{\partial f}{\partial x}(0,0) = \lim_{t \to 0} \frac{f(t,0) - f(0,0)}{t} = \lim_{t \to 0} \frac{t^3/(t^2+0^2) - 0}{t} = \lim_{t \to 0} \frac{t^2}{t} = \lim_{t \to 0} t = 0 $$

- **Par rapport à $y$**:

  $$ \frac{\partial f}{\partial y}(0,0) = \lim_{t \to 0} \frac{f(0,t) - f(0,0)}{t} = \lim_{t \to 0} \frac{0^3/(0^2+t^2) - 0}{t} = \lim_{t \to 0} \frac{0}{t} = 0 $$

Les deux dérivées partielles existent en $(0,0)$ et sont nulles.

### Contre-exemples

**Contre-exemple 1 : L'existence des dérivées partielles n'implique pas la continuité**

Reprenons la fonction $f(x,y) = \frac{xy}{x^2+y^2}$ pour $(x,y) \neq (0,0)$ et $f(0,0)=0$.

Calculons les dérivées partielles en $(0,0)$ :

$$ \frac{\partial f}{\partial x}(0,0) = \lim_{t \to 0} \frac{f(t,0) - f(0,0)}{t} = \lim_{t \to 0} \frac{0 - 0}{t} = 0 $$

$$ \frac{\partial f}{\partial y}(0,0) = \lim_{t \to 0} \frac{f(0,t) - f(0,0)}{t} = \lim_{t \to 0} \frac{0 - 0}{t} = 0 $$

Les deux dérivées partielles existent à l'origine. Cependant, comme nous l'avons vu, la fonction n'est même pas continue en $(0,0)$.

**Contre-exemple 2 : Une dérivée partielle peut ne pas exister**

Soit $f(x,y) = \sqrt{x^2+y^2}$ (la norme euclidienne).

En dehors de $(0,0)$, les dérivées partielles existent : $\frac{\partial f}{\partial x} = \frac{x}{\sqrt{x^2+y^2}}$.

Essayons de calculer la dérivée partielle par rapport à $x$ en $(0,0)$ :

$$ \lim_{t \to 0} \frac{f(t,0) - f(0,0)}{t} = \lim_{t \to 0} \frac{\sqrt{t^2+0^2} - 0}{t} = \lim_{t \to 0} \frac{|t|}{t} $$

Cette limite n'existe pas (elle vaut 1 pour $t \to 0^+$ et -1 pour $t \to 0^-$). Donc, $\frac{\partial f}{\partial x}(0,0)$ n'existe pas.

### Concepts Liés

- **Fonction Différentiable**: Si une fonction est différentiable en un point, alors toutes ses dérivées partielles existent en ce point. La réciproque est fausse.
- **Matrice Jacobienne**: C'est la matrice qui contient toutes les dérivées partielles d'une fonction vectorielle.
- **Gradient**: Pour une fonction à valeurs réelles, le gradient est le vecteur de ses dérivées partielles.

---

## Concept 3: Matrice Jacobienne

### Prérequis

- **Dérivée Partielle**: Savoir calculer les dérivées partielles d'une fonction.
- **Algèbre Linéaire**: Matrices, multiplication matricielle.
- **Fonction Différentiable**: Définition de la différentielle.

### Définition

Soit $f: U \subset \mathbb{R}^n \to \mathbb{R}^p$ une fonction définie sur un ouvert $U$. On suppose que $f$ admet des dérivées partielles par rapport à toutes ses variables en un point $a \in U$. Les composantes de $f$ sont notées $f = (f_1, \dots, f_p)$.

La **matrice jacobienne** de $f$ au point $a$, notée $J_f(a)$, est la matrice de taille $p \times n$ dont les coefficients sont les dérivées partielles des fonctions composantes $f_i$ par rapport aux variables $x_j$ :

$$

J_f(a) = \begin{pmatrix}

\frac{\partial f_1}{\partial x_1}(a) & \frac{\partial f_1}{\partial x_2}(a) & \cdots & \frac{\partial f_1}{\partial x_n}(a) \\

\frac{\partial f_2}{\partial x_1}(a) & \frac{\partial f_2}{\partial x_2}(a) & \cdots & \frac{\partial f_2}{\partial x_n}(a) \\

\vdots & \vdots & \ddots & \vdots \\

\frac{\partial f_p}{\partial x_1}(a) & \frac{\partial f_p}{\partial x_2}(a) & \cdots & \frac{\partial f_p}{\partial x_n}(a)

\end{pmatrix}

$$

L'élément à la ligne $i$ et la colonne $j$ est $(J_f(a))_{ij} = \frac{\partial f_i}{\partial x_j}(a)$.

### Explications Détaillées

La matrice jacobienne est l'outil qui concrétise la notion de différentielle. Si une fonction $f$ est différentiable en $a$, sa différentielle $df_a$ est une application linéaire de $\mathbb{R}^n$ dans $\mathbb{R}^p$. Comme toute application linéaire entre ces espaces, elle peut être représentée par une matrice. Cette matrice est précisément la matrice jacobienne $J_f(a)$.

**Comment se souvenir de sa structure ?**

- **Nombre de lignes ($p$)** = dimension de l'espace d'arrivée ($\mathbb{R}^p$). Chaque ligne correspond à une fonction composante $f_i$.
- **Nombre de colonnes ($n$)** = dimension de l'espace de départ ($\mathbb{R}^n$). Chaque colonne correspond à une variable de départ $x_j$.

La matrice jacobienne rassemble toute l'information sur les variations de $f$ au premier ordre le long des directions des axes de coordonnées.

### Propriétés Clés

- **Représentation de la différentielle**: (Théorème 4.10) Si $f$ est différentiable en $a$, alors sa différentielle $df_a$ est l'application linéaire dont la matrice dans les bases canoniques est $J_f(a)$. On a pour tout vecteur $h \in \mathbb{R}^n$ :

  $$ df_a(h) = J_f(a) h $$

  où $h$ est vu comme un vecteur colonne.

- **Développement limité d'ordre 1**: Si $f$ est différentiable en $a$, on peut écrire :

  $$ f(a+h) = f(a) + J_f(a)h + o(\|h\|) $$

  Ceci est la formulation la plus pratique de la différentiabilité.

### Exemples

**Exemple 1 : Fonction de $\mathbb{R}^3$ dans $\mathbb{R}^2$**

Soit $f: \mathbb{R}^3 \to \mathbb{R}^2$ définie par $f(x,y,z) = (x^2y, \sin(z)+y)$.

Ici $n=3, p=2$. La jacobienne sera une matrice $2 \times 3$.

Les composantes sont $f_1(x,y,z) = x^2y$ et $f_2(x,y,z) = \sin(z)+y$.

Calculons les dérivées partielles :

- $\frac{\partial f_1}{\partial x} = 2xy$, $\frac{\partial f_1}{\partial y} = x^2$, $\frac{\partial f_1}{\partial z} = 0$
- $\frac{\partial f_2}{\partial x} = 0$, $\frac{\partial f_2}{\partial y} = 1$, $\frac{\partial f_2}{\partial z} = \cos(z)$

La matrice jacobienne en un point $(x,y,z)$ est :

$$ J_f(x,y,z) = \begin{pmatrix} 2xy & x^2 & 0 \\ 0 & 1 & \cos(z) \end{pmatrix} $$

Par exemple, au point $a=(1,2,0)$, on a $J_f(1,2,0) = \begin{pmatrix} 4 & 1 & 0 \\ 0 & 1 & 1 \end{pmatrix}$.

**Exemple 2 : Coordonnées polaires**

Considérons la fonction $P: \mathbb{R}^2 \to \mathbb{R}^2$ qui convertit les coordonnées polaires en coordonnées cartésiennes : $P(r, \theta) = (r\cos\theta, r\sin\theta)$.

Ici $n=2, p=2$. Les variables sont $(r, \theta)$ et les composantes sont $x(r, \theta) = r\cos\theta$ et $y(r, \theta) = r\sin\theta$.

- $\frac{\partial x}{\partial r} = \cos\theta$, $\frac{\partial x}{\partial \theta} = -r\sin\theta$
- $\frac{\partial y}{\partial r} = \sin\theta$, $\frac{\partial y}{\partial \theta} = r\cos\theta$

La matrice jacobienne est :

$$ J_P(r,\theta) = \begin{pmatrix} \cos\theta & -r\sin\theta \\ \sin\theta & r\cos\theta \end{pmatrix} $$

Le déterminant de cette matrice est $\det(J_P(r,\theta)) = r\cos^2\theta - (-r\sin^2\theta) = r$, qui est le facteur de changement d'aire pour les intégrales en coordonnées polaires.

**Exemple 3 : Fonction à valeurs réelles (cas du Gradient)**

Soit $g: \mathbb{R}^n \to \mathbb{R}$. Ici $p=1$. La matrice jacobienne est une matrice $1 \times n$, c'est-à-dire un vecteur ligne.

$$ J_g(a) = \begin{pmatrix} \frac{\partial g}{\partial x_1}(a) & \frac{\partial g}{\partial x_2}(a) & \cdots & \frac{\partial g}{\partial x_n}(a) \end{pmatrix} $$

Cette matrice est la transposée du vecteur gradient $\nabla g(a)$.

### Contre-exemples

**Contre-exemple 1 : L'existence de la Jacobienne n'implique pas la différentiabilité**

Reprenons la fonction $f(x,y) = \frac{xy}{x^2+y^2}$ pour $(x,y) \neq (0,0)$ et $f(0,0)=0$.

Nous avons vu que $\frac{\partial f}{\partial x}(0,0) = 0$ et $\frac{\partial f}{\partial y}(0,0) = 0$.

La matrice jacobienne en $(0,0)$ existe donc et est la matrice nulle : $J_f(0,0) = \begin{pmatrix} 0 & 0 \end{pmatrix}$.

Cependant, la fonction n'est pas différentiable en $(0,0)$ car elle n'y est pas continue.

**Contre-exemple 2 : Mauvais usage de la Jacobienne**

Il est crucial de ne pas confondre l'existence de la Jacobienne avec la différentiabilité. Si une fonction n'est pas différentiable, la formule $f(a+h) \approx f(a) + J_f(a)h$ peut donner une très mauvaise approximation. Pour la fonction précédente, l'approximation serait $f(h) \approx f(0) + J_f(0)h = 0 + 0 = 0$. Or, sur la droite $y=x$, la fonction vaut $1/2$, ce qui est loin de 0.

### Concepts Liés

- **Fonction Différentiable**: La jacobienne est la représentation matricielle de la différentielle.
- **Dérivée Partielle**: Les entrées de la jacobienne sont les dérivées partielles.
- **Règle de la chaîne (Chain Rule)**: La différentiation des fonctions composées se traduit élégamment par un produit des matrices jacobiennes.
- **Gradient**: Pour une fonction scalaire, le gradient est la transposée de la matrice jacobienne.

---

## Concept 4: Fonction de Classe $\mathcal{C}^1$

### Prérequis

- **Dérivée Partielle**: Savoir calculer les dérivées partielles.
- **Continuité**: Comprendre la continuité des fonctions de plusieurs variables.

### Définition

Une fonction $f : U \subset \mathbb{R}^n \to \mathbb{R}^p$, définie sur un ouvert $U$, est dite de **classe $\mathcal{C}^1$** sur $U$ si :

1.  $f$ admet des dérivées partielles par rapport à toutes ses variables en tout point de $U$.
2.  Chacune de ces fonctions dérivées partielles $a \mapsto \frac{\partial f}{\partial x_k}(a)$ est continue sur $U$.

L'ensemble des fonctions de classe $\mathcal{C}^1$ sur $U$ à valeurs dans $\mathbb{R}^p$ est noté $\mathcal{C}^1(U; \mathbb{R}^p)$.

### Explications Détaillées

Être de classe $\mathcal{C}^1$ est une condition de régularité plus forte que la simple existence des dérivées partielles ou même que la différentiabilité. Cela signifie non seulement que la fonction peut être approchée localement par une application affine (différentiabilité), mais aussi que cette approximation linéaire (la différentielle, ou matrice jacobienne) varie de manière continue lorsque l'on se déplace dans le domaine.

En pratique, pour vérifier qu'une fonction est de classe $\mathcal{C}^1$, on suit deux étapes :

1.  On calcule formellement toutes ses dérivées partielles $\frac{\partial f_i}{\partial x_j}$.
2.  On étudie la continuité de chacune des fonctions obtenues. Si elles sont toutes continues sur le domaine $U$, alors la fonction est de classe $\mathcal{C}^1$. Les fonctions usuelles (polynômes, sin, cos, exp, log) et leurs compositions donnent généralement des fonctions $\mathcal{C}^1$ sur leur domaine de définition.

La hiérarchie de la régularité est la suivante :

$$ \text{Classe } \mathcal{C}^1 \implies \text{Différentiable} \implies \left\{ \begin{array}{c} \text{Continue} \\ \text{Existence des dérivées partielles} \end{array} \right. $$

**Attention, aucune des implications inverses n'est vraie !**

### Propriétés Clés

- **Théorème fondamental (Théorème 4.14)**: **Si une fonction est de classe $\mathcal{C}^1$ sur un ouvert $U$, alors elle est différentiable en tout point de $U$.**

  C'est le résultat le plus important concernant les fonctions $\mathcal{C}^1$. Il fournit un critère pratique et puissant pour prouver qu'une fonction est différentiable, ce qui est souvent plus simple que de revenir à la définition de la différentiabilité.

- **Stabilité par opérations**: L'ensemble $\mathcal{C}^1(U; \mathbb{R}^p)$ est un espace vectoriel. De plus, le produit et la composition de fonctions de classe $\mathcal{C}^1$ (quand c'est possible) sont aussi de classe $\mathcal{C}^1$.

### Exemples

**Exemple 1 : Fonction polynomiale**

Soit $f(x,y) = x^3 - 3xy^2 + y$ sur $\mathbb{R}^2$.

1.  **Calcul des dérivées partielles**:

    $$ \frac{\partial f}{\partial x}(x,y) = 3x^2 - 3y^2 $$

    $$ \frac{\partial f}{\partial y}(x,y) = -6xy + 1 $$

2.  **Continuité des dérivées partielles**:

    Les fonctions $(x,y) \mapsto 3x^2 - 3y^2$ et $(x,y) \mapsto -6xy + 1$ sont des fonctions polynomiales en $x$ et $y$. Elles sont donc continues sur $\mathbb{R}^2$.

    Conclusion : $f$ est de classe $\mathcal{C}^1$ sur $\mathbb{R}^2$. Par le théorème fondamental, $f$ est aussi différentiable sur $\mathbb{R}^2$.

**Exemple 2 : Fonction avec un sinus**

Soit $f(x,y,z) = -2x \cos(y)$ sur $\mathbb{R}^3$.

1.  **Calcul des dérivées partielles**:

    $$ \frac{\partial f}{\partial x}(x,y,z) = -2\cos(y) $$

    $$ \frac{\partial f}{\partial y}(x,y,z) = -2x(-\sin(y)) = 2x\sin(y) $$

    $$ \frac{\partial f}{\partial z}(x,y,z) = 0 $$

2.  **Continuité des dérivées partielles**:
    - $(x,y,z) \mapsto -2\cos(y)$ est continue car c'est la composition d'une projection et de la fonction cosinus.
    - $(x,y,z) \mapsto 2x\sin(y)$ est continue comme produit de fonctions continues.
    - $(x,y,z) \mapsto 0$ est une fonction constante, donc continue.

    Conclusion : $f$ est de classe $\mathcal{C}^1$ sur $\mathbb{R}^3$.

**Exemple 3 : Une fonction vectorielle**

Soit $g(x,y) = (e^{x+y}, \ln(1+x^2))$ sur $\mathbb{R}^2$.

Les composantes sont $g_1(x,y) = e^{x+y}$ et $g_2(x,y) = \ln(1+x^2)$.

- Pour $g_1$: $\frac{\partial g_1}{\partial x} = e^{x+y}$ et $\frac{\partial g_1}{\partial y} = e^{x+y}$. Ces fonctions sont continues sur $\mathbb{R}^2$.
- Pour $g_2$: $\frac{\partial g_2}{\partial x} = \frac{2x}{1+x^2}$ et $\frac{\partial g_2}{\partial y} = 0$. Ces fonctions sont continues sur $\mathbb{R}^2$.

Toutes les dérivées partielles des composantes sont continues, donc $g$ est de classe $\mathcal{C}^1$ sur $\mathbb{R}^2$.

### Contre-exemples

**Contre-exemple 1 : Différentiable mais pas $\mathcal{C}^1$**

Considérons la fonction $f: \mathbb{R} \to \mathbb{R}$ définie par $f(x) = x^2 \sin(1/x)$ si $x \neq 0$ et $f(0)=0$.

- Cette fonction est dérivable en 0, avec $f'(0) = \lim_{h\to 0} \frac{h^2\sin(1/h)}{h} = \lim_{h\to 0} h\sin(1/h) = 0$.
- Pour $x \neq 0$, $f'(x) = 2x\sin(1/x) - \cos(1/x)$.

La fonction dérivée $f'(x)$ n'a pas de limite en 0 (à cause du terme $\cos(1/x)$). Elle n'est donc pas continue en 0.

La fonction $f$ est dérivable (donc différentiable) partout, mais n'est pas de classe $\mathcal{C}^1$. Un exemple similaire peut être construit pour les fonctions de plusieurs variables.

**Contre-exemple 2 : Dérivées partielles existantes mais non continues**

Reprenons $f(x,y) = \frac{xy}{x^2+y^2}$ pour $(x,y) \neq (0,0)$ et $f(0,0)=0$.

Nous avons vu que $\frac{\partial f}{\partial x}(0,0) = 0$.

Pour $(x,y) \neq (0,0)$, on calcule $\frac{\partial f}{\partial x}(x,y) = \frac{y(x^2+y^2) - xy(2x)}{(x^2+y^2)^2} = \frac{y^3-xy^2}{(x^2+y^2)^2}$.

Cette fonction n'est pas continue en $(0,0)$. Par exemple, le long de l'axe $y$ (en posant $x=t, y=c$), la limite quand $t \to 0$ dépend de $c$. La fonction n'est donc pas de classe $\mathcal{C}^1$.

### Concepts Liés

- **Différentiabilité**: Être $\mathcal{C}^1$ est la condition suffisante la plus couramment utilisée pour prouver la différentiabilité.
- **Dérivées d'ordre supérieur**: La notion de classe $\mathcal{C}^1$ se généralise aux classes $\mathcal{C}^k$ (toutes les dérivées partielles jusqu'à l'ordre $k$ existent et sont continues) et $\mathcal{C}^\infty$ (infiniment différentiable).

---

## Concept 5: Règles de Calcul Différentiel (Opérations)

### Prérequis

- **Fonction Différentiable et de Classe $\mathcal{C}^1$**.
- **Matrice Jacobienne**.
- **Algèbre Linéaire**: Produit matriciel.

### Définition et Propriétés

Les opérations algébriques usuelles (somme, produit par un scalaire, produit de fonctions) et la composition se comportent bien avec la différentiation. Si les fonctions sont différentiables (ou de classe $\mathcal{C}^1$), le résultat de l'opération l'est aussi, et on dispose de formules pour calculer la nouvelle différentielle (ou matrice jacobienne).

**1. Combinaison linéaire (Proposition 4.16)**

- **Hypothèses**: Soient $f, g: U \subset \mathbb{R}^n \to \mathbb{R}^p$ différentiables en $a \in U$ et $\lambda \in \mathbb{R}$.
- **Conclusion**: La fonction $h = f + \lambda g$ est différentiable en $a$ et sa différentielle est :

  $$ d(f+\lambda g)_a = df_a + \lambda dg_a $$

- **En termes de Jacobiennes**:

  $$ J_{f+\lambda g}(a) = J_f(a) + \lambda J_g(a) $$

- **Régularité**: Si $f$ et $g$ sont de classe $\mathcal{C}^1$, alors $f+\lambda g$ l'est aussi. L'ensemble $\mathcal{C}^1(U, \mathbb{R}^p)$ est un espace vectoriel.

**2. Formule de Leibniz pour le produit (Proposition 4.17)**

- **Hypothèses**: Soient $f: U \subset \mathbb{R}^n \to \mathbb{R}$ (scalaire) et $g: U \subset \mathbb{R}^n \to \mathbb{R}^p$ (vectorielle) différentiables en $a \in U$.
- **Conclusion**: La fonction produit $h = fg$ est différentiable en $a$.
- **En termes de Jacobiennes**:

  $$ J_{fg}(a) = g(a) J_f(a) + f(a) J_g(a) $$

  Ici, $g(a)$ est un vecteur colonne ($p \times 1$), $J_f(a)$ est un vecteur ligne ($1 \times n$), leur produit est une matrice $p \times n$. $f(a)$ est un scalaire et $J_g(a)$ est une matrice $p \times n$.

- **Régularité**: Si $f$ et $g$ sont de classe $\mathcal{C}^1$, alors $fg$ l'est aussi.

**3. Composition - Règle de la chaîne (Théorème 4.19)**

- **Hypothèses**: Soient $U \subset \mathbb{R}^n$ et $V \subset \mathbb{R}^m$ des ouverts. Soient $f: U \to V$ différentiable en $a \in U$, et $g: V \to \mathbb{R}^p$ différentiable en $b=f(a) \in V$.
- **Conclusion**: La fonction composée $g \circ f : U \to \mathbb{R}^p$ est différentiable en $a$.
- **Formule de la différentielle**:

  $$ d(g \circ f)_a = dg_{f(a)} \circ df_a $$

  C'est une composition d'applications linéaires.

- **Formule des Jacobiennes**: La règle de la chaîne se traduit par un produit matriciel.

  $$ J_{g \circ f}(a) = J_g(f(a)) \cdot J_f(a) $$

  où le produit est une multiplication de matrices.

  Taille des matrices : $J_{g \circ f}(a)$ est $p \times n$. $J_g(f(a))$ est $p \times m$. $J_f(a)$ est $m \times n$. Le produit $(p \times m) \cdot (m \times n)$ donne bien une matrice $(p \times n)$. **L'ordre est crucial !**

- **Régularité**: Si $f$ et $g$ sont de classe $\mathcal{C}^1$, alors $g \circ f$ l'est aussi.

### Exemples

**Exemple 1 : Règle de la chaîne (simple)**

Soit $f: \mathbb{R} \to \mathbb{R}^2$ avec $f(t) = (t^2, \sin(t))$ et $g: \mathbb{R}^2 \to \mathbb{R}$ avec $g(x,y) = xy$. Calculons la dérivée de $h = g \circ f$ en $t=\pi$.

$f(\pi) = (\pi^2, 0)$.

- **Jacobienne de f**: $f'(t)$ est $J_f(t) = \begin{pmatrix} 2t \\ \cos(t) \end{pmatrix}$. Donc $J_f(\pi) = \begin{pmatrix} 2\pi \\ -1 \end{pmatrix}$.
- **Jacobienne de g**: $J_g(x,y) = \begin{pmatrix} \frac{\partial g}{\partial x} & \frac{\partial g}{\partial y} \end{pmatrix} = \begin{pmatrix} y & x \end{pmatrix}$. En $f(\pi)=(\pi^2, 0)$, on a $J_g(f(\pi)) = \begin{pmatrix} 0 & \pi^2 \end{pmatrix}$.
- **Application de la règle**:

  $$ J_{g \circ f}(\pi) = J_g(f(\pi)) \cdot J_f(\pi) = \begin{pmatrix} 0 & \pi^2 \end{pmatrix} \begin{pmatrix} 2\pi \\ -1 \end{pmatrix} = 0 \cdot (2\pi) + \pi^2 \cdot (-1) = -\pi^2 $$

  Vérification directe : $h(t) = g(f(t)) = t^2\sin(t)$. $h'(t) = 2t\sin(t) + t^2\cos(t)$. $h'(\pi) = 2\pi\sin(\pi) + \pi^2\cos(\pi) = -\pi^2$. Ça fonctionne.

**Exemple 2 : Règle de la chaîne (variables intermédiaires)**

Soit $\varphi : \mathbb{R}^2 \rightarrow \mathbb{R}$ de classe $\mathcal{C}^1$ et $g(x,y) = \varphi(u(x,y), v(x,y))$ où $u(x,y) = x+y$ et $v(x,y)=x^2+y^2$. Exprimons les dérivées partielles de $g$.

On a $g = \varphi \circ f$ avec $f(x,y) = (x+y, x^2+y^2)$.

$$ J_f(x,y) = \begin{pmatrix} \frac{\partial u}{\partial x} & \frac{\partial u}{\partial y} \\ \frac{\partial v}{\partial x} & \frac{\partial v}{\partial y} \end{pmatrix} = \begin{pmatrix} 1 & 1 \\ 2x & 2y \end{pmatrix} $$

$$ J_\varphi(u,v) = \begin{pmatrix} \frac{\partial \varphi}{\partial u} & \frac{\partial \varphi}{\partial v} \end{pmatrix} $$

Par la règle de la chaîne, $J_g(x,y) = J_\varphi(f(x,y)) \cdot J_f(x,y)$:

$$ \begin{pmatrix} \frac{\partial g}{\partial x} & \frac{\partial g}{\partial y} \end{pmatrix} = \begin{pmatrix} \frac{\partial \varphi}{\partial u} & \frac{\partial \varphi}{\partial v} \end{pmatrix} \begin{pmatrix} 1 & 1 \\ 2x & 2y \end{pmatrix} $$

$$ = \left( \frac{\partial \varphi}{\partial u} \cdot 1 + \frac{\partial \varphi}{\partial v} \cdot 2x, \quad \frac{\partial \varphi}{\partial u} \cdot 1 + \frac{\partial \varphi}{\partial v} \cdot 2y \right) $$

Donc :

$\frac{\partial g}{\partial x}(x,y) = \frac{\partial \varphi}{\partial u}(u(x,y), v(x,y)) + 2x \frac{\partial \varphi}{\partial v}(u(x,y), v(x,y))$.

$\frac{\partial g}{\partial y}(x,y) = \frac{\partial \varphi}{\partial u}(u(x,y), v(x,y)) + 2y \frac{\partial \varphi}{\partial v}(u(x,y), v(x,y))$.

**Exemple 3 : Produit (Formule de Leibniz)**

Soit $f(x,y) = x^2$ et $g(x,y) = \begin{pmatrix} y \\ \sin(x) \end{pmatrix}$. Soit $h=fg$.

- $f(x,y)=x^2$, $J_f(x,y) = \begin{pmatrix} 2x & 0 \end{pmatrix}$.
- $g(x,y)=\begin{pmatrix} y \\ \sin(x) \end{pmatrix}$, $J_g(x,y) = \begin{pmatrix} 0 & 1 \\ \cos(x) & 0 \end{pmatrix}$.

$J_h(x,y) = g(x,y) J_f(x,y) + f(x,y) J_g(x,y)$

$$ = \begin{pmatrix} y \\ \sin(x) \end{pmatrix} \begin{pmatrix} 2x & 0 \end{pmatrix} + x^2 \begin{pmatrix} 0 & 1 \\ \cos(x) & 0 \end{pmatrix} $$

$$ = \begin{pmatrix} 2xy & 0 \\ 2x\sin(x) & 0 \end{pmatrix} + \begin{pmatrix} 0 & x^2 \\ x^2\cos(x) & 0 \end{pmatrix} = \begin{pmatrix} 2xy & x^2 \\ 2x\sin(x)+x^2\cos(x) & 0 \end{pmatrix} $$

Vérification : $h(x,y) = x^2 \begin{pmatrix} y \\ \sin(x) \end{pmatrix} = \begin{pmatrix} x^2y \\ x^2\sin(x) \end{pmatrix}$.

$\frac{\partial h_1}{\partial x} = 2xy$, $\frac{\partial h_1}{\partial y} = x^2$.

$\frac{\partial h_2}{\partial x} = 2x\sin(x)+x^2\cos(x)$, $\frac{\partial h_2}{\partial y} = 0$. La jacobienne correspond.

### Contre-exemples

**Contre-exemple 1 : Non-différentiabilité**

La formule de la chaîne ne s'applique que si les fonctions sont différentiables aux points concernés. Soit $f: \mathbb{R} \to \mathbb{R}$ définie par $f(t)=|t|$ et $g: \mathbb{R} \to \mathbb{R}$ par $g(x)=x^2$.

$f$ n'est pas différentiable en 0. $g$ est différentiable partout.

$g \circ f(t) = (|t|)^2 = t^2$. Cette fonction est différentiable en 0.

$f \circ g(t) = |t^2| = t^2$. Cette fonction est aussi différentiable en 0.

Ici, la composée est différentiable, mais on ne peut pas appliquer la formule.

**Contre-exemple 2 : Erreur d'ordre dans la composition**

Reprenons l'Exemple 1. $J_g(f(\pi)) = \begin{pmatrix} 0 & \pi^2 \end{pmatrix}$ et $J_f(\pi) = \begin{pmatrix} 2\pi \\ -1 \end{pmatrix}$.

Le produit $J_g(f(\pi)) \cdot J_f(\pi)$ est $(1 \times 2) \cdot (2 \times 1)$, ce qui donne une matrice $1 \times 1$ (un scalaire).

Si on inversait l'ordre, $J_f(\pi) \cdot J_g(f(\pi))$, on aurait un produit $(2 \times 1) \cdot (1 \times 2)$, ce qui donnerait une matrice $2 \times 2$. De plus, le résultat serait incorrect :

$$ \begin{pmatrix} 2\pi \\ -1 \end{pmatrix} \begin{pmatrix} 0 & \pi^2 \end{pmatrix} = \begin{pmatrix} 0 & 2\pi^3 \\ 0 & -\pi^2 \end{pmatrix} \neq -\pi^2 $$

### Concepts Liés

- **Toutes les notions de différentiabilité** : Ces règles permettent de construire des fonctions différentiables ou $\mathcal{C}^1$ complexes à partir de briques de base simples.
- **Applications en physique et géométrie**: La règle de la chaîne est fondamentale pour étudier des quantités le long de trajectoires (dérivée particulaire) ou lors de changements de coordonnées (e.g., polaires, sphériques).

---

## Concept 6: Gradient d'une Fonction Numérique

### Prérequis

- **Dérivée Partielle**.
- **Algèbre Linéaire**: Vecteurs, produit scalaire euclidien.
- **Matrice Jacobienne**.

### Définition

Soit $U$ un ouvert de $\mathbb{R}^n$ et $f : U \rightarrow \mathbb{R}$ une fonction à valeurs réelles (un champ scalaire) qui admet des dérivées partielles en un point $a \in U$.

Le **gradient** de $f$ au point $a$ est le vecteur de $\mathbb{R}^n$, noté $\nabla f(a)$ (lire "nabla f de a"), défini par :

$$ \nabla f(a) = \begin{pmatrix}

\frac{\partial f}{\partial x_1}(a) \\

\frac{\partial f}{\partial x_2}(a) \\

\vdots \\

\frac{\partial f}{\partial x_n}(a)

\end{pmatrix} $$

Le gradient est donc le vecteur colonne dont les composantes sont les dérivées partielles de $f$.

### Explications Détaillées

Alors que la différentielle est un objet abstrait (une application linéaire) et la jacobienne une matrice, le gradient est un **vecteur** de l'espace de départ $\mathbb{R}^n$. Il n'est défini que pour les fonctions à valeurs réelles ($p=1$).

Le gradient en un point $a$ est un vecteur qui contient toute l'information sur la variation locale de la fonction $f$ en ce point. Sa signification géométrique est capitale : il pointe dans la direction où la fonction $f$ augmente le plus rapidement.

La relation avec la jacobienne est simple : pour une fonction $f:\mathbb{R}^n \to \mathbb{R}$, la jacobienne $J_f(a)$ est une matrice $1 \times n$ (un vecteur ligne). Le gradient $\nabla f(a)$ est un vecteur colonne $n \times 1$. On a donc :

$$ \nabla f(a) = (J_f(a))^T \quad \text{ou} \quad J_f(a) = (\nabla f(a))^T $$

### Propriétés Clés

- **Lien avec la différentielle**: Si $f$ est différentiable en $a$, alors pour tout vecteur $h \in \mathbb{R}^n$, on a :

  $$ df_a(h) = J_f(a)h = (\nabla f(a))^T h = \langle \nabla f(a), h \rangle $$

  où $\langle \cdot, \cdot \rangle$ est le produit scalaire usuel sur $\mathbb{R}^n$.

- **Interprétation géométrique 1 : Orthogonalité aux lignes de niveau**

  Le gradient $\nabla f(a)$ en un point $a$ est orthogonal à la ligne (ou surface) de niveau de $f$ passant par $a$. Une ligne de niveau est un ensemble de la forme $\{x \in U \mid f(x) = c \}$. Si $\gamma(t)$ est une courbe tracée sur cette surface de niveau avec $\gamma(0)=a$, alors $f(\gamma(t))=c$. En dérivant par rapport à $t$ en $t=0$, la règle de la chaîne donne $\langle \nabla f(a), \gamma'(0) \rangle = 0$. Le vecteur gradient est donc orthogonal au vecteur tangent $\gamma'(0)$ de la courbe.

- **Interprétation géométrique 2 : Direction de la plus forte pente**

  Le gradient $\nabla f(a)$ indique la direction dans laquelle il faut se déplacer à partir de $a$ pour que la valeur de $f$ augmente le plus vite possible. La norme du gradient, $\|\nabla f(a)\|$, donne la valeur de ce taux d'accroissement maximal. Cela découle de l'inégalité de Cauchy-Schwarz appliquée à $df_a(v) = \langle \nabla f(a), v \rangle$, où $v$ est un vecteur unitaire de direction. Le maximum est atteint lorsque $v$ est colinéaire et de même sens que $\nabla f(a)$.

### Exemples

**Exemple 1 : Fonction quadratique**

Soit $f: \mathbb{R}^3 \to \mathbb{R}$ définie par $f(x,y,z) = x^2 + 2y^2 + 3z^2$.

Calculons son gradient.

$$ \frac{\partial f}{\partial x} = 2x, \quad \frac{\partial f}{\partial y} = 4y, \quad \frac{\partial f}{\partial z} = 6z $$

Le gradient est le vecteur :

$$ \nabla f(x,y,z) = \begin{pmatrix} 2x \\ 4y \\ 6z \end{pmatrix} $$

En $a=(1,1,1)$, $\nabla f(1,1,1) = (2,4,6)$. Ce vecteur est normal à la surface de niveau $f(x,y,z)=6$ au point $(1,1,1)$.

**Exemple 2 : Distance à l'origine**

Soit $f: \mathbb{R}^n \setminus \{0\} \to \mathbb{R}$ définie par $f(x) = \|x\|_2 = \sqrt{x_1^2 + \dots + x_n^2}$.

La dérivée partielle par rapport à $x_k$ est :

$$ \frac{\partial f}{\partial x_k} = \frac{1}{2\sqrt{x_1^2 + \dots + x_n^2}} \cdot (2x_k) = \frac{x_k}{\|x\|_2} $$

Le gradient est donc :

$$ \nabla f(x) = \frac{1}{\|x\|_2} \begin{pmatrix} x_1 \\ \vdots \\ x_n \end{pmatrix} = \frac{x}{\|x\|_2} $$

Le gradient de la fonction "distance à l'origine" est le vecteur unitaire pointant de l'origine vers le point $x$. C'est bien la direction dans laquelle la distance à l'origine augmente le plus vite.

**Exemple 3 : Champ de potentiel**

En physique, la force $\vec{F}$ dérivant d'un potentiel $U$ est donnée par $\vec{F} = -\nabla U$.

Soit le potentiel gravitationnel en 2D (dû à une masse à l'origine) : $U(x,y) = -\frac{GM}{\sqrt{x^2+y^2}}$.

$\nabla U(x,y) = GM \frac{(x,y)}{(x^2+y^2)^{3/2}}$.

La force est $\vec{F}(x,y) = -GM \frac{(x,y)}{(x^2+y^2)^{3/2}} = -\frac{GM}{r^2} \frac{\vec{r}}{r}$, ce qui est la loi de la gravitation (force attractive dirigée vers l'origine).

### Contre-exemples

**Contre-exemple 1 : Non défini pour les fonctions vectorielles**

Le gradient n'est défini que pour les fonctions à valeurs scalaires ($f: \mathbb{R}^n \to \mathbb{R}$). Pour une fonction $f: \mathbb{R}^n \to \mathbb{R}^p$ avec $p > 1$, on ne parle pas de gradient mais de matrice jacobienne.

**Contre-exemple 2 : Gradient nul ne signifie pas forcément un extremum local**

Le gradient est nul aux points critiques (minima, maxima, points selles). Mais un gradient nul en un point ne garantit pas un extremum local. Par exemple, pour $f(x,y) = x^2 - y^2$, $\nabla f(x,y) = (2x, -2y)$, donc $\nabla f(0,0) = (0,0)$. Cependant, $(0,0)$ est un point selle, pas un extremum. Dans la direction des $x$, la fonction augmente ; dans la direction des $y$, elle diminue.

### Concepts Liés

- **Dérivée directionnelle**: La dérivée de $f$ dans la direction d'un vecteur unitaire $v$ est donnée par $\langle \nabla f(a), v \rangle$.
- **Optimisation**: La méthode de la descente de gradient est un algorithme itératif pour trouver les minima d'une fonction, en se déplaçant à chaque étape dans la direction opposée au gradient.
- **Physique**: Champs de potentiel, équations de la chaleur, mécanique des fluides, électromagnétisme.

---

## Concept 7: Inégalité des Accroissements Finis

### Prérequis

- **Calculus I**: Théorème des accroissements finis pour une fonction d'une variable.
- **Gradient d'une fonction numérique**.
- **Topologie**: Normes sur $\mathbb{R}^n$, notion de segment $[a,b]$.

### Définition

**Théorème 4.24 (Inégalités des accroissements finis)**

**Hypothèses**:

- Soit $U$ un ouvert de $\mathbb{R}^n$.
- Soit $f : U \rightarrow \mathbb{R}$ une fonction différentiable sur $U$.
- Soient $a, b \in U$ deux points tels que le segment $[a,b] = \{a+t(b-a) \mid t \in [0,1]\}$ soit entièrement inclus dans $U$.

**Conclusion**:

Il existe des constantes $c_1, c_2, c_3 > 0$ (qui dépendent de $t \in [0,1]$) telles que :

$$ f(b) - f(a) = \langle \nabla f(c_1), b-a \rangle $$

où $c_1$ est un point sur le segment $[a,b]$.

Cela implique les inégalités suivantes :

$$ |f(b)-f(a)| \le \|b-a\|_2 \sup_{t \in [0,1]} \|\nabla f(a+t(b-a))\|_2 \quad \text{(utilisant Cauchy-Schwarz)}$$

$$ |f(b)-f(a)| \le \|b-a\|_1 \sup_{t \in [0,1]} \|\nabla f(a+t(b-a))\|_\infty $$

$$ |f(b)-f(a)| \le \|b-a\|_\infty \sup_{t \in [0,1]} \|\nabla f(a+t(b-a))\|_1 $$

Le supremum est bien défini si $\nabla f$ est continue (i.e. $f$ est $\mathcal{C}^1$) sur le segment $[a,b]$ (qui est compact).

### Explications Détaillées

Ce théorème est une généralisation du théorème des accroissements finis pour les fonctions d'une variable réelle. Pour une fonction $g: [u,v] \to \mathbb{R}$, on sait qu'il existe $w \in ]u,v[$ tel que $g(v)-g(u) = g'(w)(v-u)$.

Pour une fonction de plusieurs variables, on n'a pas une égalité aussi simple pour le vecteur gradient, mais on peut obtenir une **inégalité** très utile. Elle borne la variation totale de la fonction $|f(b)-f(a)|$ par la distance entre les points $\|b-a\|$ multipliée par la "plus grande pente" (la plus grande norme du gradient) que l'on rencontre sur le segment reliant $a$ à $b$.

L'idée de la preuve est de se ramener au cas 1D. On définit une fonction auxiliaire $\gamma(t) = f(a+t(b-a))$ pour $t \in [0,1]$. Cette fonction va de $\mathbb{R}$ dans $\mathbb{R}$. On peut lui appliquer le théorème des accroissements finis usuel, et en utilisant la règle de la chaîne pour calculer $\gamma'(t)$, on obtient le résultat.

L'hypothèse que le segment $[a,b]$ soit dans $U$ est cruciale. Elle est automatiquement vérifiée si $U$ est un ensemble **convexe**.

### Propriétés Clés

- **Contrôle de la variation**: Ce théorème est un outil fondamental pour estimer la variation d'une fonction lorsque son gradient est borné.
- **Corollaire : Gradient nul sur un connexe par arcs (Théorème 4.27)**:
  - **Hypothèses**: Soit $U \subset \mathbb{R}^n$ un ouvert **connexe par arcs** et $f: U \to \mathbb{R}^m$ une fonction de classe $\mathcal{C}^1$.
  - **Conclusion**: Si la matrice jacobienne $J_f(x)$ est la matrice nulle pour tout $x \in U$, alors la fonction $f$ est constante sur $U$.

  Pour $m=1$, cela signifie que si $\nabla f(x) = 0$ pour tout $x$ dans un ouvert connexe par arcs, alors $f$ est constante.

### Exemples

**Exemple 1 : Application directe**

Soit $f(x,y) = \sin(x) + \cos(y)$ sur $\mathbb{R}^2$. Soient $a=(0,0)$ et $b=(\pi/2, \pi/2)$.

$f(a) = \sin(0)+\cos(0) = 1$. $f(b) = \sin(\pi/2)+\cos(\pi/2) = 1$. Donc $|f(b)-f(a)|=0$.

Vérifions l'inégalité. $\nabla f(x,y) = (\cos(x), -\sin(y))$.

$\|\nabla f(x,y)\|_2 = \sqrt{\cos^2(x)+\sin^2(y)}$.

Sur le segment $[a,b]$, paramétré par $t \mapsto (t\pi/2, t\pi/2)$ pour $t \in [0,1]$, la norme du gradient est $\sqrt{\cos^2(t\pi/2)+\sin^2(t\pi/2)}$. Cette norme est toujours $\le \sqrt{1+1}=\sqrt{2}$.

L'inégalité des accroissements finis donne :

$|f(b)-f(a)| \le \|b-a\|_2 \sup_{c \in [a,b]} \|\nabla f(c)\|_2$.

$0 \le \sqrt{(\pi/2)^2+(\pi/2)^2} \cdot \sup(...) = \frac{\pi}{\sqrt{2}} \sup(...)$. L'inégalité est bien vérifiée.

**Exemple 2 : Démontrer une inégalité**

Montrer que pour tous $x,y \in \mathbb{R}$, $|\sin(x) - \sin(y)| \le |x-y|$.

On utilise le théorème des accroissements finis en 1D. Soit $f(t) = \sin(t)$. Alors $f'(t)=\cos(t)$ et $|f'(t)| \le 1$ pour tout $t$.

L'inégalité donne $|f(x)-f(y)| \le |x-y| \sup_{c \in [x,y]} |f'(c)| \le |x-y| \cdot 1$.

C'est exactement ce que fait le théorème en dimension supérieure.

**Exemple 3 : Fonction à gradient borné (Lipschitz)**

Soit $f: \mathbb{R}^n \to \mathbb{R}$ une fonction différentiable telle que $\|\nabla f(x)\|_2 \le M$ pour tout $x \in \mathbb{R}^n$.

Comme $\mathbb{R}^n$ est convexe, pour tous $a,b \in \mathbb{R}^n$, le segment $[a,b]$ y est inclus.

L'inégalité des accroissements finis donne :

$$ |f(b) - f(a)| \le \|b-a\|_2 \sup_{t \in [0,1]} \|\nabla f(a+t(b-a))\|_2 \le \|b-a\|_2 \cdot M $$

La fonction $f$ est donc $M$-lipschitzienne sur $\mathbb{R}^n$.

### Contre-exemples

**Contre-exemple 1 : Domaine non convexe/segment non inclus**

Soit $U = \mathbb{R}^2 \setminus \{(x,0) \mid x \ge 0\}$, c'est-à-dire le plan privé de la demi-droite des abscisses positives. Soient $a=(1,-1)$ et $b=(1,1)$. Le segment $[a,b]$ traverse la partie enlevée, donc on ne peut pas appliquer le théorème entre $a$ et $b$.

**Contre-exemple 2 : Domaine non connexe par arcs (pour le corollaire)**

Soit $U = B(0,1) \cup B((3,0),1)$ l'union de deux boules ouvertes disjointes. Soit $f: U \to \mathbb{R}$ définie par $f(x)=0$ si $x \in B(0,1)$ et $f(x)=1$ si $x \in B((3,0),1)$.

Le gradient de $f$ est nul partout sur $U$ (car $f$ est localement constante). Cependant, $f$ n'est pas constante sur $U$. L'hypothèse de connexité par arcs du corollaire est essentielle.

### Concepts Liés

- **Convexité et Connexité par arcs**: Ces propriétés topologiques du domaine sont cruciales pour l'application du théorème et de ses corollaires.
- **Continuité Lipschitzienne**: L'inégalité des accroissements finis est un outil privilégié pour démontrer qu'une fonction est lipschitzienne.
- **Théorie de l'intégration**: Des versions de ce théorème existent pour les intégrales de fonctions vectorielles.
