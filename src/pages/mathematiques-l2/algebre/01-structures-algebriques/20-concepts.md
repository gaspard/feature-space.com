---
title: B - Concepts
level: pro
course: Structures algébriques et algèbre bilinéaire
chapter: Structures algébriques
order: 20
tags: ["concepts", "mathematics", "pro"]
---

# Structures algébriques (B)

---

## Concept 1: Applications et Propriétés Fondamentales

### Prérequis

- Théorie élémentaire des ensembles (ensembles, sous-ensembles, produit cartésien, appartenance).

### Définition

Soient $X$ et $Y$ deux ensembles.

1.  Une **application** (ou **morphisme d'ensembles**) $f : X \to Y$ est la donnée d'un sous-ensemble $\Gamma_f \subset X \times Y$, appelé son **graphe**, satisfaisant la condition d'existence et d'unicité :

    $$

    \forall x \in X, \exists! y \in Y \text{ tel que } (x, y) \in \Gamma_f.

    $$

    On note alors $y = f(x)$. L'ensemble des applications de $X$ dans $Y$ est noté $\text{Hom}_{\text{Ens}}(X, Y)$ ou $Y^X$.

2.  La **composition** de deux applications $f : X \to Y$ et $g : Y \to Z$ est l'application $g \circ f : X \to Z$ définie par $(g \circ f)(x) = g(f(x))$ pour tout $x \in X$.

3.  Une application $f: X \to Y$ est dite :
    -   **injective** si $\forall x_1, x_2 \in X, (f(x_1) = f(x_2) \implies x_1 = x_2)$. De manière équivalente, pour tout $y \in Y$, la préimage $f^{-1}(\{y\})$ contient au plus un élément.
    -   **surjective** si $\forall y \in Y, \exists x \in X, f(x) = y$. De manière équivalente, l'image $f(X)$ est égale à $Y$.
    -   **bijective** si elle est à la fois injective et surjective. De manière équivalente, pour tout $y \in Y$, la préimage $f^{-1}(\{y\})$ contient exactement un élément.

### Propriétés Clés

-   **Associativité de la composition** : Pour $f : X \to Y$, $g : Y \to Z$ et $h : Z \to T$, on a $h \circ (g \circ f) = (h \circ g) \circ f$.

    *Démonstration.* Soit $x \in X$. On a $[h \circ (g \circ f)](x) = h((g \circ f)(x)) = h(g(f(x)))$. D'autre part, $[(h \circ g) \circ f](x) = (h \circ g)(f(x)) = h(g(f(x)))$. Les deux expressions sont égales pour tout $x \in X$, donc les applications sont égales. $\Box$

-   **Élément neutre** : Pour toute application $f:X \to Y$, on a $f \circ \text{id}_X = f$ et $\text{id}_Y \circ f = f$.

-   **Caractérisation par les inverses** : Soit $f: X \to Y$ une application entre deux ensembles non vides.
    1.  $f$ est surjective si et seulement si elle admet un **inverse à droite** (une section), i.e., $\exists s : Y \to X$ tel que $f \circ s = \text{id}_Y$. La construction d'une telle section requiert en général l'Axiome du Choix.
    2.  $f$ est injective si et seulement si elle admet un **inverse à gauche** (une rétraction), i.e., $\exists p : Y \to X$ tel que $p \circ f = \text{id}_X$.
    3.  $f$ est bijective si et seulement si elle admet un **inverse** (bilatère), i.e., $\exists g : Y \to X$ tel que $f \circ g = \text{id}_Y$ et $g \circ f = \text{id}_X$. Cet inverse est unique et noté $f^{-1}$.

    *Démonstration (3).* Si $g$ est un inverse, $f$ admet un inverse à droite et à gauche, donc est surjective et injective, donc bijective. Réciproquement, si $f$ est bijective, il existe $p$ (inverse à gauche) et $s$ (inverse à droite). Alors $p = p \circ \text{id}_Y = p \circ (f \circ s) = (p \circ f) \circ s = \text{id}_X \circ s = s$. Donc $p=s$ est un inverse bilatère. L'unicité résulte du fait que si $g_1, g_2$ sont deux inverses, $g_1 = g_1 \circ \text{id}_Y = g_1 \circ (f \circ g_2) = (g_1 \circ f) \circ g_2 = \text{id}_X \circ g_2 = g_2$. $\Box$

### Exemples

**Exemple 1**

Soient $E = C^\infty(\mathbb{R}, \mathbb{R})$ l'ensemble des fonctions infiniment dérivables sur $\mathbb{R}$. L'opérateur de dérivation $D: E \to E$, $D(f) = f'$ est surjectif (car toute fonction $C^\infty$ admet une primitive $C^\infty$), mais non injectif (car $D(f) = D(f+c)$ pour toute constante $c$). Un inverse à droite est donné par l'opérateur d'intégration $I_0: E \to E$, $I_0(g)(x) = \int_0^x g(t) dt$. On a bien $D \circ I_0 = \text{id}_E$.

**Exemple 2**

Soit $X$ un ensemble et $Y \subset X$ un sous-ensemble propre non vide. L'injection canonique $i: Y \to X$ définie par $i(y)=y$ est injective. Une rétraction (inverse à gauche) $p: X \to Y$ peut être définie en choisissant un élément $y_0 \in Y$ et en posant $p(x) = x$ si $x \in Y$ et $p(x) = y_0$ si $x \notin Y$.

**Exemple 3**

L'application exponentielle $\exp : \mathbb{C} \to \mathbb{C}^*$ est un morphisme de groupes surjectif. Elle n'est pas injective, son noyau est $2i\pi\mathbb{Z}$. Une section (inverse à droite) est une détermination du logarithme complexe, par exemple le logarithme principal défini sur $\mathbb{C} \setminus \mathbb{R}_-$.

### Contre-exemples

**Contre-exemple 1**

L'application $f: \mathbb{R} \to \mathbb{R}$ définie par $f(x) = \sin(x)$ n'est ni injective ($f(0)=f(\pi)=0$) ni surjective (l'image est $[-1,1] \neq \mathbb{R}$). Elle n'admet donc ni inverse à gauche, ni inverse à droite.

**Contre-exemple 2**

Une relation qui n'est pas une application. Soit $X = \{1, 2\}$, $Y = \{a, b\}$. Le sous-ensemble $R = \{(1, a), (1, b)\} \subset X \times Y$ ne définit pas une application car l'élément $1 \in X$ est associé à deux éléments distincts de $Y$. Le sous-ensemble $S = \{(1, a)\} \subset X \times Y$ ne définit pas une application de $X$ dans $Y$ car l'élément $2 \in X$ n'a pas d'image.

### Concepts Liés

-   **Catégorie des ensembles ($\mathbf{Set}$)** : Les ensembles sont les objets et les applications sont les morphismes. Les bijections sont les isomorphismes dans cette catégorie.
-   **Cardinalité** : Deux ensembles sont en bijection si et seulement si ils ont le même cardinal.

### Applications

-   En informatique théorique, la calculabilité est étudiée via les fonctions calculables, qui sont une sous-classe des applications de $\mathbb{N}^k$ dans $\mathbb{N}$.
-   En cryptographie, les bijections (permutations) sur des ensembles finis sont des composants fondamentaux des algorithmes de chiffrement par blocs.

---

## Concept 2: Structures Algébriques Fondamentales (Monoïde, Groupe)

### Prérequis

-   Ensembles et applications.
-   Produit cartésien.

### Définition

1.  Une **opération binaire** (ou loi de composition interne) sur un ensemble $M$ est une application $*: M \times M \to M$.
2.  Un couple $(M, *)$ est un **monoïde** si la loi $*$ est associative ($\forall x,y,z \in M, (x*y)*z = x*(y*z)$) et possède un **élément neutre** ($\exists e \in M, \forall x \in M, e*x = x*e = x$). Si la loi est aussi commutative ($\forall x,y \in M, x*y = y*x$), le monoïde est dit **commutatif** ou **abélien**.
3.  Un triplet $(G, *, e)$ est un **groupe** si c'est un monoïde où tout élément est **inversible** ($\forall x \in G, \exists y \in G, x*y = y*x = e$).

### Propriétés Clés

-   **Unicité de l'élément neutre** : Si $e$ et $f$ sont deux éléments neutres dans un monoïde $(M,*)$, alors $e=f$.

    *Démonstration.* $e = e*f$ (car $f$ neutre) et $e*f=f$ (car $e$ neutre). Donc $e=f$. $\Box$

-   **Unicité de l'inverse** : Dans un monoïde $(M,*)$, si un élément $x$ possède un inverse, celui-ci est unique.

    *Démonstration.* Soient $y_1, y_2$ deux inverses de $x$. Alors $y_1 = y_1*e = y_1*(x*y_2) = (y_1*x)*y_2 = e*y_2 = y_2$. $\Box$

-   **Groupe des inversibles** : Soit $(M, *, e)$ un monoïde. L'ensemble $M^\times$ des éléments inversibles de $M$ forme un groupe pour la loi $*$.

    *Démonstration.* $e \in M^\times$ car $e*e=e$. Si $x,y \in M^\times$, alors $(x*y)*(y^{-1}*x^{-1}) = x*(y*y^{-1})*x^{-1} = x*e*x^{-1}=x*x^{-1}=e$, donc $x*y \in M^\times$ et $(x*y)^{-1} = y^{-1}*x^{-1}$. La stabilité par passage à l'inverse est triviale : $(x^{-1})^{-1}=x$. L'associativité est héritée de $M$. Donc $(M^\times, *)$ est un groupe. $\Box$

### Exemples

**Exemple 1**

Soit $X$ un ensemble. L'ensemble $\text{End}(X) = X^X$ des applications de $X$ dans $X$, muni de la composition $\circ$ et de l'application identité $\text{id}_X$, forme un monoïde $(\text{End}(X), \circ, \text{id}_X)$. Ce monoïde est non-commutatif si $|X| \ge 2$. Le groupe des inversibles est le **groupe symétrique** $\text{Aut}(X) = S_X$, constitué des bijections de $X$ sur lui-même. Si $X = \{1, \dots, n\}$, on le note $S_n$.

**Exemple 2**

Soit $A$ un alphabet (un ensemble fini). L'ensemble $A^*$ des mots finis sur $A$ (suites finies d'éléments de $A$), y compris le mot vide $\epsilon$, muni de l'opération de concaténation, forme le **monoïde libre** sur $A$. L'élément neutre est $\epsilon$. Ce monoïde est non-commutatif si $|A| \ge 2$. Le groupe des inversibles est trivial: $(A^*)^\times = \{\epsilon\}$.

**Exemple 3**

L'ensemble des matrices carrées $n \times n$ à coefficients dans un corps $\mathbb{K}$, noté $M_n(\mathbb{K})$, muni de la multiplication matricielle et de la matrice identité $I_n$, est un monoïde. Le groupe des inversibles est le **groupe général linéaire** $\text{GL}_n(\mathbb{K})$.

### Contre-exemples

**Contre-exemple 1**

$(\mathbb{N}, +, 0)$ est un monoïde commutatif, mais pas un groupe car seul $0$ est inversible.

**Contre-exemple 2**

L'ensemble des vecteurs de $\mathbb{R}^3$ muni du produit vectoriel $\times$ n'est pas un monoïde. La loi n'est pas associative (elle est anti-commutative et satisfait l'identité de Jacobi). Il n'y a pas d'élément neutre.

