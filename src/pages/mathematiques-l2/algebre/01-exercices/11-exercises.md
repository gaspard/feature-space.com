---
id: 0b867c0d
type: exercises
order: 11
title: 'Groupes, anneaux et corps - exercices (A)'
tags:
  - groupes
  - anneaux
  - corps
  - morphismes
  - isomorphismes
  - structures algébriques
createdAt: '2025-10-23T16:31:20.229Z'
level: regular
course: Algèbre I - TD1
courseId: 4b53c5fb
chapter: 'Groupes, anneaux et corps'
chapterId: a172ec8a
---
# Exercices "Groupes, anneaux et corps" (A)

## Exercice 1

**Problème :** Soit $G$ l'ensemble des matrices carrées d'ordre 2 de la forme $\begin{pmatrix} a & b \\ 0 & 1 \end{pmatrix}$ où $a, b \in \mathbb{R}$ et $a \neq 0$. Montrer que $G$ muni de la multiplication matricielle est un groupe. Est-il commutatif ?

<details>

<summary>Solution</summary>

**Méthode :** Pour montrer que $(G, \cdot)$ est un groupe, nous devons vérifier les quatre axiomes d'un groupe :

1.  **Loi de composition interne :** Le produit de deux matrices de $G$ est encore dans $G$.
2.  **Associativité :** La multiplication matricielle est associative.
3.  **Élément neutre :** Il existe une matrice identité dans $G$.
4.  **Inverse :** Chaque matrice de $G$ a un inverse dans $G$.

Ensuite, pour vérifier si le groupe est commutatif (abélien), nous testerons si $MN = NM$ pour deux matrices arbitraires $M, N \in G$.

**Étapes :**

1.  **Loi de composition interne :** Soient $M = \begin{pmatrix} a & b \\ 0 & 1 \end{pmatrix}$ et $N = \begin{pmatrix} c & d \\ 0 & 1 \end{pmatrix}$ deux matrices de $G$. On a $a, c \in \mathbb{R}^*$ et $b, d \in \mathbb{R}$.

    Calculons leur produit :

    $MN = \begin{pmatrix} a & b \\ 0 & 1 \end{pmatrix} \begin{pmatrix} c & d \\ 0 & 1 \end{pmatrix} = \begin{pmatrix} ac+b \cdot 0 & ad+b \cdot 1 \\ 0 \cdot c+1 \cdot 0 & 0 \cdot d+1 \cdot 1 \end{pmatrix} = \begin{pmatrix} ac & ad+b \\ 0 & 1 \end{pmatrix}$

    Le produit est une matrice de la forme $\begin{pmatrix} a' & b' \\ 0 & 1 \end{pmatrix}$ avec $a' = ac$ et $b' = ad+b$. Comme $a \neq 0$ et $c \neq 0$, on a $a' = ac \neq 0$. Donc $MN \in G$. La loi est bien interne.

2.  **Associativité :** La multiplication des matrices est associative dans l'ensemble des matrices carrées $\mathcal{M}_2(\mathbb{R})$, donc elle l'est aussi dans le sous-ensemble $G$.

3.  **Élément neutre :** L'élément neutre pour la multiplication matricielle est la matrice identité $I = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}$. Cette matrice est de la forme $\begin{pmatrix} a & b \\ 0 & 1 \end{pmatrix}$ avec $a=1$ et $b=0$. Comme $a=1 \neq 0$, la matrice identité $I$ appartient à $G$. C'est donc l'élément neutre de $G$.

4.  **Inverse :** Soit $M = \begin{pmatrix} a & b \\ 0 & 1 \end{pmatrix} \in G$. On cherche une matrice $M^{-1} = \begin{pmatrix} x & y \\ 0 & 1 \end{pmatrix} \in G$ telle que $MM^{-1} = I$.

    $MM^{-1} = \begin{pmatrix} a & b \\ 0 & 1 \end{pmatrix} \begin{pmatrix} x & y \\ 0 & 1 \end{pmatrix} = \begin{pmatrix} ax & ay+b \\ 0 & 1 \end{pmatrix} = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}$

    On obtient le système d'équations :

    $\begin{cases} ax = 1 \\ ay+b = 0 \end{cases}$

    Comme $a \neq 0$, la première équation donne $x = 1/a$. La seconde donne $a y = -b$, soit $y = -b/a$.

    L'inverse est donc $M^{-1} = \begin{pmatrix} 1/a & -b/a \\ 0 & 1 \end{pmatrix}$.

    Puisque $a \neq 0$, $1/a \neq 0$. Donc $M^{-1}$ est bien dans $G$. Chaque élément de $G$ a un inverse dans $G$.

