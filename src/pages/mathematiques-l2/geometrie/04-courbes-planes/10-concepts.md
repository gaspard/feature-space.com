---
id: f11736bf
type: concepts
order: 10
title: Courbes planes - Concepts (A)
tags:
  - courbes planes
  - courbes paramétrées
  - courbes implicites
  - coniques
  - courbure
  - Gauss-Bonnet
course: Géométrie
courseId: d9494343
chapter: Courbes planes
chapterId: 7eebdf24
level: regular
createdAt: '2025-11-26T16:55:39.654Z'
---
# Courbes planes

---

## Concept 1: Courbe Paramétrée et Régularité

### Prérequis

-   **Calcul différentiel :** Connaissance des fonctions de classe $C^k$ (k fois dérivables à dérivée k-ième continue) d'une variable réelle à valeurs réelles.
-   **Calcul vectoriel :** Dérivation des fonctions à valeurs dans $\mathbb{R}^n$. Compréhension du vecteur dérivé comme un vecteur vitesse.
-   **Géométrie euclidienne :** Notion de points, vecteurs, norme euclidienne et produit scalaire dans $\mathbb{R}^n$.

### Définition

<div class="graph">

<iframe src="https://www.desmos.com/calculator/vws2tdx6fy?embed" width="500" height="500" style="border: 1px solid #ccc" frameborder=0></iframe>

$$
\begin{align*}
\gamma(t) & = \left(
    \frac{\left(\cos\left(t\right)+2\right)t}{8\pi},\
    \frac{\left(\sin\left(t\right)+1\right)\left(t\right)}{8\pi}\right) \\
\gamma'(t) &= \left(
    \frac{\left(-\sin\left(t\right)t+\left(\cos\left(t\right)+2\right)\right)}{8\pi},\ 
\frac{\left(\cos\left(t\right)t+\left(\sin\left(t\right)+1\right)\right)}{8\pi}\right)
\end{align*}
$$

</div>

Une **courbe paramétrée** (ou arc paramétré) de classe $C^k$ dans $\mathbb{R}^n$ est un couple $(I, \gamma)$ où :

1.  $I$ est un intervalle de $\mathbb{R}$ (l'ensemble des paramètres).
2.  $\gamma : I \to \mathbb{R}^n$ est une application de classe $C^k$. Pour chaque $t \in I$, $\gamma(t) = (\gamma_1(t), \dots, \gamma_n(t))$ est un point de la courbe.

Un point $\gamma(t_0)$ de la courbe est dit **régulier** si le vecteur dérivé (vecteur vitesse) en ce point est non nul.

$$ \gamma'(t_0) \neq \vec{0} $$

Un point $\gamma(t_0)$ est dit **singulier** si son vecteur vitesse est nul.

$$ \gamma'(t_0) = \vec{0} $$

Une courbe paramétrée est dite **régulière** si tous ses points sont réguliers.

### Explications Détaillées

Imaginons un point qui se déplace dans l'espace (ou sur un plan). La **courbe paramétrée** est la formalisation mathématique de cette idée. Le paramètre $t$, qui appartient à l'intervalle $I$, peut être interprété comme le temps. La fonction $\gamma(t)$ donne la position du point à l'instant $t$. L'image de la fonction, $\gamma(I)$, est la trajectoire, c'est-à-dire l'ensemble des points parcourus.

Le vecteur dérivé, $\gamma'(t)$, représente le **vecteur vitesse instantanée** du point mobile.

-   Sa **direction** indique la direction du mouvement à l'instant $t$. C'est la direction de la tangente à la trajectoire.
-   Sa **norme**, $\|\gamma'(t)\|$, représente la **vitesse scalaire** (la "vitesse au compteur") du point.

Un **point régulier** est un point où le mobile a une vitesse non nulle. Il ne s'arrête pas. En ces points, la direction du mouvement est bien définie, ce qui nous permet de définir sans ambiguïté la droite tangente à la courbe.

Un **point singulier** est un point où la vitesse du mobile s'annule. Géométriquement, cela correspond souvent à des points où la courbe change brusquement de direction, forme une "pointe" (un point de rebroussement) ou s'arrête pour repartir dans une autre direction. L'étude de la courbe en ces points est plus complexe.

### Propriétés Clés

-   **Vecteur tangent :** En un point régulier $\gamma(t_0)$, le vecteur $\gamma'(t_0)$ est un vecteur directeur de la droite tangente à la courbe en ce point.
-   **Image vs Paramétrage :** Il faut distinguer l'image de la courbe $\gamma(I)$ (la forme géométrique) du paramétrage $(I, \gamma)$ (la manière de la parcourir). Une même forme peut être parcourue de multiples façons (plus vite, plus lentement, dans un sens ou dans l'autre).
-   **Points multiples :** Une courbe paramétrée peut se croiser. Si $\gamma(t_1) = \gamma(t_2)$ pour $t_1 \neq t_2$, on a un point multiple (un point de croisement).

### Exemples

**Exemple 1 : Le cercle unité (courbe régulière)**

Soit la courbe paramétrée par $\gamma: [0, 2\pi] \to \mathbb{R}^2$ avec $\gamma(t) = (\cos(t), \sin(t))$.

-   **Dérivée :** $\gamma'(t) = (-\sin(t), \cos(t))$.
-   **Régularité :** On calcule la norme du vecteur vitesse : $\|\gamma'(t)\| = \sqrt{(-\sin(t))^2 + (\cos(t))^2} = \sqrt{\sin^2(t) + \cos^2(t)} = 1$.
-   **Conclusion :** Puisque $\|\gamma'(t)\| = 1 \neq 0$ pour tout $t \in [0, 2\pi]$, la courbe est régulière. Le point mobile parcourt le cercle à une vitesse constante de 1.

**Exemple 2 : Une parabole (courbe régulière)**

Soit la courbe paramétrée par $\gamma: \mathbb{R} \to \mathbb{R}^2$ avec $\gamma(t) = (t, t^2)$.

-   **Dérivée :** $\gamma'(t) = (1, 2t)$.
-   **Régularité :** Le vecteur vitesse $\gamma'(t)$ est nul si et seulement si ses deux composantes sont nulles. Or, la première composante est toujours 1. Donc, $\gamma'(t)$ n'est jamais le vecteur nul.
-   **Conclusion :** La courbe est régulière sur tout $\mathbb{R}$.

**Exemple 3 : L'astroïde (avec points singuliers)**

<div class="graph">

<iframe src="https://www.desmos.com/calculator/5aonunzxow?embed" width="500" height="500" style="border: 1px solid #ccc" frameborder=0></iframe>

$$
\begin{align*}
\gamma(t) & = \left(\sin^3(t),\ \cos^3(t)\right) \\
\gamma'(t) & = \left(3\sin^2(t)\cos(t),\ -3\cos^2(t)\sin(t)\right) \\
\end{align*}
$$

</div>

Soit la courbe paramétrée par $\gamma(t) = (\cos^3(t), \sin^3(t))$ pour $t \in [0, 2\pi]$.

-   **Dérivée :** $\gamma'(t) = (-3\cos^2(t)\sin(t), 3\sin^2(t)\cos(t))$.
-   **Recherche des points singuliers :** On cherche $t$ tel que $\gamma'(t) = (0,0)$.
    -   $-3\cos^2(t)\sin(t) = 0 \implies \cos(t)=0$ ou $\sin(t)=0$.
    -   $3\sin^2(t)\cos(t) = 0 \implies \sin(t)=0$ ou $\cos(t)=0$.

    Les deux conditions sont satisfaites simultanément lorsque $t=0, \pi/2, \pi, 3\pi/2$.

