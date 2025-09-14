---
title: "Quiz 3: Morphismes"
layout: "../../../layouts/Layout.astro"
order: 3
---

# Quiz 3 : Morphismes de structures algébriques

## Instructions
- Choisissez la meilleure réponse pour chaque question.
- Certaines questions peuvent avoir plusieurs bonnes réponses.

---

#### Question 1 : Définition d'un morphisme de groupes

Soit $f : (G, \star, e_G) \to (H, \circ, e_H)$ un morphisme de groupes. Alors :

- [ ] **A)** $f(e_G) = e_H$ et $f(a \star b) = f(a) \circ f(b)$ pour tous $a, b \in G$
- [ ] **B)** $f(a \star b) = f(a) \circ f(b)$ pour tous $a, b \in G$ (la préservation de l'élément neutre en découle)
- [ ] **C)** $f$ est bijective
- [ ] **D)** Les réponses A et B sont correctes

<details>
<summary>Solution</summary>

**Réponse : D**

Un morphisme de groupes doit préserver l'opération. La préservation de l'élément neutre découle automatiquement de cette condition, mais on peut aussi l'exiger explicitement dans la définition.

</details>

---

#### Question 2 : Morphisme d'anneaux

Soit $\phi : \mathbb{Z} \to \mathbb{Z}/5\mathbb{Z}$ définie par $\phi(n) = \overline{n}$. Cette application :

- [ ] **A)** N'est pas un morphisme car elle n'est pas injective
- [ ] **B)** Est un morphisme d'anneaux
- [ ] **C)** Est un morphisme de groupes additifs mais pas d'anneaux
- [ ] **D)** N'est pas un morphisme car $\mathbb{Z}$ et $\mathbb{Z}/5\mathbb{Z}$ sont différents

<details>
<summary>Solution</summary>

**Réponse : B**

$\phi(n) = \overline{n}$ préserve l'addition : $\phi(m + n) = \overline{m + n} = \overline{m} + \overline{n} = \phi(m) + \phi(n)$, la multiplication : $\phi(mn) = \overline{mn} = \overline{m} \cdot \overline{n} = \phi(m) \phi(n)$, et les éléments neutres.

</details>

---

#### Question 3 : Noyau d'un morphisme

Soit $f : G \to H$ un morphisme de groupes. Le noyau $\ker(f)$ est :

- [ ] **A)** $\{g \in G \mid f(g) = 0\}$
- [ ] **B)** $\{g \in G \mid f(g) = e_H\}$ où $e_H$ est l'élément neutre de $H$
- [ ] **C)** L'ensemble des éléments de $G$ qui n'ont pas d'image
- [ ] **D)** L'image réciproque de $H$

<details>
<summary>Solution</summary>

**Réponse : B**

Le noyau d'un morphisme de groupes $f : G \to H$ est $\ker(f) = \{g \in G \mid f(g) = e_H\}$ où $e_H$ est l'élément neutre de $H$.

</details>

---

#### Question 4 : Injectivité et noyau

Un morphisme de groupes $f : G \to H$ est injectif si et seulement si :

- [ ] **A)** $\ker(f) = G$
- [ ] **B)** $\ker(f) = \{e_G\}$
- [ ] **C)** $\ker(f) = H$
- [ ] **D)** $\ker(f) = \emptyset$

<details>
<summary>Solution</summary>

**Réponse : B**

Un morphisme de groupes est injectif si et seulement si son noyau est réduit à l'élément neutre du groupe de départ.

</details>

---

#### Question 5 : Isomorphisme

Lequel des couples suivants représente des groupes isomorphes ?

- [ ] **A)** $(\mathbb{Z}, +)$ et $(\mathbb{Q}, +)$
- [ ] **B)** $(\mathbb{Z}/4\mathbb{Z}, +)$ et $(\{1, -1, i, -i\}, \times)$
- [ ] **C)** $(\mathbb{R}, +)$ et $(\mathbb{R}^*_+, \times)$
- [ ] **D)** $(\mathbb{Z}, +)$ et $(\mathbb{Z}/2\mathbb{Z}, +)$

<details>
<summary>Solution</summary>

**Réponse : B**

$(\mathbb{Z}/4\mathbb{Z}, +)$ et $(\{1, -1, i, -i\}, \times)$ sont tous deux des groupes cycliques d'ordre 4, donc isomorphes.
- A) $\mathbb{Z}$ est infini, $\mathbb{Q}$ aussi, mais ils ne sont pas isomorphes (problème de divisibilité)
- C) Correct aussi ! $\exp : \mathbb{R} \to \mathbb{R}^*_+$ est un isomorphisme
- D) $\mathbb{Z}$ est infini, $\mathbb{Z}/2\mathbb{Z}$ est fini

</details>

---

#### Question 6 : Morphisme exponentielle

