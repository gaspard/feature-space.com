---
id: 6ca1e8c2
type: exercises
order: 11
title: Séries Numériques (suite) - exercices (A)
tags:
  - séries numériques
  - convergence
  - critère de Cauchy
  - séries à termes positifs
  - intégrales généralisées
  - théorème d'Abel
createdAt: '2025-10-12T17:44:18.176Z'
level: regular
course: Analyse
courseId: 9c2d50b3
chapter: Séries Numériques (suite)
chapterId: c9bf30da
---
# Exercices "Séries Numériques (suite)" (A)

## Exercice 1

**Problème :** Étudier la convergence et calculer la valeur de l'intégrale généralisée suivante :

$$ \int_1^{+\infty} \frac{1}{x \sqrt{x}} dx $$

<details>

<summary>Solution</summary>

**Méthode :** L'intégrale est généralisée en $+\infty$ car l'intervalle d'intégration n'est pas borné. Pour l'étudier, on revient à la définition en utilisant une limite. On calcule d'abord l'intégrale sur un intervalle borné $[1, b]$, puis on fait tendre $b$ vers $+\infty$.

**Étapes :**

1.  On réécrit la fonction pour faciliter le calcul de la primitive :

    $$ \frac{1}{x \sqrt{x}} = \frac{1}{x^{3/2}} = x^{-3/2} $$

2.  On calcule l'intégrale sur l'intervalle $[1, b]$ pour un réel $b > 1$ :

    $$ \int_1^b x^{-3/2} dx $$

    Une primitive de $x^n$ est $\frac{x^{n+1}}{n+1}$. Ici, $n = -3/2$, donc $n+1 = -1/2$.

    $$ \int_1^b x^{-3/2} dx = \left[ \frac{x^{-1/2}}{-1/2} \right]_1^b = \left[ -2x^{-1/2} \right]_1^b = \left[ -\frac{2}{\sqrt{x}} \right]_1^b $$

3.  On évalue l'expression entre les bornes $1$ et $b$ :

    $$ \left( -\frac{2}{\sqrt{b}} \right) - \left( -\frac{2}{\sqrt{1}} \right) = 2 - \frac{2}{\sqrt{b}} $$

4.  On calcule la limite de ce résultat lorsque $b \to +\infty$ :

    $$ \lim_{b \to +\infty} \left( 2 - \frac{2}{\sqrt{b}} \right) $$

    Comme $\lim_{b \to +\infty} \sqrt{b} = +\infty$, on a $\lim_{b \to +\infty} \frac{2}{\sqrt{b}} = 0$.

    $$ \lim_{b \to +\infty} \left( 2 - \frac{2}{\sqrt{b}} \right) = 2 - 0 = 2 $$

5.  La limite est un nombre réel fini. On conclut que l'intégrale converge et que sa valeur est 2.

**Réponse :**

L'intégrale converge et sa valeur est $\int_1^{+\infty} \frac{1}{x \sqrt{x}} dx = 2$.

</details>

## Exercice 2

**Problème :** Étudier la convergence et calculer la valeur de l'intégrale généralisée suivante :

$$ \int_0^8 \frac{1}{\sqrt[3]{x}} dx $$

<details>

<summary>Solution</summary>

**Méthode :** L'intégrale est généralisée en $0$ car la fonction $f(x) = \frac{1}{\sqrt[3]{x}}$ n'est pas définie en $x=0$ et tend vers l'infini lorsque $x \to 0^+$. On revient à la définition en intégrant sur $[\varepsilon, 8]$ puis en faisant tendre $\varepsilon$ vers $0^+$.

**Étapes :**

1.  On réécrit la fonction pour trouver facilement une primitive :

    $$ \frac{1}{\sqrt[3]{x}} = \frac{1}{x^{1/3}} = x^{-1/3} $$

2.  On calcule l'intégrale sur l'intervalle $[\varepsilon, 8]$ pour un réel $\varepsilon > 0$ et $\varepsilon < 8$ :

    $$ \int_\varepsilon^8 x^{-1/3} dx $$

    Une primitive de $x^n$ est $\frac{x^{n+1}}{n+1}$. Ici, $n = -1/3$, donc $n+1 = 2/3$.

    $$ \int_\varepsilon^8 x^{-1/3} dx = \left[ \frac{x^{2/3}}{2/3} \right]_\varepsilon^8 = \left[ \frac{3}{2} x^{2/3} \right]_\varepsilon^8 = \left[ \frac{3}{2} (\sqrt[3]{x})^2 \right]_\varepsilon^8 $$

