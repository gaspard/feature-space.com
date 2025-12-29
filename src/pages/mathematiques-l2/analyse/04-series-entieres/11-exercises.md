---
id: 2f020dbc
type: exercises
order: 11
title: Séries entières - exercices (A)
tags:
  - analyse
  - séries entières
  - rayon de convergence
  - développement en série entière
  - séries de Taylor
  - exponentielle complexe
createdAt: '2025-12-27T05:23:14.784Z'
level: regular
course: Analyse
courseId: 1b8174cc
chapter: Séries entières
chapterId: 3dcc70fe
---
# Exercices "Séries entières" (A)

---

## Exercice 1

**Problème :** Détermination du Rayon de Convergence (Règle de d'Alembert)

Déterminer le rayon de convergence $R$ des séries entières suivantes définies par leur terme général $u_n(z)$ :

1.  $\sum_{n=0}^{+\infty} \frac{n+1}{3^n} z^n$
2.  $\sum_{n=0}^{+\infty} \frac{2^n}{n!} z^n$

<details>

<summary>Solution</summary>

**Méthode :** On utilise la règle de d'Alembert pour les séries numériques. On calcule la limite du quotient $\left| \frac{a_{n+1}}{a_n} \right|$ où $a_n$ est le coefficient de la série entière. Si cette limite vaut $L$, alors le rayon de convergence est $R = \frac{1}{L}$.

**Étapes :**

**1. Première série :**

Ici, $a_n = \frac{n+1}{3^n}$. Calculons le quotient :

$$ \left| \frac{a_{n+1}}{a_n} \right| = \frac{n+2}{3^{n+1}} \times \frac{3^n}{n+1} = \frac{n+2}{n+1} \times \frac{1}{3} $$

Lorsque $n \to +\infty$, $\frac{n+2}{n+1} \to 1$. Donc :

$$ L = \lim_{n \to +\infty} \left| \frac{a_{n+1}}{a_n} \right| = \frac{1}{3} $$

Le rayon de convergence est $R = \frac{1}{L} = 3$.

**2. Deuxième série :**

Ici, $a_n = \frac{2^n}{n!}$. Calculons le quotient :

$$ \left| \frac{a_{n+1}}{a_n} \right| = \frac{2^{n+1}}{(n+1)!} \times \frac{n!}{2^n} = \frac{2 \cdot 2^n}{(n+1) n!} \times \frac{n!}{2^n} = \frac{2}{n+1} $$

Lorsque $n \to +\infty$, cette expression tend vers 0. Donc $L=0$.

Par convention, si $L=0$, le rayon est infini.

**Réponse :**

1. $R = 3$
2. $R = +\infty$

</details>

---

## Exercice 2

**Problème :** Rayon de Convergence (Séries lacunaires et racine)

Déterminer le rayon de convergence de la série entière suivante :

$$ \sum_{n=1}^{+\infty} 2^n z^{2n} $$

*Indication : Attention, ce n'est pas une série en $z^n$ mais en $z^{2n}$.*

<details>

<summary>Solution</summary>

**Méthode :** On peut utiliser le critère de Cauchy (racine n-ième) adapté au terme général $u_n(z)$, ou effectuer un changement de variable pour se ramener à une série entière classique.

**Étapes :**

1.  **Méthode par changement de variable :**

    Posons $Z = z^2$. La série devient $\sum_{n=1}^{+\infty} 2^n Z^n$.

    C'est une série entière en la variable $Z$ avec pour coefficient $b_n = 2^n$.

2.  Calculons le rayon $R_Z$ pour la série en $Z$ :

    $$ \left| \frac{b_{n+1}}{b_n} \right| = \frac{2^{n+1}}{2^n} = 2 \implies L = 2 $$

    Donc la série converge pour $|Z| < \frac{1}{2}$.

3.  Revenons à la variable $z$ :

    La condition de convergence est $|z^2| < \frac{1}{2}$.

    $$ |z| < \sqrt{\frac{1}{2}} = \frac{1}{\sqrt{2}} $$

**Réponse :**

$$ R = \frac{1}{\sqrt{2}} = \frac{\sqrt{2}}{2} $$

</details>

---

## Exercice 3

**Problème :** Calcul de Somme par Dérivation

Soit la série entière $f(x) = \sum_{n=1}^{+\infty} n x^n$.

1.  Déterminer son rayon de convergence $R$.
2.  Pour tout $x \in ]-R, R[$, calculer la valeur de la somme $f(x)$ en utilisant la dérivée de la série géométrique.

<details>

<summary>Solution</summary>

**Méthode :** On reconnaît que $n x^n = x \cdot (n x^{n-1})$, ce qui suggère un lien avec la dérivée de $x^n$.

**Étapes :**

1.  **Rayon de convergence :**

    $a_n = n$.

    $$ \lim_{n \to \infty} \left| \frac{n+1}{n} \right| = 1 \implies R = \frac{1}{1} = 1 $$

2.  **Lien avec la série géométrique :**

    On sait que pour $|x| < 1$, la série géométrique converge :

    $$ \sum_{n=0}^{+\infty} x^n = \frac{1}{1-x} $$

3.  **Dérivation :**

    Cette fonction est dérivable sur $]-1, 1[$. Dérivons terme à terme :

    $$ \frac{d}{dx} \left( \sum_{n=0}^{+\infty} x^n \right) = \sum_{n=1}^{+\infty} n x^{n-1} $$

    La dérivée de $\frac{1}{1-x}$ est $\frac{1}{(1-x)^2}$.

    Donc : $\sum_{n=1}^{+\infty} n x^{n-1} = \frac{1}{(1-x)^2}$.

4.  **Ajustement :**

    Notre série est $\sum n x^n$. Il suffit de multiplier l'égalité précédente par $x$ :

    $$ x \cdot \sum_{n=1}^{+\infty} n x^{n-1} = \sum_{n=1}^{+\infty} n x^n = x \cdot \frac{1}{(1-x)^2} $$

**Réponse :**

$$ \forall x \in ]-1, 1[, \quad \sum_{n=1}^{+\infty} n x^n = \frac{x}{(1-x)^2} $$

</details>

---

## Exercice 4

**Problème :** Calcul de Somme par Intégration

On considère la série entière $\sum_{n=0}^{+\infty} (-1)^n \frac{x^{2n+1}}{2n+1}$.

1.  Déterminer le rayon de convergence $R$.
2.  Exprimer la somme de cette série à l'aide d'une fonction usuelle sur $]-R, R[$.

<details>

<summary>Solution</summary>

**Méthode :** On cherche à reconnaître la primitive d'une série connue. On dérive la série terme à terme pour voir si on obtient une forme familière.

**Étapes :**

1.  **Rayon de convergence :**

    Posons $u_n(x) = (-1)^n \frac{x^{2n+1}}{2n+1}$.

    $$ \left| \frac{u_{n+1}(x)}{u_n(x)} \right| = \frac{|x|^{2n+3}}{2n+3} \times \frac{2n+1}{|x|^{2n+1}} = |x|^2 \frac{2n+1}{2n+3} $$

    La limite quand $n \to \infty$ est $|x|^2$.

    Pour converger, il faut $|x|^2 < 1 \implies |x| < 1$. Donc $R=1$.

2.  **Dérivation :**

    Soit $S(x) = \sum_{n=0}^{+\infty} (-1)^n \frac{x^{2n+1}}{2n+1}$. Comme $S(0)=0$, on peut écrire $S(x) = \int_0^x S'(t) dt$.

    Dérivons terme à terme pour $x \in ]-1, 1[$ :

    $$ S'(x) = \sum_{n=0}^{+\infty} (-1)^n \frac{d}{dx} \left( \frac{x^{2n+1}}{2n+1} \right) = \sum_{n=0}^{+\infty} (-1)^n x^{2n} = \sum_{n=0}^{+\infty} (-x^2)^n $$

3.  **Sommation de la dérivée :**

    On reconnaît une série géométrique de raison $-x^2$. Comme $|x|<1$, $|-x^2|<1$.

    $$ S'(x) = \frac{1}{1 - (-x^2)} = \frac{1}{1+x^2} $$

4.  **Intégration :**

    $$ S(x) = \int_0^x \frac{1}{1+t^2} dt = [\arctan(t)]_0^x = \arctan(x) $$

**Réponse :**

$$ \forall x \in ]-1, 1[, \quad \sum_{n=0}^{+\infty} (-1)^n \frac{x^{2n+1}}{2n+1} = \arctan(x) $$

</details>

---

## Exercice 5

**Problème :** Développement en Série Entière (Fonction Rationnelle)

Donner le développement en série entière en $x=0$ de la fonction suivante et préciser le rayon de convergence :

$$ f(x) = \frac{1}{2+x} $$

<details>

<summary>Solution</summary>

**Méthode :** On doit ramener la fonction à la forme de la somme d'une série géométrique $\frac{1}{1-u} = \sum u^n$, valable pour $|u|<1$.

**Étapes :**

1.  **Factorisation :**

    Pour faire apparaître un "1" au dénominateur, on factorise par 2 :

    $$ f(x) = \frac{1}{2(1 + \frac{x}{2})} = \frac{1}{2} \times \frac{1}{1 - (-\frac{x}{2})} $$

2.  **Développement :**

    On pose $u = -\frac{x}{2}$. Si $|u| < 1$ (c'est-à-dire $|x| < 2$), on peut développer :

    $$ \frac{1}{1-u} = \sum_{n=0}^{+\infty} u^n = \sum_{n=0}^{+\infty} \left( -\frac{x}{2} \right)^n $$

3.  **Réécriture :**

    $$ f(x) = \frac{1}{2} \sum_{n=0}^{+\infty} (-1)^n \frac{x^n}{2^n} = \sum_{n=0}^{+\infty} \frac{(-1)^n}{2^{n+1}} x^n $$

4.  **Rayon de convergence :**

    La série géométrique converge si la raison est de module strictement inférieur à 1 :

    $$ \left| -\frac{x}{2} \right| < 1 \iff |x| < 2 $$

    Donc $R=2$.

**Réponse :**

$$ f(x) = \sum_{n=0}^{+\infty} \frac{(-1)^n}{2^{n+1}} x^n, \quad R=2 $$

</details>

---

## Exercice 6

**Problème :** Développement en Série Entière par Opérations (Logarithme)

En utilisant les opérations sur les séries entières (décomposition ou dérivation), développer en série entière la fonction :

$$ f(x) = \ln(2-x) $$

Préciser le rayon de convergence.

<details>

<summary>Solution</summary>

**Méthode :** Il est souvent plus simple de calculer la dérivée de $f$, de la développer en série entière, puis d'intégrer le résultat.

**Étapes :**

1.  **Dérivation :**

    $$ f'(x) = \frac{-1}{2-x} = \frac{-1}{2(1 - \frac{x}{2})} = -\frac{1}{2} \times \frac{1}{1 - \frac{x}{2}} $$

2.  **Développement de la dérivée :**

    Pour $|\frac{x}{2}| < 1$ (soit $|x| < 2$) :

    $$ f'(x) = -\frac{1}{2} \sum_{n=0}^{+\infty} \left( \frac{x}{2} \right)^n = -\frac{1}{2} \sum_{n=0}^{+\infty} \frac{x^n}{2^n} = -\sum_{n=0}^{+\infty} \frac{x^n}{2^{n+1}} $$

3.  **Intégration terme à terme :**

    $$ f(x) = f(0) + \int_0^x f'(t) dt $$

    Calculons la constante $f(0) = \ln(2-0) = \ln(2)$.

    $$ f(x) = \ln(2) - \sum_{n=0}^{+\infty} \frac{1}{2^{n+1}} \int_0^x t^n dt $$

    $$ f(x) = \ln(2) - \sum_{n=0}^{+\infty} \frac{1}{2^{n+1}} \frac{x^{n+1}}{n+1} $$

4.  **Changement d'indice (optionnel pour la forme canonique) :**

    Posons $k = n+1$. Si $n=0, k=1$.

    $$ f(x) = \ln(2) - \sum_{k=1}^{+\infty} \frac{x^k}{k 2^k} $$

**Réponse :**

$$ f(x) = \ln(2) - \sum_{n=1}^{+\infty} \frac{1}{n 2^n} x^n, \quad R=2 $$

</details>

---

## Exercice 7

**Problème :** Développement avec Substitution

Donner le développement en série entière de la fonction $f(x) = e^{-x^2}$ et en déduire la valeur de $f^{(10)}(0)$ (la dérivée 10ème en 0).

<details>

<summary>Solution</summary>

**Méthode :** Utiliser le développement connu de $e^u$ et effectuer la substitution $u = -x^2$. Utiliser ensuite la formule de Taylor pour identifier les coefficients.

**Étapes :**

1.  **Développement :**

    On sait que $e^u = \sum_{n=0}^{+\infty} \frac{u^n}{n!}$ pour tout $u \in \mathbb{R}$.

    Posons $u = -x^2$.

    $$ e^{-x^2} = \sum_{n=0}^{+\infty} \frac{(-x^2)^n}{n!} = \sum_{n=0}^{+\infty} \frac{(-1)^n x^{2n}}{n!} $$

    Le rayon de convergence est infini ($R=+\infty$).

2.  **Identification des dérivées :**

    La formule de Taylor stipule que $f(x) = \sum_{k=0}^{+\infty} a_k x^k$ avec $a_k = \frac{f^{(k)}(0)}{k!}$.

    Dans notre série, les termes sont de la forme $a_{2n} x^{2n}$ et $a_{2n+1} x^{2n+1}$.
    
    Observons le terme en $x^{10}$. Il correspond à $2n = 10$, donc $n=5$.

    Le coefficient devant $x^{10}$ dans la série est :

    $$ a_{10} = \frac{(-1)^5}{5!} = \frac{-1}{120} $$

3.  **Calcul de la dérivée :**

    On a aussi $a_{10} = \frac{f^{(10)}(0)}{10!}$.

    Donc :

    $$ \frac{f^{(10)}(0)}{10!} = \frac{-1}{5!} \implies f^{(10)}(0) = -\frac{10!}{5!} $$

    $$ f^{(10)}(0) = - (10 \times 9 \times 8 \times 7 \times 6) = -30240 $$

**Réponse :**

$$ e^{-x^2} = \sum_{n=0}^{+\infty} \frac{(-1)^n}{n!} x^{2n} $$

$$ f^{(10)}(0) = -30240 $$

</details>

---

## Exercice 8

**Problème :** Exponentielle Complexe et Somme Trigonométrique

Calculer la somme de la série suivante en utilisant l'exponentielle complexe :

$$ S = \sum_{n=0}^{+\infty} \frac{\cos(nx)}{2^n} \quad \text{pour } x \in \mathbb{R} $$

<details>

<summary>Solution</summary>

**Méthode :** Utiliser la formule $\cos(nx) = \text{Re}(e^{inx})$. On ramène le problème à la somme d'une série géométrique complexe.

**Étapes :**

1.  **Passage en complexe :**

    $$ \frac{\cos(nx)}{2^n} = \text{Re} \left( \frac{e^{inx}}{2^n} \right) = \text{Re} \left( \left( \frac{e^{ix}}{2} \right)^n \right) $$

2.  **Sommation de la série géométrique :**

    Considérons la série complexe $\sum_{n=0}^{+\infty} Z^n$ avec $Z = \frac{e^{ix}}{2}$.

    Le module est $|Z| = \frac{|e^{ix}|}{2} = \frac{1}{2} < 1$. La série converge.

    La somme vaut :

    $$ \sum_{n=0}^{+\infty} Z^n = \frac{1}{1-Z} = \frac{1}{1 - \frac{e^{ix}}{2}} = \frac{2}{2 - e^{ix}} $$

3.  **Simplification algébrique :**

    On cherche la partie réelle de $\frac{2}{2 - (\cos x + i \sin x)} = \frac{2}{(2-\cos x) - i \sin x}$.

    Multiplions haut et bas par le conjugué $((2-\cos x) + i \sin x)$ :

    $$ \frac{2 [ (2-\cos x) + i \sin x ]}{(2-\cos x)^2 + \sin^2 x} $$

4.  **Calcul du dénominateur :**

    $$ D = 4 - 4\cos x + \cos^2 x + \sin^2 x = 4 - 4\cos x + 1 = 5 - 4\cos x $$

5.  **Extraction de la partie réelle :**

    $$ S = \text{Re} \left( \frac{2(2-\cos x) + 2i\sin x}{5 - 4\cos x} \right) = \frac{4 - 2\cos x}{5 - 4\cos x} $$

**Réponse :**

$$ \sum_{n=0}^{+\infty} \frac{\cos(nx)}{2^n} = \frac{4 - 2\cos(x)}{5 - 4\cos(x)} $$

</details>

---

## Exercice 9

**Problème :** Résolution d'Équation Différentielle

On cherche une fonction $y(x)$ développable en série entière au voisinage de 0, solution de l'équation différentielle :

$$ (1-x)y' - y = 0 $$

avec la condition initiale $y(0) = 1$.

1.  Poser $y(x) = \sum_{n=0}^{+\infty} a_n x^n$. Trouver une relation de récurrence entre $a_{n+1}$ et $a_n$.
2.  En déduire l'expression de $a_n$ en fonction de $a_0$.
3.  Donner la fonction $y(x)$ et son domaine de validité.

<details>

<summary>Solution</summary>

**Méthode :** On injecte la série et sa dérivée dans l'équation, on regroupe les termes de même degré, et on annule les coefficients (unicité du développement en série entière de la fonction nulle).

**Étapes :**

1.  **Injection :**

    $y(x) = \sum_{n=0}^{+\infty} a_n x^n$ et $y'(x) = \sum_{n=1}^{+\infty} n a_n x^{n-1}$.

    L'équation devient :

    $$ (1-x) \sum_{n=1}^{+\infty} n a_n x^{n-1} - \sum_{n=0}^{+\infty} a_n x^n = 0 $$

    $$ \sum_{n=1}^{+\infty} n a_n x^{n-1} - \sum_{n=1}^{+\infty} n a_n x^n - \sum_{n=0}^{+\infty} a_n x^n = 0 $$

2.  **Réindexation :**

    Dans la première somme, posons $k = n-1$ (donc $n=k+1$).

    $$ \sum_{k=0}^{+\infty} (k+1) a_{k+1} x^k - \sum_{n=1}^{+\infty} n a_n x^n - \sum_{n=0}^{+\infty} a_n x^n = 0 $$

    Regroupons tout sous une somme générale (les termes pour $n=0$ dans la somme centrale sont nuls, donc on peut démarrer à 0) :

    $$ \sum_{n=0}^{+\infty} \left[ (n+1)a_{n+1} - n a_n - a_n \right] x^n = 0 $$

3.  **Relation de récurrence :**

    Pour que la série soit nulle, chaque coefficient doit être nul :

    $$ (n+1)a_{n+1} - (n+1)a_n = 0 $$

    $$ (n+1)(a_{n+1} - a_n) = 0 \implies a_{n+1} = a_n $$

4.  **Expression des coefficients :**

    On a $a_{n+1} = a_n$ pour tout $n$.

    Donc $a_n = a_{n-1} = \dots = a_0$.

    Or, $y(0) = a_0 = 1$.

    Donc $a_n = 1$ pour tout $n$.

5.  **Fonction solution :**

    $$ y(x) = \sum_{n=0}^{+\infty} 1 \cdot x^n = \sum_{n=0}^{+\infty} x^n $$

    C'est la série géométrique.

    $$ y(x) = \frac{1}{1-x} $$

    Valable pour $|x| < 1$.

**Réponse :**

$$ y(x) = \frac{1}{1-x}, \quad x \in ]-1, 1[ $$

</details>

---

## Exercice 10

**Problème :** Somme et Décomposition

Calculer le rayon de convergence et la somme de la série entière suivante pour $x \in ]-R, R[$ :

$$ f(x) = \sum_{n=1}^{+\infty} \frac{x^n}{n(n+1)} $$

<details>

<summary>Solution</summary>

**Méthode :** Utiliser la décomposition en éléments simples de la fraction $\frac{1}{n(n+1)}$ pour séparer la série en deux sommes plus simples (souvent liées au logarithme).

**Étapes :**

1.  **Rayon de convergence :**

    $a_n \sim \frac{1}{n^2}$. $\lim |a_{n+1}/a_n| = 1$. Donc $R=1$.

2.  **Décomposition :**

    On remarque que $\frac{1}{n(n+1)} = \frac{1}{n} - \frac{1}{n+1}$.

    Donc :

    $$ f(x) = \sum_{n=1}^{+\infty} \left( \frac{1}{n} - \frac{1}{n+1} \right) x^n = \sum_{n=1}^{+\infty} \frac{x^n}{n} - \sum_{n=1}^{+\infty} \frac{x^n}{n+1} $$

3.  **Calcul des sous-sommes :**

    On sait que $-\ln(1-x) = \sum_{n=1}^{+\infty} \frac{x^n}{n}$. C'est le premier terme.
    
    Pour le second terme $\sum_{n=1}^{+\infty} \frac{x^n}{n+1}$, factorisons par $1/x$ (pour $x \neq 0$) :

    $$ \sum_{n=1}^{+\infty} \frac{x^n}{n+1} = \frac{1}{x} \sum_{n=1}^{+\infty} \frac{x^{n+1}}{n+1} $$

    Posons $k=n+1$. La somme devient $\sum_{k=2}^{+\infty} \frac{x^k}{k}$.

    C'est presque le logarithme, il manque le terme pour $k=1$ (qui vaut $x$).

    $$ \sum_{k=1}^{+\infty} \frac{x^k}{k} = -\ln(1-x) \implies \sum_{k=2}^{+\infty} \frac{x^k}{k} = -\ln(1-x) - x $$

    Donc le second terme est $\frac{1}{x} (-\ln(1-x) - x) = -\frac{\ln(1-x)}{x} - 1$.

4.  **Assemblage :**

    $$ f(x) = -\ln(1-x) - \left( -\frac{\ln(1-x)}{x} - 1 \right) $$

    $$ f(x) = -\ln(1-x) + \frac{\ln(1-x)}{x} + 1 $$

    $$ f(x) = 1 + \left( \frac{1}{x} - 1 \right) \ln(1-x) = 1 + \frac{1-x}{x} \ln(1-x) $$

    *Note : Pour $x=0$, la limite donne 0, ce qui est cohérent avec la série.*

**Réponse :**

$$ f(x) = 1 + \frac{1-x}{x} \ln(1-x) $$

</details>
