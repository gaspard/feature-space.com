---
id: e66af543
type: exercises
order: 11
title: "Analyse: Suites - exercices (A)"
tags:
  - analyse
  - suites
  - limites
  - continuité
  - dérivabilité
  - intégration
createdAt: '2025-10-18T19:08:32.827Z'
level: regular
course: Constructions et raisonnements mathématiques
courseId: d2e11e03
chapter: "Analyse: Suites"
chapterId: a5489a34
---
# Exercices "Analyse: Suites" (A)

---

## Exercice 1

**Problème :** Soit la suite de nombres complexes $(u_n)_{n \in \mathbb{N}}$ définie par la formule explicite :

$$ u_n = \frac{n-2i}{n+1} + i^n $$

Calculez les trois premiers termes de la suite : $u_0$, $u_1$, et $u_2$.

<details>

<summary>Solution</summary>

**Méthode :** Pour trouver chaque terme, il suffit de remplacer l'indice $n$ par sa valeur (0, 1, et 2) dans la formule donnée et d'effectuer les calculs sur les nombres complexes. Rappelez-vous que $i^0=1$, $i^1=i$, et $i^2=-1$.

**Étapes :**

1.  **Calcul de $u_0$ (pour n=0) :**

    On remplace $n$ par 0 dans la formule.

    $$ u_0 = \frac{0-2i}{0+1} + i^0 = \frac{-2i}{1} + 1 = 1 - 2i $$

2.  **Calcul de $u_1$ (pour n=1) :**

    On remplace $n$ par 1 dans la formule.

    $$ u_1 = \frac{1-2i}{1+1} + i^1 = \frac{1-2i}{2} + i = \left(\frac{1}{2} - i\right) + i = \frac{1}{2} $$

3.  **Calcul de $u_2$ (pour n=2) :**

    On remplace $n$ par 2 dans la formule.

    $$ u_2 = \frac{2-2i}{2+1} + i^2 = \frac{2-2i}{3} + (-1) = \left(\frac{2}{3} - \frac{2}{3}i\right) - 1 = \left(\frac{2}{3} - 1\right) - \frac{2}{3}i = -\frac{1}{3} - \frac{2}{3}i $$

**Réponse :** Les trois premiers termes sont $u_0 = 1 - 2i$, $u_1 = \frac{1}{2}$, et $u_2 = -\frac{1}{3} - \frac{2}{3}i$.

</details>

---

## Exercice 2

**Problème :** Soit la suite géométrique $(z_n)_{n \in \mathbb{N}}$ définie par son premier terme $z_0 = 2+2i$ et la relation de récurrence $z_{n+1} = \frac{1}{2}i \cdot z_n$ pour tout $n \in \mathbb{N}$.

Calculez les termes $z_1$, $z_2$ et $z_3$. Donnez la formule explicite de $z_n$.

<details>

<summary>Solution</summary>

**Méthode :** On utilise la relation de récurrence pour calculer chaque terme à partir du précédent. Pour la formule explicite d'une suite géométrique, on utilise la formule $z_n = z_0 \cdot \lambda^n$, où $\lambda$ est la raison de la suite.

**Étapes :**

1.  **Calcul de $z_1$ :**

    On utilise la formule de récurrence avec $n=0$.

    $$ z_1 = \frac{1}{2}i \cdot z_0 = \frac{1}{2}i \cdot (2+2i) = \frac{2}{2}i + \frac{2}{2}i^2 = i - 1 = -1 + i $$

2.  **Calcul de $z_2$ :**

    On utilise la formule avec $n=1$.

    $$ z_2 = \frac{1}{2}i \cdot z_1 = \frac{1}{2}i \cdot (-1+i) = -\frac{1}{2}i + \frac{1}{2}i^2 = -\frac{1}{2}i - \frac{1}{2} = -\frac{1}{2} - \frac{1}{2}i $$

3.  **Calcul de $z_3$ :**

    On utilise la formule avec $n=2$.

    $$ z_3 = \frac{1}{2}i \cdot z_2 = \frac{1}{2}i \cdot \left(-\frac{1}{2} - \frac{1}{2}i\right) = -\frac{1}{4}i - \frac{1}{4}i^2 = -\frac{1}{4}i + \frac{1}{4} = \frac{1}{4} - \frac{1}{4}i $$

