---
id: e17a8b9e
type: exercises
order: 21
title: Outillage - exercices (B)
tags:
  - logique
  - ensembles
  - fonctions
  - nombres réels
  - nombres complexes
  - langage mathématique
createdAt: '2025-10-18T18:17:06.452Z'
level: pro
course: Constructions et raisonnements mathématiques
courseId: d2e11e03
chapter: Outillage
chapterId: 4caba84b
---
# Exercices "Outillage" (B)

## Exercise 1: [Investigation Théorique]

**Problème:** Le connecteur logique "NON-ET", noté $\uparrow$ (barre de Sheffer), est défini par $P \uparrow Q \Leftrightarrow \neg(P \land Q)$. Démontrer que l'ensemble $\{\uparrow\}$ est fonctionnellement complet, c'est-à-dire que n'importe quel connecteur logique usuel ($\neg, \land, \lor, \Rightarrow$) peut être exprimé en utilisant uniquement le connecteur $\uparrow$.

<details>

<summary>Solution</summary>

**Méthode:** Pour prouver que $\{\uparrow\}$ est fonctionnellement complet, il suffit de montrer que l'on peut exprimer les connecteurs d'un ensemble déjà connu comme étant complet, par exemple $\{\neg, \land\}$. Nous allons donc exprimer $\neg P$ et $P \land Q$ en n'utilisant que l'opérateur $\uparrow$.

**Étapes:**

1.  **Expression de la négation ($\neg P$)**:

    Nous cherchons une combinaison de $P$ avec lui-même via $\uparrow$ qui soit équivalente à $\neg P$.

    Considérons $P \uparrow P$. Par définition, cela équivaut à $\neg(P \land P)$.

    Puisque $P \land P \Leftrightarrow P$, on a $P \uparrow P \Leftrightarrow \neg P$.

    Ainsi, nous avons trouvé une expression pour la négation : $\neg P \Leftrightarrow P \uparrow P$.

2.  **Expression de la conjonction ($P \land Q$)**:

    Nous voulons exprimer $P \land Q$. Nous savons exprimer la négation, donc nous pouvons utiliser la double négation : $P \land Q \Leftrightarrow \neg(\neg(P \land Q))$.

    Par définition, $\neg(P \land Q) \Leftrightarrow P \uparrow Q$.

    Donc, $P \land Q \Leftrightarrow \neg(P \uparrow Q)$.

    Maintenant, nous utilisons l'expression de la négation trouvée à l'étape 1, en l'appliquant à la proposition "($P \uparrow Q$)":

    $\neg(P \uparrow Q) \Leftrightarrow (P \uparrow Q) \uparrow (P \uparrow Q)$.

    Nous avons donc une expression pour la conjonction : $P \land Q \Leftrightarrow (P \uparrow Q) \uparrow (P \uparrow Q)$.

3.  **Expression de la disjonction ($P \lor Q$)**:

    À partir de $\{\neg, \land\}$, on peut exprimer la disjonction en utilisant les lois de De Morgan : $P \lor Q \Leftrightarrow \neg(\neg P \land \neg Q)$.

    En utilisant nos expressions pour $\neg$ et $\land$ :

    $\neg P \Leftrightarrow P \uparrow P$

    $\neg Q \Leftrightarrow Q \uparrow Q$

    Donc, $\neg P \land \neg Q \Leftrightarrow (P \uparrow P) \land (Q \uparrow Q)$.

    En utilisant notre formule pour la conjonction sur les termes $(P \uparrow P)$ et $(Q \uparrow Q)$, on obtient :

    $A \land B \Leftrightarrow (A \uparrow B) \uparrow (A \uparrow B)$.

    Donc, $(\neg P \land \neg Q) \Leftrightarrow ((P \uparrow P) \uparrow (Q \uparrow Q)) \uparrow ((P \uparrow P) \uparrow (Q \uparrow Q))$.

    Finalement, $P \lor Q \Leftrightarrow \neg((\neg P \land \neg Q))$, ce qui se traduit par :

    $P \lor Q \Leftrightarrow [((P \uparrow P) \uparrow (Q \uparrow Q)) \uparrow ((P \uparrow P) \uparrow (Q \uparrow Q))] \uparrow [((P \uparrow P) \uparrow (Q \uparrow Q)) \uparrow ((P \uparrow P) \uparrow (Q \uparrow Q))]$.

    Une expression plus simple peut être trouvée : $P \lor Q \Leftrightarrow (\neg P) \uparrow (\neg Q) \Leftrightarrow (P \uparrow P) \uparrow (Q \uparrow Q)$.

**Réponse:**

Les expressions des connecteurs de base en utilisant uniquement $\uparrow$ sont :

-   $\neg P \Leftrightarrow P \uparrow P$
-   $P \land Q \Leftrightarrow (P \uparrow Q) \uparrow (P \uparrow Q)$
-   $P \lor Q \Leftrightarrow (P \uparrow P) \uparrow (Q \uparrow Q)$

Puisque les connecteurs $\{\neg, \land, \lor\}$ peuvent être exprimés, l'ensemble $\{\uparrow\}$ est fonctionnellement complet.

</details>

## Exercise 2: [Preuve Complexe]

**Problème:** La définition de la continuité uniforme d'une fonction $f: I \to \mathbb{R}$ sur un intervalle $I$ est :

$$ \forall \varepsilon > 0, \exists \eta > 0, \forall x \in I, \forall y \in I, (|x-y| < \eta \Rightarrow |f(x)-f(y)| < \varepsilon) $$

1. Écrire la négation formelle de cette proposition, c'est-à-dire la définition d'une fonction non uniformément continue.
2. En utilisant cette définition formelle, prouver que la fonction $f: \mathbb{R} \to \mathbb{R}$ définie par $f(x) = x^2$ n'est pas uniformément continue.

<details>

<summary>Solution</summary>

**Méthode:**

1. Pour obtenir la négation, nous appliquerons séquentiellement les règles de négation des quantificateurs et de l'implication.
2. Pour prouver la non-continuité uniforme de $f(x)=x^2$, nous devons trouver un $\varepsilon_0 > 0$ spécifique tel que pour n'importe quel $\eta > 0$, on puisse trouver deux points $x, y \in \mathbb{R}$ qui sont proches l'un de l'autre ($|x-y| < \eta$) mais dont les images sont éloignées ($|f(x)-f(y)| \ge \varepsilon_0$). La clé est de choisir $x$ et $y$ de plus en plus grands.

