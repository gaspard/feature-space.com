---
id: 41fbfbc8
type: concepts
order: 20
title: Structures algébriques - concepts (B)
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
level: pro
createdAt: '2025-10-12T16:01:45.852Z'
---
# Structures algébriques (B)

---

## Concept 1: Application (Morphisme d'ensembles)

### Prérequis

- Théorie élémentaire des ensembles : ensemble, sous-ensemble, produit cartésien, appartenance.
- Logique des prédicats.

### Définition

Soient $X$ et $Y$ deux ensembles. Une **application** (ou **fonction**, ou **morphisme d'ensembles**) $f: X \to Y$ est la donnée d'un sous-ensemble $\Gamma_f \subset X \times Y$, appelé **graphe** de $f$, satisfaisant la condition d'existence et d'unicité :

$$ \forall x \in X, \exists! y \in Y \text{ tel que } (x, y) \in \Gamma_f. $$

On note alors $y = f(x)$. L'ensemble $X$ est le **domaine** (ou la **source**) de $f$, et $Y$ est le **codomaine** (ou le **but**).

L'ensemble des applications de $X$ dans $Y$ est noté $\text{Hom}_{\text{Ens}}(X, Y)$ ou $Y^X$.

- **Composition** : Si $f: X \to Y$ et $g: Y \to Z$ sont deux applications, leur composition $g \circ f : X \to Z$ est définie par $(g \circ f)(x) = g(f(x))$ pour tout $x \in X$.
- **Application Identité** : Pour tout ensemble $X$, l'application identité $\text{id}_X : X \to X$ est définie par $\text{id}_X(x) = x$.

### Propriétés Clés

- **Neutralité de l'identité** : Pour toute application $f: X \to Y$, on a $f \circ \text{id}_X = f$ et $\text{id}_Y \circ f = f$.
- **Associativité de la composition** : Pour $f: X \to Y$, $g: Y \to Z$ et $h: Z \to T$, on a $h \circ (g \circ f) = (h \circ g) \circ f$.

    *Preuve* : Pour tout $x \in X$, $[h \circ (g \circ f)](x) = h((g \circ f)(x)) = h(g(f(x)))$. De même, $[(h \circ g) \circ f](x) = (h \circ g)(f(x)) = h(g(f(x)))$. Les deux applications coïncident donc sur tout élément de $X$. $\square$

- **Injectivité, Surjectivité, Bijectivité** : Soit $f: X \to Y$.
    - $f$ est **injective** si $\forall x_1, x_2 \in X, f(x_1) = f(x_2) \Rightarrow x_1 = x_2$.
    - $f$ est **surjective** si $\forall y \in Y, \exists x \in X, f(x) = y$.
    - $f$ est **bijective** si elle est à la fois injective et surjective.
- **Caractérisation par les inverses** (pour $X, Y$ non vides):
    1.  $f$ est surjective $\iff$ elle admet un **inverse à droite** (ou **section**), i.e., $\exists s : Y \to X$ tel que $f \circ s = \text{id}_Y$.
    2.  $f$ est injective $\iff$ elle admet un **inverse à gauche** (ou **rétraction**), i.e., $\exists p : Y \to X$ tel que $p \circ f = \text{id}_X$.
    3.  $f$ est bijective $\iff$ elle admet un **inverse** (bilatère), i.e., $\exists g : Y \to X$ tel que $f \circ g = \text{id}_Y$ et $g \circ f = \text{id}_X$. Cet inverse, noté $f^{-1}$, est alors unique.

    *Démonstration (1)* : $(\Leftarrow)$ Si $s$ existe, pour tout $y \in Y$, $x=s(y)$ est un antécédent de $y$ car $f(x)=f(s(y))=y$. Donc $f$ est surjective. $(\Rightarrow)$ Si $f$ est surjective, pour chaque $y \in Y$, l'ensemble $f^{-1}(\{y\})$ est non vide. L'**Axiome du Choix** garantit l'existence d'une fonction de choix $s: Y \to X$ telle que $s(y) \in f^{-1}(\{y\})$ pour tout $y$. Par définition, $f(s(y))=y$, donc $f \circ s = \text{id}_Y$. $\square$

### Exemples

**Exemple 1**

L'application d'inclusion $i: \mathbb{Z} \to \mathbb{R}$ définie par $i(n) = n$ est injective. Une rétraction est par exemple l'application partie entière $p: \mathbb{R} \to \mathbb{Z}$, $p(x) = \lfloor x \rfloor$. En effet, pour tout $n \in \mathbb{Z}$, $(p \circ i)(n) = \lfloor n \rfloor = n$, donc $p \circ i = \text{id}_\mathbb{Z}$.

**Exemple 2**

L'application $f: \mathbb{R} \to \mathbb{R}_{\ge 0}$ définie par $f(x) = x^2$ est surjective. Une section est par exemple $s: \mathbb{R}_{\ge 0} \to \mathbb{R}$ définie par $s(y) = \sqrt{y}$. On a bien $(f \circ s)(y) = (\sqrt{y})^2 = y$ pour tout $y \ge 0$. Notez que $s'(y) = -\sqrt{y}$ est une autre section possible.

**Exemple 3**

L'application exponentielle $\exp: \mathbb{R} \to \mathbb{R}_{>0}$ est une bijection. Son inverse est l'application logarithme népérien $\ln: \mathbb{R}_{>0} \to \mathbb{R}$. On a $\ln \circ \exp = \text{id}_{\mathbb{R}}$ et $\exp \circ \ln = \text{id}_{\mathbb{R}_{>0}}$.

### Contre-exemples

**Contre-exemple 1**

Le sous-ensemble $R = \{(x, y) \in \mathbb{R}^2 \mid x^2+y^2=1\}$ n'est pas le graphe d'une application de $\mathbb{R}$ dans $\mathbb{R}$, car pour $x=0$, il existe deux valeurs de $y$ (1 et -1). Il n'y a pas unicité. Pour $x=2$, il n'existe aucune valeur de $y$. Il n'y a pas existence.

**Contre-exemple 2**

L'application $f: \mathbb{Z} \to \mathbb{Z}$ définie par $f(n) = 2n$ est injective mais pas surjective. Elle admet une infinité d'inverses à gauche (par exemple, $p(m) = m/2$ si $m$ est pair, $p(m)=0$ si $m$ est impair) mais aucun inverse à droite.

### Concepts Connexes

- **Théorie des Catégories** : Les ensembles sont les objets de la catégorie **Set**, et les applications sont les morphismes. Les bijections sont les isomorphismes dans cette catégorie. La composition est associative et possède des identités, ce qui en fait une structure de catégorie.
- **Propriété Universelle** : De nombreuses constructions mathématiques sont définies par une propriété universelle qui garantit l'existence et l'unicité d'une application (morphisme) ayant certaines propriétés.

---

## Concept 2: Entiers naturels et Récurrence

### Prérequis

- Concepts d'ensemble et d'application.

### Définition

Un **système d'entiers naturels** est un triplet $(\mathbb{N}, S: \mathbb{N} \to \mathbb{N}, 0 \in \mathbb{N})$ où $\mathbb{N}$ est un ensemble, $S$ est une application (dite **successeur**), et $0$ est un élément de $\mathbb{N}$, vérifiant la **propriété universelle** suivante :

Pour tout triplet $(X, T: X \to X, x_0 \in X)$, il existe une unique application $f : \mathbb{N} \to X$ telle que $f(0) = x_0$ et $f \circ S = T \circ f$. Ceci peut être visualisé par le diagramme commutatif suivant :

$$

\begin{CD}

\mathbb{N} @>S>> \mathbb{N} \\

@VfVV @VVfV \\

X @>>T> X

\end{CD}

\quad \text{avec } f(0) = x_0

$$

Cette propriété définit le système d'entiers naturels à isomorphisme unique près, et on le note simplement $\mathbb{N}$.

### Propriétés Clés

Le triplet $(\mathbb{N}, S, 0)$ défini par la propriété universelle satisfait les **Axiomes de Peano** :

1.  $0$ n'est le successeur d'aucun entier : $\forall n \in \mathbb{N}, S(n) \neq 0$.
2.  L'application successeur $S$ est injective : $\forall n, m \in \mathbb{N}, S(n) = S(m) \Rightarrow n = m$.
3.  **Principe de récurrence** : Si une partie $P \subset \mathbb{N}$ contient $0$ et est stable par $S$ (i.e. $\forall n \in P, S(n) \in P$), alors $P = \mathbb{N}$.

*Esquisse de preuve des axiomes de Peano à partir de la propriété universelle* :

1. Se prouve en construisant une application vers un ensemble adéquat (e.g. $X=\mathbb{N} \cup \{*\}$) qui contredirait l'unicité de $f$.
2. Se prouve en utilisant la propriété universelle pour construire une application "prédécesseur".
3. Soit $P \subset \mathbb{N}$ vérifiant les hypothèses. Considérons le triplet $(X, T, x_0)$ avec $X = \{vrai, faux\}$, $x_0=vrai$ et $T(vrai)=vrai, T(faux)=faux$. L'application caractéristique de $P$, $\chi_P: \mathbb{N} \to X$, vérifie $\chi_P(0)=vrai$ et $\chi_P \circ S = T \circ \chi_P$ (car $n \in P \Rightarrow S(n) \in P$). L'application constante $g(n)=vrai$ vérifie aussi ces conditions. Par unicité, $\chi_P=g$, donc $P=\mathbb{N}$. $\square$

- **Principe de récurrence forte** : Pour toute partie $P \subset \mathbb{N}$, si $0 \in P$ et si pour tout $n \in \mathbb{N}$, l'implication $[\forall k \le n, k \in P] \Rightarrow S(n) \in P$ est vraie, alors $P = \mathbb{N}$.

### Exemples

**Exemple 1 : Définition de l'addition**

Pour tout $m \in \mathbb{N}$, on définit l'application "ajouter $m$", notée $add_m : \mathbb{N} \to \mathbb{N}$, comme l'unique application $f$ issue de la propriété universelle pour le triplet $(\mathbb{N}, S, m)$. Ainsi, $add_m(0) = m$ et $add_m(S(n)) = S(add_m(n))$. En notant $m+n := add_m(n)$, on retrouve les relations $m+0 = m$ et $m+S(n) = S(m+n)$.

**Exemple 2 : Définition de la multiplication**

Pour tout $m \in \mathbb{N}$, on définit l'application "multiplier par $m$", notée $mul_m : \mathbb{N} \to \mathbb{N}$, comme l'unique application $f$ issue de la propriété universelle pour le triplet $(\mathbb{N}, add_m, 0)$. Ainsi, $mul_m(0) = 0$ et $mul_m(S(n)) = add_m(mul_m(n))$. En notant $m \times n := mul_m(n)$, on retrouve $m \times 0 = 0$ et $m \times S(n) = m \times n + m$.

**Exemple 3 : Toute partie non vide de $\mathbb{N}$ admet un plus petit élément**

Soit $A \subset \mathbb{N}$ une partie non vide. Soit $P(n)$ la propriété "si $A \cap \{0, ..., n\} \neq \emptyset$, alors $A$ a un plus petit élément".

- $P(0)$ est vraie : si $A \cap \{0\} \neq \emptyset$, alors $0 \in A$, et $0$ est le plus petit élément de $A$.
- Supposons $P(n)$ vraie. Soit $A \cap \{0, ..., n+1\} \neq \emptyset$. Si $A \cap \{0, ..., n\} \neq \emptyset$, par $P(n)$, $A$ a un plus petit élément. Sinon, $A \cap \{0, ..., n+1\} = \{n+1\}$, donc $A=\{n+1\}$ (si $A \subset \{0,...,n+1\}$) ou le plus petit élément est $n+1$. Une preuve rigoureuse (comme celle du texte) montre que cela s'applique à toute partie de $\mathbb{N}$.

### Contre-exemples

**Contre-exemple 1**

Le triplet $(\mathbb{Z}, S, 0)$ où $S(n)=n+1$ ne vérifie pas la propriété universelle. Par exemple, pour $(X, T, x_0) = (\{0,1\}, \text{id}, 0)$, il existe plusieurs applications $f:\mathbb{Z} \to \{0,1\}$ avec $f(0)=0$ et $f \circ S = \text{id} \circ f$. Par exemple $f(n)=0$ pour tout $n$, ou $f(n)=0$ si $n \ge 0$ et $f(n)=1$ si $n<0$. L'unicité est violée.

**Contre-exemple 2**

Le principe de récurrence ne s'applique pas à $\mathbb{Q}_{\ge 0}$. La partie $P = \mathbb{N} \subset \mathbb{Q}_{\ge 0}$ contient $0$ et vérifie $n \in P \Rightarrow n+1 \in P$, mais $P \neq \mathbb{Q}_{\ge 0}$.

### Concepts Connexes

- **Théorie des Catégories** : L'axiome 1.1 signifie que $(\mathbb{N}, S, 0)$ est un **objet initial** dans la catégorie des systèmes dynamiques pointés.
- **Arithmétique de Peano** : Formalisation logique du premier ordre des propriétés des entiers naturels.
- **Ordinaux transfinis** : Généralisation des entiers naturels pour "compter" au-delà du fini, concept central de la théorie des ensembles de Zermelo-Fraenkel.

---

## Concept 3: Structures Algébriques Fondamentales

### Prérequis

- Ensembles, applications, lois de composition interne.

### Définition

Une **loi de composition interne** (ou opération binaire) sur un ensemble $X$ est une application $*: X \times X \to X$.

Un **magma** est un couple $(X, *)$.

1.  Un **monoïde** est un triplet $(M, *, e)$ où $(M, *)$ est un magma, vérifiant :
    - **Associativité** : $\forall x, y, z \in M, (x * y) * z = x * (y * z)$.
    - **Élément neutre** : $\exists e \in M, \forall x \in M, e * x = x * e = x$. L'élément neutre est unique.

2.  Un **groupe** est un quadruplet $(G, *, e, \cdot^{-1})$ où $(G,*,e)$ est un monoïde tel que :
    - **Inversibilité** : $\forall x \in G, \exists x^{-1} \in G, x * x^{-1} = x^{-1} * x = e$. L'inverse est unique.

    Un groupe est dit **abélien** (ou commutatif) si la loi $*$ est commutative : $\forall x, y \in G, x * y = y * x$.

3.  Un **anneau** est un quintuplet $(A, +, \times, 0, 1)$ où :
    - $(A, +, 0)$ est un groupe abélien.
    - $(A, \times, 1)$ est un monoïde.
    - La multiplication $\times$ est **distributive** par rapport à l'addition $+$ :

      $\forall x, y, z \in A, x \times (y+z) = (x \times y) + (x \times z)$ et $(y+z) \times x = (y \times x) + (z \times x)$.

    L'anneau est **commutatif** si la loi $\times$ est commutative.

    Un anneau est **intègre** s'il est commutatif, non nul ($1 \neq 0$), et n'a pas de diviseurs de zéro : $\forall a,b \in A, ab=0 \Rightarrow (a=0 \text{ ou } b=0)$.

4.  Un **corps** est un anneau $(K, +, \times, 0, 1)$ dans lequel $1 \neq 0$ et tout élément non nul est inversible pour la multiplication. C'est-à-dire que $(K \setminus \{0\}, \times, 1)$ est un groupe. Un corps est commutatif si sa multiplication l'est.

### Propriétés Clés

- Dans un monoïde, s'il existe, l'élément neutre est unique.
- Dans un groupe, l'inverse de tout élément est unique.
- Si $(M,*,e)$ est un monoïde, l'ensemble de ses éléments inversibles, noté $M^\times$, forme un groupe pour la loi $*$.

    *Preuve* : Soit $M^\times$ l'ensemble des inversibles. $e \in M^\times$ car $e*e=e$. Si $x,y \in M^\times$, alors $(x*y)*(y^{-1}*x^{-1}) = x*(y*y^{-1})*x^{-1} = x*e*x^{-1} = x*x^{-1} = e$. Donc $x*y \in M^\times$ et son inverse est $y^{-1}*x^{-1}$. L'associativité est héritée de $M$. Donc $(M^\times, *, e)$ est un groupe. $\square$

### Exemples

**Exemple 1 (Monoïdes)**

- $(\mathbb{N}, +, 0)$ et $(\mathbb{N}, \cdot, 1)$ sont des monoïdes commutatifs.
- Si $X$ est un ensemble, $(\text{End}_{\text{Ens}}(X), \circ, \text{id}_X)$ est le monoïde des endomorphismes de $X$. Il est non commutatif si $|X| > 1$.
- Soit $\Sigma$ un alphabet. L'ensemble $\Sigma^*$ des mots finis sur $\Sigma$, muni de la concaténation, est un monoïde non commutatif (le monoïde libre sur $\Sigma$), dont l'élément neutre est le mot vide.

**Exemple 2 (Groupes)**

- $(\mathbb{Z}, +, 0)$, $(\mathbb{Q}, +, 0)$, $(\mathbb{R}, +, 0)$, $(\mathbb{C}, +, 0)$ sont des groupes abéliens.
- $(\mathbb{Q}^*,\cdot,1)$, $(\mathbb{R}^*,\cdot,1)$, $(\mathbb{C}^*,\cdot,1)$ sont des groupes abéliens.
- Le groupe des bijections d'un ensemble $X$, noté $(\text{Aut}_{\text{Ens}}(X), \circ, \text{id}_X)$, ou groupe symétrique $S_X$. Si $X=\{1, ..., n\}$, on le note $S_n$. Il est non abélien pour $n \ge 3$.

**Exemple 3 (Anneaux et Corps)**

- $(\mathbb{Z}, +, \cdot, 0, 1)$ est un anneau intègre mais pas un corps.
- $(\mathbb{Q}, +, \cdot, 0, 1)$, $(\mathbb{R}, +, \cdot, 0, 1)$, $(\mathbb{C}, +, \cdot, 0, 1)$ sont des corps commutatifs.
- L'anneau des matrices carrées $(M_n(A), +, \cdot)$ sur un anneau commutatif $A$ est un anneau, non commutatif pour $n>1$. Son groupe d'inversibles est le groupe linéaire $\text{GL}_n(A)$.
- L'anneau $\mathbb{Z}/n\mathbb{Z}$ des entiers modulo $n$. C'est un corps si et seulement si $n$ est un nombre premier.

### Contre-exemples

- $(\mathbb{N},+,0)$ n'est pas un groupe (seul 0 est inversible).
- $(\mathbb{Z} \setminus \{0\}, \cdot, 1)$ n'est pas un groupe (seuls 1 et -1 sont inversibles).
- L'anneau $M_2(\mathbb{R})$ n'est pas un corps (beaucoup de matrices non nulles ne sont pas inversibles, ex: $\begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix}$) et n'est pas intègre.
- L'anneau $\mathbb{Z}/6\mathbb{Z}$ n'est pas intègre car $\bar{2} \cdot \bar{3} = \bar{6} = \bar{0}$ mais $\bar{2} \neq \bar{0}$ et $\bar{3} \neq \bar{0}$.

