---
title: B - Exercices
order: 22
level: pro
chapter: B - Concepts
course: Structures algébriques et algèbre bilinéaire
tags: ["exercises", "practice", "pro"]
---

# Exercices: Structures algébriques (B)

## Exercice 1: [Investigation Théorique]

**Problème:** Démontrer que l'énoncé "toute application surjective admet un inverse à droite (une section)" (S) est équivalent à l'Axiome du Choix (AC).

L'Axiome du Choix (AC) s'énonce comme suit : Pour toute collection $(X_i)_{i \in I}$ d'ensembles non vides, le produit cartésien $\prod_{i \in I} X_i$ est non vide. Autrement dit, il existe une fonction de choix $c: I \to \bigcup_{i \in I} X_i$ telle que $\forall i \in I, c(i) \in X_i$.

<details>

<summary>Solution</summary>

**Méthode:** On démontre les deux implications.

1.  (AC $\implies$ S) : En utilisant l'Axiome du Choix, on construit une section pour une application surjective donnée. Pour chaque élément de l'ensemble d'arrivée, sa préimage est non vide. On utilise AC pour choisir un élément dans chaque préimage.
2.  (S $\implies$ AC) : En utilisant l'hypothèse (S), on construit une fonction de choix pour une famille d'ensembles non vides donnée. On définit une application surjective astucieuse dont une section fournira la fonction de choix désirée.

**Étapes:**

1.  **Démonstration de (AC $\implies$ S)**

    Soit $f: X \to Y$ une application surjective. Pour chaque $y \in Y$, l'ensemble préimage $f^{-1}(\{y\}) = \{x \in X \mid f(x) = y\}$ est un sous-ensemble non vide de $X$ par surjectivité de $f$.

    Considérons la famille d'ensembles $(f^{-1}(\{y\}))_{y \in Y}$. C'est une famille d'ensembles non vides indexée par $Y$.

    Selon l'Axiome du Choix, le produit cartésien $\prod_{y \in Y} f^{-1}(\{y\})$ est non vide.

    Soit $s$ un élément de ce produit. Par définition, $s$ est une application $s: Y \to \bigcup_{y \in Y} f^{-1}(\{y\}) = X$ telle que pour tout $y \in Y$, $s(y) \in f^{-1}(\{y\})$.

    La condition $s(y) \in f^{-1}(\{y\})$ signifie que $f(s(y)) = y$.

    Ceci est vrai pour tout $y \in Y$, donc $f \circ s = \text{id}_Y$. L'application $s$ est un inverse à droite pour $f$.

2.  **Démonstration de (S $\implies$ AC)**

    Soit $(X_i)_{i \in I}$ une famille d'ensembles non vides, que nous pouvons supposer deux à deux disjoints sans perte de généralité (sinon, on considère les ensembles $X'_i = \{i\} \times X_i$).

    Soit $X = \bigcup_{i \in I} X_i$.

    Définissons une application $f: X \to I$ par : pour tout $x \in X$, $f(x)$ est l'unique $i \in I$ tel que $x \in X_i$. L'unicité de $i$ vient du fait que les $X_i$ sont disjoints.

    L'application $f$ est surjective car pour tout $i \in I$, l'ensemble $X_i$ est non vide, donc il existe au moins un $x \in X_i \subset X$ tel que $f(x)=i$.

    Par l'hypothèse (S), l'application surjective $f$ admet un inverse à droite, c'est-à-dire une application $c: I \to X$ telle que $f \circ c = \text{id}_I$.

    Pour tout $i \in I$, on a $f(c(i)) = i$. Par définition de $f$, cela signifie que $c(i) \in X_i$.

    L'application $c$ est donc une fonction de choix pour la famille $(X_i)_{i \in I}$. L'existence d'une telle fonction pour toute famille d'ensembles non vides est précisément l'Axiome du Choix.

**Réponse:** Les deux énoncés sont logiquement équivalents. L'existence de sections pour les surjections est une des formes les plus courantes de l'Axiome du Choix.

$\text{AC} \iff (\forall f: X \to Y \text{ surjective, } \exists s: Y \to X, f \circ s = \text{id}_Y)$

</details>

## Exercice 2: [Preuve Complexe]

**Problème:** Démontrer le Théorème de Cantor-Schröder-Bernstein : Soient $X$ et $Y$ deux ensembles. S'il existe une injection $f: X \to Y$ et une injection $g: Y \to X$, alors il existe une bijection $h: X \to Y$.

<details>

<summary>Solution</summary>

**Méthode:** La preuve consiste à partitionner l'ensemble $X$ en trois sous-ensembles en fonction de "l'origine" de chaque élément. Un élément peut avoir une chaîne finie de préimages qui se termine dans $X$, dans $Y$, ou une chaîne infinie. On définit ensuite la bijection $h$ par morceaux sur cette partition.

**Étapes:**

1.  **Définition de l'ascendance :** Pour un élément $x \in X$, on peut chercher ses préimages successives en alternant $g^{-1}$ et $f^{-1}$. Puisque $f$ et $g$ sont injectives, si une préimage existe, elle est unique. On définit la chaîne des ancêtres de $x$ comme la suite $x_0=x, y_0=g^{-1}(x_0), x_1=f^{-1}(y_0), y_1=g^{-1}(x_1), \dots$. Cette chaîne peut s'arrêter si une préimage n'existe pas, ou continuer à l'infini.

2.  **Partition de X :** On partitionne $X$ en trois ensembles :
    -   $X_X = \{x \in X \mid \text{la chaîne des ancêtres de } x \text{ se termine dans } X\}$. C'est-à-dire qu'elle se termine par un élément de $X$ qui n'est pas dans l'image de $g$.
    -   $X_Y = \{x \in X \mid \text{la chaîne des ancêtres de } x \text{ se termine dans } Y\}$. C'est-à-dire qu'elle se termine par un élément de $Y$ qui n'est pas dans l'image de $f$.
    -   $X_\infty = \{x \in X \mid \text{la chaîne des ancêtres de } x \text{ est infinie}\}$.

3.  **Analyse de la partition :** De même, on peut partitionner $Y$ en $Y_X, Y_Y, Y_\infty$. On observe les relations suivantes induites par $f$ et $g$:
    -   $f$ envoie $X_X$ sur $Y_X$. En effet, si $x \in X_X$, son premier ancêtre $y_0 = f(x)$ a la même chaîne d'ancêtres que $x$ (à partir de $y_0$), qui se termine donc dans $X$. Donc $f(x) \in Y_X$. L'application $f|_{X_X}: X_X \to Y_X$ est une bijection.
    -   $f$ envoie $X_Y$ sur $Y_Y$. Si $x \in X_Y$, son image $f(x)$ a une chaîne d'ancêtres qui se termine dans $Y$. Donc $f(x) \in Y_Y$. L'application $f|_{X_Y}: X_Y \to Y_Y$ est une bijection.
    -   $f$ envoie $X_\infty$ sur $Y_\infty$. Si $x \in X_\infty$, son image $f(x)$ a une chaîne d'ancêtres infinie. Donc $f(x) \in Y_\infty$. L'application $f|_{X_\infty}: X_\infty \to Y_\infty$ est une bijection.

4.  **Construction de la bijection h :** On définit l'application $h: X \to Y$ de la manière suivante :

    $h(x) = \begin{cases} f(x) & \text{si } x \in X_X \cup X_\infty \\ g^{-1}(x) & \text{si } x \in X_Y \end{cases}$

