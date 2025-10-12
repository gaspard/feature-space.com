---
id: f895b6b7
type: concepts
order: 20
title: Espaces Euclidiens et Hermitiens - concepts (B)
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
level: pro
createdAt: '2025-10-12T18:14:20.536Z'
---
# Espaces Euclidiens et Hermitiens (B)

---

## Concept 1: Formes bilinéaires et sesquilinéaires

### Prérequis

- Algèbre linéaire : $\mathbb{K}$-espaces vectoriels ($\mathbb{K} = \mathbb{R}$ ou $\mathbb{C}$), applications linéaires, dimension finie.
- Nombres complexes : conjugaison.

### Définition

Soit $E$ un $\mathbb{K}$-espace vectoriel.

1.  **Forme bilinéaire** (cas $\mathbb{K}=\mathbb{R}$ ou $\mathbb{C}$):

    Une application $\varphi: E \times E \to \mathbb{K}$ est une forme bilinéaire si elle est linéaire par rapport à chacune de ses variables, i.e., pour tous $u, v, w \in E$ et $\lambda \in \mathbb{K}$:

    -   $\varphi(u+\lambda v, w) = \varphi(u, w) + \lambda \varphi(v, w)$ (linéarité à gauche)
    -   $\varphi(u, v+\lambda w) = \varphi(u, v) + \lambda \varphi(u, w)$ (linéarité à droite)

2.  **Forme sesquilinéaire** (cas $\mathbb{K}=\mathbb{C}$):

    Une application $\varphi: E \times E \to \mathbb{C}$ est une forme sesquilinéaire si elle est linéaire par rapport à sa première variable et semi-linéaire (ou anti-linéaire) par rapport à sa seconde, i.e., pour tous $u, v, w \in E$ et $\lambda \in \mathbb{C}$:

    -   $\varphi(u+\lambda v, w) = \varphi(u, w) + \lambda \varphi(v, w)$ (linéarité à gauche)
    -   $\varphi(u, v+\lambda w) = \varphi(u, v) + \bar{\lambda} \varphi(u, w)$ (semi-linéarité à droite)

Une forme bilinéaire $\varphi$ est dite **symétrique** si $\forall x,y \in E, \varphi(x,y) = \varphi(y,x)$.

Une forme sesquilinéaire $\varphi$ est dite **hermitienne** (ou à symétrie hermitienne) si $\forall x,y \in E, \varphi(x,y) = \overline{\varphi(y,x)}$.

Une forme $\varphi$ (bilinéaire symétrique ou sesquilinéaire hermitienne) est dite :

- **Positive** si $\forall x \in E, \varphi(x,x) \ge 0$. Notez que pour une forme hermitienne, $\varphi(x,x) = \overline{\varphi(x,x)}$, donc $\varphi(x,x)$ est toujours réel.
- **Définie** si $\forall x \in E, (\varphi(x,x) = 0 \implies x = 0_E)$.
- **Définie positive** si elle est à la fois positive et définie.

### Propriétés Clés

- L'ensemble des formes bilinéaires sur $E$, noté $\mathcal{L}_2(E, \mathbb{K})$, et l'ensemble des formes sesquilinéaires sur $E$ sont des $\mathbb{K}$-espaces vectoriels.
- Si $\varphi$ est bilinéaire, $\varphi(u, 0_E) = \varphi(0_E, v) = 0$ pour tous $u,v \in E$.
- À toute forme bilinéaire symétrique $\varphi$ est associée une **forme quadratique** $q: E \to \mathbb{K}$ définie par $q(x) = \varphi(x,x)$.
- Une forme sesquilinéaire hermitienne est entièrement déterminée par les valeurs de $\varphi(x,x)$ via les identités de polarisation (voir Concept 4).

### Exemples

**Exemple 1 : Produit scalaire canonique sur $\mathbb{R}^n$**

Soit $E = \mathbb{R}^n$. L'application $\varphi: \mathbb{R}^n \times \mathbb{R}^n \to \mathbb{R}$ définie par $\varphi(x,y) = \sum_{i=1}^n x_i y_i$ est une forme bilinéaire symétrique définie positive.

