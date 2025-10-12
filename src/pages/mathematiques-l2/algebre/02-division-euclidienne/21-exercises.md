---
id: 13488fc4
type: exercises
order: 21
title: Division euclidienne - exercices (B)
tags:
  - algèbre
  - anneau
  - division euclidienne
  - polynôme
  - idéal
  - bézout
createdAt: '2025-10-12T20:59:09.006Z'
level: pro
course: Algèbre
courseId: 3b74b601
chapter: Division euclidienne
chapterId: e5009a65
---
# Exercices "Division euclidienne" (B)

## Exercise 1: Preuve Complexe

**Problème:** Soit $G$ un groupe fini et $K$ un corps dont la caractéristique ne divise pas l'ordre de $G$. L'algèbre de groupe $K[G]$ est une $K$-algèbre. On s'intéresse à son centre $Z(K[G])$. Soient $\mathcal{C}_1, \dots, \mathcal{C}_r$ les classes de conjugaison de $G$. Pour chaque $k \in \{1, \dots, r\}$, on définit l'élément $z_k = \sum_{g \in \mathcal{C}_k} g \in K[G]$. Démontrer que la famille $(z_1, \dots, z_r)$ forme une base du centre $Z(K[G])$ en tant que $K$-espace vectoriel.

<details>

<summary>Solution</summary>

**Méthode:** La démonstration se fait en deux étapes. D'abord, on montre que chaque $z_k$ appartient au centre $Z(K[G])$. Ensuite, on montre que la famille $(z_1, \dots, z_r)$ est libre et qu'elle engendre le centre.

**Étapes:**

