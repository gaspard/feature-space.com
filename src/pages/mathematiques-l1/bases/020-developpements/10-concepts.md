---
id: 5f1e3c8d
type: concepts
order: 10
title: Développements Limités - concepts (A)
tags:
  - développements limités
  - analyse
  - Taylor
  - approximation
  - limites
  - mathématiques
course: Bases mathématiques
courseId: 4e5f6a7b
chapter: Développements Limités
chapterId: 8b9c0d1e
level: regular
createdAt: '2025-12-28T12:00:00.000Z'
---
# Développements Limités

---

## Concept 1: Définition et Formule de Taylor-Young

### Prérequis

- **Calcul de dérivées** : Savoir calculer les dérivées successives d'une fonction.
- **Limites et continuité** : Comprendre la notion de limite en un point.
- **Négligeabilité** : Notation de Landau "petit o".

### Définition

On dit qu'une fonction $f$ admet un **développement limité (DL) à l'ordre $n$ au voisinage de 0** s'il existe un polynôme $P_n$ de degré au plus $n$ tel que :

$$ f(x) = P_n(x) + o(x^n) $$

où $o(x^n)$ (petit o de $x^n$) est une fonction $\epsilon(x) x^n$ telle que $\lim_{x \to 0} \epsilon(x) = 0$.

Le polynôme $P_n(x)$ est appelé la **partie régulière** du développement limité.

**Généralisation en un point $a$ :**
On se ramène souvent au voisinage de 0 en posant $h = x - a$. Si $f$ admet un DL en $a$, il s'écrit $f(a+h) = P_n(h) + o(h^n)$.

### Théorème de Taylor-Young

C'est le théorème fondamental qui assure l'existence et donne la forme des coefficients du DL pour les fonctions suffisamment régulières.

Soit $f$ une fonction définie sur un intervalle $I$ contenant $0$. Si $f$ est $n$ fois dérivable en $0$ (ou de classe $\mathcal{C}^n$ au voisinage de 0), alors $f$ admet un DL d'ordre $n$ en 0 donné par :

$$ f(x) = f(0) + f'(0)x + \frac{f''(0)}{2!}x^2 + \dots + \frac{f^{(k)}(0)}{k!}x^k + \dots + \frac{f^{(n)}(0)}{n!}x^n + o(x^n) $$

De manière compacte :

$$ f(x) = \sum_{k=0}^n \frac{f^{(k)}(0)}{k!} x^k + o(x^n) $$

### Propriétés Clés

- **Unicité** : Si une fonction admet un DL, la partie régulière $P_n$ est unique.
- **Parité** :
  - Si $f$ est paire, la partie régulière de son DL en 0 ne contient que des puissances paires.
  - Si $f$ est impaire, la partie régulière ne contient que des puissances impaires.
- **Troncature** : Si $f$ admet un DL à l'ordre $n$, elle admet un DL à tout ordre $k < n$, obtenu simplement en ne gardant que les termes de degré $\le k$ du polynôme $P_n$.

### Exemples

**Exemple 1 : Exponentielle en 0 (ordre 2)**
$f(x) = e^x$. On a $f(0)=1, f'(0)=1, f''(0)=1$.
$$ e^x = 1 + x + \frac{x^2}{2} + o(x^2) $$

**Exemple 2 : Cosinus en 0 (ordre 4)**
$f(x) = \cos(x)$. $f(0)=1, f'(0)=0, f''(0)=-1, f^{(3)}(0)=0, f^{(4)}(0)=1$.
$$ \cos(x) = 1 - \frac{x^2}{2} + \frac{x^4}{24} + o(x^4) $$
Remarquez l'absence de termes impairs car $\cos$ est paire.

### Contre-exemples

**Contre-exemple 1 : Fonction non dérivable**
La fonction $f(x) = |x|$ n'admet pas de DL à l'ordre 1 en 0 car elle n'est pas dérivable en 0. Elle n'admet pas de tangente unique.

