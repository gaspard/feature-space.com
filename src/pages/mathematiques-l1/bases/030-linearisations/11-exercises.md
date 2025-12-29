---
id: 449fe97b
type: exercises
order: 11
title: Linéarisations - exercices (A)
tags:
  - trigonométrie
  - linéarisation
  - hyperbolique
  - formules
  - mathématiques
createdAt: '2025-12-28T00:00:00.000Z'
level: regular
course: Bases mathématiques
courseId: 4e5f6a7b
chapter: Linéarisations
chapterId: 8b9c0d1e
---
# Exercices "Linéarisations" (A)

---

## Exercise 1

**Problème :** Calcul de valeur exacte via les formules d'addition.

En remarquant que $\frac{7\pi}{12} = \frac{\pi}{3} + \frac{\pi}{4}$, calculez la valeur exacte de $\sin\left(\frac{7\pi}{12}\right)$.

<details>

<summary>Solution</summary>

**Méthode :** Nous utilisons la formule d'addition du sinus : $\sin(a + b) = \sin(a)\cos(b) + \cos(a)\sin(b)$.

**Étapes :**

1.  Identifions les angles $a$ et $b$ :

    $$ a = \frac{\pi}{3} \quad \text{et} \quad b = \frac{\pi}{4} $$

2.  Rappelons les valeurs remarquables nécessaires :

    $$ \sin\left(\frac{\pi}{3}\right) = \frac{\sqrt{3}}{2}, \quad \cos\left(\frac{\pi}{3}\right) = \frac{1}{2} $$

    $$ \sin\left(\frac{\pi}{4}\right) = \frac{\sqrt{2}}{2}, \quad \cos\left(\frac{\pi}{4}\right) = \frac{\sqrt{2}}{2} $$

3.  Appliquons la formule :

    $$ \sin\left(\frac{\pi}{3} + \frac{\pi}{4}\right) = \sin\left(\frac{\pi}{3}\right)\cos\left(\frac{\pi}{4}\right) + \cos\left(\frac{\pi}{3}\right)\sin\left(\frac{\pi}{4}\right) $$

4.  Substituons les valeurs :

    $$ = \left(\frac{\sqrt{3}}{2}\right)\left(\frac{\sqrt{2}}{2}\right) + \left(\frac{1}{2}\right)\left(\frac{\sqrt{2}}{2}\right) $$

5.  Simplifions l'expression :

    $$ = \frac{\sqrt{6}}{4} + \frac{\sqrt{2}}{4} $$

**Réponse :** $$ \sin\left(\frac{7\pi}{12}\right) = \frac{\sqrt{6} + \sqrt{2}}{4} $$

</details>

---

## Exercise 2

**Problème :** Duplication et cadrants.

Soit $x$ un réel tel que $\cos(x) = -\frac{3}{5}$ et $x \in [\pi, \frac{3\pi}{2}]$ (3ème quadrant).

Calculez $\sin(2x)$.

<details>

<summary>Solution</summary>

**Méthode :** Pour calculer $\sin(2x)$, nous avons besoin de la formule $\sin(2x) = 2\sin(x)\cos(x)$. Il nous manque la valeur de $\sin(x)$, que nous trouverons via l'identité fondamentale, en faisant attention au signe.

**Étapes :**

1.  Utilisons l'identité fondamentale $\cos^2(x) + \sin^2(x) = 1$ pour trouver $\sin^2(x)$ :

    $$ \left(-\frac{3}{5}\right)^2 + \sin^2(x) = 1 $$

    $$ \frac{9}{25} + \sin^2(x) = 1 \implies \sin^2(x) = 1 - \frac{9}{25} = \frac{16}{25} $$

2.  Déterminons le signe de $\sin(x)$. Comme $x \in [\pi, \frac{3\pi}{2}]$, le sinus est négatif.

    $$ \sin(x) = -\sqrt{\frac{16}{25}} = -\frac{4}{5} $$

3.  Appliquons la formule de duplication :

    $$ \sin(2x) = 2\sin(x)\cos(x) $$

    $$ \sin(2x) = 2\left(-\frac{4}{5}\right)\left(-\frac{3}{5}\right) $$

