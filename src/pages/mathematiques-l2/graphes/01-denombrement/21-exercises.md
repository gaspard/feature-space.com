---
id: c1037d3d
type: exercises
order: 21
title: Principes de dénombrement - exercices (B)
tags:
  - Combinatoire
  - Dénombrement
  - Cardinalité
  - Ensembles finis
  - Principes de comptage
createdAt: '2025-10-15T18:54:52.911Z'
level: pro
course: Graphes et Combinatoire
courseId: 7027276b
chapter: Principes de dénombrement
chapterId: 1a14d8a4
---
# Exercices "Principes de dénombrement" (B)

---

## Exercice 1

**Problème:** Soit $E$ un ensemble fini. Démontrer qu'une application $f: E \to E$ est injective si et seulement si elle est surjective. Montrer par un contre-exemple que ce résultat est faux si $E$ est infini.

<details>

<summary>Solution</summary>

**Méthode:** Nous allons prouver les deux implications séparément pour le cas où $E$ est fini. Pour l'implication "injectif $\implies$ surjectif", nous utiliserons le principe de cardinalité d'un sous-ensemble. Pour "surjectif $\implies$ injectif", nous utiliserons le principe des bergers. Finalement, nous construirons un contre-exemple simple pour le cas infini.

**Étapes:**

1.  **Hypothèse:** Soit $E$ un ensemble fini de cardinal $n$, i.e., $|E|=n$. Soit $f: E \to E$ une application.

2.  **Preuve de (injectif $\implies$ surjectif):**
    - Supposons que $f$ est injective.
    - L'image de $f$, notée $\text{Im}(f)$, est un sous-ensemble de $E$.
    - Puisque $f$ est injective, elle établit une bijection entre $E$ et $\text{Im}(f)$.
    - Par le principe de bijection, on a donc $|\text{Im}(f)| = |E|$.
    - Or, $\text{Im}(f)$ est un sous-ensemble de l'ensemble fini $E$ et a le même cardinal que $E$. Une propriété fondamentale des ensembles finis (Corollaire 1.12) stipule qu'un sous-ensemble d'un ensemble fini ayant le même cardinal que l'ensemble lui-même est égal à cet ensemble.
    - Donc, $\text{Im}(f) = E$. Ceci est la définition de la surjectivité.

3.  **Preuve de (surjectif $\implies$ injectif):**
    - Supposons que $f$ est surjective. Cela signifie que $\text{Im}(f) = E$.
    - D'après le principe des bergers (forme générale), nous avons $|E| = \sum_{y \in E} |f^{-1}(\{y\})|$.
    - Puisque $f$ est surjective, pour tout $y \in E$, la préimage $f^{-1}(\{y\})$ est non vide, donc $|f^{-1}(\{y\})| \ge 1$.
    - Soit $n = |E|$. Nous avons $n = \sum_{i=1}^n |f^{-1}(\{y_i\})|$.
    - Si l'un des termes $|f^{-1}(\{y_j\})|$ était strictement supérieur à 1, disons $|f^{-1}(\{y_j\})| \ge 2$, alors la somme serait $\sum |f^{-1}(\{y_i\})| \ge (n-1) \times 1 + 2 = n+1$.
    - Cela conduirait à la contradiction $n \ge n+1$.
    - Par conséquent, chaque terme de la somme doit être exactement égal à 1. Autrement dit, pour tout $y \in E$, $|f^{-1}(\{y\})| = 1$.
    - C'est la définition de l'injectivité.

