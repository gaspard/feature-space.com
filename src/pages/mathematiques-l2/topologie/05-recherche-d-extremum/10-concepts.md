---
id: c524657f
type: concepts
order: 10
title: Chapitre 5 Recherche d'extremum - concepts (A)
tags:
  - Mathématiques
  - Analyse
  - Optimisation
  - Extremum
  - Hessienne
  - Points critiques
course: Topologie
courseId: 34e61f8e
chapter: Chapitre 5 Recherche d'extremum
chapterId: 70efcabd
level: regular
createdAt: '2025-12-22T10:45:14.964Z'
---
# Chapitre 5 Recherche d'extremum

---

## Concept 1: Extrema globaux et locaux

### Prérequis

- Ensembles de définition dans $\mathbb{R}^n$.
- Notions de topologie : voisinages et boules ouvertes (Définies dans les chapitres précédents).
- Comparaison de nombres réels.

### Définition

Soit $D \subset \mathbb{R}^n$ un ensemble et $f : D \to \mathbb{R}$ une fonction à valeurs réelles.

**Extremum global :**

On dit que $f$ admet un **maximum global** (resp. **minimum global**) sur $D$ au point $a \in D$ si la valeur de la fonction en $a$ est supérieure (resp. inférieure) ou égale à la valeur de la fonction pour **tous** les autres points de l'ensemble de définition :

$$ \forall y \in D, \quad f(a) \geq f(y) \quad (\text{resp. } f(a) \leq f(y)). $$

**Extremum local :**

On dit que $f$ admet un **maximum local** (resp. **minimum local**) sur $D$ au point $a \in D$ si la valeur de la fonction en $a$ est supérieure (resp. inférieure) ou égale aux valeurs des points situés "proche" de $a$. Mathématiquement, s'il existe une boule de rayon $\varepsilon > 0$ centrée en $a$ telle que :

$$ \forall y \in D \cap B_\infty(a, \varepsilon), \quad f(a) \geq f(y) \quad (\text{resp. } f(a) \leq f(y)). $$

### Explications détaillées

La distinction fondamentale réside dans la portée de la comparaison.

Pour un **extremum global**, le point $a$ est le "champion absolu" de toute la fonction sur son domaine $D$. C'est le point le plus haut (ou le plus bas) de toute la surface représentative de la fonction.

Pour un **extremum local**, le point $a$ n'est champion que dans son voisinage immédiat. Imaginez un relief montagneux : un sommet de colline est un maximum local car il est plus haut que tout ce qui l'entoure immédiatement, mais ce n'est pas forcément le point le plus haut de toute la chaîne de montagnes (maximum global).

### Propriétés clés

- **Implication :** Tout extremum global est un extremum local. Si vous êtes le plus grand de tout le pays, vous êtes forcément le plus grand de votre quartier.
- **Réciproque fausse :** Un extremum local n'est pas nécessairement un extremum global.
- **Indépendance de la norme :** La définition locale utilise une boule $B_\infty(a, \varepsilon)$, mais grâce à l'équivalence des normes en dimension finie, la définition reste valable quelle que soit la norme choisie pour définir la "proximité".

### Exemples

**Exemple 1 : Le bol (Minimum global)**

Soit $f : \mathbb{R}^2 \to \mathbb{R}$ définie par $f(x, y) = x^2 + y^2$.

Le point $(0,0)$ est un **minimum global** car pour tout $(x, y) \in \mathbb{R}^2$, un carré est toujours positif ou nul, donc :

$$ f(x, y) = x^2 + y^2 \geq 0 = f(0, 0). $$

**Exemple 2 : La colline (Maximum global)**

Soit $g : \mathbb{R}^2 \to \mathbb{R}$ définie par $g(x, y) = 1 - (x^2 + y^2)$.

Le point $(0,0)$ est un **maximum global** car $g(0,0) = 1$ et pour tout $(x,y)$, la quantité soustraite est positive, donc $g(x,y) \leq 1$.

**Exemple 3 : Fonction bornée sur un intervalle**

Considérons $h(x) = \sin(x)$ sur $\mathbb{R}$.

