---
id: 2737be0f
type: concepts
order: 10
title: Séries entières - concepts (A)
tags:
  - analyse
  - séries entières
  - rayon de convergence
  - développement en série entière
  - séries de Taylor
  - exponentielle complexe
course: Analyse
courseId: 1b8174cc
chapter: Séries entières
chapterId: 3dcc70fe
level: regular
createdAt: '2025-12-27T05:23:14.784Z'
---
# Séries entières (A)

---

## Concept 1: Définition et Disque de Convergence

### Prérequis

- Séries numériques (convergence, convergence absolue).
- Suites numériques (bornes supérieures, limites).
- Nombres complexes (module).
- Séries de fonctions (convergence simple, normale).

### Définition

Une **série entière** est une série de fonctions d'une forme spécifique.

Soit $(a_n)_{n \in \mathbb{N}}$ une suite de scalaires (réels ou complexes).

On appelle série entière une série de fonctions dont le terme général est de la forme :

$$ u_n(z) = a_n z^n $$

où $z$ est une variable complexe (si $z \in \mathbb{C}$) ou réelle (si $t \in \mathbb{R}$, noté $a_n t^n$).

La série est notée $\sum a_n z^n$. Elle peut être vue comme un "polynôme de degré infini".

### Propriétés Clés

Le comportement de convergence d'une série entière est très régulier et dépend presque uniquement du module de la variable $z$. C'est le **Théorème fondamental (Lemme d'Abel)** :

Il existe un unique nombre réel $R \in [0, +\infty]$, appelé **rayon de convergence**, tel que :

1.  **Convergence absolue :** Pour tout $z$ tel que $|z| < R$, la série $\sum a_n z^n$ converge absolument.
    *   L'ensemble $D_R = \{z \in \mathbb{C} \mid |z| < R\}$ est appelé le **disque de convergence** (ou intervalle de convergence $]-R, R[$ dans le cas réel).
2.  **Divergence :** Pour tout $z$ tel que $|z| > R$, la série diverge (le terme général ne tend même pas vers 0).
3.  **Convergence normale :** Pour tout $r$ tel que $0 < r < R$, la série converge normalement (et donc uniformément) sur le disque fermé $\overline{D_r} = \{z \in \mathbb{C} \mid |z| \leq r\}$.

**Remarque sur le bord :** Pour les points où $|z| = R$, le comportement est incertain et doit être étudié au cas par cas.

### Exemples

**Exemple 1 : La série géométrique**

Considérons la série $\sum_{n=0}^{+\infty} z^n$ (ici $a_n = 1$ pour tout $n$).

$$ |z| < 1 \implies \text{convergence absolue.} $$

$$ |z| > 1 \implies |z|^n \to +\infty \neq 0 \implies \text{divergence.} $$

Le rayon de convergence est $R=1$.

**Exemple 2 : L'exponentielle**

Considérons la série $\sum_{n=0}^{+\infty} \frac{z^n}{n!}$.

Pour tout $z \in \mathbb{C}$, cette série converge (voir critères de convergence).

Le rayon de convergence est $R=+\infty$. La série converge sur tout le plan complexe.

**Exemple 3 : La série factorielle**

Considérons $\sum_{n=0}^{+\infty} n! z^n$.

Pour tout $z \neq 0$, le terme général $n! z^n$ tend vers l'infini. La série ne converge que pour $z=0$.

Le rayon de convergence est $R=0$.

### Contre-exemples

**Contre-exemple sur le bord du disque**

Pour $R=1$ :

- La série $\sum z^n$ diverge en tout point du cercle $|z|=1$ (le terme général ne tend pas vers 0).
- La série $\sum \frac{z^n}{n^2}$ converge absolument en tout point du cercle $|z|=1$.
- La série $\sum \frac{z^n}{n}$ diverge pour $z=1$ mais converge pour $z=-1$ (série harmonique alternée).

Cela illustre qu'on ne peut pas donner de règle générale pour le cas $|z| = R$.

### Concepts Liés

- **Séries numériques :** Pour un $z$ fixé, la série entière devient une série numérique.
- **Polynômes :** Une série entière est une limite de polynômes lorsque le degré tend vers l'infini.

## Applications

- Définition de fonctions complexes (exponentielle, sinus, cosinus).
- Résolution d'équations différentielles.

---

## Concept 2: Calcul du Rayon de Convergence

### Prérequis

- Règle de d'Alembert pour les suites numériques.
- Racine n-ième et limites sup (Règle de Cauchy).
- Concept 1 (Définition du rayon $R$).

### Définition

Le rayon de convergence $R$ peut être calculé explicitement à partir des coefficients $a_n$ de la série. Deux méthodes principales sont utilisées.

**1. Formule de Hadamard (Règle de Cauchy) :**

C'est la formule générale qui caractérise $R$ :

$$ \frac{1}{R} = \limsup_{n \to +\infty} (|a_n|)^{1/n} $$

**2. Règle de d'Alembert (cas pratique) :**

Si les coefficients $a_n$ sont non nuls (à partir d'un certain rang) et que la limite suivante existe :

$$ L = \lim_{n \to \infty} \left| \frac{a_{n+1}}{a_n} \right| $$

Alors le rayon de convergence est donné par :

$$ R = \frac{1}{L} $$

(avec les conventions $1/0 = +\infty$ et $1/+\infty = 0$).

### Propriétés Clés

- La règle de d'Alembert est souvent plus simple à appliquer, notamment quand des factorielles interviennent.
- Si la limite de d'Alembert n'existe pas, on doit revenir à la règle de Cauchy ou utiliser des théorèmes de comparaison.
- Le rayon de convergence ne change pas si on multiplie le terme $a_n$ par un polynôme en $n$ ou par une constante non nulle.

### Exemples

**Exemple 1 : Utilisation de d'Alembert**

Soit la série $\sum \frac{z^n}{n!}$. Ici $a_n = \frac{1}{n!}$.

$$ \left| \frac{a_{n+1}}{a_n} \right| = \frac{1/(n+1)!}{1/n!} = \frac{n!}{(n+1)!} = \frac{1}{n+1} $$

$$ \lim_{n \to \infty} \frac{1}{n+1} = 0 \implies L = 0 $$

Donc $R = \frac{1}{0} = +\infty$.

**Exemple 2 : Coefficient polynomial**

Soit la série $\sum P(n) z^n$ où $P$ est un polynôme non nul.

$$ \lim_{n \to \infty} \left| \frac{P(n+1)}{P(n)} \right| = 1 $$

Donc $R = \frac{1}{1} = 1$.

**Exemple 3 : Série lacunaire**

Considérons $\sum z^{2n}$ (termes $a_k$ sont nuls si $k$ est impair).

On ne peut pas appliquer d'Alembert directement ($a_n$ s'annule).

On pose $u_n = z^{2n}$. Pour converger (critère de Cauchy), on regarde $(|z|^{2n})^{1/n} = |z|^2$. Il faut $|z|^2 < 1 \implies |z| < 1$.

Donc $R=1$.

Alternativement, par substitution $w = z^2$ dans la série $\sum w^n$ ($R_w=1$), on trouve $|z^2| < 1 \Rightarrow |z| < 1$.

### Contre-exemples

- **Inapplicabilité de d'Alembert :**

  Pour la série $1 + 2z + z^2 + 2z^3 + z^4 + \dots$, le quotient $|a_{n+1}/a_n|$ oscille entre $2$ et $1/2$. La limite n'existe pas. On ne peut pas utiliser la formule simplifiée de d'Alembert, il faut utiliser la limite sup (Cauchy) ou un encadrement.

### Concepts Liés

- **Critère de d'Alembert pour les séries numériques :** C'est l'origine de la méthode de calcul pour $R$.

## Applications

- Déterminer le domaine de validité d'un développement en série.

---

## Concept 3: Propriétés de la Somme (Continuité, Dérivation, Intégration)

### Prérequis

- Convergence uniforme.
- Théorèmes d'interversion limites/sommes.
- Dérivation et intégration des fonctions.

### Définition

Sur son disque de convergence ouvert $D_R$, la somme $s(z) = \sum_{n=0}^{+\infty} a_n z^n$ possède des propriétés de régularité très fortes.

1.  **Continuité :** La fonction somme $s$ est continue sur $D_R$.
2.  **Dérivation (cas réel) :** Si la variable est réelle $t \in ]-R, R[$, la fonction $s(t)$ est indéfiniment dérivable ($C^\infty$). La dérivée s'obtient en dérivant terme à terme :

    $$ s'(t) = \sum_{n=1}^{+\infty} n a_n t^{n-1} $$

    Le rayon de convergence de la série dérivée est le même, **$R$**.

3.  **Intégration (cas réel) :** La fonction est intégrable terme à terme sur tout segment inclus dans $]-R, R[$.

    $$ \int_0^x s(t)dt = \sum_{n=0}^{+\infty} \frac{a_n}{n+1} x^{n+1} $$

### Propriétés Clés

- **Conservation du Rayon :** Les opérations de dérivation et d'intégration (primitive) ne changent pas le rayon de convergence $R$.
- **Formule des coefficients :** On peut retrouver les coefficients $a_n$ à partir des dérivées de la fonction en 0 :

  $$ a_n = \frac{s^{(n)}(0)}{n!} $$

- **Unicité :** Si une fonction est développable en série entière, ce développement est unique.

### Exemples

**Exemple 1 : Dérivation de la série géométrique**

On sait que $\frac{1}{1-t} = \sum_{n=0}^{+\infty} t^n$ pour $|t| < 1$.

En dérivant terme à terme :

$$ \left( \frac{1}{1-t} \right)' = \frac{1}{(1-t)^2} = \sum_{n=1}^{+\infty} n t^{n-1} $$

Valable pour $|t| < 1$.

**Exemple 2 : Primitive et Logarithme**

On part de $\frac{1}{1+t} = \sum_{n=0}^{+\infty} (-1)^n t^n$ (substitution de $-t$ dans la géométrique).

En intégrant entre 0 et $x$ (pour $|x|<1$) :

$$ \ln(1+x) = \int_0^x \frac{dt}{1+t} = \sum_{n=0}^{+\infty} (-1)^n \frac{x^{n+1}}{n+1} = x - \frac{x^2}{2} + \frac{x^3}{3} - \dots $$

**Exemple 3 : Fonction exponentielle**

Soit $f(t) = \sum_{n=0}^{+\infty} \frac{t^n}{n!}$.

$$ f'(t) = \sum_{n=1}^{+\infty} n \frac{t^{n-1}}{n!} = \sum_{n=1}^{+\infty} \frac{t^{n-1}}{(n-1)!} = \sum_{k=0}^{+\infty} \frac{t^k}{k!} = f(t) $$

La fonction est égale à sa propre dérivée, ce qui caractérise $C e^t$. Avec $f(0)=1$, on retrouve $e^t$.

### Contre-exemples

- **Extension au bord :**

  Le théorème de continuité sur l'ouvert $D_R$ ne garantit pas la continuité sur le bord fermé, même si la série converge au bord. Cependant, le théorème d'Abel (non détaillé ici mais classique) traite ce cas spécifique (continuité radiale).

### Concepts Liés

- **Fonctions $C^\infty$ :** Les sommes de séries entières sont une sous-classe très régulière des fonctions indéfiniment dérivables.
- **Formule de Taylor :** Lien direct entre les coefficients et les dérivées successives.

## Applications

- Calcul de sommes de séries numériques via la valeur d'une fonction connue.
- Calcul de primitives de fonctions qui n'ont pas de primitive exprimable avec des fonctions usuelles (ex: $\int e^{-t^2} dt$).

---

## Concept 4: Développement en Série Entière (Taylor)

### Prérequis

- Formule de Taylor avec reste (intégral ou Lagrange).
- Fonctions indéfiniment dérivables ($C^\infty$).
- Concept 3 (Lien entre $a_n$ et dérivées).

### Définition

Une fonction $f$ (d'une variable réelle $t$) est dite **développable en série entière** en 0 s'il existe une série entière $\sum a_n t^n$ de rayon $R > 0$ telle que :

$$ f(t) = \sum_{n=0}^{+\infty} a_n t^n \quad \text{pour tout } t \in ]-r, r[ \text{ (avec } 0 < r \leq R) $$

Si un tel développement existe, il est nécessairement la **Série de Taylor** de $f$ :

$$ a_n = \frac{f^{(n)}(0)}{n!} $$

### Propriétés Clés

- **Condition nécessaire :** La fonction $f$ doit être de classe $C^\infty$ au voisinage de 0.
- **Condition suffisante :** Si les dérivées successives sont bornées uniformément sur un intervalle (ou satisfont une majoration du type $|f^{(n)}(t)| \leq C \cdot M^n \cdot n!$), alors la fonction est développable en série entière. Plus précisément, si :

  $$ \exists C > 0, \rho > 0 \text{ tels que } \forall n \in \mathbb{N}, \forall t \in [-\rho, \rho], \left| \frac{f^{(n)}(t)}{n!} \right| \leq C \rho^{-n} $$

  alors $f$ est égale à sa série de Taylor.

- Le fait d'être $C^\infty$ ne suffit pas (voir contre-exemple).

### Exemples

**Exemple 1 : Sinus et Cosinus**

Pour $f(t) = \sin(t)$, les dérivées sont $\pm \sin t$ ou $\pm \cos t$, toutes majorées par 1 en valeur absolue. La condition suffisante est vérifiée.

$$ \sin(t) = \sum_{n=0}^{+\infty} (-1)^n \frac{t^{2n+1}}{(2n+1)!} \quad (R=+\infty) $$

$$ \cos(t) = \sum_{n=0}^{+\infty} (-1)^n \frac{t^{2n}}{(2n)!} \quad (R=+\infty) $$

**Exemple 2 : Série du binôme**

Pour $\alpha \in \mathbb{R}$, la fonction $f(t) = (1+t)^\alpha$ est développable sur $]-1, 1[$ :

$$ (1+t)^\alpha = 1 + \sum_{n=1}^{+\infty} \frac{\alpha(\alpha-1)\dots(\alpha-n+1)}{n!} t^n $$

**Exemple 3 : Fonction impaire**

Si $f$ est une fonction impaire développable en série entière, alors tous les coefficients $a_n$ d'indices pairs sont nuls (comme pour le sinus). Réciproquement pour les fonctions paires (comme le cosinus).

### Contre-exemples

**La fonction "plate" (Fonction $C^\infty$ non analytique)**

Soit $f(t) = e^{-1/t^2}$ pour $t \neq 0$ et $f(0)=0$.

Cette fonction est $C^\infty$ sur $\mathbb{R}$.

On peut montrer que toutes ses dérivées en 0 sont nulles : $f^{(n)}(0) = 0$ pour tout $n$.

La série de Taylor est donc la série nulle $\sum 0 \cdot t^n = 0$.

Pourtant $f(t) \neq 0$ pour $t \neq 0$. La fonction n'est pas égale à la somme de sa série de Taylor au voisinage de 0. Elle n'est pas développable en série entière.

### Concepts Liés

- **Fonctions analytiques :** Les fonctions développables en série entière sont appelées fonctions analytiques réelles.

## Applications

- Approximation de fonctions complexes par des polynômes (calcul numérique).
- Résolution d'équations physiques (pendule simple $\sin \theta \approx \theta$).

---

## Concept 5: Opérations sur les Séries Entières

### Prérequis

- Opérations sur les sommes finies et les séries.
- Produit de Cauchy.
- Composition de fonctions.

### Définition

On peut effectuer des opérations algébriques sur les séries entières comme s'il s'agissait de polynômes, à condition de surveiller les rayons de convergence.

Soient $\sum a_n z^n$ ($R_a$) et $\sum b_n z^n$ ($R_b$) deux séries entières de sommes respectives $S_a(z)$ et $S_b(z)$.

1.  **Combinaison linéaire :** $\sum (\lambda a_n + \mu b_n) z^n$ a pour somme $\lambda S_a(z) + \mu S_b(z)$.
    *   Rayon $R \geq \min(R_a, R_b)$.
2.  **Produit (Produit de Cauchy) :** $\sum c_n z^n$ avec $c_n = \sum_{k=0}^n a_k b_{n-k}$ a pour somme $S_a(z) S_b(z)$.
    *   Rayon $R \geq \min(R_a, R_b)$.
3.  **Substitution :** On peut substituer un polynôme ou une série entière sans terme constant dans une autre, sous conditions de convergence. Cas simple : $z \to \lambda z$, $z \to z^2$.

### Propriétés Clés

- **Inverse :** Si $a_0 \neq 0$, la fonction $1/S_a(z)$ est développable en série entière au voisinage de 0.

### Exemples

**Exemple 1 : Produit**

Pour calculer le développement de $e^z \cdot e^{z'}$, on utilise le produit de Cauchy des séries de $e^z$ et $e^{z'}$. On retrouve la formule du binôme et la série de $e^{z+z'}$.

**Exemple 2 : Substitution**

Développement de $e^{-t^2}$. On pose $u = -t^2$.

Comme $e^u = \sum \frac{u^n}{n!}$, alors :

$$ e^{-t^2} = \sum_{n=0}^{+\infty} \frac{(-t^2)^n}{n!} = \sum_{n=0}^{+\infty} (-1)^n \frac{t^{2n}}{n!} $$

Le rayon reste $R=+\infty$.

**Exemple 3 : Inverse**

Pour trouver le développement de $\tan(t) = \frac{\sin t}{\cos t}$, on peut écrire $\sin t \cdot (\cos t)^{-1}$. On développe d'abord $\frac{1}{\cos t}$ (puisque $\cos 0 = 1 \neq 0$, l'inverse est développable) puis on fait le produit.

### Contre-exemples

- **Division par zéro :** Si $a_0 = 0$ (par exemple $S_a(z) = \sin z \sim z$), alors $1/S_a(z)$ tend vers l'infini en 0 et n'est pas développable en série entière (c'est une série de Laurent, hors programme ici).

### Concepts Liés

- **Algèbre des polynômes :** Les règles de calcul sont identiques dans le domaine de convergence.

## Applications

- Calcul de développements limités à des ordres élevés.
- Combinatoire (fonctions génératrices).

---

## Concept 6: Exponentielle Complexe

### Prérequis

- Nombres complexes (forme algébrique et trigonométrique).
- Séries entières (définition).
- Trigonométrie.

### Définition

On définit l'exponentielle complexe pour tout $z \in \mathbb{C}$ par la série entière (de rayon infini) :

$$ e^z = \exp(z) = \sum_{n=0}^{+\infty} \frac{z^n}{n!} $$

### Propriétés Clés

1.  **Relation fondamentale :** $e^{z+z'} = e^z e^{z'}$.
2.  **Formule d'Euler :** Pour tout réel $x \in \mathbb{R}$,

    $$ e^{ix} = \cos(x) + i \sin(x) $$

3.  **Lien Exponentielle/Trigonométrie :**

    $$ \cos(x) = \frac{e^{ix} + e^{-ix}}{2}, \quad \sin(x) = \frac{e^{ix} - e^{-ix}}{2i} $$

4.  **Périodicité :** $z \mapsto e^z$ est périodique de période $2i\pi$.

### Exemples

**Exemple 1 : Identité d'Euler**

$$ e^{i\pi} = \cos(\pi) + i\sin(\pi) = -1 + 0 = -1 $$

D'où $e^{i\pi} + 1 = 0$.

**Exemple 2 : Module et Argument**

Si $z = x + iy$ (avec $x,y$ réels) :

$$ e^z = e^{x+iy} = e^x e^{iy} = e^x (\cos y + i \sin y) $$

Module : $|e^z| = e^x$. Argument : $\arg(e^z) \equiv y [2\pi]$.

**Exemple 3 : Formule de Moivre**

$$ (\cos x + i \sin x)^n = (e^{ix})^n = e^{inx} = \cos(nx) + i \sin(nx) $$

### Contre-exemples

- **Non-bijectivité globale :** Contrairement à l'exponentielle réelle, l'exponentielle complexe n'est pas bijective sur $\mathbb{C}$ (à cause de la périodicité). $e^0 = e^{2i\pi} = 1$.

### Concepts Liés

- **Groupe cercle :** L'application $t \mapsto e^{it}$ enroule la droite réelle sur le cercle unité.

## Applications

- **Linéarisation :** Transformer des puissances de $\cos$ et $\sin$ en sommes de $\cos(kt)$ et $\sin(kt)$ pour intégrer facilement.
- Résolution d'équations différentielles linéaires à coefficients constants.
- Électricité et traitement du signal (notation complexe).

---

## Concept 7: Résolution d'Équations Différentielles par Séries Entières

### Prérequis

- Équations différentielles linéaires.
- Dérivation des séries entières (Concept 3).
- Identification des coefficients (unicité).

### Définition

C'est une méthode pour trouver des solutions analytiques à des équations différentielles.

On suppose que la solution s'écrit sous la forme $f(x) = \sum_{n=0}^{+\infty} a_n x^n$.

On injecte cette expression et ses dérivées dans l'équation.

On obtient une relation de récurrence sur les coefficients $a_n$ en identifiant les termes de même puissance $x^k$.

### Propriétés Clés

- Cette méthode permet de trouver des solutions même quand on ne connaît pas de formule explicite avec des fonctions usuelles.
- Il faut vérifier a posteriori que la série obtenue a un rayon de convergence $R > 0$.

### Exemples

**Exemple 1 : $f'(x) = f(x)$ avec $f(0)=1$**

On pose $f(x) = \sum a_n x^n$. Alors $f'(x) = \sum (n+1)a_{n+1} x^n$.

L'équation donne $\sum (n+1)a_{n+1} x^n = \sum a_n x^n$.

Par identification : $(n+1)a_{n+1} = a_n \implies a_{n+1} = \frac{a_n}{n+1}$.

Comme $a_0 = f(0) = 1$, on trouve par récurrence $a_n = \frac{1}{n!}$.

On reconnait $f(x) = e^x$.

**Exemple 2 : $f'(x) = x f(x)$**

(Détaillé dans le texte). On trouve $a_{2k+1} = 0$ et $a_{2k} = \frac{a_0}{k! 2^k}$.

La solution est $f(x) = a_0 \sum \frac{1}{k!} (\frac{x^2}{2})^k = a_0 e^{x^2/2}$.

**Exemple 3 : Équation $(1+t)f'(t) = \alpha f(t)$**

Utilisée dans le texte pour démontrer le développement de $(1+t)^\alpha$.

La relation de récurrence obtenue est $a_{n+1} = \frac{\alpha - n}{n+1} a_n$, ce qui génère les coefficients du binôme généralisé.

### Concepts Liés

- **Fonctions spéciales :** De nombreuses fonctions en physique (Bessel, Legendre, Hermite) sont définies comme séries entières solutions de certaines équations différentielles.

## Applications

- Physique mathématique (Mécanique quantique, Électromagnétisme).
