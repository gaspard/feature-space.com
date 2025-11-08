---
id: a60a3e2d
type: concepts
order: 10
title: Dérivées - concepts (A)
tags:
  - dérivées
  - analyse
  - calcul différentiel
  - fonctions
  - limites
  - mathématiques
course: Bases mathématiques
courseId: 4e5f6a7b
chapter: Dérivées
chapterId: 7a8b9c0d
level: regular
createdAt: '2025-11-08T14:25:56.675Z'
---
# Dérivées

---

## Concept 1: Dérivée en un point et continuité

### Prérequis

- **Notion de limite d'une fonction** : Comprendre ce que signifie $\lim_{x \to a} f(x) = L$.
- **Notion de continuité** : Savoir qu'une fonction $f$ est continue en $a$ si $\lim_{x \to a} f(x) = f(a)$.
- **Taux d'accroissement** : Connaître la notion de taux d'accroissement moyen d'une fonction entre deux points, $\frac{f(b) - f(a)}{b - a}$.

### Définition

Soit $f$ une fonction définie sur un intervalle $I$ de $\mathbb{R}$ et soit $a$ un point de $I$.

On dit que $f$ est **dérivable** au point $a$ si la limite du taux d'accroissement de $f$ entre $a$ et $a+h$ existe et est finie lorsque $h$ tend vers $0$. Cette limite est appelée le **nombre dérivé** de $f$ en $a$ et est notée $f'(a)$.

Mathématiquement, cela s'écrit :

$$ f'(a) = \lim_{h \to 0} \frac{f(a+h) - f(a)}{h} $$

Une formulation équivalente est :

$$ f'(a) = \lim_{x \to a} \frac{f(x) - f(a)}{x - a} $$

**Dérivées à gauche et à droite** :

Une fonction est dérivable en $a$ si et seulement si ses dérivées à gauche et à droite en $a$ existent et sont égales.

- **Dérivée à droite** : $f'_d(a) = \lim_{h \to 0^+} \frac{f(a+h) - f(a)}{h}$
- **Dérivée à gauche** : $f'_g(a) = \lim_{h \to 0^-} \frac{f(a+h) - f(a)}{h}$

La fonction $f$ est dérivable en $a$ si $f'_d(a) = f'_g(a)$.

### Propriétés Clés

- **Interprétation géométrique** : Le nombre dérivé $f'(a)$ est le **coefficient directeur de la tangente** à la courbe représentative de $f$ au point d'abscisse $a$. L'équation de cette tangente est :

  $$ y = f(a) + f'(a)(x - a) $$

- **Interprétation cinématique** : Si $f(t)$ représente la position d'un objet à l'instant $t$, alors $f'(a)$ représente sa **vitesse instantanée** à l'instant $a$.
- **Lien avec la continuité** : **Si une fonction $f$ est dérivable en un point $a$, alors elle est nécessairement continue en ce point $a$**. La réciproque est fausse.

### Exemples

**Exemple 1 : Fonction quadratique**

Soit la fonction $f(x) = x^2$. Calculons sa dérivée au point $a=3$.

On utilise la définition :

$$ f'(3) = \lim_{h \to 0} \frac{f(3+h) - f(3)}{h} = \lim_{h \to 0} \frac{(3+h)^2 - 3^2}{h} $$

$$ = \lim_{h \to 0} \frac{9 + 6h + h^2 - 9}{h} = \lim_{h \to 0} \frac{6h + h^2}{h} = \lim_{h \to 0} (6+h) = 6 $$

Ainsi, $f$ est dérivable en $3$ et $f'(3)=6$. La tangente à la parabole au point $(3, 9)$ a une pente de $6$.

**Exemple 2 : Fonction inverse**

Soit la fonction $g(x) = \frac{1}{x}$ pour $x \neq 0$. Calculons sa dérivée au point $a=2$.

$$ g'(2) = \lim_{h \to 0} \frac{g(2+h) - g(2)}{h} = \lim_{h \to 0} \frac{\frac{1}{2+h} - \frac{1}{2}}{h} $$

$$ = \lim_{h \to 0} \frac{\frac{2 - (2+h)}{2(2+h)}}{h} = \lim_{h \to 0} \frac{-h}{2h(2+h)} = \lim_{h \to 0} \frac{-1}{2(2+h)} = -\frac{1}{4} $$

Ainsi, $g$ est dérivable en $2$ et $g'(2) = -1/4$.

**Exemple 3 : Fonction affine**

Soit la fonction $k(x) = 4x - 5$. Calculons sa dérivée en un point $a$ quelconque.