5.  **Vérification :**
    -   $h$ est bien définie : Pour $x \in X_Y$, la chaîne des ancêtres se termine dans $Y$. Cela signifie qu'à un moment, on a un $x_k$ qui n'est pas dans $\text{Im}(g)$. Mais si $x \in X_Y$, sa chaîne commence par $g^{-1}(x)$, donc $x$ doit être dans $\text{Im}(g)$. C'est le cas. Montrons que l'image de $g^{-1}$ est correcte. L'application $g$ envoie $Y_Y$ bijectivement sur $X_Y$. Donc $g^{-1}$ est une bijection de $X_Y$ vers $Y_Y$.
    -   $h$ est injective : Si $h(x_1) = h(x_2)$, on analyse les cas.
        - Si $x_1, x_2 \in X_X \cup X_\infty$, alors $f(x_1) = f(x_2) \implies x_1 = x_2$ par injectivité de $f$.
        - Si $x_1, x_2 \in X_Y$, alors $g^{-1}(x_1) = g^{-1}(x_2) \implies x_1 = x_2$ car $g^{-1}$ est injective.
        - Si $x_1 \in X_X \cup X_\infty$ et $x_2 \in X_Y$, alors $f(x_1) = g^{-1}(x_2)$. Donc $g(f(x_1)) = x_2$. La chaîne de $x_2$ commencerait donc par $f(x_1)$, puis $x_1$. L'origine de $x_2$ serait la même que celle de $x_1$, ce qui contredit $x_1 \in X_X \cup X_\infty$ et $x_2 \in X_Y$.
    -   $h$ est surjective : Soit $y \in Y$.
        - Si $y \in Y_X \cup Y_\infty$, alors comme $f$ envoie $X_X \cup X_\infty$ bijectivement sur $Y_X \cup Y_\infty$, il existe $x \in X_X \cup X_\infty$ tel que $f(x)=y$. Pour ce $x$, $h(x)=y$.
        - Si $y \in Y_Y$, alors $x=g(y) \in X_Y$. Pour ce $x$, $h(x) = g^{-1}(x) = g^{-1}(g(y)) = y$.

    Donc $h$ est surjective.

**Réponse:** L'application $h(x) = \begin{cases} f(x) & \text{si } x \in X_X \cup X_\infty \\ g^{-1}(x) & \text{si } x \in X_Y \end{cases}$ est une bijection de $X$ vers $Y$.

$\exists f:X \to Y \text{ injective et } \exists g:Y \to X \text{ injective } \implies |X|=|Y|$

</details>

## Exercice 3: [Investigation Théorique]

**Problème:** Soit $X$ un ensemble et $(\text{End}(X), \circ)$ le monoïde des applications de $X$ dans $X$.

1. Caractériser les éléments $f \in \text{End}(X)$ qui possèdent un inverse à gauche mais pas d'inverse à droite.
2. Caractériser les éléments $f \in \text{End}(X)$ qui possèdent un inverse à droite mais pas d'inverse à gauche.
3. Discuter l'existence de tels éléments en fonction de la cardinalité de $X$.

<details>

<summary>Solution</summary>

**Méthode:** On utilise les caractérisations des applications injectives et surjectives par l'existence d'inverses à gauche et à droite. Une application $f: X \to Y$ a un inverse à gauche si et seulement si elle est injective. Elle a un inverse à droite si et seulement si elle est surjective. Le problème revient donc à caractériser les endomorphismes de $X$ qui sont injectifs mais non surjectifs, et ceux qui sont surjectifs mais non injectifs. On analyse ensuite cette question pour les ensembles finis et infinis.

**Étapes:**

1.  **Inverse à gauche mais pas à droite :**

    Un élément $f \in \text{End}(X)$ possède un inverse à gauche si et seulement s'il est injectif. Il ne possède pas d'inverse à droite si et seulement s'il n'est pas surjectif.

    Donc, un tel $f$ est une **application injective non surjective**.

2.  **Inverse à droite mais pas à gauche :**

    Un élément $f \in \text{End}(X)$ possède un inverse à droite si et seulement s'il est surjectif. Il ne possède pas d'inverse à gauche si et seulement s'il n'est pas injectif.

    Donc, un tel $f$ est une **application surjective non injective**.

