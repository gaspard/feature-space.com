---
title: '0 - Quiz de Base'
layout: '../../../../layouts/Layout.astro'
quizId: 'algebre-base-01'
order: 1
level: basic
chapter: Structures algébriques (Niveau de base)
course: "Structures algébriques et algèbre bilinéaire"
---

# Quiz: Structures algébriques (Niveau de base)

---

#### Question 1 : Définition d'une application

Qu'est-ce qui définit une application (ou fonction) $f$ d'un ensemble de départ $X$ vers un ensemble d'arrivée $Y$ ?

- [x] **A)** Un procédé qui associe à chaque élément de $X$ un unique élément de $Y$.
- [ ] **B)** Un procédé qui associe à certains éléments de $X$ un ou plusieurs éléments de $Y$.
- [ ] **C)** Un procédé qui associe chaque élément de $Y$ à un unique élément de $X$.
- [ ] **D)** Un sous-ensemble quelconque du produit cartésien $X \times Y$.

<details>
<summary>Solution</summary>

**Réponse : [A]**

**A)** Correct. La définition d'une application $f: X \to Y$ exige deux conditions : chaque élément de l'ensemble de départ $X$ doit avoir une image, et cette image dans $Y$ doit être unique.

**B)** Incorrect. Une application doit être définie pour *tous* les éléments de l'ensemble de départ, et l'image doit être *unique*. Cette proposition viole les deux conditions.

**C)** Incorrect. Ceci décrit une application bijective de $Y$ vers $X$, pas la définition générale d'une application de $X$ vers $Y$.

**D)** Incorrect. Un sous-ensemble quelconque de $X \times Y$ est la définition d'une *relation binaire*. Une application est un cas particulier de relation où chaque élément de $X$ apparaît exactement une fois comme première composante d'un couple.

</details>

---

#### Question 2 : Composition d'applications

Soient les applications $f: \mathbb{R} \to \mathbb{R}$ et $g: \mathbb{R} \to \mathbb{R}$ définies par $f(x) = x+2$ et $g(x) = 3x$. Quelle est l'expression de la composition $(g \circ f)(x)$ ?

- [ ] **A)** $3x+2$
- [ ] **B)** $x+6$
- [x] **C)** $3x+6$
- [ ] **D)** $3(x+2)^2$

<details>
<summary>Solution</summary>

**Réponse : [C]**

La composition $(g \circ f)(x)$ signifie qu'on applique d'abord la fonction $f$ à $x$, puis la fonction $g$ au résultat $f(x)$.

1.  On calcule $f(x)$, ce qui donne $x+2$.
2.  On applique $g$ à ce résultat : $g(f(x)) = g(x+2)$.
3.  La définition de $g$ est $g(z) = 3z$. En remplaçant $z$ par $x+2$, on obtient $g(x+2) = 3(x+2)$.
4.  En développant, on trouve $3(x+2) = 3x + 6$.

**A)** Incorrect. C'est le résultat de $(f \circ g)(x) = f(g(x)) = f(3x) = 3x+2$. L'ordre de composition est important.
**B)** Incorrect. C'est une erreur de calcul.
**C)** Correct. $(g \circ f)(x) = g(f(x)) = g(x+2) = 3(x+2) = 3x+6$.
**D)** Incorrect. C'est une erreur de calcul, il n'y a pas de mise au carré dans les définitions de $f$ ou $g$.

</details>

---

#### Question 3 : Identification d'une application injective

Parmi les applications suivantes de $\mathbb{R}$ dans $\mathbb{R}$, laquelle est injective ?

- [ ] **A)** $f(x) = x^2$
- [x] **B)** $f(x) = e^x$
- [ ] **C)** $f(x) = \cos(x)$
- [ ] **D)** $f(x) = 10$

<details>
<summary>Solution</summary>

**Réponse : [B]**

Une application est injective si deux éléments de départ distincts ont toujours des images distinctes. Formellement, $f(x_1) = f(x_2) \implies x_1 = x_2$.

