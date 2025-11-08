---
id: de4e944a
type: concepts
order: 10
title: Structures algébriques - concepts (A)
tags:
  - structures algébriques
  - ensembles
  - applications
  - groupes
  - anneaux
  - corps
  - relations d'équivalence
  - quotients
course: Algèbre
courseId: 3b74b601
chapter: 'Structures algébriques'
chapterId: 436c223a
level: regular
createdAt: '2025-10-12T15:59:21.285Z'
---
# Structures algébriques (A)

---

## Concept 1: Application (ou Fonction)

### Prérequis

- Connaissance de base des ensembles, y compris la notion de sous-ensemble.
- Compréhension du produit cartésien de deux ensembles, noté $X \times Y$.

### Définition

Soient $X$ et $Y$ deux ensembles. Une **application** (ou **fonction**) $f$ de $X$ dans $Y$, notée $f: X \to Y$, est une règle qui associe à **chaque** élément $x$ de l'ensemble de départ $X$ un **unique** élément $y$ de l'ensemble d'arrivée $Y$. Cet unique élément $y$ est noté $f(x)$ et est appelé l'image de $x$ par $f$.

Formellement, une application $f$ est définie par son **graphe**, qui est un sous-ensemble $\Gamma_f \subset X \times Y$ tel que pour tout $x \in X$, il existe un et un seul $y \in Y$ pour lequel le couple $(x, y)$ appartient à $\Gamma_f$. On a donc :

$$ \Gamma_f = \{ (x, f(x)) \mid x \in X \} $$

On distingue quelques applications particulières :

1.  **Application Identité** : Pour tout ensemble $X$, l'application identité $\text{id}_X : X \to X$ est définie par $\text{id}_X(x) = x$ pour tout $x \in X$.
2.  **Composition d'applications** : Si $f : X \to Y$ et $g : Y \to Z$ sont deux applications, leur composition est une nouvelle application notée $g \circ f : X \to Z$, définie pour tout $x \in X$ par $(g \circ f)(x) = g(f(x))$. On applique d'abord $f$, puis $g$ au résultat.

### Propriétés Clés

- **Associativité de la composition** : La composition des applications est associative. Si on a trois applications $f : X \to Y$, $g : Y \to Z$ et $h : Z \to T$, alors on a l'égalité :

  $$ h \circ (g \circ f) = (h \circ g) \circ f $$

  Cela signifie que l'ordre dans lequel on effectue les compositions n'a pas d'importance.

- **Élément neutre pour la composition** : L'application identité agit comme un élément neutre pour la composition. Pour toute application $f : X \to Y$, on a :

  $$ f \circ \text{id}_X = f \quad \text{et} \quad \text{id}_Y \circ f = f $$

### Exemples

**Exemple 1 : Une fonction polynomiale**

Soit l'application $f: \mathbb{R} \to \mathbb{R}$ définie par $f(x) = x^2$.

- L'ensemble de départ est $\mathbb{R}$.
- L'ensemble d'arrivée est $\mathbb{R}$.
- Pour chaque réel $x$, on lui associe son carré $x^2$. Par exemple, $f(2) = 4$, $f(-3) = 9$, $f(0) = 0$.
- Le graphe de cette fonction est la parabole $\Gamma_f = \{ (x, x^2) \mid x \in \mathbb{R} \}$. Pour chaque $x \in \mathbb{R}$, il y a bien un unique $y = x^2$ tel que $(x,y) \in \Gamma_f$.

**Exemple 2 : L'application successeur sur les entiers**

Soit l'application $S: \mathbb{N} \to \mathbb{N}$ définie par $S(n) = n + 1$.

- Cette application associe à chaque entier naturel son successeur.
- $S(0) = 1$, $S(1) = 2$, $S(100) = 101$.
- C'est une application car chaque entier a un unique successeur.

**Exemple 3 : Composition de fonctions**

Considérons les applications $f: \mathbb{R} \to \mathbb{R}$ définie par $f(x) = x+3$ et $g: \mathbb{R} \to \mathbb{R}$ définie par $g(y) = 2y$.

- La composition $g \circ f : \mathbb{R} \to \mathbb{R}$ est calculée comme suit :

  Pour tout $x \in \mathbb{R}$, $(g \circ f)(x) = g(f(x)) = g(x+3) = 2(x+3) = 2x+6$.

- La composition $f \circ g : \mathbb{R} \to \mathbb{R}$ est calculée comme suit :

  Pour tout $y \in \mathbb{R}$, $(f \circ g)(y) = f(g(y)) = f(2y) = (2y)+3 = 2y+3$.

- On remarque que $g \circ f \neq f \circ g$, ce qui montre que la composition des applications n'est en général pas commutative.

### Contre-exemples

**Contre-exemple 1 : Une relation qui n'est pas une application**

Considérons les ensembles $X = \{1, 2\}$ et $Y = \{a, b, c\}$. Le sous-ensemble de $X \times Y$ donné par $R = \{(1, a), (1, b), (2, c)\}$ n'est pas le graphe d'une application, car l'élément $1 \in X$ est associé à deux éléments distincts de $Y$ (à la fois $a$ et $b$).

**Contre-exemple 2 : Une règle qui n'est pas définie partout**

Considérons la "règle" $f$ de $\mathbb{R}$ dans $\mathbb{R}$ qui associe à $x$ la valeur $1/x$. Ce n'est pas une application de $\mathbb{R}$ dans $\mathbb{R}$ car l'élément $0 \in \mathbb{R}$ n'a pas d'image. Pour que ce soit une application, il faudrait changer l'ensemble de départ, par exemple $f: \mathbb{R}^* \to \mathbb{R}$.

### Concepts Connexes

- **Injectivité, Surjectivité, Bijectivité**: Propriétés importantes des applications qui décrivent comment les éléments des ensembles de départ et d'arrivée sont mis en relation.
- **Morphismes**: Dans un contexte plus structuré (groupes, anneaux, etc.), les applications qui préservent la structure sont appelées morphismes. Une application est un "morphisme d'ensembles".

### Applications

Les applications sont l'un des concepts les plus fondamentaux en mathématiques. Elles permettent de modéliser des relations de dépendance entre différentes quantités dans tous les domaines des sciences (physique, informatique, économie, etc.). Par exemple, la position d'un objet en fonction du temps est une application du temps vers l'espace.

---

## Concept 2: Injectivité, Surjectivité, Bijectivité

### Prérequis

- **Concept 1: Application (ou Fonction)**
- Notions d'image $f(P)$ et d'image inverse $f^{-1}(Q)$ d'une partie.

### Définition

Soit $f : X \to Y$ une application entre deux ensembles.

1.  **Injectivité**: On dit que $f$ est **injective** si deux éléments distincts de l'ensemble de départ ont toujours des images distinctes.

    Mathématiquement, pour tous $x_1, x_2 \in X$ :

    $$ f(x_1) = f(x_2) \implies x_1 = x_2 $$

    Une autre façon de le dire est que pour tout $y \in Y$, l'équation $f(x)=y$ a au plus une solution $x \in X$. L'ensemble des antécédents de $y$, $f^{-1}(\{y\})$, contient donc au plus un élément.

2.  **Surjectivité**: On dit que $f$ est **surjective** si tout élément de l'ensemble d'arrivée est l'image d'au moins un élément de l'ensemble de départ.

    Mathématiquement, pour tout $y \in Y$, il existe au moins un $x \in X$ tel que :

    $$ f(x) = y $$

    Cela revient à dire que l'image de l'application est égale à l'ensemble d'arrivée : $f(X) = Y$.

3.  **Bijectivité**: On dit que $f$ est **bijective** si elle est à la fois injective et surjective.

    Mathématiquement, pour tout $y \in Y$, il existe un **unique** $x \in X$ tel que :

    $$ f(x) = y $$

    Une application bijective établit une correspondance parfaite "un pour un" entre les éléments de $X$ et de $Y$.

### Propriétés Clés

- **Inverse d'une bijection**: Une application $f: X \to Y$ est bijective si et seulement si elle admet une **application inverse** (ou réciproque) $f^{-1}: Y \to X$. C'est une application qui "défait" ce que $f$ a fait, telle que :

  $$ f^{-1} \circ f = \text{id}_X \quad \text{et} \quad f \circ f^{-1} = \text{id}_Y $$

- **Inverses à gauche/droite**:
  - $f$ est injective si et seulement si elle admet un **inverse à gauche**, c'est-à-dire une application $p: Y \to X$ telle que $p \circ f = \text{id}_X$.
  - $f$ est surjective si et seulement si elle admet un **inverse à droite**, c'est-à-dire une application $s: Y \to X$ telle que $f \circ s = \text{id}_Y$.
- **Composition**:
  - La composition de deux injections est une injection.
  - La composition de deux surjections est une surjection.
  - La composition de deux bijections est une bijection.

### Exemples

**Exemple 1 : Injective mais pas surjective**

Soit l'application $f: \mathbb{N} \to \mathbb{N}$ définie par $f(n) = 2n$.