### Concepts Liés

-   **Semi-groupe** : Un ensemble muni d'une loi associative (un monoïde sans élément neutre requis).
-   **Morphisme de groupe/monoïde** : Une application $f: (M, *_M) \to (N, *_N)$ préservant la structure, i.e., $f(m_1 *_M m_2) = f(m_1) *_N f(m_2)$ et $f(e_M) = e_N$.
-   **Action de groupe** : Un morphisme d'un groupe $G$ dans le groupe symétrique $S_X$ d'un ensemble $X$.

### Applications

-   La théorie des groupes est fondamentale en physique (e.g., groupes de symétrie en mécanique quantique, groupe de Lorentz en relativité), en chimie (groupes ponctuels de symétrie des molécules) et en cryptographie (e.g., cryptographie sur les courbes elliptiques).
-   Les monoïdes libres sont fondamentaux en informatique théorique, pour la modélisation des langages formels.

---

## Concept 3: Anneaux et Corps

### Prérequis

-   Groupes abéliens, Monoïdes.

### Définition

1.  Un **anneau** $(A, +, \times, 0, 1)$ est un ensemble $A$ muni de deux lois binaires $+$ et $\times$ tel que :
    -   $(A, +, 0)$ est un groupe abélien.
    -   $(A, \times, 1)$ est un monoïde.
    -   La multiplication $\times$ est **distributive** par rapport à l'addition $+$, i.e., $\forall a,b,c \in A, a \times (b+c) = (a \times b) + (a \times c)$ et $(b+c) \times a = (b \times a) + (c \times a)$.

    L'anneau est dit **commutatif** si la loi $\times$ est commutative.