**A)** Incorrect. $f(x)=x^2$ n'est pas injective car des éléments distincts peuvent avoir la même image. Par exemple, $f(2) = 4$ et $f(-2) = 4$.

**B)** Correct. $f(x)=e^x$ est injective. Si $e^{x_1} = e^{x_2}$, alors en appliquant le logarithme népérien des deux côtés, on obtient $\ln(e^{x_1}) = \ln(e^{x_2})$, ce qui donne $x_1 = x_2$.

**C)** Incorrect. La fonction cosinus est périodique, donc de nombreux éléments distincts ont la même image. Par exemple, $\cos(0) = 1$ et $\cos(2\pi) = 1$.

**D)** Incorrect. C'est une fonction constante. Tous les éléments de départ ont la même image, $10$. C'est un cas extrême de non-injectivité.

</details>

---

#### Question 4 : Définition de la surjectivité

Soit une application $f : X \to Y$. Que signifie "f est surjective" ?

- [ ] **A)** Chaque élément de $X$ a au plus une image dans $Y$.
- [ ] **B)** Deux éléments distincts de $X$ ont des images distinctes dans $Y$.
- [x] **C)** Tout élément de $Y$ est l'image d'au moins un élément de $X$.
- [ ] **D)** Tout élément de $Y$ est l'image d'un unique élément de $X$.

<details>
<summary>Solution</summary>

**Réponse : [C]**

**A)** Incorrect. C'est une partie de la définition d'une application (l'unicité de l'image), mais ça ne concerne pas la surjectivité.

**B)** Incorrect. Ceci est la définition d'une application **injective**.

**C)** Correct. La surjectivité signifie que l'ensemble d'arrivée $Y$ est entièrement "couvert" par l'application. Aucun élément de $Y$ n'est laissé sans antécédent.

**D)** Incorrect. Ceci est la définition d'une application **bijective** (à la fois injective et surjective).

</details>

---

#### Question 5 : Loi de composition interne

Sur lesquels de ces ensembles l'addition usuelle (+) est-elle une loi de composition interne ? (Plusieurs réponses possibles)

- [x] **A)** L'ensemble des entiers pairs, $2\mathbb{Z}$.
- [ ] **B)** L'ensemble des entiers impairs.
- [x] **C)** L'ensemble des entiers naturels, $\mathbb{N}$.
- [ ] **D)** L'ensemble $\{-1, 1\}$.

<details>
<summary>Solution</summary>

**Réponses : [A, C]**

Une opération est une loi de composition interne sur un ensemble si le résultat de l'opération sur deux éléments de l'ensemble est toujours un élément de cet ensemble.

**A)** Correct. La somme de deux entiers pairs est toujours un entier pair. Si $x=2k$ et $y=2j$, alors $x+y = 2k+2j = 2(k+j)$, qui est bien un entier pair.

**B)** Incorrect. La somme de deux entiers impairs est toujours un entier pair. Par exemple, $1+3=4$, et $4$ n'est pas dans l'ensemble des entiers impairs.

**C)** Correct. La somme de deux entiers naturels est toujours un entier naturel.

**D)** Incorrect. Par exemple, $1 \in \{-1, 1\}$, mais $1+1=2$, et $2$ n'est pas dans l'ensemble.

</details>

---

#### Question 6 : Propriétés d'une opération binaire

Considérons la soustraction $(-)$ sur l'ensemble des entiers relatifs $\mathbb{Z}$. Quelle propriété est vérifiée ?

- [ ] **A)** Elle est associative.
- [ ] **B)** Elle est commutative.
- [ ] **C)** Elle possède un élément neutre.
- [x] **D)** Aucune de ces réponses.

<details>
<summary>Solution</summary>

**Réponse : [D]**

**A)** Incorrect. La soustraction n'est pas associative. Contre-exemple : $(8-4)-2 = 4-2=2$, mais $8-(4-2) = 8-2=6$. Les résultats sont différents.

