---
id: 191336b2
type: exercises
order: 11
title: Chapitre 5 Recherche d'extremum - exercices (A)
tags:
  - Mathématiques
  - Analyse
  - Optimisation
  - Extremum
  - Hessienne
  - Points critiques
createdAt: '2025-12-22T10:45:14.964Z'
level: regular
course: Topologie
courseId: 34e61f8e
chapter: Chapitre 5 Recherche d'extremum
chapterId: 70efcabd
---
# Exercices "Chapitre 5 Recherche d'extremum" (A)

---

## Exercice 1

**Problème :** Calcul des points critiques

Soit la fonction $f : \mathbb{R}^2 \to \mathbb{R}$ définie par :

$$ f(x, y) = x^3 + y^3 - 3xy $$

Déterminer tous les points critiques de la fonction $f$.

<details>

<summary>Solution</summary>

**Méthode :**

Un point critique est un point où le gradient de la fonction s'annule. Il faut calculer les dérivées partielles premières par rapport à $x$ et $y$, les égaler à zéro et résoudre le système d'équations résultant.

**Étapes :**

1.  **Calcul du gradient $\nabla f(x, y)$ :**

    Calculons les dérivées partielles :

    $$ \frac{\partial f}{\partial x} = 3x^2 - 3y $$

    $$ \frac{\partial f}{\partial y} = 3y^2 - 3x $$

2.  **Résolution du système $\nabla f(x, y) = (0, 0)$ :**

    Nous devons résoudre le système :

    $$ \begin{cases} 3x^2 - 3y = 0 \quad (1) \\ 3y^2 - 3x = 0 \quad (2) \end{cases} $$

3.  **Simplification et substitution :**

    De l'équation (1), on tire $y = x^2$.

    On substitue cette expression de $y$ dans l'équation (2) :

    $$ 3(x^2)^2 - 3x = 0 \implies 3x^4 - 3x = 0 $$

    $$ 3x(x^3 - 1) = 0 $$

4.  **Trouver les valeurs de $x$ :**

    Les solutions sont $x = 0$ ou $x^3 = 1 \implies x = 1$.

5.  **Trouver les valeurs de $y$ correspondantes :**
    *   Si $x = 0$, alors $y = 0^2 = 0$. Point : $(0, 0)$.
    *   Si $x = 1$, alors $y = 1^2 = 1$. Point : $(1, 1)$.

**Réponse :**

Les points critiques sont $(0, 0)$ et $(1, 1)$.

</details>

---

## Exercice 2

**Problème :** Matrice Hessienne et Théorème de Schwarz

Soit la fonction $f : \mathbb{R}^2 \to \mathbb{R}$ définie par :

$$ f(x, y) = x e^y + y \cos(x) $$

1. Calculer toutes les dérivées partielles d'ordre 2.
2. Écrire la matrice Hessienne $H_f(x, y)$.
3. Vérifier que le théorème de Schwarz est respecté.

<details>

<summary>Solution</summary>

**Méthode :**

Calculer d'abord les dérivées premières, puis dériver chacune d'elles par rapport à $x$ et $y$ pour obtenir les dérivées secondes. Le théorème de Schwarz stipule que les dérivées croisées doivent être égales pour une fonction de classe $\mathscr{C}^2$.

**Étapes :**

1.  **Dérivées partielles d'ordre 1 :**

    $$ \frac{\partial f}{\partial x} = e^y - y \sin(x) $$

    $$ \frac{\partial f}{\partial y} = x e^y + \cos(x) $$

2.  **Dérivées partielles d'ordre 2 :**
    *   Par rapport à $x$ deux fois :

        $$ \frac{\partial^2 f}{\partial x^2} = \frac{\partial}{\partial x}(e^y - y \sin(x)) = -y \cos(x) $$

    *   Par rapport à $y$ deux fois :

        $$ \frac{\partial^2 f}{\partial y^2} = \frac{\partial}{\partial y}(x e^y + \cos(x)) = x e^y $$

    *   Dérivée croisée $\partial x \partial y$ :

        $$ \frac{\partial^2 f}{\partial x \partial y} = \frac{\partial}{\partial x}(x e^y + \cos(x)) = e^y - \sin(x) $$

    *   Dérivée croisée $\partial y \partial x$ :

        $$ \frac{\partial^2 f}{\partial y \partial x} = \frac{\partial}{\partial y}(e^y - y \sin(x)) = e^y - \sin(x) $$

