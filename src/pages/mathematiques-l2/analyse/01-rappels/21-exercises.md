---
id: 2e0cef6b
type: exercises
order: 21
title: Rappels de logique et suites numériques - exercices (B)
tags:
  - logique
  - suites numériques
  - analyse
  - mathématiques
createdAt: '2025-10-12T14:33:12.503Z'
level: pro
course: Analyse
courseId: 99c39a0d
chapter: Rappels de logique et suites numériques
chapterId: 684d8511
---
# Exercices "Rappels de logique et suites numériques" (B)

## Exercise 1: [Investigation Théorique]

**Problème:** Soit $A \subseteq \mathbb{R}$ un ensemble non vide. On considère les deux propositions suivantes :

(P1) $\forall \epsilon > 0, \exists a \in A, \forall x \in A, |x-a| < \epsilon$

(P2) $\exists a \in A, \forall \epsilon > 0, \forall x \in A, |x-a| < \epsilon$

1.  Traduire en langage courant la signification de chaque proposition.
2.  Démontrer que (P2) $\Rightarrow$ (P1).
3.  La réciproque est-elle vraie ? Fournir une démonstration ou un contre-exemple.
4.  Que peut-on dire d'un ensemble $A$ qui vérifie la proposition (P2) ?

<details>

<summary>Solution</summary>

**Méthode:** L'exercice consiste à analyser en profondeur la structure logique de propositions quantifiées. Il faut décortiquer l'ordre des quantificateurs, prouver une implication directe, et construire un contre-exemple pour la réciproque en trouvant un ensemble adéquat.

**Étapes:**

1.  **Signification des propositions :**
    *   (P1) $\forall \epsilon > 0, \exists a \in A, \forall x \in A, |x-a| < \epsilon$.

        Cette proposition signifie que pour n'importe quelle "marge d'erreur" $\epsilon > 0$ choisie, on peut trouver un élément $a$ dans $A$ tel que tous les autres éléments de $A$ sont à une distance de $a$ inférieure à $\epsilon$. Autrement dit, pour tout $\epsilon > 0$, l'ensemble $A$ peut être contenu dans une boule ouverte de rayon $\epsilon$ centrée en un de ses propres points. Attention, le point $a$ peut dépendre de $\epsilon$.

    *   (P2) $\exists a \in A, \forall \epsilon > 0, \forall x \in A, |x-a| < \epsilon$.

        Cette proposition affirme qu'il existe un élément $a$ dans $A$ (fixé une fois pour toutes) tel que pour toute "marge d'erreur" $\epsilon > 0$, tous les éléments de $A$ sont à une distance de $a$ inférieure à $\epsilon$.

