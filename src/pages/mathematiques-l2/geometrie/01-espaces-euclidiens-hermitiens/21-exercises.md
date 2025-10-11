---
title: B - Exercices
order: 22
level: pro
chapter: B - Concepts
course: Géométrie
tags: ["exercises", "practice", "pro"]
---

# Exercices: Espaces Euclidiens et Hermitiens (B)

## Exercice 1: [Investigation Théorique]

**Problème:** Soit $E$ un espace vectoriel hermitien de dimension finie $n$ sur $\mathbb{C}$. Notons $\langle \cdot, \cdot \rangle_{\mathbb{C}}$ son produit scalaire hermitien. On peut considérer $E$ comme un espace vectoriel sur $\mathbb{R}$, noté $E_{\mathbb{R}}$, de dimension $2n$.

1.  Montrer que l'application $\varphi: E \times E \to \mathbb{R}$ définie par $\varphi(x, y) = \text{Re}(\langle x, y \rangle_{\mathbb{C}})$ est un produit scalaire euclidien sur $E_{\mathbb{R}}$. On notera ce produit scalaire $\langle \cdot, \cdot \rangle_{\mathbb{R}}$.
2.  Soit $(e_1, \dots, e_n)$ une base orthonormée de $E$ sur $\mathbb{C}$. Montrer que la famille $\mathcal{B} = (e_1, \dots, e_n, ie_1, \dots, ie_n)$ est une base de $E_{\mathbb{R}}$.
3.  Calculer la matrice de Gram du produit scalaire $\langle \cdot, \cdot \rangle_{\mathbb{R}}$ dans la base $\mathcal{B}$. La base $\mathcal{B}$ est-elle orthogonale pour $\langle \cdot, \cdot \rangle_{\mathbb{R}}$ ?
4.  Soit $u \in \mathcal{L}(E)$ un endomorphisme de l'espace hermitien $E$. On le considère comme un endomorphisme de l'espace euclidien $E_{\mathbb{R}}$, noté $u_{\mathbb{R}}$. Si $u$ est autoadjoint sur $E$ ($u=u^*$), que peut-on dire de $u_{\mathbb{R}}$ sur $E_{\mathbb{R}}$ ? Est-il nécessairement autoadjoint pour $\langle \cdot, \cdot \rangle_{\mathbb{R}}$ ?

<details>

<summary>Solution</summary>

**Méthode:** Cette investigation explore la relation entre les structures hermitiennes et euclidiennes. Nous vérifierons les axiomes du produit scalaire, puis nous utiliserons les propriétés de la base complexe pour construire une base réelle et calculer les produits scalaires entre ses vecteurs. Enfin, nous traduirons la condition d'autoadjonction de $u$ dans la structure réelle.

**Étapes:**

1.  **Vérification du produit scalaire euclidien:**
    -   **Bilinéarité sur $\mathbb{R}$**: Soient $x, y, z \in E$ et $\lambda \in \mathbb{R}$.

        $\varphi(x+\lambda y, z) = \text{Re}(\langle x+\lambda y, z \rangle_{\mathbb{C}}) = \text{Re}(\langle x, z \rangle_{\mathbb{C}} + \lambda \langle y, z \rangle_{\mathbb{C}}) = \text{Re}(\langle x, z \rangle_{\mathbb{C}}) + \lambda \text{Re}(\langle y, z \rangle_{\mathbb{C}}) = \varphi(x, z) + \lambda \varphi(y, z)$. La linéarité à gauche est vérifiée (pour $\lambda \in \mathbb{R}$).

        La linéarité à droite est analogue via la symétrie.

    -   **Symétrie**: $\varphi(y, x) = \text{Re}(\langle y, x \rangle_{\mathbb{C}}) = \text{Re}(\overline{\langle x, y \rangle_{\mathbb{C}}}) = \text{Re}(\langle x, y \rangle_{\mathbb{C}}) = \varphi(x, y)$.
    -   **Définie positive**: $\varphi(x, x) = \text{Re}(\langle x, x \rangle_{\mathbb{C}})$. Comme $\langle x, x \rangle_{\mathbb{C}}$ est un réel positif (car c'est un produit scalaire hermitien), on a $\varphi(x, x) = \langle x, x \rangle_{\mathbb{C}} = \|x\|^2_{\mathbb{C}}$. Donc $\varphi(x, x) \ge 0$. De plus, $\varphi(x, x) = 0 \iff \|x\|^2_{\mathbb{C}} = 0 \iff x=0_E$.

    L'application $\varphi$ est donc bien un produit scalaire euclidien sur $E_{\mathbb{R}}$.

2.  **Construction de la base réelle:**

    La famille $\mathcal{B} = (e_1, \dots, e_n, ie_1, \dots, ie_n)$ contient $2n$ vecteurs. Comme $\dim_{\mathbb{R}}(E_{\mathbb{R}}) = 2n$, il suffit de montrer qu'elle est libre sur $\mathbb{R}$.

    Soit $\sum_{j=1}^n \alpha_j e_j + \sum_{j=1}^n \beta_j (ie_j) = 0_E$ avec $\alpha_j, \beta_j \in \mathbb{R}$.

    Ceci s'écrit $\sum_{j=1}^n (\alpha_j + i\beta_j) e_j = 0_E$.

    Puisque $(e_1, \dots, e_n)$ est une base de $E$ sur $\mathbb{C}$, ses vecteurs sont $\mathbb{C}$-linéairement indépendants. Donc, pour tout $j$, $\alpha_j + i\beta_j = 0$. Comme $\alpha_j, \beta_j$ sont réels, cela implique $\alpha_j = 0$ et $\beta_j = 0$ pour tout $j$. La famille $\mathcal{B}$ est donc libre sur $\mathbb{R}$ et forme une base de $E_{\mathbb{R}}$.

3.  **Matrice de Gram:**

    Calculons les produits scalaires $\langle \cdot, \cdot \rangle_{\mathbb{R}}$ entre les vecteurs de $\mathcal{B}$.

    -   $\langle e_j, e_k \rangle_{\mathbb{R}} = \text{Re}(\langle e_j, e_k \rangle_{\mathbb{C}}) = \text{Re}(\delta_{jk}) = \delta_{jk}$.
    -   $\langle ie_j, ie_k \rangle_{\mathbb{R}} = \text{Re}(\langle ie_j, ie_k \rangle_{\mathbb{C}}) = \text{Re}(i \cdot \bar{i} \langle e_j, e_k \rangle_{\mathbb{C}}) = \text{Re}(\langle e_j, e_k \rangle_{\mathbb{C}}) = \delta_{jk}$.
    -   $\langle e_j, ie_k \rangle_{\mathbb{R}} = \text{Re}(\langle e_j, ie_k \rangle_{\mathbb{C}}) = \text{Re}(\bar{i} \langle e_j, e_k \rangle_{\mathbb{C}}) = \text{Re}(-i \delta_{jk}) = 0$.

    La base $\mathcal{B}$ est donc orthonormée pour le produit scalaire $\langle \cdot, \cdot \rangle_{\mathbb{R}}$. La matrice de Gram est $I_{2n}$.

4.  **Adjoint de l'endomorphisme:**

    Supposons $u=u^*$. Pour $x, y \in E$, on a $\langle u(x), y \rangle_{\mathbb{C}} = \langle x, u(y) \rangle_{\mathbb{C}}$.

    Calculons $\langle u_{\mathbb{R}}(x), y \rangle_{\mathbb{R}} = \text{Re}(\langle u(x), y \rangle_{\mathbb{C}}) = \text{Re}(\langle x, u(y) \rangle_{\mathbb{C}}) = \langle x, u_{\mathbb{R}}(y) \rangle_{\mathbb{R}}$.

    Donc, si $u$ est autoadjoint sur $E$, alors $u_{\mathbb{R}}$ est autoadjoint sur $E_{\mathbb{R}}$.

**Réponse:**

1.  $\varphi(x, y) = \text{Re}(\langle x, y \rangle_{\mathbb{C}})$ est un produit scalaire euclidien.
2.  $\mathcal{B} = (e_1, \dots, e_n, ie_1, \dots, ie_n)$ est une base de $E_{\mathbb{R}}$.
3.  La matrice de Gram est $I_{2n}$, la base $\mathcal{B}$ est orthonormée pour $\langle \cdot, \cdot \rangle_{\mathbb{R}}$.
4.  Si $u$ est autoadjoint sur $E$, alors $u_{\mathbb{R}}$ est autoadjoint sur $E_{\mathbb{R}}$.

</details>

## Exercice 2: [Preuve Complexe]

**Problème:** Soit $(E, \langle\cdot,\cdot\rangle)$ un espace préhilbertien complexe. L'inégalité de Cauchy-Schwarz stipule que $|\langle x,y \rangle| \leq \|x\| \|y\|$.

1.  Démontrer l'**inégalité de Bessel** pour une famille orthonormée finie $(e_1, \dots, e_n)$: pour tout $x \in E$, on a $\sum_{k=1}^n |\langle x, e_k \rangle|^2 \le \|x\|^2$. (Indication : développer $\|x - \sum_{k=1}^n \langle x, e_k \rangle e_k\|^2$).
2.  Utiliser l'inégalité de Bessel pour fournir une preuve alternative de l'inégalité de Cauchy-Schwarz. (Indication : considérer le cas où $y=0$ puis $y \neq 0$ et construire une famille orthonormée à partir de $y$).
3.  Généraliser l'inégalité triangulaire en prouvant que pour tous vecteurs $x_1, \dots, x_m \in E$:

    $$ \left\| \sum_{i=1}^m x_i \right\| \le \sum_{i=1}^m \|x_i\| $$

    Puis, en utilisant cette généralisation et Cauchy-Schwarz, prouver l'**inégalité de Aczél** : si $(a_k)_{1\le k \le n}$ et $(b_k)_{1\le k \le n}$ sont des suites de nombres réels telles que $a_1^2 - \sum_{k=2}^n a_k^2 > 0$, alors

    $$ \left(a_1 b_1 - \sum_{k=2}^n a_k b_k\right)^2 \ge \left(a_1^2 - \sum_{k=2}^n a_k^2\right) \left(b_1^2 - \sum_{k=2}^n b_k^2\right) $$

<details>

<summary>Solution</summary>

**Méthode:** La première partie est une application directe du calcul dans un espace préhilbertien. La seconde partie utilise astucieusement ce résultat. La troisième partie est une application à l'algèbre pour déduire une inégalité non triviale à partir de la géométrie des espaces euclidiens.

**Étapes:**

1.  **Inégalité de Bessel:**

    Soit $x' = \sum_{k=1}^n \langle x, e_k \rangle e_k$. On calcule :

    $0 \le \|x - x'\|^2 = \langle x - x', x - x' \rangle = \|x\|^2 - \langle x, x' \rangle - \langle x', x \rangle + \|x'\|^2$.

    Comme $(e_k)$ est orthonormée, $\langle x', x \rangle = \langle \sum_k \langle x, e_k \rangle e_k, x \rangle = \sum_k \overline{\langle x, e_k \rangle} \langle e_k, x \rangle = \sum_k |\langle x, e_k \rangle|^2$.

    De même, $\langle x, x' \rangle = \overline{\langle x', x \rangle} = \sum_k |\langle x, e_k \rangle|^2$.

    Et $\|x'\|^2 = \langle \sum_j \langle x, e_j \rangle e_j, \sum_k \langle x, e_k \rangle e_k \rangle = \sum_{j,k} \langle x, e_j \rangle \overline{\langle x, e_k \rangle} \langle e_j, e_k \rangle = \sum_k |\langle x, e_k \rangle|^2$.

    En substituant, on obtient $0 \le \|x\|^2 - \sum_k |\langle x, e_k \rangle|^2 - \sum_k |\langle x, e_k \rangle|^2 + \sum_k |\langle x, e_k \rangle|^2 = \|x\|^2 - \sum_k |\langle x, e_k \rangle|^2$.

    D'où $\sum_{k=1}^n |\langle x, e_k \rangle|^2 \le \|x\|^2$.

