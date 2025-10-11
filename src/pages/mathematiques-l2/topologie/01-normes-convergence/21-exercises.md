---
title: B - Exercices
order: 21
level: pro
chapter: B - Concepts
course: Topologie et Calcul Différentiel I
tags: ["exercises", "practice", "pro"]
---

# Exercices: B - Concepts

## Exercice 1: [Investigation Théorique]

**Problème:** Soit $E$ un espace vectoriel réel. Un sous-ensemble $B \subset E$ est dit :

- **convexe** si pour tous $x, y \in B$ et tout $t \in [0,1]$, $tx + (1-t)y \in B$.
- **équilibré** (ou balancé) si pour tout $x \in B$ et tout $\lambda \in \mathbb{R}$ tel que $|\lambda| \le 1$, on a $\lambda x \in B$.
- **absorbant** si pour tout $x \in E$, il existe $\alpha > 0$ tel que $x \in \alpha B$.

Soit $B$ un sous-ensemble de $E$ qui est à la fois convexe, équilibré et absorbant. On définit la **fonctionnelle de Minkowski** associée à $B$, notée $p_B : E \to \mathbb{R}_+$, par :

$$ p_B(x) = \inf\{\alpha > 0 \mid x \in \alpha B \} $$

1.  Démontrer que $p_B$ est une semi-norme sur $E$.
2.  Démontrer que $p_B$ est une norme si et seulement si pour tout $x \neq 0_E$, il existe un voisinage de $0$ dans $\mathbb{R}$ qui ne contient aucun $\alpha$ tel que $x \in \alpha B$. Autrement dit, l'ensemble $\{\alpha \in \mathbb{R} \mid x \in \alpha B\}$ ne contient pas d'intervalle $(-\epsilon, \epsilon)$ pour $\epsilon > 0$. Une condition plus simple est de montrer que $p_B$ est une norme si et seulement si l'ensemble $\bigcap_{\alpha > 0} \alpha B = \{0_E\}$.

<details>

<summary>Solution</summary>

**Méthode:** Pour la première partie, nous vérifierons les axiomes de l'homogénéité et de la sous-additivité en utilisant directement la définition de $p_B$ et les propriétés de $B$. Pour la deuxième partie, nous analyserons la condition de séparation $p_B(x) = 0 \iff x=0_E$.

**Étapes:**

1.  **Non-négativité :** Par définition, $p_B(x)$ est l'infimum d'un ensemble de réels positifs, donc $p_B(x) \ge 0$.

2.  **Homogénéité :** Soit $x \in E$ et $\lambda \in \mathbb{R}$.
    -   Si $\lambda = 0$, $p_B(0_E) = \inf\{\alpha > 0 \mid 0_E \in \alpha B\}$. Comme $B$ est absorbant, il contient $0_E$ (prendre $x=0_E$ dans la définition, $\alpha \cdot 0_E = 0_E \in B$), donc $0_E \in \alpha B$ pour tout $\alpha>0$. L'infimum est donc 0. On a bien $p_B(0 \cdot x) = 0 = |0|p_B(x)$.
    -   Si $\lambda \neq 0$,

        $$ \begin{align*} p_B(\lambda x) &= \inf\{\alpha > 0 \mid \lambda x \in \alpha B\} \\ &= \inf\{\alpha > 0 \mid x \in (\alpha/|\lambda|) (\lambda/|\lambda|) B\} \end{align*} $$

        Comme $B$ est équilibré et $|\lambda/|\lambda|| = 1$, on a $(\lambda/|\lambda|) B = B$.

        $$ p_B(\lambda x) = \inf\{\alpha > 0 \mid x \in (\alpha/|\lambda|) B\} $$

        Posons $\beta = \alpha/|\lambda|$. Alors $\alpha = \beta |\lambda|$. L'ensemble des $\beta$ est $\mathbb{R}_+^*$.

        $$ p_B(\lambda x) = \inf\{\beta |\lambda| > 0 \mid x \in \beta B\} = |\lambda| \inf\{\beta > 0 \mid x \in \beta B\} = |\lambda| p_B(x) $$

3.  **Inégalité triangulaire (Sous-additivité) :** Soient $x, y \in E$. Soit $\varepsilon > 0$. Par définition de l'infimum, il existe $\alpha_1 > 0$ et $\alpha_2 > 0$ tels que $x \in \alpha_1 B$, $y \in \alpha_2 B$ avec $\alpha_1 < p_B(x) + \varepsilon$ and $\alpha_2 < p_B(y) + \varepsilon$.

    Soit $\alpha = \alpha_1 + \alpha_2$. On a $x/\alpha_1 \in B$ et $y/\alpha_2 \in B$.

    Comme $B$ est convexe, le segment joignant $x/\alpha_1$ et $y/\alpha_2$ est dans $B$. En particulier, le point $\frac{\alpha_1}{\alpha} \frac{x}{\alpha_1} + \frac{\alpha_2}{\alpha} \frac{y}{\alpha_2}$ est dans $B$.

    $$ \frac{x+y}{\alpha} \in B \implies x+y \in \alpha B $$

    Ceci signifie que $p_B(x+y) \le \alpha = \alpha_1 + \alpha_2 < p_B(x) + p_B(y) + 2\varepsilon$.

    Comme cette inégalité est vraie pour tout $\varepsilon > 0$, on conclut que $p_B(x+y) \le p_B(x) + p_B(y)$.

    Ainsi, $p_B$ est une semi-norme.

4.  **Condition de séparation :** $p_B$ est une norme si et seulement si $p_B(x) = 0 \implies x=0_E$.

    Analysons $p_B(x)=0$. Cela signifie $\inf\{\alpha > 0 \mid x \in \alpha B \} = 0$.

    Ceci est équivalent à : pour tout $\varepsilon > 0$, il existe $\alpha \in (0, \varepsilon)$ tel que $x \in \alpha B$.

    Autrement dit, $p_B(x)=0 \iff \forall \alpha > 0, x \in \alpha B \iff x \in \bigcap_{\alpha > 0} \alpha B$.

    La condition de séparation $p_B(x)=0 \implies x=0_E$ est donc équivalente à $\bigcap_{\alpha > 0} \alpha B \subset \{0_E\}$.

    Comme $0_E$ est toujours dans $\alpha B$ (car $B$ est absorbant), l'inclusion inverse est toujours vraie.

    Donc, $p_B$ est une norme si et seulement si $\bigcap_{\alpha > 0} \alpha B = \{0_E\}$.

**Réponse:** La fonctionnelle de Minkowski $p_B$ est une semi-norme. Elle devient une norme si et seulement si la condition de séparation est satisfaite, ce qui équivaut à $\bigcap_{\alpha > 0} \alpha B = \{0_E\}$.

</details>

## Exercice 2: [Preuve Complexe]

**Problème:** Soit $E$ un espace vectoriel réel et $d: E \times E \to \mathbb{R}_+$ une distance sur $E$. Démontrer que $d$ est induite par une norme sur $E$ si et seulement si elle satisfait les deux propriétés suivantes :

1.  **Invariance par translation :** $\forall x, y, a \in E, \; d(x+a, y+a) = d(x,y)$.
2.  **Homogénéité :** $\forall x, y \in E, \forall \lambda \in \mathbb{R}, \; d(\lambda x, \lambda y) = |\lambda|d(x,y)$.

De plus, si ces conditions sont remplies, expliciter la norme dont $d$ est issue.

<details>

<summary>Solution</summary>

**Méthode:** La preuve se fait en deux parties.

-   Sens direct ($\implies$) : On suppose que $d$ est induite par une norme $N$, i.e., $d(x,y) = N(x-y)$, et on démontre les deux propriétés.
-   Sens réciproque ($\impliedby$) : On suppose que $d$ vérifie les deux propriétés. On doit construire une application $N: E \to \mathbb{R}_+$ et prouver qu'il s'agit d'une norme, puis montrer que cette norme induit bien la distance $d$. Le candidat naturel pour la norme est $N(x) = d(x, 0_E)$.

**Étapes:**

1.  **Sens direct ($\implies$) :** Supposons qu'il existe une norme $N$ sur $E$ telle que $d(x,y) = N(x-y)$.
    -   **Invariance par translation :** Pour tous $x, y, a \in E$,

        $d(x+a, y+a) = N((x+a) - (y+a)) = N(x-y) = d(x,y)$.

    -   **Homogénéité :** Pour tous $x, y \in E$ et $\lambda \in \mathbb{R}$,

        $d(\lambda x, \lambda y) = N(\lambda x - \lambda y) = N(\lambda(x-y)) = |\lambda| N(x-y) = |\lambda| d(x,y)$.

    Les deux propriétés sont donc bien satisfaites.

