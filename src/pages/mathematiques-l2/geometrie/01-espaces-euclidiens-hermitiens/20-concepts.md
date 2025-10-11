---
title: B - Concepts
level: pro
course: Géométrie
chapter: Espaces Euclidiens et Hermitiens
order: 20
tags: ["concepts", "mathematics", "pro"]
---

# Espaces Euclidiens et Hermitiens (B)

---

## Concept 1: Formes bilinéaires et sesquilinéaires

### Prérequis

- Algèbre linéaire : Espaces vectoriels sur un corps $\mathbb{K}$, applications linéaires.
- Corps des nombres réels $\mathbb{R}$ et complexes $\mathbb{C}$ (y compris la conjugaison complexe).

### Définition

Soit $E$ un espace vectoriel de dimension finie sur un corps $\mathbb{K}$ (où $\mathbb{K} = \mathbb{R}$ ou $\mathbb{K} = \mathbb{C}$).

1.  Une application $\varphi: E \times E \to \mathbb{K}$ est une **forme bilinéaire** si elle est linéaire par rapport à chacune de ses variables. C'est-à-dire, pour tous $u, v, w \in E$ et tout $\lambda \in \mathbb{K}$ :
    -   $\varphi(u + \lambda v, w) = \varphi(u, w) + \lambda \varphi(v, w)$ (linéarité à gauche)
    -   $\varphi(u, v + \lambda w) = \varphi(u, v) + \lambda \varphi(u, w)$ (linéarité à droite)

2.  Lorsque $\mathbb{K} = \mathbb{C}$, une application $\varphi: E \times E \to \mathbb{C}$ est une **forme sesquilinéaire** si elle est linéaire par rapport à sa première variable et semi-linéaire (ou anti-linéaire) par rapport à sa seconde variable. C'est-à-dire, pour tous $u, v, w \in E$ et tout $\lambda \in \mathbb{C}$ :
    -   $\varphi(u + \lambda v, w) = \varphi(u, w) + \lambda \varphi(v, w)$ (linéarité à gauche)
    -   $\varphi(u, v + \lambda w) = \varphi(u, v) + \bar{\lambda} \varphi(u, w)$ (semi-linéarité à droite)

Une forme bilinéaire $\varphi$ est dite **symétrique** si $\forall (x, y) \in E^2, \varphi(x, y) = \varphi(y, x)$.

Une forme sesquilinéaire $\varphi$ est dite **hermitienne** (ou à symétrie hermitienne) si $\forall (x, y) \in E^2, \varphi(x, y) = \overline{\varphi(y, x)}$.

### Propriétés Clés

-   Pour toute forme bilinéaire ou sesquilinéaire $\varphi$, on a $\varphi(x, 0_E) = \varphi(0_E, x) = 0$ pour tout $x \in E$.
-   Si $\varphi$ est une forme hermitienne, alors pour tout $x \in E$, $\varphi(x, x) = \overline{\varphi(x, x)}$, ce qui implique que $\varphi(x, x)$ est un nombre réel.
-   L'ensemble des formes bilinéaires sur $E$, noté $\mathcal{L}_2(E, \mathbb{K})$, et l'ensemble des formes sesquilinéaires sur $E$ sont des $\mathbb{K}$-espaces vectoriels.

### Exemples

**Exemple 1 : Produit scalaire canonique sur $\mathbb{R}^n$**

Soit $E = \mathbb{R}^n$. L'application $\varphi: \mathbb{R}^n \times \mathbb{R}^n \to \mathbb{R}$ définie par $\varphi(x, y) = \sum_{i=1}^n x_i y_i = {}^tXY$ est une forme bilinéaire symétrique.

**Exemple 2 : Forme hermitienne canonique sur $\mathbb{C}^n$**

Soit $E = \mathbb{C}^n$. L'application $\varphi: \mathbb{C}^n \times \mathbb{C}^n \to \mathbb{C}$ définie par $\varphi(x, y) = \sum_{i=1}^n x_i \bar{y}_i = {}^tX\bar{Y}$ est une forme sesquilinéaire hermitienne.

**Exemple 3 : Forme bilinéaire sur un espace de matrices**

Soit $E = M_n(\mathbb{R})$. L'application $\varphi: E \times E \to \mathbb{R}$ définie par $\varphi(A, B) = \text{Tr}({}^tA B)$ est une forme bilinéaire symétrique. Si $E=M_n(\mathbb{C})$, $\varphi(A,B) = \text{Tr}(A^*B)$ où $A^* = {}^t\bar{A}$ est une forme sesquilinéaire hermitienne.

### Contre-exemples

**Contre-exemple 1 : Non-linéarité**

Soit $E = \mathbb{R}^2$. L'application $\varphi((x_1, x_2), (y_1, y_2)) = x_1 y_1 + x_2^2 y_2^2$ n'est ni bilinéaire ni sesquilinéaire car elle n'est pas linéaire en la deuxième variable.

**Contre-exemple 2 : Forme sesquilinéaire non-hermitienne**

Soit $E = \mathbb{C}^2$. L'application $\varphi((x_1, x_2), (y_1, y_2)) = x_1 \bar{y}_2$ est sesquilinéaire, mais non hermitienne. En effet, $\varphi((0,1), (1,0)) = 1 \cdot \bar{0} = 0$, tandis que $\overline{\varphi((1,0), (0,1))} = \overline{0 \cdot \bar{1}} = 0$. Cependant, pour d'autres vecteurs, $\varphi((i,0),(0,1)) = i\bar{1} = i$, mais $\overline{\varphi((0,1),(i,0))} = \overline{0\cdot \bar{i}} = 0$. Un meilleur contre-exemple est $\varphi(x,y) = x_1\bar{y}_1 + x_1\bar{y}_2$. On a $\varphi((1,0),(0,1)) = 1$, mais $\overline{\varphi((0,1),(1,0))} = 0$.

### Concepts Liés

-   **Forme quadratique** : Associée à une forme bilinéaire symétrique $\varphi$, c'est l'application $q: E \to \mathbb{K}$ définie par $q(x) = \varphi(x, x)$.
-   **Tenseurs** : Une forme bilinéaire sur $E$ peut être vue comme un tenseur de type (0,2), c'est-à-dire un élément de l'espace $E^* \otimes E^*$, où $E^*$ est l'espace dual de $E$.

---

## Concept 2: Produit Scalaire et Espaces Préhilbertiens

### Prérequis

- Concept 1: Formes bilinéaires et sesquilinéaires.
- Notions d'algèbre sur les nombres réels et complexes.

### Définition

Soit $E$ un $\mathbb{K}$-espace vectoriel de dimension finie.

1.  Un **produit scalaire** sur $E$ est une forme $\varphi: E \times E \to \mathbb{K}$ qui est :
    -   **Si $\mathbb{K} = \mathbb{R}$** : bilinéaire, symétrique et **définie positive** (i.e., $\forall x \in E, \varphi(x, x) \ge 0$ et $\varphi(x, x) = 0 \iff x = 0_E$).
    -   **Si $\mathbb{K} = \mathbb{C}$** : sesquilinéaire, hermitienne et **définie positive** (i.e., $\forall x \in E, \varphi(x, x) \ge 0$ et $\varphi(x, x) = 0 \iff x = 0_E$).

2.  Un $\mathbb{R}$-espace vectoriel muni d'un produit scalaire est appelé **espace euclidien**.
3.  Un $\mathbb{C}$-espace vectoriel muni d'un produit scalaire est appelé **espace hermitien**.

Le terme **espace préhilbertien** est souvent utilisé pour désigner de tels espaces, surtout en dimension infinie.

On notera souvent le produit scalaire $\langle x, y \rangle$ au lieu de $\varphi(x, y)$.

### Propriétés Clés

-   La condition $\varphi(x, x) \ge 0$ (positivité) est nécessaire pour que la racine carrée $\sqrt{\varphi(x, x)}$ soit bien définie et réelle.
-   La condition $\varphi(x, x) = 0 \iff x = 0_E$ (définie) assure que seuls les vecteurs nuls ont une "longueur" nulle, ce qui est essentiel pour définir une norme.

### Exemples

**Exemple 1 : Produit scalaire sur les polynômes**

Soit $E = \mathbb{R}_n[X]$ l'espace des polynômes de degré au plus $n$. L'application $\langle P, Q \rangle = \int_{-1}^{1} P(t)Q(t) dt$ est un produit scalaire euclidien. La propriété définie positive vient du fait que si $\int_{-1}^1 P(t)^2 dt = 0$ pour un polynôme continu $P$, alors $P$ doit être le polynôme nul.

**Exemple 2 : Produit scalaire de Frobenius**

Soit $E = M_n(\mathbb{C})$. L'application $\langle A, B \rangle = \text{Tr}(A^*B)$ est un produit scalaire hermitien. On a $\langle A, A \rangle = \text{Tr}(A^*A) = \sum_{i,j} |a_{ij}|^2 \ge 0$, et cette somme est nulle si et seulement si tous les $a_{ij}$ sont nuls, donc $A=0$.

**Exemple 3 : Produit scalaire pondéré**

Soit $E = \mathcal{C}([a, b], \mathbb{R})$ et $w: [a, b] \to \mathbb{R}_+^*$ une fonction poids continue. Alors $\langle f, g \rangle_w = \int_a^b f(t)g(t)w(t) dt$ définit un produit scalaire sur $E$.

### Contre-exemples

**Contre-exemple 1 : Forme positive mais non-définie**

Sur $E=\mathbb{R}^2$, la forme bilinéaire symétrique $\varphi((x_1, x_2), (y_1, y_2)) = x_1y_1$ est positive ($\varphi(x,x) = x_1^2 \ge 0$), mais elle n'est pas définie car pour tout $x_2 \in \mathbb{R}$, $\varphi((0, x_2), (0, x_2)) = 0$ bien que $(0, x_2)$ ne soit pas nécessairement le vecteur nul.

**Contre-exemple 2 : Forme non-dégénérée mais non-positive**

Sur $E=\mathbb{R}^2$, la forme bilinéaire symétrique de signature $(1,1)$, $\varphi((x_1, x_2), (y_1, y_2)) = x_1y_1 - x_2y_2$, est non-dégénérée (si $\varphi(x,y)=0$ pour tout $y$, alors $x=0$) mais n'est pas positive. Par exemple, $\varphi((0,1),(0,1)) = -1 < 0$. C'est la métrique de Minkowski en 1+1 dimensions.

### Concepts Liés

-   **Espace de Hilbert** : Un espace préhilbertien qui est complet pour la norme induite par le produit scalaire. Tout espace euclidien ou hermitien (de dimension finie) est un espace de Hilbert.
-   **Géométrie Riemannienne** : Une généralisation où chaque espace tangent d'une variété différentielle est muni d'un produit scalaire qui varie de façon lisse.

---

## Concept 3: Inégalité de Cauchy-Schwarz et Norme Associée

### Prérequis

- Concept 2: Produit Scalaire et Espaces Préhilbertiens.

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien.

1.  La **norme** associée au produit scalaire est l'application $\|\cdot\|: E \to \mathbb{R}^+$ définie par :

    $$ \|x\| = \sqrt{\langle x, x \rangle} $$

2.  **Inégalité de Cauchy-Schwarz** : Pour tous vecteurs $x, y \in E$, on a :

    $$ |\langle x, y \rangle| \le \|x\| \|y\| $$

    L'égalité a lieu si et seulement si les vecteurs $x$ et $y$ sont colinéaires (liés).

### Propriétés Clés

-   La norme $\|\cdot\|$ issue d'un produit scalaire vérifie les axiomes d'une norme :
    1.  $\|x\| = 0 \iff x = 0_E$ (Séparation)
    2.  $\|\lambda x\| = |\lambda| \|x\|$ pour tout $\lambda \in \mathbb{K}, x \in E$ (Homogénéité)
    3.  $\|x+y\| \le \|x\| + \|y\|$ pour tout $x,y \in E$ (Inégalité triangulaire ou de Minkowski)

-   **Preuve de l'inégalité de Cauchy-Schwarz (cas hermitien)** :

    Soient $x, y \in E$. Si $y=0_E$, l'inégalité est triviale. Supposons $y \ne 0_E$. Pour tout $\lambda \in \mathbb{C}$, on a :

    $$ 0 \le \|x - \lambda y\|^2 = \langle x - \lambda y, x - \lambda y \rangle = \|x\|^2 - \lambda \langle y, x \rangle - \bar{\lambda} \langle x, y \rangle + |\lambda|^2 \|y\|^2 $$

    Choisissons $\lambda = \frac{\langle x, y \rangle}{\|y\|^2}$. En substituant, on obtient :

    $$ 0 \le \|x\|^2 - \frac{\langle x, y \rangle}{\|y\|^2} \langle y, x \rangle - \frac{\overline{\langle x, y \rangle}}{\|y\|^2} \langle x, y \rangle + \frac{|\langle x, y \rangle|^2}{\|y\|^4} \|y\|^2 $$

    $$ 0 \le \|x\|^2 - \frac{|\langle x, y \rangle|^2}{\|y\|^2} - \frac{|\langle x, y \rangle|^2}{\|y\|^2} + \frac{|\langle x, y \rangle|^2}{\|y\|^2} = \|x\|^2 - \frac{|\langle x, y \rangle|^2}{\|y\|^2} $$

    D'où $|\langle x, y \rangle|^2 \le \|x\|^2 \|y\|^2$. Le cas d'égalité se produit lorsque $\|x - \lambda y\|^2 = 0$, ce qui implique $x = \lambda y$.

### Exemples

**Exemple 1 : Inégalité de Hölder pour $p=2$ dans $\mathbb{C}^n$**

Le produit scalaire hermitien canonique sur $\mathbb{C}^n$ est $\langle x, y \rangle = \sum_{i=1}^n x_i \bar{y}_i$. L'inégalité de Cauchy-Schwarz donne :

$$ \left| \sum_{i=1}^n x_i \bar{y}_i \right| \le \left( \sum_{i=1}^n |x_i|^2 \right)^{1/2} \left( \sum_{i=1}^n |y_i|^2 \right)^{1/2} $$

**Exemple 2 : Inégalité intégrale**

Pour $f, g \in \mathcal{C}([a, b], \mathbb{R})$, avec le produit scalaire $\langle f, g \rangle = \int_a^b f(t)g(t)dt$:

$$ \left| \int_a^b f(t)g(t)dt \right| \le \left( \int_a^b f(t)^2 dt \right)^{1/2} \left( \int_a^b g(t)^2 dt \right)^{1/2} $$

**Exemple 3 : Probabilités**

Pour deux variables aléatoires réelles $X$ et $Y$ d'espérance nulle, l'espace des variables aléatoires de variance finie est muni du produit scalaire $\langle X, Y \rangle = E[XY]$. La covariance est $\text{Cov}(X,Y) = E[XY]$. La norme est l'écart-type $\sigma_X = \sqrt{E[X^2]}$. L'inégalité de Cauchy-Schwarz s'écrit :

$|E[XY]| \le \sqrt{E[X^2]E[Y^2]}$, soit $|\text{Cov}(X,Y)| \le \sigma_X \sigma_Y$. Le coefficient de corrélation $\rho = \frac{\text{Cov}(X,Y)}{\sigma_X\sigma_Y}$ est donc toujours de valeur absolue inférieure ou égale à 1.

### Contre-exemples

**Contre-exemple 1 : Norme non-euclidienne**

La norme $L_1$ sur $\mathbb{R}^2$ est définie par $\|(x_1, x_2)\|_1 = |x_1| + |x_2|$. Si cette norme provenait d'un produit scalaire, elle devrait satisfaire l'identité du parallélogramme (voir concept suivant), ce qu'elle ne fait pas. Par exemple, avec $x=(1,0)$ et $y=(0,1)$, $\|x+y\|_1^2 + \|x-y\|_1^2 = 2^2 + 2^2 = 8$, mais $2(\|x\|_1^2 + \|y\|_1^2) = 2(1^2+1^2) = 4$.

**Contre-exemple 2 : Application qui n'est pas une norme**