L'application $\exp : (\mathbb{R}, +) \to (\mathbb{R}^*_+, \times)$ définie par $\exp(x) = e^x$ est :

- [ ] **A)** Un morphisme de groupes
- [ ] **B)** Un isomorphisme de groupes
- [ ] **C)** Un morphisme d'anneaux
- [ ] **D)** Ni un morphisme ni un isomorphisme

<details>
<summary>Solution</summary>

**Réponse : B**

$\exp(x + y) = e^{x+y} = e^x \cdot e^y = \exp(x) \cdot \exp(y)$, donc c'est un morphisme. De plus, $\exp$ est bijective avec $\ln$ comme réciproque, donc c'est un isomorphisme.

</details>

---

#### Question 7 : Endomorphisme

Soit $f : \mathbb{Z} \to \mathbb{Z}$ définie par $f(n) = 2n$. Cette application est :

- [ ] **A)** Un automorphisme de $(\mathbb{Z}, +)$
- [ ] **B)** Un endomorphisme injectif mais pas surjectif de $(\mathbb{Z}, +)$
- [ ] **C)** Un endomorphisme surjectif mais pas injectif de $(\mathbb{Z}, +)$
- [ ] **D)** Pas un morphisme de groupes

<details>
<summary>Solution</summary>

**Réponse : B**

$f(m + n) = 2(m + n) = 2m + 2n = f(m) + f(n)$, donc c'est un morphisme. Il est injectif (si $2m = 2n$ alors $m = n$) mais pas surjectif (1 n'a pas d'antécédent).

</details>

---

#### Question 8 : Image d'un morphisme

Soit $f : G \to H$ un morphisme de groupes. L'image $\text{Im}(f)$ est :

- [ ] **A)** Toujours égale à $H$
- [ ] **B)** Un sous-groupe de $H$
- [ ] **C)** Un sous-groupe de $G$
- [ ] **D)** L'ensemble vide si $f$ n'est pas surjectif

<details>
<summary>Solution</summary>

**Réponse : B**

L'image d'un morphisme de groupes est toujours un sous-groupe du groupe d'arrivée.

</details>

---

#### Question 9 : Théorème d'isomorphisme

Si $f : G \to H$ est un morphisme de groupes, alors :

- [ ] **A)** $G \cong H$
- [ ] **B)** $G/\ker(f) \cong \text{Im}(f)$
- [ ] **C)** $\ker(f) \cong \text{Im}(f)$
- [ ] **D)** $G \cong \ker(f) \times \text{Im}(f)$

<details>
<summary>Solution</summary>

**Réponse : B**

Le premier théorème d'isomorphisme énonce que $G/\ker(f) \cong \text{Im}(f)$.

</details>

---

#### Question 10 : Morphisme déterminant

L'application $\det : \text{GL}_2(\mathbb{R}) \to \mathbb{R}^*$ qui à une matrice associe son déterminant est :

- [ ] **A)** Un morphisme de groupes multiplicatifs
- [ ] **B)** Un morphisme d'anneaux
- [ ] **C)** Un isomorphisme
- [ ] **D)** Pas un morphisme

<details>
<summary>Solution</summary>

**Réponse : A**

$\det(AB) = \det(A) \det(B)$ et $\det(I) = 1$, donc le déterminant est un morphisme de groupes multiplicatifs.

</details>

---

#### Question 11 : Composition de morphismes

Si $f : G \to H$ et $g : H \to K$ sont des morphismes de groupes, alors $g \circ f : G \to K$ est :

- [ ] **A)** Toujours un morphisme de groupes
- [ ] **B)** Un morphisme seulement si $f$ et $g$ sont bijectifs
- [ ] **C)** Un morphisme seulement si $f$ est surjectif
- [ ] **D)** Pas nécessairement un morphisme

<details>
<summary>Solution</summary>

**Réponse : A**

La composition de morphismes de groupes est toujours un morphisme de groupes : $(g \circ f)(xy) = g(f(xy)) = g(f(x)f(y)) = g(f(x))g(f(y)) = (g \circ f)(x)(g \circ f)(y)$.

</details>

---

#### Question 12 : Automorphisme

Dans le groupe $(\mathbb{Z}/6\mathbb{Z}, +)$, combien y a-t-il d'automorphismes ?

- [ ] **A)** 1
- [ ] **B)** 2
- [ ] **C)** 3
- [ ] **D)** 6

<details>
<summary>Solution</summary>

**Réponse : B**

Les automorphismes de $\mathbb{Z}/6\mathbb{Z}$ correspondent aux éléments inversibles de $\mathbb{Z}/6\mathbb{Z}$, qui sont $\{1, 5\}$. Donc il y a 2 automorphismes : l'identité et $x \mapsto 5x$.

</details>

---