- **Injectivité** : Soient $n_1, n_2 \in \mathbb{N}$ tels que $f(n_1) = f(n_2)$. Alors $2n_1 = 2n_2$, ce qui implique $n_1 = n_2$. Donc $f$ est injective.
- **Surjectivité** : L'image de $f$ est l'ensemble des entiers naturels pairs. Un entier impair comme $3$ n'a pas d'antécédent par $f$ (il n'existe aucun $n \in \mathbb{N}$ tel que $2n=3$). Donc $f$ n'est pas surjective.

**Exemple 2 : Surjective mais pas injective**

Soit l'application $f: \mathbb{Z} \to \mathbb{N}$ définie par $f(z) = |z|$.

- **Surjectivité** : Soit $y \in \mathbb{N}$. On peut choisir $x=y \in \mathbb{Z}$. Alors $f(x) = f(y) = |y| = y$ (car $y \ge 0$). Donc tout élément de $\mathbb{N}$ a au moins un antécédent. L'application est surjective.
- **Injectivité** : On a $f(2) = |2| = 2$ et $f(-2) = |-2| = 2$. Deux éléments distincts, $2$ et $-2$, ont la même image. Donc $f$ n'est pas injective.

**Exemple 3 : Bijective**

Soit l'application $f: \mathbb{R} \to \mathbb{R}$ définie par $f(x) = 2x - 3$.

- **Injectivité** : Soient $x_1, x_2 \in \mathbb{R}$ tels que $f(x_1) = f(x_2)$. Alors $2x_1-3 = 2x_2-3$, ce qui donne $2x_1 = 2x_2$ et donc $x_1 = x_2$. L'application est injective.
- **Surjectivité** : Soit $y \in \mathbb{R}$. On cherche un $x \in \mathbb{R}$ tel que $f(x)=y$. L'équation est $2x-3=y$. La solution est $x = (y+3)/2$. Cet $x$ existe pour n'importe quel $y \in \mathbb{R}$. L'application est surjective.
- Puisque $f$ est injective et surjective, elle est bijective. Son application inverse est $f^{-1}: \mathbb{R} \to \mathbb{R}$ donnée par la formule qu'on a trouvée : $f^{-1}(y) = (y+3)/2$.

### Contre-exemples

**Contre-exemple 1 : Ni injective, ni surjective**

Soit l'application $f: \mathbb{R} \to \mathbb{R}$ définie par $f(x) = \sin(x)$.

- **Non-injective** : $f(0) = \sin(0) = 0$ et $f(\pi) = \sin(\pi) = 0$. Donc $0 \neq \pi$ mais $f(0)=f(\pi)$.
- **Non-surjective** : L'image de $f$ est l'intervalle $[-1, 1]$. Un nombre réel comme $2$ n'a pas d'antécédent, car il n'existe aucun $x \in \mathbb{R}$ tel que $\sin(x) = 2$.

**Contre-exemple 2 : Un cas sur les ensembles finis**

Soit $X = \{1, 2, 3\}$ et $Y = \{a, b\}$. L'application $f: X \to Y$ définie par $f(1)=a, f(2)=b, f(3)=a$.

- **Non-injective** : $f(1) = f(3) = a$.
- **Surjective** : L'image de $f$ est $\{a, b\} = Y$.

Si on avait pris une application de $Y$ dans $X$, elle n'aurait pas pu être surjective. En général, pour des ensembles finis, s'il existe une injection de $X$ dans $Y$, alors $|X| \le |Y|$. S'il existe une surjection de $X$ dans $Y$, alors $|X| \ge |Y|$.

### Concepts Connexes

- **Isomorphisme**: Dans les structures algébriques, un isomorphisme est un morphisme bijectif. Les bijections sont les "isomorphismes" dans la catégorie des ensembles.
- **Cardinalité**: Deux ensembles sont dits avoir le même cardinal (la même "taille") s'il existe une bijection entre eux.

### Applications

La bijectivité est cruciale pour définir la notion de "taille" pour les ensembles infinis. Elle est aussi fondamentale en cryptographie (les fonctions de chiffrement doivent être bijectives pour pouvoir déchiffrer les messages) et en algèbre linéaire (un endomorphisme est un isomorphisme si et seulement si sa matrice est inversible, ce qui est lié à une application bijective).

---

## Concept 3: Opération Binaire (ou Loi de Composition Interne)

### Prérequis

- **Concept 1: Application (ou Fonction)**
- Ensembles et produit cartésien.

### Définition

Une **opération binaire** (ou **loi de composition interne**) sur un ensemble non vide $X$ est une application $*: X \times X \to X$.

Autrement dit, une opération binaire prend deux éléments de l'ensemble $X$ et leur associe un unique élément qui est aussi dans $X$. Pour $(x, y) \in X \times X$, on note souvent l'image $*(x,y)$ par $x*y$.

Une opération binaire $*$ sur $X$ peut avoir plusieurs propriétés :

1.  **Associativité** : L'opération est **associative** si pour tous $x, y, z \in X$, on a :

    $$ (x * y) * z = x * (y * z) $$

    L'ordre de calcul ne change pas le résultat, on peut donc omettre les parenthèses et écrire $x*y*z$.

2.  **Élément neutre** : Un élément $e \in X$ est un **élément neutre** pour $*$ si pour tout $x \in X$ :

    $$ e * x = x * e = x $$

3.  **Commutativité** : L'opération est **commutative** si pour tous $x, y \in X$ :

    $$ x * y = y * x $$

    L'ordre des opérandes ne change pas le résultat.

4.  **Élément inversible** : Si $*$ admet un élément neutre $e$, on dit qu'un élément $x \in X$ est **inversible** s'il existe un élément $y \in X$ tel que :

    $$ x * y = y * x = e $$

    Cet élément $y$ est appelé l'**inverse** de $x$.

### Propriétés Clés

- **Unicité de l'élément neutre** : S'il existe un élément neutre pour une opération binaire, il est unique.
- **Unicité de l'inverse** : Si une opération binaire est associative et possède un élément neutre, alors chaque élément inversible a un inverse unique.
- **Stabilité d'une partie** : Une partie (ou sous-ensemble) $Y \subset X$ est dite **stable** pour l'opération $*$ si pour tous $x, y \in Y$, le résultat $x*y$ est encore dans $Y$. L'opération $*$ peut alors être restreinte à $Y$.

### Exemples

**Exemple 1 : L'addition sur les entiers relatifs $\mathbb{Z}$**

L'addition, $+: \mathbb{Z} \times \mathbb{Z} \to \mathbb{Z}$, est une opération binaire.

- **Associative** : $(a+b)+c = a+(b+c)$ pour tous $a,b,c \in \mathbb{Z}$.
- **Élément neutre** : L'entier $0$ est l'élément neutre car $0+a = a+0 = a$.
- **Commutative** : $a+b = b+a$.
- **Inversibilité** : Tout élément $a \in \mathbb{Z}$ a un inverse, appelé son opposé, $-a$, car $a+(-a) = (-a)+a = 0$.

**Exemple 2 : La multiplication sur les nombres réels $\mathbb{R}$**

La multiplication, $\cdot: \mathbb{R} \times \mathbb{R} \to \mathbb{R}$, est une opération binaire.

- **Associative** : $(a \cdot b) \cdot c = a \cdot (b \cdot c)$.
- **Élément neutre** : Le nombre $1$ est l'élément neutre car $1 \cdot a = a \cdot 1 = a$.
- **Commutative** : $a \cdot b = b \cdot a$.
- **Inversibilité** : Tout élément $a \in \mathbb{R}$ *sauf $0$* a un inverse, $a^{-1}$ ou $1/a$, car $a \cdot a^{-1} = a^{-1} \cdot a = 1$. L'élément $0$ n'est pas inversible.

**Exemple 3 : La composition des fonctions sur un ensemble**

Soit $X$ un ensemble et $E = \text{Hom}_{\text{Ens}}(X,X)$ l'ensemble des applications de $X$ dans $X$. La composition $\circ: E \times E \to E$ est une opération binaire.

- **Associative** : On sait que $h \circ (g \circ f) = (h \circ g) \circ f$.
- **Élément neutre** : L'application identité $\text{id}_X$ est l'élément neutre car $f \circ \text{id}_X = \text{id}_X \circ f = f$.
- **Commutativité** : En général, non. On a vu que $f \circ g \neq g \circ f$ la plupart du temps.
- **Inversibilité** : Un élément $f \in E$ est inversible si et seulement si $f$ est une bijection.

### Contre-exemples

**Contre-exemple 1 : Une opération non interne**

L'addition sur l'ensemble des entiers impairs $I = \{\dots, -3, -1, 1, 3, \dots\}$. Si on prend $1 \in I$ et $3 \in I$, leur somme $1+3=4$ n'est pas dans $I$. Ce n'est donc pas une loi de composition interne sur $I$.

**Contre-exemple 2 : La soustraction sur $\mathbb{Z}$**

La soustraction, $-: \mathbb{Z} \times \mathbb{Z} \to \mathbb{Z}$, est bien une opération binaire.

- **Non associative** : $(8 - 4) - 2 = 4 - 2 = 2$, mais $8 - (4 - 2) = 8 - 2 = 6$.
- **Non commutative** : $5 - 3 = 2$, mais $3 - 5 = -2$.
- **Pas d'élément neutre** : Il n'y a pas d'élément $e$ tel que $x-e=x$ et $e-x=x$ pour tout $x$. La première équation donne $e=0$, mais $0-x = -x \neq x$ (sauf pour $x=0$).

### Concepts Connexes

- **Structures algébriques**: Les opérations binaires sont les briques de base pour définir les structures algébriques comme les monoïdes, les groupes, les anneaux et les corps.
- **Table d'opération (ou table de Cayley)**: Pour un ensemble fini, une opération binaire peut être entièrement décrite par un tableau.

### Applications

Les opérations binaires sont omniprésentes en mathématiques et en informatique. Elles modélisent l'addition, la multiplication, les opérations logiques (ET, OU), la concaténation de chaînes de caractères, la composition de transformations géométriques, etc.

---

## Concept 4: Groupe

### Prérequis

- **Concept 3: Opération Binaire (ou Loi de Composition Interne)**
- Notions d'associativité, d'élément neutre et d'inverse.
- **Monoïde** (un groupe est un cas particulier de monoïde).

### Définition

Un **groupe** est un couple $(G, *)$ où $G$ est un ensemble non vide et $*$ est une opération binaire sur $G$, satisfaisant les trois axiomes suivants :

1.  **Associativité** : Pour tous $a, b, c \in G$, on a $(a * b) * c = a * (b * c)$.
2.  **Élément neutre** : Il existe un élément $e \in G$ (appelé élément neutre) tel que pour tout $a \in G$, on a $a * e = e * a = a$.
3.  **Inverse** : Pour chaque élément $a \in G$, il existe un élément $a^{-1} \in G$ (appelé l'inverse de $a$) tel que $a * a^{-1} = a^{-1} * a = e$.

Si, de plus, l'opération $*$ est commutative (c'est-à-dire $a * b = b * a$ pour tous $a, b \in G$), on dit que le groupe est **abélien** (ou commutatif).

En bref, un groupe est un monoïde où tout élément est inversible.

### Propriétés Clés

- **Unicité** : L'élément neutre d'un groupe est unique. L'inverse de chaque élément est également unique.
- **Règles de simplification** : Dans un groupe, on peut "simplifier" des deux côtés. Si $a, b, c \in G$:
  - Si $a * b = a * c$, alors $b = c$ (simplification à gauche).
  - Si $b * a = c * a$, alors $b = c$ (simplification à droite).
- **Propriétés de l'inverse** :
  - $(a^{-1})^{-1} = a$.
  - $(a * b)^{-1} = b^{-1} * a^{-1}$ (attention à l'inversion de l'ordre !).
  - $e^{-1} = e$.

### Exemples

**Exemple 1 : Le groupe additif des entiers $(\mathbb{Z}, +)$**

C'est un exemple fondamental de groupe abélien.

- L'addition est bien une opération binaire sur $\mathbb{Z}$.
- **Associativité** : $(a+b)+c = a+(b+c)$.
- **Élément neutre** : C'est $0$, car $a+0 = a$.
- **Inverse** : L'inverse de $a$ est son opposé $-a$, car $a+(-a)=0$.
- **Commutativité** : $a+b=b+a$, donc le groupe est abélien.

**Exemple 2 : Le groupe multiplicatif des réels non nuls $(\mathbb{R}^*, \cdot)$**

Soit $\mathbb{R}^* = \mathbb{R} \setminus \{0\}$.

- La multiplication est une opération binaire sur $\mathbb{R}^*$ (le produit de deux nombres non nuls est non nul).
- **Associativité** : $(a \cdot b) \cdot c = a \cdot (b \cdot c)$.
- **Élément neutre** : C'est $1$, car $a \cdot 1 = a$.
- **Inverse** : L'inverse de $a \in \mathbb{R}^*$ est $1/a$, car $a \cdot (1/a) = 1$.
- **Commutativité** : $a \cdot b = b \cdot a$, donc le groupe est abélien.

**Exemple 3 : Le groupe symétrique $S_3$ (groupe non abélien)**

Soit l'ensemble $X=\{1, 2, 3\}$. Le groupe symétrique $S_3$ est l'ensemble des bijections de $X$ dans $X$, muni de la composition $\circ$. Ces bijections sont aussi appelées permutations. Il y en a $3! = 6$.

- **Associativité** : La composition des fonctions est toujours associative.
- **Élément neutre** : C'est l'application identité $\text{id}$, qui laisse chaque élément inchangé.
- **Inverse** : Chaque bijection a une application inverse qui est aussi une bijection.
- **Non-commutativité** : Considérons deux permutations :
  - $\sigma$ qui échange 1 et 2: $\sigma(1)=2, \sigma(2)=1, \sigma(3)=3$.
  - $\tau$ qui échange 2 et 3: $\tau(1)=1, \tau(2)=3, \tau(3)=2$.

  Calculons $\sigma \circ \tau$: $(\sigma \circ \tau)(1) = \sigma(\tau(1)) = \sigma(1) = 2$.

  Calculons $\tau \circ \sigma$: $(\tau \circ \sigma)(1) = \tau(\sigma(1)) = \tau(2) = 3$.

  Puisque $(\sigma \circ \tau)(1) \neq (\tau \circ \sigma)(1)$, on a $\sigma \circ \tau \neq \tau \circ \sigma$. Le groupe $S_3$ n'est pas abélien.

### Contre-exemples

**Contre-exemple 1 : Le monoïde $(\mathbb{N}, +)$**

L'ensemble des entiers naturels muni de l'addition.

- L'addition est associative et $0$ est l'élément neutre.
- Cependant, les éléments non nuls n'ont pas d'inverse dans $\mathbb{N}$. Par exemple, il n'y a pas d'entier naturel $n$ tel que $1+n=0$. Ce n'est donc pas un groupe.

**Contre-exemple 2 : Le monoïde $(\mathbb{Z}, \cdot)$**

L'ensemble des entiers relatifs muni de la multiplication.

- La multiplication est associative et $1$ est l'élément neutre.
- Cependant, la plupart des éléments n'ont pas d'inverse *dans $\mathbb{Z}$*. Par exemple, pour $2$, il n'y a pas d'entier $n$ tel que $2 \cdot n = 1$. Les seuls éléments inversibles sont $1$ et $-1$. Ce n'est donc pas un groupe.

### Concepts Connexes

- **Sous-groupe**: Un sous-ensemble d'un groupe qui est lui-même un groupe pour la même opération.
- **Groupe quotient**: Une construction qui permet de créer un nouveau groupe à partir d'un groupe et d'un de ses sous-groupes (dits distingués).
- **Morphisme de groupes**: Une application entre deux groupes qui préserve l'opération.
- **Anneau, Corps, Espace vectoriel**: Structures algébriques plus complexes construites sur la base des groupes.

### Applications

La théorie des groupes est un domaine central de l'algèbre abstraite. Elle a des applications profondes en physique (symétries en physique des particules, cristallographie), en chimie (étude des molécules), en informatique (cryptographie, algorithmique) et pour la résolution d'équations polynomiales (théorie de Galois).

---

## Concept 5: Anneau

### Prérequis

- **Concept 6: Groupe** (en particulier, la notion de groupe abélien)
- **Concept 3: Opération Binaire (ou Loi de Composition Interne)**
- Notion de distributivité.

### Définition

Un **anneau** est un triplet $(A, +, \times)$ où $A$ est un ensemble non vide et $+$ (addition) et $\times$ (multiplication) sont deux opérations binaires sur $A$ vérifiant les axiomes suivants :

1.  **$(A, +)$ est un groupe abélien** :
    - L'addition est associative : $(a+b)+c = a+(b+c)$.
    - L'addition est commutative : $a+b = b+a$.
    - Il existe un élément neutre pour l'addition, noté $0$, tel que $a+0=a$.
    - Chaque élément $a$ a un inverse pour l'addition, noté $-a$, tel que $a+(-a)=0$.

2.  **$(A, \times)$ est un monoïde** :
    - La multiplication est associative : $(a \times b) \times c = a \times (b \times c)$.
    - Il existe un élément neutre pour la multiplication, noté $1$, tel que $a \times 1 = 1 \times a = a$.

3.  **La multiplication est distributive par rapport à l'addition** :
    - Pour tous $a, b, c \in A$ :

      $$ a \times (b+c) = (a \times b) + (a \times c) \quad \text{(distributivité à gauche)} $$

      $$ (b+c) \times a = (b \times a) + (c \times a) \quad \text{(distributivité à droite)} $$

**Terminologie supplémentaire** :

- Un anneau est dit **commutatif** si sa multiplication est commutative ($a \times b = b \times a$).
- Un anneau est dit **intègre** s'il est commutatif, non nul ($1 \neq 0$), et n'a pas de "diviseurs de zéro". C'est-à-dire, pour tous $a, b \in A$ :

  $$ a \times b = 0 \implies a=0 \text{ ou } b=0 $$

### Propriétés Clés

- **Absorption par zéro** : Pour tout $a$ dans un anneau $A$, $a \times 0 = 0 \times a = 0$.
- **Règle des signes** : Pour tous $a, b \in A$ :
  - $(-a) \times b = a \times (-b) = -(a \times b)$.
  - $(-a) \times (-b) = a \times b$.
- L'élément unité $1$ est unique, de même que l'élément nul $0$.

### Exemples

**Exemple 1 : L'anneau des entiers relatifs $(\mathbb{Z}, +, \times)$**

C'est l'exemple prototypique d'un anneau commutatif intègre.

- $(\mathbb{Z}, +)$ est un groupe abélien (voir Concept 6).
- $(\mathbb{Z}, \times)$ est un monoïde commutatif (associatif, neutre $1$).
- La distributivité est une propriété bien connue de l'arithmétique sur les entiers.
- C'est un anneau intègre car si $a \times b = 0$ avec $a,b \in \mathbb{Z}$, alors forcément $a=0$ ou $b=0$.

**Exemple 2 : L'anneau des matrices carrées $(M_n(\mathbb{R}), +, \times)$**

Pour $n \ge 2$, c'est un exemple d'anneau non commutatif.

- L'ensemble des matrices de taille $n \times n$ à coefficients réels, muni de l'addition matricielle, forme un groupe abélien. Le neutre est la matrice nulle.
- Muni de la multiplication matricielle, c'est un monoïde. Le neutre est la matrice identité $I_n$.
- La multiplication est distributive par rapport à l'addition.
- La multiplication n'est pas commutative en général. De plus, cet anneau n'est pas intègre. Par exemple, pour $n=2$ :

  $$ \begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix} \times \begin{pmatrix} 0 & 0 \\ 0 & 1 \end{pmatrix} = \begin{pmatrix} 0 & 0 \\ 0 & 0 \end{pmatrix} $$

  Le produit de deux matrices non nulles peut être nul.