**B)** Incorrect. La soustraction n'est pas commutative. Contre-exemple : $5-3=2$, mais $3-5=-2$.

**C)** Incorrect. Un élément neutre $e$ devrait vérifier $a-e=a$ et $e-a=a$ pour tout $a$. La première équation donne $e=0$. Mais la deuxième, $0-a=a$, n'est vraie que pour $a=0$. Donc $0$ n'est pas un élément neutre (il n'est neutre qu'à droite).

**D)** Correct. Aucune des propriétés listées (associativité, commutativité, existence d'un neutre) n'est satisfaite par la soustraction sur $\mathbb{Z}$.

</details>

---

#### Question 7 : Axiomes d'un groupe

Soit un ensemble $G$ muni d'une loi de composition interne $*$. Pour que $(G, *)$ soit un groupe, quelles propriétés (axiomes) sont requises ? (Plusieurs réponses possibles)

- [x] **A)** La loi $*$ doit être associative.
- [ ] **B)** La loi $*$ doit être commutative.
- [x] **C)** Il doit exister un élément neutre pour la loi $*$.
- [x] **D)** Chaque élément de $G$ doit avoir un inverse pour la loi $*$.

<details>
<summary>Solution</summary>

**Réponses : [A, C, D]**

La définition d'un groupe repose sur trois axiomes fondamentaux.

**A)** Correct. L'associativité, $(a*b)*c = a*(b*c)$, est le premier axiome de groupe.

**B)** Incorrect. La commutativité, $a*b = b*a$, n'est pas requise pour tous les groupes. Un groupe qui vérifie cette propriété supplémentaire est appelé un groupe **abélien** ou **commutatif**.

**C)** Correct. L'existence d'un élément neutre $e$ tel que $a*e = e*a = a$ est le deuxième axiome de groupe.

**D)** Correct. L'existence d'un inverse $a^{-1}$ pour chaque élément $a$ tel que $a*a^{-1} = a^{-1}*a = e$ est le troisième axiome de groupe.

</details>

---

#### Question 8 : Identification d'un groupe

Parmi les structures suivantes, laquelle est un groupe ?

- [ ] **A)** L'ensemble des entiers naturels $\mathbb{N}$ avec l'addition (+).
- [ ] **B)** L'ensemble des entiers relatifs $\mathbb{Z}$ avec la multiplication ($\times$).
- [ ] **C)** L'ensemble des nombres réels $\mathbb{R}$ avec la multiplication ($\times$).
- [x] **D)** L'ensemble des nombres rationnels non nuls $\mathbb{Q} \setminus \{0\}$ avec la multiplication ($\times$).

<details>
<summary>Solution</summary>

**Réponse : [D]**

**A)** Incorrect. $(\mathbb{N}, +)$ n'est pas un groupe car les éléments autres que 0 n'ont pas d'inverse (d'opposé) dans $\mathbb{N}$. Par exemple, il n'y a pas d'entier naturel $n$ tel que $3+n=0$.

**B)** Incorrect. $(\mathbb{Z}, \times)$ n'est pas un groupe car la plupart des éléments n'ont pas d'inverse pour la multiplication dans $\mathbb{Z}$. Par exemple, il n'y a pas d'entier $n$ tel que $2 \times n = 1$.

**C)** Incorrect. $(\mathbb{R}, \times)$ n'est pas un groupe car l'élément $0$ n'a pas d'inverse pour la multiplication.

**D)** Correct. $(\mathbb{Q} \setminus \{0\}, \times)$ est un groupe. La multiplication est associative, l'élément neutre est $1$, et tout élément non nul $p/q$ a un inverse $q/p$ qui est aussi dans $\mathbb{Q} \setminus \{0\}$.

</details>

---

#### Question 9 : Structure d'un anneau

Pour qu'un triplet $(A, +, \times)$ soit un anneau, la structure $(A, +)$ doit être...

