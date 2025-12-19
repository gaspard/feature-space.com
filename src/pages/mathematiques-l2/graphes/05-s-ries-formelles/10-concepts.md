---
id: 569db001
type: concepts
order: 10
title: Séries formelles - concepts (A)
tags:
  - Combinatoire
  - Séries formelles
  - Fonction génératrice
  - Récurrence
  - Binôme de Newton
course: Graphes et Combinatoire
courseId: 7027276b
chapter: Séries formelles
chapterId: 4af35d6d
level: regular
createdAt: '2025-12-16T17:13:00.030Z'
---
# Séries formelles (A)

---

## Concept 1 : L'Anneau des Séries Formelles

### Prérequis

- **Anneaux commutatifs** : Structures algébriques avec addition et multiplication (ex: $\mathbb{Z}, \mathbb{R}, \mathbb{C}$).
- **Suites numériques** : Notation $(a_n)_{n \in \mathbb{N}}$.
- **Polynômes** : Expressions de la forme $\sum a_i X^i$ (sommes finies).

### Définition

Soit $\mathcal{A}$ un anneau commutatif (souvent $\mathbb{R}$ ou $\mathbb{C}$). Une **série formelle** est une façon de représenter une suite infinie $(a_n)_{n \in \mathbb{N}}$ sous la forme d'une somme infinie formelle :

$$

A(X) = \sum_{n \ge 0} a_n X^n = a_0 + a_1 X + a_2 X^2 + \cdots

$$

L'ensemble de toutes les séries formelles à coefficients dans $\mathcal{A}$ est noté $\mathcal{A}[[X]]$.

La variable $X$ est purement symbolique (un "marque-page") ; elle sert à repérer la position du coefficient $a_n$ (le coefficient devant $X^n$ correspond au terme d'indice $n$ de la suite). Contrairement aux séries entières en analyse, on ne se soucie **jamais** de la convergence de la somme, car on ne remplace pas $X$ par une valeur numérique.

L'ensemble $\mathcal{A}[[X]]$ est muni de deux opérations fondamentales :

1.  **L'addition** (terme à terme) :

    $$

    \sum_{n \ge 0} a_n X^n + \sum_{n \ge 0} b_n X^n = \sum_{n \ge 0} (a_n + b_n) X^n

    $$

2.  **Le produit de Cauchy** (convolution) :

    $$

    \left(\sum_{n \ge 0} a_n X^n\right) \cdot \left(\sum_{n \ge 0} b_n X^n\right) = \sum_{n \ge 0} c_n X^n

    $$

    où le coefficient $c_n$ est obtenu en regroupant toutes les façons d'obtenir une puissance $n$ par multiplication :

    $$

    c_n = \sum_{k=0}^n a_k b_{n-k} = a_0 b_n + a_1 b_{n-1} + \cdots + a_n b_0

    $$

### Propriétés Clés

- **Structure d'Anneau** : $\mathcal{A}[[X]]$ muni de ces lois est un anneau commutatif.
- **Éléments neutres** :
    - Neutre additif : La série nulle $0 = 0 + 0X + 0X^2 + \cdots$.
    - Neutre multiplicatif : La série unité $1 = 1 + 0X + 0X^2 + \cdots$.
- **Généralisation des polynômes** : L'anneau des polynômes $\mathcal{A}[X]$ est un sous-ensemble de $\mathcal{A}[[X]]$. Un polynôme est simplement une série formelle où tous les coefficients sont nuls à partir d'un certain rang (suite à support fini).

### Exemples

**Exemple 1 : Somme de séries**

Soit $A(X) = 1 + X + X^2 + \cdots$ (suite constante 1) et $B(X) = 2 + 4X + 8X^2 + \cdots$ (suite des puissances de 2).

Leur somme est :

$$

A(X) + B(X) = (1+2) + (1+4)X + (1+8)X^2 + \cdots = 3 + 5X + 9X^2 + \cdots

$$

**Exemple 2 : Produit de Cauchy simple**

Soit $A(X) = 1 + X$ (polynôme) et $B(X) = \sum_{n \ge 0} X^n$.

Calculons le produit $C(X) = A(X)B(X)$ :

Le coefficient $c_n = \sum_{k=0}^n a_k b_{n-k}$.

- Pour $n=0$: $c_0 = a_0 b_0 = 1 \cdot 1 = 1$.
- Pour $n \ge 1$: Comme $a_k=0$ pour $k>1$, la somme s'arrête vite :

  $$c_n = a_0 b_n + a_1 b_{n-1} = 1 \cdot 1 + 1 \cdot 1 = 2$$

Donc $A(X)B(X) = 1 + 2X + 2X^2 + 2X^3 + \cdots$.

**Exemple 3 : Carré d'une série**

Soit $A(X) = \sum_{n \ge 0} X^n$. Calculons $A(X)^2$.

Le coefficient de $X^n$ dans $A(X)A(X)$ est $\sum_{k=0}^n 1 \cdot 1 = \sum_{k=0}^n 1 = n+1$.

$$

\left(\sum_{n \ge 0} X^n\right)^2 = \sum_{n \ge 0} (n+1) X^n = 1 + 2X + 3X^2 + \cdots

$$

### Contre-exemples

- **Évaluation** : Si $A(X) = \sum n! X^n$, on ne peut pas "calculer $A(1)$". Cette somme divergerait en analyse. En séries formelles, l'expression $A(1)$ n'a pas de sens car $X$ ne prend pas de valeur.
- **Polynômes vs Séries** : La série $\sum_{n \ge 0} X^n$ n'est pas un polynôme car elle a une infinité de coefficients non nuls.

### Concepts Liés

- **Polynômes** : Cas particulier des séries formelles.
- **Séries entières (Analyse)** : L'analogue analytique où la convergence est étudiée.

## Applications

Modélisation de suites combinatoires (fonctions génératrices) pour résoudre des problèmes de dénombrement.

---

## Concept 2 : Inversibilité et Inverse Multiplicatif

### Prérequis

- **Concept 1** (Séries formelles).
- **Inverse dans un anneau** : Un élément $a$ est inversible s'il existe $b$ tel que $ab=1$.

### Définition

Une série formelle $A(X) = \sum_{n \ge 0} a_n X^n$ admet un **inverse multiplicatif** s'il existe une série $B(X)$ telle que $A(X) \cdot B(X) = 1$. On note cet inverse $A(X)^{-1}$ ou $\frac{1}{A(X)}$.

La condition d'existence est simple et cruciale :

**Théorème** : Une série $A(X)$ est inversible si et seulement si son terme constant $a_0$ est inversible dans l'anneau de coefficients $\mathcal{A}$ (c'est-à-dire $a_0 \neq 0$ si $\mathcal{A}$ est un corps comme $\mathbb{R}$ ou $\mathbb{C}$).

