---
id: 64ea55b7
type: exercises
order: 11
title: Développements Limités - exercices (A)
tags:
  - développements limités
  - analyse
  - Taylor
  - approximation
  - limites
  - mathématiques
createdAt: '2025-12-28T12:00:00.000Z'
level: regular
course: Bases mathématiques
courseId: 4e5f6a7b
chapter: Développements Limités
chapterId: 8b9c0d1e
---
# Exercices "Développements Limités"

---

## Exercice 1

**Problème : Formule de Taylor-Young et calcul direct**

Soit la fonction $f(x) = \sqrt{1+x}$.

1. Calculer les dérivées successives de $f$ jusqu'à l'ordre 3.
2. En utilisant la formule de Taylor-Young, écrire le développement limité de $f(x)$ à l'ordre 3 au voisinage de 0.
3. Vérifier que ce résultat correspond à la formule usuelle de $(1+x)^\alpha$ pour $\alpha = \frac{1}{2}$.

<details>

<summary>Solution</summary>

**Méthode :** On calcule $f(0)$, $f'(0)$, $f''(0)$ et $f'''(0)$, puis on applique la formule :

$$ f(x) = f(0) + f'(0)x + \frac{f''(0)}{2!}x^2 + \frac{f'''(0)}{3!}x^3 + o(x^3) $$

**Étapes :**

1.  **Calcul des dérivées :**
    *   $f(x) = (1+x)^{1/2} \implies f(0) = 1$
    *   $f'(x) = \frac{1}{2}(1+x)^{-1/2} \implies f'(0) = \frac{1}{2}$
    *   $f''(x) = \frac{1}{2}(-\frac{1}{2})(1+x)^{-3/2} = -\frac{1}{4}(1+x)^{-3/2} \implies f''(0) = -\frac{1}{4}$
    *   $f'''(x) = -\frac{1}{4}(-\frac{3}{2})(1+x)^{-5/2} = \frac{3}{8}(1+x)^{-5/2} \implies f'''(0) = \frac{3}{8}$

2.  **Application de la formule de Taylor-Young :**

    $$ f(x) = 1 + \frac{1}{2}x + \frac{-1/4}{2}x^2 + \frac{3/8}{6}x^3 + o(x^3) $$

    Simplifions les coefficients :

    *   Terme en $x^2$ : $\frac{-1/4}{2} = -\frac{1}{8}$
    *   Terme en $x^3$ : $\frac{3/8}{6} = \frac{3}{48} = \frac{1}{16}$

3.  **Comparaison avec la formule usuelle :**

    La formule pour $(1+x)^\alpha$ est $1 + \alpha x + \frac{\alpha(\alpha-1)}{2}x^2 + \frac{\alpha(\alpha-1)(\alpha-2)}{6}x^3$.

    Avec $\alpha = 1/2$ :

    *   $x$ : $1/2$ (OK)
    *   $x^2$ : $\frac{(1/2)(-1/2)}{2} = -1/8$ (OK)
    *   $x^3$ : $\frac{(1/2)(-1/2)(-3/2)}{6} = \frac{3/8}{6} = 1/16$ (OK)

**Réponse :**

$$ \sqrt{1+x} = 1 + \frac{1}{2}x - \frac{1}{8}x^2 + \frac{1}{16}x^3 + o(x^3) $$

</details>

---

## Exercice 2

**Problème : Combinaison linéaire de développements usuels**

Donner le développement limité à l'ordre 3 au voisinage de 0 de la fonction :

$$ f(x) = 2e^x - \frac{1}{1+x} + \sin(x) $$

<details>

<summary>Solution</summary>

**Méthode :** On utilise la propriété de linéarité des développements limités. On écrit le DL de chaque fonction usuelle à l'ordre 3, puis on effectue la somme terme à terme.

**Étapes :**

1.  **Rappel des DL usuels à l'ordre 3 :**
    *   $e^x = 1 + x + \frac{x^2}{2} + \frac{x^3}{6} + o(x^3)$
    *   $\frac{1}{1+x} = 1 - x + x^2 - x^3 + o(x^3)$
    *   $\sin(x) = x - \frac{x^3}{6} + o(x^3)$