4.  **Formule explicite de $z_n$ :**

    La suite est géométrique de premier terme $z_0 = 2+2i$ et de raison $\lambda = \frac{1}{2}i$. La formule explicite est $z_n = z_0 \cdot \lambda^n$.

    $$ z_n = (2+2i) \cdot \left(\frac{1}{2}i\right)^n $$

**Réponse :** Les termes sont $z_1 = -1+i$, $z_2 = -\frac{1}{2} - \frac{1}{2}i$, $z_3 = \frac{1}{4} - \frac{1}{4}i$. La formule explicite est $z_n = (2+2i) \left(\frac{i}{2}\right)^n$.

</details>

---

## Exercice 3

**Problème :** En utilisant la définition formelle de la convergence (avec $\varepsilon$ et $N$), montrez que la suite $(u_n)_{n \in \mathbb{N}^*}$ définie par $u_n = \frac{3i}{n}$ converge vers $l=0$.

<details>

<summary>Solution</summary>

**Méthode :** On applique la définition de la convergence : $\forall \varepsilon > 0, \exists N \in \mathbb{N}, \forall n \ge N, |u_n - l| < \varepsilon$. On fixe un $\varepsilon > 0$ quelconque, puis on exprime la condition $|u_n - l| < \varepsilon$ pour trouver une condition sur $n$. Cette condition nous permettra de choisir un rang $N$ approprié.

**Étapes :**

1.  **Fixer $\varepsilon$ et calculer la distance :**

    Soit $\varepsilon > 0$ un réel quelconque. On calcule la distance entre $u_n$ et la limite supposée $l=0$.

    $$ |u_n - l| = \left| \frac{3i}{n} - 0 \right| = \left| \frac{3i}{n} \right| = \frac{|3i|}{|n|} = \frac{3}{n} $$

    (car $n \in \mathbb{N}^*$, donc $n>0$ et $|n|=n$)

2.  **Trouver la condition sur $n$ :**

    On veut que la distance soit inférieure à $\varepsilon$. On résout donc l'inégalité :

    $$ |u_n - l| < \varepsilon \iff \frac{3}{n} < \varepsilon $$

    Comme $n$ et $\varepsilon$ sont positifs, on peut inverser l'inégalité :

    $$ n > \frac{3}{\varepsilon} $$

3.  **Choisir le rang $N$ :**

    La condition $|u_n - 0| < \varepsilon$ est satisfaite pour tous les entiers $n$ qui sont strictement plus grands que $3/\varepsilon$. Il suffit donc de choisir un entier $N$ qui vérifie cette condition. On peut prendre, par exemple, $N = \lfloor \frac{3}{\varepsilon} \rfloor + 1$.

    ( $\lfloor x \rfloor$ est la partie entière de $x$)

4.  **Conclusion :**

    Pour tout $\varepsilon > 0$, on a trouvé un rang $N = \lfloor 3/\varepsilon \rfloor + 1$ tel que pour tout entier $n \ge N$, on a $n > 3/\varepsilon$, ce qui implique $|u_n - 0| < \varepsilon$. Ceci est la définition formelle de la convergence.

**Réponse :** La suite $(u_n)$ converge bien vers $0$. $\lim_{n \to +\infty} \frac{3i}{n} = 0$.

</details>

---

## Exercice 4

**Problème :** La suite $(u_n)_{n \in \mathbb{N}}$ définie par $u_n = n \cdot e^{i \pi / 4}$ est-elle bornée ? Justifiez votre réponse et déduisez-en sa nature (convergente ou divergente).

<details>

<summary>Solution</summary>

**Méthode :** Pour déterminer si une suite complexe est bornée, on étudie le module de son terme général, $|u_n|$. Si la suite des modules $(|u_n|)$ est majorée par un réel $M$, alors la suite $(u_n)$ est bornée. On utilisera ensuite la propriété : "toute suite non bornée est divergente".

**Étapes :**

