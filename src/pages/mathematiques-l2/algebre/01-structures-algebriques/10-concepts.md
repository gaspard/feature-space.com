---
id: de4e944a
type: concepts
order: 10
title: 'Structures algébriques - concepts (A)'
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

# Structures algébriques (A)

---

## Concept 5: Monoïde

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

## Concept 6: Corps

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

## Concept 7: Morphisme de Structures Algébriques

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

## Concept 8: Principe de Récurrence

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

## Concept 9: Relation d'Ordre

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

## Concept 10: Relation d'Équivalence et Ensemble Quotient

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

## Concept 11: Sous-groupe

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

# Structures algébriques (A)

---

## Concept 1: Applications entre Ensembles

### Prérequis

-   Notion d'ensemble
-   Notion de paire ordonnée et de produit cartésien ($X \times Y$)
-   Notion de sous-ensemble

### Définition

Soient $X$ et $Y$ deux ensembles.

Une **application** (ou fonction, ou morphisme d'ensembles) $f$ de $X$ vers $Y$, notée $f : X \to Y$, est la donnée, pour chaque élément $x$ de l'ensemble de départ $X$, d'un unique élément de l'ensemble d'arrivée $Y$, noté $f(x)$.

Formellement, une application $f$ est définie par son **graphe**, qui est un sous-ensemble $\Gamma_f \subset X \times Y$ vérifiant la condition suivante :

Pour tout $x \in X$, il existe un et un seul $y \in Y$ tel que la paire $(x, y)$ appartienne à $\Gamma_f$. On écrit alors $y = f(x)$.

Le graphe est donc l'ensemble :

$$ \Gamma_f = \{(x, f(x)) \mid x \in X\} $$

On définit également :

1.  L'**application identité** sur un ensemble $X$, notée $\text{id}_X : X \to X$, est définie par $\text{id}_X(x) = x$ pour tout $x \in X$.
2.  La **composition** de deux applications $f : X \to Y$ et $g : Y \to Z$ est une nouvelle application notée $g \circ f : X \to Z$, définie par $(g \circ f)(x) = g(f(x))$ pour tout $x \in X$.

### Propriétés Clés

-   **Associativité de la composition** : Pour des applications $f : X \to Y$, $g : Y \to Z$ et $h : Z \to T$, on a toujours $h \circ (g \circ f) = (h \circ g) \circ f$. L'ordre dans lequel on effectue les compositions n'a pas d'importance, on peut donc écrire simplement $h \circ g \circ f$.
-   **Élément neutre pour la composition** : L'application identité agit comme un élément neutre. Pour toute application $f : X \to Y$, on a $f \circ \text{id}_X = f$ et $\text{id}_Y \circ f = f$.
-   **Image d'une partie** : Pour une partie $P \subset X$, son image par $f$ est l'ensemble $f(P) = \{f(x) \mid x \in P\} \subset Y$. C'est l'ensemble de toutes les valeurs prises par $f$ lorsque $x$ parcourt $P$.
-   **Image inverse (ou préimage) d'une partie** : Pour une partie $Q \subset Y$, son image inverse par $f$ est l'ensemble $f^{-1}(Q) = \{x \in X \mid f(x) \in Q\} \subset X$. C'est l'ensemble de tous les éléments de $X$ dont l'image par $f$ tombe dans $Q$.

### Exemples

**Exemple 1 : Application affine**

Soit l'application $f: \mathbb{R} \to \mathbb{R}$ définie par $f(x) = 2x + 1$.

-   Pour chaque réel $x$, $f(x)$ est un unique réel.
-   Le graphe de $f$ est la droite d'équation $y = 2x+1$ dans le plan $\mathbb{R} \times \mathbb{R}$.
-   L'image de la partie $P = [0, 1]$ est $f(P) = [f(0), f(1)] = [1, 3]$.
-   L'image inverse de la partie $Q = \{5\}$ est $f^{-1}(\{5\}) = \{x \in \mathbb{R} \mid 2x+1=5\} = \{2\}$.

**Exemple 2 : Application de projection**

Soit l'application $p: \mathbb{R}^2 \to \mathbb{R}$ qui à un point $(x, y)$ associe sa première coordonnée : $p(x, y) = x$.

-   C'est bien une application car chaque point de $\mathbb{R}^2$ a une unique première coordonnée.
-   L'image de la partie $P = \{(t, \sin(t)) \mid t \in [0, 2\pi]\}$ (un arc de sinusoïde) est $p(P) = [0, 2\pi]$.
-   L'image inverse de la partie $Q = \{3\}$ est $f^{-1}(\{3\}) = \{(x, y) \in \mathbb{R}^2 \mid x=3\}$. C'est la droite verticale d'équation $x=3$.

**Exemple 3 : Composition d'applications**

Soient $f : \mathbb{R} \to \mathbb{R}$ avec $f(x) = x^2$ et $g : \mathbb{R} \to \mathbb{R}$ avec $g(y) = y+1$.

-   La composée $g \circ f : \mathbb{R} \to \mathbb{R}$ est donnée par $(g \circ f)(x) = g(f(x)) = g(x^2) = x^2+1$.
-   La composée $f \circ g : \mathbb{R} \to \mathbb{R}$ est donnée par $(f \circ g)(y) = f(g(y)) = f(y+1) = (y+1)^2$.
-   On remarque que $g \circ f \neq f \circ g$, la composition n'est pas commutative en général.

### Contre-exemples

**Contre-exemple 1 : Une relation qui n'est pas une application**

Considérons les ensembles $X = \{1, 2\}$ et $Y = \{a, b, c\}$. Le sous-ensemble de $X \times Y$ donné par $R = \{(1, a), (1, b), (2, c)\}$ n'est pas le graphe d'une application, car l'élément $1 \in X$ est associé à deux éléments distincts de $Y$ ($a$ et $b$). La condition d'unicité n'est pas respectée.

**Contre-exemple 2 : Une relation qui n'est pas une application**

Considérons les ensembles $X = \{1, 2, 3\}$ et $Y = \{a, b\}$. Le sous-ensemble de $X \times Y$ donné par $R = \{(1, a), (3, b)\}$ n'est pas le graphe d'une application $f:X \to Y$, car l'élément $2 \in X$ n'est associé à aucun élément de $Y$. La condition "pour tout $x \in X$..." n'est pas respectée.

### Concepts Connexes

-   **Injectivité, Surjectivité, Bijectivité**: Propriétés qualitatives des applications qui décrivent comment les éléments sont mis en correspondance.
-   **Ensemble des applications**: L'ensemble de toutes les applications de $X$ vers $Y$ est noté $Y^X$ ou $\text{Hom}_{\text{Ens}}(X, Y)$.
-   **Morphismes**: Dans des contextes plus structurés (groupes, anneaux, etc.), les applications qui préservent la structure sont appelées morphismes. Une application est un "morphisme d'ensembles".

### Applications

La notion d'application est fondamentale dans toutes les branches des mathématiques. Elle permet de modéliser les dépendances, les transformations et les relations entre différents objets mathématiques. En informatique, elle correspond au concept de fonction ou de procédure.

---

## Concept 2: Injectivité, Surjectivité, Bijectivité

### Prérequis

-   Concept d'Application
-   Notion d'ensemble, d'image et d'image inverse

### Définition

Soit $f : X \to Y$ une application entre deux ensembles.

1.  **Injectivité**

    On dit que $f$ est **injective** (ou est une **injection**) si deux éléments distincts de l'ensemble de départ ont toujours des images distinctes.

    Formellement, pour tous $x_1, x_2 \in X$ :

    $$ f(x_1) = f(x_2) \implies x_1 = x_2 $$

    Une autre façon de le dire est que pour tout $y \in Y$, l'équation $f(x)=y$ a au plus une solution $x \in X$. L'ensemble image inverse $f^{-1}(\{y\})$ contient donc au plus un élément.

2.  **Surjectivité**

    On dit que $f$ est **surjective** (ou est une **surjection**) si tout élément de l'ensemble d'arrivée est l'image d'au moins un élément de l'ensemble de départ.

    Formellement, pour tout $y \in Y$, il existe au moins un $x \in X$ tel que $f(x) = y$.

    Cela signifie que l'image de l'application est égale à l'ensemble d'arrivée : $f(X) = Y$.

3.  **Bijectivité**

    On dit que $f$ est **bijective** (ou est une **bijection**) si elle est à la fois injective et surjective.

    Formellement, pour tout $y \in Y$, il existe un et un seul $x \in X$ tel que $f(x)=y$.

    Une bijection établit une correspondance parfaite "un pour un" entre les éléments de $X$ et ceux de $Y$.

### Propriétés Clés

-   **Composition** :
    -   La composée de deux injections est une injection.
    -   La composée de deux surjections est une surjection.
    -   La composée de deux bijections est une bijection.
-   **Application inverse (ou réciproque)** : Une application $f: X \to Y$ est bijective si et seulement si elle admet une application inverse $f^{-1} : Y \to X$ telle que $f^{-1} \circ f = \text{id}_X$ et $f \circ f^{-1} = \text{id}_Y$.
-   **Inverse à gauche/droite** (Proposition 1.5) : En supposant les ensembles non vides :
    -   $f$ est injective $\iff$ il existe une application $p : Y \to X$ (un "inverse à gauche") telle que $p \circ f = \text{id}_X$.
    -   $f$ est surjective $\iff$ il existe une application $s : Y \to X$ (un "inverse à droite") telle que $f \circ s = \text{id}_Y$.

### Exemples

**Exemple 1 : $f(x) = x^2$**

Considérons l'application $f(x) = x^2$.

-   $f: \mathbb{R} \to \mathbb{R}$. Elle n'est **ni injective** (car $f(-2)=f(2)=4$) **ni surjective** (car $-1$ n'a pas d'antécédent réel).
-   $f: \mathbb{R}_+ \to \mathbb{R}$. Elle est **injective** (si $x_1^2 = x_2^2$ avec $x_1, x_2 \geq 0$, alors $x_1=x_2$) mais **pas surjective** ($-1$ n'est pas atteint).
-   $f: \mathbb{R} \to \mathbb{R}_+$. Elle est **surjective** (tout réel positif $y$ est le carré de $\sqrt{y}$) mais **pas injective** (car $f(-2)=f(2)$).
-   $f: \mathbb{R}_+ \to \mathbb{R}_+$. Elle est **injective et surjective**, donc **bijective**. Son application inverse est $f^{-1}(y) = \sqrt{y}$.

**Exemple 2 : Application d'inclusion**

Si $Y$ est un sous-ensemble de $X$, l'application d'inclusion $i: Y \to X$ définie par $i(y) = y$ est toujours **injective**. Elle est surjective si et seulement si $Y=X$.

**Exemple 3 : Projection de $\mathbb{R}^3$ sur $\mathbb{R}^2$**

Soit $p : \mathbb{R}^3 \to \mathbb{R}^2$ définie par $p(x, y, z) = (x, y)$.

-   $p$ est **surjective** : pour tout $(a, b) \in \mathbb{R}^2$, on peut choisir $(a, b, 0) \in \mathbb{R}^3$ et on a $p(a, b, 0) = (a, b)$.
-   $p$ n'est **pas injective** : par exemple, $p(1, 2, 3) = (1, 2)$ et $p(1, 2, 5) = (1, 2)$, mais $(1, 2, 3) \neq (1, 2, 5)$.

### Contre-exemples

**Contre-exemple 1 : Application constante**

Soit $X = \{a, b, c\}$ et $Y = \{1, 2, 3\}$. L'application $f: X \to Y$ définie par $f(x) = 1$ pour tout $x \in X$.

-   Elle n'est pas injective, car $f(a)=f(b)=1$ mais $a \neq b$.
-   Elle n'est pas surjective, car les éléments $2$ et $3$ de $Y$ ne sont l'image d'aucun élément de $X$.

**Contre-exemple 2 : Application du successeur sur $\mathbb{Z}$ et $\mathbb{N}$**

Soit $S$ l'application "successeur" définie par $S(n) = n+1$.

-   $S: \mathbb{Z} \to \mathbb{Z}$ est une bijection. Elle est injective ($n+1=m+1 \implies n=m$) et surjective (tout entier $k$ est le successeur de $k-1$).
-   $S: \mathbb{N} \to \mathbb{N}$ est injective mais n'est pas surjective, car $0$ n'est le successeur d'aucun entier naturel.

### Concepts Connexes

-   **Cardinalité**: Les bijections sont utilisées pour définir formellement quand deux ensembles ont "le même nombre d'éléments" (la même cardinalité), en particulier pour les ensembles infinis.
-   **Isomorphisme**: Dans un contexte plus structuré, une bijection qui préserve la structure est appelée un isomorphisme. Elle montre que deux objets sont "les mêmes" du point de vue de la structure considérée.

### Applications

-   En cryptographie, les fonctions de chiffrement doivent être injectives (et idéalement bijectives) pour permettre le déchiffrement sans ambiguïté.
-   En combinatoire, compter le nombre d'éléments d'un ensemble revient souvent à construire une bijection entre cet ensemble et un ensemble dont on connaît la taille, comme $\{1, 2, \dots, n\}$.

---

## Concept 3: Opérations Binaires (Lois de composition interne)

### Prérequis

-   Notion d'ensemble
-   Notion d'application
-   Produit cartésien

### Définition

Une **opération binaire**, aussi appelée **loi de composition interne**, sur un ensemble non vide $X$ est une application $*: X \times X \to X$.

Pour une paire d'éléments $(x, y) \in X \times X$, l'opération binaire associe un unique élément de $X$, noté $x * y$.

On s'intéresse particulièrement aux propriétés que cette opération peut vérifier :

1.  **Associativité** : L'opération $*$ est associative si, pour tous $x, y, z \in X$, on a :

    $$ (x * y) * z = x * (y * z) $$

    Cela signifie que l'ordre dans lequel on effectue les opérations n'importe pas lorsque l'on combine trois éléments ou plus.

2.  **Élément neutre** : Un élément $e \in X$ est un élément neutre pour $*$ si, pour tout $x \in X$ :

    $$ e * x = x * e = x $$

    L'élément neutre ne modifie pas les éléments avec lesquels il est composé.

3.  **Commutativité** : L'opération $*$ est commutative si, pour tous $x, y \in X$ :

    $$ x * y = y * x $$

    L'ordre des opérandes n'a pas d'importance.

4.  **Élément inversible** : Soit une opération $*$ possédant un élément neutre $e$. Un élément $x \in X$ est dit **inversible** s'il existe un élément $y \in X$ (appelé **inverse** ou **symétrique** de $x$) tel que :

    $$ x * y = y * x = e $$

### Propriétés Clés

-   **Unicité de l'élément neutre** (Proposition 1.11) : Si une opération binaire possède un élément neutre, celui-ci est unique.
-   **Unicité de l'inverse** (Proposition 1.11) : Si une opération binaire est associative et possède un élément neutre, alors chaque élément inversible a un inverse unique.
-   **Distributivité** : Si deux opérations binaires, notées $\times$ et $+$, sont définies sur $X$, on dit que $\times$ est distributive par rapport à $+$ si pour tous $x, y, z \in X$ :

    $$ x \times (y + z) = (x \times y) + (x \times z) \quad \text{et} \quad (y + z) \times x = (y \times x) + (z \times x) $$

### Exemples

**Exemple 1 : L'addition sur les entiers $\mathbb{Z}$**

L'addition $+$ est une opération binaire sur $\mathbb{Z}$.

-   Elle est **associative** : $(a+b)+c = a+(b+c)$.
-   Elle est **commutative** : $a+b=b+a$.
-   Elle possède un **élément neutre** : $0$, car $a+0 = 0+a = a$.
-   Tout élément $a \in \mathbb{Z}$ est **inversible** : son inverse (appelé opposé) est $-a$, car $a+(-a) = (-a)+a = 0$.

**Exemple 2 : La multiplication sur les réels $\mathbb{R}$**

La multiplication $\times$ est une opération binaire sur $\mathbb{R}$.

-   Elle est **associative** et **commutative**.
-   Elle possède un **élément neutre** : $1$.
-   Tout élément $x \in \mathbb{R}$ est **inversible**, *sauf $0$*. L'inverse de $x \neq 0$ est $x^{-1} = 1/x$.

**Exemple 3 : La composition de fonctions sur un ensemble**

Soit $E$ un ensemble, et $X = E^E$ l'ensemble de toutes les applications de $E$ dans $E$. La composition $\circ$ est une opération binaire sur $X$.

-   Elle est **associative** : $h \circ (g \circ f) = (h \circ g) \circ f$.
-   Elle possède un **élément neutre** : l'application identité $\text{id}_E$.
-   Elle n'est **pas commutative** en général (voir l'exemple 3 du concept "Application").
-   Un élément $f \in X$ est **inversible** si et seulement si $f$ est une bijection.

### Contre-exemples

**Contre-exemple 1 : La soustraction sur les entiers $\mathbb{Z}$**

La soustraction $-$ est une opération binaire sur $\mathbb{Z}$.

-   Elle n'est **pas associative** : $(8-4)-2 = 4-2=2$, mais $8-(4-2) = 8-2=6$.
-   Elle n'est **pas commutative** : $5-3=2$, mais $3-5=-2$.
-   Elle possède un élément neutre à droite ($x-0=x$) mais pas à gauche ($0-x \neq x$ si $x \neq 0$). Elle n'a donc pas d'élément neutre.

**Contre-exemple 2 : La division sur les réels non nuls $\mathbb{R}^*$**

La division $/$ est une opération binaire sur $\mathbb{R}^*$.

-   Elle n'est **ni associative, ni commutative**. Par exemple, $(8/4)/2 = 2/2=1$ mais $8/(4/2)=8/2=4$.
-   Elle n'a pas d'élément neutre.

### Concepts Connexes

-   **Structures algébriques** : Les ensembles munis d'opérations binaires vérifiant certaines propriétés forment les structures algébriques fondamentales :
    -   **Monoïde** : loi associative + élément neutre.
    -   **Groupe** : monoïde où tout élément est inversible.
    -   **Anneau** et **Corps** : ensembles avec deux opérations binaires (addition et multiplication) liées par la distributivité.

### Applications

Les opérations binaires sont le fondement de l'algèbre. Elles modélisent les manières de combiner des objets pour en former de nouveaux, que ce soit des nombres, des vecteurs, des matrices, des fonctions, des transformations géométriques, etc. Elles sont omniprésentes en mathématiques, physique et informatique.

---

## Concept 4: Monoïdes et Groupes

### Prérequis

-   Concept d'Opération Binaire (associativité, élément neutre, inversibilité)
-   Notion d'ensemble

### Définition

1.  **Monoïde**

    Un **monoïde** est un triplet $(M, *, e)$ constitué d'un ensemble $M$, d'une opération binaire $*: M \times M \to M$ et d'un élément $e \in M$, qui satisfont les deux axiomes suivants :

    -   **Associativité** : Pour tous $x, y, z \in M$, $(x * y) * z = x * (y * z)$.
    -   **Élément neutre** : Pour tout $x \in M$, $e * x = x * e = x$.

2.  **Groupe**

    Un **groupe** est un triplet $(G, *, e)$ qui est un monoïde et qui satisfait un axiome supplémentaire :

    -   **Existence de l'inverse** : Pour tout élément $g \in G$, il existe un élément $g' \in G$ (appelé inverse de $g$) tel que $g * g' = g' * g = e$. Cet inverse est unique et on le note souvent $g^{-1}$.

Un monoïde ou un groupe est dit **abélien** (ou **commutatif**) si son opération binaire est commutative ($x*y = y*x$).

### Propriétés Clés

-   Dans un groupe $(G, *, e)$, les règles de simplification s'appliquent :
    -   Si $a*x = a*y$, alors $x=y$ (simplification à gauche).
    -   Si $x*a = y*a$, alors $x=y$ (simplification à droite).
-   L'inverse de l'élément neutre est lui-même : $e^{-1} = e$.
-   L'inverse d'un produit est le produit des inverses dans l'ordre inverse : $(x*y)^{-1} = y^{-1} * x^{-1}$.
-   L'inverse de l'inverse d'un élément est l'élément lui-même : $(x^{-1})^{-1} = x$.
-   **Groupe des inversibles d'un monoïde** : L'ensemble des éléments inversibles d'un monoïde $(M, *, e)$, noté $M^\times$, forme un groupe pour la même opération $*$.

### Exemples

**Exemple 1 : $(\mathbb{Z}, +, 0)$ - un groupe abélien**

L'ensemble des entiers relatifs muni de l'addition est un groupe abélien.

-   L'addition est associative et commutative.
-   $0$ est l'élément neutre.
-   Tout entier $n$ a un inverse (son opposé) $-n$.

**Exemple 2 : $(\mathbb{N}, +, 0)$ - un monoïde abélien**

L'ensemble des entiers naturels muni de l'addition est un monoïde commutatif.

-   L'addition est associative, commutative et $0$ est l'élément neutre.
-   Ce n'est pas un groupe car, à l'exception de $0$, aucun élément n'a d'inverse dans $\mathbb{N}$. Par exemple, l'inverse de $3$ pour l'addition est $-3$, qui n'appartient pas à $\mathbb{N}$.

**Exemple 3 : Le groupe symétrique $(S_n, \circ, \text{id})$**

Soit $X = \{1, 2, \dots, n\}$. L'ensemble $S_n$ de toutes les bijections (permutations) de $X$ sur lui-même, muni de la composition d'applications $\circ$, est un groupe.

-   La composition est associative.
-   L'application identité $\text{id}$ est l'élément neutre.
-   Toute bijection $f$ a une bijection inverse $f^{-1}$.
-   Ce groupe n'est **pas abélien** dès que $n \ge 3$.

**Exemple 4 : Mots sur un alphabet - un monoïde non commutatif**

Soit $A=\{a, b\}$ un alphabet. L'ensemble $M(A)$ de tous les mots finis formés avec ces lettres (y compris le mot vide, noté $\epsilon$) est un monoïde pour l'opération de concaténation (juxtaposition).

-   La concaténation est associative : `("ab")c` = `a("bc")` = `abc`.
-   Le mot vide $\epsilon$ est l'élément neutre : `w` + $\epsilon$ = $\epsilon$ + `w` = `w`.
-   Ce n'est pas un groupe (sauf pour le mot vide, aucun mot n'a d'inverse).
-   Il n'est pas commutatif : `"ab" \neq "ba"`.

### Contre-exemples

**Contre-exemple 1 : $(\mathbb{N}, \times, 1)$**

Ceci est un monoïde commutatif. Ce n'est pas un groupe car seuls $1$ et (dans certains contextes) $-1$ ont un inverse multiplicatif entier. $2$ n'a pas d'inverse dans $\mathbb{N}$ (son inverse $1/2$ n'est pas un entier).