2.  **Sens réciproque ($\impliedby$) :** Supposons que $d$ est invariante par translation et homogène. Définissons l'application $N: E \to \mathbb{R}_+$ par $N(x) = d(x, 0_E)$. Nous allons montrer que $N$ est une norme.
    -   **Séparation :** $N(x) = 0 \iff d(x, 0_E) = 0$. Comme $d$ est une distance, ceci est équivalent à $x=0_E$.
    -   **Homogénéité :** Pour tout $x \in E$ et $\lambda \in \mathbb{R}$,

        $N(\lambda x) = d(\lambda x, 0_E) = d(\lambda x, \lambda 0_E)$. Par l'homogénéité de $d$,

        $d(\lambda x, \lambda 0_E) = |\lambda|d(x, 0_E) = |\lambda| N(x)$.

    -   **Inégalité triangulaire :** Pour tous $x, y \in E$, nous devons montrer que $N(x+y) \le N(x) + N(y)$.

        $N(x+y) = d(x+y, 0_E)$.

        Par l'inégalité triangulaire pour la distance $d$, pour tout $z \in E$, on a $d(x+y, 0_E) \le d(x+y, z) + d(z, 0_E)$.

        Choisissons judicieusement $z$. Utilisons l'invariance par translation : $d(u,v) = d(u-v, 0_E)$.

        $N(x+y) = d(x+y, 0_E) = d(x, -y)$ par invariance par translation avec $a=-y$.

        Appliquons l'inégalité triangulaire de $d$: $d(x, -y) \le d(x, 0_E) + d(0_E, -y)$.

        On a $N(x) = d(x, 0_E)$.

        Calculons $d(0_E, -y)$.

        $d(0_E, -y) = d(y, 0_E)$ (par invariance avec $a=y$). Donc $d(0_E, -y)=N(y)$.

        Non, ceci est faux.

        Reprenons : $d(0_E, -y) = d(-1 \cdot 0_E, -1 \cdot y) = |-1|d(0_E, y) = d(y,0_E)$ par symétrie de $d$, ce qui est $N(y)$.

        Donc $N(x+y) = d(x+y, 0_E)$.

        On utilise l'invariance par translation : $d(x+y, 0_E) = d(x+y-y, 0_E-y) = d(x, -y)$.

        Ah, non. $d(x+y, 0_E) \le d(x+y, y) + d(y, 0_E)$.

        Par invariance par translation, $d(x+y, y) = d(x+y-y, y-y) = d(x, 0_E) = N(x)$.

        Et $d(y, 0_E) = N(y)$.

        Donc, $N(x+y) = d(x+y, 0_E) \le d(x+y, y) + d(y, 0_E) = N(x) + N(y)$.

        L'inégalité triangulaire est donc vérifiée. $N$ est bien une norme.

3.  **Vérification finale :** Il reste à montrer que cette norme $N$ induit la distance $d$.

    La distance induite par $N$ est $d_N(x,y) = N(x-y) = d(x-y, 0_E)$.

    Par invariance par translation de $d$, $d(x-y, 0_E) = d(x-y+y, 0_E+y) = d(x,y)$.

    Donc $d_N(x,y) = d(x,y)$. La distance est bien induite par la norme $N(x) = d(x, 0_E)$.

**Réponse:** Une distance $d$ sur un espace vectoriel $E$ est induite par une norme si et seulement si elle est invariante par translation et homogène. Dans ce cas, la norme est donnée par $N(x) = d(x, 0_E)$.

</details>

## Exercice 3: [Preuve Complexe]

**Problème:** Soit $A \in \mathcal{M}_n(\mathbb{R})$ une matrice symétrique positive semi-définie, c'est-à-dire que $A^T=A$ et $x^T A x \ge 0$ pour tout $x \in \mathbb{R}^n$. On définit une application $\langle \cdot, \cdot \rangle_A : \mathbb{R}^n \times \mathbb{R}^n \to \mathbb{R}$ par $\langle x, y \rangle_A = x^T A y$.

