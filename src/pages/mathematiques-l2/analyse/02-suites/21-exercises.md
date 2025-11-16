---
id: a62339fa
type: exercises
order: 21
title: Séries Numériques - exercices (B)
tags:
  - séries numériques
  - convergence
  - critère de Cauchy
  - séries à termes positifs
  - intégrales généralisées
  - théorème d'Abel
createdAt: '2025-10-12T17:49:32.985Z'
level: pro
course: Analyse
courseId: 9c2d50b3
chapter: Séries Numériques
chapterId: c9bf30da
---
# Exercices "Séries Numériques" (B)

---

## Exercice 1

**Problème:** Soit la suite $(u_n)_{n \in \mathbb{N}}$ définie par $u_0 \in ]0, \pi[$ et la relation de récurrence $u_{n+1} = \ln(1 + \sin(u_n))$. Étudier la nature de la série $\sum u_n$.

<details>

<summary>Solution</summary>

**Méthode:**

L'approche consiste à d'abord étudier la convergence de la suite $(u_n)$ vers 0. Ensuite, nous chercherons un équivalent simple de $u_n$ en utilisant un développement limité de la fonction $f(x) = \ln(1 + \sin x)$ au voisinage de 0. Cet équivalent nous permettra de déterminer la nature de la série $\sum u_n$ par comparaison avec une série de Riemann.

**Étapes:**

1.  **Étude de la suite $(u_n)$:**

    La fonction $f(x) = \ln(1 + \sin x)$ est définie pour $\sin x > -1$, ce qui est toujours le cas. Pour $x \in ]0, \pi[$, $\sin x \in ]0, 1]$, donc $1+\sin x \in ]1, 2]$, et $f(x) = \ln(1+\sin x) \in ]0, \ln 2]$. L'intervalle $]0, \ln 2]$ est stable par $f$. Puisque $\ln 2 \approx 0.69 < \pi$, si $u_0 \in ]0, \pi[$, alors $u_1 \in ]0, \ln 2] \subset ]0, \pi[$. Par une récurrence immédiate, $u_n \in ]0, \ln 2]$ pour tout $n \ge 1$.

    De plus, pour $x \in ]0, \pi/2]$, on a $\sin x < x$. Comme $\ln(1+y) < y$ pour $y>0$, on a $u_{n+1} = \ln(1+\sin u_n) < \sin u_n < u_n$ pour $n \ge 1$. La suite $(u_n)_{n \ge 1}$ est donc strictement décroissante et minorée par 0. Elle converge donc vers une limite $L \in [0, \ln 2]$.

    La limite $L$ doit être un point fixe de $f$, donc $L = \ln(1+\sin L)$. La seule solution est $L=0$. Ainsi, $\lim_{n \to \infty} u_n = 0$.

2.  **Recherche d'un équivalent de $u_n$:**

    Puisque $u_n \to 0$, nous pouvons utiliser un développement limité de $f(x)$ au voisinage de 0.

    $\sin x = x - \frac{x^3}{6} + O(x^5)$

    $\ln(1+y) = y - \frac{y^2}{2} + O(y^3)$

    En composant, pour $y = \sin x$:

    $u_{n+1} = \ln(1 + \sin u_n) = (u_n - \frac{u_n^3}{6}) - \frac{1}{2}(u_n - \frac{u_n^3}{6})^2 + O(u_n^3)$

    $u_{n+1} = u_n - \frac{u_n^2}{2} - \frac{u_n^3}{6} + O(u_n^3) = u_n - \frac{1}{2}u_n^2 + O(u_n^3)$.

3.  **Utilisation du lemme de Césaro pour les équivalents:**

    Considérons la suite $v_n = u_n^{-\alpha} - (u_{n+1})^{-\alpha}$ pour un $\alpha > 0$ à déterminer.

    $u_{n+1}^{-\alpha} = (u_n - \frac{1}{2}u_n^2 + O(u_n^3))^{-\alpha} = u_n^{-\alpha} (1 - \frac{1}{2}u_n + O(u_n^2))^{-\alpha}$

    En utilisant le développement limité $(1+x)^\beta = 1 + \beta x + O(x^2)$:

    $u_{n+1}^{-\alpha} = u_n^{-\alpha} (1 + \frac{\alpha}{2}u_n + O(u_n^2)) = u_n^{-\alpha} + \frac{\alpha}{2} u_n^{1-\alpha} + O(u_n^{2-\alpha})$

    Donc, $u_n^{-\alpha} - u_{n+1}^{-\alpha} = -\frac{\alpha}{2} u_n^{1-\alpha} + O(u_n^{2-\alpha})$.

    Pour que cette différence tende vers une limite finie non nulle, il faut que l'exposant de $u_n$ soit 0, donc $1-\alpha = 0$, soit $\alpha=1$.

4.  **Application avec $\alpha=1$:**

    Pour $\alpha=1$, on a $\frac{1}{u_{n+1}} - \frac{1}{u_n} = \frac{1}{2} + O(u_n)$.

    Comme $u_n \to 0$, on a $\lim_{n\to\infty} (\frac{1}{u_{n+1}} - \frac{1}{u_n}) = \frac{1}{2}$.

    Par le théorème de sommation des équivalents (ou lemme de Césaro), on a $\sum_{k=0}^{n-1} (\frac{1}{u_{k+1}} - \frac{1}{u_k}) \sim \sum_{k=0}^{n-1} \frac{1}{2}$.

    La somme de gauche est télescopique : $\frac{1}{u_n} - \frac{1}{u_0} \sim \frac{n}{2}$.

    Puisque $\frac{1}{u_0}$ est une constante, $\frac{1}{u_n} \sim \frac{n}{2}$.

    D'où $u_n \sim \frac{2}{n}$.

5.  **Conclusion sur la nature de la série:**

    Le terme général $u_n$ est équivalent à $\frac{2}{n}$. Puisque la série harmonique $\sum \frac{1}{n}$ diverge, et que les séries sont à termes positifs, par le critère de comparaison par équivalents, la série $\sum u_n$ diverge.

**Réponse:** La série $\sum u_n$ est **divergente**.

</details>

---

## Exercice 2

**Problème:** Soit $(u_n)_{n \in \mathbb{N}}$ une suite de réels positifs, décroissante et telle que la série $\sum u_n$ converge. Démontrer que $\lim_{n \to \infty} n u_n = 0$.

<details>

<summary>Solution</summary>

**Méthode:**