3.  **Matrice Hessienne :**

    $$ H_f(x, y) = \begin{pmatrix} -y \cos(x) & e^y - \sin(x) \\ e^y - \sin(x) & x e^y \end{pmatrix} $$

4.  **Vérification de Schwarz :**

    On observe bien que $\frac{\partial^2 f}{\partial x \partial y} = e^y - \sin(x)$ et $\frac{\partial^2 f}{\partial y \partial x} = e^y - \sin(x)$. Les termes sont identiques, le théorème est vérifié.

**Réponse :**

$H_f(x, y) = \begin{pmatrix} -y \cos(x) & e^y - \sin(x) \\ e^y - \sin(x) & x e^y \end{pmatrix}$. Les dérivées croisées sont égales.

</details>

---

## Exercice 3

**Problème :** Classification des extrema locaux

Soit la fonction $f(x, y) = x^2 + xy + y^2 - 3x - 3y$.

Trouver l'unique point critique et déterminer sa nature (minimum local, maximum local ou point selle).

<details>

<summary>Solution</summary>

**Méthode :**

1. Trouver le point critique (gradient nul).
2. Calculer la matrice Hessienne en ce point.
3. Utiliser le déterminant et la trace (ou les valeurs propres) pour classifier le point.

**Étapes :**

1.  **Recherche du point critique :**

    $$ \nabla f(x, y) = (2x + y - 3, \quad x + 2y - 3) $$

    Système à résoudre :

    $$ \begin{cases} 2x + y = 3 \\ x + 2y = 3 \end{cases} $$

    En soustrayant la deuxième ligne à deux fois la première :

    $2(2x+y) - (x+2y) = 6 - 3 \implies 3x = 3 \implies x = 1$.

    Alors $1 + 2y = 3 \implies 2y = 2 \implies y = 1$.

    Le point critique est $a = (1, 1)$.

2.  **Calcul de la Hessienne :**

    Les dérivées secondes sont constantes (fonction quadratique) :

    $$ \frac{\partial^2 f}{\partial x^2} = 2, \quad \frac{\partial^2 f}{\partial y^2} = 2, \quad \frac{\partial^2 f}{\partial x \partial y} = 1 $$

    $$ H_f(1, 1) = \begin{pmatrix} 2 & 1 \\ 1 & 2 \end{pmatrix} $$

3.  **Classification :**

    Calculons le déterminant et la trace de $H_f(1, 1)$ :

    *   $\det(H) = 2 \times 2 - 1 \times 1 = 3$.
    *   $\text{Trace}(H) = 2 + 2 = 4$.

    Puisque $\det(H) > 0$ et $\text{Trace}(H) > 0$, les deux valeurs propres sont strictement positives.

**Réponse :**

Le point $(1, 1)$ est un **minimum local strict**.

</details>

---

## Exercice 4

**Problème :** Identification d'un point selle

Soit la fonction $f(x, y) = x^2 - y^2 - 2x + 4y + 6$.

Montrer que le point critique de cette fonction est un point selle.

<details>

<summary>Solution</summary>

**Méthode :**

Trouver le point critique puis examiner le signe du déterminant de la matrice Hessienne. Si le déterminant est strictement négatif, c'est un point selle.

**Étapes :**

1.  **Gradient :**

    $$ \frac{\partial f}{\partial x} = 2x - 2, \quad \frac{\partial f}{\partial y} = -2y + 4 $$

2.  **Point critique :**

    $$ 2x - 2 = 0 \implies x = 1 $$

    $$ -2y + 4 = 0 \implies y = 2 $$

    Point critique en $a = (1, 2)$.

3.  **Matrice Hessienne :**

    $$ \frac{\partial^2 f}{\partial x^2} = 2, \quad \frac{\partial^2 f}{\partial y^2} = -2, \quad \frac{\partial^2 f}{\partial x \partial y} = 0 $$

    $$ H_f(1, 2) = \begin{pmatrix} 2 & 0 \\ 0 & -2 \end{pmatrix} $$

4.  **Analyse :**

    Le déterminant est $\det(H) = (2)(-2) - 0 = -4$.

    Puisque $\det(H) < 0$, les valeurs propres sont de signes opposés (ici $\lambda_1 = 2$ et $\lambda_2 = -2$).

