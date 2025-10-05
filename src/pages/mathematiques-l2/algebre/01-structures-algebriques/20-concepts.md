---
title: Concepts
level: pro
course: Structures algébriques et algèbre bilinéaire
chapter: Structures algébriques
order: 20
layout: '../../../../layouts/Article.astro'
tags:
  [
    'algèbre',
    'structures algébriques',
    'groupe',
    'anneau',
    'corps',
    'morphisme',
    'quotient'
  ]
---

# Structures algébriques (avancé)

---

## Concept 1: Applications et Morphismes d'Ensembles

### Prérequis

- Théorie des ensembles : ensembles, éléments, sous-ensembles, produit cartésien.
- Logique propositionnelle : implications, quantificateurs universels et existentiels.

### Définition

Soient $X$ et $Y$ deux ensembles.

1.  Une **application** $f : X \to Y$, aussi appelée **morphisme d'ensembles**, est la donnée d'un sous-ensemble $\Gamma_f \subset X \times Y$, appelé son **graphe**, vérifiant la condition :

    $$
    \forall x \in X, \exists! y \in Y \text{ tel que } (x, y) \in \Gamma_f.
    $$

    On note alors $y = f(x)$. L'ensemble des applications de $X$ dans $Y$ est noté $\text{Hom}_{\text{Ens}}(X, Y)$ ou $Y^X$.

2.  L'**application identité** sur $X$ est $\text{id}_X : X \to X$ définie par $\text{id}_X(x) = x$ pour tout $x \in X$.

3.  La **composition** de deux applications $f : X \to Y$ et $g : Y \to Z$ est l'application $g \circ f : X \to Z$ définie par $(g \circ f)(x) = g(f(x))$ pour tout $x \in X$.

4.  Une application $f : X \to Y$ est :
    - **injective** si $\forall x_1, x_2 \in X, (f(x_1) = f(x_2) \Rightarrow x_1 = x_2)$. De manière équivalente, pour tout $y \in Y$, la préimage $f^{-1}(\{y\})$ contient au plus un élément.
    - **surjective** si $\forall y \in Y, \exists x \in X \text{ tel que } f(x) = y$. De manière équivalente, l'image $f(X)$ est égale à $Y$.
    - **bijective** si elle est à la fois injective et surjective. De manière équivalente, pour tout $y \in Y$, la préimage $f^{-1}(\{y\})$ contient exactement un élément.

### Propriétés Clés

- **Associativité de la composition** : Pour $f : X \to Y$, $g : Y \to Z$ et $h : Z \to T$, on a $h \circ (g \circ f) = (h \circ g) \circ f$.
- **Élément neutre pour la composition** : Pour toute application $f : X \to Y$, on a $f \circ \text{id}_X = f$ et $\text{id}_Y \circ f = f$.
- **Caractérisation par les inverses** (pour $X, Y$ non vides) :

  1.  $f : X \to Y$ est **surjective** si et seulement si elle admet un **inverse à droite**, i.e., $\exists s : Y \to X$ tel que $f \circ s = \text{id}_Y$. La construction d'un tel $s$ requiert en général l'**Axiome du Choix**.
  2.  $f : X \to Y$ est **injective** si et seulement si elle admet un **inverse à gauche**, i.e., $\exists p : Y \to X$ tel que $p \circ f = \text{id}_X$.
  3.  $f : X \to Y$ est **bijective** si et seulement si elle admet un **inverse** (bilatère), i.e., $\exists g : Y \to X$ tel que $f \circ g = \text{id}_Y$ et $g \circ f = \text{id}_X$. Cet inverse, noté $f^{-1}$, est unique.

  _Démonstration (point 3)_: Si $f$ admet un inverse à gauche $p$ et un inverse à droite $s$, alors $p = p \circ \text{id}_Y = p \circ (f \circ s) = (p \circ f) \circ s = \text{id}_X \circ s = s$. Donc $p=s$ est un inverse bilatère. Réciproquement, si $f$ est bijective, elle est injective et surjective, donc elle admet un inverse à gauche $p$ et un inverse à droite $s$. Par le calcul précédent, $p=s$, qui est l'inverse de $f$. $\Box$

### Exemples

**Exemple 1**

Soit $f: \mathbb{R} \to \mathbb{R}$ définie par $f(x) = x^2$.

