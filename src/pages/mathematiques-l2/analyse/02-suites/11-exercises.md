---
id: a452fe10
type: exercises
order: 11
title: Séries Numériques - exercices (A)
tags:
  - séries numériques
  - convergence
  - critère de Cauchy
  - séries à termes positifs
  - intégrales généralisées
  - théorème d'Abel
createdAt: '2025-10-12T17:47:40.884Z'
level: regular
course: Analyse
courseId: 9c2d50b3
chapter: Séries Numériques
chapterId: c9bf30da
---
# Exercices "Séries Numériques" (A)

## Exercice 1

**Problème :** Calculez la somme de la série suivante :

$$ \sum_{n=1}^{\infty} \frac{1}{(n+1)(n+2)} $$

<details>

<summary>Solution</summary>

**Méthode :** La forme du terme général, une fraction rationnelle en $n$, suggère une décomposition en éléments simples. Cela transformera probablement la série en une série télescopique, où les termes intermédiaires s'annulent lors du calcul de la somme partielle.

**Étapes :**

1.  **Décomposition en éléments simples :** On cherche des constantes $A$ et $B$ telles que :

    $$ \frac{1}{(n+1)(n+2)} = \frac{A}{n+1} + \frac{B}{n+2} $$

    En multipliant par $(n+1)(n+2)$, on obtient :

    $$ 1 = A(n+2) + B(n+1) $$

    -   Pour $n = -1$, on a $1 = A(-1+2) \implies A = 1$.
    -   Pour $n = -2$, on a $1 = B(-2+1) \implies B = -1$.

    Le terme général est donc $u_n = \frac{1}{n+1} - \frac{1}{n+2}$.

2.  **Calcul de la somme partielle $S_N$ :** La somme partielle d'ordre $N$ est la somme des termes de $n=1$ à $N$.

    $$ S_N = \sum_{n=1}^{N} \left(\frac{1}{n+1} - \frac{1}{n+2}\right) $$

    Écrivons les premiers et les derniers termes de la somme pour observer la simplification :

    $$ S_N = \left(\frac{1}{2} - \frac{1}{3}\right) + \left(\frac{1}{3} - \frac{1}{4}\right) + \left(\frac{1}{4} - \frac{1}{5}\right) + \dots + \left(\frac{1}{N+1} - \frac{1}{N+2}\right) $$

    Chaque terme négatif est annulé par le terme positif suivant. Seuls le premier terme positif et le dernier terme négatif subsistent.

    $$ S_N = \frac{1}{2} - \frac{1}{N+2} $$

3.  **Calcul de la somme de la série :** La somme de la série est la limite de la somme partielle lorsque $N \to \infty$.

    $$ S = \lim_{N \to \infty} S_N = \lim_{N \to \infty} \left(\frac{1}{2} - \frac{1}{N+2}\right) $$

    Comme $\lim_{N \to \infty} \frac{1}{N+2} = 0$, on obtient :

    $$ S = \frac{1}{2} $$

**Réponse :** La somme de la série est $\frac{1}{2}$.

$$ \sum_{n=1}^{\infty} \frac{1}{(n+1)(n+2)} = \frac{1}{2} $$

</details>

## Exercice 2

**Problème :** Déterminez si la série suivante converge. Si oui, calculez sa somme.

$$ \sum_{n=2}^{\infty} 3 \left(\frac{2}{5}\right)^n $$

<details>

<summary>Solution</summary>

**Méthode :** La série est de la forme $\sum ar^n$, c'est une série géométrique. On doit d'abord vérifier la condition de convergence ($|r|<1$) puis utiliser la formule de la somme, en faisant attention à l'indice de départ de la sommation.

**Étapes :**

1.  **Identification de la série :** Il s'agit d'une série géométrique de raison $r = \frac{2}{5}$. Le facteur constant 3 peut être sorti de la somme.

2.  **Vérification de la convergence :** On calcule la valeur absolue de la raison :

    $$ |r| = \left|\frac{2}{5}\right| = \frac{2}{5} $$

    Puisque $|r| < 1$, la série converge.