2.  **Démonstration de (P2) $\Rightarrow$ (P1) :**
    *   Supposons que (P2) est vraie. Il existe donc un élément $a_0 \in A$ tel que $\forall \epsilon > 0, \forall x \in A, |x-a_0| < \epsilon$.
    *   Montrons (P1). Soit $\epsilon > 0$ un réel quelconque. Nous devons trouver un élément $a \in A$ qui satisfait la condition.
    *   Posons $a = a_0$. Par hypothèse sur $a_0$, on a bien $\forall x \in A, |x-a_0| < \epsilon$.
    *   Donc, pour tout $\epsilon > 0$, il existe bien un $a \in A$ (en l'occurrence, toujours le même $a_0$) tel que $\forall x \in A, |x-a| < \epsilon$.
    *   Ainsi, (P1) est vraie.

3.  **Analyse de la réciproque (P1) $\Rightarrow$ (P2) :**
    *   La réciproque est fausse. L'inversion des quantificateurs $\forall \epsilon$ et $\exists a$ change fondamentalement le sens.
    *   **Contre-exemple :** Soit $A = (0, 1)$.
    *   Montrons que $A$ vérifie (P1). Soit $\epsilon > 0$. On cherche $a \in (0,1)$ tel que $\forall x \in (0,1), |x-a| < \epsilon$.

        Si $\epsilon \ge 1$, on peut choisir $a=1/2$. Alors pour tout $x \in (0,1)$, $|x-1/2| < 1/2 < 1 \le \epsilon$.

        Si $0 < \epsilon < 1$, choisissons $a = \epsilon/2$. Comme $\epsilon < 1$, on a bien $a \in (0,1)$. Alors pour tout $x \in (0,1)$, on a $|x-a| = |x - \epsilon/2|$.

        Cependant, cette condition n'est pas vérifiée. L'ensemble $(0,1)$ a un diamètre de 1. Il ne peut pas être contenu dans une boule de rayon $\epsilon < 1$.

        Reconsidérons l'interprétation. $\forall x \in A, x \in B(a, \epsilon)$. Donc $A \subseteq B(a, \epsilon)$. Le diamètre de $A$ doit être inférieur à $2\epsilon$.

        L'ensemble $A=(0,1)$ a un diamètre de 1. Pour que (P1) soit vraie, il faudrait que pour tout $\epsilon > 0$, $1 < 2\epsilon$, ce qui est faux pour $\epsilon=1/4$.

    *   **Meilleur contre-exemple :** Soit $A = \{1/n \mid n \in \mathbb{N}^*\}$. Cet ensemble est borné.

        Montrons que (P1) est vérifiée. Soit $\epsilon > 0$. Par convergence de $1/n$ vers 0, on sait qu'il existe $N \in \mathbb{N}^*$ tel que pour tout $n \ge N$, $1/n < \epsilon/2$.

        Choisissons $a = 1/N \in A$. Pour tout $x \in A$, $x = 1/k$ pour un $k \in \mathbb{N}^*$.

        Si $k \ge N$, alors $|x-a| = |1/k - 1/N| \le \max(1/k, 1/N) = 1/N < \epsilon/2 < \epsilon$.

        Ce n'est pas assez. Il faut que *tous* les $x$ soient proches.

        La proposition (P1) signifie que l'ensemble $A$ est "arbitrairement petit" au sens où son diamètre peut être rendu aussi petit que l'on veut... ce qui n'est pas le cas pour les ensembles proposés.

    *   **Réinterprétation correcte :** La proposition (P1) est fausse pour tout ensemble $A$ ayant au moins deux points distincts. Soient $x_1, x_2 \in A$ avec $x_1 \neq x_2$. Posons $\epsilon = |x_1 - x_2|/3 > 0$. Pour n'importe quel $a \in A$, on ne peut avoir simultanément $|x_1-a| < \epsilon$ et $|x_2-a| < \epsilon$, car sinon $|x_1-x_2| \le |x_1-a| + |a-x_2| < 2\epsilon = 2|x_1-x_2|/3$, ce qui est une contradiction.
    *   Par conséquent, (P1) ne peut être vraie que si $A$ est un singleton.

4.  **Analyse de (P2) :**
    *   La proposition (P2) affirme : $\exists a \in A$ tel que $\forall \epsilon > 0, \forall x \in A, |x-a| < \epsilon$.
    *   La condition $\forall \epsilon > 0, |x-a| < \epsilon$ implique que $|x-a|=0$, soit $x=a$.
    *   Donc, (P2) signifie : il existe un $a \in A$ tel que pour tout $x \in A$, $x=a$.
    *   Ceci signifie que l'ensemble $A$ ne contient qu'un seul élément, $a$. C'est un **singleton**.
    *   Si $A$ est un singleton, disons $A=\{c\}$, alors (P1) est aussi vraie. On choisit $\epsilon > 0$, on prend $a=c \in A$. Alors pour tout $x \in A$, $x=c$ donc $|x-a|=|c-c|=0 < \epsilon$.
    *   Conclusion : (P1) et (P2) ne sont vraies que si $A$ est un singleton. Dans ce cas, elles sont équivalentes. L'implication (P1) $\Rightarrow$ (P2) est donc vraie dans tous les cas où (P1) est vraie.

**Réponse:**

1.  (P1) : Pour toute distance $\epsilon > 0$, il existe un point $a$ dans $A$ tel que l'ensemble $A$ tout entier est contenu dans l'intervalle $]a-\epsilon, a+\epsilon[$.

    (P2) : Il existe un point $a$ dans $A$ tel que pour toute distance $\epsilon > 0$, l'ensemble $A$ tout entier est contenu dans l'intervalle $]a-\epsilon, a+\epsilon[$.

2.  La démonstration est directe comme montré dans les étapes.
3.  La réciproque est trivialement vraie car la seule façon pour (P1) d'être vraie est que $A$ soit un singleton, cas dans lequel (P2) est également vraie.
4.  Un ensemble $A$ vérifiant (P2) est un **singleton**. La condition $\forall \epsilon > 0, |x-a| < \epsilon$ implique que $x=a$. Donc $\forall x \in A, x=a$, ce qui signifie $A=\{a\}$.

    Finalement, $P1 \Leftrightarrow P2 \Leftrightarrow (A \text{ est un singleton})$.

</details>

## Exercise 2: [Preuve Complexe]

**Problème:** Soit la suite de Fibonacci généralisée $(u_n)_{n \in \mathbb{N}}$ définie par $u_0 = 3$, $u_1 = 4$ et la relation de récurrence $u_{n+2} = u_{n+1} + u_n$ pour $n \ge 0$. Démontrer par récurrence forte que pour tout $n \ge 2$, on a $u_n > (\frac{3}{2})^n$.

<details>

<summary>Solution</summary>

**Méthode:** On utilise le principe de récurrence forte. L'hypothèse de récurrence portera sur tous les rangs jusqu'à $n+1$ pour prouver la propriété au rang $n+2$. Le choix de la constante $(3/2)$ est crucial et lié aux racines de l'équation caractéristique $x^2-x-1=0$.

**Étapes:**

1.  **Proposition à démontrer :** Soit $P(n)$ la proposition : "$u_n > (3/2)^n$". Nous voulons montrer que $P(n)$ est vraie pour tout $n \ge 2$.

2.  **Initialisation :** Nous devons vérifier la proposition pour les premiers rangs, ici $n=2$ et $n=3$, car la récurrence est d'ordre 2.
    *   Pour $n=2$ : $u_2 = u_1 + u_0 = 4 + 3 = 7$. On doit vérifier si $7 > (3/2)^2 = 9/4 = 2.25$. C'est vrai.
    *   Pour $n=3$ : $u_3 = u_2 + u_1 = 7 + 4 = 11$. On doit vérifier si $11 > (3/2)^3 = 27/8 = 3.375$. C'est vrai.

    L'initialisation est vérifiée.

3.  **Hérédité :** Soit $k \ge 3$ un entier fixé. On suppose que $P(j)$ est vraie pour tous les entiers $j$ tels que $2 \le j \le k$. C'est l'hypothèse de récurrence forte.

    Hypothèse de récurrence : $\forall j \in \{2, \dots, k\}, u_j > (3/2)^j$.

    On veut montrer que $P(k+1)$ est vraie, c'est-à-dire $u_{k+1} > (3/2)^{k+1}$.

4.  **Démonstration :** Par définition de la suite, $u_{k+1} = u_k + u_{k-1}$.

    Puisque $k \ge 3$, on a $k \ge 3$ et $k-1 \ge 2$. Les rangs $k$ et $k-1$ sont donc dans le domaine de validité de l'hypothèse de récurrence.

    On peut donc appliquer l'hypothèse :

    $u_k > (3/2)^k$

    $u_{k-1} > (3/2)^{k-1}$

    En sommant ces deux inégalités :

    $u_{k+1} = u_k + u_{k-1} > (3/2)^k + (3/2)^{k-1}$

    Factorisons le terme de droite :

    $(3/2)^k + (3/2)^{k-1} = (3/2)^{k-1} \left( \frac{3}{2} + 1 \right) = (3/2)^{k-1} \left( \frac{5}{2} \right)$.

    On a donc $u_{k+1} > (3/2)^{k-1} (5/2)$.

    Pour conclure, nous devons comparer $(3/2)^{k-1} (5/2)$ avec $(3/2)^{k+1}$.

    $(3/2)^{k+1} = (3/2)^{k-1} \cdot (3/2)^2 = (3/2)^{k-1} \cdot (9/4)$.

    On a $5/2 = 10/4$ et $9/4$. Puisque $10/4 > 9/4$, on a $(5/2) > (9/4)$.

    Donc, $(3/2)^{k-1} (5/2) > (3/2)^{k-1} (9/4) = (3/2)^{k+1}$.

    En combinant les inégalités, on obtient :

    $u_{k+1} > (3/2)^{k-1} (5/2) > (3/2)^{k+1}$.

    Ceci prouve $P(k+1)$.

5.  **Conclusion :** Par le principe de récurrence forte, la proposition $P(n)$ est vraie pour tout $n \ge 2$.

**Réponse:** La démonstration par récurrence forte, avec une initialisation aux rangs $n=2$ et $n=3$ et une étape d'hérédité montrant que si la propriété est vraie jusqu'au rang $k \ge 3$, elle l'est au rang $k+1$, permet de conclure que $\forall n \ge 2, u_n > (\frac{3}{2})^n$.

</details>

## Exercise 3: [Application Avancée]

**Problème:** Soient $(u_n)_{n \in \mathbb{N}}$ et $(v_n)_{n \in \mathbb{N}}$ deux suites réelles. On suppose que $(v_n)$ est strictement croissante et que $\lim_{n \to \infty} v_n = +\infty$. On suppose de plus que la limite suivante existe : $\lim_{n \to \infty} \frac{u_{n+1}-u_n}{v_{n+1}-v_n} = l \in \mathbb{R}$.

1.  Démontrer le théorème de Stolz-Cesàro : $\lim_{n \to \infty} \frac{u_n}{v_n} = l$.
2.  En utilisant ce théorème, calculer la limite de la suite $S_n = \frac{1}{n\sqrt{n}} \sum_{k=1}^n \sqrt{k}$.

<details>

<summary>Solution</summary>

**Méthode:**

1. Pour la preuve du théorème, on se ramène à la définition de la limite. Pour un $\epsilon > 0$ donné, on isole les premiers termes de la somme et on contrôle le reste.
2. Pour l'application, on identifie les suites $(u_n)$ et $(v_n)$ appropriées pour appliquer le théorème.

**Étapes:**

1.  **Démonstration du théorème de Stolz-Cesàro :**

    Soit $\epsilon > 0$. Par hypothèse, $\lim_{n \to \infty} \frac{u_{n+1}-u_n}{v_{n+1}-v_n} = l$.

    Il existe donc un rang $N \in \mathbb{N}$ tel que pour tout $k \ge N$, on a :

    $l - \epsilon < \frac{u_{k+1}-u_k}{v_{k+1}-v_k} < l + \epsilon$.

    Comme $v_{k+1} - v_k > 0$ (car $(v_n)$ est strictement croissante), on peut multiplier par cette quantité :

    $(l - \epsilon)(v_{k+1}-v_k) < u_{k+1}-u_k < (l + \epsilon)(v_{k+1}-v_k)$.

    Soit $n > N$. Sommons ces inégalités pour $k$ allant de $N$ à $n-1$ :

    $\sum_{k=N}^{n-1} (l - \epsilon)(v_{k+1}-v_k) < \sum_{k=N}^{n-1} (u_{k+1}-u_k) < \sum_{k=N}^{n-1} (l + \epsilon)(v_{k+1}-v_k)$.

    Les sommes sont télescopiques :

    $(l - \epsilon)(v_n - v_N) < u_n - u_N < (l + \epsilon)(v_n - v_N)$.

    On peut réarranger pour isoler $u_n$ :

    $u_N + (l - \epsilon)(v_n - v_N) < u_n < u_N + (l + \epsilon)(v_n - v_N)$.

    Divisons par $v_n$ (qui est positif pour $n$ assez grand car $v_n \to +\infty$) :

    $\frac{u_N}{v_n} + (l - \epsilon)\left(1 - \frac{v_N}{v_n}\right) < \frac{u_n}{v_n} < \frac{u_N}{v_n} + (l + \epsilon)\left(1 - \frac{v_N}{v_n}\right)$.

    Lorsque $n \to \infty$, on a $v_n \to +\infty$. Donc $\frac{u_N}{v_n} \to 0$ et $\frac{v_N}{v_n} \to 0$.

    Le terme de gauche tend vers $l - \epsilon$. Le terme de droite tend vers $l + \epsilon$.

    Formellement, il existe $N' \ge N$ tel que pour tout $n \ge N'$, le terme de gauche est plus grand que $l - 2\epsilon$ et le terme de droite est plus petit que $l + 2\epsilon$.

    Donc, pour $n$ suffisamment grand, on a $l - 2\epsilon < \frac{u_n}{v_n} < l + 2\epsilon$, ce qui est la définition de $\lim_{n \to \infty} \frac{u_n}{v_n} = l$.

2.  **Application au calcul de limite :**

    On veut calculer $\lim_{n \to \infty} S_n = \lim_{n \to \infty} \frac{\sum_{k=1}^n \sqrt{k}}{n\sqrt{n}}$.

    Posons $u_n = \sum_{k=1}^n \sqrt{k}$ et $v_n = n\sqrt{n} = n^{3/2}$.

    *   La suite $(v_n)$ est strictement croissante : $v_{n+1} - v_n = (n+1)^{3/2} - n^{3/2} > 0$.
    *   $\lim_{n \to \infty} v_n = +\infty$.

    Les conditions du théorème de Stolz-Cesàro sont remplies. On calcule la limite du quotient des différences :

    $\lim_{n \to \infty} \frac{u_{n+1}-u_n}{v_{n+1}-v_n} = \lim_{n \to \infty} \frac{\sqrt{n+1}}{(n+1)\sqrt{n+1} - n\sqrt{n}}$.

    Calculons un équivalent du dénominateur :

    $(n+1)^{3/2} - n^{3/2} = n^{3/2} \left( \left(1+\frac{1}{n}\right)^{3/2} - 1 \right)$.

    On utilise le développement limité $(1+x)^\alpha \approx 1+\alpha x$ pour $x \to 0$.

    $\left(1+\frac{1}{n}\right)^{3/2} - 1 \approx \frac{3}{2n}$.

    Donc, $(n+1)^{3/2} - n^{3/2} \sim n^{3/2} \cdot \frac{3}{2n} = \frac{3}{2} n^{1/2} = \frac{3}{2}\sqrt{n}$.

    Le numérateur est $\sqrt{n+1} \sim \sqrt{n}$.

    La limite du quotient est donc :

    $\lim_{n \to \infty} \frac{\sqrt{n+1}}{\frac{3}{2}\sqrt{n}} = \lim_{n \to \infty} \frac{2}{3} \sqrt{\frac{n+1}{n}} = \frac{2}{3} \cdot 1 = \frac{2}{3}$.

    Par le théorème de Stolz-Cesàro, la limite de $S_n$ est la même.

**Réponse:**

1.  La démonstration est effectuée ci-dessus. Le théorème de Stolz-Cesàro est prouvé.
2.  La limite de la suite est $\frac{2}{3}$.

    $\lim_{n \to \infty} \frac{1}{n\sqrt{n}} \sum_{k=1}^n \sqrt{k} = \frac{2}{3}$

</details>

## Exercise 4: [Investigation Théorique]

**Problème:** Soient $(u_n)$ et $(v_n)$ deux suites de réels strictement positifs telles que $u_n \sim v_n$.

1.  Démontrer que si $\lim_{n \to \infty} v_n = l \in \mathbb{R}^*_+ \cup \{+\infty\}$, alors $\ln(u_n) \sim \ln(v_n)$.
2.  Fournir un contre-exemple dans le cas où $\lim_{n \to \infty} v_n = 1$.
3.  La proposition $u_n \sim v_n \Rightarrow e^{u_n} \sim e^{v_n}$ est-elle vraie en général ? Justifier par une preuve ou un contre-exemple.

<details>

<summary>Solution</summary>

**Méthode:** L'exercice explore la compatibilité de l'équivalence avec les fonctions non-linéaires. Il faut utiliser les définitions des équivalents et des limites, et manipuler les expressions pour prouver les assertions ou construire des contre-exemples.

**Étapes:**

1.  **Cas du logarithme :**

    On suppose $u_n \sim v_n$, ce qui signifie $\frac{u_n}{v_n} \to 1$. On peut écrire $u_n = v_n \epsilon_n$ avec $\epsilon_n \to 1$.

    On veut montrer $\ln(u_n) \sim \ln(v_n)$, c'est-à-dire $\frac{\ln(u_n)}{\ln(v_n)} \to 1$.

    $\frac{\ln(u_n)}{\ln(v_n)} = \frac{\ln(v_n \epsilon_n)}{\ln(v_n)} = \frac{\ln(v_n) + \ln(\epsilon_n)}{\ln(v_n)} = 1 + \frac{\ln(\epsilon_n)}{\ln(v_n)}$.

    Pour que le rapport tende vers 1, il faut et il suffit que $\frac{\ln(\epsilon_n)}{\ln(v_n)} \to 0$.

    Puisque $\epsilon_n \to 1$, on a $\ln(\epsilon_n) \to \ln(1) = 0$.

    Par hypothèse, $\lim v_n = l \in \mathbb{R}^*_+ \cup \{+\infty\}$.

    *   Si $l \in \mathbb{R}^*_+$ et $l \neq 1$, alors $\ln(v_n) \to \ln(l) \neq 0$. Le quotient $\frac{\ln(\epsilon_n)}{\ln(v_n)} \to \frac{0}{\ln(l)} = 0$.
    *   Si $l=+\infty$, alors $\ln(v_n) \to +\infty$. Le quotient $\frac{\ln(\epsilon_n)}{\ln(v_n)} \to 0$.

    Dans les deux cas, la condition est vérifiée.

    La condition $\lim v_n \neq 1$ est cruciale pour que le dénominateur $\ln(v_n)$ ne tende pas vers 0.

2.  **Contre-exemple pour $l=1$ :**

    Soit $v_n = 1 + \frac{1}{n}$. On a bien $\lim v_n = 1$.

    Soit $u_n = 1 + \frac{1}{n^2}$. On a $u_n \sim v_n$ car $\frac{u_n}{v_n} = \frac{1+1/n^2}{1+1/n} \to 1$.

    Calculons le rapport des logarithmes. On utilise $\ln(1+x) \sim x$ pour $x \to 0$.

    $\ln(u_n) = \ln(1+1/n^2) \sim 1/n^2$.

    $\ln(v_n) = \ln(1+1/n) \sim 1/n$.

    Le rapport est $\frac{\ln(u_n)}{\ln(v_n)} \sim \frac{1/n^2}{1/n} = \frac{1}{n} \to 0$.

    La limite n'est pas 1, donc $\ln(u_n) \nsim \ln(v_n)$.

3.  **Cas de l'exponentielle :**

    La proposition $u_n \sim v_n \Rightarrow e^{u_n} \sim e^{v_n}$ est fausse.

    Pour que $e^{u_n} \sim e^{v_n}$, il faut que $\frac{e^{u_n}}{e^{v_n}} = e^{u_n-v_n} \to 1$.

    Ceci est équivalent à $u_n - v_n \to 0$.

    Or, $u_n \sim v_n$ signifie $u_n - v_n = o(v_n)$. Cela n'implique pas que $u_n-v_n \to 0$.

    **Contre-exemple :**

    Soit $v_n = n$ et $u_n = n+1$.

    On a bien $u_n \sim v_n$ car $\frac{n+1}{n} = 1+\frac{1}{n} \to 1$.

    Cependant, $u_n - v_n = 1$.

    Alors $e^{u_n-v_n} = e^1 = e \neq 1$.

    Donc $e^{u_n} \nsim e^{v_n}$.

**Réponse:**

1.  La démonstration est fournie ci-dessus, conditionnelle à $\lim v_n \neq 1$.
2.  Un contre-exemple est $v_n = 1 + 1/n$ et $u_n = 1 + 1/n^2$.
3.  La proposition est fausse. La condition $u_n \sim v_n$ n'est pas suffisante. Il faut la condition plus forte $\lim_{n \to \infty} (u_n-v_n) = 0$. Par exemple, pour $u_n = n+1$ et $v_n=n$, on a $u_n \sim v_n$ mais $e^{u_n} / e^{v_n} \to e \neq 1$.

</details>

## Exercise 5: [Preuve Complexe]

**Problème:** Soit la suite $(x_n)_{n \ge 1}$ définie par $x_1 > 0$ et $x_{n+1} = x_n + \frac{1}{x_n}$.

1.  Montrer que la suite est croissante et diverge vers $+\infty$.
2.  Montrer que $x_{n+1}^2 - x_n^2$ converge vers 2.
3.  En appliquant le lemme de Cesàro à la suite des différences $(x_{k+1}^2 - x_k^2)$, en déduire que $x_n^2 \sim 2n$.
4.  En déduire un équivalent simple de $x_n$.

<details>

<summary>Solution</summary>

**Méthode:** L'étude de cette suite non-linéaire se fait par étapes. D'abord, on établit la monotonie et la divergence. Ensuite, on étudie une suite auxiliaire, ici $(x_n^2)$, dont les accroissements sont plus simples. Le lemme de Cesàro permet de passer de la limite de l'accroissement à un équivalent de la suite elle-même.

**Étapes:**

1.  **Monotonie et divergence :**

    Comme $x_1 > 0$, par une récurrence immédiate, $x_n > 0$ pour tout $n \ge 1$.

    $x_{n+1} - x_n = \frac{1}{x_n}$. Puisque $x_n > 0$, on a $x_{n+1} - x_n > 0$.

    La suite $(x_n)$ est donc strictement croissante.

    Si la suite était convergente vers une limite $l$, alors $l$ serait strictement positive (car $x_1>0$ et la suite croît) et vérifierait l'équation du point fixe : $l = l + \frac{1}{l}$.

    Ceci mène à $\frac{1}{l} = 0$, ce qui est impossible.

    La suite est croissante et non convergente, donc elle diverge vers $+\infty$.

2.  **Limite de $x_{n+1}^2 - x_n^2$ :**

    $x_{n+1}^2 - x_n^2 = (x_{n+1}-x_n)(x_{n+1}+x_n) = \frac{1}{x_n} \left( \left(x_n + \frac{1}{x_n}\right) + x_n \right)$.

    $x_{n+1}^2 - x_n^2 = \frac{1}{x_n} \left( 2x_n + \frac{1}{x_n} \right) = 2 + \frac{1}{x_n^2}$.

    Comme $x_n \to +\infty$, on a $x_n^2 \to +\infty$, et donc $\frac{1}{x_n^2} \to 0$.

    Ainsi, $\lim_{n \to \infty} (x_{n+1}^2 - x_n^2) = 2$.

3.  **Application de Cesàro :**

    Soit la suite $(y_n)_{n \ge 1}$ définie par $y_n = x_n^2$.

    On vient de montrer que la suite des accroissements $y_{n+1} - y_n$ converge vers 2.

    Le théorème de Cesàro stipule que si une suite $(a_k)$ converge vers $l$, alors sa moyenne arithmétique $C_n = \frac{1}{n}\sum_{k=1}^n a_k$ converge aussi vers $l$.

    Appliquons-le à la suite $a_k = y_{k} - y_{k-1}$ pour $k \ge 2$. On a $\lim_{k\to\infty} a_k = 2$.

    La moyenne de Cesàro est :

    $\frac{1}{n-1}\sum_{k=2}^{n} (y_k - y_{k-1}) = \frac{1}{n-1} (y_n - y_1)$ (par télescopage).

    D'après Cesàro, $\lim_{n \to \infty} \frac{y_n - y_1}{n-1} = 2$.

    C'est-à-dire $\lim_{n \to \infty} \frac{x_n^2 - x_1^2}{n-1} = 2$.

    Puisque $x_1^2$ est une constante et $n-1 \sim n$, on a $\lim_{n \to \infty} \frac{x_n^2}{n} = 2$.

    Ceci est la définition de $x_n^2 \sim 2n$.

4.  **Équivalent de $x_n$ :**

    De $x_n^2 \sim 2n$, on tire $x_n \sim \sqrt{2n}$ (car $x_n > 0$).

**Réponse:**

1.  La suite $(x_n)$ est strictement croissante et diverge vers $+\infty$.
2.  $\lim_{n \to \infty} (x_{n+1}^2 - x_n^2) = 2$.
3.  Par le théorème de Cesàro, on en déduit que $\lim_{n \to \infty} \frac{x_n^2}{n} = 2$, ce qui signifie $x_n^2 \sim 2n$.
4.  Un équivalent simple de la suite est $x_n \sim \sqrt{2n}$.

</details>

## Exercise 6: [Investigation Théorique]

**Problème:** On définit la suite $(u_n)_{n \ge 1}$ par $u_n = \sum_{k=0}^n \frac{1}{k!}$.

1.  Montrer que $(u_n)$ est une suite de nombres rationnels.
2.  Montrer que $(u_n)$ est une suite de Cauchy, et donc qu'elle converge dans $\mathbb{R}$. On note $e$ sa limite.
3.  Démontrer par l'absurde que $e$ est irrationnel. (Indice : Supposer $e=p/q$ avec $p, q \in \mathbb{N}^*$. Choisir un $n$ judicieux, par exemple $n=q$, et étudier la quantité $(u_q - e)$).

<details>

<summary>Solution</summary>

**Méthode:** Cet exercice classique illustre la complétude de $\mathbb{R}$ et une technique de démonstration d'irrationalité. On montre d'abord que la suite est de Cauchy, assurant sa convergence dans $\mathbb{R}$. Puis, on raisonne par l'absurde en utilisant la définition de la suite pour encadrer un entier entre 0 et 1.

**Étapes:**

1.  **Rationalité de $u_n$ :**

    Pour tout $n \in \mathbb{N}$, $u_n = \sum_{k=0}^n \frac{1}{k!}$. Chaque terme $\frac{1}{k!}$ est un nombre rationnel. Une somme finie de rationnels est un rationnel. Donc $u_n \in \mathbb{Q}$ pour tout $n$.

2.  **Suite de Cauchy :**

    Soient $p, n \in \mathbb{N}$ avec $p > n$.

    $|u_p - u_n| = \left| \sum_{k=0}^p \frac{1}{k!} - \sum_{k=0}^n \frac{1}{k!} \right| = \sum_{k=n+1}^p \frac{1}{k!}$.

    On majore chaque terme $k!$ par une expression plus simple. Pour $k > n+1$, $k! = (n+1)! \cdot (n+2) \cdots k > (n+1)! \cdot 2^{k-(n+1)}$.

    Une majoration plus simple : pour $k \ge 2$, $k! \ge 2^{k-1}$. Une autre : pour $k > j$, $k! > j! (j+1)^{k-j}$.

    Utilisons $k! > (n+1)! \cdot (n+2)^{k-(n+1)}$ pour $k > n+1$.

    $|u_p - u_n| = \frac{1}{(n+1)!} + \frac{1}{(n+2)!} + \dots + \frac{1}{p!}$

    $= \frac{1}{(n+1)!} \left( 1 + \frac{1}{n+2} + \frac{1}{(n+2)(n+3)} + \dots \right)$

    $< \frac{1}{(n+1)!} \left( 1 + \frac{1}{n+2} + \frac{1}{(n+2)^2} + \dots \right)$.

    La parenthèse est la somme d'une série géométrique de raison $\frac{1}{n+2} < 1$.

    La somme est $\frac{1}{1 - \frac{1}{n+2}} = \frac{n+2}{n+1}$.

    Donc, $|u_p - u_n| < \frac{1}{(n+1)!} \frac{n+2}{n+1}$.

    Cette quantité tend vers 0 lorsque $n \to \infty$, indépendamment de $p$.

    Donc, $\forall \epsilon > 0$, on peut trouver $N$ tel que pour $n \ge N$, $\frac{1}{(n+1)!} \frac{n+2}{n+1} < \epsilon$. Alors pour $p>n \ge N$, $|u_p - u_n| < \epsilon$.

    La suite est de Cauchy. Puisque $\mathbb{R}$ est complet, elle converge vers une limite $e$.

3.  **Irrationalité de $e$ :**

    Supposons par l'absurde que $e \in \mathbb{Q}$. Alors $e = p/q$ pour certains entiers $p, q \in \mathbb{N}^*$.

    On sait que $e = \lim_{n \to \infty} u_n = \sum_{k=0}^{\infty} \frac{1}{k!}$.

    Puisque $(u_n)$ est strictement croissante, $u_q < e$. Donc $e - u_q > 0$.

    $e - u_q = \sum_{k=q+1}^{\infty} \frac{1}{k!} = \frac{1}{(q+1)!} + \frac{1}{(q+2)!} + \dots$.

    Multiplions cette inégalité par $q!$ :

    $q!(e - u_q) > 0$.

    $q!e = q! \frac{p}{q} = (q-1)! p$, qui est un entier.

    $q!u_q = q! \sum_{k=0}^q \frac{1}{k!} = \sum_{k=0}^q \frac{q!}{k!}$. Chaque terme $\frac{q!}{k!}$ est un entier pour $k \le q$. Donc $q!u_q$ est un entier.

    Par conséquent, $X = q!(e - u_q)$ est une différence de deux entiers, c'est donc un entier.

    On a établi que $X > 0$.

    Majorons maintenant $X$.

    $X = q! \sum_{k=q+1}^{\infty} \frac{1}{k!} = q! \left( \frac{1}{(q+1)!} + \frac{1}{(q+2)!} + \dots \right)$

    $X = \frac{1}{q+1} + \frac{1}{(q+1)(q+2)} + \frac{1}{(q+1)(q+2)(q+3)} + \dots$

    $X < \frac{1}{q+1} + \frac{1}{(q+1)^2} + \frac{1}{(q+1)^3} + \dots$

    La majoration est une série géométrique de raison $\frac{1}{q+1}$. Sa somme est $\frac{1/(q+1)}{1-1/(q+1)} = \frac{1}{q}$.

    Donc $X < \frac{1}{q}$.

    Comme $q \ge 1$, on a $X < 1$.

    On a donc trouvé un entier $X$ tel que $0 < X < 1$. C'est une contradiction.

    L'hypothèse initiale ($e$ est rationnel) est donc fausse.

**Réponse:**

1.  Chaque $u_n$ est une somme finie de rationnels, donc est rationnel.
2.  La suite $(u_n)$ est de Cauchy, car la différence $|u_p-u_n|$ est majorée par un terme qui tend vers 0. Étant dans $\mathbb{R}$ qui est complet, elle converge.
3.  Le raisonnement par l'absurde, en supposant $e=p/q$, conduit à l'existence d'un entier strictement compris entre 0 et 1, ce qui est impossible. Donc $e$ est irrationnel.

</details>

## Exercise 7: [Application Avancée]

**Problème:** Soit $f: I \to I$ une application de classe $C^1$ sur un intervalle fermé $I \subset \mathbb{R}$. On suppose qu'elle admet un unique point fixe $l \in I$ et qu'elle est contractante, i.e., $\exists L \in [0, 1)$ tel que $\forall x,y \in I, |f(x)-f(y)| \le L|x-y|$. Soit la suite $u_{n+1} = f(u_n)$ avec $u_0 \in I$.

1.  Démontrer que $\forall n \in \mathbb{N}$, $|u_n - l| \le L^n |u_0 - l|$. En déduire que la suite $(u_n)$ converge vers $l$.
2.  En utilisant le théorème des accroissements finis, montrer que si $f'(l)$ existe, alors $\lim_{n\to\infty} \frac{u_{n+1}-l}{u_n-l} = f'(l)$.
3.  Interpréter ce résultat en termes de vitesse de convergence. On parle de convergence géométrique (ou linéaire). Que se passe-t-il si $f'(l) = 0$ ?

<details>

<summary>Solution</summary>

**Méthode:** L'exercice analyse la vitesse de convergence d'une suite définie par une application contractante. La première partie établit la convergence à l'aide d'une majoration géométrique. La deuxième partie affine ce résultat en utilisant le théorème des accroissements finis pour trouver un équivalent de l'erreur $u_n - l$.

**Étapes:**

1.  **Convergence de la suite :**

    On sait que $l$ est un point fixe, donc $f(l)=l$.

    Pour tout $n \in \mathbb{N}$, on a :

    $|u_{n+1} - l| = |f(u_n) - f(l)|$.

    Puisque $f$ est contractante de rapport $L$, et que $u_n, l \in I$, on a :

    $|f(u_n) - f(l)| \le L |u_n - l|$.

    Donc, $|u_{n+1} - l| \le L |u_n - l|$.

    Par une récurrence immédiate :

    $|u_n - l| \le L|u_{n-1}-l| \le L^2|u_{n-2}-l| \le \dots \le L^n|u_0 - l|$.

    Comme $L \in [0, 1)$, on a $\lim_{n \to \infty} L^n = 0$.

    Par le théorème des gendarmes, $0 \le |u_n - l| \le L^n|u_0 - l| \to 0$.

    Donc $\lim_{n \to \infty} |u_n - l| = 0$, ce qui signifie que $(u_n)$ converge vers $l$.

2.  **Limite du rapport des erreurs :**

    On considère le rapport $\frac{u_{n+1}-l}{u_n-l}$. On suppose $u_n \neq l$ pour tout $n$.

    $\frac{u_{n+1}-l}{u_n-l} = \frac{f(u_n)-f(l)}{u_n-l}$.

    Puisque $u_n \to l$ et que $f$ est de classe $C^1$, la limite de ce rapport est par définition la dérivée de $f$ en $l$.

    $\lim_{n\to\infty} \frac{f(u_n)-f(l)}{u_n-l} = f'(l)$.

    Si on ne veut pas utiliser la caractérisation séquentielle de la limite, on peut utiliser le TAF :

    Pour chaque $n$, il existe $c_n$ compris entre $u_n$ et $l$ tel que $f(u_n)-f(l) = f'(c_n)(u_n-l)$.

    Donc $\frac{u_{n+1}-l}{u_n-l} = f'(c_n)$.

    Comme $u_n \to l$, par le théorème des gendarmes, $c_n \to l$.

    Puisque $f'$ est continue en $l$ (car $f$ est $C^1$), on a $\lim_{n \to \infty} f'(c_n) = f'(l)$.

    D'où le résultat.

3.  **Interprétation :**

    Le résultat $\lim_{n\to\infty} \frac{u_{n+1}-l}{u_n-l} = f'(l)$ signifie que pour $n$ grand, l'erreur à l'étape $n+1$ est approximativement $f'(l)$ fois l'erreur à l'étape $n$ : $e_{n+1} \approx f'(l) e_n$.

    L'erreur diminue géométriquement. C'est ce qu'on appelle une **convergence linéaire** (ou d'ordre 1). Le "taux de convergence" est $|f'(l)|$. Plus $|f'(l)|$ est proche de 0, plus la convergence est rapide.

    Si $f'(l) = 0$, la limite du rapport est 0. Cela signifie que la convergence est plus rapide que linéaire.

    Si $f$ est de classe $C^2$ et $f'(l)=0$, on peut utiliser un développement de Taylor-Lagrange :

    $f(u_n) - f(l) = f'(l)(u_n-l) + \frac{f''(d_n)}{2}(u_n-l)^2$ pour un $d_n$ entre $u_n$ et $l$.

    $u_{n+1} - l = \frac{f''(d_n)}{2}(u_n-l)^2$.

    Alors $\frac{u_{n+1}-l}{(u_n-l)^2} \to \frac{f''(l)}{2}$.

    L'erreur à une étape est proportionnelle au *carré* de l'erreur précédente. C'est une **convergence quadratique** (ou d'ordre 2), beaucoup plus rapide. C'est le principe de la méthode de Newton.

