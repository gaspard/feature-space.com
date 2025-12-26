---
id: 7c419826
type: exercises
order: 11
title: Courbes et surfaces dans R3 - exercices (A)
tags:
  - chapter
  - mathematics
createdAt: '2025-12-26T14:44:17.580Z'
level: regular
course: Géométrie
courseId: d9494343
chapter: Courbes et surfaces dans R3
chapterId: 15daf020
---
# Exercices Courbes et surfaces dans $\mathbb{R}^3$ (A)

---

## Exercice 1

**Problème :** Calcul du Repère de Frenet pour une Hélice

Soit l'hélice circulaire définie par la paramétrisation suivante pour $t \in \mathbb{R}$ :

$$ f(t) = \left( 3 \cos t, 3 \sin t, 4t \right) $$

1.  Vérifier que cette courbe est régulière.
2.  Déterminer le vecteur tangent unitaire $\tau(t)$.
3.  Déterminer le vecteur normal unitaire $\nu(t)$.
4.  Déterminer le vecteur binormal $\beta(t)$.

<details>

<summary>Solution</summary>

**Méthode :** Pour construire le repère de Frenet $(\tau, \nu, \beta)$, nous devons calculer les dérivées successives de $f(t)$, normaliser le vecteur vitesse pour obtenir $\tau$, dériver $\tau$ pour obtenir $\nu$, et utiliser le produit vectoriel pour $\beta$.

**Étapes :**

1.  **Calcul du vecteur vitesse et vérification de la régularité :**

    Calculons la dérivée première $f'(t)$ :

    $$ f'(t) = (-3 \sin t, 3 \cos t, 4) $$

    Calculons sa norme :

    $$ \|f'(t)\| = \sqrt{(-3 \sin t)^2 + (3 \cos t)^2 + 4^2} = \sqrt{9(\sin^2 t + \cos^2 t) + 16} = \sqrt{9 + 16} = \sqrt{25} = 5 $$

    La norme est constante et non nulle ($5 \neq 0$), donc la courbe est régulière.

2.  **Calcul du vecteur tangent unitaire $\tau(t)$ :**

    $$ \tau(t) = \frac{f'(t)}{\|f'(t)\|} = \frac{1}{5} (-3 \sin t, 3 \cos t, 4) = \left( -\frac{3}{5} \sin t, \frac{3}{5} \cos t, \frac{4}{5} \right) $$