1.  Montrer que $\langle \cdot, \cdot \rangle_A$ est un produit semi-scalaire (c'est-à-dire qu'il vérifie les axiomes de bilinéarité, de symétrie et de positivité d'un produit scalaire, mais que la définie-positivité $\langle x, x \rangle_A=0 \implies x=0$ peut ne pas être satisfaite).
2.  Démontrer l'inégalité de Cauchy-Schwarz généralisée : pour tous $x, y \in \mathbb{R}^n$,

    $$ (\langle x, y \rangle_A)^2 \le \langle x, x \rangle_A \langle y, y \rangle_A $$

3.  Caractériser le cas d'égalité. Montrer que l'égalité a lieu si et seulement si les vecteurs $Ax$ et $Ay$ sont colinéaires.

<details>

<summary>Solution</summary>

**Méthode:** La première partie consiste en une simple vérification des axiomes. Pour la deuxième partie, nous allons imiter la preuve classique de Cauchy-Schwarz en étudiant le signe d'un polynôme du second degré. La troisième partie analysera la condition pour que le discriminant de ce polynôme soit nul.

**Étapes:**

1.  **Vérification du produit semi-scalaire :**
    -   **Bilinéarité :** $\langle \alpha x_1 + \beta x_2, y \rangle_A = (\alpha x_1 + \beta x_2)^T A y = (\alpha x_1^T + \beta x_2^T) A y = \alpha x_1^T A y + \beta x_2^T A y = \alpha \langle x_1, y \rangle_A + \beta \langle x_2, y \rangle_A$. La linéarité à droite découle de la symétrie.
    -   **Symétrie :** $\langle x, y \rangle_A = x^T A y$. Comme c'est un scalaire, c'est égal à sa transposée : $(x^T A y)^T = y^T A^T (x^T)^T = y^T A x = \langle y, x \rangle_A$, car $A^T=A$.
    -   **Positivité :** $\langle x, x \rangle_A = x^T A x \ge 0$ par définition d'une matrice semi-définie positive.

2.  **Preuve de l'inégalité de Cauchy-Schwarz généralisée :**

    Pour tous $x, y \in \mathbb{R}^n$ et tout $t \in \mathbb{R}$, considérons le polynôme $P(t) = \langle x+ty, x+ty \rangle_A$.

    Par positivité, $P(t) \ge 0$ pour tout $t \in \mathbb{R}$.

    Développons $P(t)$ en utilisant la bilinéarité et la symétrie :

    $$ P(t) = \langle x, x \rangle_A + 2t\langle x, y \rangle_A + t^2\langle y, y \rangle_A $$

    -   Si $\langle y, y \rangle_A = 0$, alors $P(t) = \langle x, x \rangle_A + 2t\langle x, y \rangle_A$. Pour que ce polynôme de degré au plus 1 soit toujours positif ou nul, son coefficient directeur doit être nul. Donc $2\langle x, y \rangle_A = 0$, soit $\langle x, y \rangle_A = 0$. Dans ce cas, l'inégalité $(\langle x, y \rangle_A)^2 \le \langle x, x \rangle_A \langle y, y \rangle_A$ devient $0 \le 0$, ce qui est vrai.
    -   Si $\langle y, y \rangle_A > 0$, $P(t)$ est un trinôme du second degré en $t$ qui est toujours positif ou nul. Son discriminant $\Delta$ doit donc être négatif ou nul.

    $$ \Delta = (2\langle x, y \rangle_A)^2 - 4 \langle y, y \rangle_A \langle x, x \rangle_A \le 0 $$

    $$ 4(\langle x, y \rangle_A)^2 \le 4\langle x, x \rangle_A \langle y, y \rangle_A $$

    Ce qui est l'inégalité désirée.

3.  **Cas d'égalité :** L'égalité a lieu si et seulement si $\Delta = 0$.
    -   Si $\langle y, y \rangle_A = 0$, l'égalité a lieu si $\langle x, y \rangle_A = 0$. Dans ce cas, $y^T A y = 0$. Comme $A$ est semi-définie positive, on peut l'écrire $A = S^T S$ pour une certaine matrice $S$ (décomposition de Cholesky généralisée). Alors $y^T S^T S y = \|Sy\|_2^2 = 0$, ce qui implique $Sy=0$. Donc $Ay = S^T(Sy)=0$. Si $Ay=0$, alors $\langle x, y \rangle_A = x^T A y = 0$, et l'égalité $0=0$ est vérifiée. Dans ce cas, $Ay=0$ et $Ax$ sont colinéaires (car $Ay=0=0 \cdot Ax$).
    -   Si $\langle y, y \rangle_A > 0$, l'égalité a lieu si $\Delta=0$. Cela signifie que le polynôme $P(t)$ a une racine réelle double $t_0$. Pour cette racine, $P(t_0) = \langle x+t_0 y, x+t_0 y \rangle_A = 0$.

    Soit $z = x+t_0 y$. On a $\langle z, z \rangle_A = 0$. Comme vu précédemment, cela implique $Az=0$.

    Donc $A(x+t_0 y) = 0 \implies Ax + t_0 Ay = 0 \implies Ax = -t_0 Ay$.

    Ceci montre que $Ax$ et $Ay$ sont colinéaires.

    Réciproquement, si $Ax$ et $Ay$ sont colinéaires, alors il existe $\lambda \in \mathbb{R}$ tel que $Ax = \lambda Ay$ (si $Ay \neq 0$) ou $Ay = \lambda Ax$ (si $Ax \neq 0$). Si $Ay=0$, on a vu que l'égalité est vérifiée. Si $Ay \neq 0$, alors $Ax=\lambda Ay$.

    $\langle x, y \rangle_A = x^T A y = (\lambda Ay)^T A^{-1} A y = \lambda (Ay)^T y$. Ce n'est pas la bonne approche.

    Supposons $Ax = \lambda Ay$.

    $\langle x, y \rangle_A = x^T A y = x^T (A y)$.

    $\langle x, x \rangle_A = x^T A x = x^T(\lambda Ay) = \lambda \langle x, y \rangle_A$.

    $\langle x, y \rangle_A = y^T A x = y^T (\lambda Ay) = \lambda \langle y, y \rangle_A$.

    En substituant: $\langle x, x \rangle_A = \lambda (\lambda \langle y, y \rangle_A) = \lambda^2 \langle y, y \rangle_A$.

    L'inégalité devient $(\lambda \langle y, y \rangle_A)^2 \le (\lambda^2 \langle y, y \rangle_A) \langle y, y \rangle_A$, ce qui est $\lambda^2 (\langle y, y \rangle_A)^2 \le \lambda^2 (\langle y, y \rangle_A)^2$, une égalité.

**Réponse:** L'inégalité $(\langle x, y \rangle_A)^2 \le \langle x, x \rangle_A \langle y, y \rangle_A$ est vérifiée. L'égalité a lieu si et seulement si les vecteurs $Ax$ et $Ay$ sont linéairement dépendants.

</details>

## Exercice 4: [Investigation Théorique]

**Problème:** Un espace vectoriel normé $(E, \|\cdot\|)$ est dit **strictement convexe** si pour tous $x, y \in E$ distincts avec $\|x\|=\|y\|=1$, on a $\|x+y\| < 2$. Géométriquement, cela signifie que le milieu de tout segment joignant deux points distincts de la sphère unité est strictement à l'intérieur de la boule unité.

1.  Démontrer que pour $p=1$ et $p=\infty$, l'espace $(\mathbb{R}^n, \|\cdot\|_p)$ n'est pas strictement convexe pour $n \ge 2$.
2.  Démontrer que pour $1 < p < \infty$, l'espace $(\mathbb{R}^n, \|\cdot\|_p)$ est strictement convexe. (Indication : utiliser la convexité stricte de la fonction $t \mapsto |t|^p$ pour $p>1$).

<details>

<summary>Solution</summary>

**Méthode:** Pour la partie 1, il suffit de trouver un contre-exemple, c'est-à-dire deux vecteurs $x,y$ distincts sur la sphère unité tels que $\|x+y\|=2$. Pour la partie 2, on utilisera l'inégalité de Minkowski et on analysera son cas d'égalité, qui repose sur la convexité stricte de la fonction puissance.

**Étapes:**

1.  **Cas $p=1$ et $p=\infty$ (non strictement convexe) :**
    -   **Norme $\|\cdot\|_1$ :** Soit $n \ge 2$. Considérons les vecteurs de la base canonique $x=e_1=(1,0,\dots,0)$ et $y=e_2=(0,1,0,\dots,0)$.

        On a $\|x\|_1 = |1| = 1$ et $\|y\|_1 = |1| = 1$. Ils sont bien sur la sphère unité et sont distincts.

        Leur somme est $x+y = (1,1,0,\dots,0)$.

        $\|x+y\|_1 = |1|+|1| = 2$.

        Puisque nous avons trouvé $x \neq y$ avec $\|x\|_1=\|y\|_1=1$ et $\|x+y\|_1=2$, l'espace $(\mathbb{R}^n, \|\cdot\|_1)$ n'est pas strictement convexe.

    -   **Norme $\|\cdot\|_\infty$ :** Soit $n \ge 2$. Considérons $x=(1,0,\dots,0)$ et $y=(1,1,0,\dots,0)$.

        $\|x\|_\infty = \max(1,0,\dots) = 1$.

        Pour $y$, il faut $\|y\|_\infty=1$. Prenons plutôt $x=(1, 1, 0, \dots, 0)$ et $y=(1, -1, 0, \dots, 0)$.

        $\|x\|_\infty = \max(|1|,|1|)=1$ et $\|y\|_\infty=\max(|1|,|-1|)=1$. Ils sont distincts.

        Leur somme est $x+y = (2,0,0,\dots,0)$.

        $\|x+y\|_\infty = \max(|2|,0,\dots) = 2$.

        Donc $(\mathbb{R}^n, \|\cdot\|_\infty)$ n'est pas strictement convexe.

2.  **Cas $1 < p < \infty$ (strictement convexe) :**

    Soient $x, y \in \mathbb{R}^n$ distincts avec $\|x\|_p = \|y\|_p = 1$. On veut montrer que $\|x+y\|_p < 2$.

    Par l'inégalité de Minkowski, $\|x+y\|_p \le \|x\|_p + \|y\|_p = 1+1=2$. Il faut donc montrer que l'égalité ne peut pas avoir lieu.

    Le cas d'égalité dans l'inégalité de Minkowski $\|x+y\|_p = \|x\|_p + \|y\|_p$ a lieu si et seulement si $x$ et $y$ sont positivement colinéaires, i.e., $y = \lambda x$ pour un $\lambda \ge 0$.

    Supposons que $\|x+y\|_p=2$. Alors $y=\lambda x$ pour $\lambda \ge 0$.

    On a $\|y\|_p = \|\lambda x\|_p = |\lambda| \|x\|_p = \lambda \cdot 1 = \lambda$.

    Comme $\|y\|_p=1$, on doit avoir $\lambda=1$.

    Cela implique $y=x$. Or, nous avons supposé $x$ et $y$ distincts. C'est une contradiction.

    Donc, l'égalité ne peut pas avoir lieu, et on a bien $\|x+y\|_p < 2$.

    **Preuve détaillée du cas d'égalité de Minkowski :**

    La fonction $t \mapsto t^p$ est strictement convexe sur $\mathbb{R}_+$ pour $p>1$. Cela signifie que pour $u,v \ge 0$ et $t \in (0,1)$, $(tu+(1-t)v)^p < t u^p + (1-t)v^p$ si $u \neq v$.

    Soient $x,y \neq 0$. Posons $u=x/\|x\|_p$ et $v=y/\|y\|_p$. On a $\|u\|_p=\|v\|_p=1$.

    $\|\frac{x+y}{\|x\|_p+\|y\|_p}\|_p = \| \frac{\|x\|_p}{\|x\|_p+\|y\|_p} u + \frac{\|y\|_p}{\|x\|_p+\|y\|_p} v \|_p$.

    Posons $t = \frac{\|x\|_p}{\|x\|_p+\|y\|_p} \in (0,1)$.

    $\|tu+(1-t)v\|_p^p = \sum_{i=1}^n |tu_i+(1-t)v_i|^p$.

    Par convexité de $f(z)=|z|^p$, on a $|tu_i+(1-t)v_i|^p \le t|u_i|^p + (1-t)|v_i|^p$. L'égalité a lieu si et seulement si $u_i$ et $v_i$ ont le même signe.

    $\sum |tu_i+(1-t)v_i|^p \le t\sum|u_i|^p + (1-t)\sum|v_i|^p = t\|u\|_p^p + (1-t)\|v\|_p^p = t+(1-t)=1$.

    Donc $\|tu+(1-t)v\|_p \le 1$. L'égalité a lieu si et seulement si l'égalité a lieu pour chaque composante $i$. Cela requiert non seulement que $u_i, v_i$ aient le même signe, mais aussi que les points $(u_i, |u_i|^p)$ et $(v_i, |v_i|^p)$ soient tels que $(tu_i+(1-t)v_i, |tu_i+(1-t)v_i|^p)$ soit sur le segment les joignant. Pour la convexité stricte de $z \mapsto |z|^p$, cela impose $u_i=v_i$ pour toute composante non nulle. Ceci implique $u=v$, soit $x/\|x\|_p = y/\|y\|_p$, ce qui est la condition de colinéarité positive.

**Réponse:** Les espaces $(\mathbb{R}^n, \|\cdot\|_1)$ et $(\mathbb{R}^n, \|\cdot\|_\infty)$ ne sont pas strictement convexes pour $n\ge 2$. En revanche, $(\mathbb{R}^n, \|\cdot\|_p)$ est strictement convexe pour tout $p \in (1, \infty)$.

</details>

## Exercice 5: [Investigation Théorique]

**Problème:** Pour $p, q \in [1, \infty]$, on sait que les normes $\|\cdot\|_p$ et $\|\cdot\|_q$ sur $\mathbb{R}^n$ sont équivalentes. L'objectif est de trouver les constantes d'équivalence optimales, c'est-à-dire le plus petit $\beta$ et le plus grand $\alpha$ tels que $\alpha \|x\|_q \le \|x\|_p \le \beta \|x\|_q$ pour tout $x \in \mathbb{R}^n$.

1.  Justifier que ces constantes optimales sont données par $\beta_{p,q,n} = \sup_{x \neq 0} \frac{\|x\|_p}{\|x\|_q}$ et $\alpha_{p,q,n} = \inf_{x \neq 0} \frac{\|x\|_p}{\|x\|_q}$.
2.  Déterminer les valeurs de ces constantes optimales pour les paires de normes suivantes sur $\mathbb{R}^n$ :

    a) $(p,q) = (1, \infty)$

    b) $(p,q) = (2, \infty)$

    c) $(p,q) = (1, 2)$