- **Bilinearité**: découle de la distributivité de la multiplication sur l'addition dans $\mathbb{R}$.
- **Symétrie**: $\sum x_i y_i = \sum y_i x_i$.
- **Définie positive**: $\varphi(x,x) = \sum x_i^2 \ge 0$, et $\sum x_i^2 = 0 \iff \forall i, x_i = 0 \iff x = 0$.

**Exemple 2 : Produit scalaire canonique sur $\mathbb{C}^n$**

Soit $E = \mathbb{C}^n$. L'application $\varphi: \mathbb{C}^n \times \mathbb{C}^n \to \mathbb{C}$ définie par $\varphi(x,y) = \sum_{i=1}^n x_i \overline{y_i}$ est une forme sesquilinéaire hermitienne définie positive.

- **Sesquilinéarité**: $\varphi(x, \lambda y) = \sum x_i \overline{\lambda y_i} = \sum x_i \bar{\lambda} \overline{y_i} = \bar{\lambda} \sum x_i \overline{y_i} = \bar{\lambda} \varphi(x,y)$. La linéarité à gauche est similaire.
- **Symétrie hermitienne**: $\overline{\varphi(y,x)} = \overline{\sum y_i \overline{x_i}} = \sum \overline{y_i} x_i = \varphi(x,y)$.
- **Définie positive**: $\varphi(x,x) = \sum x_i \overline{x_i} = \sum |x_i|^2 \ge 0$, et $\sum |x_i|^2 = 0 \iff x = 0$.

**Exemple 3 : Forme intégrale sur $C^0([a,b], \mathbb{C})$**

Soit $E = C^0([a,b], \mathbb{C})$ l'espace des fonctions continues de $[a,b]$ dans $\mathbb{C}$. L'application $\varphi(f,g) = \int_a^b f(t)\overline{g(t)} dt$ est une forme sesquilinéaire hermitienne définie positive.

- **Définie positive**: $\varphi(f,f) = \int_a^b |f(t)|^2 dt \ge 0$. Si $\int_a^b |f(t)|^2 dt = 0$, comme $|f|^2$ est une fonction continue et positive, cela implique $|f(t)|^2 = 0$ pour tout $t$, donc $f$ est la fonction nulle. Cet espace est de dimension infinie.

### Contre-exemples

**Contre-exemple 1 : Forme bilinéaire non symétrique**

Sur $E=\mathbb{R}^2$, soit $A = \begin{pmatrix} 1 & 2 \\ 3 & 4 \end{pmatrix}$. La forme $\varphi(X,Y) = {}^tX A Y$ est bilinéaire, mais non symétrique car $A \neq {}^tA$. Par exemple, $\varphi(e_1, e_2) = 2$ mais $\varphi(e_2, e_1) = 3$.

**Contre-exemple 2 : Forme hermitienne positive mais non définie**

Sur $E=\mathbb{C}^2$, soit $\varphi(x,y) = x_1\overline{y_1}$. C'est une forme sesquilinéaire hermitienne. Elle est positive car $\varphi(x,x)=|x_1|^2 \ge 0$. Cependant, elle n'est pas définie car pour $x=(0,1)$, on a $x \neq 0$ mais $\varphi(x,x)=0$. On parle de forme dégénérée.

**Contre-exemple 3 : Forme de Minkowski**

Sur $E=\mathbb{R}^4$, la forme $\varphi(x,y) = x_1y_1 + x_2y_2 + x_3y_3 - x_4y_4$ est une forme bilinéaire symétrique, mais elle n'est pas positive. Par exemple, pour $x=(0,0,0,1)$, $\varphi(x,x) = -1$. C'est le fondement de la géométrie de l'espace-temps en relativité restreinte.

### Concepts Connexes

- **Formes quadratiques**: Une forme quadratique $q$ est une application $q:E \to \mathbb{K}$ pour laquelle il existe une forme bilinéaire $\varphi$ telle que $q(x) = \varphi(x,x)$. Si $\mathbb{K}$ n'est pas de caractéristique 2, on peut choisir $\varphi$ symétrique et unique.
- **Dualité**: Une forme bilinéaire non-dégénérée $\varphi$ induit un isomorphisme de $E$ sur son dual $E^*$. C'est la base du théorème de Riesz (Concept 14).
- **Tenseurs**: Une forme bilinéaire est un tenseur de type (0,2).

---