2.  **Preuve de Cauchy-Schwarz via Bessel:**

    Si $y=0$, l'inégalité $|\langle x, 0 \rangle| \le \|x\| \cdot 0$ est $0 \le 0$, ce qui est vrai.

    Si $y \neq 0$, on peut former une famille orthonormée d'un seul vecteur $e_1 = \frac{y}{\|y\|}$.

    L'inégalité de Bessel pour $n=1$ et ce vecteur $e_1$ donne :

    $|\langle x, e_1 \rangle|^2 \le \|x\|^2$.

    $|\langle x, \frac{y}{\|y\|} \rangle|^2 \le \|x\|^2 \implies \left|\frac{1}{\|y\|} \langle x, y \rangle\right|^2 \le \|x\|^2$.

    $\frac{1}{\|y\|^2} |\langle x, y \rangle|^2 \le \|x\|^2 \implies |\langle x, y \rangle|^2 \le \|x\|^2 \|y\|^2$.

    En prenant la racine carrée, on obtient $|\langle x, y \rangle| \le \|x\| \|y\|$.

3.  **Inégalité de Aczél:**

    L'inégalité triangulaire généralisée se prouve par récurrence sur $m$. Pour $m=2$, c'est l'inégalité triangulaire standard. Supposons qu'elle est vraie pour $m-1$. Alors $\|\sum_{i=1}^m x_i \| = \|(\sum_{i=1}^{m-1} x_i) + x_m\| \le \|\sum_{i=1}^{m-1} x_i\| + \|x_m\| \le (\sum_{i=1}^{m-1} \|x_i\|) + \|x_m\| = \sum_{i=1}^m \|x_i\|$.

    Pour Aczél, on se place dans l'espace euclidien $\mathbb{R}^n$ avec le produit scalaire usuel. On définit deux vecteurs $u, v \in \mathbb{R}^n$:

    $u = (a_1, a_2, \dots, a_n)$ et $v = (b_1, -b_2, \dots, -b_n)$. L'inégalité de Cauchy-Schwarz est $|\langle u,v \rangle|^2 \le \|u\|^2 \|v\|^2$.

    $\langle u,v \rangle = a_1 b_1 - \sum_{k=2}^n a_k b_k$.

    $\|u\|^2 = \sum_{k=1}^n a_k^2$ et $\|v\|^2 = b_1^2 + \sum_{k=2}^n b_k^2$.

    Ceci ne donne pas la bonne inégalité. Essayons une autre approche.

    L'inégalité est équivalente à une version de Cauchy-Schwarz dans un espace avec une métrique de Lorentz.

    Soit $x = (a_1, a_2, \dots, a_n)$ et $y = (b_1, b_2, \dots, b_n)$.

    Définissons un produit "pseudo-scalaire" $\langle x, y \rangle_L = x_1 y_1 - \sum_{k=2}^n x_k y_k$.

    L'inégalité à prouver est $(\langle x, y \rangle_L)^2 \ge \langle x, x \rangle_L \langle y, y \rangle_L$, pour des vecteurs $x$ tels que $\langle x, x \rangle_L > 0$ (vecteurs de genre temps). C'est une "inégalité de Cauchy-Schwarz inversée".

    Soit $x$ tel que $\langle x, x \rangle_L = a_1^2 - \sum_{k=2}^n a_k^2 > 0$. On peut normaliser ce vecteur pour que $\langle x, x \rangle_L = 1$.

    Considérons la fonction $f(t) = \langle y - tx, y - tx \rangle_L = \langle y,y \rangle_L - 2t \langle x,y \rangle_L + t^2 \langle x,x \rangle_L$.

    Le sous-espace orthogonal à $x$ pour ce produit est de genre espace. La projection de $y$ sur $x$ est $y_x = \frac{\langle y,x \rangle_L}{\langle x,x \rangle_L} x$. Alors $y_{\perp} = y - y_x$ est orthogonal à $x$.

    $\langle y, y \rangle_L = \langle y_x + y_{\perp}, y_x + y_{\perp} \rangle_L = \langle y_x, y_x \rangle_L + \langle y_{\perp}, y_{\perp} \rangle_L = \frac{(\langle y,x \rangle_L)^2}{\langle x,x \rangle_L} + \langle y_{\perp}, y_{\perp} \rangle_L$.

    Comme $y_{\perp}$ est dans l'orthogonal d'un vecteur de genre temps, il est de genre espace ou nul, donc $\langle y_{\perp}, y_{\perp} \rangle_L \le 0$.

    Ainsi $\langle y, y \rangle_L \le \frac{(\langle y,x \rangle_L)^2}{\langle x,x \rangle_L}$.

    Comme $\langle x,x \rangle_L > 0$, on peut multiplier pour obtenir $\langle y, y \rangle_L \langle x, x \rangle_L \le (\langle y,x \rangle_L)^2$, ce qui est le résultat désiré.

**Réponse:**

1.  L'inégalité de Bessel $\sum_{k=1}^n |\langle x, e_k \rangle|^2 \le \|x\|^2$ est démontrée.
2.  L'inégalité de Cauchy-Schwarz est prouvée comme cas particulier de Bessel avec $n=1$.
3.  L'inégalité de Aczél est prouvée en utilisant les propriétés d'un produit pseudo-scalaire de type Lorentz. La forme finale est :

    $$ \left(a_1 b_1 - \sum_{k=2}^n a_k b_k\right)^2 \ge \left(a_1^2 - \sum_{k=2}^n a_k^2\right) \left(b_1^2 - \sum_{k=2}^n b_k^2\right) $$

</details>

## Exercice 3: [Application Avancée]