- [ ] **A)** Un monoïde.
- [x] **B)** Un groupe abélien.
- [ ] **C)** Un groupe (pas forcément abélien).
- [ ] **D)** Un corps.

<details>
<summary>Solution</summary>

**Réponse : [B]**

Par définition, un anneau $(A, +, \times)$ est un ensemble muni de deux lois qui satisfont plusieurs axiomes. L'un des axiomes fondamentaux concerne la structure de l'ensemble avec la première loi (l'addition).

**A)** Incorrect. Un monoïde ne garantit pas l'existence d'inverses (opposés) pour l'addition.

**B)** Correct. Le premier axiome de la définition d'un anneau est que $(A, +)$ doit être un groupe abélien (commutatif). Cela signifie que l'addition est associative, commutative, possède un élément neutre (0), et que chaque élément a un inverse (opposé).

**C)** Incorrect. L'addition dans un anneau doit obligatoirement être commutative.

**D)** Incorrect. Un corps est une structure beaucoup plus forte qu'un groupe abélien. $(A, +)$ n'a qu'une seule opération.

</details>

---

#### Question 10 : Anneaux et Corps

Laquelle de ces affirmations est vraie ?

- [ ] **A)** L'anneau $(\mathbb{Z}, +, \times)$ est un corps.
- [ ] **B)** Tout anneau commutatif est un corps.
- [x] **C)** Tout corps est un anneau commutatif.
- [ ] **D)** L'anneau des matrices $(M_2(\mathbb{R}), +, \times)$ est un corps.

<details>
<summary>Solution</summary>

**Réponse : [C]**

**A)** Incorrect. $(\mathbb{Z}, +, \times)$ est un anneau, mais pas un corps, car les éléments non nuls (à l'exception de 1 et -1) n'ont pas d'inverse pour la multiplication dans $\mathbb{Z}$. Par exemple, $2$ n'a pas d'inverse entier.

**B)** Incorrect. C'est l'inverse qui est vrai (presque). Un anneau commutatif n'est pas nécessairement un corps. L'exemple de $\mathbb{Z}$ le montre. Pour être un corps, il faut en plus que tout élément non nul soit inversible.

**C)** Correct. La définition d'un corps inclut tous les axiomes d'un anneau commutatif (groupe abélien pour +, monoïde pour x, distributivité) avec la condition supplémentaire que tout élément non nul est inversible pour la multiplication.

**D)** Incorrect. L'anneau des matrices n'est ni commutatif (en général $AB \neq BA$), ni un corps (certaines matrices non nulles ne sont pas inversibles, par exemple la matrice avec un 1 en haut à gauche et des 0 partout ailleurs).

</details>

---

#### Question 11 : Propriétés d'une relation d'équivalence

Une relation binaire $\sim$ sur un ensemble $E$ est une relation d'équivalence si et seulement si elle est :

- [ ] **A)** Symétrique et transitive.
- [x] **B)** Réflexive, symétrique et transitive.
- [ ] **C)** Réflexive et transitive.
- [ ] **D)** Réflexive, antisymétrique et transitive.

<details>
<summary>Solution</summary>

**Réponse : [B]**

Par définition, une relation d'équivalence doit satisfaire trois propriétés.

**A)** Incorrect. La réflexivité est manquante.

**B)** Correct. Les trois propriétés requises sont :
1.  **Réflexivité** : $x \sim x$ pour tout $x$.
2.  **Symétrie** : Si $x \sim y$, alors $y \sim x$.
3.  **Transitivité** : Si $x \sim y$ et $y \sim z$, alors $x \sim z$.

**C)** Incorrect. La symétrie est manquante. Une relation réflexive et transitive est un préordre.

**D)** Incorrect. Une relation réflexive, **anti**symétrique et transitive est une relation d'**ordre**. L'antisymétrie ($x \sim y$ et $y \sim x \implies x=y$) est le contraire de la symétrie pour les relations d'équivalence.