**Réponse :**

Le déterminant de la Hessienne étant négatif ($-4$), le point $(1, 2)$ est un **point selle** (ou col). Ce n'est ni un maximum ni un minimum.

</details>

---

## Exercice 5

**Problème :** Formule de Taylor à l'ordre 2

Écrire le développement de Taylor à l'ordre 2 de la fonction $f(x, y) = \ln(x + y)$ au voisinage du point $a = (1, 1)$.

Utiliser la notation avec le vecteur déplacement $h = (h_1, h_2)$.

<details>

<summary>Solution</summary>

**Méthode :**

Appliquer la formule : $f(a+h) \approx f(a) + \langle \nabla f(a), h \rangle + \frac{1}{2} \langle H_f(a)h, h \rangle$.

**Étapes :**

1.  **Valeur en $a$ :**

    $f(1, 1) = \ln(1+1) = \ln(2)$.

2.  **Gradient en $a$ :**

    $$ \partial_x f = \frac{1}{x+y}, \quad \partial_y f = \frac{1}{x+y} $$

    Au point $(1,1)$ : $\nabla f(1,1) = (\frac{1}{2}, \frac{1}{2})$.

    Terme linéaire : $\frac{1}{2}h_1 + \frac{1}{2}h_2$.

3.  **Hessienne en $a$ :**

    $$ \partial_{xx} f = \frac{-1}{(x+y)^2}, \quad \partial_{yy} f = \frac{-1}{(x+y)^2}, \quad \partial_{xy} f = \frac{-1}{(x+y)^2} $$

    Au point $(1,1)$ : $\frac{-1}{(1+1)^2} = -\frac{1}{4}$.

    $$ H_f(1,1) = \begin{pmatrix} -1/4 & -1/4 \\ -1/4 & -1/4 \end{pmatrix} $$

4.  **Terme quadratique :**

    $$ \frac{1}{2} [ h_1 (-\tfrac{1}{4}) h_1 + h_1 (-\tfrac{1}{4}) h_2 + h_2 (-\tfrac{1}{4}) h_1 + h_2 (-\tfrac{1}{4}) h_2 ] $$

    $$ = -\frac{1}{8} (h_1^2 + 2h_1h_2 + h_2^2) = -\frac{1}{8}(h_1 + h_2)^2 $$

**Réponse :**

$$ f(1+h_1, 1+h_2) = \ln(2) + \frac{1}{2}(h_1 + h_2) - \frac{1}{8}(h_1 + h_2)^2 + o(\|h\|^2) $$

</details>

---

## Exercice 6

**Problème :** Optimisation sur un compact (Rectangle)

Trouver les extremums globaux (minimum et maximum absolus) de la fonction $f(x, y) = x^2 - 2y^2$ sur le domaine fermé et borné $D = [0, 1] \times [0, 1]$.

<details>

<summary>Solution</summary>

**Méthode :**

Comme $D$ est compact, les extrema existent. On compare :

1. Les points critiques à l'intérieur de $D$.
2. Les extrema de la fonction restreinte aux bords de $D$.
3. Les "coins" du domaine.

**Étapes :**

1.  **Points critiques intérieurs :**

    $\nabla f = (2x, -4y)$. S'annule en $(0, 0)$.

    Le point $(0,0)$ est sur le bord (coin), donc pas de point critique strict à l'intérieur $]0,1[\times]0,1[$.

2.  **Étude aux bords (4 segments) :**
    *   **Segment $y=0, x \in [0,1]$ :** $g_1(x) = f(x,0) = x^2$. Croissant sur $[0,1]$.

        Min en $x=0$ ($f=0$), Max en $x=1$ ($f=1$).

    *   **Segment $y=1, x \in [0,1]$ :** $g_2(x) = f(x,1) = x^2 - 2$. Croissant.

        Min en $x=0$ ($f=-2$), Max en $x=1$ ($f=-1$).

    *   **Segment $x=0, y \in [0,1]$ :** $g_3(y) = f(0,y) = -2y^2$. Décroissant.

        Max en $y=0$ ($f=0$), Min en $y=1$ ($f=-2$).

    *   **Segment $x=1, y \in [0,1]$ :** $g_4(y) = f(1,y) = 1 - 2y^2$. Décroissant.

        Max en $y=0$ ($f=1$), Min en $y=1$ ($f=-1$).