5.  **Commutativité :** Prenons deux matrices générales de $G$, $M = \begin{pmatrix} a & b \\ 0 & 1 \end{pmatrix}$ et $N = \begin{pmatrix} c & d \\ 0 & 1 \end{pmatrix}$.

    On a déjà calculé $MN = \begin{pmatrix} ac & ad+b \\ 0 & 1 \end{pmatrix}$.

    Calculons $NM = \begin{pmatrix} c & d \\ 0 & 1 \end{pmatrix} \begin{pmatrix} a & b \\ 0 & 1 \end{pmatrix} = \begin{pmatrix} ca & cb+d \\ 0 & 1 \end{pmatrix}$.

    Pour que le groupe soit commutatif, il faudrait que $MN = NM$ pour tous les choix de $M, N$. Cela signifie que $ad+b = cb+d$.

    Prenons un contre-exemple : $a=2, b=1, c=3, d=1$.

    $ad+b = 2(1)+1 = 3$.

    $cb+d = 3(1)+1 = 4$.

    Comme $3 \neq 4$, on a $MN \neq NM$. Le groupe n'est donc pas commutatif.

**Réponse :** $(G, \cdot)$ est un groupe non commutatif.

</details>

## Exercice 2

**Problème :** Soit $(G, \cdot)$ un groupe. Montrer que si pour tous les éléments $a, b \in G$, on a $(ab)^{-1} = a^{-1}b^{-1}$, alors le groupe $G$ est commutatif.

<details>

<summary>Solution</summary>

**Méthode :** L'objectif est de prouver que $ab = ba$ pour tous $a, b \in G$. Nous utiliserons la propriété générale de l'inverse d'un produit dans un groupe, qui est $(ab)^{-1} = b^{-1}a^{-1}$, et nous la comparerons à l'hypothèse donnée $(ab)^{-1} = a^{-1}b^{-1}$.

**Étapes :**

1.  Rappelons la propriété générale de l'inverse d'un produit dans n'importe quel groupe : pour tous $a, b \in G$, on a $(ab)^{-1} = b^{-1}a^{-1}$.

2.  L'hypothèse de l'exercice est que pour tous $a, b \in G$, on a $(ab)^{-1} = a^{-1}b^{-1}$.

3.  En combinant ces deux égalités, nous pouvons affirmer que pour tous $a, b \in G$ :

    $b^{-1}a^{-1} = a^{-1}b^{-1}$

4.  Cette nouvelle équation est valable pour tous les éléments du groupe. Soient $x, y \in G$ deux éléments quelconques. Comme chaque élément d'un groupe possède un inverse, il existe $a, b \in G$ tels que $x = a^{-1}$ et $y = b^{-1}$. En effet, on peut prendre $a = x^{-1}$ et $b = y^{-1}$.

5.  Substituons $a$ par $y^{-1}$ et $b$ par $x^{-1}$ dans l'équation $b^{-1}a^{-1} = a^{-1}b^{-1}$.

    On a $a^{-1} = (y^{-1})^{-1} = y$ et $b^{-1} = (x^{-1})^{-1} = x$.

    L'équation devient donc :

    $xy = yx$

6.  Puisque cette égalité est vraie pour tous les $x, y \in G$, le groupe $G$ est par définition commutatif (abélien).

**Réponse :** Le groupe $G$ est commutatif.

</details>

## Exercice 3

**Problème :** On considère l'ensemble $\mathbb{Z}[\sqrt{2}] = \{a + b\sqrt{2} \mid a, b \in \mathbb{Z}\}$. Montrer que $\mathbb{Z}[\sqrt{2}]$ muni de l'addition et de la multiplication usuelles des nombres réels est un anneau commutatif et intègre. Est-ce un corps ?

<details>

<summary>Solution</summary>

**Méthode :** Pour montrer que $\mathbb{Z}[\sqrt{2}]$ est un anneau, nous allons montrer que c'est un sous-anneau de $(\mathbb{R}, +, \cdot)$. Il suffit pour cela de vérifier que :

1.  $\mathbb{Z}[\sqrt{2}]$ est un sous-groupe de $(\mathbb{R}, +)$.
2.  $\mathbb{Z}[\sqrt{2}]$ est stable par multiplication.
3.  L'élément neutre de la multiplication, $1$, est dans $\mathbb{Z}[\sqrt{2}]$.

La commutativité et l'intégrité seront ensuite vérifiées. Pour savoir si c'est un corps, nous devons déterminer si chaque élément non nul a un inverse dans $\mathbb{Z}[\sqrt{2}]$.

**Étapes :**

