---
id: 2a2630e9
type: concepts
order: 10
title: Courbes et surfaces dans R3 - concepts (A)
tags:
  - chapter
  - mathematics
course: Géométrie
courseId: d9494343
chapter: Courbes et surfaces dans R3
chapterId: 15daf020
level: regular
createdAt: '2025-12-26T14:44:17.580Z'
---
# Courbes et surfaces dans $\mathbb{R}^3$

---

## Concept 1 : Courbes Gauches et Repère de Frenet

### Prérequis

- Calcul vectoriel dans $\mathbb{R}^3$ (produit scalaire, produit vectoriel, norme).
- Notions de base sur les arcs paramétrés (continuité, dérivabilité).
- Algèbre linéaire (indépendance linéaire, bases orthonormées).
- Espaces affines (droites, plans).

### Définition

Une **courbe gauche** est un arc paramétré dans l'espace tridimensionnel $\mathbb{R}^3$. Pour étudier sa géométrie, on considère un arc $(I, f)$ de classe $C^3$, où $f : I \to \mathbb{R}^3$.

L'hypothèse fondamentale pour construire le repère de Frenet est la **birégularité**. L'arc est dit **birégulier** si, pour tout $t \in I$, les vecteurs dérivée première et dérivée seconde, $(f'(t), f''(t))$, sont linéairement indépendants.

Le **repère de Frenet** (ou trièdre de Frenet) est une base orthonormée mobile $(\tau(t), \nu(t), \beta(t))$ associée à chaque point de la courbe, définie comme suit (si l'arc est paramétré par la longueur d'arc $s$) :

1.  **Vecteur tangent unitaire** : $\tau(s) = f'(s)$.
2.  **Vecteur normal unitaire** : $\nu(s) = \frac{f''(s)}{\|f''(s)\|}$.
3.  **Vecteur binormal** : $\beta(s) = \tau(s) \wedge \nu(s)$.

Le plan engendré par $f'(t)$ et $f''(t)$ passant par le point $f(t)$ est appelé le **plan osculateur**.

### Propriétés Clés

- **Indépendance du paramétrage** : Le plan osculateur en un point géométrique donné ne dépend pas de la paramétrisation choisie (tant qu'elle conserve la régularité).
- **Orthonormalité** : Si la courbe est paramétrée par la longueur d'arc, le trièdre $(\tau, \nu, \beta)$ est orthonormé direct.
- **Mouvement du repère** : Ce repère "suit" la courbe. $\tau$ indique la direction du mouvement, $\nu$ indique la direction dans laquelle la courbe tourne, et $\beta$ est orthogonal au plan osculateur.
- **Orthogonalité** : Pour un paramétrage par longueur d'arc, $f'(s)$ et $f''(s)$ sont toujours orthogonaux (car $\|f'(s)\|^2 = 1$).

### Exemples

**Exemple 1 : L'hélice circulaire**

Soit l'arc paramétré $\gamma(t) = (a \cos(t), a \sin(t), kt)$ avec $a, k > 0$.

C'est une courbe birégulière.

Le vecteur tangent est $\gamma'(t) = (-a\sin(t), a\cos(t), k)$.

Le vecteur accélération est $\gamma''(t) = (-a\cos(t), -a\sin(t), 0)$.

Ces deux vecteurs ne sont jamais colinéaires, donc on peut définir un repère de Frenet en tout point.

**Exemple 2 : Le cercle dans l'espace**

Un cercle dans le plan $z=0$ donné par $f(t) = (R\cos t, R\sin t, 0)$ est une courbe gauche (bien que plane).

$\tau(t) = (-\sin t, \cos t, 0)$.

$\nu(t) = (-\cos t, -\sin t, 0)$.

$\beta(t) = \tau \wedge \nu = (0, 0, 1)$.

Ici, le vecteur binormal $\beta$ est constant (l'axe $z$).

**Exemple 3 : La droite (cas dégénéré pour le repère)**

Soit $f(t) = P + tV$ une droite. Alors $f'(t) = V$ et $f''(t) = 0$.

Les vecteurs $(f', f'')$ ne sont pas indépendants. La droite n'est pas une courbe birégulière au sens strict de la définition nécessaire pour définir $\nu$. On ne peut pas définir le repère de Frenet de manière unique car il n'y a pas de direction de "tournant" privilégiée.

### Contre-exemples

**Contre-exemple 1 : Point d'inflexion**

La courbe $f(t) = (t, t^3, 0)$ au point $t=0$.

On a $f'(0) = (1, 0, 0)$ et $f''(0) = (0, 0, 0)$. Les vecteurs ne sont pas linéairement indépendants. La courbe n'est pas birégulière en $t=0$, le plan osculateur et le vecteur normal $\nu$ ne sont pas définis.

**Contre-exemple 2 : Courbe non $C^3$**

Une courbe définie par des morceaux de droites connectés (polygone). Aux points de connexion, la dérivée n'est pas définie (ou discontinue), donc on ne peut pas construire le repère de Frenet qui nécessite des dérivées jusqu'à l'ordre 2 (et 3 pour la torsion).

### Concepts Associés

- **Longueur d'arc** : Paramètre naturel pour définir les vecteurs unitaires.
- **Produit vectoriel** : Outil essentiel pour construire $\beta$.
- **Cinématique** : Interprétation de $f'$ comme vitesse et $f''$ comme accélération.

## Applications

- **Mécanique** : Étude du mouvement d'une particule dans l'espace (trajectoire balistique, satellites).
- **Conception routière et ferroviaire** : Utilisation des plans osculateurs pour calculer les dévers dans les virages.

---

## Concept 2 : Courbure et Torsion (Formules de Frenet)

### Prérequis

- Repère de Frenet (Concept 1).
- Dérivation vectorielle.
- Déterminant (pour la formule de torsion).

### Définition

La géométrie locale d'une courbe gauche birégulière est entièrement décrite par deux scalaires : la courbure et la torsion.

1.  **Courbure ($K$)** : Mesure à quelle vitesse la courbe change de direction (s'éloigne de la tangente). Si l'arc est paramétré par la longueur d'arc :

    $$ K(t) = \|f''(t)\| $$

    Dans le cas général (paramétrage quelconque $\gamma$) :

    $$ K(t) = \frac{\|\gamma'(t) \wedge \gamma''(t)\|}{\|\gamma'(t)\|^3} $$

2.  **Torsion ($T$)** : Mesure à quelle vitesse la courbe s'écarte de son plan osculateur (défaut de planéité). Elle est définie par la relation $\beta'(t) = T(t)\nu(t)$ (pour un paramétrage par longueur d'arc).

    Formule générale pour un arc $g$ :

    $$ T(t) = -\frac{\det(g'(t), g''(t), g'''(t))}{\|g'(t) \wedge g''(t)\|^2} $$

Les relations entre les vecteurs du repère de Frenet et leurs dérivées sont données par les **Formules de Frenet** :

$$ \begin{cases} \tau' &=& K\nu \\ \nu' &=& -K\tau - T\beta \\ \beta' &=& T\nu \end{cases} $$

### Propriétés Clés

- **Positivité de la courbure** : Par définition, la courbure $K(t)$ est strictement positive pour une courbe birégulière.
- **Signe de la torsion** : La torsion $T(t)$ est un réel signé. Elle indique le sens de vrillage de la courbe (dextre ou senestre).
- **Caractérisation des courbes planes** : Une courbe est plane si et seulement si sa torsion est identiquement nulle ($T(t) = 0$ pour tout $t$).
- **Théorème fondamental** : La courbure et la torsion déterminent la courbe de manière unique à un déplacement rigide (isométrie) près.

### Exemples

**Exemple 1 : Hélice circulaire**

Pour $\gamma(t) = (a \cos t, a \sin t, kt)$, les calculs donnent une courbure et une torsion constantes :

$$ K = \frac{a}{a^2 + k^2}, \quad T = -\frac{k}{a^2 + k^2} $$

C'est l'archétype de la courbe gauche "régulière".

**Exemple 2 : Le cercle**

Un cercle de rayon $R$ dans le plan $xy$.

Courbure : $K = \frac{1}{R}$ (constante).

Torsion : $T = 0$ (car la courbe est plane).

**Exemple 3 : Hélice elliptique**

Pour $\gamma(t) = (a \cos t, b \sin t, kt)$ avec $a \neq b$.

La courbure et la torsion ne sont plus constantes, elles varient avec $t$.

$$ T(t) = - \frac{kab}{(ab)^2 + k^2(a^2 \cos^2(t) + b^2 \sin^2(t))} $$

### Contre-exemples

**Contre-exemple 1 : Courbure nulle**

Une droite a une courbure $K=0$. Cependant, comme mentionné, elle n'est pas birégulière, donc les formules standard ne s'appliquent pas directement sans passage à la limite. Si $K=0$ partout, la courbe est une droite.

**Contre-exemple 2 : Torsion non nulle pour une courbe plane**

Ceci est impossible. Si une courbe est entièrement contenue dans un plan (par exemple $z=0$), son vecteur binormal $\beta$ est constant (la normale au plan), donc $\beta' = 0$, ce qui implique $T=0$. Dire qu'une courbe plane a une torsion non nulle est une erreur conceptuelle.

### Concepts Associés

- **Cercle osculateur** : Cercle tangent à la courbe approchant le mieux la courbure locale (rayon $R = 1/K$).
- **Équations différentielles** : Les formules de Frenet forment un système d'EDO.

## Applications

- **Biologie** : Modélisation de la structure de l'ADN (double hélice).
- **Aéronautique** : Trajectoires de vol et manœuvres 3D.

---

## Concept 3 : Calcul Différentiel sur les Ouverts de $\mathbb{R}^2$

### Prérequis

- Topologie de $\mathbb{R}^2$ (norme, boules ouvertes).
- Limites et continuité des fonctions.
- Calcul dérivé à une variable.

### Définition

Pour étudier les surfaces, nous avons besoin du calcul différentiel à deux variables sur un ouvert $U \subset \mathbb{R}^2$.

1.  **Dérivées partielles** : Une fonction $f: U \to \mathbb{R}$ admet des dérivées partielles en $p=(x_0, y_0)$ si les limites suivantes existent :

    $$ \frac{\partial f}{\partial x}(p) = \lim_{h \to 0} \frac{f(x_0+h, y_0) - f(x_0, y_0)}{h} $$

    $$ \frac{\partial f}{\partial y}(p) = \lim_{h \to 0} \frac{f(x_0, y_0+h) - f(x_0, y_0)}{h} $$

2.  **Classe $C^k$** :
    - $f$ est $C^1$ si ses dérivées partielles existent et sont **continues** sur $U$.
    - $f$ est $C^2$ si ses dérivées partielles secondes (ex: $\frac{\partial^2 f}{\partial x^2}, \frac{\partial^2 f}{\partial x \partial y}$) existent et sont continues.

3.  **Différentielle et Matrice Jacobienne** : Pour une application $f : U \to \mathbb{R}^2$, la différentielle en $p$ est l'application linéaire approchant $f$ au premier ordre. Elle est représentée par la **matrice jacobienne** :

    $$ D_p f = \begin{pmatrix} \frac{\partial f_1}{\partial x}(p) & \frac{\partial f_1}{\partial y}(p) \\ \frac{\partial f_2}{\partial x}(p) & \frac{\partial f_2}{\partial y}(p) \end{pmatrix} $$

### Propriétés Clés

- **Lemme de Schwarz** : Si $f$ est de classe $C^2$, l'ordre de dérivation n'importe pas pour les dérivées croisées :

  $$ \frac{\partial^2 f}{\partial x \partial y}(p) = \frac{\partial^2 f}{\partial y \partial x}(p) $$

- **Approximation linéaire** : Si $f$ est $C^1$, alors $f(p+h) \approx f(p) + D_p f(h)$ pour $h$ petit.
- **Règle de la chaîne** : La différentielle de la composée est la composée des différentielles (produit matriciel des jacobiennes).

### Exemples

**Exemple 1 : Fonction polynomiale**

$f(x, y) = x^2 y + y^3$.

Dérivées partielles : $\frac{\partial f}{\partial x} = 2xy$, $\frac{\partial f}{\partial y} = x^2 + 3y^2$.

C'est une fonction de classe $C^\infty$.

**Exemple 2 : Difféomorphisme (Changement de coordonnées polaires)**

L'application $\Phi(r, \theta) = (r \cos \theta, r \sin \theta)$ sur $]0, \infty[ \times ]-\pi, \pi[$.

Sa matrice jacobienne est $J = \begin{pmatrix} \cos \theta & -r \sin \theta \\ \sin \theta & r \cos \theta \end{pmatrix}$.

Le déterminant est $r$, qui est non nul, assurant un difféomorphisme local.

**Exemple 3 : Fonction composée**

Si $z = f(x, y)$ et $x(t), y(t)$ sont des fonctions du temps, alors $\frac{dz}{dt} = \frac{\partial f}{\partial x}\frac{dx}{dt} + \frac{\partial f}{\partial y}\frac{dy}{dt}$.

### Contre-exemples

**Contre-exemple 1 : Dérivées partielles existent mais fonction discontinue**

La fonction $f(x,y) = \frac{xy}{x^2+y^2}$ si $(x,y) \neq (0,0)$ et $0$ sinon. Elle admet des dérivées partielles nulles à l'origine, mais n'est pas continue en $(0,0)$ (la limite dépend de la direction d'approche). Elle n'est donc pas $C^1$.

**Contre-exemple 2 : Non-égalité des dérivées croisées**

Une fonction qui admet des dérivées partielles secondes mais qui n'est pas $C^2$ (dérivées secondes non continues) peut ne pas vérifier le lemme de Schwarz.

### Concepts Associés

- **Ouvert** : L'ensemble de définition naturel pour le calcul différentiel (pas de bord immédiat).
- **Difféomorphisme** : Bijection différentiable avec réciproque différentiable (changement de variable).

## Applications

- **Physique** : Champs scalaires (température) et vectoriels (vitesse du vent).
- **Optimisation** : Recherche de points critiques où le gradient (vecteur des dérivées partielles) est nul.

---

## Concept 4 : Surfaces Paramétrées Régulières et Plan Tangent

### Prérequis

- Calcul différentiel (Concept 3).
- Espace vectoriel $\mathbb{R}^3$.

### Définition

Une **surface paramétrée** est définie par un couple $(U, f)$ où $U$ est un ouvert de $\mathbb{R}^2$ et $f : U \to \mathbb{R}^3$ est une application de classe $C^k$ (généralement $k \ge 1$).

Les variables de $U$, souvent notées $(u, v)$ ou $(x, y)$, sont les paramètres.

La surface est dite **régulière** en un point $m = f(p)$ si les vecteurs dérivées partielles sont linéairement indépendants :

$$ \text{rang}(D_p f) = 2 \iff \frac{\partial f}{\partial u}(p) \text{ et } \frac{\partial f}{\partial v}(p) \text{ sont libres.} $$

Équivalent à : $\frac{\partial f}{\partial u}(p) \wedge \frac{\partial f}{\partial v}(p) \neq 0$.

Si le point est régulier, on définit le **Plan Tangent** ($T_m S$) comme le sous-espace vectoriel engendré par ces dérivées partielles :

$$ T_m S = \text{Vect}\left\{ \frac{\partial f}{\partial u}(p), \frac{\partial f}{\partial v}(p) \right\} $$

### Propriétés Clés

- **Base du plan tangent** : En tout point régulier, $(\frac{\partial f}{\partial u}, \frac{\partial f}{\partial v})$ forme une base du plan tangent.
- **Invariance** : Le plan tangent géométrique ne change pas si on effectue un changement de paramétrage admissible (difféomorphisme), bien que les vecteurs de base changent.
- **Singularités** : Les points où la condition de régularité n'est pas vérifiée sont appelés points singuliers.

### Exemples

**Exemple 1 : La Sphère**

Paramétrage : $f(\theta, \varphi) = (R\cos\theta\sin\varphi, R\sin\theta\sin\varphi, R\cos\varphi)$.

Dérivées partielles :

$\frac{\partial f}{\partial \theta}$ est tangent au parallèle (horizontal).

$\frac{\partial f}{\partial \varphi}$ est tangent au méridien (vertical).

Ces vecteurs sont orthogonaux et non nuls (sauf aux pôles), ils engendrent le plan tangent à la sphère.

**Exemple 2 : L'Hélicoïde**

$f(r, t) = (r \cos t, r \sin t, t)$. C'est la surface engendrée par une droite tournant et montant le long de l'axe $z$. C'est une surface régulière en tout point.

**Exemple 3 : Graphe de fonction**

Toute fonction $z = g(x, y)$ définit une surface régulière paramétrée par $f(x, y) = (x, y, g(x, y))$.

Les vecteurs tangents de base sont $(1, 0, \frac{\partial g}{\partial x})$ et $(0, 1, \frac{\partial g}{\partial y})$. Ils sont toujours indépendants.

### Contre-exemples

**Contre-exemple 1 : Le Cône (au sommet)**

Le paramétrage $f(u, v) = (u \cos v, u \sin v, u)$ pour le cône.

En $u=0$ (le sommet), toutes les dérivées partielles s'annulent ou deviennent colinéaires de manière problématique pour définir un plan unique. C'est un point singulier; le cône n'a pas de plan tangent au sommet.

**Contre-exemple 2 : Surface auto-intersectante**

Une surface peut être régulière (plan tangent bien défini localement) mais se recouper elle-même (exemple : bouteille de Klein dans $\mathbb{R}^3$, bien que techniquement une immersion). La définition locale de régularité reste valide, mais la topologie globale est complexe.

### Concepts Associés

- **Vecteur Normal** : Le produit vectoriel des dérivées partielles donne la direction normale au plan tangent.
- **Changement de carte** : Reparamétrage de la surface via un difféomorphisme $\theta : U \to V$.

## Applications

- **Infographie** : Modélisation de surfaces par maillages ou NURBS.
- **Architecture** : Conception de toits et structures complexes (ex: structures tendues).

---

## Concept 5 : La Première Forme Fondamentale

### Prérequis

- Surface paramétrée régulière (Concept 4).
- Produit scalaire canonique dans $\mathbb{R}^3$.

### Définition

La **première forme fondamentale** $I_m$ est le produit scalaire induit sur le plan tangent $T_m S$ par le produit scalaire usuel de l'espace ambiant $\mathbb{R}^3$. Elle permet de faire des mesures métriques (longueurs, angles, aires) directement sur la surface.

Pour deux vecteurs tangents $X, Y \in T_m S$, on a $I_m(X, Y) = \langle X, Y \rangle_{\mathbb{R}^3}$.

Dans la base $(\frac{\partial f}{\partial u}, \frac{\partial f}{\partial v})$ du plan tangent, elle s'exprime par la matrice symétrique :

$$ \begin{pmatrix} E & F \\ F & G \end{pmatrix} $$

avec les coefficients :

$$ E = \left\| \frac{\partial f}{\partial u} \right\|^2, \quad F = \left\langle \frac{\partial f}{\partial u}, \frac{\partial f}{\partial v} \right\rangle, \quad G = \left\| \frac{\partial f}{\partial v} \right\|^2 $$

La longueur d'une courbe $\gamma(t)$ tracée sur la surface s'exprime comme :

$$ \ell = \int_I \sqrt{E(u')^2 + 2Fu'v' + G(v')^2} dt $$

### Propriétés Clés

- **Définie positive** : Comme restriction d'un produit scalaire, la forme quadratique associée est définie positive ($EG - F^2 > 0$).
- **Intrinsèque** : Elle ne dépend que de la géométrie de la surface, pas de la façon dont elle est plongée dans l'espace (à isométrie près).
- **Calcul de longueur** : Elle permet de mesurer la distance "en marchant sur la surface".

### Exemples

**Exemple 1 : Le plan**

Pour le plan $xy$, $f(x, y) = (x, y, 0)$.

$\frac{\partial f}{\partial x} = (1, 0, 0)$, $\frac{\partial f}{\partial y} = (0, 1, 0)$.

$E=1, F=0, G=1$. La métrique est l'identité (théorème de Pythagore usuel $dx^2 + dy^2$).

**Exemple 2 : La sphère (coordonnées géographiques)**

$E = R^2 \sin^2 \varphi$ (dépend de la latitude), $F=0$, $G=R^2$ (ou vice-versa selon notation).

La métrique change selon où on se trouve : se déplacer d'un degré de longitude est plus court près des pôles qu'à l'équateur.

**Exemple 3 : Le cylindre**

$f(u, v) = (\cos u, \sin u, v)$.

$\frac{\partial f}{\partial u} = (-\sin u, \cos u, 0)$ (norme 1), $\frac{\partial f}{\partial v} = (0, 0, 1)$ (norme 1). Produit scalaire nul.

$E=1, F=0, G=1$.

La métrique est localement identique à celle du plan (on peut dérouler le cylindre sans déformer les longueurs).

### Contre-exemples

**Contre-exemple 1 : Coefficients non valides**

Une matrice $\begin{pmatrix} 1 & 2 \\ 2 & 1 \end{pmatrix}$ ne peut pas être une première forme fondamentale car son déterminant est $1 - 4 = -3 < 0$. Elle n'est pas définie positive.

**Contre-exemple 2 : Mesure de distance euclidienne**

La distance entre deux points sur une sphère mesurée par la première forme fondamentale (arc de grand cercle) est différente de la distance en ligne droite à travers la sphère (corde). La première forme fondamentale ignore l'intérieur de la sphère.

### Concepts Associés

- **Aire d'une surface** : Calculée par $\iint \sqrt{EG-F^2} du dv$.
- **Isométrie** : Deux surfaces sont isométriques si elles ont la même première forme fondamentale (dans des coordonnées appropriées).

## Applications

- **Cartographie** : Comprendre les distorsions lors de la projection de la Terre (sphère) sur une carte (plan).
- **Géodésiques** : Calcul des chemins les plus courts sur une surface courbe (trajectoires d'avions).

---

## Concept 6 : Courbure de Gauss et Seconde Forme Fondamentale

### Prérequis

- Première forme fondamentale (Concept 5).
- Application linéaire et déterminant.
- Vecteur normal.

### Définition

Contrairement à la première forme qui gère les longueurs, la **seconde forme fondamentale** gère la courbure de la surface dans l'espace.

On définit d'abord l'**application de Gauss** $N : S \to S^2$ qui associe à chaque point le vecteur normal unitaire :

$$ N(p) = \frac{\frac{\partial f}{\partial u} \wedge \frac{\partial f}{\partial v}}{\|\frac{\partial f}{\partial u} \wedge \frac{\partial f}{\partial v}\|} $$

L'**Endomorphisme de Weingarten** $W_m$ mesure la variation de ce vecteur normal. C'est une application linéaire du plan tangent dans lui-même.

La **Seconde forme fondamentale** $II_m$ est définie par $II_m(X, Y) = \langle W_m(X), Y \rangle$.

Ses coefficients sont souvent notés $L, M, N$ (ou $e, f, g$) :

$$ L = \langle N, \frac{\partial^2 f}{\partial u^2} \rangle, \quad M = \langle N, \frac{\partial^2 f}{\partial u \partial v} \rangle, \quad N_{coeff} = \langle N, \frac{\partial^2 f}{\partial v^2} \rangle $$

La **Courbure de Gauss** $K$ est le déterminant de l'endomorphisme de Weingarten :

$$ K = \det(W_m) = \frac{LN_{coeff} - M^2}{EG - F^2} $$

### Propriétés Clés

- **Courbures Principales** : $W_m$ est diagonalisable. Ses valeurs propres $\lambda_1, \lambda_2$ sont les courbures principales (courbures maximale et minimale des courbes tracées sur la surface). $K = \lambda_1 \lambda_2$.
- **Theorema Egregium** : La courbure de Gauss $K$ ne dépend en fait que de la première forme fondamentale (des coefficients $E, F, G$ et leurs dérivées). C'est une propriété intrinsèque : des êtres vivants sur la surface peuvent mesurer $K$ sans voir l'espace extérieur.
- **Interprétation du signe de K** :
  - $K > 0$ : Forme de bol (elliptique, ex: sphère).
  - $K < 0$ : Forme de selle de cheval (hyperbolique).
  - $K = 0$ : Forme plate ou développable (parabolique, ex: cylindre).

### Exemples

**Exemple 1 : La Selle de Cheval**

Surface $z = x^2 - y^2$. En l'origine, la surface se courbe vers le haut dans une direction ($x$) et vers le bas dans l'autre ($y$). Les courbures principales sont de signes opposés. Donc $K < 0$.

**Exemple 2 : Le Cylindre**

Le cylindre est courbé dans une direction (le cercle) et droit dans l'autre (la génératrice). Une courbure principale est non-nulle, l'autre est nulle.

Produit $K = \lambda_1 \times 0 = 0$.

Bien que courbé dans $\mathbb{R}^3$, sa géométrie intrinsèque est plate (somme des angles d'un triangle = 180°).

**Exemple 3 : La Sphère de rayon R**

Toutes les directions sont équivalentes. Les courbures principales sont égales à $1/R$ (ou $-1/R$ selon l'orientation).

$K = \frac{1}{R} \times \frac{1}{R} = \frac{1}{R^2}$. $K$ est positif et constant.

### Contre-exemples

**Contre-exemple 1 : Plan vs Cylindre**

Le plan a $K=0$. Le cylindre a $K=0$. Ils sont localement isométriques. Cependant, globalement, le cylindre a une topologie différente ("trou"). $K$ est une mesure locale.

**Contre-exemple 2 : Sphère vs Pseudo-sphère**

La sphère a $K=+1$ (constante positive). La pseudo-sphère a $K=-1$ (constante négative). On ne peut pas aplatir une sphère sur une pseudo-sphère sans déchirure ni distorsion majeure (c'est pourquoi les cartes du monde sont fausses).

### Concepts Associés

- **Courbure Moyenne ($H$)** : $H = \frac{1}{2}(\lambda_1 + \lambda_2)$.
- **Surfaces minimales** : Surfaces où $H=0$ partout (ex: films de savon).

## Applications

- **Relativité Générale** : La gravité est modélisée comme la courbure de l'espace-temps (généralisation de la courbure de Gauss en dimension 4).
- **Fabrication** : On ne peut former une tôle (plate, $K=0$) en sphère ($K>0$) sans l'étirer ou la plier (emboutissage). Par contre, on peut la rouler en cylindre ou cône ($K=0$).