Sur $\mathbb{R}^2$, l'application $N(x,y) = |x-y|$ n'est pas une norme car $N(\lambda x, \lambda y) = |\lambda(x-y)| = |\lambda|N(x,y)$ (homogénéité) est violée si $\lambda \neq \pm 1$ par exemple. Elle ne vérifie pas non plus $N(x,y) = 0 \iff (x,y)=(0,0)$.

### Concepts Liés

-   **Angle entre deux vecteurs** : Dans un espace euclidien, on peut définir l'angle $\theta$ entre deux vecteurs non nuls $x$ et $y$ par $\cos(\theta) = \frac{\langle x, y \rangle}{\|x\| \|y\|}$.
-   **Espaces de Banach** : Espaces vectoriels normés complets. Tout espace de Hilbert est un espace de Banach, mais la réciproque est fausse.

---

## Concept 4: Identités de Polarisation et du Parallélogramme

### Prérequis

- Concept 3: Norme Associée.

### Définition

Ces identités relient le produit scalaire à la norme qu'il induit. Elles montrent que la norme détermine entièrement le produit scalaire. Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien.

1.  **Identités de Polarisation** :
    -   **Cas euclidien ($\mathbb{K}=\mathbb{R}$)** : Pour tous $x, y \in E$,

        $$ \langle x, y \rangle = \frac{1}{2} \left( \|x+y\|^2 - \|x\|^2 - \|y\|^2 \right) = \frac{1}{4} \left( \|x+y\|^2 - \|x-y\|^2 \right) $$

    -   **Cas hermitien ($\mathbb{K}=\mathbb{C}$)** : Pour tous $x, y \in E$,

        $$ \langle x, y \rangle = \frac{1}{4} \left( \|x+y\|^2 - \|x-y\|^2 + i(\|x+iy\|^2 - \|x-iy\|^2) \right) $$

2.  **Identité du Parallélogramme** :

    Pour tous $x, y \in E$,

    $$ \|x+y\|^2 + \|x-y\|^2 = 2(\|x\|^2 + \|y\|^2) $$

    Cette identité signifie que la somme des carrés des longueurs des diagonales d'un parallélogramme est égale à la somme des carrés des longueurs de ses quatre côtés.

### Propriétés Clés

-   Les identités de polarisation permettent de reconstituer le produit scalaire à partir de la norme, prouvant l'unicité du produit scalaire induisant une norme donnée.
-   **Théorème de Fréchet-von Neumann-Jordan** : Une norme sur un $\mathbb{K}$-espace vectoriel dérive d'un produit scalaire si et seulement si elle satisfait l'identité du parallélogramme. C'est une caractérisation fondamentale des espaces préhilbertiens parmi les espaces normés.

### Exemples

**Exemple 1 : Vérification dans $\mathbb{R}^2$**

Soient $x=(x_1, x_2)$ et $y=(y_1, y_2)$ dans $\mathbb{R}^2$ avec la norme euclidienne.

$\|x+y\|^2 = (x_1+y_1)^2 + (x_2+y_2)^2$

$\|x-y\|^2 = (x_1-y_1)^2 + (x_2-y_2)^2$

$\|x+y\|^2 + \|x-y\|^2 = (x_1^2+2x_1y_1+y_1^2 + x_2^2+2x_2y_2+y_2^2) + (x_1^2-2x_1y_1+y_1^2 + x_2^2-2x_2y_2+y_2^2)$

$= 2(x_1^2+y_1^2+x_2^2+y_2^2) = 2(\|x\|^2+\|y\|^2)$. L'identité est vérifiée.

**Exemple 2 : Reconstitution du produit scalaire**

Dans un espace euclidien, si on connait $\|x\|, \|y\|, \|x+y\|$, on peut calculer $\langle x,y \rangle$. Soit $\|x\|=3, \|y\|=2, \|x+y\|=4$.

$\langle x, y \rangle = \frac{1}{2}(4^2 - 3^2 - 2^2) = \frac{1}{2}(16-9-4) = \frac{3}{2}$.

**Exemple 3 : Polarisation dans $\mathbb{C}$**

Soient $z_1, z_2 \in \mathbb{C}$. $\langle z_1, z_2 \rangle = z_1 \bar{z_2}$.

$\frac{1}{4}(|z_1+z_2|^2 - |z_1-z_2|^2) = \frac{1}{4}((z_1+z_2)(\bar{z_1}+\bar{z_2}) - (z_1-z_2)(\bar{z_1}-\bar{z_2}))$

$= \frac{1}{4}( (z_1\bar{z_1}+z_1\bar{z_2}+z_2\bar{z_1}+z_2\bar{z_2}) - (z_1\bar{z_1}-z_1\bar{z_2}-z_2\bar{z_1}+z_2\bar{z_2}) )$

$= \frac{1}{4}(2z_1\bar{z_2} + 2z_2\bar{z_1}) = \frac{1}{2}(z_1\bar{z_2} + \overline{z_1\bar{z_2}}) = \text{Re}(z_1\bar{z_2})$.

Le terme imaginaire de la formule de polarisation est nécessaire pour récupérer la partie imaginaire de $\langle z_1, z_2 \rangle$.

### Contre-exemples

**Contre-exemple 1 : Norme $L_p$ pour $p \ne 2$**

La norme $L_\infty$ sur $\mathbb{R}^2$ est $\|(x,y)\|_\infty = \max(|x|,|y|)$. Soient $u=(1,0)$ et $v=(0,1)$.

$\|u+v\|_\infty^2 + \|u-v\|_\infty^2 = \|\,(1,1)\,\|_\infty^2 + \|\,(1,-1)\,\|_\infty^2 = 1^2 + 1^2 = 2$.

$2(\|u\|_\infty^2 + \|v\|_\infty^2) = 2(1^2+1^2) = 4$.

Comme $2 \ne 4$, l'identité du parallélogramme n'est pas vérifiée, donc cette norme ne dérive pas d'un produit scalaire.

**Contre-exemple 2 : Norme sur l'espace des fonctions continues**

Considérons $E=\mathcal{C}([0,1], \mathbb{R})$ avec la norme de la convergence uniforme $\|f\|_\infty = \sup_{t \in [0,1]} |f(t)|$. Soient $f(t)=t$ et $g(t)=1-t$.

$\|f\|_\infty = 1$, $\|g\|_\infty=1$.

$f+g=1$, donc $\|f+g\|_\infty=1$.

$f-g=2t-1$, donc $\|f-g\|_\infty=1$.

$\|f+g\|_\infty^2 + \|f-g\|_\infty^2 = 1^2+1^2=2$.

$2(\|f\|_\infty^2+\|g\|_\infty^2)=2(1^2+1^2)=4$.

L'identité du parallélogramme n'est pas satisfaite.

### Concepts Liés

-   **Structure d'espace de Hilbert** : Le théorème de Fréchet-von Neumann-Jordan est crucial car il donne une condition simple et géométrique (l'identité du parallélogramme) pour qu'un espace de Banach soit en fait un espace de Hilbert.

---

## Concept 5: Orthogonalité et Bases Orthonormées

### Prérequis

- Concept 2: Produit Scalaire et Espaces Préhilbertiens.
- Algèbre linéaire : Bases, familles libres et génératrices.

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien.

1.  Deux vecteurs $x, y \in E$ sont dits **orthogonaux** si $\langle x, y \rangle = 0$. On note $x \perp y$.
2.  Une famille de vecteurs $(e_i)_{i \in I}$ est dite **orthogonale** si ses vecteurs sont deux à deux orthogonaux, i.e. $\forall i \ne j, \langle e_i, e_j \rangle = 0$.
3.  Une famille est dite **orthonormée** (ou orthonormale) si elle est orthogonale et si tous ses vecteurs sont unitaires, i.e. $\forall i \in I, \|e_i\|=1$.

    En résumé : $\langle e_i, e_j \rangle = \delta_{ij}$ (symbole de Kronecker).

4.  Une **base orthonormée** (BON) de $E$ est une base de $E$ qui est aussi une famille orthonormée.

### Propriétés Clés

-   **Théorème de Pythagore** : Si $(v_1, \dots, v_n)$ est une famille orthogonale, alors :

    $$ \left\| \sum_{i=1}^n v_i \right\|^2 = \sum_{i=1}^n \|v_i\|^2 $$

-   Toute famille orthogonale de vecteurs non nuls est libre.

    *Preuve* : Soit $(v_1, \dots, v_n)$ une telle famille et $\sum_{i=1}^n \lambda_i v_i = 0$. En faisant le produit scalaire avec $v_j$, on obtient $\langle \sum_{i=1}^n \lambda_i v_i, v_j \rangle = \sum_{i=1}^n \lambda_i \langle v_i, v_j \rangle = \lambda_j \langle v_j, v_j \rangle = \lambda_j \|v_j\|^2 = 0$. Comme $v_j \ne 0$, $\|v_j\|^2 \ne 0$, donc $\lambda_j = 0$. Ceci est vrai pour tout $j$.

-   Soit $\mathcal{B} = (e_1, \dots, e_n)$ une base orthonormée de $E$. Pour tout $x, y \in E$ :
    -   Les coordonnées de $x$ dans $\mathcal{B}$ sont $x_i = \langle x, e_i \rangle$. Donc $x = \sum_{i=1}^n \langle x, e_i \rangle e_i$.
    -   Le produit scalaire s'exprime simplement : $\langle x, y \rangle = \sum_{i=1}^n \langle x, e_i \rangle \overline{\langle y, e_i \rangle} = \sum_{i=1}^n x_i \bar{y}_i$.
    -   **Identité de Parseval** : La norme au carré est la somme des carrés des modules des coordonnées : $\|x\|^2 = \sum_{i=1}^n |\langle x, e_i \rangle|^2 = \sum_{i=1}^n |x_i|^2$.

### Exemples

**Exemple 1 : Base canonique de $\mathbb{R}^n$**

La base canonique $(e_1, \dots, e_n)$ de $\mathbb{R}^n$, où $e_i$ a un 1 à la $i$-ème position et des 0 ailleurs, est une base orthonormée pour le produit scalaire usuel. $\langle e_i, e_j \rangle = \delta_{ij}$.

**Exemple 2 : Polynômes de Legendre**

Sur $E=\mathbb{R}_n[X]$ avec $\langle P, Q \rangle = \int_{-1}^1 P(t)Q(t)dt$, la famille des polynômes de Legendre (normalisés) forme une base orthonormée. Les premiers polynômes orthogonaux (non normalisés) sont $P_0(t)=1, P_1(t)=t, P_2(t)=t^2-1/3$.

**Exemple 3 : Base de Fourier**

Sur l'espace $\mathcal{T}_n$ des polynômes trigonométriques de degré au plus $n$ sur $[0, 2\pi]$ muni du produit scalaire $\langle f, g \rangle = \frac{1}{2\pi} \int_0^{2\pi} f(t)\overline{g(t)}dt$, la famille $(e_k(t) = e^{ikt})_{k=-n, \dots, n}$ forme une base orthonormée. Pour $P(t) = \sum_k a_k e^{ikt}$, les coefficients $a_k = \langle P, e_k \rangle$ sont les coefficients de Fourier, et l'identité de Parseval s'écrit $\|P\|^2 = \sum_k |a_k|^2$.

### Contre-exemples

**Contre-exemple 1 : Base orthogonale mais pas orthonormée**

Dans $\mathbb{R}^2$, la base $((2,0), (0,3))$ est orthogonale pour le produit scalaire usuel, mais pas orthonormée car les vecteurs ne sont pas de norme 1.

**Contre-exemple 2 : Base non orthogonale**

Dans $\mathbb{R}^2$, la base canonique est orthonormée pour le produit scalaire usuel, mais elle n'est pas orthogonale pour le produit scalaire défini par $\langle (x_1, x_2), (y_1, y_2) \rangle = 2x_1y_1 + x_1y_2 + x_2y_1 + x_2y_2$. En effet, $\langle (1,0), (0,1) \rangle = 1 \ne 0$.

### Concepts Liés

-   **Procédé de Gram-Schmidt** : Algorithme constructif pour transformer n'importe quelle base en une base orthonormée.
-   **Séries de Fourier** : En dimension infinie (espaces de Hilbert), l'identité de Parseval et la décomposition sur une base hilbertienne sont les fondements de la théorie des séries de Fourier.

---

## Concept 6: Procédé d'Orthonormalisation de Gram-Schmidt

### Prérequis