2.  **Combinaison linéaire :**

    On calcule $2e^x - (1+x)^{-1} + \sin(x)$ en alignant les puissances :

    *   Terme constant : $2(1) - (1) + (0) = 1$
    *   Terme en $x$ : $2(1) - (-1) + 1 = 2 + 1 + 1 = 4$
    *   Terme en $x^2$ : $2(\frac{1}{2}) - (1) + (0) = 1 - 1 = 0$
    *   Terme en $x^3$ : $2(\frac{1}{6}) - (-1) + (-\frac{1}{6}) = \frac{1}{3} + 1 - \frac{1}{6} = \frac{2}{6} + \frac{6}{6} - \frac{1}{6} = \frac{7}{6}$

3.  **Écriture finale :**

    N'oubliez pas d'ajouter le terme d'erreur $o(x^3)$.

**Réponse :**

$$ f(x) = 1 + 4x + \frac{7}{6}x^3 + o(x^3) $$

*(Notez l'absence du terme en $x^2$ car son coefficient est nul).*

</details>

---

## Exercice 3

**Problème : Produit de développements limités**

Calculer le développement limité à l'ordre 3 au voisinage de 0 de la fonction :

$$ f(x) = e^x \cos(x) $$

<details>

<summary>Solution</summary>

**Méthode :** On effectue le produit des parties régulières (polynômes) des DL de $e^x$ et $\cos(x)$, en ne conservant que les monômes de degré $\le 3$.

**Étapes :**

1.  **DL des facteurs à l'ordre 3 :**
    *   $e^x = 1 + x + \frac{x^2}{2} + \frac{x^3}{6} + o(x^3)$
    *   $\cos(x) = 1 - \frac{x^2}{2} + o(x^3)$ (le terme en $x^3$ est nul car la fonction est paire, $x^4$ est négligeable à l'ordre 3).

2.  **Multiplication des polynômes :**

    $$ (1 + x + \frac{x^2}{2} + \frac{x^3}{6}) \times (1 - \frac{x^2}{2}) $$

    Développons en ignorant systématiquement tout terme résultant de degré $> 3$ :

    *   $1 \times (1 - \frac{x^2}{2}) = 1 - \frac{x^2}{2}$
    *   $x \times (1 - \frac{x^2}{2}) = x - \frac{x^3}{2}$
    *   $\frac{x^2}{2} \times (1 - \frac{x^2}{2}) = \frac{x^2}{2} - \frac{x^4}{4} \rightarrow \text{on garde } \frac{x^2}{2}$
    *   $\frac{x^3}{6} \times (1 - \dots) = \frac{x^3}{6} + \dots$

3.  **Somme des termes par degré :**
    *   Constante : $1$
    *   $x$ : $x$
    *   $x^2$ : $-\frac{1}{2} + \frac{1}{2} = 0$
    *   $x^3$ : $-\frac{1}{2} + \frac{1}{6} = -\frac{3}{6} + \frac{1}{6} = -\frac{2}{6} = -\frac{1}{3}$

**Réponse :**

$$ e^x \cos(x) = 1 + x - \frac{x^3}{3} + o(x^3) $$

</details>

---

## Exercice 4

**Problème : Composition de fonctions**

Déterminer le développement limité à l'ordre 4 au voisinage de 0 de :

$$ f(x) = \sqrt{\cos(x)} $$

<details>

<summary>Solution</summary>

**Méthode :** On utilise la forme $\sqrt{1+u} = (1+u)^{1/2}$ avec $u(x) = \cos(x) - 1$. Comme $\lim_{x\to 0} u(x) = 0$, la composition est valide.

**Étapes :**

1.  **DL de l'argument (intérieur) :**

    Posons $u = \cos(x) - 1$.

    $\cos(x) = 1 - \frac{x^2}{2} + \frac{x^4}{24} + o(x^4)$

    Donc $u = -\frac{x^2}{2} + \frac{x^4}{24} + o(x^4)$.

    *Remarque : $u$ est d'ordre 2, donc $u^2$ sera d'ordre 4. On aura besoin de $u$ et $u^2$ pour atteindre l'ordre 4.*

2.  **DL de la fonction extérieure :**

    On sait que $(1+u)^{1/2} = 1 + \frac{1}{2}u - \frac{1}{8}u^2 + o(u^2)$.

    (On s'arrête à $u^2$ car $u \sim -x^2/2$, donc $u^3 \sim x^6$ qui est négligeable devant $x^4$).

3.  **Substitution :**

    Remplacez $u$ par sa valeur en $x$ :

    $$ f(x) = 1 + \frac{1}{2}\left(-\frac{x^2}{2} + \frac{x^4}{24}\right) - \frac{1}{8}\left(-\frac{x^2}{2} + \dots\right)^2 + o(x^4) $$

4.  **Calcul et troncature :**
    *   Terme en $u$ : $\frac{1}{2}(-\frac{x^2}{2} + \frac{x^4}{24}) = -\frac{x^2}{4} + \frac{x^4}{48}$
    *   Terme en $u^2$ : $-\frac{1}{8}(-\frac{x^2}{2})^2 = -\frac{1}{8}(\frac{x^4}{4}) = -\frac{x^4}{32}$ (on ignore les produits croisés qui donnent $x^6$ ou plus).

5.  **Regroupement :**
    *   $x^2$ : $-\frac{1}{4}$
    *   $x^4$ : $\frac{1}{48} - \frac{1}{32} = \frac{2}{96} - \frac{3}{96} = -\frac{1}{96}$

**Réponse :**

$$ \sqrt{\cos(x)} = 1 - \frac{x^2}{4} - \frac{x^4}{96} + o(x^4) $$

</details>

---

## Exercice 5

**Problème : Quotient (Division selon les puissances croissantes)**

Calculer le DL à l'ordre 4 en 0 de la fonction :

$$ f(x) = \frac{1}{\cos x} $$

<details>

<summary>Solution</summary>

**Méthode :** Plutôt que de composer avec $1/(1+u)$, pratiquons la division euclidienne selon les puissances croissantes du numérateur ($1$) par le DL du dénominateur ($\cos x$).

**Étapes :**

1.  **Poser la division :**

    Dénominateur : $\cos x = 1 - \frac{x^2}{2} + \frac{x^4}{24} + o(x^4)$.

    On divise $A(x) = 1$ par $B(x) = 1 - \frac{x^2}{2} + \frac{x^4}{24}$.

2.  **Calcul de la division :**

    $$

    \begin{array}{r|l}

    1 \phantom{+ 0x^2 + 0x^4} & 1 - \frac{x^2}{2} + \frac{x^4}{24} \\

    \cline{2-2}

    -(1 - \frac{x^2}{2} + \frac{x^4}{24}) & 1 + \frac{x^2}{2} + \frac{5x^4}{24} \\

    \hline

    \frac{x^2}{2} - \frac{x^4}{24} & \\

    -(\frac{x^2}{2} - \frac{x^4}{4} + \dots) & \leftarrow (\text{produit de } \frac{x^2}{2} \text{ par le diviseur}) \\

    \hline

    \frac{x^4}{4} - \frac{x^4}{24} = \frac{5x^4}{24} & \\

    \dots &

    \end{array}

    $$

    *Détail du terme en $x^4$ dans le reste intermédiaire* : On avait $-\frac{x^4}{24}$. On soustrait $\frac{x^2}{2} \times (-\frac{x^2}{2}) = -\frac{x^4}{4}$.

    Donc reste : $-\frac{x^4}{24} - (-\frac{x^4}{4}) = \frac{6x^4}{24} - \frac{1x^4}{24} = \frac{5x^4}{24}$.

3.  **Résultat :**

    Le quotient est $1 + \frac{x^2}{2} + \frac{5x^4}{24}$.

**Réponse :**

$$ \frac{1}{\cos x} = 1 + \frac{x^2}{2} + \frac{5}{24}x^4 + o(x^4) $$

</details>

---

## Exercice 6

**Problème : Intégration de DL**

Soit $F(x) = \arctan(x)$.

1. Écrire le DL à l'ordre 4 de sa dérivée $f'(x) = \frac{1}{1+x^2}$.
2. En déduire le DL à l'ordre 5 de $\arctan(x)$.

<details>

<summary>Solution</summary>

**Méthode :** On utilise le DL usuel de $\frac{1}{1+u}$ (série géométrique) puis on intègre terme à terme. La constante d'intégration est déterminée par $F(0)$.

**Étapes :**

1.  **DL de la dérivée :**

    La dérivée est $\frac{1}{1+x^2}$. On pose $u = x^2$.

    On sait que $\frac{1}{1+u} = 1 - u + u^2 - o(u^2)$.

    En substituant $u=x^2$ (ordre 4 en $x$) :

    $$ \frac{1}{1+x^2} = 1 - x^2 + x^4 + o(x^4) $$

2.  **Intégration :**

    On cherche la primitive qui s'annule en 0 (car $\arctan(0)=0$).

    On intègre le polynôme :

    *   $1 \to x$
    *   $-x^2 \to -\frac{x^3}{3}$
    *   $x^4 \to \frac{x^5}{5}$

    L'ordre du $o$ augmente de 1 par intégration : $o(x^4) \to o(x^5)$.

**Réponse :**

$$ \arctan(x) = x - \frac{x^3}{3} + \frac{x^5}{5} + o(x^5) $$

</details>

---

## Exercice 7

**Problème : Calcul de limites (Forme indéterminée)**

Calculer la limite suivante en utilisant les développements limités :

$$ L = \lim_{x \to 0} \frac{\ln(1+x) - \sin(x)}{x^2} $$

<details>

<summary>Solution</summary>

**Méthode :** Le numérateur et le dénominateur tendent vers 0. C'est une forme indéterminée "0/0". On développe le numérateur à un ordre suffisant pour que le premier terme non nul apparaisse (ici, le dénominateur est $x^2$, donc il faut aller au moins à l'ordre 2).

**Étapes :**

1.  **DL des termes du numérateur (ordre 2) :**
    *   $\ln(1+x) = x - \frac{x^2}{2} + o(x^2)$
    *   $\sin(x) = x + o(x^2)$ (le terme suivant est en $x^3$)

2.  **Calcul du numérateur :**

    $$ \ln(1+x) - \sin(x) = \left(x - \frac{x^2}{2} + o(x^2)\right) - \left(x + o(x^2)\right) $$

    $$ = (x-x) - \frac{x^2}{2} + o(x^2) $$

    $$ = -\frac{x^2}{2} + o(x^2) $$

3.  **Calcul de la limite :**

    $$ \frac{\ln(1+x) - \sin(x)}{x^2} = \frac{-\frac{x^2}{2} + o(x^2)}{x^2} = -\frac{1}{2} + \frac{o(x^2)}{x^2} $$

    Or, $\lim_{x\to 0} \frac{o(x^2)}{x^2} = 0$ par définition.

**Réponse :**

$$ L = -\frac{1}{2} $$

</details>

---

## Exercice 8

**Problème : Étude locale (Tangente et Position)**

Soit la fonction $f(x) = \ln(1 + x + x^2)$.

1. Déterminer le DL de $f$ à l'ordre 2 en 0.
2. En déduire l'équation de la tangente $T$ à la courbe de $f$ en 0.
3. Préciser la position de la courbe par rapport à la tangente au voisinage de 0.

<details>

<summary>Solution</summary>

**Méthode :** Le DL s'écrit $f(x) = a + bx + cx^2 + o(x^2)$. L'équation de la tangente est $y = a + bx$. Le signe de $cx^2$ donne la position (au-dessus ou au-dessous).

**Étapes :**

1.  **Calcul du DL (Composition) :**

    On pose $u = x + x^2$. Quand $x \to 0$, $u \to 0$.

    On utilise $\ln(1+u) = u - \frac{u^2}{2} + o(u^2)$.

    *   $u = x + x^2$
    *   $u^2 = (x + x^2)^2 = x^2 + 2x^3 + x^4 = x^2 + o(x^2)$

    Substitution :

    $$ f(x) = (x + x^2) - \frac{1}{2}(x^2) + o(x^2) $$

    $$ f(x) = x + \frac{1}{2}x^2 + o(x^2) $$

2.  **Équation de la tangente :**

    La partie affine du DL est $P_1(x) = 0 + 1x$.

    Équation : $y = x$.

3.  **Position relative :**

    On étudie le signe de $f(x) - y$.

    $$ f(x) - x = \frac{1}{2}x^2 + o(x^2) \sim \frac{1}{2}x^2 $$

    Au voisinage de 0, $\frac{1}{2}x^2$ est toujours positif (strictement pour $x \neq 0$).

    Donc $f(x) > y$.

**Réponse :**

1. DL : $f(x) = x + \frac{1}{2}x^2 + o(x^2)$.
2. Tangente $T : y = x$.
3. La courbe est située **au-dessus** de sa tangente au voisinage de 0.

</details>

---

## Exercice 9

**Problème : DL en un point quelconque $a \neq 0$**

Déterminer le développement limité de $f(x) = \sin(x)$ à l'ordre 3 au voisinage de $a = \frac{\pi}{4}$.

<details>

<summary>Solution</summary>

**Méthode :** On effectue un changement de variable pour se ramener en 0. On pose $h = x - \frac{\pi}{4}$, soit $x = \frac{\pi}{4} + h$. On développe ensuite en puissances de $h$.

**Étapes :**

1.  **Changement de variable :**

    $$ f(x) = \sin(\frac{\pi}{4} + h) $$

2.  **Formule trigonométrique :**

    $\sin(A+B) = \sin A \cos B + \cos A \sin B$.

    $$ \sin(\frac{\pi}{4} + h) = \sin(\frac{\pi}{4})\cos(h) + \cos(\frac{\pi}{4})\sin(h) $$

    $$ = \frac{\sqrt{2}}{2} \cos(h) + \frac{\sqrt{2}}{2} \sin(h) $$

    $$ = \frac{\sqrt{2}}{2} (\cos(h) + \sin(h)) $$

3.  **Utilisation des DL en 0 (en $h$) :**
    *   $\cos(h) = 1 - \frac{h^2}{2} + o(h^3)$
    *   $\sin(h) = h - \frac{h^3}{6} + o(h^3)$

4.  **Somme :**

    $$ \cos(h) + \sin(h) = 1 + h - \frac{h^2}{2} - \frac{h^3}{6} + o(h^3) $$

5.  **Multiplication par la constante :**

    $$ f(x) = \frac{\sqrt{2}}{2} \left( 1 + h - \frac{h^2}{2} - \frac{h^3}{6} \right) + o(h^3) $$

**Réponse :**

$$ \sin(x) = \frac{\sqrt{2}}{2} + \frac{\sqrt{2}}{2}\left(x-\frac{\pi}{4}\right) - \frac{\sqrt{2}}{4}\left(x-\frac{\pi}{4}\right)^2 - \frac{\sqrt{2}}{12}\left(x-\frac{\pi}{4}\right)^3 + o\left((x-\frac{\pi}{4})^3\right) $$

</details>

---

## Exercice 10

**Problème : Comportement asymptotique (DL à l'infini)**

Étudier le comportement de la fonction $f(x) = \sqrt{x^2+1} - x$ quand $x \to +\infty$.

Pour cela :

1. Factoriser par $x$ pour faire apparaître une quantité qui tend vers 0.
2. Effectuer un DL par rapport à $h = \frac{1}{x}$.
3. Interpréter le résultat (limite et asymptote).

<details>

<summary>Solution</summary>

**Méthode :** Un DL à l'infini s'obtient en posant $h=1/x$ et en effectuant un DL en $h=0$.

**Étapes :**

1.  **Transformation de l'expression :**

    Pour $x > 0$ :

    $$ f(x) = \sqrt{x^2(1+\frac{1}{x^2})} - x = x\sqrt{1+\frac{1}{x^2}} - x $$

    $$ f(x) = x \left( \sqrt{1+\frac{1}{x^2}} - 1 \right) $$

2.  **Changement de variable :**

    Posons $h = \frac{1}{x}$. Quand $x \to +\infty$, $h \to 0^+$.

    L'expression devient : $\frac{1}{h} \left( \sqrt{1+h^2} - 1 \right)$.

3.  **DL de la racine (en $h$) :**

    $\sqrt{1+u} = 1 + \frac{u}{2} + o(u)$ avec $u=h^2$.

    $\sqrt{1+h^2} = 1 + \frac{h^2}{2} + o(h^2)$.

4.  **Calcul final :**

    $$ f(x) = \frac{1}{h} \left( (1 + \frac{h^2}{2} + o(h^2)) - 1 \right) $$

    $$ = \frac{1}{h} \left( \frac{h^2}{2} + o(h^2) \right) $$

    $$ = \frac{h}{2} + o(h) $$

    En revenant à $x$ :

    $$ f(x) = \frac{1}{2x} + o(\frac{1}{x}) $$

**Réponse :**

*   **Limite :** $\lim_{x \to +\infty} f(x) = 0$.
*   **Asymptote :** La courbe $y=f(x)$ s'approche de l'axe des abscisses ($y=0$) par valeurs positives (comme $1/2x$).

</details>
