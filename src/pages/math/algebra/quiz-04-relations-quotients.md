---
title: "Quiz 4: Relations et quotients"
layout: "../../../layouts/Layout.astro"
order: 4
---

# Quiz 4 : Relations d'équivalence et quotients

## Instructions
- Choisissez la meilleure réponse pour chaque question
- Certaines questions peuvent avoir plusieurs bonnes réponses
- Les réponses sont données à la fin du quiz

---

#### Question 1 : Propriétés des relations

Soit $R$ une relation sur un ensemble $E$. Pour que $R$ soit une relation d'équivalence, il faut qu'elle soit :

- [ ] **A)** Réflexive, symétrique et transitive
- [ ] **B)** Réflexive, antisymétrique et transitive
- [ ] **C)** Symétrique et transitive seulement
- [ ] **D)** Réflexive et transitive seulement

<details>
<summary>Solution</summary>

**Réponse : A**

Une relation d'équivalence doit être réflexive (tout élément est en relation avec lui-même), symétrique (si $aRb$ alors $bRa$) et transitive (si $aRb$ et $bRc$ alors $aRc$).

</details>

---

#### Question 2 : Relation d'ordre

Sur $\mathbb{R}$, la relation $aRb \Leftrightarrow a \leq b$ est :

- [ ] **A)** Une relation d'équivalence
- [ ] **B)** Une relation d'ordre partiel
- [ ] **C)** Une relation d'ordre total
- [ ] **D)** Ni une relation d'équivalence ni une relation d'ordre

<details>
<summary>Solution</summary>

**Réponse : C**

La relation $\leq$ sur $\mathbb{R}$ est réflexive, antisymétrique et transitive, donc c'est une relation d'ordre. De plus, pour tous $a, b \in \mathbb{R}$, on a soit $a \leq b$ soit $b \leq a$, donc c'est un ordre total.

</details>

---

#### Question 3 : Classes d'équivalence

Soit $\sim$ la relation sur $\mathbb{Z}$ définie par $a \sim b \Leftrightarrow a \equiv b \pmod{3}$. Combien y a-t-il de classes d'équivalence ?

- [ ] **A)** 2
- [ ] **B)** 3
- [ ] **C)** 6
- [ ] **D)** Une infinité

<details>
<summary>Solution</summary>

**Réponse : B**

Les classes d'équivalence modulo 3 sont :
- $\overline{0} = \{..., -6, -3, 0, 3, 6, ...\}$
- $\overline{1} = \{..., -5, -2, 1, 4, 7, ...\}$  
- $\overline{2} = \{..., -4, -1, 2, 5, 8, ...\}$

</details>

---

#### Question 4 : Partition

Si $\sim$ est une relation d'équivalence sur un ensemble $E$, alors les classes d'équivalence :

- [ ] **A)** Peuvent se chevaucher
- [ ] **B)** Forment une partition de $E$
- [ ] **C)** Sont toutes de même cardinal
- [ ] **D)** Sont au plus dénombrables

<details>
<summary>Solution</summary>

**Réponse : B**

Les classes d'équivalence d'une relation d'équivalence forment toujours une partition de l'ensemble : elles sont disjointes deux à deux et leur union est l'ensemble tout entier.

</details>

---

#### Question 5 : Ensemble quotient

L'ensemble quotient $\mathbb{Z}/\sim$ où $a \sim b \Leftrightarrow |a| = |b|$ est en bijection avec :

- [ ] **A)** $\mathbb{Z}$
- [ ] **B)** $\mathbb{N}$
- [ ] **C)** $\mathbb{Q}$
- [ ] **D)** $\{0, 1\}$

<details>
<summary>Solution</summary>

**Réponse : B**

Chaque classe d'équivalence correspond à une valeur absolue : $\text{cl}(n) = \{n, -n\}$ pour $n > 0$ et $\text{cl}(0) = \{0\}$. L'ensemble quotient est donc en bijection avec $\mathbb{N}$.

</details>

---

#### Question 6 : Congruence modulo n

Dans $\mathbb{Z}/5\mathbb{Z}$, que vaut $\overline{17} + \overline{23}$ ?

- [ ] **A)** $\overline{0}$
- [ ] **B)** $\overline{1}$
- [ ] **C)** $\overline{2}$
- [ ] **D)** $\overline{40}$