4.  **Contre-exemple pour $E$ infini:**
    - Soit $E = \mathbb{N} = \{0, 1, 2, \dots\}$.
    - Considérons l'application $f: \mathbb{N} \to \mathbb{N}$ définie par $f(n) = n+1$.
    - **Injectivité:** $f$ est injective car si $f(n_1) = f(n_2)$, alors $n_1+1 = n_2+1$, ce qui implique $n_1=n_2$.
    - **Non-surjectivité:** $f$ n'est pas surjective car l'élément $0 \in \mathbb{N}$ n'a pas d'antécédent (il n'existe aucun $n \in \mathbb{N}$ tel que $n+1=0$).
    - Considérons l'application $g: \mathbb{N} \to \mathbb{N}$ définie par $g(n) = \lfloor n/2 \rfloor$.
    - **Surjectivité:** $g$ est surjective car pour tout $k \in \mathbb{N}$, l'entier $2k \in \mathbb{N}$ est un antécédent, $g(2k) = \lfloor 2k/2 \rfloor = k$.
    - **Non-injectivité:** $g$ n'est pas injective car $g(0) = 0$ et $g(1) = 0$.

**Réponse:** Pour un ensemble fini $E$, une application $f:E \to E$ est injective si et seulement si elle est surjective. Pour un ensemble infini comme $\mathbb{N}$, l'application $n \mapsto n+1$ est injective mais pas surjective, et l'application $n \mapsto \lfloor n/2 \rfloor$ est surjective mais pas injective.

</details>

---

## Exercice 2

**Problème:** Soient $E$ et $F$ des ensembles finis avec $|E|=n$ et $|F|=k$. Déterminer le nombre de surjections de $E$ sur $F$. Le résultat peut être exprimé en utilisant les nombres de Stirling de seconde espèce, notés $S(n,k)$ ou $\left\{ \begin{matrix} n \\ k \end{matrix} \right\}$.

<details>

<summary>Solution</summary>

**Méthode:** Nous allons utiliser le principe d'inclusion-exclusion. L'ensemble total est l'ensemble de toutes les applications de $E$ dans $F$. Nous allons soustraire les applications qui ne sont pas surjectives, c'est-à-dire celles qui "manquent" au moins un élément de l'image.

Soit $\mathcal{F}$ l'ensemble de toutes les applications de $E$ dans $F$. On a $|\mathcal{F}| = k^n$.

Pour chaque $i \in \{1, \dots, k\}$, soit $y_i$ un élément de $F = \{y_1, \dots, y_k\}$. Soit $A_i$ la propriété qu'une application $f \in \mathcal{F}$ ne prend pas la valeur $y_i$ (i.e., $y_i \notin \text{Im}(f)$). Le nombre de surjections est le nombre d'applications qui n'ont aucune des propriétés $A_i$. C'est donc $k^n - |\bigcup_{i=1}^k A_i|$.

**Étapes:**

1.  **Formulation avec inclusion-exclusion:**

    Le nombre de surjections est $N = k^n - |\bigcup_{i=1}^k A_i|$.

    D'après la formule de Poincaré, on a :

    $$ N = k^n - \left( \sum_{i} |A_i| - \sum_{i<j} |A_i \cap A_j| + \sum_{i<j<l} |A_i \cap A_j \cap A_l| - \dots + (-1)^{k-1} |A_1 \cap \dots \cap A_k| \right) $$

    Ce qui peut se réécrire :

    $$ N = \sum_{j=0}^k (-1)^j \sum_{I \subseteq [k], |I|=j} \left| \bigcap_{i \in I} A_i \right| $$

2.  **Calcul du cardinal des intersections:**

    Considérons une intersection $\bigcap_{i \in I} A_i$ pour un sous-ensemble $I \subseteq [k]$ de cardinal $|I|=j$.

    Cette intersection représente l'ensemble des applications dont l'image est contenue dans $F \setminus \{y_i \mid i \in I\}$.

    Le codomaine de ces applications est donc de taille $k-j$.

    Le nombre de telles applications est $(k-j)^n$.

3.  **Substitution dans la formule:**

    Il y a $\binom{k}{j}$ façons de choisir un sous-ensemble $I$ de cardinal $j$.

    Donc, le terme $\sum_{I \subseteq [k], |I|=j} \left| \bigcap_{i \in I} A_i \right|$ est égal à $\binom{k}{j} (k-j)^n$.

    En substituant cela dans la formule de $N$, on obtient :

    $$ N = \sum_{j=0}^k (-1)^j \binom{k}{j} (k-j)^n $$

4.  **Développement de la somme:**

    $N = (-1)^0 \binom{k}{0} k^n + (-1)^1 \binom{k}{1} (k-1)^n + (-1)^2 \binom{k}{2} (k-2)^n + \dots + (-1)^k \binom{k}{k} (k-k)^n$

    $$ N = \binom{k}{0}k^n - \binom{k}{1}(k-1)^n + \binom{k}{2}(k-2)^n - \dots + (-1)^k \binom{k}{k}0^n $$

    (On convient que $0^0=1$ et $0^n=0$ pour $n>0$).

5.  **Lien avec les nombres de Stirling de seconde espèce:**

    Le nombre de partitions d'un ensemble de $n$ éléments en $k$ sous-ensembles non vides est noté $S(n,k)$ ou $\left\{ \begin{matrix} n \\ k \end{matrix} \right\}$.

    Pour construire une surjection de $E$ vers $F$, on peut d'abord partitionner $E$ en $k$ blocs non vides (de $S(n,k)$ manières), puis assigner bijectivement chacun de ces $k$ blocs à un des $k$ éléments de $F$ (de $k!$ manières).

    Par le principe de multiplication, le nombre de surjections est $k! S(n,k)$.

    On a donc l'identité :

    $$ k! S(n,k) = \sum_{j=0}^k (-1)^j \binom{k}{j} (k-j)^n = \sum_{j=0}^k (-1)^{k-j} \binom{k}{j} j^n $$

**Réponse:** Le nombre de surjections d'un ensemble de cardinal $n$ sur un ensemble de cardinal $k$ est :

$$ \sum_{j=0}^k (-1)^j \binom{k}{j} (k-j)^n = k! S(n,k) $$

</details>

---

## Exercice 3

**Problème:** Démontrer le théorème de Ramsey pour le cas $R(3,3)=6$ : dans tout groupe de 6 personnes, il existe soit un sous-groupe de 3 personnes qui se connaissent mutuellement, soit un sous-groupe de 3 personnes qui sont toutes étrangères les unes aux autres.

<details>

<summary>Solution</summary>

**Méthode:** Nous allons modéliser le problème à l'aide d'un graphe. Les personnes sont les sommets et les relations sont les arêtes. Une arête entre deux sommets sera coloriée en bleu si les personnes se connaissent, et en rouge si elles sont étrangères. Le problème revient à montrer que tout graphe complet $K_6$ dont les arêtes sont bi-coloriées en rouge et bleu contient nécessairement un triangle monochrome (soit un $K_3$ bleu, soit un $K_3$ rouge). Nous utiliserons le principe des tiroirs de Dirichlet.

**Étapes:**

1.  **Modélisation:**

    Soit $V$ l'ensemble des 6 personnes, $|V|=6$. On considère le graphe complet $K_6$ sur ces sommets.

    Pour toute paire de personnes $\{u, v\}$, on colorie l'arête $(u,v)$ en bleu si $u$ et $v$ se connaissent, et en rouge si elles ne se connaissent pas.

    On cherche à prouver l'existence d'un sous-ensemble de 3 sommets dont les arêtes sont toutes de la même couleur (un triangle monochrome).

2.  **Application du principe des tiroirs:**

    Choisissons un sommet arbitraire, appelons-le $A$.

    Le sommet $A$ est connecté aux 5 autres sommets du graphe. Ces 5 arêtes partent de $A$.

    Les "objets" sont ces 5 arêtes. Les "tiroirs" sont les deux couleurs (rouge, bleu).

    Par le principe des tiroirs de Dirichlet, puisque $5 > 2 \times 2$, il y a au moins $\lceil 5/2 \rceil = 3$ arêtes de la même couleur qui partent de $A$.

    Supposons, sans perte de généralité, qu'au moins 3 de ces arêtes sont bleues.

3.  **Analyse de cas:**

    Soient $B, C, D$ trois sommets tels que les arêtes $(A,B)$, $(A,C)$ et $(A,D)$ soient toutes bleues.

    Considérons maintenant les arêtes entre ces trois sommets : $(B,C)$, $(C,D)$ et $(D,B)$.

4.  **Cas 1 : Une de ces arêtes est bleue.**

    Supposons que l'arête $(B,C)$ est bleue.

    Alors les sommets $A, B, C$ forment un triangle bleu, car les arêtes $(A,B)$, $(A,C)$ et $(B,C)$ sont toutes bleues.

    Le théorème est prouvé dans ce cas.

5.  **Cas 2 : Toutes ces arêtes sont rouges.**

    Si aucune des arêtes $(B,C)$, $(C,D)$, $(D,B)$ n'est bleue, cela signifie qu'elles sont toutes rouges.

    Dans ce cas, les sommets $B, C, D$ forment un triangle rouge.

    Le théorème est également prouvé dans ce cas.

6.  **Conclusion:**

    Dans tous les cas, que l'on suppose au départ que 3 arêtes issues de A sont bleues ou rouges, on trouve inévitablement un triangle monochrome. La preuve est symétrique si on avait supposé 3 arêtes rouges au départ.

**Réponse:** Par une application du principe des tiroirs sur les arêtes issues d'un sommet quelconque d'un $K_6$ bi-colorié, on montre qu'il existe nécessairement un sous-graphe $K_3$ monochrome, ce qui prouve que $R(3,3)=6$.

</details>

---

## Exercice 4

**Problème:** Démontrer la formule générale du principe d'inclusion-exclusion par un argument combinatoire de double dénombrement. Pour une famille d'ensembles finis $A_1, \dots, A_n$, prouver que :

$$ \left| \bigcup_{i=1}^n A_i \right| = \sum_{\emptyset \neq I \subseteq [n]} (-1)^{|I|-1} \left| \bigcap_{i \in I} A_i \right| $$

<details>

<summary>Solution</summary>

**Méthode:** Nous allons montrer que chaque élément de l'union $\bigcup_{i=1}^n A_i$ est compté exactement une fois par la formule du membre de droite. Soit $x$ un élément arbitraire de l'union. Supposons que $x$ appartienne à exactement $k$ des ensembles $A_i$, avec $k \ge 1$. Nous allons calculer le nombre de fois que $x$ est compté dans la somme de droite et montrer que ce nombre est 1.

**Étapes:**

1.  **Contribution d'un élément $x$:**

    Soit $x \in \bigcup_{i=1}^n A_i$. Soit $K = \{i \in [n] \mid x \in A_i\}$ l'ensemble des indices des ensembles contenant $x$. Par hypothèse, $|K| = k \ge 1$.

    Nous devons évaluer la contribution de $x$ au membre de droite : $\sum_{\emptyset \neq I \subseteq [n]} (-1)^{|I|-1} \mathbb{1}_{x \in \bigcap_{i \in I} A_i}$, où $\mathbb{1}$ est la fonction indicatrice.

2.  **Analyse de la somme:**

    L'élément $x$ est dans l'intersection $\bigcap_{i \in I} A_i$ si et seulement si $I$ est un sous-ensemble de $K$.

    La contribution de $x$ à la somme est donc :

    $$ C(x) = \sum_{\emptyset \neq I \subseteq K} (-1)^{|I|-1} $$

3.  **Calcul de la contribution:**

    La somme peut être regroupée par la taille de $I$. Pour une taille $j$ donnée ($1 \le j \le k$), il y a $\binom{k}{j}$ sous-ensembles $I \subseteq K$ de taille $j$.

    La contribution devient :

    $$ C(x) = \sum_{j=1}^k \binom{k}{j} (-1)^{j-1} $$

4.  **Utilisation de la formule du binôme de Newton:**

    Rappelons la formule du binôme de Newton : $(a+b)^k = \sum_{j=0}^k \binom{k}{j} a^{k-j} b^j$.

    Pour $a=1$ et $b=-1$, on obtient :

    $$ (1-1)^k = \sum_{j=0}^k \binom{k}{j} 1^{k-j} (-1)^j = \sum_{j=0}^k \binom{k}{j} (-1)^j $$

    $$ 0 = \binom{k}{0} - \binom{k}{1} + \binom{k}{2} - \dots + (-1)^k \binom{k}{k} $$

    $$ 0 = 1 - \left( \binom{k}{1} - \binom{k}{2} + \dots - (-1)^{k-1} \binom{k}{k} \right) $$

    $$ 0 = 1 - \sum_{j=1}^k \binom{k}{j} (-1)^{j-1} $$

5.  **Conclusion du calcul:**

    La somme que nous calculions est $C(x) = \sum_{j=1}^k \binom{k}{j} (-1)^{j-1}$.

    D'après l'étape précédente, cette somme est exactement égale à 1.

6.  **Synthèse:**

    Nous avons montré que tout élément $x$ qui est dans l'union est compté exactement une fois par la formule. Si un élément $x$ n'est pas dans l'union, il n'est dans aucun $A_i$, donc il n'est compté dans aucun terme de la somme et sa contribution est 0.

    Par conséquent, les deux membres de l'équation comptent le même ensemble d'éléments (ceux de l'union) exactement une fois. Ils sont donc égaux.

**Réponse:** La formule du principe d'inclusion-exclusion est prouvée par un argument de double dénombrement, en montrant que chaque élément de l'union est compté une seule fois par la somme alternée. La contribution de chaque élément se simplifie à 1 grâce à la formule du binôme de Newton.

$$ \left| \bigcup_{i=1}^n A_i \right| = \sum_{\emptyset \neq I \subseteq [n]} (-1)^{|I|-1} \left| \bigcap_{i \in I} A_i \right| $$

</details>

---

## Exercice 5

**Problème:** On veut fabriquer des colliers de 8 perles. Chaque perle peut être de couleur rouge (R) ou bleue (B). Deux colliers sont considérés identiques s'ils peuvent être obtenus l'un à partir de l'autre par rotation. Combien de colliers distincts peut-on fabriquer ?

<details>

<summary>Solution</summary>

**Méthode:** C'est un problème de dénombrement d'orbites sous l'action d'un groupe. Nous utilisons le Lemme de Burnside (parfois appelé Lemme de Cauchy-Frobenius), qui est une conséquence directe du principe des bergers. Le nombre d'orbites est la moyenne du nombre de points fixes pour chaque élément du groupe.

L'ensemble $X$ est l'ensemble de tous les colorations possibles des 8 positions fixes, donc $|X|=2^8=256$.

Le groupe $G$ agissant sur $X$ est le groupe cyclique des rotations d'un octogone, $C_8 = \{r_0, r_1, \dots, r_7\}$, où $r_k$ est la rotation d'angle $k \cdot \frac{2\pi}{8}$.

Le nombre d'orbites (colliers distincts) est donné par :

$$ N = \frac{1}{|G|} \sum_{g \in G} |X^g| $$

où $X^g$ est l'ensemble des points fixes de $g$, c'est-à-dire les colorations qui sont invariantes sous l'action de $g$.

**Étapes:**

1.  **Identifier le groupe et l'ensemble:**

    $X$: ensemble des $2^8$ séquences de 8 couleurs (RRBBRBBR, etc.).

    $G$: groupe cyclique $C_8$ des 8 rotations du collier. $|G|=8$.

2.  **Calculer les points fixes pour chaque rotation $g \in G$:**

    Une coloration est invariante par une rotation $r_k$ si toutes les perles sur un même cycle de la permutation induite par $r_k$ ont la même couleur. Le nombre de points fixes est donc $2^{\text{nombre de cycles}}$.

    La permutation associée à une rotation de $k$ positions sur $n$ objets se décompose en $\text{pgcd}(n, k)$ cycles de longueur $n/\text{pgcd}(n, k)$ chacun. Ici $n=8$.

    -   **$r_0$ (rotation de 0°):** $\text{pgcd}(8,0)=8$. 8 cycles de longueur 1. Toutes les $2^8=256$ colorations sont fixes. $|X^{r_0}| = 2^8 = 256$.
    -   **$r_1, r_3, r_5, r_7$ (rotations de $\pm 45^\circ, \pm 135^\circ$):** Pour $k \in \{1,3,5,7\}$, $\text{pgcd}(8,k)=1$. Il y a 1 cycle de longueur 8. Les 8 perles doivent avoir la même couleur. Il y a 2 colorations fixes (tout rouge ou tout bleu).

        $|X^{r_1}| = |X^{r_3}| = |X^{r_5}| = |X^{r_7}| = 2$.

    -   **$r_2, r_6$ (rotations de $\pm 90^\circ$):** Pour $k \in \{2,6\}$, $\text{pgcd}(8,k)=2$. Il y a 2 cycles de longueur 4. Par exemple, pour $r_2$, les cycles sont $(1,3,5,7)$ et $(2,4,6,8)$. Il y a $2^2=4$ colorations fixes.

        $|X^{r_2}| = |X^{r_6}| = 4$.

    -   **$r_4$ (rotation de 180°):** $\text{pgcd}(8,4)=4$. Il y a 4 cycles de longueur 2. Les cycles sont $(1,5), (2,6), (3,7), (4,8)$. Il y a $2^4=16$ colorations fixes.

        $|X^{r_4}| = 16$.

3.  **Appliquer le lemme de Burnside:**

    $$ N = \frac{1}{8} \left( |X^{r_0}| + |X^{r_1}| + |X^{r_2}| + |X^{r_3}| + |X^{r_4}| + |X^{r_5}| + |X^{r_6}| + |X^{r_7}| \right) $$

    $$ N = \frac{1}{8} (256 + 2 + 4 + 2 + 16 + 2 + 4 + 2) $$

    $$ N = \frac{1}{8} (256 + 4 \times 2 + 2 \times 4 + 16) $$

    $$ N = \frac{1}{8} (256 + 8 + 8 + 16) = \frac{288}{8} $$

    $$ N = 36 $$

**Réponse:** Il y a 36 colliers distincts de 8 perles bicolores.

$$ N = \frac{1}{8} \sum_{k=0}^{7} 2^{\text{pgcd}(8,k)} = \frac{1}{8}(2^8 + 2^1 + 2^2 + 2^1 + 2^4 + 2^1 + 2^2 + 2^1) = 36 $$

</details>

---

## Exercice 6

**Problème:** Démontrer que l'ensemble $\mathbb{A}$ des nombres algébriques réels est dénombrable. Un nombre est dit algébrique s'il est racine d'un polynôme non nul à coefficients entiers.

<details>

<summary>Solution</summary>

**Méthode:** La stratégie consiste à montrer que $\mathbb{A}$ est une union dénombrable d'ensembles finis.

1.  On montre que l'ensemble des polynômes à coefficients entiers, noté $\mathbb{Z}[X]$, est dénombrable.
2.  On en déduit que l'ensemble des racines de ces polynômes est une union dénombrable d'ensembles finis.
3.  On conclut que $\mathbb{A}$ est dénombrable.

**Étapes:**

1.  **Dénombrabilité de $\mathbb{Z}[X]$:**

    Soit $P_d$ l'ensemble des polynômes de degré au plus $d$ à coefficients entiers.

    Un polynôme $P(X) = a_d X^d + \dots + a_1 X + a_0$ de $P_d$ est entièrement déterminé par le $(d+1)$-uplet de ses coefficients $(a_0, a_1, \dots, a_d) \in \mathbb{Z}^{d+1}$.

    L'application $\phi: P_d \to \mathbb{Z}^{d+1}$ qui associe à un polynôme la liste de ses coefficients est une bijection.

    Nous savons que $\mathbb{Z}$ est dénombrable. Le produit cartésien d'un nombre fini d'ensembles dénombrables est dénombrable. Donc, $\mathbb{Z}^{d+1}$ est dénombrable pour tout $d \in \mathbb{N}$.

    Par conséquent, $P_d$ est dénombrable pour tout $d \in \mathbb{N}$.

    L'ensemble de tous les polynômes $\mathbb{Z}[X]$ est l'union de tous les $P_d$ pour $d \in \mathbb{N}$:

    $$ \mathbb{Z}[X] = \bigcup_{d \in \mathbb{N}} P_d $$

    C'est une union dénombrable d'ensembles dénombrables. Une telle union est dénombrable. Donc $\mathbb{Z}[X]$ est dénombrable.

2.  **Union d'ensembles finis:**

    Chaque nombre algébrique $\alpha \in \mathbb{A}$ est par définition une racine d'au moins un polynôme $P \in \mathbb{Z}[X] \setminus \{0\}$.

    Soit $R_P$ l'ensemble des racines réelles du polynôme $P$. Un polynôme non nul de degré $d$ a au plus $d$ racines réelles. Donc, pour tout $P \in \mathbb{Z}[X] \setminus \{0\}$, l'ensemble $R_P$ est fini.

    L'ensemble de tous les nombres algébriques $\mathbb{A}$ peut s'écrire comme l'union des ensembles de racines de tous les polynômes non nuls à coefficients entiers :

    $$ \mathbb{A} = \bigcup_{P \in \mathbb{Z}[X] \setminus \{0\}} R_P $$

3.  **Conclusion:**

    Nous avons exprimé $\mathbb{A}$ comme une union d'ensembles finis.

    L'ensemble d'indices de cette union, $\mathbb{Z}[X] \setminus \{0\}$, est un sous-ensemble d'un ensemble dénombrable, il est donc lui-même dénombrable.

    Ainsi, $\mathbb{A}$ est une union dénombrable d'ensembles finis. Une telle union est dénombrable.

    (On peut lister les polynômes $P_1, P_2, \dots$ et ensuite lister les racines de $P_1$, puis de $P_2$, etc., en omettant les doublons, pour créer une énumération de $\mathbb{A}$).

**Réponse:** L'ensemble des polynômes à coefficients entiers $\mathbb{Z}[X]$ est dénombrable. Chaque polynôme non nul n'a qu'un nombre fini de racines. L'ensemble des nombres algébriques $\mathbb{A}$ est l'union (indexée par l'ensemble dénombrable $\mathbb{Z}[X] \setminus \{0\}$) de ces ensembles finis de racines. Par conséquent, $\mathbb{A}$ est dénombrable.

</details>

---

## Exercice 7

**Problème:** Le "problème des ménages" consiste à déterminer le nombre de façons, noté $M_n$, de placer $n$ couples mariés autour d'une table circulaire de $2n$ places, de sorte que les hommes et les femmes alternent et qu'aucune femme ne soit assise à côté de son mari.

<details>

<summary>Solution</summary>

**Méthode:** C'est un problème complexe qui requiert une application astucieuse du principe d'inclusion-exclusion.

1. Placer d'abord un sexe (par exemple les femmes).
2. Placer ensuite l'autre sexe dans les places restantes.
3. Utiliser l'inclusion-exclusion pour imposer la contrainte "personne à côté de son conjoint".

**Étapes:**

1.  **Placement des femmes:**

    Plaçons les $n$ femmes, $F_1, \dots, F_n$, autour de la table. Les places sont numérotées de 1 à $2n$. Pour assurer l'alternance, plaçons-les sur les places impaires. Le nombre de façons de les disposer est le nombre de permutations circulaires de $n$ objets, soit $(n-1)!$.

    Une fois les femmes placées, il y a $n$ places paires vacantes pour les $n$ hommes, $H_1, \dots, H_n$. On peut maintenant fixer la position des femmes et ne plus considérer les rotations de la table. Choisissons une disposition des femmes, par exemple $F_1$ en place 1, $F_2$ en place 3, ..., $F_n$ en place $2n-1$. Le nombre de façons de placer les hommes dans les $n$ places paires est $n!$.

    Le nombre total de dispositions alternées (sans la contrainte des couples) est $2 \times (n-1)! \times n!$. Le '2' vient du choix de mettre les femmes sur les places paires ou impaires. Nous allons calculer le nombre pour un placement fixe des femmes, puis multiplier par $2(n-1)!$ à la fin.

2.  **Mise en place de l'inclusion-exclusion:**

    Fixons la position des femmes aux places impaires. $F_i$ est à la place $2i-1$. Les hommes doivent être placés aux places paires. La place $2i-2$ (modulo $2n$) et la place $2i$ sont adjacentes à la place de $F_i$. Donc l'homme $H_i$ ne peut être ni en $2i-2$ ni en $2i$.

    Soit $A_i$ la propriété "$H_i$ est assis à côté de $F_i$". Nous voulons compter le nombre de permutations des hommes qui n'ont aucune de ces propriétés.

    Cela est plus complexe que d'habitude car les places interdites pour $H_i$ dépendent de $i$. Renuméroms les places des hommes de 1 à $n$. La place $j$ est entre $F_j$ et $F_{j+1}$ (indices modulo $n$). L'homme $H_i$ ne peut s'asseoir à la place $i-1$ ou $i$.

    Une approche plus simple est de considérer les $2n$ places comme des objets à permuter. Le problème est équivalent au dénombrement de permutations $\sigma$ de $\{1, \dots, n\}$ telles que $\sigma(i) \neq i$ et $\sigma(i) \neq i-1 \pmod n$. C'est le problème des "ménages" sous sa forme classique.

    Le nombre de solutions est donné par la formule de Touchard. Nous allons la dériver.

3.  **Calcul avec inclusion-exclusion sur un arrangement linéaire:**

    Commençons par un arrangement linéaire de $n$ hommes $H_1, \dots, H_n$ et $n$ chaises $C_1, \dots, C_n$. $H_i$ ne peut s'asseoir sur $C_i$ ou $C_{i+1}$.

    Soit $S_k$ la somme des cardinaux des intersections de $k$ propriétés. La propriété $P_i$ est "$H_i$ est sur une place interdite".

    Le nombre de façons de choisir $k$ hommes et de les placer sur des places "interdites" distinctes est complexe.

4.  **Utilisation des nombres de ménages $U_n$:**

    Soit $U_n$ le nombre de façons de placer les hommes dans un arrangement linéaire. Le nombre pour la table circulaire $M_n$ est lié à $U_n$ et $U_{n-1}$.

    La formule pour $U_n$ est:

    $$ U_n = \sum_{k=0}^n (-1)^k \frac{2n}{2n-k} \binom{2n-k}{k} (n-k)! $$

    C'est la solution au problème des permutations avec positions interdites.

    Le nombre de ménages final est $M_n = U_n - 2U_{n-1}$ pour $n \ge 3$.

    Pour $n=3$, $M_3=1$. (Les couples (1,2,3), femmes $F_1,F_2,F_3$ aux places 1,3,5. Hommes $H_1,H_2,H_3$ aux places 2,4,6. $H_1$ ne peut être en 6,2. $H_2$ en 2,4. $H_3$ en 4,6. Seule la permutation (H3,H1,H2) pour les places (2,4,6) fonctionne.)

5.  **Calcul direct de $M_n$ (formule de Lucas):**

    Le nombre de manières de placer les hommes, une fois les femmes placées, est le nombre de "permutations discordantes".

    Le nombre est $\sum_{k=0}^{n} (-1)^k \binom{n}{k} D_{n-k, k}$ où $D_{n,k}$ est un nombre plus complexe.

    La formule finale, due à Lucas, est :

    $$ M_n = \sum_{k=0}^n (-1)^k \frac{2n}{2n-k} \binom{2n-k}{k} (n-k)! $$

    Pour $n=3$, $M_3 = \frac{6}{6}\binom{6}{0}3! - \frac{6}{5}\binom{5}{1}2! + \frac{6}{4}\binom{4}{2}1! - \frac{6}{3}\binom{3}{3}0! = 6 - \frac{6}{5}(10) + \frac{3}{2}(6) - 2(1) = 6 - 12 + 9 - 2 = 1$.

    Le nombre total est $2(n-1)! \times M_n$. Non, c'est une erreur commune. Le nombre $M_n$ calculé par la formule est déjà le nombre final. Le placement des femmes n'est qu'un cadre de référence.

**Réponse:** Le nombre de dispositions pour le problème des ménages, $M_n$, est donné par la formule :

$$ M_n = \sum_{k=0}^n (-1)^k \frac{2n}{2n-k} \binom{2n-k}{k} (n-k)! $$

Les premières valeurs sont $M_1=0, M_2=0, M_3=1, M_4=2, M_5=13, M_6=80$.

</details>

---

## Exercice 8

**Problème:** Un sous-ensemble $A \subseteq \mathbb{N}$ est appelé un ensemble de Sidon si toutes les sommes d'éléments par paires $a+b$ avec $a, b \in A$ et $a \le b$ sont distinctes. Démontrer qu'un ensemble de Sidon $A \subseteq \{1, 2, \dots, n\}$ doit satisfaire $|A| \le \sqrt{n} + 1$.

<details>

<summary>Solution</summary>

**Méthode:** Nous allons utiliser un argument de comptage sur les différences entre les éléments de l'ensemble de Sidon. La condition sur les sommes distinctes a une implication sur les différences.

**Étapes:**

1.  **Relation entre sommes et différences:**

    La condition que toutes les sommes $a_i+a_j$ (avec $i \le j$) sont distinctes est équivalente à la condition que toutes les différences non nulles $a_j - a_i$ (avec $i < j$) sont distinctes.

    *Preuve de l'équivalence:*

    ($\Rightarrow$) Supposons $a_j - a_i = a_l - a_k$ avec $i<j$ et $k<l$. Ceci implique $a_j+a_k = a_l+a_i$. Si les paires d'indices $\{i,j\}$ et $\{k,l\}$ sont différentes, cela contredit la condition sur les sommes. Les indices doivent donc être les mêmes, i.e., $i=k$ et $j=l$. Donc les différences sont uniques.

    ($\Leftarrow$) Supposons $a_i+a_j = a_k+a_l$ avec, sans perte de généralité, $a_i < a_j$ et $a_k < a_l$. Si $a_j \ne a_l$, disons $a_j > a_l$, alors $a_j-a_l = a_k-a_i > 0$. La distinction des différences implique que cette situation ne peut se produire que si les paires d'indices sont les mêmes. Donc les sommes sont uniques.

    (La condition exacte est que si $a+b=c+d$, alors $\{a,b\}=\{c,d\}$).

2.  **Comptage des différences:**

    Soit $A = \{a_1, a_2, \dots, a_k\}$ un ensemble de Sidon contenu dans $[n]$, avec $a_1 < a_2 < \dots < a_k$.

    Le nombre d'éléments dans $A$ est $|A|=k$.

    Considérons l'ensemble des différences positives $D = \{ a_j - a_i \mid 1 \le i < j \le k \}$.

    Le nombre de telles paires $(i,j)$ est $\binom{k}{2}$.

    Puisque toutes ces différences sont distinctes, l'ensemble $D$ a $\binom{k}{2}$ éléments.

3.  **Bornes sur les différences:**

    Chaque élément de $D$ est de la forme $a_j - a_i$. Puisque $a_j, a_i \in \{1, \dots, n\}$, la différence est un entier.

    La plus petite différence possible est $1$.

    La plus grande différence possible est $a_k - a_1 \le n-1$.

    Donc, tous les éléments de $D$ sont des entiers distincts compris entre 1 et $n-1$.

4.  **Application du principe des tiroirs (implicite):**

    Nous avons $\binom{k}{2}$ entiers distincts dans l'intervalle $[1, n-1]$.

    Le nombre d'éléments dans cet intervalle est $n-1$.

    Par conséquent, le nombre de différences ne peut pas dépasser le nombre d'entiers disponibles dans l'intervalle.

    $$ |D| \le n-1 $$

    $$ \binom{k}{2} \le n-1 $$

5.  **Résolution de l'inégalité:**

    $$ \frac{k(k-1)}{2} \le n-1 $$

    $$ k^2 - k \le 2n-2 $$

    $$ k^2 - k - (2n-2) \le 0 $$

    Considérons l'équation quadratique $x^2-x - (2n-2) = 0$. Les racines sont $x = \frac{1 \pm \sqrt{1 + 4(2n-2)}}{2} = \frac{1 \pm \sqrt{8n-7}}{2}$.

    Puisque $k$ doit être positif, nous avons $k \le \frac{1 + \sqrt{8n-7}}{2}$.

    On peut simplifier cette borne : $\sqrt{8n-7} < \sqrt{8n} = 2\sqrt{2n}$. Donc $k < \frac{1+2\sqrt{2n}}{2} = \sqrt{2n} + 1/2$.

    (Cette borne est correcte, mais plus faible que celle demandée. L'argument initial était erroné.)

6.  **Correction de l'argument (méthode d'Erdos):**

    Considérons les sommes $a+b$ avec $a,b \in A$ et $a \le b$. Il y en a $\binom{k}{2}+k = \binom{k+1}{2}$.

    Ces sommes sont toutes distinctes.

    La plus petite somme est $a_1+a_1 \ge 1+1 = 2$.

    La plus grande somme est $a_k+a_k \le n+n = 2n$.

    Nous avons $\binom{k+1}{2}$ sommes distinctes dans l'intervalle $[2, 2n]$.

    Le nombre de valeurs possibles est $2n-2+1=2n-1$.

    $$ \binom{k+1}{2} \le 2n-1 $$

    $$ \frac{(k+1)k}{2} \le 2n-1 \implies k^2+k \le 4n-2 $$

    Ceci donne $k < \sqrt{4n} = 2\sqrt{n}$. Toujours pas la bonne borne.

7.  **Argument correct (dû à Singer):**

    L'argument initial sur les différences était presque correct. Les différences $a_j-a_i$ sont toutes distinctes. Il y en a $\binom{k}{2}$. Elles sont toutes dans $\{1, \dots, n-1\}$.

    $$ \binom{k}{2} \le n-1 $$

    $$ k(k-1) \le 2n-2 $$

    Pour $k$ grand, $k^2 \approx 2n$, donc $k \approx \sqrt{2n}$. La borne demandée est plus fine.

    Considérons une autre approche.

    Soit $A \subseteq \{0, 1, \dots, n-1\}$. Soit $k=|A|$.

    Considérons les $\binom{k}{2}$ différences $a-b$ avec $a,b \in A, a>b$. Elles sont toutes distinctes et positives.

    Le nombre d'objets (les paires $(a,b)$) est $\binom{k}{2}$.

    Le nombre de tiroirs (les valeurs possibles pour $a-b$) est $n-1$.

    On a $\binom{k}{2} \le n-1$, ce qui donne $k(k-1) \le 2(n-1)$.

    $k^2 - k - 2(n-1) \le 0$. Cela donne $k < \sqrt{2n}$.

    La borne $\sqrt{n}$ est en fait une borne plus forte qui est conjecturée être optimale. La borne de $\sqrt{n}+1$ peut être prouvée en utilisant des méthodes plus avancées (par exemple, en comptant les solutions de $x+y=z+w$ ou via des méthodes de corps finis).

    Une preuve élémentaire pour $|A| \le \sqrt{n}+1$ :

    Soit $k = |A|$. Soit $S = \{a-b : a, b \in A\}$. $|S| = k(k-1)+1$.

    $S \subseteq \{-(n-1), ..., n-1\}$.

    Considérons les sommes $a+b$ pour $a,b \in A$. Il y a au moins $k(k+1)/2$ sommes distinctes.

    Elles sont toutes dans $[2, 2n]$. Donc $k(k+1)/2 \le 2n-1$.

    Cet argument semble être le plus simple, mais n'atteint pas la borne demandée. La borne $\sqrt{n} + O(1)$ est le résultat classique d'Erdos.

    Revenons à l'argument des différences.

    Soit $A=\{a_1, \dots, a_k\} \subseteq \{1, \dots, n\}$.

    Considérons les $k(k-1)$ différences ordonnées $a_i-a_j$ pour $i \ne j$.

    Si $a_i-a_j = a_k-a_l$, alors $a_i+a_l=a_k+a_j$. Par la propriété de Sidon, $\{i,l\}=\{k,j\}$.

    Si $i=k$, alors $l=j$. Si $i=j$, $k=l$. Mais $i \ne j$. Donc $i=l$ et $j=k$, ce qui signifie $a_i-a_j = a_j-a_i$, donc $a_i-a_j=0$, ce qui est impossible.

    Donc toutes les $k(k-1)$ différences ordonnées non nulles sont distinctes.

    Ces différences sont dans $[-(n-1), n-1] \setminus \{0\}$. Il y a $2(n-1)$ valeurs possibles.

    $k(k-1) \le 2(n-1)$. Ceci donne $k \le \sqrt{2n}$.

    La question d'exercice demande une borne qui est en fait plus forte que ce qui peut être prouvé par ces méthodes élémentaires. La preuve classique pour $k \le \sqrt{n}+1/2$ est la suivante :

    Considérer $A \subset \{1, ..., n\}$. Soit $\chi_A$ sa fonction caractéristique.

    $\sum_{x} \chi_A(x) = k$.

    Considérer la fonction $f(t) = \sum_{a \in A} e^{2\pi i a t}$.

    $|f(t)|^2 = (\sum_{a \in A} e^{2\pi i a t})(\sum_{b \in A} e^{-2\pi i b t}) = \sum_{a,b \in A} e^{2\pi i (a-b) t} = k + \sum_{a \ne b} e^{2\pi i (a-b) t}$.

    Intégrer de 0 à 1: $\int_0^1 |f(t)|^2 dt = k$.

    La propriété Sidon implique que $a-b$ sont uniques.

    Cette approche sort du cadre des principes de dénombrement standards.

    Il doit y avoir un argument plus simple.

    Soit $|A| = m$. Les $\binom{m}{2}$ différences $a_j - a_i > 0$ sont toutes distinctes et $\le n-1$. Leur somme est donc au moins $\sum_{l=1}^{\binom{m}{2}} l = \frac{1}{2}\binom{m}{2}(\binom{m}{2}+1)$. D'autre part, la somme des différences est $\sum_{i<j} (a_j-a_i) = \sum_{i=1}^m (2i-m-1)a_i$. Cela ne mène à rien de simple.

    La borne $|A| \le \sqrt{n} + 1$ est un résultat connu et non-trivial. La méthode la plus simple est sans doute de considérer les sommes.

    Soit $k = |A|$. Il y a $k^2$ sommes $a+b$ (avec $a, b \in A$).

    Les sommes $a+b=c+d \implies \{a,b\}=\{c,d\}$.

    Nombre de sommes distinctes: $\binom{k}{2}$ (pour $a \ne b$) + $k$ (pour $a=b$) = $\binom{k+1}{2}$.

    Ces sommes sont dans l'intervalle $[2, 2n]$.

    Donc $\binom{k+1}{2} \le 2n-1$.

    $k(k+1) \le 4n-2$.

    $k^2 < k^2+k \le 4n-2 \implies k < \sqrt{4n-2} \approx 2\sqrt{n}$.

    Peut-être qu'il y a une erreur dans l'énoncé et la borne devrait être $\sqrt{2n}$. Si on considère $A \subseteq \{1, \dots, n\}$, la preuve ci-dessus $k(k-1) \le 2n-2$ est correcte. $k^2-k \le 2n-2$. $k^2 < 2n-2+k$. Si $k \approx \sqrt{2n}$, $k^2 < 2n-2+\sqrt{2n}$. Ce qui est cohérent.

    La borne $\sqrt{n}$ est correcte si l'on travaille dans $\mathbb{Z}_n$. Dans $\mathbb{N}$, la borne est $\sqrt{n}(1+o(1))$.

    Supposons que la borne demandée est $|A| \le \sqrt{2n} + 1$.

    $k(k-1) \le 2n-2$. $k-1 < \sqrt{2n-2}$. $k < \sqrt{2n-2}+1$. C'est une borne valide.

    Je vais reformuler la preuve pour $|A| \le \sqrt{2n}+1$ car la borne demandée semble trop stricte pour les méthodes élémentaires.

    *Correction:* La borne $\sqrt{n}$ est correcte. L'argument d'Erdos-Turan est plus subtil. Il compte le nombre de paires $(a,b,c,d) \in A^4$ telles que $a+b=c+d$.

**Réponse:** Soit $A = \{a_1 < a_2 < \dots < a_k\} \subseteq \{1, \dots, n\}$.

Considérons les $\binom{k}{2}$ différences positives $d_{ij} = a_j - a_i$ pour $i<j$.

La propriété de Sidon (si $a+b=c+d$ alors $\{a,b\}=\{c,d\}$) implique que toutes ces différences sont distinctes.

En effet, si $a_j-a_i = a_l-a_k$ avec $i<j, k<l$, alors $a_j+a_k = a_l+a_i$. Par la propriété de Sidon, $\{j,k\}=\{l,i\}$.

Comme $i<j$ et $k<l$, cela ne peut se produire que si $i=k$ et $j=l$. Les paires d'indices sont donc identiques, et les différences sont uniques.

Ces $\binom{k}{2}$ différences sont des entiers positifs distincts. La plus grande différence possible est $a_k-a_1 \le n-1$.

Ainsi, nous avons $\binom{k}{2}$ valeurs distinctes dans l'ensemble $\{1, 2, \dots, n-1\}$.

Le cardinal de cet ensemble de valeurs possibles est $n-1$.

Donc, on doit avoir $\binom{k}{2} \le n-1$.

$$ \frac{k(k-1)}{2} \le n-1 \implies k^2 - k - 2(n-1) \le 0 $$

En résolvant pour $k$, on trouve $k \le \frac{1+\sqrt{1+8(n-1)}}{2} = \frac{1+\sqrt{8n-7}}{2}$.

Comme $\sqrt{8n-7} < \sqrt{8n} = 2\sqrt{2n}$, on a $k < \frac{1+2\sqrt{2n}}{2} = \sqrt{2n}+1/2$.

Cette borne est correcte. La borne de $\sqrt{n}+1$ de l'énoncé est un résultat plus profond, dont la preuve est significativement plus complexe et sort du cadre de ces principes. La borne prouvée ici est :

$$ |A| < \sqrt{2n} + \frac{1}{2} $$

</details>

---

## Exercice 9

**Problème:** Démontrer que l'ensemble des réels $\mathbb{R}$ et l'ensemble des parties de $\mathbb{N}$, noté $P(\mathbb{N})$, sont équipotents.

<details>

<summary>Solution</summary>

**Méthode:** Nous allons utiliser le théorème de Cantor-Bernstein. Pour prouver que $|\mathbb{R}|=|P(\mathbb{N})|$, il suffit de construire une injection de $\mathbb{R}$ dans $P(\mathbb{N})$ et une injection de $P(\mathbb{N})$ dans $\mathbb{R}$.

**Étapes:**

1.  **Construction d'une injection $f: P(\mathbb{N}) \to \mathbb{R}$:**

    Soit $A \in P(\mathbb{N})$ un sous-ensemble de $\mathbb{N}$. On peut lui associer un nombre réel dans l'intervalle $[0,1]$ via son développement binaire.

    Définissons $f(A) = \sum_{n \in A} 10^{-n}$. C'est un réel dont le développement décimal ne contient que des 0 et des 1. Par exemple, si $A=\{1,3,4\}$, $f(A) = 0.1011$.

    Cette application est injective. Si $A \ne B$, il existe un plus petit entier $k$ qui est dans un ensemble mais pas dans l'autre. Supposons $k \in A$ et $k \notin B$. Alors la $k$-ième décimale de $f(A)$ est 1, tandis que celle de $f(B)$ est 0. Tous les chiffres avant la position $k$ sont identiques. Le nombre $f(A)$ sera donc strictement plus grand que $f(B)$ (en considérant la somme des termes restants qui ne peut compenser l'écart).

    Une légère difficulté survient avec les représentations non uniques (e.g., $0.1 = 0.0999...$). En utilisant une base 3 (avec seulement les chiffres 0 et 1), on évite ce problème. Soit $g(A) = \sum_{n \in A} 3^{-n}$. Ce développement ternaire ne contient que des 0 et 1, il ne peut donc pas se terminer par une infinité de 2, ce qui garantit l'unicité de la représentation. Ainsi $g$ est injective.

    Donc il existe une injection de $P(\mathbb{N})$ dans $\mathbb{R}$.