$$ k'(a) = \lim_{h \to 0} \frac{k(a+h) - k(a)}{h} = \lim_{h \to 0} \frac{(4(a+h) - 5) - (4a - 5)}{h} $$

$$ = \lim_{h \to 0} \frac{4a + 4h - 5 - 4a + 5}{h} = \lim_{h \to 0} \frac{4h}{h} = 4 $$

Le nombre dérivé est constant et égal à $4$, ce qui correspond bien à la pente de la droite.

### Contre-exemples

**Contre-exemple 1 : Continuité sans dérivabilité**

La fonction valeur absolue $f(x) = |x|$ est continue en $0$, mais n'y est pas dérivable.

- Dérivée à droite en $0$ : $\lim_{h \to 0^+} \frac{|0+h| - |0|}{h} = \lim_{h \to 0^+} \frac{h}{h} = 1$.
- Dérivée à gauche en $0$ : $\lim_{h \to 0^-} \frac{|0+h| - |0|}{h} = \lim_{h \to 0^-} \frac{-h}{h} = -1$.

Comme $f'_d(0) \neq f'_g(0)$, la fonction n'est pas dérivable en $0$. Géométriquement, la courbe présente un "point anguleux".

**Contre-exemple 2 : Tangente verticale**

La fonction racine cubique $g(x) = x^{1/3}$ est continue en $0$, mais n'y est pas dérivable.

$$ g'(0) = \lim_{h \to 0} \frac{h^{1/3} - 0}{h} = \lim_{h \to 0} \frac{1}{h^{2/3}} = +\infty $$

La limite n'est pas finie, donc la fonction n'est pas dérivable en $0$. Géométriquement, la courbe admet une tangente verticale au point $(0,0)$.

### Concepts Connexes

- **Fonction dérivée** : Si une fonction est dérivable en tout point d'un intervalle, on peut définir la fonction dérivée $f'$ qui à chaque $x$ associe $f'(x)$.
- **Approximation affine** : La dérivée est la base de l'approximation locale d'une fonction par une fonction affine (sa tangente). $f(a+h) \approx f(a) + f'(a)h$.

### Applications

- **Optimisation** : Trouver les maximums et minimums d'une fonction.
- **Physique** : Calcul de la vitesse et de l'accélération.
- **Économie** : Analyse marginale (coût marginal, revenu marginal).

---

## Concept 2: Règles de dérivation (Opérations algébriques)

### Prérequis

- **Concept 1: Dérivée en un point** : Maîtrise de la définition de la dérivée.
- **Algèbre des fonctions** : Savoir additionner, multiplier et diviser des fonctions.

### Définition

Soient $f$ et $g$ deux fonctions dérivables sur un intervalle $I$ et $\lambda$ un nombre réel. Les fonctions obtenues par opérations algébriques sur $f$ et $g$ sont également dérivables sur $I$ (sous conditions pour le quotient), et leurs dérivées sont données par les formules suivantes :

1.  **Somme** : $(f + g)' = f' + g'$
2.  **Produit par un scalaire** : $(\lambda f)' = \lambda f'$
3.  **Produit** : $(fg)' = f'g + fg'$
4.  **Quotient** : Si $g(x) \neq 0$ pour tout $x \in I$, alors $\left(\frac{f}{g}\right)' = \frac{f'g - fg'}{g^2}$

### Propriétés Clés

- **Linéarité de la dérivation** : Les règles 1 et 2 combinées montrent que la dérivation est une opération linéaire. Pour deux fonctions $f,g$ dérivables et deux réels $\lambda, \mu$, on a : $(\lambda f + \mu g)' = \lambda f' + \mu g'$.
- **Dérivée d'un polynôme** : En utilisant ces règles et la formule $(x^n)'=nx^{n-1}$, on peut dériver n'importe quelle fonction polynomiale terme à terme.
- **La règle du produit n'est pas distributive** : Attention, la dérivée d'un produit n'est PAS le produit des dérivées. La formule correcte est $f'g + fg'$.

### Exemples

**Exemple 1 : Dérivée d'un polynôme**

Soit $P(x) = 4x^3 - 5x^2 + 2x - 1$. En utilisant la linéarité et la dérivée de $x^n$ :

$$ P'(x) = (4x^3)' - (5x^2)' + (2x)' - (1)' $$

$$ P'(x) = 4(x^3)' - 5(x^2)' + 2(x)' - 0 $$

$$ P'(x) = 4(3x^2) - 5(2x) + 2(1) = 12x^2 - 10x + 2 $$

**Exemple 2 : Dérivée d'un produit**