**Contre-exemple 2 : L'ensemble des matrices carrées $(M_n(\mathbb{R}), +, \mathbf{0})$**

Cet ensemble, muni de l'addition matricielle et de la matrice nulle $\mathbf{0}$, forme un groupe abélien. Cependant, muni de la multiplication matricielle et de la matrice identité $\text{Id}$, $(M_n(\mathbb{R}), \times, \text{Id})$ est un monoïde non commutatif (pour $n>1$), mais pas un groupe, car de nombreuses matrices (les matrices non inversibles) n'ont pas d'inverse multiplicatif. Le sous-ensemble des matrices inversibles, $\text{GL}_n(\mathbb{R})$, forme lui un groupe.

### Concepts Connexes

-   **Sous-groupe**: Un sous-ensemble d'un groupe qui est lui-même un groupe pour la même opération.
-   **Morphisme de groupes**: Une application entre deux groupes qui "respecte" l'opération de groupe.
-   **Anneau, Corps**: Structures algébriques plus complexes construites à partir de groupes.

### Applications

Les groupes sont l'un des concepts les plus fondamentaux de l'algèbre abstraite. Ils sont utilisés pour étudier la symétrie sous toutes ses formes :

-   En géométrie (groupes de transformations, de rotations).
-   En chimie (groupes de symétrie des molécules).
-   En cryptographie (cryptographie sur les courbes elliptiques).
-   En physique (théorie des particules, relativité).