**Problème:** Soit $E=\mathbb{R}[X]$ l'espace des polynômes à coefficients réels. Soit $w: [a,b] \to \mathbb{R}_+^*$ une fonction poids continue. On munit $E$ du produit scalaire $\langle P, Q \rangle = \int_a^b P(t)Q(t)w(t)dt$.

1.  En appliquant le procédé de Gram-Schmidt à la base canonique $(1, X, X^2, \dots)$, on construit une suite de polynômes orthogonaux $(P_n)_{n \in \mathbb{N}}$ où $P_n$ est de degré $n$. Prouver que pour tout $n \ge 1$, le polynôme $P_n$ a exactement $n$ racines réelles distinctes, toutes situées dans l'intervalle $]a,b[$.
2.  Démontrer la relation de récurrence à trois termes : pour $n \ge 1$, il existe des constantes réelles $\alpha_n, \beta_n, \gamma_n$ (avec $\alpha_n, \gamma_n \neq 0$) telles que :

    $$ P_{n+1}(X) = (\alpha_n X + \beta_n) P_n(X) - \gamma_n P_{n-1}(X) $$

    (On pourra poser $P_{-1}=0$).

<details>

<summary>Solution</summary>

**Méthode:** Pour la première question, nous utilisons le fait que $P_n$ est orthogonal à tous les polynômes de degré inférieur. En supposant le contraire sur les racines, on construit un polynôme de degré inférieur qui mène à une contradiction. Pour la deuxième question, on exprime $XP_n$ dans la base des $(P_k)$ et on utilise l'orthogonalité pour montrer que la plupart des coefficients sont nuls.

**Étapes:**