-   **Conclusion :** La courbe présente des points singuliers en $t=0$ (point (1,0)), $t=\pi/2$ (point (0,1)), $t=\pi$ (point (-1,0)) et $t=3\pi/2$ (point (0,-1)). Ces points correspondent aux quatre "pointes" (points de rebroussement) de l'astroïde.

### Contre-exemples

1.  **Une fonction non continue :** L'application $\gamma(t) = (t, 1)$ si $t < 0$ et $\gamma(t) = (t, -1)$ si $t \ge 0$ n'est pas une courbe paramétrée au sens de la définition sur un intervalle contenant 0, car elle n'est pas continue. L'image est constituée de deux demi-droites disjointes.
2.  **Une courbe de Peano :** Il existe des applications continues (classe $C^0$) $\gamma: [0,1] \to \mathbb{R}^2$ dont l'image $\gamma([0,1])$ remplit entièrement le carré $[0,1] \times [0,1]$. De telles courbes ne sont pas dérivables et illustrent les comportements pathologiques que l'on exclut en exigeant une régularité de classe $C^k$ avec $k \ge 1$.

### Concepts Liés

-   **Reparamétrage et Abscisse Curviligne :** Une même trajectoire peut être décrite par différents paramétrages. Le concept de reparamétrage formalise ce changement, et l'abscisse curviligne en est un choix privilégié et "naturel".
-   **Droite Tangente :** La notion de point régulier est la condition nécessaire pour définir de manière unique une droite tangente à la courbe.
-   **Étude locale des points singuliers :** L'analyse des dérivées d'ordre supérieur en un point singulier permet de classifier sa nature géométrique (point de rebroussement, d'inflexion, etc.).

---

## Concept 2: Reparamétrage et Abscisse Curviligne

### Prérequis

-   **Concept 1 : Courbe Paramétrée et Régularité :** Définition d'une courbe $(I, \gamma)$, de sa classe $C^k$ et de sa régularité.
-   **Calcul intégral :** Calcul d'intégrales de fonctions continues positives.
-   **Théorème fondamental de l'analyse :** Lien entre dérivation et intégration.
-   **Calcul différentiel :** Dérivée de fonctions composées et théorème d'inversion locale pour les fonctions d'une variable.

### Définition

<div class="graph">

<iframe src="https://www.desmos.com/calculator/a37r4v09gc?embed" width="500" height="500" style="border: 1px solid #ccc" frameborder=0></iframe>

$$
\begin{align*}
f(t) & = \left(\sin^3(3t+3),\ \cos^3(3t+2)\right) \\
g(t) & = \left(\sin^3(t+2),\ \cos^3(t+1)\right) \\
\theta(t) & = 3t + 1
\end{align*}
$$

</div>

Deux courbes paramétrées de classe $C^k$, $(I, f)$ et $(J, g)$, sont dites **$C^k$-équivalentes** s'il existe un **$C^k$-difféomorphisme** $\theta : I \to J$ tel que $f = g \circ \theta$.

Un $C^k$-difféomorphisme est une bijection de classe $C^k$ dont la réciproque $\theta^{-1}$ est aussi de classe $C^k$.

La **longueur d'arc** (ou **abscisse curviligne**) d'une courbe $(I, f)$ de classe $C^1$, à partir d'un point $a \in I$, est la fonction $s: I \to \mathbb{R}$ définie par :

$$ s(t) = \int_a^t \|f'(x)\| \,dx $$

Cette fonction mesure la distance parcourue le long de la courbe de l'instant $a$ à l'instant $t$.

Une courbe $(I, f)$ est dite **paramétrée par la longueur d'arc** si sa vitesse scalaire est constamment égale à 1 :

$$ \forall t \in I, \quad \|f'(t)\| = 1 $$

### Explications Détaillées

L'idée du **reparamétrage** est de séparer la forme géométrique d'une courbe de la manière dont elle est parcourue. Deux courbes équivalentes ont exactement la même image (la même trajectoire), mais le "temps" pour la parcourir est différent. La fonction $\theta$ est une sorte de "changement d'horloge". Par exemple, si $\theta(t) = 2t$, on parcourt la même trajectoire, mais deux fois plus vite. Si $\theta'(t) > 0$, le sens de parcours est conservé (même orientation). Si $\theta'(t) < 0$, le sens est inversé.

L'**abscisse curviligne** est un reparamétrage particulièrement important et naturel. Au lieu de paramétrer la courbe par un "temps" abstrait $t$, on la paramètre par la distance $s$ effectivement parcourue depuis un point de départ. Une courbe paramétrée par la longueur d'arc est une courbe parcourue à vitesse unitaire. C'est comme si on marchait le long de la courbe en faisant exactement un mètre par seconde.

La proposition 4.1.5 du cours est fondamentale : **toute courbe régulière peut être reparamétrée par sa longueur d'arc**. Cela signifie que pour l'étude des propriétés géométriques intrinsèques (comme la courbure), on peut toujours se placer dans ce cas simple où la vitesse est unitaire, ce qui simplifie grandement les calculs.

### Propriétés Clés

-   **Indépendance de la géométrie :** Les propriétés géométriques d'une courbe (sa forme, sa longueur, sa courbure) ne dépendent pas du paramétrage choisi.
-   **Existence et unicité (à peu de choses près) :** Toute courbe $C^1$ régulière admet un paramétrage par longueur d'arc. Ce paramétrage est unique à une translation près (choix du point de départ) et un signe près (choix du sens de parcours).
-   **Calcul de la longueur totale :** Si $I = [a,b]$, la longueur totale de la courbe est $L = s(b) = \int_a^b \|f'(x)\| \,dx$.

### Exemples

**Exemple 1 : Reparamétrage du cercle**

Soit $f(t) = (\cos(t), \sin(t))$ sur $I=[0, 2\pi]$ et $g(u) = (\cos(2u), \sin(2u))$ sur $J=[0, \pi]$.

Ces deux courbes ont la même image : le cercle unité.

Elles sont $C^\infty$-équivalentes avec le difféomorphisme $\theta: J \to I$ défini par $\theta(u) = 2u$. On a bien $g(u) = f(2u) = f(\theta(u))$.

La courbe $(J, g)$ parcourt le cercle deux fois plus vite que $(I, f)$.

**Exemple 2 : Calcul d'abscisse curviligne (Hélice)**

Considérons l'hélice circulaire dans $\mathbb{R}^3$ : $f(t) = (R\cos(t), R\sin(t), ht)$ pour $t \in [0, \infty[$ avec $R > 0, h \in \mathbb{R}$.

-   **Vecteur vitesse :** $f'(t) = (-R\sin(t), R\cos(t), h)$.
-   **Vitesse scalaire :** $\|f'(t)\| = \sqrt{(-R\sin(t))^2 + (R\cos(t))^2 + h^2} = \sqrt{R^2(\sin^2 t + \cos^2 t) + h^2} = \sqrt{R^2+h^2}$. C'est une constante.
-   **Abscisse curviligne depuis $t=0$ :** $s(t) = \int_0^t \sqrt{R^2+h^2} \,dx = t\sqrt{R^2+h^2}$.
-   **Reparamétrage par longueur d'arc :** On exprime $t$ en fonction de $s$ : $t(s) = \frac{s}{\sqrt{R^2+h^2}}$. On pose $g(s) = f(t(s))$.

    $$ g(s) = \left(R\cos\left(\frac{s}{c}\right), R\sin\left(\frac{s}{c}\right), \frac{hs}{c}\right) \quad \text{avec} \quad c = \sqrt{R^2+h^2} $$

    On peut vérifier que $\|g'(s)\| = 1$.

**Exemple 3 : La spirale logarithmique**

C'est l'histoire du lièvre et de la tortue. La tortue (en vert) avance toujours, tranquillement mais régulièrement. Le lièvre (en noir) avance parfois très vite mais aussi parfois si lentement qu'il n'y arrive pas.

Plus la dérivée est petite, plus on **roule lentement**: il faut beaucoup de "temps" $t$ pour que $s$ avance.

Le point vert "roule" à vitesse constante.

<div class="graph"> 

<iframe src="https://www.desmos.com/calculator/cga0f2xu32?embed" width="500" height="500" style="border: 1px solid #ccc" frameborder=0></iframe>

$$
\begin{align*}
\gamma(t) & = (e^{-t}\cos(t), e^{-t}\sin(t)) \\
s & = \sqrt{2}(1 - e^{-t}) \\
t & = -\ln\left(1 - \frac{s}{\sqrt{2}}\right)
\end{align*}
$$

</div>

Soit $f(t) = (e^{-t}\cos(t), e^{-t}\sin(t))$ pour $t \in [0, \infty[$.

-   **Vecteur vitesse :** $f'(t) = (-e^{-t}(\cos t + \sin t), e^{-t}(\cos t - \sin t))$.
-   **Vitesse scalaire :** $\|f'(t)\|^2 = e^{-2t}[(\cos t + \sin t)^2 + (\cos t - \sin t)^2] = e^{-2t}[2\cos^2 t + 2\sin^2 t] = 2e^{-2t}$. Donc $\|f'(t)\| = \sqrt{2}e^{-t}$.
-   **Abscisse curviligne depuis $t=0$ :** $s(t) = \int_0^t \sqrt{2}e^{-x} \,dx = \sqrt{2}[-e^{-x}]_0^t = \sqrt{2}(1 - e^{-t})$.
-   **Longueur totale :** Lorsque $t \to \infty$, $s(t) \to \sqrt{2}$. La spirale a une longueur finie $\sqrt{2}$, bien qu'elle tourne une infinité de fois autour de l'origine.

### Contre-exemples

1.  **Reparamétrage non-difféomorphisme :** Soit $f(t) = (\cos t, \sin t)$ sur $I = [0, 2\pi]$ et $g(u) = (\cos(u^2), \sin(u^2))$ sur $J = [0, \sqrt{2\pi}]$. Le changement de paramètre est $\theta(u)=u^2$, qui n'est pas un difféomorphisme car $\theta'(0)=0$. En $u=0$, la courbe $g$ a une vitesse nulle, c'est un point singulier, alors que tous les points de $f$ sont réguliers. Les deux courbes ne sont pas $C^1$-équivalentes.
2.  **Courbe non-régulière :** Pour une courbe avec un point singulier, comme $\gamma(t)=(t^2, t^3)$, la fonction $s(t)$ n'est pas un difféomorphisme au voisinage du point singulier. La fonction $s(t) = \int_0^t \sqrt{4x^2+9x^4} dx = \int_0^t |x|\sqrt{4+9x^2} dx$. La dérivée $s'(t) = |t|\sqrt{4+9t^2}$ s'annule en $t=0$, donc $s$ n'est pas un difféomorphisme en 0. On ne peut pas reparamétrer par la longueur d'arc au voisinage de ce point singulier.

### Concepts Liés

-   **Courbure :** La définition la plus simple de la courbure se fait pour une courbe paramétrée par sa longueur d'arc.
-   **Formules de Frenet :** Le repère de Frenet et ses dérivées (qui font intervenir la courbure et la torsion) sont définis pour des courbes paramétrées par longueur d'arc.

---

## Concept 3: Étude Locale d'une Courbe Plane (Points Biréguliers)

### Prérequis

-   **Concept 1 : Courbe Paramétrée et Régularité :** Définition de la classe $C^k$, des vecteurs dérivés $\gamma'(t)$ et $\gamma''(t)$.
-   **Algèbre linéaire :** Notion de base d'un espace vectoriel, de vecteurs libres (linéairement indépendants).
-   **Analyse :** Formule de Taylor-Young pour les fonctions vectorielles.

### Définition

Soit $(I, f)$ une courbe plane paramétrée de classe $C^2$.

Un point $t_0 \in I$ est dit **birégulier** si les vecteurs vitesse $f'(t_0)$ et accélération $f''(t_0)$ sont linéairement indépendants (ils forment une base du plan $\mathbb{R}^2$).

Pour un point birégulier $t_0$, on définit le **demi-plan de concavité** (fermé) au point $p = f(t_0)$ comme l'ensemble :

$$ C_p^+ = \{ p + \alpha f'(t_0) + \beta f''(t_0) \mid \alpha \in \mathbb{R}, \beta \ge 0 \} $$

C'est le demi-plan qui contient le vecteur accélération $f''(t_0)$ et dont la frontière est la droite tangente en $p$.

### Explications Détaillées

L'étude locale consiste à comprendre le comportement de la courbe au voisinage immédiat d'un de ses points.

-   Le vecteur $f'(t_0)$ donne la direction de la tangente. Il décrit l'approximation de la courbe par une droite (approximation d'ordre 1).
-   Le vecteur $f''(t_0)$ représente l'accélération. Il indique comment la courbe "s'écarte" de sa tangente.

Un point est **birégulier** si l'accélération n'est pas colinéaire à la vitesse. Si elle l'était, le mouvement serait purement en ligne droite (accélération ou décélération sans changer de direction). Le fait que $(f'(t_0), f''(t_0))$ forme une base signifie que la courbe est en train de tourner.

Le **théorème 4.2.3** est le résultat central : au voisinage d'un point birégulier, la courbe se trouve entièrement d'un seul côté de sa tangente, précisément dans le **demi-plan de concavité**. Le vecteur accélération $f''(t_0)$ "tire" la courbe loin de sa tangente. La courbe "tourne sa concavité" dans la direction de $f''(t_0)$.

Cette notion est géométrique : elle ne dépend pas du paramétrage choisi pour la courbe (tant qu'il est régulier).

### Propriétés Clés

-   **Position locale :** Près d'un point birégulier $p=f(t_0)$, la courbe $f(t)$ est entièrement contenue dans le demi-plan de concavité $C_p^+$.
-   **Approximation parabolique :** L'allure locale d'une courbe en un point birégulier est celle d'une parabole. La formule de Taylor-Young le montre :

    $f(t_0+h) - f(t_0) \approx h f'(t_0) + \frac{h^2}{2} f''(t_0)$. Dans la base $(f'(t_0), f''(t_0))$, les coordonnées du point sont approximativement $(h, h^2/2)$, ce qui est l'équation d'une parabole.

-   **Lien avec la courbure :** Un point est birégulier si et seulement si sa courbure (voir Concept 7) est non nulle. Le signe de la courbure indique l'orientation du demi-plan de concavité.

### Exemples

**Exemple 1 : La parabole $y=x^2$**

Paramétrage : $f(t) = (t, t^2)$.

-   Dérivées : $f'(t) = (1, 2t)$, $f''(t) = (0, 2)$.
-   Birégularité : Les vecteurs $f'(t)=(1, 2t)$ et $f''(t)=(0,2)$ sont-ils libres ? Leur déterminant est $\begin{vmatrix} 1 & 0 \\ 2t & 2 \end{vmatrix} = 2 \neq 0$. Oui, pour tout $t$. Tous les points sont biréguliers.
-   Concavité en $t=0$ : Le point est $p=f(0)=(0,0)$. La tangente est dirigée par $f'(0)=(1,0)$ (l'axe des x). L'accélération est $f''(0)=(0,2)$ (vers le haut). Le demi-plan de concavité est $C_p^+ = \{(x,y) \in \mathbb{R}^2 \mid y \ge 0\}$, ce qui correspond bien à l'allure de la parabole près de son sommet.

**Exemple 2 : Le cercle**

Paramétrage : $f(t) = (R\cos(t), R\sin(t))$.

-   Dérivées : $f'(t) = (-R\sin(t), R\cos(t))$, $f''(t) = (-R\cos(t), -R\sin(t))$.
-   Birégularité : Le déterminant de $(f'(t), f''(t))$ est $\begin{vmatrix} -R\sin t & -R\cos t \\ R\cos t & -R\sin t \end{vmatrix} = R^2(\sin^2 t + \cos^2 t) = R^2$. Si $R \neq 0$, ce déterminant est non nul. Tous les points sont biréguliers.
-   Concavité : On remarque que $f''(t) = -f(t)$. Le vecteur accélération pointe toujours vers l'origine, opposé au vecteur position. La concavité du cercle est donc toujours tournée vers son centre.

**Exemple 3 : Courbe polaire, la cardioïde $\rho(\theta) = 1+\cos(\theta)$**

Paramétrage : $f(\theta) = ((1+\cos\theta)\cos\theta, (1+\cos\theta)\sin\theta)$.

La condition de birégularité pour une courbe polaire est $\rho^2 + 2\rho'^2 - \rho\rho'' \neq 0$.

-   $\rho(\theta) = 1+\cos\theta$
-   $\rho'(\theta) = -\sin\theta$
-   $\rho''(\theta) = -\cos\theta$
-   $\rho^2+2\rho'^2-\rho\rho'' = (1+\cos\theta)^2 + 2\sin^2\theta - (1+\cos\theta)(-\cos\theta) = 1+2\cos\theta+\cos^2\theta+2\sin^2\theta+\cos\theta+\cos^2\theta = 3+3\cos\theta = 3(1+\cos\theta)$.

Cette quantité s'annule pour $\theta = \pi$, où $\rho(\pi)=0$. Le point à l'origine est donc non-birégulier (c'est un point de rebroussement). Pour tous les autres points, la quantité $3(1+\cos\theta)$ est positive, donc la concavité est tournée vers l'origine.

### Contre-exemples

1.  **Une droite :** $f(t) = (1+2t, 2+3t)$. On a $f'(t)=(2,3)$ et $f''(t)=(0,0)$. Le point n'est pas birégulier car $f''(t)$ est nul. Une droite n'a pas de concavité.
2.  **Un point d'inflexion :** La courbe $f(t) = (t, t^3)$. On a $f'(t)=(1, 3t^2)$ et $f''(t)=(0, 6t)$. En $t=0$, $f'(0)=(1,0)$ et $f''(0)=(0,0)$. Ce point n'est pas birégulier. Géométriquement, en $t=0$, la courbe traverse sa tangente. La concavité s'inverse en ce point.

### Concepts Liés

-   **Courbure :** La courbure est non nulle précisément aux points biréguliers. Le signe de la courbure détermine l'orientation du demi-plan de concavité.
-   **Cercle osculateur :** C'est le cercle qui "colle" le mieux à la courbe en un point. Il se situe dans le demi-plan de concavité.
-   **Points singuliers et d'inflexion :** Les points non-biréguliers sont des points où l'étude locale est plus complexe et ne suit pas cette règle simple. Ils incluent les points singuliers et les points d'inflexion (où $f''$ s'annule ou devient colinéaire à $f'$).

---

## Concept 4: Classification des Points Singuliers

### Prérequis

-   **Concept 1 : Courbe Paramétrée et Régularité :** Définition d'un point singulier ($\gamma'(t_0) = \vec{0}$).
-   **Analyse :** Formule de Taylor-Young à un ordre élevé pour les fonctions vectorielles.
-   **Algèbre Linéaire :** Notion de vecteurs linéairement indépendants.

### Définition

Soit $(I, f)$ une courbe paramétrée de classe $C^n$ ($n \ge 2$), et $t_0 \in I$ un point singulier ($f'(t_0) = \vec{0}$). On suppose que le point n'est pas "trop pathologique", c'est-à-dire qu'au moins une dérivée d'ordre supérieur est non nulle.

On définit deux entiers :

1.  $p = \min\{k \ge 2 \mid f^{(k)}(t_0) \neq \vec{0}\}$ : l'ordre de la première dérivée non nulle.
2.  $q = \min\{l > p \mid (f^{(p)}(t_0), f^{(l)}(t_0)) \text{ est une famille libre}\}$ : l'ordre de la première dérivée qui n'est pas colinéaire à $f^{(p)}(t_0)$.

Le point singulier est dit **non dégénéré** si de tels entiers $p$ et $q$ existent. La nature géométrique du point dépend alors de la **parité** de $p$ et $q$.

| Parité de p | Parité de q | Type de singularité              | Allure locale                                    |
| :---------- | :---------- | :------------------------------- | :----------------------------------------------- |
| $p$ pair    | $q$ impair  | **Rebroussement de 1ère espèce** | Deux branches de part et d'autre de la tangente. |
| $p$ pair    | $q$ pair    | **Rebroussement de 2ème espèce** | Deux branches du même côté de la tangente.       |
| $p$ impair  | $q$ pair    | **Point méplat** (concavité)     | Semblable à $y=x^4$, plus plat qu'une parabole.  |
| $p$ impair  | $q$ impair  | **Point d'inflexion**            | La courbe traverse sa tangente.                  |

### Explications Détaillées

Quand une courbe arrive à un point singulier, sa vitesse s'annule. Pour comprendre ce qui se passe, on doit regarder les termes suivants dans le développement de Taylor, c'est-à-dire les dérivées d'ordre supérieur.

La formule de Taylor-Young nous dit qu'au voisinage de $t_0$, avec $h=t-t_0$ :

$$ f(t_0+h) - f(t_0) \approx \frac{h^p}{p!}f^{(p)}(t_0) + \frac{h^q}{q!}f^{(q)}(t_0) $$

-   Le vecteur $f^{(p)}(t_0)$ donne la **direction de la tangente** à la courbe au point singulier.
-   Le couple de vecteurs $(f^{(p)}(t_0), f^{(q)}(t_0))$ forme une base locale dans laquelle on peut décrire l'allure de la courbe.

L'analyse de la parité est la clé :

-   **Terme en $h^p$ :** Si $p$ est **pair**, $h^p$ est toujours positif. Le mouvement se fait toujours dans la même direction le long du vecteur $f^{(p)}(t_0)$, que $h$ soit positif ou négatif. La courbe arrive au point, s'arrête, et repart en sens inverse : c'est un **point de rebroussement** (cusp). Si $p$ est **impair**, $h^p$ change de signe avec $h$. La courbe arrive, s'arrête, et repart dans la même direction : elle traverse le point.
-   **Terme en $h^q$ :** Ce terme décrit comment la courbe s'écarte de sa tangente. Si $q$ est **pair**, $h^q$ est toujours positif. Les deux branches (pour $h<0$ et $h>0$) sont du même côté par rapport à la tangente. Si $q$ est **impair**, $h^q$ change de signe, et les deux branches sont de part et d'autre de la tangente.

En combinant ces deux observations, on obtient les quatre cas du tableau.

### Exemples

**Exemple 1 : Rebroussement de 1ère espèce ($p=2, q=3$)**

Soit $f(t) = (t^2, t^3)$. C'est la parabole de Neil.

-   Point singulier : $f'(t)=(2t, 3t^2)$, donc $f'(0)=(0,0)$.
-   Dérivées en $t_0=0$ :
    -   $f'(0) = (0,0)$
    -   $f''(t) = (2, 6t) \implies f''(0) = (2,0)$. Donc $p=2$.
    -   $f'''(t) = (0, 6) \implies f'''(0) = (0,6)$.
-   Analyse : Les vecteurs $f''(0)=(2,0)$ et $f'''(0)=(0,6)$ sont linéairement indépendants. Donc $q=3$.
-   Conclusion : $p=2$ (pair) et $q=3$ (impair). C'est un **point de rebroussement de première espèce**. La tangente en $(0,0)$ est l'axe des abscisses. La courbe arrive par le 3ème quadrant et repart dans le 2ème.

**Exemple 2 : Point d'inflexion ($p=3, q=\text{inexistant ici, cas simple}$)**

Soit $f(t) = (t, t^3)$.

-   Régularité : $f'(t) = (1, 3t^2)$. Le point $t=0$ n'est PAS singulier, mais il est non-birégulier car $f''(0)=(0,0)$. C'est un point d'inflexion "ordinaire".
-   Pour un exemple avec point singulier, prenons $f(t) = (t^3, t^5)$.
-   Point singulier : $f'(t)=(3t^2, 5t^4)$, donc $f'(0)=(0,0)$.
-   Dérivées en $t_0=0$ :
    -   $f''(0)=(0,0)$
    -   $f'''(0)=(6,0) \neq (0,0)$. Donc $p=3$.
    -   $f^{(4)}(0)=(0,0)$.
    -   $f^{(5)}(0)=(0, 120)$.
-   Analyse : $f'''(0)=(6,0)$ et $f^{(5)}(0)=(0,120)$ sont libres. Donc $q=5$.
-   Conclusion : $p=3$ (impair) et $q=5$ (impair). C'est un **point d'inflexion**.

**Exemple 3 : L'astroïde ($p=2, q=3$)**

Soit $f(t) = (\cos^3 t, \sin^3 t)$. Prenons le point singulier $t_0 = \pi/2$. On peut faire un changement de variable $u = t - \pi/2$.

$f(u+\pi/2) = (\cos^3(u+\pi/2), \sin^3(u+\pi/2)) = (-\sin^3 u, \cos^3 u)$.

Effectuons un développement limité en $u=0$:

$f(u+\pi/2) = (-(u-u^3/6+...)^3, (1-u^2/2+...)^3) = (-u^3+..., 1 - 3u^2/2+...)$.

$$ f(u+\pi/2) - f(\pi/2) = (0,1) + \frac{u^2}{2!}(-3,0) + \frac{u^3}{3!}(-6,0) + o(u^3) $$

On a $p=2$ et $q=3$, c'est un point de rebroussement de 1ère espèce (ce qui est faux dans le texte, qui trouve un 2ème espèce pour t=0. Refaisons le calcul pour t=0).

Pour $t_0=0$ : $f(t) = ((1-t^2/2)^3, t^3) + o(t^3) = (1-3t^2/2, t^3) + o(t^3)$.

$f(t) - f(0) = t^2(-3/2, 0) + t^3(0,1) + ...$

Ici, les vecteurs associés à $t^2$ et $t^3$ sont libres. $p=2$ (pair), $q=3$ (impair). C'est un **rebroussement de 1ère espèce**.

*(Note: Il y a une petite erreur de calcul dans le texte source qui identifie $(1,0)$ comme un multiple de $(-3/2,0)$, ce qui est vrai, mais le terme en $t^3$ dans $\cos^3t$ n'est pas nul, il est juste colinéaire au terme en $t^2$, il faut aller plus loin)*.

### Contre-exemples

1.  **Le "coin" $C^\infty$ :** La courbe de l'exemple de l'angle droit $C^\infty$ a un point singulier en $t=2$ où toutes ses dérivées sont nulles ($f^{(k)}(2)=0$ pour tout $k \ge 1$). Il est impossible de trouver $p$ et $q$. C'est un point singulier **dégénéré**, et la classification ne s'applique pas.
2.  **Un point régulier :** La classification ne s'applique qu'aux points où $f'(t_0)=\vec{0}$. Pour un point régulier, l'étude locale se fait avec la notion de birégularité et de concavité.

### Concepts Liés

-   **Développements limités et formule de Taylor-Young :** Ce sont les outils d'analyse fondamentaux pour déterminer les entiers $p$ et $q$ et donc la nature du point.
-   **Géométrie différentielle :** Cette classification est un premier pas dans l'étude des singularités des applications différentiables, un domaine central de la géométrie différentielle.

---

## Concept 5: Courbes Implicites et Algébriques

### Prérequis

-   **Fonctions de plusieurs variables :** Comprendre ce qu'est une fonction $F: \mathbb{R}^2 \to \mathbb{R}$.
-   **Ensembles de niveau :** Savoir que l'ensemble $\{(x,y) \mid F(x,y)=c\}$ est une ligne de niveau de la fonction $F$.
-   **Algèbre :** Notion de polynômes à plusieurs variables et de leur degré.

### Définition

Une **courbe implicite** est l'ensemble des points $(x,y) \in \mathbb{R}^2$ qui satisfont une équation de la forme $F(x,y)=0$, où $F: \mathbb{R}^2 \to \mathbb{R}$ est une fonction.

$$ \mathcal{C}_F = \{(x, y) \in \mathbb{R}^2 \mid F(x, y) = 0\} $$

Une courbe implicite est dite **algébrique** si la fonction $F$ est un polynôme en deux variables $x$ et $y$. Le **degré** de la courbe algébrique est le degré du polynôme $F$.

### Explications Détaillées

Il y a deux manières principales de décrire une courbe plane :

1.  **Paramétrique (ce que nous avons vu jusqu'à présent) :** On donne une "recette" pour dessiner la courbe. Une fonction $\gamma(t)=(x(t), y(t))$ décrit la position d'un point au cours du temps. C'est une description **dynamique**.
2.  **Implicite :** On donne une "condition" ou un "test" que les points de la courbe doivent vérifier. L'équation $F(x,y)=0$ agit comme un filtre : un point $(x,y)$ est sur la courbe si et seulement si ses coordonnées annulent la fonction $F$. C'est une description **statique**.

L'avantage de la description implicite est qu'elle est souvent très concise (par exemple, $x^2+y^2-1=0$ pour le cercle). Le principal inconvénient est qu'il est en général très difficile, voire impossible, de trouver un paramétrage à partir de l'équation implicite.

Les **courbes algébriques** sont une classe particulièrement importante et étudiée de courbes implicites, car les polynômes ont de bonnes propriétés. Le degré du polynôme donne une première idée de la complexité de la courbe.

-   Degré 1: Droites ($ax+by+c=0$)
-   Degré 2: Coniques (cercles, ellipses, paraboles, hyperboles)
-   Degré 3: Cubiques (comme le folium de Descartes ou les courbes elliptiques)

### Propriétés Clés

-   **Non-unicité de F :** L'équation $F(x,y)=0$ et $k \cdot F(x,y)=0$ (pour $k \neq 0$) décrivent la même courbe.
-   **Ensemble vide ou plus qu'une courbe :** L'ensemble $\mathcal{C}_F$ peut être vide (ex: $x^2+y^2+1=0$), un point (ex: $x^2+y^2=0$), ou même une région du plan (si $F$ n'est pas assez régulière).
-   **Tangente :** Si $F$ est différentiable et que le gradient $\nabla F = (\frac{\partial F}{\partial x}, \frac{\partial F}{\partial y})$ est non nul en un point $(x_0, y_0)$ de la courbe, alors ce vecteur est normal (perpendiculaire) à la tangente à la courbe en ce point.

### Exemples

**Exemple 1 : Le cercle (Courbe algébrique de degré 2)**

-   **Équation implicite :** $F(x,y) = x^2+y^2-R^2 = 0$.
-   **Paramétrage possible :** $\gamma(t) = (R\cos t, R\sin t)$.

C'est un cas simple où l'on passe facilement d'une forme à l'autre.

**Exemple 2 : Le folium de Descartes (Courbe algébrique de degré 3)**

-   **Équation implicite :** $F(x,y) = x^3+y^3-3xy = 0$.
-   **Paramétrage (rationnel) :** En coupant la courbe par des droites $y=tx$ passant par l'origine, on trouve un paramétrage :

    $$ x(t) = \frac{3t}{1+t^3}, \quad y(t) = \frac{3t^2}{1+t^3} $$

    Les courbes algébriques qui admettent un tel paramétrage par des fractions rationnelles sont dites **unicursales**.

**Exemple 3 : Une courbe elliptique (Courbe algébrique de degré 3)**

-   **Équation implicite :** $F(x,y) = y^2 - x^3 + 2x - 1 = 0$.
-   **Pas de paramétrage rationnel simple :** Ces courbes ne sont généralement pas unicursales. On peut les "paramétrer" localement en exprimant $y$ en fonction de $x$ : $y = \pm\sqrt{x^3 - 2x + 1}$, mais cela ne donne pas une fonction globale $y(t)$.

### Contre-exemples

1.  **Le graphe d'une fonction transcendante :** La courbe d'équation $y - \sin(x) = 0$ est une courbe implicite, mais elle n'est pas algébrique car $\sin(x)$ n'est pas un polynôme.
2.  **Une région du plan :** Soit $F(x,y) = \max(0, 1-(x^2+y^2))$. L'ensemble $F(x,y)=0$ est l'extérieur du disque unité, ce qui n'est pas une "courbe" au sens usuel. C'est pourquoi on se restreint souvent à des fonctions $F$ bien régulières (différentiables, polynomiales...).

### Concepts Liés

-   **Les coniques :** C'est l'étude exhaustive du cas le plus simple de courbes algébriques non triviales (degré 2).
-   **Théorème des fonctions implicites :** Un théorème fondamental qui donne des conditions sur $F$ sous lesquelles, localement, la courbe implicite peut être vue comme le graphe d'une fonction ($y = \phi(x)$).
-   **Géométrie Algébrique :** La branche des mathématiques qui étudie les ensembles de solutions d'équations polynomiales.

---

## Concept 6: Les Coniques

### Prérequis

-   **Concept 5 : Courbes Implicites et Algébriques :** Définition d'une courbe algébrique et de son degré.
-   **Algèbre Linéaire :** Formes quadratiques, matrices symétriques, diagonalisation en base orthonormée, valeurs propres.
-   **Géométrie Euclidienne :** Changements de repère (rotations et translations).

### Définition

Une **conique** est une courbe algébrique de degré 2. Son équation générale est de la forme :

$$ F(x, y) = ax^2 + 2cxy + by^2 + dx + ey + f = 0 $$

où $a, b, c, d, e, f$ sont des coefficients réels, et $(a,b,c)$ ne sont pas tous nuls.

Le **Théorème de classification** stipule qu'après un changement de repère orthonormal (une rotation suivie d'une translation), l'équation de toute conique peut être ramenée à l'une des formes réduites suivantes :

| Type | Équation Réduite | Condition sur $\det = ab-c^2$ |

| :--- | :--- | :--- |

| **Ellipse** | $\frac{X^2}{\alpha^2} + \frac{Y^2}{\beta^2} = 1$ | $\det > 0$ |

| **Hyperbole** | $\frac{X^2}{\alpha^2} - \frac{Y^2}{\beta^2} = 1$ | $\det < 0$ |

| **Parabole** | $Y^2 = 2pX$ | $\det = 0$ |

| **Cas dégénérés** | Ensemble vide, un point, une droite, deux droites | - |

### Explications Détaillées

Les coniques sont des courbes fondamentales en mathématiques et en physique (trajectoires des planètes, sections d'un cône par un plan). L'équation générale à 6 coefficients peut sembler compliquée. Le théorème de classification est un résultat puissant qui nous dit que, géométriquement, il n'y a que trois types de coniques non-dégénérées.

La méthode pour passer de l'équation générale à l'équation réduite se fait en deux étapes :

1.  **Élimination du terme "rectangle" $2cxy$ :** La partie quadratique $ax^2 + 2cxy + by^2$ est une forme quadratique associée à la matrice symétrique $M = \begin{pmatrix} a & c \\ c & b \end{pmatrix}$. On diagonalise cette matrice. Cela correspond à trouver un nouveau repère $(X', Y')$, tourné par rapport à l'ancien, dans lequel la forme quadratique devient $\lambda_1(X')^2 + \lambda_2(Y')^2$, où $\lambda_1, \lambda_2$ sont les valeurs propres de $M$. Le terme rectangle a disparu.
2.  **Élimination des termes linéaires :** L'équation est maintenant de la forme $\lambda_1(X')^2 + \lambda_2(Y')^2 + d'X' + e'Y' + f = 0$. On effectue une mise sous forme canonique (comme pour compléter le carré) pour chaque variable, ce qui revient à faire une translation du repère pour amener l'origine au centre (ou au sommet) de la conique. On obtient alors l'équation réduite dans le repère final $(X,Y)$.

Le signe du déterminant de la matrice $M$, $\det(M) = ab-c^2$, est un invariant qui permet de déterminer le type de conique sans faire tous les calculs.

### Propriétés Clés

-   **Classification par le déterminant :** Le signe de $ab-c^2$ détermine la nature de la conique.
-   **Paramétrisation rationnelle :** Toutes les coniques non-dégénérées sont des courbes unicursales. Elles admettent un paramétrage par des fractions rationnelles.
-   **Définition polaire unifiée :** Les trois types de coniques peuvent être décrits par une seule équation en coordonnées polaires (avec l'origine à un foyer) : $\rho(\theta) = \frac{p}{1+e\cos(\theta)}$, où $e$ est l'excentricité ($0 \le e < 1$ pour une ellipse, $e=1$ pour une parabole, $e>1$ pour une hyperbole).

### Exemples

**Exemple 1 : Une ellipse tournée**

Soit l'équation $5x^2 - 6xy + 5y^2 - 8 = 0$.

-   **Identification :** $a=5, c=-3, b=5$. Le déterminant est $ab-c^2 = 5 \times 5 - (-3)^2 = 25 - 9 = 16 > 0$. C'est une ellipse.
-   **Forme quadratique :** Matrice $M = \begin{pmatrix} 5 & -3 \\ -3 & 5 \end{pmatrix}$. Ses valeurs propres sont $\lambda_1 = 2, \lambda_2 = 8$.
-   **Équation réduite :** Dans le repère des vecteurs propres, l'équation devient $2X^2 + 8Y^2 - 8 = 0$, soit $\frac{X^2}{4} + \frac{Y^2}{1} = 1$. C'est une ellipse de demi-axes $\alpha=2$ et $\beta=1$.

**Exemple 2 : Une parabole**

Soit l'équation $x^2 + 2xy + y^2 - 2x + 2y - 2 = 0$.

-   **Identification :** $a=1, c=1, b=1$. Le déterminant est $ab-c^2 = 1 \times 1 - 1^2 = 0$. C'est une parabole (ou un cas dégénéré).
-   **Analyse :** La partie quadratique est $(x+y)^2$. Après rotation de 45°, en posant $X' = (x-y)/\sqrt{2}$ et $Y' = (x+y)/\sqrt{2}$, l'équation se transforme en $2(Y')^2 - 2\sqrt{2}X' - 2 = 0$.
-   **Équation réduite :** $(Y')^2 = \sqrt{2}X' + 1$. En posant $X = X' + 1/\sqrt{2}$, on obtient $Y^2 = \sqrt{2}X$. C'est une parabole.

**Exemple 3 : Paramétrage de l'hyperbole $x^2 - y^2 = 1$**

-   **Paramétrage hyperbolique :** $x(t) = \cosh(t), y(t) = \sinh(t)$ pour $t \in \mathbb{R}$ (pour la branche de droite).
-   **Paramétrage rationnel :** En posant $u = \tanh(t/2)$, on peut obtenir un paramétrage par des fractions rationnelles (similaire à celui de l'ellipse).

### Contre-exemples

1.  **Deux droites sécantes :** L'équation $x^2 - y^2 = 0$ se factorise en $(x-y)(x+y)=0$. L'ensemble solution est la réunion des deux droites $y=x$ et $y=-x$. C'est un cas dégénéré d'hyperbole ($ab-c^2 = -1 < 0$).
2.  **Un seul point :** L'équation $x^2+y^2=0$ a pour unique solution le point $(0,0)$. C'est un cas dégénéré d'ellipse ($ab-c^2 = 1 > 0$).
3.  **Une cubique :** La courbe $y^2 = x^3$ n'est pas une conique, c'est une courbe algébrique de degré 3.

### Concepts Liés

-   **Sections coniques :** Historiquement, ces courbes ont été découvertes comme les intersections d'un cône de révolution avec un plan. L'angle du plan par rapport à l'axe du cône détermine le type de conique obtenue.
-   **Lois de Kepler :** En mécanique céleste, la trajectoire d'un corps soumis à une force en $1/r^2$ (comme la gravité) est une conique.

---

## Concept 7: Courbure d'une Courbe Plane

### Prérequis

-   **Concept 1 et 2 :** Courbes paramétrées $C^2$, régularité, vecteurs vitesse $f'$ et accélération $f''$, paramétrage par longueur d'arc.
-   **Algèbre Linéaire :** Déterminant de deux vecteurs dans le plan.
-   **Géométrie Euclidienne :** Produit scalaire, orthogonalité, vecteurs unitaires.

### Définition

Soit $(I, f)$ une courbe plane régulière de classe $C^2$.

Si la courbe est **paramétrée par sa longueur d'arc** $s$, alors le vecteur vitesse $f'(s)$ est unitaire. Le vecteur accélération $f''(s)$ lui est alors orthogonal. On définit la **courbure algébrique** $\kappa(s)$ par la relation :

$$ f''(s) = \kappa(s) N(s) $$

où $N(s)$ est le vecteur normal unitaire obtenu en tournant le vecteur tangent unitaire $\tau(s) = f'(s)$ de $+\pi/2$.

Pour un **paramétrage quelconque** $\gamma(t) = (x(t), y(t))$, la courbure algébrique au point $\gamma(t)$ est donnée par la formule :

$$ \kappa(t) = \frac{\det(\gamma'(t), \gamma''(t))}{\|\gamma'(t)\|^3} = \frac{x'(t)y''(t) - y'(t)x''(t)}{(x'(t)^2 + y'(t)^2)^{3/2}} $$

Le **rayon de courbure** est $R(t) = 1/\kappa(t)$. Le **cercle osculateur** est le cercle de rayon $|R(t)|$ tangent à la courbe, situé dans le demi-plan de concavité. Son centre est $C(t) = \gamma(t) + R(t)N(t)$.

### Explications Détaillées

La **courbure** est une mesure quantitative de la manière dont une courbe s'écarte de sa ligne tangente.

-   Si $\kappa=0$, la courbe est localement une droite.
-   Si $|\kappa|$ est grand, la courbe tourne brusquement.
-   Si $|\kappa|$ est petit, la courbe est "plate".

L'intuition de la première définition est très physique. Si un mobile parcourt la courbe à vitesse constante 1 (paramétrage par longueur d'arc), son vecteur vitesse $\tau(s)$ a une norme constante. Son accélération $f''(s)$ ne peut donc que changer la direction de la vitesse, pas sa norme. L'accélération est donc purement "centripète" (orthogonale à la vitesse). L'intensité de cette accélération est précisément la courbure $\kappa(s)$.

Le **signe** de la courbure a un sens géométrique : il indique le sens dans lequel la courbe tourne. Par convention, si la courbe tourne "à gauche" (dans le sens trigonométrique direct) par rapport à la direction de la tangente, la courbure est positive. Si elle tourne "à droite", elle est négative. Changer le sens de parcours de la courbe change le signe de la courbure.

Le **cercle osculateur** est le cercle qui approxime le mieux la courbe au voisinage d'un point. Il a le même point de contact, la même tangente et la même courbure que la courbe en ce point.

### Propriétés Clés

-   **Invariant géométrique :** La courbure en un point géométrique ne dépend pas du paramétrage régulier choisi (sauf pour son signe si on change l'orientation).
-   **Lien avec la birégularité :** Un point est birégulier si et seulement si sa courbure est non nulle. Le signe de la courbure est le même que celui du déterminant $\det(f', f'')$.
-   **Cercle :** Un cercle de rayon $R$ parcouru dans le sens trigonométrique a une courbure constante $\kappa = 1/R$.
-   **Droite :** Une droite a une courbure nulle partout.

### Exemples

**Exemple 1 : Cercle de rayon $R$**

Paramétrage : $\gamma(t) = (R\cos t, R\sin t)$.

-   $\gamma'(t) = (-R\sin t, R\cos t) \implies \|\gamma'(t)\| = R$.
-   $\gamma''(t) = (-R\cos t, -R\sin t)$.
-   $\det(\gamma'(t), \gamma''(t)) = (-R\sin t)(-R\sin t) - (R\cos t)(-R\cos t) = R^2(\sin^2 t + \cos^2 t) = R^2$.
-   $\kappa(t) = \frac{R^2}{R^3} = \frac{1}{R}$. La courbure est constante et positive (le cercle tourne à gauche).

**Exemple 2 : Parabole $y=x^2$**

Paramétrage : $\gamma(t) = (t, t^2)$.

-   $\gamma'(t) = (1, 2t) \implies \|\gamma'(t)\| = \sqrt{1+4t^2}$.
-   $\gamma''(t) = (0, 2)$.
-   $\det(\gamma'(t), \gamma''(t)) = 1 \cdot 2 - 2t \cdot 0 = 2$.
-   $\kappa(t) = \frac{2}{(1+4t^2)^{3/2}}$.
-   Au sommet ($t=0$), la courbure est maximale : $\kappa(0) = 2$. Le rayon de courbure est $R(0)=1/2$. Le cercle osculateur au sommet a pour centre $(0, 1/2)$ et pour rayon $1/2$.

**Exemple 3 : Ellipse**

Paramétrage : $\gamma(t) = (a\cos t, b\sin t)$ avec $a>b>0$.

-   $\gamma'(t) = (-a\sin t, b\cos t)$.
-   $\gamma''(t) = (-a\cos t, -b\sin t)$.
-   $\det(\gamma'(t), \gamma''(t)) = (-a\sin t)(-b\sin t) - (b\cos t)(-a\cos t) = ab(\sin^2 t + \cos^2 t) = ab$.
-   $\|\gamma'(t)\|^2 = a^2\sin^2 t + b^2\cos^2 t$.
-   $\kappa(t) = \frac{ab}{(a^2\sin^2 t + b^2\cos^2 t)^{3/2}}$.

La courbure n'est pas constante. Elle est maximale aux sommets du grand axe ($t=0, \pi$) où $\kappa = a/b^2$, et minimale aux sommets du petit axe ($t=\pi/2, 3\pi/2$) où $\kappa = b/a^2$.

### Contre-exemples

1.  **Point de rebroussement :** En un point singulier (où $\gamma'(t)=\vec{0}$), la formule de la courbure donne une forme indéterminée $0/0$. La notion de courbure n'est pas définie en ces points.
2.  **Point d'inflexion :** Pour $f(t) = (t, t^3)$ en $t=0$, on a $f'(0)=(1,0)$ et $f''(0)=(0,0)$. Le déterminant est nul, donc $\kappa(0)=0$. La courbure est nulle car la courbe traverse sa tangente, elle ne "tourne" ni à gauche, ni à droite.

### Concepts Liés

-   **Développée :** Le lieu des centres de courbure $C(t)$ d'une courbe est une autre courbe, appelée la développée. Par exemple, la développée d'une ellipse est une astroïde.
-   **Formule de Gauss-Bonnet :** Un théorème profond qui relie l'intégrale de la courbure le long d'une courbe fermée à une propriété topologique (le nombre d'enroulements).

---

## Concept 8: Formule de Gauss-Bonnet et Enroulement

### Prérequis

-   **Concept 7 : Courbure d'une Courbe Plane :** Définition de la courbure $\kappa$.
-   **Concept 2 : Abscisse Curviligne :** Notion de longueur d'arc $ds = \|\gamma'(t)\|dt$.
-   **Analyse :** Théorème du relèvement (admis), intégration.
-   **Nombres complexes :** Représentation des vecteurs du plan par des nombres complexes, notation $e^{i\theta}$.

### Définition

Soit $(I, f)$ une courbe plane régulière $C^2$.

Le **vecteur tangent unitaire** est $\tau(t) = \frac{f'(t)}{\|f'(t)\|}$. Comme il est de norme 1, on peut l'écrire sous la forme $\tau(t) = e^{i\varphi(t)} = (\cos(\varphi(t)), \sin(\varphi(t)))$, où $\varphi(t)$ est l'angle que fait la tangente avec l'axe des abscisses. La fonction $\varphi: I \to \mathbb{R}$ est appelée un **relèvement** de l'angle de la tangente.

La courbure est liée à la variation de cet angle par la formule :

$$ \kappa(t) = \frac{\varphi'(t)}{\|f'(t)\|} \quad \text{ou} \quad \kappa(t) ds = d\varphi $$

Un **lacet** est une courbe fermée $([a,b], f)$ telle que les points de départ et d'arrivée coïncident, ainsi que leurs vecteurs tangents : $f(a)=f(b)$ et $f'(a)=f'(b)$.

Le **nombre d'enroulement** de la tangente d'un lacet est le nombre total de tours (comptés algébriquement) que fait le vecteur tangent unitaire $\tau(t)$ lorsqu'on parcourt la courbe. Il est donné par :

$$ \text{Enroul}(f) = \frac{\varphi(b) - \varphi(a)}{2\pi} $$

C'est un nombre entier.

Le **Théorème de Gauss-Bonnet pour les courbes planes** énonce que pour tout lacet $C^2$ régulier :

$$ \int_a^b \kappa(t) \|f'(t)\| dt = \int_{\text{courbe}} \kappa ds = 2\pi \times \text{Enroul}(f) $$

### Explications Détaillées

Ce théorème établit un lien fondamental et magnifique entre la géométrie locale et la topologie globale.

-   **Partie gauche (Géométrie locale) :** L'intégrale $\int \kappa ds$ est la **courbure totale** de la courbe. Elle est calculée en additionnant (intégrant) la courbure locale $\kappa$ en chaque point le long de la courbe. C'est une quantité métrique, qui dépend de la forme précise de la courbe.
-   **Partie droite (Topologie globale) :** Le nombre d'enroulement $\text{Enroul}(f)$ est un entier. Il ne change pas si on déforme la courbe continûment (sans la couper ni créer de pointes). Il ne dépend que de "l'allure globale" de la boucle du vecteur tangent.

Le théorème dit que la courbure totale est quantifiée : elle doit être un multiple entier de $2\pi$. Le résultat de l'intégrale ne dépend pas des détails de la forme de la courbe, mais uniquement du nombre de tours que fait sa tangente.

La relation $\kappa ds = d\varphi$ est la clé de la preuve. Elle dit que l'élément d'angle $d\varphi$ parcouru par la tangente est égal à la courbure locale multipliée par le petit élément de longueur $ds$. En intégrant cette relation sur toute la courbe, on obtient le théorème de Gauss-Bonnet.

### Propriétés Clés

-   **Quantification de la courbure totale :** Pour un lacet, l'intégrale de la courbure est toujours un multiple de $2\pi$.
-   **Robustesse topologique :** Le nombre d'enroulement est un invariant topologique.
-   **Lien angle/courbure :** La courbure mesure la vitesse de rotation de la tangente par rapport à la longueur d'arc.

### Exemples

**Exemple 1 : Le cercle de rayon $R$**

Le cercle parcouru une fois dans le sens direct est un lacet.

-   $\gamma(t) = (R\cos t, R\sin t)$ sur $[0, 2\pi]$.
-   $\kappa(t) = 1/R$ et $\|f'(t)\| = R$.
-   **Intégrale de la courbure :** $\int_0^{2\pi} \kappa(t)\|f'(t)\|dt = \int_0^{2\pi} \frac{1}{R} \cdot R \, dt = \int_0^{2\pi} 1 \, dt = 2\pi$.
-   **Nombre d'enroulement :** Le vecteur tangent $\tau(t) = (-\sin t, \cos t)$ fait exactement un tour complet. $\text{Enroul}(f)=1$.
-   **Vérification :** $2\pi = 2\pi \times 1$. La formule est vérifiée.

**Exemple 2 : L'ellipse**

Paramétrage $\gamma(t) = (a\cos t, b\sin t)$ sur $[0, 2\pi]$.

-   Le vecteur tangent fait un tour complet, donc $\text{Enroul}(f)=1$.
-   Le théorème de Gauss-Bonnet prédit que $\int_0^{2\pi} \kappa(t)\|f'(t)\|dt = 2\pi$.
-   En utilisant les formules du concept 7, cela signifie :

    $$ \int_0^{2\pi} \frac{ab}{(a^2\sin^2 t + b^2\cos^2 t)^{3/2}} \cdot \sqrt{a^2\sin^2 t + b^2\cos^2 t} \, dt = \int_0^{2\pi} \frac{ab}{a^2\sin^2 t + b^2\cos^2 t} \, dt = 2\pi $$

-   Le théorème nous donne la valeur de cette intégrale compliquée sans aucun calcul !

**Exemple 3 : Une courbe en "huit"**

Considérons une courbe qui trace un "huit" (comme la lemniscate de Bernoulli). Le vecteur tangent fait un tour dans un sens sur la première boucle, puis un tour dans l'autre sens sur la seconde boucle.

-   Le nombre d'enroulement total est $1 + (-1) = 0$.
-   Le théorème de Gauss-Bonnet prédit que la courbure totale de la courbe est nulle : $\int \kappa ds = 0$. L'intégrale de la courbure (positive) sur la première boucle est exactement compensée par l'intégrale de la courbure (négative) sur la seconde.

### Contre-exemples

1.  **Une courbe non fermée :** Pour une courbe qui n'est pas un lacet, comme un segment de parabole de $t=a$ à $t=b$, l'intégrale $\int_a^b \kappa ds$ n'a aucune raison d'être un multiple de $2\pi$. Elle mesure simplement le changement total d'angle de la tangente entre le début et la fin, $\varphi(b) - \varphi(a)$.
2.  **Un lacet non-régulier :** Si un lacet a un point de rebroussement (point singulier), le vecteur tangent peut sauter brusquement (par exemple faire un demi-tour instantané). L'angle $\varphi(t)$ n'est plus continu, et la formule doit être adaptée. C'est le théorème de Hopf (ou du virage) qui généralise ce résultat.

### Concepts Liés

-   **Théorème de Gauss-Bonnet pour les surfaces :** Ce théorème est une version simplifiée (en dimension 1) d'un des théorèmes les plus importants de la géométrie différentielle, qui relie l'intégrale de la courbure de Gauss sur une surface à sa caractéristique d'Euler-Poincaré (une quantité topologique).
-   **Topologie différentielle :** Ce résultat est un exemple paradigmatique de la manière dont la topologie (étude des formes globales) et la géométrie différentielle (étude des propriétés locales comme la courbure) sont intimement liées.