1.  **Structure de sous-groupe additif :**
    - L'élément neutre additif $0$ est dans $\mathbb{Z}[\sqrt{2}]$ car $0 = 0 + 0\sqrt{2}$.
    - Soient $x = a + b\sqrt{2}$ et $y = c + d\sqrt{2}$ deux éléments de $\mathbb{Z}[\sqrt{2}]$.

    $x - y = (a + b\sqrt{2}) - (c + d\sqrt{2}) = (a-c) + (b-d)\sqrt{2}$.

    Puisque $a,b,c,d \in \mathbb{Z}$, on a $a-c \in \mathbb{Z}$ et $b-d \in \mathbb{Z}$. Donc $x-y \in \mathbb{Z}[\sqrt{2}]$.

    Ceci prouve que $(\mathbb{Z}[\sqrt{2}], +)$ est un sous-groupe de $(\mathbb{R}, +)$.

2.  **Stabilité par multiplication :**

    Soient $x = a + b\sqrt{2}$ et $y = c + d\sqrt{2}$.

    $xy = (a + b\sqrt{2})(c + d\sqrt{2}) = ac + ad\sqrt{2} + bc\sqrt{2} + 2bd = (ac+2bd) + (ad+bc)\sqrt{2}$.

    Puisque $a,b,c,d \in \mathbb{Z}$, les coefficients $ac+2bd$ et $ad+bc$ sont aussi des entiers. Donc $xy \in \mathbb{Z}[\sqrt{2}]$.

3.  **Élément unité :**

    L'élément unité de $\mathbb{R}$ est $1$. On peut écrire $1 = 1 + 0\sqrt{2}$, donc $1 \in \mathbb{Z}[\sqrt{2}]$.

    Ces trois points montrent que $\mathbb{Z}[\sqrt{2}]$ est un sous-anneau de $\mathbb{R}$.

4.  **Commutativité et intégrité :**

    La multiplication dans $\mathbb{R}$ est commutative, donc elle l'est aussi dans $\mathbb{Z}[\sqrt{2}]$. L'anneau est donc commutatif.

    $\mathbb{R}$ est un corps, donc il est intègre (pas de diviseurs de zéro). Tout sous-anneau d'un anneau intègre est lui-même intègre. Donc $\mathbb{Z}[\sqrt{2}]$ est intègre.

5.  **Est-ce un corps ?**

    Pour que $\mathbb{Z}[\sqrt{2}]$ soit un corps, tout élément non nul doit avoir un inverse dans $\mathbb{Z}[\sqrt{2}]$.

    Soit $x = a + b\sqrt{2} \in \mathbb{Z}[\sqrt{2}]$, avec $x \neq 0$. Son inverse dans $\mathbb{R}$ est :

    $\frac{1}{x} = \frac{1}{a + b\sqrt{2}} = \frac{a - b\sqrt{2}}{(a + b\sqrt{2})(a - b\sqrt{2})} = \frac{a - b\sqrt{2}}{a^2 - 2b^2} = \frac{a}{a^2 - 2b^2} - \frac{b}{a^2 - 2b^2}\sqrt{2}$.

    Pour que cet inverse appartienne à $\mathbb{Z}[\sqrt{2}]$, il faut que ses coefficients $\frac{a}{a^2 - 2b^2}$ et $\frac{-b}{a^2 - 2b^2}$ soient des entiers.

    Prenons par exemple l'élément $2 = 2 + 0\sqrt{2} \in \mathbb{Z}[\sqrt{2}]$. Son inverse est $1/2$. On ne peut pas écrire $1/2$ sous la forme $a + b\sqrt{2}$ avec $a, b \in \mathbb{Z}$.

    Donc $2$ n'a pas d'inverse dans $\mathbb{Z}[\sqrt{2}]$.

    L'anneau $\mathbb{Z}[\sqrt{2}]$ n'est pas un corps.

**Réponse :** $\mathbb{Z}[\sqrt{2}]$ est un anneau commutatif et intègre, mais ce n'est pas un corps.

</details>

## Exercice 4

**Problème :** Déterminer si les applications suivantes sont des morphismes de groupes.

a) $f: (\mathbb{R}, +) \to (\mathbb{R}^*_+, \cdot)$ définie par $f(x) = 2^x$.

b) $g: (\mathbb{Z}, +) \to (\mathbb{Z}, +)$ définie par $g(n) = n+1$.

c) $h: (\text{GL}_2(\mathbb{R}), \cdot) \to (\mathbb{R}^*, \cdot)$ définie par $h(M) = \det(M)^2$.

<details>

<summary>Solution</summary>

**Méthode :** Pour chaque application $f: (G, *) \to (H, \circ)$, nous devons vérifier si la propriété fondamentale d'un morphisme de groupes est satisfaite : $f(x * y) = f(x) \circ f(y)$ pour tous $x, y \in G$.

