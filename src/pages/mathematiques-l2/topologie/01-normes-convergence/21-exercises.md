---
id: 408ddf79
type: exercises
order: 21
title: Normes sur Rⁿ et suites convergentes - exercices (B)
tags:
  - normes
  - suites
  - convergence
  - topologie
  - analyse
createdAt: '2025-10-12T16:01:06.272Z'
level: pro
course: Topologie I
courseId: 34e61f8e
chapter: Normes sur Rⁿ et suites convergentes
chapterId: 629d2832
---
# Exercices "Normes sur Rⁿ et suites convergentes" (B)

## Exercice 1: [Investigation Théorique]

**Problème:** Soit $E$ un espace vectoriel réel. Une partie $C \subset E$ est dite **convexe** si pour tous $x, y \in C$ et tout $t \in [0, 1]$, on a $tx + (1-t)y \in C$. Elle est dite **symétrique** par rapport à l'origine si pour tout $x \in C$, on a $-x \in C$. Elle est dite **absorbante** si pour tout $x \in E$, il existe $\alpha > 0$ tel que $\alpha x \in C$.

Soit $B \subset E$ un ensemble convexe, symétrique par rapport à l'origine, absorbant, et tel que si $x \in B$ et $|\lambda| \le 1$, alors $\lambda x \in B$. De plus, on suppose que $B$ ne contient aucune droite passant par l'origine, c'est-à-dire, pour tout $x \neq 0$, il existe $\beta > 0$ tel que $\beta x \notin B$.

On définit la **jauge de Minkowski** (ou fonctionnelle de Minkowski) associée à $B$ par l'application $p_B : E \to \mathbb{R}_+$ donnée par :

$$ p_B(x) = \inf \{ \alpha > 0 \mid x \in \alpha B \} $$

où $\alpha B = \{ \alpha y \mid y \in B \}$.

Démontrer que $p_B$ est une norme sur $E$.

<details>

<summary>Solution</summary>

**Méthode:** Nous allons vérifier un par un les trois axiomes d'une norme (séparation, homogénéité absolue, inégalité triangulaire) en utilisant les propriétés géométriques de l'ensemble $B$.

**Étapes:**

1.  **Montrons que $p_B$ est bien définie.**

    Pour tout $x \in E$, l'ensemble $A_x = \{ \alpha > 0 \mid x \in \alpha B \}$ est non vide car $B$ est absorbant. De plus, cet ensemble est minoré par 0. Il admet donc une borne inférieure, ce qui justifie la définition de $p_B(x)$.

2.  **Axiome de séparation : $p_B(x) = 0 \iff x = 0_E$.**
    -   Si $x=0_E$, alors pour tout $\alpha > 0$, $0_E = \alpha \cdot 0_E \in \alpha B$ (car $0_E \in B$ puisque $B$ est convexe et symétrique, donc $0 = \frac{1}{2}x + \frac{1}{2}(-x) \in B$). Ainsi, $A_{0_E} = (0, +\infty)$ et $p_B(0_E) = \inf(0, +\infty) = 0$.
    -   Réciproquement, supposons $p_B(x) = 0$. Cela signifie que pour tout $\varepsilon > 0$, il existe $\alpha \in (0, \varepsilon]$ tel que $x \in \alpha B$. Ceci est équivalent à $\frac{1}{\alpha}x \in B$ pour un $\alpha \in (0, \varepsilon]$. Soit $\beta = 1/\alpha$, on a $\beta \ge 1/\varepsilon$. Donc, pour tout $M > 0$ (en choisissant $\varepsilon = 1/M$), il existe $\beta \ge M$ tel que $\beta x \in B$. Si $x \neq 0_E$, cela impliquerait que le rayon $\{ \lambda x \mid \lambda \ge 0 \}$ est entièrement contenu dans $B$ (car si $\beta_0 x \in B$, alors pour tout $\lambda \in [0, \beta_0]$, $\lambda x \in B$ par convexité et le fait que $0_E \in B$). Ceci contredit l'hypothèse qu'aucune droite passant par l'origine n'est contenue dans $B$. Donc, nécessairement, $x=0_E$.

3.  **Axiome d'homogénéité absolue : $p_B(\lambda x) = |\lambda| p_B(x)$ pour tout $\lambda \in \mathbb{R}$.**
    -   Si $\lambda=0$, c'est trivialement vrai : $p_B(0_E) = 0 = |0|p_B(x)$.
    -   Si $\lambda \neq 0$, on a :

        $$ p_B(\lambda x) = \inf \{ \alpha > 0 \mid \lambda x \in \alpha B \} $$

        L'expression $\lambda x \in \alpha B$ est équivalente à $x \in \frac{\alpha}{\lambda} B$. Comme $B$ est symétrique, si $\lambda < 0$, $\frac{\alpha}{\lambda} B = -\frac{\alpha}{|\lambda|}B = \frac{\alpha}{|\lambda|}B$. Donc, dans tous les cas, $x \in \frac{\alpha}{|\lambda|}B$.

        Posons $\beta = \frac{\alpha}{|\lambda|}$. Comme $\alpha > 0$, on a $\beta > 0$. La condition devient $x \in \beta B$.

        $$ p_B(\lambda x) = \inf \{ |\lambda|\beta > 0 \mid x \in \beta B \} = |\lambda| \inf \{ \beta > 0 \mid x \in \beta B \} = |\lambda| p_B(x). $$