**Réponse:**

1.  La majoration $|u_n - l| \le L^n |u_0 - l|$ et le fait que $L \in [0, 1)$ prouvent la convergence de $(u_n)$ vers $l$.
2.  Par le théorème des accroissements finis, on montre que $\frac{u_{n+1}-l}{u_n-l} = f'(c_n)$ avec $c_n \to l$. Par continuité de $f'$, la limite du rapport est $f'(l)$.
3.  Le résultat indique une **convergence linéaire** avec un taux $|f'(l)|$. Si $f'(l) = 0$, la convergence est plus rapide, souvent **quadratique** si $f''(l) \neq 0$.

</details>

## Exercise 8: [Preuve Complexe]

**Problème:** Soit $(u_n)_{n \in \mathbb{N}}$ une suite bornée de nombres réels. On suppose que l'ensemble de ses valeurs d'adhérence est un singleton $\{l\}$. Démontrer que la suite $(u_n)$ converge vers $l$.

<details>

<summary>Solution</summary>

**Méthode:** Le raisonnement par l'absurde est la technique la plus naturelle ici. On suppose que la suite ne converge pas vers $l$. Cela nous permet de construire une sous-suite qui reste "à distance" de $l$. Comme la suite de départ est bornée, cette nouvelle sous-suite l'est aussi. Le théorème de Bolzano-Weierstrass nous garantit alors l'existence d'une sous-sous-suite qui converge. Sa limite sera une valeur d'adhérence de la suite initiale, mais elle ne peut pas être $l$, ce qui contredit l'hypothèse.