</details>

---

#### Question 12 : Exemple de relation d'équivalence

Sur l'ensemble des entiers relatifs $\mathbb{Z}$, laquelle des relations suivantes est une relation d'équivalence ?

- [ ] **A)** La relation $x \sim y \iff x < y$.
- [ ] **B)** La relation $x \sim y \iff x+y=0$.
- [x] **C)** La relation $x \sim y \iff x-y$ est un multiple de 3.
- [ ] **D)** La relation $x \sim y \iff x$ divise $y$.

<details>
<summary>Solution</summary>

**Réponse : [C]**

**A)** Incorrect. La relation $<$ n'est ni réflexive ($x \not< x$), ni symétrique (si $x < y$, alors $y \not< x$).

**B)** Incorrect. Cette relation n'est pas réflexive (sauf pour $x=0$, on n'a pas $x+x=0$). Elle n'est pas non plus transitive (si $x \sim y$ et $y \sim z$, on a $y=-x$ et $z=-y$, donc $z=-(-x)=x$. Pour que $x \sim z$, il faudrait $x+z=0$, soit $2x=0$, ce qui n'est vrai que si $x=0$).

**C)** Correct. C'est la relation de congruence modulo 3.
- **Réflexive**: $x-x=0$, qui est un multiple de 3 ($0=3 \times 0$).
- **Symétrique**: Si $x-y = 3k$, alors $y-x = -3k = 3(-k)$, qui est aussi un multiple de 3.
- **Transitive**: Si $x-y=3k$ et $y-z=3j$, alors $(x-y)+(y-z) = 3k+3j$, donc $x-z = 3(k+j)$, qui est un multiple de 3.

**D)** Incorrect. La relation "divise" est réflexive et transitive, mais pas symétrique. Par exemple, $2$ divise $4$, mais $4$ ne divise pas $2$.

</details>

---

#### Question 13 : Identification de sous-groupes

Lesquels des ensembles suivants sont des sous-groupes du groupe multiplicatif des nombres complexes non nuls $(\mathbb{C}^*, \times)$ ? (Plusieurs réponses possibles)

- [x] **A)** L'ensemble des réels non nuls, $\mathbb{R}^*$.
- [x] **B)** L'ensemble $\mathbb{U} = \{z \in \mathbb{C} \mid |z|=1\}$.
- [ ] **C)** L'ensemble des entiers non nuls, $\mathbb{Z} \setminus \{0\}$.
- [ ] **D)** L'ensemble des imaginaires purs non nuls, $i\mathbb{R}^*$.

<details>
<summary>Solution</summary>

**Réponses : [A, B]**

Pour être un sous-groupe, un sous-ensemble doit contenir l'élément neutre (1), être stable par multiplication et être stable par passage à l'inverse.

**A)** Correct. $\mathbb{R}^*$ est un sous-groupe de $\mathbb{C}^*$. Le produit de deux réels non nuls est un réel non nul, $1 \in \mathbb{R}^*$, et l'inverse d'un réel non nul $x$ est $1/x$, qui est aussi un réel non nul.

**B)** Correct. C'est le groupe circulaire. Si $z_1, z_2 \in \mathbb{U}$, alors $|z_1|=|z_2|=1$. On a $|z_1 z_2| = |z_1||z_2| = 1 \times 1 = 1$, donc $z_1z_2 \in \mathbb{U}$. Le neutre $1$ a pour module 1. Si $z \in \mathbb{U}$, alors $|z^{-1}| = 1/|z| = 1/1=1$, donc $z^{-1} \in \mathbb{U}$.

**C)** Incorrect. Cet ensemble n'est pas stable par passage à l'inverse. Par exemple, $2$ est dans l'ensemble, mais son inverse $1/2$ n'est pas un entier.

**D)** Incorrect. Cet ensemble n'est pas stable par multiplication. Par exemple, $i$ est dans l'ensemble, mais $i \times i = -1$, qui n'est pas un imaginaire pur.