1.  **Calcul du module de $u_n$ :**

    Le terme général est $u_n = n \cdot e^{i \pi / 4}$. On utilise la propriété $|z_1 \cdot z_2| = |z_1| \cdot |z_2|$.

    $$ |u_n| = |n \cdot e^{i \pi / 4}| = |n| \cdot |e^{i \pi / 4}| $$

2.  **Simplification du module :**

    Comme $n \in \mathbb{N}$, $|n| = n$. Le module d'un nombre complexe de la forme $e^{i\theta}$ est toujours 1, car $|e^{i\theta}| = |\cos(\theta) + i\sin(\theta)| = \sqrt{\cos^2(\theta) + \sin^2(\theta)} = \sqrt{1} = 1$.

    Donc,

    $$ |u_n| = n \cdot 1 = n $$

3.  **Analyse de la suite des modules :**

    La suite des modules est $(|u_n|)_{n\in\mathbb{N}} = (n)_{n\in\mathbb{N}}$. Cette suite $(0, 1, 2, 3, \dots)$ n'est pas majorée. Pour n'importe quel réel $M > 0$ que l'on choisit, on peut toujours trouver un entier $n$ (par exemple $n = \lfloor M \rfloor + 1$) tel que $|u_n| = n > M$.

4.  **Conclusion :**

    Puisque l'ensemble des modules des termes de la suite $(u_n)$ n'est pas majoré, la suite n'est pas bornée. D'après la contraposée du théorème "toute suite convergente est bornée", on peut affirmer que toute suite non bornée est divergente.

**Réponse :** La suite $(u_n)$ n'est pas bornée car son module $|u_n|=n$ tend vers l'infini. Par conséquent, la suite $(u_n)$ est divergente.

</details>

---

## Exercice 5

**Problème :** Calculez la limite de la suite $(w_n)_{n \in \mathbb{N}}$ définie par :

$$ w_n = \frac{(3n-1)(n+2i)}{n^2 + 4i} $$

<details>

<summary>Solution</summary>

**Méthode :** La suite est un quotient de deux polynômes en $n$. La technique standard est de factoriser le numérateur et le dénominateur par leur terme de plus haut degré en $n$, puis de simplifier l'expression. On utilise ensuite les règles d'opérations sur les limites.

**Étapes :**

1.  **Développer le numérateur :**

    $$ (3n-1)(n+2i) = 3n^2 + 6in - n - 2i = 3n^2 + (6i-1)n - 2i $$

    La suite s'écrit donc :

    $$ w_n = \frac{3n^2 + (6i-1)n - 2i}{n^2 + 4i} $$

2.  **Factoriser par le terme de plus haut degré :**

    Le terme dominant au numérateur et au dénominateur est $n^2$. On factorise par $n^2$ en haut et en bas.

    $$ w_n = \frac{n^2 \left( 3 + \frac{6i-1}{n} - \frac{2i}{n^2} \right)}{n^2 \left( 1 + \frac{4i}{n^2} \right)} $$

3.  **Simplifier l'expression :**

    On peut simplifier par $n^2$ (pour $n \ge 1$).

    $$ w_n = \frac{3 + \frac{6i-1}{n} - \frac{2i}{n^2}}{1 + \frac{4i}{n^2}} $$

4.  **Calculer la limite :**

    On utilise les propriétés des limites. On sait que $\lim_{n \to \infty} \frac{C}{n} = 0$ et $\lim_{n \to \infty} \frac{C}{n^2} = 0$ pour toute constante $C \in \mathbb{C}$.

    -   Limite du numérateur : $\lim_{n \to \infty} \left( 3 + \frac{6i-1}{n} - \frac{2i}{n^2} \right) = 3 + 0 - 0 = 3$.
    -   Limite du dénominateur : $\lim_{n \to \infty} \left( 1 + \frac{4i}{n^2} \right) = 1 + 0 = 1$.

    La limite du dénominateur est non nulle, donc la limite du quotient est le quotient des limites.

    $$ \lim_{n \to \infty} w_n = \frac{3}{1} = 3 $$

**Réponse :** $\lim_{n \to \infty} w_n = 3$

</details>

---

## Exercice 6