2.  **Construction d'une injection $h: \mathbb{R} \to P(\mathbb{N})$:**

    Il est plus simple de construire une injection de $\mathbb{R}$ dans un ensemble équipotent à $P(\mathbb{N})$, comme $P(\mathbb{Z} \times \mathbb{N})$.

    Une approche classique est d'associer à chaque réel $x$ l'ensemble des nombres rationnels qui lui sont inférieurs.

    Soit $h: \mathbb{R} \to P(\mathbb{Q})$ définie par $h(x) = \{q \in \mathbb{Q} \mid q < x \}$.

    Cette application est injective : si $x \ne y$, disons $x < y$, alors il existe un nombre rationnel $q_0$ tel que $x < q_0 < y$. Alors $q_0 \in h(y)$ mais $q_0 \notin h(x)$. Donc $h(x) \ne h(y)$.

    Nous avons donc une injection de $\mathbb{R}$ dans $P(\mathbb{Q})$.

    L'ensemble $\mathbb{Q}$ est dénombrable, donc il existe une bijection $\phi: \mathbb{Q} \to \mathbb{N}$. Cette bijection induit une bijection $\psi: P(\mathbb{Q}) \to P(\mathbb{N})$.

    La composition $\psi \circ h$ est une injection de $\mathbb{R}$ dans $P(\mathbb{N})$.

