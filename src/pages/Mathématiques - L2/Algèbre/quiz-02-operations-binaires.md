---
title: "Quiz 2: Opérations binaires"
layout: "../../../layouts/Layout.astro"
order: 2
quizId: "e5f6g7h8"
---

# Quiz 2 : Opérations binaires et structures algébriques

## Instructions
- Choisissez la meilleure réponse pour chaque question.
- Certaines questions peuvent avoir plusieurs bonnes réponses.

---

#### Question 1 : Définition d'une opération binaire

Une opération binaire sur un ensemble $E$ est :

- [ ] **A)** Une application $E \to E$
- [ ] **B)** Une application $E \times E \to E$<span class="correct"></span>
- [ ] **C)** Une relation binaire sur $E$
- [ ] **D)** Un sous-ensemble de $E \times E$

<details>
<summary>Solution</summary>

**Réponse : B**

Une opération binaire sur $E$ est une application qui à chaque couple $(a, b) \in E \times E$ associe un élément de $E$.

</details>

---

#### Question 2 : Associativité

Laquelle des opérations suivantes sur $\mathbb{R}$ est associative ?

- [ ] **A)** $a \star b = a - b$
- [ ] **B)** $a \star b = \frac{a + b}{2}$
- [ ] **C)** $a \star b = a + b + ab$<span class="correct"></span>
- [ ] **D)** $a \star b = |a - b|$

<details>
<summary>Solution</summary>

**Réponse : C**

Vérifions $a \star b = a + b + ab$ :
$(a \star b) \star c = (a + b + ab) + c + (a + b + ab)c = a + b + c + ab + ac + bc + abc$
$a \star (b \star c) = a + (b + c + bc) + a(b + c + bc) = a + b + c + bc + ab + ac + abc$
Les deux expressions sont égales, donc l'opération est associative.

</details>

---

#### Question 3 : Élément neutre

Dans $(\mathbb{Z}, \times)$, l'élément neutre est :

- [ ] **A)** $0$
- [ ] **B)** $-1$
- [ ] **C)** Il n'y en a pas
- [ ] **D)** $1$<span class="correct"></span>

<details>
<summary>Solution</summary>

**Réponse : D**

Dans $(\mathbb{Z}, \times)$, l'élément neutre est $1$ car $1 \times a = a \times 1 = a$ pour tout $a \in \mathbb{Z}$.

</details>

---

#### Question 4 : Structure de monoïde

Parmi les structures suivantes, laquelle est un monoïde ?

- [ ] **A)** $(\mathbb{N}, -, 0)$
- [ ] **B)** $(\mathbb{N}, +, 0)$<span class="correct"></span>
- [ ] **C)** $(\mathbb{Z} \setminus \{0\}, \times, 1)$
- [ ] **D)** $(\mathbb{Q}, \div, 1)$

<details>
<summary>Solution</summary>

**Réponse : B**

$(\mathbb{N}, +, 0)$ est un monoïde car l'addition est associative et $0$ est l'élément neutre.
- A) La soustraction n'est pas associative
- C) $0 \notin \mathbb{Z} \setminus \{0\}$ mais $0$ est nécessaire comme élément neutre
- D) La division n'est pas toujours définie

</details>

---

#### Question 5 : Groupe

Laquelle des structures suivantes est un groupe ?

- [ ] **A)** $(\mathbb{N}, +, 0)$
- [ ] **B)** $(\mathbb{Z}, +, 0)$<span class="correct"></span>
- [ ] **C)** $(\mathbb{N}, \times, 1)$
- [ ] **D)** $(\mathbb{Z}, \times, 1)$

<details>
<summary>Solution</summary>

**Réponse : B**

$(\mathbb{Z}, +, 0)$ est un groupe car tout élément $a$ a un inverse $-a$.
- A) Dans $\mathbb{N}$, les éléments positifs n'ont pas d'inverse additif
- C) et D) Dans ces structures multiplicatives, seuls $\pm 1$ sont inversibles

</details>

---

#### Question 6 : Éléments inversibles

Dans le monoïde $(\mathbb{Z}, \times, 1)$, les éléments inversibles sont :

- [ ] **A)** $\{1\}$
- [ ] **B)** $\{-1, 1\}$<span class="correct"></span>
- [ ] **C)** $\mathbb{Z} \setminus \{0\}$
- [ ] **D)** $\mathbb{Z}$

<details>
<summary>Solution</summary>

**Réponse : B**

Les éléments inversibles dans $(\mathbb{Z}, \times, 1)$ sont ceux qui ont un inverse multiplicatif dans $\mathbb{Z}$. Seuls $1$ et $-1$ vérifient cette propriété.

</details>

---

#### Question 7 : Anneau