4.  Calculons le produit :

    $$ \sin(2x) = 2 \cdot \frac{12}{25} = \frac{24}{25} $$

**Réponse :** $$ \sin(2x) = \frac{24}{25} $$

</details>

---

## Exercise 3

**Problème :** Transformation de produit en somme (Linéarisation simple).

Écrivez le produit suivant sous forme d'une somme de fonctions trigonométriques :

$$ A(x) = \cos(3x)\sin(2x) $$

<details>

<summary>Solution</summary>

**Méthode :** Nous utilisons la formule de linéarisation pour un produit cosinus-sinus :

$\sin(a)\cos(b) = \frac{1}{2}[\sin(a+b) + \sin(a-b)]$. Notez que la formule standard place souvent le sinus en premier, mais la multiplication est commutative.

**Étapes :**

1.  Identifions $a$ et $b$. Pour utiliser la forme $\sin(a)\cos(b)$, posons $a=2x$ (l'argument du sinus) et $b=3x$ (l'argument du cosinus).

    $$ \sin(2x)\cos(3x) = \frac{1}{2}[\sin(2x+3x) + \sin(2x-3x)] $$

2.  Effectuons les additions dans les arguments :

    $$ = \frac{1}{2}[\sin(5x) + \sin(-x)] $$

3.  Utilisons la parité du sinus ($\sin(-x) = -\sin(x)$) pour simplifier :

    $$ = \frac{1}{2}[\sin(5x) - \sin(x)] $$

4.  Distribuons le facteur (optionnel) :

    $$ = \frac{1}{2}\sin(5x) - \frac{1}{2}\sin(x) $$

**Réponse :** $$ \cos(3x)\sin(2x) = \frac{1}{2}\sin(5x) - \frac{1}{2}\sin(x) $$

</details>

---

## Exercise 4

**Problème :** Résolution d'équation par factorisation.

Résolvez dans $\mathbb{R}$ l'équation suivante en transformant la somme en produit :

$$ \cos(x) + \cos(3x) = 0 $$

<details>

<summary>Solution</summary>

**Méthode :** Nous utilisons la formule de factorisation (Simpson) : $\cos(p) + \cos(q) = 2\cos(\frac{p+q}{2})\cos(\frac{p-q}{2})$. Une fois factorisée, l'équation devient un produit nul.

**Étapes :**

1.  Appliquons la formule avec $p=3x$ et $q=x$ (l'ordre n'importe pas pour la somme) :

    $$ \cos(3x) + \cos(x) = 2\cos\left(\frac{3x+x}{2}\right)\cos\left(\frac{3x-x}{2}\right) $$

    $$ = 2\cos(2x)\cos(x) $$

2.  L'équation devient :

    $$ 2\cos(2x)\cos(x) = 0 $$

3.  Un produit est nul si l'un au moins de ses facteurs est nul :

    $$ \cos(2x) = 0 \quad \text{ou} \quad \cos(x) = 0 $$

4.  Résolvons $\cos(x) = 0$ :

    $$ x = \frac{\pi}{2} + k\pi, \quad k \in \mathbb{Z} $$