**Problème :** Montrez que la suite $(u_n)_{n \in \mathbb{N}}$ définie par $u_n = (-1)^n \frac{n}{n+1}$ est divergente.

<details>

<summary>Solution</summary>

**Méthode :** On peut montrer la divergence par l'absurde. On suppose que la suite converge vers une limite $l$, puis on montre que cela mène à une contradiction. Une autre approche consiste à examiner le comportement des termes de rang pair et des termes de rang impair. S'ils convergent vers des limites différentes, la suite entière ne peut pas converger.

**Étapes :**

1.  **Examiner les termes de rang pair :**

    Soit $n=2k$ avec $k \in \mathbb{N}$. Le terme général de la sous-suite des termes pairs est :

    $$ u_{2k} = (-1)^{2k} \frac{2k}{2k+1} = 1 \cdot \frac{2k}{2k+1} = \frac{2k}{2k+1} $$

    Calculons la limite de cette sous-suite quand $k \to \infty$ :

    $$ \lim_{k \to \infty} u_{2k} = \lim_{k \to \infty} \frac{2k}{2k+1} = \lim_{k \to \infty} \frac{2}{2+1/k} = \frac{2}{2} = 1 $$

2.  **Examiner les termes de rang impair :**

    Soit $n=2k+1$ avec $k \in \mathbb{N}$. Le terme général de la sous-suite des termes impairs est :

    $$ u_{2k+1} = (-1)^{2k+1} \frac{2k+1}{(2k+1)+1} = -1 \cdot \frac{2k+1}{2k+2} $$

    Calculons la limite de cette sous-suite quand $k \to \infty$ :

    $$ \lim_{k \to \infty} u_{2k+1} = \lim_{k \to \infty} -\frac{2k+1}{2k+2} = \lim_{k \to \infty} -\frac{2+1/k}{2+2/k} = -\frac{2}{2} = -1 $$

3.  **Conclusion :**

    Nous avons trouvé deux sous-suites (les termes pairs et les termes impairs) qui convergent vers des limites différentes (1 et -1).

    Si une suite converge vers une limite $l$, alors toutes ses sous-suites doivent converger vers cette même limite $l$.

    Puisque nous avons trouvé deux sous-suites qui convergent vers des limites distinctes, la suite $(u_n)$ ne peut pas converger. Elle est donc divergente.

**Réponse :** La suite $(u_n)$ est divergente car les termes de rang pair convergent vers 1, tandis que les termes de rang impair convergent vers -1.

</details>

---

## Exercice 7

**Problème :** Soit la suite $(z_n)_{n \in \mathbb{N}^*}$ définie par $z_n = \left(\frac{n-1}{n}\right) + i \left(\frac{\sin(n)}{n}\right)$.

Déterminez si cette suite converge, et si oui, calculez sa limite.

<details>

<summary>Solution</summary>

**Méthode :** Une suite complexe $z_n = x_n + iy_n$ converge si et seulement si ses parties réelle $(x_n)$ et imaginaire $(y_n)$ convergent. On étudie donc séparément la convergence de la suite réelle $(\text{Re}(z_n))$ et de la suite imaginaire $(\text{Im}(z_n))$.

**Étapes :**

1.  **Identifier les parties réelle et imaginaire :**

    Pour la suite $z_n$, on a :

    -   Partie réelle : $x_n = \text{Re}(z_n) = \frac{n-1}{n}$
    -   Partie imaginaire : $y_n = \text{Im}(z_n) = \frac{\sin(n)}{n}$

2.  **Étudier la convergence de la partie réelle $(x_n)$ :**

    $$ \lim_{n \to \infty} x_n = \lim_{n \to \infty} \frac{n-1}{n} = \lim_{n \to \infty} \left(1 - \frac{1}{n}\right) = 1 - 0 = 1 $$

    La suite de la partie réelle converge vers 1.