**Étapes :**

1.  **Application a) $f(x) = 2^x$**

    Le groupe de départ est $(\mathbb{R}, +)$ et le groupe d'arrivée est $(\mathbb{R}^*_+, \cdot)$.

    Soient $x, y \in \mathbb{R}$.

    $f(x+y) = 2^{x+y}$.

    $f(x) \cdot f(y) = 2^x \cdot 2^y = 2^{x+y}$.

    On a bien $f(x+y) = f(x) \cdot f(y)$.

    Donc $f$ est un morphisme de groupes.

2.  **Application b) $g(n) = n+1$**

    Le groupe de départ est $(\mathbb{Z}, +)$ et le groupe d'arrivée est $(\mathbb{Z}, +)$.

    Soient $n, m \in \mathbb{Z}$.

    $g(n+m) = (n+m)+1 = n+m+1$.

    $g(n) + g(m) = (n+1) + (m+1) = n+m+2$.

    On voit que $g(n+m) \neq g(n) + g(m)$.

    On peut aussi vérifier l'image de l'élément neutre. $e_G = 0$. $g(0) = 0+1=1$. L'élément neutre d'arrivée est $e_H = 0$. Comme $g(e_G) \neq e_H$, $g$ n'est pas un morphisme de groupes.

3.  **Application c) $h(M) = \det(M)^2$**

    Le groupe de départ est $(\text{GL}_2(\mathbb{R}), \cdot)$ (groupe des matrices inversibles 2x2) et le groupe d'arrivée est $(\mathbb{R}^*, \cdot)$.

    Soient $A, B \in \text{GL}_2(\mathbb{R})$.

    $h(A \cdot B) = \det(A \cdot B)^2$.

    On sait que $\det(AB) = \det(A)\det(B)$.

    Donc $h(A \cdot B) = (\det(A)\det(B))^2 = \det(A)^2 \det(B)^2$.

    D'autre part, $h(A) \cdot h(B) = \det(A)^2 \cdot \det(B)^2$.

    On a bien $h(A \cdot B) = h(A) \cdot h(B)$.

    Donc $h$ est un morphisme de groupes.

**Réponse :**

a) Oui, $f$ est un morphisme de groupes.

b) Non, $g$ n'est pas un morphisme de groupes.

c) Oui, $h$ est un morphisme de groupes.

</details>

## Exercice 5

**Problème :** On considère l'anneau $(\mathbb{Z}_6, +, \cdot)$.

a) Dresser les tables d'addition et de multiplication de $\mathbb{Z}_6$.

b) L'anneau $\mathbb{Z}_6$ est-il intègre ?

c) L'anneau $\mathbb{Z}_6$ est-il un corps ? Justifier.

<details>

<summary>Solution</summary>

**Méthode :** $\mathbb{Z}_6 = \{\bar{0}, \bar{1}, \bar{2}, \bar{3}, \bar{4}, \bar{5}\}$ est l'ensemble des classes d'équivalence de la congruence modulo 6.

a) Nous allons calculer les tables d'opérations.

b) Pour vérifier si l'anneau est intègre, nous devons chercher s'il existe des diviseurs de zéro, c'est-à-dire $a, b \neq \bar{0}$ tels que $a \cdot b = \bar{0}$.

c) Pour que ce soit un corps, il faut que l'anneau soit intègre et que tout élément non nul ait un inverse multiplicatif.

**Étapes :**

1.  **Tables d'opérations :**

    **Table d'addition (+)**

    | + | 0 | 1 | 2 | 3 | 4 | 5 |

    |---|---|---|---|---|---|---|

    | 0 | 0 | 1 | 2 | 3 | 4 | 5 |

    | 1 | 1 | 2 | 3 | 4 | 5 | 0 |

    | 2 | 2 | 3 | 4 | 5 | 0 | 1 |

    | 3 | 3 | 4 | 5 | 0 | 1 | 2 |

    | 4 | 4 | 5 | 0 | 1 | 2 | 3 |

    | 5 | 5 | 0 | 1 | 2 | 3 | 4 |

    **Table de multiplication (·)**

    | · | 0 | 1 | 2 | 3 | 4 | 5 |

    |---|---|---|---|---|---|---|

    | 0 | 0 | 0 | 0 | 0 | 0 | 0 |

    | 1 | 0 | 1 | 2 | 3 | 4 | 5 |

    | 2 | 0 | 2 | 4 | 0 | 2 | 4 |

    | 3 | 0 | 3 | 0 | 3 | 0 | 3 |

    | 4 | 0 | 4 | 2 | 0 | 4 | 2 |

    | 5 | 0 | 5 | 4 | 3 | 2 | 1 |