2.  Un anneau commutatif $A$ est dit **intègre** s'il est non nul ($1 \neq 0$) et ne possède pas de **diviseurs de zéro**, i.e., $\forall a,b \in A, (ab=0 \implies a=0 \text{ ou } b=0)$.

3.  Un **corps** $(K, +, \times, 0, 1)$ est un anneau commutatif non nul dans lequel tout élément non nul est inversible pour la multiplication. Autrement dit, le groupe des inversibles $K^\times$ est égal à $K \setminus \{0\}$.

### Propriétés Clés

-   Dans un anneau $A$, $\forall a \in A, a \cdot 0_A = 0_A \cdot a = 0_A$.

    *Démonstration.* $a \cdot 0_A = a \cdot (0_A + 0_A) = a \cdot 0_A + a \cdot 0_A$. En ajoutant l'opposé de $a \cdot 0_A$ dans le groupe $(A,+)$, on obtient $0_A = a \cdot 0_A$. $\Box$

-   Un corps est toujours un anneau intègre.

    *Démonstration.* Soit $K$ un corps et $a,b \in K$ avec $ab=0$. Si $a \neq 0$, $a$ est inversible. Alors $a^{-1}(ab) = a^{-1} \cdot 0 = 0$. Mais $a^{-1}(ab) = (a^{-1}a)b = 1 \cdot b = b$. Donc $b=0$. $\Box$