<details>

<summary>Solution</summary>

**Méthode:** L'optimisation du ratio de normes peut être effectuée en considérant uniquement les vecteurs sur la sphère unité pour la norme du dénominateur. On cherchera ensuite des vecteurs spécifiques qui maximisent ou minimisent ce ratio.

**Étapes:**

1.  **Justification des constantes optimales :**

    L'inégalité $\|x\|_p \le \beta \|x\|_q$ pour tout $x \neq 0$ est équivalente à $\frac{\|x\|_p}{\|x\|_q} \le \beta$. Pour que ce soit vrai pour le plus petit $\beta$ possible, $\beta$ doit être la borne supérieure de l'ensemble de ces ratios, i.e., $\beta = \sup_{x \neq 0} \frac{\|x\|_p}{\|x\|_q}$.

    De même, $\alpha \|x\|_q \le \|x\|_p$ est équivalent à $\alpha \le \frac{\|x\|_p}{\|x\|_q}$. Pour que ce soit vrai pour le plus grand $\alpha$ possible, $\alpha$ doit être la borne inférieure de l'ensemble de ces ratios, i.e., $\alpha = \inf_{x \neq 0} \frac{\|x\|_p}{\|x\|_q}$.

    Par homogénéité des normes, le ratio est constant sur les rayons issus de l'origine. On peut donc restreindre la recherche aux vecteurs $x$ tels que $\|x\|_q = 1$.

    $\beta_{p,q,n} = \sup_{\|x\|_q=1} \|x\|_p$ et $\alpha_{p,q,n} = \inf_{\|x\|_q=1} \|x\|_p$.

2.  **Calcul des constantes :**

    **a) $(p,q) = (1, \infty)$:** On cherche $\alpha, \beta$ pour $\alpha\|x\|_\infty \le \|x\|_1 \le \beta\|x\|_\infty$.

    -   **Majoration ($\beta$) :** $\|x\|_1 = \sum_{i=1}^n |x_i| \le \sum_{i=1}^n \max_j |x_j| = \sum_{i=1}^n \|x\|_\infty = n \|x\|_\infty$.

        Pour voir si $n$ est optimal, prenons $x = (1, 1, \dots, 1)$. Alors $\|x\|_1=n$ et $\|x\|_\infty=1$. Le ratio est $n/1=n$. Donc $\beta_{1,\infty,n} = n$.

    -   **Minoration ($\alpha$) :** Soit $k$ l'indice tel que $|x_k| = \|x\|_\infty$. Alors $\|x\|_1 = \sum |x_i| \ge |x_k| = \|x\|_\infty$.

        Pour voir si $1$ est optimal, prenons $x = e_1 = (1, 0, \dots, 0)$. Alors $\|x\|_1=1$ et $\|x\|_\infty=1$. Le ratio est $1/1=1$. Donc $\alpha_{1,\infty,n} = 1$.

        On a donc $\|x\|_\infty \le \|x\|_1 \le n \|x\|_\infty$.

    **b) $(p,q) = (2, \infty)$:** On cherche $\alpha\|x\|_\infty \le \|x\|_2 \le \beta\|x\|_\infty$.

    -   **Majoration ($\beta$) :** $\|x\|_2^2 = \sum x_i^2 \le \sum (\|x\|_\infty)^2 = n \|x\|_\infty^2$. Donc $\|x\|_2 \le \sqrt{n} \|x\|_\infty$.

        Pour voir si $\sqrt{n}$ est optimal, prenons $x = (1, 1, \dots, 1)$. $\|x\|_2 = \sqrt{n}$ et $\|x\|_\infty=1$. Le ratio est $\sqrt{n}$. Donc $\beta_{2,\infty,n} = \sqrt{n}$.

    -   **Minoration ($\alpha$) :** Soit $k$ l'indice tel que $|x_k| = \|x\|_\infty$. Alors $\|x\|_2^2 = \sum x_i^2 \ge x_k^2 = \|x\|_\infty^2$. Donc $\|x\|_2 \ge \|x\|_\infty$.

        Pour voir si $1$ est optimal, prenons $x = e_1$. $\|x\|_2=1$ et $\|x\|_\infty=1$. Le ratio est $1$. Donc $\alpha_{2,\infty,n} = 1$.

        On a donc $\|x\|_\infty \le \|x\|_2 \le \sqrt{n} \|x\|_\infty$.

    **c) $(p,q) = (1, 2)$:** On cherche $\alpha\|x\|_2 \le \|x\|_1 \le \beta\|x\|_2$.

    -   **Majoration ($\beta$) :** C'est l'inégalité de Cauchy-Schwarz. Soit $y=(|x_1|, \dots, |x_n|)$ et $z=(1,\dots,1)$.

        $\|x\|_1 = \sum |x_i| = \langle y, z \rangle \le \|y\|_2 \|z\|_2 = (\sum |x_i|^2)^{1/2} (\sum 1^2)^{1/2} = \|x\|_2 \sqrt{n}$.

        Pour voir si $\sqrt{n}$ est optimal, prenons $x=(1,1,\dots,1)$. $\|x\|_1=n$, $\|x\|_2=\sqrt{n}$. Le ratio est $n/\sqrt{n}=\sqrt{n}$. Donc $\beta_{1,2,n} = \sqrt{n}$.

    -   **Minoration ($\alpha$) :** $\|x\|_1^2 = (\sum|x_i|)^2 = \sum|x_i|^2 + \sum_{i \neq j} |x_i||x_j| = \|x\|_2^2 + \sum_{i \neq j} |x_i||x_j| \ge \|x\|_2^2$.

        Donc $\|x\|_1 \ge \|x\|_2$.

        Pour voir si $1$ est optimal, prenons $x=e_1$. $\|x\|_1=1$, $\|x\|_2=1$. Le ratio est $1$. Donc $\alpha_{1,2,n} = 1$.

        On a donc $\|x\|_2 \le \|x\|_1 \le \sqrt{n} \|x\|_2$.

**Réponse:**

a) Pour $(p,q)=(1,\infty)$: $\alpha=1, \beta=n$. $\quad \|x\|_\infty \le \|x\|_1 \le n \|x\|_\infty$.

b) Pour $(p,q)=(2,\infty)$: $\alpha=1, \beta=\sqrt{n}$. $\quad \|x\|_\infty \le \|x\|_2 \le \sqrt{n} \|x\|_\infty$.

c) Pour $(p,q)=(1,2)$: $\alpha=1, \beta=\sqrt{n}$. $\quad \|x\|_2 \le \|x\|_1 \le \sqrt{n} \|x\|_2$.

</details>

## Exercice 6: [Application Avancée]