**Exemple 3 : L'anneau $\mathbb{Z}/6\mathbb{Z}$**

C'est l'anneau des entiers modulo 6. Ses éléments sont les classes d'équivalence $\{ \bar{0}, \bar{1}, \bar{2}, \bar{3}, \bar{4}, \bar{5} \}$.

- C'est un anneau commutatif.
- Il n'est pas intègre, car il possède des diviseurs de zéro : $\bar{2} \times \bar{3} = \overline{2 \times 3} = \bar{6} = \bar{0}$, alors que $\bar{2} \neq \bar{0}$ et $\bar{3} \neq \bar{0}$.

### Contre-exemples

**Contre-exemple 1 : $(\mathbb{N}, +, \times)$**

L'ensemble des entiers naturels avec l'addition et la multiplication.

- Toutes les propriétés sont vérifiées, sauf une : $(\mathbb{N}, +)$ n'est pas un groupe car les éléments (sauf 0) n'ont pas d'inverse additif (opposé) dans $\mathbb{N}$. Ce n'est donc pas un anneau. On parle de semi-anneau.

**Contre-exemple 2 : $(\mathcal{P}(X), \cup, \cap)$**

L'ensemble des parties d'un ensemble $X$, avec l'union et l'intersection.

- L'intersection est distributive sur l'union.
- $(\mathcal{P}(X), \cap)$ est un monoïde (neutre : $X$).
- Mais $(\mathcal{P}(X), \cup)$ n'est pas un groupe (neutre : $\emptyset$, mais pas d'inverses). Donc ce n'est pas un anneau.
- Note : $(\mathcal{P}(X), \Delta, \cap)$ où $\Delta$ est la différence symétrique, *est* un anneau commutatif.

