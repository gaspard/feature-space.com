---
id: 69ce470d
type: exercises
order: 21
title: Séries Numériques (suite) - exercices (B)
tags:
  - séries numériques
  - convergence
  - critère de Cauchy
  - séries à termes positifs
  - intégrales généralisées
  - théorème d'Abel
createdAt: '2025-10-12T17:46:44.893Z'
level: pro
course: Analyse
courseId: 9c2d50b3
chapter: Séries Numériques (suite)
chapterId: c9bf30da
---
# Exercices "Séries Numériques (suite)" (B)

## Exercise 1: [Theoretical Investigation]

**Problem:** La fonction Gamma d'Euler est définie pour $x>0$ par l'intégrale généralisée $\Gamma(x) = \int_0^{+\infty} t^{x-1} e^{-t} dt$.

1.  Démontrer que cette intégrale converge pour tout $x>0$.
2.  Établir la relation fonctionnelle $\Gamma(x+1) = x\Gamma(x)$ pour tout $x>0$.
3.  En déduire que pour tout entier $n \in \mathbb{N}^*$, $\Gamma(n) = (n-1)!$.
4.  Démontrer que la fonction $\ln(\Gamma(x))$ est convexe. (Indication: utiliser l'inégalité de Hölder pour les intégrales).

<details>

<summary>Solution</summary>

**Method:** L'étude de la convergence de l'intégrale se fait en la séparant en deux parties, en $0$ et en $+\infty$, et en utilisant des critères de comparaison avec des intégrales de Riemann. La relation fonctionnelle s'obtient par intégration par parties. La convexité de $\ln(\Gamma(x))$ est un résultat classique qui se démontre en calculant la dérivée seconde et en appliquant l'inégalité de Cauchy-Schwarz ou, plus généralement, de Hölder.

**Steps:**

1.  **Convergence de l'intégrale :** Soit $f(t) = t^{x-1} e^{-t}$ pour $t>0$. L'intégrale est impropre en $0$ si $x-1 < 0$ (i.e., $x<1$) et en $+\infty$. On la sépare en $\int_0^1 f(t)dt + \int_1^{+\infty} f(t)dt$.

    -   Au voisinage de $0^+$: $f(t) \sim t^{x-1}$. L'intégrale de Riemann $\int_0^1 \frac{1}{t^{1-x}} dt$ converge si et seulement si $1-x < 1$, c'est-à-dire $x>0$. Par comparaison, $\int_0^1 f(t)dt$ converge pour $x>0$.

    -   Au voisinage de $+\infty$: On a $\lim_{t\to+\infty} t^2 f(t) = \lim_{t\to+\infty} t^{x+1}e^{-t} = 0$ par croissance comparée. Donc, il existe $A>0$ tel que pour $t>A$, $t^2 f(t) < 1$, soit $f(t) < \frac{1}{t^2}$. Comme l'intégrale de Riemann $\int_1^{+\infty} \frac{1}{t^2} dt$ converge, par comparaison, $\int_1^{+\infty} f(t)dt$ converge pour tout $x \in \mathbb{R}$.

    En conclusion, l'intégrale $\Gamma(x)$ converge si et seulement si $x>0$.

2.  **Relation fonctionnelle :** Soit $x>0$. On effectue une intégration par parties sur $\int_\epsilon^A t^x e^{-t} dt$ :

    $$ \int_\epsilon^A t^x e^{-t} dt = \left[ t^x (-e^{-t}) \right]_\epsilon^A - \int_\epsilon^A x t^{x-1} (-e^{-t}) dt = -A^x e^{-A} + \epsilon^x e^{-\epsilon} + x \int_\epsilon^A t^{x-1} e^{-t} dt $$

    En faisant tendre $A \to +\infty$ et $\epsilon \to 0^+$, on a $A^x e^{-A} \to 0$ et (puisque $x>0$) $\epsilon^x e^{-\epsilon} \to 0$. Il reste:

    $$ \Gamma(x+1) = \int_0^{+\infty} t^x e^{-t} dt = x \int_0^{+\infty} t^{x-1} e^{-t} dt = x\Gamma(x) $$

3.  **Valeurs entières :** On a $\Gamma(1) = \int_0^{+\infty} e^{-t} dt = [-e^{-t}]_0^{+\infty} = 1$.

    Par récurrence, si $\Gamma(n)=(n-1)!$ pour $n \ge 1$, alors $\Gamma(n+1) = n\Gamma(n) = n(n-1)! = n!$. La propriété est vraie pour tout $n \in \mathbb{N}^*$.

4.  **Log-convexité :** Pour montrer que $g(x) = \ln(\Gamma(x))$ est convexe, il suffit de montrer que $g''(x) \ge 0$.

    $$ g'(x) = \frac{\Gamma'(x)}{\Gamma(x)} = \frac{\int_0^\infty (\ln t) t^{x-1} e^{-t} dt}{\int_0^\infty t^{x-1} e^{-t} dt} $$

    $$ g''(x) = \frac{\Gamma''(x)\Gamma(x) - (\Gamma'(x))^2}{(\Gamma(x))^2} $$

    où $\Gamma''(x) = \int_0^\infty (\ln t)^2 t^{x-1} e^{-t} dt$.

    Donc, $g''(x) \ge 0$ est équivalent à $\Gamma''(x)\Gamma(x) \ge (\Gamma'(x))^2$. C'est-à-dire :

    $$ \left(\int_0^\infty (\ln t)^2 t^{x-1} e^{-t} dt\right) \left(\int_0^\infty t^{x-1} e^{-t} dt\right) \ge \left(\int_0^\infty (\ln t) t^{x-1} e^{-t} dt\right)^2 $$

    Posons $\mu(t) = t^{x-1} e^{-t} dt$ une mesure positive sur $\mathbb{R}^+$. Posons $u(t) = \ln t$ et $v(t)=1$. L'inégalité s'écrit $(\int u^2 d\mu)(\int v^2 d\mu) \ge (\int uv d\mu)^2$. C'est l'inégalité de Cauchy-Schwarz pour les intégrales. La log-convexité est donc prouvée.

**Answer:** 1. L'intégrale converge pour $x>0$. 2. $\Gamma(x+1)=x\Gamma(x)$. 3. $\Gamma(n)=(n-1)!$. 4. La fonction $\ln(\Gamma(x))$ est convexe car sa dérivée seconde, calculée via dérivation sous le signe intégral, est positive en vertu de l'inégalité de Cauchy-Schwarz.

</details>

## Exercise 2: [Complex Proof]

**Problem:** Soit $(u_n)_{n\in\mathbb{N}}$ et $(v_n)_{n\in\mathbb{N}}$ deux suites à termes strictement positifs. Démontrer le critère de comparaison de Kummer-Bertrand :

Si la série $\sum v_n$ converge et s'il existe un rang $N_0$ tel que pour tout $n \ge N_0$, on a $\frac{u_{n+1}}{u_n} \le \frac{v_{n+1}}{v_n}$, alors la série $\sum u_n$ converge.

Application : En utilisant ce critère avec $v_n = 1/n^{\alpha}$, retrouver le critère de Raabe-Duhamel.

<details>

<summary>Solution</summary>

**Method:** La démonstration du critère de comparaison consiste à montrer que la suite $(u_n/v_n)$ est décroissante à partir d'un certain rang, donc majorée. La convergence de $\sum u_n$ s'ensuit par comparaison directe. Pour l'application, on choisit une série de Riemann de référence et on traduit l'inégalité par un développement asymptotique.

**Steps:**

1.  **Démonstration du critère :** L'inégalité $\frac{u_{n+1}}{u_n} \le \frac{v_{n+1}}{v_n}$ est équivalente à $\frac{u_{n+1}}{v_{n+1}} \le \frac{u_n}{v_n}$ pour $n \ge N_0$.

    Ceci signifie que la suite $(w_n)_{n\ge N_0}$ définie par $w_n = u_n/v_n$ est décroissante.

    Étant décroissante, elle est majorée par son premier terme $w_{N_0}$. Soit $M = w_{N_0}$.

    On a donc pour tout $n \ge N_0$, $0 < u_n/v_n \le M$, ce qui implique $0 < u_n \le M v_n$.

    Puisque la série $\sum v_n$ converge, la série $\sum M v_n$ converge également.

    Par le théorème de comparaison des séries à termes positifs, la série $\sum u_n$ converge.

2.  **Application au critère de Raabe-Duhamel :**

    Le critère de Raabe-Duhamel s'intéresse au cas où le critère de d'Alembert est non concluant, i.e., $\lim_{n\to\infty} \frac{u_{n+1}}{u_n} = 1$. On cherche une condition sur le développement asymptotique de ce rapport.

    Posons $\frac{u_{n+1}}{u_n} = 1 - \frac{\alpha}{n} + o\left(\frac{1}{n}\right)$.

    Comparons avec une série de Riemann $\sum v_n$ où $v_n = 1/n^\beta$.

    Le rapport pour cette série est $\frac{v_{n+1}}{v_n} = \frac{n^\beta}{(n+1)^\beta} = \left(1+\frac{1}{n}\right)^{-\beta} = 1 - \frac{\beta}{n} + O\left(\frac{1}{n^2}\right)$.

    Appliquons le critère démontré :

    -   Si $\alpha > 1$, on peut choisir $\beta$ tel que $1 < \beta < \alpha$. Alors pour $n$ assez grand, $1 - \frac{\alpha}{n} + o(\frac{1}{n}) < 1 - \frac{\beta}{n} + O(\frac{1}{n^2})$. Plus formellement, $\frac{u_{n+1}}{u_n} - \frac{v_{n+1}}{v_n} \sim \frac{\beta-\alpha}{n} < 0$. Donc pour $n$ assez grand, $\frac{u_{n+1}}{u_n} \le \frac{v_{n+1}}{v_n}$. Comme $\sum v_n = \sum 1/n^\beta$ converge (car $\beta>1$), on en déduit que $\sum u_n$ converge.
    -   Si $\alpha < 1$, on peut choisir $\beta$ tel que $\alpha < \beta < 1$. L'inégalité est inversée, $\frac{u_{n+1}}{u_n} \ge \frac{v_{n+1}}{v_n}$. Comme $\sum v_n$ diverge, on en déduit (par un critère analogue pour la divergence) que $\sum u_n$ diverge.

    Ceci est l'énoncé du critère de Raabe-Duhamel.

**Answer:** Le critère est prouvé en montrant que la suite $u_n/v_n$ est décroissante et majorée. Son application avec les séries de Riemann $v_n = 1/n^\beta$ permet de retrouver le critère de Raabe-Duhamel : si $\frac{u_{n+1}}{u_n} = 1 - \frac{\alpha}{n} + o(\frac{1}{n})$, alors $\sum u_n$ converge si $\alpha > 1$ et diverge si $\alpha < 1$.

</details>

## Exercise 3: [Advanced Applications]

**Problem:** Étudier la nature de la série de terme général $u_n = \left( n \sin\left(\frac{1}{n}\right) \right)^{n^2} - \frac{1}{\sqrt[6]{e}}$.

<details>

<summary>Solution</summary>

**Method:** Le terme général est une forme indéterminée $1^\infty$. La stratégie est d'utiliser la forme exponentielle $u_n = e^{n^2 \ln(n \sin(1/n))} - e^{-1/6}$ et de réaliser un développement asymptotique très précis du logarithme. La clé est de pousser le développement limité de $\sin(x)$ et $\ln(1-u)$ à un ordre suffisant pour déterminer le premier terme non nul du développement de $u_n$.

**Steps:**

1.  **Mise en forme exponentielle :** On écrit $u_n = e^{A_n} - e^{-1/6}$ avec $A_n = n^2 \ln\left(n \sin\left(\frac{1}{n}\right)\right)$.

2.  **Développement de l'argument du logarithme :** Soit $x = 1/n$. Pour $n\to\infty$, $x\to 0$.

    $$ \sin(x) = x - \frac{x^3}{6} + \frac{x^5}{120} + O(x^7) $$

    $$ n \sin\left(\frac{1}{n}\right) = n \left(\frac{1}{n} - \frac{1}{6n^3} + \frac{1}{120n^5} + O\left(\frac{1}{n^7}\right)\right) = 1 - \frac{1}{6n^2} + \frac{1}{120n^4} + O\left(\frac{1}{n^6}\right) $$

3.  **Développement du logarithme :** On utilise $\ln(1-u) = -u - \frac{u^2}{2} + O(u^3)$ avec $u = \frac{1}{6n^2} - \frac{1}{120n^4} + O\left(\frac{1}{n^6}\right)$.

    $$ \ln\left(1 - \frac{1}{6n^2} + \frac{1}{120n^4} + \dots\right) = -\left(\frac{1}{6n^2} - \frac{1}{120n^4}\right) - \frac{1}{2}\left(\frac{1}{6n^2}\right)^2 + O\left(\frac{1}{n^6}\right) $$

    $$ = -\frac{1}{6n^2} + \frac{1}{120n^4} - \frac{1}{72n^4} + O\left(\frac{1}{n^6}\right) = -\frac{1}{6n^2} - \frac{7}{360n^4} + O\left(\frac{1}{n^6}\right) $$

4.  **Développement de l'exposant $A_n$ :**

    $$ A_n = n^2 \left(-\frac{1}{6n^2} - \frac{7}{360n^4} + O\left(\frac{1}{n^6}\right)\right) = -\frac{1}{6} - \frac{7}{360n^2} + O\left(\frac{1}{n^4}\right) $$

5.  **Développement final de $u_n$ :**

    $$ u_n = e^{-\frac{1}{6} - \frac{7}{360n^2} + O(\frac{1}{n^4})} - e^{-1/6} = e^{-1/6} \left( e^{-\frac{7}{360n^2} + O(\frac{1}{n^4})} - 1 \right) $$

    On utilise $e^v - 1 \sim v$ pour $v\to 0$.

    $$ u_n \sim e^{-1/6} \left(-\frac{7}{360n^2}\right) \quad \text{lorsque } n\to\infty $$

6.  **Conclusion :** $u_n$ est de signe constant (négatif) à partir d'un certain rang et est équivalent à $-\frac{7e^{-1/6}}{360n^2}$.

    La série de Riemann $\sum \frac{1}{n^2}$ converge. Par le critère de comparaison par équivalents pour les séries à termes de signe constant, la série $\sum u_n$ converge.

**Answer:** La série $\sum u_n$ converge. L'équivalent est $u_n \sim_{n\to\infty} -\frac{7\sqrt[6]{e^{-1}}}{360} \frac{1}{n^2}$.

</details>

## Exercise 4: [Theoretical Investigation]

**Problem:** La seconde formule de la moyenne pour les intégrales stipule que si $f:[a,b] \to \mathbb{R}$ est une fonction positive, décroissante et de classe $\mathcal{C}^1$, et si $g:[a,b] \to \mathbb{R}$ est continue, alors il existe $c \in [a,b]$ tel que :

$$ \int_a^b f(t)g(t)dt = f(a) \int_a^c g(t)dt. $$

1.  Démontrer ce théorème. (Indication : introduire $G(x) = \int_a^x g(t)dt$ et intégrer par parties).
2.  En l'appliquant à l'intégrale $\int_A^B \frac{\sin(t)}{t^\alpha} dt$ pour $0 < \alpha \le 1$, montrer que $\int_1^{+\infty} \frac{\sin(t)}{t^\alpha} dt$ converge.

<details>

<summary>Solution</summary>

**Method:** La preuve du théorème repose sur une intégration par parties et l'utilisation du théorème des valeurs intermédiaires pour les fonctions continues. L'application à l'intégrale du sinus cardinal généralisé utilise le critère de Cauchy pour la convergence des intégrales impropres.

**Steps:**

1.  **Démonstration du théorème :** Soit $G(x) = \int_a^x g(t)dt$. Par le théorème fondamental de l'analyse, $G'(x) = g(x)$. On intègre par parties :

    $$ \int_a^b f(t)g(t)dt = \int_a^b f(t)G'(t)dt = [f(t)G(t)]_a^b - \int_a^b f'(t)G(t)dt $$

    Comme $G(a)=0$, on obtient :

    $$ \int_a^b f(t)g(t)dt = f(b)G(b) - \int_a^b f'(t)G(t)dt $$

    Puisque $f$ est décroissante, $f'(t) \le 0$, donc $-f'(t) \ge 0$.

    $G$ est continue sur le compact $[a,b]$, donc elle atteint son minimum $m$ et son maximum $M$.

    On peut encadrer l'intégrale :

    $$ m \int_a^b (-f'(t))dt \le \int_a^b (-f'(t))G(t)dt \le M \int_a^b (-f'(t))dt $$

    L'intégrale $\int_a^b (-f'(t))dt = -[f(t)]_a^b = f(a) - f(b)$.

    Donc $m(f(a)-f(b)) \le -\int_a^b f'(t)G(t)dt \le M(f(a)-f(b))$.

    En reportant dans l'expression de départ :

    $$ f(b)G(b) + m(f(a)-f(b)) \le \int_a^b f(t)g(t)dt \le f(b)G(b) + M(f(a)-f(b)) $$

    $$ f(b)M + m f(a) - m f(b) \le \int_a^b f(t)g(t)dt \le f(b)m + M f(a) - M f(b) \text{ (car G(b)=M ou m ? non, pas forcément)} $$

    Reprenons : il existe $\mu$ tel que $\int_a^b (-f'(t))G(t)dt = \mu \int_a^b (-f'(t))dt = \mu (f(a)-f(b))$, avec $m \le \mu \le M$.

    $$ \int_a^b f(t)g(t)dt = f(b)G(b) + \mu(f(a)-f(b)) = \mu f(a) + (G(b)-\mu)f(b) $$

    Comme $f$ est positive et décroissante $f(a)\ge f(b)\ge 0$. La moyenne pondérée $(\mu f(a) + (G(b)-\mu)f(b))/(f(a)+f(b)-f(b))$ est compliquée.

    Une approche plus simple : La fonction $\Phi(x) = f(a) \int_a^x g(t)dt$ est continue. On veut montrer que $\int_a^b fg$ est une valeur prise par $\Phi$. Par le TVI, il suffit de montrer que $\int_a^b fg$ est entre le min et le max de $\Phi$.

    Avec $m \le G(t) \le M$, on a $\int_a^b fg = f(b)G(b) + \int_a^b (-f')G$.

    $$ f(b)m + m(f(a)-f(b)) \le \int_a^b fg \le f(b)M + M(f(a)-f(b)) $$

    $$ m f(a) \le \int_a^b fg \le M f(a) $$

    L'intégrale $\int_a^b fg$ est donc comprise entre $f(a)m$ et $f(a)M$. Comme $f(a)\ge 0$, ceci est compris entre $f(a) \min_{[a,b]} G$ et $f(a) \max_{[a,b]} G$.

    Par le théorème des valeurs intermédiaires, $G$ prend toutes les valeurs entre $m$ et $M$. Soit $c$ tel que $G(c)$ soit la valeur moyenne. Il existe $c \in [a,b]$ tel que $G(c) = \frac{1}{f(a)} \int_a^b f(t)g(t) dt$. Ceci prouve le résultat.

2.  **Application :** On veut montrer la convergence de $\int_1^{+\infty} \frac{\sin(t)}{t^\alpha} dt$ pour $0 < \alpha \le 1$.

    On utilise le critère de Cauchy. Soit $\varepsilon > 0$. On doit montrer qu'il existe $X$ tel que pour tout $B > A > X$, $|\int_A^B \frac{\sin(t)}{t^\alpha} dt| < \varepsilon$.

    Posons $f(t) = 1/t^\alpha$ et $g(t) = \sin(t)$. Pour $t \in [A,B]$ avec $A>0$, $f$ est positive, de classe $\mathcal{C}^1$ et décroissante car $f'(t) = -\alpha t^{-\alpha-1} < 0$. $g$ est continue.

    D'après la seconde formule de la moyenne, il existe $c \in [A,B]$ tel que :

    $$ \int_A^B \frac{\sin(t)}{t^\alpha} dt = f(A) \int_A^c \sin(t) dt = \frac{1}{A^\alpha} [-\cos(t)]_A^c = \frac{\cos(A)-\cos(c)}{A^\alpha} $$

    On majore la valeur absolue :

    $$ \left| \int_A^B \frac{\sin(t)}{t^\alpha} dt \right| = \left| \frac{\cos(A)-\cos(c)}{A^\alpha} \right| \le \frac{|\cos(A)|+|\cos(c)|}{A^\alpha} \le \frac{2}{A^\alpha} $$

    Puisque $\alpha > 0$, $\lim_{A\to+\infty} \frac{2}{A^\alpha} = 0$. Donc pour tout $\varepsilon>0$, on peut trouver $X$ tel que si $A>X$, alors $\frac{2}{A^\alpha} < \varepsilon$.

    Le critère de Cauchy est vérifié, donc l'intégrale converge.

**Answer:** Le théorème est prouvé par intégration par parties et utilisation du théorème de la valeur intermédiaire. L'application du théorème à $\int_A^B \frac{\sin t}{t^\alpha}dt$ donne la majoration $|\int_A^B \dots| \le \frac{2}{A^\alpha}$, ce qui prouve la convergence de l'intégrale par le critère de Cauchy.

</details>

## Exercise 5: [Complex Applications]

**Problem:** Soit la série harmonique alternée $S = \sum_{n=1}^\infty \frac{(-1)^{n+1}}{n} = \ln(2)$. Soient $p,q \in \mathbb{N}^*$. On considère le réarrangement de cette série où l'on somme $p$ termes positifs successifs, puis $q$ termes négatifs successifs.

$$ S'_{p,q} = \left(1+\frac{1}{3}+\dots+\frac{1}{2p-1}\right) - \left(\frac{1}{2}+\frac{1}{4}+\dots+\frac{1}{2q}\right) + \left(\frac{1}{2p+1}+\dots\right) - \dots $$

Montrer que cette série réarrangée converge et que sa somme est $\ln(2) + \frac{1}{2} \ln\left(\frac{p}{q}\right)$.

<details>

<summary>Solution</summary>

**Method:** La stratégie consiste à analyser la somme partielle $S'_N$ de la série réarrangée après un nombre entier de "paquets" (un paquet étant $p$ termes positifs et $q$ termes négatifs). Cette somme partielle sera exprimée en fonction des sommes partielles de la série harmonique, $H_n = \sum_{k=1}^n 1/k$. En utilisant le développement asymptotique de $H_n = \ln(n) + \gamma + o(1)$, on calcule la limite de $S'_N$.

**Steps:**

1.  **Expression de la somme partielle :** Considérons la somme des $k$ premiers paquets, qui contient $kp$ termes positifs et $kq$ termes négatifs.

    La somme des $kp$ premiers termes positifs est $\sum_{j=1}^{kp} \frac{1}{2j-1}$.

    La somme des $kq$ premiers termes négatifs est $-\sum_{j=1}^{kq} \frac{1}{2j}$.

    La somme partielle $S'_k$ (après $k$ paquets) est donc :

    $$ S'_k = \sum_{j=1}^{kp} \frac{1}{2j-1} - \sum_{j=1}^{kq} \frac{1}{2j} $$

2.  **Relation avec la série harmonique $H_n$ :**

    On exprime la somme des inverses des impairs :

    $$ \sum_{j=1}^{kp} \frac{1}{2j-1} = \sum_{m=1}^{2kp} \frac{1}{m} - \sum_{m=1}^{kp} \frac{1}{2m} = H_{2kp} - \frac{1}{2}H_{kp} $$

    La somme des inverses des pairs est $\sum_{j=1}^{kq} \frac{1}{2j} = \frac{1}{2} H_{kq}$.

    Donc, la somme partielle devient :

    $$ S'_k = (H_{2kp} - \frac{1}{2}H_{kp}) - \frac{1}{2}H_{kq} $$

3.  **Utilisation du développement asymptotique :** On sait que $H_n = \ln(n) + \gamma + \epsilon_n$ où $\epsilon_n \to 0$.

    $$ S'_k = (\ln(2kp) + \gamma + \epsilon_{2kp}) - \frac{1}{2}(\ln(kp) + \gamma + \epsilon_{kp}) - \frac{1}{2}(\ln(kq) + \gamma + \epsilon_{kq}) $$

    $$ S'_k = \ln(2) + \ln(k) + \ln(p) + \gamma - \frac{1}{2}\ln(k) - \frac{1}{2}\ln(p) - \frac{1}{2}\gamma - \frac{1}{2}\ln(k) - \frac{1}{2}\ln(q) - \frac{1}{2}\gamma + o(1) $$

    Les termes en $\gamma$ et $\ln(k)$ s'annulent : $(\gamma - \frac{1}{2}\gamma - \frac{1}{2}\gamma = 0)$ et $(\ln(k) - \frac{1}{2}\ln(k) - \frac{1}{2}\ln(k) = 0)$.

    Il reste :

    $$ S'_k = \ln(2) + \ln(p) - \frac{1}{2}\ln(p) - \frac{1}{2}\ln(q) + o(1) $$

    $$ S'_k = \ln(2) + \frac{1}{2}\ln(p) - \frac{1}{2}\ln(q) + o(1) = \ln(2) + \frac{1}{2}\ln\left(\frac{p}{q}\right) + o(1) $$

4.  **Conclusion :** La suite des sommes partielles calculées sur des blocs entiers converge vers $\ln(2) + \frac{1}{2}\ln(p/q)$. Comme le terme général de la série réarrangée tend vers 0, la somme partielle complète converge vers la même limite.

**Answer:** La somme de la série réarrangée est $\ln(2) + \frac{1}{2} \ln\left(\frac{p}{q}\right)$.

</details>

## Exercise 6: [Theoretical Investigation]

**Problem:** On considère la suite double $(u_{m,n})$ définie sur $\mathbb{N} \times \mathbb{N}$ par :

$$ u_{m,n} = \begin{cases} 1 & \text{si } m=n \\ -1 & \text{si } m=n-1 \\ 0 & \text{sinon} \end{cases} $$

1.  Calculer les deux sommes itérées $S_1 = \sum_{m=0}^\infty \left(\sum_{n=0}^\infty u_{m,n}\right)$ et $S_2 = \sum_{n=0}^\infty \left(\sum_{m=0}^\infty u_{m,n}\right)$.
2.  Les sommes sont-elles égales ? Expliquer pourquoi le théorème de Fubini pour les séries ne s'applique pas ici.
3.  Étudier la convergence et la somme de la série obtenue en sommant sur des "carrés" croissants, i.e., la limite de $S_N = \sum_{m=0}^N \sum_{n=0}^N u_{m,n}$ lorsque $N \to \infty$.

<details>

<summary>Solution</summary>

**Method:** Le calcul des sommes itérées se fait en fixant un indice et en sommant sur l'autre, puis en sommant le résultat. Pour Fubini, on doit vérifier si la famille est sommable, c'est-à-dire si la somme des modules converge. La somme sur les carrés se calcule directement.

**Steps:**

1.  **Calcul des sommes itérées :**
    -   **Calcul de $S_1$ :** On fixe $m \in \mathbb{N}$. La somme interne est $\sum_{n=0}^\infty u_{m,n}$. Les seuls termes non nuls sont pour $n=m$ et $n=m+1$.

        $$ \sum_{n=0}^\infty u_{m,n} = u_{m,m} + u_{m,m+1} = 1 + (-1) = 0. $$

        Cette somme est nulle pour tout $m \ge 0$.

        La somme externe est donc $S_1 = \sum_{m=0}^\infty 0 = 0$.

    -   **Calcul de $S_2$ :** On fixe $n \in \mathbb{N}$. La somme interne est $\sum_{m=0}^\infty u_{m,n}$. Les seuls termes non nuls sont pour $m=n$ et $m=n-1$ (si $n \ge 1$).
        -   Pour $n=0$, $\sum_{m=0}^\infty u_{m,0} = u_{0,0} = 1$.
        -   Pour $n \ge 1$, $\sum_{m=0}^\infty u_{m,n} = u_{n,n} + u_{n-1,n} = 1 + (-1) = 0$.

        La somme externe est donc $S_2 = 1 + \sum_{n=1}^\infty 0 = 1$.

2.  **Applicabilité du théorème de Fubini :**

    On a trouvé $S_1 = 0$ et $S_2 = 1$. Les sommes itérées ne sont pas égales. Le théorème de Fubini ne peut donc pas s'appliquer.

    Pour que le théorème de Fubini s'applique, la famille $(u_{m,n})$ doit être sommable, c'est-à-dire que $\sum_{(m,n)\in\mathbb{N}^2} |u_{m,n}|$ doit converger.

    Calculons cette somme :

    $$ \sum_{m=0}^\infty \left(\sum_{n=0}^\infty |u_{m,n}|\right) = \sum_{m=0}^\infty (|u_{m,m}| + |u_{m,m+1}|) = \sum_{m=0}^\infty (1+1) = \sum_{m=0}^\infty 2 = +\infty. $$

    La famille n'est pas sommable, l'hypothèse principale du théorème de Fubini n'est pas vérifiée.

3.  **Sommation par carrés :**

    On calcule $S_N = \sum_{m=0}^N \sum_{n=0}^N u_{m,n}$. On somme les termes non nuls dans le carré $[0,N]\times[0,N]$.

    Les termes $u_{m,m}=1$ sont dans le carré pour $m \in \{0, \dots, N\}$.

    Les termes $u_{m,m+1}=-1$ sont dans le carré pour $m \in \{0, \dots, N-1\}$ (car il faut $m+1 \le N$).

    $$ S_N = \sum_{m=0}^N u_{m,m} + \sum_{m=0}^{N-1} u_{m,m+1} = \sum_{m=0}^N 1 + \sum_{m=0}^{N-1} (-1) = (N+1) - N = 1. $$

    La suite $(S_N)_{N\in\mathbb{N}}$ est constante et égale à 1.

    Donc, $\lim_{N\to\infty} S_N = 1$.

**Answer:** 1. $S_1 = 0$ et $S_2 = 1$. 2. Les sommes sont différentes. Fubini ne s'applique pas car la série des modules $\sum |u_{m,n}|$ diverge. 3. La limite des sommes sur les carrés croissants est $\lim_{N\to\infty} S_N = 1$.

</details>

## Exercise 7: [Research-level problems]

**Problem:** Étudier la nature de la série de terme général $u_n = \frac{1}{n \ln n (\ln(\ln n))^\alpha}$ pour $n \ge 3$, en fonction du paramètre réel $\alpha$. Ces séries sont parfois appelées séries de Du Bois-Reymond.

<details>

<summary>Solution</summary>

**Method:** La fonction $f(t) = \frac{1}{t \ln t (\ln(\ln t))^\alpha}$ est continue, positive et décroissante sur $[3, +\infty[$. On peut donc appliquer le critère de comparaison série-intégrale. L'intégrale $\int_3^{+\infty} f(t)dt$ se calcule par un changement de variable.

**Steps:**

1.  **Vérification des hypothèses du critère de comparaison :**

    Soit $f(t) = \frac{1}{t \ln t (\ln(\ln t))^\alpha}$ pour $t \ge 3$.

    -   $f$ est continue et positive.
    -   $f$ est décroissante car c'est l'inverse d'un produit de fonctions croissantes et positives.

    La série $\sum u_n$ et l'intégrale $\int_3^{+\infty} f(t)dt$ sont donc de même nature.

2.  **Calcul de l'intégrale :** On étudie $\int_3^X f(t)dt$.

    On effectue le changement de variable $u = \ln(\ln t)$.

    Alors $du = \frac{1}{\ln t} \cdot \frac{1}{t} dt$.

    L'intégrale devient :

    $$ \int_{\ln(\ln 3)}^{\ln(\ln X)} \frac{1}{u^\alpha} du $$

3.  **Discussion selon $\alpha$ :**
    -   **Cas $\alpha = 1$ :** L'intégrale est $\int_{\ln(\ln 3)}^{\ln(\ln X)} \frac{1}{u} du = [\ln u]_{\ln(\ln 3)}^{\ln(\ln X)} = \ln(\ln(\ln X)) - \ln(\ln(\ln 3))$.

        Lorsque $X \to +\infty$, $\ln(\ln(\ln X)) \to +\infty$. L'intégrale diverge.

    -   **Cas $\alpha \ne 1$ :** L'intégrale est $\int_{\ln(\ln 3)}^{\ln(\ln X)} u^{-\alpha} du = \left[ \frac{u^{1-\alpha}}{1-\alpha} \right]_{\ln(\ln 3)}^{\ln(\ln X)}$.

        $$ = \frac{(\ln(\ln X))^{1-\alpha} - (\ln(\ln 3))^{1-\alpha}}{1-\alpha} $$

        La limite de cette expression quand $X \to +\infty$ dépend du signe de $1-\alpha$.

        -   Si $1-\alpha > 0$, i.e., $\alpha < 1$, alors $(\ln(\ln X))^{1-\alpha} \to +\infty$. L'intégrale diverge.
        -   Si $1-\alpha < 0$, i.e., $\alpha > 1$, alors $(\ln(\ln X))^{1-\alpha} \to 0$. L'intégrale converge.

4.  **Conclusion :**

    L'intégrale $\int_3^{+\infty} f(t)dt$ converge si et seulement si $\alpha > 1$.

    Par le critère de comparaison série-intégrale, la série $\sum_{n=3}^\infty \frac{1}{n \ln n (\ln(\ln n))^\alpha}$ converge si et seulement si $\alpha > 1$.

**Answer:** La série converge si et seulement si $\alpha > 1$.

</details>

## Exercise 8: [Advanced Applications]

**Problem:** On définit la suite $(u_n)_{n\ge 1}$ par $u_n = \left(\sum_{k=1}^n \frac{1}{k}\right) - \ln n$.

1.  Montrer que la suite $(u_n)$ converge vers une limite $\gamma$, appelée constante d'Euler-Mascheroni.
2.  On pose $v_n = u_n - \gamma$. Donner un équivalent de $v_n$ lorsque $n \to \infty$.

<details>

<summary>Solution</summary>

**Method:** Pour la convergence, on étudie la série de terme général $u_{n+1}-u_n$ et on montre qu'elle converge. Pour l'équivalent du reste $v_n = -\sum_{k=n+1}^\infty (u_k-u_{k-1})$, on utilise une comparaison série-intégrale pour estimer ce reste.

**Steps:**

1.  **Convergence de $(u_n)$ :**

    Étudions le signe de $u_{n+1}-u_n$:

    $$ u_{n+1} - u_n = \left(H_{n+1} - \ln(n+1)\right) - \left(H_n - \ln n\right) = \frac{1}{n+1} - (\ln(n+1) - \ln n) = \frac{1}{n+1} - \ln\left(1+\frac{1}{n}\right). $$

    On sait que pour $x>0$, $\ln(1+x) < x$. Donc pour $x=1/n$, $\ln(1+1/n) < 1/n$. Mais cela ne suffit pas.

    Utilisons le développement limité de $\ln(1+x)=x-x^2/2+O(x^3)$:

    $$ \ln\left(1+\frac{1}{n}\right) = \frac{1}{n} - \frac{1}{2n^2} + O\left(\frac{1}{n^3}\right). $$

    $$ u_{n+1} - u_n = \frac{1}{n+1} - \left(\frac{1}{n} - \frac{1}{2n^2} + \dots\right) = \frac{n-(n+1)}{n(n+1)} + \frac{1}{2n^2} + \dots = -\frac{1}{n(n+1)} + \frac{1}{2n^2} + \dots $$

    $$ = -\frac{1}{n^2+n} + \frac{1}{2n^2} + \dots \sim \frac{-2n+n+1}{2n^2(n+1)} \sim \frac{-1}{2n^2}. $$

    Le terme général $u_{n+1}-u_n$ est équivalent à $-1/(2n^2)$.

    La série $\sum (u_{n+1}-u_n)$ est donc une série convergente (absolument).

    La suite $u_n = u_1 + \sum_{k=1}^{n-1} (u_{k+1}-u_k)$ converge donc. Sa limite est notée $\gamma$.

2.  **Équivalent de $v_n = u_n - \gamma$ :**

    On a $v_n = u_n - \gamma = -( \lim_{N\to\infty} u_N - u_n) = - \sum_{k=n}^\infty (u_{k+1}-u_k)$.

    On a trouvé que $w_k = u_{k+1}-u_k \sim -1/(2k^2)$.

    Le reste d'une série convergente à termes de signe constant $\sum w_k$ où $w_k \sim L/k^\alpha$ avec $\alpha>1$ est équivalent à l'intégrale du terme équivalent:

    $$ \sum_{k=n}^\infty w_k \sim \int_n^\infty \frac{-1}{2t^2} dt = \left[ \frac{1}{2t} \right]_n^\infty = -\frac{1}{2n}. $$

    Donc $v_n = u_n - \gamma = -\sum_{k=n}^\infty (u_{k+1}-u_k) \sim -(-\frac{1}{2n}) = \frac{1}{2n}$.

    Pour être plus rigoureux, on peut utiliser l'encadrement du reste par des intégrales.

    Soit $f(t) = \ln(1+1/t) - 1/(t+1)$. La série est $\sum f(k)$.

    $f(k) \sim 1/(2k^2)$. Le reste $R_n = \sum_{k=n+1}^\infty f(k)$ vérifie :

    $\int_{n+1}^\infty f(t)dt \le R_n \le \int_n^\infty f(t)dt$.

    $\int_n^\infty \frac{1}{2t^2}dt = \frac{1}{2n}$. Donc $u_n-\gamma = -R_{n-1} \sim -\frac{1}{2(n-1)} \sim -\frac{1}{2n}$. Il y a une erreur de signe dans mon raisonnement.

    $u_{n+1}-u_n < 0$ pour $n$ grand, donc la suite $(u_n)$ est décroissante. Elle est minorée par 0 (via $\int_1^{n+1} \frac{dt}{t} \le \sum_{k=1}^n \frac{1}{k}$). Elle converge.

    $v_n = u_n - \gamma > 0$.

    $v_n = \sum_{k=n}^\infty (\gamma - u_k) - (\gamma-u_{k+1}) = \sum_{k=n}^\infty -(u_{k+1}-u_k)$.

    $u_{k+1}-u_k = \frac{1}{k+1} - \ln(1+\frac{1}{k}) \sim -\frac{1}{2k^2}$.

    $v_n \sim \sum_{k=n}^\infty \frac{1}{2k^2} \sim \int_n^\infty \frac{1}{2t^2} dt = \frac{1}{2n}$.

**Answer:** 1. La série de terme général $u_{n+1}-u_n \sim -1/(2n^2)$ converge, donc la suite $(u_n)$ converge. 2. $u_n-\gamma \sim \frac{1}{2n}$.

</details>

## Exercise 9: [Complex Proof]

**Problem:** Démontrer le théorème taubérien suivant (une version simplifiée du théorème de Hardy-Littlewood) :

Soit $\sum u_n$ une série à termes réels. Si elle est Césaro-sommable vers une somme $l$ et si $u_n = o(1/n)$ (c'est-à-dire $\lim_{n\to\infty} n u_n = 0$), alors la série $\sum u_n$ converge (au sens usuel) vers $l$.

<details>

<summary>Solution</summary>

**Method:** C'est une preuve classique et difficile. L'idée est de montrer que la condition $n u_n \to 0$ permet de contrôler l'écart entre les sommes partielles $s_n$ et les moyennes de Césaro $c_n$. On montre que si $n$ et $m$ sont "proches" (i.e. $m/n \to 1$), alors $s_m-s_n \to 0$. En combinant cela avec la convergence de $c_n$, on montre que $s_n \to l$.

**Steps:**

1.  **Notations :** Soit $s_n = \sum_{k=0}^n u_k$ et $c_n = \frac{1}{n+1}\sum_{k=0}^n s_k$. On suppose $c_n \to l$ et $n u_n \to 0$. On veut montrer que $s_n \to l$.

    On peut, sans perte de généralité, supposer $l=0$. (Sinon, on travaille avec $u'_0=u_0-l$ et $u'_n=u_n$ pour $n\ge 1$).

2.  **Lien entre $s_n$ et $c_n$ :** On a $s_n = (n+1)c_n - n c_{n-1}$.

    Si $c_n \to 0$, alors $(n+1)c_n \to \infty \cdot 0$, c'est indéterminé. Ce n'est pas la bonne voie.

3.  **Contrôler $s_m-s_n$ :** Soit $m>n$.

    $$ s_m - s_n = \sum_{k=n+1}^m u_k = \sum_{k=n+1}^m \frac{k u_k}{k} $$

    Soit $\varepsilon > 0$. Par hypothèse $k u_k \to 0$, il existe $N_0$ tel que pour $k>N_0$, $|k u_k| < \varepsilon$.

    Pour $m>n>N_0$ :

    $$ |s_m - s_n| \le \sum_{k=n+1}^m \frac{|k u_k|}{k} < \varepsilon \sum_{k=n+1}^m \frac{1}{k} \approx \varepsilon (\ln m - \ln n) = \varepsilon \ln(m/n). $$

4.  **Stratégie :** On va montrer que $\limsup s_n \le 0$ et $\liminf s_n \ge 0$.

    Prenons $m = n + \lfloor \lambda n \rfloor$ pour un $\lambda > 0$ petit. Alors $m/n \to 1+\lambda$.

    $|s_m - s_n| < \varepsilon \ln(m/n) \approx \varepsilon \ln(1+\lambda) \approx \varepsilon \lambda$.

    On peut rendre cette différence petite.

5.  **Relation entre $s_n$ et $c_n$ (autre) :**

    $$(m+1)c_m - (n+1)c_n = \sum_{k=n+1}^m s_k = \sum_{k=n+1}^m (s_n + \sum_{j=n+1}^k u_j) = (m-n)s_n + \sum_{k=n+1}^m \sum_{j=n+1}^k u_j$$

    Cette expression est complexe.

    Essayons plutôt :

    $$ s_n - c_n = \frac{1}{n+1} \sum_{k=0}^n (s_n - s_k) = \frac{1}{n+1} \sum_{k=0}^n \sum_{j=k+1}^n u_j $$

    Cette double somme est difficile à manipuler.

    La preuve standard est plus astucieuse. Pour $m > n$,

    $$ (m+1)c_m - n c_{n-1} = s_n + \dots + s_m $$

    On choisit $m = \lfloor n(1+\delta) \rfloor$ pour $\delta > 0$. Pour $n$ grand, $m>n$.

    $$ (m-n) s_n = \sum_{k=n+1}^m (s_n - s_k) + \sum_{k=n+1}^m s_k = -\sum_{k=n+1}^m \sum_{j=n+1}^k u_j + ((m+1)c_m - (n+1)c_n) $$

    Les termes $u_j$ sont petits, $u_j \approx \varepsilon_j/j$.

    La somme $\sum_{j=n+1}^k u_j$ est bornée par $\varepsilon \ln(k/n)$.

    Pour $k \in [n+1, m]$, $k/n \in [1, 1+\delta]$. Donc $\ln(k/n)$ est borné par $\ln(1+\delta)$.

    $|s_k - s_n| \le \varepsilon' \ln(k/n)$.

    $s_n$ est donc proche de $c_n$. C'est l'idée générale.

6.  **Preuve formelle (esquisse) :** On veut borner $s_n$. Soit $\lambda > 1$ et $m = \lfloor \lambda n \rfloor$.

    $$ (m+1)c_m - (n+1)c_n = \sum_{k=n+1}^m s_k $$

    Comme $c_k \to l$, $\frac{1}{m-n}\sum_{k=n+1}^m s_k \to l$. (Césaro sur une tranche).

    Pour $k \in [n,m]$, $|s_k - s_n| = |\sum_{j=n+1}^k u_j| \le \sup_{j>n} |j u_j| \sum_{j=n+1}^k \frac{1}{j} \le \varepsilon_n (\ln k - \ln n) \le \varepsilon_n \ln(m/n) = \varepsilon_n \ln \lambda$.

    où $\varepsilon_n \to 0$.

    Donc $s_k$ est proche de $s_n$ sur l'intervalle $[n, m]$.

    Alors la moyenne des $s_k$ sur cet intervalle est proche de $s_n$.

    $$ \left| \frac{1}{m-n}\sum_{k=n+1}^m s_k - s_n \right| = \frac{1}{m-n} \left| \sum_{k=n+1}^m (s_k-s_n) \right| \le \frac{1}{m-n} \sum_{k=n+1}^m |s_k-s_n| \le \varepsilon_n \ln \lambda. $$

    Comme $\frac{1}{m-n}\sum_{k=n+1}^m s_k \to l$, on a $s_n \to l$.

**Answer:** Le théorème est prouvé en montrant que la condition $u_n=o(1/n)$ assure que les sommes partielles $s_k$ varient peu sur des intervalles $[n, \lambda n]$. La moyenne des $s_k$ sur un tel intervalle tendant vers $l$ (par Césaro-sommabilité), on en déduit que $s_n$ doit aussi tendre vers $l$.

</details>

## Exercise 10: [Advanced Applications]

**Problem:** Soit la série $S = \sum_{n=0}^\infty u_n$ avec $u_n = \frac{(-1)^n}{\sqrt{n+1}}$.

1.  Montrer que cette série est semi-convergente.
2.  On considère le produit de Cauchy de cette série par elle-même, $C = \sum_{n=0}^\infty w_n$, où $w_n = \sum_{k=0}^n u_k u_{n-k}$.
3.  Montrer que la série produit $\sum w_n$ diverge. Conclure sur le théorème de Mertens.

<details>

<summary>Solution</summary>

**Method:** La semi-convergence se prouve avec le critère des séries alternées et en montrant que la série des valeurs absolues diverge (série de Riemann). Pour le produit de Cauchy, on calcule explicitement le terme général $w_n$ et on montre qu'il ne tend pas vers 0, ce qui implique la divergence de la série produit.

**Steps:**

1.  **Semi-convergence de $\sum u_n$ :**
    -   **Convergence :** C'est une série alternée. Posons $b_n = \frac{1}{\sqrt{n+1}}$. La suite $(b_n)$ est positive, décroissante, et tend vers 0. D'après le critère des séries alternées, $\sum u_n$ converge.
    -   **Non-convergence absolue :** La série des valeurs absolues est $\sum_{n=0}^\infty |u_n| = \sum_{n=0}^\infty \frac{1}{\sqrt{n+1}}$.

        Le terme général $\frac{1}{\sqrt{n+1}} \sim_{n\to\infty} \frac{1}{n^{1/2}}$. C'est une série de Riemann avec $\alpha=1/2 \le 1$, donc elle diverge.

        La série est donc convergente mais pas absolument convergente : elle est semi-convergente.

2.  **Calcul du terme général $w_n$ du produit de Cauchy :**

    $$ w_n = \sum_{k=0}^n u_k u_{n-k} = \sum_{k=0}^n \frac{(-1)^k}{\sqrt{k+1}} \frac{(-1)^{n-k}}{\sqrt{n-k+1}} $$

    $$ w_n = (-1)^n \sum_{k=0}^n \frac{1}{\sqrt{k+1}\sqrt{n-k+1}} $$

3.  **Divergence de la série $\sum w_n$ :**

    Pour montrer que la série diverge, il suffit de montrer que son terme général $w_n$ ne tend pas vers 0.

    Étudions la somme $S_n = \sum_{k=0}^n \frac{1}{\sqrt{k+1}\sqrt{n-k+1}}$.

    La fonction $f(k) = (k+1)(n-k+1) = -k^2 + nk + n+1$ a son maximum pour $k=n/2$.

    Le minimum du produit $\sqrt{k+1}\sqrt{n-k+1}$ est atteint aux bords $k=0$ ou $k=n$, où il vaut $\sqrt{n+1}$. Le maximum est atteint au centre $k \approx n/2$, où il vaut $\approx \sqrt{(n/2+1)(n/2+1)} = n/2+1$.

    Donc les termes au centre de la somme sont les plus petits.

    Pour tout $k \in \{0, \dots, n\}$, on a $k+1 \le n+1$ et $n-k+1 \le n+1$.

    Donc $\sqrt{k+1}\sqrt{n-k+1} \le \sqrt{(n+1)(n+1)} = n+1$.

    Ceci donne une minoration de la somme :

    $$ S_n = \sum_{k=0}^n \frac{1}{\sqrt{(k+1)(n-k+1)}} \ge \sum_{k=0}^n \frac{1}{\sqrt{(\frac{n}{2}+1)^2}} = \frac{n+1}{\frac{n}{2}+1} \to 2. $$

    Une minoration plus précise : l'inégalité arithmético-géométrique donne $\sqrt{ab} \le \frac{a+b}{2}$.

    $$ \sqrt{(k+1)(n-k+1)} \le \frac{(k+1)+(n-k+1)}{2} = \frac{n+2}{2} $$

    Donc $\frac{1}{\sqrt{(k+1)(n-k+1)}} \ge \frac{2}{n+2}$.

    $$ S_n = \sum_{k=0}^n \frac{1}{\sqrt{(k+1)(n-k+1)}} \ge \sum_{k=0}^n \frac{2}{n+2} = (n+1) \frac{2}{n+2} $$

    Lorsque $n \to \infty$, cette minoration tend vers 2.

    Donc $|w_n| = S_n$ ne tend pas vers 0.

    La série $\sum w_n$ diverge grossièrement.

4.  **Conclusion sur le théorème de Mertens :** Le théorème de Mertens stipule que si une série $\sum a_n$ converge absolument et une série $\sum b_n$ converge, alors leur produit de Cauchy converge. Ici, aucune des deux séries ne converge absolument. Cet exercice montre que la condition de convergence absolue d'au moins une des deux séries est essentielle.

**Answer:** 1. La série $\sum u_n$ est semi-convergente. 2. Le terme général du produit de Cauchy est $w_n = (-1)^n \sum_{k=0}^n \frac{1}{\sqrt{(k+1)(n-k+1)}}$. 3. On montre que $|w_n| \ge \frac{2(n+1)}{n+2}$, donc $w_n$ ne tend pas vers 0 et la série produit diverge. Cela montre que la condition de convergence absolue dans le théorème de Mertens est nécessaire.

</details>