-   **Théorème de Wedderburn (petit)**: Tout anneau intègre fini est un corps.

    *Démonstration (esquisse).* Soit $A$ un anneau intègre fini et $a \in A \setminus \{0\}$. L'application $\phi_a: A \to A$ définie par $\phi_a(x) = ax$ est injective car $A$ est intègre ($ax=ay \implies a(x-y)=0 \implies x-y=0$). Comme $A$ est fini, une application injective de $A$ dans $A$ est aussi surjective. Il existe donc $x \in A$ tel que $ax=1_A$, donc $a$ est inversible. $\Box$

### Exemples

**Exemple 1**

$(\mathbb{Z}, +, \times)$ est l'exemple prototypique d'anneau commutatif intègre qui n'est pas un corps. Ses seuls éléments inversibles sont $1$ et $-1$.

**Exemple 2**

Pour $n > 1$, l'anneau des matrices $(M_n(\mathbb{R}), +, \times)$ est un anneau non commutatif. Il n'est pas intègre, par exemple $\begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix} \begin{pmatrix} 0 & 0 \\ 0 & 1 \end{pmatrix} = \begin{pmatrix} 0 & 0 \\ 0 & 0 \end{pmatrix}$.

**Exemple 3**

L'ensemble $C^0([0, 1], \mathbb{R})$ des fonctions continues sur $[0, 1]$ à valeurs réelles, muni de l'addition et de la multiplication point par point, est un anneau commutatif. Il n'est pas intègre : si $f(x) = \max(0, x-1/2)$ et $g(x) = \max(0, 1/2-x)$, alors $f \neq 0$, $g \neq 0$ mais $fg=0$.

### Contre-exemples

**Contre-exemple 1**

$(\mathbb{N}, +, \times)$ n'est pas un anneau car $(\mathbb{N}, +)$ n'est pas un groupe.

**Contre-exemple 2**

L'anneau quotient $\mathbb{Z}/6\mathbb{Z}$ n'est pas intègre car $\bar{2} \cdot \bar{3} = \bar{6} = \bar{0}$ alors que $\bar{2} \neq \bar{0}$ et $\bar{3} \neq \bar{0}$.

### Concepts Liés

-   **Idéal** : un sous-groupe additif $I$ d'un anneau $A$ tel que $\forall a \in A, \forall x \in I, ax \in I$. Les idéaux sont aux anneaux ce que les sous-groupes normaux sont aux groupes.
-   **Corps gauche (skew-field)** : un anneau dans lequel tout élément non nul est inversible (la commutativité de la multiplication n'est pas requise). L'exemple le plus connu est celui des quaternions de Hamilton $\mathbb{H}$.
-   **Morphisme d'anneaux** : une application préservant les deux lois et les deux éléments neutres.

### Applications

-   Les corps finis sont d'une importance capitale en théorie des codes (codes correcteurs d'erreurs) et en cryptographie.
-   La théorie des anneaux, en particulier des anneaux de polynômes, est le fondement de la géométrie algébrique.

---

## Concept 4: Relations d'Équivalence et Ensembles Quotients

### Prérequis

-   Théorie des ensembles, relations binaires.

### Définition

1.  Une **relation d'équivalence** sur un ensemble $E$ est une relation binaire $\sim \subset E \times E$ qui est :
    -   **réflexive** : $\forall x \in E, x \sim x$.
    -   **symétrique** : $\forall x, y \in E, (x \sim y \implies y \sim x)$.
    -   **transitive** : $\forall x, y, z \in E, (x \sim y \text{ et } y \sim z \implies x \sim z)$.
2.  La **classe d'équivalence** d'un élément $x \in E$ est l'ensemble $\text{cl}(x) = \{y \in E \mid y \sim x\}$.
3.  L'**ensemble quotient** de $E$ par $\sim$ est l'ensemble des classes d'équivalence, noté $E/\sim = \{\text{cl}(x) \mid x \in E\}$. C'est un sous-ensemble de $\mathcal{P}(E)$.
4.  L'application **projection canonique** (ou de classe) est $\pi : E \to E/\sim$ définie par $\pi(x) = \text{cl}(x)$. Elle est surjective par construction.

### Propriétés Clés