- $f$ n'est pas injective car $f(-1) = f(1) = 1$.
- $f$ n'est pas surjective car $\forall x \in \mathbb{R}, f(x) \ge 0$, donc $-1$ n'a pas d'antécédent.
  La restriction $f|_{\mathbb{R}_+}: \mathbb{R}_+ \to \mathbb{R}_+$ est une bijection, d'inverse $g(y) = \sqrt{y}$.

**Exemple 2**

Soit $E$ un ensemble. L'application $\mathcal{P}(E) \to \{0,1\}^E$ qui à un sous-ensemble $A \subset E$ associe sa fonction caractéristique $\chi_A: E \to \{0,1\}$ (définie par $\chi_A(x)=1$ si $x \in A$ et $0$ sinon) est une bijection. C'est une reformulation de la Proposition 1.7.

**Exemple 3**

Soit $f: \mathbb{N} \to \mathbb{Z}$ définie par $f(n) = n$. C'est une injection qui n'est pas une surjection. Elle admet une infinité d'inverses à gauche, par exemple $p: \mathbb{Z} \to \mathbb{N}$ défini par $p(k)=k$ si $k \ge 0$ et $p(k)=0$ (ou n'importe quel autre entier naturel) si $k < 0$.

### Contre-exemples

**Contre-exemple 1**

Le sous-ensemble $R = \{(x, y) \in \mathbb{R}^2 \mid x^2+y^2=1\} \subset \mathbb{R} \times \mathbb{R}$ n'est pas le graphe d'une application de $\mathbb{R}$ dans $\mathbb{R}$. Pour $x=0$, il existe deux valeurs de $y$ (1 et -1) telles que $(0,y) \in R$. Pour $x=2$, il n'existe aucune valeur de $y$.

**Contre-exemple 2**

L'application $f: \mathbb{R} \to \mathbb{R}$ définie par $f(x) = \sin(x)$ est surjective sur $[-1, 1]$, mais sa restriction $f: \mathbb{R} \to [-1,1]$ n'admet pas d'inverse à droite unique. L'Axiome du Choix garantit l'existence d'une telle fonction (une section), par exemple en choisissant pour chaque $y \in [-1,1]$ l'unique antécédent $x \in [-\pi/2, \pi/2]$, ce qui définit la fonction $\arcsin$.

### Concepts Liés

- **Catégorie des Ensembles ($\mathbf{Set}$)** : Les ensembles sont les objets et les applications sont les morphismes. L'associativité et l'existence d'identités sont les axiomes fondateurs d'une catégorie. Les bijections sont les isomorphismes dans cette catégorie.
- **Cardinalité** : Deux ensembles sont en bijection si et seulement s'ils ont le même cardinal.

---

## Concept 2: Structures Algébriques Fondamentales

### Prérequis

- Concept d'application et de loi de composition interne (application $*: X \times X \to X$).
- Propriétés des lois : associativité, commutativité, élément neutre, élément inversible.

### Définitions

Une **loi de composition interne** (ou opération binaire) sur un ensemble $X$ est une application $*: X \times X \to X$.

1.  Un **monoïde** est un triplet $(M, *, e)$ où $M$ est un ensemble, $*$ une loi de composition interne associative sur $M$, et $e \in M$ un élément neutre pour $*$. Il est dit **commutatif** (ou **abélien**) si $*$ est commutative.

2.  Un **groupe** est un monoïde $(G, *, e)$ où tout élément est inversible. C'est-à-dire, $\forall x \in G, \exists y \in G$ tel que $x*y = y*x = e$. L'inverse de $x$ est unique et noté $x^{-1}$.

3.  Un **anneau** est un quintuplet $(A, +, \times, 0, 1)$ où :

    - $(A, +, 0)$ est un groupe abélien.
    - $(A, \times, 1)$ est un monoïde.
    - La multiplication $\times$ est distributive par rapport à l'addition $+$.
    - L'anneau est **commutatif** si $\times$ est commutative.
    - L'anneau est **intègre** si $A \neq \{0\}$ et $\forall (a, b) \in A^2, (ab=0 \Rightarrow a=0 \text{ ou } b=0)$.

4.  Un **corps** est un anneau commutatif $(K, +, \times, 0, 1)$ où $K \neq \{0\}$ et tout élément non nul est inversible pour la multiplication $\times$. Autrement dit, $(K \setminus \{0\}, \times)$ est un groupe.