3.  **Calcul de la somme :** Il y a deux manières de procéder.

    **Méthode A : Soustraire les premiers termes.**

    On utilise la formule de la somme d'une série géométrique commençant à $n=0$ : $\sum_{n=0}^{\infty} r^n = \frac{1}{1-r}$.

    $$ \sum_{n=2}^{\infty} 3 \left(\frac{2}{5}\right)^n = 3 \sum_{n=2}^{\infty} \left(\frac{2}{5}\right)^n $$

    On exprime la somme à partir de 2 comme la somme totale moins les termes pour $n=0$ et $n=1$.

    $$ \sum_{n=2}^{\infty} \left(\frac{2}{5}\right)^n = \left( \sum_{n=0}^{\infty} \left(\frac{2}{5}\right)^n \right) - \left(\frac{2}{5}\right)^0 - \left(\frac{2}{5}\right)^1 $$

    $$ \sum_{n=2}^{\infty} \left(\frac{2}{5}\right)^n = \frac{1}{1 - 2/5} - 1 - \frac{2}{5} = \frac{1}{3/5} - \frac{5}{5} - \frac{2}{5} = \frac{5}{3} - \frac{7}{5} = \frac{25-21}{15} = \frac{4}{15} $$

    La somme totale est donc $3 \times \frac{4}{15} = \frac{12}{15} = \frac{4}{5}$.

    **Méthode B : Factoriser le premier terme.**

    Le premier terme de la série est pour $n=2$ : $u_2 = 3 (2/5)^2 = 3 \times \frac{4}{25} = \frac{12}{25}$.

    On factorise ce premier terme :

    $$ \sum_{n=2}^{\infty} 3 \left(\frac{2}{5}\right)^n = 3\left(\frac{2}{5}\right)^2 + 3\left(\frac{2}{5}\right)^3 + \dots = 3\left(\frac{2}{5}\right)^2 \left[ 1 + \left(\frac{2}{5}\right) + \left(\frac{2}{5}\right)^2 + \dots \right] $$

    $$ = \frac{12}{25} \sum_{k=0}^{\infty} \left(\frac{2}{5}\right)^k $$

    La somme est maintenant une série géométrique standard avec $a' = \frac{12}{25}$ et $r = \frac{2}{5}$.

    $$ S = \frac{a'}{1-r} = \frac{12/25}{1-2/5} = \frac{12/25}{3/5} = \frac{12}{25} \times \frac{5}{3} = \frac{4}{5} $$

**Réponse :** La série converge et sa somme est $\frac{4}{5}$.

$$ \sum_{n=2}^{\infty} 3 \left(\frac{2}{5}\right)^n = \frac{4}{5} $$

</details>

## Exercice 3

**Problème :** Utilisez le test de divergence grossière pour déterminer si les séries suivantes divergent. Justifiez votre réponse.

a) $\sum_{n=1}^{\infty} \frac{3n^2 - 1}{2n^2 + n}$

b) $\sum_{n=1}^{\infty} \cos\left(\frac{1}{n}\right)$

c) $\sum_{n=1}^{\infty} \frac{1}{\sqrt{n}}$

<details>

<summary>Solution</summary>

**Méthode :** Le test de divergence grossière est basé sur la condition nécessaire de convergence. Si la limite du terme général $u_n$ n'est pas nulle ($\lim_{n\to\infty} u_n \neq 0$), alors la série $\sum u_n$ diverge. Si la limite est nulle, le test ne permet pas de conclure.

**Étapes :**

1.  **Série a) $\sum_{n=1}^{\infty} \frac{3n^2 - 1}{2n^2 + n}$**

    Le terme général est $u_n = \frac{3n^2 - 1}{2n^2 + n}$. On calcule sa limite en l'infini.

    $$ \lim_{n \to \infty} u_n = \lim_{n \to \infty} \frac{n^2(3 - 1/n^2)}{n^2(2 + 1/n)} = \lim_{n \to \infty} \frac{3 - 1/n^2}{2 + 1/n} = \frac{3}{2} $$

    La limite est $\frac{3}{2}$, ce qui est différent de 0.

    **Conclusion :** La série diverge grossièrement.