2.  **Intégrité :**

    Un anneau est intègre s'il n'a pas de diviseurs de zéro. On cherche $a, b \in \mathbb{Z}_6 \setminus \{\bar{0}\}$ tels que $a \cdot b = \bar{0}$.

    En regardant la table de multiplication, on trouve plusieurs exemples :

    - $\bar{2} \cdot \bar{3} = \bar{6} = \bar{0}$
    - $\bar{3} \cdot \bar{4} = \bar{12} = \bar{0}$
    - $\bar{4} \cdot \bar{3} = \bar{12} = \bar{0}$

    Comme il existe des diviseurs de zéro (par exemple $\bar{2}$ et $\bar{3}$), l'anneau $\mathbb{Z}_6$ n'est pas intègre.

3.  **Corps :**

    Un corps est un anneau commutatif dans lequel tout élément non nul est inversible.

    Une propriété fondamentale est que tout corps est un anneau intègre.

    Puisque nous avons montré que $\mathbb{Z}_6$ n'est pas intègre, il ne peut pas être un corps.

    Alternativement, on peut chercher les inverses dans la table de multiplication. Un élément $a$ est inversible s'il existe $b$ tel que $a \cdot b = \bar{1}$.

    - $\bar{1} \cdot \bar{1} = \bar{1}$ (1 est son propre inverse)
    - $\bar{5} \cdot \bar{5} = \bar{25} = \bar{1}$ (5 est son propre inverse)
    - Les éléments $\bar{2}, \bar{3}, \bar{4}$ n'ont pas d'inverse (la ligne correspondante ne contient pas de $\bar{1}$).

    Comme tous les éléments non nuls ne sont pas inversibles, $\mathbb{Z}_6$ n'est pas un corps.

**Réponse :**

a) Les tables sont ci-dessus.

b) L'anneau $\mathbb{Z}_6$ n'est pas intègre car il possède des diviseurs de zéro (ex: $\bar{2} \cdot \bar{3} = \bar{0}$).

c) L'anneau $\mathbb{Z}_6$ n'est pas un corps car il n'est pas intègre (et certains de ses éléments non nuls ne sont pas inversibles).

</details>

## Exercice 6

**Problème :** Montrer que les groupes $(\mathbb{Z}, +)$ et $(2\mathbb{Z}, +)$ sont isomorphes, où $2\mathbb{Z} = \{2k \mid k \in \mathbb{Z}\}$ est l'ensemble des entiers pairs.

<details>

<summary>Solution</summary>

**Méthode :** Pour montrer que deux groupes $(G, *)$ et $(H, \circ)$ sont isomorphes, nous devons trouver une application $f: G \to H$ qui est un isomorphisme, c'est-à-dire une application qui est à la fois un morphisme de groupes et bijective (injective et surjective).

**Étapes :**

1.  **Définition de l'application :**

    Considérons l'application $f: \mathbb{Z} \to 2\mathbb{Z}$ définie par $f(k) = 2k$.

    Cette application est bien définie car pour tout entier $k \in \mathbb{Z}$, son image $2k$ est par définition un entier pair, donc appartient à $2\mathbb{Z}$.

2.  **Vérification du morphisme :**

    Nous devons vérifier que $f(k_1 + k_2) = f(k_1) + f(k_2)$ pour tous $k_1, k_2 \in \mathbb{Z}$.

    - $f(k_1 + k_2) = 2(k_1 + k_2) = 2k_1 + 2k_2$.
    - $f(k_1) + f(k_2) = (2k_1) + (2k_2) = 2k_1 + 2k_2$.

    L'égalité est vérifiée, donc $f$ est un morphisme de groupes.

3.  **Vérification de l'injectivité :**

    Nous devons montrer que si $f(k_1) = f(k_2)$, alors $k_1 = k_2$.

    Supposons $f(k_1) = f(k_2)$.

    Cela signifie $2k_1 = 2k_2$.

    En divisant par 2, on obtient $k_1 = k_2$.

    L'application $f$ est donc injective.

4.  **Vérification de la surjectivité :**

    Nous devons montrer que pour tout élément $y \in 2\mathbb{Z}$, il existe un élément $k \in \mathbb{Z}$ tel que $f(k) = y$.

    Soit $y \in 2\mathbb{Z}$. Par définition de $2\mathbb{Z}$, $y$ est un entier pair, donc il peut s'écrire sous la forme $y = 2k$ pour un certain entier $k \in \mathbb{Z}$.

    Cet entier $k$ est l'antécédent de $y$ par $f$, car $f(k) = 2k = y$.

    L'application $f$ est donc surjective.