-   **Partition** : L'ensemble quotient $E/\sim$ forme une partition de $E$, c'est-à-dire que les classes d'équivalence sont non vides, deux à deux disjointes, et leur union est $E$.

    *Démonstration.* $x \in \text{cl}(x)$ par réflexivité, donc les classes sont non vides et leur union est $E$. Soient $\text{cl}(x_1)$ et $\text{cl}(x_2)$ deux classes. Si leur intersection est non vide, soit $y \in \text{cl}(x_1) \cap \text{cl}(x_2)$. Alors $y \sim x_1$ et $y \sim x_2$. Par symétrie, $x_1 \sim y$. Par transitivité, $x_1 \sim x_2$. Montrons que $\text{cl}(x_1) = \text{cl}(x_2)$. Soit $z \in \text{cl}(x_1)$, donc $z \sim x_1$. Comme $x_1 \sim x_2$, par transitivité $z \sim x_2$, donc $z \in \text{cl}(x_2)$. Ainsi $\text{cl}(x_1) \subset \text{cl}(x_2)$. L'inclusion inverse est symétrique. Donc les classes sont soit disjointes, soit égales. $\Box$

-   **Propriété Universelle du Quotient** : Soit $\sim$ une relation d'équivalence sur $E$. Pour tout ensemble $F$ et toute application $f : E \to F$ qui est constante sur les classes d'équivalence (i.e., $x \sim y \implies f(x) = f(y)$), il existe une unique application $\bar{f} : E/\sim \to F$ telle que $f = \bar{f} \circ \pi$.

    ```

          f

      E -----> F

      |        ^

      | π      | ∃!f̄

      v        |

      E/~ -----

    ```

    *Démonstration.* L'unicité est claire : si $\bar{f}$ existe, alors $\bar{f}(\text{cl}(x)) = \bar{f}(\pi(x)) = f(x)$. Pour l'existence, on définit $\bar{f}(\text{cl}(x)) = f(x)$. Cette définition est bien fondée car si $\text{cl}(x) = \text{cl}(y)$, alors $x \sim y$, et par hypothèse $f(x)=f(y)$. La relation $f = \bar{f} \circ \pi$ est vérifiée par construction. $\Box$

### Exemples

**Exemple 1 : Construction de $\mathbb{Z}$**

On définit sur $\mathbb{N} \times \mathbb{N}$ la relation $(a,b) \sim (c,d) \iff a+d=b+c$. C'est une relation d'équivalence. L'ensemble quotient $(\mathbb{N} \times \mathbb{N})/\sim$ est l'ensemble $\mathbb{Z}$ des entiers relatifs. La classe de $(a,b)$ est notée $a-b$.

**Exemple 2 : Construction de $\mathbb{Q}$**

On définit sur $\mathbb{Z} \times (\mathbb{Z}\setminus\{0\})$ la relation $(p,q) \sim (r,s) \iff ps=rq$. C'est une relation d'équivalence. L'ensemble quotient $(\mathbb{Z} \times (\mathbb{Z}\setminus\{0\}))/\sim$ est l'ensemble $\mathbb{Q}$ des nombres rationnels. La classe de $(p,q)$ est notée $p/q$.

**Exemple 3 : Construction de $\mathbb{R}$**

Soit $C$ l'ensemble des suites de Cauchy de nombres rationnels. On définit $(x_n) \sim (y_n) \iff \lim_{n \to \infty} (x_n - y_n) = 0$. C'est une relation d'équivalence. L'ensemble quotient $C/\sim$ est l'ensemble $\mathbb{R}$ des nombres réels. C'est un exemple de complétion d'un espace métrique.

### Contre-exemples

**Contre-exemple 1**

La relation d'ordre $\le$ sur $\mathbb{Z}$ n'est pas une relation d'équivalence. Elle est réflexive et transitive, mais pas symétrique ($3 \le 5$ mais $5 \not\le 3$).

**Contre-exemple 2**

Sur $\mathbb{R}$, la relation $x \sim y \iff |x-y| \le 1$ n'est pas une relation d'équivalence. Elle est réflexive et symétrique, mais pas transitive ($0 \sim 0.7$ et $0.7 \sim 1.4$, mais $0 \not\sim 1.4$).

### Concepts Liés

-   **Fibres d'une application** : Pour une application $f:E \to F$, la relation $x \sim y \iff f(x)=f(y)$ est une relation d'équivalence. Les classes d'équivalence sont les fibres (ou préimages) $f^{-1}(\{z\})$ pour $z \in \text{Im}(f)$. Le premier théorème d'isomorphisme stipule que $E/\sim$ est en bijection avec $\text{Im}(f)$.
-   **Espaces topologiques quotients** : Si $E$ est un espace topologique, on peut munir $E/\sim$ de la topologie la plus fine rendant la projection $\pi$ continue.

### Applications

-   La construction de structures mathématiques complexes à partir de structures plus simples est omniprésente (e.g., construction des nombres, des groupes/anneaux quotients, des espaces projectifs en géométrie).
-   En topologie algébrique, des espaces comme le tore ou la bouteille de Klein sont construits comme des quotients de carrés.

---

## Concept 5: Sous-groupes, Idéaux et Structures Quotients