**Étapes:**

1.  **Hypothèse et négation :**
    *   H1 : $(u_n)$ est une suite bornée.
    *   H2 : L'ensemble des valeurs d'adhérence de $(u_n)$ est $\{l\}$.
    *   Conclusion à prouver : $\lim_{n \to \infty} u_n = l$.

2.  **Raisonnement par l'absurde :**

    Supposons que $(u_n)$ ne converge pas vers $l$.

    La négation de la convergence est :

    $\neg(\forall \epsilon > 0, \exists N \in \mathbb{N}, \forall n \ge N, |u_n - l| \le \epsilon)$

    $\Leftrightarrow \exists \epsilon_0 > 0, \forall N \in \mathbb{N}, \exists n \ge N, |u_n - l| > \epsilon_0$.

3.  **Construction d'une sous-suite :**

    L'affirmation ci-dessus nous permet de construire une sous-suite $(u_{\phi(k)})$ qui reste à l'écart de $l$.

    *   Pour $N=0$, il existe un indice $\phi(0) \ge 0$ tel que $|u_{\phi(0)} - l| > \epsilon_0$.
    *   Pour $N=\phi(0)+1$, il existe un indice $\phi(1) \ge \phi(0)+1$ tel que $|u_{\phi(1)} - l| > \epsilon_0$.
    *   Par récurrence, ayant construit $\phi(k-1)$, on choisit $N=\phi(k-1)+1$. Il existe un indice $\phi(k) \ge \phi(k-1)+1$ tel que $|u_{\phi(k)} - l| > \epsilon_0$.

    La fonction $\phi: \mathbb{N} \to \mathbb{N}$ est strictement croissante. On a donc construit une sous-suite $(u_{\phi(k)})_{k \in \mathbb{N}}$ telle que $\forall k \in \mathbb{N}, |u_{\phi(k)} - l| > \epsilon_0$.