3.  **Étudier la convergence de la partie imaginaire $(y_n)$ :**

    Pour la suite $y_n = \frac{\sin(n)}{n}$, on utilise le théorème des gendarmes. On sait que pour tout $n \in \mathbb{N}^*$, $-1 \le \sin(n) \le 1$.

    En divisant par $n$ (qui est positif), on obtient :

    $$ -\frac{1}{n} \le \frac{\sin(n)}{n} \le \frac{1}{n} $$

    On sait que $\lim_{n \to \infty} (-\frac{1}{n}) = 0$ et $\lim_{n \to \infty} \frac{1}{n} = 0$.

    Par le théorème des gendarmes, on conclut que :

    $$ \lim_{n \to \infty} y_n = \lim_{n \to \infty} \frac{\sin(n)}{n} = 0 $$

    La suite de la partie imaginaire converge vers 0.

4.  **Conclusion sur la suite $(z_n)$ :**

    Puisque la partie réelle et la partie imaginaire convergent, la suite complexe $(z_n)$ converge. Sa limite est $l = (\lim x_n) + i (\lim y_n)$.

    $$ \lim_{n \to \infty} z_n = 1 + i \cdot 0 = 1 $$

**Réponse :** La suite $(z_n)$ converge et sa limite est $1$.

</details>

---

## Exercice 8

**Problème :** En utilisant les équivalents usuels, déterminez la limite de la suite $(u_n)_{n \in \mathbb{N}^*}$ définie par :

$$ u_n = n \sin\left(\frac{2}{n}\right) $$

<details>

<summary>Solution</summary>

**Méthode :** On utilise l'équivalent usuel de $\sin(x)$ lorsque $x$ tend vers 0. On pose $x_n = 2/n$. Quand $n \to \infty$, $x_n \to 0$, ce qui nous permet d'appliquer l'équivalent. On a $\sin(x) \sim x$ quand $x \to 0$.

**Étapes :**

1.  **Identifier le terme qui tend vers 0 :**

    Dans l'expression $\sin(2/n)$, l'argument $2/n$ tend vers 0 lorsque $n \to \infty$.

2.  **Appliquer l'équivalent usuel :**

    Puisque $\lim_{n \to \infty} \frac{2}{n} = 0$, on peut utiliser l'équivalent $\sin(x) \sim x$ en remplaçant $x$ par $2/n$. On obtient :

    $$ \sin\left(\frac{2}{n}\right) \sim \frac{2}{n} \quad \text{quand } n \to \infty $$

3.  **Remplacer dans l'expression de la limite :**

    Puisqu'on a un équivalent, on peut remplacer le terme dans le calcul de la limite.

    $$ \lim_{n \to \infty} u_n = \lim_{n \to \infty} n \sin\left(\frac{2}{n}\right) $$

    En utilisant l'équivalent, on a :

    $$ \lim_{n \to \infty} n \cdot \left(\frac{2}{n}\right) $$

4.  **Calculer la limite simplifiée :**

    $$ \lim_{n \to \infty} n \cdot \frac{2}{n} = \lim_{n \to \infty} 2 = 2 $$

**Réponse :** $\lim_{n \to \infty} u_n = 2$

</details>

---

## Exercice 9

**Problème :** Montrez que la suite $u_n = \frac{5n^2 + \cos(n)}{n-1}$ (définie pour $n \ge 2$) vérifie $u_n = O(n)$.

<details>

<summary>Solution</summary>

**Méthode :** Pour montrer que $u_n = O(n)$, il faut prouver que la suite quotient $\left(\frac{u_n}{n}\right)$ est bornée. Cela signifie qu'il existe un réel $M > 0$ tel que pour $n$ assez grand, $\left|\frac{u_n}{n}\right| \le M$. Une façon simple de le faire est de montrer que cette suite quotient converge, car toute suite convergente est bornée.

**Étapes :**

1.  **Former la suite quotient :**

    On calcule le terme général de la suite $\left(\frac{u_n}{n}\right)$.

    $$ \frac{u_n}{n} = \frac{1}{n} \cdot u_n = \frac{1}{n} \cdot \frac{5n^2 + \cos(n)}{n-1} = \frac{5n^2 + \cos(n)}{n(n-1)} = \frac{5n^2 + \cos(n)}{n^2 - n} $$