5.  **Conclusion :**

    Puisque $f$ est un morphisme de groupes et qu'elle est bijective (injective et surjective), $f$ est un isomorphisme de groupes.

**Réponse :** Les groupes $(\mathbb{Z}, +)$ et $(2\mathbb{Z}, +)$ sont isomorphes via l'isomorphisme $f(k) = 2k$.

</details>

## Exercice 7

**Problème :** Soient $(G, \cdot)$ un groupe, et $H_1, H_2$ deux sous-groupes de $G$. Montrer que leur intersection $H_1 \cap H_2$ est aussi un sous-groupe de $G$.

<details>

<summary>Solution</summary>

**Méthode :** Pour montrer que $H_1 \cap H_2$ est un sous-groupe de $G$, nous devons utiliser la caractérisation des sous-groupes. Un sous-ensemble non vide $H$ de $G$ est un sous-groupe si et seulement si pour tous $x, y \in H$, on a $xy^{-1} \in H$. Nous allons vérifier cette condition pour $H = H_1 \cap H_2$.

**Étapes :**

1.  **Vérifier que l'intersection est non vide :**

    Soit $e$ l'élément neutre de $G$.

    Puisque $H_1$ est un sous-groupe de $G$, $e \in H_1$.

    De même, puisque $H_2$ est un sous-groupe de $G$, $e \in H_2$.

    Par conséquent, $e$ appartient à l'intersection $H_1 \cap H_2$.

    Donc $H_1 \cap H_2$ n'est pas vide.

2.  **Vérifier la stabilité par la loi $xy^{-1}$ :**

    Soient $x$ et $y$ deux éléments quelconques de $H_1 \cap H_2$.

    Par définition de l'intersection, cela signifie que $x \in H_1$ et $y \in H_1$.

    Puisque $H_1$ est un sous-groupe, il est stable par la loi $ab^{-1}$. Donc $xy^{-1} \in H_1$.

3.  De même, par définition de l'intersection, $x \in H_2$ et $y \in H_2$.

    Puisque $H_2$ est un sous-groupe, il est également stable par la loi $ab^{-1}$. Donc $xy^{-1} \in H_2$.

4.  **Conclusion :**

    Nous avons montré que si $x, y \in H_1 \cap H_2$, alors $xy^{-1} \in H_1$ et $xy^{-1} \in H_2$.

    Cela signifie que $xy^{-1}$ appartient à l'intersection $H_1 \cap H_2$.

5.  Puisque $H_1 \cap H_2$ est un sous-ensemble non vide de $G$ et qu'il est stable par l'opération $(x, y) \mapsto xy^{-1}$, c'est un sous-groupe de $G$.

**Réponse :** L'intersection de deux sous-groupes $H_1$ et $H_2$ d'un groupe $G$ est bien un sous-groupe de $G$.

</details>

## Exercice 8

**Problème :** Soit $(G, \cdot)$ un groupe et soit $g \in G$ un élément fixé. On définit l'application $\phi_g : G \to G$ par $\phi_g(x) = gxg^{-1}$ pour tout $x \in G$. Montrer que $\phi_g$ est un isomorphisme de $G$ dans lui-même (c'est-à-dire un automorphisme de $G$).

<details>

<summary>Solution</summary>

**Méthode :** Pour prouver que $\phi_g$ est un automorphisme, nous devons montrer que c'est un morphisme de groupe bijectif de $G$ dans $G$.

1.  **Morphisme :** Vérifier que $\phi_g(xy) = \phi_g(x)\phi_g(y)$.
2.  **Injectivité :** Montrer que si $\phi_g(x) = \phi_g(y)$, alors $x=y$.
3.  **Surjectivité :** Montrer que pour tout $z \in G$, il existe un $x \in G$ tel que $\phi_g(x) = z$.

**Étapes :**

1.  **Vérification du morphisme :**

    Soient $x, y \in G$.

    $\phi_g(xy) = g(xy)g^{-1}$.

    $\phi_g(x)\phi_g(y) = (gxg^{-1})(gyg^{-1})$.

    On peut simplifier cette expression en utilisant l'associativité de la loi du groupe. Le terme $g^{-1}g$ au milieu se simplifie en l'élément neutre $e$.

    $\phi_g(x)\phi_g(y) = gx(g^{-1}g)yg^{-1} = gxeyg^{-1} = g(xy)g^{-1}$.

    On a bien $\phi_g(xy) = \phi_g(x)\phi_g(y)$, donc $\phi_g$ est un morphisme de groupes (un endomorphisme de $G$).