### Propriétés Clés

- Dans un monoïde, s'il existe, l'élément neutre est unique.
  _Démonstration_: Soient $e, f$ deux neutres. Alors $e = e * f$ (car $f$ neutre) et $e * f = f$ (car $e$ neutre). Donc $e=f$. $\Box$
- Dans un monoïde associatif, si un élément admet un inverse, cet inverse est unique.
  _Démonstration_: Soit $x$ un élément et $y_1, y_2$ deux inverses. Alors $y_1 = y_1 * e = y_1 * (x * y_2) = (y_1 * x) * y_2 = e * y_2 = y_2$. $\Box$
- Dans un anneau $A$, $a \cdot 0 = 0 \cdot a = 0$ pour tout $a \in A$.
  _Démonstration_: $a \cdot 0 = a \cdot (0+0) = a \cdot 0 + a \cdot 0$. En ajoutant l'opposé de $a \cdot 0$ dans le groupe additif $(A,+,0)$, on obtient $0 = a \cdot 0$. $\Box$
- Tout corps est un anneau intègre.
  _Démonstration_: Soit $K$ un corps et $a,b \in K$ avec $ab=0$. Si $a \neq 0$, il existe $a^{-1}$. Alors $a^{-1}(ab) = a^{-1} \cdot 0 = 0$. Mais $a^{-1}(ab) = (a^{-1}a)b = 1 \cdot b = b$. Donc $b=0$. $\Box$

### Exemples

**Exemple 1 (Monoïdes)**

- $(\mathbb{N}, +, 0)$ et $(\mathbb{N}, \times, 1)$ sont des monoïdes commutatifs.
- Si $X$ est un ensemble, $(\text{Hom}_{\text{Ens}}(X,X), \circ, \text{id}_X)$ est un monoïde, non commutatif si $|X| \ge 2$.
- L'ensemble des mots sur un alphabet $A$, muni de la concaténation et du mot vide, est un monoïde libre sur $A$.

**Exemple 2 (Groupes)**

- $(\mathbb{Z}, +, 0)$, $(\mathbb{Q}, +, 0)$, $(\mathbb{R}, +, 0)$, $(\mathbb{C}, +, 0)$ sont des groupes abéliens.
- $(\mathbb{Q}^*, \times, 1)$, $(\mathbb{R}^*, \times, 1)$, $(\mathbb{C}^*, \times, 1)$ sont des groupes abéliens.
- Le groupe symétrique $S_n = \text{Aut}_{\text{Ens}}(\{1,..,n\})$ des bijections de $\{1,..,n\}$ sur lui-même est un groupe non abélien pour $n \ge 3$.
- Si $(M,*,e)$ est un monoïde, l'ensemble $M^\times$ de ses éléments inversibles est un groupe. Par exemple, pour l'anneau $M_n(\mathbb{R})$, le groupe des inversibles est le groupe linéaire $\text{GL}_n(\mathbb{R})$.

**Exemple 3 (Anneaux et Corps)**

- $(\mathbb{Z}, +, \times, 0, 1)$ est un anneau commutatif intègre qui n'est pas un corps.
- $(\mathbb{Q}, +, \times, 0, 1)$, $(\mathbb{R}, +, \times, 0, 1)$ et $(\mathbb{C}, +, \times, 0, 1)$ sont des corps commutatifs.
- L'anneau des matrices carrées $(M_n(A), +, \times, 0, \text{Id})$ sur un anneau commutatif $A$ est un anneau non commutatif pour $n \ge 2$. Il n'est pas intègre (e.g. $\begin{pmatrix} 0 & 1 \\ 0 & 0 \end{pmatrix}^2 = 0$).
- L'anneau $\mathbb{Z}/n\mathbb{Z}$ est un corps si et seulement si $n$ est un nombre premier.

### Contre-exemples

**Contre-exemple 1**

$(\mathbb{N}, +, 0)$ n'est pas un groupe. L'élément $1 \in \mathbb{N}$ n'a pas d'inverse additif dans $\mathbb{N}$.

**Contre-exemple 2**

L'anneau $\mathbb{Z}/6\mathbb{Z}$ n'est pas intègre. On a $\bar{2} \cdot \bar{3} = \bar{6} = \bar{0}$, mais $\bar{2} \neq \bar{0}$ et $\bar{3} \neq \bar{0}$.