<details>
<summary>Solution</summary>

**Réponse : A**

$17 \equiv 2 \pmod{5}$ et $23 \equiv 3 \pmod{5}$, donc $\overline{17} + \overline{23} = \overline{2} + \overline{3} = \overline{5} = \overline{0}$.

</details>

---

#### Question 7 : Propriété universelle

Soit $f : E \to F$ une application et $\sim$ une relation d'équivalence sur $E$. Pour que $f$ induise une application $\overline{f} : E/\sim \to F$, il faut que :

- [ ] **A)** $f$ soit injective
- [ ] **B)** $f$ soit surjective
- [ ] **C)** $f$ soit compatible avec $\sim$ (si $a \sim b$ alors $f(a) = f(b)$)
- [ ] **D)** $f$ soit bijective

<details>
<summary>Solution</summary>

**Réponse : C**

Pour que $f$ induise une application sur le quotient, elle doit être compatible avec la relation d'équivalence : si deux éléments sont équivalents, ils doivent avoir la même image par $f$.

</details>

---

#### Question 8 : Construction des rationnels

Dans la construction de $\mathbb{Q}$ à partir de $\mathbb{Z} \times (\mathbb{Z} \setminus \{0\})$, la relation d'équivalence est :

- [ ] **A)** $(a, b) \sim (c, d) \Leftrightarrow a = c \text{ et } b = d$
- [ ] **B)** $(a, b) \sim (c, d) \Leftrightarrow a + d = b + c$
- [ ] **C)** $(a, b) \sim (c, d) \Leftrightarrow ad = bc$
- [ ] **D)** $(a, b) \sim (c, d) \Leftrightarrow a - b = c - d$

<details>
<summary>Solution</summary>

**Réponse : C**

Dans la construction de $\mathbb{Q}$, on identifie $(a, b)$ et $(c, d)$ si elles représentent la même fraction, c'est-à-dire si $\frac{a}{b} = \frac{c}{d}$, ce qui équivaut à $ad = bc$.

</details>

---

#### Question 9 : Relation sur les fonctions

Soit $F = \mathbb{R}^{\mathbb{R}}$ l'ensemble des fonctions de $\mathbb{R}$ vers $\mathbb{R}$. La relation $f \sim g \Leftrightarrow f(0) = g(0)$ est :

- [ ] **A)** Une relation d'ordre
- [ ] **B)** Une relation d'équivalence
- [ ] **C)** Ni l'une ni l'autre
- [ ] **D)** Une relation d'équivalence et d'ordre à la fois

<details>
<summary>Solution</summary>

**Réponse : B**

Cette relation est :
- Réflexive : $f(0) = f(0)$
- Symétrique : si $f(0) = g(0)$ alors $g(0) = f(0)$
- Transitive : si $f(0) = g(0)$ et $g(0) = h(0)$ alors $f(0) = h(0)$

</details>

---

#### Question 10 : Quotient de groupes

Soit $G$ un groupe et $H$ un sous-groupe normal de $G$. Alors $G/H$ :

- [ ] **A)** Est toujours un groupe
- [ ] **B)** N'est un groupe que si $H = \{e\}$
- [ ] **C)** N'est jamais un groupe
- [ ] **D)** Est un groupe seulement si $G$ est abélien

<details>
<summary>Solution</summary>

**Réponse : A**

Si $H$ est un sous-groupe normal de $G$, alors $G/H$ hérite naturellement d'une structure de groupe via l'opération $(aH)(bH) = (ab)H$.

</details>

---

#### Question 11 : Morphisme canonique

Soit $\pi : \mathbb{Z} \to \mathbb{Z}/n\mathbb{Z}$ la projection canonique. Alors :

- [ ] **A)** $\pi$ est injectif
- [ ] **B)** $\pi$ est surjectif
- [ ] **C)** $\ker(\pi) = \{0\}$
- [ ] **D)** $\ker(\pi) = n\mathbb{Z}$

<details>
<summary>Solution</summary>

**Réponse : B et D**

La projection canonique $\pi(n) = \overline{n}$ est surjective (tout élément de $\mathbb{Z}/n\mathbb{Z}$ a un antécédent) et son noyau est $\ker(\pi) = n\mathbb{Z}$.

</details>

---