2.  **Série b) $\sum_{n=1}^{\infty} \cos\left(\frac{1}{n}\right)$**

    Le terme général est $u_n = \cos(1/n)$.

    Lorsque $n \to \infty$, $1/n \to 0$. Comme la fonction cosinus est continue en 0 :

    $$ \lim_{n \to \infty} u_n = \cos\left(\lim_{n \to \infty} \frac{1}{n}\right) = \cos(0) = 1 $$

    La limite est $1$, ce qui est différent de 0.

    **Conclusion :** La série diverge grossièrement.

3.  **Série c) $\sum_{n=1}^{\infty} \frac{1}{\sqrt{n}}$**

    Le terme général est $u_n = \frac{1}{\sqrt{n}}$.

    $$ \lim_{n \to \infty} u_n = \lim_{n \to \infty} \frac{1}{\sqrt{n}} = 0 $$

    La limite du terme général est 0.

    **Conclusion :** Le test de divergence grossière ne permet pas de conclure. On ne peut pas affirmer que la série diverge avec ce test. (Remarque : on sait que cette série, une série de Riemann avec $p=1/2$, diverge, mais cela nécessite un test plus puissant).

**Réponse :**

a) La série diverge.

b) La série diverge.

c) Le test ne permet pas de conclure.

</details>

## Exercice 4

**Problème :** Déterminez la nature de la série suivante en utilisant le théorème de comparaison par inégalité.

$$ \sum_{n=1}^{\infty} \frac{1+\sin(n)}{n^3} $$

<details>

<summary>Solution</summary>

**Méthode :** Le terme général $u_n = \frac{1+\sin(n)}{n^3}$ est à termes positifs. La présence d'une fonction trigonométrique bornée ($\sin(n)$) suggère d'utiliser cette borne pour majorer le terme général par celui d'une série de référence connue, comme une série de Riemann.

**Étapes :**

1.  **Vérification des conditions :** Pour tout $n \ge 1$, on a $n^3 > 0$. La fonction sinus est bornée : $-1 \le \sin(n) \le 1$.

    Donc, $0 \le 1+\sin(n) \le 2$.

    Le terme général $u_n = \frac{1+\sin(n)}{n^3}$ est bien à termes positifs ($u_n \ge 0$).

2.  **Recherche d'un majorant :** On utilise l'inégalité $1+\sin(n) \le 2$ pour majorer $u_n$.

    $$ u_n = \frac{1+\sin(n)}{n^3} \le \frac{2}{n^3} $$

    On pose $v_n = \frac{2}{n^3}$. On a bien $0 \le u_n \le v_n$ pour tout $n \ge 1$.

3.  **Étude de la série majorante :** On étudie la nature de la série $\sum v_n = \sum_{n=1}^{\infty} \frac{2}{n^3}$.

    $$ \sum_{n=1}^{\infty} \frac{2}{n^3} = 2 \sum_{n=1}^{\infty} \frac{1}{n^3} $$

    La série $\sum_{n=1}^{\infty} \frac{1}{n^3}$ est une série de Riemann de la forme $\sum \frac{1}{n^p}$ avec $p=3$.

    Puisque $p=3 > 1$, la série de Riemann converge. Par conséquent, la série $\sum v_n$ converge aussi.

4.  **Conclusion par comparaison :** On a la situation suivante :
    -   $0 \le u_n \le v_n$.
    -   La série $\sum v_n$ converge.

    D'après le théorème de comparaison pour les séries à termes positifs, la série $\sum u_n$ converge.

**Réponse :**

La série $\sum_{n=1}^{\infty} \frac{1+\sin(n)}{n^3}$ est **convergente**.

</details>

## Exercice 5

**Problème :** En utilisant un équivalent simple du terme général, déterminez la nature de la série :

$$ \sum_{n=2}^{\infty} \frac{3n^2+5n}{n^4-n^2+1} $$

<details>

<summary>Solution</summary>

**Méthode :** Le terme général est une fraction rationnelle en $n$. Pour de grandes valeurs de $n$, son comportement est dominé par les termes de plus haut degré au numérateur et au dénominateur. On peut donc trouver un équivalent simple et utiliser le critère de comparaison par équivalence pour les séries à termes positifs.

**Étapes :**

1.  **Vérification du signe :** Le terme général est $u_n = \frac{3n^2+5n}{n^4-n^2+1}$. Pour $n \ge 2$, le numérateur $3n^2+5n$ est positif. Le dénominateur $n^4-n^2+1 = n^2(n^2-1)+1$ est aussi positif. La série est donc à termes positifs.