### Concepts Connexes

- **Structures plus faibles** : Demi-groupe (magma associatif), quasi-groupe, boucle.
- **Structures plus riches** : Module sur un anneau, Algèbre sur un corps, Espace vectoriel (module sur un corps).
- **Théorie de Galois** : Étude des corps et de leurs automorphismes, reliant la théorie des groupes à la résolution d'équations polynomiales.

---

## Concept 4: Morphismes de Structures Algébriques

### Prérequis

- Définitions des structures algébriques (monoïdes, groupes, anneaux, corps).
- Notion d'application.

### Définition

Un **morphisme** est une application entre deux ensembles munis de la même structure qui préserve cette structure.

1.  **Morphisme de monoïdes** : Soient $(M, *_M, e_M)$ et $(N, *_N, e_N)$ deux monoïdes. Une application $f: M \to N$ est un morphisme de monoïdes si :
    - $f(e_M) = e_N$
    - $\forall m_1, m_2 \in M, f(m_1 *_M m_2) = f(m_1) *_N f(m_2)$

2.  **Morphisme de groupes** : Soient $(G, *_G, e_G)$ et $(H, *_H, e_H)$ deux groupes. Une application $f: G \to H$ est un morphisme de groupes si elle est un morphisme de monoïdes. La condition $f(e_G) = e_H$ est en fait superflue.

    *Proposition* : Une application $f:G \to H$ est un morphisme de groupes si et seulement si $\forall g_1,g_2 \in G, f(g_1 *_G g_2) = f(g_1) *_H f(g_2)$.

    *Preuve* : Si la condition est vérifiée, $f(e_G) = f(e_G *_G e_G) = f(e_G) *_H f(e_G)$. En multipliant par $(f(e_G))^{-1}$ dans $H$, on obtient $e_H = f(e_G)$. De plus, $e_H = f(e_G) = f(g *_G g^{-1}) = f(g) *_H f(g^{-1})$, ce qui prouve que $f(g^{-1}) = (f(g))^{-1}$. $\square$