3.  **Discussion sur la cardinalité de X :**
    -   **Cas où X est fini :** Soit $|X|=n < \infty$. Une application $f: X \to X$ est injective si et seulement si elle est surjective (c'est le principe des tiroirs). Par conséquent, si $f$ a un inverse à gauche, elle a aussi un inverse à droite, et vice-versa. Dans ce cas, les deux ensembles décrits aux points 1 et 2 sont **vides**. Il n'existe pas d'application avec un inverse unilatéral strict.
    -   **Cas où X est infini :** Dans ce cas, il peut exister des applications injectives non surjectives et des applications surjectives non injectives.
        -   **Exemple d'injective non surjective :** Soit $X = \mathbb{N}$. L'application $f: \mathbb{N} \to \mathbb{N}$ définie par $f(n) = n+1$ est injective mais non surjective (0 n'a pas d'antécédent). Un inverse à gauche est $p(n) = n-1$ si $n > 0$ et $p(0)=0$. Elle n'a pas d'inverse à droite.
        -   **Exemple de surjective non injective :** Soit $X = \mathbb{N}$. L'application $g: \mathbb{N} \to \mathbb{N}$ définie par $g(n) = \lfloor n/2 \rfloor$ est surjective (tout entier $k$ a pour antécédent $2k$) mais non injective ($g(0)=g(1)=0$). Un inverse à droite est $s(n) = 2n$. Elle n'a pas d'inverse à gauche.

**Réponse:**

1.  Les éléments avec un inverse à gauche mais pas à droite sont les **applications injectives non surjectives**.
2.  Les éléments avec un inverse à droite mais pas à gauche sont les **applications surjectives non injectives**.
3.  De tels éléments existent si et seulement si l'ensemble $X$ est **infini**. Si $X$ est fini, toute application injective est surjective et vice-versa, donc un inverse à gauche est toujours aussi un inverse à droite.

$\text{Si } |X| < \infty, \{f \in \text{End}(X) \mid f \text{ a un inverse unilatéral strict}\} = \emptyset.$

$\text{Si } |X| \ge \infty, \{f \in \text{End}(X) \mid f \text{ a un inverse unilatéral strict}\} \neq \emptyset.$

</details>

## Exercice 4: [Application Avancée]

**Problème:** On fabrique des colliers de 7 perles. Chaque perle peut être colorée avec l'une des $k$ couleurs disponibles. Combien de colliers distincts peut-on former, sachant que deux colliers sont considérés identiques s'ils peuvent être obtenus l'un de l'autre par une rotation ou une réflexion ?

<details>

<summary>Solution</summary>

**Méthode:** Ce problème de dénombrement se résout élégamment avec le lemme de Burnside. L'ensemble $X$ est l'ensemble des $k^7$ colorations possibles des 7 sommets d'un heptagone régulier. Le groupe $G$ agissant sur $X$ est le groupe diédral $D_7$, le groupe des isométries de l'heptagone régulier. Le nombre de colliers distincts est le nombre d'orbites de $X$ sous l'action de $G$, qui est donné par la formule de Burnside :

$|X/G| = \frac{1}{|G|} \sum_{g \in G} |X^g|$, où $X^g$ est l'ensemble des points fixes de $g$.

**Étapes:**

1.  **Identifier le groupe et l'ensemble:**
    -   L'ensemble $X$ est celui des colorations des 7 perles. $|X| = k^7$.
    -   Le groupe $G$ est le groupe diédral $D_7$ d'ordre $|D_7| = 2 \times 7 = 14$. Il est composé de 7 rotations et 7 réflexions.

2.  **Analyser les éléments du groupe et leurs points fixes:**

    Une coloration est un point fixe pour une isométrie $g$ si elle est invariante sous l'action de $g$. Cela signifie que toutes les perles sur une même orbite de $g$ (agissant sur les sommets) doivent avoir la même couleur. Le nombre de colorations fixes est donc $k^c$, où $c$ est le nombre de cycles (orbites) de la permutation des sommets induite par $g$.

3.  **Dénombrer les points fixes pour chaque type d'isométrie dans D₇:**
    -   **Identité ($e$) :** La permutation identité a 7 cycles de longueur 1. Donc $c=7$. Nombre de points fixes: $|X^e| = k^7$. Il y a 1 tel élément.
    -   **Rotations d'angle $\frac{2\pi j}{7}$ pour $j \in \{1, 2, 3, 4, 5, 6\}$ :** Comme 7 est premier, toute rotation non triviale permute les 7 sommets dans un unique cycle de longueur 7. Donc $c=1$. Nombre de points fixes pour chacune de ces 6 rotations : $k^1 = k$. Total pour les rotations : $6 \times k$.
    -   **Réflexions :** Dans un heptagone régulier, chaque réflexion passe par un sommet et le milieu du côté opposé. Il y a 7 telles réflexions. Chaque réflexion fixe un sommet et échange les 6 autres en 3 paires. La permutation des sommets est donc composée d'un cycle de longueur 1 et de 3 cycles de longueur 2. Le nombre de cycles est $c = 1+3=4$. Nombre de points fixes pour chacune de ces 7 réflexions : $k^4$. Total pour les réflexions : $7 \times k^4$.

4.  **Appliquer le lemme de Burnside:**

    Le nombre de colliers distincts est :

    $N = \frac{1}{|D_7|} \sum_{g \in D_7} |X^g|$

    $N = \frac{1}{14} \left( |X^e| + \sum_{\text{rotations}} |X^r| + \sum_{\text{réflexions}} |X^s| \right)$

    $N = \frac{1}{14} (k^7 + 6k + 7k^4)$

**Réponse:** Le nombre de colliers distincts est donné par la formule :

$N = \frac{k^7 + 7k^4 + 6k}{14}$

</details>

## Exercice 5: [Preuve Complexe]

**Problème:** (Théorème de Jacobson) Soit $A$ un anneau (pas nécessairement commutatif, mais avec unité) tel que pour tout $x \in A$, il existe un entier $n(x) > 1$ vérifiant $x^{n(x)} = x$. Démontrer que $A$ est commutatif.

<details>

<summary>Solution</summary>

**Méthode:** La démonstration est non-triviale et se décompose en plusieurs lemmes intermédiaires. L'idée est de montrer que l'anneau n'a pas d'éléments nilpotents non nuls, puis de montrer que tout élément est central dans une certaine sous-algèbre, pour finalement conclure à la commutativité globale. Une étape cruciale repose sur le petit théorème de Wedderburn.

**Étapes:**

1.  **Montrer qu'il n'y a pas d'éléments nilpotents non nuls.**

    Soit $a \in A$ avec $a^2=0$. Pour tout $x \in A$, l'élément $ax$ est aussi nilpotent. Soit $n = n(ax) > 1$ tel que $(ax)^n = ax$. Alors $ax = (ax)^n = a(xa)^{n-1}x$.

    Multiplions à gauche par $a$: $a^2x = a(a(xa)^{n-1}x) = a^2(xa)^{n-1}x$.

    Comme $a^2=0$, on obtient $0=0$. Cette approche directe est difficile.

    Une autre approche : Soit $a^2=0$. Prenons $n=n(a)>1$ tel que $a^n=a$. Alors $a = a^n = a^2 a^{n-2} = 0 \cdot a^{n-2} = 0$. Donc $a=0$. L'anneau est réduit.

2.  **Montrer que tous les idempotents sont centraux.**

    Soit $e \in A$ tel que $e^2=e$. Pour tout $x \in A$, considérons l'élément $exe-e$. $(exe-e)^2 = (exe-e)(exe-e) = exeexe - exee - eexe + e^2 = exexe - exe - exe + e$. Or $e^2=e$, donc $ex(eex)e - 2exe + e = exexe - 2exe + e$. Pour $y=exe-e$, $y^2 = (exe)^2 - 2exe + e$.

    L'argument standard est plus subtil. Soit $e^2=e$. Pour tout $x \in A$, $y = ex(1-e)$ est nilpotent car $y^2 = ex(1-e)ex(1-e) = ex(e-e^2)x(1-e) = 0$. D'après le point 1, $y=0$, donc $ex=exe$.

    De même, $z=(1-e)xe$ est nilpotent, donc $z=0$, ce qui implique $xe=exe$.

    Ainsi, $ex=exe=xe$, ce qui montre que $e$ est dans le centre de $A$.

3.  **Appliquer le petit théorème de Wedderburn.**

    Pour tout $x \in A$, il existe $n(x)>1$ tel que $x^{n(x)}=x$. Cela implique que $x^{n(x)-1}$ est un idempotent, car $(x^{n(x)-1})^2 = x^{2n(x)-2} = x^{n(x)} x^{n(x)-2} = x \cdot x^{n(x)-2} = x^{n(x)-1}$. Notons cet idempotent $e_x$.

    Puisque les idempotents sont centraux, $e_x = x^{n(x)-1}$ est dans le centre de $A$.

    Alors $x = x^{n(x)} = x \cdot x^{n(x)-1} = x e_x$.

    Considérons deux éléments $a,b \in A$. L'élément $a$ appartient au sous-anneau $A_a$ engendré par $a$. L'équation $a^{n(a)}=a$ implique que $A_a$ est un anneau fini (car les puissances de $a$ sont cycliques).

    De plus, A est un anneau intègre. S'il ne l'est pas, la preuve est plus complexe. Supposons d'abord que A est intègre. Alors pour $x \neq 0$, $x^{n(x)-1}=1$. Donc A est un corps gauche. Un corps gauche fini est commutatif (théorème de Wedderburn). Or, le sous-anneau engendré par $a$ et $b$ n'est pas forcément fini.
    

4.  **Argument final de Herstein.**

    Pour tout $x \in A$, $x$ est dans le centre du sous-anneau $A_x = \text{span}_{\mathbb{Z}}\{x, x^2, \dots\}$.

    Soient $a, b \in A$. On a $a^{n(a)}=a$ et $b^{n(b)}=b$. Soit $m>1$ tel que $(ab-ba)^m = ab-ba$.

    On veut montrer que $ab-ba=0$. On peut montrer que pour tout $x \in A$, il existe un polynôme $p_x(t) \in \mathbb{Z}[t]$ tel que $x-x^2p_x(x)$ est dans le centre de $A$.

    La preuve complète est très technique et dépasse le cadre d'une solution succincte. Elle établit que pour tout $a, b \in A$, il existe $n, m > 1$ tels que $(ab)^n = ab$ et $(ba)^m = ba$ et que $ab$ et $ba$ commutent. Finalement, on prouve que si $u,v$ sont des éléments inversibles qui commutent, alors $u-v$ commute avec $u$ et $v$. En appliquant cela, on arrive à $ab=ba$.

**Réponse:** L'anneau $A$ est commutatif.

$\forall x \in A, \exists n(x)>1, x^{n(x)}=x \implies \forall a,b \in A, ab=ba.$

</details>

## Exercice 6: [Investigation Théorique]

**Problème:** Soit $\mathbb{H}$ l'ensemble des quaternions, défini comme l'algèbre associative unitaire sur $\mathbb{R}$ de base $(1, i, j, k)$ avec les relations $i^2 = j^2 = k^2 = ijk = -1$.

1. Démontrer que $\mathbb{H}$ est un corps gauche (ou anneau à division) non commutatif.
2. Déterminer le groupe des automorphismes d'anneau de $\mathbb{H}$, noté $\text{Aut}(\mathbb{H})$.

<details>

<summary>Solution</summary>

**Méthode:**

1. Pour montrer que $\mathbb{H}$ est un corps gauche, il faut vérifier que c'est un anneau et que tout élément non nul admet un inverse multiplicatif. La non-commutativité est directe à partir des relations de base.
2. Pour déterminer $\text{Aut}(\mathbb{H})$, on analyse l'image du centre $\mathbb{R}$ et de l'espace des quaternions purs $\text{Im}(\mathbb{H})$. On montre qu'un automorphisme préserve cette structure et se comporte comme une isométrie sur $\text{Im}(\mathbb{H})$.

**Étapes:**

1.  **$\mathbb{H}$ est un corps gauche non commutatif**
    - **Structure d'anneau :** $\mathbb{H}$ est une $\mathbb{R}$-algèbre de dimension 4, donc c'est un anneau.
    - **Non-commutativité :** On a $ij=k$ et de $ijk=-1$, on tire $(ij)k=-1 \implies k^2=-1$. Mais on a aussi $i(jk)=-1 \implies i(i)=-1 \implies i^2=-1$. Les relations $i^2=j^2=k^2=-1$ et $ij=k$ impliquent $ji=-k$. Donc $ij \neq ji$. L'anneau est non commutatif.
    - **Existence de l'inverse :** Soit $q = a+bi+cj+dk$ un quaternion non nul. On définit son conjugué $\bar{q} = a-bi-cj-dk$. On calcule la norme au carré : $N(q) = q\bar{q} = (a+bi+cj+dk)(a-bi-cj-dk)$. En développant, tous les termes croisés s'annulent et on obtient $a^2 - (bi)^2 - (cj)^2 - (dk)^2 = a^2+b^2+c^2+d^2$. De même $\bar{q}q = a^2+b^2+c^2+d^2$.

    Puisque $q \neq 0$, au moins un des réels $a,b,c,d$ est non nul, donc $N(q) \in \mathbb{R}^*_+$.

    On a $q\bar{q} = \bar{q}q = N(q)$. Donc, on peut écrire $q \left(\frac{\bar{q}}{N(q)}\right) = \left(\frac{\bar{q}}{N(q)}\right) q = 1$.

    L'inverse de $q$ est $q^{-1} = \frac{\bar{q}}{a^2+b^2+c^2+d^2}$. Tout élément non nul est inversible.

2.  **Détermination de Aut($\mathbb{H}$)**

    Soit $\phi \in \text{Aut}(\mathbb{H})$.

    - **Image du centre :** Le centre de $\mathbb{H}$ est $\mathbb{R} \cdot 1$. Un automorphisme doit envoyer le centre sur le centre. Donc $\phi(\mathbb{R}) = \mathbb{R}$. Comme $\phi(1)=1$, $\phi$ est l'identité sur $\mathbb{Q}$. On peut montrer que $\phi$ doit préserver l'ordre sur $\mathbb{R}$ (car $r$ est un carré si $r \ge 0$), donc $\phi$ est l'identité sur $\mathbb{R}$. $\phi$ est donc un automorphisme de $\mathbb{R}$-algèbre.
    - **Image des quaternions purs :** Soit $V = \text{Im}(\mathbb{H}) = \text{span}_{\mathbb{R}}(i,j,k)$ l'espace des quaternions purs. Un quaternion $q$ est pur si et seulement si $q \notin \mathbb{R}$ et $q^2 \in \mathbb{R}$. Si $q=bi+cj+dk$, $q^2 = -(b^2+c^2+d^2)$. Comme $\phi$ est un automorphisme de $\mathbb{R}$-algèbre, $\phi(q^2) = \phi(q)^2$. Si $q \in V$, $\phi(q)^2 = \phi(q^2) \in \phi(\mathbb{R}_-) = \mathbb{R}_-$. Donc $\phi(q)$ est aussi un quaternion pur. Ainsi, $\phi$ préserve l'espace $V$.
    - **$\phi$ est une isométrie sur V :** Sur $V$, la norme est $N(q) = -q^2$. Pour $q \in V$, $N(\phi(q)) = -\phi(q)^2 = -\phi(q^2) = -q^2 = N(q)$. Donc $\phi$ est une transformation $\mathbb{R}$-linéaire de $V$ qui préserve la norme euclidienne. $\phi$ est donc un élément du groupe orthogonal $O(3)$.
    - **$\phi$ préserve l'orientation :** $\phi$ préserve les relations algébriques. $\phi(k) = \phi(ij) = \phi(i)\phi(j)$. Le produit vectoriel dans $V$ coïncide avec le produit de quaternions. Donc $\phi(u \times v) = \phi(u)\phi(v)$. L'orientation est préservée, donc $\phi$ est dans $SO(3)$.
    - **Théorème de Skolem-Noether (cas particulier) :** Tout automorphisme d'une algèbre simple centrale (comme $\mathbb{H}$) est un automorphisme intérieur. Cela signifie qu'il existe $u \in \mathbb{H}^*$ tel que $\phi(q) = uqu^{-1}$ pour tout $q \in \mathbb{H}$.

    L'application $q \mapsto uqu^{-1}$ est appelée conjugaison par $u$. L'ensemble de ces automorphismes intérieurs est noté $\text{Inn}(\mathbb{H})$. On peut montrer que le groupe $\text{Inn}(\mathbb{H})$ est isomorphe à $\mathbb{H}^*/\mathbb{R}^* \cong SO(3)$.

**Réponse:**

1.  $\mathbb{H}$ est un corps gauche car tout élément non nul $q=a+bi+cj+dk$ a un inverse $q^{-1} = \frac{a-bi-cj-dk}{a^2+b^2+c^2+d^2}$. Il est non commutatif car $ij=k \neq -k=ji$.
2.  Le groupe des automorphismes d'anneau de $\mathbb{H}$ est le groupe des automorphismes intérieurs, $\text{Aut}(\mathbb{H}) = \{q \mapsto uqu^{-1} \mid u \in \mathbb{H}^* \}$. Ce groupe est isomorphe au groupe spécial orthogonal $SO(3)$.

$\text{Aut}(\mathbb{H}) \cong SO(3)$

</details>

## Exercice 7: [Investigation Théorique]

**Problème:** (Construction du Coégalisateur) Soient $X$ et $Y$ deux ensembles et $f, g: X \to Y$ deux applications. Un **coégalisateur** de $(f, g)$ est un couple $(C, h)$ où $C$ est un ensemble et $h: Y \to C$ est une application telle que $h \circ f = h \circ g$, et qui vérifie la propriété universelle suivante : pour tout couple $(Z, k)$ où $k: Y \to Z$ est une application telle que $k \circ f = k \circ g$, il existe une unique application $u: C \to Z$ telle que $k = u \circ h$.

Construire un coégalisateur de $(f, g)$ en utilisant une relation d'équivalence sur $Y$ et démontrer qu'il satisfait la propriété universelle.

<details>

<summary>Solution</summary>

**Méthode:** L'idée est d'identifier dans $Y$ les points qui doivent être identifiés pour que $f$ et $g$ deviennent "égales". La condition $h \circ f = h \circ g$ signifie que pour tout $x \in X$, $h(f(x)) = h(g(x))$. Cela nous conduit à vouloir que $f(x)$ et $g(x)$ soient dans la même classe d'équivalence. On définit donc une relation d'équivalence sur $Y$ comme la plus petite relation d'équivalence contenant toutes ces paires, puis on utilise l'ensemble quotient.

**Étapes:**

1.  **Définition de la relation d'équivalence :**

    Soit $R = \{(f(x), g(x)) \mid x \in X\} \cup \{(g(x), f(x)) \mid x \in X\}$ une relation sur $Y$.

    Cette relation n'est en général ni réflexive ni transitive. On définit $\sim$ comme la **clôture réflexive et transitive** de $R$. C'est la plus petite relation d'équivalence sur $Y$ contenant $R$.

    Concrètement, $y_1 \sim y_2$ s'il existe une séquence finie $z_0, z_1, \dots, z_n$ dans $Y$ telle que $y_1 = z_0$, $y_2=z_n$, et pour chaque $i \in \{0, \dots, n-1\}$, on a $(z_i, z_{i+1}) \in R$ ou $z_i=z_{i+1}$.

2.  **Construction du candidat coégalisateur :**

    On pose $C = Y/\sim$, l'ensemble quotient de $Y$ par la relation $\sim$.

    On pose $h: Y \to C$ comme étant l'application de projection canonique, $h(y) = \text{cl}(y)$.

3.  **Vérification de la première condition :**

    On doit avoir $h \circ f = h \circ g$. Pour tout $x \in X$, on a $h(f(x)) = \text{cl}(f(x))$ et $h(g(x)) = \text{cl}(g(x))$.

    Par construction de la relation $\sim$, la paire $(f(x), g(x))$ est dans $R$, donc $f(x) \sim g(x)$.

    Par définition des classes d'équivalence, cela signifie que $\text{cl}(f(x)) = \text{cl}(g(x))$.

    Donc, $h(f(x)) = h(g(x))$ pour tout $x \in X$, et $h \circ f = h \circ g$ est vérifiée.

4.  **Vérification de la propriété universelle :**

    Soit $(Z, k)$ un autre couple tel que $k: Y \to Z$ et $k \circ f = k \circ g$.

    Cela signifie que pour tout $x \in X$, $k(f(x)) = k(g(x))$.

    Cela implique que l'application $k$ est constante sur toutes les paires de la forme $(f(x), g(x))$.

    Montrons que $k$ est constante sur les classes d'équivalence de $\sim$. Soit $y_1 \sim y_2$. Il existe une chaîne $z_0, \dots, z_n$ avec $y_1=z_0, y_2=z_n$ et $(z_i, z_{i+1})$ est de la forme $(f(x), g(x))$ ou $(g(x), f(x))$ (ou $z_i=z_{i+1}$).

    Dans tous les cas, $k(z_i) = k(z_{i+1})$. Par une récurrence immédiate, on a $k(y_1) = k(z_0) = k(z_1) = \dots = k(z_n) = k(y_2)$.

    L'application $k$ est donc constante sur les classes d'équivalence de $\sim$.

    D'après la propriété universelle du quotient, il existe une unique application $u: Y/\sim \to Z$ (c'est-à-dire $u: C \to Z$) telle que $k = u \circ h$.

    Ceci est précisément la propriété universelle du coégalisateur.