4.  **Application de Bolzano-Weierstrass :**

    La suite initiale $(u_n)$ est bornée (H1). Toute sous-suite d'une suite bornée est elle-même bornée. Donc la sous-suite $(u_{\phi(k)})$ est bornée.

    D'après le théorème de Bolzano-Weierstrass, on peut extraire de $(u_{\phi(k)})$ une sous-suite convergente. Notons-la $(u_{\phi(\psi(j))})_{j \in \mathbb{N}}$ et sa limite $l'$.

    $l' = \lim_{j \to \infty} u_{\phi(\psi(j))}$.

5.  **Contradiction :**

    La suite $(u_{\phi(\psi(j))})$ est une sous-suite de $(u_n)$. Sa limite $l'$ est donc, par définition, une valeur d'adhérence de la suite $(u_n)$.

    Par l'hypothèse H2, l'ensemble des valeurs d'adhérence est $\{l\}$. On doit donc avoir $l' = l$.

    Cependant, la sous-suite $(u_{\phi(k)})$ a été construite de telle sorte que tous ses termes vérifient $|u_{\phi(k)} - l| > \epsilon_0$.

    Ceci est vrai aussi pour la sous-sous-suite : $\forall j \in \mathbb{N}, |u_{\phi(\psi(j))} - l| > \epsilon_0$.

    En passant à la limite quand $j \to \infty$, on obtient $|l' - l| \ge \epsilon_0$.

    Comme $\epsilon_0 > 0$, cela implique $l' \neq l$.

    Nous avons donc une contradiction : $l'=l$ et $l' \neq l$.

