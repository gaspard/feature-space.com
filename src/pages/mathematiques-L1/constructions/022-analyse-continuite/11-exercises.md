---
id: adf82b0c
type: exercises
order: 11
title: Analyse - exercices (A)
tags:
  - analyse
  - suites
  - limites
  - continuité
  - dérivabilité
  - intégration
createdAt: '2025-10-18T19:09:27.304Z'
level: regular
course: Constructions et raisonnements mathématiques
courseId: d2e11e03
chapter: "Analyse: Continuïté"
chapterId: a5489a34
---
# Exercices "Analyse: Continuïté" (A)

## Exercice 1: [Calcul de limite]

**Problème:** Calculez la limite suivante :

$$ \lim_{x \to 3} \frac{x^2 - x - 6}{x - 3} $$

<details>

<summary>Solution</summary>

**Méthode:** Lorsque nous substituons directement $x=3$ dans l'expression, nous obtenons la forme indéterminée $\frac{0}{0}$. Cela suggère que le numérateur et le dénominateur partagent un facteur commun, qui est $(x-3)$. Nous allons factoriser le numérateur pour simplifier la fraction.

**Étapes:**

1.  **Vérification de la forme indéterminée :**

    Pour $x=3$, le numérateur est $3^2 - 3 - 6 = 9 - 3 - 6 = 0$.

    Le dénominateur est $3 - 3 = 0$.

    Nous avons bien une forme indéterminée $\frac{0}{0}$.

2.  **Factorisation du numérateur :**

    Nous cherchons les racines du polynôme $P(x) = x^2 - x - 6$. Le discriminant est $\Delta = (-1)^2 - 4(1)(-6) = 1 + 24 = 25$.

    Les racines sont $x_1 = \frac{1 - \sqrt{25}}{2} = -2$ et $x_2 = \frac{1 + \sqrt{25}}{2} = 3$.

    Le polynôme se factorise donc en $P(x) = (x - (-2))(x - 3) = (x+2)(x-3)$.

3.  **Simplification de l'expression :**

    Pour $x \neq 3$, nous pouvons simplifier la fraction :

    $$ \frac{x^2 - x - 6}{x - 3} = \frac{(x+2)(x-3)}{x-3} = x+2 $$

4.  **Calcul de la limite :**

    La limite de l'expression simplifiée est facile à calculer :

    $$ \lim_{x \to 3} (x+2) = 3 + 2 = 5 $$

**Réponse:**

$$ \lim_{x \to 3} \frac{x^2 - x - 6}{x - 3} = 5 $$

</details>

## Exercice 2: [Limites à gauche et à droite]

**Problème:** Soit la fonction $f$ définie par :

$$ f(x) = \begin{cases} x^2 + 2 & \text{si } x \le 1 \\ 4 - x & \text{si } x > 1 \end{cases} $$

La fonction $f$ admet-elle une limite en $x=1$ ? Justifiez votre réponse en calculant la limite à gauche et la limite à droite.

<details>

<summary>Solution</summary>

**Méthode:** Pour qu'une fonction admette une limite en un point, il faut que sa limite à gauche et sa limite à droite en ce point existent et soient égales. Nous allons donc calculer ces deux limites séparément en utilisant la définition appropriée de la fonction pour chaque cas.

**Étapes:**

1.  **Calcul de la limite à gauche :**

    Pour la limite à gauche ($x \to 1^-$), on considère les valeurs de $x$ qui sont strictement inférieures à 1. Dans ce cas, $f(x) = x^2 + 2$.

    $$ \lim_{x \to 1^-} f(x) = \lim_{x \to 1^-} (x^2 + 2) $$

    Comme $x^2+2$ est une fonction polynomiale, sa limite est simplement la valeur de la fonction en ce point.

    $$ \lim_{x \to 1^-} (x^2 + 2) = 1^2 + 2 = 3 $$

2.  **Calcul de la limite à droite :**

    Pour la limite à droite ($x \to 1^+$), on considère les valeurs de $x$ qui sont strictement supérieures à 1. Dans ce cas, $f(x) = 4 - x$.

    $$ \lim_{x \to 1^+} f(x) = \lim_{x \to 1^+} (4 - x) $$

    De même, la limite s'obtient par substitution directe.

    $$ \lim_{x \to 1^+} (4 - x) = 4 - 1 = 3 $$