3.  On évalue l'expression entre les bornes $\varepsilon$ et $8$ :

    $$ \left( \frac{3}{2} (\sqrt[3]{8})^2 \right) - \left( \frac{3}{2} (\sqrt[3]{\varepsilon})^2 \right) = \frac{3}{2} (2)^2 - \frac{3}{2} \varepsilon^{2/3} = \frac{3}{2} \times 4 - \frac{3}{2} \varepsilon^{2/3} = 6 - \frac{3}{2} \varepsilon^{2/3} $$

4.  On calcule la limite de ce résultat lorsque $\varepsilon \to 0^+$ :

    $$ \lim_{\varepsilon \to 0^+} \left( 6 - \frac{3}{2} \varepsilon^{2/3} \right) $$

    Comme $\lim_{\varepsilon \to 0^+} \varepsilon^{2/3} = 0$, on a :

    $$ \lim_{\varepsilon \to 0^+} \left( 6 - \frac{3}{2} \varepsilon^{2/3} \right) = 6 - 0 = 6 $$

5.  La limite est finie. On conclut que l'intégrale converge et que sa valeur est 6.

**Réponse :**

L'intégrale converge et sa valeur est $\int_0^8 \frac{1}{\sqrt[3]{x}} dx = 6$.

</details>

## Exercice 3

**Problème :** En utilisant le critère de comparaison série-intégrale, déterminer la nature de la série suivante :

$$ \sum_{n=2}^\infty \frac{1}{n \ln(n)} $$

<details>

<summary>Solution</summary>