6.  **Conclusion :**

    La supposition initiale que $(u_n)$ ne converge pas vers $l$ est fausse. Par conséquent, $(u_n)$ converge vers $l$.

**Réponse:** La démonstration par l'absurde, en construisant une sous-suite qui reste à distance de $l$ et en utilisant le théorème de Bolzano-Weierstrass pour en extraire une sous-suite convergente, mène à une contradiction sur la nature de la valeur d'adhérence unique, prouvant ainsi que la suite originale converge vers $l$.

</details>

## Exercise 9: [Investigation Théorique]

**Problème:** Soient $(u_n)$ et $(v_n)$ deux suites réelles bornées.

1.  Démontrer l'inégalité $\limsup_{n \to \infty} (u_n + v_n) \le \limsup_{n \to \infty} u_n + \limsup_{n \to \infty} v_n$.
2.  Donner un exemple où l'inégalité est stricte.
3.  Démontrer que si la suite $(u_n)$ converge vers une limite $l$, alors l'égalité a lieu : $\limsup_{n \to \infty} (u_n + v_n) = l + \limsup_{n \to \infty} v_n$.

<details>

<summary>Solution</summary>

**Méthode:** La démonstration repose sur les propriétés de la borne supérieure. Pour la première partie, on majore $\sup(A+B)$ par $\sup(A)+\sup(B)$. Pour la troisième partie, on démontre les deux inégalités, en utilisant la définition de la convergence de $(u_n)$.