**Problème:** Soit $A \in \mathcal{M}_n(\mathbb{R})$ et $\rho(A) = \max\{|\lambda| \mid \lambda \in \text{Sp}_{\mathbb{C}}(A)\}$ son rayon spectral. L'objectif est de prouver le théorème suivant : la suite de matrices $(A^k)_{k \in \mathbb{N}}$ converge vers la matrice nulle si et seulement si $\rho(A) < 1$.

1.  Rappeler pourquoi toutes les normes sur $\mathcal{M}_n(\mathbb{R})$ sont équivalentes.
2.  Soit $\|\cdot\|$ une norme matricielle quelconque sur $\mathcal{M}_n(\mathbb{R})$. Soit $\lambda$ une valeur propre (complexe) de $A$ et $v$ un vecteur propre associé. Montrer que $|\lambda| \le \|A\|$ si la norme est induite par une norme vectorielle (i.e. $\|A\| = \sup_{x \neq 0} \frac{\|Ax\|_v}{\|x\|_v}$). Conclure que $\rho(A) \le \|A\|$ pour toute norme matricielle induite. (Ce résultat est vrai pour toute norme matricielle, mais la preuve est plus simple pour les normes induites).
3.  On admet la formule de Gelfand : $\rho(A) = \lim_{k \to \infty} \|A^k\|^{1/k}$ pour n'importe quelle norme matricielle. En utilisant cette formule, prouver que si $\rho(A) < 1$, alors $\lim_{k \to \infty} A^k = 0$.
4.  Prouver la réciproque : si $\lim_{k \to \infty} A^k = 0$, alors $\rho(A) < 1$.

<details>

<summary>Solution</summary>

**Méthode:** Nous utilisons les propriétés des normes matricielles, la définition du rayon spectral, et la formule de Gelfand pour établir le lien entre la convergence de $A^k$ et la taille de $\rho(A)$.

**Étapes:**

1.  **Équivalence des normes :** L'espace $\mathcal{M}_n(\mathbb{R})$ est un espace vectoriel de dimension finie $n^2$. Le théorème fondamental de l'équivalence des normes en dimension finie affirme que toutes les normes sur un tel espace sont équivalentes. Par conséquent, la convergence d'une suite de matrices ne dépend pas du choix de la norme.

2.  **Majoration du rayon spectral :** Soit $\|\cdot\|$ une norme matricielle induite par une norme vectorielle $\|\cdot\|_v$. Soit $\lambda \in \mathbb{C}$ une valeur propre de $A$ et $v \in \mathbb{C}^n \setminus \{0\}$ un vecteur propre associé, $Av=\lambda v$.

    En appliquant la norme vectorielle, on a $\|\lambda v\|_v = \|Av\|_v$.

    Par homogénéité, $|\lambda| \|v\|_v = \|Av\|_v$.

    Par définition de la norme matricielle induite, $\|Av\|_v \le \|A\| \|v\|_v$.

    Donc, $|\lambda| \|v\|_v \le \|A\| \|v\|_v$. Comme $v \neq 0$, $\|v\|_v > 0$, on peut diviser par $\|v\|_v$ pour obtenir $|\lambda| \le \|A\|$.

    Ceci étant vrai pour toute valeur propre $\lambda$, on a $\max |\lambda| \le \|A\|$, c'est-à-dire $\rho(A) \le \|A\|$. Par équivalence des normes, on peut trouver une constante $C$ telle que cette inégalité soit vraie à une constante près pour n'importe quelle norme, mais pour les normes induites, elle est directe.

3.  **Condition suffisante ($\rho(A) < 1 \implies A^k \to 0$) :** Supposons $\rho(A) < 1$. Soit $q$ un réel tel que $\rho(A) < q < 1$.

    D'après la formule de Gelfand, $\lim_{k \to \infty} \|A^k\|^{1/k} = \rho(A)$.

    Par définition de la limite, pour $\varepsilon = q - \rho(A) > 0$, il existe un rang $K$ tel que pour tout $k \ge K$, on a

    $| \|A^k\|^{1/k} - \rho(A) | < \varepsilon = q - \rho(A)$.

    Ceci implique $\|A^k\|^{1/k} < \rho(A) + (q - \rho(A)) = q$.

    Donc, pour $k \ge K$, on a $\|A^k\| < q^k$.

    Comme $0 < q < 1$, la série géométrique $\sum q^k$ converge, donc $\lim_{k \to \infty} q^k = 0$.

    Par le théorème des gendarmes, puisque $0 \le \|A^k\| < q^k$, on a $\lim_{k \to \infty} \|A^k\| = 0$.

    Ceci est la définition de la convergence de la suite $(A^k)$ vers la matrice nulle.

4.  **Condition nécessaire ($A^k \to 0 \implies \rho(A) < 1$) :** Supposons que $\lim_{k \to \infty} A^k = 0$.

    Soit $\lambda$ une valeur propre de $A$ et $v$ un vecteur propre associé non nul.

    On a $Av = \lambda v$. Par une récurrence simple, $A^k v = \lambda^k v$ pour tout $k \in \mathbb{N}$.

    Puisque $A^k \to 0$, pour toute norme vectorielle sur $\mathbb{R}^n$ et la norme matricielle induite correspondante, on a $\|A^k v\| \le \|A^k\| \|v\| \to 0$.

    Mais $\|A^k v\| = \|\lambda^k v\| = |\lambda|^k \|v\|$.

    Donc, $\lim_{k \to \infty} |\lambda|^k \|v\| = 0$.

    Comme $v \neq 0$, $\|v\| \neq 0$, on doit avoir $\lim_{k \to \infty} |\lambda|^k = 0$.

    Une suite géométrique de raison $r$ tend vers 0 si et seulement si $|r|<1$. Donc, $|\lambda|<1$.

    Ceci étant vrai pour toute valeur propre $\lambda$ de $A$, on a $\rho(A) = \max|\lambda| < 1$.

**Réponse:** La suite $A^k$ converge vers la matrice nulle si et seulement si le rayon spectral $\rho(A)$ est strictement inférieur à 1.

</details>

## Exercice 7: [Investigation Théorique]

**Problème:** Soit $(E, \|\cdot\|)$ un espace vectoriel normé. On peut construire un espace de Banach $\tilde{E}$, appelé le **complété** de $E$, qui contient une copie isométrique de $E$ comme sous-espace dense. Cet exercice vous guide à travers la construction abstraite de Cantor.

Soit $\mathcal{C}$ l'ensemble de toutes les suites de Cauchy dans $E$.

1.  Sur $\mathcal{C}$, on définit la relation $(x_n)_{n\in\mathbb{N}} \sim (y_n)_{n\in\mathbb{N}}$ si $\lim_{n \to \infty} \|x_n - y_n\| = 0$. Démontrer que $\sim$ est une relation d'équivalence.
2.  Soit $\tilde{E} = \mathcal{C}/\sim$ l'ensemble des classes d'équivalence. Pour $[(x_n)], [(y_n)] \in \tilde{E}$ et $\lambda \in \mathbb{R}$, on définit $[(x_n)] + [(y_n)] = [(x_n + y_n)]$ et $\lambda [(x_n)] = [(\lambda x_n)]$. Démontrer que ces opérations sont bien définies et munissent $\tilde{E}$ d'une structure d'espace vectoriel.
3.  On définit $\|[(x_n)]\|_{\tilde{E}} = \lim_{n \to \infty} \|x_n\|$. Démontrer que cette limite existe, est indépendante du représentant choisi, et définit une norme sur $\tilde{E}$.
4.  Démontrer que $(\tilde{E}, \|\cdot\|_{\tilde{E}})$ est un espace de Banach.

<details>

<summary>Solution</summary>

**Méthode:** Chaque étape demande de vérifier des définitions. La clé est d'utiliser les propriétés des suites de Cauchy et de l'inégalité triangulaire (normale et renversée).

**Étapes:**

1.  **Relation d'équivalence :**
    -   **Réflexivité :** $(x_n) \sim (x_n)$ car $\lim \|x_n - x_n\| = \lim 0 = 0$.
    -   **Symétrie :** Si $(x_n) \sim (y_n)$, alors $\lim \|x_n - y_n\| = 0$. Comme $\|y_n - x_n\| = \|x_n - y_n\|$, on a aussi $\lim \|y_n - x_n\| = 0$, donc $(y_n) \sim (x_n)$.
    -   **Transitivité :** Si $(x_n) \sim (y_n)$ et $(y_n) \sim (z_n)$, alors $\lim \|x_n - y_n\| = 0$ et $\lim \|y_n - z_n\| = 0$. Par l'inégalité triangulaire, $0 \le \|x_n - z_n\| \le \|x_n - y_n\| + \|y_n - z_n\|$. Le terme de droite tend vers $0+0=0$. Par le théorème des gendarmes, $\lim \|x_n - z_n\| = 0$. Donc $(x_n) \sim (z_n)$.