5.  Résolvons $\cos(2x) = 0$ :

    $$ 2x = \frac{\pi}{2} + k\pi \implies x = \frac{\pi}{4} + \frac{k\pi}{2}, \quad k \in \mathbb{Z} $$

    *(Note : L'ensemble des solutions de la deuxième équation ne contient pas totalement la première, nous devons garder les deux séries ou les unir).*

**Réponse :** $$ S = \left\{ \frac{\pi}{2} + k\pi \mid k \in \mathbb{Z} \right\} \cup \left\{ \frac{\pi}{4} + k\frac{\pi}{2} \mid k \in \mathbb{Z} \right\} $$

</details>

---

## Exercise 5

**Problème :** Linéarisation d'une puissance paire.

Linéarisez l'expression suivante (i.e., écrivez-la sans exposant) :

$$ f(x) = \sin^4(x) $$

<details>

<summary>Solution</summary>

**Méthode :** Nous allons appliquer la formule de linéarisation du carré $\sin^2(a) = \frac{1-\cos(2a)}{2}$ deux fois successivement.

**Étapes :**

1.  Écrivons $\sin^4(x)$ comme le carré de $\sin^2(x)$ :

    $$ \sin^4(x) = (\sin^2(x))^2 = \left(\frac{1 - \cos(2x)}{2}\right)^2 $$

2.  Développons l'identité remarquable au numérateur :

    $$ = \frac{1 - 2\cos(2x) + \cos^2(2x)}{4} $$

    $$ = \frac{1}{4} - \frac{1}{2}\cos(2x) + \frac{1}{4}\cos^2(2x) $$

3.  Il reste un terme au carré : $\cos^2(2x)$. Appliquons la formule de linéarisation $\cos^2(u) = \frac{1+\cos(2u)}{2}$ avec $u=2x$ :

    $$ \cos^2(2x) = \frac{1 + \cos(4x)}{2} $$

4.  Substituons dans l'expression principale :

    $$ f(x) = \frac{1}{4} - \frac{1}{2}\cos(2x) + \frac{1}{4}\left(\frac{1 + \cos(4x)}{2}\right) $$

5.  Simplifions et regroupons les constantes :

    $$ f(x) = \frac{1}{4} - \frac{1}{2}\cos(2x) + \frac{1}{8} + \frac{1}{8}\cos(4x) $$

    $$ f(x) = \left(\frac{2}{8} + \frac{1}{8}\right) - \frac{1}{2}\cos(2x) + \frac{1}{8}\cos(4x) $$

**Réponse :** $$ \sin^4(x) = \frac{3}{8} - \frac{1}{2}\cos(2x) + \frac{1}{8}\cos(4x) $$

</details>

---

## Exercise 6

**Problème :** Linéarisation utilisant les formules d'Euler.

À l'aide des formules d'Euler, linéarisez l'expression :

$$ g(x) = \cos(x)\sin^2(x) $$

<details>

<summary>Solution</summary>

**Méthode :** Nous remplaçons $\cos(x)$ et $\sin(x)$ par leurs définitions exponentielles, développons, puis regroupons pour retrouver des fonctions trigonométriques.

**Étapes :**

1.  Rappelons les formules d'Euler :

    $$ \cos(x) = \frac{e^{ix} + e^{-ix}}{2}, \quad \sin(x) = \frac{e^{ix} - e^{-ix}}{2i} $$

2.  Substituons dans $g(x)$ :

    $$ g(x) = \left(\frac{e^{ix} + e^{-ix}}{2}\right) \left(\frac{e^{ix} - e^{-ix}}{2i}\right)^2 $$

3.  Calculons le carré du sinus. Attention $(2i)^2 = -4$ :

    $$ \left(\frac{e^{ix} - e^{-ix}}{2i}\right)^2 = \frac{e^{i2x} - 2e^{ix}e^{-ix} + e^{-i2x}}{-4} = \frac{e^{i2x} - 2 + e^{-i2x}}{-4} $$

4.  Multiplions par le cosinus :

    $$ g(x) = \frac{e^{ix} + e^{-ix}}{2} \cdot \left(-\frac{1}{4}\right)(e^{i2x} - 2 + e^{-i2x}) $$

    $$ = -\frac{1}{8} (e^{ix} + e^{-ix})(e^{i2x} - 2 + e^{-i2x}) $$

5.  Développons le produit :

    $$ (e^{ix} + e^{-ix})(e^{i2x} - 2 + e^{-i2x}) = e^{i3x} - 2e^{ix} + e^{-ix} + e^{ix} - 2e^{-ix} + e^{-i3x} $$

    $$ = (e^{i3x} + e^{-i3x}) - (e^{ix} + e^{-ix}) $$

6.  Réinsérons dans l'expression de $g(x)$ et reconnaissons les cosinus ($e^{iku} + e^{-iku} = 2\cos(ku)$) :

    $$ g(x) = -\frac{1}{8} [2\cos(3x) - 2\cos(x)] $$

    $$ g(x) = -\frac{1}{4}\cos(3x) + \frac{1}{4}\cos(x) $$

**Réponse :** $$ \cos(x)\sin^2(x) = \frac{1}{4}\cos(x) - \frac{1}{4}\cos(3x) $$

</details>

---

## Exercise 7

**Problème :** Calculs avec les fonctions hyperboliques.

Soit $x$ un réel tel que $\sinh(x) = \frac{3}{4}$.

1. Calculez $\cosh(x)$.
2. En déduire $\tanh(x)$.

<details>

<summary>Solution</summary>

**Méthode :** Nous utilisons la relation fondamentale de la trigonométrie hyperbolique $\cosh^2(x) - \sinh^2(x) = 1$. Contrairement au cas circulaire, $\cosh(x)$ est toujours positif pour $x$ réel.

**Étapes :**

1.  Isolons $\cosh^2(x)$ dans la relation fondamentale :

    $$ \cosh^2(x) = 1 + \sinh^2(x) $$

2.  Calculons la valeur :

    $$ \cosh^2(x) = 1 + \left(\frac{3}{4}\right)^2 = 1 + \frac{9}{16} = \frac{16+9}{16} = \frac{25}{16} $$

3.  Prenons la racine carrée. Comme $\cosh(x) \geq 1 > 0$ pour tout réel :

    $$ \cosh(x) = \sqrt{\frac{25}{16}} = \frac{5}{4} $$

4.  Calculons la tangente hyperbolique par définition $\tanh(x) = \frac{\sinh(x)}{\cosh(x)}$ :

    $$ \tanh(x) = \frac{3/4}{5/4} = \frac{3}{4} \cdot \frac{4}{5} = \frac{3}{5} $$

**Réponse :** $$ \cosh(x) = \frac{5}{4}, \quad \tanh(x) = \frac{3}{5} $$

</details>

---

## Exercise 8

**Problème :** Résolution d'équation hyperbolique.

Résolvez dans $\mathbb{R}$ l'équation suivante :

$$ 2\cosh(x) + \sinh(x) = 4 $$

<details>

<summary>Solution</summary>

**Méthode :** La méthode la plus sûre est de revenir à la définition exponentielle de $\cosh$ et $\sinh$. Cela transformera l'équation en une équation polynômiale en $X = e^x$.

**Étapes :**

1.  Remplaçons par les définitions :

    $$ 2\left(\frac{e^x + e^{-x}}{2}\right) + \left(\frac{e^x - e^{-x}}{2}\right) = 4 $$

2.  Simplifions (multiplions tout par 2 pour éliminer les fractions) :

    $$ 2(e^x + e^{-x}) + (e^x - e^{-x}) = 8 $$

    $$ 2e^x + 2e^{-x} + e^x - e^{-x} = 8 $$

    $$ 3e^x + e^{-x} = 8 $$

3.  Multiplions tout par $e^x$ (qui est strictement positif) pour éliminer $e^{-x}$ :

    $$ 3(e^x)^2 + 1 = 8e^x $$

    $$ 3(e^x)^2 - 8e^x + 1 = 0 $$

4.  Posons $X = e^x$. Nous résolvons l'équation quadratique $3X^2 - 8X + 1 = 0$.

    $$ \Delta = (-8)^2 - 4(3)(1) = 64 - 12 = 52 $$

    $$ X = \frac{8 \pm \sqrt{52}}{6} = \frac{8 \pm 2\sqrt{13}}{6} = \frac{4 \pm \sqrt{13}}{3} $$

5.  Les deux solutions pour $X$ sont positives ($\sqrt{13} \approx 3.6$, donc $4-\sqrt{13} > 0$), donc valides pour une exponentielle.

    $$ e^x = \frac{4 + \sqrt{13}}{3} \quad \text{ou} \quad e^x = \frac{4 - \sqrt{13}}{3} $$

6.  Prenons le logarithme népérien :

    $$ x_1 = \ln\left(\frac{4 + \sqrt{13}}{3}\right), \quad x_2 = \ln\left(\frac{4 - \sqrt{13}}{3}\right) $$

**Réponse :** $$ S = \left\{ \ln\left(\frac{4 - \sqrt{13}}{3}\right), \ln\left(\frac{4 + \sqrt{13}}{3}\right) \right\} $$

</details>

---

## Exercise 9

**Problème :** Application de la formule de Moivre.

Utilisez la formule de Moivre pour exprimer $\cos(3x)$ uniquement en fonction de $\cos(x)$. (Ce résultat permet de retrouver la formule de l'angle triple).

<details>

<summary>Solution</summary>

**Méthode :** Nous utilisons $(\cos x + i\sin x)^3 = \cos(3x) + i\sin(3x)$. Nous développons le membre de gauche et identifions la partie réelle.

**Étapes :**

1.  Développons $(\cos x + i\sin x)^3$ avec le binôme de Newton $(a+b)^3 = a^3 + 3a^2b + 3ab^2 + b^3$ :

    $$ (\cos x + i\sin x)^3 = \cos^3 x + 3\cos^2 x (i\sin x) + 3\cos x (i\sin x)^2 + (i\sin x)^3 $$

2.  Simplifions les puissances de $i$ ($i^2 = -1, i^3 = -i$) :

    $$ = \cos^3 x + 3i\cos^2 x \sin x - 3\cos x \sin^2 x - i\sin^3 x $$

3.  Regroupons les parties réelles et imaginaires :

    $$ \text{Re} = \cos^3 x - 3\cos x \sin^2 x $$

    $$ \text{Im} = 3\cos^2 x \sin x - \sin^3 x $$

4.  D'après Moivre, la partie réelle est égale à $\cos(3x)$ :

    $$ \cos(3x) = \cos^3 x - 3\cos x \sin^2 x $$

5.  Pour n'avoir que du cosinus, remplaçons $\sin^2 x$ par $1 - \cos^2 x$ :

    $$ \cos(3x) = \cos^3 x - 3\cos x (1 - \cos^2 x) $$

    $$ \cos(3x) = \cos^3 x - 3\cos x + 3\cos^3 x $$

6.  Simplifions :

    $$ \cos(3x) = 4\cos^3 x - 3\cos x $$

**Réponse :** $$ \cos(3x) = 4\cos^3(x) - 3\cos(x) $$

</details>

---

## Exercise 10

**Problème :** Vérification de dérivées et fonctions hyperboliques.

Soit la fonction $y(x) = 5\cosh(2x) - 3\sinh(2x)$.

Montrez que cette fonction est solution de l'équation différentielle $y'' - 4y = 0$.

<details>

<summary>Solution</summary>

**Méthode :** Nous allons calculer la dérivée première $y'$, puis la dérivée seconde $y''$, et substituer dans l'équation pour vérifier l'égalité.

**Étapes :**

1.  Rappelons les dérivées des fonctions composées (règle de la chaîne) :

    $$ (\cosh(u))' = u' \sinh(u) \quad \text{et} \quad (\sinh(u))' = u' \cosh(u) $$

    Ici $u = 2x$, donc $u' = 2$.

2.  Calculons $y'(x)$ :

    $$ y'(x) = 5(2\sinh(2x)) - 3(2\cosh(2x)) $$

    $$ y'(x) = 10\sinh(2x) - 6\cosh(2x) $$

3.  Calculons $y''(x)$ en dérivant $y'(x)$ :

    $$ y''(x) = 10(2\cosh(2x)) - 6(2\sinh(2x)) $$

    $$ y''(x) = 20\cosh(2x) - 12\sinh(2x) $$

4.  Factorisons par 4 pour faire apparaître l'expression originale de $y(x)$ :

    $$ y''(x) = 4(5\cosh(2x) - 3\sinh(2x)) $$

    $$ y''(x) = 4y(x) $$

5.  Vérifions l'équation différentielle :

    $$ y'' - 4y = 4y - 4y = 0 $$

    L'égalité est vérifiée.

**Réponse :** La fonction $y(x)$ vérifie bien $y'' = 4y$, donc $y'' - 4y = 0$.

</details>