1.  **Montrer que $z_k \in Z(K[G])$ pour tout $k$.**

    Un élément $x = \sum_{g \in G} a_g g$ est dans le centre si et seulement si $hxh^{-1} = x$ pour tout $h \in G$.

    Calculons $h z_k h^{-1}$ pour un $h \in G$ quelconque :

    $$ h z_k h^{-1} = h \left(\sum_{g \in \mathcal{C}_k} g\right) h^{-1} = \sum_{g \in \mathcal{C}_k} hgh^{-1} $$

    L'application $g \mapsto hgh^{-1}$ est un automorphisme intérieur de $G$. Elle permute les éléments d'une classe de conjugaison. Donc, l'ensemble $\{hgh^{-1} \mid g \in \mathcal{C}_k\}$ est égal à l'ensemble $\mathcal{C}_k$.

    La somme est donc une somme sur les mêmes éléments, simplement dans un ordre différent :

    $$ \sum_{g' \in \mathcal{C}_k} g' = z_k $$

    Ainsi, $h z_k h^{-1} = z_k$ pour tout $h \in G$, ce qui signifie que $z_k$ commute avec tous les éléments de $G$, et par linéarité, avec tous les éléments de $K[G]$. Donc $z_k \in Z(K[G])$.

    Comme les $z_k$ sont dans $Z(K[G])$, leur enveloppe linéaire, $\text{Vect}_K(z_1, \dots, z_r)$, est un sous-espace de $Z(K[G])$.

2.  **Montrer que $(z_1, \dots, z_r)$ est une famille libre.**

    Les classes de conjugaison $\mathcal{C}_k$ forment une partition de $G$. Les éléments $z_k$ sont des sommes d'éléments de $G$ sur des supports disjoints. Une combinaison linéaire $\sum_{k=1}^r \lambda_k z_k = 0$ s'écrit $\sum_{k=1}^r \lambda_k (\sum_{g \in \mathcal{C}_k} g) = 0$.

    Puisque les $\mathcal{C}_k$ sont disjoints, la famille de tous les $g \in G$ forme une base de $K[G]$. L'égalité ci-dessus est une égalité dans cette base. Pour qu'elle soit nulle, tous les coefficients doivent être nuls. Pour tout $g \in \mathcal{C}_k$, son coefficient est $\lambda_k$. Donc $\lambda_k=0$ pour tout $k$.

    La famille $(z_1, \dots, z_r)$ est donc libre.

3.  **Montrer que $(z_1, \dots, z_r)$ engendre $Z(K[G])$.**

    Soit $z = \sum_{g \in G} a_g g$ un élément du centre. Alors pour tout $h \in G$, on a $hzh^{-1}=z$.

    $$ hzh^{-1} = h \left(\sum_{g \in G} a_g g\right) h^{-1} = \sum_{g \in G} a_g (hgh^{-1}) $$

    En posant $g' = hgh^{-1}$ (donc $g=h^{-1}g'h$), la somme devient :

    $$ \sum_{g' \in G} a_{h^{-1}g'h} g' $$

    Puisque $hzh^{-1}=z$, on a $\sum_{g' \in G} a_{h^{-1}g'h} g' = \sum_{g' \in G} a_{g'} g'$.

    Par unicité de la décomposition dans la base $(g)_{g \in G}$, on doit avoir $a_{h^{-1}g'h} = a_{g'}$ for all $g', h \in G$.

    Cela signifie que la fonction de coefficients $g \mapsto a_g$ est constante sur les classes de conjugaison. Soit $a_k$ la valeur constante de $a_g$ pour $g \in \mathcal{C}_k$.

    On peut alors regrouper les termes de la somme pour $z$ par classe de conjugaison :

    $$ z = \sum_{k=1}^r \sum_{g \in \mathcal{C}_k} a_g g = \sum_{k=1}^r \sum_{g \in \mathcal{C}_k} a_k g = \sum_{k=1}^r a_k \left(\sum_{g \in \mathcal{C}_k} g\right) = \sum_{k=1}^r a_k z_k $$

    Ceci montre que tout élément du centre est une combinaison linéaire des $z_k$.

4.  **Conclusion.**

    La famille $(z_1, \dots, z_r)$ est une famille libre et génératrice de $Z(K[G])$. C'est donc une base de cet espace vectoriel.

**Réponse:** La famille $(z_1, \dots, z_r)$, où $z_k$ est la somme des éléments de la $k$-ième classe de conjugaison $\mathcal{C}_k$ de $G$, forme une base du centre $Z(K[G])$ de l'algèbre de groupe $K[G]$. La dimension du centre est donc égale au nombre de classes de conjugaison de $G$.

</details>

## Exercise 2: Investigation Théorique

**Problème:** L'anneau $A = \mathbb{Z}[\alpha]$ où $\alpha = \frac{1+\sqrt{-19}}{2}$ est un exemple célèbre d'anneau principal qui n'est pas euclidien. Le but de cet exercice est de prouver ce résultat.

1. Montrer que $A$ est un anneau intègre et que le polynôme minimal de $\alpha$ sur $\mathbb{Z}$ est $X^2-X+5$.
2. Définir une norme $N(a+b\alpha) = (a+b/2)^2 + 19(b/2)^2 = a^2+ab+5b^2$. Montrer que $N(xy)=N(x)N(y)$ et que les seules unités (inversibles) de $A$ sont $\pm 1$.
3. Montrer que $A$ est un anneau principal. (Indice : on pourra admettre que c'est un anneau de Dedekind et montrer que son groupe de classes est trivial, ou utiliser des arguments plus directs basés sur la division avec reste "approchée" et la norme).
4. Montrer que $A$ n'est pas un anneau euclidien. (Indice : raisonner par l'absurde. Supposer qu'il existe un stathme $\delta$. Choisir un élément non-inversible $x \in A \setminus \{0, \pm 1\}$ avec $\delta(x)$ minimal. Montrer que toute classe de $A/(x)$ doit contenir un représentant qui est soit 0, soit une unité, et en déduire une contradiction sur le cardinal de $A/(x)$.)

<details>

<summary>Solution</summary>

**Méthode:** Les étapes guident la démonstration. La partie la plus difficile est la non-existence d'un stathme euclidien, qui repose sur une analyse fine de l'anneau quotient par un élément de stathme minimal.

**Étapes:**

1.  **Structure de base.**

    L'élément $\alpha$ est une racine de $P(X) = (X - \frac{1+\sqrt{-19}}{2})(X - \frac{1-\sqrt{-19}}{2}) = X^2 - X + 5$. Ce polynôme est irréductible sur $\mathbb{Q}$ (son discriminant est $1-20=-19<0$). $\mathbb{Z}[\alpha]$ est un sous-anneau de $\mathbb{C}$, donc il est intègre.

2.  **Norme et unités.**

    Un élément de $A$ s'écrit $z = a+b\alpha$ avec $a,b \in \mathbb{Z}$. Son conjugué est $\bar{z} = a+b\bar{\alpha} = a+b(1-\alpha) = (a+b)-b\alpha$. La norme est $N(z) = z\bar{z} = (a+b\alpha)((a+b)-b\alpha) = a(a+b) - ab\alpha + b(a+b)\alpha - b^2\alpha(1-\alpha) = a^2+ab - b^2(-5) = a^2+ab+5b^2$.

    La multiplicativité $N(xy)=N(x)N(y)$ découle de la multiplicativité du module complexe au carré (car $N(z)=|z|^2$).

    Un élément $u \in A$ est une unité si et seulement si $N(u)=1$. On cherche les solutions entières de $a^2+ab+5b^2=1$.

    En multipliant par 4 : $4a^2+4ab+20b^2=4 \implies (2a+b)^2+19b^2=4$.

    Si $b \neq 0$, $19b^2 \ge 19 > 4$. Donc $b=0$.

    L'équation devient $(2a)^2=4$, donc $4a^2=4 \implies a^2=1 \implies a=\pm 1$.

    Les seules unités sont donc $1$ et $-1$.

3.  **A est principal.**

    Cette question est très avancée. Une méthode consiste à montrer que $A$ est un UFD et utiliser le fait qu'il a un groupe de classes d'idéaux trivial. Un argument plus élémentaire (mais délicat) consiste à montrer que pour tous $x, y \in A$, $y \neq 0$, il existe $q,r \in A$ tels que $x=qy+r$ avec $N(r) < N(y)$. Ceci ferait de $A$ un anneau euclidien pour la norme $N$, ce qui n'est pas le cas. Une version plus faible (le lemme de division de Motzkin) est nécessaire, montrant que pour tout $x,y$, il existe $q$ tel que $N(x-qy) < N(y)$ ou que $x=qy$. C'est suffisant pour la principalité. La preuve complète dépasse le cadre d'un exercice standard. Nous admettrons ce point.

4.  **A n'est pas euclidien.**

    Raisonnons par l'absurde. Supposons que $A$ soit euclidien avec un stathme $\delta$.

    Soit $S = \{ \delta(x) \mid x \in A, x \neq 0, x \text{ non-unité} \}$. Cet ensemble est non vide (par exemple, $2 \in A$ et $N(2)=4$, donc $2$ n'est pas une unité). Soit $m = \min(S)$ et soit $x \in A$ tel que $\delta(x)=m$.

    Considérons l'anneau quotient $A/(x)$. Par définition de la division euclidienne, pour tout $a \in A$, il existe $q, r \in A$ tels que $a=qx+r$ avec $\delta(r) < \delta(x)$.

    La classe de $a$ modulo $(x)$ est la même que celle de $r$. Donc, tout élément de $A/(x)$ a un représentant $r$ avec $\delta(r) < \delta(x)$.

    Par minimalité de $\delta(x)$, tout tel $r$ doit être soit 0, soit une unité. Les unités de $A$ sont $\pm 1$.

    Donc, les seuls restes possibles sont $0, 1, -1$. L'anneau quotient $A/(x)$ aurait au plus 3 éléments : $\bar{0}, \bar{1}, \overline{-1}$.

    Ainsi, $|A/(x)| \le 3$.

    Cherchons un candidat pour $x$. Prenons $x=2$. $N(2)=4$, ce n'est pas une unité. Est-ce que $2$ peut avoir le stathme minimal ? Ou $x=3$, $N(3)=9$.

    Prenons $x=\alpha$, $N(\alpha)=5$. $x=\alpha-1$, $N(\alpha-1)=5$.

    Essayons de trouver un idéal $(x)$ tel que $|A/(x)| > 3$.

    Considérons $x=2$. Le quotient est $A/(2)$. Les éléments sont de la forme $a+b\alpha$ où $a,b \in \{0,1\}$. Le quotient est $A/2A \cong (\mathbb{Z}/2\mathbb{Z})[Y]/(Y^2-Y+5) \cong (\mathbb{Z}/2\mathbb{Z})[Y]/(Y^2+Y+1)$. Ce dernier polynôme est irréductible sur $\mathbb{Z}/2\mathbb{Z}$, donc le quotient est un corps à $2^2=4$ éléments.

    $|A/(2)|=4$.

    Si on choisit pour $x$ un élément non-inversible de stathme minimal, on doit avoir $|A/(x)| \le 3$.

    Or, nous avons trouvé un idéal $(2)$ pour lequel le quotient a 4 éléments. Cela implique que $2$ ne peut pas être un élément de stathme minimal.

    Donc $\delta(y) < \delta(2)$ pour un $y$ non-unité. Le seul candidat est $y$ tel que $|A/(y)| \le 3$. Or les seuls ideaux de cette taille sont (2) ou (3) dans Z... c'est plus compliqué.

    La bonne contradiction est : Quel que soit le choix de $x$ non-unité de stathme minimal, on a $|A/(x)| \le 3$.

    Or, les éléments $2$ et $3$ ne sont pas des unités. Donc ils ne peuvent pas être des éléments de stathme minimal, car $|A/(2)|=4$ et $|A/(3)| = N(3)=9$.

    Soit $x$ un élément non-unité de stathme minimal. Alors $x$ n'est pas $2$ ou $3$. Dans le quotient $A/(x)$, les éléments $2$ et $3$ sont non nuls. Mais $2$ et $3$ doivent être congrus à $0, 1$ ou $-1$ modulo $x$.

    - Si $2 \equiv 0 \pmod x$, $x|2$. Les diviseurs de $2$ sont (à unité près) $1, 2, \alpha, \bar{\alpha}$ (non, $N(\alpha)=5$ ne divise pas $N(2)=4$). $2$ est irréductible, donc $x$ est associé à $2$. Mais on a vu que $2$ ne peut être l'élément de stathme minimal.
    - Si $2 \equiv 1 \pmod x$, $x|(2-1)=1$, donc $x$ est une unité, contradiction.
    - Si $2 \equiv -1 \pmod x$, $x|(2+1)=3$. Les diviseurs de 3 sont (à unité près) $1,3$. Donc $x$ est associé à $3$. Mais on a vu que $3$ ne peut être l'élément de stathme minimal.

    Nous avons une contradiction. Il n'existe pas d'élément non-inversible de stathme minimal. L'anneau $A$ n'est donc pas euclidien.

**Réponse:** L'anneau $A = \mathbb{Z}[\frac{1+\sqrt{-19}}{2}]$ est un anneau principal (admis) mais il n'est pas euclidien, comme le montre le raisonnement par l'absurde sur l'existence d'un stathme euclidien.

</details>

## Exercise 3: Application Avancée

**Problème:** Soit $V$ un $K$-espace vectoriel de dimension finie et $u \in \mathcal{L}(V)$ un endomorphisme. Soit $K[u]$ la sous-algèbre de $\mathcal{L}(V)$ engendrée par $u$.

1. Montrer que $K[u]$ est isomorphe à l'anneau quotient $K[X]/(M_u)$, où $M_u$ est le polynôme minimal de $u$.
2. En déduire que la dimension de l'algèbre $K[u]$ est égale au degré du polynôme minimal de $u$.
3. Montrer que $K[u]$ est un corps si et seulement si le polynôme minimal de $u$ est irréductible dans $K[X]$.
4. Application : Soit $u \in \mathcal{L}(\mathbb{R}^4)$ l'endomorphisme dont la matrice dans la base canonique est $A = \begin{pmatrix} 0 & 0 & 0 & -1 \\ 1 & 0 & 0 & 0 \\ 0 & 1 & 0 & -2 \\ 0 & 0 & 1 & 0 \end{pmatrix}$. L'algèbre $\mathbb{R}[A]$ est-elle un corps ?

<details>

<summary>Solution</summary>

**Méthode:** La première question utilise le premier théorème d'isomorphisme pour les anneaux. Les questions suivantes sont des corollaires directs de cet isomorphisme en utilisant les propriétés des anneaux quotients de $K[X]$.

**Étapes:**

1.  **Isomorphisme.**

    Considérons le morphisme d'évaluation $\text{ev}_u : K[X] \to \mathcal{L}(V)$ qui à un polynôme $P(X)$ associe l'endomorphisme $P(u)$.

    L'image de ce morphisme est, par définition, la sous-algèbre engendrée par $u$, soit $\text{Im}(\text{ev}_u) = K[u]$.

    Le noyau de ce morphisme est l'idéal annulateur de $u$, $\text{Ker}(\text{ev}_u) = \text{Ann}(u)$. Comme $K[X]$ est principal, cet idéal est engendré par le polynôme minimal de $u$, $\text{Ann}(u) = (M_u)$.

    Par le premier théorème d'isomorphisme pour les anneaux, on a :

    $$ K[X] / \text{Ker}(\text{ev}_u) \cong \text{Im}(\text{ev}_u) $$

    Ce qui se traduit par :

    $$ K[X]/(M_u) \cong K[u] $$

2.  **Dimension.**

    L'isomorphisme $\phi: K[X]/(M_u) \to K[u]$ est un isomorphisme de $K$-algèbres, donc en particulier de $K$-espaces vectoriels. Ainsi, $\dim_K(K[u]) = \dim_K(K[X]/(M_u))$.

    L'espace vectoriel $K[X]/(M_u)$ a pour base les classes des monômes $\{ \overline{1}, \overline{X}, \overline{X}^2, \dots, \overline{X}^{d-1} \}$, où $d = \text{deg}(M_u)$.

    La dimension de cet espace est donc $d$. On conclut que $\dim_K(K[u]) = \text{deg}(M_u)$.

3.  **Condition pour être un corps.**

    L'algèbre $K[u]$ est un corps si et seulement si l'anneau $K[X]/(M_u)$ est un corps.

    Pour un anneau principal comme $K[X]$, l'anneau quotient $K[X]/(P)$ est un corps si et seulement si l'idéal $(P)$ est maximal.

    Dans $K[X]$, les idéaux maximaux sont ceux engendrés par des polynômes irréductibles.

    Par conséquent, $K[u]$ est un corps si et seulement si $M_u(X)$ est un polynôme irréductible dans $K[X]$.

4.  **Application.**

    Nous devons déterminer le polynôme minimal de $A$. Commençons par calculer son polynôme caractéristique $\chi_A(X)$.

    $$ \chi_A(X) = \det(XI - A) = \begin{vmatrix} X & 0 & 0 & 1 \\ -1 & X & 0 & 0 \\ 0 & -1 & X & 2 \\ 0 & 0 & -1 & X \end{vmatrix} $$

    En développant par rapport à la première ligne :

    $$ \chi_A(X) = X \begin{vmatrix} X & 0 & 0 \\ -1 & X & 2 \\ 0 & -1 & X \end{vmatrix} - 1 \begin{vmatrix} -1 & X & 0 \\ 0 & -1 & X \\ 0 & 0 & -1 \end{vmatrix} = X(X^3+2) - 1(-1) = X^4+2X+1 $$

    Soit $P(X) = X^4+2X+1$. $M_A(X)$ doit diviser $\chi_A(X) = P(X)$.

    Cherchons à factoriser $P(X)$ sur $\mathbb{R}$. Par le critère de la racine rationnelle, les seules racines rationnelles possibles sont $\pm 1$.

    $P(1)=4 \neq 0$. $P(-1)=1-2+1=0$. Donc $(X+1)$ est un facteur.

    Faisons la division euclidienne de $X^4+2X+1$ par $X+1$: on trouve $X^4+2X+1 = (X+1)(X^3-X^2+X+1)$.

    Soit $Q(X) = X^3-X^2+X+1$. $Q'(X) = 3X^2-2X+1$. Le discriminant de $Q'(X)$ est $4-12=-8<0$, donc $Q'(X)>0$ et $Q(X)$ est strictement croissante. Comme $\lim_{x \to -\infty} Q(x) = -\infty$ et $\lim_{x \to +\infty} Q(x) = +\infty$, $Q(X)$ a une unique racine réelle. Cette racine n'est pas entière (elle doit diviser 1, on teste $\pm 1$, $Q(1)=2, Q(-1)=-2$).

    Donc $Q(X)$ est irréductible sur $\mathbb{Q}$, mais sur $\mathbb{R}$, il se factorise en un facteur linéaire et un facteur quadratique irréductible. Donc $P(X) = \chi_A(X)$ n'est pas irréductible sur $\mathbb{R}$.

    Le polynôme minimal $M_A(X)$ divise $\chi_A(X)$. Comme $\chi_A(X)$ n'est pas irréductible, $M_A(X)$ ne peut pas être irréductible (sauf si $M_A$ est un des facteurs irréductibles de $\chi_A$).

    Si $M_A$ était irréductible, ce serait soit $X+1$ soit le facteur de degré 3.

    Testons $A+I$: $A+I \neq 0$. Testons $Q(A) = A^3-A^2+A+I \neq 0$ (calcul fastidieux mais probable).

    En général, si $\chi_A$ n'a pas de facteurs multiples, alors $M_A = \chi_A$. Le polynôme $P(X)=X^4+2X+1$ et sa dérivée $P'(X)=4X^3+2$ n'ont pas de racines communes (les racines de $P'$ sont les racines cubiques de $-1/2$, qui ne sont pas racines de $P$), donc $P$ n'a que des racines simples.

    Alors $M_A(X) = \chi_A(X) = X^4+2X+1$.

    Puisque $M_A(X)$ se factorise sur $\mathbb{R}$ (il a une racine en -1), il n'est pas irréductible.

    D'après la question 3, l'algèbre $\mathbb{R}[A]$ n'est pas un corps.

**Réponse:** L'algèbre $\mathbb{R}[A]$ n'est pas un corps car le polynôme minimal de $A$ est $M_A(X) = X^4+2X+1$, qui est réductible sur $\mathbb{R}$ (car il s'annule en -1).

</details>

## Exercise 4: Investigation Théorique

**Problème:** Soit $p$ un nombre premier et $n \ge 1$ un entier. On note $\mathbb{F}_{p^n}$ un corps fini de cardinal $p^n$.

1. Montrer que tout sous-corps de $\mathbb{F}_{p^n}$ est de la forme $\mathbb{F}_{p^d}$ pour un certain entier $d \ge 1$.
2. Montrer que $\mathbb{F}_{p^d}$ est un sous-corps de $\mathbb{F}_{p^n}$ si et seulement si $d$ divise $n$.
3. Combien y a-t-il de sous-corps de $\mathbb{F}_{2^{30}}$ ?

<details>

<summary>Solution</summary>

**Méthode:** La démonstration repose sur la structure des corps finis en tant qu'espaces vectoriels sur leur sous-corps premier et sur la caractérisation des éléments d'un corps fini comme racines du polynôme $X^{q}-X$.

**Étapes:**

1.  **Forme d'un sous-corps.**

    Soit $K$ un sous-corps de $L = \mathbb{F}_{p^n}$. La caractéristique de $L$ est $p$, donc son sous-corps premier est $\mathbb{F}_p$. Tout sous-corps $K$ doit contenir $\mathbb{F}_p$.

    Ainsi, $K$ est une extension de corps de $\mathbb{F}_p$. De plus, $K$ est un sous-espace vectoriel de $L$ (vu comme $\mathbb{F}_p$-espace vectoriel). Comme $L$ est de dimension finie $n$, $K$ est de dimension finie, disons $d$.

    Le cardinal de $K$ est donc $|\mathbb{F}_p|^d = p^d$. Par unicité (à isomorphisme près) du corps fini de cardinal $p^d$, $K$ est isomorphe à $\mathbb{F}_{p^d}$.

2.  **Condition de divisibilité.**

    ($\Rightarrow$) Supposons que $K = \mathbb{F}_{p^d}$ est un sous-corps de $L = \mathbb{F}_{p^n}$. Alors $L$ peut être vu comme un $K$-espace vectoriel. Soit $k = \dim_K(L)$.

    Par la formule des degrés pour les extensions de corps, on a :

    $$ [L:\mathbb{F}_p] = [L:K] \cdot [K:\mathbb{F}_p] $$

    En termes de dimensions : $n = k \cdot d$. Ceci implique que $d$ divise $n$.

    ($\Leftarrow$) Réciproquement, supposons que $d$ divise $n$. Soit $n=dk$.

    Le corps $L = \mathbb{F}_{p^n}$ est l'ensemble des racines du polynôme $P(X) = X^{p^n}-X$.

    Soit $K_d$ l'ensemble des racines du polynôme $Q(X) = X^{p^d}-X$ dans une clôture algébrique. On sait que $K_d$ est un corps de cardinal $p^d$.

    Nous devons montrer que $K_d \subseteq L$. Cela revient à montrer que si $x \in K_d$, alors $x \in L$.

    Si $x \in K_d$, alors $x^{p^d}=x$.

    Calculons $x^{p^n}$ :

    $x^{p^d} = x$

    $(x^{p^d})^{p^d} = x^{p^{2d}} = x^{p^d} = x$

    Par récurrence, $x^{p^{kd}} = x$ pour tout $k \ge 1$.

    Comme $d|n$, on a $n=kd$ pour un certain $k$. Donc $x^{p^n} = x^{p^{kd}} = x$.

    Ceci signifie que $x$ est une racine de $P(X)=X^{p^n}-X$, donc $x \in L$.

    Ainsi, $K_d \subseteq L$, donc $\mathbb{F}_{p^d}$ est un sous-corps de $\mathbb{F}_{p^n}$.

3.  **Application à $\mathbb{F}_{2^{30}}$.**

    Les sous-corps de $\mathbb{F}_{2^{30}}$ sont les corps $\mathbb{F}_{2^d}$ où $d$ est un diviseur de $30$.

    On doit donc compter le nombre de diviseurs de $30$.

    La décomposition en facteurs premiers de $30$ est $30 = 2 \cdot 3 \cdot 5$.

    Le nombre de diviseurs est le produit des exposants augmentés de 1 : $(1+1)(1+1)(1+1) = 2 \cdot 2 \cdot 2 = 8$.

    Les diviseurs sont $1, 2, 3, 5, 6, 10, 15, 30$.

    Il y a donc 8 sous-corps, qui sont $\mathbb{F}_{2^1}, \mathbb{F}_{2^2}, \mathbb{F}_{2^3}, \mathbb{F}_{2^5}, \mathbb{F}_{2^6}, \mathbb{F}_{2^{10}}, \mathbb{F}_{2^{15}}, \mathbb{F}_{2^{30}}$.

**Réponse:** Un corps $\mathbb{F}_{p^d}$ est un sous-corps de $\mathbb{F}_{p^n}$ si et seulement si $d$ divise $n$. Le corps $\mathbb{F}_{2^{30}}$ possède 8 sous-corps, correspondant aux 8 diviseurs de 30.

</details>

## Exercise 5: Preuve Complexe

**Problème:** Soit $A$ un anneau commutatif. Démontrer que le produit tensoriel de $A$-algèbres commutatives est le coproduit (ou somme) dans la catégorie des $A$-algèbres commutatives.

Plus précisément, soient $B$ et $C$ deux $A$-algèbres commutatives (données par des morphismes $f_B: A \to B$ et $f_C: A \to C$). On munit $B \otimes_A C$ de sa structure de $A$-algèbre canonique. Soient $i_B: B \to B \otimes_A C$ et $i_C: C \to B \otimes_A C$ les morphismes canoniques ($b \mapsto b \otimes 1_C$, $c \mapsto 1_B \otimes c$).

Montrer que pour toute $A$-algèbre commutative $D$ et toute paire de morphismes de $A$-algèbres $g_B: B \to D$ et $g_C: C \to D$, il existe un unique morphisme de $A$-algèbres $h: B \otimes_A C \to D$ tel que $h \circ i_B = g_B$ et $h \circ i_C = g_C$.

$$

\begin{CD}

A @>{f_B}>> B @>{i_B}>> B \otimes_A C \\

@| @V{g_B}VV @VV{h}V \\

A @>{f_D}>> D @<g_C<< C @<i_C<< B \otimes_A C

\end{CD}

$$

<details>

<summary>Solution</summary>

**Méthode:** La preuve repose sur la propriété universelle du produit tensoriel de modules. On définit une application $A$-bilinéaire de $B \times C$ dans $D$, ce qui induit une application $A$-linéaire unique de $B \otimes_A C$ dans $D$. Il faut ensuite vérifier que cette application est un morphisme d'algèbres et qu'elle est unique.

**Étapes:**

1.  **Construction de l'application $h$.**

    Considérons l'application $\phi: B \times C \to D$ définie par $\phi(b,c) = g_B(b) \cdot g_C(c)$.

    Cette application est $A$-bilinéaire. Vérifions-le.

    -   Pour $b_1, b_2 \in B, c \in C, \lambda \in A$:

        $\phi(b_1+b_2, c) = g_B(b_1+b_2)g_C(c) = (g_B(b_1)+g_B(b_2))g_C(c) = g_B(b_1)g_C(c) + g_B(b_2)g_C(c) = \phi(b_1,c)+\phi(b_2,c)$.

        $\phi(\lambda \cdot b_1, c) = \phi(f_B(\lambda)b_1, c) = g_B(f_B(\lambda)b_1)g_C(c)$.

        Comme $g_B$ est un morphisme de $A$-algèbres, $g_B \circ f_B = f_D$ (où $f_D: A \to D$ est le morphisme de structure de $D$). Donc $g_B(f_B(\lambda)b_1) = g_B(f_B(\lambda)) g_B(b_1) = f_D(\lambda) g_B(b_1) = \lambda \cdot g_B(b_1)$.

        Ainsi $\phi(\lambda \cdot b_1, c) = (\lambda \cdot g_B(b_1)) g_C(c) = \lambda \cdot (g_B(b_1)g_C(c)) = \lambda \cdot \phi(b_1,c)$.

    -   La linéarité par rapport à la deuxième variable est similaire.

    Par la propriété universelle du produit tensoriel de $A$-modules, il existe une unique application $A$-linéaire $h: B \otimes_A C \to D$ telle que $h(b \otimes c) = \phi(b,c) = g_B(b)g_C(c)$ pour tous $b \in B, c \in C$.

2.  **Vérifier que $h$ est un morphisme d'algèbres.**

    Nous devons montrer que $h$ respecte la multiplication et l'unité.

    -   Multiplication : Il suffit de le vérifier sur les tenseurs purs, qui engendrent $B \otimes_A C$.

        $h((b_1 \otimes c_1)(b_2 \otimes c_2)) = h((b_1b_2) \otimes (c_1c_2)) = g_B(b_1b_2)g_C(c_1c_2)$.

        Comme $g_B$ et $g_C$ sont des morphismes d'anneaux :

        $g_B(b_1b_2)g_C(c_1c_2) = (g_B(b_1)g_B(b_2))(g_C(c_1)g_C(c_2))$.

        Puisque $D$ est commutative :

        $= (g_B(b_1)g_C(c_1))(g_B(b_2)g_C(c_2)) = h(b_1 \otimes c_1) h(b_2 \otimes c_2)$.

        Donc $h$ est un morphisme d'anneaux.

    -   Unité : L'unité de $B \otimes_A C$ est $1_B \otimes 1_C$.

        $h(1_B \otimes 1_C) = g_B(1_B) g_C(1_C) = 1_D \cdot 1_D = 1_D$.

    -   Morphismes de $A$-algèbres : on a déjà construit $h$ comme une application $A$-linéaire. Un morphisme d'anneaux qui est $A$-linéaire est un morphisme de $A$-algèbres.

3.  **Vérifier que le diagramme commute.**
    -   Pour $b \in B$, $h \circ i_B(b) = h(b \otimes 1_C) = g_B(b)g_C(1_C) = g_B(b) \cdot 1_D = g_B(b)$. Donc $h \circ i_B = g_B$.
    -   Pour $c \in C$, $h \circ i_C(c) = h(1_B \otimes c) = g_B(1_B)g_C(c) = 1_D \cdot g_C(c) = g_C(c)$. Donc $h \circ i_C = g_C$.

4.  **Unicité de $h$.**

    Supposons qu'il existe un autre morphisme de $A$-algèbres $h' : B \otimes_A C \to D$ satisfaisant les mêmes conditions.

    Pour tout tenseur pur $b \otimes c$, on a $b \otimes c = (b \otimes 1_C)(1_B \otimes c) = i_B(b) \cdot i_C(c)$.

    Puisque $h'$ est un morphisme d'algèbres :

    $h'(b \otimes c) = h'(i_B(b) \cdot i_C(c)) = h'(i_B(b)) \cdot h'(i_C(c))$.

    Par hypothèse, $h'(i_B(b)) = g_B(b)$ et $h'(i_C(c)) = g_C(c)$.

    Donc $h'(b \otimes c) = g_B(b) g_C(c) = h(b \otimes c)$.

    Puisque $h$ et $h'$ coïncident sur les tenseurs purs, qui engendrent $B \otimes_A C$, $h$ et $h'$ sont égaux. L'unicité est prouvée.

**Réponse:** L'existence et l'unicité du morphisme $h$ sont établies, ce qui prouve que $B \otimes_A C$ muni des morphismes canoniques $i_B$ et $i_C$ est le coproduit de $B$ et $C$ dans la catégorie des $A$-algèbres commutatives.

</details>

## Exercise 6: Application Avancée

**Problème:** Utiliser le théorème chinois des restes pour les polynômes afin de trouver l'unique polynôme $P(X) \in \mathbb{Q}[X]$ de degré minimal satisfaisant le système de congruences suivant :

$$

\begin{cases}

P(X) \equiv 2X+1 & \pmod{X^2-1} \\

P(X) \equiv X-2 & \pmod{X^2+1}

\end{cases}

$$

<details>

<summary>Solution</summary>

**Méthode:** Les polynômes $M_1(X) = X^2-1$ et $M_2(X) = X^2+1$ sont premiers entre eux dans $\mathbb{Q}[X]$. Le théorème chinois des restes s'applique. On utilise l'algorithme d'Euclide étendu pour trouver des polynômes $U(X)$ et $V(X)$ tels que $U(X)M_1(X) + V(X)M_2(X) = 1$. La solution est alors de la forme $P(X) = (X-2)U(X)M_1(X) + (2X+1)V(X)M_2(X) \pmod{M_1(X)M_2(X)}$.

**Étapes:**

1.  **Vérifier que $M_1$ et $M_2$ sont premiers entre eux.**

    Le PGCD de $X^2-1$ et $X^2+1$ est le même que le PGCD de $X^2-1$ et $(X^2+1)-(X^2-1)=2$. Le PGCD est donc un diviseur de 2, qui est une unité dans $\mathbb{Q}[X]$. Donc ils sont premiers entre eux.

2.  **Appliquer l'algorithme d'Euclide étendu.**

    On cherche $U, V \in \mathbb{Q}[X]$ tels que $(X^2-1)U(X) + (X^2+1)V(X) = 1$.

    On effectue la division euclidienne :

    $X^2+1 = 1 \cdot (X^2-1) + 2$.

    Le dernier reste non nul est 2. On a donc une relation de Bézout pour 2 :

    $2 = (X^2+1) - 1 \cdot (X^2-1)$.

    Pour obtenir 1, on divise par 2 :

    $1 = \frac{1}{2}(X^2+1) - \frac{1}{2}(X^2-1)$.

    On peut donc prendre $U(X) = -1/2$ et $V(X) = 1/2$.

3.  **Construire la solution.**

    Le théorème chinois des restes nous donne une solution :

    $P(X) = a_2(X) U(X) M_1(X) + a_1(X) V(X) M_2(X)$, où $a_1(X)=2X+1$ et $a_2(X)=X-2$.

    $P(X) \equiv (X-2) \left(-\frac{1}{2}\right) (X^2-1) + (2X+1) \left(\frac{1}{2}\right) (X^2+1) \pmod{(X^2-1)(X^2+1)}$.
    
    Développons les termes :

    - Premier terme : $-\frac{1}{2}(X-2)(X^2-1) = -\frac{1}{2}(X^3-2X^2-X+2) = -\frac{1}{2}X^3+X^2+\frac{1}{2}X-1$.
    - Second terme : $\frac{1}{2}(2X+1)(X^2+1) = \frac{1}{2}(2X^3+X^2+2X+1) = X^3+\frac{1}{2}X^2+X+\frac{1}{2}$.

    Additionnons les deux termes :

    $P(X) = (-\frac{1}{2}X^3+X^2+\frac{1}{2}X-1) + (X^3+\frac{1}{2}X^2+X+\frac{1}{2})$

    $P(X) = \frac{1}{2}X^3 + \frac{3}{2}X^2 + \frac{3}{2}X - \frac{1}{2}$.

4.  **Vérifier la solution.**

    Le polynôme trouvé a un degré 3, qui est inférieur à $\text{deg}((X^2-1)(X^2+1)) = 4$. C'est donc bien le représentant de degré minimal.

    - Modulo $X^2-1$ (i.e. $X^2=1$):

      $P(X) = \frac{1}{2}X \cdot X^2 + \frac{3}{2}X^2 + \frac{3}{2}X - \frac{1}{2} = \frac{1}{2}X \cdot 1 + \frac{3}{2} \cdot 1 + \frac{3}{2}X - \frac{1}{2} = (\frac{1}{2}+\frac{3}{2})X + (\frac{3}{2}-\frac{1}{2}) = 2X+1$. C'est correct.

    - Modulo $X^2+1$ (i.e. $X^2=-1$):

      $P(X) = \frac{1}{2}X \cdot X^2 + \frac{3}{2}X^2 + \frac{3}{2}X - \frac{1}{2} = \frac{1}{2}X(-1) + \frac{3}{2}(-1) + \frac{3}{2}X - \frac{1}{2} = (-\frac{1}{2}+\frac{3}{2})X + (-\frac{3}{2}-\frac{1}{2}) = X-2$. C'est correct.

**Réponse:** Le polynôme de degré minimal satisfaisant le système est $P(X) = \frac{1}{2}X^3 + \frac{3}{2}X^2 + \frac{3}{2}X - \frac{1}{2}$.

</details>

## Exercise 7: Preuve Complexe

**Problème:** Démontrer le théorème de Gauss : Si $A$ est un anneau factoriel (UFD), alors l'anneau des polynômes $A[X]$ est aussi un anneau factoriel.

<details>

<summary>Solution</summary>

**Méthode:** La preuve est une construction classique en théorie des anneaux, qui se déroule en plusieurs étapes. On introduit la notion de polynôme primitif, on démontre le lemme de Gauss, puis on utilise le corps des fractions de $A$ pour déduire la factorisation dans $A[X]$ de celle dans $K[X]$.

**Étapes:**

1.  **Contenu et polynômes primitifs.**

    Soit $A$ un UFD et $K$ son corps des fractions. Pour un polynôme non nul $P(X) = a_n X^n + \dots + a_0 \in A[X]$, on définit le **contenu** de $P$, noté $c(P)$, comme le PGCD de ses coefficients $a_0, \dots, a_n$. (Le PGCD existe dans un UFD et est unique à une unité près).

    Un polynôme $P$ est dit **primitif** si son contenu est une unité, i.e., $c(P)=1$.

    Tout polynôme $P \in A[X]$ peut s'écrire de manière unique (à une unité près) sous la forme $P = c(P) \cdot P^*$, où $P^*$ est un polynôme primitif.

2.  **Lemme de Gauss.**

    Le produit de deux polynômes primitifs est un polynôme primitif.

    *Preuve :* Soient $P(X) = \sum a_i X^i$ et $Q(X) = \sum b_j X^j$ deux polynômes primitifs. Supposons par l'absurde que leur produit $PQ$ n'est pas primitif. Alors il existe un élément irréductible (et donc premier) $p \in A$ qui divise tous les coefficients de $PQ$.

    Soit $\pi: A \to A/(p)$ la projection canonique. On l'étend à un morphisme $\bar{\pi}: A[X] \to (A/(p))[X]$.

    Comme $P$ et $Q$ sont primitifs, $p$ ne divise pas tous leurs coefficients, donc $\bar{\pi}(P) \neq 0$ et $\bar{\pi}(Q) \neq 0$.

    L'anneau $A/(p)$ est intègre car $p$ est premier. Donc $(A/(p))[X]$ est aussi un anneau intègre.

    On a alors $\bar{\pi}(P)\bar{\pi}(Q) \neq 0$.

    Cependant, $\bar{\pi}(PQ) = \bar{\pi}(P)\bar{\pi}(Q)$. Comme $p$ divise tous les coefficients de $PQ$, $\bar{\pi}(PQ)=0$. Ceci est une contradiction.

    Donc $PQ$ doit être primitif.

3.  **Factorisation dans $A[X]$.**

    *Existence :* Soit $F \in A[X]$ non nul et non inversible.

    On peut écrire $F = c(F) \cdot F^*$ où $F^*$ est primitif.

    - $c(F)$ est un élément de $A$. Comme $A$ est factoriel, $c(F)$ se décompose en un produit d'irréductibles de $A$. Les irréductibles de $A$ restent irréductibles dans $A[X]$.
    - Il reste à factoriser le polynôme primitif $F^*$. On le considère comme un polynôme dans $K[X]$. Comme $K[X]$ est euclidien, il est factoriel. Donc $F^*$ se décompose en un produit de polynômes irréductibles dans $K[X]$ : $F^* = P_1 \cdots P_r$.

    Pour chaque $P_i \in K[X]$, on peut l'écrire sous la forme $P_i = \frac{c_i}{d_i} Q_i$, où $Q_i$ est un polynôme primitif de $A[X]$ et $c_i, d_i \in A$.

    Ainsi, $F^* = (\frac{c_1\cdots c_r}{d_1\cdots d_r}) Q_1 \cdots Q_r$. Soit cette fraction $k \in K$.

    $F^* = k \cdot (Q_1 \cdots Q_r)$.

    Le produit $Q_1 \cdots Q_r$ est un produit de polynômes primitifs, donc par le lemme de Gauss, c'est un polynôme primitif.

    En prenant le contenu des deux côtés de l'égalité $F^* = k \cdot (Q_1 \cdots Q_r)$, on a $c(F^*) = k \cdot c(Q_1 \cdots Q_r)$.

    Puisque $F^*$ et $Q_1 \cdots Q_r$ sont primitifs, leurs contenus sont des unités. Disons 1 pour simplifier. On a $1 = k \cdot 1$, donc $k$ est une unité dans $A$.

    On a donc factorisé $F^* = u \cdot Q_1 \cdots Q_r$, où $u$ est une unité et les $Q_i$ sont des polynômes primitifs irréductibles dans $K[X]$. Un polynôme primitif de $A[X]$ irréductible dans $K[X]$ est aussi irréductible dans $A[X]$.

    La combinaison de la factorisation de $c(F)$ et de $F^*$ donne l'existence d'une factorisation de $F$ en irréductibles de $A[X]$.

    *Unicité :* L'unicité découle de l'unicité dans $A$ et dans $K[X]$ et du lemme de Gauss. Si $F = p_1\cdots p_r = q_1\cdots q_s$ sont deux factorisations en irréductibles dans $A[X]$. On prend les contenus: $c(F) = c(p_1)\cdots c(p_r) = c(q_1)\cdots c(q_s)$. Par unicité dans $A$, les facteurs $c(p_i)$ et $c(q_j)$ (qui sont les irréductibles de $A$) sont les mêmes à une unité près. En simplifiant, on se ramène à une égalité entre produits de polynômes primitifs irréductibles. En passant dans $K[X]$, on utilise l'unicité de la factorisation dans $K[X]$ pour conclure que les polynômes sont les mêmes à des facteurs de $K^\times$ près. En utilisant la primitivité, on montre que ces facteurs sont des unités de $A$.

**Réponse:** La preuve montre que l'existence et l'unicité de la factorisation en irréductibles dans $A$ et dans $K[X]$ (le corps des fractions de $A$) se combinent, via le lemme de Gauss, pour établir que $A[X]$ est également un anneau factoriel.

</details>

## Exercise 8: Investigation Théorique

**Problème:** Classifier, à isomorphisme près, toutes les $\mathbb{R}$-algèbres commutatives et unitaires de dimension 3.

<details>

<summary>Solution</summary>

**Méthode:** Soit $B$ une telle algèbre. Si $B$ contient un élément $x$ tel que $(1, x, x^2)$ est une base de $B$, alors $B \cong \mathbb{R}[X]/(P(X))$ où $P(X)$ est le polynôme minimal de $x$, de degré 3. La classification dépend de la factorisation de $P(X)$ sur $\mathbb{R}$. Si l'algèbre n'est pas engendrée par un seul élément, la situation est plus complexe, mais on peut montrer que toute algèbre de dimension 3 est de ce type ou est un produit d'algèbres de dimension inférieure.

**Étapes:**

1.  **Cas monogène : $B \cong \mathbb{R}[X]/(P)$ avec $\deg(P)=3$.**

    Un polynôme de degré 3 à coefficients réels $P(X)$ a toujours au moins une racine réelle. Sa factorisation sur $\mathbb{R}$ peut prendre deux formes :

    a) **Trois racines réelles distinctes :** $P(X) = c(X-r_1)(X-r_2)(X-r_3)$. Les idéaux $(X-r_i)$ sont comaximaux. Par le théorème chinois des restes :

    $$ B \cong \mathbb{R}[X]/((X-r_1)(X-r_2)(X-r_3)) \cong \mathbb{R}[X]/(X-r_1) \times \mathbb{R}[X]/(X-r_2) \times \mathbb{R}[X]/(X-r_3) $$

    Chaque $\mathbb{R}[X]/(X-r_i)$ est isomorphe à $\mathbb{R}$. Donc $B \cong \mathbb{R} \times \mathbb{R} \times \mathbb{R}$.

    b) **Une racine réelle et deux racines complexes conjuguées non réelles :** $P(X)=c(X-r)(X^2+aX+b)$ avec $a^2-4b<0$. L'idéal $(X^2+aX+b)$ est maximal, engendré par un polynôme irréductible. Par le théorème chinois des restes :

    $$ B \cong \mathbb{R}[X]/((X-r)(X^2+aX+b)) \cong \mathbb{R}[X]/(X-r) \times \mathbb{R}[X]/(X^2+aX+b) $$

    $\mathbb{R}[X]/(X-r) \cong \mathbb{R}$ et $\mathbb{R}[X]/(X^2+aX+b) \cong \mathbb{C}$. Donc $B \cong \mathbb{R} \times \mathbb{C}$.

    c) **Une racine réelle triple :** $P(X) = c(X-r)^3$. On peut supposer $r=0$ par translation.

    $B \cong \mathbb{R}[X]/(X^3)$. C'est une algèbre locale avec des éléments nilpotents (par exemple, la classe de $X$).

    d) **Une racine réelle double et une racine simple :** $P(X) = c(X-r_1)^2(X-r_2)$ avec $r_1 \neq r_2$. On peut supposer $r_1=0, r_2=1$.

    $B \cong \mathbb{R}[X]/(X^2(X-1))$. Par le théorème chinois des restes :

    $$ B \cong \mathbb{R}[X]/(X^2) \times \mathbb{R}[X]/(X-1) \cong \mathbb{R}[X]/(X^2) \times \mathbb{R} $$

    L'anneau $\mathbb{R}[X]/(X^2)$ est l'anneau des nombres duaux.