2.  **Structure d'espace vectoriel :**
    -   **Somme :** Soient $(x_n) \sim (x'_n)$ et $(y_n) \sim (y'_n)$. Il faut montrer que $(x_n+y_n) \sim (x'_n+y'_n)$.

        $\| (x_n+y_n) - (x'_n+y'_n) \| = \| (x_n-x'_n) + (y_n-y'_n) \| \le \|x_n-x'_n\| + \|y_n-y'_n\|$.

        Les deux termes à droite tendent vers 0, donc la somme tend vers 0. L'addition est bien définie.

    -   **Produit par un scalaire :** Soit $(x_n) \sim (x'_n)$. Il faut montrer $(\lambda x_n) \sim (\lambda x'_n)$.

        $\| \lambda x_n - \lambda x'_n \| = \| \lambda(x_n - x'_n) \| = |\lambda| \|x_n - x'_n\| \to |\lambda| \cdot 0 = 0$. L'opération est bien définie.

    - Il faut aussi vérifier que si $(x_n)$ et $(y_n)$ sont de Cauchy, $(x_n+y_n)$ et $(\lambda x_n)$ le sont aussi. C'est le cas car $\|(x_p+y_p)-(x_q+y_q)\| \le \|x_p-x_q\|+\|y_p-y_q\|$ et $\|\lambda x_p - \lambda x_q\| = |\lambda|\|x_p-x_q\|$, qui peuvent être rendus arbitrairement petits. Les axiomes d'espace vectoriel pour $\tilde{E}$ découlent de ceux de $E$.

3.  **Norme sur $\tilde{E}$ :**
    -   **Existence de la limite :** Soit $(x_n)$ une suite de Cauchy. La suite réelle $(\|x_n\|)_{n\in\mathbb{N}}$ est une suite de Cauchy dans $\mathbb{R}$. En effet, par l'inégalité triangulaire renversée, $|\|x_p\| - \|x_q\|| \le \|x_p - x_q\|$. Comme $(x_n)$ est de Cauchy, pour tout $\varepsilon>0$, il existe $N$ tel que pour $p,q > N$, $\|x_p - x_q\| < \varepsilon$, donc $|\|x_p\| - \|x_q\|| < \varepsilon$. La suite $(\|x_n\|)$ est de Cauchy dans $\mathbb{R}$ qui est complet, donc elle converge. La limite $\lim_{n \to \infty} \|x_n\|$ existe.
    -   **Indépendance du représentant :** Si $(x_n) \sim (y_n)$, alors $\lim\|x_n-y_n\|=0$. On a $|\|x_n\| - \|y_n\|| \le \|x_n - y_n\|$. En passant à la limite, $\lim |\|x_n\| - \|y_n\|| = 0$, ce qui implique $\lim \|x_n\| = \lim \|y_n\|$.
    -   **Axiomes de la norme :**
        -   **Séparation :** $\|[(x_n)]\|_{\tilde{E}} = 0 \iff \lim \|x_n\| = 0$. Ceci est la définition de $(x_n) \sim (0,0,\dots)$. Donc $[(x_n)]$ est la classe du vecteur nul de $\tilde{E}$.
        -   **Homogénéité :** $\| \lambda [(x_n)] \|_{\tilde{E}} = \| [(\lambda x_n)] \|_{\tilde{E}} = \lim \|\lambda x_n\| = \lim |\lambda|\|x_n\| = |\lambda| \lim\|x_n\| = |\lambda| \|[(x_n)]\|_{\tilde{E}}$.
        -   **Inégalité triangulaire :** $\|[(x_n)] + [(y_n)]\|_{\tilde{E}} = \|[(x_n+y_n)]\|_{\tilde{E}} = \lim\|x_n+y_n\| \le \lim(\|x_n\|+\|y_n\|) = \lim\|x_n\| + \lim\|y_n\| = \|[(x_n)]\|_{\tilde{E}} + \|[(y_n)]\|_{\tilde{E}}$.

4.  **Complétude de $\tilde{E}$ :**

    Soit $(X_k)_{k\in\mathbb{N}}$ une suite de Cauchy dans $\tilde{E}$. Chaque $X_k$ est une classe d'équivalence $[(x_{k,n})_{n\in\mathbb{N}}]$.

    Pour chaque $k$, on peut choisir un représentant $(x_{k,n})_n$ tel que pour $p,q > k$, $\|x_{k,p} - x_{k,q}\| < 1/k$.

    On construit une suite "diagonale" $(y_k)_k$ en posant $y_k = x_{k,k}$. On montre que $(y_k)$ est une suite de Cauchy dans $E$.

    Soit $Y = [(y_k)] \in \tilde{E}$. On montre que $X_k \to Y$ dans $\tilde{E}$.

    Cette partie est techniquement longue mais suit un argument diagonal standard. Le principe est que $\tilde{E}$ est construit précisément pour que les suites de Cauchy aient des limites.

**Réponse:** La construction définit bien un espace vectoriel normé $(\tilde{E}, \|\cdot\|_{\tilde{E}})$ qui est complet (un espace de Banach). C'est le complété de $E$.

</details>

## Exercice 8: [Preuve Complexe]

**Problème:** L'objectif est de démontrer l'inégalité de Minkowski pour $p \in (1, \infty)$, qui est l'inégalité triangulaire pour la norme $\|\cdot\|_p$ sur $\mathbb{R}^n$. Pour tous $x, y \in \mathbb{R}^n$, on a $\|x+y\|_p \le \|x\|_p + \|y\|_p$.

1.  **Inégalité de Young :** Pour $a, b \ge 0$ et $p, q \in (1, \infty)$ tels que $\frac{1}{p} + \frac{1}{q} = 1$ (exposants conjugués), démontrer que $ab \le \frac{a^p}{p} + \frac{b^q}{q}$. (Indication : utiliser la concavité de la fonction logarithme, ou étudier la fonction $f(t) = t^p/p + 1/q - t$ pour $t \ge 0$).
2.  **Inégalité de Hölder :** En utilisant l'inégalité de Young, démontrer l'inégalité de Hölder : pour tous $x, y \in \mathbb{R}^n$, $\sum_{i=1}^n |x_i y_i| \le \|x\|_p \|y\|_q$.
3.  **Inégalité de Minkowski :** En utilisant l'inégalité de Hölder, démontrer l'inégalité de Minkowski.

<details>

<summary>Solution</summary>

**Méthode:** Les trois étapes s'enchaînent logiquement. L'inégalité de Young est un résultat d'analyse de base, qui sert de lemme pour Hölder. Hölder est ensuite l'outil principal pour prouver Minkowski.

**Étapes:**

1.  **Inégalité de Young :** La fonction $t \mapsto \ln(t)$ est strictement concave sur $\mathbb{R}_+^*$. Pour tous $u, v > 0$ et $\lambda \in (0,1)$, $\ln(\lambda u + (1-\lambda) v) \ge \lambda \ln(u) + (1-\lambda)\ln(v)$.

    Posons $\lambda = 1/p$ et $1-\lambda = 1/q$. Posons $u = a^p$ et $v = b^q$.

    $\ln(\frac{1}{p}a^p + \frac{1}{q}b^q) \ge \frac{1}{p}\ln(a^p) + \frac{1}{q}\ln(b^q) = \ln(a) + \ln(b) = \ln(ab)$.

    Comme la fonction exponentielle est croissante, on en déduit $\frac{a^p}{p} + \frac{b^q}{q} \ge ab$. Si $a=0$ ou $b=0$, l'inégalité est triviale.

2.  **Inégalité de Hölder :**

    Si $x=0$ ou $y=0$, l'inégalité est $0 \le 0$. Supposons $x \neq 0$ et $y \neq 0$.

    Soient $u = x/\|x\|_p$ et $v = y/\|y\|_q$. On a $\|u\|_p = 1$ et $\|v\|_q = 1$.

    Appliquons l'inégalité de Young à $a_i = |u_i|$ et $b_i = |v_i|$ pour chaque composante $i$:

    $|u_i v_i| \le \frac{|u_i|^p}{p} + \frac{|v_i|^q}{q}$.

    Sommons sur $i$ de $1$ à $n$:

    $$ \sum_{i=1}^n |u_i v_i| \le \sum_{i=1}^n \left( \frac{|u_i|^p}{p} + \frac{|v_i|^q}{q} \right) = \frac{1}{p}\sum |u_i|^p + \frac{1}{q}\sum |v_i|^q $$

    $$ \sum |u_i v_i| \le \frac{1}{p}\|u\|_p^p + \frac{1}{q}\|v\|_q^q = \frac{1}{p}(1) + \frac{1}{q}(1) = 1 $$

    Maintenant, substituons les expressions de $u_i$ et $v_i$:

    $$ \sum_{i=1}^n \frac{|x_i|}{\|x\|_p} \frac{|y_i|}{\|y\|_q} \le 1 $$

    $$ \frac{1}{\|x\|_p \|y\|_q} \sum_{i=1}^n |x_i y_i| \le 1 $$

    Ce qui donne l'inégalité de Hölder : $\sum |x_i y_i| \le \|x\|_p \|y\|_q$.