### Concepts Connexes

- **Corps**: Un anneau commutatif où tout élément non nul a un inverse multiplicatif.
- **Idéal**: Un sous-ensemble spécial d'un anneau, qui joue un rôle similaire à celui des sous-groupes distingués pour les groupes, et permet de construire des anneaux quotients.
- **Morphisme d'anneaux**: Une application entre deux anneaux qui respecte les deux opérations et les éléments neutres.

### Applications

Les anneaux sont fondamentaux en algèbre et en théorie des nombres. L'anneau des polynômes $A[X]$ est utilisé pour étudier les racines des équations. Les anneaux d'entiers modulaires (comme $\mathbb{Z}/n\mathbb{Z}$) sont cruciaux en cryptographie (ex: RSA) et en théorie des codes. Les anneaux de matrices sont essentiels en algèbre linéaire et en physique quantique.

## Concept 6: Monoïde

### Prérequis

-   [Concept: Ensemble](link_to_concept_ensemble)
-   [Concept: Opération Binaire](link_to_concept_operation_binaire)

### Définition

Un **monoïde** est un triplet $(M, *, e)$ constitué d'un ensemble $M$, d'une opération binaire interne $*: M \times M \to M$ et d'un élément $e \in M$ qui satisfont les deux conditions suivantes :

1.  **Associativité** : L'opération $*$ est associative. C'est-à-dire que pour tous les éléments $x, y, z \in M$, on a l'égalité :

    $$ (x * y) * z = x * (y * z) $$

2.  **Élément neutre** : L'élément $e$ est un élément neutre pour l'opération $*$. C'est-à-dire que pour tout élément $x \in M$, on a :

    $$ e * x = x * e = x $$

Un monoïde est dit **commutatif** ou **abélien** si son opération binaire est commutative.

### Propriétés Clés

-   **Unicité de l'élément neutre** : S'il existe un élément neutre dans un ensemble muni d'une opération binaire, alors cet élément est unique (Proposition 1.11).
-   Un monoïde est une structure plus générale qu'un groupe. C'est un groupe si, en plus, chaque élément admet un inverse.
-   Toute partie d'un monoïde stable pour l'opération et contenant l'élément neutre est elle-même un monoïde.

### Exemples

**Exemple 1 : Les entiers naturels**

L'ensemble des entiers naturels $\mathbb{N}$ muni de l'addition et de l'élément 0, noté $(\mathbb{N}, +, 0)$, est un monoïde commutatif.

-   **Associativité** : Pour tous $n, m, p \in \mathbb{N}$, $(n+m)+p = n+(m+p)$.
-   **Élément neutre** : Pour tout $n \in \mathbb{N}$, $0+n = n+0 = n$.

De même, $(\mathbb{N}, \cdot, 1)$ est un monoïde commutatif, où $\cdot$ est la multiplication usuelle et 1 est l'élément neutre.

**Exemple 2 : Les applications d'un ensemble dans lui-même**

Soit $X$ un ensemble. L'ensemble des applications de $X$ dans $X$, noté $\text{End}_{\text{Ens}}(X)$ ou $X^X$, muni de la composition d'applications $(\circ)$ et de l'application identité $(\text{id}_X)$, forme un monoïde.

-   **Ensemble** : $M = \text{End}_{\text{Ens}}(X) = \{f: X \to X\}$.
-   **Opération** : La composition $g \circ f$ définie par $(g \circ f)(x) = g(f(x))$. Elle est associative (Proposition 1.2).
-   **Élément neutre** : L'application identité $\text{id}_X$, définie par $\text{id}_X(x) = x$, qui vérifie $f \circ \text{id}_X = \text{id}_X \circ f = f$ pour toute application $f$.

Ce monoïde n'est généralement pas commutatif.

**Exemple 3 : Le monoïde des mots**

Soit $A$ un alphabet (un ensemble fini de "lettres"). On peut former des "mots" en juxtaposant ces lettres. L'ensemble $M(A)$ de tous les mots finis sur $A$, y compris le mot vide, forme un monoïde avec l'opération de concaténation.

-   **Ensemble** : $M(A)$, par exemple si $A=\{a,b\}$, des éléments sont `""` (mot vide), `a`, `b`, `ab`, `ba`, `aab`, etc.
-   **Opération** : La concaténation. Par exemple, `ab` concaténé avec `aab` donne `abaab`. Cette opération est associative.
-   **Élément neutre** : Le mot vide `""`. Concaténer le mot vide à n'importe quel mot ne le change pas.

Ce monoïde n'est pas commutatif si $A$ a au moins deux lettres (par exemple, `ab` $\neq$ `ba`).

### Contre-exemples

**Contre-exemple 1 : Les entiers relatifs avec la soustraction**

L'ensemble $\mathbb{Z}$ muni de la soustraction $(-)$ et de l'élément neutre $0$ ne forme pas un monoïde. L'élément $0$ est neutre à droite ($x - 0 = x$), mais pas à gauche ($0 - x = -x \neq x$ si $x \neq 0$). De plus, la soustraction n'est pas associative : $(5 - 3) - 2 = 2 - 2 = 0$, mais $5 - (3 - 2) = 5 - 1 = 4$.

**Contre-exemple 2 : Les entiers naturels non nuls avec l'addition**

L'ensemble $\mathbb{N}^* = \{1, 2, 3, \dots\}$ avec l'addition $(+)$ ne forme pas un monoïde. Bien que l'addition soit associative, il n'y a pas d'élément neutre dans $\mathbb{N}^*$. L'élément neutre pour l'addition est 0, mais $0 \notin \mathbb{N}^*$.

### Concepts Connexes

-   **Groupe** : Un groupe est un monoïde où chaque élément possède un inverse. Par exemple, $(\mathbb{Z}, +, 0)$ est un groupe, mais $(\mathbb{N}, +, 0)$ est seulement un monoïde.
-   **Anneau** : La définition d'un anneau $(A, +, \times, 0, 1)$ implique que $(A, \times, 1)$ est un monoïde (le monoïde multiplicatif de l'anneau).

---

## Concept 7: Corps

### Prérequis

-   [Concept: Anneau](link_to_concept_anneau)
-   [Concept: Groupe](link_to_concept_groupe)
-   [Concept: Élément inversible](link_to_concept_operation_binaire)

### Définition

Un **corps** est un quintuplet $(K, +, \times, 0, 1)$ où $K$ est un ensemble, $+$ et $\times$ sont des opérations binaires, et $0, 1$ sont des éléments de $K$, tel que :

