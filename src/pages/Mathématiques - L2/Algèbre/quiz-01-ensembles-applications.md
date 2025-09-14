---
title: "Quiz 1: Ensembles et applications"
layout: "../../../layouts/Layout.astro"
order: 1
---

# Quiz 1 : Ensembles et applications

## Instructions
- Choisissez la meilleure réponse pour chaque question.
- Certaines questions peuvent avoir plusieurs bonnes réponses.

---

#### Question 1 : Définition d'une application

Soit $f : \mathbb{R} \to \mathbb{R}$ définie par $f(x) = \sqrt{x}$. Cette définition est-elle correcte ?

- [ ] **A)** Oui, car $\sqrt{x}$ est bien défini pour tout $x \in \mathbb{R}$
- [ ] **B)** Non, car $\sqrt{x}$ n'est pas défini pour $x < 0$
- [ ] **C)** Oui, mais seulement si on considère les nombres complexes
- [ ] **D)** Non, car une application doit être bijective

<details>
<summary>Solution</summary>

**Réponse : B**

La fonction $\sqrt{x}$ n'est définie que pour $x \geq 0$ dans $\mathbb{R}$. Pour définir une application de $\mathbb{R}$ vers $\mathbb{R}$, il faut que $f(x)$ soit défini pour tout $x \in \mathbb{R}$.

</details>

---

#### Question 2 : Injectivité

Laquelle des applications suivantes est injective ?

- [ ] **A)** $f : \mathbb{R} \to \mathbb{R}$, $f(x) = x^2$
- [ ] **B)** $g : \mathbb{R} \to \mathbb{R}$, $g(x) = 2x + 1$
- [ ] **C)** $h : \mathbb{R} \to \mathbb{R}$, $h(x) = \sin(x)$
- [ ] **D)** $k : \mathbb{R} \to \mathbb{R}$, $k(x) = |x|$

<details>
<summary>Solution</summary>

**Réponse : B**

$g(x) = 2x + 1$ est injective car si $g(x_1) = g(x_2)$, alors $2x_1 + 1 = 2x_2 + 1$, donc $x_1 = x_2$.
- A) $f(1) = f(-1) = 1$, donc pas injective
- C) $\sin(0) = \sin(\pi) = 0$, donc pas injective  
- D) $|1| = |-1| = 1$, donc pas injective

</details>

---

#### Question 3 : Surjectivité

Soit $f : \mathbb{Z} \to \mathbb{N}$ définie par $f(n) = |n|$. Cette application est :

- [ ] **A)** Injective mais pas surjective
- [ ] **B)** Surjective mais pas injective
- [ ] **C)** Bijective
- [ ] **D)** Ni injective ni surjective

<details>
<summary>Solution</summary>

**Réponse : B**

$f(n) = |n|$ est surjective car tout $m \in \mathbb{N}$ est l'image de $m$ (et de $-m$ si $m > 0$). Elle n'est pas injective car $f(n) = f(-n)$ pour $n \neq 0$.

</details>

---

#### Question 4 : Composition d'applications

Soient $f : A \to B$ et $g : B \to C$ deux applications. Si $f$ est injective et $g$ est injective, alors $g \circ f$ est :

- [ ] **A)** Toujours injective
- [ ] **B)** Toujours surjective
- [ ] **C)** Toujours bijective
- [ ] **D)** Pas nécessairement injective

<details>
<summary>Solution</summary>

**Réponse : A**

Si $f$ et $g$ sont injectives, alors $g \circ f$ est injective. En effet, si $(g \circ f)(x_1) = (g \circ f)(x_2)$, alors $g(f(x_1)) = g(f(x_2))$. Par injectivité de $g$, on a $f(x_1) = f(x_2)$, et par injectivité de $f$, on a $x_1 = x_2$.

</details>

---

#### Question 5 : Fonction réciproque

Une application $f : A \to B$ admet une fonction réciproque si et seulement si :

- [ ] **A)** $f$ est injective
- [ ] **B)** $f$ est surjective
- [ ] **C)** $f$ est bijective
- [ ] **D)** $A$ et $B$ ont le même cardinal

<details>
<summary>Solution</summary>

**Réponse : C**

Une application admet une fonction réciproque si et seulement si elle est bijective (injective et surjective).

</details>

---

#### Question 6 : Contre-exemple

Soit $f : \mathbb{R} \to \mathbb{R}$ définie par $f(x) = x^3 - x$. Quel(s) couple(s) $(a, b)$ avec $a \neq b$ vérifie(nt) $f(a) = f(b)$ ?

- [ ] **A)** $(0, 1)$
- [ ] **B)** $(1, -1)$
- [ ] **C)** $(2, -2)$
- [ ] **D)** $(\sqrt{2}, -\sqrt{2})$

<details>
<summary>Solution</summary>

**Réponse : A et B**

Car:

- $f(1) = 1^3 - 1 = 0$
- $f(-1) = (-1)^3 - (-1) = -1 + 1 = 0$
- $f(0) = 0^3 - 0 = 0$

Ces trois points ont la même image $0$ par la fonction $f$, ce qui montre que $f(a) = f(b)$ pour les couples $(0,1)$ et $(1,-1)$. 

</details>

---

#### Question 7 : Applications entre ensembles finis

Combien d'applications distinctes peut-on définir de $\{1, 2\}$ vers $\{a, b, c\}$ ?

- [ ] **A)** 6
- [ ] **B)** 8
- [ ] **C)** 9
- [ ] **D)** 12

<details>
<summary>Solution</summary>

**Réponse : C**

Pour chaque élément de $\{1, 2\}$, on a 3 choix dans $\{a, b, c\}$. Donc $3^2 = 9$ applications distinctes.

</details>

---

#### Question 8 : Propriété universelle

Soit $f : X \to Y$ une application surjective. Alors :

- [ ] **A)** $f$ admet un inverse à gauche
- [ ] **B)** $f$ admet un inverse à droite
- [ ] **C)** $f$ est bijective
- [ ] **D)** $f$ est injective

<details>
<summary>Solution</summary>

**Réponse : B**

Une application surjective admet un inverse à droite (axiome du choix). Elle n'admet un inverse à gauche que si elle est aussi injective.

</details>

---

#### Question 9 : Image et image réciproque

Soit $f : \mathbb{R} \to \mathbb{R}$ définie par $f(x) = x^2$. Que vaut $f^{-1}(\{4\})$ ?

- [ ] **A)** $\{2\}$
- [ ] **B)** $\{-2, 2\}$
- [ ] **C)** $\{4\}$
- [ ] **D)** $\emptyset$

<details>
<summary>Solution</summary>

**Réponse : B**

$f^{-1}(\{4\}) = \{x \in \mathbb{R} \mid f(x) = 4\} = \{x \in \mathbb{R} \mid x^2 = 4\} = \{-2, 2\}$.

</details>

---

#### Question 10 : Vrai ou Faux

**Énoncé :** Si $f : A \to B$ et $g : B \to A$ vérifient $f \circ g = \text{id}_B$, alors $f$ est surjective et $g$ est injective.

- [ ] **A)** Vrai
- [ ] **B)** Faux

<details>
<summary>Solution</summary>

**Réponse : A**

Si $f \circ g = \text{id}_B$, alors pour tout $b \in B$, on a $f(g(b)) = b$, donc $f$ est surjective. De plus, si $g(b_1) = g(b_2)$, alors $b_1 = f(g(b_1)) = f(g(b_2)) = b_2$, donc $g$ est injective.

</details>

---