1.  **Racines des polynômes orthogonaux:**

    Soit $n \ge 1$. Soient $r_1, \dots, r_k$ les racines distinctes de $P_n$ situées dans $]a,b[$ qui sont de multiplicité impaire. On a $k \le n$.

    Considérons le polynôme $Q(X) = \prod_{i=1}^k (X-r_i)$. $Q$ est de degré $k \le n$.

    Le produit $P_n(t)Q(t)$ a un signe constant sur $[a,b]$ car les racines de multiplicité impaire de $P_n$ dans $]a,b[$ sont exactement les racines de $Q$.

    Comme $w(t) > 0$ sur $[a,b]$, le signe de $P_n(t)Q(t)w(t)$ est constant sur $[a,b]$.

    Puisque $P_n Q w$ n'est pas le polynôme nul, son intégrale $\langle P_n, Q \rangle = \int_a^b P_n(t)Q(t)w(t)dt$ est non nulle.

    Cependant, par construction, la famille $(P_k)$ est orthogonale, donc $P_n$ est orthogonal à tout polynôme de degré strictement inférieur à $n$.

    Si $k < n$, alors $\deg(Q) < n$, et on devrait avoir $\langle P_n, Q \rangle = 0$. C'est une contradiction.

    Donc, on doit avoir $k=n$. Cela signifie que $P_n$ a $n$ racines de multiplicité impaire dans $]a,b[$. Comme $P_n$ est de degré $n$, ces $n$ racines doivent être simples et ce sont les seules racines.

2.  **Relation de récurrence:**

    Soit $P_n$ unitaire pour simplifier (coefficient dominant égal à 1).

    Le polynôme $X P_n(X)$ est de degré $n+1$. On peut donc le décomposer dans la base des polynômes orthogonaux $(P_k)_{0 \le k \le n+1}$:

    $X P_n(X) = \sum_{k=0}^{n+1} c_k P_k(X)$.

    Les coefficients sont donnés par $c_k = \frac{\langle XP_n, P_k \rangle}{\|P_k\|^2}$.

    Par symétrie du produit scalaire: $\langle XP_n, P_k \rangle = \langle P_n, XP_k \rangle$.

    Le polynôme $XP_k(X)$ est de degré $k+1$. Si $k+1 < n$, c'est-à-dire $k < n-1$, alors $XP_k$ est un polynôme de degré strictement inférieur à $n$. Par orthogonalité, $\langle P_n, XP_k \rangle = 0$.

    Donc $c_k=0$ pour $k < n-1$.

    La somme se réduit à : $X P_n(X) = c_{n+1} P_{n+1}(X) + c_n P_n(X) + c_{n-1} P_{n-1}(X)$.

    Puisque nous avons supposé les $P_k$ unitaires, le coefficient de $X^{n+1}$ dans $X P_n(X)$ est 1. Dans le membre de droite, seul $c_{n+1} P_{n+1}(X)$ contribue au terme en $X^{n+1}$, et son coefficient est $c_{n+1}$. Donc $c_{n+1}=1$.

    On a alors $P_{n+1}(X) = X P_n(X) - c_n P_n(X) - c_{n-1} P_{n-1}(X) = (X - c_n) P_n(X) - c_{n-1} P_{n-1}(X)$.

    En posant $\alpha_n=1$, $\beta_n = -c_n = -\frac{\langle XP_n, P_n \rangle}{\|P_n\|^2}$, et $\gamma_n = c_{n-1} = \frac{\langle XP_n, P_{n-1} \rangle}{\|P_{n-1}\|^2} = \frac{\langle P_n, XP_{n-1} \rangle}{\|P_{n-1}\|^2} = \frac{\|P_n\|^2}{\|P_{n-1}\|^2} > 0$.

    Si les $P_n$ ne sont pas unitaires, les coefficients dominants introduisent des scalaires supplémentaires, mais la forme de la récurrence reste la même.

**Réponse:**

1.  Il est prouvé que chaque polynôme orthogonal $P_n$ (pour $n \ge 1$) possède $n$ racines réelles simples, toutes situées dans l'intervalle ouvert $]a,b[$.
2.  La relation de récurrence à trois termes $P_{n+1}(X) = (\alpha_n X + \beta_n) P_n(X) - \gamma_n P_{n-1}(X)$ est établie par projection sur la base des polynômes orthogonaux.

</details>

## Exercice 4: [Investigation Théorique]

**Problème:** Soit $E$ un espace euclidien de dimension $n$. Pour une famille de vecteurs $(u_1, \dots, u_k)$ de $E$, on définit le déterminant de Gram par $G(u_1, \dots, u_k) = \det((\langle u_i, u_j \rangle)_{1 \le i,j \le k})$.

1.  Montrer que $G(u_1, \dots, u_k) \ge 0$ et que $G(u_1, \dots, u_k) = 0$ si et seulement si la famille $(u_1, \dots, u_k)$ est liée.
2.  Soit $F = \text{Vect}(u_1, \dots, u_k)$. Pour un vecteur $x \in E$, montrer que la distance de $x$ à $F$, notée $d(x, F)$, est donnée par la formule :

    $$ d(x, F)^2 = \frac{G(x, u_1, \dots, u_k)}{G(u_1, \dots, u_k)} $$

    (en supposant la famille $(u_1, \dots, u_k)$ libre).

3.  On définit le $k$-volume du parallélotope $\mathcal{P}$ engendré par $(u_1, \dots, u_k)$ par $\text{Vol}_k(\mathcal{P}) = \|u_1\| \cdot d(u_2, \text{Vect}(u_1)) \cdot d(u_3, \text{Vect}(u_1, u_2)) \cdots d(u_k, \text{Vect}(u_1, \dots, u_{k-1}))$. Démontrer que $\text{Vol}_k(\mathcal{P})^2 = G(u_1, \dots, u_k)$.

<details>

<summary>Solution</summary>

**Méthode:** La première partie utilise le fait qu'une matrice de Gram est la matrice d'une forme bilinéaire symétrique positive. La deuxième partie relie la distance au projeté orthogonal et utilise les propriétés des déterminants. La troisième partie procède par récurrence en utilisant la formule de la distance.

**Étapes:**

1.  **Propriétés du déterminant de Gram:**

    La matrice $M = (\langle u_i, u_j \rangle)$ est la matrice de Gram de la famille. Soit $F = \text{Vect}(u_1, \dots, u_k)$. Soit $\varphi$ la restriction du produit scalaire de $E$ à $F \times F$. Si on choisit une base $\mathcal{B}$ de $F$, la matrice de $\varphi$ dans cette base est définie positive.

    La matrice $M$ est la matrice, dans la base canonique de $\mathbb{R}^k$, de la forme quadratique $q(\lambda_1, \dots, \lambda_k) = \|\sum_{i=1}^k \lambda_i u_i\|^2$. Cette forme est positive. Donc sa matrice $M$ est semi-définie positive. Ses valeurs propres sont donc $\ge 0$, et son déterminant, qui est le produit des valeurs propres, est aussi $\ge 0$.

    $G(u_1, \dots, u_k) = 0 \iff$ la forme quadratique est dégénérée $\iff$ il existe $(\lambda_1, \dots, \lambda_k) \neq (0, \dots, 0)$ tel que $q(\lambda_1, \dots, \lambda_k) = 0 \iff \|\sum \lambda_i u_i\|^2 = 0 \iff \sum \lambda_i u_i = 0 \iff$ la famille est liée.

2.  **Formule de la distance:**

    Soit $x \in E$. Le projeté orthogonal de $x$ sur $F$ est $p_F(x) = \sum_{i=1}^k \lambda_i u_i$. Le vecteur $x - p_F(x)$ est orthogonal à $F$, donc $\langle x - \sum \lambda_j u_j, u_i \rangle = 0$ pour tout $i=1, \dots, k$.

    Cela donne le système linéaire $\sum_{j=1}^k \lambda_j \langle u_j, u_i \rangle = \langle x, u_i \rangle$. La matrice de ce système est la matrice de Gram $M_k = ((\langle u_j, u_i \rangle))_{i,j}$.

    On a $d(x,F)^2 = \|x - p_F(x)\|^2 = \langle x - p_F(x), x - p_F(x) \rangle$. Comme $x-p_F(x) \perp p_F(x)$, on a $\langle x-p_F(x), x \rangle = \|x-p_F(x)\|^2$.

    $d(x,F)^2 = \langle x, x \rangle - \langle p_F(x), x \rangle = \|x\|^2 - \sum_{j=1}^k \lambda_j \langle u_j, x \rangle$.

    Maintenant, considérons $G(x, u_1, \dots, u_k) = \det(M_{k+1})$. En développant le déterminant par rapport à la première ligne et première colonne:

    $M_{k+1} = \begin{pmatrix} \langle x, x \rangle & \langle x, u_1 \rangle & \dots \\ \langle u_1, x \rangle & & \\ \vdots & & M_k \end{pmatrix}$.

    On peut effectuer des opérations sur les colonnes pour simplifier. Soit $x' = x - \sum \lambda_j u_j = x - p_F(x)$. On a $G(x, u_1, \dots, u_k) = G(x', u_1, \dots, u_k)$ car on a ajouté aux premières colonnes/lignes une combinaison linéaire des autres.

    La matrice de Gram de $(x', u_1, \dots, u_k)$ est $\begin{pmatrix} \langle x', x' \rangle & \langle x', u_1 \rangle & \dots \\ \langle u_1, x' \rangle & & \\ \vdots & & M_k \end{pmatrix}$.

    Par définition de $x'$, $\langle x', u_i \rangle = 0$ pour tout $i$. La matrice est donc diagonale par blocs:

    $G(x, u_1, \dots, u_k) = \det \begin{pmatrix} \|x'\|^2 & 0 \\ 0 & M_k \end{pmatrix} = \|x'\|^2 \cdot \det(M_k) = d(x,F)^2 G(u_1, \dots, u_k)$.

    D'où le résultat, puisque $G(u_1, \dots, u_k) \neq 0$.

3.  **Volume et déterminant de Gram:**

    On prouve par récurrence que $G(u_1, \dots, u_k) = (\text{Vol}_k(\mathcal{P}))^2$.

    -   Pour $k=1$: $G(u_1) = \langle u_1, u_1 \rangle = \|u_1\|^2$. Et $(\text{Vol}_1(\mathcal{P}))^2 = (\|u_1\|)^2$. C'est vrai.
    -   Supposons la propriété vraie au rang $k-1$.

        $(\text{Vol}_k(\mathcal{P}))^2 = (\|u_1\| \cdots d(u_{k-1}, \text{Vect}(u_1, \dots, u_{k-2})) \cdot d(u_k, \text{Vect}(u_1, \dots, u_{k-1})))^2$

        $= (\text{Vol}_{k-1}(\mathcal{P}_{k-1}))^2 \cdot d(u_k, \text{Vect}(u_1, \dots, u_{k-1}))^2$.

        Par hypothèse de récurrence, $(\text{Vol}_{k-1}(\mathcal{P}_{k-1}))^2 = G(u_1, \dots, u_{k-1})$.

        En utilisant le résultat de la question 2 avec $x=u_k$ et $F = \text{Vect}(u_1, \dots, u_{k-1})$, on a:

        $d(u_k, F)^2 = \frac{G(u_k, u_1, \dots, u_{k-1})}{G(u_1, \dots, u_{k-1})}$.

        Donc, $(\text{Vol}_k(\mathcal{P}))^2 = G(u_1, \dots, u_{k-1}) \cdot \frac{G(u_k, u_1, \dots, u_{k-1})}{G(u_1, \dots, u_{k-1})} = G(u_1, \dots, u_k)$.

        La propriété est démontrée.

**Réponse:**

1.  $G(u_1, \dots, u_k) \ge 0$, avec égalité si et seulement si la famille est liée.
2.  La formule $d(x, F)^2 = \frac{G(x, u_1, \dots, u_k)}{G(u_1, \dots, u_k)}$ est démontrée.
3.  L'identité $\text{Vol}_k(\mathcal{P})^2 = G(u_1, \dots, u_k)$ est prouvée par récurrence.

</details>

## Exercice 5: [Preuve Complexe]

**Problème:** Soit $H$ un espace de Hilbert (un espace préhilbertien complet, ce qui est toujours le cas en dimension finie, mais le problème se pose en dimension infinie). Soit $F$ un sous-espace vectoriel de $H$. Prouver que le bi-orthogonal de $F$, $(F^{\perp})^{\perp}$, est égal à l'adhérence de $F$, notée $\overline{F}$.

<details>

<summary>Solution</summary>

**Méthode:** Nous allons prouver la double inclusion. L'une des inclusions est plus simple et repose sur des arguments de continuité. L'autre, plus difficile, utilise le théorème de la projection sur un convexe fermé (qui dans notre cas est le sous-espace vectoriel fermé $\overline{F}$).

**Étapes:**

1.  **Inclusion $\overline{F} \subseteq (F^{\perp})^{\perp}$:**
    -   D'abord, montrons que $F \subseteq (F^{\perp})^{\perp}$. Soit $x \in F$. Pour tout $y \in F^{\perp}$, on a par définition $\langle x, y \rangle = 0$. Ceci signifie que $x$ est orthogonal à tout élément de $F^\perp$, donc par définition $x \in (F^{\perp})^{\perp}$.
    -   Ensuite, nous devons montrer que l'adhérence est incluse. Rappelons que $A^{\perp}$ est toujours un sous-espace vectoriel fermé. Donc $(F^{\perp})^{\perp}$ est un fermé.
    -   Puisque $(F^{\perp})^{\perp}$ est un fermé qui contient $F$, il doit aussi contenir le plus petit fermé contenant $F$, qui est l'adhérence $\overline{F}$. Donc $\overline{F} \subseteq (F^{\perp})^{\perp}$.

2.  **Inclusion $(F^{\perp})^{\perp} \subseteq \overline{F}$:**
    -   Soit $x \in (F^{\perp})^{\perp}$. Nous voulons montrer que $x \in \overline{F}$.
    -   Considérons le sous-espace $\overline{F}$. Puisque $H$ est un Hilbert et $\overline{F}$ est un sous-espace vectoriel fermé de $H$, $\overline{F}$ est lui-même un espace de Hilbert.
    -   Le théorème de la projection orthogonale s'applique : $H = \overline{F} \oplus (\overline{F})^{\perp}$.
    -   Tout $x \in H$ s'écrit de manière unique $x = x_F + x_{F^\perp}$ avec $x_F \in \overline{F}$ et $x_{F^\perp} \in (\overline{F})^{\perp}$.
    -   Notre but est de montrer que si $x \in (F^{\perp})^{\perp}$, alors sa composante $x_{F^\perp}$ doit être nulle.
    -   Il est facile de voir que $F^{\perp} = (\overline{F})^{\perp}$.
        -   Si $y \in (\overline{F})^{\perp}$, alors $y$ est orthogonal à tout élément de $\overline{F}$. Comme $F \subseteq \overline{F}$, $y$ est orthogonal à tout élément de $F$, donc $y \in F^\perp$. D'où $(\overline{F})^{\perp} \subseteq F^\perp$.
        -   Si $y \in F^{\perp}$, alors pour tout $z \in F$, $\langle z, y \rangle = 0$. Par continuité du produit scalaire, si $z_n \to z$ avec $z_n \in F$, alors $\langle z_n, y \rangle \to \langle z, y \rangle$. Donc $\langle z, y \rangle = 0$ pour tout $z \in \overline{F}$. D'où $y \in (\overline{F})^{\perp}$. Donc $F^\perp \subseteq (\overline{F})^{\perp}$.
        -   On a donc bien l'égalité $F^{\perp} = (\overline{F})^{\perp}$.
    -   Maintenant, reprenons notre $x \in (F^{\perp})^{\perp}$. Puisque $F^{\perp} = (\overline{F})^{\perp}$, on a $x \in ((\overline{F})^{\perp})^{\perp}$.
    -   On sait que $x = x_F + x_{F^\perp}$ avec $x_F \in \overline{F}$ et $x_{F^\perp} \in (\overline{F})^{\perp}$.
    -   Comme $x_F \in \overline{F}$ et que nous avons montré $\overline{F} \subseteq ((\overline{F})^{\perp})^{\perp}$, alors $x_F \in ((\overline{F})^{\perp})^{\perp}$.
    -   On a donc $x \in ((\overline{F})^{\perp})^{\perp}$ et $x_F \in ((\overline{F})^{\perp})^{\perp}$. Puisque $((\overline{F})^{\perp})^{\perp}$ est un sous-espace vectoriel, $x_{F^\perp} = x - x_F$ doit aussi y appartenir.
    -   On a donc $x_{F^\perp} \in (\overline{F})^{\perp}$ (par construction) ET $x_{F^\perp} \in ((\overline{F})^{\perp})^{\perp}$.
    -   Un vecteur qui est dans un sous-espace et dans son orthogonal doit être le vecteur nul. En effet, $\langle x_{F^\perp}, x_{F^\perp} \rangle = 0$, ce qui implique $\|x_{F^\perp}\|^2 = 0$ et donc $x_{F^\perp}=0$.
    -   Puisque $x_{F^\perp}=0$, on a $x = x_F$, et par définition $x_F \in \overline{F}$.
    -   Nous avons donc montré que tout $x \in (F^{\perp})^{\perp}$ est en fait dans $\overline{F}$.

**Réponse:** Les deux inclusions ont été prouvées, ce qui établit l'égalité:

$$ (F^{\perp})^{\perp} = \overline{F} $$

En dimension finie, tout sous-espace vectoriel est fermé, donc $\overline{F}=F$, et on retrouve le résultat bien connu $(F^\perp)^\perp = F$.

</details>

## Exercice 6: [Investigation Théorique]

**Problème:** Soit $f$ un endomorphisme d'un espace hermitien $E$. On définit le **rayon spectral** de $f$, noté $\rho(f)$, comme le maximum des modules de ses valeurs propres : $\rho(f) = \max_{\lambda \in \text{Sp}(f)} |\lambda|$. La norme d'opérateur de $f$, subordonnée à la norme hermitienne, est $\|f\|_{\text{op}} = \sup_{x \neq 0} \frac{\|f(x)\|}{\|x\|}$.

1.  Montrer que pour tout endomorphisme $f$, $\rho(f) \le \|f\|_{\text{op}}$.
2.  Prouver que si $f$ est un endomorphisme normal ($f \circ f^* = f^* \circ f$), alors l'égalité est atteinte : $\rho(f) = \|f\|_{\text{op}}$.
3.  Donner un exemple d'endomorphisme non normal pour lequel l'inégalité est stricte.

<details>

<summary>Solution</summary>

**Méthode:** Pour la première partie, on utilise la définition d'un vecteur propre. Pour la deuxième, on utilise le théorème spectral qui garantit qu'un endomorphisme normal est diagonalisable dans une base orthonormée. La troisième partie demande de construire un contre-exemple, typiquement une matrice triangulaire non diagonale.

**Étapes:**

1.  **Inégalité $\rho(f) \le \|f\|_{\text{op}}$:**

    Soit $\lambda$ une valeur propre de $f$. Il existe un vecteur propre $x \neq 0$ tel que $f(x) = \lambda x$.

    Par définition de la norme d'opérateur, $\|f(x)\| \le \|f\|_{\text{op}} \|x\|$.

    En substituant $f(x)=\lambda x$, on a $\|\lambda x\| \le \|f\|_{\text{op}} \|x\|$.

    Soit $|\lambda| \|x\| \le \|f\|_{\text{op}} \|x\|$.

    Comme $x \neq 0$, $\|x\| \neq 0$, on peut diviser par $\|x\|$ pour obtenir $|\lambda| \le \|f\|_{\text{op}}$.

    Ceci étant vrai pour toute valeur propre $\lambda$, c'est vrai pour celle de module maximal. Donc $\rho(f) \le \|f\|_{\text{op}}$.

2.  **Égalité pour les endomorphismes normaux:**

    Si $f$ est normal, alors d'après le théorème spectral, il existe une base orthonormée $(e_1, \dots, e_n)$ de $E$ constituée de vecteurs propres de $f$. Soient $\lambda_1, \dots, \lambda_n$ les valeurs propres correspondantes.

    Soit $x \in E$. On peut décomposer $x$ dans cette base : $x = \sum_{i=1}^n x_i e_i$, où $x_i = \langle x, e_i \rangle$.

    Alors $f(x) = f(\sum_i x_i e_i) = \sum_i x_i f(e_i) = \sum_i x_i \lambda_i e_i$.

    Calculons les normes au carré (en utilisant l'identité de Parseval, car la base est orthonormée) :

    $\|x\|^2 = \sum_{i=1}^n |x_i|^2$.

    $\|f(x)\|^2 = \|\sum_i x_i \lambda_i e_i\|^2 = \sum_{i=1}^n |x_i \lambda_i|^2 = \sum_{i=1}^n |\lambda_i|^2 |x_i|^2$.

    On peut majorer cette somme :

    $\|f(x)\|^2 = \sum_{i=1}^n |\lambda_i|^2 |x_i|^2 \le \left(\max_j |\lambda_j|^2\right) \sum_{i=1}^n |x_i|^2 = (\rho(f))^2 \|x\|^2$.

    Donc, $\|f(x)\| \le \rho(f) \|x\|$ pour tout $x$. Ceci implique que $\|f\|_{\text{op}} = \sup_{x \neq 0} \frac{\|f(x)\|}{\|x\|} \le \rho(f)$.

    Ayant déjà $\rho(f) \le \|f\|_{\text{op}}$, on conclut que $\|f\|_{\text{op}} = \rho(f)$.

    (Note : le sup est atteint pour un vecteur propre associé à la valeur propre de module maximal).

3.  **Contre-exemple non normal:**

    Soit $E=\mathbb{C}^2$ avec sa structure hermitienne canonique. Considérons l'endomorphisme $f$ représenté par la matrice $M = \begin{pmatrix} 0 & 1 \\ 0 & 0 \end{pmatrix}$.

    -   **Valeurs propres:** Le polynôme caractéristique est $\det(M-\lambda I) = \lambda^2$. La seule valeur propre est $\lambda=0$. Donc le rayon spectral est $\rho(f) = 0$.
    -   **Normalité:** $M^* = \begin{pmatrix} 0 & 0 \\ 1 & 0 \end{pmatrix}$.

        $MM^* = \begin{pmatrix} 0 & 1 \\ 0 & 0 \end{pmatrix} \begin{pmatrix} 0 & 0 \\ 1 & 0 \end{pmatrix} = \begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix}$.

        $M^*M = \begin{pmatrix} 0 & 0 \\ 1 & 0 \end{pmatrix} \begin{pmatrix} 0 & 1 \\ 0 & 0 \end{pmatrix} = \begin{pmatrix} 0 & 0 \\ 0 & 1 \end{pmatrix}$.

        $MM^* \neq M^*M$, donc $f$ n'est pas normal.

    -   **Norme d'opérateur:** Calculons $\|f\|_{\text{op}}$. Soit $x = (x_1, x_2)$ un vecteur unitaire, i.e., $|x_1|^2+|x_2|^2 = 1$.

        $f(x) = M \begin{pmatrix} x_1 \\ x_2 \end{pmatrix} = \begin{pmatrix} x_2 \\ 0 \end{pmatrix}$.

        $\|f(x)\|^2 = |x_2|^2$.

        La norme d'opérateur est $\|f\|_{\text{op}} = \sup_{\|x\|=1} \|f(x)\| = \sup_{|x_1|^2+|x_2|^2=1} \sqrt{|x_2|^2} = \sup_{|x_1|^2+|x_2|^2=1} |x_2|$.

        Le maximum de $|x_2|$ sous cette contrainte est 1 (atteint pour $x=(0,1)$). Donc $\|f\|_{\text{op}} = 1$.

    -   **Conclusion:** Pour cet endomorphisme, $\rho(f)=0$ et $\|f\|_{\text{op}}=1$. L'inégalité $\rho(f) < \|f\|_{\text{op}}$ est stricte.

**Réponse:**

1.  L'inégalité $\rho(f) \le \|f\|_{\text{op}}$ est prouvée pour tout endomorphisme $f$.
2.  L'égalité $\rho(f) = \|f\|_{\text{op}}$ est prouvée pour tout endomorphisme normal $f$.
3.  L'endomorphisme de matrice $M = \begin{pmatrix} 0 & 1 \\ 0 & 0 \end{pmatrix}$ fournit un contre-exemple où $\rho(f)=0 < 1 = \|f\|_{\text{op}}$.

</details>

## Exercice 7: [Application Avancée]

**Problème:** Soit $E = \mathcal{M}_n(\mathbb{C})$ l'espace des matrices carrées complexes de taille $n$, muni du produit scalaire de Hilbert-Schmidt $\langle A, B \rangle = \text{Tr}(A^*B)$. Soit $U \in E$ une matrice unitaire fixée. On considère les endomorphismes $L_U$ et $R_U$ de $E$ définis par $L_U(A) = UA$ et $R_U(A) = AU$.

1.  Montrer que $L_U$ et $R_U$ sont des endomorphismes unitaires de $(E, \langle \cdot, \cdot \rangle)$.
2.  Calculer leurs adjoints $L_U^*$ et $R_U^*$.
3.  Soit $C_U(A) = UAU^{-1}$. Montrer que $C_U$ est unitaire.
4.  Considérons maintenant l'endomorphisme $\mathcal{A}(X) = \frac{1}{2}(X - UXU^*)$. Démontrer que $\mathcal{A}$ est un projecteur orthogonal. Identifier son image et son noyau.

<details>

<summary>Solution</summary>

**Méthode:** Il s'agit d'appliquer les définitions d'endomorphismes unitaires, adjoints et projecteurs orthogonaux dans le cadre non-standard de l'espace des matrices. Les propriétés de la trace et des matrices unitaires sont essentielles.

**Étapes:**

1.  **Unitarité de $L_U$ et $R_U$:**

    Un endomorphisme $f$ est unitaire si $\|f(A)\|^2 = \|A\|^2$ pour tout $A$.

    $\|L_U(A)\|^2 = \|UA\|^2 = \langle UA, UA \rangle = \text{Tr}((UA)^*UA) = \text{Tr}(A^*U^*UA)$.

    Puisque $U$ est unitaire, $U^*U = I$.

    Donc, $\|L_U(A)\|^2 = \text{Tr}(A^*IA) = \text{Tr}(A^*A) = \|A\|^2$.

    $L_U$ est unitaire.

    De même, $\|R_U(A)\|^2 = \|AU\|^2 = \text{Tr}((AU)^*AU) = \text{Tr}(U^*A^*AU) = \text{Tr}(A^*AUU^*)$ par cyclicité de la trace.

    Comme $UU^*=I$, $\|R_U(A)\|^2 = \text{Tr}(A^*A) = \|A\|^2$.

    $R_U$ est unitaire.

2.  **Adjoints de $L_U$ et $R_U$:**

    On cherche $L_U^*$ tel que $\langle L_U(A), B \rangle = \langle A, L_U^*(B) \rangle$.

    $\langle L_U(A), B \rangle = \langle UA, B \rangle = \text{Tr}((UA)^*B) = \text{Tr}(A^*U^*B)$.

    $\langle A, L_U^*(B) \rangle = \text{Tr}(A^* L_U^*(B))$.

    Par identification, $L_U^*(B) = U^*B$. Donc $L_U^* = L_{U^*}$.

    De même, pour $R_U$:

    $\langle R_U(A), B \rangle = \langle AU, B \rangle = \text{Tr}((AU)^*B) = \text{Tr}(U^*A^*B) = \text{Tr}(A^*BU^*)$ par cyclicité.

    $\langle A, R_U^*(B) \rangle = \text{Tr}(A^* R_U^*(B))$.

    Par identification, $R_U^*(B) = BU^*$. Donc $R_U^* = R_{U^*}$.

3.  **Unitarité de $C_U$:**

    $C_U(A) = UAU^{-1} = UAU^* = L_U(R_{U^*}(A))$. C'est la composition de deux endomorphismes unitaires. La composition d'unitaires est unitaire, donc $C_U$ est unitaire.

4.  **Étude de $\mathcal{A}$:**
    -   **Projecteur:** Il faut montrer que $\mathcal{A}^2 = \mathcal{A}$.

        $\mathcal{A}^2(X) = \mathcal{A}(\frac{1}{2}(X - UXU^*)) = \frac{1}{2} \left[ \frac{1}{2}(X - UXU^*) - U\left(\frac{1}{2}(X - UXU^*)\right)U^* \right]$

        $= \frac{1}{4} [ X - UXU^* - (UXU^* - U(UXU^*)U^*) ]$

        $= \frac{1}{4} [ X - UXU^* - UXU^* + U^2X(U^*)^2 ] = \frac{1}{4} [ X - 2UXU^* + U^2X(U^*)^2 ]$.

        Cette voie semble incorrecte. Revoyons le calcul.

        $\mathcal{A}(X) = \frac{1}{2}(I - L_U R_{U^*})(X)$.

        $(\mathcal{A})^2 = \frac{1}{4}(I - L_U R_{U^*})^2 = \frac{1}{4}(I - 2L_U R_{U^*} + (L_U R_{U^*})^2)$.

        $(L_U R_{U^*})^2(X) = L_U R_{U^*}(UXU^*) = U(UXU^*)U^* = U^2 X (U^*)^2$. Cela ne simplifie pas.

        Essayons directement :

        $\mathcal{A}(\mathcal{A}(X)) = \frac{1}{2}(\mathcal{A}(X) - U \mathcal{A}(X) U^*) = \frac{1}{2} (\frac{1}{2}(X-UXU^*)) - U(\frac{1}{2}(X-UXU^*))U^*)$

        $= \frac{1}{4} (X - UXU^* - (UXU^* - UUXU^*U^*)) = \frac{1}{4} (X - 2UXU^* + U^2X(U^*)^2)$. Toujours le même problème.

        Il y a probablement une erreur dans l'énoncé. Si on prend $\mathcal{A}(X) = X - P(X)$ où $P$ est une projection, ça ne marche pas.

        L'opérateur de projection sur les matrices qui commutent avec $U$ est souvent donné par une intégrale.

        Peut-être l'opérateur est $\mathcal{P}(X) = \frac{1}{2}(X+UXU^*)$?

        $\mathcal{P}^2(X) = \frac{1}{2}(\mathcal{P}(X)+U\mathcal{P}(X)U^*) = \frac{1}{2}(\frac{1}{2}(X+UXU^*) + U(\frac{1}{2}(X+UXU^*))U^*) = \frac{1}{4}(X+UXU^*+UXU^*+U^2X(U^*)^2) = \frac{1}{4}(X+2UXU^*+U^2X(U^*)^2)$. Non.

        Reconsidérons l'énoncé tel quel. $\mathcal{A}(X) = \frac{1}{2}(X - UXU^*)$.

        Si $U=I$, $\mathcal{A}(X)=0$. Si $U=-I$, $\mathcal{A}(X) = \frac{1}{2}(X - (-I)X(-I)) = 0$.

        Si $U$ est une réflexion, $U^2=I$. Alors $\mathcal{A}^2(X) = \frac{1}{4}(X - 2UXU^* + X) = \frac{1}{2}(X-UXU^*) = \mathcal{A}(X)$. Donc pour $U$ tel que $U^2=I$, $\mathcal{A}$ est un projecteur.

        Supposons $U^2=I$. Il faut aussi montrer qu'il est orthogonal, i.e., autoadjoint $\mathcal{A} = \mathcal{A}^*$.

        $\mathcal{A}^* = \frac{1}{2}(I - L_U R_{U^*})^* = \frac{1}{2}(I^* - (R_{U^*})^* (L_U)^*) = \frac{1}{2}(I - R_U L_{U^*})$.

        $\mathcal{A}^*(X) = \frac{1}{2}(X - (L_{U^*} (X)) U) = \frac{1}{2}(X - U^*XU)$.

        Pour que $\mathcal{A}=\mathcal{A}^*$, il faudrait $UXU^*=U^*XU$, ce qui n'est pas vrai en général.

        **Conclusion:** l'énoncé doit être corrigé. Un projecteur orthogonal connu est la projection sur le commutant de $U$. Supposons que $U$ est un groupe fini $G$ et on projette sur l'espace des fonctions invariantes. La projection est $P(f) = \frac{1}{|G|}\sum_{g \in G} L_g(f)$.

        Ici, le groupe est $\{I, U\}$ où $U=U^*$. La projection sur l'espace des matrices qui commutent avec $U$ est $P(X) = \frac{1}{2}(X+UXU)$.

        Vérifions si $P(X)=\frac{1}{2}(X+UXU^*)$ est un projecteur orthogonal si $U$ est unitaire.

        $P$ est autoadjoint : $P^* = \frac{1}{2}(I+L_U R_{U^*})^* = \frac{1}{2}(I+R_U L_{U^*})$. $P^*(X)=\frac{1}{2}(X+U^*XU)$. Si $U=U^*$, c'est autoadjoint.

        $P^2(X) = \frac{1}{2}(P(X)+UP(X)U^*) = \frac{1}{4}(X+UXU^*+U(X+UXU^*)U^*) = \frac{1}{4}(X+2UXU^*+U^2X(U^*)^2)$.

        Cela ne marche pas.

        Il y a une erreur dans ma compréhension ou dans l'exercice. Je vais répondre comme si l'exercice était correct, en pointant la difficulté. L'opérateur $\mathcal{A}(X) = X - p_F(X)$ n'est un projecteur que si $p_F$ est l'identité ou nul. L'énoncé est probablement faux.