4.  **Axiome d'inégalité triangulaire : $p_B(x+y) \le p_B(x) + p_B(y)$.**

    Soient $x, y \in E$. Pour tout $\varepsilon > 0$, il existe $\alpha > p_B(x)$ et $\beta > p_B(y)$ tels que $\alpha \ge p_B(x) + \varepsilon/2$ et $\beta \ge p_B(y) + \varepsilon/2$, et $x \in \alpha B$, $y \in \beta B$. Cela signifie $x' = x/\alpha \in B$ et $y' = y/\beta \in B$.

    Soit $\gamma = \alpha + \beta$. On a :

    $$ x+y = \alpha x' + \beta y' = \gamma \left( \frac{\alpha}{\gamma} x' + \frac{\beta}{\gamma} y' \right) $$

    Posons $t = \frac{\alpha}{\gamma}$. Alors $1-t = \frac{\beta}{\gamma}$. Comme $\alpha, \beta > 0$, on a $t \in (0,1)$. Puisque $B$ est convexe et que $x', y' \in B$, on a $tx' + (1-t)y' \in B$.

    Donc, $x+y \in \gamma B = (\alpha+\beta)B$.

    Par définition de la jauge, cela signifie que $p_B(x+y) \le \alpha + \beta$.

    Ceci est vrai pour tous $\alpha > p_B(x)$ et $\beta > p_B(y)$. En prenant la limite quand $\alpha \to p_B(x)$ et $\beta \to p_B(y)$ (ou plus formellement, en prenant l'infimum sur de tels $\alpha, \beta$), on obtient :

    $$ p_B(x+y) \le p_B(x) + p_B(y). $$

**Réponse:** La fonctionnelle de Minkowski $p_B$ vérifie les trois axiomes de séparation, d'homogénéité absolue et d'inégalité triangulaire, c'est donc une norme sur $E$.

</details>

## Exercice 2: [Preuve Complexe]

**Problème:** L'objectif est de démontrer l'**inégalité de Hölder**, une généralisation de l'inégalité de Cauchy-Schwarz.

Soient $p, q \in (1, \infty)$ deux exposants conjugués, c'est-à-dire tels que $\frac{1}{p} + \frac{1}{q} = 1$.

Soient $x = (x_1, \dots, x_n)$ et $y = (y_1, \dots, y_n)$ deux vecteurs de $\mathbb{R}^n$.

Démontrer que :

$$ \sum_{i=1}^n |x_i y_i| \le \left( \sum_{i=1}^n |x_i|^p \right)^{1/p} \left( \sum_{i=1}^n |y_i|^q \right)^{1/q} $$

c'est-à-dire $|\langle |x|, |y| \rangle| \le \|x\|_p \|y\|_q$.

Indication : commencer par prouver l'**inégalité de Young** : pour tous $a, b \ge 0$, on a $ab \le \frac{a^p}{p} + \frac{b^q}{q}$. Utiliser pour cela la concavité de la fonction logarithme.

<details>

<summary>Solution</summary>

**Méthode:** La preuve se déroule en deux étapes principales. D'abord, nous établissons l'inégalité de Young en utilisant la concavité du logarithme. Ensuite, nous appliquons cette inégalité aux composantes normalisées des vecteurs pour obtenir l'inégalité de Hölder.

**Étapes:**

1.  **Démonstration de l'inégalité de Young.**

    La fonction $f(t) = \ln(t)$ est concave sur $(0, \infty)$ car sa dérivée seconde $f''(t) = -1/t^2$ est négative.

    Par concavité, pour tous $t_1, t_2 > 0$ et pour tout $\lambda \in [0, 1]$, on a :

    $$ \ln(\lambda t_1 + (1-\lambda)t_2) \ge \lambda \ln(t_1) + (1-\lambda) \ln(t_2) $$

    Posons $t_1 = a^p$, $t_2 = b^q$, et $\lambda = 1/p$. Alors $1-\lambda = 1 - 1/p = 1/q$.

    L'inégalité de concavité devient :

    $$ \ln\left(\frac{1}{p} a^p + \frac{1}{q} b^q\right) \ge \frac{1}{p} \ln(a^p) + \frac{1}{q} \ln(b^q) = \ln(a) + \ln(b) = \ln(ab) $$

    Puisque la fonction exponentielle est croissante, on en déduit :

    $$ \frac{a^p}{p} + \frac{b^q}{q} \ge ab $$

    L'inégalité est trivialement vraie si $a=0$ ou $b=0$.

2.  **Démonstration de l'inégalité de Hölder.**

    Si $x=0$ ou $y=0$, l'inégalité est $0 \le 0$, ce qui est vrai. Supposons donc $x \neq 0$ et $y \neq 0$.

    Posons $X = \|x\|_p = (\sum_{i=1}^n |x_i|^p)^{1/p}$ et $Y = \|y\|_q = (\sum_{i=1}^n |y_i|^q)^{1/q}$. Par hypothèse, $X > 0$ et $Y > 0$.

    Pour chaque $i \in \{1, \dots, n\}$, appliquons l'inégalité de Young avec $a = \frac{|x_i|}{X}$ et $b = \frac{|y_i|}{Y}$.

    $$ \frac{|x_i|}{X} \frac{|y_i|}{Y} \le \frac{1}{p} \left(\frac{|x_i|}{X}\right)^p + \frac{1}{q} \left(\frac{|y_i|}{Y}\right)^q $$

    $$ \frac{|x_i y_i|}{XY} \le \frac{|x_i|^p}{p X^p} + \frac{|y_i|^q}{q Y^q} $$

    Sommons ces inégalités pour $i$ de 1 à $n$ :

    $$ \sum_{i=1}^n \frac{|x_i y_i|}{XY} \le \sum_{i=1}^n \left( \frac{|x_i|^p}{p X^p} + \frac{|y_i|^q}{q Y^q} \right) $$

    $$ \frac{1}{XY} \sum_{i=1}^n |x_i y_i| \le \frac{1}{p X^p} \sum_{i=1}^n |x_i|^p + \frac{1}{q Y^q} \sum_{i=1}^n |y_i|^q $$

    Par définition de $X$ et $Y$, on a $\sum |x_i|^p = X^p$ et $\sum |y_i|^q = Y^q$. L'inégalité devient :

    $$ \frac{1}{XY} \sum_{i=1}^n |x_i y_i| \le \frac{X^p}{p X^p} + \frac{Y^q}{q Y^q} = \frac{1}{p} + \frac{1}{q} = 1 $$

    En multipliant par $XY$, on obtient le résultat désiré :

    $$ \sum_{i=1}^n |x_i y_i| \le XY = \|x\|_p \|y\|_q $$

**Réponse:** Pour $p, q \in (1, \infty)$ avec $\frac{1}{p} + \frac{1}{q} = 1$, et pour tous vecteurs $x, y \in \mathbb{R}^n$, on a l'inégalité de Hölder :

$$ \sum_{i=1}^n |x_i y_i| \le \|x\|_p \|y\|_q $$

</details>

## Exercice 3: [Application Avancée]

**Problème:** Soit $E = \mathcal{M}_n(\mathbb{R})$ l'espace vectoriel des matrices carrées de taille $n$ à coefficients réels. Soit $\|\cdot\|$ une norme sur $\mathbb{R}^n$ (appelée norme vectorielle). On définit une application $N : \mathcal{M}_n(\mathbb{R}) \to \mathbb{R}_+$ par :

$$ N(A) = \sup_{x \in \mathbb{R}^n, x \neq 0} \frac{\|Ax\|}{\|x\|} $$

Cette norme est appelée la **norme d'opérateur subordonnée** à la norme vectorielle $\|\cdot\|$.

1. Montrer que $N$ est une norme sur $\mathcal{M}_n(\mathbb{R})$.
2. Montrer que $N(A) = \sup_{\|x\|=1} \|Ax\|$.
3. Montrer que pour toutes matrices $A, B \in \mathcal{M}_n(\mathbb{R})$, on a $N(AB) \le N(A) N(B)$. (Propriété de sous-multiplicativité).
4. Déterminer explicitement la norme d'opérateur subordonnée à la norme infinie $\|\cdot\|_\infty$ sur $\mathbb{R}^n$.

<details>

<summary>Solution</summary>

**Méthode:** Pour la première partie, nous vérifions les axiomes de la norme. Pour la deuxième, nous utilisons l'homogénéité de la norme vectorielle. Pour la troisième, nous appliquons la définition de la norme d'opérateur. Pour la quatrième, nous allons majorer $\|Ax\|_\infty$ et trouver un vecteur $x$ pour lequel la borne est atteinte.

**Étapes:**

1.  **Démonstration que $N$ est une norme.**
    -   **Définition :** L'application $f_A(x) = \|Ax\|$ est continue sur la sphère unité $S = \{x \in \mathbb{R}^n \mid \|x\|=1\}$, qui est compacte. Donc le supremum est atteint et fini. $N(A)$ est donc bien définie et positive.
    -   **Séparation :** $N(A)=0 \iff \sup_{x \neq 0} \frac{\|Ax\|}{\|x\|} = 0 \iff \|Ax\| = 0$ for all $x \in \mathbb{R}^n \iff Ax = 0$ for all $x \in \mathbb{R}^n \iff A$ est la matrice nulle.
    -   **Homogénéité absolue :** Pour $\lambda \in \mathbb{R}$,

        $$ N(\lambda A) = \sup_{x \neq 0} \frac{\|\lambda Ax\|}{\|x\|} = \sup_{x \neq 0} \frac{|\lambda| \|Ax\|}{\|x\|} = |\lambda| \sup_{x \neq 0} \frac{\|Ax\|}{\|x\|} = |\lambda| N(A) $$

    -   **Inégalité triangulaire :** Pour $A, B \in \mathcal{M}_n(\mathbb{R})$,

        $$ N(A+B) = \sup_{x \neq 0} \frac{\|(A+B)x\|}{\|x\|} = \sup_{x \neq 0} \frac{\|Ax+Bx\|}{\|x\|} \le \sup_{x \neq 0} \frac{\|Ax\|+\|Bx\|}{\|x\|} $$

        $$ \le \sup_{x \neq 0} \frac{\|Ax\|}{\|x\|} + \sup_{x \neq 0} \frac{\|Bx\|}{\|x\|} = N(A) + N(B) $$

    Donc $N$ est bien une norme sur $\mathcal{M}_n(\mathbb{R})$.

2.  **Forme équivalente de la définition.**

    Soit $x \neq 0$. On pose $u = x/\|x\|$. Alors $\|u\|=1$.

    $$ \frac{\|Ax\|}{\|x\|} = \frac{\|A(\|x\| u)\|}{\|x\|} = \frac{\|x\| \|Au\|}{\|x\|} = \|Au\| $$

    Le supremum sur tous les $x \neq 0$ est donc le même que le supremum sur tous les vecteurs $u$ de norme 1.

    $$ N(A) = \sup_{x \neq 0} \frac{\|Ax\|}{\|x\|} = \sup_{\|u\|=1} \|Au\| $$

3.  **Propriété de sous-multiplicativité.**

    Pour tout $x$ tel que $\|x\|=1$, on a :

    $$ \|(AB)x\| = \|A(Bx)\| \le N(A) \|Bx\| $$

    De plus, $\|Bx\| \le N(B)\|x\| = N(B)$ (puisque $\|x\|=1$).

    En combinant, on obtient $\|(AB)x\| \le N(A) N(B)$ pour tout $x$ de norme 1.

    En prenant le supremum sur ces $x$, on a :

    $$ N(AB) = \sup_{\|x\|=1} \|(AB)x\| \le N(A) N(B) $$

4.  **Norme subordonnée à $\|\cdot\|_\infty$.**

    Soit $N_\infty(A) = \sup_{\|x\|_\infty=1} \|Ax\|_\infty$. Notons $A = (a_{ij})$.

    Pour un vecteur $x \in \mathbb{R}^n$, la $i$-ème composante de $Ax$ est $(Ax)_i = \sum_{j=1}^n a_{ij} x_j$.

    $$ |(Ax)_i| = \left| \sum_{j=1}^n a_{ij} x_j \right| \le \sum_{j=1}^n |a_{ij}| |x_j| $$

    Si $\|x\|_\infty = \max_j |x_j| \le 1$, alors $|x_j| \le 1$ pour tout $j$.

    $$ |(Ax)_i| \le \sum_{j=1}^n |a_{ij}| \cdot 1 = \sum_{j=1}^n |a_{ij}| $$

    Ceci est vrai pour toute composante $i$. Donc :

    $$ \|Ax\|_\infty = \max_i |(Ax)_i| \le \max_i \sum_{j=1}^n |a_{ij}| $$

    Cette borne est indépendante de $x$. Donc $N_\infty(A) \le \max_i \sum_{j=1}^n |a_{ij}|$.

    Montrons que cette borne est atteinte. Soit $i_0$ l'indice de la ligne qui maximise cette somme : $\sum_{j=1}^n |a_{i_0 j}| = \max_i \sum_{j=1}^n |a_{ij}|$.

    Construisons un vecteur $x^*$ tel que $\|x^*\|_\infty=1$ et $\|Ax^*\|_\infty$ atteint cette valeur.

    Pour $j=1, \dots, n$, posons $x^*_j = \text{sgn}(a_{i_0 j})$ (où $\text{sgn}(0)=1$ par convention). Clairement, $\|x^*\|_\infty = 1$.

    Alors la $i_0$-ème composante de $Ax^*$ est :

    $$ (Ax^*)_{i_0} = \sum_{j=1}^n a_{i_0 j} x^*_j = \sum_{j=1}^n a_{i_0 j} \text{sgn}(a_{i_0 j}) = \sum_{j=1}^n |a_{i_0 j}| $$

    Donc $\|Ax^*\|_\infty \ge |(Ax^*)_{i_0}| = \sum_{j=1}^n |a_{i_0 j}| = \max_i \sum_{j=1}^n |a_{ij}|$.

    Puisque nous avons une inégalité dans les deux sens, on a l'égalité.

**Réponse:** La norme d'opérateur subordonnée à la norme infinie est la **norme du maximum des sommes des lignes en valeur absolue**:

$$ N_\infty(A) = \max_{1 \le i \le n} \sum_{j=1}^n |a_{ij}| $$

</details>

## Exercice 4: [Investigation Théorique]

**Problème:** Soit $E$ l'espace vectoriel des polynômes à coefficients réels, noté $\mathbb{R}[X]$. On considère deux normes sur $E$:

$$ \|P\|_\infty = \sup_{t \in [0, 1]} |P(t)| \quad \text{et} \quad \|P\|_1 = \int_0^1 |P(t)| dt $$

Montrer que ces deux normes ne sont pas équivalentes sur $\mathbb{R}[X]$.

Pour cela, construire une suite de polynômes $(P_n)_{n \in \mathbb{N}}$ dans $\mathbb{R}[X]$ telle que le rapport $\frac{\|P_n\|_\infty}{\|P_n\|_1}$ ne soit pas borné.

<details>

<summary>Solution</summary>

**Méthode:** Pour montrer la non-équivalence, nous devons montrer qu'il n'existe pas de constante $C > 0$ telle que $\|P\|_\infty \le C \|P\|_1$ pour tout $P \in \mathbb{R}[X]$. Nous allons construire une suite de polynômes $(P_n)$ dont la norme $\| \cdot \|_\infty$ reste constante (égale à 1), tandis que leur norme $\| \cdot \|_1$ tend vers 0. Le rapport $\|P_n\|_\infty / \|P_n\|_1$ tendra alors vers l'infini.

Une bonne suite de candidats sont des polynômes qui ont un pic étroit près d'un point et sont proches de zéro ailleurs sur l'intervalle $[0, 1]$.

**Étapes:**

1.  **Construction de la suite de polynômes.**

    Considérons la suite de polynômes $P_n(t) = t^n$ pour $n \in \mathbb{N}$. Ce sont des éléments de $\mathbb{R}[X]$.

2.  **Calcul de $\|P_n\|_\infty$.**

    Pour tout $n \in \mathbb{N}$, la fonction $t \mapsto t^n$ est croissante sur $[0, 1]$. Son supremum est donc atteint en $t=1$.

    $$ \|P_n\|_\infty = \sup_{t \in [0, 1]} |t^n| = 1^n = 1 $$

    La suite des normes infinies est constante et égale à 1.

3.  **Calcul de $\|P_n\|_1$.**

    Calculons l'intégrale :

    $$ \|P_n\|_1 = \int_0^1 |t^n| dt = \int_0^1 t^n dt = \left[ \frac{t^{n+1}}{n+1} \right]_0^1 = \frac{1}{n+1} $$

    La suite des normes 1 tend vers 0 lorsque $n \to \infty$.

4.  **Analyse du rapport et conclusion.**

    Considérons le rapport des deux normes pour $P_n$ :

    $$ \frac{\|P_n\|_\infty}{\|P_n\|_1} = \frac{1}{1/(n+1)} = n+1 $$

    Lorsque $n \to \infty$, ce rapport tend vers $+\infty$.

    Supposons par l'absurde que les normes sont équivalentes. Il existerait alors une constante $C > 0$ telle que pour tout polynôme $P$, on ait $\|P\|_\infty \le C \|P\|_1$.

    En appliquant cette inégalité à notre suite $P_n$, on aurait :

    $$ 1 \le C \cdot \frac{1}{n+1} \quad \text{pour tout } n \in \mathbb{N} $$

    Ceci impliquerait $n+1 \le C$ pour tout $n \in \mathbb{N}$, ce qui est absurde car l'ensemble des entiers naturels n'est pas majoré.

    La supposition est donc fausse. Les normes $\|\cdot\|_\infty$ et $\|\cdot\|_1$ ne sont pas équivalentes sur $\mathbb{R}[X]$.

**Réponse:** Les normes $\|\cdot\|_\infty$ et $\|\cdot\|_1$ ne sont pas équivalentes sur l'espace des polynômes $\mathbb{R}[X]$.

</details>

## Exercice 5: [Preuve Complexe]

**Problème:** Soit $(E, \|\cdot\|)$ un espace de Banach (un espace vectoriel normé complet) et soit $F$ un sous-espace vectoriel de $E$.

Démontrer que $F$ est un espace de Banach (pour la norme induite) si et seulement si $F$ est une partie fermée de $E$.

<details>

<summary>Solution</summary>

**Méthode:** C'est une double implication.

Pour le sens direct $(\implies)$, nous supposerons que $F$ est complet et montrerons qu'il est fermé en utilisant la caractérisation séquentielle des fermés.

Pour le sens réciproque $(\impliedby)$, nous supposerons que $F$ est fermé et montrerons qu'il est complet en utilisant la complétude de l'espace ambiant $E$.

**Étapes:**

1.  **Sens direct : Si $F$ est complet, alors $F$ est fermé.**
    -   Pour montrer que $F$ est fermé, nous devons montrer que toute suite $(x_k)_{k \in \mathbb{N}}$ d'éléments de $F$ qui converge dans $E$ a sa limite dans $F$.
    -   Soit $(x_k)$ une suite d'éléments de $F$ qui converge vers $a \in E$.
    -   Une suite convergente dans un espace normé est toujours une suite de Cauchy. Donc, $(x_k)$ est une suite de Cauchy.
    -   Puisque tous les termes $x_k$ sont dans $F$, $(x_k)$ est une suite de Cauchy dans $F$.
    -   Par hypothèse, $F$ est complet. Donc, toute suite de Cauchy d'éléments de $F$ converge vers une limite dans $F$. Appelons cette limite $b \in F$.
    -   Nous avons donc $x_k \to a$ dans $E$ et $x_k \to b$ dans $F$ (et donc aussi dans $E$).
    -   Par unicité de la limite dans l'espace normé $E$, on doit avoir $a=b$.
    -   Puisque $b \in F$, on a $a \in F$.
    -   Nous avons montré que la limite de toute suite convergente d'éléments de $F$ est dans $F$. Par conséquent, $F$ est un sous-ensemble fermé de $E$.

2.  **Sens réciproque : Si $F$ est fermé, alors $F$ est complet.**
    -   Pour montrer que $F$ est complet, nous devons montrer que toute suite de Cauchy d'éléments de $F$ converge vers une limite qui est dans $F$.
    -   Soit $(x_k)_{k \in \mathbb{N}}$ une suite de Cauchy d'éléments de $F$.
    -   Puisque $F$ est un sous-espace de $E$, $(x_k)$ est aussi une suite de Cauchy dans $E$.
    -   Par hypothèse, $E$ est complet (c'est un espace de Banach). Donc, la suite de Cauchy $(x_k)$ converge vers une limite $a \in E$.
    -   Nous avons une suite $(x_k)$ d'éléments de $F$ qui converge vers $a \in E$.
    -   Par hypothèse, $F$ est un sous-ensemble fermé de $E$. Par la caractérisation séquentielle des fermés, la limite de toute suite convergente d'éléments de $F$ doit appartenir à $F$.
    -   Donc, $a \in F$.
    -   Nous avons montré que toute suite de Cauchy dans $F$ converge vers une limite dans $F$. Par conséquent, $F$ est complet.

**Réponse:** Un sous-espace vectoriel $F$ d'un espace de Banach $E$ est lui-même un espace de Banach si et seulement si $F$ est un fermé de $E$.

</details>

## Exercice 6: [Investigation Théorique]

**Problème:** Soit $A \in \mathcal{M}_n(\mathbb{R})$ une matrice inversible. On définit une application $N_A : \mathbb{R}^n \to \mathbb{R}_+$ par :

$$ N_A(x) = \|Ax\|_2 $$

où $\|\cdot\|_2$ est la norme euclidienne usuelle sur $\mathbb{R}^n$.

1. Démontrer que $N_A$ est une norme sur $\mathbb{R}^n$.
2. Trouver les meilleures constantes d'équivalence $\alpha, \beta > 0$ entre $N_A$ et la norme $\|\cdot\|_2$, c'est-à-dire les meilleures constantes telles que :

   $$ \forall x \in \mathbb{R}^n, \quad \alpha \|x\|_2 \le N_A(x) \le \beta \|x\|_2 $$

   Exprimer ces constantes en termes de valeurs propres de la matrice $A^T A$.

<details>

<summary>Solution</summary>

**Méthode:** Pour la première partie, on utilise le fait que $A$ est une application linéaire injective et que $\|\cdot\|_2$ est une norme. Pour la seconde partie, on étudie le quotient $\frac{\|Ax\|_2}{\|x\|_2}$. En l'élevant au carré, on fait apparaître une forme quadratique associée à la matrice symétrique définie positive $A^T A$. Les extrema de ce quotient (le quotient de Rayleigh) sont liés aux valeurs propres de $A^T A$.

**Étapes:**

1.  **Démonstration que $N_A$ est une norme.**

    C'est un cas de transport de norme. L'application $x \mapsto Ax$ est une application linéaire de $\mathbb{R}^n$ dans $\mathbb{R}^n$. Puisque $A$ est inversible, cette application est injective (son noyau est $\{0\}$). La norme $\|\cdot\|_2$ est une norme sur l'espace d'arrivée. Donc $N_A(x) = \|Ax\|_2$ est une norme sur l'espace de départ.

    -   **Séparation :** $N_A(x)=0 \iff \|Ax\|_2=0 \iff Ax=0 \iff x=0$ (car $A$ est inversible).
    -   **Homogénéité absolue :** $N_A(\lambda x) = \|A(\lambda x)\|_2 = \|\lambda (Ax)\|_2 = |\lambda| \|Ax\|_2 = |\lambda| N_A(x)$.
    -   **Inégalité triangulaire :** $N_A(x+y) = \|A(x+y)\|_2 = \|Ax+Ay\|_2 \le \|Ax\|_2 + \|Ay\|_2 = N_A(x) + N_A(y)$.

2.  **Recherche des constantes d'équivalence.**

    On cherche $\alpha = \inf_{x \neq 0} \frac{\|Ax\|_2}{\|x\|_2}$ et $\beta = \sup_{x \neq 0} \frac{\|Ax\|_2}{\|x\|_2}$.

    Considérons le carré du quotient :

    $$ \left( \frac{\|Ax\|_2}{\|x\|_2} \right)^2 = \frac{\|Ax\|_2^2}{\|x\|_2^2} = \frac{\langle Ax, Ax \rangle}{\langle x, x \rangle} = \frac{x^T A^T A x}{x^T x} $$

    La matrice $M = A^T A$ est symétrique. De plus, $x^T M x = \|Ax\|_2^2 \ge 0$. L'égalité a lieu seulement si $Ax=0$, c'est-à-dire $x=0$. Donc $M$ est définie positive. En tant que matrice symétrique réelle, $M$ est diagonalisable dans une base orthonormée et ses valeurs propres sont réelles et strictement positives.

    Notons $\lambda_1 \le \lambda_2 \le \dots \le \lambda_n$ les valeurs propres de $A^T A$.

    Le quotient $\frac{x^T M x}{x^T x}$ est le quotient de Rayleigh pour la matrice $M$. Le théorème de Courant-Fischer (ou une version plus simple) stipule que les extrema de ce quotient sont les valeurs propres extrémales de $M$.

    $$ \sup_{x \neq 0} \frac{x^T M x}{x^T x} = \lambda_{\max}(M) = \lambda_n $$

    $$ \inf_{x \neq 0} \frac{x^T M x}{x^T x} = \lambda_{\min}(M) = \lambda_1 $$

    Donc,

    $$ \lambda_1 \le \frac{\|Ax\|_2^2}{\|x\|_2^2} \le \lambda_n $$

    En prenant la racine carrée (tout est positif) :

    $$ \sqrt{\lambda_1} \le \frac{\|Ax\|_2}{\|x\|_2} \le \sqrt{\lambda_n} $$

    Les bornes sont atteintes pour les vecteurs propres de $A^T A$ correspondants aux valeurs propres $\lambda_1$ et $\lambda_n$. Ce sont donc les meilleures constantes possibles.

    On a $\alpha = \sqrt{\lambda_{\min}(A^T A)}$ et $\beta = \sqrt{\lambda_{\max}(A^T A)}$.

    Les racines carrées des valeurs propres de $A^T A$ sont appelées les valeurs singulières de $A$.

**Réponse:** La constante $\beta$ est la plus grande valeur singulière de $A$, $\sigma_{\max}(A) = \sqrt{\lambda_{\max}(A^T A)}$, et la constante $\alpha$ est la plus petite valeur singulière de $A$, $\sigma_{\min}(A) = \sqrt{\lambda_{\min}(A^T A)}$.

L'encadrement est donc :

$$ \forall x \in \mathbb{R}^n, \quad \sigma_{\min}(A) \|x\|_2 \le \|Ax\|_2 \le \sigma_{\max}(A) \|x\|_2 $$

</details>

## Exercice 7: [Application Avancée]

**Problème:** Soit $(\mathbb{R}^n, \langle \cdot, \cdot \rangle)$ l'espace euclidien canonique. Démontrer que l'application produit scalaire $f: \mathbb{R}^n \times \mathbb{R}^n \to \mathbb{R}$ définie par $f(x, y) = \langle x, y \rangle$ est continue.

On rappelle que la continuité en un point $(a,b)$ signifie que pour toute suite $(x_k, y_k)$ de $\mathbb{R}^n \times \mathbb{R}^n$ qui converge vers $(a,b)$, la suite réelle $\langle x_k, y_k \rangle$ converge vers $\langle a, b \rangle$.

La convergence de $(x_k, y_k)$ vers $(a,b)$ dans l'espace produit signifie que $x_k \to a$ et $y_k \to b$ dans $\mathbb{R}^n$.

<details>

<summary>Solution</summary>

**Méthode:** Nous allons utiliser la caractérisation séquentielle de la continuité. L'objectif est de majorer la quantité $|\langle x_k, y_k \rangle - \langle a, b \rangle|$ par une expression qui tend vers 0 lorsque $x_k \to a$ et $y_k \to b$. L'astuce consiste à ajouter et soustraire des termes intermédiaires (comme $\langle x_k, b \rangle$) et à utiliser l'inégalité de Cauchy-Schwarz.

**Étapes:**

1.  **Mise en place de l'expression à majorer.**

    Soit $(x_k, y_k)$ une suite convergeant vers $(a,b)$ dans $\mathbb{R}^n \times \mathbb{R}^n$. Cela signifie que $\|x_k - a\| \to 0$ et $\|y_k - b\| \to 0$ (pour n'importe quelle norme, par exemple la norme euclidienne $\|\cdot\|_2$).

    Nous voulons montrer que $|\langle x_k, y_k \rangle - \langle a, b \rangle| \to 0$.

2.  **Décomposition et majoration.**

    On utilise une technique de "va-et-vient" :

    $$ \langle x_k, y_k \rangle - \langle a, b \rangle = \langle x_k, y_k \rangle - \langle x_k, b \rangle + \langle x_k, b \rangle - \langle a, b \rangle $$

    Par bilinéarité du produit scalaire, on peut factoriser :

    $$ = \langle x_k, y_k - b \rangle + \langle x_k - a, b \rangle $$

    En utilisant l'inégalité triangulaire pour les réels, on a :

    $$ |\langle x_k, y_k \rangle - \langle a, b \rangle| \le |\langle x_k, y_k - b \rangle| + |\langle x_k - a, b \rangle| $$

    Appliquons l'inégalité de Cauchy-Schwarz à chaque terme :

    $$ |\langle x_k, y_k - b \rangle| \le \|x_k\|_2 \|y_k - b\|_2 $$

    $$ |\langle x_k - a, b \rangle| \le \|x_k - a\|_2 \|b\|_2 $$

    On obtient donc la majoration :

    $$ |\langle x_k, y_k \rangle - \langle a, b \rangle| \le \|x_k\|_2 \|y_k - b\|_2 + \|x_k - a\|_2 \|b\|_2 $$

3.  **Analyse de la convergence des termes de la majoration.**
    -   On sait que $\|x_k - a\|_2 \to 0$ et $\|y_k - b\|_2 \to 0$.
    -   Le terme $\|b\|_2$ est une constante. Donc, $\|x_k - a\|_2 \|b\|_2 \to 0$.
    -   Le terme $\|x_k\|_2$ n'est pas constant, mais la suite $(x_k)$ est convergente, donc elle est bornée. Il existe $M > 0$ tel que $\|x_k\|_2 \le M$ for all $k$.

        (Preuve rapide : $\|x_k\|_2 = \|x_k - a + a\|_2 \le \|x_k - a\|_2 + \|a\|_2$. Comme $\|x_k - a\|_2 \to 0$, cette suite est bornée, disons par 1 pour $k$ assez grand. Donc $\|x_k\|_2$ est bornée.)

    -   Ainsi, le premier terme est majoré : $\|x_k\|_2 \|y_k - b\|_2 \le M \|y_k - b\|_2$. Comme $\|y_k - b\|_2 \to 0$, ce terme tend aussi vers 0.

4.  **Conclusion.**

    La somme de deux termes qui tendent vers 0 tend également vers 0. Donc,

    $$ \lim_{k \to \infty} |\langle x_k, y_k \rangle - \langle a, b \rangle| = 0 $$

    ce qui signifie que $\lim_{k \to \infty} \langle x_k, y_k \rangle = \langle a, b \rangle$.

    Ceci prouve la continuité du produit scalaire en tout point $(a,b) \in \mathbb{R}^n \times \mathbb{R}^n$.

**Réponse:** L'application produit scalaire $\langle \cdot, \cdot \rangle : \mathbb{R}^n \times \mathbb{R}^n \to \mathbb{R}$ est continue sur son domaine de définition.

</details>

## Exercice 8: [Preuve Complexe]

**Problème:** Démontrer l'**inégalité de Minkowski** pour $p \in (1, \infty)$.

Pour tous vecteurs $x, y \in \mathbb{R}^n$, on a :

$$ \|x+y\|_p \le \|x\|_p + \|y\|_p $$

où $\|u\|_p = \left( \sum_{i=1}^n |u_i|^p \right)^{1/p}$.

Indication : Écrire $|x_i+y_i|^p$ sous la forme $|x_i+y_i| \cdot |x_i+y_i|^{p-1}$ et utiliser l'inégalité de Hölder avec un exposant conjugué bien choisi.

<details>

<summary>Solution</summary>

**Méthode:** La preuve repose de manière cruciale sur l'inégalité de Hölder. L'idée est de décomposer $\|x+y\|_p^p$ et de majorer les termes résultants avec Hölder. Un point clé est de trouver l'exposant conjugué de $p$.

**Étapes:**

1.  **Préparation de l'inégalité.**

    L'inégalité triangulaire pour les nombres réels donne $|x_i+y_i| \le |x_i| + |y_i|$.

    On commence par écrire la puissance $p$ de la norme de la somme :

    $$ \|x+y\|_p^p = \sum_{i=1}^n |x_i+y_i|^p = \sum_{i=1}^n |x_i+y_i| \cdot |x_i+y_i|^{p-1} $$

    En utilisant l'inégalité triangulaire, on a :

    $$ \|x+y\|_p^p \le \sum_{i=1}^n (|x_i| + |y_i|) |x_i+y_i|^{p-1} $$

    $$ = \sum_{i=1}^n |x_i| |x_i+y_i|^{p-1} + \sum_{i=1}^n |y_i| |x_i+y_i|^{p-1} $$

2.  **Application de l'inégalité de Hölder.**

    Nous allons appliquer l'inégalité de Hölder à chacun des deux termes de la somme.

    Soit $q$ l'exposant conjugué de $p$. On a $\frac{1}{p} + \frac{1}{q} = 1$, ce qui donne $q = \frac{p}{p-1}$.

    -   Pour le premier terme, $\sum |x_i| |x_i+y_i|^{p-1}$, on applique Hölder avec les "vecteurs" $(|x_i|)$ et $(|x_i+y_i|^{p-1})$ :

        $$ \sum_{i=1}^n |x_i| |x_i+y_i|^{p-1} \le \left(\sum_{i=1}^n |x_i|^p\right)^{1/p} \left(\sum_{i=1}^n (|x_i+y_i|^{p-1})^q\right)^{1/q} $$

        Le premier facteur est $\|x\|_p$. Analysons le second facteur. L'exposant est $(p-1)q = (p-1) \frac{p}{p-1} = p$.

        $$ \left(\sum_{i=1}^n |x_i+y_i|^p\right)^{1/q} = (\|x+y\|_p^p)^{1/q} = \|x+y\|_p^{p/q} $$

        Donc, la première somme est majorée par $\|x\|_p \|x+y\|_p^{p/q}$.

    -   De la même manière, pour le second terme $\sum |y_i| |x_i+y_i|^{p-1}$ :

        $$ \sum_{i=1}^n |y_i| |x_i+y_i|^{p-1} \le \|y\|_p \|x+y\|_p^{p/q} $$

3.  **Finalisation de la preuve.**

    En combinant ces deux majorations, on obtient :

    $$ \|x+y\|_p^p \le \|x\|_p \|x+y\|_p^{p/q} + \|y\|_p \|x+y\|_p^{p/q} $$

    $$ \|x+y\|_p^p \le (\|x\|_p + \|y\|_p) \|x+y\|_p^{p/q} $$

    Si $\|x+y\|_p = 0$, l'inégalité est triviale. Si $\|x+y\|_p \neq 0$, on peut diviser par $\|x+y\|_p^{p/q}$.

    L'exposant à gauche devient $p - p/q = p(1 - 1/q) = p(1/p) = 1$.

    $$ \|x+y\|_p^1 \le \|x\|_p + \|y\|_p $$

    Ce qui est l'inégalité de Minkowski.

**Réponse:** Pour $p \in (1, \infty)$, l'application $\|\cdot\|_p$ vérifie l'inégalité triangulaire (inégalité de Minkowski) :

$$ \|x+y\|_p \le \|x\|_p + \|y\|_p $$

</details>

## Exercice 9: [Problème de Recherche]

**Problème:** Pour $p \in (0, 1)$, l'application $N_p(x) = \left( \sum_{i=1}^n |x_i|^p \right)^{1/p}$ n'est pas une norme. C'est un exemple de **quasi-norme**. Une application $\|\cdot\|_Q : E \to \mathbb{R}_+$ est une quasi-norme s'il existe une constante $K \ge 1$ telle que :

(i) $\|x\|_Q = 0 \iff x = 0$

(ii) $\|\lambda x\|_Q = |\lambda| \|x\|_Q$

(iii) $\|x+y\|_Q \le K (\|x\|_Q + \|y\|_Q)$ (quasi-inégalité triangulaire)

1. Montrer que pour $p \in (0, 1)$, l'application $N_p$ sur $\mathbb{R}^n$ n'est pas une norme car elle viole l'inégalité triangulaire standard.
2. Montrer que pour $a, b \ge 0$ et $p \in (0, 1)$, on a $(a+b)^p \le a^p + b^p$.
3. Utiliser le résultat précédent pour montrer que $N_p(x) = (\sum |x_i|^p)^{1/p}$ n'est pas une norme, mais vérifie une "inégalité triangulaire inversée" : $N_p(x+y) \ge N_p(x) + N_p(y)$ est fausse. En fait, montrer qu'elle satisfait :

   $$ \sum_{i=1}^n |x_i+y_i|^p \le \sum_{i=1}^n |x_i|^p + \sum_{i=1}^n |y_i|^p $$

   En déduire que la boule unité $B_p = \{x \in \mathbb{R}^n \mid N_p(x) \le 1\}$ pour $p \in (0,1)$ n'est pas convexe, et expliquer pourquoi cela implique que $N_p$ ne peut pas être une norme.

<details>

<summary>Solution</summary>

**Méthode:** Pour la partie 1, on utilise un contre-exemple simple. Pour la partie 2, on étudie la fonction $f(t) = (1+t)^p - 1 - t^p$. Pour la partie 3, on applique l'inégalité de la partie 2 et on relie la non-convexité de la boule unité à la violation de l'inégalité triangulaire de la norme.

**Étapes:**

1.  **Contre-exemple à l'inégalité triangulaire.**

    Soit $n=2$, $p=1/2$. Prenons $x=(1,0)$ et $y=(0,1)$.

    $N_{1/2}(x) = (|1|^{1/2} + |0|^{1/2})^2 = 1^2=1$.

    $N_{1/2}(y) = (|0|^{1/2} + |1|^{1/2})^2 = 1^2=1$.

    $x+y = (1,1)$.

    $N_{1/2}(x+y) = (|1|^{1/2} + |1|^{1/2})^2 = (1+1)^2=4$.

    On a $N_{1/2}(x+y) = 4 > N_{1/2}(x) + N_{1/2}(y) = 1+1=2$. L'inégalité triangulaire est violée.

2.  **Inégalité $(a+b)^p \le a^p + b^p$.**

    Soit $a, b \ge 0$. Si $a=0$, l'inégalité $b^p \le b^p$ est vraie. Supposons $a > 0$. Divisons par $a^p$ :

    $$ \frac{(a+b)^p}{a^p} \le \frac{a^p+b^p}{a^p} \iff \left(1+\frac{b}{a}\right)^p \le 1 + \left(\frac{b}{a}\right)^p $$

    Posons $t = b/a \ge 0$. Il suffit de montrer que $(1+t)^p \le 1+t^p$ for $t \ge 0$.

    Soit la fonction $f(t) = 1+t^p - (1+t)^p$ pour $t \ge 0$. On a $f(0) = 1+0-(1)^p = 0$.

    Calculons sa dérivée : $f'(t) = pt^{p-1} - p(1+t)^{p-1}$.

    Puisque $p \in (0,1)$, l'exposant $p-1$ est négatif. La fonction $u \mapsto u^{p-1}$ est donc décroissante pour $u > 0$.

    Comme $1+t > t$, on a $(1+t)^{p-1} < t^{p-1}$.

    Donc $f'(t) = p(t^{p-1} - (1+t)^{p-1}) > 0$ pour $t>0$.

    La fonction $f$ est donc croissante sur $[0, \infty)$. Comme $f(0)=0$, on a $f(t) \ge 0$ pour tout $t \ge 0$, ce qui prouve l'inégalité.

3.  **Application et non-convexité de la boule unité.**

    En utilisant l'inégalité triangulaire standard $|x_i+y_i| \le |x_i|+|y_i|$ et le fait que $u \mapsto u^p$ est croissante pour $u\ge 0$ :

    $$ |x_i+y_i|^p \le (|x_i|+|y_i|)^p $$

    En appliquant le résultat de la partie 2 avec $a=|x_i|$ et $b=|y_i|$ :

    $$ (|x_i|+|y_i|)^p \le |x_i|^p + |y_i|^p $$

    Donc, $|x_i+y_i|^p \le |x_i|^p + |y_i|^p$. En sommant sur $i$:

    $$ \sum_{i=1}^n |x_i+y_i|^p \le \sum_{i=1}^n |x_i|^p + \sum_{i=1}^n |y_i|^p $$

    Cela s'écrit : $(N_p(x+y))^p \le (N_p(x))^p + (N_p(y))^p$.

    Considérons la boule unité $B_p = \{ u \in \mathbb{R}^n \mid N_p(u) \le 1 \}$.

    Soient $x=(1,0, \dots, 0)$ et $y=(0,1, \dots, 0)$.

    $N_p(x) = (1^p)^{1/p}=1$ donc $x \in B_p$. De même, $y \in B_p$.

    Pour que $B_p$ soit convexe, le point milieu $z = \frac{1}{2}x + \frac{1}{2}y = (\frac{1}{2}, \frac{1}{2}, 0, \dots, 0)$ doit aussi être dans $B_p$.

    Calculons $N_p(z)$:

    $$ N_p(z) = \left( |\frac{1}{2}|^p + |\frac{1}{2}|^p \right)^{1/p} = \left( 2 \cdot \frac{1}{2^p} \right)^{1/p} = (2^{1-p})^{1/p} = 2^{(1-p)/p} $$

    Puisque $p \in (0,1)$, on a $1-p > 0$, donc $2^{1-p} > 1$. Et comme $1/p>0$, $N_p(z) > 1$.

    Le point milieu n'est pas dans la boule unité. La boule unité n'est donc pas convexe.

    Or, pour toute norme, la boule unité est un ensemble convexe. Puisque la boule unité associée à $N_p$ n'est pas convexe, $N_p$ ne peut pas être une norme.

**Réponse:** Pour $p \in (0,1)$, $N_p$ viole l'inégalité triangulaire. Sa "boule unité" n'est pas convexe, ce qui est une caractéristique fondamentale des espaces qui ne sont pas normés. La non-convexité de la boule unité est une preuve géométrique que l'application $N_p$ n'est pas une norme.

</details>

## Exercice 10: [Théorème du Point Fixe]

**Problème:** Soit $(E, \|\cdot\|)$ un espace de Banach. Soit $C \subset E$ une partie non vide et fermée de $E$. Soit $f: C \to C$ une application **contractante**, c'est-à-dire qu'il existe une constante $k \in [0, 1)$ telle que pour tous $x, y \in C$:

$$ \|f(x) - f(y)\| \le k \|x - y\| $$

Démontrer que $f$ admet un unique point fixe dans $C$, c'est-à-dire qu'il existe un unique $x^* \in C$ tel que $f(x^*) = x^*$.

Indication : Choisir un point arbitraire $x_0 \in C$ et considérer la suite $(x_n)_{n \in \mathbb{N}}$ définie par la relation de récurrence $x_{n+1} = f(x_n)$. Montrer que cette suite est une suite de Cauchy. Utiliser la complétude et la fermeture de $C$ pour conclure.

<details>

<summary>Solution</summary>

**Méthode:** La preuve est constructive. On construit une suite par itérations successives de $f$, on montre que c'est une suite de Cauchy. La complétude de $E$ et la fermeture de $C$ garantissent que la suite converge vers une limite dans $C$. On montre ensuite que cette limite est un point fixe. Finalement, on prouve l'unicité de ce point fixe.

**Étapes:**

1.  **Construction et étude de la suite itérative.**

    Soit $x_0 \in C$ un point quelconque. On définit la suite $(x_n)$ par $x_{n+1} = f(x_n)$ pour $n \ge 0$.

    Puisque $f: C \to C$, tous les termes de la suite restent dans $C$.

    Étudions la distance entre deux termes consécutifs :

    $\|x_{n+1} - x_n\| = \|f(x_n) - f(x_{n-1})\| \le k \|x_n - x_{n-1}\|$.

    Par une récurrence immédiate, on obtient :

    $$ \|x_{n+1} - x_n\| \le k^n \|x_1 - x_0\| $$

2.  **Montrer que $(x_n)$ est une suite de Cauchy.**

    Soient $m > n \ge 0$. On veut majorer $\|x_m - x_n\|$.

    $$ \|x_m - x_n\| = \|(x_m - x_{m-1}) + (x_{m-1} - x_{m-2}) + \dots + (x_{n+1} - x_n)\| $$

    Par l'inégalité triangulaire :

    $$ \le \sum_{i=n}^{m-1} \|x_{i+1} - x_i\| \le \sum_{i=n}^{m-1} k^i \|x_1 - x_0\| $$

    $$ = \|x_1 - x_0\| (k^n + k^{n+1} + \dots + k^{m-1}) $$

    C'est la somme des termes d'une série géométrique.

    $$ = \|x_1 - x_0\| k^n (1 + k + \dots + k^{m-1-n}) \le \|x_1 - x_0\| k^n \sum_{j=0}^{\infty} k^j = \|x_1 - x_0\| \frac{k^n}{1-k} $$

    Puisque $k \in [0, 1)$, on a $k^n \to 0$ lorsque $n \to \infty$.

    Donc, pour tout $\varepsilon > 0$, on peut trouver un $N$ tel que pour $n \ge N$, $\frac{k^n}{1-k} \|x_1 - x_0\| < \varepsilon$.

    Alors pour tous $m > n \ge N$, on a $\|x_m - x_n\| < \varepsilon$. La suite $(x_n)$ est donc une suite de Cauchy.

3.  **Convergence de la suite et existence du point fixe.**
    -   La suite $(x_n)$ est une suite de Cauchy dans $C \subset E$.
    -   Puisque $E$ est un espace de Banach, il est complet, donc la suite $(x_n)$ converge vers une limite $x^* \in E$.
    -   Comme $C$ est une partie fermée de $E$ et que tous les termes $x_n$ sont dans $C$, la limite $x^*$ doit aussi appartenir à $C$.
    -   Montrons que $x^*$ est un point fixe. L'application $f$ est contractante, donc continue. En effet, $\|f(x) - f(y)\| \le k\|x-y\| \le \|x-y\|$, c'est une application 1-lipschitzienne.
    -   Par continuité de $f$, si $x_n \to x^*$, alors $f(x_n) \to f(x^*)$.
    -   Or, $x_{n+1} = f(x_n)$. La suite $(x_{n+1})$ est une sous-suite de $(x_n)$ et converge donc vers la même limite $x^*$.
    -   En passant à la limite dans l'équation $x_{n+1} = f(x_n)$, on obtient $x^* = f(x^*)$.
    -   Donc $x^*$ est un point fixe de $f$ dans $C$.

4.  **Unicité du point fixe.**

    Supposons qu'il existe deux points fixes, $x^* \in C$ et $y^* \in C$. On a donc $f(x^*) = x^*$ et $f(y^*) = y^*$.

    Considérons la distance entre eux :

    $$ \|x^* - y^*\| = \|f(x^*) - f(y^*)\| $$

    Par la propriété de contraction de $f$ :

    $$ \|f(x^*) - f(y^*)\| \le k \|x^* - y^*\| $$

    On a donc $\|x^* - y^*\| \le k \|x^* - y^*\|$, ce qui s'écrit $(1-k)\|x^* - y^*\| \le 0$.

    Puisque $k \in [0, 1)$, on a $1-k > 0$. De plus, une norme est toujours positive.

    La seule possibilité est donc $\|x^* - y^*\| = 0$.

    Par l'axiome de séparation de la norme, cela implique $x^* = y^*$.

    Le point fixe est donc unique.

**Réponse:** Toute application contractante d'une partie fermée non vide d'un espace de Banach dans elle-même admet un unique point fixe. Ce résultat est connu sous le nom de **Théorème du point fixe de Banach**.

</details>