2.  **Recherche d'un équivalent :** On cherche un équivalent de $u_n$ quand $n \to \infty$ en ne gardant que les termes de plus haut degré.
    -   Au numérateur : $3n^2+5n \sim 3n^2$.
    -   Au dénominateur : $n^4-n^2+1 \sim n^4$.

    Donc,

    $$ u_n \sim \frac{3n^2}{n^4} = \frac{3}{n^2} $$

3.  **Étude de la série de référence :** On considère la série dont le terme général est l'équivalent trouvé : $\sum v_n = \sum_{n=2}^{\infty} \frac{3}{n^2}$.

    $$ \sum_{n=2}^{\infty} \frac{3}{n^2} = 3 \sum_{n=2}^{\infty} \frac{1}{n^2} $$

    La série $\sum \frac{1}{n^2}$ est une série de Riemann avec $p=2 > 1$, elle est donc convergente. La série $\sum v_n$ converge.

4.  **Conclusion par le critère d'équivalence :**
    -   Les séries $\sum u_n$ et $\sum v_n$ sont à termes positifs.
    -   $u_n \sim v_n$.

    Le critère de comparaison par équivalence affirme que les deux séries ont la même nature.

    Puisque $\sum v_n$ converge, la série $\sum u_n$ converge également.

**Réponse :**

La série $\sum_{n=2}^{\infty} \frac{3n^2+5n}{n^4-n^2+1}$ est **convergente**.

</details>

## Exercice 6

**Problème :** Étudiez la convergence absolue de la série suivante. Est-elle absolument convergente, semi-convergente ou divergente ?

$$ \sum_{n=1}^{\infty} \frac{(-1)^n}{n\sqrt{n}} $$

<details>

<summary>Solution</summary>

**Méthode :** Pour déterminer la nature d'une série à termes de signe alterné, on commence par étudier sa convergence absolue. Cela revient à étudier la série des valeurs absolues de ses termes. Si cette dernière converge, alors la série initiale converge (elle est absolument convergente).

**Étapes :**

1.  **Étude de la convergence absolue :** On considère la série des valeurs absolues du terme général. Soit $u_n = \frac{(-1)^n}{n\sqrt{n}}$.

    $$ |u_n| = \left| \frac{(-1)^n}{n\sqrt{n}} \right| = \frac{1}{n\sqrt{n}} = \frac{1}{n^{3/2}} $$

    La série des valeurs absolues est donc $\sum_{n=1}^{\infty} |u_n| = \sum_{n=1}^{\infty} \frac{1}{n^{3/2}}$.

2.  **Analyse de la série des valeurs absolues :** La série $\sum \frac{1}{n^{3/2}}$ est une série de Riemann de la forme $\sum \frac{1}{n^p}$ avec $p = \frac{3}{2}$.

    Puisque $p = 1.5 > 1$, la série de Riemann converge.

3.  **Conclusion :** La série des valeurs absolues $\sum |u_n|$ converge. Par définition, cela signifie que la série initiale $\sum u_n$ est **absolument convergente**.

    Un théorème fondamental stipule que toute série absolument convergente est aussi convergente. Il n'est donc pas nécessaire de faire d'autres tests. Une série ne peut pas être à la fois absolument convergente et semi-convergente.

**Réponse :**

La série est **absolument convergente**.

</details>

## Exercice 7

**Problème :** Déterminez la nature de la série suivante à l'aide de la règle de d'Alembert.

$$ \sum_{n=0}^{\infty} \frac{n^3}{3^n} $$

<details>

<summary>Solution</summary>