**Réponse:** L'énoncé tel que posé semble contenir une erreur, car $\mathcal{A}(X) = \frac{1}{2}(X - UXU^*)$ n'est en général pas un projecteur. En supposant une coquille et en considérant l'opérateur $P_U(X) = \frac{1}{2}(X+UXU^*)$ avec la condition supplémentaire que $U$ est à la fois unitaire et hermitien ($U=U^*=U^{-1}$, donc $U^2=I$), alors:

1.  $L_U$ et $R_U$ sont unitaires.
2.  $L_U^* = L_{U^*}$ et $R_U^* = R_{U^*}$.
3.  $C_U = L_U R_{U^{-1}}$ est unitaire comme composition d'unitaires.
4.  Si $U$ est unitaire et $U^2=I$, alors $\mathcal{A}(X)=\frac{1}{2}(X-UX)$ n'est pas un projecteur. Si $U=U^*$, alors $U^2=I$. L'opérateur $P(X)=\frac{1}{2}(X+UXU)$ est un projecteur orthogonal.
    -   $P^2(X) = \frac{1}{2}(P(X)+UP(X)U) = \frac{1}{4}(X+UXU+U(X+UXU)U) = \frac{1}{4}(X+UXU+UXU+U^2XU^2) = \frac{1}{4}(2X+2UXU) = P(X)$.
    -   $P$ est autoadjoint car $U=U^*$.
    -   Image de $P$: Si $Y=P(X)$, alors $UYU = U\frac{1}{2}(X+UXU)U = \frac{1}{2}(UXU+U^2XU^2) = \frac{1}{2}(UXU+X) = Y$. Donc $UYU=Y$. $\text{Im}(P)=\{Y \in E \mid UYU=Y\}$.
    -   Noyau de $P$: Si $P(X)=0$, alors $X+UXU=0$, soit $UXU=-X$. $\text{Ker}(P)=\{X \in E \mid UXU=-X\}$.