1.  $(K, +, \times, 0, 1)$ est un anneau.
2.  L'anneau n'est pas l'anneau nul, ce qui signifie que $1 \neq 0$.
3.  Tout élément non nul de $K$ est inversible pour la multiplication. Autrement dit, l'ensemble $K^* = K - \{0\}$ muni de la multiplication $\times$ forme un groupe.

Dans le contexte de ce cours, un corps est supposé être **commutatif** pour la multiplication, c'est-à-dire que l'anneau sous-jacent est commutatif.

### Propriétés Clés

-   **Intégrité** : Tout corps est un anneau intègre. C'est-à-dire que si $a, b \in K$ avec $ab=0$, alors on doit avoir $a=0$ ou $b=0$.

    *Preuve* : Supposons $ab=0$ et $a \neq 0$. Puisque $K$ est un corps et $a \neq 0$, $a$ possède un inverse $a^{-1}$. En multipliant l'équation par $a^{-1}$ à gauche, on obtient $a^{-1}(ab) = a^{-1} \cdot 0$, ce qui donne $(a^{-1}a)b = 0$, soit $1 \cdot b = 0$, et donc $b=0$.

-   Les seuls idéaux d'un corps commutatif $K$ sont $\{0\}$ et $K$ lui-même.
-   Tout morphisme d'anneaux d'un corps vers un anneau non nul est injectif.

### Exemples

**Exemple 1 : Le corps des nombres rationnels $(\mathbb{Q})$**

L'ensemble des nombres rationnels $\mathbb{Q}$ muni de l'addition et de la multiplication usuelles est un corps commutatif. Chaque nombre rationnel non nul $p/q$ (avec $p, q \in \mathbb{Z}, p\neq 0, q \neq 0$) a pour inverse $q/p$.

**Exemple 2 : Le corps des nombres réels $(\mathbb{R})$**

L'ensemble des nombres réels $\mathbb{R}$ avec ses opérations usuelles est un corps commutatif. Tout réel non nul $x$ a pour inverse $1/x$.

**Exemple 3 : Le corps des nombres complexes $(\mathbb{C})$**

L'ensemble des nombres complexes $\mathbb{C}$ est un corps commutatif. Tout nombre complexe non nul $z = a+ib$ a pour inverse $\frac{a-ib}{a^2+b^2}$.

**Exemple 4 : Le corps fini $\mathbb{Z}/p\mathbb{Z}$**

Si $p$ est un nombre premier, l'anneau des entiers modulo $p$, noté $\mathbb{Z}/p\mathbb{Z}$, est un corps. Par exemple, dans $\mathbb{Z}/5\mathbb{Z}$, les éléments non nuls sont $\bar{1}, \bar{2}, \bar{3}, \bar{4}$. Leurs inverses sont respectivement $\bar{1}, \bar{3}, \bar{2}, \bar{4}$ car $\bar{2} \cdot \bar{3} = \bar{6} = \bar{1}$ et $\bar{4} \cdot \bar{4} = \overline{16} = \bar{1}$.

### Contre-exemples

**Contre-exemple 1 : L'anneau des entiers relatifs $(\mathbb{Z})$**

L'anneau $(\mathbb{Z}, +, \times)$ n'est pas un corps. C'est un anneau intègre, mais la plupart de ses éléments non nuls ne sont pas inversibles. Les seuls éléments inversibles pour la multiplication dans $\mathbb{Z}$ sont $1$ et $-1$. Par exemple, $2$ n'a pas d'inverse dans $\mathbb{Z}$.

**Contre-exemple 2 : L'anneau $\mathbb{Z}/6\mathbb{Z}$**

L'anneau des entiers modulo 6 n'est pas un corps. Il n'est même pas intègre car il possède des diviseurs de zéro : $\bar{2} \cdot \bar{3} = \bar{6} = \bar{0}$, alors que $\bar{2} \neq \bar{0}$ et $\bar{3} \neq \bar{0}$. Des éléments comme $\bar{2}, \bar{3}, \bar{4}$ ne sont pas inversibles.

### Concepts Connexes

-   **Anneau** : Un corps est un type particulier d'anneau.
-   **Anneau intègre** : Un anneau commutatif, non nul, et sans diviseur de zéro. Tout corps est un anneau intègre, mais la réciproque est fausse (par exemple $\mathbb{Z}$).
-   **Espace vectoriel** : La notion d'espace vectoriel est définie sur un corps (le corps des scalaires).

---

## Concept 8: Morphisme de Structures Algébriques

### Prérequis

-   [Concept: Application](link_to_concept_application)
-   [Concept: Monoïde](link_to_concept_monoide), [Groupe](link_to_concept_groupe), [Anneau](link_to_concept_anneau)

### Définition

Un **morphisme** est une application entre deux ensembles munis d'une même structure algébrique, qui "préserve" ou "respecte" cette structure.

1.  **Morphismes de monoïdes (ou de groupes)** : Soient $(M, *_{M}, e_{M})$ et $(N, *_{N}, e_{N})$ deux monoïdes. Une application $f : M \to N$ est un morphisme de monoïdes si elle préserve l'opération et l'élément neutre :
    -   Pour tous $m_1, m_2 \in M$, $f(m_1 *_{M} m_2) = f(m_1) *_{N} f(m_2)$.
    -   $f(e_M) = e_N$.

    Si $M$ et $N$ sont des groupes, on parle de morphisme de groupes. La condition $f(e_M)=e_N$ est alors une conséquence de la première (Proposition 1.21).

2.  **Morphismes d'anneaux** : Soient $(A, +_A, \times_A, 0_A, 1_A)$ et $(B, +_B, \times_B, 0_B, 1_B)$ deux anneaux. Une application $f: A \to B$ est un morphisme d'anneaux si elle est un morphisme pour les deux structures :
    -   C'est un morphisme de groupes pour l'addition : $f(a_1 +_A a_2) = f(a_1) +_B f(a_2)$ et $f(0_A) = 0_B$.
    -   C'est un morphisme de monoïdes pour la multiplication : $f(a_1 \times_A a_2) = f(a_1) \times_B f(a_2)$ et $f(1_A) = 1_B$.

Un morphisme bijectif dont la réciproque est aussi un morphisme est appelé un **isomorphisme**. Un morphisme d'une structure dans elle-même est un **endomorphisme**.

### Propriétés Clés

-   **Composition** : La composée de deux morphismes est un morphisme.
-   **Préservation des inverses** : Si $f: G \to H$ est un morphisme de groupes, alors pour tout $g \in G$, $f(g^{-1}) = (f(g))^{-1}$ (Proposition 1.19).
-   **Noyau et Image** : Le noyau d'un morphisme de groupes $f: G \to H$ est le sous-groupe $\text{Ker}(f) = \{g \in G \mid f(g) = e_H\}$. L'image $\text{Im}(f)$ est le sous-groupe des éléments de $H$ atteints par $f$. Un morphisme est injectif si et seulement si son noyau est trivial ($\{e_G\}$).

### Exemples

**Exemple 1 : Le déterminant**

L'application déterminant, $\det: (\text{GL}_n(\mathbb{R}), \cdot) \to (\mathbb{R}^*, \cdot)$, est un morphisme de groupes.

-   $\text{GL}_n(\mathbb{R})$ est le groupe des matrices $n \times n$ inversibles. $\mathbb{R}^*$ est le groupe des réels non nuls.
-   La propriété $\det(AB) = \det(A)\det(B)$ montre que le déterminant préserve l'opération.
-   L'élément neutre de $\text{GL}_n(\mathbb{R})$ est la matrice identité $I_n$, et $\det(I_n) = 1$, qui est l'élément neutre de $\mathbb{R}^*$.

**Exemple 2 : L'exponentielle**

L'application exponentielle, $\exp: (\mathbb{R}, +) \to (\mathbb{R}_+^*, \times)$, est un morphisme de groupes.

-   Elle envoie la structure additive des réels sur la structure multiplicative des réels positifs non nuls.
-   La propriété fondamentale $\exp(x+y) = \exp(x)\exp(y)$ montre que l'opération est préservée.
-   L'exponentielle envoie le neutre de $(\mathbb{R}, +)$, qui est 0, sur le neutre de $(\mathbb{R}_+^*, \times)$, qui est 1 : $\exp(0)=1$.

Ce morphisme est en fait un isomorphisme.

**Exemple 3 : Évaluation de fonctions**

Soit $C^0([0, 1], \mathbb{R})$ l'anneau des fonctions continues de $[0,1]$ vers $\mathbb{R}$. Pour un $x_0 \in [0,1]$ fixé, l'application d'évaluation $\text{ev}_{x_0}: C^0([0, 1], \mathbb{R}) \to \mathbb{R}$ définie par $\text{ev}_{x_0}(f) = f(x_0)$ est un morphisme d'anneaux.

-   $\text{ev}_{x_0}(f+g) = (f+g)(x_0) = f(x_0) + g(x_0) = \text{ev}_{x_0}(f) + \text{ev}_{x_0}(g)$.
-   $\text{ev}_{x_0}(f \cdot g) = (f \cdot g)(x_0) = f(x_0) \cdot g(x_0) = \text{ev}_{x_0}(f) \cdot \text{ev}_{x_0}(g)$.
-   Elle envoie la fonction nulle sur 0 et la fonction constante égale à 1 sur 1.

### Contre-exemples

**Contre-exemple 1 : Une translation**