3.  **Comparaison des valeurs candidates :**

    Nous avons trouvé les valeurs : $0, 1, -2, -1$.

    *   Maximum global : $1$ (atteint en $(1,0)$).
    *   Minimum global : $-2$ (atteint en $(0,1)$).

**Réponse :**

Maximum global : $1$ au point $(1, 0)$.

Minimum global : $-2$ au point $(0, 1)$.

</details>

---

## Exercice 7

**Problème :** Optimisation sur un compact (Disque)

Trouver le maximum global et le minimum global de la fonction $f(x, y) = x + y$ sur le disque unité fermé $D = \{ (x, y) \in \mathbb{R}^2 \mid x^2 + y^2 \leq 1 \}$.

<details>

<summary>Solution</summary>

**Méthode :**

Chercher les points critiques à l'intérieur, puis étudier la fonction sur le bord (cercle $x^2+y^2=1$) en utilisant une paramétrisation.

**Étapes :**

1.  **Intérieur ($x^2 + y^2 < 1$) :**

    $\nabla f = (1, 1)$. Ce vecteur n'est jamais nul. Il n'y a aucun point critique à l'intérieur. Les extrema sont donc sur le bord.

2.  **Frontière ($x^2 + y^2 = 1$) :**

    On peut paramétrer le bord par $x = \cos t$, $y = \sin t$ avec $t \in [0, 2\pi]$.

    La fonction devient $g(t) = \cos t + \sin t$.

3.  **Optimisation de $g(t)$ :**

    $g'(t) = -\sin t + \cos t$.

    $g'(t) = 0 \iff \sin t = \cos t \iff \tan t = 1$.

    Dans $[0, 2\pi]$, les solutions sont $t = \frac{\pi}{4}$ et $t = \frac{5\pi}{4}$.

4.  **Calcul des valeurs :**
    *   Pour $t = \frac{\pi}{4}$ : $x = \frac{\sqrt{2}}{2}, y = \frac{\sqrt{2}}{2}$.

        $f(\frac{\sqrt{2}}{2}, \frac{\sqrt{2}}{2}) = \sqrt{2}$.

    *   Pour $t = \frac{5\pi}{4}$ : $x = -\frac{\sqrt{2}}{2}, y = -\frac{\sqrt{2}}{2}$.

        $f(-\frac{\sqrt{2}}{2}, -\frac{\sqrt{2}}{2}) = -\sqrt{2}$.

**Réponse :**

Maximum global : $\sqrt{2}$ au point $(\frac{\sqrt{2}}{2}, \frac{\sqrt{2}}{2})$.

Minimum global : $-\sqrt{2}$ au point $(-\frac{\sqrt{2}}{2}, -\frac{\sqrt{2}}{2})$.

</details>

---

## Exercice 8

**Problème :** Application - Minimisation de distance

On cherche le point du plan d'équation $x + y + z = 1$ qui est le plus proche de l'origine $(0,0,0)$.

On considère la fonction "carré de la distance" : $f(x, y, z) = x^2 + y^2 + z^2$.

1. Substituer $z$ en utilisant l'équation du plan pour obtenir une fonction de deux variables $g(x, y)$.
2. Trouver le minimum de $g(x, y)$.

<details>

<summary>Solution</summary>

**Méthode :**

Minimiser la distance revient à minimiser le carré de la distance. En utilisant la contrainte $z = 1 - x - y$, on transforme le problème en une minimisation sans contrainte à deux variables.

**Étapes :**

1.  **Substitution :**

    $f(x, y, z) = x^2 + y^2 + z^2$.

    Avec $z = 1 - x - y$, on définit :

    $g(x, y) = x^2 + y^2 + (1 - x - y)^2$.

2.  **Points critiques de $g$ :**

    Calculons les dérivées partielles :

    $$ \frac{\partial g}{\partial x} = 2x + 2(1 - x - y)(-1) = 2x - 2 + 2x + 2y = 4x + 2y - 2 $$

    $$ \frac{\partial g}{\partial y} = 2y + 2(1 - x - y)(-1) = 2y - 2 + 2x + 2y = 2x + 4y - 2 $$

    On résout le système :

    $$ \begin{cases} 4x + 2y = 2 \implies 2x + y = 1 \\ 2x + 4y = 2 \implies x + 2y = 1 \end{cases} $$

    Par soustraction : $(2x+y) - (x+2y) = 0 \implies x - y = 0 \implies x = y$.

    Donc $3x = 1 \implies x = 1/3$ et $y = 1/3$.