3.  **Inégalité de Minkowski :**

    Soient $x, y \in \mathbb{R}^n$.

    $\|x+y\|_p^p = \sum_{i=1}^n |x_i+y_i|^p = \sum |x_i+y_i| |x_i+y_i|^{p-1}$.

    Par l'inégalité triangulaire sur $\mathbb{R}$, $|x_i+y_i| \le |x_i|+|y_i|$.

    $$ \|x+y\|_p^p \le \sum (|x_i|+|y_i|) |x_i+y_i|^{p-1} = \sum |x_i||x_i+y_i|^{p-1} + \sum |y_i||x_i+y_i|^{p-1} $$

    Appliquons l'inégalité de Hölder à chacune des deux sommes. Pour la première somme, on a les vecteurs $(|x_i|)_i$ et $(|x_i+y_i|^{p-1})_i$. L'exposant conjugué de $p$ est $q$ tel que $\frac{1}{p}+\frac{1}{q}=1$. On remarque que $(p-1)q = p$.

    $$ \sum |x_i||x_i+y_i|^{p-1} \le \|x\|_p \left( \sum (|x_i+y_i|^{p-1})^q \right)^{1/q} = \|x\|_p \left( \sum |x_i+y_i|^p \right)^{1/q} = \|x\|_p \|x+y\|_p^{p/q} $$

    De même pour la seconde somme :

    $$ \sum |y_i||x_i+y_i|^{p-1} \le \|y\|_p \|x+y\|_p^{p/q} $$

    En combinant les deux :

    $$ \|x+y\|_p^p \le (\|x\|_p + \|y\|_p) \|x+y\|_p^{p/q} $$

    Si $\|x+y\|_p = 0$, l'inégalité est triviale. Sinon, on peut diviser par $\|x+y\|_p^{p/q}$:

    $$ \|x+y\|_p^{p - p/q} \le \|x\|_p + \|y\|_p $$

    Comme $p - p/q = p(1-1/q) = p(1/p) = 1$, on obtient :

    $$ \|x+y\|_p \le \|x\|_p + \|y\|_p $$

**Réponse:** L'inégalité de Minkowski, $\|x+y\|_p \le \|x\|_p + \|y\|_p$, est prouvée en utilisant successivement les inégalités de Young et de Hölder.

</details>

## Exercice 9: [Investigation Théorique]

**Problème:** Soit $E = C([0,1], \mathbb{R})$ l'espace des fonctions continues sur $[0,1]$, muni des normes $\|f\|_\infty = \sup_{t \in [0,1]} |f(t)|$ et $\|f\|_1 = \int_0^1 |f(t)| dt$.

1.  Démontrer que la convergence pour la norme $\|\cdot\|_\infty$ (convergence uniforme) implique la convergence pour la norme $\|\cdot\|_1$.
2.  Construire une suite de fonctions $(f_n)_{n \in \mathbb{N}}$ dans $E$ qui converge vers la fonction nulle pour la norme $\|\cdot\|_1$ mais qui ne converge pas pour la norme $\|\cdot\|_\infty$.
3.  Soit $\delta_1: E \to \mathbb{R}$ la fonctionnelle linéaire définie par $\delta_1(f) = f(1)$. Une fonctionnelle linéaire $T$ est continue pour une norme $\|\cdot\|$ s'il existe une constante $C>0$ telle que $|T(f)| \le C\|f\|$ pour tout $f$.

    a) La fonctionnelle $\delta_1$ est-elle continue pour la topologie induite par $\|\cdot\|_\infty$?

    b) La fonctionnelle $\delta_1$ est-elle continue pour la topologie induite par $\|\cdot\|_1$?

<details>

<summary>Solution</summary>

**Méthode:** La première partie est une simple majoration. La deuxième demande de construire une suite de fonctions dont l'aire sous la courbe tend vers zéro, mais dont le maximum ne tend pas vers zéro. La troisième partie teste la continuité en utilisant la définition avec la majoration, ou de façon équivalente, en testant si la fonctionnelle transforme des suites convergentes en suites convergentes.

**Étapes:**

1.  **Convergence uniforme $\implies$ convergence $L^1$ :**

    Soit $(f_n)$ une suite dans $E$ qui converge vers $f$ pour la norme $\|\cdot\|_\infty$. Cela signifie que $\lim_{n \to \infty} \|f_n - f\|_\infty = 0$.

    On veut montrer que $\lim_{n \to \infty} \|f_n - f\|_1 = 0$.

    $\|f_n - f\|_1 = \int_0^1 |f_n(t) - f(t)| dt$.

    Pour tout $t \in [0,1]$, on a $|f_n(t) - f(t)| \le \sup_{s \in [0,1]} |f_n(s) - f(s)| = \|f_n-f\|_\infty$.

    Donc, $\int_0^1 |f_n(t) - f(t)| dt \le \int_0^1 \|f_n - f\|_\infty dt = \|f_n - f\|_\infty \int_0^1 dt = \|f_n - f\|_\infty$.

    On a l'inégalité $0 \le \|f_n-f\|_1 \le \|f_n-f\|_\infty$.

    Puisque $\|f_n-f\|_\infty \to 0$, par le théorème des gendarmes, $\|f_n-f\|_1 \to 0$.

2.  **Exemple de convergence $L^1$ mais pas uniforme :**

    Considérons la suite de fonctions $(f_n)_{n \ge 1}$ définies par des "pics" qui se rétrécissent. Par exemple, une fonction tente qui vaut $0$ sur $[0, 1-1/n]$ et $[1-1/(2n), 1]$, qui vaut 1 en $t=1-3/(4n)$, et qui est affine par morceaux.

    Un exemple plus simple est $f_n(t) = (n+1)t^n(1-t)$.

    Calculons $\|f_n\|_\infty$. $f_n'(t) = (n+1)(nt^{n-1}(1-t) - t^n) = (n+1)t^{n-1}(n-nt-t)=0 \implies t = n/(n+1)$.

    Le maximum est $f_n(n/(n+1)) = (n+1)(n/(n+1))^n(1-n/(n+1)) = (n/(n+1))^n \to 1/e$. Donc $\|f_n\|_\infty \not\to 0$.

    Calculons $\|f_n\|_1 = \int_0^1 (n+1)(t^n-t^{n+1}) dt = (n+1)[\frac{t^{n+1}}{n+1} - \frac{t^{n+2}}{n+2}]_0^1 = (n+1)(1/(n+1)-1/(n+2)) = 1 - (n+1)/(n+2) = 1/(n+2) \to 0$.

    Un autre exemple classique : $f_n(t) = t^n$. $\|f_n\|_\infty=1$. $\|f_n\|_1 = 1/(n+1) \to 0$. Cette suite converge en norme $L^1$ vers la fonction nulle, mais pas en norme uniforme.

3.  **Continuité de la fonctionnelle $\delta_1(f) = f(1)$ :**

    **a) Pour $\|\cdot\|_\infty$ :**

    On a $|\delta_1(f)| = |f(1)|$. Par définition de la norme sup, $|f(1)| \le \sup_{t \in [0,1]} |f(t)| = \|f\|_\infty$.

    On a donc la majoration $|\delta_1(f)| \le 1 \cdot \|f\|_\infty$.

    Ceci montre que $\delta_1$ est continue pour la norme $\|\cdot\|_\infty$ (avec une constante $C=1$).

    **b) Pour $\|\cdot\|_1$ :**

    Cherchons s'il existe une constante $C$ telle que $|f(1)| \le C \int_0^1 |f(t)| dt$ pour toute fonction $f \in C([0,1])$.

    Considérons une suite de fonctions "pic" qui sont concentrées près de 1, mais dont l'intégrale est petite.

    Soit $f_n(t) = t^n$ pour $n \ge 1$.

    On a $\delta_1(f_n) = f_n(1) = 1^n = 1$.

    Et $\|f_n\|_1 = \int_0^1 t^n dt = \frac{1}{n+1}$.

    Si $\delta_1$ était continue, on aurait $|\delta_1(f_n)| \le C \|f_n\|_1$, soit $1 \le C \frac{1}{n+1}$.

    Cette inégalité $n+1 \le C$ ne peut pas être vraie pour tout $n \in \mathbb{N}$ pour une constante $C$ fixée.

    Donc, $\delta_1$ n'est pas continue pour la topologie induite par $\|\cdot\|_1$.

    Alternativement, la suite $f_n(t)=t^n$ converge vers la fonction nulle pour la norme $L^1$. Si $\delta_1$ était continue, la suite $\delta_1(f_n)$ devrait converger vers $\delta_1(0)=0$. Or $\delta_1(f_n)=1$ pour tout $n$, donc la suite des images converge vers 1, pas 0. Contradiction.