### Concepts Liés

- **Théorie des catégories** : Chaque type de structure (monoïdes, groupes, anneaux) forme une catégorie où les objets sont les ensembles munis de la structure et les morphismes sont les applications qui la préservent.
- **Sous-structures** : Sous-monoïde, sous-groupe, sous-anneau, sous-corps.
- **Structures quotients** : Permettent de construire de nouvelles structures à partir d'anciennes (e.g. groupe quotient, anneau quotient).

---

## Concept 3: Morphismes de Structures Algébriques

### Prérequis

- Définitions des structures algébriques (monoïde, groupe, anneau).
- Concept d'application.

### Définition

Un **morphisme** est une application entre deux ensembles munis de la même structure qui préserve cette structure.

1.  **Morphisme de monoïdes** : Soient $(M, *_M, e_M)$ et $(N, *_N, e_N)$ deux monoïdes. Une application $f: M \to N$ est un morphisme de monoïdes si :

    - $f(e_M) = e_N$
    - $\forall m_1, m_2 \in M, f(m_1 *_M m_2) = f(m_1) *_N f(m_2)$

2.  **Morphisme de groupes** : Soient $(G, *_G, e_G)$ et $(H, *_H, e_H)$ deux groupes. Une application $f: G \to H$ est un morphisme de groupes si elle est un morphisme de monoïdes. La condition $f(e_G) = e_H$ est en fait superflue (voir Prop 1.21).

3.  **Morphisme d'anneaux** : Soient $(A, +_A, \times_A, 0_A, 1_A)$ et $(B, +_B, \times_B, 0_B, 1_B)$ deux anneaux. Une application $f: A \to B$ est un morphisme d'anneaux si :
    - $f$ est un morphisme de groupes pour les structures additives $(A, +_A, 0_A) \to (B, +_B, 0_B)$.
    - $f$ est un morphisme de monoïdes pour les structures multiplicatives $(A, \times_A, 1_A) \to (B, \times_B, 1_B)$.

Un **isomorphisme** est un morphisme bijectif dont l'inverse est aussi un morphisme. Un **endomorphisme** est un morphisme d'une structure dans elle-même. Un **automorphisme** est un isomorphisme d'une structure dans elle-même.

### Propriétés Clés

- Si $f: G \to H$ est un morphisme de groupes, alors $f(e_G) = e_H$ et $f(g^{-1}) = (f(g))^{-1}$ pour tout $g \in G$.
  _Démonstration_: $f(e_G) = f(e_G * e_G) = f(e_G) * f(e_G)$. En multipliant par l'inverse de $f(e_G)$ dans $H$, on obtient $e_H = f(e_G)$. Ensuite, $e_H = f(g*g^{-1}) = f(g)*f(g^{-1})$, ce qui prouve par unicité de l'inverse que $f(g^{-1})=(f(g))^{-1}$. $\Box$

- La composition de deux morphismes (de même type) est un morphisme. L'application identité est un morphisme.

- **Noyau et Image** : Soit $f: G \to H$ un morphisme de groupes.
  - Le **noyau** de $f$ est $\text{Ker}(f) = \{g \in G \mid f(g) = e_H\} = f^{-1}(\{e_H\})$.
  - L'**image** de $f$ est $\text{Im}(f) = \{f(g) \mid g \in G\} = f(G)$.
  - $\text{Ker}(f)$ est un sous-groupe de $G$, et $\text{Im}(f)$ est un sous-groupe de $H$.
  - $f$ est injective si et seulement si $\text{Ker}(f) = \{e_G\}$.
  - Si $f: A \to B$ est un morphisme d'anneaux, $\text{Ker}(f)$ est un **idéal** de $A$.

### Exemples

**Exemple 1**

L'application $\exp: (\mathbb{R}, +) \to (\mathbb{R}^*_+, \times)$ est un isomorphisme de groupes. C'est un morphisme car $\exp(x+y) = \exp(x)\exp(y)$. Elle est bijective, d'inverse $\ln: (\mathbb{R}^*_+, \times) \to (\mathbb{R}, +)$.

**Exemple 2**

Pour un anneau commutatif $A$ et $n \ge 1$, l'application déterminant $\det: (\text{GL}_n(A), \times) \to (A^\times, \times)$ est un morphisme de groupes. Son noyau est le groupe spécial linéaire $\text{SL}_n(A) = \{M \in \text{GL}_n(A) \mid \det(M)=1\}$.