**Étapes:**

1.  **Négation de la définition de continuité uniforme**:

    Soit $P$ la proposition de la continuité uniforme.

    $\neg P \Leftrightarrow \neg(\forall \varepsilon > 0, \exists \eta > 0, \forall x \in I, \forall y \in I, (|x-y| < \eta \Rightarrow |f(x)-f(y)| < \varepsilon))$

    $\Leftrightarrow \exists \varepsilon > 0, \neg(\exists \eta > 0, \forall x \in I, \forall y \in I, (\dots))$

    $\Leftrightarrow \exists \varepsilon > 0, \forall \eta > 0, \neg(\forall x \in I, \forall y \in I, (\dots))$

    $\Leftrightarrow \exists \varepsilon > 0, \forall \eta > 0, \exists x \in I, \exists y \in I, \neg(|x-y| < \eta \Rightarrow |f(x)-f(y)| < \varepsilon)$

    En utilisant $\neg(A \Rightarrow B) \Leftrightarrow (A \land \neg B)$, on obtient la définition de la non-continuité uniforme :

    $$ \exists \varepsilon > 0, \forall \eta > 0, \exists x \in \mathbb{R}, \exists y \in \mathbb{R}, (|x-y| < \eta \land |f(x)-f(y)| \ge \varepsilon) $$

2.  **Preuve pour $f(x) = x^2$**:

    Nous devons prouver la proposition obtenue à l'étape 1.

    -   **Choisir $\varepsilon$**: Posons $\varepsilon_0 = 1$. Nous devons montrer que pour ce $\varepsilon$, la suite de la proposition est vraie.
    -   **Soit $\eta > 0$ quelconque**: Notre objectif est de trouver $x, y$ qui dépendent de $\eta$ et qui satisfont les conditions.
    -   **Trouver $x$ et $y$**:

        On veut $|x-y| < \eta$ et $|x^2-y^2| \ge 1$.

        $|x^2-y^2| = |(x-y)(x+y)| = |x-y||x+y|$.

        Pour que cette quantité soit grande même si $|x-y|$ est petit, il faut que $|x+y|$ soit grand.

        Choisissons $y = x + \frac{\eta}{2}$. Alors $|x-y| = \frac{\eta}{2} < \eta$. La première condition est satisfaite.

        Calculons la deuxième condition :

        $|f(x)-f(y)| = |x^2 - (x+\frac{\eta}{2})^2| = |x^2 - (x^2 + x\eta + \frac{\eta^2}{4})| = |-x\eta - \frac{\eta^2}{4}| = |x\eta + \frac{\eta^2}{4}|$.

        Nous voulons que $|x\eta + \frac{\eta^2}{4}| \ge 1$.

        Si nous choisissons $x > 0$, cela devient $x\eta + \frac{\eta^2}{4} \ge 1$.

        $x\eta \ge 1 - \frac{\eta^2}{4}$.

        $x \ge \frac{1}{\eta} - \frac{\eta}{4}$.

        Puisque $\eta$ est donné, nous pouvons toujours choisir un tel $x$. Par exemple, choisissons $x = \frac{1}{\eta}$.

        Avec $x = \frac{1}{\eta}$ et $y = \frac{1}{\eta} + \frac{\eta}{2}$, nous avons :

        $|x-y| = \frac{\eta}{2} < \eta$.

        $|f(x)-f(y)| = |x^2-y^2| = |x-y||x+y| = \frac{\eta}{2} |\frac{2}{\eta} + \frac{\eta}{2}| = 1 + \frac{\eta^2}{4}$.

        Puisque $\eta > 0$, $\frac{\eta^2}{4} > 0$, et donc $1 + \frac{\eta^2}{4} > 1$.

        Nous avons donc montré que pour $\varepsilon=1$, pour tout $\eta>0$, il existe $x=\frac{1}{\eta}$ et $y=\frac{1}{\eta}+\frac{\eta}{2}$ tels que $|x-y| < \eta$ et $|f(x)-f(y)| \ge 1$.

**Réponse:**

1. La définition d'une fonction $f$ non uniformément continue sur $I$ est :

   $$ \exists \varepsilon > 0, \forall \eta > 0, \exists x \in I, \exists y \in I, (|x-y| < \eta \land |f(x)-f(y)| \ge \varepsilon) $$

2. La fonction $f(x)=x^2$ sur $\mathbb{R}$ n'est pas uniformément continue.

</details>

## Exercise 3: [Investigation Théorique]

**Problème:** En admettant le Lemme de Zorn, prouver que tout espace vectoriel $V$ sur un corps $K$ admet une base. (Ce résultat est aussi connu comme le théorème de la base de Hamel).

*Rappel du Lemme de Zorn* : Soit $(E, \le)$ un ensemble ordonné non vide dans lequel toute chaîne (sous-ensemble totalement ordonné) admet un majorant. Alors $E$ admet au moins un élément maximal.

<details>

<summary>Solution</summary>

**Méthode:**