Les monoïdes apparaissent en informatique théorique (théorie des automates et des langages formels).

---

## Concept 5: Anneaux et Corps

### Prérequis

-   Concept de Groupe abélien
-   Concept de Monoïde
-   Propriété de distributivité

### Définition

1.  **Anneau**

    Un **anneau** est un quintuplet $(A, +, \times, 0, 1)$ constitué d'un ensemble $A$, de deux opérations binaires $+$ (addition) et $\times$ (multiplication), et de deux éléments distincts $0, 1 \in A$, qui satisfont les axiomes suivants :

    -   $(A, +, 0)$ est un **groupe abélien**.
    -   $(A, \times, 1)$ est un **monoïde**.
    -   La multiplication est **distributive** par rapport à l'addition : pour tous $a, b, c \in A$,

        $$ a \times (b+c) = (a \times b) + (a \times c) \quad \text{et} \quad (b+c) \times a = (b \times a) + (c \times a) $$

    Un anneau est dit **commutatif** si sa multiplication est commutative.

    Un anneau commutatif non nul est dit **intègre** si pour tous $a, b \in A$, $ab = 0 \implies a = 0$ ou $b = 0$. (Absence de "diviseurs de zéro").

2.  **Corps**

    Un **corps** est un anneau $(K, +, \times, 0, 1)$ dans lequel $0 \neq 1$ et tout élément non nul est inversible pour la multiplication.

    Formellement, l'ensemble des éléments non nuls $K - \{0\}$, noté $K^*$, forme un groupe pour la multiplication $\times$.

    *Note : Le texte définit un corps comme potentiellement non commutatif, mais les exemples et l'usage courant en licence se concentrent sur les corps commutatifs.*

### Propriétés Clés

-   Dans tout anneau $A$, pour tout $a \in A$, on a $a \times 0 = 0 \times a = 0$.
-   Dans tout anneau $A$, pour tous $a,b \in A$, on a $a \times (-b) = (-a) \times b = -(a \times b)$ et $(-a) \times (-b) = a \times b$.
-   Tout corps est un anneau intègre. Si $ab=0$ et $a \neq 0$, alors $a$ a un inverse $a^{-1}$. En multipliant par $a^{-1}$, on obtient $a^{-1}(ab) = a^{-1}0 \implies (a^{-1}a)b = 0 \implies 1 \cdot b = 0 \implies b=0$.

### Exemples

**Exemple 1 : L'anneau des entiers relatifs $(\mathbb{Z}, +, \times, 0, 1)$**

-   $(\mathbb{Z}, +, 0)$ est un groupe abélien.
-   $(\mathbb{Z}, \times, 1)$ est un monoïde commutatif.
-   La multiplication est distributive sur l'addition.
-   C'est un **anneau commutatif intègre**.
-   Ce n'est **pas un corps** car les seuls éléments inversibles pour la multiplication sont $1$ et $-1$.

**Exemple 2 : Les corps des nombres $(\mathbb{Q}, \mathbb{R}, \mathbb{C})$**

Les ensembles des nombres rationnels, réels et complexes, munis de leurs additions et multiplications usuelles, sont des **corps commutatifs**.

-   Pour $\mathbb{Q}$, tout élément non nul $p/q$ a pour inverse $q/p$.
-   Pour $\mathbb{R}$, tout élément non nul $x$ a pour inverse $1/x$.
-   Pour $\mathbb{C}$, tout élément non nul $a+bi$ a pour inverse $\frac{a-bi}{a^2+b^2}$.

**Exemple 3 : L'anneau des matrices carrées $(M_n(\mathbb{R}), +, \times)$**

L'ensemble des matrices carrées de taille $n \times n$ à coefficients réels est un **anneau non commutatif** (pour $n > 1$).

-   $(M_n(\mathbb{R}), +)$ est un groupe abélien.
-   $(M_n(\mathbb{R}), \times)$ est un monoïde non commutatif.
-   La multiplication est distributive.
-   Il n'est **pas intègre** (le produit de deux matrices non nulles peut être la matrice nulle).
-   Il n'est **pas un corps** (les matrices non inversibles n'ont pas d'inverse multiplicatif).