## Concept 2: Espaces Euclidiens et Hermitiens

### Prérequis

- Concept 1 : Formes bilinéaires et sesquilinéaires.
- Algèbre linéaire : Espaces vectoriels de dimension finie.

### Définition

Soit $E$ un $\mathbb{K}$-espace vectoriel de dimension finie.

1.  Un **espace préhilbertien réel** (resp. **complexe**) est un $\mathbb{R}$-espace vectoriel (resp. $\mathbb{C}$-espace vectoriel) $E$ muni d'une forme bilinéaire symétrique définie positive (resp. sesquilinéaire hermitienne définie positive). Cette forme est appelée **produit scalaire** et est souvent notée $\langle \cdot, \cdot \rangle$ ou $(\cdot | \cdot)$.

2.  Un **espace Euclidien** est un espace préhilbertien réel de dimension finie.

3.  Un **espace Hermitien** est un espace préhilbertien complexe de dimension finie.

Le terme "espace préhilbertien" est généralement utilisé pour les espaces de dimension potentiellement infinie. Dans le contexte de ce chapitre (dimension finie), les termes préhilbertien, euclidien et hermitien sont souvent utilisés de manière interchangeable, le corps sous-jacent clarifiant la situation.

### Propriétés Clés

- **Structure métrique**: Tout espace euclidien ou hermitien est un espace normé (voir Concept 3), et donc un espace métrique. En dimension finie, il est complet pour cette métrique (c'est un espace de Banach).
- **Existence de bases orthonormées**: Tout espace euclidien ou hermitien de dimension $n \ge 1$ admet une base orthonormée (voir Concept 5 et 7).
- **Isomorphisme canonique**: Tous les espaces euclidiens (resp. hermitiens) de même dimension $n$ sont isométriquement isomorphes à $\mathbb{R}^n$ (resp. $\mathbb{C}^n$) muni de son produit scalaire canonique.

### Exemples

**Exemple 1 : L'espace des polynômes $\mathbb{R}_n[X]$**

Soit $E = \mathbb{R}_n[X]$. L'application $\langle P, Q \rangle = \int_{-1}^{1} P(t)Q(t) dt$ définit un produit scalaire.

- C'est une forme bilinéaire symétrique.
- Elle est définie positive : $\langle P, P \rangle = \int_{-1}^{1} P(t)^2 dt \ge 0$. Si l'intégrale est nulle, comme $P^2$ est continue et positive, $P(t)^2=0$ pour tout $t \in [-1,1]$. Un polynôme ayant une infinité de racines est le polynôme nul. Donc $P=0$.

$E$ muni de ce produit scalaire est un espace euclidien de dimension $n+1$.

**Exemple 2 : L'espace des polynômes trigonométriques $\mathcal{T}_n$**

Soit $E = \mathcal{T}_n = \text{Vect}_{\mathbb{C}}(e^{ikt})_{k=-n,...,n}$ l'espace des polynômes trigonométriques de degré au plus $n$. L'application

$$ \langle P, Q \rangle = \frac{1}{2\pi} \int_0^{2\pi} P(t)\overline{Q(t)}dt $$

définit un produit scalaire qui fait de $\mathcal{T}_n$ un espace hermitien de dimension $2n+1$.

**Exemple 3 : L'espace des matrices $M_p(\mathbb{K})$**

Soit $E = M_p(\mathbb{K})$. L'application $\langle A, B \rangle = \text{Tr}(A B^*)$ où $B^* = \overline{{}^tB}$ (conjuguée de la transposée) est un produit scalaire.

- Si $\mathbb{K}=\mathbb{R}$, $B^*={}^tB$ et c'est un produit scalaire euclidien.
- Si $\mathbb{K}=\mathbb{C}$, c'est un produit scalaire hermitien.

$\langle A, A \rangle = \text{Tr}(A A^*) = \sum_{i=1}^p \sum_{j=1}^p a_{ij} \overline{a_{ij}} = \sum_{i,j} |a_{ij}|^2$. Cette quantité est positive et n'est nulle que si $A$ est la matrice nulle.

### Contre-exemples

**Contre-exemple 1 : Espace non préhilbertien**

Soit $E=C^0([0,1], \mathbb{R})$ muni de la norme uniforme $\|f\|_\infty = \sup_{t \in [0,1]} |f(t)|$. Cet espace normé n'est pas un espace préhilbertien, car sa norme ne dérive pas d'un produit scalaire (elle ne vérifie pas l'identité du parallélogramme, voir Concept 4).

**Contre-exemple 2 : Espace avec une forme non définie**

Soit $E = \mathbb{R}^2$ avec $\varphi(x,y) = x_1y_1$. C'est un espace vectoriel avec une forme bilinéaire symétrique positive, mais ce n'est pas un espace euclidien car la forme n'est pas définie (le vecteur $(0,1)$ est non nul mais de "norme" nulle).

### Concepts Connexes

- **Espace de Hilbert**: Un espace préhilbertien qui est complet pour la distance induite par la norme. Tout espace euclidien ou hermitien est un espace de Hilbert. Des exemples de dimension infinie incluent $L^2([a,b])$ ou les espaces de Sobolev $H^k(\Omega)$.
- **Géométrie Riemannienne**: Une variété différentielle où chaque espace tangent est muni d'une structure d'espace euclidien qui varie de façon lisse. Le produit scalaire est appelé métrique riemannienne.

---

## Concept 3: Norme associée et Inégalité de Cauchy-Schwarz

### Prérequis

- Concept 2 : Espaces Euclidiens et Hermitiens.
- Analyse : notions de norme, discriminant d'un polynôme du second degré.

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace préhilbertien (euclidien ou hermitien).

La **norme** associée au produit scalaire est l'application $\|\cdot\|: E \to \mathbb{R}^+$ définie par :

$$ \|x\| = \sqrt{\langle x, x \rangle} $$

Cette définition a un sens car $\langle x, x \rangle \ge 0$.

### Propriétés Clés

1.  **Inégalité de Cauchy-Schwarz**: Pour tous $x, y \in E$, on a

    $$ |\langle x, y \rangle| \le \|x\| \|y\| $$

    L'égalité a lieu si et seulement si la famille $(x,y)$ est liée (i.e., $x$ et $y$ sont colinéaires).

    *Preuve (cas $\mathbb{K}=\mathbb{C}$)*

    Si $y=0_E$, l'inégalité est triviale ($0 \le 0$). Supposons $y \neq 0_E$. Pour tout $\lambda \in \mathbb{C}$, on a $\|x - \lambda y\|^2 \ge 0$.

    Développons :

    $0 \le \langle x - \lambda y, x - \lambda y \rangle = \langle x, x \rangle - \lambda \langle y, x \rangle - \bar{\lambda} \langle x, y \rangle + |\lambda|^2 \langle y, y \rangle = \|x\|^2 - \lambda \overline{\langle x, y \rangle} - \bar{\lambda} \langle x, y \rangle + |\lambda|^2 \|y\|^2$.

    Choisissons $\lambda = \frac{\langle x, y \rangle}{\|y\|^2}$. Ce choix est optimal car il minimise la distance $\|x-\lambda y\|$.

    Alors $0 \le \|x\|^2 - \frac{\langle x, y \rangle}{\|y\|^2}\overline{\langle x, y \rangle} - \frac{\overline{\langle x, y \rangle}}{\|y\|^2}\langle x, y \rangle + \frac{|\langle x, y \rangle|^2}{\|y\|^4}\|y\|^2 = \|x\|^2 - \frac{|\langle x, y \rangle|^2}{\|y\|^2}$.

    Donc $\|x\|^2 \|y\|^2 \ge |\langle x, y \rangle|^2$, ce qui donne l'inégalité.

    En cas d'égalité, $\|x - \lambda y\|^2 = 0$, ce qui implique $x - \lambda y = 0_E$ car la norme est définie. Donc $x$ et $y$ sont colinéaires. Réciproquement, si $x = \alpha y$, il est aisé de vérifier l'égalité.

2.  **Propriétés de la norme**: L'application $\|\cdot\|$ est une norme sur $E$:
    -   **Définition**: $\|x\| = 0 \iff \sqrt{\langle x, x \rangle} = 0 \iff \langle x, x \rangle = 0 \iff x = 0_E$.
    -   **Homogénéité**: $\|\lambda x\| = \sqrt{\langle \lambda x, \lambda x \rangle} = \sqrt{\lambda \bar{\lambda} \langle x, x \rangle} = \sqrt{|\lambda|^2 \|x\|^2} = |\lambda| \|x\|$.
    -   **Inégalité triangulaire**: Pour tous $x,y \in E$, $\|x+y\| \le \|x\| + \|y\|$.

    *Preuve de l'inégalité triangulaire*

    $\|x+y\|^2 = \langle x+y, x+y \rangle = \|x\|^2 + \langle x, y \rangle + \langle y, x \rangle + \|y\|^2 = \|x\|^2 + 2 \text{Re}(\langle x, y \rangle) + \|y\|^2$.

    Par Cauchy-Schwarz, $|\text{Re}(\langle x, y \rangle)| \le |\langle x, y \rangle| \le \|x\|\|y\|$.

    Donc $\|x+y\|^2 \le \|x\|^2 + 2 \|x\|\|y\| + \|y\|^2 = (\|x\| + \|y\|)^2$.

    En prenant la racine carrée, on obtient le résultat.

### Exemples

**Exemple 1 : Inégalité intégrale**

Dans $E = C^0([a,b], \mathbb{R})$ avec $\langle f,g \rangle = \int_a^b f(t)g(t) dt$, l'inégalité de Cauchy-Schwarz s'écrit :

$$ \left| \int_a^b f(t)g(t) dt \right| \le \left( \int_a^b f(t)^2 dt \right)^{1/2} \left( \int_a^b g(t)^2 dt \right)^{1/2} $$

**Exemple 2 : Inégalité de sommation**

Dans $E = \mathbb{C}^n$, l'inégalité de Cauchy-Schwarz donne pour $x,y \in \mathbb{C}^n$:

$$ \left| \sum_{i=1}^n x_i \overline{y_i} \right| \le \left( \sum_{i=1}^n |x_i|^2 \right)^{1/2} \left( \sum_{i=1}^n |y_i|^2 \right)^{1/2} $$

**Exemple 3 : Angle entre deux vecteurs**

Dans un espace euclidien, l'inégalité de Cauchy-Schwarz $-1 \le \frac{\langle x,y \rangle}{\|x\|\|y\|} \le 1$ permet de définir l'angle (non orienté) $\theta \in [0,\pi]$ entre deux vecteurs non nuls $x$ et $y$ par :

$$ \cos(\theta) = \frac{\langle x,y \rangle}{\|x\|\|y\|} $$

### Contre-exemples

**Contre-exemple 1 : Normes non-euclidiennes**

Sur $\mathbb{R}^2$, la norme $p$, $\|x\|_p = (|x_1|^p + |x_2|^p)^{1/p}$ pour $p \in [1, \infty), p \neq 2$, ou la norme infinie $\|x\|_\infty = \max(|x_1|,|x_2|)$, ne proviennent pas d'un produit scalaire. Elles ne satisfont pas l'identité du parallélogramme (voir Concept 4). Par conséquent, l'inégalité de Cauchy-Schwarz n'a pas de sens direct pour ces normes.

**Contre-exemple 2 : Forme indéfinie**

Dans l'espace de Minkowski $\mathbb{R}^4$ avec $\varphi(x,y) = x_1y_1+x_2y_2+x_3y_3-x_4y_4$, on peut avoir $\varphi(x,x)<0$. La "norme" n'est pas bien définie. Il existe une version de l'inégalité de Cauchy-Schwarz pour les formes indéfinies, mais elle est plus complexe. Par exemple, pour $x=(1,0,0,2)$ et $y=(1,0,0,0)$, $\varphi(x,y)=1$, $\varphi(x,x)=-3$, $\varphi(y,y)=1$. On a $|\varphi(x,y)|^2 = 1$ mais $\varphi(x,x)\varphi(y,y) = -3$. L'inégalité est inversée.

### Concepts Connexes

- **Espaces $L^p$**: L'inégalité de Cauchy-Schwarz est un cas particulier ($p=2$) de l'inégalité de Hölder pour les espaces $L^p$.
- **Analyse fonctionnelle**: L'inégalité de Cauchy-Schwarz garantit la continuité du produit scalaire par rapport à la Topologienduite par la norme.

---

## Concept 4: Orthogonalité et Identités Remarquables

### Prérequis

- Concept 3 : Norme associée et Inégalité de Cauchy-Schwarz.

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace préhilbertien.

Deux vecteurs $x, y \in E$ sont dits **orthogonaux** si $\langle x, y \rangle = 0$. On note alors $x \perp y$.

Une famille de vecteurs $(v_i)_{i \in I}$ est dite :

- **orthogonale** si ses vecteurs sont deux à deux orthogonaux : $\forall i \neq j, \langle v_i, v_j \rangle = 0$.
- **orthonormée** (ou orthonormale) si elle est orthogonale et que tous ses vecteurs sont unitaires : $\forall i, \|v_i\| = 1$.

Cela peut s'écrire de manière compacte : $\langle v_i, v_j \rangle = \delta_{ij}$ (symbole de Kronecker).

### Propriétés Clés

1.  **Théorème de Pythagore**: Si $(v_1, ..., v_n)$ est une famille orthogonale de vecteurs, alors :

    $$ \left\| \sum_{i=1}^n v_i \right\|^2 = \sum_{i=1}^n \|v_i\|^2 $$

    *Preuve*:

    $\left\| \sum_{i=1}^n v_i \right\|^2 = \langle \sum_{i=1}^n v_i, \sum_{j=1}^n v_j \rangle = \sum_{i,j} \langle v_i, v_j \rangle$.

    Par orthogonalité, $\langle v_i, v_j \rangle = 0$ si $i \neq j$. La somme se réduit donc à $\sum_{i=1}^n \langle v_i, v_i \rangle = \sum_{i=1}^n \|v_i\|^2$.

2.  **Liberté des familles orthogonales**: Toute famille orthogonale de vecteurs non nuls est libre.

    *Preuve*: Soit $(v_1, ..., v_n)$ une telle famille. Supposons $\sum_{i=1}^n \lambda_i v_i = 0_E$. Pour un $j \in \{1,...,n\}$, faisons le produit scalaire avec $v_j$:

    $\langle \sum_{i=1}^n \lambda_i v_i, v_j \rangle = \langle 0_E, v_j \rangle = 0$.

    Par linéarité, $\sum_{i=1}^n \lambda_i \langle v_i, v_j \rangle = 0$.

    Par orthogonalité, cette somme se réduit à $\lambda_j \langle v_j, v_j \rangle = \lambda_j \|v_j\|^2 = 0$.

    Comme $v_j \neq 0_E$, $\|v_j\|^2 \neq 0$, donc $\lambda_j=0$. Ceci étant vrai pour tout $j$, la famille est libre.

3.  **Identités de polarisation**: Elles permettent de reconstituer le produit scalaire à partir de la norme.
    -   **Cas Euclidien** ($\mathbb{K}=\mathbb{R}$): $\langle x, y \rangle = \frac{1}{2} (\|x+y\|^2 - \|x\|^2 - \|y\|^2) = \frac{1}{4}(\|x+y\|^2 - \|x-y\|^2)$.
    -   **Cas Hermitien** ($\mathbb{K}=\mathbb{C}$): $\langle x, y \rangle = \frac{1}{4} (\|x+y\|^2 - \|x-y\|^2 + i\|x+iy\|^2 - i\|x-iy\|^2)$.

4.  **Identité du parallélogramme**: Pour tous $x,y \in E$:

    $$ \|x+y\|^2 + \|x-y\|^2 = 2(\|x\|^2 + \|y\|^2) $$

    Cette identité caractérise les normes issues d'un produit scalaire (Théorème de Fréchet-von Neumann-Jordan).

### Exemples

**Exemple 1 : Polynômes de Legendre**

Dans $\mathbb{R}[X]$ avec $\langle P, Q \rangle = \int_{-1}^1 P(t)Q(t)dt$, les premiers polynômes de Legendre, $P_0=1, P_1=X, P_2=\frac{1}{2}(3X^2-1)$, forment une famille orthogonale.

$\langle P_0, P_1 \rangle = \int_{-1}^1 t dt = 0$.

$\langle P_1, P_2 \rangle = \int_{-1}^1 \frac{t}{2}(3t^2-1) dt = 0$ (intégrale d'une fonction impaire sur un intervalle symétrique).

**Exemple 2 : Théorème de Pythagore dans $\mathbb{R}^3$**

Soit $v_1=(1,1,0), v_2=(1,-1,1), v_3=(-1,1,2)$. $\langle v_1, v_2 \rangle = 1-1+0=0$, $\langle v_1, v_3 \rangle = -1+1+0=0$, $\langle v_2, v_3 \rangle = -1-1+2=0$. La famille est orthogonale. Soit $V = v_1+v_2+v_3 = (1,1,3)$.

$\|V\|^2 = 1^2+1^2+3^2=11$.

$\|v_1\|^2=2, \|v_2\|^2=3, \|v_3\|^2=6$. On vérifie bien que $\|v_1\|^2+\|v_2\|^2+\|v_3\|^2 = 2+3+6 = 11$.

**Exemple 3 : Polarisation dans $\mathbb{C}$**

Soit $E=\mathbb{C}$ avec $\langle z_1, z_2 \rangle = z_1 \overline{z_2}$. Soit $x=1, y=i$.

$\|x+y\|^2 = |1+i|^2 = 2$. $\|x-y\|^2 = |1-i|^2 = 2$.

$\|x+iy\|^2 = |1+i^2|^2 = 0$. $\|x-iy\|^2 = |1-i^2|^2 = |2|^2=4$.

$\langle 1, i \rangle = 1 \cdot \bar{i} = -i$.

Formule de polarisation : $\frac{1}{4}(2 - 2 + i(0) - i(4)) = \frac{-4i}{4} = -i$.

### Contre-exemples

**Contre-exemple 1 : Non validité de Pythagore pour des vecteurs non-orthogonaux**

Dans $\mathbb{R}^2$, soit $v_1=(1,0)$ et $v_2=(1,1)$. $\langle v_1, v_2 \rangle = 1 \neq 0$.

$v_1+v_2 = (2,1)$. $\|v_1+v_2\|^2 = 5$.

$\|v_1\|^2 + \|v_2\|^2 = 1^2 + (1^2+1^2) = 1+2=3$.

On a bien $5 \neq 3$.

**Contre-exemple 2 : Norme ne vérifiant pas l'identité du parallélogramme**

Dans $\mathbb{R}^2$ avec la norme $\| \cdot \|_1$, soit $x=(1,0)$ et $y=(0,1)$.

$\|x\|_1=1, \|y\|_1=1$.

$x+y=(1,1)$, $\|x+y\|_1=2$.

$x-y=(1,-1)$, $\|x-y\|_1=2$.

$\|x+y\|_1^2 + \|x-y\|_1^2 = 2^2+2^2=8$.

$2(\|x\|_1^2 + \|y\|_1^2) = 2(1^2+1^2)=4$.

Comme $8 \neq 4$, cette norme ne dérive pas d'un produit scalaire.

### Concepts Connexes

- **Séries de Fourier**: Dans l'espace $L^2([0, 2\pi])$, la famille $(e^{int})_{n \in \mathbb{Z}}$ est orthogonale. La décomposition d'une fonction sur cette "base" est une série de Fourier. Le théorème de Pythagore devient l'identité de Parseval.
- **Décomposition en somme directe orthogonale**: Un sous-espace vectoriel et son orthogonal sont en somme directe (Concept 8). C'est une conséquence fondamentale de l'orthogonalité.

CONTINUATION_NEEDED: Concepts from section 1.2 onwards (Bases orthonormées, Gram-Schmidt, Projection, Adjoints, Riesz).

Résumé:

Extrait jusqu'à présent : 4 concepts couvrant la section 1.1 du chapitre, "Produit scalaire, définitions".

- Concept 1: Formes bilinéaires et sesquilinéaires.
- Concept 2: Espaces Euclidiens et Hermitiens.
- Concept 3: Norme associée et Inégalité de Cauchy-Schwarz.
- Concept 4: Orthogonalité et Identités Remarquables.

Contenu restant à extraire :

- Section 1.2: Bases orthonormées et algorithme de Gram-Schmidt (Concepts 5, 6, 7).
- Section 1.3: Distance et projection orthogonale (Concepts 8, 9, 10).
- Section 1.4: Endomorphismes et adjoints (Concepts 11, 12).
- Section 1.5: Le théorème de représentation de Riesz (Concepts 13, 14).