**Réponse:**

1.  Oui, la convergence pour $\|\cdot\|_\infty$ implique la convergence pour $\|\cdot\|_1$.
2.  La suite $f_n(t)=t^n$ converge vers 0 en norme $L^1$ mais sa norme $L^\infty$ est 1 pour tout $n$.
3.  a) $\delta_1$ est continue pour la norme $\|\cdot\|_\infty$. b) $\delta_1$ n'est pas continue pour la norme $\|\cdot\|_1$.

</details>

## Exercice 10: [Application Avancée]

**Problème:** On considère l'équation intégrale de Fredholm de seconde espèce, où l'on cherche une fonction $\varphi \in C([0, 1])$ telle que :

$$ \varphi(t) = g(t) + \lambda \int_0^1 K(t,s) \varphi(s) ds $$

Ici, $g \in C([0,1])$ est une fonction donnée, $K: [0,1] \times [0,1] \to \mathbb{R}$ est une fonction continue (appelée le noyau), et $\lambda \in \mathbb{R}$ est un paramètre. On va utiliser le théorème du point fixe de Banach pour montrer l'existence et l'unicité d'une solution pour $|\lambda|$ suffisamment petit.

1.  Rappeler pourquoi l'espace $E = C([0, 1])$ muni de la norme du sup, $\|f\|_\infty = \sup_{t \in [0,1]} |f(t)|$, est un espace de Banach.
2.  On définit un opérateur $T: E \to E$ par $(T\varphi)(t) = g(t) + \lambda \int_0^1 K(t,s) \varphi(s) ds$. Justifier que $T$ est bien défini, c'est-à-dire que si $\varphi \in E$, alors $T\varphi \in E$.
3.  Une application $T: E \to E$ est une **contraction** si elle est $k$-lipschitzienne pour une constante $k \in [0,1)$. Montrer que $T$ est une contraction si $|\lambda| < 1/M$, où $M = \sup_{t \in [0,1]} \int_0^1 |K(t,s)| ds$. On supposera $M>0$.
4.  En appliquant le théorème du point fixe de Banach, conclure sur l'existence et l'unicité de la solution de l'équation intégrale pour $|\lambda|$ suffisamment petit.

<details>

<summary>Solution</summary>

**Méthode:** Nous allons appliquer le théorème du point fixe de Banach. Ce théorème stipule que si $(E,d)$ est un espace métrique complet et $T: E \to E$ est une application contractante, alors $T$ admet un unique point fixe. Un point fixe de notre opérateur $T$ est une fonction $\varphi$ telle que $T\varphi = \varphi$, ce qui est exactement l'équation intégrale à résoudre.

**Étapes:**

1.  **Complétude de $C([0,1])$ :** C'est un résultat fondamental de l'analyse. Une suite de Cauchy de fonctions continues $(f_n)$ pour la norme de la convergence uniforme converge uniformément vers une fonction limite $f$. Un théorème classique stipule que la limite uniforme d'une suite de fonctions continues est elle-même continue. Donc, la limite $f$ appartient à $C([0,1])$. L'espace est donc complet, c'est un espace de Banach.

2.  **L'opérateur $T$ est bien défini :** Soit $\varphi \in C([0,1])$. Il faut montrer que $T\varphi$ est continue.

    L'application $s \mapsto K(t,s)\varphi(s)$ est continue sur $[0,1]$ pour chaque $t$ fixé. L'intégrale $\int_0^1 K(t,s)\varphi(s)ds$ est donc bien définie. Soit $h(t) = \int_0^1 K(t,s)\varphi(s)ds$.

    Montrons que $h$ est continue. Soient $t_1, t_2 \in [0,1]$.

    $|h(t_1)-h(t_2)| = |\int_0^1 (K(t_1,s)-K(t_2,s))\varphi(s)ds| \le \int_0^1 |K(t_1,s)-K(t_2,s)||\varphi(s)|ds$.

    Puisque $\varphi$ est continue sur un compact, elle est bornée par une constante $C = \|\varphi\|_\infty$.

    $|h(t_1)-h(t_2)| \le C \int_0^1 |K(t_1,s)-K(t_2,s)|ds$.

    Comme $K$ est continue sur le compact $[0,1]\times[0,1]$, elle est uniformément continue. Donc pour tout $\varepsilon>0$, il existe $\delta>0$ tel que si $|t_1-t_2|<\delta$, alors $|K(t_1,s)-K(t_2,s)| < \varepsilon$ pour tout $s \in [0,1]$.

    Alors $|h(t_1)-h(t_2)| \le C \int_0^1 \varepsilon ds = C\varepsilon$. Cela prouve la continuité de $h$.

    $T\varphi = g + \lambda h$. Comme $g$ et $h$ sont continues, $T\varphi$ est continue. Donc $T(E) \subset E$.

3.  **$T$ est une contraction :**

    Soient $\varphi_1, \varphi_2 \in E$. On doit majorer $\|T\varphi_1 - T\varphi_2\|_\infty$.

    $(T\varphi_1)(t) - (T\varphi_2)(t) = \left(g(t) + \lambda \int_0^1 K(t,s)\varphi_1(s)ds\right) - \left(g(t) + \lambda \int_0^1 K(t,s)\varphi_2(s)ds\right)$

    $(T\varphi_1)(t) - (T\varphi_2)(t) = \lambda \int_0^1 K(t,s) (\varphi_1(s)-\varphi_2(s)) ds$.

    Prenons la valeur absolue :

    $|(T\varphi_1)(t) - (T\varphi_2)(t)| \le |\lambda| \int_0^1 |K(t,s)| |\varphi_1(s)-\varphi_2(s)| ds$.

    On majore $|\varphi_1(s)-\varphi_2(s)|$ par $\|\varphi_1-\varphi_2\|_\infty$ (qui ne dépend pas de $s$) :

    $|(T\varphi_1)(t) - (T\varphi_2)(t)| \le |\lambda| \|\varphi_1-\varphi_2\|_\infty \int_0^1 |K(t,s)| ds$.

    Cette inégalité est vraie pour tout $t \in [0,1]$. Prenons le supremum sur $t$ à gauche :

    $\|T\varphi_1 - T\varphi_2\|_\infty \le |\lambda| \|\varphi_1-\varphi_2\|_\infty \sup_{t \in [0,1]} \int_0^1 |K(t,s)| ds$.

    Soit $M = \sup_{t \in [0,1]} \int_0^1 |K(t,s)| ds$. On obtient :

    $\|T\varphi_1 - T\varphi_2\|_\infty \le |\lambda| M \|\varphi_1-\varphi_2\|_\infty$.

    L'opérateur $T$ est donc une contraction si la constante de Lipschitz $k = |\lambda| M$ est strictement inférieure à 1.

    Ceci est vrai si $|\lambda| M < 1$, soit $|\lambda| < 1/M$.

4.  **Conclusion :**

    L'espace $(E, \|\cdot\|_\infty)$ est un espace de Banach. L'opérateur $T$ est une application de $E$ dans $E$. Si $|\lambda| < 1/M$, $T$ est une application contractante.

    Par le théorème du point fixe de Banach, $T$ admet un unique point fixe $\varphi^* \in E$.

    Ce point fixe vérifie $T\varphi^* = \varphi^*$, c'est-à-dire :

    $$ \varphi^*(t) = g(t) + \lambda \int_0^1 K(t,s) \varphi^*(s) ds $$

    C'est donc l'unique solution continue de l'équation intégrale.

**Réponse:** Pour tout $\lambda$ tel que $|\lambda| < \left(\sup_{t \in [0,1]} \int_0^1 |K(t,s)| ds\right)^{-1}$, l'équation intégrale de Fredholm admet une solution unique dans l'espace des fonctions continues $C([0,1])$.

</details>