**Méthode :** On utilise le critère de comparaison série-intégrale. Pour cela, on associe à la série la fonction $f(t) = \frac{1}{t \ln(t)}$ et on vérifie que cette fonction est continue, positive et décroissante sur $[2, +\infty[$. Si c'est le cas, la série et l'intégrale $\int_2^{+\infty} f(t) dt$ sont de même nature.

**Étapes :**

1.  **Vérification des hypothèses :**

    Soit $f(t) = \frac{1}{t \ln(t)}$ pour $t \in [2, +\infty[$.

    -   **Continuité :** $t$ et $\ln(t)$ sont continues sur $[2, +\infty[$, et $t \ln(t)$ ne s'annule pas. Donc $f$ est continue.
    -   **Positivité :** Pour $t \ge 2$, $t > 0$ et $\ln(t) > \ln(2) > 0$. Donc $f(t) > 0$.
    -   **Décroissance :** On peut étudier le signe de la dérivée $f'(t)$. $f(t)$ est le produit de deux fonctions positives et décroissantes, $1/t$ et $1/\ln(t)$, donc $f(t)$ est décroissante. Autre méthode :

        $$ f'(t) = -\frac{\ln(t) + t \cdot (1/t)}{(t \ln(t))^2} = -\frac{\ln(t) + 1}{(t \ln(t))^2} $$

        Pour $t \ge 2$, $\ln(t)+1 > 0$, donc $f'(t) < 0$. La fonction $f$ est bien décroissante.

2.  **Application du critère :**

    Les trois hypothèses sont vérifiées. La série $\sum_{n=2}^\infty \frac{1}{n \ln(n)}$ a donc la même nature que l'intégrale généralisée $\int_2^{+\infty} \frac{1}{t \ln(t)} dt$.

3.  **Calcul de l'intégrale :**

    On calcule $\int_2^b \frac{1}{t \ln(t)} dt$ pour $b > 2$. On reconnaît une forme $\frac{u'(t)}{u(t)}$ avec $u(t) = \ln(t)$.

    $$ \int_2^b \frac{1/t}{\ln(t)} dt = \left[ \ln(\ln(t)) \right]_2^b = \ln(\ln(b)) - \ln(\ln(2)) $$

4.  **Étude de la limite :**

    On cherche la limite quand $b \to +\infty$ :

    $$ \lim_{b \to +\infty} \left( \ln(\ln(b)) - \ln(\ln(2)) \right) $$

    Comme $\lim_{b \to +\infty} \ln(b) = +\infty$, on a $\lim_{b \to +\infty} \ln(\ln(b)) = +\infty$.

    La limite est infinie, donc l'intégrale diverge.

5.  **Conclusion :**

    Puisque l'intégrale diverge, la série de même nature diverge également.

**Réponse :**

La série $\sum_{n=2}^\infty \frac{1}{n \ln(n)}$ est **divergente**.

</details>

## Exercice 4

**Problème :** Soit la série de Riemann convergente $S = \sum_{k=1}^\infty \frac{1}{k^3}$. Utiliser le critère de comparaison série-intégrale pour donner un encadrement du reste d'ordre 5, noté $R_5 = \sum_{k=6}^\infty \frac{1}{k^3}$.

<details>

<summary>Solution</summary>

**Méthode :** Pour une série $\sum f(n)$ où $f$ est une fonction continue, positive et décroissante, le reste d'ordre $n$, $R_n = \sum_{k=n+1}^\infty f(k)$, est encadré par :

$$ \int_{n+1}^{+\infty} f(t)dt \le R_n \le \int_n^{+\infty} f(t)dt $$

Ici, $f(t) = 1/t^3$ et $n=5$.

**Étapes :**

1.  **Vérification des hypothèses :**

    La fonction $f(t) = 1/t^3$ est bien continue, positive et décroissante sur $[1, +\infty[$. Le critère s'applique.

2.  **Application de la formule d'encadrement :**

    Pour $n=5$, l'encadrement du reste $R_5$ est :

    $$ \int_{6}^{+\infty} \frac{1}{t^3} dt \le R_5 \le \int_{5}^{+\infty} \frac{1}{t^3} dt $$

3.  **Calcul des intégrales :**

    Calculons d'abord l'intégrale généralisée $\int_a^{+\infty} \frac{1}{t^3} dt$ pour $a > 0$.

    $$ \int_a^{+\infty} t^{-3} dt = \lim_{b \to +\infty} \int_a^b t^{-3} dt = \lim_{b \to +\infty} \left[ \frac{t^{-2}}{-2} \right]_a^b = \lim_{b \to +\infty} \left[ -\frac{1}{2t^2} \right]_a^b $$

    $$ = \lim_{b \to +\infty} \left( -\frac{1}{2b^2} - \left(-\frac{1}{2a^2}\right) \right) = 0 + \frac{1}{2a^2} = \frac{1}{2a^2} $$

4.  **Application aux bornes de l'encadrement :**
    -   Pour la borne inférieure, $a=6$ :

        $$ \int_{6}^{+\infty} \frac{1}{t^3} dt = \frac{1}{2 \cdot 6^2} = \frac{1}{2 \cdot 36} = \frac{1}{72} $$

    -   Pour la borne supérieure, $a=5$ :

        $$ \int_{5}^{+\infty} \frac{1}{t^3} dt = \frac{1}{2 \cdot 5^2} = \frac{1}{2 \cdot 25} = \frac{1}{50} $$

5.  **Conclusion :**

    On obtient l'encadrement suivant pour le reste $R_5$ :

    $$ \frac{1}{72} \le R_5 \le \frac{1}{50} $$

    En valeurs approchées : $0.0138... \le R_5 \le 0.02$.

**Réponse :**

L'encadrement du reste d'ordre 5 est : $\frac{1}{72} \le R_5 \le \frac{1}{50}$.

</details>

## Exercice 5

**Problème :** Déterminer la nature de la série de terme général :

$$ u_n = \frac{\sin(1/n)}{1 - \cos(1/n)} $$

<details>

<summary>Solution</summary>

**Méthode :** Le terme général $u_n$ est positif pour $n \ge 1$. On peut donc utiliser le critère des équivalents. On cherche un équivalent simple de $u_n$ quand $n \to +\infty$ en utilisant les équivalents usuels des fonctions trigonométriques au voisinage de 0.

**Étapes :**

1.  **Analyse du terme général :**

    Quand $n \to +\infty$, $1/n \to 0$. On peut donc utiliser les équivalents usuels au voisinage de 0.

2.  **Recherche des équivalents du numérateur et du dénominateur :**

    On utilise les équivalents connus :

    -   $\sin(x) \sim x$ quand $x \to 0$.
    -   $1 - \cos(x) \sim \frac{x^2}{2}$ quand $x \to 0$.

    En posant $x = 1/n$, on obtient :

    -   Numérateur : $\sin(1/n) \sim \frac{1}{n}$
    -   Dénominateur : $1 - \cos(1/n) \sim \frac{(1/n)^2}{2} = \frac{1}{2n^2}$

3.  **Déduction de l'équivalent de $u_n$ :**

    On peut faire le quotient des équivalents :

    $$ u_n \sim \frac{1/n}{1/(2n^2)} = \frac{1}{n} \cdot 2n^2 = 2n $$

4.  **Comparaison à une série de référence :**

    Le terme général $u_n$ est équivalent à $v_n = 2n$. On étudie la nature de la série $\sum v_n = \sum 2n$.

    $$ \lim_{n \to +\infty} v_n = \lim_{n \to +\infty} 2n = +\infty $$

    Le terme général de la série $\sum v_n$ ne tend pas vers 0, donc la série diverge grossièrement.

5.  **Conclusion :**

    Comme $u_n \sim 2n$ et que les termes sont positifs, les séries $\sum u_n$ et $\sum 2n$ sont de même nature. Puisque $\sum 2n$ diverge, la série $\sum u_n$ diverge également.

**Réponse :**

La série $\sum u_n$ est **divergente**.

</details>

## Exercice 6

**Problème :** Déterminer la nature de la série de terme général :

$$ u_n = n^2 \left( e^{1/n^3} - 1 \right) $$

<details>

<summary>Solution</summary>

**Méthode :** Les termes de la série sont positifs. On utilise le critère des équivalents. On cherche un équivalent de $u_n$ en utilisant le développement limité ou l'équivalent usuel de $e^x - 1$ au voisinage de 0.

**Étapes :**

1.  **Analyse du terme général :**

    Quand $n \to +\infty$, $1/n^3 \to 0$. On peut donc utiliser des équivalents au voisinage de 0.

2.  **Recherche d'un équivalent :**

    On utilise l'équivalent usuel $e^x - 1 \sim x$ quand $x \to 0$.

    En posant $x = 1/n^3$, on a :

    $$ e^{1/n^3} - 1 \sim \frac{1}{n^3} $$

3.  **Déduction de l'équivalent de $u_n$ :**

    On multiplie par $n^2$ :

    $$ u_n = n^2 \left( e^{1/n^3} - 1 \right) \sim n^2 \cdot \frac{1}{n^3} = \frac{1}{n} $$

4.  **Comparaison à une série de référence :**

    Le terme général $u_n$ est équivalent à $v_n = \frac{1}{n}$.

    La série $\sum v_n = \sum \frac{1}{n}$ est la série harmonique. C'est une série de Riemann avec $\alpha=1$, elle est donc divergente.

5.  **Conclusion :**

    Comme $u_n \sim \frac{1}{n}$ et que les termes sont positifs, la série $\sum u_n$ est de même nature que la série harmonique. Elle est donc divergente.

**Réponse :**

La série $\sum u_n$ est **divergente**.

</details>

## Exercice 7

**Problème :** Justifier la convergence de la série suivante :

$$ \sum_{n=2}^\infty \frac{(-1)^n}{\ln(n)} $$

<details>

<summary>Solution</summary>

**Méthode :** La série est alternée. On applique le critère des séries alternées. Il faut vérifier deux conditions sur le terme général $b_n$ (sans le $(-1)^n$) : la suite $(b_n)$ doit être positive, décroissante et tendre vers 0.

**Étapes :**

1.  **Identification de la série :**

    La série est de la forme $\sum (-1)^n b_n$ avec $b_n = \frac{1}{\ln(n)}$ pour $n \ge 2$.

2.  **Vérification des conditions du critère :**
    -   **Positivité :** Pour $n \ge 2$, $\ln(n) > \ln(2) > 0$, donc $b_n = \frac{1}{\ln(n)}$ est bien positif.
    -   **Limite nulle :**

        $$ \lim_{n \to +\infty} b_n = \lim_{n \to +\infty} \frac{1}{\ln(n)} $$

        Comme $\lim_{n \to +\infty} \ln(n) = +\infty$, on a $\lim_{n \to +\infty} b_n = 0$.

    -   **Décroissance :** On doit montrer que $b_{n+1} \le b_n$.

        La fonction $t \mapsto \ln(t)$ est croissante sur $[2, +\infty[$.

        Donc, $\ln(n+1) > \ln(n)$.

        En passant à l'inverse (les termes sont positifs), on change le sens de l'inégalité :

        $$ \frac{1}{\ln(n+1)} < \frac{1}{\ln(n)} $$

        Ce qui signifie $b_{n+1} < b_n$. La suite $(b_n)$ est donc strictement décroissante.

3.  **Conclusion :**

    Les deux conditions du critère des séries alternées (décroissance de $b_n$ vers 0) sont satisfaites. Par conséquent, la série converge.

**Réponse :**

La série $\sum_{n=2}^\infty \frac{(-1)^n}{\ln(n)}$ est **convergente** d'après le critère des séries alternées.

</details>

## Exercice 8

**Problème :** On considère la somme $S = \sum_{n=1}^\infty \frac{(-1)^{n+1}}{n^4}$. Combien de termes faut-il additionner au minimum pour obtenir une valeur approchée de $S$ avec une erreur garantie inférieure à $10^{-3}$ ?

<details>

<summary>Solution</summary>

**Méthode :** La série est une série alternée qui vérifie les conditions du critère (la suite $b_n=1/n^4$ est positive, décroissante et tend vers 0). On peut donc utiliser la majoration du reste d'une série alternée : $|R_N| = |S - S_N| \le b_{N+1}$, où $S_N$ est la somme partielle d'ordre $N$. On cherche le plus petit entier $N$ tel que $b_{N+1} \le 10^{-3}$.

**Étapes :**

1.  **Vérification du critère des séries alternées :**

    La série est $\sum (-1)^{n+1} b_n$ avec $b_n = 1/n^4$.

    La suite $(b_n)$ est positive, décroissante et $\lim_{n \to \infty} b_n = 0$. Le critère s'applique.

2.  **Application de la majoration du reste :**

    L'erreur commise en approximant $S$ par la somme partielle $S_N = \sum_{n=1}^N \frac{(-1)^{n+1}}{n^4}$ est majorée par la valeur absolue du premier terme négligé :

    $$ |S - S_N| \le b_{N+1} = \frac{1}{(N+1)^4} $$

3.  **Résolution de l'inéquation :**

    On veut que l'erreur soit inférieure à $10^{-3}$, il suffit donc de trouver $N$ tel que :

    $$ \frac{1}{(N+1)^4} \le 10^{-3} $$

    $$ (N+1)^4 \ge 1000 $$

4.  **Calcul de N :**

    On cherche la plus petite valeur de $N+1$ qui satisfait cette condition.

    -   $5^4 = 625$ (trop petit)
    -   $6^4 = (36)^2 = 1296$ (suffisant)

    Donc, il faut que $N+1 \ge 6$, ce qui signifie $N \ge 5$.

5.  **Conclusion :**

    Le nombre minimum de termes à additionner est $N=5$. Il faut donc calculer $S_5 = 1 - \frac{1}{2^4} + \frac{1}{3^4} - \frac{1}{4^4} + \frac{1}{5^4}$ pour obtenir l'approximation souhaitée.

**Réponse :**

Il faut additionner au minimum **5 termes** de la série.

</details>

## Exercice 9

**Problème :** On admet que la série harmonique alternée $\sum_{n=1}^\infty \frac{(-1)^{n+1}}{n}$ converge vers $\ln(2)$.

1.  Cette série est-elle absolument convergente ?
2.  Expliquer, en utilisant le théorème de réarrangement de Riemann, pourquoi il est possible de changer l'ordre de ses termes pour obtenir une série qui converge vers une somme différente, par exemple $10$.

<details>

<summary>Solution</summary>

**Méthode :** Pour la première question, on étudie la convergence de la série des valeurs absolues. Pour la deuxième, on énonce les conclusions du théorème de Riemann qui s'appliquent aux séries semi-convergentes.

**Étapes :**

1.  **Étude de la convergence absolue :**

    Pour savoir si la série est absolument convergente, on doit étudier la nature de la série des valeurs absolues de ses termes :

    $$ \sum_{n=1}^\infty \left| \frac{(-1)^{n+1}}{n} \right| = \sum_{n=1}^\infty \frac{1}{n} $$

    C'est la série harmonique. C'est une série de Riemann avec $\alpha=1$, qui est connue pour être divergente.

    Puisque la série des valeurs absolues diverge, la série initiale n'est pas absolument convergente. Comme elle est convergente, on dit qu'elle est **semi-convergente**.

2.  **Application du Théorème de Riemann :**

    Le théorème de réarrangement de Riemann stipule que :

    -   Si une série est **absolument convergente**, alors tout réarrangement de ses termes converge vers la même somme.
    -   Si une série est **semi-convergente**, alors on peut réarranger ses termes pour faire converger la nouvelle série vers n'importe quel nombre réel $L$ (y compris $L=10$), ou même la faire diverger vers $+\infty$ or $-\infty$.

    Intuitivement, pour une série semi-convergente, la somme des termes positifs et la somme des termes négatifs divergent toutes les deux (vers $+\infty$ et $-\infty$ respectivement). On dispose donc d'un "réservoir infini" de termes positifs et négatifs. Pour atteindre la cible de 10, on peut commencer par additionner des termes positifs jusqu'à dépasser 10. Puis, on ajoute juste assez de termes négatifs pour repasser en dessous de 10. Puis on recommence avec des termes positifs, etc. Comme les termes tendent vers 0, ces oscillations se resserrent autour de 10, et la série réarrangée convergera vers 10.

**Réponse :**

1.  Non, la série n'est pas absolument convergente car la série des valeurs absolues $\sum \frac{1}{n}$ diverge. Elle est donc semi-convergente.
2.  Puisqu'elle est semi-convergente, le théorème de Riemann affirme qu'il existe un réarrangement de ses termes qui peut la faire converger vers n'importe quelle valeur réelle, y compris 10.

</details>

## Exercice 10

**Problème :** Considérons la série de Grandi $\sum_{n=0}^\infty (-1)^n = 1 - 1 + 1 - 1 + \dots$.

1.  Montrer que cette série est divergente.
2.  On regroupe les termes deux par deux pour former une nouvelle série $\sum_{k=0}^\infty v_k$ où $v_k = u_{2k} + u_{2k+1}$. Quelle est la nature de cette nouvelle série ?
3.  Que peut-on conclure sur l'opération de sommation par paquets ?

<details>

<summary>Solution</summary>

**Méthode :** Pour la divergence, on vérifie si le terme général tend vers 0. Pour la série par paquets, on calcule le nouveau terme général $v_k$ et on étudie la convergence de $\sum v_k$. Enfin, on compare les résultats pour tirer une conclusion.

**Étapes :**

1.  **Nature de la série initiale :**

    Le terme général de la série est $u_n = (-1)^n$.

    La limite du terme général est :

    $$ \lim_{n \to \infty} (-1)^n \quad \text{n'existe pas.} $$

    Une condition nécessaire pour la convergence d'une série est que son terme général tende vers 0. Comme ce n'est pas le cas ici, la série $\sum u_n$ diverge grossièrement.

2.  **Nature de la série par paquets :**

    On définit $v_k = u_{2k} + u_{2k+1}$. Calculons $v_k$ :

    $$ v_k = (-1)^{2k} + (-1)^{2k+1} = 1 + (-1) = 0 $$

    Le terme général de la nouvelle série est $v_k=0$ pour tout $k \ge 0$.

    La série par paquets est donc $\sum_{k=0}^\infty 0$. C'est une série convergente, et sa somme est 0.

3.  **Conclusion :**

    La série initiale $\sum (-1)^n$ diverge, mais la série obtenue en regroupant les termes par paquets de deux converge (vers 0).

    Cet exemple montre que la sommation par paquets peut transformer une série divergente en une série convergente. L'associativité (le droit de regrouper les termes comme on le souhaite) n'est donc pas une propriété générale des séries. Elle est garantie si la série de départ est convergente, mais pas si elle est divergente.

**Réponse :**

1.  La série $\sum (-1)^n$ diverge car son terme général ne tend pas vers 0.
2.  La série formée par paquets, $\sum (u_{2k} + u_{2k+1}) = \sum 0$, converge vers 0.
3.  On en conclut que la sommation par paquets n'est pas une opération valide pour les séries divergentes : elle peut changer la nature de la série.

</details>