3.  **Vérification (Nature du point) :**

    Hessienne de $g$ : $H_g = \begin{pmatrix} 4 & 2 \\ 2 & 4 \end{pmatrix}$.

    $\det(H) = 16 - 4 = 12 > 0$ et $\text{Trace} = 8 > 0$. C'est bien un minimum.

4.  **Calcul de $z$ :**

    $z = 1 - 1/3 - 1/3 = 1/3$.

**Réponse :**

Le point le plus proche est $(\frac{1}{3}, \frac{1}{3}, \frac{1}{3})$.

</details>

---

## Exercice 9

**Problème :** Points critiques multiples

Soit $f(x, y) = x^4 + y^4 - 4xy$.

1. Montrer qu'il y a trois points critiques : $(0,0)$, $(1,1)$ et $(-1,-1)$.
2. Classifier chacun de ces points.

<details>

<summary>Solution</summary>

**Méthode :**

Calcul du gradient pour trouver les points, puis calcul de la Hessienne en chaque point pour les classifier.

**Étapes :**

1.  **Recherche des points critiques :**

    $\nabla f = (4x^3 - 4y, \quad 4y^3 - 4x)$.

    Système : $y = x^3$ et $x = y^3$.

    $x = (x^3)^3 = x^9 \implies x(x^8 - 1) = 0$.

    Solutions réelles pour $x$ : $0, 1, -1$.

    *   $x=0 \implies y=0$. Point $P_1(0,0)$.
    *   $x=1 \implies y=1$. Point $P_2(1,1)$.
    *   $x=-1 \implies y=-1$. Point $P_3(-1,-1)$.

2.  **Hessienne générale :**

    $$ H_f(x, y) = \begin{pmatrix} 12x^2 & -4 \\ -4 & 12y^2 \end{pmatrix} $$

3.  **Classification de $P_1(0,0)$ :**

    $H_f(0,0) = \begin{pmatrix} 0 & -4 \\ -4 & 0 \end{pmatrix}$.

    $\det = -16 < 0$.

    C'est un **point selle**.

4.  **Classification de $P_2(1,1)$ :**

    $H_f(1,1) = \begin{pmatrix} 12 & -4 \\ -4 & 12 \end{pmatrix}$.

    $\det = 144 - 16 = 128 > 0$. Trace $= 24 > 0$.

    C'est un **minimum local**.

5.  **Classification de $P_3(-1,-1)$ :**

    $H_f(-1,-1) = \begin{pmatrix} 12 & -4 \\ -4 & 12 \end{pmatrix}$. Identique à $P_2$.

    C'est un **minimum local**.

**Réponse :**

$(0,0)$ est un point selle. $(1,1)$ et $(-1,-1)$ sont des minima locaux.

</details>

---

## Exercice 10

**Problème :** Questions conceptuelles

Répondre par Vrai ou Faux et justifier brièvement.

1. Si $\nabla f(a) = 0$, alors $f$ admet forcément un extremum local en $a$.
2. Une fonction continue sur un disque fermé et borné admet toujours un maximum global.
3. Si le déterminant de la matrice Hessienne en un point critique est strictement positif, alors ce point est un extremum local (min ou max).

<details>

<summary>Solution</summary>

**Réponses :**

1.  **FAUX.**

    La condition $\nabla f(a) = 0$ est nécessaire mais pas suffisante. Ce pourrait être un point selle (comme $x^2 - y^2$ en $(0,0)$).

2.  **VRAI.**

    C'est le théorème de Weierstrass (ou théorème des bornes atteintes). Une fonction continue sur un compact (fermé borné) atteint ses bornes.

3.  **VRAI.**

    Si $\det(H_f(a)) > 0$, les valeurs propres sont de même signe et non nulles.

    *   Si elles sont positives (Trace > 0), c'est un minimum.
    *   Si elles sont négatives (Trace < 0), c'est un maximum.

    Dans les deux cas, c'est un extremum. (Le cas du point selle correspond à $\det < 0$).

</details>