2.  **Vérification de l'injectivité :**

    Supposons que $\phi_g(x) = \phi_g(y)$ pour $x, y \in G$.

    Cela signifie que $gxg^{-1} = gyg^{-1}$.

    On peut multiplier cette équation à gauche par $g^{-1}$ :

    $g^{-1}(gxg^{-1}) = g^{-1}(gyg^{-1})$

    $(g^{-1}g)xg^{-1} = (g^{-1}g)yg^{-1}$

    $exg^{-1} = eyg^{-1}$

    $xg^{-1} = yg^{-1}$

    Maintenant, on multiplie à droite par $g$ :

    $(xg^{-1})g = (yg^{-1})g$

    $x(g^{-1}g) = y(g^{-1}g)$

    $xe = ye$

    $x = y$.

    Donc, $\phi_g$ est injective.

3.  **Vérification de la surjectivité :**

    Soit $z \in G$ un élément quelconque. Nous cherchons un antécédent $x \in G$ tel que $\phi_g(x) = z$.

    On veut résoudre l'équation $gxg^{-1} = z$ pour $x$.

    Multiplions à gauche par $g^{-1}$ : $g^{-1}gxg^{-1} = g^{-1}z \implies xg^{-1} = g^{-1}z$.

    Multiplions à droite par $g$ : $xg^{-1}g = g^{-1}zg \implies x = g^{-1}zg$.

    Cet élément $x = g^{-1}zg$ appartient bien à $G$. Vérifions qu'il est bien l'antécédent de $z$ :

    $\phi_g(x) = \phi_g(g^{-1}zg) = g(g^{-1}zg)g^{-1} = (gg^{-1})z(gg^{-1}) = eze = z$.

    Pour tout $z \in G$, il existe un antécédent. Donc $\phi_g$ est surjective.

4.  **Conclusion :**

    L'application $\phi_g$ est un endomorphisme injectif et surjectif de $G$. C'est donc un automorphisme de $G$.

**Réponse :** L'application de conjugaison $\phi_g(x) = gxg^{-1}$ est un automorphisme du groupe $G$.

</details>

## Exercice 9

**Problème :** Un théorème affirme que tout anneau intègre fini est un corps. Utiliser ce résultat pour montrer que l'anneau $(\mathbb{Z}_p, +, \cdot)$ est un corps si et seulement si $p$ est un nombre premier.

<details>

<summary>Solution</summary>

**Méthode :** Nous devons prouver une équivalence.

1.  **($\implies$) Si $\mathbb{Z}_p$ est un corps, alors $p$ est premier :** Nous allons raisonner par contraposée. Supposons que $p$ n'est pas premier, et montrons que $\mathbb{Z}_p$ n'est pas un corps.
2.  **($\impliedby$) Si $p$ est premier, alors $\mathbb{Z}_p$ est un corps :** Nous allons utiliser le théorème donné. Pour cela, il suffit de montrer que si $p$ est premier, alors $\mathbb{Z}_p$ est un anneau intègre fini.

**Étapes :**

1.  **Preuve de ($\implies$) : Si $\mathbb{Z}_p$ est un corps, alors $p$ est premier.**
    - Procédons par contraposée. Supposons que $p$ n'est pas un nombre premier (et $p > 1$, car $\mathbb{Z}_1$ est l'anneau nul).
    - Si $p$ n'est pas premier, il est composé. Il existe donc deux entiers $a, b$ tels que $1 < a < p$ et $1 < b < p$ et $p = ab$.
    - Dans l'anneau $\mathbb{Z}_p$, considérons les classes $\bar{a}$ et $\bar{b}$. Comme $1 < a < p$ et $1 < b < p$, on a $\bar{a} \neq \bar{0}$ et $\bar{b} \neq \bar{0}$.
    - Calculons leur produit : $\bar{a} \cdot \bar{b} = \overline{ab} = \bar{p}$.
    - Par définition de l'arithmétique modulaire, $\bar{p} = \bar{0}$ dans $\mathbb{Z}_p$.
    - Nous avons donc trouvé deux éléments non nuls $\bar{a}$ et $\bar{b}$ dont le produit est nul. $\mathbb{Z}_p$ a des diviseurs de zéro, il n'est donc pas un anneau intègre.
    - Or, tout corps est un anneau intègre. Puisque $\mathbb{Z}_p$ n'est pas intègre, il ne peut pas être un corps.
    - La contraposée est donc vraie : si $\mathbb{Z}_p$ est un corps, $p$ doit être premier.