**Méthode :** Le terme général $u_n = \frac{n^3}{3^n}$ implique une puissance $n$-ième et un polynôme. La présence du terme $3^n$ (et l'absence de factorielle) rend le calcul du rapport $\frac{u_{n+1}}{u_n}$ particulièrement simple. C'est un cas idéal pour la règle de d'Alembert.

**Étapes :**

1.  **Vérification des conditions :** Le terme général $u_n = \frac{n^3}{3^n}$ est strictement positif pour $n \ge 1$. La règle de d'Alembert s'applique.

2.  **Calcul du rapport $\frac{u_{n+1}}{u_n}$ :**

    $$ u_{n+1} = \frac{(n+1)^3}{3^{n+1}} $$

    $$ \frac{u_{n+1}}{u_n} = \frac{(n+1)^3}{3^{n+1}} \times \frac{3^n}{n^3} = \frac{(n+1)^3}{n^3} \times \frac{3^n}{3^{n+1}} $$

    $$ \frac{u_{n+1}}{u_n} = \left(\frac{n+1}{n}\right)^3 \times \frac{1}{3} = \left(1 + \frac{1}{n}\right)^3 \times \frac{1}{3} $$

3.  **Calcul de la limite du rapport :** On calcule la limite $L$ de ce rapport lorsque $n \to \infty$.

    $$ L = \lim_{n \to \infty} \left(1 + \frac{1}{n}\right)^3 \times \frac{1}{3} $$

    Lorsque $n \to \infty$, $\frac{1}{n} \to 0$, donc $1 + \frac{1}{n} \to 1$.

    $$ L = (1)^3 \times \frac{1}{3} = \frac{1}{3} $$

4.  **Conclusion avec la règle de d'Alembert :** La limite du rapport est $L = \frac{1}{3}$.

    Puisque $L < 1$, la règle de d'Alembert nous permet de conclure que la série converge.

**Réponse :**

La série $\sum_{n=0}^{\infty} \frac{n^3}{3^n}$ est **convergente**.

</details>

## Exercice 8

**Problème :** Déterminez la nature de la série suivante à l'aide de la règle de Cauchy.

$$ \sum_{n=1}^{\infty} \left(\frac{2n}{3n+1}\right)^{2n} $$

<details>

<summary>Solution</summary>

**Méthode :** Le terme général $u_n$ est une expression élevée à une puissance contenant $n$. Cette forme est particulièrement adaptée à la règle de Cauchy, qui implique de calculer la racine $n$-ième de $u_n$.

**Étapes :**

1.  **Vérification des conditions :** Le terme général $u_n = \left(\frac{2n}{3n+1}\right)^{2n}$ est positif pour $n \ge 1$. La règle de Cauchy s'applique.

2.  **Calcul de $\sqrt[n]{u_n}$ :**

    $$ \sqrt[n]{u_n} = \left[ \left(\frac{2n}{3n+1}\right)^{2n} \right]^{1/n} = \left(\frac{2n}{3n+1}\right)^{\frac{2n}{n}} = \left(\frac{2n}{3n+1}\right)^2 $$

3.  **Calcul de la limite $l$ :** On calcule la limite de cette expression lorsque $n \to \infty$.

    $$ l = \lim_{n \to \infty} \left(\frac{2n}{3n+1}\right)^2 $$

    D'abord, la limite de la fraction :

    $$ \lim_{n \to \infty} \frac{2n}{3n+1} = \lim_{n \to \infty} \frac{n(2)}{n(3+1/n)} = \frac{2}{3} $$

    Donc, la limite $l$ est :

    $$ l = \left(\frac{2}{3}\right)^2 = \frac{4}{9} $$

4.  **Conclusion avec la règle de Cauchy :** La limite est $l = \frac{4}{9}$.

    Puisque $l < 1$, la règle de Cauchy affirme que la série converge.

**Réponse :**

La série $\sum_{n=1}^{\infty} \left(\frac{2n}{3n+1}\right)^{2n}$ est **convergente**.

</details>

## Exercice 9

**Problème :** La série harmonique alternée est définie par $\sum_{n=1}^{\infty} \frac{(-1)^{n+1}}{n}$.

On admet que cette série converge.

1.  La série est-elle absolument convergente ?
2.  Quelle est la nature de cette série (absolument convergente, semi-convergente ou divergente) ?

<details>

<summary>Solution</summary>

**Méthode :** On nous donne que la série converge. Pour déterminer si elle est absolument ou semi-convergente, il faut étudier la nature de la série des valeurs absolues.

**Étapes :**

1.  **Étude de la convergence absolue :** On s'intéresse à la série des valeurs absolues du terme général $u_n = \frac{(-1)^{n+1}}{n}$.

    $$ |u_n| = \left| \frac{(-1)^{n+1}}{n} \right| = \frac{1}{n} $$

    La série des valeurs absolues est donc :

    $$ \sum_{n=1}^{\infty} |u_n| = \sum_{n=1}^{\infty} \frac{1}{n} $$

2.  **Analyse de la série des valeurs absolues :** La série $\sum_{n=1}^{\infty} \frac{1}{n}$ est la **série harmonique**. C'est une série de Riemann de la forme $\sum \frac{1}{n^p}$ avec $p=1$.

    Puisque $p=1 \le 1$, la série harmonique diverge.

3.  **Conclusion sur la convergence absolue :** Comme la série des valeurs absolues diverge, la série initiale $\sum \frac{(-1)^{n+1}}{n}$ n'est **pas absolument convergente**.

4.  **Détermination de la nature de la série :**
    -   On nous a dit d'admettre que la série $\sum \frac{(-1)^{n+1}}{n}$ converge.
    -   Nous venons de montrer qu'elle ne converge pas absolument.

    Par définition, une série qui est convergente mais pas absolument convergente est dite **semi-convergente**.

**Réponse :**

1. Non, la série n'est pas absolument convergente.
2. La série est **semi-convergente**.

</details>

## Exercice 10

**Problème :** Une balle est lâchée d'une hauteur de 10 mètres. Après chaque rebond, elle remonte à $70\%$ de la hauteur de son précédent sommet. Calculez la distance verticale totale parcourue par la balle jusqu'à son immobilisation.

<details>

<summary>Solution</summary>

**Méthode :** La distance totale est la somme de la chute initiale et des distances parcourues lors de chaque rebond (une montée suivie d'une descente). Les hauteurs des rebonds forment une suite géométrique. La distance totale sera la somme d'une série géométrique.

**Étapes :**

1.  **Décomposition du mouvement :**
    -   Chute initiale : $d_0 = 10$ mètres.
    -   Premier rebond : la balle monte de $10 \times 0.7$ puis redescend de la même hauteur. Distance : $d_1 = 2 \times (10 \times 0.7)$.
    -   Deuxième rebond : la hauteur du sommet est $ (10 \times 0.7) \times 0.7 = 10 \times (0.7)^2$. Distance : $d_2 = 2 \times (10 \times (0.7)^2)$.
    -   $k$-ième rebond : la distance est $d_k = 2 \times (10 \times (0.7)^k)$.

2.  **Calcul de la distance totale :** La distance totale $D$ est la somme de toutes ces distances.

    $$ D = d_0 + d_1 + d_2 + d_3 + \dots $$

    $$ D = 10 + 2(10 \times 0.7) + 2(10 \times (0.7)^2) + 2(10 \times (0.7)^3) + \dots $$

    On peut isoler la chute initiale et factoriser le reste.

    $$ D = 10 + 20 \times [0.7 + (0.7)^2 + (0.7)^3 + \dots] $$

    L'expression entre crochets est la somme d'une série géométrique $\sum_{k=1}^{\infty} (0.7)^k$.

3.  **Somme de la série géométrique :**

    La série $\sum_{k=1}^{\infty} r^k$ avec $r=0.7$ converge car $|r|<1$. Sa somme est :

    $$ \sum_{k=1}^{\infty} r^k = \left(\sum_{k=0}^{\infty} r^k\right) - r^0 = \frac{1}{1-r} - 1 $$

    $$ \sum_{k=1}^{\infty} (0.7)^k = \frac{1}{1 - 0.7} - 1 = \frac{1}{0.3} - 1 = \frac{10}{3} - \frac{3}{3} = \frac{7}{3} $$

4.  **Calcul final :** On remplace la somme de la série dans l'équation de la distance totale.

    $$ D = 10 + 20 \times \left( \frac{7}{3} \right) = 10 + \frac{140}{3} = \frac{30}{3} + \frac{140}{3} = \frac{170}{3} $$

    La distance totale est d'environ $56.67$ mètres.

**Réponse :** La distance verticale totale parcourue par la balle est de $\frac{170}{3}$ mètres.

$$ D = \frac{170}{3} \text{ m} \approx 56.67 \text{ m} $$

</details>