3.  **Morphisme d'anneaux** : Soient $(A, +_A, \times_A, 0_A, 1_A)$ et $(B, +_B, \times_B, 0_B, 1_B)$ deux anneaux. Une application $f: A \to B$ est un morphisme d'anneaux si :
    - C'est un morphisme pour les groupes additifs : $f: (A, +_A, 0_A) \to (B, +_B, 0_B)$.
    - C'est un morphisme pour les monoïdes multiplicatifs : $f: (A, \times_A, 1_A) \to (B, \times_B, 1_B)$.

Un **isomorphisme** est un morphisme bijectif dont l'inverse est aussi un morphisme. Un **endomorphisme** est un morphisme d'une structure dans elle-même. Un **automorphisme** est un isomorphisme d'une structure dans elle-même.

### Propriétés Clés

- La composition de deux morphismes est un morphisme.
- Un morphisme de monoïdes $f: M \to N$ envoie les éléments inversibles de $M$ sur des éléments inversibles de $N$, induisant un morphisme de groupes $f^\times : M^\times \to N^\times$.
- **Noyau et Image** :
    - Le **noyau** d'un morphisme de groupes $f: G \to H$ est $\text{Ker}(f) = f^{-1}(\{e_H\}) = \{g \in G \mid f(g) = e_H\}$.
    - L'**image** d'un morphisme $f$ est $\text{Im}(f) = f(G)$.