Soit $f(x) = x^2 \sin(x)$. On pose $u(x) = x^2$ et $v(x) = \sin(x)$. On a $u'(x) = 2x$ et $v'(x) = \cos(x)$.

En utilisant la règle du produit $(uv)' = u'v + uv'$ :

$$ f'(x) = (2x)(\sin(x)) + (x^2)(\cos(x)) = 2x \sin(x) + x^2 \cos(x) $$

**Exemple 3 : Dérivée d'un quotient**

Soit $g(x) = \frac{e^x}{x^2+1}$. On pose $u(x) = e^x$ et $v(x) = x^2+1$. On a $u'(x) = e^x$ et $v'(x) = 2x$.

En utilisant la règle du quotient $\left(\frac{u}{v}\right)' = \frac{u'v - uv'}{v^2}$ :

$$ g'(x) = \frac{(e^x)(x^2+1) - (e^x)(2x)}{(x^2+1)^2} = \frac{e^x(x^2 - 2x + 1)}{(x^2+1)^2} = \frac{e^x(x-1)^2}{(x^2+1)^2} $$

### Contre-exemples

**Contre-exemple 1 : Erreur classique sur le produit**

Soit $f(x) = x^2$ et $g(x) = x^3$. Le produit est $(fg)(x) = x^5$, donc $(fg)'(x) = 5x^4$.

L'erreur serait de calculer $f'(x)g'(x) = (2x)(3x^2) = 6x^3$.

On voit bien que $(fg)' \neq f'g'$. La formule correcte donne :

$f'(x)g(x) + f(x)g'(x) = (2x)(x^3) + (x^2)(3x^2) = 2x^4 + 3x^4 = 5x^4$.

**Contre-exemple 2 : Erreur classique sur le quotient**

Soit $f(x) = x^2$ et $g(x) = x$. Le quotient est $(\frac{f}{g})(x) = x$, donc $(\frac{f}{g})'(x) = 1$.