**Réponse:** Le coégalisateur de $(f, g)$ est le couple $(Y/\sim, \pi)$ où $\sim$ est la plus petite relation d'équivalence sur $Y$ telle que pour tout $x \in X$, $f(x) \sim g(x)$, et $\pi$ est la projection canonique.

$C = Y/\sim \quad \text{et} \quad h = \pi: Y \to Y/\sim$

</details>

## Exercice 8: [Application Avancée]

**Problème:** (Groupe de Grothendieck) Soit $(M, +, 0)$ un monoïde commutatif. Le groupe de Grothendieck $K(M)$ est une construction qui "plonge" $M$ dans un groupe abélien de la manière la plus universelle.

1.  Sur $M \times M$, on définit la relation $(a, b) \sim (c, d) \iff \exists k \in M, a+d+k = b+c+k$. Démontrer que $\sim$ est une relation d'équivalence.
2.  On pose $K(M) = (M \times M)/\sim$. Montrer que l'opération $[(a, b)] + [(c, d)] = [(a+c, b+d)]$ est bien définie et munit $K(M)$ d'une structure de groupe abélien.
3.  Montrer que $K(M)$ satisfait une propriété universelle : pour tout groupe abélien $G$ et tout morphisme de monoïdes $\phi: M \to G$, il existe un unique morphisme de groupes $\psi: K(M) \to G$ tel que $\phi = \psi \circ i$, où $i: M \to K(M)$ est le morphisme $i(m) = [(m, 0)]$.
4.  Calculer $K(\mathbb{N}, +, 0)$.