### Contre-exemples

**Contre-exemple 1 : $(\mathbb{N}, +, \times)$**

L'ensemble des entiers naturels n'est pas un anneau car $(\mathbb{N}, +)$ n'est pas un groupe (les éléments non nuls n'ont pas d'opposé dans $\mathbb{N}$). C'est ce qu'on appelle un semi-anneau.

**Contre-exemple 2 : L'anneau $\mathbb{Z}/6\mathbb{Z}$**

L'ensemble des entiers modulo 6 est un anneau commutatif.

-   Cependant, il n'est **pas intègre** : $\bar{2} \times \bar{3} = \bar{6} = \bar{0}$, alors que $\bar{2} \neq \bar{0}$ et $\bar{3} \neq \bar{0}$.
-   Par conséquent, ce n'est **pas un corps**.

### Concepts Connexes

-   **Idéal**: Un sous-ensemble d'un anneau qui se comporte comme le sous-groupe $\{0\}$ pour la multiplication. Les idéaux sont essentiels pour construire des anneaux quotients.
-   **Morphisme d'anneaux**: Une application entre deux anneaux qui respecte les deux opérations et les éléments neutres.
-   **Espace vectoriel**: Un espace vectoriel est un ensemble de "vecteurs" qui peuvent être additionnés (formant un groupe abélien) et multipliés par des "scalaires" provenant d'un corps.

### Applications

-   Les anneaux (en particulier les anneaux de polynômes) sont au cœur de l'algèbre et de la géométrie algébrique.
-   Les corps sont fondamentaux pour l'algèbre linéaire (espaces vectoriels sur un corps) et l'analyse (le corps des réels ou des complexes).
-   Les corps finis (comme $\mathbb{Z}/p\mathbb{Z}$ avec $p$ premier) ont des applications cruciales en cryptographie et en théorie des codes correcteurs d'erreurs.

---

## Concept 6: Morphismes de Structures Algébriques

### Prérequis

-   Concept d'Application
-   Structures algébriques (Monoïde, Groupe, Anneau, Corps)

### Définition

Un **morphisme** est une application entre deux ensembles munis de la même structure algébrique, qui "préserve" ou "respecte" cette structure.

1.  **Morphisme de monoïdes (ou de groupes)**

    Soient $(M, *_M, e_M)$ et $(N, *_N, e_N)$ deux monoïdes. Une application $f : M \to N$ est un morphisme de monoïdes si :

    -   Elle respecte l'opération : Pour tous $m_1, m_2 \in M$, $f(m_1 *_M m_2) = f(m_1) *_N f(m_2)$.
    -   Elle envoie l'élément neutre sur l'élément neutre : $f(e_M) = e_N$.

    Si $M$ et $N$ sont des groupes, on parle de **morphisme de groupes**. Pour les groupes, la deuxième condition ($f(e_M) = e_N$) est une conséquence de la première (Proposition 1.21).

2.  **Morphisme d'anneaux (ou de corps)**

    Soient $(A, +_A, \times_A, 0_A, 1_A)$ et $(B, +_B, \times_B, 0_B, 1_B)$ deux anneaux. Une application $f : A \to B$ est un morphisme d'anneaux si :

    -   C'est un morphisme pour la structure de groupe additif : $f(a_1 +_A a_2) = f(a_1) +_B f(a_2)$ et $f(0_A) = 0_B$.
    -   C'est un morphisme pour la structure de monoïde multiplicatif : $f(a_1 \times_A a_2) = f(a_1) \times_B f(a_2)$ et $f(1_A) = 1_B$.

Un morphisme bijectif est appelé un **isomorphisme**. S'il existe un isomorphisme entre deux structures, cela signifie qu'elles sont structurellement identiques, bien que leurs éléments puissent être de nature différente.

### Propriétés Clés

-   La composition de deux morphismes est un morphisme.
-   Si $f: G \to H$ est un morphisme de groupes, alors pour tout $g \in G$, $f(g^{-1}) = (f(g))^{-1}$.
-   **Noyau et Image** : Le **noyau** d'un morphisme de groupes $f: G \to H$, noté $\text{Ker}(f)$, est l'ensemble des éléments de $G$ envoyés sur l'élément neutre de $H$. L'**image** de $f$, notée $\text{Im}(f)$, est l'ensemble des valeurs prises par $f$. Le noyau est un sous-groupe de $G$ et l'image est un sous-groupe de $H$.
-   Un morphisme de groupes est injectif si et seulement si son noyau est réduit à l'élément neutre.

### Exemples

**Exemple 1 : Le déterminant**

L'application déterminant, $\det : (\text{GL}_n(\mathbb{R}), \times) \to (\mathbb{R}^*, \times)$, qui associe à une matrice inversible son déterminant, est un morphisme de groupes.

-   Il respecte l'opération : $\det(A \times B) = \det(A) \times \det(B)$.
-   Il envoie le neutre sur le neutre : $\det(\text{Id}) = 1$.

Ce n'est pas un morphisme d'anneaux de $M_n(\mathbb{R})$ dans $\mathbb{R}$ car il ne respecte pas l'addition : $\det(A+B) \neq \det(A) + \det(B)$ en général.

**Exemple 2 : L'application exponentielle**

L'application $f : (\mathbb{R}, +) \to (\mathbb{R}_+^*, \times)$ définie par $f(x) = e^x$ est un isomorphisme de groupes.

-   $f(x+y) = e^{x+y} = e^x \times e^y = f(x) \times f(y)$.
-   $f(0) = e^0 = 1$.
-   Elle est bijective. L'exponentielle transforme l'addition en multiplication.

**Exemple 3 : Évaluation de fonctions**

Soit $A = C^0([0, 1], \mathbb{R})$ l'anneau des fonctions continues sur $[0, 1]$. Pour un point $x_0 \in [0, 1]$ fixé, l'application d'évaluation $\text{ev}_{x_0} : A \to \mathbb{R}$ définie par $\text{ev}_{x_0}(f) = f(x_0)$ est un morphisme d'anneaux.

-   $\text{ev}_{x_0}(f+g) = (f+g)(x_0) = f(x_0)+g(x_0) = \text{ev}_{x_0}(f) + \text{ev}_{x_0}(g)$.
-   $\text{ev}_{x_0}(f \times g) = (f \times g)(x_0) = f(x_0) \times g(x_0) = \text{ev}_{x_0}(f) \times \text{ev}_{x_0}(g)$.
-   Elle respecte les neutres (la fonction nulle et la fonction constante égale à 1).

### Contre-exemples

**Contre-exemple 1 : Une application qui ne respecte pas l'opération**

Soit $f: (\mathbb{Z},+) \to (\mathbb{Z},+)$ définie par $f(x) = x+1$. Ce n'est pas un morphisme de groupes.

-   $f(1+2) = f(3) = 4$.
-   Mais $f(1)+f(2) = (1+1)+(2+1) = 2+3=5$.
-   $f(1+2) \neq f(1)+f(2)$.

**Contre-exemple 2 : Une application qui ne respecte pas le neutre**

Soit $f : (\mathbb{R}, \times) \to (\mathbb{R}, \times)$ définie par $f(x)=0$ pour tout $x$.

-   Elle respecte la multiplication : $f(xy)=0$ et $f(x)f(y)=0 \times 0=0$.
-   Mais elle n'envoie pas le neutre sur le neutre : l'élément neutre de $(\mathbb{R}, \times)$ est 1, mais $f(1)=0$. Ce n'est donc pas un morphisme du monoïde $(\mathbb{R}, \times, 1)$.

### Concepts Connexes

-   **Isomorphisme, Endomorphisme, Automorphisme**: Un isomorphisme est un morphisme bijectif. Un endomorphisme est un morphisme d'une structure dans elle-même. Un automorphisme est un endomorphisme bijectif.
-   **Noyau et Image**: Outils fondamentaux pour étudier les morphismes.

### Applications

Les morphismes permettent de relier différentes structures algébriques, de transférer des propriétés de l'une à l'autre et de les classifier. Le concept d'isomorphisme permet de dire quand deux objets mathématiques sont fondamentalement "les mêmes", même s'ils sont présentés différemment. Par exemple, le groupe $(\mathbb{R}, +)$ est isomorphe au groupe $(\mathbb{R}_+^*, \times)$, ce qui est la base des logarithmes.

---

## Concept 7: Relations d'Équivalence et Ensembles Quotients

### Prérequis

-   Notion d'ensemble et de sous-ensemble
-   Produit cartésien

### Définition

1.  **Relation Binaire**

    Une **relation binaire** $R$ sur un ensemble $E$ est un sous-ensemble de $E \times E$. Si $(x, y) \in R$, on dit que $x$ est en relation avec $y$, et on note $xRy$.