- $\text{Ker}(f)$ est un sous-groupe de $G$ (et même un sous-groupe normal). $\text{Im}(f)$ est un sous-groupe de $H$.
- Un morphisme de groupes $f$ est injectif si et seulement si $\text{Ker}(f) = \{e_G\}$.

### Exemples

**Exemple 1**

L'application déterminant $\det: (\text{GL}_n(\mathbb{R}), \cdot) \to (\mathbb{R}^*, \cdot)$ est un morphisme de groupes, car $\det(AB) = \det(A)\det(B)$ et $\det(I_n) = 1$. Son noyau est le groupe spécial linéaire $\text{SL}_n(\mathbb{R})$.

**Exemple 2**

Pour tout $x \in [0,1]$, l'application d'évaluation $\text{ev}_x: C^0([0,1], \mathbb{R}) \to \mathbb{R}$ définie par $\text{ev}_x(f) = f(x)$ est un morphisme d'anneaux. On a $\text{ev}_x(f+g)=(f+g)(x)=f(x)+g(x)=\text{ev}_x(f)+\text{ev}_x(g)$, et de même pour le produit et l'unité (la fonction constante 1).

**Exemple 3**

L'application $\varphi: \mathbb{Z} \to \mathbb{Z}/n\mathbb{Z}$ qui envoie un entier $k$ sur sa classe de congruence modulo $n$, $\bar{k}$, est un morphisme d'anneaux surjectif. Son noyau est l'idéal $n\mathbb{Z}$.