**Contre-exemple 2 : Attention au $o(x^n)$**
Écrire $e^x = 1 + x + x^2/2$ est faux. C'est une égalité fonctionnelle incorrecte. Il manque le terme d'erreur $+ o(x^2)$ qui signifie "plus des termes négligeables devant $x^2$". Sans ce terme, on confond la fonction et son approximation polynomiale.

### Concepts Connexes

- **Développement en série entière** : Si $f$ est $\mathcal{C}^\infty$ et que le rayon de convergence est non nul, la série de Taylor converge vers la fonction. Le DL est une "troncature" de la série entière.
- **Équivalents** : Le premier terme non nul du DL donne un équivalent de la fonction en 0. Par exemple, $\sin(x) \sim x$ car $\sin(x) = x + o(x)$.

---

## Concept 2 : Opérations sur les Développements Limités

### Prérequis

- **Calcul algébrique sur les polynômes**.
- **Compréhension de l'ordre de négligeabilité**.

### Règles de Calcul

Soient $f$ et $g$ deux fonctions admettant des DL à l'ordre $n$ au voisinage de 0, de parties régulières $P_n$ et $Q_n$.

1.  **Somme** : Le DL de la somme est la somme des DL.
    $$ (f+g)(x) = (P_n + Q_n)(x) + o(x^n) $$

2.  **Produit** : On effectue le produit des polynômes $P_n \cdot Q_n$ et on ne garde que les termes de degré $\le n$.
    $$ (fg)(x) = [P_n(x)Q_n(x)]_n + o(x^n) $$

3.  **Quotient** : On utilise souvent la division selon les puissances croissantes de la partie régulière de $f$ par celle de $g$ (si $g(0) \neq 0$), ou on se ramène à un produit $f \cdot \frac{1}{g}$.

4.  **Composition** : Si $f(x) \to 0$ quand $x \to 0$, on peut composer le DL de $g$ par celui de $f$. On substitue $P_n(x)$ dans $Q_n(Y)$, et on tronque à l'ordre $n$.
    $$ g(f(x)) = [Q_n(P_n(x))]_n + o(x^n) $$

5.  **Intégration** : On intègre la partie régulière terme à terme. L'ordre du DL augmente de 1.
    Si $f(x) = c_0 + c_1 x + \dots + c_n x^n + o(x^n)$, alors une primitive $F$ vérifie :
    $$ F(x) = F(0) + c_0 x + c_1 \frac{x^2}{2} + \dots + c_n \frac{x^{n+1}}{n+1} + o(x^{n+1}) $$

6.  **Dérivation** : Attention, on ne peut dériver un DL que si l'on sait par avance que la fonction dérivée admet un DL (ce qui est vrai si $f$ est $\mathcal{C}^{n+1}$). Dans ce cas, on dérive la partie régulière et l'ordre diminue de 1.

### Propriétés Clés

- **Cohérence des ordres** : Pour additionner ou multiplier, il est préférable d'avoir des DL au même ordre. Si les ordres diffèrent, le résultat est valide à l'ordre du plus petit ($min(n, m)$).
- **Substitution** : Pour un DL en 0 de $f(u(x))$ avec $u(x) \to 0$, on remplace $X$ par $u(x)$ dans le DL de référence et on ne garde que les termes de degré $\le n$.

### Exemples

**Exemple 1 : Produit**
DL de $e^x \sin(x)$ à l'ordre 3.
$e^x = 1 + x + \frac{x^2}{2} + \frac{x^3}{6} + o(x^3)$
$\sin(x) = x - \frac{x^3}{6} + o(x^3)$
Produit : $(1 + x + \frac{x^2}{2} + \frac{x^3}{6})(x - \frac{x^3}{6}) = x + x^2 + \frac{x^3}{2} - \frac{x^3}{6} + \text{degrés } > 3$
Résultat : $e^x \sin(x) = x + x^2 + \frac{x^3}{3} + o(x^3)$.