### Propriétés Clés

- **Unicité** : Si l'inverse existe, il est unique.
- **Calcul récursif** : On peut trouver les coefficients $(b_n)$ de l'inverse pas à pas. Si $a_0 b_0 = 1$, alors $b_0 = 1/a_0$, et pour $n \ge 1$, $\sum_{k=0}^n a_k b_{n-k} = 0$, ce qui permet d'isoler $b_n$.
- **Série Géométrique Formelle** : C'est l'inverse le plus important :

  $$

  \frac{1}{1 - X} = \sum_{n \ge 0} X^n = 1 + X + X^2 + X^3 + \cdots

  $$

  Plus généralement :

  $$

  \frac{1}{1 - \alpha X} = \sum_{n \ge 0} \alpha^n X^n

  $$

### Exemples

**Exemple 1 : L'inverse fondamental**

Vérifions que $(1-X)(1+X+X^2+\cdots) = 1$.

$$

\begin{aligned}

(1-X) \sum_{n \ge 0} X^n &= \sum_{n \ge 0} X^n - \sum_{n \ge 0} X^{n+1} \\

&= (1 + X + X^2 + \cdots) - (X + X^2 + X^3 + \cdots) \\

&= 1

\end{aligned}

$$

**Exemple 2 : Inverse d'un polynôme**

Quel est l'inverse de $1+X$ ?

En utilisant la formule de la série géométrique avec $\alpha = -1$ (car $1+X = 1 - (-1)X$) :

$$

\frac{1}{1+X} = \sum_{n \ge 0} (-1)^n X^n = 1 - X + X^2 - X^3 + \cdots

$$

**Exemple 3 : Série non inversible**

La série $A(X) = X + X^2 = 0 + 1X + 1X^2 + \cdots$ n'est pas inversible.

Son terme constant est $a_0 = 0$. Il est impossible de trouver $B(X)$ tel que $A(X)B(X) = 1$, car le terme constant du produit serait $a_0 b_0 = 0 \cdot b_0 = 0$, alors qu'il doit être égal à $1$.

### Contre-exemples

