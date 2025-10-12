---
id: 8c468d2b
type: concepts
order: 20
title: Topologie sur Rn - concepts (B)
tags:
  - Topologie
  - Espaces vectoriels normés
  - Ensembles ouverts
  - Ensembles fermés
  - Compacité
  - Suites de Cauchy
course: Topologie
courseId: 34e61f8e
chapter: Topologie sur Rn
chapterId: 3c3b95a8
level: pro
createdAt: '2025-10-12T14:41:41.272Z'
---
# Topologie sur Rn (B)

---

## Concept 1: Topologie Normée sur $\mathbb{R}^n$ et Indépendance de la Norme

### Prérequis

- Espaces vectoriels normés, distance induite par une norme
- Suites dans $\mathbb{R}^n$ et convergence
- Notions de base de la théorie des ensembles (union, intersection, complémentaire)

### Définition

Soit $(\mathbb{R}^n, N)$ un espace vectoriel normé.

1.  **Boule Ouverte**: Pour $x \in \mathbb{R}^n$ et $r > 0$, la **boule ouverte** de centre $x$ et de rayon $r$ est l'ensemble $B_N(x, r) = \{z \in \mathbb{R}^n : N(z-x) < r\}$.
2.  **Ensemble Ouvert**: Un sous-ensemble $U \subseteq \mathbb{R}^n$ est dit **ouvert** si pour tout $x \in U$, il existe un réel $r > 0$ tel que $B_N(x, r) \subseteq U$. La collection de tous les ensembles ouverts de $(\mathbb{R}^n, N)$ est appelée la **Topologienduite par la norme $N$**.
3.  **Ensemble Fermé**: Un sous-ensemble $F \subseteq \mathbb{R}^n$ est dit **fermé** si son complémentaire $\mathbb{R}^n \setminus F$ est un ensemble ouvert.

La topologie sur $\mathbb{R}^n$ est l'ensemble des parties ouvertes. Elle vérifie les axiomes suivants :

- $\emptyset$ et $\mathbb{R}^n$ sont ouverts.
- Toute union (finie ou infinie) d'ouverts est un ouvert.
- Toute intersection finie d'ouverts est un ouvert.

### Propriétés Clés

- **Caractère Ouvert des Boules Ouvertes (Prop 2.3)** : Toute boule ouverte $B_N(x,r)$ est un ensemble ouvert.

  *Démonstration* : Soit $z \in B_N(x, r)$. On a $N(z-x) < r$. Posons $\delta = r - N(z-x) > 0$. Montrons que $B_N(z, \delta) \subseteq B_N(x, r)$. Pour tout $y \in B_N(z, \delta)$, on a $N(y-z) < \delta$. Par l'inégalité triangulaire, $N(y-x) \le N(y-z) + N(z-x) < \delta + N(z-x) = (r - N(z-x)) + N(z-x) = r$. Donc, $y \in B_N(x, r)$, ce qui prouve l'inclusion.