2.  **Preuve de ($\impliedby$) : Si $p$ est premier, alors $\mathbb{Z}_p$ est un corps.**
    - L'anneau $\mathbb{Z}_p$ est un anneau commutatif fini (il a $p$ éléments).
    - D'après le théorème, si nous montrons que $\mathbb{Z}_p$ est intègre, alors c'est un corps.
    - Supposons que $p$ est un nombre premier. Montrons que $\mathbb{Z}_p$ est intègre.
    - Soient $\bar{a}, \bar{b} \in \mathbb{Z}_p$ tels que $\bar{a} \cdot \bar{b} = \bar{0}$.
    - Par définition, cela signifie que $ab \equiv 0 \pmod{p}$.
    - Cela veut dire que $p$ divise le produit $ab$.
    - D'après le lemme d'Euclide, si un nombre premier $p$ divise un produit $ab$, alors $p$ divise $a$ ou $p$ divise $b$.
    - Si $p$ divise $a$, alors $a \equiv 0 \pmod{p}$, ce qui signifie $\bar{a} = \bar{0}$ dans $\mathbb{Z}_p$.
    - Si $p$ divise $b$, alors $b \equiv 0 \pmod{p}$, ce qui signifie $\bar{b} = \bar{0}$ dans $\mathbb{Z}_p$.
    - Donc, si le produit $\bar{a} \cdot \bar{b}$ est nul, l'un des facteurs doit être nul. $\mathbb{Z}_p$ n'a pas de diviseurs de zéro. C'est un anneau intègre.

3.  **Conclusion :**
    - $\mathbb{Z}_p$ est un anneau commutatif, fini et intègre (car $p$ est premier).
    - Le théorème "tout anneau intègre fini est un corps" s'applique.
    - Donc, $\mathbb{Z}_p$ est un corps.

**Réponse :** Nous avons montré les deux implications : $\mathbb{Z}_p$ est un corps si $p$ est premier, et si $\mathbb{Z}_p$ est un corps, alors $p$ est premier. L'équivalence est donc prouvée.

</details>

## Exercice 10

**Problème :** Montrer que les groupes $(\mathbb{Z}, +)$ et $(\mathbb{Q}, +)$ ne sont pas isomorphes.

<details>

<summary>Solution</summary>

**Méthode :** Nous allons raisonner par l'absurde. Supposons qu'il existe un isomorphisme de groupes $f: (\mathbb{Q}, +) \to (\mathbb{Z}, +)$. Un isomorphisme préserve les propriétés structurelles des groupes. Nous allons trouver une propriété de $(\mathbb{Q}, +)$ qui ne peut pas être préservée dans $(\mathbb{Z}, +)$, ce qui mènera à une contradiction. La propriété que nous utiliserons est la "divisibilité" des éléments.

**Étapes :**

1.  **Hypothèse par l'absurde :** Supposons qu'il existe un isomorphisme de groupes $f: (\mathbb{Q}, +) \to (\mathbb{Z}, +)$.

    Puisque $f$ est un isomorphisme, il est surjectif. Il existe donc un élément $q \in \mathbb{Q}$ tel que $f(q) = 1$. L'élément 1 est un générateur du groupe $(\mathbb{Z}, +)$.

2.  **Utilisation de la "divisibilité" dans $\mathbb{Q}$ :**

    Dans le groupe $(\mathbb{Q}, +)$, pour tout élément $y \in \mathbb{Q}$ et tout entier non nul $n \in \mathbb{Z}$, il existe un élément $x \in \mathbb{Q}$ tel que $nx = y$. (Ici $nx$ signifie $x+x+...+x$, $n$ fois). Cet élément est $x = y/n$.

    En particulier, pour l'élément $q$ trouvé à l'étape 1, il existe un élément $r \in \mathbb{Q}$ tel que $2r = r+r = q$. Cet élément est $r = q/2$.

3.  **Application du morphisme :**

    Appliquons le morphisme $f$ à l'équation $r+r = q$ :

    $f(r+r) = f(q)$.

    Comme $f$ est un morphisme, $f(r+r) = f(r) + f(r) = 2f(r)$.

    On a donc l'équation $2f(r) = f(q)$.

4.  **Recherche de la contradiction :**

    Par construction, nous avons $f(q) = 1$. L'équation devient donc $2f(r) = 1$.

    L'élément $f(r)$ doit être un élément de $\mathbb{Z}$ (car l'image de $f$ est $\mathbb{Z}$).

    Nous cherchons donc un entier $k = f(r)$ tel que $2k=1$.

    Cette équation n'a pas de solution dans l'ensemble des entiers $\mathbb{Z}$.

5.  **Conclusion :**

    L'hypothèse qu'il existe un isomorphisme $f$ mène à une contradiction. Il est donc impossible qu'un tel isomorphisme existe.

**Réponse :** Les groupes $(\mathbb{Z}, +)$ et $(\mathbb{Q}, +)$ ne sont pas isomorphes.

</details>