L'erreur serait de calculer $\frac{f'(x)}{g'(x)} = \frac{2x}{1} = 2x$.

On voit bien que $(\frac{f}{g})' \neq \frac{f'}{g'}$. La formule correcte donne :

$\frac{f'(x)g(x) - f(x)g'(x)}{g(x)^2} = \frac{(2x)(x) - (x^2)(1)}{x^2} = \frac{2x^2 - x^2}{x^2} = \frac{x^2}{x^2} = 1$.

### Concepts Connexes

- **Dérivées des fonctions usuelles** : Ces règles sont utilisées en conjonction avec les formules de dérivation des fonctions de base (sin, cos, exp, ln, etc.).
- **Formule de Leibniz** : Généralise la règle du produit aux dérivées d'ordre supérieur.

### Applications

- Ces règles sont le fondement du calcul différentiel, permettant de dériver pratiquement toutes les fonctions construites à partir de fonctions élémentaires.
- Analyse des variations de fonctions complexes pour l'optimisation.

---

## Concept 3: Dérivée d'une fonction composée (Règle de la chaîne)

### Prérequis

- **Concept 2: Règles de dérivation** : Maîtrise des opérations de base.
- **Composition de fonctions** : Comprendre la notion de $g \circ f$, qui se lit "$g$ rond $f$", et signifie $g(f(x))$.

### Définition

Soient $f : I \to J$ et $g : J \to \mathbb{R}$ deux fonctions. On suppose que $f$ est dérivable en un point $a \in I$ et que $g$ est dérivable au point $f(a) \in J$.

Alors, la fonction composée $h = g \circ f$ est dérivable en $a$ et sa dérivée est donnée par la **règle de la chaîne** (ou "règle de l'Hôpital") :

$$ (g \circ f)'(a) = g'(f(a)) \cdot f'(a) $$

**Explication intuitive** : Pour trouver la dérivée de la fonction "extérieure" $g$ composée avec la fonction "intérieure" $f$, on dérive la fonction extérieure $g$ en gardant l'intérieur $f(a)$ inchangé, puis on multiplie par la dérivée de la fonction intérieure $f$.

Avec la notation de Leibniz, si $y = g(u)$ et $u = f(x)$, alors :

$$ \frac{dy}{dx} = \frac{dy}{du} \cdot \frac{du}{dx} $$

### Propriétés Clés

- **Outil fondamental** : La règle de la chaîne est l'une des règles les plus puissantes et les plus utilisées en dérivation.
- **Application successive** : Elle peut être appliquée plusieurs fois pour des compositions de trois fonctions ou plus. Par exemple, $(k \circ g \circ f)'(a) = k'(g(f(a))) \cdot g'(f(a)) \cdot f'(a)$.

### Exemples

**Exemple 1 : Puissance d'une fonction**

Soit $h(x) = (x^3 + 2x)^4$. C'est la composition de $f(x) = x^3 + 2x$ (fonction intérieure) et $g(u) = u^4$ (fonction extérieure).

On a $f'(x) = 3x^2 + 2$ et $g'(u) = 4u^3$.

En appliquant la règle de la chaîne :

$$ h'(x) = g'(f(x)) \cdot f'(x) = 4(f(x))^3 \cdot (3x^2+2) $$

$$ h'(x) = 4(x^3 + 2x)^3 (3x^2 + 2) $$

**Exemple 2 : Fonction trigonométrique composée**

Soit $h(x) = \cos(x^2)$. C'est la composition de $f(x) = x^2$ et $g(u) = \cos(u)$.

On a $f'(x) = 2x$ et $g'(u) = -\sin(u)$.

$$ h'(x) = g'(f(x)) \cdot f'(x) = -\sin(x^2) \cdot (2x) = -2x \sin(x^2) $$

**Exemple 3 : Composition multiple**

Soit $h(x) = e^{\sin(\sqrt{x})}$. Il s'agit d'une triple composition.

Posons $f(x) = \sqrt{x}$, $g(u) = \sin(u)$, $k(v) = e^v$. Alors $h = k \circ g \circ f$.

On a $f'(x) = \frac{1}{2\sqrt{x}}$, $g'(u) = \cos(u)$, $k'(v) = e^v$.

$$ h'(x) = k'(g(f(x))) \cdot g'(f(x)) \cdot f'(x) $$

$$ h'(x) = e^{\sin(\sqrt{x})} \cdot \cos(\sqrt{x}) \cdot \frac{1}{2\sqrt{x}} = \frac{\cos(\sqrt{x}) e^{\sin(\sqrt{x})}}{2\sqrt{x}} $$

### Contre-exemples

**Contre-exemple 1 : Oubli du second facteur**

Pour $h(x) = \sin(x^2)$, une erreur fréquente est de dériver uniquement la fonction extérieure : $h'(x) \neq \cos(x^2)$.

La règle de la chaîne impose de multiplier par la dérivée de l'intérieur, qui est $2x$. La dérivée correcte est $2x \cos(x^2)$.

**Contre-exemple 2 : Mauvaise évaluation de la dérivée extérieure**

Pour $h(x) = (x^3+1)^2$, l'erreur serait d'évaluer la dérivée de la fonction extérieure au mauvais point. Par exemple, $g'(x) \cdot f'(x)$ n'a pas de sens. Il faut évaluer $g'$ en $f(x)$.

L'erreur : $g'(x) = 2x$, $f'(x) = 3x^2$, donc $2x \cdot 3x^2 = 6x^3$. C'est incorrect.

La bonne méthode : $g'(u) = 2u$, évalué en $u=f(x)=x^3+1$ donne $2(x^3+1)$. Multiplié par $f'(x) = 3x^2$, on obtient $2(x^3+1) \cdot 3x^2 = 6x^2(x^3+1)$.

### Concepts Connexes

- **Dérivée de la fonction réciproque** : La formule de dérivation de $f^{-1}$ peut être démontrée en utilisant la règle de la chaîne sur l'identité $f^{-1}(f(x)) = x$.
- **Dérivation implicite** : Cette technique repose heavily sur la règle de la chaîne, en considérant une variable (ex: $y$) comme une fonction d'une autre (ex: $x$).

### Applications

- La règle de la chaîne est indispensable dans tous les domaines des sciences. Par exemple, en physique, si la position $x$ dépend du temps $t$ et que l'énergie potentielle $U$ dépend de la position $x$, la variation de l'énergie par rapport au temps $\frac{dU}{dt}$ est calculée via la règle de la chaîne : $\frac{dU}{dt} = \frac{dU}{dx} \cdot \frac{dx}{dt}$.

---

## Concept 4: Dérivées d'ordre supérieur et Formule de Leibniz

### Prérequis

- **Concept 1, 2, 3** : Maîtrise complète de la dérivation de premier ordre.
- **Combinatoire** : Connaissance des coefficients binomiaux $\binom{n}{k} = \frac{n!}{k!(n-k)!}$.
- **Raisonnement par récurrence**.

### Définition

Si une fonction $f$ est dérivable sur un intervalle $I$, sa fonction dérivée est notée $f'$. Si cette fonction $f'$ est elle-même dérivable sur $I$, on dit que $f$ est **deux fois dérivable**. Sa dérivée, notée $f'' = (f')'$, est appelée la **dérivée seconde** de $f$.

De manière générale, on définit la **dérivée $n$-ième** de $f$, notée $f^{(n)}$, par récurrence :

$$ f^{(n)} = (f^{(n-1)})' $$

pourvu que la dérivée d'ordre $n-1$ existe et soit dérivable.

On utilise aussi la notation de Leibniz : $\frac{d^n f}{dx^n} = f^{(n)}$.

### Propriétés Clés

- **Dérivées d'ordre supérieur de fonctions usuelles** :
  - Pour $P(x) = x^k$ avec $k \in \mathbb{N}$, la dérivée $(k+1)$-ième est nulle.
  - Les dérivées de $\sin(x)$ et $\cos(x)$ sont cycliques avec une période de 4.
  - La dérivée $n$-ième de $e^{\lambda x}$ est $\lambda^n e^{\lambda x}$.
- **Formule de Leibniz** : C'est une généralisation de la règle du produit pour la dérivée $n$-ième. Si $f$ et $g$ sont $n$ fois dérivables, alors le produit $fg$ l'est aussi et :

  $$ (fg)^{(n)} = \sum_{k=0}^{n} \binom{n}{k} f^{(k)} g^{(n-k)} $$

  Cette formule est analogue à la formule du binôme de Newton $(a+b)^n$.

### Exemples

**Exemple 1 : Calcul de dérivées successives**

Soit $f(x) = x^4 + 3x^2 - \cos(x)$.

- $f'(x) = 4x^3 + 6x + \sin(x)$
- $f''(x) = 12x^2 + 6 + \cos(x)$
- $f^{(3)}(x) = 24x - \sin(x)$
- $f^{(4)}(x) = 24 - \cos(x)$
- $f^{(5)}(x) = \sin(x)$

**Exemple 2 : Utilisation de la Formule de Leibniz**

Calculons la dérivée troisième de $h(x) = x^2 e^x$. Posons $f(x) = e^x$ et $g(x) = x^2$.

On a besoin des dérivées de $f$ et $g$ jusqu'à l'ordre 3.

- $f(x)=e^x, f'(x)=e^x, f''(x)=e^x, f^{(3)}(x)=e^x$
- $g(x)=x^2, g'(x)=2x, g''(x)=2, g^{(3)}(x)=0$

La formule de Leibniz pour $n=3$ est :

$(fg)^{(3)} = \binom{3}{0}f^{(0)}g^{(3)} + \binom{3}{1}f^{(1)}g^{(2)} + \binom{3}{2}f^{(2)}g^{(1)} + \binom{3}{3}f^{(3)}g^{(0)}$

$h^{(3)}(x) = 1 \cdot e^x \cdot 0 + 3 \cdot e^x \cdot 2 + 3 \cdot e^x \cdot 2x + 1 \cdot e^x \cdot x^2$

$h^{(3)}(x) = 6e^x + 6xe^x + x^2e^x = (x^2+6x+6)e^x$

**Exemple 3 : Formule générale de dérivée n-ième**

Trouvons la dérivée $n$-ième de $f(x) = \frac{1}{x} = x^{-1}$.

- $f'(x) = (-1)x^{-2}$
- $f''(x) = (-1)(-2)x^{-3} = 2x^{-3}$
- $f^{(3)}(x) = (-1)(-2)(-3)x^{-4} = -6x^{-4}$

On observe une tendance. Par récurrence, on peut montrer que :

$$ f^{(n)}(x) = (-1)^n n! x^{-(n+1)} = \frac{(-1)^n n!}{x^{n+1}} $$

### Contre-exemples

**Contre-exemple 1 : Non-existence de dérivées supérieures**

Soit la fonction $f(x) = x|x|$.

$f(x) = x^2$ si $x \ge 0$ et $f(x) = -x^2$ si $x < 0$.

Sa dérivée est $f'(x) = 2|x|$, qui est continue partout mais non dérivable en 0.

Donc, $f$ est une fois dérivable sur $\mathbb{R}$, mais sa dérivée seconde $f''$ n'existe pas en $x=0$.

**Contre-exemple 2 : Application incorrecte de Leibniz**

Calculer $(x^2 e^x)^{(3)}$ en dérivant trois fois chaque facteur est faux :

$ (x^2)^{(3)} \cdot (e^x)^{(3)} = 0 \cdot e^x = 0 $.

Ceci est incorrect, car la formule de Leibniz montre que des termes "croisés" (où une fonction est dérivée $k$ fois et l'autre $n-k$ fois) sont essentiels.

### Concepts Connexes

- **Développements limités et séries de Taylor** : Les dérivées d'ordre supérieur en un point sont les coefficients de la série de Taylor d'une fonction, qui permet d'approximer la fonction par un polynôme.
- **Convexité** : Le signe de la dérivée seconde $f''$ détermine la convexité de la fonction $f$. Si $f''>0$, $f$ est convexe (courbe "tournée vers le haut"). Si $f''<0$, $f$ est concave.

### Applications

- **Physique** : La dérivée seconde de la position par rapport au temps est l'accélération. La troisième est le "jerk" (à-coup).
- **Analyse de fonctions** : L'étude de $f''$ permet de trouver les points d'inflexion (où la convexité change) et d'affiner la recherche d'extremums (test de la dérivée seconde).

---

## Concept 5: Théorèmes de Rolle et des Accroissements Finis

### Prérequis

- **Concept 1: Dérivée et continuité**
- **Notion d'extremum local** : Savoir ce qu'est un maximum ou un minimum local.
- **Théorème des valeurs intermédiaires** et **Théorème des bornes atteintes** (une fonction continue sur un segment $[a,b]$ est bornée et atteint ses bornes).

### Définition

**Théorème de Rolle**

Soit $f$ une fonction qui satisfait les trois hypothèses suivantes :

1.  $f$ est continue sur l'intervalle fermé $[a, b]$.
2.  $f$ est dérivable sur l'intervalle ouvert $]a, b[$.
3.  $f(a) = f(b)$.

Alors, il existe au moins un point $c \in ]a, b[$ tel que $f'(c) = 0$.

**Interprétation géométrique** : Si une courbe régulière relie deux points à la même altitude, il y a au moins un point entre eux où la tangente est horizontale.

**Théorème des Accroissements Finis (TAF)**

Soit $f$ une fonction qui satisfait les deux hypothèses suivantes :

1.  $f$ est continue sur l'intervalle fermé $[a, b]$.
2.  $f$ est dérivable sur l'intervalle ouvert $]a, b[$.

Alors, il existe au moins un point $c \in ]a, b[$ tel que :

$$ f'(c) = \frac{f(b) - f(a)}{b - a} $$

**Interprétation géométrique** : Il existe au moins un point sur la courbe où la tangente est parallèle à la corde (la droite) reliant les points $(a, f(a))$ et $(b, f(b))$.

### Propriétés Clés

- **Le TAF est une généralisation du Théorème de Rolle** : Si on ajoute l'hypothèse $f(a)=f(b)$ au TAF, le membre de droite devient nul, et on retrouve $f'(c)=0$.
- **Lien entre la dérivée et la monotonie** : Le TAF est l'outil fondamental pour prouver le corollaire suivant, qui est l'un des résultats les plus importants de l'analyse :
    - Si $f'(x) > 0$ sur un intervalle $I$, alors $f$ est strictement croissante sur $I$.
    - Si $f'(x) < 0$ sur un intervalle $I$, alors $f$ est strictement décroissante sur $I$.
    - Si $f'(x) = 0$ sur un intervalle $I$, alors $f$ est constante sur $I$.

### Exemples

**Exemple 1 : Théorème de Rolle**

Soit $f(x) = x^2 - 4x + 3$ sur l'intervalle $[1, 3]$.

1.  $f$ est un polynôme, donc continue sur $[1, 3]$ et dérivable sur $]1, 3[$.
2.  $f(1) = 1 - 4 + 3 = 0$ et $f(3) = 9 - 12 + 3 = 0$. Donc $f(1)=f(3)$.

Les hypothèses sont vérifiées. Il existe donc un $c \in ]1, 3[$ tel que $f'(c)=0$.

Cherchons $c$ : $f'(x) = 2x - 4$.

$f'(c) = 0 \Leftrightarrow 2c - 4 = 0 \Leftrightarrow c = 2$.

Effectivement, $c=2$ est bien dans l'intervalle $]1, 3[$.

**Exemple 2 : Théorème des Accroissements Finis**

Soit $g(x) = \ln(x)$ sur l'intervalle $[1, e]$.

1.  $g$ est continue sur $[1, e]$ et dérivable sur $]1, e[$.

Le TAF garantit l'existence d'un $c \in ]1, e[$ tel que :

$$ g'(c) = \frac{g(e) - g(1)}{e - 1} = \frac{\ln(e) - \ln(1)}{e - 1} = \frac{1 - 0}{e - 1} = \frac{1}{e-1} $$

On a $g'(x) = \frac{1}{x}$. Donc $g'(c) = \frac{1}{c}$.

On cherche $c$ tel que $\frac{1}{c} = \frac{1}{e-1}$, ce qui donne $c = e-1$.

Comme $e \approx 2.718$, on a $c \approx 1.718$, qui est bien dans l'intervalle $]1, e[$.

**Exemple 3 : Encadrement à l'aide du TAF**

Montrons que pour tout $x > 0$, on a $\frac{x}{1+x^2} < \arctan(x) < x$.

Soit $f(t) = \arctan(t)$. Appliquons le TAF sur $[0, x]$ (pour $x>0$).

Il existe $c \in ]0, x[$ tel que $f'(c) = \frac{\arctan(x) - \arctan(0)}{x - 0} = \frac{\arctan(x)}{x}$.

Or, $f'(t) = \frac{1}{1+t^2}$. Donc $\frac{\arctan(x)}{x} = \frac{1}{1+c^2}$.

Comme $0 < c < x$, on a $0 < c^2 < x^2$, donc $1 < 1+c^2 < 1+x^2$.

En inversant, on obtient $\frac{1}{1+x^2} < \frac{1}{1+c^2} < 1$.

Ainsi, $\frac{1}{1+x^2} < \frac{\arctan(x)}{x} < 1$. En multipliant par $x>0$, on obtient le résultat voulu.

### Contre-exemples

**Contre-exemple 1 : Non-continuité au bord**

Soit $f(x) = x$ sur $[0, 1[$ et $f(1) = 0$. $f$ est dérivable sur $]0, 1[$ et $f(0)=f(1)=0$. Mais $f$ n'est pas continue en $x=1$.

La dérivée est $f'(x) = 1$ sur $]0, 1[$, elle ne s'annule jamais. Le théorème de Rolle ne s'applique pas.

**Contre-exemple 2 : Non-dérivabilité à l'intérieur**

Soit $f(x) = |x|$ sur $[-1, 1]$. On a bien $f(-1) = f(1) = 1$. La fonction est continue sur $[-1, 1]$.

Mais $f$ n'est pas dérivable en $0 \in ]-1, 1[$.

La dérivée est $f'(x) = -1$ pour $x<0$ et $f'(x) = 1$ pour $x>0$. Elle ne s'annule jamais. Le théorème de Rolle ne s'applique pas.

### Concepts Connexes

- **Règle de l'Hôpital** : Une application importante du TAF généralisé pour lever les indéterminations de la forme $\frac{0}{0}$ ou $\frac{\infty}{\infty}$.
- **Inégalité des accroissements finis** : Une conséquence directe du TAF. Si $|f'(x)| \leq M$ pour tout $x \in ]a, b[$, alors $|f(b) - f(a)| \leq M |b-a|$.

### Applications

- **Analyse de fonction** : Le corollaire sur le sens de variation est l'outil principal pour étudier les fonctions.
- **Preuves en analyse** : Le TAF est un théorème central utilisé pour démontrer de nombreux autres résultats (convergence de suites, développements limités, etc.).
- **Calcul numérique** : Pour estimer l'erreur dans les méthodes d'approximation.

---

## Concept 6: Extremums locaux et conditions nécessaires et suffisantes

### Prérequis

- **Concept 1: Dérivée en un point**
- **Définition d'un voisinage** : Un intervalle ouvert centré en un point.

### Définition

Soit $f$ une fonction définie sur un intervalle $I$ et soit $a \in I$.

- $f$ admet un **maximum local** en $a$ s'il existe un voisinage $V$ de $a$ tel que pour tout $x \in V \cap I$, on ait $f(x) \leq f(a)$.
- $f$ admet un **minimum local** en $a$ s'il existe un voisinage $V$ de $a$ tel que pour tout $x \in V \cap I$, on ait $f(x) \geq f(a)$.
- Un **extremum local** est un maximum local ou un minimum local.
- Un point $a$ où $f'(a)=0$ est appelé un **point critique** (ou point stationnaire) de $f$.

### Propriétés Clés

- **Théorème (Condition nécessaire du premier ordre)** : Si $f$ admet un extremum local en un point $a$ à l'intérieur de son domaine de définition $I$, et si $f$ est dérivable en $a$, alors **$f'(a) = 0$**.
  
  **Attention** : Cette condition est nécessaire mais pas suffisante. Un point critique n'est pas forcément un extremum.

- **Théorème (Condition suffisante du second ordre)** : Soit $f$ une fonction deux fois dérivable en un point critique $a$ (c'est-à-dire $f'(a)=0$).
  1. Si **$f''(a) > 0$**, alors $f$ admet un **minimum local** en $a$.
  2. Si **$f''(a) < 0$**, alors $f$ admet un **maximum local** en $a$.
  3. Si **$f''(a) = 0$**, on ne peut pas conclure. Le point peut être un minimum, un maximum ou ni l'un ni l'autre (point d'inflexion).

### Exemples

**Exemple 1 : Recherche d'extremums d'un polynôme**

Soit $f(x) = 2x^3 - 3x^2 - 12x + 1$.

1. **Trouver les points critiques** : On cherche les zéros de la dérivée.

   $f'(x) = 6x^2 - 6x - 12 = 6(x^2 - x - 2) = 6(x-2)(x+1)$.

   Les points critiques sont $x=-1$ et $x=2$.

2. **Utiliser le test de la dérivée seconde** :

   $f''(x) = 12x - 6$.

   - En $x=-1$ : $f''(-1) = 12(-1) - 6 = -18 < 0$. Donc, $f$ a un **maximum local** en $x=-1$. Le maximum est $f(-1) = 8$.
   - En $x=2$ : $f''(2) = 12(2) - 6 = 18 > 0$. Donc, $f$ a un **minimum local** en $x=2$. Le minimum est $f(2) = -19$.

**Exemple 2 : Le cas où le test de la dérivée seconde ne conclut pas**

Soit $f(x) = x^4$.

1. **Point critique** : $f'(x) = 4x^3$. $f'(x) = 0 \Leftrightarrow x=0$. Le seul point critique est $x=0$.
2. **Test de la dérivée seconde** : $f''(x) = 12x^2$. En $x=0$, $f''(0) = 0$. Le test ne permet pas de conclure.
3. **Analyse du signe de la dérivée première** : $f'(x) = 4x^3$ est négative pour $x<0$ (donc $f$ est décroissante) et positive pour $x>0$ (donc $f$ est croissante). La fonction admet donc bien un **minimum local** (et même global) en $x=0$.

**Exemple 3 : Application à l'optimisation**

On veut construire une boîte rectangulaire sans couvercle à partir d'une feuille de carton carrée de 12 cm de côté, en découpant un carré à chaque coin et en pliant les côtés. Quelle doit être la taille du carré découpé pour maximiser le volume de la boîte ?

Soit $x$ le côté du carré découpé. La base de la boîte sera un carré de côté $12-2x$ et sa hauteur sera $x$. Le volume est $V(x) = x(12-2x)^2$. On étudie $V$ pour $x \in ]0, 6[$.

$V'(x) = (12-2x)^2 + x \cdot 2(12-2x)(-2) = (12-2x)(12-2x-4x) = (12-2x)(12-6x)$.

Les points critiques sont $x=6$ (hors de l'intervalle) et $x=2$.

$V''(x) = -2(12-6x) + (12-2x)(-6) = -24+12x -72+12x = 24x-96$.

Pour $x=2$, $V''(2) = 48-96 = -48 < 0$. On a donc un maximum local en $x=2$.

Le volume est maximal lorsque l'on découpe des carrés de 2 cm de côté.

### Contre-exemples

**Contre-exemple 1 : Point critique n'étant pas un extremum**

Soit $f(x) = x^3$.

- $f'(x) = 3x^2$. Le seul point critique est $x=0$ car $f'(0)=0$.
- Cependant, pour $x<0$, $f(x)<0$ et pour $x>0$, $f(x)>0$. Donc $f(0)=0$ n'est ni un maximum ni un minimum local. C'est un point d'inflexion à tangente horizontale.
- Notons que $f''(x) = 6x$, et $f''(0)=0$, donc le test de la dérivée seconde ne concluait pas.

**Contre-exemple 2 : Extremum où la dérivée n'existe pas**

Soit $f(x) = |x|$. Cette fonction admet un minimum local (et global) en $x=0$.

Cependant, la dérivée de $f$ n'est pas définie en $x=0$. Le point $x=0$ n'est donc pas un point critique au sens $f'(a)=0$.

Cela montre que les extremums peuvent se produire soit en des points critiques ($f'(a)=0$), soit en des points où la fonction n'est pas dérivable, soit aux bornes du domaine.

### Concepts Connexes

- **Tableau de variations** : La recherche des points critiques est la première étape pour construire le tableau de variations d'une fonction, qui résume sa croissance et ses extremums.
- **Convexité** : Le signe de la dérivée seconde, utilisé dans le test, est directement lié à la convexité de la fonction. Un minimum local se produit là où la fonction est localement convexe, et un maximum là où elle est localement concave.

### Applications

- **Optimisation** : C'est le principal domaine d'application. Maximiser un profit, minimiser un coût, trouver la forme optimale d'un objet.
- **Statistique** : Méthode du maximum de vraisemblance pour estimer les paramètres d'un modèle.
- **Stabilité des systèmes physiques** : Les positions d'équilibre stable correspondent à des minimums de l'énergie potentielle.