La convergence de la série $\sum u_n$ implique que son reste d'ordre $n$, $r_n = \sum_{k=n+1}^{\infty} u_k$, tend vers 0. La décroissance de la suite $(u_n)$ permet de minorer ce reste en fonction de $u_n$. En combinant cela avec le critère de Cauchy, on montrera que $n u_n$ tend vers 0.

**Étapes:**

1.  **Utilisation du critère de Cauchy:**

    La série $\sum u_n$ converge, donc elle satisfait le critère de Cauchy. Pour tout $\varepsilon > 0$, il existe un rang $N \in \mathbb{N}$ tel que pour tout $q \ge p > N$, on ait $\sum_{k=p}^{q} u_k < \varepsilon$.

2.  **Première partie : Montrer que $\limsup (n u_n) = 0$**

    Soit $\varepsilon > 0$. Fixons $N$ comme ci-dessus. Pour tout $n > N$, choisissons $p=n$ et $q=2n$. On a:

    $$ \sum_{k=n+1}^{2n} u_k < \frac{\varepsilon}{2} $$

    Puisque la suite $(u_n)$ est décroissante, pour tout $k \in \{n+1, \dots, 2n\}$, on a $u_k \ge u_{2n}$.

    Donc, $\sum_{k=n+1}^{2n} u_k \ge \sum_{k=n+1}^{2n} u_{2n} = n u_{2n}$.

    On en déduit que $n u_{2n} < \frac{\varepsilon}{2}$, ce qui implique $2n u_{2n} < \varepsilon$ pour $n > N$.

    Ceci montre que la sous-suite des termes de rang pair $(2n u_{2n})$ tend vers 0.

3.  Pour les termes de rang impair, $2n+1 > 2n$, et comme $(u_n)$ est décroissante, $u_{2n+1} \le u_{2n}$.

    Donc, $(2n+1)u_{2n+1} \le (2n+1)u_{2n} = 2n u_{2n} + u_{2n}$.

    Comme $2n u_{2n} \to 0$ et $u_{2n} \to 0$ (car la série converge), on a $\lim_{n \to \infty} (2n+1)u_{2n+1} = 0$.

4.  Les deux sous-suites extraites $(k u_k)_{k \text{ pair}}$ et $(k u_k)_{k \text{ impair}}$ convergent vers 0.

    Soit $\varepsilon > 0$. Il existe $N_1$ tel que pour $2n > N_1$, $2n u_{2n} < \varepsilon$. Il existe $N_2$ tel que pour $2n+1 > N_2$, $(2n+1)u_{2n+1} < \varepsilon$.

    Pour tout entier $k > \max(N_1, N_2)$, $k u_k < \varepsilon$.

    Ceci prouve que la suite $(n u_n)$ converge vers 0.

**Réponse:** $\lim_{n \to \infty} n u_n = 0$

</details>

---

## Exercice 3

**Problème:** Soit $\sum u_n$ une série semi-convergente. Démontrer qu'il est possible de réarranger ses termes de sorte que la nouvelle série diverge vers $+\infty$.

<details>

<summary>Solution</summary>

**Méthode:**

Nous allons utiliser le fait que pour une série semi-convergente, les séries formées par ses termes positifs et par ses termes négatifs divergent toutes les deux. Nous construirons alors un réarrangement en prenant suffisamment de termes positifs pour dépasser un seuil, puis un seul terme négatif, et en répétant ce processus avec des seuils de plus en plus grands.

**Étapes:**

1.  **Divergence des séries des termes positifs et négatifs:**

    Soit $P$ l'ensemble des indices $n$ tels que $u_n \ge 0$ et $N$ l'ensemble des indices $n$ tels que $u_n < 0$. Définissons $p_n = u_n$ si $n \in P$ et 0 sinon, et $q_n = u_n$ si $n \in N$ et 0 sinon. On a $u_n = p_n + q_n$ et $|u_n| = p_n - q_n$.

    Si les séries $\sum p_n$ et $\sum q_n$ convergeaient, alors $\sum |u_n| = \sum p_n - \sum q_n$ convergerait, ce qui contredit la semi-convergence.

    Si une seule des deux divergeait, par exemple $\sum p_n$, alors $\sum u_n = \sum p_n + \sum q_n$ divergerait (car $\sum q_n$ converge ou diverge vers $-\infty$), ce qui contredit la convergence de $\sum u_n$.

    Donc, $\sum p_n$ doit diverger vers $+\infty$ et $\sum q_n$ doit diverger vers $-\infty$.