### Prérequis

-   Groupes, Anneaux, Relations d'équivalence.

### Définition

1.  **Sous-groupe** : Un sous-ensemble non vide $H$ d'un groupe $(G, *)$ est un sous-groupe s'il est stable pour la loi et l'inversion. Ceci est équivalent à la condition : $\forall x, y \in H, x * y^{-1} \in H$.
2.  **Noyau d'un morphisme de groupes** : Pour $f: G \to H$ un morphisme de groupes, $\text{Ker}(f) = \{g \in G \mid f(g) = e_H\}$. C'est un sous-groupe de $G$.
3.  **Idéal** : Un sous-ensemble $I$ d'un anneau commutatif $A$ est un idéal si $(I, +)$ est un sous-groupe de $(A, +)$ et si $I$ est "absorbant" pour la multiplication : $\forall a \in A, \forall x \in I, ax \in I$.
4.  **Noyau d'un morphisme d'anneaux** : Pour $f: A \to B$ un morphisme d'anneaux, $\text{Ker}(f) = \{a \in A \mid f(a) = 0_B\}$. C'est un idéal de $A$.

### Propriétés Clés

-   **Groupe Quotient** (cas abélien) : Soit $(A, +)$ un groupe abélien et $B$ un sous-groupe. La relation $a_1 \sim a_2 \iff a_1 - a_2 \in B$ est une relation d'équivalence. L'ensemble quotient $A/B$ peut être muni d'une unique structure de groupe $(a_1+B) + (a_2+B) = (a_1+a_2)+B$ telle que la projection $\pi: A \to A/B$ soit un morphisme de groupes.

    *Pointeur*: Dans le cas non abélien, la construction ne fonctionne que si le sous-groupe $H$ est **normal** (ou distingué), i.e., $\forall g \in G, gHg^{-1} = H$. Le noyau d'un morphisme est toujours un sous-groupe normal.

-   **Anneau Quotient** : Soit $A$ un anneau commutatif et $I$ un idéal. Le groupe quotient additif $A/I$ peut être muni d'une unique structure d'anneau avec la multiplication $(a_1+I) \cdot (a_2+I) = (a_1a_2)+I$, telle que la projection $\pi: A \to A/I$ soit un morphisme d'anneaux. La multiplication est bien définie car si $a_1-a'_1 \in I$ et $a_2-a'_2 \in I$, alors $a_1a_2 - a'_1a'_2 = a_1(a_2-a'_2) + (a_1-a'_1)a'_2 \in I$.

-   **Propriété Universelle du Quotient (Groupes Abéliens)** : Soit $f: A \to C$ un morphisme de groupes abéliens tel que $B \subset \text{Ker}(f)$. Il existe un unique morphisme $\bar{f}: A/B \to C$ tel que $f = \bar{f} \circ \pi$.
-   **Propriété Universelle du Quotient (Anneaux)** : Soit $f: A \to B$ un morphisme d'anneaux tel que $I \subset \text{Ker}(f)$. Il existe un unique morphisme $\bar{f}: A/I \to B$ tel que $f = \bar{f} \circ \pi$.
-   Ces propriétés mènent aux **théorèmes d'isomorphisme**. Par exemple, pour un morphisme surjectif $f: A \to B$, on a $A/\text{Ker}(f) \cong B$.

### Exemples

**Exemple 1**

Dans le groupe $(\mathbb{Z}, +)$, l'ensemble $n\mathbb{Z}$ des multiples de $n$ est un sous-groupe (et un idéal de l'anneau $\mathbb{Z}$). Le groupe quotient $\mathbb{Z}/n\mathbb{Z}$ est le groupe des entiers modulo $n$. Il est aussi un anneau quotient.

**Exemple 2**

Soit $A = C(\mathbb{R}, \mathbb{R})$ l'anneau des fonctions continues. Soit $S \subset \mathbb{R}$ un sous-ensemble. L'ensemble $I_S = \{f \in A \mid \forall x \in S, f(x) = 0\}$ est un idéal de $A$. L'anneau quotient $A/I_S$ peut être interprété comme l'anneau des restrictions de fonctions continues à $S$.

**Exemple 3 : Construction de $\mathbb{C}$**

Soit $\mathbb{R}[X]$ l'anneau des polynômes à coefficients réels. Le polynôme $X^2+1$ engendre un idéal $I = (X^2+1) = \{(X^2+1)P(X) \mid P(X) \in \mathbb{R}[X]\}$. L'anneau quotient $\mathbb{C} := \mathbb{R}[X]/I$ est un corps. Dans cet anneau, la classe de $X$, notée $i$, vérifie $i^2+1=0$. Tout élément s'écrit de manière unique $a+bi$ avec $a,b \in \mathbb{R}$.

### Contre-exemples

**Contre-exemple 1**