</details>

---

#### Question 14 : Définition d'un idéal

Soit $A$ un anneau commutatif. Qu'est-ce qu'un idéal $I$ de $A$ ?

- [ ] **A)** Un sous-ensemble de $A$ qui est lui-même un anneau pour les mêmes lois.
- [x] **B)** Un sous-groupe de $(A,+)$ tel que pour tout $x \in I$ et tout $a \in A$, on a $ax \in I$.
- [ ] **C)** Un sous-ensemble de $A$ stable pour la multiplication.
- [ ] **D)** Un sous-groupe du groupe multiplicatif $(A \setminus \{0\}, \times)$.

<details>
<summary>Solution</summary>

**Réponse : [B]**

**A)** Incorrect. Ceci est la définition d'un **sous-anneau**. Un sous-anneau n'est pas forcément un idéal. Par exemple, $\mathbb{Z}$ est un sous-anneau de $\mathbb{Q}$, mais n'en est pas un idéal.

**B)** Correct. C'est la définition d'un idéal. Il y a deux conditions :
1. $I$ doit être un sous-groupe pour l'addition.
2. $I$ doit "absorber" la multiplication par n'importe quel élément de l'anneau $A$.

**C)** Incorrect. La stabilité interne ne suffit pas. L'idéal doit être stable par multiplication avec des éléments *extérieurs* à l'idéal.

**D)** Incorrect. Cela ne concerne que la multiplication et ignore la structure additive fondamentale d'un idéal.

</details>

---

#### Question 15 : Anneau quotient et corps

Dans quelles conditions l'anneau quotient $\mathbb{Z}/n\mathbb{Z}$ est-il un corps ?

- [ ] **A)** Pour tout entier $n > 1$.
- [ ] **B)** Si et seulement si $n$ est un nombre pair.
- [x] **C)** Si et seulement si $n$ est un nombre premier.
- [ ] **D)** Si et seulement si $n$ est un nombre impair.

<details>
<summary>Solution</summary>

**Réponse : [C]**

Pour que l'anneau commutatif $\mathbb{Z}/n\mathbb{Z}$ soit un corps, il faut que tout élément non nul admette un inverse pour la multiplication.

**A)** Incorrect. Si $n$ n'est pas premier, on peut l'écrire $n=ab$ avec $1 < a, b < n$. Dans $\mathbb{Z}/n\mathbb{Z}$, cela signifie que $\text{cl}(a) \times \text{cl}(b) = \text{cl}(ab) = \text{cl}(n) = \text{cl}(0)$, bien que $\text{cl}(a)$ et $\text{cl}(b)$ ne soient pas nuls. Ces éléments sont des diviseurs de zéro et ne peuvent pas être inversibles. Par exemple, dans $\mathbb{Z}/6\mathbb{Z}$, $[2] \times [3] = [0]$.

**B)** Incorrect. Par exemple, $\mathbb{Z}/6\mathbb{Z}$ n'est pas un corps. Le seul nombre premier pair est 2, et $\mathbb{Z}/2\mathbb{Z}$ est bien un corps. Mais la condition n'est pas "être pair".

**C)** Correct. C'est un théorème fondamental de l'arithmétique modulaire. Si $n$ est un nombre premier, alors pour tout entier $a$ non multiple de $n$, $a$ et $n$ sont premiers entre eux. Le théorème de Bachet-Bézout garantit alors l'existence d'entiers $u, v$ tels que $au+nv=1$. En regardant cette équation modulo $n$, on obtient $au \equiv 1 \pmod n$, ce qui signifie que la classe de $u$ est l'inverse de la classe de $a$ dans $\mathbb{Z}/n\mathbb{Z}$.

**D)** Incorrect. Par exemple, 9 est un nombre impair mais non premier, et $\mathbb{Z}/9\mathbb{Z}$ n'est pas un corps (car $[3]\times[3]=[9]=[0]$).

</details>