L'application $f: (\mathbb{Z}, +) \to (\mathbb{Z}, +)$ définie par $f(x) = x+1$ n'est pas un morphisme de groupes. Elle ne préserve pas l'élément neutre: $f(0)=1 \neq 0$. Elle ne préserve pas non plus l'opération : $f(x+y) = x+y+1$, tandis que $f(x)+f(y) = (x+1)+(y+1) = x+y+2$.

**Contre-exemple 2 : La mise au carré**

L'application $f: (\mathbb{R}, +) \to (\mathbb{R}, +)$ définie par $f(x) = x^2$ n'est pas un morphisme de groupes. En général, $f(x+y) = (x+y)^2 = x^2+2xy+y^2 \neq x^2+y^2 = f(x)+f(y)$.

### Concepts Connexes

-   **Isomorphisme** : Un isomorphisme identifie deux structures comme étant "les mêmes" du point de vue de l'algèbre.
-   **Noyau et Image** : Outils fondamentaux pour étudier les morphismes et comprendre la structure des objets qu'ils relient.

---

## Concept 9: Principe de Récurrence

### Prérequis

-   [Concept: Entiers naturels $(\mathbb{N})$](link_to_concept_N)
-   [Concept: Logique des prédicats (Propriété)](link_to_concept_predicate_logic)

### Définition

Le **principe de récurrence** est une propriété fondamentale de l'ensemble des entiers naturels $\mathbb{N}$ qui permet de démontrer qu'une propriété est vraie pour tous les entiers à partir d'un certain rang.

Soit $P(n)$ une propriété qui dépend d'un entier naturel $n$. Pour démontrer que $P(n)$ est vraie pour tout $n \geq n_0$ (où $n_0$ est un entier de départ, souvent 0 ou 1), la démonstration par récurrence se déroule en deux étapes :

1.  **Initialisation (ou cas de base)** : On vérifie que la propriété $P(n_0)$ est vraie.
2.  **Hérédité** : On suppose que $P(k)$ est vraie pour un entier $k$ arbitraire tel que $k \geq n_0$ (c'est l'**hypothèse de récurrence**), et on démontre que, sous cette hypothèse, la propriété $P(k+1)$ est également vraie.

Si ces deux étapes sont validées, le principe de récurrence permet de conclure que $P(n)$ est vraie pour tout entier $n \geq n_0$.

Une variante est la **récurrence forte** où, dans l'étape d'hérédité, on suppose que $P(i)$ est vraie pour *tous* les entiers $i$ tels que $n_0 \leq i \leq k$ pour prouver $P(k+1)$.

### Propriétés Clés

-   Le principe de récurrence est équivalent à l'axiome que toute partie non vide de $\mathbb{N}$ admet un plus petit élément (bon ordre).
-   C'est un outil de démonstration puissant et essentiel en arithmétique, en analyse et en informatique.
-   La récurrence simple et la récurrence forte sont logiquement équivalentes.

### Exemples

**Exemple 1 : Somme des premiers entiers**

Montrons que pour tout $n \in \mathbb{N}$, la somme des entiers de 0 à $n$ est $\sum_{k=0}^{n} k = \frac{n(n+1)}{2}$.

-   **Initialisation ($n=0$)** : Pour $n=0$, la somme est $\sum_{k=0}^{0} k = 0$. La formule donne $\frac{0(0+1)}{2}=0$. La propriété est vraie pour $n=0$.
-   **Hérédité** : Supposons que la formule est vraie pour un entier $k \ge 0$, i.e., $\sum_{i=0}^{k} i = \frac{k(k+1)}{2}$. Montrons qu'elle est vraie pour $k+1$.

    $$ \sum_{i=0}^{k+1} i = \left(\sum_{i=0}^{k} i\right) + (k+1) = \frac{k(k+1)}{2} + (k+1) $$

    En mettant $(k+1)$ en facteur, on obtient :

    $$ (k+1) \left(\frac{k}{2} + 1\right) = (k+1) \left(\frac{k+2}{2}\right) = \frac{(k+1)(k+2)}{2} $$

    C'est bien la formule au rang $k+1$.

-   **Conclusion** : Par le principe de récurrence, la formule est vraie pour tout $n \in \mathbb{N}$.

**Exemple 2 : Inégalité de Bernoulli**

Montrons que pour tout entier $n \geq 0$ et tout réel $x > -1$, on a $(1+x)^n \geq 1+nx$.

-   **Initialisation ($n=0$)** : Pour $n=0$, l'inégalité est $(1+x)^0 \geq 1+0 \cdot x$, soit $1 \geq 1$. C'est vrai.
-   **Hérédité** : Supposons que $(1+x)^k \geq 1+kx$ pour un entier $k \geq 0$. Montrons que $(1+x)^{k+1} \geq 1+(k+1)x$.

    $$ (1+x)^{k+1} = (1+x)^k (1+x) $$

    Par hypothèse de récurrence, $(1+x)^k \geq 1+kx$. Comme $x > -1$, $1+x > 0$, on peut multiplier l'inégalité par $(1+x)$ sans changer le sens :

    $$ (1+x)^{k+1} \geq (1+kx)(1+x) = 1+x+kx+kx^2 = 1+(k+1)x + kx^2 $$

    Puisque $k \geq 0$ et $x^2 \geq 0$, on a $kx^2 \geq 0$. Donc, $1+(k+1)x + kx^2 \geq 1+(k+1)x$.

    Par transitivité, on a bien $(1+x)^{k+1} \geq 1+(k+1)x$.

-   **Conclusion** : L'inégalité est vraie pour tout $n \in \mathbb{N}$.

**Exemple 3 : Récurrence forte**

Montrons que tout entier $n \geq 2$ peut s'écrire comme un produit de nombres premiers.

-   **Initialisation ($n=2$)** : $2$ est un nombre premier, donc il est un produit de nombres premiers (lui-même). C'est vrai.
-   **Hérédité** : Supposons que pour un entier $k \geq 2$, tous les entiers $i$ tels que $2 \leq i \leq k$ sont des produits de nombres premiers. Montrons que $k+1$ est un produit de nombres premiers.
    -   Cas 1 : $k+1$ est un nombre premier. Alors la propriété est vraie.
    -   Cas 2 : $k+1$ est composé. Alors il existe des entiers $a, b$ tels que $k+1 = a \cdot b$ avec $2 \leq a \leq k$ et $2 \leq b \leq k$. Par l'hypothèse de récurrence forte, $a$ et $b$ s'écrivent comme des produits de nombres premiers. Par conséquent, leur produit $a \cdot b = k+1$ est aussi un produit de nombres premiers.
-   **Conclusion** : Par le principe de récurrence forte, tout entier $n \geq 2$ est un produit de nombres premiers.

### Contre-exemples

**Contre-exemple 1 : Hérédité sans initialisation**

Considérons la propriété $P(n) : n=n+1$.

-   **Hérédité** : Supposons que $k=k+1$ pour un certain $k$. En ajoutant 1 des deux côtés, on obtient $k+1 = (k+1)+1$. C'est bien $P(k+1)$. L'hérédité est donc "prouvée".
-   **Initialisation** : Pour $n=0$, on a $0=1$, ce qui est faux.

L'absence d'un cas de base vrai rend la conclusion fausse. On ne peut pas conclure que $n=n+1$ pour tout $n$.

**Contre-exemple 2 : Initialisation sans hérédité**

Considérons la propriété $P(n) : n^2 - n + 41$ est un nombre premier.

-   **Initialisation ($n=0$)** : $P(0)$ est $41$, qui est premier. Vrai.
-   **Initialisation ($n=1$)** : $P(1)$ est $1-1+41=41$, qui est premier. Vrai.
-   ... On peut vérifier que c'est vrai pour $n=0, 1, ..., 40$.
-   **Hérédité** : L'étape d'hérédité échoue. Par exemple, au rang 40, $P(40)$ est vraie. Mais $P(41) = 41^2-41+41 = 41^2$, qui n'est pas premier. L'implication $P(40) \Rightarrow P(41)$ est fausse.

### Concepts Connexes

-   **Axiomes de Peano** : Le principe de récurrence est l'un des axiomes de Peano qui définissent formellement les entiers naturels.
-   **Définition par récurrence** : On peut définir des suites ou des fonctions en donnant une valeur initiale et une relation de récurrence (par exemple, la factorielle : $0!=1$ et $(n+1)! = (n+1) \cdot n!$).

---

## Concept 10: Relation d'Ordre

### Prérequis

-   [Concept: Ensemble](link_to_concept_ensemble)
-   [Concept: Relation Binaire](link_to_concept_relation_binaire)

### Définition

Une **relation d'ordre** sur un ensemble $X$ est une relation binaire, souvent notée $\leq$, qui est :

1.  **Réflexive** : Pour tout $x \in X$, on a $x \leq x$.

    (Tout élément est en relation avec lui-même).

2.  **Antisymétrique** : Pour tous $x, y \in X$, si $x \leq y$ et $y \leq x$, alors $x=y$.

    (Si deux éléments se "précèdent" mutuellement, ils sont égaux).

3.  **Transitive** : Pour tous $x, y, z \in X$, si $x \leq y$ et $y \leq z$, alors $x \leq z$.

    (La relation se propage).

Un ensemble muni d'une relation d'ordre est appelé un **ensemble ordonné**.

Si, de plus, la relation est **totale**, c'est-à-dire que pour tous $x, y \in X$, on a $x \leq y$ ou $y \leq x$, on parle d'**ordre total**. Sinon, l'ordre est dit **partiel**.