Dans l'anneau $\mathbb{Q}$, le sous-ensemble $\mathbb{Z}$ est un sous-anneau, mais pas un idéal, car par exemple $2 \in \mathbb{Z}$, $1/3 \in \mathbb{Q}$, mais $(1/3) \cdot 2 = 2/3 \notin \mathbb{Z}$.

**Contre-exemple 2**

Dans le groupe non abélien $S_3$, le sous-groupe $H = \{\text{id}, (12)\}$ n'est pas normal car $(13)H(13)^{-1} = \{\text{id}, (23)\} \neq H$. Le quotient $S_3/H$ n'est pas un groupe.

### Concepts Liés

-   **Théorèmes d'isomorphisme** : formalisent la relation entre quotients, morphismes, noyaux et images.
-   **Idéaux premiers et maximaux** : Pour un anneau commutatif $A$, $A/I$ est un anneau intègre si et seulement si $I$ est un idéal premier. $A/I$ est un corps si et seulement si $I$ est un idéal maximal.
-   **Suite exacte courte** : une séquence de morphismes de groupes $0 \to A \xrightarrow{f} B \xrightarrow{g} C \to 0$ est exacte si $\text{Im}(f) = \text{Ker}(g)$, $f$ est injective et $g$ est surjective. Cela encode la relation $C \cong B/A$.

### Applications

-   En théorie de Galois, les extensions de corps sont étudiées via les groupes de Galois, et le théorème fondamental relie les sous-groupes aux corps intermédiaires.
-   En géométrie algébrique, les points d'une variété algébrique correspondent aux idéaux maximaux de l'anneau des fonctions sur cette variété (Nullstellensatz de Hilbert).

---

## Concept 6: Entiers Naturels et Principe de Récurrence

### Prérequis

-   Ensembles, applications.

### Définition

**Axiome des Entiers Naturels** : Il existe un triplet $(\mathbb{N}, S, 0)$ où $\mathbb{N}$ est un ensemble, $0$ un élément de $\mathbb{N}$, et $S: \mathbb{N} \to \mathbb{N}$ une application (le "successeur"), vérifiant la **propriété universelle** suivante :

Pour tout triplet $(X, T, x_0)$ où $X$ est un ensemble, $x_0 \in X$ et $T: X \to X$ est une application, il existe une **unique** application $f: \mathbb{N} \to X$ telle que $f(0) = x_0$ et $f \circ S = T \circ f$.

Ce diagramme commute :

```

      S

  N -----> N

  |        |

  | f      | f

  v        v

  X --T--> X

```

En termes de théorie des catégories, $(\mathbb{N}, S, 0)$ est un **objet initial** dans la catégorie des "systèmes dynamiques discrets".

### Propriétés Clés

Ce triplet vérifie les **Axiomes de Peano** :

1.  $0$ n'est le successeur d'aucun entier : $\forall n \in \mathbb{N}, S(n) \neq 0$.
2.  $S$ est injective : $\forall n, m \in \mathbb{N}, (S(n) = S(m) \implies n=m)$.
3.  **Principe de récurrence** : Si une partie $P \subset \mathbb{N}$ contient $0$ et est stable par $S$ (i.e. $\forall n \in P, S(n) \in P$), alors $P = \mathbb{N}$.

*Démonstration du principe de récurrence (3) à partir de la propriété universelle.*

Soit $P \subset \mathbb{N}$ vérifiant les hypothèses. Soit $X = \{a, b\}$ avec $T(a)=a$ et $T(b)=b$. Définissons $f: \mathbb{N} \to X$ par $f(n)=a$ si $n \in P$ et $f(n)=b$ si $n \notin P$.

Définissons aussi $g: \mathbb{N} \to X$ par $g(n) = a$ pour tout $n$.

On a $g(0) = a$ et $g(S(n)) = a = T(g(n))$. Donc $g$ est une application qui satisfait la propriété universelle pour $(X, T, a)$.

Considérons $f$. On a $f(0)=a$ car $0 \in P$. De plus, si $n \in P$, alors $S(n) \in P$, donc $f(S(n))=a=T(a)=T(f(n))$. Si $P \neq \mathbb{N}$, soit $n_0$ le premier entier n'appartenant pas à $P$ (existence par le bon ordre, voir ci-dessous). Alors $n_0-1 \in P$ et $f(S(n_0-1))=f(n_0)=b$ tandis que $T(f(n_0-1))=T(a)=a$. Pour éviter cette complexité, on peut utiliser l'unicité plus simplement.