**Exemple 3**

Pour $x \in [0, 1]$, l'application d'évaluation $\text{ev}_x: C^0([0,1], \mathbb{R}) \to \mathbb{R}$ définie par $f \mapsto f(x)$ est un morphisme d'anneaux. Son noyau est l'idéal des fonctions s'annulant en $x$.

### Contre-exemples

**Contre-exemple 1**

Soit $f: \mathbb{Z} \to \mathbb{Z}$ définie par $f(n) = n+1$. Ce n'est pas un morphisme de groupes de $(\mathbb{Z},+)$ dans lui-même car $f(0)=1 \neq 0$. De plus, $f(1+1)=f(2)=3$ alors que $f(1)+f(1)=2+2=4$.

**Contre-exemple 2**

Soit $f: M_2(\mathbb{R}) \to \mathbb{R}$ l'application "trace" $\text{Tr}(A)$. C'est un morphisme de groupes additifs, mais pas un morphisme d'anneaux car en général $\text{Tr}(AB) \neq \text{Tr}(A)\text{Tr}(B)$ et $\text{Tr}(\text{Id})=2 \neq 1$.

### Concepts Liés

- **Théorèmes d'isomorphisme** : Ces théorèmes fondamentaux (en particulier le premier) relient la structure des groupes/anneaux quotients à l'image d'un morphisme. La propriété universelle des quotients en est la pierre angulaire.
- **Catégories** : Les objets d'une même structure et leurs morphismes forment une catégorie (e.g., $\mathbf{Grp}$, $\mathbf{Ring}$).

---

## Concept 4: Relations d'Équivalence et Structures Quotients

### Prérequis

- Théorie des ensembles, relations binaires.
- Structures algébriques (groupes, anneaux).

### Définitions

1.  Une **relation d'équivalence** sur un ensemble $E$ est une relation binaire $\sim$ qui est **réflexive** ($x \sim x$), **symétrique** ($x \sim y \Rightarrow y \sim x$) et **transitive** ($x \sim y \text{ et } y \sim z \Rightarrow x \sim z$).

2.  La **classe d'équivalence** d'un élément $x \in E$ est l'ensemble $\text{cl}(x) = \{y \in E \mid y \sim x\}$.

3.  L'**ensemble quotient** $E/\sim$ est l'ensemble de toutes les classes d'équivalence. Les classes d'équivalence forment une **partition** de $E$.

4.  L'application **projection canonique** (ou de classe) est $\pi: E \to E/\sim$ définie par $\pi(x) = \text{cl}(x)$. Elle est surjective.

### Propriétés Clés

**Propriété Universelle du Quotient Ensembliste**
Soit $\sim$ une relation d'équivalence sur $E$. Pour toute application $f: E \to F$ telle que $x \sim y \Rightarrow f(x) = f(y)$, il existe une unique application $\bar{f}: E/\sim \to F$ telle que $f = \bar{f} \circ \pi$.

$$
\begin{CD}
E @>f>> F \\
@V\pi VV @AA\bar{f}A \\
E/\sim
\end{CD}
$$

_Démonstration_: L'unicité impose de poser $\bar{f}(\text{cl}(x)) = f(x)$. Cette définition est bien fondée (ne dépend pas du représentant $x$ choisi) grâce à la condition sur $f$. La factorisation $f = \bar{f} \circ \pi$ est alors vérifiée par construction. $\Box$

**Structures Quotients**
Soit une structure algébrique sur $E$ et une relation d'équivalence $\sim$ sur $E$. On cherche à munir $E/\sim$ de la même structure. Pour une loi $*$, on définit $\text{cl}(x) \bar{*} \text{cl}(y) = \text{cl}(x*y)$. Cette définition est bien fondée si la relation $\sim$ est **compatible** avec la loi $*$, i.e., si $(x_1 \sim x_2 \text{ et } y_1 \sim y_2) \Rightarrow (x_1*y_1 \sim x_2*y_2)$.