### Propriétés Clés

-   Un ensemble peut être muni de différentes relations d'ordre.
-   Un sous-ensemble d'un ensemble ordonné hérite de la relation d'ordre.
-   Dans un ensemble ordonné, on peut définir les notions de plus petit/grand élément, de majorant/minorant, et de borne supérieure/inférieure.

### Exemples

**Exemple 1 : L'ordre usuel sur les réels**

L'ensemble des nombres réels $\mathbb{R}$ muni de la relation $\leq$ usuelle est un ensemble totalement ordonné.

-   **Réflexivité** : Pour tout $x \in \mathbb{R}$, $x \leq x$.
-   **Antisymétrie** : Si $x \leq y$ et $y \leq x$, alors $x=y$.
-   **Transitivité** : Si $x \leq y$ et $y \leq z$, alors $x \leq z$.
-   **Totalité** : Pour deux réels $x, y$ quelconques, on a toujours soit $x \leq y$, soit $y \leq x$.

**Exemple 2 : L'inclusion sur les parties d'un ensemble**

Soit $E$ un ensemble. L'ensemble de ses parties, $\mathcal{P}(E)$, muni de la relation d'inclusion $\subseteq$, est un ensemble ordonné.

-   **Réflexivité** : Pour toute partie $A \subseteq E$, $A \subseteq A$.
-   **Antisymétrie** : Si $A \subseteq B$ et $B \subseteq A$, alors $A=B$.
-   **Transitivité** : Si $A \subseteq B$ et $B \subseteq C$, alors $A \subseteq C$.

Cet ordre est partiel dès que $E$ a au moins deux éléments. Par exemple, si $E=\{a, b\}$, les sous-ensembles $\{a\}$ et $\{b\}$ ne sont pas comparables : on n'a ni $\{a\} \subseteq \{b\}$ ni $\{b\} \subseteq \{a\}$.

**Exemple 3 : La relation de divisibilité**

Sur l'ensemble des entiers naturels non nuls $\mathbb{N}^*$, la relation "divise", notée $|$, est une relation d'ordre. On dit que $a|b$ s'il existe $k \in \mathbb{N}^*$ tel que $b=ak$.

-   **Réflexivité** : $a|a$ car $a=a \cdot 1$.
-   **Antisymétrie** : Si $a|b$ et $b|a$, alors $b=ak_1$ et $a=bk_2$. Donc $a=ak_1k_2$, d'où $k_1k_2=1$. Comme $k_1, k_2 \in \mathbb{N}^*$, on a $k_1=k_2=1$, et donc $a=b$.
-   **Transitivité** : Si $a|b$ et $b|c$, alors $b=ak_1$ et $c=bk_2$, donc $c=a(k_1k_2)$, ce qui montre que $a|c$.

Cet ordre est partiel. Par exemple, 2 ne divise pas 3 et 3 ne divise pas 2.

### Contre-exemples

**Contre-exemple 1 : L'inégalité stricte**

La relation $<$ sur $\mathbb{R}$ n'est pas une relation d'ordre car elle n'est pas réflexive (on n'a jamais $x < x$). C'est une relation d'ordre strict.

**Contre-exemple 2 : Une relation cyclique**

Sur l'ensemble $\{a, b, c\}$, définissons la relation $R$ par $aRa, bRb, cRc, aRb, bRc, cRa$.