- Concept 5: Orthogonalité et Bases Orthonormées.
- Projections orthogonales (le concept est formellement introduit plus tard, mais l'idée est utilisée ici).

### Définition

Le procédé de Gram-Schmidt est un algorithme qui, à partir d'une base quelconque $(v_1, \dots, v_n)$ d'un espace euclidien ou hermitien $E$, construit une base orthonormée $(e_1, \dots, e_n)$ telle que pour tout $k \in \{1, \dots, n\}$, on ait $\text{Vect}(e_1, \dots, e_k) = \text{Vect}(v_1, \dots, v_k)$.

**Algorithme :**

1.  **Initialisation ($k=1$)** :
    -   On pose $u_1 = v_1$.
    -   On normalise : $e_1 = \frac{u_1}{\|u_1\|}$.

2.  **Étape $k$ ($2 \le k \le n$)** :
    -   Supposant $(e_1, \dots, e_{k-1})$ déjà construits. On calcule $u_k$ en soustrayant à $v_k$ sa projection sur le sous-espace engendré par les vecteurs précédents :

        $$ u_k = v_k - \sum_{j=1}^{k-1} \langle v_k, e_j \rangle e_j $$

    -   On normalise : $e_k = \frac{u_k}{\|u_k\|}$.

### Propriétés Clés

-   **Existence de bases orthonormées** : Le procédé de Gram-Schmidt fournit une preuve constructive que tout espace euclidien ou hermitien de dimension finie admet une base orthonormée.
-   **Interprétation géométrique** : A chaque étape $k$, le vecteur $u_k$ est la composante de $v_k$ qui est orthogonale au sous-espace $F_{k-1} = \text{Vect}(v_1, \dots, v_{k-1}) = \text{Vect}(e_1, \dots, e_{k-1})$. On a $u_k = v_k - \text{proj}_{F_{k-1}}(v_k)$.
-   Le vecteur $u_k$ est non nul. En effet, si $u_k = 0$, alors $v_k \in \text{Vect}(e_1, \dots, e_{k-1}) = \text{Vect}(v_1, \dots, v_{k-1})$, ce qui contredit le fait que la famille $(v_1, \dots, v_n)$ est libre.
-   Le résultat dépend de l'ordre des vecteurs de la base de départ.

### Exemples

**Exemple 1 : Orthonormalisation dans $\mathbb{R}^3$**

Soit $E=\mathbb{R}^3$ avec le produit scalaire usuel, et la base $v_1=(1,1,0), v_2=(1,0,1), v_3=(0,1,1)$.

- **k=1**: $u_1 = v_1 = (1,1,0)$. $\|u_1\|=\sqrt{2}$. $e_1 = \frac{1}{\sqrt{2}}(1,1,0)$.
- **k=2**: $\langle v_2, e_1 \rangle = \langle (1,0,1), \frac{1}{\sqrt{2}}(1,1,0) \rangle = \frac{1}{\sqrt{2}}$.

$u_2 = v_2 - \langle v_2, e_1 \rangle e_1 = (1,0,1) - \frac{1}{\sqrt{2}} \frac{1}{\sqrt{2}}(1,1,0) = (1,0,1) - (\frac{1}{2},\frac{1}{2},0) = (\frac{1}{2}, -\frac{1}{2}, 1)$.

$\|u_2\| = \sqrt{\frac{1}{4}+\frac{1}{4}+1} = \sqrt{\frac{3}{2}}$.

$e_2 = \sqrt{\frac{2}{3}}(\frac{1}{2}, -\frac{1}{2}, 1) = \frac{1}{\sqrt{6}}(1,-1,2)$.

- **k=3**: $\langle v_3, e_1 \rangle = \frac{1}{\sqrt{2}}$, $\langle v_3, e_2 \rangle = \frac{1}{\sqrt{6}}$.

$u_3 = v_3 - \langle v_3, e_1 \rangle e_1 - \langle v_3, e_2 \rangle e_2 = (0,1,1) - \frac{1}{2}(1,1,0) - \frac{1}{6}(1,-1,2) = (-\frac{2}{3}, \frac{2}{3}, \frac{2}{3})$.

$\|u_3\| = \sqrt{\frac{4}{9}+\frac{4}{9}+\frac{4}{9}} = \frac{\sqrt{12}}{3} = \frac{2}{\sqrt{3}}$.

$e_3 = \frac{\sqrt{3}}{2}(-\frac{2}{3}, \frac{2}{3}, \frac{2}{3}) = \frac{1}{\sqrt{3}}(-1,1,1)$.

La base orthonormée est $(e_1, e_2, e_3)$.

**Exemple 2 : Polynômes de Legendre**

Sur $E = \mathbb{R}_2[X]$ avec $\langle P, Q \rangle = \int_{-1}^1 P(t)Q(t)dt$, à partir de la base canonique $(1, X, X^2)$.

- $v_1=1$: $\|v_1\|^2 = \int_{-1}^1 1^2 dt = 2$. $e_1 = \frac{1}{\sqrt{2}}$.
- $v_2=X$: $\langle v_2, e_1 \rangle = \int_{-1}^1 t \frac{1}{\sqrt{2}} dt = 0$. $u_2=v_2=X$. $\|u_2\|^2=\int_{-1}^1 t^2 dt = \frac{2}{3}$. $e_2=\sqrt{\frac{3}{2}}X$.
- $v_3=X^2$: $\langle v_3, e_1 \rangle = \frac{1}{\sqrt{2}}\int_{-1}^1 t^2 dt = \frac{\sqrt{2}}{3}$. $\langle v_3, e_2 \rangle = \sqrt{\frac{3}{2}}\int_{-1}^1 t^3 dt = 0$.

$u_3 = v_3 - \langle v_3, e_1 \rangle e_1 = X^2 - \frac{\sqrt{2}}{3}\frac{1}{\sqrt{2}} = X^2 - \frac{1}{3}$.

**Exemple 3 : Décomposition QR**

L'algorithme de Gram-Schmidt est à la base de la décomposition QR d'une matrice $A$ (dont les colonnes sont les $v_i$) en un produit $A=QR$ où $Q$ est une matrice orthogonale (colonnes $e_i$) et $R$ est une matrice triangulaire supérieure.

### Contre-exemples (aspects numériques)

**Contre-exemple 1 : Instabilité numérique**

L'algorithme de Gram-Schmidt "classique" est numériquement instable. Si les vecteurs de départ sont presque colinéaires, la soustraction $v_k - \sum \dots$ peut entraîner une perte de précision catastrophique. Le "Gram-Schmidt modifié" est une variante numériquement plus stable.

**Contre-exemple 2 : Famille liée**

Si on applique l'algorithme à une famille liée $(v_1, \dots, v_n)$, à un certain rang $k$, $v_k$ sera une combinaison linéaire de $(v_1, \dots, v_{k-1})$. Alors $u_k$ sera le vecteur nul et l'algorithme échoue (division par zéro). C'est aussi un test de dépendance linéaire.

### Concepts Liés

- **Décomposition QR** : une application directe en algèbre linéaire numérique.
- **Projection orthogonale** : Le coeur de l'algorithme est le calcul de $v_k - \text{proj}_{\text{Vect}(e_1, \dots, e_{k-1})} v_k$.

---

## Concept 7: Matrice de Gram

### Prérequis

- Concept 5: Orthogonalité et Bases Orthonormées.
- Algèbre matricielle.

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien de dimension $n$. Soit $\mathcal{B}=(e_1, \dots, e_n)$ une base quelconque de $E$.

La **matrice de Gram** associée à la famille de vecteurs $(e_1, \dots, e_n)$ est la matrice $G \in M_n(\mathbb{K})$ dont les coefficients sont les produits scalaires des vecteurs de la base :

$$ G_{ij} = \langle e_i, e_j \rangle $$

$$ G = \begin{pmatrix} \langle e_1, e_1 \rangle & \cdots & \langle e_1, e_n \rangle \\ \vdots & \ddots & \vdots \\ \langle e_n, e_1 \rangle & \cdots & \langle e_n, e_n \rangle \end{pmatrix} $$

### Propriétés Clés

- **Expression du produit scalaire** : Si $x=\sum x_i e_i$ et $y=\sum y_j e_j$, avec $X$ et $Y$ les vecteurs colonnes de leurs coordonnées dans $\mathcal{B}$:
  - **Cas euclidien** : $\langle x, y \rangle = \sum_{i,j} x_i y_j \langle e_i, e_j \rangle = {}^tX G Y$
  - **Cas hermitien** : $\langle x, y \rangle = \sum_{i,j} x_i \bar{y}_j \langle e_i, e_j \rangle = {}^tX G \bar{Y}$
- La matrice de Gram est toujours **symétrique** (cas euclidien) ou **hermitienne** (cas hermitien). $G_{ji} = \langle e_j, e_i \rangle = \overline{\langle e_i, e_j \rangle} = \overline{G_{ij}}$. Donc $G={}^tG$ ou $G=G^*$.
- La matrice de Gram d'une **base** est toujours **définie positive**. Si $X \ne 0$, alors $x \ne 0$, et ${}^tX G \bar{X} = \|x\|^2 > 0$. Par conséquent, $G$ est inversible et $\det(G)>0$.
- Une base $\mathcal{B}$ est **orthonormée** si et seulement si sa matrice de Gram est la matrice identité $I_n$.
- **Changement de base** : Si $\mathcal{B'}$ est une autre base et $P$ la matrice de passage de $\mathcal{B}$ à $\mathcal{B'}$, alors les matrices de Gram $G$ et $G'$ sont liées par $G' = {}^tP G \bar{P}$ (ou $G' = P^* G P$ avec la convention $X' = PX$).

### Exemples

**Exemple 1 : Base non-orthonormée de $\mathbb{R}^2$**

Soit $E=\mathbb{R}^2$ avec le produit scalaire usuel. Soit la base $\mathcal{B}= (e_1, e_2)$ avec $e_1=(1,1)$ et $e_2=(1,0)$.

$\langle e_1, e_1 \rangle = 2$, $\langle e_2, e_2 \rangle = 1$, $\langle e_1, e_2 \rangle = \langle e_2, e_1 \rangle = 1$.

La matrice de Gram est $G = \begin{pmatrix} 2 & 1 \\ 1 & 1 \end{pmatrix}$.

Pour $x=(x_1, x_2)$ et $y=(y_1, y_2)$ dans la base canonique, leurs coordonnées dans $\mathcal{B}$ sont $X, Y$. $\langle x, y \rangle = (x_1-x_2, x_2) \begin{pmatrix} 2 & 1 \\ 1 & 1 \end{pmatrix} \begin{pmatrix} y_1-y_2 \\ y_2 \end{pmatrix}$.

Le déterminant de Gram $\det(G) = 2-1=1 > 0$.

**Exemple 2 : Base de polynômes**

Sur $E = \mathbb{R}_1[X]$ avec $\langle P, Q \rangle = \int_0^1 P(t)Q(t)dt$ et la base $\mathcal{B}=(1, X)$.

$\langle 1, 1 \rangle = \int_0^1 1 dt = 1$.

$\langle 1, X \rangle = \int_0^1 t dt = 1/2$.

$\langle X, X \rangle = \int_0^1 t^2 dt = 1/3$.

$G = \begin{pmatrix} 1 & 1/2 \\ 1/2 & 1/3 \end{pmatrix}$.

**Exemple 3 : Interprétation géométrique du déterminant de Gram**

Le déterminant de la matrice de Gram de $n$ vecteurs dans un espace euclidien est égal au carré du volume du parallélotope engendré par ces vecteurs.

Dans $\mathbb{R}^2$, pour $u, v$, $\det(G) = \|u\|^2\|v\|^2 - \langle u,v \rangle^2 = \|u\|^2\|v\|^2(1-\cos^2\theta) = (\|u\|\|v\|\sin\theta)^2 = (\text{Aire du parallélogramme})^2$.

### Contre-exemples

**Contre-exemple 1 : Famille liée**

La matrice de Gram d'une famille de vecteurs est semi-définie positive. Elle est définie positive si et seulement si la famille est libre. Si la famille est liée, son déterminant de Gram est nul.

Soit $e_1=(1,0), e_2=(2,0)$ dans $\mathbb{R}^2$. $G = \begin{pmatrix} \langle e_1,e_1 \rangle & \langle e_1,e_2 \rangle \\ \langle e_2,e_1 \rangle & \langle e_2,e_2 \rangle \end{pmatrix} = \begin{pmatrix} 1 & 2 \\ 2 & 4 \end{pmatrix}$. $\det(G)=0$.

**Contre-exemple 2 : Matrice non-Gram**

La matrice $M=\begin{pmatrix} 1 & 2 \\ 2 & 1 \end{pmatrix}$ est symétrique, mais pas définie positive (ses valeurs propres sont $3$ et $-1$). Elle ne peut donc pas être la matrice de Gram d'une base.

### Concepts Liés

- **Déterminant de Gram** : $\det(G)$ mesure le "volume au carré" engendré par la famille de vecteurs. C'est un outil pour tester l'indépendance linéaire.
- **Formes quadratiques** : La matrice de Gram est la matrice de la forme quadratique $q(x) = \|x\|^2$ dans la base $\mathcal{B}$.

---

## Concept 8: Orthogonal d'un sous-espace et Somme directe orthogonale

### Prérequis

- Concept 5: Orthogonalité et Bases Orthonormées.
- Algèbre linéaire : sous-espaces vectoriels, somme directe.

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien et $A$ une partie non vide de $E$.

L'**orthogonal** de $A$, noté $A^\perp$ (lire "A perp"), est l'ensemble des vecteurs de $E$ qui sont orthogonaux à tous les vecteurs de $A$:

$$ A^\perp = \{ x \in E \mid \forall a \in A, \langle x, a \rangle = 0 \} $$

### Propriétés Clés

- $A^\perp$ est toujours un sous-espace vectoriel de $E$, même si $A$ n'en est pas un.
- $A \subseteq B \implies B^\perp \subseteq A^\perp$.
- $A \subseteq (A^\perp)^\perp$.
- Si $F$ est un sous-espace vectoriel de $E$, alors $(\text{Vect}(A))^\perp = A^\perp$.

**Théorème fondamental de la projection orthogonale**

Soit $F$ un sous-espace vectoriel d'un espace euclidien ou hermitien $E$ (de dimension finie).

1. $E$ est la somme directe orthogonale de $F$ et de son orthogonal $F^\perp$:

   $$ E = F \oplus F^\perp $$

   Cela signifie que pour tout $x \in E$, il existe un unique couple $(y, z) \in F \times F^\perp$ tel que $x = y+z$.

2. Le bi-orthogonal de $F$ est $F$ lui-même : $(F^\perp)^\perp = F$.
3. Les dimensions sont liées par la relation : $\dim(F) + \dim(F^\perp) = \dim(E)$.

*Preuve de $E=F+F^\perp$* : Soit $(e_1, \dots, e_p)$ une BON de $F$. Pour tout $x \in E$, on pose $y = \sum_{i=1}^p \langle x, e_i \rangle e_i$ et $z = x-y$. Clairement $y \in F$. On montre que $z \in F^\perp$ en calculant $\langle z, e_j \rangle$ pour tout $j \in \{1, \dots, p\}$.

$\langle z, e_j \rangle = \langle x-y, e_j \rangle = \langle x, e_j \rangle - \langle y, e_j \rangle = \langle x, e_j \rangle - \langle \sum_i \langle x, e_i \rangle e_i, e_j \rangle = \langle x, e_j \rangle - \langle x, e_j \rangle = 0$.

Donc $z \perp e_j$ pour tout $j$, ce qui implique $z \in F^\perp$. On a donc $x=y+z$ avec $y \in F, z \in F^\perp$. La somme est directe car si $u \in F \cap F^\perp$, alors $\langle u,u \rangle = 0$, donc $u=0_E$.

### Exemples

**Exemple 1 : Dans $\mathbb{R}^3$**

Soit $E=\mathbb{R}^3$ muni du produit scalaire usuel. Soit $F$ la droite vectorielle engendrée par $v=(1,1,1)$. Alors $F^\perp$ est l'ensemble des vecteurs $(x,y,z)$ tels que $\langle (x,y,z), (1,1,1) \rangle = x+y+z=0$. C'est un plan vectoriel. On a bien $\dim(F)+\dim(F^\perp)=1+2=3=\dim(E)$.

**Exemple 2 : Sous-espace de polynômes**

Soit $E=\mathbb{R}_2[X]$ avec $\langle P,Q \rangle = \int_{-1}^1 P(t)Q(t)dt$. Soit $F$ le sous-espace des polynômes pairs, $F = \text{Vect}(1, X^2)$. Son orthogonal $F^\perp$ est le sous-espace des polynômes impairs. En effet, si $P$ est impair et $Q$ est pair, $P(t)Q(t)$ est impair et son intégrale sur $[-1,1]$ est nulle. Donc $F^\perp=\text{Vect}(X)$.

**Exemple 3 : Espace de matrices**

Soit $E=M_n(\mathbb{R})$ avec $\langle A,B \rangle = \text{Tr}({}^tAB)$. Soit $\mathcal{S}_n$ le sous-espace des matrices symétriques et $\mathcal{A}_n$ celui des matrices antisymétriques. Pour $S \in \mathcal{S}_n$ et $A \in \mathcal{A}_n$, on a $\langle S, A \rangle = \text{Tr}(SA)$. Mais $\text{Tr}(SA) = \text{Tr}({}^t(SA)) = \text{Tr}({}^tA {}^tS) = \text{Tr}(-AS) = -\text{Tr}(SA)$. Donc $\text{Tr}(SA)=0$. Ainsi $\mathcal{A}_n \subseteq \mathcal{S}_n^\perp$. Par un argument de dimension, on montre $\mathcal{A}_n = \mathcal{S}_n^\perp$. On a $M_n(\mathbb{R}) = \mathcal{S}_n \oplus \mathcal{A}_n$.

### Contre-exemples

**Contre-exemple 1 : Dimension infinie**

En dimension infinie, on peut avoir $(F^\perp)^\perp \ne F$. On a seulement $F \subseteq (F^\perp)^\perp$. L'égalité est vraie si $F$ est un sous-espace vectoriel *fermé* d'un espace de Hilbert.

**Contre-exemple 2 : Dualité non-orthogonale**

En algèbre linéaire générale (sans produit scalaire), on peut définir l'annulateur $F^o \subset E^*$ d'un sous-espace $F \subset E$. La relation $\dim(F)+\dim(F^o)=\dim(E)$ est analogue, mais $F^o$ vit dans le dual $E^*$, pas dans $E$. Le produit scalaire permet d'identifier $E$ et $E^*$ (via le théorème de Riesz) et donc $F^\perp$ et $F^o$.

### Concepts Liés

- **Projection orthogonale** : La décomposition $E=F \oplus F^\perp$ est la base de la définition des projecteurs orthogonaux.
- **Théorème de Riesz** : L'isomorphisme canonique entre $E$ et $E^*$ induit par le produit scalaire permet de voir $F^\perp$ comme l'image de l'annulateur $F^o$ de $F$ dans $E^*$.

---

## Concept 9: Projection Orthogonale

### Prérequis

- Concept 8: Orthogonal d'un sous-espace.
- Algèbre linéaire : projecteurs, noyau, image.

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien et $F$ un sous-espace vectoriel de $E$. D'après le théorème de la décomposition orthogonale, tout vecteur $x \in E$ s'écrit de manière unique comme $x=x_F + x_{F^\perp}$ avec $x_F \in F$ et $x_{F^\perp} \in F^\perp$.

Le **projecteur orthogonal** sur $F$ est l'application $p_F : E \to E$ qui à un vecteur $x$ associe sa composante sur $F$:

$$ p_F(x) = x_F $$

### Propriétés Clés

- $p_F$ est un endomorphisme de $E$.
- $p_F$ est un projecteur, c'est-à-dire $p_F \circ p_F = p_F$.
- L'image de $p_F$ est $F$ : $\text{Im}(p_F) = F$.
- Le noyau de $p_F$ est $F^\perp$ : $\text{Ker}(p_F) = F^\perp$.
- **Formule de calcul** : Si $(e_1, \dots, e_p)$ est une base orthonormée de $F$, alors pour tout $x \in E$ :

  $$ p_F(x) = \sum_{i=1}^p \langle x, e_i \rangle e_i $$

- Le projecteur orthogonal sur $F^\perp$ est $p_{F^\perp} = \text{Id}_E - p_F$.
- Un projecteur $p$ est un projecteur orthogonal si et seulement s'il est auto-adjoint, i.e., $p=p^*$ (voir concept 11).

### Exemples

**Exemple 1 : Projection sur une droite dans $\mathbb{R}^n$**

Soit $F=\text{Vect}(u)$ une droite dirigée par un vecteur unitaire $u$. Une BON de $F$ est $(u)$. La projection sur $F$ est donnée par :

$p_F(x) = \langle x, u \rangle u$.

Par exemple, dans $\mathbb{R}^3$, pour projeter sur l'axe $Oz$, engendré par $u=(0,0,1)$, $p_{Oz}(x,y,z) = \langle (x,y,z), (0,0,1) \rangle (0,0,1) = z(0,0,1)=(0,0,z)$.

**Exemple 2 : Projection sur un plan dans $\mathbb{R}^3$**

Soit $F$ le plan d'équation $x+y+z=0$ dans $\mathbb{R}^3$. $F^\perp$ est la droite engendrée par $u=(1,1,1)$. Normalisons $u$ en $e = \frac{1}{\sqrt{3}}(1,1,1)$. La projection sur $F^\perp$ est $p_{F^\perp}(v) = \langle v, e \rangle e$.

La projection sur $F$ est donc $p_F(v) = v - p_{F^\perp}(v) = v - \langle v, e \rangle e$.

Pour $v=(x,y,z)$, $\langle v,e \rangle = \frac{x+y+z}{\sqrt{3}}$.

$p_F(x,y,z) = (x,y,z) - \frac{x+y+z}{3}(1,1,1) = \frac{1}{3}(2x-y-z, -x+2y-z, -x-y+2z)$.

**Exemple 3 : Projection dans un espace de fonctions (Séries de Fourier tronquées)**

Soit $E = \mathcal{C}_{2\pi}$ l'espace des fonctions continues $2\pi$-périodiques, avec le produit scalaire hermitien $\langle f,g \rangle = \frac{1}{2\pi}\int_0^{2\pi} f(t)\overline{g(t)}dt$. Soit $F_n = \text{Vect}(e^{ikt})_{k=-n..n}$. C'est un sous-espace de dimension $2n+1$. La famille $(e_k(t)=e^{ikt})_k$ est une BON. La projection orthogonale de $f$ sur $F_n$ est :

$$ p_{F_n}(f) = \sum_{k=-n}^n \langle f, e_k \rangle e_k = \sum_{k=-n}^n c_k(f) e^{ikt} $$

où $c_k(f) = \frac{1}{2\pi}\int_0^{2\pi} f(t)e^{-ikt}dt$ est le $k$-ième coefficient de Fourier. C'est la somme partielle de la série de Fourier de $f$.

### Contre-exemples

**Contre-exemple 1 : Projecteur non-orthogonal**

Dans $\mathbb{R}^2$, le projecteur $p(x,y) = (x+y, 0)$ sur la droite $\text{Vect}((1,0))$ parallèlement à la droite $\text{Vect}((1,-1))$ est un projecteur ($p^2=p$) mais il n'est pas orthogonal. Son noyau est $\text{Ker}(p)=\text{Vect}((1,-1))$ qui n'est pas l'orthogonal de son image $\text{Im}(p)=\text{Vect}((1,0))$.

**Contre-exemple 2 : Formule dans une base non-orthonormée**

La formule $p_F(x) = \sum \langle x, e_i \rangle e_i$ est **fausse** si la base $(e_i)$ de $F$ n'est pas orthonormée. Il faut d'abord appliquer Gram-Schmidt.

### Concepts Liés

- **Théorème de la meilleure approximation** : Le projeté $p_F(x)$ est l'unique vecteur de $F$ qui minimise la distance à $x$.
- **Moindres carrés** : La méthode des moindres carrés pour résoudre un système linéaire surdéterminé $Ax=b$ revient à trouver la projection orthogonale de $b$ sur l'espace colonne de $A$.

# Espaces Euclidiens et Hermitiens (pro)

---

## Concept 1: Formes Bilinéaires et Sesquilinéaires

### Prérequis

-   Algèbre linéaire : Espaces vectoriels sur un corps $\mathbb{K}$ ($\mathbb{R}$ ou $\mathbb{C}$), applications linéaires.
-   Corps des nombres complexes : Conjugaison.
-   Calcul matriciel : Transposition.

### Définition

Soit $E$ un $\mathbb{K}$-espace vectoriel.

1.  **Forme Bilinéaire** (cas $\mathbb{K}=\mathbb{R}$ ou $\mathbb{C}$):

    Une application $\varphi: E \times E \to \mathbb{K}$ est une forme bilinéaire si elle est linéaire par rapport à chacune de ses variables, i.e., pour tous $u, u_1, u_2, v, v_1, v_2 \in E$ et $\lambda \in \mathbb{K}$:

    -   $\varphi(u_1 + \lambda u_2, v) = \varphi(u_1, v) + \lambda\varphi(u_2, v)$ (linéarité à gauche)
    -   $\varphi(u, v_1 + \lambda v_2) = \varphi(u, v_1) + \lambda\varphi(u, v_2)$ (linéarité à droite)

2.  **Forme Sesquilinéaire** (cas $\mathbb{K}=\mathbb{C}$):

    Une application $\varphi: E \times E \to \mathbb{C}$ est une forme sesquilinéaire si elle est linéaire par rapport à sa première variable et semi-linéaire (ou anti-linéaire) par rapport à sa seconde variable, i.e., pour tous $u, u_1, u_2, v, v_1, v_2 \in E$ et $\lambda \in \mathbb{C}$:

    -   $\varphi(u_1 + \lambda u_2, v) = \varphi(u_1, v) + \lambda\varphi(u_2, v)$ (linéarité à gauche)
    -   $\varphi(u, v_1 + \lambda v_2) = \varphi(u, v_1) + \bar{\lambda}\varphi(u, v_2)$ (semi-linéarité à droite)

Une forme bilinéaire $\varphi$ est dite **symétrique** si $\forall x, y \in E, \varphi(x, y) = \varphi(y, x)$.

Une forme sesquilinéaire $\varphi$ est dite **hermitienne** (ou à symétrie hermitienne) si $\forall x, y \in E, \varphi(x, y) = \overline{\varphi(y, x)}$.

### Propriétés Clés

-   Une forme hermitienne vérifie $\varphi(x,x) = \overline{\varphi(x,x)}$, donc $\varphi(x,x) \in \mathbb{R}$ pour tout $x \in E$.
-   L'ensemble des formes bilinéaires sur $E$, noté $\mathcal{L}_2(E, \mathbb{K})$, forme un $\mathbb{K}$-espace vectoriel. De même pour les formes sesquilinéaires.
-   Si $\mathcal{B}=(e_1, \dots, e_n)$ est une base de $E$, une forme bilinéaire $\varphi$ est entièrement déterminée par la matrice $M = (\varphi(e_i, e_j))_{i,j} \in M_n(\mathbb{K})$. Si $x, y \in E$ ont pour vecteurs de coordonnées $X, Y$ dans $\mathcal{B}$, alors $\varphi(x,y) = {}^tX M Y$.
-   Dans le cas sesquilinéaire, $\varphi(x,y) = {}^tX M \overline{Y}$.
-   $\varphi$ est symétrique (resp. hermitienne) si et seulement si sa matrice dans n'importe quelle base est symétrique, i.e. ${}^tM = M$ (resp. hermitienne, i.e. ${}^tM = \overline{M}$, notée $M^*=M$).

### Exemples

**Exemple 1**

Soit $E = M_n(\mathbb{K})$. L'application $\varphi(A, B) = \text{Tr}({}^tA B)$ est une forme bilinéaire symétrique sur $E$. Si $\mathbb{K}=\mathbb{C}$, $\psi(A, B) = \text{Tr}(A^* B)$ est une forme sesquilinéaire hermitienne.

**Exemple 2**

Soit $E = C([a,b], \mathbb{C})$ l'espace des fonctions continues de $[a,b]$ dans $\mathbb{C}$. Soit $w: [a,b] \to \mathbb{R}^+_*$ une fonction continue (poids). L'application $\varphi(f,g) = \int_a^b f(t)\overline{g(t)}w(t)dt$ est une forme sesquilinéaire hermitienne.

**Exemple 3**

Sur $E = \mathbb{R}^2$, soit $S = \begin{pmatrix} 1 & 2 \\ 2 & -1 \end{pmatrix}$. La forme $\varphi(X,Y) = {}^tXSY = x_1y_1 + 2x_1y_2 + 2x_2y_1 - x_2y_2$ est bilinéaire symétrique.

### Contre-exemples

**Contre-exemple 1**

Sur $E = \mathbb{R}^2$, $\varphi((x_1, x_2), (y_1, y_2)) = x_1y_2 - x_2y_1$ (le déterminant) est une forme bilinéaire, mais elle n'est pas symétrique (elle est antisymétrique).

**Contre-exemple 2**

Sur $E=\mathbb{C}$, $\varphi(z_1, z_2) = z_1 z_2$ est une forme bilinéaire symétrique, mais pas sesquilinéaire. L'application $\psi(z_1, z_2) = \text{Re}(z_1\overline{z_2})$ n'est ni bilinéaire ni sesquilinéaire sur $\mathbb{C}$ (elle est $\mathbb{R}$-bilinéaire).

### Concepts Connexes

-   **Forme quadratique** : Associée à une forme bilinéaire symétrique $\varphi$, c'est l'application $q(x) = \varphi(x,x)$.
-   **Dualité** : Les formes bilinéaires non dégénérées induisent un isomorphisme entre $E$ et son dual $E^*$.

### Applications

-   **Géométrie différentielle** : La métrique riemannienne est un champ de formes bilinéaires symétriques définies positives sur l'espace tangent de chaque point d'une variété.
-   **Physique théorique** : En relativité, la métrique de Minkowski est une forme bilinéaire symétrique non-dégénérée mais non-définie positive.
-   **Algèbre** : Classification des formes quadratiques (Théorème d'inertie de Sylvester).

---

## Concept 2: Produit Scalaire et Espaces Préhilbertiens

### Prérequis

-   Concept 1: Formes bilinéaires et sesquilinéaires.
-   Algèbre linéaire : Notion de base, dimension finie.

### Définition

Soit $E$ un $\mathbb{K}$-espace vectoriel.

1.  Un **produit scalaire** sur $E$ est une forme $\varphi: E \times E \to \mathbb{K}$ qui est :
    -   **Cas Euclidien ($\mathbb{K}=\mathbb{R}$)** : bilinéaire, symétrique et définie positive.
    -   **Cas Hermitien ($\mathbb{K}=\mathbb{C}$)** : sesquilinéaire, hermitienne et définie positive.

2.  Une forme $\varphi$ est dite **positive** si $\forall x \in E, \varphi(x,x) \ge 0$.

    Elle est dite **définie** si $\varphi(x,x)=0 \iff x=0_E$.

3.  Un $\mathbb{K}$-espace vectoriel muni d'un produit scalaire est appelé **espace préhilbertien**. S'il est de dimension finie, on l'appelle **espace euclidien** (si $\mathbb{K}=\mathbb{R}$) ou **espace hermitien** (ou unitaire, si $\mathbb{K}=\mathbb{C}$). On note souvent le produit scalaire $\langle x, y \rangle$ au lieu de $\varphi(x,y)$.

### Propriétés Clés

-   La condition "définie" est cruciale car elle assure que seul le vecteur nul est orthogonal à lui-même, ce qui est fondamental pour induire une norme.
-   Une forme bilinéaire symétrique (ou sesquilinéaire hermitienne) $\varphi$ sur un espace de dimension finie $E$ est définie positive si et seulement si la matrice de Gram $G$ associée à n'importe quelle base est définie positive (critère de Sylvester : tous les mineurs principaux dominants sont strictement positifs).

### Exemples

**Exemple 1 (Canonique)**

Sur $\mathbb{K}^n$, le produit scalaire canonique est $\langle x, y \rangle = \sum_{i=1}^n x_i \overline{y_i}$. Pour $\mathbb{K}=\mathbb{R}$, cela se réduit à $\sum_{i=1}^n x_i y_i$.

**Exemple 2 (Polynômes)**

Sur $E = \mathbb{R}_n[X]$, l'application $\langle P, Q \rangle = \int_{-1}^{1} P(t)Q(t)dt$ est un produit scalaire. La condition définie positive vient du fait que si $\int_{-1}^1 P(t)^2 dt = 0$ pour un polynôme $P$, alors $P$ doit être le polynôme nul.

**Exemple 3 (Polynômes trigonométriques)**

Sur $E = \mathcal{T}_n = \text{Vect}_{\mathbb{C}}\{e^{ikt}\}_{k=-n}^n$, l'application $\langle P, Q \rangle = \frac{1}{2\pi} \int_0^{2\pi} P(t)\overline{Q(t)}dt$ est un produit scalaire hermitien.

### Contre-exemples

**Contre-exemple 1**

Sur $\mathbb{R}^2$, $\varphi(x,y) = x_1y_1$ est bilinéaire, symétrique, positive, mais pas définie. En effet, $\varphi((0,1), (0,1)) = 0$ bien que $(0,1) \neq (0,0)$.

**Contre-exemple 2 (Métrique de Minkowski)**

Sur $\mathbb{R}^4$, la forme $\varphi(x,y) = -x_0y_0 + x_1y_1 + x_2y_2 + x_3y_3$ est bilinéaire, symétrique, non-dégénérée, mais non positive (et donc non définie positive). Par exemple, pour $x=(1,0,0,0)$, $\varphi(x,x) = -1 < 0$. Ce n'est pas un produit scalaire.

### Concepts Connexes

-   **Espace de Hilbert** : Un espace préhilbertien qui est complet pour la norme induite. Tout espace euclidien ou hermitien (dimension finie) est un espace de Hilbert.
-   **Norme** : Tout produit scalaire induit une norme.

### Applications

-   **Mécanique quantique** : L'état d'un système est un vecteur dans un espace de Hilbert complexe. Le produit scalaire $\langle \psi | \phi \rangle$ donne l'amplitude de probabilité de transition de l'état $\phi$ à l'état $\psi$.
-   **Analyse de Fourier** : Les coefficients de Fourier d'une fonction sont ses coordonnées dans une base orthonormée (les exponentielles complexes) pour le produit scalaire $L^2$.
-   **Statistiques et probabilités** : La covariance de deux variables aléatoires centrées est un produit scalaire sur l'espace des variables aléatoires de variance finie.

---

## Concept 3: Norme Induite et Inégalité de Cauchy-Schwarz

### Prérequis

-   Concept 2: Produit scalaire.
-   Analyse : Notion de norme, espace métrique.

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace préhilbertien.

1.  La **norme** induite par le produit scalaire est l'application $\|\cdot\|: E \to \mathbb{R}^+$ définie par :

    $$ \|x\| = \sqrt{\langle x, x \rangle} $$

    La positivité de $\langle \cdot, \cdot \rangle$ garantit que la racine est bien définie et réelle.

2.  **Inégalité de Cauchy-Schwarz** : Pour tous $x, y \in E$, on a :

    $$ |\langle x, y \rangle| \le \|x\| \|y\| $$

    L'égalité a lieu si et seulement si $x$ et $y$ sont colinéaires (liés).

### Propriétés Clés

-   Une norme $\|\cdot\|$ issue d'un produit scalaire vérifie les axiomes d'une norme :
    1.  $\|x\| = 0 \iff x=0_E$ (car le produit scalaire est défini).
    2.  $\|\lambda x\| = |\lambda|\|x\|$ pour $\lambda \in \mathbb{K}, x \in E$.
    3.  $\|x+y\| \le \|x\| + \|y\|$ (inégalité triangulaire ou de Minkowski).
-   **Identité du parallélogramme** : Une norme est induite par un produit scalaire si et seulement si elle vérifie pour tous $x, y \in E$ :

    $$ \|x+y\|^2 + \|x-y\|^2 = 2(\|x\|^2 + \|y\|^2) $$

-   **Formules de polarisation** : Elles permettent de reconstituer le produit scalaire à partir de la norme.
    -   Cas euclidien: $\langle x, y \rangle = \frac{1}{4}(\|x+y\|^2 - \|x-y\|^2) = \frac{1}{2}(\|x+y\|^2 - \|x\|^2 - \|y\|^2)$.
    -   Cas hermitien: $\langle x, y \rangle = \frac{1}{4}(\|x+y\|^2 - \|x-y\|^2 + i(\|x+iy\|^2 - \|x-iy\|^2))$.

### Exemples

**Exemple 1 (Norme euclidienne sur $\mathbb{R}^n$)**

Pour $\langle x, y \rangle = \sum x_i y_i$, la norme est $\|x\|_2 = \sqrt{\sum x_i^2}$. L'inégalité de Cauchy-Schwarz s'écrit $(\sum x_i y_i)^2 \le (\sum x_i^2)(\sum y_i^2)$.

**Exemple 2 (Norme sur $C([0,1], \mathbb{C})$)**

Pour $\langle f, g \rangle = \int_0^1 f(t)\overline{g(t)}dt$, la norme est $\|f\|_{L^2} = \sqrt{\int_0^1 |f(t)|^2 dt}$. L'inégalité de Cauchy-Schwarz (ou de Bouniakowsky) s'écrit $|\int_0^1 f(t)\overline{g(t)}dt| \le \sqrt{\int_0^1 |f(t)|^2 dt} \sqrt{\int_0^1 |g(t)|^2 dt}$.

**Exemple 3 (Espace de suites $l^2(\mathbb{N})$)**

Soit $E = l^2(\mathbb{N}) = \{ (u_n)_{n \in \mathbb{N}} \subset \mathbb{C} : \sum_{n=0}^\infty |u_n|^2 < \infty \}$. Le produit scalaire est $\langle u, v \rangle = \sum_{n=0}^\infty u_n \overline{v_n}$. La norme est $\|u\|_2 = \sqrt{\sum_{n=0}^\infty |u_n|^2}$. L'inégalité de Cauchy-Schwarz garantit que la série définissant le produit scalaire converge.

### Contre-exemples

**Contre-exemple 1 (Norme $L^1$)**

Sur $\mathbb{R}^2$, la norme $\|x\|_1 = |x_1| + |x_2|$ ne provient pas d'un produit scalaire. Elle ne vérifie pas l'identité du parallélogramme. Soit $x=(1,0)$ et $y=(0,1)$.

$\|x+y\|_1^2 + \|x-y\|_1^2 = \|(1,1)\|_1^2 + \|(1,-1)\|_1^2 = 2^2 + 2^2 = 8$.

$2(\|x\|_1^2 + \|y\|_1^2) = 2(1^2+1^2) = 4$. Comme $8 \neq 4$, la norme n'est pas euclidienne.

**Contre-exemple 2 (Norme infinie)**

Sur $\mathbb{R}^2$, la norme $\|x\|_\infty = \max(|x_1|, |x_2|)$ ne provient pas d'un produit scalaire. Avec $x=(1,0)$ et $y=(0,1)$ :

$\|x+y\|_\infty^2 + \|x-y\|_\infty^2 = \|(1,1)\|_\infty^2 + \|(1,-1)\|_\infty^2 = 1^2 + 1^2 = 2$.

$2(\|x\|_\infty^2 + \|y\|_\infty^2) = 2(1^2+1^2) = 4$. Comme $2 \neq 4$, la norme n'est pas euclidienne.

### Concepts Connexes

-   **Angle entre vecteurs** : Dans un espace euclidien, on définit l'angle $\theta$ entre deux vecteurs non nuls $x, y$ par $\cos(\theta) = \frac{\langle x, y \rangle}{\|x\|\|y\|}$. Cauchy-Schwarz garantit que le membre de droite est dans $[-1,1]$.
-   **Continuité** : Le produit scalaire est une application continue sur $E \times E$.

### Applications

-   **Optimisation** : L'inégalité de Cauchy-Schwarz est un outil fondamental pour trouver des bornes supérieures à des quantités complexes.
-   **Physique statistique** : Elle est utilisée pour démontrer des résultats fondamentaux comme la positivité de la chaleur spécifique.
-   **Analyse numérique** : Le conditionnement d'une matrice est lié aux bornes de l'opérateur associé, qui sont souvent établies via Cauchy-Schwarz.

---

## Concept 4: Orthogonalité

### Prérequis

-   Concept 2: Produit scalaire.
-   Concept 3: Norme induite.

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace préhilbertien.

1.  Deux vecteurs $x, y \in E$ sont dits **orthogonaux**, noté $x \perp y$, si $\langle x, y \rangle = 0$.
2.  Une famille de vecteurs $(v_i)_{i \in I}$ est dite **orthogonale** si ses vecteurs sont deux à deux orthogonaux, i.e., $\forall i \neq j, \langle v_i, v_j \rangle = 0$.
3.  Une famille est dite **orthonormée** (ou orthonormale) si elle est orthogonale et que tous ses vecteurs sont unitaires, i.e., $\forall i, \|v_i\|=1$. Ceci s'écrit de manière compacte : $\langle v_i, v_j \rangle = \delta_{ij}$ (symbole de Kronecker).

### Propriétés Clés

-   **Théorème de Pythagore** : Si $(v_1, \dots, v_n)$ est une famille orthogonale, alors :

    $$ \left\| \sum_{i=1}^n v_i \right\|^2 = \sum_{i=1}^n \|v_i\|^2 $$

-   **Liberté** : Toute famille orthogonale de vecteurs non nuls est libre.

    *Preuve* : Soit $\sum_{i=1}^k \lambda_i v_i = 0_E$. En prenant le produit scalaire avec $v_j$ ($j \in \{1,\dots,k\}$), on obtient $\langle \sum_i \lambda_i v_i, v_j \rangle = \sum_i \lambda_i \langle v_i, v_j \rangle = \lambda_j \langle v_j, v_j \rangle = \lambda_j \|v_j\|^2 = 0$. Comme $v_j \neq 0_E$, $\|v_j\|^2 \neq 0$, donc $\lambda_j = 0$. Ceci étant vrai pour tout $j$, la famille est libre.

-   Dans un espace de dimension $n$, une famille orthogonale de $n$ vecteurs non nuls forme une base orthogonale.

### Exemples

**Exemple 1**

Dans $\mathbb{R}^3$ avec le produit scalaire usuel, les vecteurs $u=(1,1,0), v=(1,-1,1), w=(-1,1,2)$ forment une famille orthogonale. $\langle u,v \rangle = 1-1+0=0$, $\langle u,w \rangle = -1+1+0=0$, $\langle v,w \rangle = -1-1+2=0$. C'est donc une base orthogonale de $\mathbb{R}^3$.

**Exemple 2**

Dans l'espace $\mathcal{T}_n$ des polynômes trigonométriques avec $\langle P, Q \rangle = \frac{1}{2\pi} \int_0^{2\pi} P(t)\overline{Q(t)}dt$, la famille $(e_k(t) = e^{ikt})_{k=-n}^n$ est orthonormée.

$\langle e_k, e_j \rangle = \frac{1}{2\pi} \int_0^{2\pi} e^{ikt} e^{-ijt} dt = \frac{1}{2\pi} \int_0^{2\pi} e^{i(k-j)t} dt$. Si $k=j$, l'intégrale vaut $2\pi$, donc le produit scalaire est 1. Si $k \neq j$, l'intégrale vaut $[\frac{e^{i(k-j)t}}{i(k-j)}]_0^{2\pi} = 0$.

**Exemple 3 (Polynômes de Legendre)**

Sur $\mathbb{R}_n[X]$ avec $\langle P, Q \rangle = \int_{-1}^1 P(t)Q(t)dt$, la famille des polynômes de Legendre (obtenue par Gram-Schmidt sur la base canonique $(1, X, X^2, \dots)$) est une base orthogonale. Les premiers termes sont $P_0(X)=1, P_1(X)=X, P_2(X) = \frac{3}{2}X^2 - \frac{1}{2}, \dots$.

### Contre-exemples

**Contre-exemple 1**

Dans $\mathbb{R}^2$ avec le produit scalaire usuel, la base canonique $(e_1, e_2)$ est orthonormée. La base $((1,1), (1,-1))$ est orthogonale mais pas orthonormée. La base $((1,0), (1,1))$ est une base, mais n'est ni orthogonale ni orthonormée.

**Contre-exemple 2**

Dans $\mathbb{R}^2$, considérons le produit scalaire non-canonique défini par la matrice $G=\begin{pmatrix} 2 & 1 \\ 1 & 1 \end{pmatrix}$. Pour ce produit scalaire, les vecteurs de la base canonique $e_1=(1,0)$ et $e_2=(0,1)$ ne sont plus orthogonaux : $\langle e_1, e_2 \rangle = {}^t(1,0) G (0,1) = 1 \neq 0$.

### Concepts Connexes

-   **Bases orthonormées** : Fondamentales pour simplifier les calculs de coordonnées et de produits scalaires.
-   **Projection orthogonale** : L'orthogonalité est la clé de la décomposition d'un vecteur sur un sous-espace et son orthogonal.

### Applications

-   **Analyse de Fourier** : Décomposer une fonction en une somme de fonctions orthogonales (sinus/cosinus ou exponentielles complexes) simplifie l'analyse et la résolution d'équations différentielles (e.g., équation de la chaleur).
-   **Traitement d'image** : La transformée en cosinus discrète (DCT), utilisée dans la compression JPEG, projette les blocs d'image sur une base de fonctions cosinus orthogonales.
-   **Codes correcteurs d'erreurs** : Certains codes sont construits sur la base de vecteurs orthogonaux dans des espaces de grande dimension sur des corps finis.

---

## Concept 5: Bases Orthonormées

### Prérequis

-   Concept 4: Orthogonalité.
-   Algèbre linéaire : Bases, coordonnées.

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien de dimension $n$.

Une base $(e_1, \dots, e_n)$ de $E$ est dite **orthonormée** (ou orthonormale, B.O.N.) si elle forme une famille orthonormée, c'est-à-dire :

$$ \forall i, j \in \{1, \dots, n\}, \quad \langle e_i, e_j \rangle = \delta_{ij} $$

où $\delta_{ij}$ est le symbole de Kronecker.

### Propriétés Clés

Soit $\mathcal{B}=(e_1, \dots, e_n)$ une B.O.N. de $E$.

1.  **Calcul des coordonnées** : Pour tout $x \in E$, ses coordonnées $(x_1, \dots, x_n)$ dans $\mathcal{B}$ sont données par $x_i = \langle x, e_i \rangle$. Ainsi, la décomposition de $x$ est :

    $$ x = \sum_{i=1}^n \langle x, e_i \rangle e_i $$

2.  **Expression du produit scalaire** : Si $x = \sum_i x_i e_i$ et $y = \sum_j y_j e_j$, alors :
    -   Cas euclidien : $\langle x, y \rangle = \sum_{i=1}^n x_i y_i$
    -   Cas hermitien : $\langle x, y \rangle = \sum_{i=1}^n x_i \overline{y_i}$
3.  **Expression de la norme (Identité de Parseval)** : Pour tout $x \in E$ :

    $$ \|x\|^2 = \sum_{i=1}^n |\langle x, e_i \rangle|^2 = \sum_{i=1}^n |x_i|^2 $$

4.  La matrice de Gram d'une B.O.N. est la matrice identité $I_n$.

### Exemples

**Exemple 1 (Base canonique de $\mathbb{R}^n$)**

Dans $\mathbb{R}^n$ muni du produit scalaire usuel, la base canonique $(e_1, \dots, e_n)$ où $e_i = (0, \dots, 1, \dots, 0)$ est une B.O.N.

**Exemple 2 (Base de Fourier)**

Dans l'espace $\mathcal{T}_n$, la famille $(t \mapsto e^{ikt})_{k=-n}^n$ est une B.O.N. pour le produit scalaire $\langle P, Q \rangle = \frac{1}{2\pi} \int_0^{2\pi} P(t)\overline{Q(t)}dt$. L'identité de Parseval s'écrit $\|P\|^2 = \sum_{k=-n}^n |a_k|^2$ si $P(t) = \sum_k a_k e^{ikt}$.

**Exemple 3**

Dans $\mathbb{R}^2$ avec le produit scalaire usuel, la base $\mathcal{B}' = (\frac{1}{\sqrt{2}}(1,1), \frac{1}{\sqrt{2}}(-1,1))$ est une B.O.N. Le vecteur $x=(2,3)$ a pour coordonnées dans $\mathcal{B}'$ : $x_1' = \langle x, e_1' \rangle = \frac{5}{\sqrt{2}}$ et $x_2' = \langle x, e_2' \rangle = \frac{1}{\sqrt{2}}$. On vérifie bien que $\|x\|^2 = 2^2+3^2=13$ et $(x_1')^2+(x_2')^2 = \frac{25}{2}+\frac{1}{2} = 13$.

### Contre-exemples

**Contre-exemple 1**

La base $((1,1), (1,-1))$ de $\mathbb{R}^2$ est orthogonale mais pas orthonormée. Les formules de calcul de coordonnées ne s'appliquent pas directement. Par exemple, pour $x=(2,1)$, on a $x = \frac{3}{2}(1,1) + \frac{1}{2}(1,-1)$. Les coordonnées ne sont pas $\langle x, (1,1) \rangle = 3$ et $\langle x, (1,-1) \rangle = 1$.

**Contre-exemple 2**

Dans $\mathbb{R}_1[X]$ avec $\langle P, Q \rangle = \int_0^1 P(t)Q(t)dt$, la base canonique $(1, X)$ n'est pas orthonormée. $\langle 1, 1 \rangle = 1$, mais $\langle X, X \rangle = \int_0^1 t^2 dt = 1/3 \neq 1$ et $\langle 1, X \rangle = \int_0^1 t dt = 1/2 \neq 0$.

### Concepts Connexes

-   **Procédé de Gram-Schmidt** : Algorithme pour construire une B.O.N. à partir de n'importe quelle base.
-   **Matrices orthogonales/unitaires** : Ce sont les matrices de passage entre deux B.O.N.

### Applications

-   **Simplification des calculs** : La majorité des calculs en géométrie euclidienne/hermitienne (projections, distances, etc.) sont drastiquement simplifiés en travaillant dans une B.O.N.
-   **Théorie des représentations** : Le lemme de Schur et les relations d'orthogonalité de Schur pour les caractères des représentations de groupes finis s'appuient sur des produits scalaires sur des espaces de fonctions où des B.O.N. jouent un rôle clé.
-   **Informatique quantique** : Les états de base d'un qubit sont représentés par une B.O.N. (typiquement $|0\rangle, |1\rangle$) dans $\mathbb{C}^2$.

---

## Concept 6: Procédé d'Orthonormalisation de Gram-Schmidt

### Prérequis

-   Concept 4: Orthogonalité.
-   Concept 8: Projection Orthogonale (implicite).
-   Algèbre linéaire : Bases, sous-espaces vectoriels engendrés (Vect).

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace préhilbertien. Le procédé de Gram-Schmidt est un algorithme qui, à partir d'une famille libre $(v_1, \dots, v_n)$, construit une famille orthonormée $(e_1, \dots, e_n)$ telle que pour tout $k \in \{1, \dots, n\}$ :

$$ \text{Vect}(e_1, \dots, e_k) = \text{Vect}(v_1, \dots, v_k) $$

L'algorithme est défini par récurrence :

1.  **Initialisation ($k=1$)** :

    $e_1 = \frac{v_1}{\|v_1\|}$.

2.  **Étape $k$ ($k > 1$)** : On suppose $(e_1, \dots, e_{k-1})$ construits. On définit :
    -   $e'_k = v_k - \sum_{j=1}^{k-1} \langle v_k, e_j \rangle e_j$
    -   $e_k = \frac{e'_k}{\|e'_k\|}$

Le vecteur $\sum_{j=1}^{k-1} \langle v_k, e_j \rangle e_j$ est la projection orthogonale de $v_k$ sur le sous-espace $\text{Vect}(e_1, \dots, e_{k-1})$. Ainsi, $e'_k$ est la composante de $v_k$ orthogonale à ce sous-espace.

### Propriétés Clés

-   **Existence de B.O.N.** : Le procédé de Gram-Schmidt prouve que tout espace euclidien ou hermitien de dimension finie admet une base orthonormée.
-   **Décomposition QR** : L'algorithme est équivalent à la décomposition QR d'une matrice $A$ dont les colonnes sont les vecteurs $(v_1, \dots, v_n)$. On a $A=QR$ où $Q$ est une matrice orthogonale/unitaire (ses colonnes sont les $e_k$) et $R$ est une matrice triangulaire supérieure inversible.

### Exemples

**Exemple 1**

Dans $\mathbb{R}^3$ avec le produit scalaire usuel, appliquons Gram-Schmidt à la base $v_1=(1,1,0), v_2=(1,0,1), v_3=(0,1,1)$.

-   $e_1 = \frac{v_1}{\|v_1\|} = \frac{1}{\sqrt{2}}(1,1,0)$.
-   $e'_2 = v_2 - \langle v_2, e_1 \rangle e_1 = (1,0,1) - \frac{1}{\sqrt{2}} \cdot \frac{1}{\sqrt{2}}(1,1,0) = (1,0,1) - \frac{1}{2}(1,1,0) = (\frac{1}{2}, -\frac{1}{2}, 1)$.

    $\|e'_2\| = \sqrt{\frac{1}{4}+\frac{1}{4}+1} = \sqrt{\frac{3}{2}}$.

    $e_2 = \sqrt{\frac{2}{3}}(\frac{1}{2}, -\frac{1}{2}, 1) = \frac{1}{\sqrt{6}}(1,-1,2)$.

-   $e'_3 = v_3 - \langle v_3, e_1 \rangle e_1 - \langle v_3, e_2 \rangle e_2 = (0,1,1) - \frac{1}{\sqrt{2}}e_1 - \frac{1}{\sqrt{6}}e_2 = (0,1,1) - \frac{1}{2}(1,1,0) - \frac{1}{6}(1,-1,2) = (-\frac{2}{3}, \frac{2}{3}, \frac{2}{3})$.

    $\|e'_3\| = \sqrt{3 \cdot \frac{4}{9}} = \frac{2}{\sqrt{3}}$.

    $e_3 = \frac{\sqrt{3}}{2}(-\frac{2}{3}, \frac{2}{3}, \frac{2}{3}) = \frac{1}{\sqrt{3}}(-1,1,1)$.

La famille $(e_1, e_2, e_3)$ est une B.O.N.

**Exemple 2 (Polynômes de Legendre)**

Appliquons Gram-Schmidt à la base $(1, X, X^2)$ de $\mathbb{R}_2[X]$ avec $\langle P, Q \rangle = \int_{-1}^1 P(t)Q(t)dt$.

-   $v_1=1$. $\|v_1\|^2 = \int_{-1}^1 1^2 dt = 2$. $e_1 = \frac{1}{\sqrt{2}}$.
-   $v_2=X$. $\langle v_2, e_1 \rangle = \int_{-1}^1 t \frac{1}{\sqrt{2}} dt = 0$. Donc $e'_2 = v_2 = X$.

    $\|e'_2\|^2 = \int_{-1}^1 t^2 dt = \frac{2}{3}$. $e_2 = \sqrt{\frac{3}{2}}X$.

-   $v_3=X^2$. $\langle v_3, e_1 \rangle = \int_{-1}^1 t^2 \frac{1}{\sqrt{2}} dt = \frac{\sqrt{2}}{3}$. $\langle v_3, e_2 \rangle = \int_{-1}^1 t^2 \sqrt{\frac{3}{2}}t dt = 0$.

    $e'_3 = X^2 - \frac{\sqrt{2}}{3} e_1 = X^2 - \frac{1}{3}$.

    $\|e'_3\|^2 = \int_{-1}^1 (t^2-\frac{1}{3})^2 dt = \frac{8}{45}$. $e_3 = \sqrt{\frac{45}{8}}(X^2-\frac{1}{3})$.

Les polynômes de Legendre (normalisés) sont obtenus ainsi.

**Exemple 3**

Soit $E = \mathbb{R}^3$, $v_1 = (1, 0, 0)$, $v_2 = (1, 1, 0)$, $v_3 = (1, 1, 1)$.

- $e_1 = v_1 = (1,0,0)$.
- $e'_2 = v_2 - \langle v_2, e_1 \rangle e_1 = (1,1,0) - 1 \cdot (1,0,0) = (0,1,0)$. $e_2 = (0,1,0)$.
- $e'_3 = v_3 - \langle v_3, e_1 \rangle e_1 - \langle v_3, e_2 \rangle e_2 = (1,1,1) - 1 \cdot (1,0,0) - 1 \cdot (0,1,0) = (0,0,1)$. $e_3 = (0,0,1)$.

On retrouve la base canonique.

### Contre-exemples

**Contre-exemple 1 (Famille liée)**

Si la famille de départ $(v_1, \dots, v_n)$ est liée, le processus s'arrête. Soit $v_k \in \text{Vect}(v_1, \dots, v_{k-1})$. Alors $v_k \in \text{Vect}(e_1, \dots, e_{k-1})$ et la projection de $v_k$ sur cet espace est $v_k$ lui-même. Donc $e'_k = v_k - v_k = 0_E$, et on ne peut pas normaliser.

**Contre-exemple 2 (Dépendance de l'ordre)**

Le résultat de l'algorithme dépend de l'ordre des vecteurs dans la base de départ. Si on prend $v_1=(1,1,0), v_2=(1,0,0)$ dans $\mathbb{R}^2$, Gram-Schmidt donnera $e_1 = \frac{1}{\sqrt{2}}(1,1)$ et $e_2 = \frac{1}{\sqrt{2}}(1,-1)$. Si on commence par $v_1'=(1,0,0), v_2'=(1,1,0)$, on obtient $e_1'=(1,0)$ et $e_2'=(0,1)$. Les bases orthonormées obtenues sont différentes.

### Concepts Connexes

-   **Décomposition QR** : Interprétation matricielle directe de l'algorithme, très utilisée en analyse numérique.
-   **Polynômes orthogonaux** : De nombreuses familles de polynômes spéciaux (Legendre, Hermite, Laguerre) sont définies via Gram-Schmidt appliqué à la base canonique des polynômes avec différents produits scalaires.

### Applications

-   **Analyse numérique** : La décomposition QR est la base d'algorithmes stables pour résoudre des systèmes linéaires, des problèmes de moindres carrés, et pour calculer des valeurs propres (algorithme QR).
-   **Modélisation et régression** : La régression par les moindres carrés peut être vue comme une projection orthogonale, et l'utilisation de bases orthogonales (comme les polynômes orthogonaux) stabilise numériquement le problème.

---

## Concept 7: Matrice de Gram

### Prérequis

-   Concept 1: Formes bilinéaires/sesquilinéaires.
-   Algèbre linéaire : Bases, matrices, changement de base.

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace préhilbertien et soit $\mathcal{B}=(e_1, \dots, e_n)$ une base quelconque de $E$.

La **matrice de Gram** associée à la base $\mathcal{B}$ est la matrice $G \in M_n(\mathbb{K})$ dont les coefficients sont les produits scalaires des vecteurs de base :

$$ G = (G_{ij})_{1 \le i,j \le n} \quad \text{avec} \quad G_{ij} = \langle e_j, e_i \rangle $$

**Attention** : La convention peut varier ($\langle e_i, e_j \rangle$ ou $\langle e_j, e_i \rangle$). Avec $G_{ij} = \langle e_j, e_i \rangle$, l'expression du produit scalaire est simple.

Soient $x = \sum_i x_i e_i$ et $y = \sum_j y_j e_j$, avec $X$ et $Y$ leurs vecteurs colonnes de coordonnées. Le produit scalaire s'exprime alors comme :

-   Cas euclidien : $\langle x, y \rangle = {}^tX G Y$
-   Cas hermitien : $\langle x, y \rangle = {}^tX G \overline{Y}$

### Propriétés Clés

-   **Symétrie/Hermiticité** : La matrice de Gram est toujours symétrique dans le cas euclidien (${}^tG = G$) et hermitienne dans le cas hermitien ($G^* = {}^t\overline{G} = G$).
-   **Définie positive** : Puisque le produit scalaire est défini positif, la matrice de Gram est définie positive. En particulier, son déterminant (le **déterminant de Gram**) est strictement positif. $\det(G) > 0$.
-   **Changement de base** : Si $P$ est la matrice de passage de la base $\mathcal{B}$ à une base $\mathcal{B}'$, la nouvelle matrice de Gram $G'$ est donnée par $G' = {}^tP G \overline{P}$ (ou $G'={}^tPGP$ dans le cas réel).
-   Une base est orthonormée si et seulement si sa matrice de Gram est la matrice identité ($G=I_n$).

### Exemples

**Exemple 1**

Dans $\mathbb{R}^2$ avec le produit scalaire usuel, soit la base $\mathcal{B}=((1,1), (1,-1))$.

$G_{11} = \langle(1,1),(1,1)\rangle = 2$

$G_{12} = \langle(1,-1),(1,1)\rangle = 0$

$G_{21} = \langle(1,1),(1,-1)\rangle = 0$

$G_{22} = \langle(1,-1),(1,-1)\rangle = 2$

Donc $G = \begin{pmatrix} 2 & 0 \\ 0 & 2 \end{pmatrix}$. C'est une base orthogonale.

**Exemple 2**

Dans $\mathbb{R}_1[X]$ avec $\langle P, Q \rangle = \int_0^1 P(t)Q(t)dt$ et la base canonique $(1, X)$.

$G_{11} = \int_0^1 1 \cdot 1 dt = 1$

$G_{12} = \int_0^1 X \cdot 1 dt = 1/2$

$G_{21} = \int_0^1 1 \cdot X dt = 1/2$

$G_{22} = \int_0^1 X \cdot X dt = 1/3$

Donc $G = \begin{pmatrix} 1 & 1/2 \\ 1/2 & 1/3 \end{pmatrix}$. $\det(G) = 1/3 - 1/4 = 1/12 > 0$.

**Exemple 3**

Si $\mathcal{B}$ est une B.O.N., alors $\langle e_j, e_i \rangle = \delta_{ij}$, donc $G=I_n$. L'expression du produit scalaire devient $\langle x,y \rangle = {}^tX I_n \overline{Y} = {}^tX \overline{Y} = \sum x_i \overline{y_i}$, ce qui est cohérent.

### Contre-exemples

**Contre-exemple 1 (Matrice non symétrique)**

La matrice $M = \begin{pmatrix} 1 & 2 \\ 3 & 1 \end{pmatrix}$ ne peut pas être une matrice de Gram pour un produit scalaire euclidien car elle n'est pas symétrique.

**Contre-exemple 2 (Matrice non définie positive)**

La matrice $G = \begin{pmatrix} 1 & 2 \\ 2 & 1 \end{pmatrix}$ est symétrique, mais pas définie positive. $\det(G) = 1-4 = -3 < 0$. Elle ne peut pas être une matrice de Gram. La forme quadratique associée est $q(x) = x_1^2 + 4x_1x_2 + x_2^2$, et pour $x=(1,-1)$, $q(x)=1-4+1=-2 < 0$.

### Concepts Connexes

-   **Déterminant de Gram** : $det(G)$ mesure le carré du volume du parallélotope engendré par les vecteurs de la base.
-   **Changement de base** : La matrice de Gram est l'outil qui montre comment l'expression du produit scalaire change avec la base.

### Applications

-   **Géométrie** : Le déterminant de Gram est utilisé pour calculer des volumes, des aires et des distances. Par exemple, la distance d'un point à un sous-espace peut être exprimée à l'aide de déterminants de Gram.
-   **Apprentissage automatique (Machine Learning)** : Dans les méthodes à noyaux (comme les SVM), on travaille implicitement dans un espace de grande dimension via une matrice de Gram (la "matrice du noyau" ou "kernel matrix") des points de données, sans jamais avoir à expliciter les coordonnées.

---

## Concept 8: Supplémentaire Orthogonal

### Prérequis

-   Concept 4: Orthogonalité.
-   Algèbre linéaire : Sous-espaces vectoriels, somme directe.

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace préhilbertien et $A$ une partie non vide de $E$.

L'**orthogonal** de $A$, noté $A^\perp$, est l'ensemble des vecteurs de $E$ qui sont orthogonaux à tous les vecteurs de $A$ :

$$ A^\perp = \{ x \in E \mid \forall a \in A, \langle x, a \rangle = 0 \} $$

### Propriétés Clés

-   $A^\perp$ est toujours un sous-espace vectoriel fermé de $E$, même si $A$ n'en est pas un.
-   $\{0_E\}^\perp = E$ et $E^\perp = \{0_E\}$.
-   $A \subset B \implies B^\perp \subset A^\perp$.
-   $A \subset (A^\perp)^\perp$.
-   $A^\perp = (\text{Vect}(A))^\perp$.

**Théorème (en dimension finie)**

Si $E$ est un espace euclidien ou hermitien (dimension finie) et $F$ est un sous-espace vectoriel de $E$, alors :

1.  $E = F \oplus F^\perp$. (Somme directe orthogonale).
2.  $\dim(F) + \dim(F^\perp) = \dim(E)$.
3.  $(F^\perp)^\perp = F$.

### Exemples

**Exemple 1**

Dans $\mathbb{R}^3$ avec le produit scalaire usuel, soit $F$ le plan d'équation $x+y+z=0$. $F$ est le noyau de la forme linéaire $l(v) = v \cdot n$ avec $n=(1,1,1)$. Donc $F = \{n\}^\perp$. Le supplémentaire orthogonal $F^\perp$ est la droite vectorielle engendrée par le vecteur normal $n=(1,1,1)$. On a bien $\mathbb{R}^3 = F \oplus \text{Vect}(n)$.

**Exemple 2**

Dans $\mathbb{R}^4$, soit $F = \text{Vect}(e_1, e_2)$ où $e_i$ sont les vecteurs de la base canonique. Alors $F^\perp = \text{Vect}(e_3, e_4)$. On a bien $\mathbb{R}^4 = F \oplus F^\perp$.

**Exemple 3**

Dans $\mathbb{R}_n[X]$ avec $\langle P, Q \rangle = \int_{-1}^1 P(t)Q(t)dt$, soit $F$ le sous-espace des polynômes pairs. Alors $F^\perp$ est le sous-espace des polynômes impairs. En effet, si $P$ est pair et $Q$ est impair, $P(t)Q(t)$ est une fonction impaire, et son intégrale sur $[-1,1]$ est nulle.

### Contre-exemples

**Contre-exemple 1 (Partie non-sev)**

Dans $\mathbb{R}^2$, soit $A = \{(1,0)\}$. $A^\perp$ est l'axe des ordonnées, $\text{Vect}((0,1))$. $(A^\perp)^\perp$ est l'axe des abscisses, $\text{Vect}((1,0))$. On a $A \subset (A^\perp)^\perp$ mais l'égalité est fausse car $A$ n'est pas un s.e.v.

**Contre-exemple 2 (Dimension infinie)**

En dimension infinie, on peut avoir $(F^\perp)^\perp \neq F$ si $F$ n'est pas fermé. Soit $E = l^2(\mathbb{N})$ et $F=c_{00}$ le sous-espace des suites à support fini. $F$ est un s.e.v. dense dans $E$. Alors $F^\perp = \{0_E\}$ car si $u \in F^\perp$, alors $\langle u, e_k \rangle = u_k = 0$ pour tout $k$, donc $u=0$.

Ainsi, $(F^\perp)^\perp = \{0_E\}^\perp = E$. Donc $(F^\perp)^\perp = E \neq F$.

### Concepts Connexes

-   **Projection orthogonale** : La décomposition $E = F \oplus F^\perp$ est le fondement de la projection orthogonale sur $F$. Tout $x \in E$ s'écrit de manière unique $x=x_F + x_{F^\perp}$.
-   **Adjoint d'un endomorphisme** : Le lien entre noyau et image de l'adjoint est donné par $\text{Ker}(f) = (\text{Im}(f^*))^\perp$ et $\text{Im}(f) = (\text{Ker}(f^*))^\perp$.

### Applications

-   **Moindres carrés** : Le problème des moindres carrés $Ax=b$ consiste à trouver $x$ qui minimise $\|Ax-b\|$. La solution $\hat{x}$ est telle que $A\hat{x}$ est la projection orthogonale de $b$ sur l'image de $A$, ce qui signifie que le résidu $b-A\hat{x}$ doit être dans $(\text{Im}(A))^\perp$.
-   **Traitement du signal** : Décomposition d'un signal en une composante dans un sous-espace d'intérêt (le "signal") et une composante orthogonale (le "bruit").

---

## Concept 9: Projection Orthogonale

### Prérequis

-   Concept 8: Supplémentaire Orthogonal.
-   Algèbre linéaire : Projections, image, noyau.

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien, et $F$ un sous-espace vectoriel de $E$.

Puisque $E = F \oplus F^\perp$, tout vecteur $x \in E$ se décompose de manière unique en $x = x_F + x_{F^\perp}$ avec $x_F \in F$ et $x_{F^\perp} \in F^\perp$.

La **projection orthogonale** sur $F$ est l'endomorphisme $P_F: E \to E$ défini par $P_F(x) = x_F$.

C'est un projecteur, i.e., $P_F \circ P_F = P_F$. Son image est $F$ et son noyau est $F^\perp$.

Si $(e_1, \dots, e_p)$ est une base orthonormée de $F$, la projection est donnée par la formule :

$$ P_F(x) = \sum_{i=1}^p \langle x, e_i \rangle e_i $$

### Propriétés Clés

-   $P_F$ est un projecteur ($P_F^2 = P_F$).
-   $P_{F^\perp} = \text{Id}_E - P_F$.
-   $P_F$ est un endomorphisme autoadjoint, i.e. $P_F^* = P_F$.

    *Preuve* : $\langle P_F(x), y \rangle = \langle x_F, y_F+y_{F^\perp} \rangle = \langle x_F, y_F \rangle$.

    $\langle x, P_F(y) \rangle = \langle x_F+x_{F^\perp}, y_F \rangle = \langle x_F, y_F \rangle$.

-   $\|P_F(x)\| \le \|x\|$ pour tout $x \in E$ (un projecteur orthogonal est 1-lipschitzien).

    *Preuve* : $\|x\|^2 = \|x_F + x_{F^\perp}\|^2 = \|x_F\|^2 + \|x_{F^\perp}\|^2 = \|P_F(x)\|^2 + \|x-P_F(x)\|^2 \ge \|P_F(x)\|^2$.

### Exemples

**Exemple 1**

Dans $\mathbb{R}^3$, projetons $x=(1,2,3)$ sur le plan $F$ d'équation $x+y+z=0$.

$F^\perp$ est la droite engendrée par $n=(1,1,1)$. Une B.O.N. de $F^\perp$ est $(e_1 = \frac{1}{\sqrt{3}}(1,1,1))$.

$P_{F^\perp}(x) = \langle x, e_1 \rangle e_1 = \frac{1+2+3}{\sqrt{3}} \frac{1}{\sqrt{3}}(1,1,1) = \frac{6}{3}(1,1,1) = (2,2,2)$.

$P_F(x) = x - P_{F^\perp}(x) = (1,2,3) - (2,2,2) = (-1,0,1)$.

**Exemple 2**

Dans $\mathbb{R}_2[X]$ avec $\langle P, Q \rangle = \int_{-1}^1 P(t)Q(t)dt$, projetons $P(X)=X^2$ sur $F=\mathbb{R}_1[X]$.

Une base orthogonale de $F$ est $(1, X)$. Une B.O.N est $(e_1=\frac{1}{\sqrt{2}}, e_2=\sqrt{\frac{3}{2}}X)$.

$P_F(X^2) = \langle X^2, e_1 \rangle e_1 + \langle X^2, e_2 \rangle e_2$.

$\langle X^2, e_1 \rangle = \int_{-1}^1 t^2 \frac{1}{\sqrt{2}} dt = \frac{1}{\sqrt{2}}[\frac{t^3}{3}]_{-1}^1 = \frac{2}{3\sqrt{2}}$.

$\langle X^2, e_2 \rangle = \int_{-1}^1 t^2 \sqrt{\frac{3}{2}} t dt = 0$.

$P_F(X^2) = \frac{2}{3\sqrt{2}} \frac{1}{\sqrt{2}} = \frac{1}{3}$. Le projeté de $X^2$ sur $\mathbb{R}_1[X]$ est le polynôme constant $1/3$.

**Exemple 3**

Soit $F$ la droite de $\mathbb{R}^n$ engendrée par un vecteur unitaire $u$. La projection sur $F$ est $P_F(x) = \langle x, u \rangle u$. La matrice de cette projection dans la base canonique est $u {}^t u$.

### Contre-exemples

**Contre-exemple 1 (Projection non-orthogonale)**

Dans $\mathbb{R}^2$, soit $F = \text{Vect}(e_1)$ et $G=\text{Vect}(e_1+e_2)$. On a $\mathbb{R}^2=F \oplus G$. Le projecteur sur $F$ parallèlement à $G$ est $p(x_1, x_2) = (x_1-x_2, 0)$. Ce n'est pas une projection orthogonale car $\text{Ker}(p)=G$ n'est pas l'orthogonal de $\text{Im}(p)=F$.

**Contre-exemple 2 (Base non orthonormée)**

La formule $P_F(x) = \sum \langle x, e_i \rangle e_i$ est fausse si la base $(e_i)$ de $F$ n'est pas orthonormée. Si $F = \mathbb{R}^2$ et $(e_1=(1,0), e_2=(1,1))$ est une base de $F$, pour $x=(0,1)$, la formule donnerait $\langle x,e_1 \rangle e_1 + \langle x, e_2 \rangle e_2 = 0 \cdot e_1 + 1 \cdot e_2 = (1,1)$, ce qui n'est pas $x$.

### Concepts Connexes

-   **Théorème de la meilleure approximation** : Le projeté orthogonal $P_F(x)$ est le point de $F$ le plus proche de $x$.
-   **Procédé de Gram-Schmidt** : Chaque étape consiste à soustraire la projection d'un vecteur sur le sous-espace déjà construit.

### Applications

-   **Statistiques et économétrie** : La régression linéaire par les moindres carrés consiste à projeter orthogonalement le vecteur des observations sur le sous-espace engendré par les variables explicatives.
-   **Infographie** : Les projections 3D sur un plan 2D (écran) sont des projections. Les ombres portées peuvent être modélisées comme des projections.

---

## Concept 10: Théorème de la Meilleure Approximation

### Prérequis

-   Concept 9: Projection Orthogonale.
-   Analyse : Notion de distance, borne inférieure (infimum).

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace préhilbertien, $F$ un sous-espace vectoriel complet de $E$ (toujours vrai en dimension finie), et $x \in E$.

La **distance** de $x$ à $F$ est définie par :

$$ d(x, F) = \inf_{y \in F} \|x - y\| $$

**Théorème de la meilleure approximation**

L'infimum est atteint en un unique point de $F$, qui est le projeté orthogonal $P_F(x)$ de $x$ sur $F$.

$$ d(x, F) = \|x - P_F(x)\| $$

De plus, pour tout $y \in F$, $y \neq P_F(x)$, on a $\|x - y\| > \|x - P_F(x)\|$.

### Propriétés Clés

-   **Caractérisation du projeté orthogonal** : Un vecteur $y_0 \in F$ est le projeté orthogonal de $x$ sur $F$ si et seulement si $x-y_0 \in F^\perp$.
-   **Preuve du théorème** : Pour tout $y \in F$, le vecteur $P_F(x)-y$ est dans $F$. Le vecteur $x-P_F(x)$ est dans $F^\perp$. Par le théorème de Pythagore :

    $$ \|x-y\|^2 = \|(x - P_F(x)) + (P_F(x) - y)\|^2 = \|x-P_F(x)\|^2 + \|P_F(x)-y\|^2 $$

    Cette quantité est minimisée lorsque $\|P_F(x)-y\|^2 = 0$, c'est-à-dire pour $y = P_F(x)$.

### Exemples

**Exemple 1**

Dans $E = \mathbb{R}^3$ muni du produit scalaire usuel, calculons la distance du point $x=(1, 2, 1)$ au plan $F = \{(a,b,c) \mid a+b+c=0\}$.

On a déjà calculé le projeté : $P_F(x) = (-1/3, 2/3, -1/3)$.

Le vecteur $x-P_F(x) = (1,2,1) - (-1/3, 2/3, -1/3) = (4/3, 4/3, 4/3)$.

La distance est $d(x,F) = \|x-P_F(x)\| = \sqrt{(4/3)^2 + (4/3)^2 + (4/3)^2} = \sqrt{3 \cdot \frac{16}{9}} = \frac{4}{\sqrt{3}} = \frac{4\sqrt{3}}{3}$.

**Exemple 2**

Approximation d'une fonction par un polynôme de degré inférieur. Soit $E=C([0,1], \mathbb{R})$ avec $\langle f,g \rangle = \int_0^1 f(t)g(t)dt$, et $F=\mathbb{R}_1[X]$. Cherchons la meilleure approximation de $f(t)=e^t$ par un polynôme de degré 1. Il faut calculer $P_F(f)$.

Une base orthogonale de $F$ est $P_0(t)=1, P_1(t)=t-1/2$.

$P_F(f) = \frac{\langle f, P_0 \rangle}{\|P_0\|^2}P_0 + \frac{\langle f, P_1 \rangle}{\|P_1\|^2}P_1$.

Un calcul (intégrales de $e^t$, $t e^t$) montre que le polynôme cherché est approximativement $0.87 + 1.69(t-0.5)$.

**Exemple 3**

Trouver la solution des moindres carrés de $A X = b$ où $A \in M_{m,n}(\mathbb{R})$ avec $m>n$ et $b \in \mathbb{R}^m$.

Cela revient à trouver $X$ tel que $AX$ soit le plus proche possible de $b$. On cherche donc la projection de $b$ sur $\text{Im}(A)$. La solution $\hat{X}$ vérifie $b-A\hat{X} \in (\text{Im}(A))^\perp = \text{Ker}({}^tA)$.

Donc ${}^tA(b-A\hat{X}) = 0$, ce qui donne les **équations normales** : ${}^tA A \hat{X} = {}^tA b$.

### Contre-exemples

**Contre-exemple 1 (Sous-espace non complet)**

En dimension infinie, si $F$ n'est pas complet (donc pas fermé), l'infimum peut ne pas être atteint. Soit $E=C([-1,1], \mathbb{R})$ avec la norme $L^2$. Soit $F$ l'espace des polynômes. $F$ n'est pas complet. Soit $f(t)=|t|$. On peut trouver une suite de polynômes $(P_n)$ dans $F$ telle que $\|f-P_n\| \to 0$, mais $f$ n'est pas un polynôme, donc l'infimum (qui est 0) n'est pas atteint dans $F$.

**Contre-exemple 2 (Norme non-euclidienne)**

Le théorème d'existence et d'unicité de la meilleure approximation est une propriété forte des espaces de Hilbert. Dans des espaces de Banach plus généraux, le meilleur approximant peut ne pas exister, ou ne pas être unique. Par exemple, dans $\mathbb{R}^2$ avec la norme $\|x\|_\infty = \max(|x_1|, |x_2|)$, la distance du point $(2,0)$ à la droite $F=\{(t,t) \mid t \in \mathbb{R}\}$ est atteinte pour tout point $(t,t)$ avec $t \in [1,3]$, car $d((2,0), (t,t))_\infty = \max(|2-t|, |t|)$, qui vaut $1$ pour $t \in [1,3]$. L'unicité est perdue.

### Concepts Connexes

-   **Analyse convexe** : Le théorème est un cas particulier de projection sur un convexe fermé dans un espace de Hilbert.
-   **Séries de Fourier** : La somme partielle d'une série de Fourier d'une fonction $f$ est la meilleure approximation de $f$ dans le sous-espace des polynômes trigonométriques de degré correspondant.

### Applications

-   **Compression de données** : Approximer un signal (image, son) par sa projection sur un sous-espace de dimension plus faible (par ex. en gardant seulement les coefficients de Fourier les plus grands) est une technique de compression avec perte.
-   **Statistiques** : La méthode des moindres carrés, fondamentale en régression, est une application directe de ce théorème.

---

## Concept 11: Endomorphisme Adjoint

### Prérequis

-   Espaces euclidiens/hermitiens.
-   Formes linéaires et espace dual ($E^*$).
-   Théorème de représentation de Riesz.
-   Supplémentaire orthogonal.

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien et $f \in \mathcal{L}(E)$ un endomorphisme.

L'**adjoint** de $f$ est l'unique endomorphisme $f^* \in \mathcal{L}(E)$ vérifiant :

$$ \forall x, y \in E, \quad \langle f(x), y \rangle = \langle x, f^*(y) \rangle $$

L'existence et l'unicité de $f^*$ sont garanties par le théorème de représentation de Riesz. Pour tout $y$ fixé, l'application $x \mapsto \langle f(x), y \rangle$ est une forme linéaire sur $E$. Par Riesz, il existe un unique vecteur, que l'on note $f^*(y)$, tel que cette forme linéaire soit $x \mapsto \langle x, f^*(y) \rangle$. On démontre ensuite que l'application $y \mapsto f^*(y)$ est bien un endomorphisme.

### Propriétés Clés

-   **Matrice de l'adjoint** : Si $\mathcal{B}$ est une base **orthonormée** de $E$, alors la matrice de l'adjoint $f^*$ dans cette base est la transposée conjuguée de la matrice de $f$ :

    $$ \text{Mat}_{\mathcal{B}}(f^*) = (\text{Mat}_{\mathcal{B}}(f))^* = {}^t\overline{\text{Mat}_{\mathcal{B}}(f)} $$

    Dans le cas euclidien, c'est simplement la transposée.

-   **Propriétés algébriques** (l'application $f \mapsto f^*$ est une involution semi-linéaire et un anti-automorphisme d'algèbre) :
    -   $(f+g)^* = f^* + g^*$
    -   $(\lambda f)^* = \bar{\lambda} f^*$
    -   $(f \circ g)^* = g^* \circ f^*$
    -   $(f^*)^* = f$
-   **Relation fondamentale Noyau-Image** :

    $$ \text{Ker}(f^*) = (\text{Im}(f))^\perp \quad \text{et} \quad \text{Im}(f^*) = (\text{Ker}(f))^\perp $$

    Ceci implique que $E = \text{Ker}(f) \oplus \text{Im}(f^*)$ et $E = \text{Ker}(f^*) \oplus \text{Im}(f)$.

### Exemples

**Exemple 1**

Soit $E=\mathbb{C}^n$ avec le produit scalaire canonique. Soit $f$ l'endomorphisme dont la matrice dans la base canonique est $A$. Alors $\langle Ax, y \rangle = {}^t(Ax)\overline{y} = {}^t x {}^tA \overline{y}$. Et $\langle x, f^*(y) \rangle = {}^t x \overline{A^* y} = {}^t x {}^t(\overline{A^*}) \overline{y}$. Par identification, ${}^tA = {}^t(\overline{A^*})$, donc $A = \overline{A^*}$, soit $A^* = {}^t\overline{A}$. L'adjoint de $A$ est sa transconjuguée.

**Exemple 2**

Soit $E=\mathbb{R}_n[X]$ avec $\langle P, Q \rangle = \int_0^1 P(t)Q(t)dt$. Soit $f(P)(t) = tP(t)$.

$\langle f(P), Q \rangle = \int_0^1 tP(t)Q(t)dt = \int_0^1 P(t)(tQ(t))dt = \langle P, f(Q) \rangle$.

Donc $f^*=f$. L'opérateur de multiplication par $t$ est autoadjoint.

**Exemple 3**

Soit $E$ un espace euclidien et $u, v \in E$. Soit $f(x) = \langle x, v \rangle u$.

$\langle f(x), y \rangle = \langle \langle x, v \rangle u, y \rangle = \langle x, v \rangle \langle u, y \rangle$.

$\langle x, f^*(y) \rangle$. On cherche $f^*(y)$ tel que $\langle x,v \rangle \langle u,y \rangle = \langle x, f^*(y) \rangle$ pour tout $x$.

On peut écrire $\langle x,v \rangle \langle u,y \rangle = \langle x, \overline{\langle u,y \rangle} v \rangle$.

Donc $f^*(y) = \overline{\langle u,y \rangle} v = \langle y,u \rangle v$. L'adjoint est $f^*(y)=\langle y,u \rangle v$.

### Contre-exemples

**Contre-exemple 1 (Base non-orthonormée)**

Si la base n'est pas orthonormée, la matrice de l'adjoint n'est pas la transposée (ou transconjuguée). Soit dans $\mathbb{R}^2$ la base $\mathcal{B}=((1,0),(1,1))$ et $f=\text{Id}$. $\text{Mat}_{\mathcal{B}}(f)=I$. L'adjoint de l'identité est l'identité, donc $\text{Mat}_{\mathcal{B}}(f^*)=I$. Or ${}^tI = I$. La formule semble marcher. Prenons un exemple moins trivial. La formule générale est $\text{Mat}_{\mathcal{B}}(f^*) = G^{-1} (\text{Mat}_{\mathcal{B}}(f))^* G$, où $G$ est la matrice de Gram.

**Contre-exemple 2 (Dérivation)**

Sur $E=C^\infty([0,1], \mathbb{R})$ avec $\langle f,g \rangle = \int_0^1 fg$ et $D(f)=f'$. Par intégration par parties :

$\langle Df, g \rangle = \int_0^1 f'g = [fg]_0^1 - \int_0^1 fg' = f(1)g(1)-f(0)g(0) - \langle f, Dg \rangle$.

A cause des termes de bord, l'opérateur $D$ n'a pas d'adjoint sur cet espace. En restreignant à un sous-espace avec des conditions aux bords (e.g. fonctions nulles en 0 et 1), on peut définir un adjoint $D^*=-D$.

### Concepts Connexes

-   **Théorème spectral** : Ce théorème majeur stipule que certains endomorphismes (normaux) sont diagonalisables dans une base orthonormée. Il repose entièrement sur la notion d'adjoint.
-   **Décomposition en valeurs singulières (SVD)** : Tout endomorphisme $f$ peut être décomposé en $f=U\Sigma V^*$ où $U,V$ sont unitaires et $\Sigma$ diagonale. Cette décomposition est basée sur l'étude des endomorphismes autoadjoints $f^*f$ et $ff^*$.

### Applications

-   **Mécanique quantique** : Les observables physiques sont des opérateurs autoadjoints (hermitiens). L'évolution temporelle d'un système est gouvernée par un opérateur unitaire.
-   **Résolution d'équations** : La relation $\text{Ker}(A^*) = (\text{Im}(A))^\perp$ (connue comme l'alternative de Fredholm) donne une condition nécessaire et suffisante pour l'existence de solutions à l'équation $Ax=b$ : une solution existe ssi $b$ est orthogonal à tout vecteur du noyau de $A^*$.

---

## Concept 12: Classes d'Endomorphismes Remarquables

### Prérequis

-   Concept 11: Endomorphisme Adjoint.

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien et $f \in \mathcal{L}(E)$.

1.  $f$ est **autoadjoint** (ou **symétrique** dans le cas euclidien, **hermitien** dans le cas hermitien) si $f=f^*$.

    Ceci équivaut à $\forall x, y \in E, \langle f(x), y \rangle = \langle x, f(y) \rangle$.

2.  $f$ est **unitaire** (ou **orthogonal** dans le cas euclidien) si $f$ est un isomorphisme et $f^{-1}=f^*$.

    Ceci équivaut à ce que $f$ préserve le produit scalaire : $\forall x, y \in E, \langle f(x), f(y) \rangle = \langle x, y \rangle$.

    Ceci équivaut aussi à ce que $f$ préserve la norme : $\forall x \in E, \|f(x)\| = \|x\|$.

3.  $f$ est **normal** si $f$ commute avec son adjoint : $f \circ f^* = f^* \circ f$.

### Propriétés Clés

-   **Inclusions** : {Autoadjoints} $\subset$ {Normaux} et {Unitaires} $\subset$ {Normaux}.
-   **Matrices en B.O.N.** : Soit $M$ la matrice de $f$ dans une B.O.N.
    -   $f$ autoadjoint $\iff M^*=M$ (matrice hermitienne ou symétrique réelle).
    -   $f$ unitaire $\iff M^*M = I$ (matrice unitaire ou orthogonale).
    -   $f$ normal $\iff M^*M = MM^*$.
-   **Valeurs propres** :
    -   Les valeurs propres d'un endomorphisme autoadjoint sont réelles.
    -   Les valeurs propres d'un endomorphisme unitaire sont de module 1.
-   **Sous-espaces propres** :
    -   Les sous-espaces propres d'un endomorphisme autoadjoint ou unitaire associés à des valeurs propres distinctes sont orthogonaux.
    -   Pour un endomorphisme normal, si $f(x) = \lambda x$, alors $f^*(x) = \bar{\lambda} x$. Le noyau et l'image d'un endomorphisme normal sont liés par $\text{Ker}(f)=\text{Ker}(f^*)$ et $\text{Im}(f)=\text{Im}(f^*)$.

### Exemples

**Exemple 1 (Autoadjoint)**

Une projection orthogonale $P_F$ est autoadjointe ($P_F^2=P_F$ et $P_F^*=P_F$). Ses valeurs propres sont 0 et 1.

**Exemple 2 (Unitaire/Orthogonal)**

Dans le plan euclidien $\mathbb{R}^2$, les rotations d'angle $\theta$ (matrice $\begin{pmatrix} \cos\theta & -\sin\theta \\ \sin\theta & \cos\theta \end{pmatrix}$) et les réflexions par rapport à une droite sont des endomorphismes orthogonaux.

**Exemple 3 (Normal mais ni autoadjoint ni unitaire)**

Dans $\mathbb{C}^2$, soit $M = \begin{pmatrix} 1 & 1 \\ -1 & 1 \end{pmatrix}$. $M^* = \begin{pmatrix} 1 & -1 \\ 1 & 1 \end{pmatrix}$.

$MM^* = \begin{pmatrix} 2 & 0 \\ 0 & 2 \end{pmatrix}$. $M^*M = \begin{pmatrix} 2 & 0 \\ 0 & 2 \end{pmatrix}$.

Donc $M$ est normale. Elle n'est ni hermitienne ($M \neq M^*$) ni unitaire (les colonnes ne sont pas de norme 1). Un autre exemple est $M= \lambda U$ avec $U$ unitaire et $|\lambda|\neq 1$.

### Contre-exemples

**Contre-exemple 1 (Ni normal, ni autoadjoint, ni unitaire)**

Une matrice triangulaire qui n'est pas diagonale n'est en général pas normale. Soit $M = \begin{pmatrix} 1 & 1 \\ 0 & 2 \end{pmatrix}$ dans $\mathbb{R}^2$. $M^T = \begin{pmatrix} 1 & 0 \\ 1 & 2 \end{pmatrix}$.

$MM^T = \begin{pmatrix} 2 & 2 \\ 2 & 4 \end{pmatrix}$ et $M^TM = \begin{pmatrix} 1 & 1 \\ 1 & 5 \end{pmatrix}$. $MM^T \neq M^TM$.

**Contre-exemple 2 (Projecteur non orthogonal)**

Le projecteur $p(x_1, x_2)=(x_1-x_2, 0)$ de $\mathbb{R}^2$ a pour matrice $M=\begin{pmatrix} 1 & -1 \\ 0 & 0 \end{pmatrix}$. Il n'est pas autoadjoint ($M \neq M^T$) et donc pas un projecteur orthogonal.

### Concepts Connexes

-   **Théorème spectral** : Le résultat le plus important concernant ces endomorphismes. Il affirme qu'un endomorphisme est normal si et seulement si il est diagonalisable dans une base orthonormée (dans le cas complexe). Un endomorphisme est autoadjoint si et seulement si il est diagonalisable en B.O.N. avec des valeurs propres réelles.
-   **Groupes de Lie** : Le groupe des matrices orthogonales $O(n)$ et le groupe des matrices unitaires $U(n)$ sont des exemples fondamentaux de groupes de Lie compacts, centraux en géométrie et en physique.

### Applications

-   **Diagonalisation** : Le théorème spectral garantit que de nombreux problèmes physiques (par exemple, trouver les modes propres d'un système vibrant, les niveaux d'énergie en mécanique quantique) se ramènent à la diagonalisation d'une matrice symétrique ou hermitienne.
-   **Géométrie** : Les isométries (transformations préservant la distance) d'un espace euclidien sont précisément les transformations orthogonales (plus translations). Elles forment le groupe euclidien.
-   **Décomposition Polaire** : Tout endomorphisme inversible $f$ s'écrit de façon unique $f=UP$ où $U$ est unitaire et $P$ est autoadjoint défini positif. C'est l'analogue de la décomposition polaire $z=e^{i\theta}r$ d'un nombre complexe.

---

## Concept 13: Théorème de Représentation de Riesz

### Prérequis

-   Espaces euclidiens/hermitiens.
-   Algèbre linéaire : Formes linéaires, espace dual $E^*$.
-   Théorème du rang.

### Définition

Soit $(E, \langle \cdot, \cdot \rangle)$ un espace euclidien ou hermitien.

L'espace dual $E^*$ est l'espace des formes linéaires sur $E$, i.e., les applications linéaires $l: E \to \mathbb{K}$.

**Théorème de représentation de Riesz (en dimension finie)**

Pour toute forme linéaire $l \in E^*$, il existe un et un seul vecteur $y_l \in E$ tel que pour tout $x \in E$ :

$$ l(x) = \langle x, y_l \rangle $$

De plus, l'application $\Phi: E \to E^*$ qui à $y$ associe la forme linéaire $\varphi_y(x) = \langle x, y \rangle$ est :

-   un isomorphisme d'espaces vectoriels si $\mathbb{K}=\mathbb{R}$.
-   un isomorphisme **ant-linéaire** (ou semi-linéaire) si $\mathbb{K}=\mathbb{C}$. C'est-à-dire $\Phi(\lambda y) = \bar{\lambda} \Phi(y)$.

### Propriétés Clés

-   **Preuve du théorème** : L'application $\Phi: y \mapsto (\varphi_y: x \mapsto \langle x, y \rangle)$ est bien à valeurs dans $E^*$.
    -   Injectivité : Si $\Phi(y) = 0_{E^*}$, alors $\varphi_y(x) = \langle x, y \rangle = 0$ pour tout $x$. En choisissant $x=y$, on a $\|y\|^2=0$, donc $y=0_E$. Ker($\Phi$) est trivial.
    -   Surjectivité : En dimension finie, $\dim(E) = \dim(E^*)$. Comme $\Phi$ est injective, elle est aussi surjective par le théorème du rang.
-   **Base duale et B.O.N.** : Si $(e_1, \dots, e_n)$ est une B.O.N. de $E$, alors l'image de cette base par $\Phi$ est la base duale $(e_1^*, \dots, e_n^*)$, où $e_i^*(x) = \langle x, e_i \rangle$.

### Exemples

**Exemple 1**

Dans $E=\mathbb{R}^3$, soit la forme linéaire $l(x,y,z) = 2x - y + 3z$. Le produit scalaire est l'usuel. On cherche $v=(v_1,v_2,v_3)$ tel que $l(u) = \langle u,v \rangle$ pour tout $u=(x,y,z)$.

$2x-y+3z = xv_1+yv_2+zv_3$. Par identification, $v_1=2, v_2=-1, v_3=3$. Le vecteur représentant est $v=(2,-1,3)$.

**Exemple 2**

Soit $E = \mathbb{R}_n[X]$ avec le produit scalaire $\langle P, Q \rangle = \int_0^1 P(t)Q(t)dt$. Soit $l$ la forme linéaire d'évaluation en 0 : $l(P) = P(0)$. D'après Riesz, il existe un unique polynôme $Q_0 \in \mathbb{R}_n[X]$ tel que $P(0) = \int_0^1 P(t)Q_0(t)dt$ pour tout $P \in \mathbb{R}_n[X]$. Ce polynôme $Q_0$ est appelé le **noyau de représentation** de la forme linéaire "évaluation".

**Exemple 3**

Soit $E = \mathbb{R}_n[X]$ avec le produit scalaire $\langle P, Q \rangle = \sum_{i=0}^n a_i b_i$ pour $P=\sum a_i X^i, Q=\sum b_i X^i$. Soit la forme linéaire $l(P) = \int_0^1 P(t)dt$.

$l(P) = \int_0^1 \sum_i a_i t^i dt = \sum_i a_i \int_0^1 t^i dt = \sum_i a_i \frac{1}{i+1}$.

On cherche $Q_0 = \sum_i b_i X^i$ tel que $\langle P, Q_0 \rangle = \sum_i a_i b_i$. Par identification, $b_i = \frac{1}{i+1}$.

Le polynôme représentant est $Q_0(X) = \sum_{i=0}^n \frac{1}{i+1} X^i$.

### Contre-exemples

**Contre-exemple 1 (Espace non préhilbertien)**

Dans un espace vectoriel de dimension finie sans produit scalaire, il y a toujours un isomorphisme entre $E$ et $E^*$, mais il n'est pas canonique, il dépend du choix d'une base. Le produit scalaire "canonise" cet isomorphisme.

**Contre-exemple 2 (Forme non-linéaire)**

L'application $f(x) = \|x\|$ sur $\mathbb{R}^2$ n'est pas une forme linéaire. Il n'existe donc pas de vecteur $y$ tel que $\|x\| = \langle x, y \rangle$ pour tout $x$.

### Concepts Connexes

-   **Tenseurs** : L'isomorphisme entre $E$ et $E^*$ via la métrique (le produit scalaire) est le mécanisme fondamental en géométrie riemannienne pour "monter et descendre les indices" des tenseurs. Un vecteur (tenseur contravariant) est associé à une covecteur (tenseur covariant).
-   **Espaces de Hilbert** : Le théorème de Riesz est l'un des piliers de la théorie des espaces de Hilbert (espaces préhilbertiens complets de dimension infinie). Il reste vrai dans ce cadre et est essentiel en analyse fonctionnelle et en mécanique quantique.
-   **Distributions** : Le théorème de Riesz permet d'identifier l'espace $L^2$ à son propre dual, mais pour des espaces plus grands comme l'espace des distributions, la dualité est plus complexe.

### Applications

-   **Existence de l'adjoint** : La preuve la plus élégante de l'existence et l'unicité de l'endomorphisme adjoint $f^*$ repose sur le théorème de Riesz.
-   **Analyse numérique** : En méthode des éléments finis, on cherche des solutions faibles à des EDP, ce qui met en jeu des formes linéaires sur des espaces de Hilbert. Le théorème de Riesz garantit que ces solutions faibles correspondent bien à des fonctions réelles.
-   **Gradient** : Le gradient d'une fonction différentiable $f: E \to \mathbb{R}$ en un point $x$ peut être défini comme le vecteur représentant (via Riesz) de la différentielle $df_x \in E^*$. C'est-à-dire, $\nabla f(x)$ est l'unique vecteur tel que $df_x(h) = \langle h, \nabla f(x) \rangle$ pour tout $h \in E$.