</details>

## Exercice 8: [Preuve Complexe]

**Problème:** Soit $E$ un espace euclidien et $f$ un endomorphisme. Montrer qu'il existe une unique décomposition $f = s + a$, où $s$ est un endomorphisme autoadjoint et $a$ est un endomorphisme antisymétrique (i.e. $a^* = -a$). Exprimer $s$ et $a$ en fonction de $f$ et $f^*$. Cette décomposition est l'analogue pour les endomorphismes de la décomposition d'une fonction en sa partie paire et impaire.

<details>

<summary>Solution</summary>

**Méthode:** Nous allons procéder par analyse-synthèse. D'abord, on suppose que la décomposition existe et on en déduit l'expression de $s$ et $a$. Ensuite, on vérifie que les expressions trouvées conviennent.

**Étapes:**

1.  **Analyse (Unicité):**

    Supposons que la décomposition $f = s+a$ existe, avec $s^*=s$ et $a^*=-a$.

    Calculons l'adjoint de $f$:

    $f^* = (s+a)^* = s^* + a^* = s - a$.

    Nous avons maintenant un système de deux équations à deux inconnues ($s$ et $a$):

    (1) $f = s + a$

    (2) $f^* = s - a$

    En additionnant (1) et (2), on obtient $f+f^* = 2s$, d'où $s = \frac{1}{2}(f+f^*)$.

    En soustrayant (2) de (1), on obtient $f-f^* = 2a$, d'où $a = \frac{1}{2}(f-f^*)$.

    Ces expressions pour $s$ et $a$ sont uniques, ce qui prouve l'unicité de la décomposition si elle existe.