3.  **Conclusion :**

    La limite à gauche est 3 et la limite à droite est 3. Puisque les deux limites sont égales :

    $$ \lim_{x \to 1^-} f(x) = \lim_{x \to 1^+} f(x) = 3 $$

    la fonction $f$ admet une limite en $x=1$.

**Réponse:** Oui, la fonction $f$ admet une limite en $x=1$, et cette limite est 3.

$$ \lim_{x \to 1} f(x) = 3 $$

</details>

## Exercice 3: [Continuité en un point]

**Problème:** Soit la fonction $g$ définie par :

$$ g(x) = \begin{cases} \frac{\sqrt{x+4} - 2}{x} & \text{si } x \neq 0 \\ k & \text{si } x = 0 \end{cases} $$

Déterminez la valeur de la constante $k$ pour que la fonction $g$ soit continue en $x=0$.

<details>

<summary>Solution</summary>

**Méthode:** Pour que la fonction $g$ soit continue en $x=0$, il faut que la limite de $g(x)$ quand $x$ tend vers 0 soit égale à la valeur de la fonction en 0, c'est-à-dire $g(0)$. Autrement dit, on doit avoir $\lim_{x \to 0} g(x) = g(0) = k$. Nous devons donc calculer cette limite. En substituant $x=0$, on obtient la forme indéterminée $\frac{0}{0}$. Nous allons utiliser la technique de la multiplication par l'expression conjuguée.

**Étapes:**

1.  **Condition de continuité :**

    La fonction $g$ est continue en 0 si et seulement si $\lim_{x \to 0} g(x) = g(0)$.

    Ici, $g(0) = k$. Nous devons donc calculer $\lim_{x \to 0} \frac{\sqrt{x+4} - 2}{x}$.

2.  **Calcul de la limite :**

    Pour lever l'indétermination, nous multiplions le numérateur et le dénominateur par l'expression conjuguée du numérateur, qui est $(\sqrt{x+4} + 2)$.

    $$ \frac{\sqrt{x+4} - 2}{x} = \frac{(\sqrt{x+4} - 2)(\sqrt{x+4} + 2)}{x(\sqrt{x+4} + 2)} $$

    On utilise l'identité $(a-b)(a+b) = a^2 - b^2$ au numérateur.

    $$ = \frac{(x+4) - 2^2}{x(\sqrt{x+4} + 2)} = \frac{x+4-4}{x(\sqrt{x+4} + 2)} = \frac{x}{x(\sqrt{x+4} + 2)} $$

    Pour $x \neq 0$, on peut simplifier par $x$.

    $$ = \frac{1}{\sqrt{x+4} + 2} $$

    Maintenant, on peut calculer la limite.

    $$ \lim_{x \to 0} \frac{1}{\sqrt{x+4} + 2} = \frac{1}{\sqrt{0+4} + 2} = \frac{1}{\sqrt{4} + 2} = \frac{1}{2+2} = \frac{1}{4} $$

3.  **Détermination de k :**

    Pour assurer la continuité, il faut que $g(0)$ soit égal à cette limite.

    $$ k = \frac{1}{4} $$

**Réponse:** Pour que la fonction $g$ soit continue en $x=0$, la valeur de $k$ doit être :

$$ k = \frac{1}{4} $$

</details>

## Exercice 4: [Application du TVI]

**Problème:** Montrez que l'équation $x^3 - 3x + 1 = 0$ admet au moins une solution dans l'intervalle $[0, 1]$.

<details>

<summary>Solution</summary>

**Méthode:** Nous allons utiliser le Théorème des Valeurs Intermédiaires (TVI). Pour cela, nous devons définir une fonction continue sur un segment, puis vérifier que la valeur que nous cherchons (ici, 0) est bien comprise entre les valeurs de la fonction aux bornes de ce segment.

**Étapes:**

1.  **Définir la fonction et vérifier la continuité :**

    Soit la fonction $f(x) = x^3 - 3x + 1$.

    Cette fonction est un polynôme, elle est donc continue sur $\mathbb{R}$, et en particulier sur le segment $[0, 1]$.

2.  **Calculer les valeurs aux bornes de l'intervalle :**

    Calculons $f(0)$ et $f(1)$.

    $$ f(0) = 0^3 - 3(0) + 1 = 1 $$

    $$ f(1) = 1^3 - 3(1) + 1 = 1 - 3 + 1 = -1 $$