### Contre-exemples

**Contre-exemple 1**

L'application $f: (\mathbb{R}, +) \to (\mathbb{R}, +)$ définie par $f(x)=x^2$ n'est pas un morphisme de groupes, car $f(x+y) = (x+y)^2 = x^2+2xy+y^2$ ce qui est différent de $f(x)+f(y) = x^2+y^2$ en général.

**Contre-exemple 2**

Soit $f: M_2(\mathbb{R}) \to \mathbb{R}$ l'application "trace", $\text{Tr}(A) = a_{11}+a_{22}$. C'est un morphisme de groupes additifs, mais pas un morphisme d'anneaux car $\text{Tr}(AB) \neq \text{Tr}(A)\text{Tr}(B)$ en général, et $\text{Tr}(I_2) = 2 \neq 1$.

### Concepts Connexes

- **Théorèmes d'isomorphisme** : Ces théorèmes fondamentaux (en particulier le premier) relient les notions de noyau, image et structure quotient. Par exemple, pour un morphisme de groupes $f: G \to H$, on a $G/\text{Ker}(f) \cong \text{Im}(f)$.
- **Foncteurs** : En théorie des catégories, un foncteur est un "morphisme entre catégories". Il envoie les objets sur des objets et les morphismes sur des morphismes, en respectant la composition et les identités. Par exemple, l'opération $M \mapsto M^\times$ est un foncteur de la catégorie des monoïdes vers la catégorie des groupes.

---

## Concept 5: Relations d'Ordre et d'Équivalence

### Prérequis

- Théorie des ensembles, produit cartésien.

### Définition

Une **relation binaire** sur un ensemble $X$ est un sous-ensemble $R \subset X \times X$. On note $xRy$ pour signifier $(x,y) \in R$. Une relation $R$ est dite :

- **Réflexive** si $\forall x \in X, xRx$.
- **Symétrique** si $\forall x, y \in X, xRy \Rightarrow yRx$.
- **Antisymétrique** si $\forall x, y \in X, (xRy \text{ et } yRx) \Rightarrow x=y$.
- **Transitive** si $\forall x, y, z \in X, (xRy \text{ et } yRz) \Rightarrow xRz$.

Une **relation d'ordre** est une relation réflexive, antisymétrique et transitive. Elle est souvent notée $\leq$. Si de plus, $\forall x, y \in X, x \le y$ ou $y \le x$, l'ordre est dit **total**.

Une **relation d'équivalence** est une relation réflexive, symétrique et transitive. Elle est souvent notée $\sim$ ou $\equiv$.

### Propriétés Clés

- Une relation peut être à la fois d'ordre et d'équivalence si et seulement si elle est l'égalité. En effet, si $R$ est symétrique et antisymétrique, $xRy \Rightarrow yRx$ et $(xRy \text{ et } yRx) \Rightarrow x=y$. Donc $xRy \Rightarrow x=y$. Avec la réflexivité, c'est bien l'égalité.
- La relation d'ordre sur $\mathbb{N}$, définie par $n \le m \iff \exists k \in \mathbb{N}, n+k=m$, est un ordre total.
- **Principe du bon ordre** : Toute partie non vide de $\mathbb{N}$ admet un plus petit élément pour la relation $\le$. $\mathbb{N}$ est dit bien ordonné.

### Exemples

**Exemple 1 (Ordre)**

La relation de divisibilité "|" sur $\mathbb{N}^* = \{1, 2, 3, ...\}$ est une relation d'ordre. Elle n'est pas totale (ex: 2 ne divise pas 3 et 3 ne divise pas 2).

**Exemple 2 (Ordre)**

Sur $\mathcal{P}(X)$, l'ensemble des parties d'un ensemble $X$, la relation d'inclusion $\subset$ est une relation d'ordre. Elle est non totale si $|X| \ge 2$.

**Exemple 3 (Équivalence)**

Dans un groupe $G$, la relation de conjugaison $g_1 \sim g_2 \iff \exists h \in G, g_1 = h g_2 h^{-1}$ est une relation d'équivalence. Les classes d'équivalence sont les classes de conjugaison.

**Exemple 4 (Équivalence)**

Sur $\mathbb{Z}$, la relation de congruence modulo $n$, $a \equiv b \pmod n \iff n | (a-b)$, est une relation d'équivalence.