Le point $x = \frac{\pi}{2}$ est un maximum local (car supérieur à ses voisins immédiats) et aussi un maximum global (car $\sin(x)$ ne dépasse jamais 1). Le point $x = \frac{5\pi}{2}$ est un autre maximum global (la valeur est aussi 1).

### Contre-exemples

- La fonction $f(x) = x^3$ sur $\mathbb{R}$ n'admet **ni minimum ni maximum** (ni local, ni global). En $0$, la dérivée s'annule, mais ce n'est pas un extremum (point d'inflexion).
- La fonction $f(x, y) = x^2 - y^2$ en $(0,0)$. Si on se déplace selon l'axe $x$ ($y=0$), $f(x,0)=x^2$, on a l'impression d'être en un minimum. Si on se déplace selon l'axe $y$ ($x=0$), $f(0,y)=-y^2$, on a l'impression d'être en un maximum. Ce n'est donc ni l'un ni l'autre (c'est un point-selle).

### Concepts liés

- **Points critiques** (candidats pour les extrema locaux).
- **Compacité** (garantie d'existence d'extrema globaux).

---

## Concept 2: Points critiques

### Prérequis

- Dérivées partielles.
- Gradient ($\nabla f$).
- Fonctions de classe $\mathscr{C}^1$ (dérivables à dérivées continues).
- Ouverts de $\mathbb{R}^n$.

### Définition

Soit $U \subset \mathbb{R}^n$ un ouvert et $f : U \to \mathbb{R}$ une fonction différentiable.

Un point $a \in U$ est appelé un **point critique** de $f$ si le gradient de $f$ s'annule en ce point :

$$ \nabla f(a) = 0_{\mathbb{R}^n} $$

Cela signifie que toutes les dérivées partielles sont nulles simultanément :

$$ \forall j \in \llbracket 1, n \rrbracket, \quad \frac{\partial f}{\partial x_j}(a) = 0. $$

### Explications détaillées

Un point critique correspond géométriquement à un endroit où le plan tangent à la surface représentative de la fonction est **horizontal**.

Sur une carte topographique, cela correspondrait à un sommet, un fond de cuvette, ou un col. C'est une notion fondamentale car elle permet de restreindre la recherche d'extrema : au lieu de chercher partout, on ne cherche que là où la "pente" est nulle.

### Propriétés clés

- **Condition nécessaire (Théorème 5.6) :** Si $f$ est définie sur un ouvert $U$ et admet un extremum local en $a$, alors $a$ est nécessairement un point critique.
- **Attention :** La condition n'est pas suffisante. Un point critique peut ne pas être un extremum (voir point selle).
- **Cadre ouvert :** Ce concept s'applique principalement sur les ouverts. Sur les bords d'un domaine fermé, un extremum peut exister sans que le gradient soit nul.

### Exemples

**Exemple 1 : Parabolique**

Soit $f(x, y) = x^2 + y^2 - 2x$.

Calculons les dérivées partielles :

$$ \frac{\partial f}{\partial x} = 2x - 2, \quad \frac{\partial f}{\partial y} = 2y. $$

On résout le système $\nabla f(x, y) = (0, 0)$ :

$$ \begin{cases} 2x - 2 = 0 \\ 2y = 0 \end{cases} \iff \begin{cases} x = 1 \\ y = 0 \end{cases} $$

Le seul point critique est $(1, 0)$.

**Exemple 2 : Point selle**

Soit $f(x, y) = x^2 - y^2$.

$$ \nabla f(x, y) = (2x, -2y). $$

Le gradient est nul si et seulement si $(x, y) = (0, 0)$. L'origine est un point critique.

**Exemple 3 : Produit**

Soit $f(x, y) = xy$.

$$ \nabla f(x, y) = (y, x). $$

Le gradient s'annule uniquement en $(0, 0)$.

### Contre-exemples