3.  **Appliquer le Théorème des Valeurs Intermédiaires :**

    Nous avons $f(1) = -1$ et $f(0) = 1$.

    La valeur $y=0$ est bien comprise entre $f(1)$ et $f(0)$ (c'est-à-dire $-1 < 0 < 1$).

    Puisque $f$ est continue sur $[0, 1]$ et que $0$ est une valeur intermédiaire entre $f(0)$ et $f(1)$, le TVI nous garantit qu'il existe au moins un réel $c$ dans l'intervalle $[0, 1]$ tel que $f(c) = 0$.

    Ce nombre $c$ est une solution de l'équation $x^3 - 3x + 1 = 0$.

**Réponse:**

La fonction $f(x) = x^3 - 3x + 1$ est continue sur $[0,1]$. Comme $f(0) = 1 > 0$ et $f(1) = -1 < 0$, d'après le Théorème des Valeurs Intermédiaires, il existe au moins un $c \in [0, 1]$ tel que $f(c) = 0$. L'équation admet donc bien au moins une solution dans cet intervalle.

</details>

## Exercice 5: [Dérivabilité par la définition]

**Problème:** En utilisant la définition du nombre dérivé (la limite du taux d'accroissement), calculez la dérivée de la fonction $f(x) = \frac{1}{x+2}$ au point $a=1$.

<details>

<summary>Solution</summary>

**Méthode:** La définition du nombre dérivé de $f$ en un point $a$ est $f'(a) = \lim_{x \to a} \frac{f(x) - f(a)}{x - a}$. Nous allons appliquer cette formule pour $f(x) = \frac{1}{x+2}$ et $a=1$. Cela impliquera une manipulation algébrique pour simplifier le quotient avant de passer à la limite.

**Étapes:**

1.  **Calcul de $f(a)$ :**

    Pour $a=1$, $f(1) = \frac{1}{1+2} = \frac{1}{3}$.

2.  **Écriture du taux d'accroissement :**

    Le taux d'accroissement entre $x$ et $1$ est :

    $$ \frac{f(x) - f(1)}{x - 1} = \frac{\frac{1}{x+2} - \frac{1}{3}}{x-1} $$

3.  **Simplification du taux d'accroissement :**

    Mettons le numérateur sur un dénominateur commun :

    $$ \frac{1}{x+2} - \frac{1}{3} = \frac{3 - (x+2)}{3(x+2)} = \frac{3 - x - 2}{3(x+2)} = \frac{1-x}{3(x+2)} $$

    Le taux d'accroissement devient :

    $$ \frac{\frac{1-x}{3(x+2)}}{x-1} = \frac{-(x-1)}{3(x+2)(x-1)} $$

    Pour $x \neq 1$, on peut simplifier par $(x-1)$ :

    $$ = \frac{-1}{3(x+2)} $$

4.  **Calcul de la limite :**

    Maintenant, nous calculons la limite du taux d'accroissement simplifié quand $x \to 1$.

    $$ f'(1) = \lim_{x \to 1} \frac{-1}{3(x+2)} = \frac{-1}{3(1+2)} = \frac{-1}{3(3)} = -\frac{1}{9} $$

**Réponse:** La dérivée de la fonction $f(x) = \frac{1}{x+2}$ au point $a=1$ est :

$$ f'(1) = -\frac{1}{9} $$

</details>

## Exercice 6: [Opérations sur les dérivées]

**Problème:** Calculez la fonction dérivée de $h(x) = \frac{\sin(2x)}{x^2+1}$.

<details>

<summary>Solution</summary>

**Méthode:** La fonction $h(x)$ est un quotient de deux fonctions, $u(x) = \sin(2x)$ et $v(x) = x^2+1$. Nous devons utiliser la règle de dérivation d'un quotient : $(\frac{u}{v})' = \frac{u'v - uv'}{v^2}$. Pour dériver $u(x) = \sin(2x)$, nous devrons utiliser la règle de la chaîne.

**Étapes:**

1.  **Identifier les fonctions $u(x)$ et $v(x)$ :**

    Soit $u(x) = \sin(2x)$ et $v(x) = x^2+1$.

2.  **Calculer les dérivées $u'(x)$ et $v'(x)$ :**

    Pour $v(x)$, la dérivée est simple : $v'(x) = 2x$.

    Pour $u(x) = \sin(2x)$, c'est une fonction composée. La fonction extérieure est $\sin(\cdot)$ et la fonction intérieure est $2x$.

    La dérivée est $(\sin(w))' = \cos(w)$ et $(2x)'=2$.

    Par la règle de la chaîne, $u'(x) = \cos(2x) \times 2 = 2\cos(2x)$.

3.  **Appliquer la formule du quotient :**

    $$ h'(x) = \frac{u'(x)v(x) - u(x)v'(x)}{[v(x)]^2} $$

    On remplace par les expressions trouvées :

    $$ h'(x) = \frac{(2\cos(2x))(x^2+1) - (\sin(2x))(2x)}{(x^2+1)^2} $$

4.  **Simplifier l'expression (facultatif mais recommandé) :**

    $$ h'(x) = \frac{2(x^2+1)\cos(2x) - 2x\sin(2x)}{(x^2+1)^2} $$

**Réponse:** La fonction dérivée de $h(x)$ est :

$$ h'(x) = \frac{2(x^2+1)\cos(2x) - 2x\sin(2x)}{(x^2+1)^2} $$

</details>

## Exercice 7: [Théorème de Rolle]

**Problème:** Soit la fonction $f(x) = x^3 - 4x$ sur le segment $[-2, 2]$.

1. Vérifiez que les hypothèses du théorème de Rolle sont satisfaites.
2. Trouvez toutes les valeurs de $c \in ]-2, 2[$ qui satisfont la conclusion du théorème.

<details>

<summary>Solution</summary>

**Méthode:** Le théorème de Rolle a trois hypothèses à vérifier : la fonction doit être continue sur le segment $[a, b]$, dérivable sur l'intervalle ouvert $]a, b[$, et les valeurs aux bornes $f(a)$ et $f(b)$ doivent être égales. Une fois ces conditions vérifiées, le théorème garantit l'existence d'au moins un $c \in ]a, b[$ tel que $f'(c)=0$. Nous allons trouver ce(s) $c$ en résolvant l'équation $f'(x)=0$.

**Étapes:**

1.  **Vérification des hypothèses :**
    *   **Continuité :** $f(x) = x^3 - 4x$ est une fonction polynomiale, donc elle est continue sur $\mathbb{R}$ et en particulier sur $[-2, 2]$.
    *   **Dérivabilité :** Étant un polynôme, $f$ est également dérivable sur $\mathbb{R}$ et donc sur $]-2, 2[$.
    *   **Égalité aux bornes :**

        $$ f(-2) = (-2)^3 - 4(-2) = -8 + 8 = 0 $$

        $$ f(2) = (2)^3 - 4(2) = 8 - 8 = 0 $$

        On a bien $f(-2) = f(2)$.

    Les trois hypothèses du théorème de Rolle sont satisfaites.

2.  **Trouver les valeurs de $c$ :**

    La conclusion du théorème de Rolle est qu'il existe au moins un $c \in ]-2, 2[$ tel que $f'(c)=0$.

    Calculons d'abord la dérivée de $f(x)$.

    $$ f'(x) = 3x^2 - 4 $$

    Maintenant, résolvons l'équation $f'(c)=0$ :

    $$ 3c^2 - 4 = 0 $$

    $$ 3c^2 = 4 $$

    $$ c^2 = \frac{4}{3} $$

    $$ c = \pm\sqrt{\frac{4}{3}} = \pm\frac{2}{\sqrt{3}} = \pm\frac{2\sqrt{3}}{3} $$

3.  **Vérifier que les valeurs sont dans l'intervalle :**

    Nous devons nous assurer que les valeurs trouvées sont bien dans l'intervalle ouvert $]-2, 2[$.

    $\sqrt{3} \approx 1.732$, donc $\frac{2\sqrt{3}}{3} \approx \frac{2 \times 1.732}{3} \approx 1.155$.

    Les deux valeurs, $c_1 = \frac{2\sqrt{3}}{3}$ et $c_2 = -\frac{2\sqrt{3}}{3}$, sont bien comprises entre -2 et 2.

**Réponse:** Les hypothèses du théorème de Rolle sont bien vérifiées. Les valeurs de $c$ dans l'intervalle $]-2, 2[$ qui satisfont la conclusion du théorème sont :

$$ c = \frac{2\sqrt{3}}{3} \quad \text{et} \quad c = -\frac{2\sqrt{3}}{3} $$

</details>

## Exercice 8: [Inégalité des accroissements finis]

**Problème:** En utilisant l'inégalité des accroissements finis, montrez que pour tous réels $a$ et $b$ :

$$ |\cos(b) - \cos(a)| \le |b-a| $$

<details>

<summary>Solution</summary>

**Méthode:** L'inégalité des accroissements finis stipule que si une fonction $f$ est continue sur $[a,b]$ et dérivable sur $]a,b[$, et si $|f'(x)| \le M$ pour tout $x \in ]a,b[$, alors $|f(b) - f(a)| \le M|b-a|$. Nous allons appliquer ce résultat à la fonction $f(x) = \cos(x)$ en trouvant une borne $M$ pour sa dérivée.

**Étapes:**

1.  **Choisir la fonction et vérifier les hypothèses :**

    Soit la fonction $f(x) = \cos(x)$.

    Cette fonction est continue et dérivable sur $\mathbb{R}$ tout entier. Donc, pour n'importe quel intervalle $[a, b]$ (ou $[b, a]$ si $b<a$), les conditions de continuité et de dérivabilité sont remplies.

2.  **Calculer la dérivée et la borner :**

    La dérivée de $f(x)$ est $f'(x) = -\sin(x)$.

    Nous devons trouver un majorant $M$ pour $|f'(x)|$.

    $$ |f'(x)| = |-\sin(x)| = |\sin(x)| $$

    On sait que pour tout réel $x$, la valeur de $\sin(x)$ est comprise entre -1 et 1. Donc :

    $$ |\sin(x)| \le 1 $$

    Nous pouvons donc choisir $M=1$.

3.  **Appliquer l'inégalité des accroissements finis :**

    Selon l'inégalité des accroissements finis, avec $M=1$, nous avons pour tous réels $a$ et $b$ :

    $$ |f(b) - f(a)| \le 1 \cdot |b-a| $$

    En remplaçant $f$ par la fonction cosinus, on obtient :

    $$ |\cos(b) - \cos(a)| \le |b-a| $$

    Ceci conclut la démonstration.

**Réponse:** La fonction $f(x)=\cos(x)$ est dérivable sur $\mathbb{R}$ et sa dérivée $f'(x)=-\sin(x)$ vérifie $|f'(x)| \le 1$ pour tout $x$. Par l'inégalité des accroissements finis, on a donc pour tous réels $a, b$ :

$$ |\cos(b) - \cos(a)| \le 1 \cdot |b-a| $$

</details>

## Exercice 9: [Théorème de la bijection]

**Problème:** Soit la fonction $f(x) = x^3 + x - 2$.

1. Montrez que $f$ réalise une bijection de $\mathbb{R}$ sur un intervalle $J$ que vous préciserez.
2. Soit $f^{-1}$ la fonction réciproque. Calculez $(f^{-1})'(0)$.

<details>

<summary>Solution</summary>

**Méthode:**

1. Pour montrer que $f$ est une bijection, nous utiliserons le théorème de la bijection. Nous devons montrer que $f$ est continue et strictement monotone sur $\mathbb{R}$. L'intervalle image $J$ sera déterminé en calculant les limites de $f$ aux bornes de son domaine.
2. Pour calculer $(f^{-1})'(0)$, nous utiliserons la formule $(f^{-1})'(b) = \frac{1}{f'(f^{-1}(b))}$. Il nous faudra d'abord trouver la valeur de $a = f^{-1}(0)$, ce qui revient à résoudre l'équation $f(a)=0$.

**Étapes:**

1.  **Montrer que $f$ est une bijection :**
    *   **Continuité :** $f(x)$ est une fonction polynomiale, donc elle est continue sur $\mathbb{R}$.
    *   **Monotonie :** Calculons la dérivée de $f$ pour étudier son signe.

        $f'(x) = 3x^2 + 1$.

        Pour tout réel $x$, $x^2 \ge 0$, donc $3x^2 \ge 0$, et $3x^2 + 1 \ge 1$.

        Ainsi, $f'(x) > 0$ pour tout $x \in \mathbb{R}$. La fonction $f$ est donc strictement croissante sur $\mathbb{R}$.

    *   **Conclusion :** Puisque $f$ est continue et strictement monotone sur $\mathbb{R}$, elle réalise une bijection de $\mathbb{R}$ vers l'intervalle image $J=f(\mathbb{R})$.
    *   **Détermination de J :**

        $$ \lim_{x \to -\infty} (x^3 + x - 2) = -\infty $$

        $$ \lim_{x \to +\infty} (x^3 + x - 2) = +\infty $$

        L'intervalle image est donc $J = ]-\infty, +\infty[ = \mathbb{R}$.

        $f$ est une bijection de $\mathbb{R}$ dans $\mathbb{R}$.

2.  **Calcul de $(f^{-1})'(0)$ :**
    *   **Formule :** On utilise la formule $(f^{-1})'(b) = \frac{1}{f'(f^{-1}(b))}$ avec $b=0$.
    *   **Trouver $a = f^{-1}(0)$ :** On cherche $a$ tel que $f(a)=0$.

        $$ a^3 + a - 2 = 0 $$

        Par inspection, on voit que $a=1$ est une solution : $1^3 + 1 - 2 = 1 + 1 - 2 = 0$.

        Puisque $f$ est une bijection, cette solution est unique. Donc $f^{-1}(0) = 1$.

    *   **Calculer $f'(a)$ :** On a besoin de la valeur de la dérivée en $a=1$.

        $$ f'(x) = 3x^2 + 1 \implies f'(1) = 3(1)^2 + 1 = 4 $$

    *   **Appliquer la formule :**

        $$ (f^{-1})'(0) = \frac{1}{f'(f^{-1}(0))} = \frac{1}{f'(1)} = \frac{1}{4} $$

**Réponse:**

1. La fonction $f$ est continue et sa dérivée $f'(x) = 3x^2+1$ est strictement positive. $f$ est donc continue et strictement croissante sur $\mathbb{R}$, elle réalise une bijection de $\mathbb{R}$ dans $J=\mathbb{R}$.
2. La valeur de la dérivée de la fonction réciproque en 0 est :

$$ (f^{-1})'(0) = \frac{1}{4} $$

</details>

## Exercice 10: [Fonctions trigonométriques réciproques]

**Problème:**

1. Simplifiez l'expression $\tan(\arccos(x))$ pour $x \in ]-1, 1[$.
2. Calculez la dérivée de la fonction $g(x) = \arctan(e^x)$.

<details>

<summary>Solution</summary>

**Méthode:**

1. Pour simplifier $\tan(\arccos(x))$, on pose $y = \arccos(x)$. On utilise les définitions pour trouver $\sin(y)$ et $\cos(y)$ en fonction de $x$, puis on calcule $\tan(y) = \frac{\sin(y)}{\cos(y)}$.
2. Pour dériver $g(x) = \arctan(e^x)$, on utilise la règle de la chaîne, car c'est une fonction composée. La fonction extérieure est $\arctan(u)$ et la fonction intérieure est $u(x)=e^x$.

**Étapes:**

1.  **Simplification de $\tan(\arccos(x))$ :**
    *   Posons $y = \arccos(x)$. Par définition, cela signifie que $x = \cos(y)$ et que $y \in [0, \pi]$.
    *   Comme on nous donne $x \in ]-1, 1[$, on a $y \in ]0, \pi[$.
    *   Nous cherchons $\tan(y) = \frac{\sin(y)}{\cos(y)}$. Nous connaissons déjà $\cos(y)=x$.
    *   On utilise l'identité $\sin^2(y) + \cos^2(y) = 1$, ce qui donne $\sin^2(y) = 1 - \cos^2(y) = 1 - x^2$.
    *   Puisque $y \in ]0, \pi[$, la valeur de $\sin(y)$ est strictement positive. Donc, $\sin(y) = \sqrt{1-x^2}$.
    *   Finalement, $\tan(y) = \frac{\sin(y)}{\cos(y)} = \frac{\sqrt{1-x^2}}{x}$.

2.  **Dérivée de $g(x) = \arctan(e^x)$ :**
    *   C'est une composée $g = h \circ u$ avec $h(u) = \arctan(u)$ et $u(x) = e^x$.
    *   Les dérivées sont $h'(u) = \frac{1}{1+u^2}$ et $u'(x) = e^x$.
    *   La règle de la chaîne donne $g'(x) = h'(u(x)) \times u'(x)$.
    *   On substitue $u(x) = e^x$ dans $h'(u)$ : $h'(u(x)) = \frac{1}{1+(e^x)^2} = \frac{1}{1+e^{2x}}$.
    *   On multiplie par $u'(x)$ :

        $$ g'(x) = \frac{1}{1+e^{2x}} \times e^x = \frac{e^x}{1+e^{2x}} $$

**Réponse:**

1. Pour $x \in ]-1, 1[$, l'expression se simplifie en :

   $$ \tan(\arccos(x)) = \frac{\sqrt{1-x^2}}{x} $$

2. La dérivée de $g(x) = \arctan(e^x)$ est :

   $$ g'(x) = \frac{e^x}{1+e^{2x}} $$

</details>