Nous allons appliquer le Lemme de Zorn à un ensemble bien choisi. L'ensemble à considérer sera la collection de toutes les parties libres de l'espace vectoriel $V$. L'ordre sera l'inclusion. Nous vérifierons que les hypothèses du Lemme de Zorn sont satisfaites (l'ensemble est non vide, et toute chaîne admet un majorant). La conclusion du lemme nous donnera un élément maximal, dont nous montrerons qu'il s'agit d'une base de $V$.

**Étapes:**

1.  **Définition de l'ensemble ordonné**:

    Soit $\mathcal{L}$ l'ensemble de toutes les parties (sous-ensembles) libres de $V$. On munit $\mathcal{L}$ de la relation d'ordre partiel $\subset$ (l'inclusion d'ensembles).

2.  **Vérification de la non-vacuité**:

    L'ensemble vide $\emptyset$ est une partie libre de $V$ (par vacuité de la condition de dépendance linéaire). Donc $\emptyset \in \mathcal{L}$, et $\mathcal{L}$ n'est pas vide. (Si $V \neq \{0\}$, on peut aussi prendre $\{v\}$ pour n'importe quel $v \neq 0$).

3.  **Vérification de la condition sur les chaînes**:

    Soit $\mathcal{C} = \{L_i\}_{i \in I}$ une chaîne dans $(\mathcal{L}, \subset)$. Cela signifie que pour tous $i, j \in I$, on a $L_i \subset L_j$ ou $L_j \subset L_i$.

    Nous devons montrer que $\mathcal{C}$ admet un majorant dans $\mathcal{L}$.

    Considérons l'ensemble $M = \bigcup_{i \in I} L_i$.

    -   $M$ est un majorant de $\mathcal{C}$ : Par construction, pour tout $i \in I$, $L_i \subset M$.
    -   $M$ est dans $\mathcal{L}$ : Nous devons montrer que $M$ est une partie libre. Soit $\{v_1, \dots, v_n\}$ une sous-famille finie d'éléments de $M$, et soient $\lambda_1, \dots, \lambda_n \in K$ tels que $\sum_{k=1}^n \lambda_k v_k = 0$.

        Pour chaque $v_k$, il existe un indice $i_k \in I$ tel que $v_k \in L_{i_k}$.

        Comme $\mathcal{C}$ est une chaîne, l'ensemble fini $\{L_{i_1}, \dots, L_{i_n}\}$ est totalement ordonné. Il existe donc un indice $j \in \{i_1, \dots, i_n\}$ tel que $L_{i_k} \subset L_j$ pour tout $k=1, \dots, n$.

        Par conséquent, tous les vecteurs $v_1, \dots, v_n$ appartiennent à $L_j$.

        Puisque $L_j \in \mathcal{L}$, $L_j$ est une partie libre. La relation $\sum_{k=1}^n \lambda_k v_k = 0$ implique donc que tous les scalaires $\lambda_k$ sont nuls.

        Ceci prouve que $M$ est une partie libre, donc $M \in \mathcal{L}$.

4.  **Application du Lemme de Zorn**:

    Les hypothèses du Lemme de Zorn étant satisfaites, $(\mathcal{L}, \subset)$ admet un élément maximal. Soit $B$ un tel élément maximal. $B$ est donc une partie libre de $V$ telle qu'il n'existe aucune autre partie libre $B'$ qui contienne strictement $B$.

5.  **Démonstration que l'élément maximal est une base**:

    Nous savons déjà que $B$ est une partie libre. Il reste à montrer que $B$ est une partie génératrice de $V$, c'est-à-dire que $\text{Vect}(B) = V$.

    Supposons par l'absurde que $\text{Vect}(B) \neq V$. Il existe alors un vecteur $v \in V$ tel que $v \notin \text{Vect}(B)$.

    Considérons l'ensemble $B' = B \cup \{v\}$.

    Montrons que $B'$ est une partie libre. Soit une combinaison linéaire nulle d'éléments de $B'$ :

    $\lambda v + \sum_{k=1}^n \lambda_k b_k = 0$, où $b_k \in B$.

    Si $\lambda \neq 0$, alors on pourrait écrire $v = -\frac{1}{\lambda} \sum_{k=1}^n \lambda_k b_k$, ce qui signifierait que $v \in \text{Vect}(B)$, contredisant notre hypothèse. Donc $\lambda$ doit être nul.

    La relation devient $\sum_{k=1}^n \lambda_k b_k = 0$. Puisque $B$ est libre, tous les $\lambda_k$ sont nuls.

    Donc, la seule combinaison linéaire nulle d'éléments de $B'$ est la combinaison triviale. $B'$ est une partie libre.

    Or, $B \subsetneq B'$ (car $v \notin B$ puisque $v \notin \text{Vect}(B)$). Ceci contredit le fait que $B$ est un élément maximal de $\mathcal{L}$.

    L'hypothèse $\text{Vect}(B) \neq V$ est donc fausse. On a $\text{Vect}(B) = V$.

    $B$ est une partie libre et génératrice, c'est donc une base de $V$.

**Réponse:**

En appliquant le Lemme de Zorn à l'ensemble des parties libres de $V$ ordonné par l'inclusion, on établit l'existence d'une partie libre maximale. On démontre ensuite par l'absurde que cette partie libre maximale est nécessairement génératrice, et constitue donc une base de l'espace vectoriel $V$.

</details>

## Exercise 4: [Preuve Complexe]

**Problème:** Soit $A$ un ensemble quelconque. Démontrer le théorème de Cantor : il n'existe aucune fonction surjective de $A$ vers son ensemble des parties $\mathcal{P}(A)$.

<details>

<summary>Solution</summary>

**Méthode:**

La preuve est un raisonnement par l'absurde utilisant un argument diagonal. On suppose qu'une telle surjection $f: A \to \mathcal{P}(A)$ existe. Ensuite, on construit un sous-ensemble spécifique de $A$ qui ne peut pas être dans l'image de $f$, ce qui contredit la surjectivité.

**Étapes:**

1.  **Hypothèse par l'absurde**:

    Supposons qu'il existe une fonction surjective $f: A \to \mathcal{P}(A)$.

    Cela signifie que pour tout sous-ensemble $S \subset A$ (c'est-à-dire, pour tout $S \in \mathcal{P}(A)$), il existe au moins un élément $a \in A$ tel que $f(a) = S$.

2.  **Construction de l'ensemble "diagonal"**:

    Considérons le sous-ensemble $D$ de $A$ défini comme suit :

    $$ D = \{x \in A \mid x \notin f(x)\} $$

    Pour chaque $x \in A$, $f(x)$ est un sous-ensemble de $A$. La condition $x \notin f(x)$ est donc bien définie : soit $x$ appartient au sous-ensemble $f(x)$, soit il n'y appartient pas. $D$ est la collection de tous les éléments de $A$ qui n'appartiennent pas à leur propre image par $f$.

3.  **Contradiction**:

    Puisque $D$ est un sous-ensemble de $A$, $D \in \mathcal{P}(A)$.

    Par notre hypothèse de surjectivité, $D$ doit avoir un antécédent par $f$. Il doit donc exister un élément $d \in A$ tel que $f(d) = D$.

4.  **Analyse de l'appartenance de $d$ à $D$**:

    Maintenant, nous nous posons la question : est-ce que l'élément $d$ appartient à l'ensemble $D$ ?

    -   **Cas 1 : Supposons que $d \in D$.**

        Par la définition de $D$, si $d \in D$, alors $d$ doit satisfaire la condition d'appartenance à $D$, qui est $d \notin f(d)$.

        Mais nous avons supposé que $f(d) = D$. Donc, $d \in D$ implique $d \notin D$. C'est une contradiction.

    -   **Cas 2 : Supposons que $d \notin D$.**

        Par la définition de $D$, si un élément $x$ n'est pas dans $D$, cela signifie qu'il ne satisfait pas la condition d'appartenance, c'est-à-dire $\neg(x \notin f(x))$, ce qui équivaut à $x \in f(x)$.

        En appliquant ceci à $d$, $d \notin D$ implique que $d \in f(d)$.

        Mais encore une fois, $f(d) = D$. Donc, $d \notin D$ implique $d \in D$. C'est aussi une contradiction.

5.  **Conclusion**:

    Dans les deux cas possibles, nous arrivons à une contradiction. L'hypothèse initiale, à savoir l'existence d'une fonction surjective $f: A \to \mathcal{P}(A)$, doit être fausse.

**Réponse:**

Il n'existe aucune fonction surjective d'un ensemble $A$ vers son ensemble des parties $\mathcal{P}(A)$. En conséquence, $|A| < |\mathcal{P}(A)|$ pour tout ensemble $A$.

</details>

## Exercise 5: [Investigation Théorique]

**Problème:**

1.  Déterminer toutes les fonctions $f: \mathbb{Q} \to \mathbb{Q}$ qui satisfont l'équation fonctionnelle de Cauchy :

    $$ \forall x, y \in \mathbb{Q}, \quad f(x+y) = f(x) + f(y) $$

2.  Expliquer pourquoi la même méthode de résolution ne s'applique pas directement pour trouver toutes les fonctions $g: \mathbb{R} \to \mathbb{R}$ satisfaisant la même équation. Quelle(s) condition(s) additionnelle(s) sur $g$ (par exemple, la continuité) permettrait(aient) d'obtenir une solution de forme similaire ?

<details>

<summary>Solution</summary>

**Méthode:**

Pour la première partie, nous allons établir la forme de la fonction sur les entiers, puis sur les rationnels, en utilisant la propriété d'additivité. Pour la seconde partie, nous mettrons en évidence l'étape qui utilise la structure de $\mathbb{Q}$ et qui ne se généralise pas à $\mathbb{R}$.

**Étapes:**

1.  **Résolution sur $\mathbb{Q}$**:

    Soit $f: \mathbb{Q} \to \mathbb{Q}$ telle que $f(x+y) = f(x)+f(y)$.

    -   **Pour $x=y=0$**: $f(0) = f(0)+f(0) \Rightarrow f(0)=0$.
    -   **Pour les entiers naturels $\mathbb{N}$**: Montrons par récurrence que $f(n) = n f(1)$ pour $n \in \mathbb{N}$.
        -   Base : Pour $n=1$, c'est trivial. Pour $n=0$, $f(0)=0=0 \cdot f(1)$.
        -   Hérédité : Supposons $f(k) = k f(1)$ pour un $k \in \mathbb{N}$.

          $f(k+1) = f(k) + f(1) = k f(1) + f(1) = (k+1)f(1)$.

        La propriété est vraie pour tout $n \in \mathbb{N}$.

    -   **Pour les entiers relatifs $\mathbb{Z}$**:

        Soit $n \in \mathbb{N}$. On a $0 = f(0) = f(n + (-n)) = f(n) + f(-n)$.

        Donc $f(-n) = -f(n) = -(n f(1)) = (-n) f(1)$.

        La propriété $f(z) = z f(1)$ est donc vraie pour tout $z \in \mathbb{Z}$.

    -   **Pour les nombres rationnels $\mathbb{Q}$**:

        Soit $q \in \mathbb{Q}$. On peut écrire $q = \frac{p}{r}$ avec $p \in \mathbb{Z}$ et $r \in \mathbb{N}^*$.

        On a $f(p) = p f(1)$.

        Aussi, $f(p) = f(r \cdot \frac{p}{r}) = f(\underbrace{\frac{p}{r} + \dots + \frac{p}{r}}_{r \text{ fois}}) = r f(\frac{p}{r}) = r f(q)$.

        En égalant les deux expressions pour $f(p)$, on obtient $p f(1) = r f(q)$.

        Puisque $r \neq 0$, on peut diviser : $f(q) = \frac{p}{r} f(1) = q f(1)$.

    -   **Conclusion pour $\mathbb{Q}$**: Toute fonction $f: \mathbb{Q} \to \mathbb{Q}$ satisfaisant l'équation de Cauchy est de la forme $f(x) = cx$ pour une constante $c \in \mathbb{Q}$ (où $c=f(1)$).

2.  **Généralisation à $\mathbb{R}$**:

    La méthode ci-dessus utilise de manière cruciale le fait que tout rationnel $q$ peut s'écrire comme un multiple entier ($p$) d'une fraction unitaire ($1/r$). Cette décomposition ne s'applique pas aux nombres irrationnels. Si $x \in \mathbb{R}$, on peut prouver que $f(qx) = qf(x)$ pour tout $q \in \mathbb{Q}$, mais on ne peut pas relier $f(x)$ à $f(1)$ de la même manière si $x$ est irrationnel.

    En fait, il existe des fonctions $g: \mathbb{R} \to \mathbb{R}$ non-linéaires qui satisfont l'équation de Cauchy. Ces fonctions sont pathologiques : leur graphe est dense dans $\mathbb{R}^2$. L'existence de telles fonctions repose sur l'Axiome du Choix (via l'existence d'une base de Hamel de $\mathbb{R}$ vu comme $\mathbb{Q}$-espace vectoriel).

    **Conditions additionnelles pour $g: \mathbb{R} \to \mathbb{R}$**:

    Si on ajoute des conditions de régularité, on peut forcer la solution à être linéaire. Les conditions suffisantes incluent :

    -   $g$ est **continue** en au moins un point.
    -   $g$ est **monotone** sur un intervalle.
    -   $g$ est **bornée** sur un intervalle.

    Par exemple, si $g$ est continue, alors pour toute suite de rationnels $(q_n)$ qui converge vers un réel $x$, on doit avoir $g(x) = g(\lim q_n) = \lim g(q_n) = \lim (c q_n) = c (\lim q_n) = cx$. La forme linéaire $g(x)=cx$ est donc la seule solution continue.

**Réponse:**

1.  Les solutions de l'équation de Cauchy sur $\mathbb{Q}$ sont les fonctions linéaires $f(x) = cx$, où $c$ est une constante rationnelle.
2.  La preuve ne se généralise pas à $\mathbb{R}$ car elle repose sur la structure des nombres rationnels. Pour garantir que les seules solutions sur $\mathbb{R}$ sont les fonctions linéaires $g(x) = cx$, il faut ajouter une condition de régularité, comme la continuité, la monotonie ou le fait d'être bornée sur un intervalle.

</details>

## Exercise 6: [Preuve Avancée]

**Problème:** Un nombre complexe est dit **algébrique** s'il est racine d'un polynôme non nul à coefficients rationnels. Démontrer que l'ensemble $\mathbb{A}$ de tous les nombres algébriques est dénombrable.

<details>

<summary>Solution</summary>

**Méthode:**

La stratégie consiste à montrer que l'ensemble des nombres algébriques est une union dénombrable d'ensembles finis.

1.  On considère l'ensemble $\mathcal{P}_n$ des polynômes de degré $n$ à coefficients rationnels. On montre que cet ensemble est dénombrable.
2.  On montre que l'ensemble $\mathcal{P}$ de tous les polynômes à coefficients rationnels est une union dénombrable d'ensembles dénombrables, et est donc lui-même dénombrable.
3.  On utilise le fait qu'un polynôme de degré $n$ a au plus $n$ racines.
4.  L'ensemble des nombres algébriques $\mathbb{A}$ est l'union de toutes les racines de tous les polynômes dans $\mathcal{P}$. Ce sera donc une union dénombrable d'ensembles finis, ce qui est dénombrable.

**Étapes:**

1.  **Dénombrabilité de $\mathbb{Q}[X]$**:

    Soit $\mathcal{P}_n$ l'ensemble des polynômes de degré $n$ à coefficients dans $\mathbb{Q}$. Un tel polynôme s'écrit $P(x) = a_n x^n + \dots + a_1 x + a_0$ avec $a_i \in \mathbb{Q}$ et $a_n \neq 0$.

    On peut identifier $P$ avec le $(n+1)$-uplet de ses coefficients $(a_0, a_1, \dots, a_n) \in \mathbb{Q}^{n+1}$.

    Il y a donc une bijection entre $\mathcal{P}_n$ et un sous-ensemble de $\mathbb{Q}^{n+1}$.

    On sait que $\mathbb{Q}$ est dénombrable. Un produit cartésien fini d'ensembles dénombrables est dénombrable. Donc $\mathbb{Q}^{n+1}$ est dénombrable.

    Par conséquent, $\mathcal{P}_n$, étant en bijection avec un sous-ensemble d'un ensemble dénombrable, est lui-même dénombrable.

2.  L'ensemble $\mathcal{P} = \mathbb{Q}[X]$ de tous les polynômes à coefficients rationnels est l'union de tous les $\mathcal{P}_n$ pour $n \in \mathbb{N}$:

    $$ \mathcal{P} = \bigcup_{n=0}^{\infty} \mathcal{P}_n $$

    C'est une union dénombrable d'ensembles dénombrables. Une telle union est dénombrable. Donc $\mathcal{P}$ est dénombrable.

3.  **Enumération des polynômes et de leurs racines**:

    Puisque $\mathcal{P}$ est dénombrable, on peut énumérer tous ses polynômes (non nuls) : $P_1, P_2, P_3, \dots$.

    Pour chaque polynôme $P_k$, soit $R_k$ l'ensemble (fini) de ses racines. Par le théorème fondamental de l'algèbre (cas particulier), un polynôme de degré $n$ a au plus $n$ racines complexes. Donc $|R_k|$ est fini pour tout $k$.

4.  **Conclusion sur l'ensemble $\mathbb{A}$**:

    L'ensemble $\mathbb{A}$ de tous les nombres algébriques est l'union de tous ces ensembles de racines :

    $$ \mathbb{A} = \bigcup_{k=1}^{\infty} R_k $$

    C'est une union dénombrable d'ensembles finis. Une telle union est au plus dénombrable.

    Puisque $\mathbb{A}$ contient $\mathbb{Q}$ (tout $q \in \mathbb{Q}$ est racine de $x-q=0$), $\mathbb{A}$ est infini.

    Par conséquent, l'ensemble des nombres algébriques $\mathbb{A}$ est dénombrable.

**Réponse:**

L'ensemble $\mathbb{A}$ des nombres algébriques est dénombrable. Ceci implique, puisque $\mathbb{C}$ et $\mathbb{R}$ ne sont pas dénombrables, qu'il existe des nombres transcendants (non algébriques) comme $\pi$ et $e$.

</details>

## Exercise 7: [Preuve Complexe]

**Problème:** En utilisant l'axiome de la borne supérieure pour $\mathbb{R}$, démontrer le **Théorème des intervalles emboîtés**.

Soit $(I_n)_{n \in \mathbb{N}}$ une suite d'intervalles fermés et bornés de $\mathbb{R}$, $I_n = [a_n, b_n]$, telle que :

1.  Les intervalles sont emboîtés : $I_{n+1} \subset I_n$ pour tout $n \in \mathbb{N}$.
2.  La longueur des intervalles tend vers zéro : $\lim_{n \to \infty} (b_n - a_n) = 0$.

Démontrer qu'il existe un unique nombre réel $c$ tel que $c \in I_n$ pour tout $n \in \mathbb{N}$, c'est-à-dire $\bigcap_{n=0}^{\infty} I_n = \{c\}$.

<details>

<summary>Solution</summary>

**Méthode:**

Nous allons utiliser l'axiome de la borne supérieure pour définir un candidat pour l'élément commun. La condition d'emboîtement nous donne deux suites monotones et bornées. L'ensemble des bornes inférieures $\{a_n\}$ est non vide et majoré, il admet donc une borne supérieure. Nous allons montrer que cette borne supérieure est l'unique point d'intersection.

**Étapes:**

1.  **Analyse des suites $(a_n)$ et $(b_n)$**:

    La condition d'emboîtement $I_{n+1} \subset I_n$ signifie $[a_{n+1}, b_{n+1}] \subset [a_n, b_n]$.

    Ceci implique $a_n \le a_{n+1}$ et $b_{n+1} \le b_n$ pour tout $n \in \mathbb{N}$.

    La suite $(a_n)_{n \in \mathbb{N}}$ est donc croissante.

    La suite $(b_n)_{n \in \mathbb{N}}$ est décroissante.

    De plus, pour tout $n \in \mathbb{N}$, $a_n \le b_n$.

    En particulier, pour tous $m, n \in \mathbb{N}$, on a $a_m \le b_n$. Pour le voir, si $m \le n$, alors $a_m \le a_n \le b_n$. Si $m > n$, alors $a_m \le b_m \le b_n$.

    Ainsi, la suite $(a_n)$ est majorée (par n'importe quel $b_k$) et la suite $(b_n)$ est minorée (par n'importe quel $a_k$).

2.  **Existence d'un point d'intersection**:

    Considérons l'ensemble $A = \{a_n \mid n \in \mathbb{N}\}$. Cet ensemble est non vide.

    Comme nous l'avons montré, tout $b_k$ est un majorant de $A$. L'ensemble $A$ est donc majoré.

    Par l'axiome de la borne supérieure, $A$ admet une borne supérieure. Posons $c = \sup A$.

3.  **Montrer que $c$ est dans tous les intervalles**:

    Nous devons montrer que $a_k \le c \le b_k$ pour tout $k \in \mathbb{N}$.

    -   Par définition de la borne supérieure, $a_k \le c$ pour tout $k \in \mathbb{N}$.
    -   Montrons que $c \le b_k$ pour tout $k \in \mathbb{N}$.

        Fixons un $k \in \mathbb{N}$. Nous avons vu que $b_k$ est un majorant de l'ensemble $A$.

        Puisque $c$ est le *plus petit* des majorants de $A$, on a nécessairement $c \le b_k$.

    -   Ayant $a_k \le c \le b_k$ pour tout $k$, on conclut que $c \in [a_k, b_k] = I_k$ pour tout $k$.

        L'intersection $\bigcap_{n=0}^{\infty} I_n$ est donc non vide, car elle contient $c$.

4.  **Unicité du point d'intersection**:

    Maintenant, utilisons la deuxième hypothèse : $\lim_{n \to \infty} (b_n - a_n) = 0$.

    Soit $d$ un autre point dans l'intersection. On a donc $a_n \le d \le b_n$ pour tout $n$.

    On a aussi $a_n \le c \le b_n$.

    La distance entre $c$ et $d$ est $|c-d|$.

    Pour tout $n$, $c$ et $d$ appartiennent à l'intervalle $[a_n, b_n]$, donc la distance entre eux ne peut pas excéder la longueur de l'intervalle :

    $$ 0 \le |c-d| \le b_n - a_n $$

    En passant à la limite quand $n \to \infty$ :

    $$ 0 \le |c-d| \le \lim_{n \to \infty} (b_n - a_n) $$

    $$ 0 \le |c-d| \le 0 $$

    Ceci implique que $|c-d| = 0$, et donc $c=d$.

    L'élément $c$ est unique.

**Réponse:**

L'intersection $\bigcap_{n=0}^{\infty} I_n$ contient un unique point $c = \sup\{a_n\}$.

</details>

## Exercise 8: [Application Avancée]

**Problème:** L'ensemble triadique de Cantor $C$ est construit de manière itérative. On part de l'intervalle $[0, 1]$. À la première étape, on enlève le tiers central ouvert, ce qui laisse $[0, 1/3] \cup [2/3, 1]$. On répète ce processus sur chaque intervalle restant. L'ensemble de Cantor est l'ensemble des points qui restent après une infinité d'étapes.

En utilisant la représentation des nombres en base 3, prouver que l'ensemble de Cantor $C$ n'est pas dénombrable.

<details>

<summary>Solution</summary>

**Méthode:**

Nous allons caractériser les éléments de l'ensemble de Cantor par leur développement en base 3. Ensuite, nous construirons une bijection entre l'ensemble de Cantor et un ensemble connu pour être non dénombrable, comme l'intervalle $[0,1]$ ou l'ensemble $\{0,1\}^{\mathbb{N}}$.

**Étapes:**

1.  **Représentation en base 3**:

    Tout nombre $x \in [0, 1]$ peut s'écrire en base 3 sous la forme $x = (0.d_1 d_2 d_3 \dots)_3 = \sum_{k=1}^{\infty} \frac{d_k}{3^k}$, où les chiffres $d_k$ sont dans $\{0, 1, 2\}$.

    (Note : certains nombres, comme $1/3$, ont deux représentations : $1/3 = (0.1000\dots)_3 = (0.0222\dots)_3$).

2.  **Caractérisation de l'ensemble de Cantor en base 3**:
    -   À la première étape, on enlève l'intervalle ouvert $(1/3, 2/3)$.

        Les nombres dans cet intervalle sont ceux dont le développement en base 3 commence *nécessairement* par un 1. C'est-à-dire $x = (0.1d_2d_3\dots)_3$. Les bornes sont $1/3=(0.1)_3=(0.0222\dots)_3$ et $2/3=(0.2)_3$. Les points restants sont ceux qui peuvent être écrits avec un premier chiffre $d_1=0$ ou $d_1=2$.

    -   À la deuxième étape, on enlève le tiers central de $[0, 1/3]$ et de $[2/3, 1]$. Cela correspond à enlever les nombres dont le deuxième chiffre en base 3 est un 1.
    -   Par itération, à l'étape $n$, on enlève les nombres dont le $n$-ième chiffre en base 3 est un 1.
    -   L'ensemble de Cantor $C$ est donc l'ensemble des nombres $x \in [0,1]$ qui admettent une représentation en base 3 ne contenant que les chiffres 0 et 2.

3.  **Construction d'une fonction vers $[0,1]$**:

    Soit $x \in C$. On peut écrire son unique développement en base 3 sans chiffre 1 :

    $x = \sum_{k=1}^{\infty} \frac{d_k}{3^k}$, avec $d_k \in \{0, 2\}$.

    Définissons une fonction $f: C \to [0,1]$ de la manière suivante :

    Pour $x=(0.d_1 d_2 d_3 \dots)_3 \in C$, on définit $f(x)$ comme le nombre dont le développement binaire (base 2) est obtenu en divisant chaque chiffre par 2 :

    $$ f(x) = \sum_{k=1}^{\infty} \frac{d_k/2}{2^k} = (0.(d_1/2)(d_2/2)(d_3/2)\dots)_2 $$

    Puisque $d_k \in \{0, 2\}$, $d_k/2 \in \{0, 1\}$, donc $f(x)$ est un nombre bien défini dans $[0,1]$ en base 2.

4.  **Démonstration de la surjectivité de $f$**:

    Soit $y \in [0,1]$. On peut écrire $y$ en base 2 : $y = (0.b_1 b_2 b_3 \dots)_2$, où $b_k \in \{0, 1\}$.

    Construisons un antécédent $x \in C$. Posons $d_k = 2b_k$. Alors $d_k \in \{0, 2\}$.

    Le nombre $x = (0.d_1 d_2 d_3 \dots)_3$ est bien un élément de l'ensemble de Cantor.

    Par construction, $f(x) = (0.(d_1/2)(d_2/2)\dots)_2 = (0.b_1 b_2 \dots)_2 = y$.

    La fonction $f$ est donc surjective de $C$ sur $[0,1]$.

5.  **Conclusion**:

    Puisqu'il existe une surjection de $C$ sur l'intervalle $[0,1]$, la cardinalité de $C$ doit être au moins aussi grande que celle de $[0,1]$.

    $$ |C| \ge |[0,1]| $$

    On sait que l'intervalle $[0,1]$ n'est pas dénombrable (il a la puissance du continu).

    Par conséquent, l'ensemble de Cantor $C$ n'est pas dénombrable.

**Réponse:**

L'ensemble de Cantor $C$ peut être mis en surjection avec l'intervalle $[0,1]$ via leur représentation en base 3 et 2. Puisque $[0,1]$ n'est pas dénombrable, $C$ ne l'est pas non plus.

</details>

## Exercise 9: [Application Avancée]

**Problème:** Démontrer le théorème de Napoléon en utilisant les nombres complexes.

Soit $ABC$ un triangle quelconque dans le plan euclidien. Sur chaque côté de $ABC$, on construit un triangle équilatéral (tous orientés vers l'extérieur ou tous vers l'intérieur). Soient $P, Q, R$ les centres de ces triangles équilatéraux. Le théorème de Napoléon affirme que le triangle $PQR$ est équilatéral.

<details>

<summary>Solution</summary>

**Méthode:**

Nous allons représenter les sommets du triangle par des nombres complexes $a, b, c$. Les centres des triangles équilatéraux seront exprimés en fonction de $a, b, c$. Pour prouver que $PQR$ est équilatéral, il suffit de montrer que le vecteur $\vec{QP}$ est obtenu en faisant tourner le vecteur $\vec{QR}$ de $\pm \pi/3$ radians, ce qui se traduit en termes de complexes par $p-q = e^{\pm i\pi/3}(r-q)$.

**Étapes:**

1.  **Représentation complexe**:

    Associons les sommets $A, B, C$ aux nombres complexes $a, b, c$.

    Soit $j = e^{i2\pi/3} = -\frac{1}{2} + i\frac{\sqrt{3}}{2}$. C'est une racine cubique de l'unité, et elle vérifie $1+j+j^2=0$ et $j^3=1$. Une rotation de $+2\pi/3$ est une multiplication par $j$. Une rotation de $+\pi/3$ est une multiplication par $-j^2=e^{i\pi/3}$.

2.  **Construction des sommets des triangles équilatéraux**:

    Soit $A'$ le troisième sommet du triangle équilatéral extérieur construit sur le côté $BC$. Le vecteur $\vec{CA'}$ est obtenu en tournant le vecteur $\vec{CB}$ de $+\pi/3$. En complexes, cela signifie que le sommet $a'$ vérifie $a'-c = e^{i\pi/3}(b-c) = -j^2(b-c)$.

    De même, on peut construire les autres sommets, mais nous avons besoin des centres.

3.  **Calcul des centres**:

    Soit $R$ le centre du triangle équilatéral de base $AB$ (et de troisième sommet $C'$). Le vecteur $\vec{AC'}$ est obtenu en tournant $\vec{AB}$ de $+\pi/3$. Donc $c'-a = e^{i\pi/3}(b-a)$.

    Le centre $R$ est l'isobarycentre de $A, B, C'$, donc $r = \frac{1}{3}(a+b+c')$.

    $r = \frac{1}{3}(a+b + a + e^{i\pi/3}(b-a)) = \frac{1}{3}(a(2-e^{i\pi/3}) + b(1+e^{i\pi/3}))$.

    En utilisant $e^{i\pi/3} = 1+j$, on a $r = \frac{1}{3}(a(1-j) + b(2+j))$.

    De même, pour le centre $Q$ du triangle sur $BC$: $q = \frac{1}{3}(b(1-j) + c(2+j))$.

    Et pour le centre $P$ du triangle sur $CA$: $p = \frac{1}{3}(c(1-j) + a(2+j))$.

4.  **Vérification de l'équilatéralité de PQR**:

    Nous allons vérifier la condition $p-q - e^{i\pi/3}(r-q) = 0$.

    $3(p-q) = c(1-j)+a(2+j) - b(1-j)-c(2+j) = a(2+j) - b(1-j) - c(1+j)$.

    $3(r-q) = a(1-j)+b(2+j) - b(1-j)-c(2+j) = a(1-j) + b(1+2j) - c(2+j)$.

    Calculons $3(p-q) - e^{i\pi/3} \cdot 3(r-q)$:

    $a(2+j) - b(1-j) - c(1+j) - (1+j)[a(1-j) + b(1+2j) - c(2+j)]$.

    Développons le deuxième terme :

    $(1+j)a(1-j) = a(1-j^2) = a(1 - (-1-j)) = a(2+j)$.

    $(1+j)b(1+2j) = b(1+3j+2j^2) = b(1+3j+2(-1-j)) = b(-1+j)$.

    $(1+j)c(-2-j) = c(-2-3j-j^2) = c(-2-3j-(-1-j)) = c(-1-2j)$.

    L'expression complète est donc :

    $[a(2+j) - b(1-j) - c(1+j)] - [a(2+j) + b(-1+j) - c(1+2j)]$.

    $= a(2+j - (2+j)) - b(1-j - (-1+j)) - c(1+j - (1+2j))$

    $= a(0) - b(2-2j) - c(-j) = -2b(1-j) + cj$.

    Il semble y avoir une erreur de calcul.

    **Reprenons le calcul plus simplement.**

    On a $a-r = j(b-r)$ et $b-r = j(c'-r)$ n'est pas vrai.

    Un triangle $ABC$ est équilatéral direct si et seulement si $a+jb+j^2c=0$.

    Pour le centre $R$ du triangle sur $AB$, on a $a,b,c'$ sommets. Donc $a+jc'+j^2b=0$. D'où $c'=-ja-j^2b$.

    $r = \frac{a+b+c'}{3} = \frac{a+b-ja-j^2b}{3} = \frac{a(1-j)+b(1-j^2)}{3}$.

    De même :

    $q = \frac{b(1-j)+c(1-j^2)}{3}$.

    $p = \frac{c(1-j)+a(1-j^2)}{3}$.

    Vérifions si $PQR$ est équilatéral direct, i.e., $p+jq+j^2r=0$.

    $3(p+jq+j^2r) = [c(1-j)+a(1-j^2)] + j[b(1-j)+c(1-j^2)] + j^2[a(1-j)+b(1-j^2)]$.

    Regroupons les termes en $a, b, c$:

    $a: (1-j^2) + j^2(1-j) = 1-j^2+j^2-j^3 = 1-1 = 0$.

    $b: j(1-j) + j^2(1-j^2) = j-j^2+j^2-j^4 = j-j = 0$.

    $c: (1-j) + j(1-j^2) = 1-j+j-j^3 = 1-1=0$.

    L'expression est bien nulle. Donc $p+jq+j^2r=0$, ce qui prouve que le triangle $PQR$ est équilatéral et direct.

**Réponse:**

En représentant les sommets par des nombres complexes $a, b, c$ et en utilisant la condition d'équilatéralité $z_1 + j z_2 + j^2 z_3 = 0$ (où $j=e^{i2\pi/3}$), on exprime les coordonnées des centres $p, q, r$ en fonction de $a, b, c$. On montre alors que $p, q, r$ satisfont la condition $p+jq+j^2r=0$, ce qui prouve que le triangle $PQR$ est équilatéral.

</details>

## Exercise 10: [Investigation Théorique]

**Problème:** Démontrer une version simplifiée du Théorème de Liouville.

Soit $P(z)$ un polynôme à coefficients complexes. Si $P(z)$ est borné sur $\mathbb{C}$, c'est-à-dire s'il existe une constante $M \in \mathbb{R}$ telle que $|P(z)| \le M$ pour tout $z \in \mathbb{C}$, alors $P(z)$ doit être un polynôme constant.

*Indice :* Utiliser les Inégalités de Cauchy. Pour un polynôme $P(z) = \sum_{k=0}^n a_k z^k$, les coefficients peuvent être calculés par l'intégrale de Cauchy : $a_k = \frac{1}{2\pi i} \oint_{|z|=R} \frac{P(z)}{z^{k+1}} dz$. On admettra la majoration suivante qui en découle : $|a_k| \le \frac{M_R}{R^k}$, où $M_R = \max_{|z|=R} |P(z)|$.

<details>

<summary>Solution</summary>

**Méthode:**

Nous allons utiliser les inégalités de Cauchy données en indice pour montrer que tous les coefficients des termes de degré non nul du polynôme sont nuls. Si $P(z)$ est borné sur $\mathbb{C}$ par $M$, alors il est aussi borné par $M$ sur tout cercle centré à l'origine. Nous utiliserons cette information dans l'inégalité et ferons tendre le rayon du cercle vers l'infini.

**Étapes:**

1.  **Mise en place**:

    Soit $P(z) = a_n z^n + a_{n-1} z^{n-1} + \dots + a_1 z + a_0$ un polynôme à coefficients complexes.

    On suppose qu'il existe $M > 0$ tel que $|P(z)| \le M$ pour tout $z \in \mathbb{C}$.

2.  **Application des inégalités de Cauchy**:

    Les inégalités de Cauchy nous disent que pour tout $k \in \{0, 1, \dots, n\}$ et pour tout rayon $R > 0$ :

    $$ |a_k| \le \frac{\max_{|z|=R} |P(z)|}{R^k} $$

    Puisque $|P(z)| \le M$ pour tout $z \in \mathbb{C}$, on a en particulier $\max_{|z|=R} |P(z)| \le M$.

    L'inégalité devient donc :

    $$ |a_k| \le \frac{M}{R^k} $$

    Cette inégalité est valable pour n'importe quel $R > 0$.

3.  **Analyse des coefficients pour $k \ge 1$**:

    Considérons un coefficient $a_k$ avec $k \ge 1$.

    Nous avons l'inégalité $|a_k| \le \frac{M}{R^k}$.

    Le membre de droite dépend de $R$. Nous pouvons choisir $R$ aussi grand que nous le souhaitons.

    Faisons tendre $R$ vers l'infini :

    $$ \lim_{R \to \infty} \frac{M}{R^k} $$

    Puisque $k \ge 1$, $R^k \to \infty$, et donc la limite est 0.

    On a donc :

    $$ |a_k| \le 0 $$

    Comme le module d'un nombre complexe est toujours non-négatif, la seule possibilité est $|a_k|=0$, ce qui implique $a_k = 0$.

    Ce raisonnement est valable pour tout $k \in \{1, 2, \dots, n\}$.

4.  **Conclusion**:

    Nous avons montré que $a_1 = a_2 = \dots = a_n = 0$.

    Le polynôme $P(z)$ se réduit donc à son terme constant :

    $$ P(z) = a_0 $$

    Le polynôme est constant.

**Réponse:**

Si un polynôme $P(z)$ est borné sur $\mathbb{C}$, alors en appliquant les inégalités de Cauchy $|a_k| \le \frac{M}{R^k}$ et en faisant tendre le rayon $R$ vers l'infini, on montre que tous les coefficients $a_k$ pour $k \ge 1$ sont nécessairement nuls. Le polynôme se réduit donc à son terme constant $a_0$.

</details>