<details>

<summary>Solution</summary>

**Méthode:** La construction est une généralisation de la construction de $\mathbb{Z}$ à partir de $\mathbb{N}$. L'idée est de représenter un élément formel "a-b" par la paire (a,b). Les étapes consistent en des vérifications directes basées sur les définitions.

**Étapes:**

1.  **$\sim$ est une relation d'équivalence:**
    -   **Réflexivité :** $(a, b) \sim (a, b)$ car $a+b+0 = b+a+0$.
    -   **Symétrie :** Si $(a, b) \sim (c, d)$, il existe $k \in M$ tel que $a+d+k = b+c+k$. Par commutativité, $c+b+k = d+a+k$, donc $(c, d) \sim (a, b)$.
    -   **Transitivité :** Si $(a, b) \sim (c, d)$ et $(c, d) \sim (e, f)$, il existe $k_1, k_2 \in M$ tels que $a+d+k_1 = b+c+k_1$ et $c+f+k_2 = d+e+k_2$.

    Ajoutons $f+k_2$ à la première équation : $a+d+f+k_1+k_2 = b+c+f+k_1+k_2$.

    Ajoutons $b+k_1$ à la deuxième équation : $b+c+f+k_1+k_2 = b+d+e+k_1+k_2$.

    Par transitivité de l'égalité, $a+d+f+k_1+k_2 = b+d+e+k_1+k_2$.

    Ajoutons $d$ aux deux membres. Soit $k = d+k_1+k_2$. On a $a+f+k = b+e+k$. Donc $(a,b) \sim (e,f)$.

2.  **Structure de groupe abélien sur $K(M)$:**
    -   **Loi bien définie :** Soit $(a, b) \sim (a', b')$ et $(c, d) \sim (c', d')$. Il existe $k_1, k_2$ avec $a+b'+k_1 = b+a'+k_1$ et $c+d'+k_2 = d+c'+k_2$.

    On veut montrer que $(a+c, b+d) \sim (a'+c', b'+d')$.

    $(a+c) + (b'+d') + (k_1+k_2) = (a+b'+k_1) + (c+d'+k_2) = (b+a'+k_1) + (d+c'+k_2) = (b+d) + (a'+c') + (k_1+k_2)$.

    Donc $[(a+c, b+d)] = [(a'+c', b'+d')]$. La loi est bien définie.

    -   **Associativité et Commutativité :** Héritées de $M$.
    -   **Élément neutre :** C'est $[(0, 0)]$. En effet, $[(a,b)]+[(0,0)] = [(a,b)]$.
    -   **Inverse :** L'inverse de $[(a, b)]$ est $[(b, a)]$. En effet, $[(a,b)]+[(b,a)] = [(a+b, a+b)]$. Et $(a+b, a+b) \sim (0,0)$ car $a+b+0+0 = a+b+0+0$.

3.  **Propriété universelle :**

    Soit $\phi: M \to G$ un morphisme de monoïdes. On veut définir $\psi: K(M) \to G$.

    Posons $\psi([(a,b)]) = \phi(a) - \phi(b)$ dans le groupe $G$.

    - **Bien définie :** Si $(a,b) \sim (a',b')$, $a+b'+k = b+a'+k$. Appliquons $\phi$ : $\phi(a)+\phi(b')+\phi(k) = \phi(b)+\phi(a')+\phi(k)$. Comme on est dans un groupe, on peut simplifier par $\phi(k)$ puis réarranger pour obtenir $\phi(a)-\phi(b) = \phi(a')-\phi(b')$. Donc $\psi$ est bien définie.
    - **Morphisme de groupes :** $\psi([(a,b)]+[(c,d)]) = \psi([(a+c, b+d)]) = \phi(a+c)-\phi(b+d) = (\phi(a)+\phi(c)) - (\phi(b)+\phi(d)) = (\phi(a)-\phi(b)) + (\phi(c)-\phi(d)) = \psi([(a,b)]) + \psi([(c,d)])$.
    - **Commutation du diagramme :** Pour $m \in M$, $i(m) = [(m,0)]$. $\psi(i(m)) = \psi([(m,0)]) = \phi(m)-\phi(0) = \phi(m)-0_G = \phi(m)$.
    - **Unicité :** Tout morphisme $\psi$ doit satisfaire $\psi([(a,b)]) = \psi([(a,0)] - [(b,0)]) = \psi([(a,0)]) - \psi([(b,0)]) = \phi(a)-\phi(b)$. L'expression de $\psi$ est donc unique.

4.  **$K(\mathbb{N}, +, 0)$:**

    Dans $(\mathbb{N},+)$, la loi est simplifiable ($a+k=b+k \implies a=b$). La relation d'équivalence devient $(a,b) \sim (c,d) \iff a+d=b+c$. C'est la construction standard de $\mathbb{Z}$ à partir de $\mathbb{N}$. La classe de $(a,b)$ correspond à l'entier $a-b$. L'addition est $(a-b)+(c-d) = (a+c)-(b+d)$.

    Donc $K(\mathbb{N}, +, 0) \cong \mathbb{Z}$.

**Réponse:**

1.  $\sim$ est une relation d'équivalence par vérification directe.
2.  $(K(M), +)$ est un groupe abélien.
3.  La construction satisfait la propriété universelle énoncée.
4.  $K(\mathbb{N}, +, 0) \cong (\mathbb{Z}, +, 0)$.

</details>

## Exercice 9: [Preuve Complexe]

**Problème:** (Lemme de Zassenhaus / Lemme du Papillon) Soit $G$ un groupe, et soient $A, B$ des sous-groupes de $G$. Soient $A' \triangleleft A$ et $B' \triangleleft B$ des sous-groupes normaux. Démontrer l'isomorphisme de groupes suivant :

$$