2.  **Déterminer la limite de la suite quotient :**

    On factorise par le terme de plus haut degré au numérateur et au dénominateur.

    $$ \frac{u_n}{n} = \frac{n^2\left(5 + \frac{\cos(n)}{n^2}\right)}{n^2\left(1 - \frac{1}{n}\right)} = \frac{5 + \frac{\cos(n)}{n^2}}{1 - \frac{1}{n}} $$

    Maintenant, on calcule la limite quand $n \to \infty$ :

    -   Au numérateur : $\frac{\cos(n)}{n^2} \to 0$ (par le théorème des gendarmes, car $|\cos(n)| \le 1$). Donc le numérateur tend vers $5+0=5$.
    -   Au dénominateur : $1 - \frac{1}{n} \to 1 - 0 = 1$.
    -   La limite du quotient est donc $\frac{5}{1}=5$.

3.  **Conclure sur le caractère borné :**

    La suite $\left(\frac{u_n}{n}\right)$ converge vers 5. Toute suite qui converge est bornée. Il existe donc un réel $M$ tel que $\left|\frac{u_n}{n}\right| \le M$ pour tout $n \ge 2$.

4.  **Conclusion finale :**

    Puisque la suite $\left(\frac{u_n}{n}\right)$ est bornée, par définition de la notation de Landau, on a bien $u_n = O(n)$.

**Réponse :** On a montré que la suite $\left(\frac{u_n}{n}\right)$ converge, elle est donc bornée. Ceci prouve que $u_n = O(n)$.

</details>

---

## Exercice 10

**Problème :** Trouvez un équivalent simple pour la suite $u_n = \sqrt{n^2+4n} - n$ quand $n \to \infty$, puis déduisez-en sa limite.

<details>

<summary>Solution</summary>

**Méthode :** La suite est sous la forme "$\infty - \infty$", une forme indéterminée. La technique classique pour les expressions avec des racines carrées est de multiplier et diviser par la quantité conjuguée.

**Étapes :**

1.  **Multiplier par la quantité conjuguée :**

    La quantité conjuguée de $\sqrt{n^2+4n} - n$ est $\sqrt{n^2+4n} + n$. On multiplie et divise $u_n$ par cette quantité.

    $$ u_n = (\sqrt{n^2+4n} - n) \cdot \frac{\sqrt{n^2+4n} + n}{\sqrt{n^2+4n} + n} $$

2.  **Simplifier le numérateur :**

    On utilise l'identité remarquable $(a-b)(a+b) = a^2 - b^2$.

    $$ u_n = \frac{(\sqrt{n^2+4n})^2 - n^2}{\sqrt{n^2+4n} + n} = \frac{(n^2+4n) - n^2}{\sqrt{n^2+4n} + n} = \frac{4n}{\sqrt{n^2+4n} + n} $$

3.  **Trouver un équivalent du dénominateur :**

    On cherche un équivalent simple pour le dénominateur.

    $$ \sqrt{n^2+4n} + n = \sqrt{n^2(1+4/n)} + n = n\sqrt{1+4/n} + n = n(\sqrt{1+4/n} + 1) $$

    Quand $n \to \infty$, $4/n \to 0$, donc $\sqrt{1+4/n} \to \sqrt{1} = 1$.

    Le terme entre parenthèses tend vers $1+1=2$.

    Donc, le dénominateur est équivalent à $n \cdot 2 = 2n$.

    $$ \sqrt{n^2+4n} + n \sim 2n $$

4.  **Trouver l'équivalent de $u_n$ :**

    On remplace le dénominateur par son équivalent dans l'expression de $u_n$.

    $$ u_n = \frac{4n}{\sqrt{n^2+4n} + n} \sim \frac{4n}{2n} = 2 $$

    Un équivalent simple de $u_n$ est la constante 2.

5.  **Déduire la limite :**

    Si une suite $u_n$ est équivalente à une constante non nulle $L$, alors la limite de $u_n$ est $L$.

    $$ \lim_{n \to \infty} u_n = \lim_{n \to \infty} 2 = 2 $$

**Réponse :** Un équivalent de $u_n$ est $2$. La limite de la suite est $\lim_{n \to \infty} u_n = 2$.

</details>