2.  **Relation d'Équivalence**

    Une relation $R$ sur $E$ est une **relation d'équivalence** si elle possède les trois propriétés suivantes :

    -   **Réflexivité** : Pour tout $x \in E$, $xRx$. (Chaque élément est en relation avec lui-même).
    -   **Symétrie** : Pour tous $x, y \in E$, si $xRy$, alors $yRx$. (Si $x$ est en relation avec $y$, alors $y$ l'est avec $x$).
    -   **Transitivité** : Pour tous $x, y, z \in E$, si $xRy$ et $yRz$, alors $xRz$.

3.  **Classe d'Équivalence et Ensemble Quotient**

    Soit $\sim$ une relation d'équivalence sur un ensemble $E$.

    -   La **classe d'équivalence** d'un élément $x \in E$ est l'ensemble de tous les éléments de $E$ qui sont en relation avec $x$. On la note $\text{cl}(x)$ ou $\bar{x}$ :

        $$ \text{cl}(x) = \{y \in E \mid y \sim x\} $$

    -   L'**ensemble quotient** de $E$ par la relation $\sim$, noté $E/\sim$, est l'ensemble de toutes les classes d'équivalence :

        $$ E/\sim = \{ \text{cl}(x) \mid x \in E \} $$

### Propriétés Clés

-   Les classes d'équivalence forment une **partition** de l'ensemble $E$. Cela signifie que :
    1.  Aucune classe d'équivalence n'est vide.
    2.  L'union de toutes les classes d'équivalence est l'ensemble $E$ tout entier.
    3.  Deux classes d'équivalence sont soit disjointes, soit identiques. Autrement dit, pour tous $x, y \in E$, si $\text{cl}(x) \cap \text{cl}(y) \neq \emptyset$, alors $\text{cl}(x) = \text{cl}(y)$.
-   **Propriété universelle du quotient** (Proposition 1.29) : Une application $f: E \to F$ qui est "compatible" avec la relation (c'est-à-dire que $x \sim y \implies f(x)=f(y)$) peut être "factorisée" de manière unique à travers l'ensemble quotient. Il existe une unique application $\bar{f} : E/\sim \to F$ telle que $f = \bar{f} \circ \text{cl}$, où $\text{cl}: E \to E/\sim$ est l'application qui envoie $x$ sur sa classe $\text{cl}(x)$.

### Exemples

**Exemple 1 : La congruence modulo n**

Sur l'ensemble des entiers $\mathbb{Z}$, on définit la relation $x \sim y$ si $x-y$ est un multiple de $n$ (avec $n \ge 1$ fixé). On note $x \equiv y \pmod{n}$.

-   C'est une relation d'équivalence.
-   La classe d'équivalence de $x$ est l'ensemble $\{x + kn \mid k \in \mathbb{Z}\}$.
-   Il y a exactement $n$ classes d'équivalence : $\bar{0}, \bar{1}, \dots, \overline{n-1}$.
-   L'ensemble quotient est $\mathbb{Z}/n\mathbb{Z} = \{\bar{0}, \bar{1}, \dots, \overline{n-1}\}$.

**Exemple 2 : "Avoir la même marque de chaussures"**

Sur l'ensemble $E$ des étudiants d'un cours, la relation "x a la même marque de chaussures que y" est une relation d'équivalence.

-   Réflexive : tout étudiant a la même marque que lui-même.
-   Symétrique : si A a la même marque que B, B a la même marque que A.
-   Transitive : si A a la même marque que B, et B a la même marque que C, alors A a la même marque que C.
-   Les classes d'équivalence sont les groupes d'étudiants portant la même marque. L'ensemble quotient est l'ensemble de ces groupes.

**Exemple 3 : Construction des nombres rationnels $\mathbb{Q}$**

Les nombres rationnels peuvent être construits comme un ensemble quotient.

-   Soit $E = \mathbb{Z} \times (\mathbb{Z} - \{0\})$, l'ensemble des paires d'entiers $(p, q)$ avec $q \neq 0$.
-   On définit la relation $(p, q) \sim (r, s)$ si $ps = rq$.
-   C'est une relation d'équivalence.
-   L'ensemble quotient $E/\sim$ est l'ensemble des nombres rationnels $\mathbb{Q}$. La classe de $(p, q)$ est notée $p/q$. Par exemple, les paires $(1, 2), (2, 4), (-3, -6)$ sont toutes dans la même classe, que l'on note $1/2$.

### Contre-exemples

**Contre-exemple 1 : La relation d'ordre $\leq$ sur $\mathbb{R}$**

La relation $\leq$ n'est pas une relation d'équivalence.

-   Elle est réflexive ($x \leq x$) et transitive ($x \leq y$ et $y \leq z \implies x \leq z$).
-   Mais elle n'est **pas symétrique** : $3 \leq 5$, mais $5 \not\leq 3$.

**Contre-exemple 2 : La relation "est ami avec"**

Sur un ensemble de personnes, la relation "est ami avec" n'est généralement pas une relation d'équivalence.

-   Elle peut être supposée symétrique.
-   Elle n'est généralement pas réflexive (on n'est pas forcément son propre ami dans ce contexte).
-   Elle n'est **pas transitive** : si A est ami avec B, et B est ami avec C, A n'est pas nécessairement ami avec C.

### Concepts Connexes

-   **Partition d'un ensemble**: Il y a une bijection entre les relations d'équivalence sur un ensemble $E$ et les partitions de $E$.
-   **Groupe Quotient, Anneau Quotient**: Lorsque l'ensemble $E$ a une structure algébrique (groupe, anneau), on peut, sous certaines conditions, munir l'ensemble quotient de la même structure.

### Applications

La notion de quotient est un outil de construction extrêmement puissant en mathématiques. Elle permet de construire de nouveaux objets en identifiant des éléments qui sont considérés comme "les mêmes" selon un certain critère. Les constructions de $\mathbb{Z}, \mathbb{Q}, \mathbb{R}, \mathbb{C}$ données dans le cours en sont des exemples fondamentaux.

---

## Concept 8: Sous-groupes

### Prérequis

-   Concept de Groupe
-   Opération binaire, élément neutre, inverse

### Définition

Soit $(G, *, e_G)$ un groupe. Un sous-ensemble non vide $H \subset G$ est un **sous-groupe** de $G$ si $H$, muni de l'opération $*$ restreinte à ses éléments, est lui-même un groupe.

Formellement, un sous-ensemble $H \subset G$ est un sous-groupe s'il vérifie les trois conditions suivantes :

1.  **Contient l'élément neutre** : $e_G \in H$.
2.  **Stabilité par l'opération** (loi interne) : Pour tous $h_1, h_2 \in H$, le produit $h_1 * h_2$ est aussi dans $H$.
3.  **Stabilité par passage à l'inverse** : Pour tout $h \in H$, son inverse $h^{-1}$ est aussi dans $H$.

### Propriétés Clés

-   **Caractérisation d'un sous-groupe** (Proposition 1.37) : Un sous-ensemble non vide $H$ d'un groupe $G$ est un sous-groupe si et seulement si il vérifie la condition unique suivante :

    Pour tous $x, y \in H$, l'élément $x * y^{-1}$ est dans $H$.

    Cette condition unique est équivalente aux trois conditions de la définition.

-   L'intersection de deux (ou plusieurs) sous-groupes d'un groupe $G$ est encore un sous-groupe de $G$.
-   L'image d'un sous-groupe par un morphisme de groupes est un sous-groupe.
-   L'image inverse d'un sous-groupe par un morphisme de groupes est un sous-groupe.

### Exemples

**Exemple 1 : Les sous-groupes de $(\mathbb{Z}, +)$**

Les sous-groupes du groupe additif des entiers $(\mathbb{Z}, +)$ sont exactement les ensembles de la forme $n\mathbb{Z} = \{ nk \mid k \in \mathbb{Z} \}$ pour un entier $n \ge 0$.

-   Pour $n=2$, $2\mathbb{Z} = \{..., -4, -2, 0, 2, 4, ...\}$ est le sous-groupe des entiers pairs.
-   Pour $n=0$, $0\mathbb{Z} = \{0\}$ est le sous-groupe trivial.
-   Pour $n=1$, $1\mathbb{Z} = \mathbb{Z}$ est le groupe lui-même.

**Exemple 2 : Le groupe spécial linéaire**

Considérons le groupe général linéaire $\text{GL}_n(\mathbb{R})$ des matrices $n \times n$ inversibles. L'ensemble $\text{SL}_n(\mathbb{R})$ des matrices de déterminant égal à 1 est un sous-groupe de $\text{GL}_n(\mathbb{R})$.

Vérifions avec la caractérisation :

-   Soient $A, B \in \text{SL}_n(\mathbb{R})$. On a $\det(A)=1$ et $\det(B)=1$.
-   On doit vérifier si $A B^{-1} \in \text{SL}_n(\mathbb{R})$.
-   $\det(AB^{-1}) = \det(A) \det(B^{-1}) = \det(A) \frac{1}{\det(B)} = 1 \times \frac{1}{1} = 1$.
-   Donc $A B^{-1}$ est bien dans $\text{SL}_n(\mathbb{R})$. C'est un sous-groupe.

**Exemple 3 : Le cercle unité dans les nombres complexes**

Considérons le groupe multiplicatif des nombres complexes non nuls $(\mathbb{C}^*, \times)$. L'ensemble $U = \{ z \in \mathbb{C}^* \mid |z|=1 \}$, appelé le cercle unité, est un sous-groupe de $\mathbb{C}^*$.

-   $|1|=1$, donc l'élément neutre $1$ est dans $U$.
-   Si $z_1, z_2 \in U$, alors $|z_1 z_2| = |z_1||z_2| = 1 \times 1 = 1$, donc $z_1 z_2 \in U$.
-   Si $z \in U$, alors $|z^{-1}| = |1/z| = 1/|z| = 1/1 = 1$, donc $z^{-1} \in U$.

### Contre-exemples

**Contre-exemple 1 : Un sous-ensemble non stable par l'opération**

Dans $(\mathbb{Z}, +)$, l'ensemble $H = \{1, 2, 3\}$ n'est pas un sous-groupe. Il ne contient pas le neutre 0, et n'est pas stable : $1+2=3 \in H$, mais $2+3=5 \notin H$.

**Contre-exemple 2 : Un sous-ensemble non stable par inverse**

Dans $(\mathbb{Q}^*, \times)$, l'ensemble $\mathbb{Z}^* = \mathbb{Z} - \{0\}$ n'est pas un sous-groupe. Il est stable par multiplication ($2 \times 3 = 6 \in \mathbb{Z}^*$), mais pas par passage à l'inverse : $2 \in \mathbb{Z}^*$, mais son inverse $1/2$ n'est pas dans $\mathbb{Z}^*$. (Note: Le sous-ensemble $\{1, -1\}$ est, lui, un sous-groupe).

### Concepts Connexes

-   **Groupe Quotient**: On ne peut pas toujours former un groupe quotient avec n'importe quel sous-groupe. Le sous-groupe doit être "distingué" ou "normal" (une condition qui est toujours remplie dans les groupes abéliens).
-   **Noyau d'un morphisme**: Le noyau d'un morphisme de groupes est toujours un sous-groupe (et même un sous-groupe distingué).

### Applications

La notion de sous-groupe permet d'analyser la structure interne des groupes. Trouver et classifier les sous-groupes d'un groupe donné est un problème central en théorie des groupes. Par exemple, en physique, les sous-groupes de groupes de symétrie correspondent à des brisures de symétrie, qui sont associées à des phénomènes physiques importants.

---

## Concept 9: Noyau et Image d'un Morphisme de Groupes

### Prérequis

-   Groupe
-   Morphisme de groupes
-   Sous-groupe
-   Élément neutre

### Définition

Soit $f : (G, *_G, e_G) \to (H, *_H, e_H)$ un morphisme de groupes.

1.  **Noyau (Kernel)**

    Le **noyau** de $f$, noté $\text{Ker}(f)$, est l'ensemble des éléments du groupe de départ $G$ qui sont envoyés sur l'élément neutre du groupe d'arrivée $H$.

    $$ \text{Ker}(f) = f^{-1}(\{e_H\}) = \{ g \in G \mid f(g) = e_H \} $$

    Le noyau mesure à quel point le morphisme "écrase" les éléments de $G$.

2.  **Image**

    L'**image** de $f$, notée $\text{Im}(f)$, est l'ensemble de tous les éléments du groupe d'arrivée $H$ qui sont atteints par au moins un élément de $G$. C'est l'image de l'ensemble $G$ par l'application $f$.

    $$ \text{Im}(f) = f(G) = \{ h \in H \mid \exists g \in G, h = f(g) \} $$

    L'image est la partie de $H$ qui est "couverte" par le morphisme.

### Propriétés Clés

-   **Structure de sous-groupe** (Proposition 1.40) :
    -   Le noyau $\text{Ker}(f)$ est toujours un sous-groupe du groupe de départ $G$.
    -   L'image $\text{Im}(f)$ est toujours un sous-groupe du groupe d'arrivée $H$.
-   **Caractérisation de l'injectivité** : Un morphisme de groupes $f$ est injectif si et seulement si son noyau est réduit à l'élément neutre, c'est-à-dire $\text{Ker}(f) = \{e_G\}$.
-   **Caractérisation de la surjectivité** : Un morphisme de groupes $f$ est surjectif si et seulement si son image est égale à l'ensemble d'arrivée tout entier, c'est-à-dire $\text{Im}(f) = H$.

### Exemples

**Exemple 1 : Morphisme de projection modulo n**

Soit $f : (\mathbb{Z}, +) \to (\mathbb{Z}/n\mathbb{Z}, +)$ le morphisme défini par $f(k) = \bar{k}$ (la classe de $k$ modulo $n$).

-   **Noyau** : $\text{Ker}(f) = \{k \in \mathbb{Z} \mid \bar{k} = \bar{0}\}$. C'est l'ensemble des entiers dont la classe est nulle, c'est-à-dire les multiples de $n$. Donc, $\text{Ker}(f) = n\mathbb{Z}$. C'est bien un sous-groupe de $\mathbb{Z}$.
-   **Image** : $\text{Im}(f) = \{\bar{k} \mid k \in \mathbb{Z}\}$. Toutes les classes de $\mathbb{Z}/n\mathbb{Z}$ sont atteintes, donc $\text{Im}(f) = \mathbb{Z}/n\mathbb{Z}$. Le morphisme est surjectif.

**Exemple 2 : Le déterminant comme morphisme**

Soit $\det : (\text{GL}_n(\mathbb{R}), \times) \to (\mathbb{R}^*, \times)$ le morphisme qui à une matrice inversible associe son déterminant.

-   **Noyau** : $\text{Ker}(\det) = \{M \in \text{GL}_n(\mathbb{R}) \mid \det(M) = 1\}$. C'est l'ensemble des matrices de déterminant 1, appelé le groupe spécial linéaire $\text{SL}_n(\mathbb{R})$.
-   **Image** : L'image est $\mathbb{R}^*$, car pour tout réel $\lambda \neq 0$, on peut construire une matrice de déterminant $\lambda$ (par exemple, la matrice diagonale avec $\lambda$ en première position et des 1 ailleurs). Le morphisme est surjectif.

**Exemple 3 : Morphisme exponentiel complexe**

Soit $f : (\mathbb{R}, +) \to (\mathbb{C}^*, \times)$ le morphisme défini par $f(x) = e^{2i\pi x}$.

-   **Noyau** : $\text{Ker}(f) = \{x \in \mathbb{R} \mid e^{2i\pi x} = 1\}$. L'exponentielle complexe vaut 1 si et seulement si l'exposant est un multiple entier de $2i\pi$. Donc, $2i\pi x = 2ik\pi$ pour un $k \in \mathbb{Z}$, ce qui donne $x=k$. Le noyau est donc $\text{Ker}(f) = \mathbb{Z}$.
-   **Image** : L'image est l'ensemble des nombres complexes de la forme $e^{i\theta}$ pour $\theta \in \mathbb{R}$, c'est-à-dire le cercle unité $U = \{z \in \mathbb{C}^* \mid |z|=1\}$.

### Contre-exemples

**Contre-exemple 1 : L'image inverse d'un élément non neutre**

L'image inverse d'un élément qui n'est pas le neutre n'est pas un sous-groupe. Pour le morphisme $f: \mathbb{Z} \to \mathbb{Z}/4\mathbb{Z}$ de l'exemple 1, considérons l'image inverse de $\bar{1} \in \mathbb{Z}/4\mathbb{Z}$.

$f^{-1}(\{\bar{1}\}) = \{k \in \mathbb{Z} \mid k \equiv 1 \pmod 4\} = \{..., -3, 1, 5, ...\}$. Cet ensemble ne contient pas le neutre 0, donc ce n'est pas un sous-groupe de $\mathbb{Z}$.

**Contre-exemple 2 : Le noyau d'un morphisme de monoïdes**

Considérons le monoïde $(\mathbb{N}, +, 0)$ et le morphisme $f : (\mathbb{N}, +) \to (\mathbb{Z}/2\mathbb{Z}, +)$ donné par $f(n)=\bar{n}$. Le noyau est l'ensemble des entiers naturels envoyés sur $\bar{0}$, c'est-à-dire les entiers naturels pairs. $\text{Ker}(f) = \{0, 2, 4, ...\}$. C'est bien un sous-monoïde de $(\mathbb{N}, +)$. Mais si l'on voit $\mathbb{N}$ comme un sous-ensemble de $(\mathbb{Z}, +)$, ce n'est pas un sous-groupe car il n'est pas stable par passage à l'opposé. La notion de noyau est vraiment la plus pertinente dans le cadre des groupes.

### Concepts Connexes

-   **Premier théorème d'isomorphisme** : C'est un résultat fondamental qui relie le noyau et l'image. Pour tout morphisme de groupes $f: G \to H$, il établit un isomorphisme entre le groupe quotient $G/\text{Ker}(f)$ et l'image $\text{Im}(f)$.
-   **Sous-groupe distingué (ou normal)** : Le noyau d'un morphisme est toujours un sous-groupe distingué, ce qui est la condition nécessaire pour pouvoir construire le groupe quotient.

### Applications

-   Le noyau et l'image sont des outils essentiels pour décomposer et comprendre la structure des groupes et des morphismes entre eux.
-   En algèbre linéaire, le noyau et l'image d'une application linéaire sont des sous-espaces vectoriels qui fournissent des informations cruciales sur l'application (par le théorème du rang, par exemple).

---

## Concept 10: Groupe Quotient (d'un groupe abélien)

### Prérequis

-   Groupe abélien
-   Sous-groupe
-   Relation d'équivalence et ensemble quotient

### Définition

Soit $(A, +, 0)$ un groupe abélien et soit $B$ un sous-groupe de $A$.

1.  **Relation d'équivalence associée à B** : On définit une relation sur $A$, notée $R_B$ ou $\sim_B$, par :

    $$ a_1 \sim_B a_2 \iff a_1 - a_2 \in B $$

    Cette relation est une relation d'équivalence.

2.  **Classes d'équivalence** : La classe d'équivalence d'un élément $a \in A$ est l'ensemble :

    $$ \text{cl}_B(a) = \{x \in A \mid x-a \in B\} = \{a+b \mid b \in B\} $$

    Cette classe est notée $a+B$.

3.  **Groupe Quotient** : L'ensemble quotient $A/B = \{ a+B \mid a \in A \}$ peut être muni d'une structure de groupe, appelée **groupe quotient** de A par B. L'opération d'addition est définie comme suit :

    $$ (a_1 + B) + (a_2 + B) = (a_1 + a_2) + B $$

    L'élément neutre est la classe de $0$, c'est-à-dire $0+B = B$. L'opposé de $a+B$ est $(-a)+B$.

### Propriétés Clés

-   **Loi bien définie** : La définition de l'addition sur $A/B$ ne dépend pas du choix des représentants $a_1$ et $a_2$ dans leurs classes respectives. C'est une conséquence du fait que $B$ est un sous-groupe (et que $A$ est abélien, ce qui simplifie la discussion).
-   **Morphisme canonique** : L'application $\text{cl}_B : A \to A/B$ qui envoie un élément $a$ sur sa classe $a+B$ est un morphisme de groupes surjectif.
-   **Noyau du morphisme canonique** : Le noyau de ce morphisme est exactement le sous-groupe par lequel on quotiente : $\text{Ker}(\text{cl}_B) = B$.
-   **Propriété universelle du quotient** (Proposition 1.42) : Pour tout groupe abélien $C$ et tout morphisme $f:A \to C$ tel que $B \subset \text{Ker}(f)$ (c'est-à-dire $f(B)=\{0_C\}$), il existe un unique morphisme de groupes $\bar{f} : A/B \to C$ tel que $f = \bar{f} \circ \text{cl}_B$.

### Exemples

**Exemple 1 : Le groupe $\mathbb{Z}/n\mathbb{Z}$**

C'est l'exemple le plus important.

-   $A = (\mathbb{Z}, +)$ est un groupe abélien.
-   $B = n\mathbb{Z}$ est un sous-groupe.
-   Le groupe quotient $\mathbb{Z}/n\mathbb{Z}$ est le groupe des classes de congruence modulo $n$. Ses éléments sont $\{\bar{0}, \bar{1}, \dots, \overline{n-1}\}$. L'addition est l'addition modulo $n$. Par exemple, dans $\mathbb{Z}/5\mathbb{Z}$, on a $\bar{3}+\bar{4}=\bar{7}=\bar{2}$.

**Exemple 2 : Le groupe cercle $\mathbb{R}/\mathbb{Z}$**

-   $A = (\mathbb{R}, +)$ est un groupe abélien.
-   $B = (\mathbb{Z}, +)$ est un sous-groupe.
-   La relation d'équivalence est $x \sim y \iff x-y \in \mathbb{Z}$. Deux réels sont équivalents s'ils ont la même partie fractionnaire.
-   Chaque classe d'équivalence a un unique représentant dans l'intervalle $[0, 1[$.
-   Le groupe quotient $\mathbb{R}/\mathbb{Z}$ peut être visualisé comme un cercle. L'addition dans $\mathbb{R}/\mathbb{Z}$ correspond à la rotation sur le cercle. Ce groupe est isomorphe au groupe multiplicatif des nombres complexes de module 1.

**Exemple 3 : Quotient d'un plan par une droite**

-   $A = (\mathbb{R}^2, +)$ est le groupe additif des vecteurs du plan.
-   $B = \mathbb{R} \times \{0\}$ est l'axe des abscisses, un sous-groupe de $\mathbb{R}^2$.
-   Deux vecteurs $(x_1, y_1)$ et $(x_2, y_2)$ sont équivalents si leur différence $(x_1-x_2, y_1-y_2)$ est dans $B$, ce qui signifie $y_1-y_2=0$, donc $y_1=y_2$.
-   Les classes d'équivalence sont les droites horizontales du plan.
-   Le groupe quotient $\mathbb{R}^2 / (\mathbb{R} \times \{0\})$ est l'ensemble de ces droites, et il est isomorphe à $(\mathbb{R}, +)$ (via l'application qui à une droite associe son ordonnée).

### Contre-exemples

**Contre-exemple 1 : Quotienter par un ensemble qui n'est pas un sous-groupe**

Soit $A = \mathbb{Z}$ et $S = \mathbb{N} = \{0, 1, 2, ...\}$. $S$ n'est pas un sous-groupe de $\mathbb{Z}$. La relation $a \sim b \iff a-b \in S$ (c'est-à-dire $a \ge b$) n'est pas une relation d'équivalence (elle n'est pas symétrique). On ne peut donc pas former de groupe quotient.

**Contre-exemple 2 : Cas d'un groupe non abélien**

Le texte se restreint aux groupes abéliens car dans le cas général, il faut que le sous-groupe $H$ soit "distingué" (ou normal), c'est-à-dire que pour tout $g \in G$, $gH = Hg$. Si ce n'est pas le cas, la loi de groupe sur le quotient n'est pas bien définie. Par exemple, dans le groupe des permutations $S_3$, le sous-groupe $H = \{id, (12)\}$ n'est pas distingué et on ne peut pas construire le groupe quotient $S_3/H$.

### Concepts Connexes

-   **Théorèmes d'isomorphisme** : Ces théorèmes utilisent les groupes quotients pour relier différentes structures. Le premier dit que pour un morphisme $f:A \to C$, on a $A/\text{Ker}(f) \cong \text{Im}(f)$.
-   **Anneau quotient** : Si le groupe abélien $A$ est la partie additive d'un anneau, on peut sous certaines conditions (le sous-groupe doit être un "idéal") définir une multiplication sur le groupe quotient pour en faire un anneau.

### Applications

-   La construction de groupes quotients est un outil fondamental en algèbre pour construire de nouveaux groupes et pour comprendre la structure des groupes existants en les "simplifiant".
-   C'est la base de l'arithmétique modulaire, utilisée en théorie des nombres et en cryptographie.
-   En topologie, des espaces comme le tore, le ruban de Möbius ou la bouteille de Klein sont construits comme des quotients topologiques qui sont aussi des quotients de groupes.

---

## Concept 11: Idéal d'un anneau commutatif

### Prérequis

-   Anneau commutatif
-   Sous-groupe

### Définition

Soit $(A, +, \times)$ un anneau commutatif. Un sous-ensemble $I \subset A$ est un **idéal** de $A$ s'il satisfait deux conditions :

1.  **$(I, +)$ est un sous-groupe additif de $(A, +)$**.

    Cela signifie que :

    -   $0 \in I$.
    -   Pour tous $x, y \in I$, on a $x+y \in I$ (stabilité par addition).
    -   Pour tout $x \in I$, son opposé $-x$ est aussi dans $I$.

    (On peut résumer ces conditions en disant que $I$ est non vide et que pour tous $x,y \in I$, $x-y \in I$).

2.  **Stabilité par multiplication externe (absorption)** :

    Pour tout élément $a \in A$ (de l'anneau entier) et tout élément $x \in I$ (de l'idéal), le produit $ax$ est encore dans $I$.

    $$ \forall a \in A, \forall x \in I, \quad ax \in I $$

Un idéal est donc un sous-groupe additif qui "absorbe" la multiplication par n'importe quel élément de l'anneau.

### Propriétés Clés

-   Le noyau d'un morphisme d'anneaux $f: A \to B$ est toujours un idéal de l'anneau de départ $A$ (Proposition 1.44).
-   Les ensembles $\{0\}$ et $A$ sont toujours des idéaux de $A$, appelés les idéaux triviaux.
-   Si un idéal $I$ d'un anneau (unitaire) $A$ contient l'élément unité $1$, alors $I=A$.
-   L'intersection d'une collection quelconque d'idéaux est un idéal.
-   Dans un corps $K$, les seuls idéaux sont $\{0\}$ et $K$. C'est une caractéristique importante des corps.

### Exemples

**Exemple 1 : Les idéaux de $\mathbb{Z}$**

Dans l'anneau $\mathbb{Z}$, pour tout entier $n$, l'ensemble $n\mathbb{Z}$ des multiples de $n$ est un idéal. En fait, ce sont les seuls idéaux de $\mathbb{Z}$.

-   Prenons $I = 3\mathbb{Z} = \{..., -6, -3, 0, 3, 6, ...\}$.
-   C'est un sous-groupe additif de $\mathbb{Z}$.
-   Soit $a \in \mathbb{Z}$ et $x \in 3\mathbb{Z}$. Alors $x=3k$ pour un $k \in \mathbb{Z}$. Le produit $ax = a(3k) = 3(ak)$, qui est bien un multiple de 3, donc $ax \in 3\mathbb{Z}$.

**Exemple 2 : Le noyau d'un morphisme d'évaluation**

Soit l'anneau $A = C(\mathbb{R}, \mathbb{R})$ des fonctions continues de $\mathbb{R}$ dans $\mathbb{R}$. Soit le morphisme d'évaluation en 0, $\text{ev}_0 : A \to \mathbb{R}$, défini par $\text{ev}_0(f) = f(0)$.

Le noyau, $\text{Ker}(\text{ev}_0) = \{f \in A \mid f(0)=0\}$, est un idéal.

-   C'est un sous-groupe additif (la somme de deux fonctions nulles en 0 est nulle en 0, etc.).
-   Soit $g \in A$ une fonction quelconque et $f \in \text{Ker}(\text{ev}_0)$. Alors $(g \cdot f)(0) = g(0) \cdot f(0) = g(0) \cdot 0 = 0$. Donc, $g \cdot f \in \text{Ker}(\text{ev}_0)$.

**Exemple 3 : Idéal engendré par un élément**

Dans un anneau commutatif $A$, pour un élément $x \in A$, l'ensemble $(x) = \{ax \mid a \in A\}$ est un idéal, appelé l'idéal principal engendré par $x$.

-   Dans $\mathbb{Z}$, $n\mathbb{Z}$ est l'idéal principal engendré par $n$.
-   Dans l'anneau des polynômes $\mathbb{R}[X]$, l'ensemble des polynômes divisibles par $X^2+1$ est l'idéal principal $(X^2+1)$.

### Contre-exemples

**Contre-exemple 1 : Un sous-anneau qui n'est pas un idéal**

$\mathbb{Z}$ est un sous-anneau de $\mathbb{Q}$. Cependant, ce n'est pas un idéal de $\mathbb{Q}$. Il ne vérifie pas la propriété d'absorption.

-   Par exemple, $3 \in \mathbb{Z}$ et $1/2 \in \mathbb{Q}$.
-   Leur produit $(1/2) \cdot 3 = 3/2$ n'est pas dans $\mathbb{Z}$.

**Contre-exemple 2 : Un sous-groupe additif qui n'est pas un idéal**

Considérons l'anneau des polynômes à coefficients entiers, $\mathbb{Z}[X]$. Le sous-ensemble $\mathbb{Z}$ (les polynômes constants) est un sous-groupe additif (et même un sous-anneau). Mais ce n'est pas un idéal.

-   Par exemple, $2 \in \mathbb{Z}$ et le polynôme $X$ est dans $\mathbb{Z}[X]$.
-   Leur produit $2X$ n'est pas un polynôme constant, donc il n'est pas dans $\mathbb{Z}$.

### Concepts Connexes

-   **Anneau quotient** : Les idéaux sont précisément les sous-groupes additifs par lesquels on peut quotienter un anneau pour obtenir une structure d'anneau sur le quotient.
-   **Idéal premier, Idéal maximal** : Types d'idéaux spéciaux qui correspondent à des propriétés importantes de l'anneau quotient (anneau intègre, corps).

### Applications

-   La théorie des idéaux généralise de nombreuses propriétés de la divisibilité des entiers aux anneaux abstraits. Par exemple, dans de nombreux anneaux, l'inclusion d'idéaux principaux $(a) \subset (b)$ correspond à la relation "$b$ divise $a$".
-   Les idéaux sont un outil fondamental en géométrie algébrique pour faire le lien entre des objets géométriques (les variétés) et des objets algébriques (les anneaux).

---

## Concept 12: Anneau Quotient

### Prérequis

-   Anneau commutatif
-   Idéal
-   Groupe quotient (abélien)

### Définition

Soit $A$ un anneau commutatif et $I$ un idéal de $A$.

1.  **Ensemble sous-jacent** : On considère le groupe additif quotient $A/I$. Ses éléments sont les classes d'équivalence pour la relation $a \sim b \iff a-b \in I$. La classe d'un élément $a$ est notée $a+I$ ou $\bar{a}$. L'addition est définie par $(a+I)+(b+I) = (a+b)+I$.

2.  **Multiplication** : On définit une multiplication sur l'ensemble quotient $A/I$ par :

    $$ (a+I) \times (b+I) = (ab) + I \qquad \text{ou} \qquad \bar{a} \times \bar{b} = \overline{ab} $$

3.  **Anneau Quotient** : L'ensemble $A/I$, muni de cette addition et de cette multiplication, forme un nouvel anneau commutatif. L'élément nul est $\bar{0} = 0+I = I$ et l'élément unité est $\bar{1} = 1+I$. Cet anneau est appelé l'**anneau quotient** de $A$ par l'idéal $I$.

### Propriétés Clés

-   **Multiplication bien définie** (Théorème 1.45) : Le point crucial est que la définition de la multiplication ne dépend pas du choix des représentants dans les classes. Si $a' \in a+I$ et $b' \in b+I$, alors $a'b'+I = ab+I$. La démonstration de ce fait repose de manière essentielle sur la propriété d'absorption des idéaux.
-   **Morphisme canonique de projection** : L'application $\text{cl}_I : A \to A/I$ définie par $\text{cl}_I(a) = a+I$ est un morphisme d'anneaux surjectif.
-   **Noyau du morphisme canonique** : Le noyau de ce morphisme est exactement l'idéal par lequel on quotiente : $\text{Ker}(\text{cl}_I) = I$.
-   **Propriété universelle de l'anneau quotient** (Proposition 1.48) : Tout morphisme d'anneaux $f:A \to B$ dont le noyau contient l'idéal $I$ se "factorise" de manière unique à travers la projection canonique. Il existe un unique morphisme d'anneaux $\bar{f} : A/I \to B$ tel que $f = \bar{f} \circ \text{cl}_I$.

### Exemples

**Exemple 1 : L'anneau $\mathbb{Z}/n\mathbb{Z}$**

-   Soit l'anneau $A = \mathbb{Z}$ et l'idéal $I = n\mathbb{Z}$.
-   L'anneau quotient $\mathbb{Z}/n\mathbb{Z}$ est l'anneau des entiers modulo $n$. Les opérations sont l'addition et la multiplication modulo $n$.
-   Par exemple, dans l'anneau $\mathbb{Z}/6\mathbb{Z}$ :
    -   $\bar{4} + \bar{5} = \bar{9} = \bar{3}$
    -   $\bar{4} \times \bar{5} = \overline{20} = \bar{2}$
-   L'anneau $\mathbb{Z}/n\mathbb{Z}$ est un corps si et seulement si $n$ est un nombre premier.

**Exemple 2 : Construction du corps des nombres complexes $\mathbb{C}$**

-   Soit l'anneau des polynômes à coefficients réels, $A = \mathbb{R}[X]$.
-   Soit l'idéal $I = (X^2+1)$, l'ensemble des polynômes multiples de $X^2+1$.
-   L'anneau quotient $A/I = \mathbb{R}[X]/(X^2+1)$ est un nouvel anneau. Dans cet anneau, la classe du polynôme $X^2+1$ est nulle : $\overline{X^2+1} = \bar{0}$, ce qui implique $\bar{X}^2 + \bar{1} = \bar{0}$, soit $\bar{X}^2 = -\bar{1}$.
-   En posant $i = \bar{X}$, on obtient un élément dont le carré est $-1$. On peut montrer que tout élément de cet anneau s'écrit de manière unique sous la forme $a+bi$ avec $a,b \in \mathbb{R}$. Cet anneau quotient est isomorphe au corps des nombres complexes $\mathbb{C}$.

**Exemple 3 : Construction de $\mathbb{R}$**

-   Comme vu dans le texte, on peut construire $\mathbb{R}$ comme un anneau quotient.
-   $A = \text{Cauchy}(\mathbb{Q})$ est l'anneau des suites de Cauchy de nombres rationnels.
-   $I = \text{Cauchy}_0(\mathbb{Q})$ est l'idéal des suites de rationnels tendant vers 0.
-   L'anneau quotient $A/I$ est le corps des nombres réels $\mathbb{R}$. On identifie ainsi deux suites de Cauchy si elles "convergent vers la même limite".

### Contre-exemples

**Contre-exemple 1 : Quotienter par un sous-groupe non idéal**

On considère l'anneau $\mathbb{Z}[X]$ et le sous-groupe additif $\mathbb{Z}$ (les polynômes constants). Ce n'est pas un idéal. On peut former le groupe quotient additif $\mathbb{Z}[X]/\mathbb{Z}$, mais la multiplication n'y est pas bien définie.

-   Par exemple, $\overline{X+1}$ et $\bar{X}$ sont dans la même classe (car $(X+1)-X = 1 \in \mathbb{Z}$).
-   Si la multiplication était bien définie, on devrait avoir $\overline{X+1} \cdot \overline{2} = \bar{X} \cdot \overline{2}$.
-   Or, $\overline{(X+1) \cdot 2} = \overline{2X+2}$.
-   Et $\overline{X \cdot 2} = \overline{2X}$.
-   On voudrait donc que $\overline{2X+2} = \overline{2X}$, ce qui signifie que leur différence $(2X+2)-2X = 2$ doit être dans $\mathbb{Z}$, ce qui est vrai. Mais essayons $\overline{X+1} \cdot \overline{X} = \bar{X} \cdot \bar{X}$.
-   $\overline{(X+1)X} = \overline{X^2+X}$. Et $\overline{X \cdot X} = \overline{X^2}$. On voudrait $\overline{X^2+X} = \overline{X^2}$, ce qui signifie que $X$ doit être dans $\mathbb{Z}$, ce qui est faux.

### Concepts Connexes

-   **Premier théorème d'isomorphisme pour les anneaux** : Pour tout morphisme d'anneaux $f:A \to B$, on a un isomorphisme d'anneaux $A/\text{Ker}(f) \cong \text{Im}(f)$.
-   **Corps finis** : De nombreux corps finis sont construits comme des anneaux quotients de la forme $F_p[X]/(P(X))$ où $P(X)$ est un polynôme irréductible.

### Applications

-   La construction d'anneaux quotients est un outil fondamental en algèbre pour construire de nouveaux anneaux et corps.
-   C'est la base de la théorie des nombres (arithmétique modulaire) et de la théorie de Galois (construction de corps par adjonction de racines de polynômes).
-   Elle permet de simplifier des problèmes en algèbre commutative et en géométrie algébrique en "réduisant" un anneau complexe à une structure plus simple.