**Étapes:**

1.  **Démonstration de l'inégalité :**

    Soit $k \ge n$. Pour tout $j \ge k$, on a $u_j + v_j \le \sup_{i \ge k} u_i + \sup_{i \ge k} v_i$.

    Le terme de droite est un majorant de l'ensemble $\{u_j+v_j \mid j \ge k\}$.

    Par définition de la borne supérieure, on a donc :

    $\sup_{j \ge k} (u_j + v_j) \le \sup_{i \ge k} u_i + \sup_{i \ge k} v_i$.

    Cette inégalité est vraie pour tout $k \ge n$. Posons $S_k^u = \sup_{i \ge k} u_i$, $S_k^v = \sup_{i \ge k} v_i$ et $S_k^{u+v} = \sup_{j \ge k} (u_j+v_j)$.

    On a $S_k^{u+v} \le S_k^u + S_k^v$.

    Par définition, $\limsup u_n = \lim_{k \to \infty} S_k^u$, $\limsup v_n = \lim_{k \to \infty} S_k^v$, et $\limsup (u_n+v_n) = \lim_{k \to \infty} S_k^{u+v}$.

    En passant à la limite quand $k \to \infty$ dans l'inégalité $S_k^{u+v} \le S_k^u + S_k^v$, et en utilisant la compatibilité de la limite avec l'ordre et la somme, on obtient :

    $\lim_{k \to \infty} S_k^{u+v} \le \lim_{k \to \infty} S_k^u + \lim_{k \to \infty} S_k^v$.

    Soit $\limsup (u_n+v_n) \le \limsup u_n + \limsup v_n$.

2.  **Exemple d'inégalité stricte :**

    Soit $u_n = (-1)^n$ et $v_n = (-1)^{n+1} = -(-1)^n$.

    L'ensemble des valeurs de $(u_n)$ est $\{-1, 1\}$. Pour tout $k$, $\sup_{i \ge k} u_i = 1$. Donc $\limsup u_n = 1$.

    De même, $\limsup v_n = 1$.

    La somme des limsups est $1+1=2$.

    La suite somme est $u_n+v_n = (-1)^n + (-1)^{n+1} = 0$ pour tout $n$.

    Donc $\limsup (u_n+v_n) = \lim 0 = 0$.

    On a bien $0 < 2$.

3.  **Cas où $(u_n)$ converge :**

    Soit $\lim u_n = l$. On a donc $\limsup u_n = \liminf u_n = l$.

    On veut montrer $\limsup(u_n + v_n) = l + \limsup v_n$.

    *   **Inégalité $\le$ :** D'après la question 1, $\limsup (u_n+v_n) \le \limsup u_n + \limsup v_n = l + \limsup v_n$.
    *   **Inégalité $\ge$ :** Soit $L_v = \limsup v_n$. Il existe une sous-suite $(v_{\phi(k)})$ qui converge vers $L_v$.

        La sous-suite correspondante $(u_{\phi(k)})$ converge vers $l$ (car toute sous-suite d'une suite convergente converge vers la même limite).

        Donc la sous-suite $(u_{\phi(k)} + v_{\phi(k)})$ converge vers $l+L_v$.

        Ceci prouve que $l+L_v$ est une valeur d'adhérence de la suite $(u_n+v_n)$.

        La limite supérieure est la plus grande des valeurs d'adhérence. Donc, $\limsup(u_n+v_n) \ge l+L_v = l+\limsup v_n$.

    Les deux inégalités étant prouvées, on a l'égalité.

**Réponse:**

1.  La démonstration est effectuée en utilisant la propriété $\sup(A+B) \le \sup(A)+\sup(B)$ sur les queues de suites, puis en passant à la limite.
2.  Pour $u_n = (-1)^n$ et $v_n = (-1)^{n+1}$, on a $\limsup(u_n+v_n) = 0$ et $\limsup u_n + \limsup v_n = 2$.
3.  Lorsque $(u_n)$ converge vers $l$, l'inégalité $\limsup (u_n+v_n) \le l + \limsup v_n$ est un cas particulier de la première question. L'inégalité inverse est prouvée en exhibant une sous-suite de $(u_n+v_n)$ qui converge vers $l+\limsup v_n$.

</details>

## Exercise 10: [Application Avancée]

**Problème:** Soit $\sum a_n z^n$ une série entière avec $a_n \in \mathbb{C}$. Le but est de prouver la formule de Hadamard pour le rayon de convergence $R$: $\frac{1}{R} = \limsup_{n \to \infty} \sqrt[n]{|a_n|}$ (avec les conventions $1/0 = +\infty$ et $1/\infty = 0$).

Soit $L = \limsup_{n \to \infty} \sqrt[n]{|a_n|}$.

1.  On suppose $0 < L < +\infty$. Montrer que pour tout $z$ tel que $|z| < 1/L$, la série $\sum a_n z^n$ converge absolument.
2.  Montrer que pour tout $z$ tel que $|z| > 1/L$, le terme général $a_n z^n$ ne tend pas vers 0, et donc la série diverge.
3.  Conclure que $R = 1/L$ et traiter les cas limites $L=0$ et $L=+\infty$.

<details>

<summary>Solution</summary>

**Méthode:** Cet exercice fondamental lie la notion de limite supérieure à un concept central de l'analyse complexe. La preuve utilise la caractérisation de la limsup en termes d'inégalités. Pour la convergence, on majore le terme général par celui d'une série géométrique. Pour la divergence, on montre que le terme général est non borné.

**Étapes:**

1.  **Convergence pour $|z|<1/L$ :**

    Soit $z$ tel que $|z| < 1/L$. Cela équivaut à $L < 1/|z|$.

    Posons $\epsilon = \frac{1}{2} (1/|z| - L) > 0$.

    Par la caractérisation de la limite supérieure, puisque $L+\epsilon < 1/|z|$, il existe un rang $N \in \mathbb{N}$ tel que pour tout $n \ge N$ :

    $\sqrt[n]{|a_n|} < L+\epsilon$.

    En élevant à la puissance $n$, on a $|a_n| < (L+\epsilon)^n$.

    Donc, $|a_n z^n| = |a_n| |z|^n < (L+\epsilon)^n |z|^n = ((L+\epsilon)|z|)^n$.

    Soit $q = (L+\epsilon)|z|$. Par construction de $\epsilon$, $L+\epsilon = \frac{1}{2}(L+1/|z|)$, donc $q = \frac{1}{2}(L|z|+1) < \frac{1}{2}(1+1)=1$.

    Ainsi, $|a_n z^n| < q^n$ avec $q \in [0, 1)$.

    La série $\sum |a_n z^n|$ est majorée par une série géométrique convergente. Par le critère de comparaison, la série $\sum a_n z^n$ converge absolument.

    Ceci étant vrai pour tout $z$ tel que $|z| < 1/L$, on a $R \ge 1/L$.

2.  **Divergence pour $|z|>1/L$ :**

    Soit $z$ tel que $|z| > 1/L$. Cela équivaut à $L > 1/|z|$.

    Par la caractérisation de la limite supérieure, pour tout $\epsilon > 0$, il existe une infinité d'indices $n$ tels que $\sqrt[n]{|a_n|} > L-\epsilon$.

    Choisissons $\epsilon = \frac{1}{2}(L-1/|z|) > 0$.

    Il existe une infinité d'indices $n$ (formant une sous-suite) pour lesquels :

    $\sqrt[n]{|a_n|} > L-\epsilon = L - \frac{1}{2}(L-1/|z|) = \frac{1}{2}(L+1/|z|) > 1/|z|$.

    Pour ces indices, $|a_n| > (1/|z|)^n$.

    Donc, $|a_n z^n| = |a_n||z|^n > (1/|z|)^n |z|^n = 1$.

    Le terme général de la série ne tend pas vers 0 (il est même de module supérieur à 1 pour une infinité d'indices). La série $\sum a_n z^n$ diverge donc grossièrement.

    Ceci étant vrai pour tout $z$ tel que $|z|>1/L$, on a $R \le 1/L$.

3.  **Conclusion :**

    Des deux points précédents, on conclut que $R = 1/L$.

    **Cas $L=0$ :**

    La preuve du 1) s'adapte : pour tout $z \neq 0$, choisissons $\epsilon = 1/(2|z|)$. Pour $n \ge N$, $\sqrt[n]{|a_n|} < \epsilon$, donc $|a_n z^n| < (\epsilon|z|)^n = (1/2)^n$. La série converge pour tout $z$. Le rayon de convergence est $R=+\infty$. La formule $1/L = 1/0 = +\infty$ est cohérente.

    **Cas $L=+\infty$ :**

    La preuve du 2) s'adapte : pour tout $z \neq 0$, choisissons un réel $M > 1/|z|$. Comme $\limsup \sqrt[n]{|a_n|} = +\infty$, il existe une infinité d'indices $n$ tels que $\sqrt[n]{|a_n|} > M > 1/|z|$. Pour ces indices, $|a_n z^n| > 1$. La série diverge pour tout $z \neq 0$. Le rayon de convergence est $R=0$. La formule $1/L = 1/\infty = 0$ est cohérente.