2.  **Synthèse (Existence):**

    Définissons $s$ et $a$ par les formules trouvées ci-dessus:

    $s = \frac{1}{2}(f+f^*)$ et $a = \frac{1}{2}(f-f^*)$.

    Vérifions que ces endomorphismes satisfont les conditions requises.

    -   **Décomposition de f:**

        $s+a = \frac{1}{2}(f+f^*) + \frac{1}{2}(f-f^*) = \frac{1}{2}(f+f^*+f-f^*) = \frac{1}{2}(2f) = f$.

        La décomposition est correcte.

    -   **Propriété de s:**

        $s^* = \left(\frac{1}{2}(f+f^*)\right)^* = \frac{1}{2}(f^* + (f^*)^*) = \frac{1}{2}(f^*+f) = s$.

        Donc $s$ est autoadjoint.

    -   **Propriété de a:**

        $a^* = \left(\frac{1}{2}(f-f^*)\right)^* = \frac{1}{2}(f^* - (f^*)^*) = \frac{1}{2}(f^*-f) = -\frac{1}{2}(f-f^*) = -a$.

        Donc $a$ est antisymétrique.

    L'existence de la décomposition est prouvée.

**Réponse:** La décomposition existe et est unique. L'endomorphisme autoadjoint $s$ et l'endomorphisme antisymétrique $a$ sont donnés par:

$$ s = \frac{1}{2}(f+f^*) \quad \text{et} \quad a = \frac{1}{2}(f-f^*) $$

</details>

## Exercice 9: [Investigation Théorique]

**Problème:** Soit $f$ un endomorphisme d'un espace euclidien $E$.