2.  **Construction du réarrangement:**

    Notons $(p_k')_{k \ge 0}$ la suite des termes positifs de $(u_n)$ dans leur ordre d'apparition, et $(q_k')_{k \ge 0}$ la suite des valeurs absolues des termes négatifs. Les séries $\sum p_k'$ et $\sum q_k'$ divergent vers $+\infty$.

    Nous allons construire une nouvelle série $\sum v_n$ par réarrangement.

    -   **Étape 1:** Puisque $\sum p_k'$ diverge vers $+\infty$, il existe un entier $n_1$ minimal tel que $S_1 = \sum_{k=0}^{n_1} p_k' > 1$. On pose les $n_1+1$ premiers termes de la série réarrangée comme étant $p_0', \dots, p_{n_1}'$.
    -   **Étape 2:** On ajoute le premier terme négatif (en valeur absolue), $-q_0'$. La somme partielle est $S_1 - q_0'$.
    -   **Étape 3:** Puisque la série des termes positifs restants $\sum_{k=n_1+1}^{\infty} p_k'$ diverge encore, il existe un entier $n_2$ minimal tel que $S_2 = (S_1 - q_0') + \sum_{k=n_1+1}^{n_2} p_k' > 2$. On ajoute les termes $p_{n_1+1}', \dots, p_{n_2}'$ à notre réarrangement.
    -   **Étape 4:** On ajoute le terme négatif suivant, $-q_1'$. La somme partielle est $S_2 - q_1'$.
    -   **Étape k (générale):** On continue ce processus. Après avoir ajouté $k$ termes négatifs, la somme partielle est $T_k$. On trouve un $n_{k+1}$ minimal tel que $T_k + \sum_{j=n_k+1}^{n_{k+1}} p_j' > k+1$. Puis on ajoute le terme négatif $-q_k'$.

3.  **Divergence de la série réarrangée:**

    Soit $(S_m^*)$ la suite des sommes partielles de la série réarrangée $\sum v_m$.

    Par construction, à la fin de chaque "bloc positif" (juste avant d'ajouter un terme négatif), la somme partielle est strictement supérieure à $k$, où $k$ est le numéro de l'étape. Soit $M_k$ l'indice du dernier terme positif ajouté à l'étape $k$. Alors $S_{M_k}^* > k$. La suite des sommes partielles contient donc une sous-suite $(S_{M_k}^*)$ qui tend vers $+\infty$.

4.  De plus, entre deux de ces pics, par exemple entre $S_{M_k}^*$ et $S_{M_{k+1}}^*$, on ne soustrait qu'un seul terme négatif, $-q_{k-1}'$. La somme partielle devient $S_{M_k}^* - q_{k-1}'$. Ensuite, on ajoute des termes positifs. La somme partielle ne fait qu'augmenter jusqu'à atteindre $S_{M_{k+1}}^*$. Le "creux" est donc $S_{M_k}^* - q_{k-1}'$. Comme $q_{k-1}' \to 0$ (car $\sum u_n$ converge, donc $u_n \to 0$), la différence entre le pic et le creux tend vers 0.

    Puisque la suite des pics $(S_{M_k}^*)$ tend vers $+\infty$, et que les sommes partielles entre les pics restent au-dessus de $S_{M_k}^* - q_{k-1}' \approx S_{M_k}^* > k$, la suite des sommes partielles $(S_m^*)$ diverge vers $+\infty$.

**Réponse:** La construction ci-dessus fournit un réarrangement des termes de $\sum u_n$ dont la série des sommes partielles diverge vers $+\infty$.

</details>

---

## Exercice 4

**Problème:** Étudier la nature de la série de terme général $u_n = \frac{(-1)^{\lfloor \sqrt{n} \rfloor}}{n}$ pour $n \ge 1$.

<details>

<summary>Solution</summary>

**Méthode:**

Cette série est une série alternée, mais le signe ne change pas à chaque terme. Le signe de $u_n$ est constant sur des blocs d'entiers. La stratégie est de regrouper les termes par blocs de signe constant (sommation par paquets) et d'étudier la série dont le terme général est la somme de chaque bloc. Nous montrerons que cette nouvelle série satisfait le critère des séries alternées.

**Étapes:**

1.  **Définition des paquets:**

    Le terme $(-1)^{\lfloor \sqrt{n} \rfloor}$ change de signe lorsque $\lfloor \sqrt{n} \rfloor$ passe d'un entier à un autre. Cela se produit lorsque $n$ est un carré parfait.

    Le $k$-ième bloc de termes de signe constant correspond aux indices $n$ tels que $\lfloor \sqrt{n} \rfloor = k$. C'est-à-dire pour $k^2 \le n < (k+1)^2$.

    Le signe de ces termes est $(-1)^k$.

    Le $k$-ième paquet est $V_k = \sum_{n=k^2}^{(k+1)^2-1} \frac{(-1)^k}{n}$.

2.  **Étude du terme général $V_k$:**

    $V_k = (-1)^k \sum_{n=k^2}^{(k+1)^2-1} \frac{1}{n}$.

    La série initiale $\sum_{n=1}^\infty u_n$ est de même nature que la série $\sum_{k=1}^\infty V_k$.

    Nous allons étudier la série $\sum V_k$ en utilisant le critère des séries alternées. Pour cela, nous devons analyser la suite $|V_k| = \sum_{n=k^2}^{(k+1)^2-1} \frac{1}{n}$.

3.  **Encadrement de $|V_k|$:**

    Le nombre de termes dans la somme de $|V_k|$ est $((k+1)^2-1) - k^2 + 1 = 2k+1$.

    On peut encadrer la somme en utilisant la monotonie de la fonction $x \mapsto 1/x$.

    $$ (2k+1) \frac{1}{(k+1)^2-1} \le |V_k| \le (2k+1) \frac{1}{k^2} $$

    $$ \frac{2k+1}{k^2+2k} \le |V_k| \le \frac{2k+1}{k^2} $$

    Les deux bornes sont équivalentes à $\frac{2}{k}$ lorsque $k \to \infty$.

    Donc, $|V_k| \sim \frac{2}{k}$ pour $k \to \infty$.

    Ceci montre que $\lim_{k \to \infty} V_k = 0$.

4.  **Monotonie de $|V_k|$:**

    Pour appliquer le critère des séries alternées, nous devons montrer que la suite $(|V_k|)_{k \ge 1}$ est décroissante à partir d'un certain rang.

    Comparons $|V_k|$ et $|V_{k+1}|$.

    $|V_k| = \sum_{n=k^2}^{(k+1)^2-1} \frac{1}{n}$ et $|V_{k+1}| = \sum_{n=(k+1)^2}^{(k+2)^2-1} \frac{1}{n}$.

    On peut comparer ces sommes aux intégrales associées.

    $\int_{k^2}^{(k+1)^2} \frac{dt}{t} \le |V_k| \le \frac{1}{k^2} + \int_{k^2}^{(k+1)^2-1} \frac{dt}{t}$.

    L'intégrale vaut $\ln((k+1)^2) - \ln(k^2) = 2 \ln(\frac{k+1}{k}) = 2 \ln(1+\frac{1}{k}) \sim \frac{2}{k}$.

    Soit $f(x) = \sum_{n=x^2}^{(x+1)^2-1} \frac{1}{n}$. Étudier la monotonie de $f(k)$ est complexe.
    
    Une autre approche :

    $|V_k| = \frac{1}{k^2} + \dots + \frac{1}{k^2+2k}$

    $|V_{k+1}| = \frac{1}{(k+1)^2} + \dots + \frac{1}{(k+1)^2+2(k+1)}$

    $|V_k| \approx \int_{k^2}^{(k+1)^2} \frac{dx}{x} = 2 \ln(\frac{k+1}{k})$.

    La fonction $x \mapsto 2 \ln(\frac{x+1}{x})$ est décroissante. Cela suggère que $(|V_k|)$ est décroissante.
    
    Montrons-le plus formellement. Soit $f(t)=1/t$.

    $|V_k| - |V_{k+1}| = \sum_{j=0}^{2k} \frac{1}{k^2+j} - \sum_{j=0}^{2k+2} \frac{1}{(k+1)^2+j}$.

    Pour $k$ grand, $|V_k| \approx 2/k$. La décroissance de $2/k$ est claire. Un développement asymptotique de $|V_k|$ est nécessaire.

    $|V_k| = \sum_{n=k^2}^{(k+1)^2-1} \frac{1}{n} = H_{(k+1)^2-1} - H_{k^2-1}$.

    Sachant que $H_m = \ln m + \gamma + \frac{1}{2m} + O(1/m^2)$,

    $|V_k| \approx (\ln((k+1)^2-1) + \gamma) - (\ln(k^2-1) + \gamma) = \ln(\frac{k^2+2k}{k^2-1}) = \ln(1+\frac{2k+1}{k^2-1})$.

    $\ln(1+x) = x - x^2/2 + \dots$

    $|V_k| \approx \frac{2k+1}{k^2-1} - \frac{1}{2}(\frac{2k+1}{k^2-1})^2 \approx \frac{2k}{k^2} = \frac{2}{k}$.

    Plus précisément, $\frac{2k+1}{k^2-1} = \frac{2k(1+1/2k)}{k^2(1-1/k^2)} = \frac{2}{k}(1+1/2k)(1+1/k^2) \approx \frac{2}{k}(1+1/2k)$.

    La fonction $k \mapsto \frac{2}{k}(1+\frac{1}{2k}) = \frac{2}{k} + \frac{1}{k^2}$ est décroissante pour $k$ assez grand.

    Donc la suite $(|V_k|)$ est décroissante à partir d'un certain rang.

5.  **Conclusion:**

    La série $\sum V_k$ est une série alternée. Son terme général $V_k$ tend vers 0 et la suite des valeurs absolues $(|V_k|)$ est décroissante (au moins à partir d'un certain rang). Par le critère des séries alternées, la série $\sum V_k$ converge. Par conséquent, la série initiale $\sum u_n$ converge.

**Réponse:** La série $\sum_{n \ge 1} \frac{(-1)^{\lfloor \sqrt{n} \rfloor}}{n}$ est **convergente**.

</details>

---

## Exercice 5

**Problème:** Démontrer le théorème de Mertens (version faible) :

Si la série $\sum u_n$ converge absolument vers $S$ et la série $\sum v_n$ converge (pas nécessairement absolument) vers $\sigma$, alors leur produit de Cauchy $\sum w_n$ (avec $w_n = \sum_{k=0}^n u_k v_{n-k}$) converge et sa somme est $S\sigma$.

<details>

<summary>Solution</summary>

**Méthode:**

Nous allons analyser la différence entre la somme partielle du produit de Cauchy, $\Pi_n = \sum_{k=0}^n w_k$, et le produit des sommes partielles $s_n \sigma$. Nous montrerons que cette différence tend vers zéro en utilisant la convergence absolue de $\sum u_n$ et la convergence simple de $\sum v_n$.

**Étapes:**

1.  **Expression des sommes partielles:**

    Soient $s_n = \sum_{k=0}^n u_k$, $\sigma_n = \sum_{k=0}^n v_k$, et $\Pi_n = \sum_{k=0}^n w_k$.

    Par hypothèse, $\lim_{n \to \infty} s_n = S$, $\lim_{n \to \infty} \sigma_n = \sigma$.

    L'expression de $\Pi_n$ est:

    $\Pi_n = \sum_{j=0}^n w_j = \sum_{j=0}^n \sum_{k=0}^j u_k v_{j-k}$.

    En changeant l'ordre de sommation (regroupement par $u_k$), on obtient:

    $\Pi_n = \sum_{k=0}^n u_k \sum_{j=k}^n v_{j-k} = \sum_{k=0}^n u_k (\sum_{i=0}^{n-k} v_i) = \sum_{k=0}^n u_k \sigma_{n-k}$.

2.  **Analyse de la différence $\Pi_n - S\sigma$:**

    Nous voulons montrer que $\Pi_n \to S\sigma$.

    $\Pi_n = \sum_{k=0}^n u_k \sigma_{n-k}$.

    Comme $\sigma_{n-k} \to \sigma$ quand $n \to \infty$ pour $k$ fixé, on peut penser à remplacer $\sigma_{n-k}$ par $\sigma$.

    $\Pi_n = \sum_{k=0}^n u_k (\sigma_{n-k} - \sigma) + \sum_{k=0}^n u_k \sigma = \sigma s_n + \sum_{k=0}^n u_k (\sigma_{n-k} - \sigma)$.

    Comme $\sigma s_n \to S\sigma$, il suffit de montrer que le terme $R_n = \sum_{k=0}^n u_k (\sigma_{n-k} - \sigma)$ tend vers 0.

3.  **Majoration de $R_n$:**

    Soit $\varepsilon > 0$.

    La suite $(\sigma_m - \sigma)$ converge vers 0. Elle est donc bornée. Soit $M$ un majorant de $|\sigma_m - \sigma|$ pour tout $m$.

    La série $\sum |u_k|$ converge. Soit $S_{abs} = \sum_{k=0}^\infty |u_k|$. Pour tout $\varepsilon > 0$, il existe $N_1 \in \mathbb{N}$ tel que pour $n \ge N_1$, $\sum_{k=n+1}^\infty |u_k| < \frac{\varepsilon}{2M}$.

    Aussi, comme $\sigma_m - \sigma \to 0$, il existe $N_2 \in \mathbb{N}$ tel que pour $m \ge N_2$, $|\sigma_m - \sigma| < \frac{\varepsilon}{2S_{abs}}$ (en supposant $S_{abs} \ne 0$).

4.  **Division de la somme $R_n$:**

    Pour $n > N_1 + N_2$, on coupe la somme $R_n$ en deux parties :

    $R_n = \sum_{k=0}^{N_1} u_k (\sigma_{n-k} - \sigma) + \sum_{k=N_1+1}^{n} u_k (\sigma_{n-k} - \sigma)$.

    Majorons la valeur absolue de chaque partie.

    -   **Première partie:** Pour $k \in \{0, \dots, N_1\}$, on a $n-k \ge n-N_1 > N_2$. Donc, $|\sigma_{n-k} - \sigma| < \frac{\varepsilon}{2S_{abs}}$.

        $\left| \sum_{k=0}^{N_1} u_k (\sigma_{n-k} - \sigma) \right| \le \sum_{k=0}^{N_1} |u_k| |\sigma_{n-k} - \sigma| < \sum_{k=0}^{N_1} |u_k| \frac{\varepsilon}{2S_{abs}} \le (\sum_{k=0}^{\infty} |u_k|) \frac{\varepsilon}{2S_{abs}} = \frac{\varepsilon}{2}$.

    -   **Deuxième partie:** Pour $k \in \{N_1+1, \dots, n\}$, on utilise la borne $M$.

        $\left| \sum_{k=N_1+1}^{n} u_k (\sigma_{n-k} - \sigma) \right| \le \sum_{k=N_1+1}^{n} |u_k| |\sigma_{n-k} - \sigma| \le M \sum_{k=N_1+1}^{n} |u_k| < M \frac{\varepsilon}{2M} = \frac{\varepsilon}{2}$.

5.  **Conclusion:**

    En utilisant l'inégalité triangulaire, pour $n > N_1 + N_2$:

    $|R_n| \le \left| \sum_{k=0}^{N_1} \dots \right| + \left| \sum_{k=N_1+1}^{n} \dots \right| < \frac{\varepsilon}{2} + \frac{\varepsilon}{2} = \varepsilon$.

    Ceci prouve que $\lim_{n \to \infty} R_n = 0$.

    Par conséquent, $\lim_{n \to \infty} \Pi_n = S\sigma$.

**Réponse:** Le produit de Cauchy $\sum w_n$ converge et sa somme est $S\sigma$.

</details>

---

## Exercice 6

**Problème:** Soit la série semi-convergente $\sum_{n=0}^\infty u_n$ avec $u_n = \frac{(-1)^n}{\sqrt{n+1}}$.

1.  Justifier brièvement la semi-convergence de la série.
2.  Calculer le terme général $w_n$ du produit de Cauchy de cette série avec elle-même.
3.  Démontrer que la série $\sum w_n$ diverge.

<details>

<summary>Solution</summary>

**Méthode:**

1.  La semi-convergence est établie en utilisant le critère des séries alternées pour la convergence et la comparaison avec une série de Riemann divergente pour la non-convergence absolue.
2.  Le terme général $w_n$ est calculé par la formule de convolution $w_n = \sum_{k=0}^n u_k u_{n-k}$.
3.  La divergence de $\sum w_n$ est montrée en prouvant que son terme général $w_n$ ne tend pas vers 0.

**Étapes:**

1.  **Semi-convergence de $\sum u_n$:**

    La série $\sum u_n = \sum \frac{(-1)^n}{\sqrt{n+1}}$ est une série alternée. La suite $a_n = \frac{1}{\sqrt{n+1}}$ est positive, décroissante et tend vers 0. D'après le critère spécial des séries alternées, la série converge.

    La série des valeurs absolues est $\sum |u_n| = \sum \frac{1}{\sqrt{n+1}}$. C'est une série de Riemann de la forme $\sum \frac{1}{(n+1)^{1/2}}$, avec $\alpha = 1/2 \le 1$, elle diverge donc.

    La série est convergente mais non absolument convergente, elle est donc semi-convergente.

2.  **Calcul de $w_n$:**

    Le terme général du produit de Cauchy est donné par:

    $$ w_n = \sum_{k=0}^{n} u_k u_{n-k} = \sum_{k=0}^{n} \frac{(-1)^k}{\sqrt{k+1}} \frac{(-1)^{n-k}}{\sqrt{n-k+1}} $$

    $$ w_n = (-1)^n \sum_{k=0}^{n} \frac{1}{\sqrt{k+1} \sqrt{n-k+1}} $$

3.  **Divergence de $\sum w_n$:**

    Nous allons montrer que $\lim_{n \to \infty} w_n \neq 0$. Pour cela, nous minorons $|w_n|$.

    $$ |w_n| = \sum_{k=0}^{n} \frac{1}{\sqrt{(k+1)(n-k+1)}} $$

    Utilisons l'inégalité arithmético-géométrique: pour $a, b > 0$, $\sqrt{ab} \le \frac{a+b}{2}$.

    Soit $a = k+1$ et $b = n-k+1$.

    $\sqrt{(k+1)(n-k+1)} \le \frac{(k+1) + (n-k+1)}{2} = \frac{n+2}{2}$.

    En passant à l'inverse, l'inégalité change de sens :

    $$ \frac{1}{\sqrt{(k+1)(n-k+1)}} \ge \frac{2}{n+2} $$

    Cette minoration est valable pour chaque terme de la somme. La somme comporte $n+1$ termes.

    $$ |w_n| = \sum_{k=0}^{n} \frac{1}{\sqrt{(k+1)(n-k+1)}} \ge \sum_{k=0}^{n} \frac{2}{n+2} = (n+1) \frac{2}{n+2} $$

    Maintenant, étudions la limite de ce minorant :

    $$ \lim_{n \to \infty} \frac{2(n+1)}{n+2} = \lim_{n \to \infty} \frac{2n(1+1/n)}{n(1+2/n)} = 2 $$

    Puisque $|w_n| \ge \frac{2(n+1)}{n+2}$ et que le minorant tend vers 2, la suite $(|w_n|)$ ne peut pas tendre vers 0. En particulier, $\liminf_{n \to \infty} |w_n| \ge 2$.

    Le terme général $w_n$ ne tend pas vers 0, donc la condition nécessaire de convergence n'est pas satisfaite. La série $\sum w_n$ diverge grossièrement.

**Réponse:** La série produit de Cauchy $\sum w_n$ est **divergente**.

</details>

---

## Exercice 7

**Problème:** Démontrer le critère de condensation de Cauchy.

Soit $(u_n)_{n \in \mathbb{N}^*}$ une suite de réels positifs, décroissante. Montrer que la série $\sum_{n=1}^\infty u_n$ converge si et seulement si la série $\sum_{k=0}^\infty 2^k u_{2^k}$ converge.

<details>

<summary>Solution</summary>

**Méthode:**

La preuve consiste à comparer les sommes partielles des deux séries. En regroupant les termes de la série $\sum u_n$ en blocs de longueurs $2^k$, et en utilisant la décroissance de la suite $(u_n)$, on peut encadrer la somme de chaque bloc par des multiples du terme général de la série "condensée" $\sum 2^k u_{2^k}$.

**Étapes:**

1.  **Notation et regroupement:**

    Soit $S_n = \sum_{j=1}^n u_j$ et $T_m = \sum_{k=0}^m 2^k u_{2^k}$. Ce sont des suites croissantes car les termes sont positifs. La convergence est donc équivalente au fait d'être majorée.

    On regroupe les termes de $\sum u_n$ en blocs dyadiques:

    $S_{2^{m+1}-1} = u_1 + (u_2+u_3) + (u_4+\dots+u_7) + \dots + (u_{2^m}+\dots+u_{2^{m+1}-1})$.

    Le $k$-ième bloc (pour $k \ge 1$) est $\sum_{j=2^k}^{2^{k+1}-1} u_j$. Il contient $2^k$ termes.

2.  **Première inégalité: $\sum u_n$ converge $\implies \sum 2^k u_{2^k}$ converge:**

    Supposons que $\sum u_n$ converge. Alors la suite $(S_n)$ est majorée.

    Considérons un bloc $\sum_{j=2^k}^{2^{k+1}-1} u_j$. Puisque $(u_n)$ est décroissante, chaque terme $u_j$ dans ce bloc est supérieur ou égal au dernier terme, $u_{2^{k+1}-1}$.

    Cette minoration n'est pas utile ici. Utilisons plutôt la majoration. Non, la minoration est la bonne.

    Soit le bloc $B_k = u_{2^k} + u_{2^k+1} + \dots + u_{2^{k+1}-1}$.

    Puisque $(u_n)$ est décroissante, $u_j \ge u_{2^{k+1}}$ pour $j < 2^{k+1}$.

    On a: $u_1 = u_1$

    $u_2+u_3 \ge u_4+u_4 = 2u_4$

    $u_4+u_5+u_6+u_7 \ge u_8+u_8+u_8+u_8 = 4u_8$

    En général, pour $k \ge 1$: $\sum_{j=2^k}^{2^{k+1}-1} u_j \ge (2^{k+1}-2^k) u_{2^{k+1}} = 2^k u_{2^{k+1}} = \frac{1}{2} (2^{k+1} u_{2^{k+1}})$.

    Sommons ces inégalités:

    $S_{2^{m+1}-1} = u_1 + \sum_{k=1}^m \sum_{j=2^k}^{2^{k+1}-1} u_j \ge u_1 + \frac{1}{2} \sum_{k=1}^m 2^{k+1} u_{2^{k+1}} = u_1 + \frac{1}{2} \sum_{p=2}^{m+1} 2^p u_{2^p}$.

    $S_{2^{m+1}-1} \ge u_1 + \frac{1}{2} (T_{m+1} - 2u_2 - u_1)$.

    Si $(S_n)$ est majorée, alors la suite extraite $(S_{2^{m+1}-1})$ l'est aussi. L'inégalité ci-dessus montre que la suite $(T_m)$ est majorée. Comme $(T_m)$ est croissante, elle converge. Donc $\sum 2^k u_{2^k}$ converge.

3.  **Deuxième inégalité: $\sum 2^k u_{2^k}$ converge $\implies \sum u_n$ converge:**

    Supposons que $\sum 2^k u_{2^k}$ converge. Alors la suite $(T_m)$ est majorée par une constante $M$.

    Reprenons les blocs. Puisque $(u_n)$ est décroissante, chaque terme $u_j$ dans le bloc $\sum_{j=2^k}^{2^{k+1}-1} u_j$ est inférieur ou égal au premier terme, $u_{2^k}$.

    $\sum_{j=2^k}^{2^{k+1}-1} u_j \le (2^{k+1}-2^k) u_{2^k} = 2^k u_{2^k}$.

    Soit $n \in \mathbb{N}^*$. Choisissons $m$ tel que $n < 2^{m+1}-1$. Alors

    $S_n \le S_{2^{m+1}-1} = u_1 + \sum_{k=1}^m (u_{2^k} + \dots + u_{2^{k+1}-1})$.

    $S_n \le u_1 + \sum_{k=1}^m \sum_{j=2^k}^{2^{k+1}-1} u_j \le u_1 + \sum_{k=1}^m 2^k u_{2^k} \le u_1 + T_m$.

    Non, il faut être plus précis.

    $S_{2^{m+1}-1} = u_1 + (u_2+u_3) + \dots + (u_{2^m} + \dots + u_{2^{m+1}-1})$

    $S_{2^{m+1}-1} \le u_1 + 2u_2 + 4u_4 + \dots + 2^m u_{2^m} = u_1 + T_m$.

    Puisque $(T_m)$ est majorée par $M$, $S_{2^{m+1}-1} \le u_1+M$.

    La suite des sommes partielles $(S_n)$ est croissante. La sous-suite $(S_{2^{m+1}-1})$ est majorée.

    Pour tout $n$, il existe $m$ tel que $n \le 2^{m+1}-1$. Alors $S_n \le S_{2^{m+1}-1} \le u_1+M$.

    La suite $(S_n)$ est croissante et majorée, donc elle converge. La série $\sum u_n$ converge.

4.  **Conclusion:**

    Nous avons montré les deux implications. La série $\sum u_n$ converge si et seulement si la série "condensée" $\sum 2^k u_{2^k}$ converge.

**Réponse:** La preuve établit l'équivalence de convergence entre les deux séries en encadrant les sommes partielles de l'une par celles de l'autre.

</details>

---

## Exercice 8

**Problème:** En utilisant le critère de condensation de Cauchy, déterminer la nature de la série de Bertrand $\sum_{n=2}^\infty \frac{1}{n (\ln n)^p}$ en fonction du paramètre réel $p$.

<details>

<summary>Solution</summary>

**Méthode:**

Le terme général $u_n = \frac{1}{n(\ln n)^p}$ est positif et la suite $(u_n)$ est décroissante pour $n \ge 2$. Nous pouvons donc appliquer le critère de condensation de Cauchy. Nous allons étudier la nature de la série condensée $\sum 2^k u_{2^k}$.

**Étapes:**

1.  **Vérification des hypothèses:**

    Soit $u_n = \frac{1}{n (\ln n)^p}$ pour $n \ge 2$.

    -   $u_n > 0$ est évident.
    -   Pour la décroissance, considérons la fonction $f(x) = x(\ln x)^p$. Sa dérivée est $f'(x) = (\ln x)^p + p(\ln x)^{p-1} = (\ln x)^{p-1}(\ln x + p)$. Pour $x$ assez grand (tel que $\ln x > -p$), $f'(x) > 0$. Donc $f(x)$ est croissante, et $u_n = 1/f(n)$ est décroissante pour $n$ assez grand. Les hypothèses du critère de condensation sont satisfaites.

2.  **Formation de la série condensée:**

    Le terme général de la série condensée est $v_k = 2^k u_{2^k}$.

    $$ v_k = 2^k \frac{1}{2^k (\ln(2^k))^p} = \frac{1}{(k \ln 2)^p} = \frac{1}{(\ln 2)^p} \frac{1}{k^p} $$

3.  **Analyse de la série condensée:**

    La série condensée est $\sum_{k=1}^\infty v_k = \sum_{k=1}^\infty \frac{1}{(\ln 2)^p} \frac{1}{k^p}$.

    C'est une série de Riemann multipliée par une constante $\frac{1}{(\ln 2)^p}$. Sa nature est la même que celle de la série de Riemann $\sum \frac{1}{k^p}$.

    On sait que la série de Riemann $\sum \frac{1}{k^p}$ converge si et seulement si $p > 1$.

4.  **Conclusion par le critère de condensation:**

    D'après le critère de condensation de Cauchy, la série de Bertrand $\sum \frac{1}{n (\ln n)^p}$ a la même nature que la série condensée $\sum v_k$.

    Par conséquent :

    -   Si $p > 1$, la série condensée converge, donc la série de Bertrand converge.
    -   Si $p \le 1$, la série condensée diverge, donc la série de Bertrand diverge.

**Réponse:** La série de Bertrand $\sum_{n=2}^\infty \frac{1}{n (\ln n)^p}$ converge si et seulement si $p > 1$.

</details>

---

## Exercice 9

**Problème:** Soit $(u_n)_{n \in \mathbb{N}}$ une suite à termes strictement positifs. Démontrer les inégalités suivantes liant les limites supérieures et inférieures des critères de Cauchy et de d'Alembert :

$$ \liminf_{n \to \infty} \frac{u_{n+1}}{u_n} \le \liminf_{n \to \infty} (u_n)^{1/n} \le \limsup_{n \to \infty} (u_n)^{1/n} \le \limsup_{n \to \infty} \frac{u_{n+1}}{u_n} $$

<details>

<summary>Solution</summary>

**Méthode:**

La preuve repose sur des manipulations d'inégalités et des passages à la limite. Nous allons démontrer l'inégalité de droite $\limsup (u_n)^{1/n} \le \limsup \frac{u_{n+1}}{u_n}$. La première inégalité se démontre de manière analogue ou en l'appliquant à la suite $1/u_n$. L'inégalité du milieu est triviale par définition de liminf et limsup.

**Étapes:**

1.  **Démonstration de $\limsup (u_n)^{1/n} \le \limsup \frac{u_{n+1}}{u_n}$:**

    Soit $L = \limsup_{n \to \infty} \frac{u_{n+1}}{u_n}$. Si $L = +\infty$, l'inégalité est triviale. Supposons $L \in \mathbb{R}$.

    Par définition de la limite supérieure, pour tout $\varepsilon > 0$, il existe un rang $N \in \mathbb{N}$ tel que pour tout $n \ge N$:

    $$ \frac{u_{n+1}}{u_n} \le L + \varepsilon $$

    Écrivons cette inégalité pour les rangs de $N$ à $n-1$ (où $n > N$):

    $u_{N+1} \le u_N (L+\varepsilon)$

    $u_{N+2} \le u_{N+1} (L+\varepsilon) \le u_N (L+\varepsilon)^2$

    ...

    $u_n \le u_{n-1} (L+\varepsilon) \le \dots \le u_N (L+\varepsilon)^{n-N}$.

    On peut réécrire cette inégalité comme $u_n \le C (L+\varepsilon)^n$, où $C = u_N (L+\varepsilon)^{-N}$ est une constante positive qui ne dépend que de $N$ (et $\varepsilon$), pas de $n$.

2.  Prenons la racine $n$-ième de l'inégalité précédente:

    $$ (u_n)^{1/n} \le (C (L+\varepsilon)^n)^{1/n} = C^{1/n} (L+\varepsilon) $$

    Passons maintenant à la limite supérieure lorsque $n \to \infty$. On sait que $\lim_{n \to \infty} C^{1/n} = 1$.

    $$ \limsup_{n \to \infty} (u_n)^{1/n} \le \limsup_{n \to \infty} (C^{1/n} (L+\varepsilon)) = (L+\varepsilon) \lim_{n \to \infty} C^{1/n} = L+\varepsilon $$

    Cette inégalité, $\limsup (u_n)^{1/n} \le L + \varepsilon$, est vraie pour tout $\varepsilon > 0$. On peut donc faire tendre $\varepsilon$ vers 0 pour obtenir:

    $$ \limsup_{n \to \infty} (u_n)^{1/n} \le L = \limsup_{n \to \infty} \frac{u_{n+1}}{u_n} $$

3.  **Démonstration de $\liminf \frac{u_{n+1}}{u_n} \le \liminf (u_n)^{1/n}$:**

    Soit $l = \liminf_{n \to \infty} \frac{u_{n+1}}{u_n}$. Si $l=0$, l'inégalité est triviale. Supposons $l > 0$.

    Par définition de la limite inférieure, pour tout $\varepsilon \in ]0, l[$, il existe un rang $N$ tel que pour tout $n \ge N$:

    $$ \frac{u_{n+1}}{u_n} \ge l - \varepsilon $$

    Par un raisonnement similaire au précédent, pour $n > N$:

    $u_n \ge u_N (l-\varepsilon)^{n-N} = (u_N (l-\varepsilon)^{-N}) (l-\varepsilon)^n = C' (l-\varepsilon)^n$.

    En prenant la racine $n$-ième:

    $(u_n)^{1/n} \ge (C')^{1/n} (l-\varepsilon)$.

    En passant à la limite inférieure:

    $\liminf_{n \to \infty} (u_n)^{1/n} \ge l-\varepsilon$.

    Ceci étant vrai pour tout $\varepsilon \in ]0, l[$, on conclut que:

    $$ \liminf_{n \to \infty} (u_n)^{1/n} \ge l = \liminf_{n \to \infty} \frac{u_{n+1}}{u_n} $$

4.  **Inégalité du milieu:**

    Par définition, pour toute suite bornée $(a_n)$, $\liminf a_n \le \limsup a_n$. En appliquant cela à la suite $a_n = (u_n)^{1/n}$, on obtient directement:

    $$ \liminf_{n \to \infty} (u_n)^{1/n} \le \limsup_{n \to \infty} (u_n)^{1/n} $$

5.  **Conclusion:**

    En combinant les résultats des étapes 2, 3 et 4, on obtient la chaîne d'inégalités demandée.

**Réponse:** Les inégalités sont prouvées par des manipulations des définitions de `limsup` et `liminf` et des passages à la limite.

$$ \liminf_{n \to \infty} \frac{u_{n+1}}{u_n} \le \liminf_{n \to \infty} (u_n)^{1/n} \le \limsup_{n \to \infty} (u_n)^{1/n} \le \limsup_{n \to \infty} \frac{u_{n+1}}{u_n} $$

</details>

---

## Exercice 10

**Problème:** Démontrer le critère de Raabe-Duhamel.

Soit $\sum u_n$ une série à termes strictement positifs. On suppose que le rapport $\frac{u_{n+1}}{u_n}$ admet un développement asymptotique de la forme :

$$ \frac{u_{n+1}}{u_n} = 1 - \frac{\alpha}{n} + O\left(\frac{1}{n^2}\right) $$

où $\alpha$ est un réel. Montrer que si $\alpha > 1$, la série $\sum u_n$ converge, et si $\alpha < 1$, la série $\sum u_n$ diverge.

<details>

<summary>Solution</summary>

**Méthode:**

La méthode consiste à comparer le logarithme du terme général $u_n$ avec le logarithme du terme général d'une série de Riemann. En utilisant le développement limité de $\ln(1+x)$, on transformera la relation de récurrence sur le rapport en une relation sur $\ln(u_{n+1}) - \ln(u_n)$, qui pourra être comparée à $\ln((n+1)^{-\beta}) - \ln(n^{-\beta})$ pour un $\beta$ bien choisi.

**Étapes:**

1.  **Transformation logarithmique:**

    On part du développement asymptotique : $\frac{u_{n+1}}{u_n} = 1 - \frac{\alpha}{n} + O(\frac{1}{n^2})$.

    Prenons le logarithme :

    $\ln\left(\frac{u_{n+1}}{u_n}\right) = \ln\left(1 - \frac{\alpha}{n} + O(\frac{1}{n^2})\right)$.

    En utilisant $\ln(1+x) = x - \frac{x^2}{2} + O(x^3)$, avec $x = -\frac{\alpha}{n} + O(\frac{1}{n^2})$, on obtient :

    $\ln(u_{n+1}) - \ln(u_n) = -\frac{\alpha}{n} + O(\frac{1}{n^2})$.

2.  **Comparaison avec une série de Riemann:**

    Considérons la série de Riemann $\sum v_n$ avec $v_n = \frac{1}{n^\beta}$ pour un $\beta$ à choisir.

    Pour cette série de comparaison, calculons la même différence logarithmique :

    $\ln(v_{n+1}) - \ln(v_n) = \ln\left(\frac{1}{(n+1)^\beta}\right) - \ln\left(\frac{1}{n^\beta}\right) = -\beta (\ln(n+1) - \ln(n))$

    $= -\beta \ln\left(\frac{n+1}{n}\right) = -\beta \ln\left(1+\frac{1}{n}\right) = -\beta \left(\frac{1}{n} - \frac{1}{2n^2} + O(\frac{1}{n^3})\right) = -\frac{\beta}{n} + \frac{\beta}{2n^2} + O(\frac{1}{n^3})$.

3.  **Construction d'une nouvelle série:**

    Considérons la série de terme général $w_n = \ln(u_n) - \ln(v_n) = \ln(n^\beta u_n)$.

    Alors, $w_{n+1} - w_n = (\ln(u_{n+1}) - \ln(u_n)) - (\ln(v_{n+1}) - \ln(v_n))$.

    $w_{n+1} - w_n = \left(-\frac{\alpha}{n} + O(\frac{1}{n^2})\right) - \left(-\frac{\beta}{n} + O(\frac{1}{n^2})\right) = \frac{\beta - \alpha}{n} + O(\frac{1}{n^2})$.

4.  **Cas $\alpha > 1$:**

    Choisissons $\beta$ tel que $1 < \beta < \alpha$. Alors $\beta - \alpha < 0$.

    Dans ce cas, $w_{n+1} - w_n \sim \frac{\beta-\alpha}{n} < 0$ pour $n$ grand.

    Cela ne nous aide pas directement. Reprenons la comparaison.

    Considérons $w_n = \ln(u_n) + \beta \ln(n)$.

    $w_{n+1} - w_n = (\ln u_{n+1} - \ln u_n) + \beta(\ln(n+1)-\ln n)$

    $w_{n+1} - w_n = (-\frac{\alpha}{n} + O(\frac{1}{n^2})) + \beta(\frac{1}{n} - \frac{1}{2n^2} + O(\frac{1}{n^3})) = \frac{\beta-\alpha}{n} + O(\frac{1}{n^2})$.

    Puisque $\beta - \alpha < 0$, le terme $\frac{\beta-\alpha}{n}$ est négatif. Pour $n$ assez grand, $w_{n+1} - w_n < 0$.

    Cela signifie que la suite $(w_n)$ est décroissante à partir d'un certain rang.

    Si elle converge vers une limite finie $L$, alors $\ln(n^\beta u_n) \to L$, ce qui implique $n^\beta u_n \to e^L$. Donc $u_n \sim \frac{e^L}{n^\beta}$.

    Comme $\beta > 1$, la série de Riemann $\sum \frac{1}{n^\beta}$ converge, et par comparaison, $\sum u_n$ converge.

    Si $(w_n)$ diverge vers $-\infty$, alors $n^\beta u_n \to 0$. On peut écrire $u_n = o(\frac{1}{n^\beta})$. Comme $\beta > 1$, la convergence de $\sum \frac{1}{n^\beta}$ implique celle de $\sum u_n$.

5.  **Cas $\alpha < 1$:**

    Choisissons $\beta$ tel que $\alpha < \beta < 1$. Alors $\beta - \alpha > 0$.

    Dans ce cas, $w_{n+1} - w_n = \frac{\beta-\alpha}{n} + O(\frac{1}{n^2}) > 0$ pour $n$ assez grand.

    La suite $w_n = \ln(n^\beta u_n)$ est donc croissante à partir d'un certain rang.

    Elle converge vers une limite $L \in \mathbb{R} \cup \{+\infty\}$.

    Dans tous les cas, pour $n$ grand, $w_n \ge w_{N_0}$, donc $\ln(n^\beta u_n) \ge w_{N_0}$, ce qui implique $n^\beta u_n \ge e^{w_{N_0}} = C > 0$.

    On a donc $u_n \ge \frac{C}{n^\beta}$.

    Comme $\beta < 1$, la série de Riemann $\sum \frac{1}{n^\beta}$ diverge. Par comparaison, la série $\sum u_n$ diverge.

**Réponse:**

- Si $\alpha > 1$, la série $\sum u_n$ **converge**.
- Si $\alpha < 1$, la série $\sum u_n$ **diverge**.

(Le cas $\alpha=1$ nécessite un développement d'ordre supérieur et mène aux critères de Bertrand).

</details>