**Exemple 2 : Intégration**
Pour obtenir le DL de $\arctan(x)$ à l'ordre 3.
On part de la dérivée : $(\arctan x)' = \frac{1}{1+x^2}$.
DL de $\frac{1}{1+u}$ en $u=x^2$ : $\frac{1}{1+x^2} = 1 - x^2 + o(x^2)$.
On intègre (avec $\arctan(0)=0$) : $\arctan(x) = x - \frac{x^3}{3} + o(x^3)$.

**Exemple 3 : Composition**
DL de $e^{\sin(x)}$ à l'ordre 3.
$e^u = 1 + u + \frac{u^2}{2} + \frac{u^3}{6} + o(u^3)$ avec $u = \sin(x) = x - \frac{x^3}{6} + o(x^3)$.
On remplace :
$1 + (x - \frac{x^3}{6}) + \frac{1}{2}(x - \frac{x^3}{6})^2 + \frac{1}{6}(x)^3 + \dots$
$= 1 + x - \frac{x^3}{6} + \frac{1}{2}x^2 + \frac{1}{6}x^3 + o(x^3)$
$= 1 + x + \frac{x^2}{2} + o(x^3)$.

### Contre-exemples

**Contre-exemple 1 : Perte de précision**
Si on calcule un DL de $f(x) - g(x)$ où les premiers termes sont identiques, l'ordre de la partie significative diminue ("perte d'ordre"). Il faut prévoir de calculer les DL initiaux à un ordre suffisant pour qu'il reste quelque chose après soustraction.
Ex: Pour $\frac{\sin x - x}{x^3}$, il faut le DL de $\sin x$ à l'ordre 3 au numérateur.

### Concepts Connexes

- **Division euclidienne** : La division selon les puissances croissantes est l'algorithme clé pour les quotients de DL.

---

## Concept 3 : Développements Limités Usuels (Tableau Mnémotechnique)

### Prérequis

- Connaître les fonctions usuelles (exp, ln, trigo, puissances).
- Mémorisation indispensable pour la rapidité de calcul.

### Le Tableau à Savoir par Cœur (en 0)

Voici les développements limités fondamentaux au voisinage de 0.