-   Elle est réflexive.
-   Elle n'est pas antisymétrique : on a $aRb, bRc, cRa$. Par transitivité, $aRc$ et on a $cRa$, mais $a \neq c$.
-   Elle n'est pas transitive : $aRb$ et $bRc$, mais on n'a pas $aRc$ dans la définition initiale (bien qu'on puisse la "clore par transitivité").

### Concepts Connexes

-   **Relation d'équivalence** : Autre type majeur de relation binaire, qui est symétrique au lieu d'être antisymétrique.
-   **Ensemble bien ordonné** : Un ensemble totalement ordonné où toute partie non vide admet un plus petit élément (par exemple, $(\mathbb{N}, \leq)$).
-   **Treillis** : Un ensemble partiellement ordonné où toute paire d'éléments admet une borne supérieure et une borne inférieure.

---

## Concept 11: Relation d'Équivalence et Ensemble Quotient

### Prérequis

-   [Concept: Ensemble](link_to_concept_ensemble)
-   [Concept: Relation Binaire](link_to_concept_relation_binaire)
-   [Concept: Partition d'un ensemble](link_to_concept_partition)

### Définition

Une **relation d'équivalence** sur un ensemble $E$ est une relation binaire, souvent notée $\sim$, qui est :

1.  **Réflexive** : Pour tout $x \in E$, $x \sim x$.
2.  **Symétrique** : Pour tous $x, y \in E$, si $x \sim y$, alors $y \sim x$.
3.  **Transitive** : Pour tous $x, y, z \in E$, si $x \sim y$ et $y \sim z$, alors $x \sim z$.

À partir d'une relation d'équivalence $\sim$ sur $E$, on peut définir :

-   La **classe d'équivalence** d'un élément $x \in E$ : c'est l'ensemble de tous les éléments de $E$ qui sont en relation avec $x$. On la note $\text{cl}(x)$ ou $\bar{x}$:

    $$ \text{cl}(x) = \{y \in E \mid y \sim x\} $$

-   L'**ensemble quotient** de $E$ par $\sim$ : c'est l'ensemble de toutes les classes d'équivalence. On le note $E/\sim$:

    $$ E/\sim = \{ \text{cl}(x) \mid x \in E \} $$

### Propriétés Clés

-   **Partition de l'ensemble** : Les classes d'équivalence forment une partition de l'ensemble $E$. Cela signifie que :
    -   Aucune classe d'équivalence n'est vide.
    -   L'union de toutes les classes d'équivalence est l'ensemble $E$ tout entier.
    -   Deux classes d'équivalence distinctes sont disjointes. Autrement dit, pour tous $x, y \in E$, on a soit $\text{cl}(x) = \text{cl}(y)$, soit $\text{cl}(x) \cap \text{cl}(y) = \emptyset$.
-   **Propriété universelle du quotient** : Une application $f: E \to F$ qui est constante sur les classes d'équivalence (i.e. $x \sim y \Rightarrow f(x)=f(y)$) peut être "factorisée" de manière unique à travers l'ensemble quotient. Il existe une unique application $\bar{f} : E/\sim \to F$ telle que $f = \bar{f} \circ \pi$, où $\pi: E \to E/\sim$ est l'application surjective qui à $x$ associe sa classe $\text{cl}(x)$.

### Exemples

**Exemple 1 : Congruence modulo $n$**

Sur l'ensemble des entiers $\mathbb{Z}$, fixons un entier $n > 0$. La relation "être congru modulo $n$" est définie par $a \sim b \Leftrightarrow n \text{ divise } (a-b)$.

-   C'est une relation d'équivalence.
-   La classe d'équivalence de $a$ est $\bar{a} = \{a + kn \mid k \in \mathbb{Z}\}$.
-   L'ensemble quotient est $\mathbb{Z}/n\mathbb{Z} = \{\bar{0}, \bar{1}, \dots, \overline{n-1}\}$. Il y a exactement $n$ classes d'équivalence.

**Exemple 2 : Construction des nombres rationnels**

L'ensemble $\mathbb{Q}$ peut être construit comme un ensemble quotient. On part de l'ensemble $E = \mathbb{Z} \times (\mathbb{Z} - \{0\})$. On définit la relation $(a,b) \sim (c,d) \Leftrightarrow ad = bc$.

-   C'est une relation d'équivalence.
-   La classe d'équivalence du couple $(a,b)$ est le nombre rationnel $a/b$. Par exemple, la classe de $(1,2)$ est $\{(1,2), (2,4), (-3,-6), \dots\}$, qui représente le nombre $1/2$.
-   L'ensemble quotient est $\mathbb{Q}$.

**Exemple 3 : Équivalence de points par une rotation**

Dans le plan $\mathbb{R}^2$, disons que deux points sont équivalents s'ils peuvent être obtenus l'un de l'autre par une rotation autour de l'origine.

-   La classe d'équivalence d'un point $P$ (différent de l'origine) est le cercle centré à l'origine qui passe par $P$.
-   L'ensemble quotient est l'ensemble de tous ces cercles. On peut l'identifier à l'ensemble des rayons possibles, c'est-à-dire l'intervalle $[0, +\infty)$.

### Contre-exemples

**Contre-exemple 1 : La relation d'ordre $\leq$**

La relation $\leq$ sur $\mathbb{R}$ n'est pas une relation d'équivalence. Elle est réflexive et transitive, mais pas symétrique. Par exemple, $3 \leq 5$ mais $5 \not\leq 3$.

**Contre-exemple 2 : Avoir un ami en commun**

Sur un ensemble de personnes, la relation "avoir au moins un ami en commun" n'est pas transitive. Alice peut avoir Bob comme ami commun avec Charles, et Charles peut avoir David comme ami commun avec Eve, mais Alice et Eve peuvent ne pas avoir d'ami en commun. Elle n'est pas non plus réflexive (si on suppose qu'on n'est pas son propre ami).

### Concepts Connexes

-   **Groupe Quotient** et **Anneau Quotient** : Ces constructions fondamentales utilisent la notion d'ensemble quotient pour définir de nouvelles structures algébriques.
-   **Partition d'un ensemble** : Il y a une bijection entre les relations d'équivalence sur un ensemble $E$ et les partitions de $E$.

---

## Concept 12: Sous-groupe

### Prérequis

-   [Concept: Groupe](link_to_concept_groupe)
-   [Concept: Ensemble](link_to_concept_ensemble)

### Définition

Un **sous-groupe** d'un groupe $(G, *, e_G)$ est un sous-ensemble $H$ de $G$ qui est lui-même un groupe pour l'opération $*$ restreinte à $H$.

Formellement, un sous-ensemble $H \subseteq G$ est un sous-groupe si les trois conditions suivantes sont remplies :

1.  **Contient l'élément neutre** : $e_G \in H$. (Ceci assure que $H$ est non vide).
2.  **Stabilité par l'opération** : Pour tous $h_1, h_2 \in H$, le produit $h_1 * h_2$ est aussi dans $H$.
3.  **Stabilité par passage à l'inverse** : Pour tout $h \in H$, son inverse $h^{-1}$ est aussi dans $H$.

### Propriétés Clés

-   **Critère de caractérisation** (Proposition 1.37) : Un sous-ensemble non vide $H$ de $G$ est un sous-groupe si et seulement si pour tous les éléments $x, y \in H$, l'élément $x * y^{-1}$ est aussi dans $H$. Ce critère unique combine les conditions de stabilité et d'inversion.
-   L'intersection de n'importe quelle collection de sous-groupes de $G$ est encore un sous-groupe de $G$.
-   L'image et le noyau d'un morphisme de groupes sont des sous-groupes.

### Exemples

**Exemple 1 : Les multiples d'un entier**

Dans le groupe additif des entiers $(\mathbb{Z}, +)$, pour tout entier $n \in \mathbb{N}$, l'ensemble $n\mathbb{Z} = \{nk \mid k \in \mathbb{Z}\}$ des multiples de $n$ est un sous-groupe.

-   $0 = n \cdot 0 \in n\mathbb{Z}$.
-   Si $x=nk_1$ et $y=nk_2$ sont dans $n\mathbb{Z}$, leur somme $x+y = n(k_1+k_2)$ est aussi dans $n\mathbb{Z}$.
-   Si $x=nk \in n\mathbb{Z}$, son opposé $-x = n(-k)$ est aussi dans $n\mathbb{Z}$.

**Exemple 2 : Le groupe spécial linéaire**

Dans le groupe multiplicatif des matrices carrées inversibles de taille $n$, $\text{GL}_n(\mathbb{R})$, l'ensemble des matrices de déterminant 1, noté $\text{SL}_n(\mathbb{R})$, est un sous-groupe.

-   La matrice identité $I_n$ a un déterminant de 1.
-   Si $\det(A)=1$ et $\det(B)=1$, alors $\det(AB) = \det(A)\det(B)=1$.
-   Si $\det(A)=1$, alors $\det(A^{-1}) = 1/\det(A) = 1$.

**Exemple 3 : Le groupe orthogonal**

Le groupe orthogonal $O_n(\mathbb{R})$ est le sous-ensemble des matrices $M \in \text{GL}_n(\mathbb{R})$ telles que $M^T M = I_n$. C'est un sous-groupe de $\text{GL}_n(\mathbb{R})$. Il correspond aux transformations qui préservent la distance euclidienne (isométries).

### Contre-exemples

**Contre-exemple 1 : Les entiers naturels dans les entiers relatifs**

L'ensemble $\mathbb{N}$ est un sous-ensemble de $(\mathbb{Z}, +)$, il contient le neutre 0 et est stable par addition. Cependant, ce n'est pas un sous-groupe car il n'est pas stable par passage à l'inverse (l'opposé). Par exemple, $3 \in \mathbb{N}$ mais son opposé $-3 \notin \mathbb{N}$.

**Contre-exemple 2 : L'union de deux sous-groupes**

L'union de deux sous-groupes n'est généralement pas un sous-groupe. Dans $(\mathbb{Z}, +)$, considérez les sous-groupes $2\mathbb{Z}$ et $3\mathbb{Z}$. Leur union $H = 2\mathbb{Z} \cup 3\mathbb{Z}$ contient $2$ et $3$, mais pas leur somme $2+3=5$. $H$ n'est donc pas stable par addition.

### Concepts Connexes

-   **Groupe quotient** : Si un sous-groupe est "normal", on peut construire un groupe quotient.
-   **Noyau d'un morphisme** : Le noyau d'un morphisme de groupes est toujours un sous-groupe (et il est même normal).
-   **Théorème de Lagrange** : Dans un groupe fini, l'ordre (le nombre d'éléments) de tout sous-groupe divise l'ordre du groupe.

---

## Concept 13: Isomorphismes d'ensembles ordonnés

### Prérequis

-   [Concept 10: Relation d'Ordre](link_to_concept_order_relation)
-   [Concept 6: Injectivité, Surjectivité et Bijectivité](link_to_concept_bijectivity)

### Définition

Soient $(E, \le_E)$ and $(F, \le_F)$ deux ensembles ordonnés.

1.  Une application $f: E \to F$ est dite **croissante** (ou préserve l'ordre) si pour tous $x, y \in E$:
    $$ x \le_E y \implies f(x) \le_F f(y) $$
2.  Un **isomorphisme d'ensembles ordonnés** est une application bijective $f: E \to F$ telle que $f$ et sa réciproque $f^{-1}$ sont toutes les deux croissantes.

### Propriétés Clés

-   Une application bijective $f: E \to F$ est un isomorphisme d'ensembles ordonnés si et seulement si pour tous $x, y \in E$:
    $$ x \le_E y \iff f(x) \le_F f(y) $$
    Cette condition unique est plus forte que la simple croissance. Elle garantit que la structure d'ordre est parfaitement préservée dans les deux sens.
-   Si deux ensembles sont isomorphes, leurs structures d'ordre sont "les mêmes". Par exemple, si $E$ a un plus petit élément, alors $F$ en a un aussi.
-   La composition de deux isomorphismes d'ensembles ordonnés est un isomorphisme d'ensembles ordonnés.

### Exemples

**Exemple 1 : Isomorphisme trivial**

Soit $f: (\mathbb{Z}, \le) \to (\mathbb{Z}, \le)$ définie par $f(n) = n + 5$.
-   **Bijective ?** Oui. Sa réciproque est $f^{-1}(m) = m - 5$.
-   **Croissante ?** Oui. Si $n_1 \le n_2$, alors $n_1+5 \le n_2+5$, donc $f(n_1) \le f(n_2)$.
-   **$f^{-1}$ croissante ?** Oui. Si $m_1 \le m_2$, alors $m_1-5 \le m_2-5$, donc $f^{-1}(m_1) \le f^{-1}(m_2)$.
$f$ est donc un isomorphisme d'ensembles ordonnés.

**Exemple 2 : $(\mathbb{N}, \le)$ et $(2\mathbb{N}, \le)$**

Soit $2\mathbb{N}$ l'ensemble des entiers naturels pairs $\{0, 2, 4, ...\}$. Montrons que $(\mathbb{N}, \le)$ et $(2\mathbb{N}, \le)$ sont isomorphes.
Soit $f: \mathbb{N} \to 2\mathbb{N}$ définie par $f(n)=2n$.
-   **Bijective ?** Oui. $f$ est injective ($2n_1=2n_2 \implies n_1=n_2$) et surjective (tout pair s'écrit $2n$).
-   **$x \le y \iff f(x) \le f(y)$ ?**
    - $\Rightarrow$: Si $n_1 \le n_2$, alors $2n_1 \le 2n_2$, donc $f(n_1) \le f(n_2)$.
    - $\Leftarrow$: Si $f(n_1) \le f(n_2)$, alors $2n_1 \le 2n_2$. Comme $2>0$, on peut diviser par 2 sans changer le sens de l'inégalité, donc $n_1 \le n_2$.
La condition est vérifiée, donc $f$ est un isomorphisme.

**Exemple 3 : Une bijection non-isomorphe**

Considérons $(\mathbb{Z}, \le)$. Soit $f: \mathbb{Z} \to \mathbb{Z}$ définie par $f(n) = -n$.
-   **Bijective ?** Oui, elle est sa propre réciproque.
-   **Croissante ?** Non. $2 \le 3$ mais $f(2)=-2$ et $f(3)=-3$. On n'a pas $-2 \le -3$. L'application est décroissante. Ce n'est pas un isomorphisme d'ordre.

### Contre-exemples

**Contre-exemple 1 : $(\mathbb{Z}, \le)$ et $(\mathbb{Q}, \le)$**

Ces deux ensembles ne sont pas isomorphes. $\mathbb{Q}$ est un ordre dense (entre deux rationnels, il y en a toujours un autre), alors que $\mathbb{Z}$ est un ordre discret (entre $n$ et $n+1$, il n'y a aucun autre entier). Un isomorphisme préserverait cette propriété de densité, donc il ne peut en exister.

### Concepts Connexes

-   **Morphisme de groupes/anneaux**: C'est une notion similaire mais pour des structures algébriques. Un isomorphisme de groupes est une bijection qui préserve l'opération.
-   **Topologie de l'ordre**: Une relation d'ordre peut être utilisée pour définir une topologie sur un ensemble.