- $X$ n'est pas inversible dans $\mathcal{A}[[X]]$.
- $2 + X$ n'est pas inversible dans $\mathbb{Z}[[X]]$ (car 2 n'a pas d'inverse entier), mais est inversible dans $\mathbb{Q}[[X]]$ (car $1/2$ existe).

### Concepts Liés

- **Division de séries** : Définie comme $A(X)/B(X) = A(X) \cdot B(X)^{-1}$. Possible uniquement si $b_0$ est inversible.

---

## Concept 3 : Composition et Dérivation Formelle

### Prérequis

- **Concept 1** (Séries formelles).
- **Dérivée des polynômes**.

### Définition

1.  **Composition** : Soient $A(X) = \sum a_n X^n$ et $B(X) = \sum b_n X^n$. La composition $A(B(X))$, notée aussi $(A \circ B)(X)$, consiste à remplacer $X$ par $B(X)$ dans la série $A$.

    **Condition cruciale** : Cette opération n'est valide que si le terme constant de $B$ est nul ($b_0 = 0$). Cela assure que le calcul de chaque coefficient de la composée ne nécessite qu'un nombre fini d'opérations.

    $$

    A(B(X)) = \sum_{n \ge 0} a_n (B(X))^n

    $$

2.  **Dérivation** : La dérivée formelle de $A(X) = \sum_{n \ge 0} a_n X^n$ est définie algébriquement (sans notion de limite) par :

    $$

    A'(X) = \sum_{n \ge 1} n a_n X^{n-1} = 1a_1 + 2a_2 X + 3a_3 X^2 + \cdots

    $$

### Propriétés Clés