- **Indépendance de la Topologie par rapport à la Norme (Prop 2.5)** : Toutes les normes sur $\mathbb{R}^n$ étant équivalentes, elles induisent la même topologie. Autrement dit, si $N$ et $N'$ sont deux normes sur $\mathbb{R}^n$, un ensemble $U \subseteq \mathbb{R}^n$ est ouvert pour $N$ si et seulement si il est ouvert pour $N'$.

  *Démonstration* : Soient $N$ et $N'$ deux normes équivalentes. Il existe $\alpha, \beta > 0$ tels que $\forall x \in \mathbb{R}^n, \alpha N'(x) \le N(x) \le \beta N'(x)$.

  Supposons $U$ ouvert pour $N$. Soit $x \in U$. Il existe $r > 0$ tel que $B_N(x, r) \subseteq U$.

  On cherche $r' > 0$ tel que $B_{N'}(x, r') \subseteq U$.

  Soit $z \in B_{N'}(x, r/\beta)$. Alors $N'(z-x) < r/\beta$.

  En utilisant l'inégalité $N(z-x) \le \beta N'(z-x)$, on obtient $N(z-x) < \beta (r/\beta) = r$.

  Donc $z \in B_N(x, r)$. Ceci montre que $B_{N'}(x, r/\beta) \subseteq B_N(x, r) \subseteq U$.

  On a trouvé un rayon $r' = r/\beta > 0$ tel que $B_{N'}(x, r') \subseteq U$. Donc $U$ est ouvert pour $N'$.

  La réciproque s'obtient par symétrie en utilisant l'inégalité $N'(x) \le \frac{1}{\alpha} N(x)$.

- **Propriétés des Fermés (Prop 2.13)** : Par passage au complémentaire (lois de De Morgan) :
  - Toute intersection (finie ou infinie) de fermés est un fermé.
  - Toute union finie de fermés est un fermé.

### Exemples

**Exemple 1 : Le demi-espace ouvert**

Soit $a \in \mathbb{R}^n \setminus \{0\}$ et $c \in \mathbb{R}$. L'ensemble $H = \{x \in \mathbb{R}^n : \langle a, x \rangle > c\}$, où $\langle \cdot, \cdot \rangle$ est le produit scalaire euclidien, est un ouvert.

*Preuve* : On utilise la norme euclidienne $\|\cdot\|_2$. Soit $x_0 \in H$. On a $\langle a, x_0 \rangle > c$. Posons $\delta = \langle a, x_0 \rangle - c > 0$. Soit $r = \frac{\delta}{\|a\|_2} > 0$. Montrons que $B_2(x_0, r) \subseteq H$. Pour tout $y \in B_2(x_0, r)$, on peut écrire $y = x_0 + h$ avec $\|h\|_2 < r$. Alors, $\langle a, y \rangle = \langle a, x_0 \rangle + \langle a, h \rangle$. Par l'inégalité de Cauchy-Schwarz, $|\langle a, h \rangle| \le \|a\|_2 \|h\|_2 < \|a\|_2 r = \delta$. Donc $\langle a, h \rangle > -\delta$.

Il s'ensuit que $\langle a, y \rangle > \langle a, x_0 \rangle - \delta = (c+\delta) - \delta = c$. Ainsi, $y \in H$.

**Exemple 2 : L'ensemble $\mathbb{R}^2 \setminus \Delta$**

Soit $\Delta = \{(x,y) \in \mathbb{R}^2 : x=y\}$. L'ensemble $U = \mathbb{R}^2 \setminus \Delta$ est ouvert.

*Preuve* : On utilise la norme $\|\cdot\|_1$ pour simplifier. Soit $a=(a_1, a_2) \in U$. On a $a_1 \neq a_2$. Posons $r = \frac{|a_1 - a_2|}{2} > 0$. Soit $x=(x_1, x_2) \in B_1(a, r)$. On a $\|x-a\|_1 = |x_1-a_1| + |x_2-a_2| < r$.

Par l'inégalité triangulaire inversée :

$|x_1 - x_2| = |(a_1 - a_2) - (a_1 - x_1) - (x_2 - a_2)| \ge |a_1 - a_2| - |x_1 - a_1| - |x_2 - a_2| = |a_1 - a_2| - \|x-a\|_1 > 2r - r = r$.

Comme $r>0$, on a $|x_1 - x_2| > 0$, donc $x_1 \neq x_2$, ce qui signifie $x \in U$. Donc $B_1(a, r) \subseteq U$.

**Exemple 3 : Produit d'ouverts**

Si $U_1 \subset \mathbb{R}^{n_1}$ et $U_2 \subset \mathbb{R}^{n_2}$ sont ouverts, alors $U_1 \times U_2$ est un ouvert de $\mathbb{R}^{n_1+n_2}$.

*Preuve* : Munissons $\mathbb{R}^{n_1+n_2}$ de la norme produit $\|(x,y)\|_\infty = \max(\|x\|_\infty, \|y\|_\infty)$. Soit $(x_0, y_0) \in U_1 \times U_2$. Comme $U_1, U_2$ sont ouverts, il existe $r_1, r_2 > 0$ tels que $B_\infty(x_0, r_1) \subseteq U_1$ et $B_\infty(y_0, r_2) \subseteq U_2$. Posons $r = \min(r_1, r_2)$. Alors la boule $B_\infty((x_0, y_0), r)$ dans $\mathbb{R}^{n_1+n_2}$ est exactement $B_\infty(x_0, r) \times B_\infty(y_0, r)$. Puisque $r \le r_1$ et $r \le r_2$, on a $B_\infty(x_0, r) \times B_\infty(y_0, r) \subseteq B_\infty(x_0, r_1) \times B_\infty(y_0, r_2) \subseteq U_1 \times U_2$. Donc $U_1 \times U_2$ est ouvert.

### Contre-exemples

**Contre-exemple 1 : Intersection infinie d'ouverts**

Une intersection infinie d'ouverts n'est pas nécessairement ouverte. Dans $\mathbb{R}$, considérons les ouverts $U_n = \left]-1/n, 1/n\right[$ pour $n \in \mathbb{N}^*$. Leur intersection est $\bigcap_{n=1}^\infty U_n = \{0\}$, qui est un ensemble fermé et non ouvert.

**Contre-exemple 2 : Union infinie de fermés**

Une union infinie de fermés n'est pas nécessairement fermée. Dans $\mathbb{R}^n$, pour $n \in \mathbb{N}^*$, les boules fermées $F_n = B_N^f(0, 1 - 1/n)$ sont des ensembles fermés. Leur union est $\bigcup_{n=1}^\infty F_n = B_N(0, 1)$, qui est une boule ouverte, donc un ensemble ouvert et non fermé.

### Concepts Liés

- **Espaces topologiques**: La notion d'ensemble ouvert est axiomatisée pour définir des structures plus générales appelées espaces topologiques, où la notion de distance n'est pas forcément présente.
- **Connexité**: $\mathbb{R}^n$ est un espace connexe, ce qui implique que les seules parties à la fois ouvertes et fermées (clopen) sont $\emptyset$ et $\mathbb{R}^n$ lui-même.
- **Continuité**: La topologie est le cadre fondamental pour définir la continuité des fonctions entre espaces normés. Une fonction $f: \mathbb{R}^n \to \mathbb{R}^m$ est continue si et seulement si l'image réciproque de tout ouvert de $\mathbb{R}^m$ est un ouvert de $\mathbb{R}^n$.

### Applications

- **Analyse fonctionnelle**: La topologie des espaces normés est la base de l'analyse fonctionnelle, qui étudie les espaces de fonctions de dimension infinie.
- **Géométrie différentielle**: Les variétés différentielles sont des espaces topologiques qui localement "ressemblent" à $\mathbb{R}^n$. La topologie est donc cruciale pour leur définition.
- **Optimisation**: Les conditions d'optimalité pour des problèmes avec contraintes font souvent appel à des propriétés topologiques des ensembles de contraintes (ouverts, fermés).

---

## Concept 2: Adhérence, Intérieur et Densité

### Prérequis

- Concept 1: Topologie normée (ensembles ouverts et fermés)
- Suites convergentes

### Définition

Soit $A$ une partie de $\mathbb{R}^n$ muni d'une norme $N$.

1.  **Point intérieur**: $x \in \mathbb{R}^n$ est un **point intérieur** à $A$ s'il existe $r>0$ tel que $B_N(x, r) \subseteq A$. L'ensemble des points intérieurs de $A$ est l'**intérieur** de $A$, noté $\mathring{A}$.
2.  **Point adhérent**: $x \in \mathbb{R}^n$ est un **point adhérent** à $A$ si pour tout $r>0$, la boule $B_N(x,r)$ a une intersection non vide avec $A$ ($B_N(x, r) \cap A \neq \emptyset$). L'ensemble des points adhérents à $A$ est l'**adhérence** (ou la fermeture) de $A$, noté $\bar{A}$.
3.  **Densité**: Soit $A \subseteq B \subseteq \mathbb{R}^n$. On dit que $A$ est **dense** dans $B$ si $B \subseteq \bar{A}$.

### Propriétés Clés

- **Caractérisation de l'Intérieur (Thm 2.17)**: $\mathring{A}$ est le plus grand ouvert contenu dans $A$.

  *Démonstration*:

  - $\mathring{A}$ est ouvert : Soit $x \in \mathring{A}$. Il existe $r>0$ tel que $B_N(x, r) \subseteq A$. Pour tout $y \in B_N(x, r)$, la boule $B_N(x,r)$ est elle-même un ouvert, donc il existe $r' > 0$ tel que $B_N(y, r') \subseteq B_N(x, r) \subseteq A$. Ceci montre que $y \in \mathring{A}$. Donc $B_N(x, r) \subseteq \mathring{A}$, prouvant que $\mathring{A}$ est ouvert.
  - C'est le plus grand : Soit $O$ un ouvert tel que $O \subseteq A$. Pour tout $x \in O$, comme $O$ est ouvert, il existe $r>0$ tel que $B_N(x, r) \subseteq O \subseteq A$. Par définition, $x \in \mathring{A}$. Donc $O \subseteq \mathring{A}$.

- **Caractérisation de l'Adhérence (Thm 2.19)**: $\bar{A}$ est le plus petit fermé contenant $A$.

  *Démonstration*:

  - $\bar{A}$ est fermé : Montrons que son complémentaire $\mathbb{R}^n \setminus \bar{A}$ est ouvert. $x \notin \bar{A} \iff \exists r>0, B_N(x, r) \cap A = \emptyset$. Soit $y \in B_N(x,r)$. Cette boule étant ouverte, il existe $r'>0$ t.q. $B_N(y,r') \subseteq B_N(x,r)$. Donc $B_N(y,r') \cap A = \emptyset$, ce qui signifie que $y \notin \bar{A}$. Ainsi, $B_N(x,r) \subseteq \mathbb{R}^n \setminus \bar{A}$, prouvant que $\mathbb{R}^n \setminus \bar{A}$ est ouvert.
  - C'est le plus petit : Soit $F$ un fermé tel que $A \subseteq F$. Alors $\mathbb{R}^n \setminus F$ est un ouvert disjoint de $A$. Pour tout $x \in \mathbb{R}^n \setminus F$, il existe $r>0$ t.q. $B_N(x,r) \subseteq \mathbb{R}^n \setminus F$, donc $B_N(x,r) \cap A = \emptyset$. Cela implique que $x \notin \bar{A}$. On a donc $\mathbb{R}^n \setminus F \subseteq \mathbb{R}^n \setminus \bar{A}$, ce qui est équivalent à $\bar{A} \subseteq F$.

- **Caractérisation Séquentielle de l'Adhérence (Prop 2.21)**: $x \in \bar{A}$ si et seulement s'il existe une suite $(x_k)_{k \in \mathbb{N}}$ d'éléments de $A$ qui converge vers $x$.

  *Démonstration*:

  ($\implies$) Soit $x \in \bar{A}$. Pour tout $k \in \mathbb{N}^*$, $B_N(x, 1/k) \cap A \neq \emptyset$. On peut donc choisir un élément $x_k \in B_N(x, 1/k) \cap A$. La suite $(x_k)$ est une suite d'éléments de $A$ et vérifie $N(x_k-x) < 1/k$, donc $x_k \to x$.

  ($\impliedby$) Soit $(x_k)$ une suite d'éléments de $A$ convergeant vers $x$. Pour tout $r>0$, il existe $K \in \mathbb{N}$ tel que pour $k \ge K$, $N(x_k-x) < r$, i.e., $x_k \in B_N(x,r)$. Comme $x_k \in A$, on a $x_k \in B_N(x,r) \cap A$, donc cette intersection est non vide. Ceci étant vrai pour tout $r>0$, $x \in \bar{A}$.

- **Corollaire (Caractérisation séquentielle des fermés)** : $F$ est fermé si et seulement si pour toute suite $(x_k)$ d'éléments de $F$ qui converge vers $x \in \mathbb{R}^n$, on a $x \in F$. (C'est-à-dire $F = \bar{F}$).

### Exemples

**Exemple 1 : L'ensemble des rationnels**

Dans $\mathbb{R}$, soit $A = \mathbb{Q}$.

- $\mathring{A} = \emptyset$. Pour tout $x \in \mathbb{Q}$ et tout $r>0$, l'intervalle $]x-r, x+r[$ contient des nombres irrationnels.
- $\bar{A} = \mathbb{R}$. Pour tout $x \in \mathbb{R}$, on peut construire une suite de rationnels (par exemple, par troncature décimale) qui converge vers $x$.
- $\mathbb{Q}$ est dense dans $\mathbb{R}$.

**Exemple 2 : Une boule ouverte**

Dans $\mathbb{R}^n$, soit $A = B_N(x,r)$.

- $\mathring{A} = A$, car une boule ouverte est un ensemble ouvert.
- $\bar{A} = B_N^f(x,r) = \{z \in \mathbb{R}^n : N(z-x) \le r\}$. Pour tout $z$ tel que $N(z-x)=r$, la suite $x_k = x + (1 - 1/k)(z-x)$ est dans $A$ et converge vers $z$.

**Exemple 3 : Un ensemble mixte**

Soit $A = \{(x,y) \in \mathbb{R}^2 : x>0, y \ge 0\}$.

- $\mathring{A} = \{(x,y) \in \mathbb{R}^2 : x>0, y > 0\}$. Un point $(x_0, 0)$ avec $x_0>0$ n'est pas intérieur car toute boule centrée en ce point contient des points avec une ordonnée négative.
- $\bar{A} = \{(x,y) \in \mathbb{R}^2 : x \ge 0, y \ge 0\}$. Les points de la forme $(0, y_0)$ avec $y_0 \ge 0$ sont adhérents car la suite $(1/k, y_0)$ est dans $A$ et converge vers $(0, y_0)$.

### Contre-exemples

**Contre-exemple 1 : L'intérieur de l'adhérence**

En général, $\mathring{(\bar{A})} \neq \mathring{A}$.

Soit $A = \mathbb{Q}^n \subset \mathbb{R}^n$. On a $\mathring{A} = \emptyset$.

Cependant, $\bar{A} = \mathbb{R}^n$, donc $\mathring{(\bar{A})} = \mathring{(\mathbb{R}^n)} = \mathbb{R}^n$.

**Contre-exemple 2 : L'adhérence de l'intérieur**

En général, $\overline{(\mathring{A})} \neq \bar{A}$.

Soit $A = \{x \in \mathbb{R}^n : \|x\|_2 \le 1\} \cup \{ (2,0,...,0) \}$. $A$ est fermé, donc $\bar{A}=A$.

L'intérieur est $\mathring{A} = \{x \in \mathbb{R}^n : \|x\|_2 < 1\}$.

L'adhérence de l'intérieur est $\overline{(\mathring{A})} = \{x \in \mathbb{R}^n : \|x\|_2 \le 1\}$.

Clairement, $\overline{(\mathring{A})} \neq \bar{A}$ car le point $(2,0,...,0)$ a disparu.

### Concepts Liés

- **Frontière**: La frontière d'un ensemble $A$ est définie par $\partial A = \bar{A} \setminus \mathring{A}$. C'est l'ensemble des points qui sont adhérents à la fois à $A$ et à son complémentaire. C'est toujours un ensemble fermé.
- **Points d'accumulation et points isolés**: Un point $x$ est un point d'accumulation de $A$ si toute boule centrée en $x$ contient un point de $A$ autre que $x$. Un point $x \in A$ est un point isolé s'il n'est pas un point d'accumulation. On a $\bar{A} = A \cup A'$ où $A'$ est l'ensemble des points d'accumulation de $A$.

### Applications

- **Théorie de l'approximation**: La densité de certains ensembles de fonctions (polynômes, fonctions trigonométriques) dans des espaces fonctionnels plus larges (fonctions continues) est un résultat fondamental (Théorèmes de Stone-Weierstrass).
- **Analyse numérique**: La convergence d'un schéma numérique vers la solution d'une équation est une notion d'adhérence. L'ensemble des solutions approchées doit avoir la vraie solution comme point adhérent.
- **Définition de la complétion**: Un espace métrique $(X,d)$ peut être "complété" en construisant un nouvel espace $\bar{X}$ dans lequel $X$ est un sous-ensemble dense et qui est complet. $\mathbb{R}$ est la complétion de $\mathbb{Q}$.

---

## Concept 3: Compacité Séquentielle et Théorème de Heine-Borel

### Prérequis

- Suites, sous-suites (suites extraites)
- Concept 1 et 2 (ensembles fermés, adhérence)
- Théorème de Bolzano-Weierstrass dans $\mathbb{R}$

### Définition

1.  **Ensemble Borné**: Une partie $A \subset \mathbb{R}^n$ est dite **bornée** s'il existe $R > 0$ tel que $A \subseteq B_N(0, R)$. (Cette définition est indépendante de la norme choisie car toutes les normes sont équivalentes).
2.  **Ensemble Compact (Définition Séquentielle)**: Une partie $K \subset \mathbb{R}^n$ est dite **compacte** si de toute suite d'éléments de $K$, on peut extraire une sous-suite qui converge vers un élément de $K$.

### Propriétés Clés

- **Un compact est fermé et borné (Lemme 2.28 et preuve de Thm 2.31)**

  *Preuve*: Soit $K$ un compact de $\mathbb{R}^n$.

  - **$K$ est fermé**: Utilisons la caractérisation séquentielle des fermés. Soit $(x_k)$ une suite d'éléments de $K$ qui converge vers $x \in \mathbb{R}^n$. Il faut montrer que $x \in K$. Comme $K$ est compact, il existe une sous-suite $(x_{k_j})$ qui converge vers une limite $y \in K$. Or, toute sous-suite d'une suite convergente converge vers la même limite. Donc $y=x$. Ainsi, $x \in K$.
  - **$K$ est borné**: Procédons par l'absurde. Si $K$ n'est pas borné, alors pour tout entier $k \in \mathbb{N}^*$, il existe $x_k \in K$ tel que $N(x_k) \ge k$. La suite $(x_k)$ est une suite d'éléments de $K$. Toute sous-suite $(x_{k_j})$ vérifiera $N(x_{k_j}) \ge k_j \to \infty$. Une telle sous-suite ne peut donc pas converger (car toute suite convergente est bornée). Ceci contredit la compacité de $K$. Donc $K$ est borné.

- **Théorème de Heine-Borel (Thm 2.31)**: Une partie $K \subset \mathbb{R}^n$ est compacte si et seulement si elle est fermée et bornée.

  *Démonstration*: Le sens direct a été prouvé ci-dessus.

  ($\impliedby$) Supposons $K$ fermé et borné. Soit $(x^{(k)})_{k \in \mathbb{N}}$ une suite d'éléments de $K$. Puisque les normes sont équivalentes, nous travaillons avec la norme $\|\cdot\|_\infty$.

  Le fait que $K$ soit borné signifie qu'il existe $R>0$ tel que $K \subseteq B_\infty(0,R) = [-R,R]^n$.

  La suite des premières coordonnées $(x_1^{(k)})_k$ est une suite réelle bornée dans $[-R,R]$. Par le théorème de Bolzano-Weierstrass, on peut en extraire une sous-suite convergente $(x_1^{(\varphi_1(k))})_k$ vers un certain $x_1 \in [-R,R]$.

  Considérons maintenant la suite des deuxièmes coordonnées de la sous-suite extraite, $(x_2^{(\varphi_1(k))})_k$. C'est aussi une suite réelle bornée. On peut en extraire une sous-suite convergente $(x_2^{(\varphi_1 \circ \varphi_2(k))})_k$ vers un $x_2 \in [-R,R]$.

  En répétant ce procédé $n$ fois (extraction diagonale), on construit une fonction d'extraction $\varphi = \varphi_1 \circ \dots \circ \varphi_n$ telle que pour chaque composante $i \in \{1, \dots, n\}$, la suite $(x_i^{(\varphi(k))})_k$ converge vers une limite $x_i \in [-R,R]$.

  La sous-suite $(x^{(\varphi(k))})_k$ converge donc vers le vecteur $x = (x_1, \dots, x_n)$ dans $\mathbb{R}^n$ (pour la norme $\|\cdot\|_\infty$).

  Puisque $x^{(k)} \in K$ pour tout $k$ et que $K$ est fermé, la limite $x$ de la sous-suite convergente doit appartenir à $K$.

  Nous avons donc extrait une sous-suite de $(x^{(k)})_k$ qui converge dans $K$. $K$ est donc compact.

### Exemples

**Exemple 1 : La sphère unité**

L'ensemble $S^{n-1} = \{x \in \mathbb{R}^n : \|x\|_2 = 1\}$ est compact.

*Preuve*:

- **Fermé**: C'est l'image réciproque du singleton $\{1\}$ (qui est fermé dans $\mathbb{R}$) par l'application continue $x \mapsto \|x\|_2$.
- **Borné**: Pour tout $x \in S^{n-1}$, $\|x\|_2 = 1$, donc $S^{n-1} \subset B_2(0,2)$.

Par Heine-Borel, $S^{n-1}$ est compact.

**Exemple 2 : Le tore**

Dans $\mathbb{R}^3$, le tore de grand rayon $R$ et petit rayon $r < R$ est l'ensemble des points à distance $r$ d'un cercle de rayon $R$ dans le plan $xy$. Paramétriquement, $T = \{((R+r\cos\theta)\cos\phi, (R+r\cos\theta)\sin\phi, r\sin\theta) : \theta, \phi \in [0, 2\pi]\}$. C'est l'image du compact $[0, 2\pi]^2 \subset \mathbb{R}^2$ par une fonction continue, c'est donc un compact.

**Exemple 3 : Graphe d'une fonction continue sur un compact**

Soit $K \subset \mathbb{R}^n$ un compact et $f: K \to \mathbb{R}^m$ une fonction continue. Le graphe de $f$, $G_f = \{(x, f(x)) \in \mathbb{R}^{n+m} : x \in K\}$, est compact.

*Preuve*: Soit $(z_k)_k = (x_k, f(x_k))_k$ une suite dans $G_f$. Puisque $x_k \in K$ et $K$ est compact, il existe une sous-suite $(x_{k_j})_j$ qui converge vers $x \in K$. Par continuité de $f$, $f(x_{k_j}) \to f(x)$. Donc, la sous-suite $(z_{k_j})_j = (x_{k_j}, f(x_{k_j}))_j$ converge vers $(x, f(x))$, qui est un point de $G_f$. $G_f$ est donc compact.

### Contre-exemples

**Contre-exemple 1 : Ensemble fermé non borné**

L'axe des abscisses $F = \{(x, 0) \in \mathbb{R}^2 : x \in \mathbb{R}\}$ est fermé mais non borné. Il n'est pas compact. La suite $(x_k)_k = ((k, 0))_k$ est dans $F$ mais n'admet aucune sous-suite convergente.

**Contre-exemple 2 : Ensemble borné non fermé**

La boule unité ouverte $B_2(0, 1)$ dans $\mathbb{R}^n$ est bornée mais non fermée. Elle n'est pas compacte. La suite $(x_k)_k$ avec $x_k = (1 - 1/k, 0, \dots, 0)$ est dans $B_2(0, 1)$, converge vers $(1, 0, \dots, 0)$, mais cette limite n'est pas dans $B_2(0, 1)$.

### Concepts Liés

- **Topologie compacte-ouverte**: En analyse fonctionnelle, la notion de compacité est utilisée pour définir des topologies sur des espaces de fonctions, comme la topologie de la convergence uniforme sur les compacts.
- **Théorème de Weierstrass**: L'image d'un compact par une fonction continue à valeurs réelles est un compact. Par conséquent, toute fonction continue sur un compact est bornée et atteint ses bornes.
- **Continuité uniforme**: Toute fonction continue sur un compact est uniformément continue.

### Applications

- **Théorèmes d'existence en analyse**: De nombreux théorèmes d'existence reposent sur la compacité. Par exemple, le théorème de Peano-Arzelà pour l'existence de solutions à des équations différentielles ordinaires utilise la compacité dans l'espace des fonctions continues $C(K)$.
- **Optimisation**: Le théorème de Weierstrass garantit l'existence d'un minimum et d'un maximum pour une fonction continue définie sur un ensemble de contraintes compact.
- **Analyse numérique**: La compacité est utilisée pour prouver la convergence de méthodes d'approximation, par exemple dans la théorie des éléments finis.

---

## Concept 4: Complétude de $\mathbb{R}^n$ et Équivalence des Normes

### Prérequis

- Suites de Cauchy
- Concept 3: Compacité

### Définition

1.  **Suite de Cauchy**: Une suite $(x_k)_{k \in \mathbb{N}}$ dans un espace normé $(\mathbb{R}^n, N)$ est une **suite de Cauchy** si $\forall \varepsilon > 0, \exists K \in \mathbb{N}$ tel que pour tous $p, q \ge K$, $N(x_p - x_q) < \varepsilon$.
2.  **Espace complet**: Un espace normé est dit **complet** si toute suite de Cauchy y est convergente.

### Propriétés Clés

- **Théorème d'Équivalence des Normes (Thm 2.33)**: Toutes les normes sur un espace vectoriel de dimension finie $\mathbb{R}^n$ sont équivalentes.

  *Démonstration*:

  Il suffit de montrer que toute norme $N$ sur $\mathbb{R}^n$ est équivalente à la norme euclidienne $\|\cdot\|_2$.

  Soit $(e_1, \dots, e_n)$ la base canonique de $\mathbb{R}^n$. Pour $x = \sum_{i=1}^n x_i e_i$:

  1. **Existence de la borne supérieure**:

     $N(x) = N(\sum x_i e_i) \le \sum |x_i| N(e_i)$. Par Cauchy-Schwarz, $\sum |x_i| \cdot 1 \le (\sum x_i^2)^{1/2} (\sum 1^2)^{1/2} = \|x\|_2 \sqrt{n}$.

     Alors $N(x) \le \sum |x_i| N(e_i) \le (\max_j N(e_j)) \sum |x_i| \le (\max_j N(e_j)) \sqrt{n} \|x\|_2$.

     Posons $C = (\max_j N(e_j)) \sqrt{n}$ (ou plus simplement $C=\sum N(e_i)$ comme dans le texte). On a $N(x) \le C \|x\|_2$.

  2. **Existence de la borne inférieure**:

     Nous voulons montrer qu'il existe $D>0$ tel que $D \|x\|_2 \le N(x)$.

     Considérons la fonction $f: (\mathbb{R}^n, \|\cdot\|_2) \to \mathbb{R}$ définie par $f(x) = N(x)$.

     Montrons que $f$ est continue. $|f(x) - f(y)| = |N(x) - N(y)| \le N(x-y) \le C\|x-y\|_2$. C'est une fonction $C$-lipschitzienne, donc continue.

     Considérons la sphère unité $S_2 = \{x \in \mathbb{R}^n : \|x\|_2 = 1\}$.

     D'après le théorème de Heine-Borel, $S_2$ est un compact de $(\mathbb{R}^n, \|\cdot\|_2)$.

     Par le théorème de Weierstrass, la fonction continue $f$ atteint son minimum sur le compact $S_2$. Il existe $x_0 \in S_2$ tel que $f(x_0) = \min_{x \in S_2} f(x)$. Notons $D = f(x_0) = N(x_0)$.

     Puisque $x_0 \in S_2$, on a $x_0 \neq 0$, donc par la propriété de séparation des normes, $D = N(x_0) > 0$.

     Maintenant, pour tout $x \in \mathbb{R}^n \setminus \{0\}$, le vecteur $x/\|x\|_2$ est dans $S_2$.

     Donc $N(x/\|x\|_2) \ge D$. Par homogénéité, $\frac{1}{\|x\|_2} N(x) \ge D$, ce qui donne $N(x) \ge D\|x\|_2$.

     Pour $x=0$, l'inégalité est triviale. On a donc $D \|x\|_2 \le N(x) \le C \|x\|_2$.

- **Théorème de Complétude de $\mathbb{R}^n$ (Prop 2.37)**: L'espace $\mathbb{R}^n$ est complet pour n'importe laquelle de ses normes.

  *Démonstration*:

  Soit $(x_k)$ une suite de Cauchy dans $(\mathbb{R}^n, N)$.

  1. **Une suite de Cauchy est bornée**: Prenons $\varepsilon=1$. Il existe $K$ tel que $\forall p,q \ge K, N(x_p - x_q) < 1$. En particulier, pour tout $p \ge K$, $N(x_p - x_K) < 1$, donc $N(x_p) \le N(x_p - x_K) + N(x_K) < 1 + N(x_K)$.

  L'ensemble $\{N(x_0), ..., N(x_{K-1}), 1+N(x_K)\}$ est un ensemble fini de réels, il admet un maximum $M$. Donc $\forall k, N(x_k) \le M$. La suite est bornée.

  2. **Existence d'une sous-suite convergente**: L'ensemble des valeurs de la suite $\{x_k : k \in \mathbb{N}\}$ est une partie bornée. Son adhérence $\overline{\{x_k\}}$ est une partie fermée et bornée de $\mathbb{R}^n$, donc compacte par Heine-Borel. La suite $(x_k)$ est une suite d'éléments de ce compact. Elle admet donc une sous-suite $(x_{k_j})$ qui converge vers une limite $\ell \in \overline{\{x_k\}}$.
  3. **Convergence de la suite entière**: Montrons que la suite $(x_k)$ entière converge vers $\ell$.

  Soit $\varepsilon > 0$. Puisque $(x_k)$ est de Cauchy, il existe $K_1$ tel que $p, q \ge K_1 \implies N(x_p - x_q) < \varepsilon/2$.

  Puisque $x_{k_j} \to \ell$, il existe $J$ tel que $j \ge J \implies N(x_{k_j} - \ell) < \varepsilon/2$.

  On peut choisir $j$ assez grand pour que $j \ge J$ et $k_j \ge K_1$. Fixons un tel $j$.

  Alors pour tout $p \ge K_1$, on a :

  $N(x_p - \ell) \le N(x_p - x_{k_j}) + N(x_{k_j} - \ell)$.

  Le premier terme est $< \varepsilon/2$ car $p \ge K_1$ et $k_j \ge K_1$.

  Le second terme est $< \varepsilon/2$ car $j \ge J$.

  Donc $N(x_p - \ell) < \varepsilon/2 + \varepsilon/2 = \varepsilon$.

  Ceci prouve que la suite $(x_k)$ converge vers $\ell$.

### Exemples

**Exemple 1 : Construction de $\mathbb{R}$**

L'ensemble des nombres réels $\mathbb{R}$ peut être défini comme la complétion de l'espace métrique $(\mathbb{Q}, |\cdot|)$. Les suites de Cauchy de rationnels qui ne convergent pas dans $\mathbb{Q}$ (par ex. celle convergeant vers $\sqrt{2}$) correspondent aux nombres irrationnels.

**Exemple 2 : Suites définies par récurrence**

Considérons la suite dans $\mathbb{R}^2$ définie par $x_0 = (1,1)$ et $x_{k+1} = \frac{1}{2}(x_k + (\frac{2}{x_{k,1}}, \frac{3}{x_{k,2}}))$. C'est l'application de la méthode de Héron par composantes. On peut montrer qu'elle est de Cauchy dans $\mathbb{R}^2$. Par complétude, elle converge. Sa limite est $(\sqrt{2}, \sqrt{3})$.

**Exemple 3 : Convergence des séries**

Une série $\sum_{k=0}^\infty v_k$ dans $\mathbb{R}^n$ converge si et seulement si elle est de Cauchy, c'est-à-dire si la suite des sommes partielles $S_N = \sum_{k=0}^N v_k$ est de Cauchy. Ceci est équivalent au critère de Cauchy pour les séries : $\forall \varepsilon > 0, \exists K, \forall q > p \ge K, \|\sum_{k=p+1}^q v_k\| < \varepsilon$. La convergence absolue ($\sum \|v_k\| < \infty$) implique la convergence de la série, car la complétude de $\mathbb{R}$ entraîne celle de $\mathbb{R}^n$.

### Contre-exemples

**Contre-exemple 1 : Espace non complet**

L'espace $\mathbb{Q}^n$ muni de n'importe quelle norme usuelle n'est pas complet. La suite $x_k \in \mathbb{Q}$ définie par les premières décimales de $\pi$ (e.g., $x_0=3, x_1=3.1, x_2=3.14, \dots$) est une suite de Cauchy dans $\mathbb{Q}$ mais ne converge pas dans $\mathbb{Q}$.

**Contre-exemple 2 : Espace de dimension infinie**

Dans l'espace $C([0,1])$ des fonctions continues sur $[0,1]$ muni de la norme $L^1$, $\|f\|_1 = \int_0^1 |f(t)| dt$, l'espace n'est pas complet. Considérons la suite de fonctions $f_k(t) = \begin{cases} 0 & \text{si } t \in [0, 1/2-1/k] \\ k(t-1/2)+1 & \text{si } t \in [1/2-1/k, 1/2] \\ 1 & \text{si } t \in [1/2, 1] \end{cases}$. C'est une suite de Cauchy, mais elle converge (au sens $L^1$) vers une fonction discontinue, qui n'est donc pas dans $C([0,1])$.

De plus, les normes ne sont pas toutes équivalentes en dimension infinie. Sur $C([0,1])$, les normes $\|\cdot\|_\infty$ et $\|\cdot\|_1$ ne sont pas équivalentes.

### Concepts Liés

- **Espaces de Banach**: Un espace vectoriel normé complet est appelé un espace de Banach. $\mathbb{R}^n$ est l'exemple prototypique d'un espace de Banach de dimension finie.
- **Théorème du point fixe de Banach (ou de Picard)**: Dans un espace métrique complet, toute application contractante admet un unique point fixe. Ce théorème fondamental repose de manière cruciale sur la complétude.
- **Théorème de Riesz**: En dimension finie, les compacts sont les fermés bornés. Le théorème de Riesz stipule que dans un espace vectoriel normé de dimension infinie, la boule unité fermée n'est jamais compacte. C'est une différence fondamentale avec la dimension finie.

### Applications

- **Résolution d'équations**: Le théorème du point fixe de Banach, valide grâce à la complétude, est un outil puissant pour prouver l'existence et l'unicité de solutions pour des équations différentielles (théorème de Cauchy-Lipschitz) ou des systèmes d'équations non linéaires.
- **Analyse numérique**: La convergence des méthodes itératives (comme la méthode de Newton) pour trouver les zéros de fonctions est souvent prouvée en montrant que la suite des itérés est une suite de Cauchy. La complétude de $\mathbb{R}^n$ garantit alors l'existence d'une limite.
- **Fondement de l'analyse**: La complétude est la propriété qui permet de faire de l'analyse "sérieusement", en garantissant que les objets limites (intégrales, dérivées, etc.) existent bien dans l'espace considéré.
