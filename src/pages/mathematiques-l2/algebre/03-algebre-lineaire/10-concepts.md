---
id: c1b5ca00
type: concepts
order: 10
title: Rappels d’algèbre linéaire - concepts (A)
tags:
  - Algèbre linéaire
  - Espaces vectoriels
  - Déterminant
  - Endomorphismes
  - Diagonalisation
course: Algèbre
courseId: 3b74b601
chapter: Rappels d’algèbre linéaire
chapterId: 7e9b2b30
level: regular
createdAt: '2025-11-27T07:58:43.842Z'
---
# Rappels d’algèbre linéaire (A)

---

## Concept 1 : Espace Vectoriel et Sous-espace Vectoriel

### Prérequis

- Structures de groupes (Groupe commutatif)
- Corps commutatifs (ex: $\mathbb{R}, \mathbb{C}, \mathbb{Q}$)
- Théorie des ensembles élémentaire

### Définition

Un **$K$-espace vectoriel** est un ensemble $V$ muni de deux opérations :

1.  Une addition interne $+ : V \times V \to V$ qui confère à $(V, +)$ une structure de groupe commutatif (élément neutre noté $0_V$).
2.  Une multiplication externe $\cdot : K \times V \to V$ par les scalaires du corps $K$.

Ces opérations doivent satisfaire des axiomes de compatibilité pour tous $\lambda, \lambda' \in K$ et $v, v' \in V$ :