- **Point critique sans extremum :** Pour $f(x) = x^3$, $f'(0) = 0$. $x=0$ est un point critique, mais ce n'est pas un extremum (la fonction est croissante partout).
- **Extremum sans point critique (bord) :** Si on considère $f(x) = x^2$ sur l'intervalle fermé $[0, 1]$. Le maximum est atteint en $x=1$. Pourtant $f'(1) = 2 \neq 0$. Le théorème ne s'applique pas car $1$ n'est pas dans l'ouvert $]0, 1[$.
- **Fonction non dérivable :** $f(x) = |x|$ a un minimum en $0$, mais n'est pas dérivable en $0$ (pas de point critique au sens classique).

### Concepts liés

- **Extrema locaux** (conséquence possible).
- **Plan tangent** (horizontal en un point critique).
- **Matrice Hessienne** (pour déterminer la nature du point critique).

---

## Concept 3: Optimisation sur un Compact

### Prérequis

- Notion de **Compact** dans $\mathbb{R}^n$ (fermé et borné).
- Continuité des fonctions de plusieurs variables.
- Points critiques.
- Intérieur et Frontière d'un ensemble.

### Définition

Ce concept concerne la recherche d'extrema pour une fonction $f: K \to \mathbb{R}$ où $K$ est un ensemble compact (par exemple, un disque fermé, un carré plein, une sphère).

**Théorème d'existence (Weierstrass) :**

Si $K$ est un compact et $f$ est continue sur $K$, alors $f$ est bornée et atteint ses bornes. Autrement dit, il existe nécessairement un minimum global et un maximum global sur $K$.

### Explications détaillées

L'optimisation sur un compact est différente de l'optimisation sur un ouvert car l'existence de solutions est garantie par la topologie de l'ensemble (compacité). La méthode de résolution change également : on ne peut pas se contenter de chercher où le gradient s'annule.

La stratégie se décompose en deux étapes :

1.  **L'intérieur ($\mathring{K}$) :** On cherche les points critiques dans l'ouvert intérieur. Si un extremum est à l'intérieur, c'est forcément un point critique.
2.  **La frontière ($K \setminus \mathring{K}$) :** On étudie la fonction sur le "bord" du domaine. Le gradient n'a aucune raison d'y être nul.

Le maximum global est alors la plus grande valeur parmi les candidats trouvés à l'intérieur et ceux trouvés sur le bord.

### Propriétés clés

- **Garantie d'existence :** Contrairement aux ouverts où le max peut être infini ou inatteignable (ex: $1/x$ sur $]0,1]$), sur un compact, le max et le min existent toujours pour une fonction continue.
- **Localisation mixte :** Les extrema peuvent être soit des points critiques intérieurs, soit des points de la frontière.

### Exemples

**Exemple 1 : Fonction linéaire sur un segment**

Soit $f(x) = 2x$ sur $K = [0, 1]$.