1.  Montrer que les endomorphismes $f^*f$ et $ff^*$ sont autoadjoints et que leurs valeurs propres sont positives ou nulles (on dit qu'ils sont semi-définis positifs).
2.  Prouver que $f$ est un endomorphisme normal si et seulement si pour tout $x \in E$, $\|f(x)\| = \|f^*(x)\|$.
3.  Montrer que si $f$ est normal, alors $\text{Ker}(f) = \text{Ker}(f^*)$ et $\text{Im}(f) = \text{Im}(f^*)$.

<details>

<summary>Solution</summary>

**Méthode:** La première question utilise les propriétés de l'adjoint. La deuxième établit une équivalence en calculant la norme et en utilisant la polarisation. La troisième est une conséquence directe de la deuxième.

**Étapes:**

1.  **Propriétés de $f^*f$ et $ff^*$:**
    -   **Autoadjonction:**

        $(f^*f)^* = f^* (f^*)^* = f^*f$. Donc $f^*f$ est autoadjoint.

        $(ff^*)^* = (f^*)^* f^* = ff^*$. Donc $ff^*$ est autoadjoint.

    -   **Positivité des valeurs propres:**

        Soit $\lambda$ une valeur propre de $f^*f$ et $x$ un vecteur propre associé non nul.

        $f^*f(x) = \lambda x$.

        Prenons le produit scalaire avec $x$: $\langle f^*f(x), x \rangle = \langle \lambda x, x \rangle = \lambda \|x\|^2$.

        D'autre part, par définition de l'adjoint, $\langle f^*f(x), x \rangle = \langle f(x), f(x) \rangle = \|f(x)\|^2$.

        On a donc $\lambda \|x\|^2 = \|f(x)\|^2$.

        Puisque $\|x\|^2 > 0$ et $\|f(x)\|^2 \ge 0$, on doit avoir $\lambda = \frac{\|f(x)\|^2}{\|x\|^2} \ge 0$.

        Les valeurs propres de $f^*f$ sont donc réelles (car autoadjoint) et positives. La preuve est identique pour $ff^*$.

2.  **Caractérisation des endomorphismes normaux:**
    -   **($\Rightarrow$) Supposons $f$ normal, i.e., $f^*f = ff^*$**:

        Pour tout $x \in E$, $\|f(x)\|^2 = \langle f(x), f(x) \rangle = \langle x, f^*f(x) \rangle$.

        $\|f^*(x)\|^2 = \langle f^*(x), f^*(x) \rangle = \langle x, f^{**}f^*(x) \rangle = \langle x, ff^*(x) \rangle$.

        Comme $f^*f = ff^*$, on a $\langle x, f^*f(x) \rangle = \langle x, ff^*(x) \rangle$, ce qui implique $\|f(x)\|^2 = \|f^*(x)\|^2$. En prenant la racine, $\|f(x)\| = \|f^*(x)\|$.

    -   **($\Leftarrow$) Supposons $\|f(x)\| = \|f^*(x)\|$ pour tout $x \in E$**:

        Cela signifie que $\|f(x)\|^2 = \|f^*(x)\|^2$ pour tout $x$.

        $\langle x, f^*f(x) \rangle = \langle x, ff^*(x) \rangle$ pour tout $x$.

        Soit $g = f^*f - ff^*$. On a $\langle x, g(x) \rangle = 0$ pour tout $x$.

        L'endomorphisme $g$ est autoadjoint car $g^* = (f^*f - ff^*)^* = (f^*f)^* - (ff^*)^* = f^*f - ff^* = g$.

        Pour un endomorphisme autoadjoint $g$, la condition $\langle x, g(x) \rangle = 0$ pour tout $x$ implique que $g=0$. (On peut le voir en utilisant l'identité de polarisation pour la forme bilinéaire symétrique $\varphi(x,y)=\langle x, g(y) \rangle$. $\varphi(x,x)=0 \implies \varphi(x,y)=0 \forall x,y \implies \langle x, g(y) \rangle=0 \forall x,y \implies g(y)=0 \forall y \implies g=0$).

        Donc $f^*f - ff^* = 0$, ce qui signifie que $f$ est normal.

3.  **Noyau et Image:**

    $x \in \text{Ker}(f) \iff f(x)=0 \iff \|f(x)\|=0$.

    D'après la question 2, si $f$ est normal, $\|f(x)\|=0 \iff \|f^*(x)\|=0$.

    $\|f^*(x)\|=0 \iff f^*(x)=0 \iff x \in \text{Ker}(f^*)$.

    Donc $\text{Ker}(f) = \text{Ker}(f^*)$.

    Pour l'image, on utilise la relation générale $\text{Im}(f) = (\text{Ker}(f^*))^\perp$.

    Si $f$ est normal, $\text{Ker}(f^*) = \text{Ker}(f)$, donc $\text{Im}(f) = (\text{Ker}(f))^\perp$.

    De même, $\text{Im}(f^*) = (\text{Ker}(f))^\perp$.

    Par conséquent, $\text{Im}(f) = \text{Im}(f^*)$.

**Réponse:**

1.  Il est prouvé que $f^*f$ et $ff^*$ sont autoadjoints à valeurs propres positives ou nulles.
2.  L'équivalence "$f$ normal $\iff \forall x, \|f(x)\| = \|f^*(x)\|$" est démontrée.
3.  Il en découle que pour un endomorphisme normal, $\text{Ker}(f) = \text{Ker}(f^*)$ et $\text{Im}(f) = \text{Im}(f^*)$.

</details>

## Exercice 10: [Problème de recherche]

**Problème:** Soit $A \in \mathcal{M}_{m,n}(\mathbb{C})$ une matrice. Les valeurs singulières de $A$, notées $\sigma_i$, sont les racines carrées des valeurs propres de la matrice hermitienne semi-définie positive $A^*A$.

Considérons la matrice hermitienne par blocs $H_A \in \mathcal{M}_{m+n}(\mathbb{C})$ définie par :

$$ H_A = \begin{pmatrix} 0 & A \\ A^* & 0 \end{pmatrix} $$

où les 0 sont des blocs nuls de tailles appropriées.

Prouver que l'ensemble des valeurs propres non nulles de $H_A$ est précisément l'ensemble $\{ \pm \sigma_i \mid \sigma_i \text{ est une valeur singulière non nulle de } A\}$.

<details>

<summary>Solution</summary>

**Méthode:** Nous allons résoudre le système d'équations aux valeurs propres pour $H_A$. En écrivant le vecteur propre par blocs, nous obtiendrons un système couplé que nous pourrons résoudre pour trouver une relation entre les valeurs propres de $H_A$ et celles de $A^*A$ et $AA^*$.

**Étapes:**

1.  **Mise en place du système aux valeurs propres:**

    Soit $\lambda$ une valeur propre de $H_A$ et $v$ un vecteur propre associé. On décompose $v$ en deux blocs, $v = \begin{pmatrix} x \\ y \end{pmatrix}$, où $x \in \mathbb{C}^n$ et $y \in \mathbb{C}^m$. L'équation aux valeurs propres $H_A v = \lambda v$ s'écrit:

    $$ \begin{pmatrix} 0 & A \\ A^* & 0 \end{pmatrix} \begin{pmatrix} x \\ y \end{pmatrix} = \lambda \begin{pmatrix} x \\ y \end{pmatrix} $$

    Ceci est équivalent au système d'équations couplées:

    (1) $Ay = \lambda x$

    (2) $A^*x = \lambda y$

2.  **Analyse du système:**
    -   Si $\lambda=0$, alors $Ay=0$ et $A^*x=0$. Cela signifie que $x \in \text{Ker}(A^*)$ et $y \in \text{Ker}(A)$. Le sous-espace propre associé à $\lambda=0$ est $\text{Ker}(A^*) \times \text{Ker}(A)$.
    -   Supposons maintenant $\lambda \neq 0$.

        De (1), on peut exprimer $x = \frac{1}{\lambda} Ay$. En substituant dans (2):

        $A^* (\frac{1}{\lambda} Ay) = \lambda y \implies \frac{1}{\lambda} A^*A y = \lambda y \implies A^*A y = \lambda^2 y$.

        De même, de (2), on peut exprimer $y = \frac{1}{\lambda} A^*x$. En substituant dans (1):

        $A (\frac{1}{\lambda} A^*x) = \lambda x \implies \frac{1}{\lambda} AA^* x = \lambda x \implies AA^* x = \lambda^2 x$.

3.  **Interprétation des résultats:**
    -   L'équation $A^*A y = \lambda^2 y$ signifie que si $y \neq 0$, alors $\lambda^2$ est une valeur propre de $A^*A$.
    -   L'équation $AA^* x = \lambda^2 x$ signifie que si $x \neq 0$, alors $\lambda^2$ est une valeur propre de $AA^*$.
    -   Soit $\sigma_i^2$ une valeur propre non nulle de $A^*A$. Alors $\lambda^2 = \sigma_i^2$, ce qui implique $\lambda = \pm \sigma_i$.
    -   Pour une telle valeur propre $\sigma_i^2$, il existe un vecteur propre $y_i \neq 0$ tel que $A^*A y_i = \sigma_i^2 y_i$.
    -   Construisons un vecteur propre pour $H_A$. Posons $\lambda = \sigma_i$.

        Définissons $x_i = \frac{1}{\sigma_i} A y_i$. On doit vérifier que $x_i \neq 0$. Si $x_i=0$, alors $Ay_i=0$. En appliquant $A^*$, on obtient $A^*Ay_i=0$, soit $\sigma_i^2 y_i = 0$. Comme $\sigma_i \neq 0$, on aurait $y_i=0$, ce qui est une contradiction. Donc $x_i \neq 0$.

        Le vecteur $v = \begin{pmatrix} x_i \\ y_i \end{pmatrix} = \begin{pmatrix} \frac{1}{\sigma_i} Ay_i \\ y_i \end{pmatrix}$ est un candidat. Vérifions:

        $H_A v = \begin{pmatrix} 0 & A \\ A^* & 0 \end{pmatrix} \begin{pmatrix} \frac{1}{\sigma_i} Ay_i \\ y_i \end{pmatrix} = \begin{pmatrix} Ay_i \\ \frac{1}{\sigma_i} A^*Ay_i \end{pmatrix} = \begin{pmatrix} Ay_i \\ \frac{1}{\sigma_i} \sigma_i^2 y_i \end{pmatrix} = \begin{pmatrix} Ay_i \\ \sigma_i y_i \end{pmatrix} = \sigma_i \begin{pmatrix} \frac{1}{\sigma_i} Ay_i \\ y_i \end{pmatrix} = \sigma_i v$.

        Donc $+\sigma_i$ est bien une valeur propre.

    -   De même, pour $\lambda = -\sigma_i$, le vecteur $v' = \begin{pmatrix} -x_i \\ y_i \end{pmatrix} = \begin{pmatrix} -\frac{1}{\sigma_i} Ay_i \\ y_i \end{pmatrix}$ est un vecteur propre associé.
    -   Inversement, si $\lambda \neq 0$ est une valeur propre de $H_A$, alors $\lambda^2$ doit être une valeur propre de $A^*A$ (et de $AA^*$), donc $\lambda^2=\sigma_i^2$ pour une certaine valeur singulière non nulle $\sigma_i$.

4.  **Conclusion:**

    Nous avons montré que pour chaque valeur singulière non nulle $\sigma_i$ de $A$, les nombres $+\sigma_i$ et $-\sigma_i$ sont des valeurs propres de $H_A$. Inversement, toute valeur propre non nulle $\lambda$ de $H_A$ doit satisfaire $\lambda^2 = \sigma_i^2$ pour une valeur singulière non nulle $\sigma_i$. L'ensemble des valeurs propres non nulles de $H_A$ est donc bien $\{ \pm \sigma_i \mid \sigma_i > 0 \}$.

**Réponse:**

Le spectre de la matrice hermitienne $H_A = \begin{pmatrix} 0 & A \\ A^* & 0 \end{pmatrix}$ est constitué de $0$ et de paires de valeurs propres opposées $\{\sigma_i, -\sigma_i\}$ pour chaque valeur singulière non nulle $\sigma_i$ de $A$.

</details>