- Distributivité : $(\lambda + \lambda') \cdot v = \lambda \cdot v + \lambda' \cdot v$ et $\lambda \cdot (v + v') = \lambda \cdot v + \lambda \cdot v'$.
- Associativité mixte : $\lambda \cdot (\lambda' \cdot v) = (\lambda\lambda') \cdot v$.
- Élément neutre : $1 \cdot v = v$.

Un **sous-espace vectoriel** $W$ de $V$ est un sous-ensemble qui conserve la structure d'espace vectoriel. Il doit contenir le vecteur nul $0_V$ et être stable par combinaisons linéaires.

### Propriétés Clés

- **Stabilité** : Pour prouver que $W \subset V$ est un sous-espace, il suffit de vérifier que $0_V \in W$ et que pour tout $u, v \in W$ et $\lambda \in K$, on a $u + v \in W$ et $\lambda \cdot u \in W$.
- **Propriétés de calcul** : $0 \cdot v = 0_V$ et $(-1) \cdot v = -v$.
- **Intersection** : L'intersection de sous-espaces vectoriels est toujours un sous-espace vectoriel.

### Exemples

**Exemple 1**

L'espace des $n$-uplets $K^n$. Pour $K=\mathbb{R}$ et $n=2$, l'ensemble des vecteurs du plan $\mathbb{R}^2$. L'addition se fait composante par composante :

$$ (x, y) + (x', y') = (x+x', y+y') $$

Et la multiplication par un scalaire $\lambda \in \mathbb{R}$ :

$$ \lambda \cdot (x, y) = (\lambda x, \lambda y) $$

**Exemple 2**

L'espace des polynômes $K[X]$. C'est un espace vectoriel de dimension infinie. Un sous-espace vectoriel serait l'ensemble $K_n[X]$ des polynômes de degré inférieur ou égal à $n$.

**Exemple 3**

L'espace $K^{(I)}$ des familles presque nulles. Si $I$ est un ensemble infini, c'est l'ensemble des fonctions $f: I \to K$ telles que $f(i) = 0$ sauf pour un nombre fini d'indices $i$.

### Contre-exemples

- L'ensemble $\mathbb{Z}$ des entiers relatifs muni de l'addition usuelle n'est **pas** un $\mathbb{R}$-espace vectoriel car la multiplication par un scalaire réel (ex: $0.5 \cdot 1 = 0.5$) fait sortir de l'ensemble.
- Le sous-ensemble de $\mathbb{R}^2$ défini par $\{(x, y) \in \mathbb{R}^2 \mid x + y = 1\}$ n'est pas un sous-espace vectoriel car il ne contient pas le vecteur nul $(0,0)$.

### Concepts Liés

- Groupes abéliens
- Corps

## Applications

- Modélisation de phénomènes physiques (forces, vitesses).
- Résolution de systèmes d'équations linéaires.

---

## Concept 2 : Familles de Vecteurs, Bases et Dimension

### Prérequis

- Espace vectoriel
- Combinaison linéaire

### Définition

Soit $V$ un espace vectoriel et $\mathcal{F} = \{v_i\}_{i \in I}$ une famille de vecteurs de $V$.

1.  **Famille génératrice** : On dit que $\mathcal{F}$ engendre $V$ si tout vecteur de $V$ peut s'écrire comme combinaison linéaire finie d'éléments de $\mathcal{F}$. On note $V = \text{Vect}(\mathcal{F})$.
2.  **Famille libre** : La famille est libre si la seule combinaison linéaire nulle est celle dont tous les coefficients sont nuls :

    $$ \sum_{i \in I} \lambda_i v_i = 0 \Rightarrow \forall i, \lambda_i = 0 $$

3.  **Base** : Une famille est une base si elle est à la fois libre et génératrice.
4.  **Dimension** : Si $V$ admet une base finie, le nombre d'éléments dans cette base est appelé la dimension de $V$, notée $\dim(V)$.

### Propriétés Clés

- **Unicité des coordonnées** : Si $\mathfrak{B}$ est une base, tout vecteur $v \in V$ s'écrit de manière **unique** comme combinaison linéaire des éléments de la base.
- **Théorème de la base incomplète** : Toute famille libre peut être complétée pour former une base.
- **Indépendance de la dimension** : Toutes les bases d'un espace vectoriel de dimension finie ont le même cardinal (nombre d'éléments).

### Exemples

**Exemple 1**

Dans $\mathbb{R}^3$, la base canonique est $\mathfrak{B} = \{e_1, e_2, e_3\}$ avec :

$$ e_1 = (1, 0, 0), \quad e_2 = (0, 1, 0), \quad e_3 = (0, 0, 1) $$

C'est une famille libre et génératrice. La dimension est 3.

**Exemple 2**

Dans l'espace des polynômes $K_2[X]$ (degré $\le 2$), la famille $\{1, X, X^2\}$ est une base. La dimension est $3$.

Si l'on considère le polynôme $P = 2 + 3X + 5X^2$, ses coordonnées dans cette base sont le vecteur colonne :

$$ [P]_{\mathfrak{B}} = \begin{pmatrix} 2 \\ 3 \\ 5 \end{pmatrix} $$

**Exemple 3**

Dans $\mathbb{C}$ considéré comme un $\mathbb{R}$-espace vectoriel, la famille $\{1, i\}$ est une base. On a $\dim_{\mathbb{R}}(\mathbb{C}) = 2$.

Cependant, $\mathbb{C}$ comme $\mathbb{C}$-espace vectoriel a pour base $\{1\}$ et est de dimension 1.

### Contre-exemples

- La famille $\{(1,0), (0,1), (1,1)\}$ dans $\mathbb{R}^2$ est génératrice mais n'est pas libre (car $(1,1) = (1,0) + (0,1)$). Ce n'est pas une base.
- La famille $\{(1,0)\}$ dans $\mathbb{R}^2$ est libre mais pas génératrice. Ce n'est pas une base.

### Concepts Liés

- Isomorphisme avec $K^n$
- Matrice colonne des coordonnées

## Applications

- Représentation numérique de signaux ou d'images.
- Compression de données (changement de base).

---

## Concept 3 : Applications Linéaires et Matrices

### Prérequis

- Espace vectoriel
- Bases
- Matrices ($M_{m,n}(K)$)

### Définition

Une **application linéaire** $f : V \to W$ est une fonction entre deux $K$-espaces vectoriels qui respecte la structure vectorielle :

$$ \forall u, v \in V, \forall \lambda \in K, \quad f(\lambda u + v) = \lambda f(u) + f(v) $$

La **matrice d'une application linéaire** dans des bases fixées $\mathfrak{B} = \{e_j\}$ (de $V$) et $\mathcal{C}$ (de $W$) est la matrice $M \in M_{m,n}(K)$ dont la $j$-ème colonne contient les coordonnées du vecteur image $f(e_j)$ exprimé dans la base d'arrivée $\mathcal{C}$.

### Propriétés Clés

- **Morphisme** : Une application linéaire envoie le vecteur nul sur le vecteur nul : $f(0_V) = 0_W$.
- **Composition et Produit** : La composition des applications linéaires correspond à la multiplication des matrices associées :

  $$ \text{Mat}_{\mathfrak{B}, \mathcal{D}}(g \circ f) = \text{Mat}_{\mathcal{C}, \mathcal{D}}(g) \cdot \text{Mat}_{\mathfrak{B}, \mathcal{C}}(f) $$

- **Calcul matriciel** : L'image d'un vecteur $v$ se calcule par produit matriciel :

  $$ [f(v)]_{\mathcal{C}} = \text{Mat}_{\mathfrak{B}, \mathcal{C}}(f) \cdot [v]_{\mathfrak{B}} $$

### Exemples

**Exemple 1**

L'application identité $\text{id}_V : V \to V$ définie par $\text{id}_V(v) = v$. Sa matrice dans n'importe quelle base $\mathfrak{B}$ est la matrice identité $I_n$.

**Exemple 2**

Soit $f : \mathbb{R}^2 \to \mathbb{R}^2$ définie par $f(x, y) = (x+y, y)$. Dans la base canonique $\mathfrak{B} = \{(1,0), (0,1)\}$, on a $f(1,0) = (1,0)$ et $f(0,1) = (1,1)$. La matrice est :

$$ \text{Mat}_{\mathfrak{B}}(f) = \begin{pmatrix} 1 & 1 \\ 0 & 1 \end{pmatrix} $$

**Exemple 3**

La dérivation $D : K[X] \to K[X]$ définie par $D(P) = P'$ est une application linéaire.

$$ D(\lambda P + Q) = (\lambda P + Q)' = \lambda P' + Q' = \lambda D(P) + D(Q) $$

### Contre-exemples

- L'application $f(x) = x^2$ n'est pas linéaire car $f(2x) = 4x^2 \neq 2f(x)$.
- Une application affine $f(x) = ax + b$ avec $b \neq 0$ n'est pas linéaire car $f(0) = b \neq 0$.

### Concepts Liés

- Espace dual $V^*$
- Endomorphismes ($\text{End}(V)$)

## Applications

- Transformations géométriques (rotations, homothéties, projections).
- Systèmes dynamiques linéaires.

---

## Concept 4 : Changement de Base

### Prérequis

- Applications linéaires
- Matrices
- Matrice inverse

### Définition

Le changement de base permet de relier les coordonnées d'un vecteur ou la matrice d'une application linéaire lorsqu'on change les bases de référence.

La **matrice de passage** $P_{\mathfrak{B}, \mathcal{C}}$ de la base $\mathfrak{B}$ à la base $\mathcal{C}$ contient en colonnes les coordonnées des vecteurs de la base $\mathfrak{B}$ exprimés dans la base $\mathcal{C}$.

Pour un endomorphisme $f: V \to V$, si $A = \text{Mat}_{\mathfrak{B}}(f)$ et $B = \text{Mat}_{\mathcal{C}}(f)$, alors :

$$ B = P^{-1} A P $$

où $P = P_{\mathcal{C}, \mathfrak{B}}$ est la matrice de passage de la *nouvelle* base $\mathcal{C}$ vers l'*ancienne* base $\mathfrak{B}$ (matrice dont les colonnes sont les vecteurs de $\mathcal{C}$ exprimés dans $\mathfrak{B}$).

### Propriétés Clés

- **Conjugaison** : Deux matrices représentant le même endomorphisme dans des bases différentes sont dites semblables.
- **Inverse** : La matrice de passage est toujours inversible. $P_{\mathfrak{B}, \mathcal{C}} = (P_{\mathcal{C}, \mathfrak{B}})^{-1}$.

### Exemples

**Exemple 1**

Dans $\mathbb{R}^2$, passons de la base canonique $\mathfrak{B} = \{e_1, e_2\}$ à la base $\mathcal{C} = \{v_1, v_2\}$ avec $v_1 = (1, 1)$ et $v_2 = (1, -1)$.

La matrice de passage $P$ (de $\mathcal{C}$ dans $\mathfrak{B}$, souvent notée simplement $P$) est :

$$ P = \begin{pmatrix} 1 & 1 \\ 1 & -1 \end{pmatrix} $$

Si un endomorphisme a pour matrice $A$ dans $\mathfrak{B}$, sa matrice dans $\mathcal{C}$ sera $P^{-1} A P$.

**Exemple 2**

Si $v$ a pour coordonnées $X$ dans $\mathfrak{B}$ et $X'$ dans $\mathcal{C}$, alors $X = P X'$ (attention au sens : $P$ "traduit" les nouvelles coordonnées en anciennes).

**Exemple 3**

Si $f$ est une homothétie de rapport $k$, sa matrice est $k I_n$. Pour toute matrice inversible $P$, on a $P^{-1} (k I_n) P = k P^{-1} I_n P = k I_n$. La matrice d'une homothétie est invariante par changement de base.

### Contre-exemples

- On ne peut pas changer de base si la famille d'arrivée n'est pas une base (par exemple pas libre ou pas génératrice).
- La formule $B = P A P^{-1}$ est incorrecte (inversion de l'ordre de $P$ et $P^{-1}$).

### Concepts Liés

- Diagonalisation
- Matrices semblables

## Applications

- Simplification des équations (choisir une base où la matrice est diagonale ou simple).

---

## Concept 5 : Noyau, Image et Théorème du Rang

### Prérequis

- Application linéaire
- Sous-espace vectoriel
- Dimension

### Définition

Soit $f : V \to W$ une application linéaire.

1.  **Noyau** ($\text{Ker}(f)$) : L'ensemble des vecteurs de $V$ qui s'annulent par $f$.

    $$ \text{Ker}(f) = \{v \in V \mid f(v) = 0_W\} $$

2.  **Image** ($\text{Im}(f)$) : L'ensemble des vecteurs de $W$ qui sont atteints par $f$.

    $$ \text{Im}(f) = \{w \in W \mid \exists v \in V, f(v) = w\} = f(V) $$

3.  **Rang** : La dimension de l'image de $f$. $\text{rang}(f) = \dim(\text{Im}(f))$.

**Théorème du rang** : Si $V$ est de dimension finie, alors :

$$ \dim(V) = \dim(\text{Ker}(f)) + \dim(\text{Im}(f)) $$

### Propriétés Clés

- **Injectivité** : $f$ est injective si et seulement si $\text{Ker}(f) = \{0_V\}$.
- **Surjectivité** : $f$ est surjective si et seulement si $\text{Im}(f) = W$ (ce qui équivaut à $\text{rang}(f) = \dim(W)$ en dimension finie).
- **Bijectivité** : Si $\dim(V) = \dim(W)$ (dimension finie), alors $f$ est injective $\iff$ $f$ est surjective $\iff$ $f$ est bijective.

### Exemples

**Exemple 1**

Soit la projection $p : \mathbb{R}^3 \to \mathbb{R}^3$ sur le plan $xy$ définie par $p(x, y, z) = (x, y, 0)$.

- $\text{Im}(p)$ est le plan $xy$ (dim 2).
- $\text{Ker}(p)$ est l'axe $z$ (les vecteurs $(0, 0, z)$, dim 1).
- Théorème du rang : $3 = 1 + 2$.

**Exemple 2**

Soit l'application nulle $0 : V \to W$.

- $\text{Ker}(0) = V$, $\text{Im}(0) = \{0_W\}$.
- Rang = 0.
- $\dim(V) = \dim(V) + 0$.

**Exemple 3**

Pour une matrice $A \in M_{m,n}(K)$, le rang de l'application associée est égal au nombre de colonnes linéairement indépendantes (ou de pivots dans la forme échelonnée).

### Contre-exemples

- Si l'espace de départ est de dimension infinie, le théorème du rang ne s'applique pas directement sous cette forme arithmétique simple.
- Une application peut avoir un noyau trivial ($\{0\}$) sans être surjective (si $\dim(W) > \dim(V)$).

### Concepts Liés

- Quotient d'espaces vectoriels
- Pivot de Gauss

## Applications

- Étude de l'existence et de l'unicité des solutions de systèmes linéaires $Ax = b$.

---

## Concept 6 : Espace Vectoriel Quotient

### Prérequis

- Sous-espace vectoriel
- Relation d'équivalence (Groupes quotients)

### Définition

Soit $W$ un sous-espace vectoriel de $V$. L'**espace quotient** $V/W$ est l'ensemble des "classes" de vecteurs modulo $W$. Un élément de $V/W$ est noté $v + W$.

La structure d'espace vectoriel sur $V/W$ est définie par :

$$ (v + W) + (v' + W) = (v + v') + W $$

$$ \lambda \cdot (v + W) = (\lambda v) + W $$

La **propriété universelle** stipule que pour toute application linéaire $f : V \to V'$ qui s'annule sur $W$ (i.e., $W \subset \text{Ker}(f)$), il existe une unique application linéaire $\bar{f} : V/W \to V'$ telle que $f = \bar{f} \circ \text{cl}_W$, où $\text{cl}_W$ est la projection canonique $v \mapsto v+W$.

### Propriétés Clés

- **Isomorphisme canonique** : $V / \text{Ker}(f) \cong \text{Im}(f)$. C'est une reformulation structurelle du théorème du rang.
- **Dimension** : En dimension finie, $\dim(V/W) = \dim(V) - \dim(W)$.

### Exemples

**Exemple 1**

Soit $V = \mathbb{R}^2$ et $W$ l'axe des abscisses ($y=0$). L'espace quotient $\mathbb{R}^2/W$ "écrase" l'axe des $x$. Deux vecteurs $(x, y)$ et $(x', y')$ sont dans la même classe si leur différence est dans $W$, c'est-à-dire si $y = y'$. L'espace quotient est isomorphe à l'axe des $y$ (dimension 1).

**Exemple 2**

Construction de $\mathbb{R}$. $\mathbb{R}$ peut être vu comme le quotient de l'espace des suites de Cauchy rationnelles par le sous-espace des suites tendant vers 0.

**Exemple 3**

Si on considère l'espace des fonctions intégrables et qu'on "quotiente" par les fonctions nulles presque partout, on obtient les espaces $L^p$ (concepts avancés d'analyse).

### Contre-exemples

- On ne peut pas quotienter par un sous-ensemble qui n'est pas un sous-espace vectoriel (la structure ne serait pas bien définie).

### Concepts Liés

- Supplémentaire (un supplémentaire de $W$ est isomorphe à $V/W$).

## Applications

- Construction de nouveaux espaces mathématiques.
- Simplification de problèmes en "ignorant" certaines directions (celles de $W$).

---

## Concept 7 : Déterminant

### Prérequis

- Matrices carrées
- Groupe symétrique (permutations)
- Anneaux commutatifs

### Définition

Le **déterminant** est une application $\det : M_n(K) \to K$ unique vérifiant trois propriétés fondamentales :

1.  **Linéarité** par rapport à chaque colonne (multilinéarité).
2.  **Alternance** : Si deux colonnes sont égales, le déterminant est nul.
3.  **Normalisation** : Le déterminant de la matrice identité vaut 1 ($\det(I_n) = 1$).

Pour une matrice $2 \times 2$, $\det \begin{pmatrix} a & b \\ c & d \end{pmatrix} = ad - bc$.

### Propriétés Clés

- **Multiplicativité** : $\det(AB) = \det(A)\det(B)$.
- **Inversibilité** : Une matrice $A$ est inversible si et seulement si $\det(A) \neq 0$. Dans ce cas $\det(A^{-1}) = \det(A)^{-1}$.
- **Transposition** : $\det(^tA) = \det(A)$.
- **Opérations élémentaires** : Ajouter à une colonne un multiple d'une autre ne change pas le déterminant. Échanger deux colonnes (ou lignes) multiplie le déterminant par $-1$.

### Exemples

**Exemple 1**

Matrice diagonale ou triangulaire : Le déterminant est le produit des termes diagonaux.

$$ \det \begin{pmatrix} 2 & 5 & 9 \\ 0 & 3 & 1 \\ 0 & 0 & 4 \end{pmatrix} = 2 \times 3 \times 4 = 24 $$

**Exemple 2**

Développement selon une ligne (Ex: ligne 1) :

$$ \det(A) = \sum_{j=1}^n (-1)^{1+j} a_{1j} \det(A_{1j}) $$

où $A_{1j}$ est la sous-matrice obtenue en supprimant la ligne 1 et la colonne $j$.

**Exemple 3**

Calcul par pivot de Gauss : On transforme la matrice en matrice triangulaire supérieure en utilisant des opérations sur les lignes, en suivant les changements de signe éventuels, puis on fait le produit de la diagonale.

### Contre-exemples

- $\det(A+B) \neq \det(A) + \det(B)$ en général.
- $\det(\lambda A) \neq \lambda \det(A)$. La formule correcte est $\det(\lambda A) = \lambda^n \det(A)$ pour une matrice de taille $n$.

### Concepts Liés

- Volume orienté
- Polynôme caractéristique
- Cofacteurs

## Applications

- Critère d'inversibilité de matrices.
- Calcul de volumes en géométrie.
- Changement de variables dans les intégrales multiples (Jacobien).

---

## Concept 8 : Valeurs Propres, Vecteurs Propres et Polynôme Caractéristique

### Prérequis

- Déterminant
- Endomorphismes
- Polynômes

### Définition

Soit $u$ un endomorphisme d'un espace vectoriel $V$.

1.  **Valeur propre** : Un scalaire $\lambda \in K$ est une valeur propre si l'endomorphisme $(u - \lambda \text{id}_V)$ n'est pas injectif (i.e., a un noyau non nul).
2.  **Vecteur propre** : Un vecteur non nul $v \in V$ est un vecteur propre associé à $\lambda$ si $u(v) = \lambda v$.
3.  **Polynôme caractéristique** : C'est le polynôme défini par $P_u(X) = \det(A - X I_n)$, où $A$ est la matrice de $u$. Ses racines sont exactement les valeurs propres de $u$.

### Propriétés Clés

- **Existence** : $\lambda$ est valeur propre $\iff P_u(\lambda) = 0$.
- **Espace propre** : L'ensemble $V_\lambda = \text{Ker}(u - \lambda \text{id}_V)$ est un sous-espace vectoriel appelé espace propre associé à $\lambda$.
- **Trace et Déterminant** : La somme des racines (comptées avec multiplicité) vaut la trace de la matrice. Le produit des racines vaut le déterminant (au signe près : $(-1)^n \det(A)$ est le terme constant).

### Exemples

**Exemple 1**

Soit $A = \begin{pmatrix} 2 & 0 \\ 0 & 3 \end{pmatrix}$.

$P_A(X) = \det \begin{pmatrix} 2-X & 0 \\ 0 & 3-X \end{pmatrix} = (2-X)(3-X)$.

Les valeurs propres sont $2$ et $3$. Les vecteurs propres sont les vecteurs de la base canonique.

**Exemple 2**

Soit $u$ l'endomorphisme de dérivation sur $V = \text{Vect}(e^t, t e^t)$.

Les valeurs propres se trouvent en résolvant l'équation différentielle ou en écrivant la matrice dans cette base.

**Exemple 3**

Si $v$ est vecteur propre pour $\lambda$, alors $v$ est vecteur propre de $u^k$ pour la valeur propre $\lambda^k$.

### Contre-exemples

- La matrice de rotation de $90^\circ$ dans $\mathbb{R}^2$, $\begin{pmatrix} 0 & -1 \\ 1 & 0 \end{pmatrix}$, a pour polynôme caractéristique $X^2 + 1$. Elle n'a pas de valeurs propres réelles (mais elle en a dans $\mathbb{C}$ : $\pm i$).
- Le vecteur nul $0_V$ n'est jamais considéré comme un vecteur propre (par définition), bien qu'il appartienne à tous les espaces propres.

### Concepts Liés

- Diagonalisation
- Trigonalisation

## Applications

- Résolution d'équations différentielles linéaires.
- Étude de stabilité des systèmes (signe des parties réelles des valeurs propres).
- Mécanique quantique (états propres).

---

## Concept 9 : Somme Directe et Sous-espaces Supplémentaires

### Prérequis

- Sous-espace vectoriel
- Familles libres
- Base

### Définition

1.  **Somme directe** : Des sous-espaces $E_1, \dots, E_n$ sont en somme directe (notée $E_1 \oplus \dots \oplus E_n$) si tout vecteur de leur somme se décompose de manière **unique** comme somme de vecteurs $v_i \in E_i$.

    Cela équivaut à dire que si $\sum v_i = 0$ avec $v_i \in E_i$, alors tous les $v_i = 0$.

2.  **Supplémentaires** : Deux sous-espaces $E$ et $F$ sont supplémentaires dans $V$ si $V = E \oplus F$. Cela signifie que $E \cap F = \{0\}$ et $E + F = V$.

### Propriétés Clés

- **Intersection** : Pour deux sous-espaces, la somme est directe si et seulement si leur intersection est réduite au vecteur nul.
- **Dimension** : Si la somme est directe, $\dim(E_1 \oplus \dots \oplus E_n) = \sum \dim(E_i)$.
- **Espaces propres** : Les espaces propres associés à des valeurs propres distinctes sont toujours en somme directe.

### Exemples

**Exemple 1**

Dans $\mathbb{R}^2$, deux droites distinctes passant par l'origine sont toujours supplémentaires. Si $D_1$ est l'axe $x$ et $D_2$ l'axe $y$, alors $\mathbb{R}^2 = D_1 \oplus D_2$.

**Exemple 2**

Soit $s$ une symétrie ($s^2 = \text{id}$). Alors $V = \text{Ker}(s - \text{id}) \oplus \text{Ker}(s + \text{id})$. Tout vecteur se décompose en une partie "symétrique" et une partie "antisymétrique".

**Exemple 3**

Les fonctions paires et les fonctions impaires forment deux sous-espaces supplémentaires de l'espace des fonctions de $\mathbb{R}$ dans $\mathbb{R}$. Toute fonction s'écrit de manière unique $f(x) = f_{pair}(x) + f_{impair}(x)$.

### Contre-exemples

- Dans $\mathbb{R}^2$, trois droites distinctes $D_1, D_2, D_3$ vérifient $D_i \cap D_j = \{0\}$ deux à deux, mais leur somme n'est pas directe (car $D_1 + D_2 = \mathbb{R}^2$ contient déjà $D_3$).
- L'union de sous-espaces n'est pas un sous-espace, c'est leur somme qu'il faut considérer.

### Concepts Liés

- Projection (la projection sur $E$ parallèlement à $F$).

## Applications

- Décomposition de signaux.
- Simplification de l'analyse d'un endomorphisme en le restreignant à des sous-espaces stables.

---

## Concept 10 : Diagonalisation

### Prérequis

- Valeurs propres / Vecteurs propres
- Somme directe
- Dimension

### Définition

Un endomorphisme $u$ (ou une matrice $A$) est **diagonalisable** s'il existe une base de $V$ constituée uniquement de vecteurs propres de $u$.

Dans cette base, la matrice de $u$ est diagonale, avec les valeurs propres sur la diagonale.

### Propriétés Clés

- **Critère de la somme** : $u$ est diagonalisable $\iff V = \bigoplus_{\lambda \in \text{Spec}(u)} V_\lambda$.
- **Critère des dimensions** : $u$ est diagonalisable si et seulement si la somme des dimensions des espaces propres est égale à la dimension de l'espace entier $V$.
- **Multiplicités** : Pour chaque valeur propre $\lambda$, sa multiplicité géométrique ($\dim V_\lambda$) doit être égale à sa multiplicité algébrique (ordre de la racine dans le polynôme caractéristique).
- **Condition suffisante** : Si $u$ possède $n = \dim(V)$ valeurs propres distinctes, alors $u$ est diagonalisable.

### Exemples

**Exemple 1**

La matrice $A = \begin{pmatrix} 1 & 0 \\ 0 & 2 \end{pmatrix}$ est déjà diagonale. Elle est diagonalisable.

**Exemple 2**

La matrice $A = \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix}$ a pour valeurs propres $1$ et $-1$. Comme elles sont distinctes et que la dimension est 2, $A$ est diagonalisable. Elle est semblable à $\begin{pmatrix} 1 & 0 \\ 0 & -1 \end{pmatrix}$.

**Exemple 3**

Une symétrie $s$ ($s^2 = \text{id}$) est diagonalisable (si la caractéristique du corps n'est pas 2), avec des valeurs propres $1$ et $-1$.

### Contre-exemples

- La matrice $A = \begin{pmatrix} 1 & 1 \\ 0 & 1 \end{pmatrix}$ n'est pas diagonalisable. Sa seule valeur propre est $1$ (multiplicité algébrique 2). L'espace propre associé est engendré par $\begin{pmatrix} 1 \\ 0 \end{pmatrix}$ (dimension 1). Comme $1 < 2$, elle n'est pas diagonalisable.
- Une rotation de plan d'angle $\theta \neq k\pi$ n'est pas diagonalisable sur $\mathbb{R}$.

### Concepts Liés

- Trigonalisation (forme triangulaire).
- Puissance de matrices ($A^k = P D^k P^{-1}$).

## Applications

- Calcul rapide de $A^n$ pour $n$ grand.
- Résolution de systèmes d'équations différentielles couplées.
- Algorithmes de classement (ex: PageRank de Google utilise des concepts liés aux vecteurs propres).