- Intérieur $]0, 1[$ : $f'(x) = 2 \neq 0$. Pas de points critiques.
- Frontière $\{0, 1\}$ : $f(0) = 0$ et $f(1) = 2$.
- Conclusion : Min global en 0, Max global en 1.

**Exemple 2 : Paraboloïde sur un disque**

Soit $f(x, y) = x^2 + y^2$ sur le disque fermé $K = \{ (x, y) \mid x^2 + y^2 \leq 1 \}$.

- Intérieur : $\nabla f = (2x, 2y) = (0, 0) \implies (0, 0)$. Valeur : $f(0, 0) = 0$.
- Frontière (cercle unité) : Sur le bord, $x^2 + y^2 = 1$, donc $f(x, y) = 1$ constant.
- Conclusion : Min global en $(0,0)$ (valeur 0), Max global sur tout le bord (valeur 1).

**Exemple 3 : Contre-exemple du gradient**

Comme mentionné dans le cours (Contre-exemple 5.8), sur le disque unité, la fonction $f(x,y)=x^2+y^2$ a des maxima sur le bord où le gradient $(2x, 2y)$ n'est jamais nul (car sur le bord $x$ et $y$ ne sont pas nuls simultanément).

### Contre-exemples

- **Ensemble non compact (ouvert) :** $f(x) = x$ sur $]0, 1[$. Pas de max ni de min (supremum 1, infimum 0, mais jamais atteints).
- **Ensemble non compact (non borné) :** $f(x) = x^2$ sur $\mathbb{R}$. Admet un min, mais pas de max global.
- **Fonction discontinue :** $f(x) = x$ pour $x \in [0, 1[$ et $f(1) = 0$. Sur le compact $[0, 1]$, le supremum est 1 mais n'est jamais atteint.

### Applications

- Problèmes d'optimisation sous contraintes (ex: maximiser un volume avec une surface donnée).
- Physique : trouver les états d'énergie minimale dans un système fini.

---

## Concept 4: Dérivées partielles d'ordre 2 et Théorème de Schwarz

### Prérequis

- Dérivées partielles d'ordre 1.
- Continuité.
- Matrices.

### Définition

**Dérivée seconde :**

Soit $f : U \to \mathbb{R}$ une fonction. Si les fonctions dérivées partielles $\frac{\partial f}{\partial x_i}$ sont elles-mêmes dérivables, on peut définir les dérivées partielles d'ordre 2 :

$$ \frac{\partial^2 f}{\partial x_i \partial x_j} = \frac{\partial}{\partial x_i} \left( \frac{\partial f}{\partial x_j} \right). $$

C'est la dérivée par rapport à $x_i$ de la dérivée par rapport à $x_j$.

**Matrice Hessienne :**

C'est la matrice carrée $n \times n$ qui regroupe toutes les dérivées secondes au point $a$ :

$$ H_f(a) = \begin{pmatrix} \frac{\partial^2 f}{\partial x_1^2}(a) & \cdots & \frac{\partial^2 f}{\partial x_1 \partial x_n}(a) \\ \vdots & \ddots & \vdots \\ \frac{\partial^2 f}{\partial x_n \partial x_1}(a) & \cdots & \frac{\partial^2 f}{\partial x_n^2}(a) \end{pmatrix}. $$

**Classe $\mathscr{C}^2$ :**

Une fonction est dite de classe $\mathscr{C}^2$ si ses dérivées partielles d'ordre 2 existent et sont **continues** sur $U$.

### Explications détaillées

La dérivée seconde mesure la "courbure" de la fonction, ou comment la pente change. La matrice Hessienne est l'outil fondamental pour comprendre la géométrie locale de la surface d'une fonction à plusieurs variables (est-ce un bol ? une selle ?).

Un résultat crucial est que, pour les fonctions "bien élevées" ($\mathscr{C}^2$), l'ordre de dérivation ne compte pas.

### Propriétés clés

- **Théorème de Schwarz :** Si $f$ est de classe $\mathscr{C}^2$ sur un ouvert $U$, alors pour tout $a \in U$ et pour tous indices $i, j$ :

$$ \frac{\partial^2 f}{\partial x_i \partial x_j}(a) = \frac{\partial^2 f}{\partial x_j \partial x_i}(a). $$

- **Symétrie :** Conséquence directe de Schwarz, la matrice Hessienne $H_f(a)$ est une matrice **symétrique** ($A = {}^tA$). Cela permet d'utiliser des théorèmes d'algèbre linéaire puissants (diagonalisation).

### Exemples

**Exemple 1 : Polynôme simple**

$f(x, y) = x^3 y + 2y$.

- Dérivées ordre 1 : $\frac{\partial f}{\partial x} = 3x^2y$, $\quad \frac{\partial f}{\partial y} = x^3 + 2$.
- Dérivées ordre 2 (mixtes) :
  - $\frac{\partial}{\partial y}(\frac{\partial f}{\partial x}) = \frac{\partial}{\partial y}(3x^2y) = 3x^2$.
  - $\frac{\partial}{\partial x}(\frac{\partial f}{\partial y}) = \frac{\partial}{\partial x}(x^3 + 2) = 3x^2$.

On constate bien l'égalité (Schwarz).

**Exemple 2 : Matrice Hessienne**

Pour $f(x, y) = x^2 + y^2$, on a $\nabla f = (2x, 2y)$.

$$ \frac{\partial^2 f}{\partial x^2} = 2, \quad \frac{\partial^2 f}{\partial y \partial x} = 0, \quad \frac{\partial^2 f}{\partial x \partial y} = 0, \quad \frac{\partial^2 f}{\partial y^2} = 2. $$

$$ H_f(x, y) = \begin{pmatrix} 2 & 0 \\ 0 & 2 \end{pmatrix}. $$

**Exemple 3 : Exponentielle**

$f(x, y) = e^{xy}$.

$\partial_x f = y e^{xy}$.

$\partial_y (\partial_x f) = 1 \cdot e^{xy} + y \cdot x e^{xy} = (1+xy)e^{xy}$.

Par symétrie, $\partial_x (\partial_y f)$ donnera le même résultat.

### Contre-exemples

- **Fonction non $\mathscr{C}^2$ :** Il existe des fonctions pathologiques (étudiées en exercices avancés, comme l'exercice 5.1 mentionné) où $\frac{\partial^2 f}{\partial x \partial y} \neq \frac{\partial^2 f}{\partial y \partial x}$ en un point, car la condition de continuité des dérivées secondes n'est pas respectée.

### Concepts liés

- **Formule de Taylor** (utilise la Hessienne).
- **Algèbre linéaire** (Matrices symétriques, valeurs propres).

---

## Concept 5: Formule de Taylor à l'ordre 2

### Prérequis

- Gradient et Matrice Hessienne.
- Produit scalaire $\langle \cdot, \cdot \rangle$.
- Notation de Landau ($o(\cdot)$) ou fonction $\varepsilon(h)$.

### Définition

Soit $f$ une fonction de classe $\mathscr{C}^2$ sur un ouvert $U$. Au voisinage d'un point $a$, la fonction peut être approximée par un polynôme de degré 2 :

Pour un petit déplacement $h$, on a :

$$ f(a + h) = \underbrace{f(a)}_{\text{Cste}} + \underbrace{\langle \nabla f(a), h \rangle}_{\text{Terme linéaire}} + \underbrace{\frac{1}{2} \langle H_f(a)h, h \rangle}_{\text{Terme quadratique}} + o(\|h\|^2). $$

Sous forme matricielle, avec $J_f(a)$ la Jacobienne (transposée du gradient) :

$$ f(a + h) = f(a) + J_f(a)h + \frac{1}{2} {}^th H_f(a) h + \|h\|^2 \varepsilon(h). $$

### Explications détaillées

C'est la généralisation de la formule $f(a+h) \approx f(a) + f'(a)h + \frac{1}{2}f''(a)h^2$.

- Le terme d'ordre 0 donne la hauteur du point.
- Le terme d'ordre 1 (gradient) donne la pente du plan tangent.
- Le terme d'ordre 2 (Hessienne) donne la courbure (parabole).

Cette formule est cruciale pour déterminer la nature d'un point critique. Si $a$ est un point critique, le terme linéaire disparait, et c'est le terme quadratique (la Hessienne) qui décide si on monte ou si on descend autour de $a$.

### Propriétés clés

- **Approximation locale :** La formule n'est précise que pour $h$ très petit (proche de 0).
- **Structure quadratique :** Le terme $\langle H_f(a)h, h \rangle$ est une forme quadratique associée à la matrice symétrique $H_f(a)$.

### Exemples

**Exemple 1 : Origine**

Soit $f(x, y) = 1 + x + y^2$. En $a=(0,0)$.

$f(0,0)=1$. $\nabla f(0,0) = (1, 0)$. $H_f(0,0) = \begin{pmatrix} 0 & 0 \\ 0 & 2 \end{pmatrix}$.

Taylor : $f(h_1, h_2) = 1 + (1\cdot h_1 + 0\cdot h_2) + \frac{1}{2}(0\cdot h_1^2 + 2\cdot h_2^2) = 1 + h_1 + h_2^2$.

C'est exact car $f$ est un polynôme de degré 2.

**Exemple 2 : Cosinus**

Soit $f(x, y) = \cos(x)\cos(y)$ en $(0,0)$.

$f(0,0)=1$. $\nabla f = (-\sin x \cos y, -\cos x \sin y) \to (0,0)$.

$H_f(0,0) = \begin{pmatrix} -1 & 0 \\ 0 & -1 \end{pmatrix}$.

Taylor : $f(h_x, h_y) \approx 1 + 0 + \frac{1}{2}(-h_x^2 - h_y^2) = 1 - \frac{h_x^2 + h_y^2}{2}$.

### Contre-exemples

- **Approximation linéaire :** $f(a+h) \approx f(a) + \langle \nabla f(a), h \rangle$ est l'approximation d'ordre 1. Elle est insuffisante près d'un point critique car elle vaut juste une constante $f(a)$, ne donnant aucune info sur le creux ou la bosse.

### Applications

- Étude locale des courbes et surfaces.
- Classification des points critiques.

---

## Concept 6: Classification des points critiques (Critère de la Hessienne)

### Prérequis

- Points critiques ($\nabla f(a) = 0$).
- Matrice Hessienne et Théorème spectral (valeurs propres).
- Formule de Taylor d'ordre 2.

### Définition

Soit $a$ un point critique d'une fonction $f$ de classe $\mathscr{C}^2$. La nature de ce point dépend des **valeurs propres** de la matrice Hessienne $H_f(a)$.

1.  **Minimum local strict :** Si toutes les valeurs propres sont **strictement positives**.
2.  **Maximum local strict :** Si toutes les valeurs propres sont **strictement négatives**.
3.  **Point selle (pas d'extremum) :** S'il existe au moins une valeur propre strictement positive et une strictement négative.
4.  **Cas douteux :** Si des valeurs propres sont nulles (et les autres de même signe), on ne peut pas conclure directement avec ce théorème (il faut regarder les ordres supérieurs).

### Explications détaillées

Les valeurs propres représentent les courbures principales de la fonction dans des directions orthogonales (les vecteurs propres).

- Si la courbure est positive dans toutes les directions (comme un bol), c'est un minimum.
- Si la courbure est négative dans toutes les directions (comme une colline), c'est un maximum.
- Si la courbure est positive dans une direction et négative dans l'autre (comme une selle de cheval ou le col d'une montagne), ce n'est ni un max ni un min.

### Cas particulier : Dimension 2

En dimension 2, pour une matrice $2 \times 2$, on peut utiliser le Déterminant et la Trace sans calculer explicitement les valeurs propres :

Soit $H = H_f(a)$.

- Si **$\det(H) < 0$** : Point selle (valeurs propres de signes opposés).
- Si **$\det(H) > 0$** : Extrémum local.
    - Si **$\text{Tr}(H) > 0$** : Minimum local (les deux vp sont positives).
    - Si **$\text{Tr}(H) < 0$** : Maximum local (les deux vp sont négatives).
- Si **$\det(H) = 0$** : On ne peut pas conclure.

### Exemples

**Exemple 1 : Minimum**

$f(x,y) = x^2 + y^2$. Point critique $(0,0)$.

$H_f = \begin{pmatrix} 2 & 0 \\ 0 & 2 \end{pmatrix}$. Val propres : $2, 2$. Strictement positives $\implies$ **Minimum local**.

**Exemple 2 : Maximum**

$g(x,y) = -x^2 - y^2$. Point critique $(0,0)$.

$H_g = \begin{pmatrix} -2 & 0 \\ 0 & -2 \end{pmatrix}$. Val propres : $-2, -2$. Strictement négatives $\implies$ **Maximum local**.

**Exemple 3 : Point Selle**

$h(x,y) = x^2 - y^2$. Point critique $(0,0)$.

$H_h = \begin{pmatrix} 2 & 0 \\ 0 & -2 \end{pmatrix}$. Val propres : $2, -2$. Signes opposés $\implies$ **Point selle** (ni max ni min).

### Contre-exemples

- **Cas du déterminant nul :**

  $f(x, y) = x^4 + y^4$. En $(0,0)$, $H_f = 0$ (valeurs propres nulles). Pourtant c'est un minimum strict.

  $g(x, y) = x^3$. En $0$, $f''(0)=0$. Ce n'est pas un extremum.

  Si une valeur propre est nulle, la Hessienne ne suffit pas ("test non concluant"), il faut étudier la fonction "à la main" ou avec des ordres supérieurs.

### Concepts liés

- **Algèbre linéaire :** Diagonalisation des matrices symétriques réelles.
- **Formes quadratiques :** Signature d'une forme quadratique.

---