| Fonction $f(x)$        | DL en 0 (Partie régulière)                                                                           | Ordre courant | Remarques                                                            |
| :--------------------- | :--------------------------------------------------------------------------------------------------- | :------------ | :------------------------------------------------------------------- |
| **Exponentielle**      |                                                                                                      |               |                                                                      |
| $e^x$                  | $1 + x + \frac{x^2}{2!} + \frac{x^3}{3!} + \dots + \frac{x^n}{n!}$                                   | $n$           | La base de tout.                                                     |
| **Trigonométrie**      |                                                                                                      |               |                                                                      |
| $\cos(x)$              | $1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \dots + (-1)^p \frac{x^{2p}}{(2p)!}$                          | $2p$          | Fonction paire (puissances paires), signes alternés.                 |
| $\sin(x)$              | $x - \frac{x^3}{3!} + \frac{x^5}{5!} - \dots + (-1)^p \frac{x^{2p+1}}{(2p+1)!}$                      | $2p+1$        | Fonction impaire (puissances impaires), signes alternés.             |
| $\tan(x)$              | $x + \frac{x^3}{3} + \frac{2x^5}{15}$                                                                | $5$           | Coefficients plus complexes (Bernoulli).                             |
| **Hyperbolique**       |                                                                                                      |               |                                                                      |
| $\cosh(x)$             | $1 + \frac{x^2}{2!} + \frac{x^4}{4!} + \dots + \frac{x^{2p}}{(2p)!}$                                 | $2p$          | Comme $\cos$ mais signes tous $+$.                                   |
| $\sinh(x)$             | $x + \frac{x^3}{3!} + \frac{x^5}{5!} + \dots + \frac{x^{2p+1}}{(2p+1)!}$                             | $2p+1$        | Comme $\sin$ mais signes tous $+$.                                   |
| **Logarithme**         |                                                                                                      |               |                                                                      |
| $\ln(1+x)$             | $x - \frac{x^2}{2} + \frac{x^3}{3} - \dots + (-1)^{n-1} \frac{x^n}{n}$                               | $n$           | **Attention** : commence à $x$, pas de factorielle au dénominateur ! |
| $\ln(1-x)$             | $-x - \frac{x^2}{2} - \frac{x^3}{3} - \dots - \frac{x^n}{n}$                                         | $n$           | Tous les signes sont $-$.                                            |
| **Puissance**          |                                                                                                      |               |                                                                      |
| $(1+x)^\alpha$         | $1 + \alpha x + \frac{\alpha(\alpha-1)}{2!} x^2 + \frac{\alpha(\alpha-1)(\alpha-2)}{3!} x^3 + \dots$ | $n$           | Généralise le binôme de Newton.                                      |
| $\frac{1}{1+x}$        | $1 - x + x^2 - x^3 + \dots + (-1)^n x^n$                                                             | $n$           | Cas $\alpha = -1$. Série géométrique alternée.                       |
| $\frac{1}{1-x}$        | $1 + x + x^2 + x^3 + \dots + x^n$                                                                    | $n$           | Série géométrique.                                                   |
| $\sqrt{1+x}$           | $1 + \frac{x}{2} - \frac{x^2}{8} + \frac{x^3}{16}$                                                   | $3$           | Cas $\alpha = 1/2$.                                                  |
| $\frac{1}{\sqrt{1+x}}$ | $1 - \frac{x}{2} + \frac{3x^2}{8}$                                                                   | $2$           | Cas $\alpha = -1/2$.                                                 |
| **Arc**                |                                                                                                      |               |                                                                      |
| $\arctan(x)$           | $x - \frac{x^3}{3} + \frac{x^5}{5} - \dots + (-1)^p \frac{x^{2p+1}}{2p+1}$                           | $2p+1$        | Intégrale de $\frac{1}{1+x^2}$. Pas de factorielle.                  |
| $\arcsin(x)$           | $x + \frac{x^3}{6} + \frac{3x^5}{40}$                                                                | $5$           | Coefficients moins évidents.                                         |

### Astuces de Mémorisation

1.  **Lien Cos/Sin/Exp** : Les séries de $\cos$ et $\sin$ sont respectivement les parties paires et impaires de la série de $e^{ix}$, en tenant compte que $i^2 = -1$.
    $e^x = \cosh x + \sinh x$ (somme des parties paire et impaire).
2.  **Factorielles vs Entiers** :
    - Exp, Sin, Cos, Sh, Ch, Binôme : **Factorielles** au dénominateur.
    - Ln, Arctan : **Entiers simples** au dénominateur (car issus d'intégration de polynômes géométriques).
3.  **Signes** :
    - $1/(1-x)$ et $\ln(1-x)$ (avec un $- devant$) et $e^x, \sinh, \cosh$ : Que des signes **+**.
    - $1/(1+x)$, $\ln(1+x)$, $\cos, \sin, \arctan$ : **Signes alternés** (+ - + -).

### Propriétés Clés

- **Domaine de validité** : Ces DL sont des approximations locales en 0. Pour $\ln(1+x)$ par exemple, la série entière associée ne converge que pour $|x| < 1$.
- **Extension** : Pour un DL en $x_0 \neq 0$, on pose $x = x_0 + h$ et on se ramène à $h \to 0$.

### Applications

- **Calcul de limites indéterminées** : C'est l'application principale.
    Ex : $\lim_{x \to 0} \frac{\sin x - x}{x^3} = \lim_{x \to 0} \frac{(x - x^3/6 + o(x^3)) - x}{x^3} = -1/6$.
- **Étude locale de fonctions** :
    - Position d'une courbe par rapport à sa tangente. Si $f(x) = ax+b + cx^2 + o(x^2)$, le signe de $c$ indique si la courbe est au-dessus ou en-dessous.
    - Comportement asymptotique (en posant $X = 1/x$).