Soit $i: P \to \mathbb{N}$ l'inclusion et $S_P: P \to P$ la restriction de $S$. Par la propriété universelle appliquée à $(P, S_P, 0)$, il existe une unique application $u: \mathbb{N} \to P$ telle que $u(0)=0$ et $u \circ S = S_P \circ u$. L'inclusion $i: P \to \mathbb{N}$ vérifie $i(0)=0$ et $i \circ S_P = S \circ i$. La composée $i \circ u : \mathbb{N} \to \mathbb{N}$ vérifie $(i \circ u)(0)=0$ et $(i \circ u) \circ S = i \circ S_P \circ u = S \circ (i \circ u)$. Par unicité de la propriété universelle appliquée à $(\mathbb{N}, S, 0)$, $i \circ u$ doit être l'identité sur $\mathbb{N}$. Ceci implique que $i$ est surjective, donc $P=\mathbb{N}$. $\Box$

-   **Principe de Bon Ordre** : Toute partie non vide de $\mathbb{N}$ possède un plus petit élément.

    *Démonstration.* Par l'absurde. Soit $A \subset \mathbb{N}$ une partie non vide sans plus petit élément. Soit $P = \mathbb{N} \setminus A$. On montre par récurrence que $P=\mathbb{N}$.

    - Base: $0 \in P$. Si $0 \notin P$, alors $0 \in A$. Comme $0$ est le plus petit élément de $\mathbb{N}$, ce serait le plus petit élément de $A$, contradiction. Donc $0 \in P$.
    - Hérédité: Supposons que $\{0, 1, \dots, n\} \subset P$. Alors $\{0, 1, \dots, n\} \cap A = \emptyset$. Si $n+1 \in A$, ce serait le plus petit élément de $A$, contradiction. Donc $n+1 \in P$.

    Par récurrence forte, $P = \mathbb{N}$, donc $A$ est vide. Contradiction. $\Box$

### Exemples

**Exemple 1 : Définition de l'addition**

Pour tout $m \in \mathbb{N}$, on définit l'application "additionner $m$", notée $add_m: \mathbb{N} \to \mathbb{N}$, comme l'unique application $f$ de la propriété universelle pour le triplet $(\mathbb{N}, S, m)$. Ainsi, $add_m(0) = m$ et $add_m(S(n)) = S(add_m(n))$. On note $m+n := add_m(n)$. On a donc $m+0 = m$ et $m+S(n) = S(m+n)$.

**Exemple 2 : Définition de la factorielle**

On veut définir $f: \mathbb{N} \to \mathbb{N}$ par $n!$. On utilise la propriété universelle sur $X = \mathbb{N} \times \mathbb{N}$ avec $x_0 = (0,1)$ et $T(k, v) = (S(k), S(k) \cdot v)$. Il existe une unique application $g: \mathbb{N} \to X$ telle que $g(0)=(0,1)$ et $g \circ S = T \circ g$. Si $g(n)=(n, n!)$, alors $g(S(n)) = (S(n), (S(n))!)$ et $T(g(n)) = T(n,n!) = (S(n), S(n) \cdot n!)$. Cela définit la factorielle par récurrence.

**Exemple 3**

Démontrer par récurrence que $\sum_{k=0}^n k = \frac{n(n+1)}{2}$.

- Base ($n=0$) : $0 = 0(1)/2$, vrai.
- Hérédité : Supposons la formule vraie pour $n$. Alors $\sum_{k=0}^{n+1} k = (\sum_{k=0}^n k) + (n+1) = \frac{n(n+1)}{2} + (n+1) = (n+1)(\frac{n}{2}+1) = \frac{(n+1)(n+2)}{2}$. La formule est vraie pour $n+1$. Par récurrence, elle est vraie pour tout $n \in \mathbb{N}$.

### Contre-exemples

**Contre-exemple 1**

$(\mathbb{Z}, S, 0)$ avec $S(n)=n+1$ ne vérifie pas la propriété universelle. L'application $S$ n'est pas injective sur l'ensemble des prédécesseurs de 0. L'axiome 1 de Peano est violé ($S(-1)=0$).

**Contre-exemple 2**

Considérons $\mathbb{N} \cup \{ \infty \}$, avec $S(n)=n+1$ pour $n \in \mathbb{N}$ et $S(\infty)=\infty$. L'axiome de récurrence est violé. La partie $P = \mathbb{N}$ contient 0 et est stable par $S$, mais $P \neq \mathbb{N} \cup \{\infty\}$.

### Concepts Liés

-   **Types de données inductifs** : En informatique théorique et dans les assistants de preuve (Coq, Agda), les entiers naturels sont un exemple fondamental de type inductif, défini par un constructeur de base (`zero`) et un constructeur récursif (`succ`).
-   **Ordinaux transfinis** : Le principe de récurrence peut être généralisé aux ensembles bien ordonnés, menant à la récurrence transfinie.

### Applications

-   La récurrence est un outil de preuve fondamental en mathématiques et en informatique (correction de programmes, analyse d'algorithmes).
-   La définition récursive des fonctions, justifiée par la propriété universelle, est la base de la programmation fonctionnelle.