2.  **Analyse des algèbres avec nilpotents ou idempotents.**

    Une algèbre commutative de dimension finie sur un corps est soit un produit d'algèbres locales (Théorème de structure de Artin-Wedderburn pour le cas commutatif).

    - Si $B$ n'a pas d'éléments nilpotents non nuls (algèbre réduite), elle est isomorphe à un produit de corps. Les seules extensions finies de $\mathbb{R}$ sont $\mathbb{R}$ et $\mathbb{C}$. Les produits possibles de dimension 3 sont $\mathbb{R} \times \mathbb{R} \times \mathbb{R}$ et $\mathbb{R} \times \mathbb{C}$.
    - Si $B$ a des éléments nilpotents, elle n'est pas réduite.

    On trouve les algèbres suivantes :

        - $\mathbb{R}[X]/(X^3)$ : algèbre locale, radical nilpotent d'indice 3.
        - $\mathbb{R}[X]/(X^2) \times \mathbb{R}$ : produit d'une algèbre locale et d'un corps.

3.  **Cas non-monogène.**

    Une troisième algèbre locale est possible. Soit l'algèbre $B = \mathbb{R}[X,Y]/(X^2, XY, Y^2)$. Elle est de dimension 3, avec pour base $(1, \bar{X}, \bar{Y})$. C'est une algèbre locale où tous les éléments de l'idéal maximal $(\bar{X}, \bar{Y})$ ont un carré nul.