**Réponse:** La formule de Hadamard $R = 1/\limsup \sqrt[n]{|a_n|}$ est prouvée en montrant que pour $|z|<1/L$, la série converge (par comparaison à une série géométrique) et pour $|z|>1/L$, la série diverge (car son terme général ne tend pas vers 0).

</details>

## Exercise 11: [Preuve Complexe]

**Problème:** Soit $(u_n)_{n \in \mathbb{N}}$ une suite dans $\mathbb{R}$. On note $A$ l'ensemble de ses valeurs d'adhérence. Démontrer que l'ensemble $A$ est un ensemble fermé de $\mathbb{R}$.

<details>

<summary>Solution</summary>

**Méthode:** Pour prouver qu'un ensemble est fermé, on utilise la caractérisation séquentielle : un ensemble $F$ est fermé si et seulement si toute suite d'éléments de $F$ qui converge a sa limite dans $F$. On va donc considérer une suite de valeurs d'adhérence qui converge et montrer que sa limite est elle-même une valeur d'adhérence de la suite initiale. Ceci se fait par une construction "diagonale".

**Étapes:**

1.  **Caractérisation séquentielle de la fermeture :**

    Soit $(l_k)_{k \in \mathbb{N}}$ une suite d'éléments de $A$ (donc $l_k$ est une valeur d'adhérence de $(u_n)$ pour tout $k$).

    On suppose que cette suite $(l_k)$ converge vers une limite $l \in \mathbb{R}$.

    Nous devons montrer que $l \in A$, c'est-à-dire que $l$ est aussi une valeur d'adhérence de $(u_n)$.

2.  **Définition d'une valeur d'adhérence :**

    Pour montrer que $l \in A$, nous devons construire une sous-suite de $(u_n)$ qui converge vers $l$.

    Pour chaque $k \in \mathbb{N}$, $l_k \in A$. Cela signifie qu'il existe une sous-suite de $(u_n)$ qui converge vers $l_k$.

    Donc, pour chaque $k$, on peut trouver des indices de la suite $(u_n)$ dont les termes sont aussi proches que l'on veut de $l_k$.

3.  **Construction de la sous-suite (argument diagonal) :**

    Nous allons construire une sous-suite $(u_{\phi(k)})$ qui converge vers $l$.

    *   **Pour k=0 :**

        Puisque $l_0$ est une valeur d'adhérence de $(u_n)$, il existe un indice $\phi(0)$ tel que $|u_{\phi(0)} - l_0| < 1$.

    *   **Pour k=1 :**

        Puisque $l_1$ est une valeur d'adhérence de $(u_n)$, il existe un indice $\phi(1) > \phi(0)$ tel que $|u_{\phi(1)} - l_1| < 1/2$.

    *   **Pour k=2 :**

        Puisque $l_2$ est une valeur d'adhérence de $(u_n)$, il existe un indice $\phi(2) > \phi(1)$ tel que $|u_{\phi(2)} - l_2| < 1/3$.

    *   **Par récurrence, pour k :**

        Ayant choisi $\phi(k-1)$, puisque $l_k$ est une valeur d'adhérence, il existe un indice $\phi(k) > \phi(k-1)$ tel que $|u_{\phi(k)} - l_k| < 1/(k+1)$.

    Cette construction nous donne une application $\phi: \mathbb{N} \to \mathbb{N}$ strictement croissante, et donc une sous-suite $(u_{\phi(k)})$.

4.  **Montrer que la sous-suite converge vers $l$ :**

    On veut montrer que $\lim_{k \to \infty} u_{\phi(k)} = l$.

    On utilise l'inégalité triangulaire :

    $|u_{\phi(k)} - l| = |u_{\phi(k)} - l_k + l_k - l| \le |u_{\phi(k)} - l_k| + |l_k - l|$.

    Par construction, on a $|u_{\phi(k)} - l_k| < 1/(k+1)$. Donc, $\lim_{k \to \infty} |u_{\phi(k)} - l_k| = 0$.

    Par hypothèse, on a $\lim_{k \to \infty} l_k = l$, donc $\lim_{k \to \infty} |l_k - l| = 0$.

    La somme de deux suites qui tendent vers 0 tend aussi vers 0. Donc :

    $\lim_{k \to \infty} |u_{\phi(k)} - l| = 0$.

    Ceci prouve que la sous-suite $(u_{\phi(k)})$ converge vers $l$.

5.  **Conclusion :**

    Nous avons construit une sous-suite de $(u_n)$ qui converge vers $l$. Par définition, $l$ est une valeur d'adhérence de $(u_n)$, donc $l \in A$.

    Puisque toute suite convergente d'éléments de $A$ a sa limite dans $A$, l'ensemble $A$ est fermé.

**Réponse:** En utilisant la caractérisation séquentielle des ensembles fermés, on considère une suite convergente $(l_k)$ de valeurs d'adhérence. Par un argument de construction diagonale, on exhibe une sous-suite de la suite originale $(u_n)$ qui converge vers la limite des $l_k$, prouvant que cette limite est elle-même une valeur d'adhérence. L'ensemble des valeurs d'adhérence est donc fermé.

</details>