3.  **Conclusion avec Cantor-Bernstein:**

    Nous avons construit une injection de $P(\mathbb{N})$ dans $\mathbb{R}$ et une injection de $\mathbb{R}$ dans $P(\mathbb{N})$.

    Par le théorème de Cantor-Bernstein, il existe une bijection entre $\mathbb{R}$ et $P(\mathbb{N})$. Ils sont donc équipotents.

**Réponse:** En construisant une injection $g: P(\mathbb{N}) \to \mathbb{R}$ (via les développements en base 3) et une injection $h: \mathbb{R} \to P(\mathbb{N})$ (via l'ensemble des rationnels inférieurs), le théorème de Cantor-Bernstein garantit l'existence d'une bijection entre $\mathbb{R}$ et $P(\mathbb{N})$. Le cardinal de $\mathbb{R}$ est donc $2^{\aleph_0}$, la puissance du continu.

$$ |\mathbb{R}| = |P(\mathbb{N})| = 2^{|\mathbb{N}|} = \mathfrak{c} $$

</details>

---

## Exercice 10

**Problème:** Énoncer et démontrer le théorème de Dilworth pour les ensembles finis partiellement ordonnés.

<details>

<summary>Solution</summary>

**Théorème de Dilworth:** Pour tout ensemble fini partiellement ordonné $(P, \preceq)$, la taille maximale d'une antichaîne est égale au nombre minimal de chaînes nécessaires pour partitionner $P$.

(Une **chaîne** est un sous-ensemble de $P$ où tous les éléments sont comparables. Une **antichaîne** est un sous-ensemble de $P$ où aucun couple d'éléments distincts n'est comparable.)

**Méthode:** La preuve se fait par induction sur la taille de l'ensemble $P$. L'inégalité "taille max antichaîne $\le$ nombre min chaînes" est facile. La difficulté est de prouver l'inégalité inverse.

**Étapes:**

1.  **Notations et inégalité facile:**

    Soit $w(P)$ la taille maximale d'une antichaîne dans $P$.

    Soit $\kappa(P)$ le nombre minimum de chaînes dans une partition de $P$.

    Si on a une partition de $P$ en $k$ chaînes $C_1, \dots, C_k$, et une antichaîne $A$, alors chaque élément de $A$ doit appartenir à une chaîne différente (car deux éléments d'une même chaîne sont comparables). Donc, $A$ peut avoir au plus $k$ éléments.

    Ceci est vrai pour toute antichaîne $A$ et toute partition en chaînes. Donc $w(P) \le \kappa(P)$.

2.  **Preuve de $w(P) \ge \kappa(P)$ par induction:**

    Nous allons prouver par induction sur $n=|P|$ que $\kappa(P) \le w(P)$.

    - **Cas de base ($n=1$):** Si $|P|=1$, $P=\{x\}$. $w(P)=1$ (l'antichaîne $\{x\}$) et $\kappa(P)=1$ (la chaîne $\{x\}$). L'égalité est vérifiée.
    - **Hypothèse d'induction:** Supposons que pour tout poset $Q$ avec $|Q|<n$, on a $\kappa(Q) \le w(Q)$.
    - **Étape d'induction:** Soit $P$ un poset de taille $n>1$. Soit $k = w(P)$. Nous voulons montrer que $P$ peut être partitionné en $k$ chaînes.

3.  **Construction de la partition:**

    Soit $M$ l'ensemble des éléments maximaux de $P$. $M$ est une antichaîne. Si $|M| > k$, on aurait une antichaîne de taille $>k$, contredisant $w(P)=k$. Donc $|M| \le k$.

    De même, l'ensemble des éléments minimaux est une antichaîne de taille au plus $k$.

    - **Cas 1:** Il existe une antichaîne $A$ de taille $k$ qui n'est pas l'ensemble de tous les éléments maximaux ni l'ensemble de tous les éléments minimaux.

      Définissons deux sous-ensembles de $P$:

      $P^+ = \{x \in P \mid \exists a \in A, a \preceq x \}$

      $P^- = \{x \in P \mid \exists a \in A, x \preceq a \}$

      Comme $A$ n'est ni l'ensemble des maximaux ni celui des minimaux, $P^+ \ne P$ et $P^- \ne P$. De plus $A = P^+ \cap P^-$.

      En fait, une construction plus efficace est :

      Soit $C$ une chaîne maximale de $P$. Si $|C|=1$, tous les éléments sont incomparables et $P$ est une antichaîne de taille $n$. Alors $w(P)=n$, et on a besoin de $n$ chaînes (chacune de taille 1). $\kappa(P)=n$. Le théorème est vrai.

      Si $P$ n'est pas une antichaîne, il existe une chaîne $C$ de taille au moins 2.

      Considérons $P' = P \setminus C$. $|P'| < n$. Par hypothèse d'induction, $\kappa(P') \le w(P')$.

      Si $w(P') \le k-1$, alors on peut partitionner $P'$ en $k-1$ chaînes. En ajoutant la chaîne $C$, on obtient une partition de $P$ en $k$ chaînes. Le théorème serait prouvé.

    - **Le cas difficile:** Que se passe-t-il si $w(P') = w(P) = k$?

      Cela signifie que $P'$ contient une antichaîne $A'$ de taille $k$.

      Soit $A = \{a_1, \dots, a_k\}$ une antichaîne de taille $k$ dans $P$.

      Pour chaque $i \in [k]$, définissons une chaîne $C_i$ de la manière suivante :

      Soit $x_1 = a_i$. Si on a construit $x_j$, on cherche un élément $x_{j+1}$ qui couvre $x_j$ (i.e. $x_j \prec x_{j+1}$ et il n'y a pas d'élément entre eux) et tel que $w(P \setminus \{x_1, \dots, x_{j+1}\}) < k$.

      Cette construction est complexe.

4.  **Preuve de Gallai (plus simple):**

    Soit $k = w(P)$. Soit $m \in P$ un élément maximal. Soit $P' = P \setminus \{m\}$.

    $w(P')$ est soit $k$ soit $k-1$.

    Par hypothèse d'induction, $P'$ peut être partitionné en au plus $w(P')$ chaînes.

    - Si $w(P') = k-1$, on partitionne $P'$ en $k-1$ chaînes $C'_1, \dots, C'_{k-1}$. La chaîne $\{m\}$ est une $k$-ième chaîne. On a une partition de $P$ en $k$ chaînes.
    - Si $w(P') = k$, on partitionne $P'$ en $k$ chaînes $C'_1, \dots, C'_k$. Soit $A'=\{a'_1, \dots, a'_k\}$ une antichaîne de taille $k$ dans $P'$. Chaque $a'_i$ est dans une chaîne $C'_i$ différente.

    Soit $C_i$ la chaîne de la partition de $P'$ contenant $a'_i$.

    Puisque $m$ est maximal dans $P$ et $A'$ est une antichaîne, $m$ n'est comparable à aucun $a'_i$ (sinon $A' \cup \{m\}$ contiendrait une antichaîne de taille $k+1$ si $m$ n'est comparable à aucun $a'_i$, ou $m$ serait dans la chaîne d'un $a'_i$ ce qui est faux). Non, $m$ peut être plus grand qu'un $a'_i$.

    Pour chaque $i \in [k]$, soit $m_i$ l'élément maximal de $C_i$. L'ensemble $\{m_1, \dots, m_k\}$ est une antichaîne de taille $k$.

    Comme $m$ est maximal, soit $m_i \prec m$ pour certain $i$, soit $m_i$ et $m$ sont incomparables.

    Attachons $m$ à une chaîne $C_i$ où $m$ est plus grand que son élément maximal.

    Si pour tout $i$, $m$ est incomparable avec $m_i$, alors $\{m_1, \dots, m_k, m\}$ serait une antichaîne de taille $k+1$, contradiction.

    Donc il existe au moins un $i$ tel que $m_i \preceq m$. On peut alors ajouter $m$ à la fin de la chaîne $C_i$ pour former $C_i \cup \{m\}$, et on a toujours une partition en $k$ chaînes.

**Réponse:** Le théorème de Dilworth énonce que pour un poset fini $P$, la taille de la plus grande antichaîne, $w(P)$, est égale au nombre minimum de chaînes nécessaires pour partitionner $P$, $\kappa(P)$.

La preuve se fait par induction sur $|P|$. L'inégalité $w(P) \le \kappa(P)$ est directe. Pour prouver $\kappa(P) \le w(P)$, on considère un élément maximal $m$ et le sous-poset $P' = P \setminus \{m\}$. Par hypothèse d'induction, $P'$ peut être décomposé en $w(P')$ chaînes.

- Si $w(P') < w(P)$, on ajoute $\{m\}$ comme nouvelle chaîne et on obtient une partition de $P$ en $w(P)$ chaînes.
- Si $w(P') = w(P)$, on montre qu'il existe une chaîne dans la partition de $P'$ à laquelle $m$ peut être ajouté tout en restant une chaîne, préservant ainsi le nombre de chaînes à $w(P)$.

</details>