3.  **Calcul du vecteur normal unitaire $\nu(t)$ :**

    Par définition, $\nu(t) = \frac{\tau'(t)}{\|\tau'(t)\|}$.

    $$ \tau'(t) = \frac{d}{dt} \left( -\frac{3}{5} \sin t, \frac{3}{5} \cos t, \frac{4}{5} \right) = \left( -\frac{3}{5} \cos t, -\frac{3}{5} \sin t, 0 \right) $$

    Norme de $\tau'(t)$ :

    $$ \|\tau'(t)\| = \sqrt{\frac{9}{25}\cos^2 t + \frac{9}{25}\sin^2 t} = \frac{3}{5} $$

    D'où :

    $$ \nu(t) = \frac{\tau'(t)}{3/5} = (-\cos t, -\sin t, 0) $$

4.  **Calcul du vecteur binormal $\beta(t)$ :**

    $$ \beta(t) = \tau(t) \wedge \nu(t) $$

    $$ \beta(t) = \begin{vmatrix} \mathbf{i} & \mathbf{j} & \mathbf{k} \\ -\frac{3}{5}\sin t & \frac{3}{5}\cos t & \frac{4}{5} \\ -\cos t & -\sin t & 0 \end{vmatrix} $$

    Composante $x$ : $0 - (\frac{4}{5})(-\sin t) = \frac{4}{5}\sin t$

    Composante $y$ : $-(\frac{4}{5})(-\cos t) = \frac{4}{5}\cos t$ (avec le signe du déterminant) $\to$ attention : $-(0 - (-\frac{4}{5}\cos t)) = -\frac{4}{5}\cos t$

    Composante $z$ : $(-\frac{3}{5}\sin t)(-\sin t) - (\frac{3}{5}\cos t)(-\cos t) = \frac{3}{5}(\sin^2 t + \cos^2 t) = \frac{3}{5}$

**Réponse :**

Le repère de Frenet est :

$$ \tau(t) = \left( -\frac{3}{5} \sin t, \frac{3}{5} \cos t, \frac{4}{5} \right) $$

$$ \nu(t) = (-\cos t, -\sin t, 0) $$

$$ \beta(t) = \left( \frac{4}{5} \sin t, -\frac{4}{5} \cos t, \frac{3}{5} \right) $$

</details>

---

## Exercice 2

**Problème :** Calcul de la Courbure et de la Torsion

En utilisant l'hélice de l'exercice précédent $f(t) = (3 \cos t, 3 \sin t, 4t)$, calculez :

1.  La courbure $K(t)$.
2.  La torsion $T(t)$.

Utilisez les formules générales pour un paramétrage quelconque (pas nécessairement par longueur d'arc).

<details>

<summary>Solution</summary>

**Méthode :** Nous utilisons les formules faisant intervenir le produit vectoriel des dérivées premières et secondes pour la courbure, et le produit mixte (déterminant) des trois premières dérivées pour la torsion.

Formules :

$$ K = \frac{\|f' \wedge f''\|}{\|f'\|^3}, \quad T = \frac{-\det(f', f'', f''')}{\|f' \wedge f''\|^2} $$

**Étapes :**

1.  **Calcul des dérivées :**

    $f'(t) = (-3 \sin t, 3 \cos t, 4)$

    $f''(t) = (-3 \cos t, -3 \sin t, 0)$

    $f'''(t) = (3 \sin t, -3 \cos t, 0)$

2.  **Calcul du produit vectoriel $f' \wedge f''$ :**

    $$ f' \wedge f'' = \begin{vmatrix} \mathbf{i} & \mathbf{j} & \mathbf{k} \\ -3\sin t & 3\cos t & 4 \\ -3\cos t & -3\sin t & 0 \end{vmatrix} $$

    $x = 0 - (-12\sin t) = 12\sin t$

    $y = -(0 - (-12\cos t)) = -12\cos t$

    $z = 9\sin^2 t - (-9\cos^2 t) = 9(\sin^2 t + \cos^2 t) = 9$
    
    Donc $f' \wedge f'' = (12\sin t, -12\cos t, 9)$.

3.  **Calcul des normes :**

    $\|f'\| = 5$ (calculé à l'exercice 1).

    $\|f' \wedge f''\| = \sqrt{(12\sin t)^2 + (-12\cos t)^2 + 9^2} = \sqrt{144 + 81} = \sqrt{225} = 15$.

4.  **Calcul de la Courbure $K$ :**

    $$ K = \frac{15}{5^3} = \frac{15}{125} = \frac{3}{25} $$

5.  **Calcul du déterminant pour la Torsion :**

    $$ \det(f', f'', f''') = (f' \wedge f'') \cdot f''' $$

    $$ = (12\sin t, -12\cos t, 9) \cdot (3\sin t, -3\cos t, 0) $$

    $$ = 36\sin^2 t + 36\cos^2 t + 0 = 36 $$

6.  **Calcul de la Torsion $T$ :**

    Le signe "$-$" est parfois inclus ou non selon la convention de définition de $\beta'$ (ici $\nu' = -K\tau - T\beta$ est standard). La formule donnée dans le concept est $T = -\frac{\det}{\| \wedge \|^2}$.

    $$ T = -\frac{36}{15^2} = -\frac{36}{225} $$

    Simplifions par 9 :

    $$ T = -\frac{4}{25} $$

    *Note : Pour une hélice circulaire dextre standard, la torsion est souvent positive ou négative selon l'orientation de l'axe z. Ici, le signe moins vient de la formule générique.*

**Réponse :**

$$ K = \frac{3}{25}, \quad T = -\frac{4}{25} $$

</details>

---

## Exercice 3

**Problème :** Matrice Jacobienne et Plan Tangent

Soit la surface $S$ définie par la paramétrisation $f : U \to \mathbb{R}^3$ avec $U = \mathbb{R}^2$ :

$$ f(u, v) = (u + v, u^2 - v, uv) $$

1.  Calculer la matrice jacobienne de $f$ en un point générique $(u, v)$.
2.  Déterminer si le point $P_0$ correspondant aux paramètres $(u, v) = (1, 1)$ est un point régulier.
3.  Si oui, donner une équation cartésienne du plan tangent à la surface en ce point.

<details>

<summary>Solution</summary>

**Méthode :** Calculer les dérivées partielles pour former la Jacobienne. Vérifier l'indépendance linéaire des vecteurs colonnes (produit vectoriel non nul) pour la régularité. Utiliser le vecteur normal pour l'équation du plan.

**Étapes :**

1.  **Calcul des dérivées partielles :**

    $$ \frac{\partial f}{\partial u} = (1, 2u, v) $$

    $$ \frac{\partial f}{\partial v} = (1, -1, u) $$

    La matrice jacobienne est :

    $$ D_{(u,v)}f = \begin{pmatrix} 1 & 1 \\ 2u & -1 \\ v & u \end{pmatrix} $$

2.  **Vérification de la régularité en $(1, 1)$ :**

    Évaluons les vecteurs tangents en $(1, 1)$ :

    $$ \vec{T}_u = \frac{\partial f}{\partial u}(1,1) = (1, 2, 1) $$

    $$ \vec{T}_v = \frac{\partial f}{\partial v}(1,1) = (1, -1, 1) $$

    Calculons le produit vectoriel $\vec{N} = \vec{T}_u \wedge \vec{T}_v$ :

    $$ \vec{N} = \begin{vmatrix} \mathbf{i} & \mathbf{j} & \mathbf{k} \\ 1 & 2 & 1 \\ 1 & -1 & 1 \end{vmatrix} $$

    $x = 2(1) - 1(-1) = 3$

    $y = -(1(1) - 1(1)) = 0$

    $z = 1(-1) - 2(1) = -3$

    $$ \vec{N} = (3, 0, -3) $$

    Puisque $\vec{N} \neq \vec{0}$, le point est **régulier**.

3.  **Équation du plan tangent :**

    Le point sur la surface est $A = f(1, 1) = (1+1, 1^2-1, 1\times 1) = (2, 0, 1)$.

    Le vecteur normal est $\vec{N} = (3, 0, -3)$, ou plus simplement $(1, 0, -1)$ (colinéaire).

    L'équation du plan est de la forme $a(x-x_0) + b(y-y_0) + c(z-z_0) = 0$.

    $$ 1(x - 2) + 0(y - 0) - 1(z - 1) = 0 $$

    $$ x - 2 - z + 1 = 0 $$

    $$ x - z - 1 = 0 $$

**Réponse :**

L'équation du plan tangent est $x - z - 1 = 0$.

</details>

---

## Exercice 4

**Problème :** Calcul de la Première Forme Fondamentale

On considère la sphère de rayon $R$ paramétrée par les coordonnées sphériques :

$$ f(\theta, \varphi) = (R \cos\theta \sin\varphi, R \sin\theta \sin\varphi, R \cos\varphi) $$

où $(\theta, \varphi) \in ]0, 2\pi[ \times ]0, \pi[$.

Calculer les coefficients $E, F, G$ de la première forme fondamentale.

<details>

<summary>Solution</summary>

**Méthode :** Calculer les dérivées partielles par rapport à $\theta$ et $\varphi$, puis calculer leurs produits scalaires respectifs.

**Étapes :**

1.  **Dérivées partielles :**

    $$ f_\theta = \frac{\partial f}{\partial \theta} = (-R \sin\theta \sin\varphi, R \cos\theta \sin\varphi, 0) $$

    $$ f_\varphi = \frac{\partial f}{\partial \varphi} = (R \cos\theta \cos\varphi, R \sin\theta \cos\varphi, -R \sin\varphi) $$

2.  **Calcul de $E$ :**

    $$ E = \|f_\theta\|^2 = (-R \sin\theta \sin\varphi)^2 + (R \cos\theta \sin\varphi)^2 + 0 $$

    $$ E = R^2 \sin^2\varphi (\sin^2\theta + \cos^2\theta) = R^2 \sin^2\varphi $$

3.  **Calcul de $F$ :**

    $$ F = \langle f_\theta, f_\varphi \rangle $$

    $$ F = (-R \sin\theta \sin\varphi)(R \cos\theta \cos\varphi) + (R \cos\theta \sin\varphi)(R \sin\theta \cos\varphi) + 0 $$

    Les deux premiers termes sont identiques au signe près, ils s'annulent.

    $$ F = 0 $$

    (Cela confirme que les parallèles et méridiens sont orthogonaux).

4.  **Calcul de $G$ :**

    $$ G = \|f_\varphi\|^2 = (R \cos\theta \cos\varphi)^2 + (R \sin\theta \cos\varphi)^2 + (-R \sin\varphi)^2 $$

    $$ G = R^2 \cos^2\varphi (\cos^2\theta + \sin^2\theta) + R^2 \sin^2\varphi $$

    $$ G = R^2 (\cos^2\varphi + \sin^2\varphi) = R^2 $$

**Réponse :**

La matrice de la première forme fondamentale est :

$$ \begin{pmatrix} E & F \\ F & G \end{pmatrix} = \begin{pmatrix} R^2 \sin^2\varphi & 0 \\ 0 & R^2 \end{pmatrix} $$

</details>

---

## Exercice 5

**Problème :** Calcul d'Aire d'une Surface

Calculer l'aire de la portion de l'hélicoïde définie par :

$$ f(u, v) = (u \cos v, u \sin v, v) $$

pour $0 \le u \le 1$ et $0 \le v \le 2\pi$.

<details>

<summary>Solution</summary>

**Méthode :** Utiliser les coefficients de la première forme fondamentale. L'aire est donnée par l'intégrale double $\iint_D \sqrt{EG - F^2} \, du \, dv$.

**Étapes :**

1.  **Calcul des dérivées partielles :**

    $f_u = (\cos v, \sin v, 0)$

    $f_v = (-u \sin v, u \cos v, 1)$

2.  **Calcul de $E, F, G$ :**

    $E = \|f_u\|^2 = \cos^2 v + \sin^2 v + 0 = 1$

    $G = \|f_v\|^2 = (-u \sin v)^2 + (u \cos v)^2 + 1^2 = u^2(\sin^2 v + \cos^2 v) + 1 = u^2 + 1$

    $F = f_u \cdot f_v = -u \sin v \cos v + u \sin v \cos v + 0 = 0$

3.  **Calcul de l'élément d'aire $dS$ :**

    $$ dS = \sqrt{EG - F^2} = \sqrt{1 \cdot (u^2 + 1) - 0} = \sqrt{u^2 + 1} $$

4.  **Intégration :**

    $$ \mathcal{A} = \int_{0}^{2\pi} \int_{0}^{1} \sqrt{u^2 + 1} \, du \, dv $$

    Comme l'intégrande ne dépend pas de $v$ :

    $$ \mathcal{A} = 2\pi \int_{0}^{1} \sqrt{u^2 + 1} \, du $$

    Utilisons la primitive standard $\int \sqrt{x^2+1} dx = \frac{1}{2}x\sqrt{x^2+1} + \frac{1}{2}\ln(x+\sqrt{x^2+1})$ :

    $$ \mathcal{A} = 2\pi \left[ \frac{u}{2}\sqrt{u^2+1} + \frac{1}{2}\ln(u+\sqrt{u^2+1}) \right]_0^1 $$

    En $u=1$ : $\frac{1}{2}\sqrt{2} + \frac{1}{2}\ln(1+\sqrt{2})$

    En $u=0$ : $0 + \frac{1}{2}\ln(1) = 0$

    $$ \mathcal{A} = 2\pi \left( \frac{\sqrt{2}}{2} + \frac{1}{2}\ln(1+\sqrt{2}) \right) $$

**Réponse :**

$$ \mathcal{A} = \pi \left( \sqrt{2} + \ln(1+\sqrt{2}) \right) $$

</details>

---

## Exercice 6

**Problème :** Longueur d'une courbe sur un cylindre

Soit le cylindre $C$ paramétré par $f(u, v) = (\cos u, \sin u, v)$.

On considère la courbe $\gamma(t)$ tracée sur cette surface définie par les paramètres $u(t) = t$ et $v(t) = t$ pour $t \in [0, 2\pi]$.

1.  Quelle est la nature géométrique de cette courbe ?
2.  Calculer sa longueur en utilisant la première forme fondamentale du cylindre.

<details>

<summary>Solution</summary>

**Méthode :** Exprimer la première forme fondamentale du cylindre, puis intégrer $ds = \sqrt{E (u')^2 + 2F u'v' + G (v')^2} dt$.

**Étapes :**

1.  **Nature de la courbe :**

    En remplaçant $u$ et $v$ par $t$ dans $f(u,v)$, on obtient $\alpha(t) = (\cos t, \sin t, t)$.

    C'est une **hélice circulaire**.

2.  **Calcul de la métrique du cylindre :**

    $f_u = (-\sin u, \cos u, 0)$

    $f_v = (0, 0, 1)$

    $E = \|f_u\|^2 = 1$

    $F = f_u \cdot f_v = 0$

    $G = \|f_v\|^2 = 1$

3.  **Calcul de la longueur :**

    On a $u(t) = t \implies u'(t) = 1$ et $v(t) = t \implies v'(t) = 1$.

    L'élément de longueur au carré est :

    $$ ds^2 = E(du)^2 + 2F du dv + G(dv)^2 $$

    $$ (\frac{ds}{dt})^2 = 1 \cdot (1)^2 + 0 + 1 \cdot (1)^2 = 2 $$

    Donc la vitesse scalaire est $\sqrt{2}$.

    $$ L = \int_0^{2\pi} \sqrt{2} \, dt = 2\pi\sqrt{2} $$

**Réponse :**

La courbe est une hélice et sa longueur est $2\pi\sqrt{2}$.

</details>

---

## Exercice 7

**Problème :** Vecteur Normal et Application de Gauss

Soit le paraboloïde hyperbolique ("selle de cheval") donné par le graphe de la fonction $z = xy$.

Paramétrisation : $f(u, v) = (u, v, uv)$.

Calculer le vecteur normal unitaire $N(u, v)$ en tout point.

<details>

<summary>Solution</summary>

**Méthode :** Calculer le produit vectoriel des dérivées partielles et le normaliser.

**Étapes :**

1.  **Dérivées partielles :**

    $f_u = (1, 0, v)$

    $f_v = (0, 1, u)$

2.  **Produit vectoriel (Vecteur normal non unitaire $\vec{n}$) :**

    $$ \vec{n} = f_u \wedge f_v = \begin{vmatrix} \mathbf{i} & \mathbf{j} & \mathbf{k} \\ 1 & 0 & v \\ 0 & 1 & u \end{vmatrix} $$

    $x = -v$

    $y = -u$

    $z = 1$

    $$ \vec{n} = (-v, -u, 1) $$

3.  **Norme :**

    $$ \|\vec{n}\| = \sqrt{(-v)^2 + (-u)^2 + 1^2} = \sqrt{u^2 + v^2 + 1} $$

4.  **Vecteur normal unitaire (Application de Gauss) :**

    $$ N(u, v) = \frac{1}{\sqrt{u^2 + v^2 + 1}} (-v, -u, 1) $$

**Réponse :**

$$ N(u, v) = \left( \frac{-v}{\sqrt{u^2+v^2+1}}, \frac{-u}{\sqrt{u^2+v^2+1}}, \frac{1}{\sqrt{u^2+v^2+1}} \right) $$

</details>

---

## Exercice 8

**Problème :** Seconde Forme Fondamentale

Pour la surface de l'exercice précédent $f(u, v) = (u, v, uv)$, calculer les coefficients $L, M, N$ de la seconde forme fondamentale en tout point.

<details>

<summary>Solution</summary>

**Méthode :** Calculer les dérivées secondes de $f$ et faire leur produit scalaire avec le vecteur normal unitaire $N$ trouvé précédemment.

**Étapes :**

1.  **Rappel du vecteur normal :**

    $N = \frac{1}{\sqrt{1+u^2+v^2}}(-v, -u, 1)$

2.  **Dérivées partielles secondes :**

    On avait $f_u = (1, 0, v)$ et $f_v = (0, 1, u)$.

    $$ f_{uu} = \frac{\partial}{\partial u}(1, 0, v) = (0, 0, 0) $$

    $$ f_{uv} = \frac{\partial}{\partial v}(1, 0, v) = (0, 0, 1) $$

    $$ f_{vv} = \frac{\partial}{\partial v}(0, 1, u) = (0, 0, 0) $$

3.  **Calcul des coefficients $L, M, N_{coeff}$ :**

    $$ L = \langle f_{uu}, N \rangle = \langle (0,0,0), N \rangle = 0 $$

    $$ M = \langle f_{uv}, N \rangle = \frac{1}{\sqrt{1+u^2+v^2}} \langle (0,0,1), (-v, -u, 1) \rangle = \frac{1}{\sqrt{1+u^2+v^2}} $$

    $$ N_{coeff} = \langle f_{vv}, N \rangle = 0 $$

    *(Note: On utilise $N_{coeff}$ pour ne pas confondre avec le vecteur $N$)*

**Réponse :**

$$ L = 0, \quad M = \frac{1}{\sqrt{1+u^2+v^2}}, \quad N_{coeff} = 0 $$

</details>

---

## Exercice 9

**Problème :** Courbure de Gauss

Calculer la courbure de Gauss $K$ du paraboloïde hyperbolique $z=xy$ (exercices 7 et 8) au point $(0,0,0)$ et en un point quelconque $(u,v)$.

Interpréter le signe du résultat.

<details>

<summary>Solution</summary>

**Méthode :** Utiliser la formule $K = \frac{LN_{coeff} - M^2}{EG - F^2}$.

**Étapes :**

1.  **Récupérer les coefficients (calculés précédemment) :**

    $L = 0, \quad N_{coeff} = 0, \quad M = \frac{1}{\sqrt{1+u^2+v^2}}$

    $f_u = (1, 0, v), \quad f_v = (0, 1, u)$

2.  **Calculer $EG - F^2$ :**

    $E = 1 + v^2$

    $G = 1 + u^2$

    $F = uv$

    $$ EG - F^2 = (1+v^2)(1+u^2) - (uv)^2 = 1 + u^2 + v^2 + u^2v^2 - u^2v^2 = 1 + u^2 + v^2 $$

3.  **Calcul de $K$ :**

    $$ K = \frac{0 \cdot 0 - M^2}{EG - F^2} = \frac{- \left(\frac{1}{\sqrt{1+u^2+v^2}}\right)^2}{1+u^2+v^2} $$

    $$ K = \frac{- \frac{1}{1+u^2+v^2}}{1+u^2+v^2} = \frac{-1}{(1+u^2+v^2)^2} $$

4.  **En $(0,0)$ :**

    $K(0,0) = -1$.

**Interprétation :**

Pour tout $(u, v)$, $(1+u^2+v^2)^2 > 0$, donc $K$ est strictement négatif partout.

Ceci correspond à la définition d'un point **hyperbolique** (forme de selle de cheval). La surface se courbe dans des directions opposées.

**Réponse :**

$$ K(u, v) = \frac{-1}{(1+u^2+v^2)^2} $$

La courbure est toujours négative.

</details>

---

## Exercice 10

**Problème :** Classification des Points

Soit la surface "Tore" définie par $f(u, v) = ((2 + \cos u)\cos v, (2 + \cos u)\sin v, \sin u)$.

Sans faire tous les calculs analytiques complets, on donne le signe de la Courbure de Gauss sur différentes régions :

$K = \frac{\cos u}{2+\cos u}$.

1.  Déterminer les régions où les points sont elliptiques ($K>0$).
2.  Déterminer les régions où les points sont hyperboliques ($K<0$).
3.  Déterminer les régions où les points sont paraboliques ($K=0$).
4.  Visualiser ces régions géométriquement sur le tore.

<details>

<summary>Solution</summary>

**Méthode :** Étudier le signe de l'expression donnée pour $K$. Notons que le dénominateur $2+\cos u$ est toujours positif car $\cos u \ge -1$. Le signe de $K$ dépend uniquement de $\cos u$.

**Étapes :**

1.  **Points Elliptiques ($K > 0$) :**

    Condition : $\cos u > 0$.

    Cela correspond à $u \in ]-\frac{\pi}{2}, \frac{\pi}{2}[$ (modulo $2\pi$).

    Géométriquement : C'est la partie "extérieure" du tore (le côté le plus éloigné de l'axe de révolution $z$). Ici la surface ressemble à un ballon (courbure dans le même sens).

2.  **Points Hyperboliques ($K < 0$) :**

    Condition : $\cos u < 0$.

    Cela correspond à $u \in ]\frac{\pi}{2}, \frac{3\pi}{2}[$.

    Géométriquement : C'est la partie "intérieure" du tore (le côté faisant face à l'axe $z$, le trou du beignet). Ici la surface est en forme de selle (courbée horizontalement dans un sens, verticalement dans l'autre).

3.  **Points Paraboliques ($K = 0$) :**

    Condition : $\cos u = 0$.

    Cela correspond à $u = \frac{\pi}{2}$ et $u = \frac{3\pi}{2}$.

    Géométriquement : Ce sont les cercles "du haut" et "du bas" du tore. À ces endroits, la courbure est nulle dans une direction (la tangente verticale est une ligne d'inflexion pour le profil).

**Réponse :**

- Elliptiques : Extérieur du tore ($-\pi/2 < u < \pi/2$).
- Hyperboliques : Intérieur du tore ($\pi/2 < u < 3\pi/2$).
- Paraboliques : Sommet et base du tore ($u = \pm \pi/2$).

</details>