4.  **Synthèse.**

    En rassemblant les résultats, on obtient 5 classes d'isomorphisme :

    1.  **Réduites (pas d'éléments nilpotents non nuls) :**
        -   $\mathbb{R} \times \mathbb{R} \times \mathbb{R}$
        -   $\mathbb{R} \times \mathbb{C}$
    2.  **Non réduites (avec éléments nilpotents) :**
        -   $\mathbb{R}[X]/(X^3)$
        -   $\mathbb{R} \times \mathbb{R}[X]/(X^2)$
        -   $\mathbb{R}[X,Y]/(X^2, XY, Y^2)$

**Réponse:** Il existe 5 classes d'isomorphisme pour les $\mathbb{R}$-algèbres commutatives unitaires de dimension 3 :

1.  $\mathbb{R} \times \mathbb{R} \times \mathbb{R}$
2.  $\mathbb{R} \times \mathbb{C}$
3.  $\mathbb{R}[X]/(X^3)$
4.  $\mathbb{R} \times \mathbb{R}[X]/(X^2)$
5.  $\mathbb{R}[X,Y]/(X^2, XY, Y^2)$

</details>

## Exercise 9: Preuve Complexe

**Problème:** Soit $A$ un anneau commutatif unitaire. Démontrer que le centre de l'algèbre des matrices $M_n(A)$, noté $Z(M_n(A))$, est l'ensemble des matrices scalaires $\{ a \cdot I_n \mid a \in A \}$.

<details>

<summary>Solution</summary>

**Méthode:** La preuve consiste à prendre une matrice arbitraire $M$ dans le centre et à utiliser la condition de commutation $ME = EM$ avec des matrices bien choisies $E$, typiquement les matrices de la base canonique de $M_n(A)$.

**Étapes:**

1.  **Inclusion $\supseteq$.**

    Soit $M = a \cdot I_n$ une matrice scalaire, où $a \in A$. Pour toute matrice $B \in M_n(A)$, on a :

    $MB = (aI_n)B = a(I_nB) = aB$.

    $BM = B(aI_n) = a(BI_n) = aB$.

    Donc $MB=BM$. Les matrices scalaires sont bien dans le centre $Z(M_n(A))$.

2.  **Inclusion $\subseteq$.**

    Soit $M = (m_{ij})_{1 \le i,j \le n}$ une matrice dans $Z(M_n(A))$. Par définition, $M$ commute avec toutes les matrices de $M_n(A)$.

    Soit $E_{kl}$ la matrice avec un 1 à la position $(k,l)$ et des 0 partout ailleurs. Ces matrices forment une base du $A$-module $M_n(A)$. Il suffit de tester la commutation avec ces matrices.

    La condition est $M E_{kl} = E_{kl} M$ pour tous $k,l \in \{1, \dots, n\}$.

3.  **Calcul de $M E_{kl}$.**

    La multiplication à droite par $E_{kl}$ a pour effet de ne conserver que la $k$-ième colonne de $M$ et de la placer dans la $l$-ième colonne du résultat, les autres colonnes étant nulles.

    Le coefficient $(i,j)$ de $M E_{kl}$ est $\sum_{p=1}^n m_{ip} (E_{kl})_{pj}$. Ce terme est non nul seulement si $j=l$ et $p=k$.

    Donc $(M E_{kl})_{ij} = m_{ik} \delta_{jl}$, où $\delta$ est le symbole de Kronecker.

    La matrice $M E_{kl}$ a pour $l$-ième colonne la $k$-ième colonne de $M$, et des zéros ailleurs.

    $$ M E_{kl} = \begin{pmatrix} 0 & \cdots & m_{1k} & \cdots & 0 \\ \vdots & & \vdots & & \vdots \\ 0 & \cdots & m_{nk} & \cdots & 0 \end{pmatrix} \quad (\text{colonne } l) $$

4.  **Calcul de $E_{kl} M$.**

    La multiplication à gauche par $E_{kl}$ a pour effet de ne conserver que la $l$-ième ligne de $M$ et de la placer dans la $k$-ième ligne du résultat, les autres lignes étant nulles.

    Le coefficient $(i,j)$ de $E_{kl} M$ est $\sum_{p=1}^n (E_{kl})_{ip} m_{pj}$. Ce terme est non nul seulement si $i=k$ et $p=l$.

    Donc $(E_{kl} M)_{ij} = \delta_{ik} m_{lj}$.

    La matrice $E_{kl} M$ a pour $k$-ième ligne la $l$-ième ligne de $M$, et des zéros ailleurs.

    $$ E_{kl} M = \begin{pmatrix} 0 & \cdots & 0 \\ \vdots & & \vdots \\ m_{l1} & \cdots & m_{ln} \\ \vdots & & \vdots \\ 0 & \cdots & 0 \end{pmatrix} \quad (\text{ligne } k) $$

5.  **Comparaison et conclusion.**

    En égalant les coefficients $(M E_{kl})_{ij} = (E_{kl} M)_{ij}$ pour tous $i,j$, on obtient $m_{ik} \delta_{jl} = \delta_{ik} m_{lj}$.

    - **Prenons $k=l$.** La condition devient $m_{ik} \delta_{jk} = \delta_{ik} m_{kj}$.
      - Si $i \neq k$, le terme de droite est nul. Le terme de gauche est $m_{ik} \delta_{jk}$. Pour qu'il soit nul pour tout $j$, il faut prendre $j \neq k$. Mais si on prend $j=k$, on obtient $m_{ik} = 0$. Donc, pour $i \neq k$, $m_{ik}=0$.
      - Ceci signifie que tous les coefficients non-diagonaux de $M$ sont nuls. $M$ est une matrice diagonale. Soit $M = \text{diag}(d_1, \dots, d_n)$.

    - **Maintenant que M est diagonale, $m_{ij}=d_i \delta_{ij}$.**

      La condition $m_{ik} \delta_{jl} = \delta_{ik} m_{lj}$ devient $d_i \delta_{ik} \delta_{jl} = \delta_{ik} d_l \delta_{lj}$.

      Choisissons $i=k$ et $j=l$. L'équation est $d_k \delta_{kk} \delta_{ll} = \delta_{kk} d_l \delta_{ll}$, ce qui donne $d_k=d_l$.

      Ceci est vrai pour tous $k,l \in \{1, \dots, n\}$.

      Donc, tous les éléments diagonaux de $M$ sont égaux. Soit $d_1 = d_2 = \dots = d_n = a$.

      La matrice $M$ est donc de la forme $a \cdot I_n$.

**Réponse:** Le centre de $M_n(A)$ est l'ensemble des matrices scalaires $\{a \cdot I_n \mid a \in A\}$.

</details>

## Exercise 10: Application Avancée

**Problème:** Montrer que l'anneau des entiers d'Eisenstein, $A = \mathbb{Z}[\omega] = \{a+b\omega \mid a,b \in \mathbb{Z}\}$, où $\omega = e^{i2\pi/3} = \frac{-1+i\sqrt{3}}{2}$, est un anneau euclidien. On utilisera la norme $N(z) = |z|^2$.

<details>

<summary>Solution</summary>

**Méthode:** On doit montrer que pour tous $x, y \in A$ avec $y \neq 0$, il existe $q, r \in A$ tels que $x = qy+r$ et $N(r) < N(y)$. La preuve est géométrique. On montre que pour tout nombre complexe $z$, il existe un entier d'Eisenstein $q$ tel que la distance de $z$ à $q$ est inférieure à 1.

**Étapes:**

1.  **Définition de la norme.**

    Soit $z = a+b\omega \in \mathbb{Z}[\omega]$. Le polynôme minimal de $\omega$ est $X^2+X+1=0$. On a $\omega^2 = -\omega-1$. Le conjugué de $\omega$ est $\bar{\omega} = \omega^2$.

    La norme est $N(z) = z \bar{z} = (a+b\omega)(a+b\bar{\omega}) = a^2 + ab(\omega+\bar{\omega}) + b^2\omega\bar{\omega}$.

    Comme $\omega+\bar{\omega}=-1$ et $\omega\bar{\omega}=1$, on a $N(a+b\omega) = a^2 - ab + b^2$.

    Cette norme est toujours un entier naturel, et $N(z)=0 \iff z=0$.

2.  **Condition de la division euclidienne.**

    Soient $x,y \in A$, avec $y \neq 0$. On cherche $q, r \in A$ tels que $x=qy+r$ et $N(r) < N(y)$.

    Cette équation est équivalente à $x/y = q + r/y$.

    En prenant la norme, la condition devient $N(r/y) < 1$, ce qui est équivalent à $N(x/y - q) < 1$.

    Soit $z = x/y$. C'est un élément du corps $\mathbb{Q}(\omega)$. Nous devons montrer que pour tout $z \in \mathbb{Q}(\omega)$, il existe un $q \in \mathbb{Z}[\omega]$ tel que $N(z-q) < 1$.

3.  **Approche géométrique.**

    L'anneau $\mathbb{Z}[\omega]$ forme un réseau (une grille) dans le plan complexe, engendré par les vecteurs $1$ et $\omega$. Ce réseau est constitué de parallélogrammes qui sont des losanges formés de deux triangles équilatéraux.

    Tout point $z$ du plan complexe se trouve dans l'un de ces parallélogrammes. Les sommets de ce parallélogramme sont des points du réseau, disons $v_1, v_2, v_3, v_4$.

    Le point du réseau le plus proche de $z$ est l'un de ses sommets. Soit $q$ ce sommet. Nous devons majorer la distance maximale $|z-q|$.

    Le point d'un parallélogramme qui est le plus éloigné de tous les sommets est son centre.

    Considérons le parallélogramme de sommets $0, 1, \omega, 1+\omega$. Son centre est $(1+\omega)/2$.

    Calculons la distance au carré de ce centre au sommet le plus proche, qui est 0.

    $N\left(\frac{1+\omega}{2}\right) = \left|\frac{1+\frac{-1+i\sqrt{3}}{2}}{2}\right|^2 = \left|\frac{\frac{1+i\sqrt{3}}{2}}{2}\right|^2 = \left|\frac{1+i\sqrt{3}}{4}\right|^2 = \frac{1^2+(\sqrt{3})^2}{16} = \frac{4}{16} = \frac{1}{4}$.

    Cette distance est la distance maximale au carré entre un point du parallélogramme et le sommet le plus proche.

    Pour tout $z \in \mathbb{C}$, on peut trouver un $q \in \mathbb{Z}[\omega]$ tel que $|z-q|^2 \le (\text{rayon du cercle circonscrit à un triangle équilatéral de côté 1})^2$. Le centre du triangle $0,1,\omega$ est $(1+\omega)/3$. La distance au carré à un sommet est $|(1+\omega)/3|^2 = N((1+\omega)/3) = \frac{1}{9} N(1+\omega) = \frac{1}{9} (1^2-1(1)+1^2) = 1/9$. Le point le plus éloigné est en fait le centre du cercle circonscrit du triangle $0,1,\omega$, qui est le centre de gravité. La distance maximale au carré est $1/3$.

    Soit $z=s+t\omega$ avec $s,t \in \mathbb{R}$. On cherche $q=a+b\omega$ avec $a,b \in \mathbb{Z}$ pour minimiser $N(z-q)$.

    On peut choisir $b$ comme l'entier le plus proche de $t$. $|t-b| \le 1/2$.

    Puis on choisit $a$ comme l'entier le plus proche de $s$. $|s-a| \le 1/2$.

    $z-q = (s-a)+(t-b)\omega$.

    $N(z-q) = (s-a)^2 - (s-a)(t-b) + (t-b)^2$.

    Avec $|s-a|\le 1/2$ et $|t-b|\le 1/2$, on a :

    $N(z-q) \le (1/2)^2 - (-(1/2))(1/2) + (1/2)^2 = 1/4+1/4+1/4=3/4$ (cas le plus défavorable).

    Une meilleure approximation est possible. Soit $z=u+iv \in \mathbb{C}$. On cherche $q=a+b\omega = (a-b/2)+i(b\sqrt{3}/2)$.

    On choisit d'abord $b$ tel que $|v - b\sqrt{3}/2|$ soit minimal. On choisit $b$ pour que $b\sqrt{3}/2$ soit le plus proche de $v$. La distance entre deux lignes horizontales du réseau est $\sqrt{3}/2$. Donc $|v-b\sqrt{3}/2| \le \sqrt{3}/4$.

    Puis, on choisit $a$ pour que $a-b/2$ soit le plus proche de $u$. La distance horizontale entre les points sur cette ligne est 1. Donc $|u-(a-b/2)| \le 1/2$.

    Alors $|z-q|^2 = |(u-(a-b/2)) + i(v-b\sqrt{3}/2)|^2 \le (1/2)^2 + (\sqrt{3}/4)^2 = 1/4 + 3/16 = 7/16 < 1$.

    Cette majoration est suffisante.

4.  **Conclusion.**

    Pour tout $z \in \mathbb{Q}(\omega)$, il existe un entier d'Eisenstein $q \in \mathbb{Z}[\omega]$ tel que $N(z-q) < 1$.

    En posant $z=x/y$, on a trouvé un $q$ tel que $N(x/y - q) < 1$.

    Posons $r = x - qy$. $r \in \mathbb{Z}[\omega]$ car $x, q, y \in \mathbb{Z}[\omega]$.

    On a $x=qy+r$.

    Et $N(r) = N(x-qy) = N(y(x/y - q)) = N(y)N(x/y-q) < N(y) \cdot 1 = N(y)$.

    La condition de la division euclidienne est satisfaite.

**Réponse:** L'anneau des entiers d'Eisenstein $\mathbb{Z}[\omega]$ est un anneau euclidien pour la norme $N(a+b\omega) = a^2-ab+b^2$.

</details>