Pour qu'une structure $(A, +, \times, 0, 1)$ soit un anneau, il faut que :

- [ ] **A)** $(A, +, 0)$ soit un groupe abélien et $(A, \times, 1)$ soit un monoïde, avec distributivité<span class="correct"></span>
- [ ] **B)** $(A, +, 0)$ soit un groupe et $(A, \times, 1)$ soit un monoïde
- [ ] **C)** $(A, +, 0)$ et $(A, \times, 1)$ soient des groupes
- [ ] **D)** Toutes les opérations soient commutatives

<details>
<summary>Solution</summary>

**Réponse : A**

Un anneau nécessite que $(A, +, 0)$ soit un groupe abélien, $(A, \times, 1)$ soit un monoïde, et que la multiplication soit distributive par rapport à l'addition.

</details>

---

#### Question 8 : Corps

Lequel des ensembles suivants, muni de ses opérations usuelles, forme un corps ?

- [ ] **A)** $\mathbb{Z}$
- [ ] **B)** $\mathbb{Q}$<span class="correct"></span>
- [ ] **C)** $\mathbb{Z}/4\mathbb{Z}$
- [ ] **D)** $\mathbb{Z}/6\mathbb{Z}$

<details>
<summary>Solution</summary>

**Réponse : B**

$\mathbb{Q}$ est un corps car tout élément non nul a un inverse multiplicatif.
- A) Dans $\mathbb{Z}$, seuls $\pm 1$ sont inversibles
- C) et D) Ces anneaux ont des diviseurs de zéro

</details>

---

#### Question 9 : Table d'opération

Soit $E = \{0, 1\}$ avec l'opération $\star$ définie par la table :

| $\star$ | 0 | 1 |
|---------|---|---|
| **0**   | 0 | 1 |
| **1**   | 1 | 0 |

Cette opération est :

- [ ] **A)** Associative mais pas commutative
- [ ] **B)** Commutative mais pas associative
- [ ] **C)** Associative et commutative<span class="correct"></span>
- [ ] **D)** Ni associative ni commutative

<details>
<summary>Solution</summary>

**Réponse : C**

L'opération est commutative (la table est symétrique) et associative (vérification directe sur les 8 cas possibles).

</details>

---

#### Question 10 : Distributivité

Dans $\mathbb{Z}$, la multiplication est distributive par rapport à l'addition. Cela signifie :

- [ ] **A)** $a + (b \times c) = (a + b) \times (a + c)$
- [ ] **B)** $a \times (b + c) = (a \times b) + (a \times c)$
- [ ] **C)** $(a + b) \times c = (a \times c) + (b \times c)$
- [ ] **D)** $a \times (b \times c) = (a \times b) + (a \times c)$

<details>
<summary>Solution</summary>

**Réponse : B, C**

La distributivité s'exprime des deux côtés : $a \times (b + c) = ab + ac$ et $(b + c) \times a = ba + ca$.

</details>

---

#### Question 11 : Ordre d'un élément

Dans le groupe $(\mathbb{Z}/6\mathbb{Z}, +)$, l'ordre de l'élément $\overline{4}$ est :

- [ ] **A)** 2
- [ ] **B)** 3 <span class="correct"></span>
- [ ] **C)** 4
- [ ] **D)** 6

<details>
<summary>Solution</summary>

**Réponse : B**

L'ordre de $\overline{4}$ est le plus petit entier positif $n$ tel que $n \cdot \overline{4} = \overline{0}$. Ou, exprimé autrement, le nombre d'applications de $\overline{4}$ avec lui-même pour obtenir l'élément neutre: $\overline{4} + \overline{4} + ...= 0$.

- $\overline{4}^1$: $0 + \overline{4} = \overline{4}$
- $\overline{4}^2$: $0 + \overline{4} + \overline{4} = \overline{2}$
- $\overline{4}^3$: $0 + \overline{4} + \overline{4} + \overline{4} = 0$

Donc l'ordre est $3$.

</details>

---

#### Question 12 : Sous-structure

Soit $(G, \star, e)$ un groupe et $H \subset G$. Pour que $H$ soit un sous-groupe, il faut et il suffit que :

- [ ] **A)** $H$ soit stable par $\star$
- [ ] **B)** $H$ soit stable par $\star$ et contienne $e$
- [ ] **C)** $H$ soit stable par $\star$, contienne $e$ et soit stable par passage à l'inverse <span class="correct"></span>
- [ ] **D)** $H = G$

<details>
<summary>Solution</summary>

**Réponse : C**

Un sous-groupe doit être stable par l'opération, contenir l'élément neutre, et être stable par passage à l'inverse.

</details>

---

<button class="toggle-check">Check</button>