\frac{A'(A \cap B)}{(A \cap B')A'} \cong \frac{B'(B \cap A)}{(B \cap A')B'}

$$

(Note : On écrit souvent le produit de sous-groupes $HK = \{hk \mid h \in H, k \in K\}$. Ce n'est un sous-groupe que sous certaines conditions, mais ici, comme $A'$ est normal dans $A$, $A'(A \cap B)$ est bien un sous-groupe. De même pour les autres.)

<details>

<summary>Solution</summary>

**Méthode:** La preuve consiste à identifier un sous-groupe commun auquel les deux groupes quotients sont isomorphes, en utilisant le deuxième théorème d'isomorphisme (loi du parallélogramme). Le théorème stipule que si $S$ est un sous-groupe et $N$ un sous-groupe normal d'un groupe $G$, alors $SN$ est un sous-groupe de $G$, $N \cap S$ est un sous-groupe normal de $S$, et $(SN)/N \cong S/(S \cap N)$.

**Étapes:**

1.  **Analyse des dénominateurs :**
    - Soit $U = A \cap B$. C'est un sous-groupe de $G$.
    - Soit $D = (A \cap B') (A' \cap B)$.
    - $A \cap B'$ est un sous-groupe de $A \cap B = U$. Comme $B' \triangleleft B$, $A \cap B'$ est normal dans $A \cap B = U$.
    - De même, $A' \triangleleft A \implies A' \cap B$ est normal dans $A \cap B = U$.
    - Le produit de deux sous-groupes normaux est un sous-groupe normal. Donc $D = (A \cap B')(A' \cap B)$ est un sous-groupe normal de $U = A \cap B$.

2.  **Application du deuxième théorème d'isomorphisme (côté gauche) :**
    - On veut montrer que le groupe $\frac{A'(A \cap B)}{A'(A \cap B')}$ est isomorphe à $\frac{A \cap B}{D}$.
    - Considérons le groupe $A'(A \cap B)$. Comme $A' \triangleleft A$, c'est un sous-groupe.
    - Considérons le sous-groupe $A \cap B$. $A'$ est normal dans $A$, donc dans $A'(A \cap B)$.
    - On applique le théorème avec $S=A \cap B$ et $N=A'$. Leur produit est $A'(A \cap B)$.
    - On a $\frac{A'(A \cap B)}{A'} \cong \frac{A \cap B}{A' \cap (A \cap B)} = \frac{A \cap B}{A' \cap B}$.
    - Ce n'est pas le résultat voulu. Essayons une autre approche.
    - Soit $H = A \cap B$ et $N = A'(A \cap B')$. Nous devons montrer que $N$ est normal dans $A'(A \cap B)$.
    

3.  **Une approche plus directe :**
    - Montrons que $A'(A \cap B) / A'(A \cap B') \cong (A \cap B) / ((A' \cap B)(A \cap B'))$.
    - Soit $S = A \cap B$ et $N = A'$. $S$ normalise $A' \cap B$, mais pas $A'$.
    - Appliquons le théorème d'isomorphisme à des sous-groupes de $A$. Soit $H=A'(A \cap B)$ et $K=A \cap B$.
    - Soit $\phi: A \cap B \to \frac{A'(A \cap B)}{A'(A \cap B')}$ la projection canonique composée avec l'injection. $\phi(x) = x A'(A \cap B')$.
    - C'est un morphisme de groupes. Il est surjectif, car tout élément de $A'(A\cap B)$ s'écrit $a'u$ avec $a' \in A'$ et $u \in A \cap B$. Modulo $A'$, il est équivalent à $u$. Donc modulo $A'(A \cap B')$, il est équivalent à $u$.
    - Calculons le noyau de $\phi$. $x \in \ker(\phi) \iff x \in A'(A \cap B')$. Comme $x \in A \cap B$, on a $x \in A \cap (A'(A \cap B'))$.
    - Par la loi modulaire de Dedekind, si $X,Y,Z$ sont des sous-groupes avec $X \subseteq Z$, alors $X(Y \cap Z) = XY \cap Z$.
    - Ici, $A' \subseteq A$. Donc $A'(A \cap B') = A' (B' \cap A) = A'B' \cap A$. Non, ceci n'est vrai que si $A' \subseteq B'$.
    - Le noyau est $\ker(\phi) = (A \cap B) \cap A'(A \cap B') = (A' \cap (A \cap B)) (A \cap B') = (A' \cap B)(A \cap B')$. La deuxième égalité est une application du lemme modulaire.
    - Par le premier théorème d'isomorphisme, $\frac{A \cap B}{\ker(\phi)} \cong \text{Im}(\phi)$.
    - Donc $\frac{A \cap B}{(A' \cap B)(A \cap B')} \cong \frac{A'(A \cap B)}{A'(A \cap B')}$.

4.  **Symétrie :**
    - Le groupe $\frac{A \cap B}{(A' \cap B)(A \cap B')}$ est symétrique en $A$ et $B$.
    - Par un argument identique en échangeant les rôles de $A$ et $B$ (et $A'$ et $B'$), on obtient :

    $\frac{B \cap A}{(B' \cap A)(B \cap A')} \cong \frac{B'(B \cap A)}{B'(B \cap A')}$.

    - Les deux groupes quotients de l'énoncé sont donc isomorphes au même troisième groupe.

**Réponse:** Par transitivité de l'isomorphisme, on a le résultat demandé.

$

\frac{A'(A \cap B)}{(A \cap B')A'} \cong \frac{A \cap B}{(A' \cap B)(A \cap B')} \cong \frac{B'(B \cap A)}{(B \cap A')B'}

$

</details>

## Exercice 10: [Investigation Théorique]

**Problème:** Soit $\mathbb{Z}[i] = \{a+bi \mid a,b \in \mathbb{Z}\}$ l'anneau des entiers de Gauss. Soit $p$ un nombre premier dans $\mathbb{N}$.

1.  Démontrer que l'anneau quotient $\mathbb{Z}[i]/(p)$ est isomorphe à l'anneau $(\mathbb{Z}/p\mathbb{Z})[X]/(X^2+1)$.
2.  En déduire que l'idéal $(p) = p\mathbb{Z}[i]$ est premier dans $\mathbb{Z}[i]$ si et seulement si le polynôme $X^2+1$ est irréductible sur le corps $\mathbb{F}_p = \mathbb{Z}/p\mathbb{Z}$.
3.  Caractériser les nombres premiers $p$ pour lesquels $X^2+1$ est irréductible sur $\mathbb{F}_p$, et donc pour lesquels $(p)$ est un idéal premier de $\mathbb{Z}[i]$.

<details>

<summary>Solution</summary>

**Méthode:** On utilise les théorèmes d'isomorphisme pour les anneaux. L'idée est de voir $\mathbb{Z}[i]$ comme un quotient de $\mathbb{Z}[X]$, puis de quotienter par l'idéal $(p)$. Pour la troisième question, on cherche quand $-1$ est un résidu quadratique modulo $p$.

**Étapes:**

1.  **Isomorphisme d'anneaux :**

    Considérons le morphisme d'évaluation $\phi: \mathbb{Z}[X] \to \mathbb{C}$ donné par $\phi(P(X)) = P(i)$.

    L'image de ce morphisme est $\text{Im}(\phi) = \{a+bi \mid a,b \in \mathbb{Z}\} = \mathbb{Z}[i]$.

    Le noyau est $\text{Ker}(\phi) = (X^2+1)\mathbb{Z}[X]$, l'idéal engendré par le polynôme minimal de $i$ sur $\mathbb{Z}$.

    Par le premier théorème d'isomorphisme, $\mathbb{Z}[X]/(X^2+1) \cong \mathbb{Z}[i]$.

    Maintenant, on quotiente par l'idéal $(p)$. Par le troisième théorème d'isomorphisme :

    $\frac{\mathbb{Z}[i]}{(p)} \cong \frac{\mathbb{Z}[X]/(X^2+1)}{(p, X^2+1)/(X^2+1)} \cong \frac{\mathbb{Z}[X]}{(p, X^2+1)}$.

    De plus, $\frac{\mathbb{Z}[X]}{(p)} \cong (\mathbb{Z}/p\mathbb{Z})[X] = \mathbb{F}_p[X]$.

    Donc, $\frac{\mathbb{Z}[X]}{(p, X^2+1)} \cong \frac{(\mathbb{Z}/p\mathbb{Z})[X]}{(X^2+1)}$.

    Finalement, $\mathbb{Z}[i]/(p) \cong \mathbb{F}_p[X]/(X^2+1)$.

2.  **Condition de primalité de l'idéal $(p)$ :**

    Soit $A$ un anneau commutatif. Un idéal $I$ est premier si et seulement si l'anneau quotient $A/I$ est un anneau intègre.

    Ici, $A = \mathbb{Z}[i]$ et $I=(p)$. L'idéal $(p)$ est premier si et seulement si $\mathbb{Z}[i]/(p)$ est un anneau intègre.

    D'après la question 1, cela est équivalent à ce que $\mathbb{F}_p[X]/(X^2+1)$ soit un anneau intègre.

    Dans un anneau de polynômes à coefficients dans un corps $K$ (ici $\mathbb{F}_p$), l'idéal $(P(X))$ est premier si et seulement si le polynôme $P(X)$ est irréductible sur $K$.

    Donc, $(p)$ est premier dans $\mathbb{Z}[i]$ si et seulement si $X^2+1$ est irréductible sur $\mathbb{F}_p$.

3.  **Caractérisation des nombres premiers $p$ :**

    Le polynôme $X^2+1$ est irréductible sur $\mathbb{F}_p$ si et seulement s'il n'a pas de racine dans $\mathbb{F}_p$.

    Une racine de $X^2+1$ dans $\mathbb{F}_p$ est un élément $x$ tel que $x^2+1 \equiv 0 \pmod p$, c'est-à-dire $x^2 \equiv -1 \pmod p$.

    -   **Cas $p=2$ :** $X^2+1 = X^2-1 = (X-1)^2$ dans $\mathbb{F}_2[X]$. Il n'est pas irréductible.
    -   **Cas $p$ premier impair :** L'équation $x^2 \equiv -1 \pmod p$ a une solution si et seulement si $-1$ est un résidu quadratique modulo $p$.

    Ceci est déterminé par le symbole de Legendre : $(\frac{-1}{p}) = (-1)^{(p-1)/2}$.

    - Si $(p-1)/2$ est pair, i.e., $p-1$ est un multiple de 4, i.e., $p \equiv 1 \pmod 4$, alors $(\frac{-1}{p})=1$ et $-1$ est un résidu quadratique. $X^2+1$ est réductible.
    - Si $(p-1)/2$ est impair, i.e., $p \equiv 3 \pmod 4$, alors $(\frac{-1}{p})=-1$ et $-1$ n'est pas un résidu quadratique. $X^2+1$ est irréductible.

**Réponse:** L'idéal $(p)$ est un idéal premier de $\mathbb{Z}[i]$ si et seulement si $p$ est un nombre premier tel que $p \equiv 3 \pmod 4$.

$p\mathbb{Z}[i] \text{ est premier } \iff p \text{ est premier et } p \equiv 3 \pmod 4.$

</details>

## Exercice 11: [Investigation Théorique]

**Problème:** Dans le cadre des axiomes de Peano pour les entiers naturels $(\mathbb{N}, S, 0)$, démontrer que les trois principes suivants sont équivalents :

1.  **Principe de Récurrence Faible (PRF)** : Pour toute partie $P \subseteq \mathbb{N}$, si $0 \in P$ et $(\forall n \in \mathbb{N}, n \in P \implies S(n) \in P)$, alors $P = \mathbb{N}$.
2.  **Principe de Récurrence Forte (PRForte)** : Pour toute partie $P \subseteq \mathbb{N}$, si $(\forall n \in \mathbb{N}, (\{k \in \mathbb{N} \mid k < n\} \subseteq P \implies n \in P))$, alors $P = \mathbb{N}$.
3.  **Principe du Bon Ordre (PBO)** : Toute partie non vide de $\mathbb{N}$ admet un plus petit élément.

<details>

<summary>Solution</summary>

**Méthode:** On prouve les implications cycliques (1 $\implies$ 2), (2 $\implies$ 3), et (3 $\implies$ 1).

**Étapes:**

1.  **Démonstration de (PRF $\implies$ PRForte)**

    Supposons PRF. Soit $P \subseteq \mathbb{N}$ tel que pour tout $n \in \mathbb{N}$, $(\{k \mid k < n\} \subseteq P \implies n \in P)$.

    Soit $Q(n)$ la propriété "$\{k \in \mathbb{N} \mid k < n\} \subseteq P$". Nous voulons montrer que $P=\mathbb{N}$.

    Définissons un nouvel ensemble $A = \{n \in \mathbb{N} \mid \{k \mid k \leq n\} \subseteq P\}$. Nous allons montrer $A = \mathbb{N}$ par récurrence faible.

    -   **Base :** Pour $n=0$, l'ensemble $\{k \mid k<0\}$ est vide, donc $\{k \mid k < 0\} \subseteq P$ est vrai. Par l'hypothèse sur $P$, on a $0 \in P$. Donc $\{k \mid k \le 0\} \subseteq P$ est vrai, donc $0 \in A$.
    -   **Hérédité :** Supposons $n \in A$. Cela signifie que $\{k \mid k \leq n\} \subseteq P$. Comme $S(n)=n+1$, l'ensemble $\{k \mid k < S(n)\}$ est exactement $\{k \mid k \leq n\}$. Par hypothèse, on a donc $S(n) \in P$.

    Puisque $\{k \mid k \leq n\} \subseteq P$ et $S(n) \in P$, on a $\{k \mid k \leq S(n)\} \subseteq P$. Donc $S(n) \in A$.

    Par PRF, $A = \mathbb{N}$. Si $A = \mathbb{N}$, alors pour tout $n \in \mathbb{N}$, $n \in P$. Donc $P=\mathbb{N}$.

2.  **Démonstration de (PRForte $\implies$ PBO)**

    Supposons PRForte. Soit $A \subseteq \mathbb{N}$ une partie non vide. Nous voulons montrer qu'elle a un plus petit élément.

    Raisonnons par l'absurde. Supposons que $A$ n'ait pas de plus petit élément.

    Soit $P = \mathbb{N} \setminus A$. Montrons que $P = \mathbb{N}$ en utilisant la récurrence forte.

    Soit $n \in \mathbb{N}$. Supposons que $\{k \mid k < n\} \subseteq P$. Cela signifie que pour tout $k < n$, $k \notin A$.

    Si $n$ était dans $A$, alors $n$ serait le plus petit élément de $A$, car tous les entiers plus petits ne sont pas dans $A$.

    Mais nous avons supposé que $A$ n'a pas de plus petit élément. Donc $n \notin A$, ce qui signifie $n \in P$.

    Nous avons montré : $(\forall n \in \mathbb{N}, (\{k \mid k < n\} \subseteq P \implies n \in P))$.

    Par PRForte, on conclut que $P = \mathbb{N}$.

    Mais si $P = \mathbb{N}$, alors $A = \mathbb{N} \setminus P = \emptyset$, ce qui contredit l'hypothèse que $A$ est non vide.

    Donc, l'hypothèse que $A$ n'a pas de plus petit élément est fausse. $A$ doit avoir un plus petit élément.

3.  **Démonstration de (PBO $\implies$ PRF)**

    Supposons PBO. Soit $P \subseteq \mathbb{N}$ tel que $0 \in P$ et $(\forall n \in \mathbb{N}, n \in P \implies S(n) \in P)$.

    Nous voulons montrer que $P = \mathbb{N}$.

    Raisonnons par l'absurde. Supposons que $P \neq \mathbb{N}$.

    Soit $A = \mathbb{N} \setminus P$. Puisque $P \neq \mathbb{N}$, $A$ est une partie non vide de $\mathbb{N}$.

    Par PBO, $A$ admet un plus petit élément, notons-le $m$.

    Puisque $0 \in P$, $0 \notin A$, donc $m \neq 0$.

    Comme $m$ est le plus petit élément de $A$, tout entier $k < m$ doit être dans $P$. En particulier, $m-1$ existe et $m-1 \in P$.

    Mais par l'hypothèse d'hérédité sur $P$, si $m-1 \in P$, alors $S(m-1) \in P$, c'est-à-dire $m \in P$.

    Ceci contredit le fait que $m \in A = \mathbb{N} \setminus P$.

    L'hypothèse $P \neq \mathbb{N}$ mène à une contradiction. Donc $P = \mathbb{N}$.

**Réponse:** Les trois principes sont équivalents dans le cadre des autres axiomes de Peano.

$\text{PRF} \iff \text{PRForte} \iff \text{PBO}$

</details>

## Exercice 12: [Problème de Niveau Recherche]

**Problème:** (Théorème de Goodstein) Une suite de Goodstein $G_m(n)$ est définie pour des entiers $m, n \ge 2$. Pour la construire, on écrit d'abord $n$ en **base héréditaire** $m$. C'est-à-dire qu'on écrit $n$ en base $m$, puis on écrit les exposants en base $m$, et ainsi de suite jusqu'à ce que tous les nombres apparaissant soient inférieurs à $m$. La suite $(g_k)_{k \ge m}$ est définie par $g_m = n$, puis pour $k \ge m$, $g_{k+1}$ est obtenu à partir de $g_k$ en effectuant deux opérations :

1. Changer la base de $k$ à $k+1$ dans la représentation héréditaire de $g_k$.
2. Soustraire 1 au nombre obtenu.

La suite s'arrête lorsqu'elle atteint 0. Le théorème de Goodstein affirme que toute suite de Goodstein se termine à 0.

1.  Calculer la suite de Goodstein pour $n=4$ en partant de $m=2$.
2.  Le théorème de Goodstein est un théorème de l'arithmétique qui n'est pas démontrable dans l'arithmétique de Peano (AP). Sa preuve standard utilise l'induction transfinie. L'idée est d'associer à chaque terme $g_k$ un ordinal en remplaçant formellement la base $k$ par le premier ordinal infini $\omega$. Montrer que la suite d'ordinaux ainsi créée est strictement décroissante pour la suite de $n=4$.

<details>

<summary>Solution</summary>

**Méthode:** On suit l'algorithme de construction de la suite pas à pas. Pour la deuxième partie, on effectue la traduction formelle de l'écriture en base $k$ vers une expression ordinale et on vérifie la décroissance, qui est une propriété fondamentale des ordinaux (tout ensemble d'ordinaux a un plus petit élément, donc toute suite strictement décroissante doit être finie).

**Étapes:**

1.  **Calcul de la suite de Goodstein pour n=4, m=2:**
    -   $g_2 = 4$. Représentation en base 2 héréditaire : $4 = 2^2$.
    -   Pour obtenir $g_3$:
        1. Changer la base 2 en 3 : $3^3 = 27$.
        2. Soustraire 1 : $g_3 = 26$.

        Représentation en base 3 héréditaire de 26 : $2 \cdot 3^2 + 2 \cdot 3^1 + 2$.

    -   Pour obtenir $g_4$:
        1. Changer la base 3 en 4 : $2 \cdot 4^2 + 2 \cdot 4^1 + 2 = 2 \cdot 16 + 8 + 2 = 32+8+2 = 42$.
        2. Soustraire 1 : $g_4 = 41$.

        Représentation en base 4 héréditaire de 41 : $2 \cdot 4^2 + 2 \cdot 4^1 + 1$.

    -   La suite continue de croître très rapidement pendant un long moment. Par exemple $g_5 = 2 \cdot 5^2 + 2 \cdot 5^1 = 60$. La suite finit par décroître et atteindre 0, mais le nombre d'étapes est colossal.
    
    Let's re-do with $n=3$ as it's shorter.

    - $g_2 = 3 = 2^1 + 1$.
    - $g_3$: Changer base: $3^1+1 = 4$. Soustraire 1: $g_3=3$. Base 3: $1 \cdot 3^1$.
    - $g_4$: Changer base: $1 \cdot 4^1 = 4$. Soustraire 1: $g_4=3$. Base 4: $3$.
    - $g_5$: Changer base: $3$. Soustraire 1: $g_5=2$. Base 5: $2$.
    - $g_6$: Changer base: $2$. Soustraire 1: $g_6=1$. Base 6: $1$.
    - $g_7$: Changer base: $1$. Soustraire 1: $g_7=0$. La suite se termine.
    
    Let's try $n=4$ again, carefully.

    - $g_2 = 4 = 2^2$.
    - $g_3$: Changer base: $3^3=27$. Soustraire 1: $g_3=26 = 2 \cdot 3^2 + 2 \cdot 3 + 2$.
    - $g_4$: Changer base: $2 \cdot 4^2 + 2 \cdot 4 + 2 = 32+8+2 = 42$. Soustraire 1: $g_4=41 = 2 \cdot 4^2 + 2 \cdot 4 + 1$.
    - $g_5$: Changer base: $2 \cdot 5^2 + 2 \cdot 5 + 1 = 50+10+1 = 61$. Soustraire 1: $g_5=60 = 2 \cdot 5^2 + 2 \cdot 5$.

    ... This grows for a very long time before decreasing.

2.  **Suite d'ordinaux pour n=4:**

    L'opération de traduction $f$ d'un nombre en base $k$ héréditaire en un ordinal consiste à remplacer chaque occurrence de $k$ par $\omega$.

    -   $g_2=4=2^2$. L'ordinal associé est $f(g_2, 2) = \omega^\omega$.
    -   $g_3=26 = 2 \cdot 3^2 + 2 \cdot 3 + 2$. L'ordinal associé est $f(g_3, 3) = \omega^2 \cdot 2 + \omega \cdot 2 + 2$.

        On compare $\omega^\omega$ et $\omega^2 \cdot 2 + \omega \cdot 2 + 2$.

        La première opération de la suite de Goodstein (changement de base) correspond à l'application $f(\cdot, k) \to f(\cdot, k+1)$. Pour $g_2=2^2$, on passe à $3^3$. En ordinaux, on passe de $\omega^\omega$ à $\omega^\omega$.

        L'opération "soustraire 1" sur le nombre se traduit par une diminution de l'ordinal.

        $f(27, 3) = \omega^\omega$. $f(26, 3) = \omega^2 \cdot 2 + \omega \cdot 2 + 2$. On a bien $\omega^2 \cdot 2 + \omega \cdot 2 + 2 < \omega^\omega$.

    -   $g_4=41=2 \cdot 4^2 + 2 \cdot 4 + 1$. L'ordinal associé est $f(g_4, 4) = \omega^2 \cdot 2 + \omega \cdot 2 + 1$.

        On compare l'ordinal associé à $g_3$ ($f(g_3, 3)$) avec l'ordinal associé à $g_4$ ($f(g_4, 4)$).

        $f(g_3, 3) = \omega^2 \cdot 2 + \omega \cdot 2 + 2$.

        $f(g_4, 4) = \omega^2 \cdot 2 + \omega \cdot 2 + 1$.

        Clairement, $\omega^2 \cdot 2 + \omega \cdot 2 + 1 < \omega^2 \cdot 2 + \omega \cdot 2 + 2$.

    -   La suite d'ordinaux est $\omega^\omega$, $\omega^2 \cdot 2 + \omega \cdot 2 + 2$, $\omega^2 \cdot 2 + \omega \cdot 2 + 1$, $\omega^2 \cdot 2 + \omega \cdot 2$, ...

    Cette suite est strictement décroissante. Comme il n'existe pas de suite infinie strictement décroissante d'ordinaux, cette suite doit s'arrêter. La suite des ordinaux ne peut s'arrêter qu'à 0, ce qui correspond à la fin de la suite de Goodstein.

**Réponse:**

1.  La suite de Goodstein pour $n=4$ commence par $g_2=4$, $g_3=26$, $g_4=41$, $g_5=60$, etc. Elle croît très rapidement avant de finalement décroître et s'arrêter à 0.
2.  La suite d'ordinaux associée est $f(g_k, k)$. Pour $n=4$, elle commence par $\omega^\omega$, puis $\omega^2 \cdot 2 + \omega \cdot 2 + 2$, $\omega^2 \cdot 2 + \omega \cdot 2 + 1$, etc. Cette suite d'ordinaux est strictement décroissante. Comme les ordinaux sont bien ordonnés, toute suite strictement décroissante doit être finie. Cela garantit que la suite de Goodstein atteint 0 en un nombre fini d'étapes.

$\text{Suite d'ordinaux : } f(g_k, k) > f(g_{k+1}, k+1) \text{ pour tout } k.$

</details>