### Contre-exemples

**Contre-exemple 1**

La relation "inégalité stricte" $<$ sur $\mathbb{R}$ n'est pas une relation d'ordre car elle n'est pas réflexive.

**Contre-exemple 2**

La relation "être perpendiculaire à" sur l'ensemble des droites du plan euclidien est symétrique, mais n'est ni réflexive (une droite n'est pas perpendiculaire à elle-même) ni transitive.

### Concepts Connexes

- **Ensembles Ordonnés (Posets)** : Un ensemble muni d'une relation d'ordre. Des notions comme les éléments maximaux/minimaux, bornes supérieures/inférieures (sup/inf) y sont étudiées.
- **Lemme de Zorn** : Un résultat fondamental équivalent à l'Axiome du Choix, qui garantit l'existence d'éléments maximaux dans certains ensembles ordonnés.
- **Treillis (Lattices)** : Ensembles ordonnés où toute paire d'éléments admet une borne supérieure et une borne inférieure.

---

## Concept 6: Relations d'équivalence et Ensembles Quotients

### Prérequis

- Relations d'équivalence.
- Ensembles et applications.

### Définition

Soit $\sim$ une relation d'équivalence sur un ensemble $E$.

- La **classe d'équivalence** d'un élément $x \in E$ est l'ensemble $\text{cl}(x) = \{y \in E \mid y \sim x\}$.
- L'**ensemble quotient** de $E$ par $\sim$ est l'ensemble de toutes les classes d'équivalence, noté $E/\sim = \{\text{cl}(x) \mid x \in E\}$. C'est un sous-ensemble de $\mathcal{P}(E)$.
- L'application **projection canonique** (ou surjection canonique) est $\pi: E \to E/\sim$ définie par $\pi(x) = \text{cl}(x)$. Elle est surjective par construction.

### Propriétés Clés

- **Partition** : Les classes d'équivalence forment une partition de $E$, c'est-à-dire que $E$ est l'union disjointe de ses classes d'équivalence.

    *Preuve* : Pour tout $x \in E$, $x \in \text{cl}(x)$ par réflexivité. Donc l'union des classes est $E$. Soient $\text{cl}(x_1)$ et $\text{cl}(x_2)$ deux classes. Si leur intersection est non vide, soit $y \in \text{cl}(x_1) \cap \text{cl}(x_2)$. Alors $y \sim x_1$ et $y \sim x_2$. Par symétrie, $x_1 \sim y$. Par transitivité, $x_1 \sim x_2$. Montrons que $\text{cl}(x_1)=\text{cl}(x_2)$. Soit $z \in \text{cl}(x_1)$, donc $z \sim x_1$. Par transitivité avec $x_1 \sim x_2$, on a $z \sim x_2$, donc $z \in \text{cl}(x_2)$. Ainsi $\text{cl}(x_1) \subset \text{cl}(x_2)$. L'inclusion inverse est symétrique. Donc les classes sont soit disjointes, soit égales. $\square$

- **Propriété Universelle du Quotient** : Soit $\sim$ une relation d'équivalence sur $E$. Pour toute application $f: E \to F$ qui est constante sur les classes d'équivalence (i.e. $x \sim y \Rightarrow f(x)=f(y)$), il existe une unique application $\bar{f} : E/\sim \to F$ telle que $f = \bar{f} \circ \pi$.

    ```

          f

      E -----> F

      |      /

     π|     / ∃!f̄

      |    /

      v   /

     E/~

    ```

    *Preuve* : On définit $\bar{f}(\text{cl}(x)) = f(x)$. Cette définition est bien fondée (indépendante du représentant $x$) grâce à l'hypothèse sur $f$. L'unicité et la commutativité du diagramme sont alors claires. $\square$

### Exemples

**Exemple 1 : Construction de $\mathbb{Z}$**

On définit sur $E=\mathbb{N} \times \mathbb{N}$ la relation $(a,b) \sim (c,d) \iff a+d=b+c$. C'est une relation d'équivalence. On pose $\mathbb{Z} := E/\sim$. La classe de $(a,b)$ est notée $a-b$. $\pi(a,0)$ est l'entier positif $a$, $\pi(0,b)$ est l'entier négatif $-b$.

**Exemple 2 : Construction de $\mathbb{Q}$**

On définit sur $E=\mathbb{Z} \times (\mathbb{Z} \setminus \{0\})$ la relation $(a,b) \sim (c,d) \iff ad=bc$. C'est une relation d'équivalence. On pose $\mathbb{Q} := E/\sim$. La classe de $(a,b)$ est notée $a/b$.

**Exemple 3 : Construction de $\mathbb{R}$**

Soit $E = \text{Cauchy}(\mathbb{Q})$ l'ensemble des suites de Cauchy de rationnels. On définit $(x_n)_n \sim (y_n)_n \iff \lim_{n \to \infty} (x_n-y_n)=0$. C'est une relation d'équivalence. On pose $\mathbb{R} := E/\sim$. C'est le procédé de complétion d'un espace métrique.

**Exemple 4 : Construction de $\mathbb{C}$**

Soit $A = \mathbb{R}[X]$ l'anneau des polynômes à coefficients réels. Soit $I=(X^2+1)$ l'idéal engendré par $X^2+1$. On définit sur $A$ la relation $P \sim Q \iff P-Q \in I$. On pose $\mathbb{C} := A/I$. La classe de $X$ est notée $i$.

### Contre-exemples

**Contre-exemple 1**

Sur $\mathbb{Z}$, la relation $x R y \iff x \le y$ n'est pas une relation d'équivalence (non symétrique). Le concept de "classe" n'a pas de sens et on ne peut pas former un ensemble quotient qui partitionne $\mathbb{Z}$.

**Contre-exemple 2**

Soit $f: \mathbb{Z} \to \{0,1\}$ avec $f(x)=x \pmod 2$. La relation est $x \sim y \iff f(x)=f(y)$. Le quotient $\mathbb{Z}/\sim$ a deux éléments. Si on prend $g: \mathbb{Z} \to \mathbb{Z}$ avec $g(x)=(-1)^x$, elle est constante sur les classes. Mais si on prend $h(x)=x$, elle ne l'est pas, et donc ne factorise pas par le quotient.

### Concepts Connexes

- **Topologie quotient** : Si $E$ est un espace topologique, on peut munir $E/\sim$ d'une topologie (la plus fine) qui rend la projection $\pi$ continue.
- **Espaces projectifs** : L'espace projectif réel $\mathbb{P}^n(\mathbb{R})$ est obtenu comme le quotient de $\mathbb{R}^{n+1} \setminus \{0\}$ par la relation d'équivalence $x \sim y \iff \exists \lambda \in \mathbb{R}^*, x = \lambda y$.
- **Construction de Grothendieck** : Généralisation de la construction de $\mathbb{Z}$ à partir de $\mathbb{N}$ qui permet de construire un groupe à partir d'un monoïde commutatif.

---

## Concept 7: Sous-groupes et Groupes Quotients

### Prérequis

- Groupes, morphismes de groupes.
- Relations d'équivalence et ensembles quotients.

### Définition

Un **sous-groupe** d'un groupe $(G, *, e)$ est un sous-ensemble $H \subset G$ tel que $(H, *, e)$ soit lui-même un groupe. Ceci est équivalent à :

1. $e \in H$ (non-vide)
2. $H$ est stable par la loi $*$ : $\forall h_1, h_2 \in H, h_1 * h_2 \in H$.
3. $H$ est stable par passage à l'inverse : $\forall h \in H, h^{-1} \in H$.

Soit $(A,+)$ un groupe abélien et $B \subset A$ un sous-groupe. La relation $a_1 \sim a_2 \iff a_1-a_2 \in B$ est une relation d'équivalence. L'ensemble quotient $A/B$ peut être muni d'une unique structure de groupe $(A/B, +, \bar{0})$ telle que la projection canonique $\pi: A \to A/B$ soit un morphisme de groupes. La loi est :

$$ \text{cl}(a_1) + \text{cl}(a_2) = \text{cl}(a_1+a_2). $$

Cette structure est bien définie. $A/B$ est le **groupe quotient**.

**Note sur le cas non abélien** : Pour un groupe $G$ quelconque, la construction ne fonctionne que si le sous-groupe $H$ est **normal** (ou distingué), i.e. $\forall g \in G, gHg^{-1}=H$.

### Propriétés Clés

- **Caractérisation d'un sous-groupe** : Un sous-ensemble non vide $H \subset G$ est un sous-groupe si et seulement si $\forall x, y \in H, xy^{-1} \in H$.
- Le noyau $\text{Ker}(f)$ et l'image $\text{Im}(f)$ d'un morphisme de groupes $f: G \to H$ sont des sous-groupes de $G$ et $H$ respectivement.
- **Propriété Universelle du Groupe Quotient** : Soit $A$ un groupe abélien, $B \subset A$ un sous-groupe. Pour tout groupe abélien $C$ et tout morphisme $f:A \to C$ tel que $B \subset \text{Ker}(f)$ (i.e. $f(B)=\{0_C\}$), il existe un unique morphisme de groupes $\bar{f}: A/B \to C$ tel que $f = \bar{f} \circ \pi$.

### Exemples

**Exemple 1 (Sous-groupes)**

- Les sous-groupes de $(\mathbb{Z}, +)$ sont de la forme $n\mathbb{Z}$ pour $n \in \mathbb{N}$.
- Le groupe orthogonal $O_n(\mathbb{R}) = \{M \in \text{GL}_n(\mathbb{R}) \mid M^T M = I_n\}$ est un sous-groupe de $\text{GL}_n(\mathbb{R})$.
- Le groupe unitaire $U_n(\mathbb{C}) = \{M \in \text{GL}_n(\mathbb{C}) \mid M^\dagger M = I_n\}$ (où $M^\dagger = \overline{M^T}$) est un sous-groupe de $\text{GL}_n(\mathbb{C})$.

**Exemple 2 (Groupes Quotients)**

- Le groupe quotient $\mathbb{Z}/n\mathbb{Z}$ est le groupe des entiers modulo $n$. Il est d'ordre $n$.
- Le groupe quotient $\mathbb{R}/\mathbb{Z}$ est isomorphe au groupe des nombres complexes de module 1, $(U(1), \cdot)$, via le morphisme $x \mapsto e^{2i\pi x}$. Le noyau est $\mathbb{Z}$.
- Dans $\text{GL}_n(k)$, le sous-groupe des matrices scalaires $k^* \cdot I_n$ est normal. Le quotient $\text{PGL}_n(k) = \text{GL}_n(k)/(k^* \cdot I_n)$ est le groupe projectif linéaire.

### Contre-exemples

**Contre-exemple 1**

$\mathbb{N}$ est un sous-monoïde de $(\mathbb{Z},+)$, mais pas un sous-groupe car il n'est pas stable par passage à l'inverse.

**Contre-exemple 2**

Dans le groupe symétrique $S_3$, le sous-groupe $H = \{\text{id}, (12)\}$ engendré par la transposition $(12)$ n'est pas normal. Par exemple, $(13)(12)(13)^{-1} = (13)(12)(13) = (23) \notin H$. La construction du groupe quotient $S_3/H$ échoue car la loi n'est pas bien définie.

### Concepts Connexes

- **Théorème de Lagrange** : Si $G$ est un groupe fini et $H$ un sous-groupe, alors l'ordre de $H$ divise l'ordre de $G$. L'entier $|G|/|H|$ est l'indice de $H$ dans $G$.
- **Suites exactes** : Séquences de groupes et de morphismes, $... \to G_{i-1} \stackrel{f_i}{\to} G_i \stackrel{f_{i+1}}{\to} G_{i+1} \to ...$, telles que $\text{Im}(f_i) = \text{Ker}(f_{i+1})$. Une suite exacte courte $0 \to A \stackrel{f}{\to} B \stackrel{g}{\to} C \to 0$ exprime que $C \cong B/\text{Im}(f)$.

---

## Concept 8: Idéaux et Anneaux Quotients

### Prérequis

- Anneaux commutatifs, morphismes d'anneaux.
- Groupes quotients (cas abélien).

### Définition

Soit $A$ un anneau commutatif. Un **idéal** de $A$ est un sous-ensemble $I \subset A$ tel que :

1. $(I,+)$ est un sous-groupe de $(A,+)$.
2. $I$ est "absorbant" pour la multiplication : $\forall a \in A, \forall x \in I, ax \in I$.

Soit $I$ un idéal de $A$. Le groupe quotient additif $A/I$ peut être muni d'une unique structure d'anneau telle que la projection canonique $\pi: A \to A/I$ soit un morphisme d'anneaux. Les opérations sont :

- Addition : $(a+I) + (b+I) = (a+b)+I$
- Multiplication : $(a+I) \cdot (b+I) = (ab)+I$

L'anneau $(A/I, +, \cdot, 0+I, 1+I)$ est l'**anneau quotient**.

### Propriétés Clés

- Le noyau d'un morphisme d'anneaux $f:A \to B$ est un idéal de $A$.
- La multiplication dans l'anneau quotient est bien définie.

    *Preuve* : Supposons $a+I=a'+I$ et $b+I=b'+I$. Alors $a-a' \in I$ et $b-b' \in I$. On doit montrer que $ab+I=a'b'+I$, i.e., $ab-a'b' \in I$. On a $ab-a'b' = ab-a'b+a'b-a'b' = (a-a')b + a'(b-b')$. Puisque $a-a' \in I$ et $b \in A$, $(a-a')b \in I$. Puisque $b-b' \in I$ et $a' \in A$, $a'(b-b') \in I$. Comme $I$ est un sous-groupe additif, la somme est dans $I$. $\square$

- **Propriété Universelle de l'Anneau Quotient** : Soit $A$ un anneau commutatif, $I \subset A$ un idéal. Pour tout anneau $B$ et tout morphisme $f: A \to B$ tel que $I \subset \text{Ker}(f)$ (i.e. $f(I)=\{0_B\}$), il existe un unique morphisme d'anneaux $\bar{f} : A/I \to B$ tel que $f = \bar{f} \circ \pi$.

### Exemples

**Exemple 1**

Les idéaux de $\mathbb{Z}$ sont les sous-groupes $n\mathbb{Z}$. L'anneau quotient $\mathbb{Z}/n\mathbb{Z}$ est l'anneau des entiers modulo $n$. C'est un corps si et seulement si $n$ est premier, car alors l'idéal $n\mathbb{Z}$ est maximal.

**Exemple 2**

Soit $A = \mathbb{R}[X]$ et $I = (X^2+1)$ l'idéal engendré par le polynôme $X^2+1$. L'anneau quotient $A/I$ est isomorphe au corps des nombres complexes $\mathbb{C}$ via le morphisme $\bar{f}: \mathbb{R}[X]/(X^2+1) \to \mathbb{C}$ induit par le morphisme d'évaluation $f: \mathbb{R}[X] \to \mathbb{C}$ défini par $P(X) \mapsto P(i)$. Le noyau de $f$ est précisément $I$.

**Exemple 3**

Dans l'anneau $A = C([0,1], \mathbb{R})$ des fonctions continues sur $[0,1]$, fixons $x_0 \in [0,1]$. L'ensemble $I_{x_0} = \{f \in A \mid f(x_0)=0\}$ est un idéal. L'anneau quotient $A/I_{x_0}$ est isomorphe à $\mathbb{R}$.

### Contre-exemples

**Contre-exemple 1**

$\mathbb{Z}$ est un sous-anneau de $\mathbb{Q}$, mais n'est pas un idéal, car pour $x=2 \in \mathbb{Z}$ et $a=1/3 \in \mathbb{Q}$, $ax = 2/3 \notin \mathbb{Z}$.

**Contre-exemple 2**

Dans l'anneau non commutatif $M_2(\mathbb{R})$, l'ensemble des matrices de la forme $\begin{pmatrix} a & b \\ 0 & 0 \end{pmatrix}$ est un idéal à gauche mais pas un idéal à droite, donc ce n'est pas un idéal (bilatère). La théorie des quotients est plus complexe pour les anneaux non commutatifs.

### Concepts Connexes

- **Idéaux premiers et maximaux** : Un idéal $P \subsetneq A$ est **premier** si $ab \in P \Rightarrow a \in P \text{ ou } b \in P$. Un idéal $M \subsetneq A$ est **maximal** s'il n'y a pas d'idéal strictement entre $M$ et $A$. On a les équivalences :
    - $A/I$ est un anneau intègre $\iff I$ est un idéal premier.
    - $A/I$ est un corps $\iff I$ est un idéal maximal.
- **Géométrie Algébrique** : Le concept d'idéal est central. L'ensemble des idéaux premiers d'un anneau commutatif $A$, noté $\text{Spec}(A)$, peut être muni d'une topologie (de Zariski) et d'un faisceau d'anneaux, le transformant en un objet géométrique appelé schéma affine.
