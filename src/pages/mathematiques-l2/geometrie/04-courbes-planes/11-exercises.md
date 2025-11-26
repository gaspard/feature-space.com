---
id: 61a34121
type: exercises
order: 11
title: Courbes planes - exercices (A)
tags:
  - courbes planes
  - courbes paramétrées
  - courbes implicites
  - coniques
  - courbure
  - Gauss-Bonnet
createdAt: '2025-11-26T16:55:39.654Z'
level: regular
course: Géométrie
courseId: d9494343
chapter: Courbes planes
chapterId: 7eebdf24
---
# Exercices "Courbes planes" (A)

---

## Exercice 1

**Problème:** Soit la courbe paramétrée (l'astroïde) définie par $\gamma: [0, 2\pi] \to \mathbb{R}^2$ avec $\gamma(t) = (\cos^3(t), \sin^3(t))$.

1. Calculez le vecteur vitesse $\gamma'(t)$.
2. Déterminez les valeurs de $t \in [0, 2\pi]$ pour lesquelles le point $\gamma(t)$ est singulier.
3. Que peut-on dire de la régularité de cette courbe ?

<details>

<summary>Solution</summary>

**Méthode:** Un point d'une courbe paramétrée est singulier si son vecteur vitesse est le vecteur nul. Nous allons donc calculer le vecteur vitesse $\gamma'(t)$ en dérivant chaque composante de $\gamma(t)$, puis résoudre l'équation $\gamma'(t) = (0,0)$.

**Étapes:**

1.  **Calcul du vecteur vitesse :**

    Nous dérivons les composantes $x(t) = \cos^3(t)$ et $y(t) = \sin^3(t)$ par rapport à $t$. En utilisant la règle de dérivation en chaîne, nous obtenons :

    $x'(t) = 3\cos^2(t) \cdot (-\sin(t)) = -3\cos^2(t)\sin(t)$

    $y'(t) = 3\sin^2(t) \cdot (\cos(t)) = 3\sin^2(t)\cos(t)$

    Le vecteur vitesse est donc $\gamma'(t) = (-3\cos^2(t)\sin(t), 3\sin^2(t)\cos(t))$.

2.  **Recherche des points singuliers :**

    Un point est singulier si $\gamma'(t) = (0,0)$. Cela signifie que les deux composantes du vecteur vitesse doivent être nulles simultanément :

    $$ \begin{cases} -3\cos^2(t)\sin(t) = 0 \\ 3\sin^2(t)\cos(t) = 0 \end{cases} $$

    La première équation est satisfaite si $\cos(t)=0$ ou $\sin(t)=0$.

    La deuxième équation est satisfaite si $\sin(t)=0$ ou $\cos(t)=0$.

    Pour que les deux équations soient satisfaites, il faut que $\cos(t)=0$ ou $\sin(t)=0$.

    -   Si $\cos(t)=0$, alors $t = \pi/2$ ou $t = 3\pi/2$.
    -   Si $\sin(t)=0$, alors $t = 0$ ou $t = \pi$ (ou $2\pi$, qui correspond au même point que $t=0$).

    Ces quatre valeurs annulent bien les deux composantes. Les points singuliers se trouvent donc pour $t \in \{0, \pi/2, \pi, 3\pi/2\}$.

3.  **Conclusion sur la régularité :**

    Une courbe est dite régulière si tous ses points sont réguliers (c'est-à-dire non singuliers). Puisque nous avons trouvé quatre points singuliers, la courbe de l'astroïde n'est pas une courbe régulière.

**Réponse:**

1. Le vecteur vitesse est $\gamma'(t) = (-3\cos^2(t)\sin(t), 3\sin^2(t)\cos(t))$.
2. Les points singuliers correspondent à $t = 0, \frac{\pi}{2}, \pi, \frac{3\pi}{2}$.
3. La courbe n'est pas régulière.

</details>

---

## Exercice 2

**Problème:** Soit une courbe paramétrée $\gamma(t)$. Quelle est la différence géométrique entre un point singulier et un point régulier qui n'est pas birégulier (aussi appelé point d'inflexion) ? Donnez un exemple pour illustrer ce dernier cas.

<details>

<summary>Solution</summary>

**Méthode:** Nous allons rappeler les définitions de ces trois types de points et interpréter géométriquement les conditions sur les vecteurs dérivés $\gamma'(t)$ et $\gamma''(t)$.

**Étapes:**

1.  **Définitions :**
    -   Un point $\gamma(t_0)$ est **régulier** si le vecteur vitesse $\gamma'(t_0) \neq \vec{0}$. Géométriquement, cela signifie que le point mobile ne s'arrête pas et que la tangente est bien définie.
    -   Un point $\gamma(t_0)$ est **singulier** si $\gamma'(t_0) = \vec{0}$. Géométriquement, le point mobile s'arrête. Cela correspond souvent à un point de rebroussement ("pointe") ou un changement brutal de direction.
    -   Un point régulier $\gamma(t_0)$ est **birégulier** si les vecteurs vitesse $\gamma'(t_0)$ et accélération $\gamma''(t_0)$ sont linéairement indépendants. Géométriquement, cela signifie que la courbe "tourne" et reste d'un seul côté de sa tangente (elle a une concavité non nulle).
    -   Un point régulier qui n'est pas birégulier est donc un point où $\gamma'(t_0) \neq \vec{0}$ mais $\gamma''(t_0)$ est colinéaire à $\gamma'(t_0)$ (souvent, $\gamma''(t_0)=\vec{0}$).

2.  **Interprétation géométrique :**
    -   À un **point singulier**, la vitesse est nulle. La notion de tangente unique peut être perdue. L'allure est souvent une "pointe".
    -   À un **point régulier non-birégulier**, la vitesse est non nulle. La courbe a une tangente bien définie. Cependant, l'accélération est soit nulle, soit dans la même direction que la vitesse. Cela signifie que la courbure est nulle. Géométriquement, la courbe traverse sa tangente en ce point. C'est un **point d'inflexion**. La concavité de la courbe s'inverse.

3.  **Exemple :**

    Considérons la courbe $\gamma(t) = (t, t^3)$.

    -   Vecteur vitesse : $\gamma'(t) = (1, 3t^2)$. Comme la première composante est toujours 1, $\gamma'(t)$ n'est jamais nul. Tous les points sont réguliers.
    -   Vecteur accélération : $\gamma''(t) = (0, 6t)$.
    -   Étudions le point en $t=0$ :
        -   $\gamma'(0) = (1, 0) \neq \vec{0}$, donc le point est régulier. La tangente est l'axe des abscisses.
        -   $\gamma''(0) = (0, 0) = \vec{0}$. Les vecteurs $\gamma'(0)$ et $\gamma''(0)$ sont donc colinéaires (liés). Le point n'est pas birégulier.
    -   Géométriquement, la courbe $\gamma(t)=(t, t^3)$ (ou $y=x^3$) traverse sa tangente (l'axe Ox) à l'origine. Pour $t<0$, la courbe est en dessous de la tangente ($t^3 < 0$), et pour $t>0$, elle est au-dessus ($t^3 > 0$). L'origine est un point d'inflexion.

**Réponse:**

Un **point singulier** est un point où la vitesse s'annule ($\gamma'=\vec{0}$), correspondant souvent à une pointe. Un **point régulier non-birégulier** est un point où la vitesse est non nulle mais colinéaire à l'accélération ($\gamma'\neq\vec{0}$, $\det(\gamma', \gamma'')=0$), correspondant à un **point d'inflexion** où la courbe traverse sa tangente. L'exemple typique est la courbe $\gamma(t)=(t, t^3)$ au point $t=0$.

</details>

---

## Exercice 3

**Problème:** Calculez la longueur de l'arc de la courbe paramétrée $\gamma(t) = (e^t \cos(t), e^t \sin(t))$ entre les points correspondant à $t=0$ et $t=2$.

<details>

<summary>Solution</summary>

**Méthode:** La longueur $L$ d'un arc de courbe $\gamma(t)$ entre $t=a$ et $t=b$ est donnée par la formule de l'abscisse curviligne : $L = \int_a^b \|\gamma'(t)\| dt$. Nous devons donc calculer le vecteur vitesse $\gamma'(t)$, puis sa norme $\|\gamma'(t)\|$, et enfin intégrer cette norme de $0$ à $2$.

**Étapes:**

1.  **Calculer le vecteur vitesse $\gamma'(t)$ :**

    On dérive chaque composante de $\gamma(t) = (e^t \cos(t), e^t \sin(t))$ en utilisant la règle de dérivation du produit.

    $x'(t) = e^t \cos(t) - e^t \sin(t) = e^t(\cos(t) - \sin(t))$

    $y'(t) = e^t \sin(t) + e^t \cos(t) = e^t(\sin(t) + \cos(t))$

    Donc, $\gamma'(t) = (e^t(\cos t - \sin t), e^t(\sin t + \cos t))$.

2.  **Calculer la norme du vecteur vitesse $\|\gamma'(t)\|$ :**

    $\|\gamma'(t)\|^2 = [e^t(\cos t - \sin t)]^2 + [e^t(\sin t + \cos t)]^2$

    $\|\gamma'(t)\|^2 = e^{2t} [(\cos^2 t - 2\cos t \sin t + \sin^2 t) + (\sin^2 t + 2\sin t \cos t + \cos^2 t)]$

    En utilisant $\cos^2 t + \sin^2 t = 1$, on simplifie :

    $\|\gamma'(t)\|^2 = e^{2t} [(1 - 2\cos t \sin t) + (1 + 2\cos t \sin t)]$

    $\|\gamma'(t)\|^2 = e^{2t} [2] = 2e^{2t}$

    La norme (vitesse scalaire) est donc $\|\gamma'(t)\| = \sqrt{2e^{2t}} = \sqrt{2}e^t$.

3.  **Calculer l'intégrale de la longueur :**

    Nous devons calculer l'intégrale de la norme entre $t=0$ et $t=2$.

    $L = \int_0^2 \|\gamma'(t)\| dt = \int_0^2 \sqrt{2}e^t dt$

    $L = \sqrt{2} \int_0^2 e^t dt = \sqrt{2} [e^t]_0^2$

    $L = \sqrt{2} (e^2 - e^0) = \sqrt{2}(e^2 - 1)$.

**Réponse:** La longueur de l'arc de la courbe entre $t=0$ et $t=2$ est $\sqrt{2}(e^2 - 1)$.

</details>

---

## Exercice 4

**Problème:** Soit le cercle de rayon $R$ paramétré par $\gamma(t) = (R\cos(t), R\sin(t))$. Trouvez un reparamétrage de cette courbe par sa longueur d'arc $s$, en prenant comme point de départ $t_0=0$.

<details>

<summary>Solution</summary>

**Méthode:** Pour reparamétrer par la longueur d'arc, nous suivons trois étapes :

1. Calculer la vitesse scalaire $\|\gamma'(t)\|$.
2. Calculer la fonction d'abscisse curviligne $s(t) = \int_{t_0}^t \|\gamma'(\tau)\| d\tau$.
3. Inverser la relation $s=s(t)$ pour exprimer $t$ en fonction de $s$, puis substituer cette expression dans le paramétrage initial $\gamma(t)$.

**Étapes:**

1.  **Calculer la vitesse scalaire :**

    $\gamma(t) = (R\cos(t), R\sin(t))$

    $\gamma'(t) = (-R\sin(t), R\cos(t))$

    $\|\gamma'(t)\| = \sqrt{(-R\sin t)^2 + (R\cos t)^2} = \sqrt{R^2(\sin^2 t + \cos^2 t)} = \sqrt{R^2} = R$.

    La vitesse scalaire est constante et égale à $R$.

2.  **Calculer la fonction d'abscisse curviligne $s(t)$ :**

    Avec le point de départ $t_0=0$, la longueur d'arc $s$ à l'instant $t$ est :

    $s(t) = \int_0^t \|\gamma'(\tau)\| d\tau = \int_0^t R d\tau = [R\tau]_0^t = Rt$.

    Donc, nous avons la relation simple $s = Rt$.

3.  **Inverser la relation et substituer :**

    De $s = Rt$, nous pouvons exprimer $t$ en fonction de $s$ : $t = s/R$.

    Nous substituons cette expression de $t$ dans le paramétrage initial $\gamma(t)$ pour obtenir le nouveau paramétrage $\tilde{\gamma}(s)$:

    $\tilde{\gamma}(s) = \gamma(t(s)) = (R\cos(s/R), R\sin(s/R))$.

    On peut vérifier que ce nouveau paramétrage est bien par longueur d'arc en calculant la norme de sa dérivée par rapport à $s$ :

    $\tilde{\gamma}'(s) = (-R\sin(s/R) \cdot \frac{1}{R}, R\cos(s/R) \cdot \frac{1}{R}) = (-\sin(s/R), \cos(s/R))$.

    $\|\tilde{\gamma}'(s)\| = \sqrt{(-\sin(s/R))^2 + (\cos(s/R))^2} = 1$.

    La vitesse scalaire est bien égale à 1, ce qui confirme que c'est un paramétrage par longueur d'arc.

**Réponse:** Le reparamétrage du cercle par sa longueur d'arc $s$ depuis $t_0=0$ est $\tilde{\gamma}(s) = \left(R\cos\left(\frac{s}{R}\right), R\sin\left(\frac{s}{R}\right)\right)$.

</details>

---

## Exercice 5

**Problème:** On considère la parabole d'équation $y=x^2-3x+2$.

1. Donnez un paramétrage simple $\gamma(t)$ de cette courbe.
2. Montrez que tous les points de cette courbe sont biréguliers.
3. Déterminez la direction de la concavité de la parabole.

<details>

<summary>Solution</summary>

**Méthode:**

1. Le paramétrage le plus simple pour le graphe d'une fonction $y=f(x)$ est de poser $x=t$.
2. Un point est birégulier si les vecteurs vitesse $\gamma'(t)$ et accélération $\gamma''(t)$ sont linéairement indépendants. Pour des vecteurs du plan, cela équivaut à ce que leur déterminant soit non nul.
3. La concavité est tournée dans la direction du vecteur accélération $\gamma''(t)$.

**Étapes:**

1.  **Paramétrage de la courbe :**

    Posons $x=t$. Alors $y = t^2-3t+2$. Le paramétrage est :

    $\gamma(t) = (t, t^2-3t+2)$.

2.  **Vérification de la birégularité :**

    Calculons les deux premiers vecteurs dérivés :

    -   Vecteur vitesse : $\gamma'(t) = (1, 2t-3)$.
    -   Vecteur accélération : $\gamma''(t) = (0, 2)$.

    Pour vérifier que les points sont biréguliers, nous calculons le déterminant de la famille de vecteurs $(\gamma'(t), \gamma''(t))$ :

    $\det(\gamma'(t), \gamma''(t)) = \begin{vmatrix} 1 & 0 \\ 2t-3 & 2 \end{vmatrix} = 1 \cdot 2 - 0 \cdot (2t-3) = 2$.

    Comme le déterminant est égal à 2, il est non nul pour toutes les valeurs de $t$. Par conséquent, les vecteurs $\gamma'(t)$ et $\gamma''(t)$ sont toujours linéairement indépendants. Tous les points de la courbe sont biréguliers.

3.  **Direction de la concavité :**

    Au voisinage d'un point birégulier, la courbe se situe dans le demi-plan de concavité, qui est dirigé par le vecteur accélération. Ici, le vecteur accélération est constant : $\gamma''(t) = (0, 2)$.

    Ce vecteur est vertical et pointe vers le haut. Cela signifie que la concavité de la parabole est toujours tournée vers le haut, ce qui est cohérent avec le fait que le coefficient du terme en $x^2$ (qui est 1) est positif.

**Réponse:**

1. Un paramétrage simple est $\gamma(t) = (t, t^2-3t+2)$.
2. Tous les points sont biréguliers car $\det(\gamma'(t), \gamma''(t)) = 2 \neq 0$ pour tout $t$.
3. La concavité est constamment tournée dans la direction du vecteur $(0,2)$, c'est-à-dire vers le haut.

</details>

---

## Exercice 6

**Problème:** Soit la courbe paramétrée $\gamma(t) = (t^2, t^3-3t)$. Cette courbe est appelée une cubique de Tschirnhausen.

1. Trouvez les points multiples (points où la courbe se croise).
2. Trouvez et classifiez le point singulier de cette courbe.

<details>

<summary>Solution</summary>

**Méthode:**

1. Un point multiple existe s'il y a deux valeurs distinctes du paramètre, $t_1 \neq t_2$, qui donnent le même point, c'est-à-dire $\gamma(t_1) = \gamma(t_2)$.
2. Un point singulier est un point où $\gamma'(t_0)=\vec{0}$. Pour le classifier, nous devons calculer les dérivées successives en $t_0$ et trouver les entiers $p$ (ordre de la première dérivée non nulle) et $q$ (ordre de la première dérivée non colinéaire à la $p$-ième).

**Étapes:**

1.  **Recherche des points multiples :**

    On cherche $t_1 \neq t_2$ tels que $\gamma(t_1) = \gamma(t_2)$.

    $$ \begin{cases} t_1^2 = t_2^2 \\ t_1^3 - 3t_1 = t_2^3 - 3t_2 \end{cases} $$

    De la première équation, puisque $t_1 \neq t_2$, on doit avoir $t_2 = -t_1$ (et $t_1 \neq 0$).

    Substituons $t_2 = -t_1$ dans la seconde équation :

    $t_1^3 - 3t_1 = (-t_1)^3 - 3(-t_1)$

    $t_1^3 - 3t_1 = -t_1^3 + 3t_1$

    $2t_1^3 - 6t_1 = 0$

    $2t_1(t_1^2 - 3) = 0$

    Puisque $t_1 \neq 0$, on a $t_1^2 = 3$, soit $t_1 = \sqrt{3}$ et $t_1 = -\sqrt{3}$.

    Si $t_1 = \sqrt{3}$, alors $t_2 = -\sqrt{3}$. Vérifions que le point est le même :

    $\gamma(\sqrt{3}) = ((\sqrt{3})^2, (\sqrt{3})^3 - 3\sqrt{3}) = (3, 3\sqrt{3}-3\sqrt{3}) = (3,0)$.

    $\gamma(-\sqrt{3}) = ((-\sqrt{3})^2, (-\sqrt{3})^3 - 3(-\sqrt{3})) = (3, -3\sqrt{3}+3\sqrt{3}) = (3,0)$.

    Il y a un point multiple en $(3,0)$, atteint pour $t=\sqrt{3}$ et $t=-\sqrt{3}$.

2.  **Analyse du point singulier :**

    Calculons le vecteur vitesse : $\gamma'(t) = (2t, 3t^2 - 3)$.

    On cherche $t_0$ tel que $\gamma'(t_0) = \vec{0}$ :

    $2t_0 = 0 \implies t_0=0$.

    $3t_0^2 - 3 = 0 \implies t_0^2 = 1 \implies t_0 = \pm 1$.

    Il n'y a aucune valeur de $t_0$ qui annule les deux composantes simultanément. La courbe est donc régulière.

    *Correction :* Il semble y avoir une erreur dans l'énoncé ou mon interprétation. La courbe de Tschirnhausen est souvent donnée sous une forme qui a un point singulier. Prenons un exemple classique avec un point singulier pour l'exercice : $\gamma(t)=(t^2-1, t^3-t)$.

    -   $\gamma'(t) = (2t, 3t^2-1)$. $\gamma'(t)=\vec{0}$ n'a pas de solution. Cette courbe est aussi régulière.
    
    Revenons à l'exemple du cours : **$\gamma(t) = (t^2, t^3)$ (Parabole de Neil)**.

    -   $\gamma'(t) = (2t, 3t^2)$. $\gamma'(t)=\vec{0}$ si et seulement si $t=0$. Il y a un point singulier en $t=0$, au point $\gamma(0)=(0,0)$.
    -   Calculons les dérivées successives en $t=0$:

        $\gamma''(t) = (2, 6t) \implies \gamma''(0) = (2,0)$. C'est la première dérivée non nulle, donc $p=2$.

        $\gamma'''(t) = (0, 6) \implies \gamma'''(0) = (0,6)$.

    -   Le vecteur $\gamma''(0)=(2,0)$ et $\gamma'''(0)=(0,6)$ sont linéairement indépendants. Donc, $q=3$.
    -   **Classification :** $p=2$ est pair et $q=3$ est impair. Il s'agit d'un **point de rebroussement de première espèce**.

**Réponse:** Pour la courbe $\gamma(t)=(t^2, t^3-3t)$, il n'y a pas de point singulier mais un point multiple en $(3,0)$.

Pour la courbe classique $\gamma(t) = (t^2, t^3)$, il y a un point singulier en $t=0$ qui est un **point de rebroussement de première espèce** ($p=2, q=3$).

</details>

---

## Exercice 7

**Problème:** Déterminez la nature de la conique dont l'équation cartésienne est $2x^2 + 2xy + 2y^2 - 5x + 3y - 7 = 0$. S'agit-il d'une ellipse, d'une hyperbole ou d'une parabole ?

<details>

<summary>Solution</summary>

**Méthode:** La nature d'une conique d'équation générale $ax^2 + 2cxy + by^2 + dx + ey + f = 0$ peut être déterminée en calculant le signe du déterminant de sa partie quadratique, $\Delta = ab - c^2$.

- Si $\Delta > 0$, la conique est du genre ellipse.
- Si $\Delta < 0$, la conique est du genre hyperbole.
- Si $\Delta = 0$, la conique est du genre parabole.

**Étapes:**

1.  **Identifier les coefficients $a, b, c$ :**

    En comparant l'équation donnée avec l'équation générale, nous avons :

    $ax^2 \implies a=2$

    $2cxy \implies 2c=2 \implies c=1$

    $by^2 \implies b=2$

2.  **Calculer le déterminant $\Delta = ab - c^2$ :**

    $\Delta = (2)(2) - (1)^2$

    $\Delta = 4 - 1 = 3$.

3.  **Conclure sur la nature de la conique :**

    Puisque $\Delta = 3 > 0$, la conique est du genre **ellipse**. (Elle pourrait être une ellipse, un cercle, un point, ou l'ensemble vide, mais sa "nature" est elliptique).

**Réponse:** La conique est du genre **ellipse**, car le déterminant de sa partie quadratique est positif ($\Delta = 3$).

</details>

---

## Exercice 8

**Problème:** On considère la conique d'équation $xy=4$.

1. Déterminez la nature de cette conique.
2. Trouvez son équation réduite en effectuant une rotation du repère de $45^\circ$.

<details>

<summary>Solution</summary>

**Méthode:**

1. On utilise le déterminant $\Delta = ab - c^2$ pour identifier la nature de la conique.
2. Une rotation de $45^\circ$ ($\pi/4$) correspond au changement de coordonnées :

$x = \frac{X-Y}{\sqrt{2}}$

$y = \frac{X+Y}{\sqrt{2}}$

On substitue ces expressions dans l'équation de la conique pour trouver l'équation dans le nouveau repère $(O, X, Y)$.

**Étapes:**

1.  **Nature de la conique :**

    L'équation est $xy-4=0$. On l'écrit sous la forme $ax^2 + 2cxy + by^2 + \dots = 0$.

    On a $a=0$, $b=0$ et $2c=1 \implies c=1/2$.

    Le déterminant est $\Delta = ab - c^2 = (0)(0) - (1/2)^2 = -1/4$.

    Puisque $\Delta < 0$, la conique est une **hyperbole**.

2.  **Rotation du repère :**

    On applique le changement de coordonnées de la rotation de $45^\circ$ :

    $x = \frac{X-Y}{\sqrt{2}}$ et $y = \frac{X+Y}{\sqrt{2}}$.

    On substitue dans l'équation $xy=4$ :

    $\left(\frac{X-Y}{\sqrt{2}}\right) \left(\frac{X+Y}{\sqrt{2}}\right) = 4$

    En utilisant l'identité remarquable $(A-B)(A+B)=A^2-B^2$, on obtient :

    $\frac{X^2 - Y^2}{2} = 4$

    $X^2 - Y^2 = 8$

    On peut écrire cette équation sous la forme standard $\frac{X^2}{\alpha^2} - \frac{Y^2}{\beta^2} = 1$ :

    $\frac{X^2}{8} - \frac{Y^2}{8} = 1$.

    C'est bien l'équation réduite d'une hyperbole équilatère dont les demi-axes valent $\alpha = \beta = \sqrt{8} = 2\sqrt{2}$.

**Réponse:**

1. La conique est une **hyperbole**.
2. Son équation réduite dans le repère tourné de $45^\circ$ est $\frac{X^2}{8} - \frac{Y^2}{8} = 1$.

</details>

---

## Exercice 9

**Problème:** Calculez la courbure $\kappa(t)$ de la parabole $\gamma(t)=(t, t^2)$ en fonction de $t$. En quel point la courbure est-elle maximale ?

<details>

<summary>Solution</summary>

**Méthode:** La courbure $\kappa(t)$ d'une courbe plane paramétrée $\gamma(t)$ est donnée par la formule :

$$ \kappa(t) = \frac{\det(\gamma'(t), \gamma''(t))}{\|\gamma'(t)\|^3} $$

Nous allons donc calculer $\gamma'(t)$, $\gamma''(t)$, le déterminant de ces deux vecteurs, et la norme de $\gamma'(t)$ pour appliquer la formule. Pour trouver le maximum, nous étudierons la fonction $\kappa(t)$.

**Étapes:**

1.  **Calculer les vecteurs dérivés :**

    $\gamma(t) = (t, t^2)$

    $\gamma'(t) = (1, 2t)$

    $\gamma''(t) = (0, 2)$

2.  **Calculer le déterminant :**

    $\det(\gamma'(t), \gamma''(t)) = \begin{vmatrix} 1 & 0 \\ 2t & 2 \end{vmatrix} = 1 \cdot 2 - 0 \cdot 2t = 2$.

3.  **Calculer la norme du vecteur vitesse :**

    $\|\gamma'(t)\| = \sqrt{1^2 + (2t)^2} = \sqrt{1+4t^2}$.

4.  **Calculer la courbure :**

    En appliquant la formule, on obtient :

    $\kappa(t) = \frac{2}{(\sqrt{1+4t^2})^3} = \frac{2}{(1+4t^2)^{3/2}}$.

5.  **Trouver le maximum de la courbure :**

    La fonction $\kappa(t) = \frac{2}{(1+4t^2)^{3/2}}$ est positive. Pour la maximiser, il faut minimiser son dénominateur $(1+4t^2)^{3/2}$.

    Le terme $1+4t^2$ est une fonction de $t$ dont la valeur minimale est atteinte lorsque $t^2$ est minimal, c'est-à-dire pour $t=0$.

    La valeur minimale du dénominateur est $(1+4(0)^2)^{3/2} = 1^{3/2} = 1$.

    La courbure est donc maximale en $t=0$. Le point correspondant est $\gamma(0)=(0,0)$, le sommet de la parabole. La valeur maximale de la courbure est $\kappa(0) = \frac{2}{1} = 2$.

**Réponse:** La courbure est $\kappa(t) = \frac{2}{(1+4t^2)^{3/2}}$. Elle est maximale au sommet de la parabole, au point $(0,0)$ (pour $t=0$), où elle vaut $2$.

</details>

---

## Exercice 10

**Problème:** Déterminez le centre et le rayon du cercle osculateur à la courbe $\gamma(t)=(t-\sin t, 1-\cos t)$ (une arche de cycloïde) au point correspondant à $t=\pi$.

<details>

<summary>Solution</summary>

**Méthode:** Le cercle osculateur en un point $\gamma(t)$ a pour rayon $R(t) = 1/|\kappa(t)|$ et pour centre $C(t) = \gamma(t) + R(t)N(t)$, où $N(t)$ est le vecteur normal unitaire. Nous devons donc :

1. Calculer la courbure $\kappa(t)$ au point $t=\pi$.
2. En déduire le rayon de courbure $R(\pi)$.
3. Déterminer le vecteur normal unitaire $N(\pi)$.
4. Calculer les coordonnées du centre $C(\pi)$.

**Étapes:**

1.  **Calculer les dérivés en $t=\pi$ :**

    $\gamma'(t) = (1-\cos t, \sin t) \implies \gamma'(\pi) = (1 - (-1), 0) = (2, 0)$.

    $\gamma''(t) = (\sin t, \cos t) \implies \gamma''(\pi) = (0, -1)$.

    Le point est $\gamma(\pi) = (\pi - \sin \pi, 1 - \cos \pi) = (\pi, 2)$.

2.  **Calculer la courbure en $t=\pi$ :**

    $\det(\gamma'(\pi), \gamma''(\pi)) = \begin{vmatrix} 2 & 0 \\ 0 & -1 \end{vmatrix} = -2$.

    $\|\gamma'(\pi)\| = \sqrt{2^2 + 0^2} = 2$.

    $\kappa(\pi) = \frac{\det(\gamma'(\pi), \gamma''(\pi))}{\|\gamma'(\pi)\|^3} = \frac{-2}{2^3} = -\frac{1}{4}$.

3.  **Calculer le rayon de courbure :**

    $R(\pi) = 1/|\kappa(\pi)| = 1/|-\frac{1}{4}| = 4$.

    Le rayon du cercle osculateur est 4.

4.  **Déterminer le vecteur normal unitaire :**

    Le vecteur tangent unitaire $\tau(t) = \gamma'(t) / \|\gamma'(t)\|$.

    $\tau(\pi) = (2,0) / 2 = (1,0)$.

    Le vecteur normal unitaire $N(t)$ est obtenu en tournant $\tau(t)$ de $+\pi/2$. Si $\tau=(x,y)$, alors $N=(-y,x)$.

    $N(\pi) = (0,1)$.

5.  **Calculer le centre du cercle osculateur :**

    La formule du centre est $C = \gamma + \frac{1}{\kappa}N$.

    $C(\pi) = \gamma(\pi) + \frac{1}{\kappa(\pi)}N(\pi) = (\pi, 2) + \frac{1}{-1/4}(0,1) = (\pi, 2) - 4(0,1) = (\pi, 2) - (0,4) = (\pi, -2)$.

**Réponse:** Le cercle osculateur à la cycloïde au point $(\pi, 2)$ a pour rayon $R=4$ et pour centre le point $C=(\pi, -2)$.

</details>

---

## Exercice 11

**Problème:** Soit une ellipse parcourue deux fois dans le sens trigonométrique (sens direct). Sans calculer d'intégrale, quelle est la courbure totale $\int \kappa ds$ de cette courbe fermée ?

<details>

<summary>Solution</summary>

**Méthode:** Nous allons utiliser le théorème de Gauss-Bonnet pour les courbes planes. Ce théorème relie la courbure totale d'un lacet (courbe fermée régulière) au nombre d'enroulements de son vecteur tangent.

La formule est : $\int_{\text{courbe}} \kappa ds = 2\pi \times \text{Enroul}(\gamma)$.

**Étapes:**

1.  **Analyser la courbe :**

    La courbe est une ellipse parcourue deux fois. C'est un lacet, car le point de départ et d'arrivée coïncident, ainsi que le vecteur tangent. L'ellipse étant une conique, c'est une courbe régulière de classe $C^\infty$. Le théorème s'applique donc.

2.  **Déterminer le nombre d'enroulements de la tangente :**

    Le nombre d'enroulement, $\text{Enroul}(\gamma)$, compte le nombre de tours complets effectués par le vecteur tangent unitaire $\tau(t)$ lorsque le paramètre $t$ parcourt tout l'intervalle.

    -   Lorsqu'on parcourt l'ellipse **une seule fois** dans le sens trigonométrique, le vecteur tangent effectue exactement **un tour complet** dans le même sens. Le nombre d'enroulement est donc de +1.
    -   Puisque la courbe est parcourue **deux fois** dans le même sens, le vecteur tangent effectue deux tours complets. Le nombre d'enroulements total est donc $1 + 1 = 2$.

3.  **Appliquer le théorème de Gauss-Bonnet :**

    En utilisant la formule avec $\text{Enroul}(\gamma) = 2$, on obtient :

    $\int \kappa ds = 2\pi \times 2 = 4\pi$.

**Réponse:** En vertu du théorème de Gauss-Bonnet, la courbure totale de l'ellipse parcourue deux fois dans le sens direct est $4\pi$.

</details>

---

## Exercice 12

**Problème:** On étudie une arche de la cycloïde, paramétrée par $\gamma(t) = (t - \sin t, 1 - \cos t)$ pour $t \in [0, 2\pi]$.

1. Identifiez les points singuliers sur cet intervalle.
2. Calculez la longueur totale de cette arche.
3. Calculez la courbure $\kappa(t)$ pour $t \in (0, 2\pi)$. Que se passe-t-il lorsque $t$ s'approche de 0 ou $2\pi$ ?

<details>

<summary>Solution</summary>

**Méthode:** C'est un exercice de synthèse qui applique les concepts de régularité, de longueur d'arc et de courbure. On procédera en calculant les dérivées successives et en appliquant les formules correspondantes.

**Étapes:**

1.  **Points singuliers :**

    Calculons le vecteur vitesse : $\gamma'(t) = (1 - \cos t, \sin t)$.

    Un point est singulier si $\gamma'(t) = (0,0)$.

    $$ \begin{cases} 1 - \cos t = 0 \\ \sin t = 0 \end{cases} $$

    La première équation donne $\cos t = 1$, ce qui implique $t=0$ ou $t=2\pi$ dans l'intervalle $[0, 2\pi]$.

    La deuxième équation $\sin t = 0$ est également satisfaite pour $t=0$ et $t=2\pi$.

    Les points singuliers sont donc aux extrémités de l'arche, pour $t=0$ (point $(0,0)$) et $t=2\pi$ (point $(2\pi, 0)$). Ces points correspondent aux "pointes" où la cycloïde touche l'axe des abscisses.

2.  **Longueur de l'arche :**

    La longueur est $L = \int_0^{2\pi} \|\gamma'(t)\| dt$.

    Calculons la norme de la vitesse :

    $\|\gamma'(t)\|^2 = (1-\cos t)^2 + \sin^2 t = 1 - 2\cos t + \cos^2 t + \sin^2 t = 2 - 2\cos t = 2(1-\cos t)$.

    En utilisant la formule de l'angle moitié $1-\cos t = 2\sin^2(t/2)$, on a :

    $\|\gamma'(t)\|^2 = 4\sin^2(t/2)$, donc $\|\gamma'(t)\| = \sqrt{4\sin^2(t/2)} = 2|\sin(t/2)|$.

    Sur l'intervalle $t \in [0, 2\pi]$, $t/2 \in [0, \pi]$, donc $\sin(t/2) \ge 0$. On peut retirer la valeur absolue.

    $L = \int_0^{2\pi} 2\sin(t/2) dt = \left[ -4\cos(t/2) \right]_0^{2\pi} = (-4\cos(\pi)) - (-4\cos(0)) = (-4(-1)) - (-4(1)) = 4 + 4 = 8$.

3.  **Calcul de la courbure :**

    On a besoin de $\gamma''(t) = (\sin t, \cos t)$.

    Le déterminant est $\det(\gamma'(t), \gamma''(t)) = (1-\cos t)(\cos t) - (\sin t)(\sin t) = \cos t - \cos^2 t - \sin^2 t = \cos t - 1$.

    La courbure est :

    $\kappa(t) = \frac{\det(\gamma'(t), \gamma''(t))}{\|\gamma'(t)\|^3} = \frac{\cos t - 1}{(2\sin(t/2))^3} = \frac{-2\sin^2(t/2)}{8\sin^3(t/2)} = -\frac{1}{4\sin(t/2)}$.

    Lorsque $t \to 0^+$ ou $t \to 2\pi^-$, $\sin(t/2) \to 0^+$. Par conséquent, $\kappa(t) \to -\infty$.

    Cela signifie que la courbure devient infinie aux points de rebroussement, ce qui est attendu : la courbe y fait un virage infiniment serré.

**Réponse:**

1. Les points singuliers sont pour $t=0$ et $t=2\pi$, aux points $(0,0)$ et $(2\pi, 0)$.
2. La longueur de l'arche est $L=8$.
3. La courbure est $\kappa(t) = -\frac{1}{4\sin(t/2)}$. La courbure tend vers $-\infty$ aux points singuliers.

</details>