- **Groupe Quotient** : Soit $(A,+)$ un groupe abélien et $B$ un sous-groupe. La relation $a_1 \sim a_2 \Leftrightarrow a_1 - a_2 \in B$ est une relation d'équivalence compatible avec $+$. L'ensemble quotient $A/B$ est un groupe abélien pour la loi $\text{cl}(a_1)+\text{cl}(a_2) = \text{cl}(a_1+a_2)$. La projection $\pi: A \to A/B$ est un morphisme de groupes surjectif de noyau $B$.

- **Anneau Quotient** : Soit $A$ un anneau commutatif et $I$ un **idéal** (sous-groupe additif stable par multiplication par tout élément de $A$). La relation $a_1 \sim a_2 \Leftrightarrow a_1 - a_2 \in I$ est compatible avec l'addition et la multiplication. L'ensemble quotient $A/I$ est un anneau commutatif. La projection $\pi: A \to A/I$ est un morphisme d'anneaux surjectif de noyau $I$.

### Exemples

**Exemple 1 : Construction de $\mathbb{Z}$**
$\mathbb{Z} = (\mathbb{N} \times \mathbb{N})/\sim$ où $(a,b) \sim (c,d) \Leftrightarrow a+d = b+c$. La classe de $(a,b)$ est intuitivement l'entier $a-b$.

**Exemple 2 : Construction de $\mathbb{Q}$**
$\mathbb{Q} = (\mathbb{Z} \times (\mathbb{Z} \setminus \{0\}))/\sim$ où $(a,b) \sim (c,d) \Leftrightarrow ad = bc$. La classe de $(a,b)$ est la fraction $a/b$.

**Exemple 3 : Anneau des entiers modulo $n$**
Soit $A = \mathbb{Z}$ et $I = n\mathbb{Z} = \{nk \mid k \in \mathbb{Z}\}$. C'est un idéal. L'anneau quotient $\mathbb{Z}/n\mathbb{Z}$ est l'ensemble des classes de congruence modulo $n$. Les opérations sont l'addition et la multiplication modulo $n$.

**Exemple 4 : Construction de $\mathbb{C}$**
Soit $A = \mathbb{R}[X]$ l'anneau des polynômes à coefficients réels. Soit $I$ l'idéal engendré par le polynôme $X^2+1$, i.e., $I = \{(X^2+1)P(X) \mid P(X) \in \mathbb{R}[X]\}$. L'anneau quotient $\mathbb{C} = \mathbb{R}[X]/I$ est un corps. La classe de $X$ est notée $i$, et elle vérifie $i^2+1=0$, soit $i^2=-1$. Tout élément s'écrit de manière unique $a+bi$ avec $a,b \in \mathbb{R}$.

### Contre-exemples

**Contre-exemple 1**
Dans le groupe non abélien $S_3$, soit $H = \{\text{id}, (12)\}$. Ce n'est pas un sous-groupe distingué. La relation d'équivalence à gauche $g_1 \sim_g g_2 \Leftrightarrow g_1^{-1}g_2 \in H$ n'est pas la même que la relation à droite $g_1 \sim_d g_2 \Leftrightarrow g_1g_2^{-1} \in H$. La loi du quotient n'est pas bien définie. Par exemple, $(13) \sim_g (13)(12) = (123)$ et $(23) \sim_g (23)$, mais $(13)(23) = (132)$ et $(123)(23) = (12)$. Or $(132)$ et $(12)$ ne sont pas équivalents à gauche.

**Contre-exemple 2**
Dans l'anneau $\mathbb{Z}$, le sous-ensemble $\mathbb{N}$ n'est pas un idéal (ce n'est même pas un sous-groupe additif). On ne peut pas former l'anneau quotient $\mathbb{Z}/\mathbb{N}$.

### Concepts Liés

- **Premier Théorème d'Isomorphisme** : C'est une conséquence directe de la propriété universelle. Pour un morphisme $f: G \to H$, on a un isomorphisme $\bar{f}: G/\text{Ker}(f) \xrightarrow{\sim} \text{Im}(f)$.
- **Sous-groupe distingué (ou normal)** : Dans le cas non abélien, pour que le quotient $G/H$ soit un groupe, le sous-groupe $H$ doit être distingué, i.e. $\forall g \in G, gHg^{-1} = H$. Ceci assure que les relations d'équivalence à gauche et à droite coïncident.
- **Topologie quotient** : La notion de quotient se généralise aux espaces topologiques, où elle permet de construire des objets comme le tore ou la sphère par "recollement" des bords d'un carré ou d'un disque.