- **Linéarité de la dérivation** : $(A+B)' = A' + B'$ et $(\lambda A)' = \lambda A'$.
- **Règle du produit** : $(AB)' = A'B + AB'$.
- **Règle de la chaîne** : $(A \circ B)' = B' \cdot (A' \circ B)$.
- **Compatibilité** : Ces opérations fonctionnent exactement comme pour les fonctions en analyse.

### Exemples

**Exemple 1 : Composition simple**

Soit $A(X) = \frac{1}{1-X} = 1 + X + X^2 + \cdots$ et $B(X) = X^2$ (notons que $b_0=0$).

$$

A(B(X)) = \frac{1}{1-X^2} = 1 + (X^2) + (X^2)^2 + \cdots = 1 + X^2 + X^4 + \cdots

$$

**Exemple 2 : Dérivée**

Soit $A(X) = \sum_{n \ge 0} X^n = \frac{1}{1-X}$.

Sa dérivée terme à terme est :

$$

A'(X) = \sum_{n \ge 1} n X^{n-1} = 1 + 2X + 3X^2 + \cdots

$$

Vérifions avec la formule de la dérivée de $\frac{1}{1-X}$ (règle usuelle $(u^{-1})' = -u'/u^2$) :

$$

\left((1-X)^{-1}\right)' = -(-1)(1-X)^{-2} = \frac{1}{(1-X)^2}

$$

On a donc l'identité $\sum_{n \ge 0} (n+1)X^n = \frac{1}{(1-X)^2}$.

**Exemple 3 : Composition interdite**

Si $A(X) = \sum X^n$ et $B(X) = 1+X$. On ne peut pas calculer $A(B(X)) = \sum (1+X)^n$.

Le terme constant serait $1^0 + 1^1 + 1^2 + \cdots = 1+1+1+\cdots$, ce qui est une somme infinie non définie. La condition $b_0=0$ est violée.

### Contre-exemples

- La dérivée formelle de $a_0$ (constante) est $0$.
- La primitive formelle existe toujours (contrairement aux fonctions sans primitive élémentaire), définie par $\int \sum a_n X^n = \sum \frac{a_n}{n+1} X^{n+1}$.

### Concepts Liés

- **Exponentielle et Logarithme formels** : Définis par leurs séries de Taylor usuelles, ils permettent de définir des puissances non entières $(1+X)^\alpha$.

---

## Concept 4 : Coefficients Binomiaux Généralisés

### Prérequis

- **Factorielle** ($n!$).
- **Coefficients binomiaux classiques** ($\binom{n}{k}$).

### Définition

Le coefficient binomial $\binom{n}{k}$ compte le nombre de sous-ensembles de taille $k$. On généralise cette définition algébrique pour permettre au terme "haut" ($r$) d'être n'importe quel nombre réel (ou complexe), notamment un entier négatif.

Pour $r \in \mathbb{R}$ et $k \in \mathbb{N}$ :

- Si $k = 0$, $\binom{r}{0} = 1$.
- Si $k > 0$ :

  $$

  \binom{r}{k} = \frac{r(r-1)(r-2) \cdots (r-k+1)}{k!}

  $$

### Propriétés Clés

- Si $r$ est un entier positif $n$, on retrouve la définition classique (et $\binom{n}{k}=0$ si $k>n$).
- **Transformation pour les entiers négatifs** : Pour un entier $m > 0$, le coefficient binomial négatif s'exprime en fonction d'un positif :

  $$

  \binom{-m}{k} = (-1)^k \binom{m+k-1}{k}

  $$

  Ceci est souvent noté $\left(\! \binom{m}{k} \!\right)$ pour représenter le nombre de choix avec répétition (multiensembles).

### Exemples

**Exemple 1 : Coefficient négatif standard ($r=-1$)**

$$

\binom{-1}{k} = \frac{-1(-2)(-3)\cdots(-k)}{k!} = \frac{(-1)^k k!}{k!} = (-1)^k

$$

**Exemple 2 : Coefficient ($r=-2$)**

$$

\binom{-2}{k} = (-1)^k \binom{2+k-1}{k} = (-1)^k \binom{k+1}{k} = (-1)^k (k+1)

$$

Vérification manuelle pour $k=3$ : $\frac{-2(-3)(-4)}{3 \cdot 2 \cdot 1} = \frac{-24}{6} = -4 = (-1)^3(3+1)$.

**Exemple 3 : Coefficient fractionnaire**

$$

\binom{1/2}{2} = \frac{1/2 \cdot (1/2 - 1)}{2!} = \frac{1/2 \cdot (-1/2)}{2} = \frac{-1/4}{2} = -\frac{1}{8}

$$

### Contre-exemples

- $\binom{r}{k}$ n'est pas défini si $k$ n'est pas un entier naturel (par exemple $\binom{5}{1.5}$ n'est pas couvert par cette définition simple).
- La symétrie $\binom{n}{k} = \binom{n}{n-k}$ n'est **pas** valide pour $r$ négatif ou non entier (car $n-k$ n'est pas un indice valide ou n'a pas de sens).

### Concepts Liés

- **Combinatoire** : Le lien avec le comptage de multiensembles.
- **Formule de Taylor** : Les coefficients binomiaux généralisés apparaissent dans le développement de Taylor de $(1+x)^r$.

---

## Concept 5 : Théorème du Binôme Généralisé (Exposants Négatifs)

### Prérequis

- **Concept 2** (Inverse multiplicatif).
- **Concept 4** (Coefficients binomiaux généralisés).

### Définition

Le théorème du binôme généralisé étend l'identité $(1+X)^n = \sum \binom{n}{k} X^k$ aux exposants réels $\alpha$.

Pour tout $\alpha \in \mathcal{A}$ (si $\mathbb{Q} \subseteq \mathcal{A}$), on a :

$$

(1+X)^\alpha = \sum_{n \ge 0} \binom{\alpha}{n} X^n

$$

Le cas le plus utile pour le dénombrement et les récurrences est celui des **exposants entiers négatifs**. Pour un entier $m \ge 1$ :

$$

(1-X)^{-m} = \frac{1}{(1-X)^m} = \sum_{n \ge 0} \binom{n+m-1}{n} X^n

$$

### Propriétés Clés

- **Lien avec les multiensembles** : Le coefficient de $X^n$ dans $(1-X)^{-m}$ est $\binom{n+m-1}{n}$, qui est le nombre de façons de choisir $n$ objets parmi $m$ types avec répétition autorisée (ou le nombre de solutions entières à $x_1 + \dots + x_m = n$).
- **Généralité** : Fonctionne pour $(1-\alpha X)^{-m}$ en remplaçant $X$ par $\alpha X$.

### Exemples

**Exemple 1 : L'inverse de $1-X$ ($m=1$)**

$$

(1-X)^{-1} = \sum_{n \ge 0} \binom{n+0}{n} X^n = \sum_{n \ge 0} 1 X^n = 1 + X + X^2 + \cdots

$$

On retrouve la série géométrique.

**Exemple 2 : L'inverse du carré ($m=2$)**

$$

\frac{1}{(1-X)^2} = (1-X)^{-2} = \sum_{n \ge 0} \binom{n+1}{n} X^n = \sum_{n \ge 0} (n+1) X^n

$$

Cela correspond à $1 + 2X + 3X^2 + \cdots$.

**Exemple 3 : Avec un coefficient $\alpha$**

Développons $\frac{1}{(1-2X)^3}$. Ici $\alpha=2, m=3$.

$$

(1-2X)^{-3} = \sum_{n \ge 0} \binom{n+3-1}{n} (2X)^n = \sum_{n \ge 0} \binom{n+2}{n} 2^n X^n

$$

Pour $n=2$ (terme en $X^2$) : Coefficient = $\binom{4}{2} 2^2 = 6 \cdot 4 = 24$.

### Contre-exemples

- Le développement de $(1+X)^\alpha$ est une somme **infinie** si $\alpha$ n'est pas un entier naturel positif. Ce n'est un polynôme que si $\alpha \in \mathbb{N}$.

### Concepts Liés

- **Décomposition en éléments simples** : Ce théorème est l'outil principal pour revenir d'une fraction rationnelle à une série (terme général d'une suite).

---

## Concept 6 : Résolution de Récurrences Linéaires par Séries Génératrices

### Prérequis

- **Tous les concepts précédents**.
- **Fractions rationnelles** (Décomposition en éléments simples).
- **Équations linéaires**.

### Définition

C'est une méthode systématique pour trouver une formule explicite $a_n = f(n)$ pour une suite définie par une récurrence linéaire (ex: $a_n = c_1 a_{n-1} + c_2 a_{n-2}$).

**La Méthode en 4 étapes :**

1.  **Série génératrice** : Poser $A(X) = \sum_{n \ge 0} a_n X^n$.
2.  **Equation fonctionnelle** : Multiplier la récurrence par $X^n$, sommer sur les indices valides, et exprimer le tout en fonction de $A(X)$.
3.  **Résolution** : Isoler $A(X)$ pour obtenir une fraction rationnelle $\frac{P(X)}{Q(X)}$.
4.  **Développement** : Utiliser la décomposition en éléments simples et le théorème du binôme généralisé pour extraire le coefficient de $X^n$ (qui est $a_n$).

### Propriétés Clés

- Transforme un problème de suites (récurrence) en un problème algébrique (fractions).
- Gère automatiquement les conditions initiales.
- Fonctionne pour toute récurrence linéaire à coefficients constants.

### Exemples

**Exemple 1 : La suite de Fibonacci**

Définition : $f_0=0, f_1=1, f_n = f_{n-1} + f_{n-2}$.

1.  On forme $\sum_{n \ge 2} f_n X^n = \sum_{n \ge 2} f_{n-1} X^n + \sum_{n \ge 2} f_{n-2} X^n$.
2.  Cela donne $F(X) - f_0 - f_1 X = X(F(X)-f_0) + X^2 F(X)$.

    Avec les valeurs initiales : $F(X) - X = X F(X) + X^2 F(X)$.

3.  On isole $F(X)$ :

    $$

    F(X)(1 - X - X^2) = X \implies F(X) = \frac{X}{1-X-X^2}

    $$

4.  On factorise le dénominateur $(1-\varphi X)(1-\varphi' X)$, on décompose en éléments simples, et on développe les séries géométriques pour trouver $f_n = \frac{1}{\sqrt{5}}(\varphi^n - \varphi'^n)$.

**Exemple 2 : Suite simple**

$a_n = 2a_{n-1}$ pour $n \ge 1$, avec $a_0 = 3$.

1.  Somme : $\sum_{n \ge 1} a_n X^n = \sum_{n \ge 1} 2 a_{n-1} X^n$.
2.  Equation : $A(X) - a_0 = 2X A(X)$.
3.  $A(X)(1-2X) = 3 \implies A(X) = \frac{3}{1-2X}$.
4.  Développement : $A(X) = 3 \sum_{n \ge 0} (2X)^n = \sum_{n \ge 0} 3 \cdot 2^n X^n$.

    Donc $a_n = 3 \cdot 2^n$.

**Exemple 3 : Pôle multiple**

Si on obtient $A(X) = \frac{1}{(1-X)^2}$.

On utilise directement le théorème du binôme négatif :

$$

a_n = \binom{n+2-1}{n} = n+1

$$

### Contre-exemples

- Cette méthode spécifique s'applique difficilement aux récurrences non linéaires (ex: $a_n = a_{n-1}^2$) ou à coefficients non constants (ex: $a_n = n \cdot a_{n-1}$), car on n'obtient pas une fraction rationnelle simple.

### Concepts Liés

- **Nombres de Fibonacci**.
- **Nombre d'Or**.
- **Algèbre linéaire** (valeurs propres, qui correspondent aux racines du dénominateur $Q(X)$).

## Applications

Analyse d'algorithmes (complexité récursive), dynamique des populations (lapins de Fibonacci), structures combinatoires.

---
