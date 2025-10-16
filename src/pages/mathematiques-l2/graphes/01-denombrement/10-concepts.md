---
id: d15fce24
type: concepts
order: 10
title: Principes de dénombrement - concepts (A)
tags:
  - Combinatoire
  - Dénombrement
  - Cardinalité
  - Ensembles finis
  - Principes de comptage
course: Graphes et Combinatoire
courseId: 7027276b
chapter: Principes de dénombrement
chapterId: 1a14d8a4
level: regular
createdAt: '2025-10-15T18:52:28.770Z'
---
# Principes de dénombrement (A)

---

## Concept 1: Cardinal d'un ensemble fini

### Prérequis

-   Connaissance des concepts de base de la théorie des ensembles : ensemble, élément, appartenance ($\in$), sous-ensemble ($\subseteq$), ensemble vide ($\emptyset$).
-   Compréhension des applications (fonctions) entre deux ensembles.
-   Maîtrise des définitions d'une injection, d'une surjection et d'une bijection.
-   Notion des entiers naturels $\mathbb{N} = \{0, 1, 2, \dots\}$.
-   Notation de l'intervalle d'entiers $\llbracket n \rrbracket = \{1, 2, \dots, n\}$ pour $n \in \mathbb{N}^*$, et $\llbracket 0 \rrbracket = \emptyset$.

### Définition

Un ensemble $E$ est dit **fini** s'il existe un entier naturel $n \in \mathbb{N}$ et une bijection $f$ de $E$ vers l'ensemble $\llbracket n \rrbracket = \{1, 2, \dots, n\}$.

Le **cardinal** de cet ensemble fini $E$, noté $|E|$ ou $\text{Card}(E)$, est cet entier unique $n$. On dit aussi que $n$ est le **nombre d'éléments** de $E$.

$$ |E| = n \iff \exists f: E \to \llbracket n \rrbracket \text{ qui est une bijection.} $$

Le fait que cet entier $n$ soit unique pour un ensemble donné est fondamental et est garanti par le Théorème 1.1 du cours, qui assure qu'il ne peut exister une bijection de $\llbracket n \rrbracket$ vers $\llbracket m \rrbracket$ que si $n=m$.

### Explications Détaillées

L'idée de "compter" les éléments d'un ensemble semble intuitive. La définition mathématique formalise cette intuition. Pour compter les éléments d'un ensemble $E$, on les "étiquette" un par un avec les premiers entiers naturels, sans en oublier et sans en étiqueter un plusieurs fois. C'est exactement ce que fait une bijection.

-   **Injectivité** : Le fait que la fonction $f$ soit injective garantit que chaque élément de $E$ est associé à un numéro unique dans $\llbracket n \rrbracket$. On ne compte pas le même élément deux fois.
-   **Surjectivité** : Le fait que la fonction $f$ soit surjective garantit que tous les numéros de $1$ à $n$ sont utilisés. On s'arrête de compter au bon moment, sans sauter de numéro.

Ainsi, une bijection établit une correspondance parfaite "un pour un" entre les éléments de $E$ et les entiers de $1$ à $n$. Le cardinal est simplement le dernier entier utilisé dans ce processus de comptage. Le cas de l'ensemble vide est particulier : il est en bijection avec $\llbracket 0 \rrbracket$, qui est l'ensemble vide. Son cardinal est donc $0$.

### Propriétés Clés

-   **Unicité du cardinal**: Pour un ensemble fini donné, son cardinal est un nombre unique. (Corollaire 1.2)
-   **Cardinal de l'ensemble vide**: L'ensemble vide est le seul ensemble de cardinal 0. $|\emptyset| = 0$.
-   **Sous-ensembles**: Tout sous-ensemble d'un ensemble fini est lui-même fini. Si $F \subseteq E$, alors $|F| \le |E|$. (Principe d'inclusion, Corollaire 1.12)
-   **Égalité**: Si $F \subseteq E$ et $|F| = |E|$, alors nécessairement $F=E$. C'est une propriété très importante pour les ensembles finis, qui est fausse pour les ensembles infinis.

### Exemples Détaillés

**Exemple 1**

Soit $E = \{\text{lundi, mardi, mercredi}\}$. Quel est son cardinal ?

Pour le déterminer, nous devons trouver une bijection entre $E$ et un ensemble $\llbracket n \rrbracket$.

Considérons l'application $f: E \to \llbracket 3 \rrbracket$ définie par :

-   $f(\text{lundi}) = 1$
-   $f(\text{mardi}) = 2$
-   $f(\text{mercredi}) = 3$

Cette application est :

-   **injective** : deux jours différents sont envoyés sur des numéros différents.
-   **surjective** : tous les numéros de $\llbracket 3 \rrbracket=\{1, 2, 3\}$ sont l'image d'au moins un jour.

Donc, $f$ est une bijection de $E$ vers $\llbracket 3 \rrbracket$. Par définition, $|E| = 3$.

**Exemple 2**

Soit $F = \{a, z, e, r, t, y\}$, l'ensemble des lettres de la première ligne d'un clavier AZERTY.

Construisons une bijection $g: F \to \llbracket 6 \rrbracket$ :

$g(a)=1, g(z)=2, g(e)=3, g(r)=4, g(t)=5, g(y)=6$.

Cette application est bien une bijection. Donc, $|F|=6$.

**Exemple 3**

Soit $G = \emptyset$ (l'ensemble vide).

L'ensemble $\llbracket 0 \rrbracket$ est aussi l'ensemble vide. L'application identité de $\emptyset$ vers $\emptyset$ est une bijection. Donc, $|G|=0$.

### Contre-exemples

**Contre-exemple 1**

L'ensemble des entiers naturels $\mathbb{N} = \{0, 1, 2, 3, \dots\}$ n'est pas un ensemble fini. On ne peut pas trouver un entier $n$ et une bijection de $\mathbb{N}$ vers $\llbracket n \rrbracket$. Si on essayait, par exemple avec $n=10^9$, on associerait les entiers de $0$ à $10^9-1$ aux nombres de $1$ à $10^9$, mais il resterait une infinité d'entiers dans $\mathbb{N}$ (tous ceux supérieurs ou égaux à $10^9$) qui n'auraient pas d'image. L'application ne pourrait pas être surjective sur $\mathbb{N}$.

**Contre-exemple 2**

Considérons l'application $h: \{\text{rouge, vert, bleu}\} \to \llbracket 4 \rrbracket$ définie par $h(\text{rouge})=1$, $h(\text{vert})=2$, $h(\text{bleu})=3$. Cette application est injective mais pas surjective, car $4 \in \llbracket 4 \rrbracket$ n'a pas d'antécédent. Ce n'est donc pas une bijection. Cela ne contredit pas le fait que le cardinal de l'ensemble des couleurs est 3, mais montre que n'importe quelle application ne convient pas pour déterminer le cardinal. Il faut en trouver une qui soit une bijection.

### Concepts Connexes

-   **Principe de bijection**: Si deux ensembles sont en bijection, ils ont le même cardinal. C'est le fondement même de la définition.
-   **Ensemble infini dénombrable**: Un ensemble qui est en bijection avec $\mathbb{N}$ est dit infini dénombrable. C'est la première catégorie d'ensembles infinis.

---

## Concept 2: Principe de bijection

### Prérequis

-   Définition du cardinal d'un ensemble fini (Concept 1).
-   Maîtrise de la notion de bijection.

### Définition

Soient $E$ et $F$ deux ensembles finis. S'il existe une bijection $f: E \to F$, alors $E$ et $F$ ont le même cardinal.

$$ (\exists f: E \to F \text{ bijective}) \implies |E| = |F| $$

### Explications Détaillées

Ce principe est une conséquence directe de la définition du cardinal, mais il est si fondamental qu'on l'énonce comme un principe de dénombrement à part entière. Il nous dit que pour compter les éléments d'un ensemble $E$, on n'est pas obligé de le comparer directement à un ensemble $\llbracket n \rrbracket$. On peut le comparer à un autre ensemble $F$ dont le cardinal est plus facile à déterminer. Si on peut établir une correspondance parfaite (un-pour-un) entre les éléments de $E$ et ceux de $F$, alors ils ont forcément le même nombre d'éléments.

Cette technique est au cœur des **preuves bijectives** en combinatoire. Pour prouver que deux quantités sont égales, il suffit de montrer qu'elles comptent les éléments de deux ensembles qui sont en bijection.

### Propriétés Clés

-   **Symétrie**: Si $E$ et $F$ sont en bijection, alors $F$ et $E$ le sont aussi (en utilisant la bijection réciproque $f^{-1}$).
-   **Transitivité**: Si $E$ est en bijection avec $F$, et $F$ est en bijection avec $G$, alors $E$ est en bijection avec $G$ (en composant les bijections).
-   **Réflexivité**: Tout ensemble $E$ est en bijection avec lui-même (par l'application identité).
-   Ces trois propriétés montrent que la relation "être en bijection" est une relation d'équivalence sur les ensembles.

### Exemples Détaillés

**Exemple 1**

Soit $E$ un ensemble de 5 livres différents et $F$ un ensemble de 5 étudiants. Pour montrer que $|E|=|F|$, on peut construire la bijection suivante : on assigne à chaque étudiant un livre unique. L'application $f: F \to E$ qui à chaque étudiant associe le livre qu'il reçoit est une bijection. Donc, $|E|=|F|=5$.

**Exemple 2**

Notons $P_k(\llbracket n \rrbracket)$ l'ensemble des sous-ensembles de $\llbracket n \rrbracket$ qui ont exactement $k$ éléments. Montrons que $|P_k(\llbracket n \rrbracket)| = |P_{n-k}(\llbracket n \rrbracket)|$. Ces cardinaux sont notés $\binom{n}{k}$ et $\binom{n}{n-k}$.

Considérons l'application $\phi: P_k(\llbracket n \rrbracket) \to P_{n-k}(\llbracket n \rrbracket)$ qui à un sous-ensemble $A \in P_k(\llbracket n \rrbracket)$ associe son complémentaire $\bar{A} = \llbracket n \rrbracket \setminus A$.

-   **L'application est bien définie**: Si $|A|=k$, alors son complémentaire $\bar{A}$ contient tous les éléments de $\llbracket n \rrbracket$ qui ne sont pas dans $A$. Il y en a donc $n-k$. Ainsi, $|\bar{A}|=n-k$, et $\bar{A} \in P_{n-k}(\llbracket n \rrbracket)$.
-   **L'application est une bijection**: Pour le prouver, on montre qu'elle a une application réciproque. Soit $\psi: P_{n-k}(\llbracket n \rrbracket) \to P_k(\llbracket n \rrbracket)$ qui à un ensemble $B$ associe son complémentaire $\bar{B}$. On a $\psi(\phi(A)) = \overline{\bar{A}} = A$. Donc $\psi = \phi^{-1}$.

Puisqu'il existe une bijection entre $P_k(\llbracket n \rrbracket)$ et $P_{n-k}(\llbracket n \rrbracket)$, le principe de bijection nous dit que leurs cardinaux sont égaux : $\binom{n}{k} = \binom{n}{n-k}$.

**Exemple 3**

Soit $E$ l'ensemble des nombres impairs entre 1 et 99 inclus. Soit $F = \{0, 1, 2, \dots, 49\}$. Quel est le cardinal de $E$?

Il est difficile de compter directement. Utilisons une bijection. Un nombre impair s'écrit $2k+1$.

Considérons l'application $f: F \to E$ définie par $f(k) = 2k+1$.

- Pour $k=0$, $f(0)=1$.
- Pour $k=1$, $f(1)=3$.
- ...
- Pour $k=49$, $f(49) = 2 \cdot 49 + 1 = 99$.

Cette application est une bijection. Puisque l'on connaît le cardinal de $F$ (il y a $49-0+1=50$ éléments), on peut conclure que $|E| = |F| = 50$.

### Contre-exemples

**Contre-exemple 1**

Soit $E=\{1,2,3\}$ et $F=\{a,b,c,d\}$. L'application $f(1)=a, f(2)=b, f(3)=c$ est une injection de $E$ dans $F$, mais pas une bijection (elle n'est pas surjective). Il n'existe aucune bijection entre $E$ et $F$, donc ils n'ont pas le même cardinal. $|E|=3 \ne |F|=4$.

**Contre-exemple 2**

Soit $E=\{1,2,3,4\}$ et $F=\{a,b\}$. L'application $g(1)=a, g(2)=b, g(3)=a, g(4)=b$ est une surjection de $E$ vers $F$, mais pas une bijection (elle n'est pas injective). Il n'existe aucune bijection entre $E$ et $F$, donc ils n'ont pas le même cardinal. $|E|=4 \ne |F|=2$.

### Concepts Connexes

-   **Cardinal d'un ensemble fini**: Le principe de bijection est la méthode la plus courante pour établir l'égalité de cardinaux.
-   **Preuves combinatoires**: De nombreuses identités en combinatoire sont prouvées en construisant une bijection entre deux ensembles.

---

## Concept 3: Principe des tiroirs (de Dirichlet)

### Prérequis

-   Cardinal d'un ensemble fini (Concept 1).
-   Définition d'une injection.
-   Notions de base d'arithmétique (division, nombres premiers entre eux).

### Définition

Soient $E$ et $F$ deux ensembles finis.

-   **Forme injective** : S'il existe une injection de $E$ dans $F$, alors $|E| \le |F|$. Réciproquement, si $|E| \le |F|$, il existe une injection de $E$ dans $F$.
-   **Principe des tiroirs** : Si $|E| > |F|$, alors il n'existe **aucune** application injective de $E$ dans $F$.

Cela implique que pour toute application $f: E \to F$ avec $|E| > |F|$, il existe au moins un élément $y \in F$ qui a au moins deux antécédents, c'est-à-dire :

$$ \exists y \in F, \quad |f^{-1}(\{y\})| \ge 2 $$

### Explications Détaillées

L'analogie classique est celle des "tiroirs et chaussettes" (ou pigeons et pigeonniers). Si vous avez plus de chaussettes ($|E|$ objets) que de tiroirs ($|F|$ contenants), et que vous devez ranger toutes les chaussettes dans les tiroirs, alors il y aura forcément au moins un tiroir qui contiendra au moins deux chaussettes.

-   Les "objets" sont les éléments de l'ensemble de départ $E$.
-   Les "tiroirs" sont les éléments de l'ensemble d'arrivée $F$.
-   L'application $f: E \to F$ représente le rangement : $f(x)=y$ signifie que l'objet $x$ est rangé dans le tiroir $y$.

Le principe des tiroirs est un outil d'existence : il ne nous dit pas *quel* tiroir contiendra plusieurs objets, ni *combien* de tiroirs en contiendront plusieurs, mais il nous garantit l'existence d'au moins un tel tiroir. C'est un principe non-constructif mais très puissant pour prouver des propriétés d'existence.

### Propriétés Clés

-   **Contraposée**: Si une application $f: E \to F$ est injective, alors $|E| \le |F|$.
-   **Généralisation**: Si on range $m$ objets dans $n$ tiroirs, il existe au moins un tiroir contenant au moins $\lceil m/n \rceil$ objets (où $\lceil \cdot \rceil$ est la fonction partie entière supérieure). La version de base est le cas où $m > n$, ce qui implique $\lceil m/n \rceil \ge 2$.

### Exemples Détaillés

**Exemple 1 (classique)**

Dans un groupe de 13 personnes, il y en a au moins deux qui sont nées le même mois.

-   **Objets (E)** : les 13 personnes. $|E|=13$.
-   **Tiroirs (F)** : les 12 mois de l'année. $|F|=12$.
-   **Application (f)** : l'application qui associe à chaque personne son mois de naissance.

Puisque $|E| > |F|$ (13 > 12), le principe des tiroirs s'applique. Il n'y a pas d'injection de $E$ dans $F$. Donc, au moins un mois (un "tiroir") est l'image d'au moins deux personnes (des "objets").

**Exemple 2**

Dans une ville d'un million d'habitants qui ne sont pas chauves, il existe au moins deux personnes ayant exactement le même nombre de cheveux.

-   **Objets (E)** : le million d'habitants. $|E| = 1\,000\,000$.
-   **Tiroirs (F)** : le nombre possible de cheveux. Un être humain a en moyenne 150 000 cheveux, et au maximum environ 300 000. Prenons une borne large de 500 000. Les tiroirs sont donc les entiers $\{1, 2, \dots, 500\,000\}$. $|F| = 500\,000$.
-   **Application (f)** : l'application qui associe à chaque personne son nombre de cheveux.

Puisque $|E| > |F|$ ($1\,000\,000 > 500\,000$), il existe au moins un nombre $k$ de cheveux tel que deux personnes au moins ont $k$ cheveux.

**Exemple 3 (du cours)**

Soit $A$ un sous-ensemble de $\llbracket 2n \rrbracket$ de taille $n+1$. Montrer qu'il existe deux nombres $a, b \in A$ distincts tels que $a$ divise $b$.

-   **Objets (E)** : les $n+1$ nombres de l'ensemble $A$. $|E| = n+1$.
-   **Tiroirs (F)** : les nombres impairs dans $\llbracket 2n \rrbracket$. Il y en a $n$ (ce sont $1, 3, 5, \dots, 2n-1$). $|F|=n$.
-   **Application (f)** : Tout entier $x \in A$ peut s'écrire de manière unique sous la forme $x = 2^k \cdot v$, où $v$ est un nombre impair. L'application $f$ associe à chaque $x \in A$ sa partie impaire $v$.

Puisque $|A| = n+1$ et qu'il y a seulement $n$ parties impaires possibles, le principe des tiroirs nous dit qu'il existe au moins deux nombres dans $A$, disons $a$ et $b$, qui ont la même partie impaire.

Soient $a = 2^{u_i} \cdot v$ et $b = 2^{u_j} \cdot v$. Comme $a \ne b$, on a $u_i \ne u_j$. Supposons $u_i < u_j$. Alors $b = 2^{u_j} \cdot v = 2^{u_j - u_i} \cdot (2^{u_i} \cdot v) = 2^{u_j - u_i} \cdot a$. Comme $u_j - u_i$ est un entier positif, $a$ divise $b$.

### Contre-exemples

**Contre-exemple 1**

On range 10 paires de chaussettes dans 12 tiroirs. Peut-on affirmer qu'un tiroir contient au moins deux paires ?

Non. Ici $|E|=10$ (objets) et $|F|=12$ (tiroirs). Comme $|E| \le |F|$, le principe des tiroirs ne s'applique pas. On peut tout à fait mettre une seule paire par tiroir dans 10 tiroirs différents, et laisser 2 tiroirs vides.

**Contre-exemple 2**

Parmi 5 personnes, peut-on affirmer que deux d'entre elles ont leur anniversaire un lundi ?

Non. Les objets sont les 5 personnes, $|E|=5$. Les tiroirs sont les 7 jours de la semaine, $|F|=7$. Le principe ne garantit rien. Il se pourrait que les anniversaires tombent mardi, mercredi, jeudi, vendredi et samedi.

### Concepts Connexes

-   **Injection**: Le principe des tiroirs est une reformulation de la condition nécessaire pour l'existence d'une injection entre ensembles finis.
-   **Preuves d'existence**: C'est un outil fondamental en mathématiques discrètes pour prouver l'existence d'objets sans avoir à les construire.

---

## Concept 4: Principe d'addition

### Prérequis

-   Cardinal d'un ensemble fini (Concept 1).
-   Opérations sur les ensembles : union ($\cup$) et intersection ($\cap$).
-   Notion d'ensembles disjoints ($E \cap F = \emptyset$).

### Définition

1.  **Cas de base (ensembles disjoints)** : Si $E$ et $F$ sont deux ensembles finis **disjoints** (c'est-à-dire $E \cap F = \emptyset$), alors leur union $E \cup F$ est finie et son cardinal est la somme de leurs cardinaux.

    $$ |E \cup F| = |E| + |F| $$

2.  **Généralisation (ensembles non-disjoints)** : Si $E$ et $F$ sont deux ensembles finis quelconques, alors leur union $E \cup F$ est finie et son cardinal est donné par la formule :

    $$ |E \cup F| = |E| + |F| - |E \cap F| $$

    Cette formule est aussi connue sous le nom de **formule du crible de Poincaré** pour deux ensembles.

### Explications Détaillées

Le principe d'addition est la formalisation de l'idée simple que si l'on a deux collections d'objets sans aucun objet en commun, le nombre total d'objets est simplement la somme des nombres d'objets dans chaque collection. C'est le "ou" logique en dénombrement : compter les objets qui sont dans $E$ *ou* dans $F$.

Lorsque les ensembles ne sont pas disjoints, certains éléments appartiennent à la fois à $E$ et à $F$ (ils sont dans l'intersection $E \cap F$). Si on calcule simplement $|E| + |F|$, on compte ces éléments en double (une fois car ils sont dans $E$, une autre fois car ils sont dans $F$). Pour corriger ce double comptage, il faut soustraire une fois le nombre d'éléments qu'ils ont en commun, c'est-à-dire $|E \cap F|$.

### Propriétés Clés

-   **Généralisation à n ensembles disjoints**: Si $E_1, E_2, \dots, E_n$ sont des ensembles finis deux à deux disjoints (c'est-à-dire $E_i \cap E_j = \emptyset$ pour tout $i \ne j$), alors :

    $$ \left|\bigcup_{i=1}^n E_i\right| = \sum_{i=1}^n |E_i| $$

-   **Partition**: Si un ensemble $E$ est partitionné en sous-ensembles $E_1, \dots, E_n$, alors $|E| = \sum_{i=1}^n |E_i|$.
-   **Cardinal du complémentaire**: Si $A \subseteq E$, alors $|E \setminus A| = |E| - |A|$.

### Exemples Détaillés

**Exemple 1 (disjoint)**

Un restaurant propose 5 plats de viande et 3 plats de poisson. Combien de choix de plats principaux y a-t-il ?

-   Soit $V$ l'ensemble des plats de viande, $|V|=5$.
-   Soit $P$ l'ensemble des plats de poisson, $|P|=3$.
-   Les ensembles $V$ et $P$ sont disjoints (un plat n'est pas à la fois de la viande et du poisson).

Le nombre total de choix est $|V \cup P| = |V| + |P| = 5 + 3 = 8$.

**Exemple 2 (non-disjoint)**

Dans une classe de 30 élèves, 15 aiment le football, 20 aiment le basketball, et 8 aiment les deux. Combien d'élèves aiment au moins un de ces deux sports ?

-   Soit $E$ la classe, $|E|=30$.
-   Soit $F$ l'ensemble des élèves qui aiment le football, $|F|=15$.
-   Soit $B$ l'ensemble des élèves qui aiment le basketball, $|B|=20$.
-   L'ensemble des élèves qui aiment les deux est $F \cap B$, et $|F \cap B|=8$.

Le nombre d'élèves qui aiment au moins un des deux sports est $|F \cup B|$. Les ensembles ne sont pas disjoints. On utilise la formule générale :

$|F \cup B| = |F| + |B| - |F \cap B| = 15 + 20 - 8 = 27$.

Il y a donc 27 élèves qui aiment au moins un de ces sports. (Et $30-27=3$ élèves qui n'aiment ni l'un ni l'autre).

**Exemple 3**

Combien de nombres entre 1 et 100 sont divisibles par 2 ou par 3 ?

-   Soit $A$ l'ensemble des nombres entre 1 et 100 divisibles par 2. $|A| = \lfloor 100/2 \rfloor = 50$.
-   Soit $B$ l'ensemble des nombres entre 1 et 100 divisibles par 3. $|B| = \lfloor 100/3 \rfloor = 33$.
-   Les ensembles ne sont pas disjoints. Les nombres qui sont dans $A \cap B$ sont ceux qui sont divisibles par 2 ET par 3, donc par 6. $|A \cap B| = \lfloor 100/6 \rfloor = 16$.

Le nombre total est :

$|A \cup B| = |A| + |B| - |A \cap B| = 50 + 33 - 16 = 67$.

### Contre-exemples

**Contre-exemple 1**

Une erreur fréquente est d'appliquer la formule simple à des ensembles non-disjoints. Dans l'Exemple 2, si on avait calculé $15+20=35$, on aurait obtenu un nombre d'élèves supérieur au total de la classe, ce qui est absurde. C'est parce que les 8 élèves qui aiment les deux sports ont été comptés deux fois.

**Contre-exemple 2**

On veut compter le nombre de lettres dans le mot "INFORMATIQUE".

Soit $E_1 = \{I, N, F, O, R, M\}$ et $E_2 = \{A, T, I, Q, U, E\}$.

$|E_1| = 6$, $|E_2|=6$.

Si on calcule $|E_1|+|E_2| = 12$, on se trompe. Le mot a 11 lettres uniques. L'erreur vient du fait que $E_1 \cap E_2 = \{I\}$. La bonne manière est de trouver l'union : $E_1 \cup E_2 = \{I, N, F, O, R, M, A, T, Q, U, E\}$.

En utilisant la formule : $|E_1 \cup E_2| = |E_1| + |E_2| - |E_1 \cap E_2| = 6 + 6 - 1 = 11$.

### Concepts Connexes

-   **Principe d'inclusion-exclusion**: La formule $|E \cup F| = |E| + |F| - |E \cap F|$ est le cas $n=2$ du principe d'inclusion-exclusion, qui généralise la formule à l'union de $n$ ensembles.
-   **Partition d'un ensemble**: Le cas des ensembles disjoints est fondamental pour le dénombrement sur des partitions.

---

## Concept 5: Principe des bergers

### Prérequis

-   Cardinal d'un ensemble fini (Concept 1).
-   Applications (fonctions) entre ensembles.
-   Principe d'addition.
-   Notion d'image réciproque (ou préimage) $f^{-1}(\{y\})$.

### Définition

Soient $E$ et $F$ deux ensembles finis et $f: E \to F$ une application.

S'il existe un entier $p > 0$ tel que la préimage de chaque élément de $F$ a le même cardinal $p$, c'est-à-dire :

$$ \forall y \in F, \quad |f^{-1}(\{y\})| = p $$

Alors, le cardinal de $E$ est donné par le produit du cardinal de $F$ et de $p$ :

$$ |E| = p \cdot |F| $$

### Explications Détaillées

Le nom de ce principe vient de l'analogie suivante : un berger veut compter ses moutons. Au lieu de compter les moutons un par un (ce qui est difficile car ils bougent), il peut compter le nombre de pattes et diviser par 4.

-   **Les "pattes"** sont les éléments de l'ensemble de départ $E$.
-   **Les "moutons"** sont les éléments de l'ensemble d'arrivée $F$.
-   **L'application $f: E \to F$** est la fonction qui associe à chaque patte le mouton auquel elle appartient.
-   **La condition principale** est que chaque mouton a le même nombre de pattes, ici $p=4$. Donc, pour chaque mouton $y \in F$, la préimage $f^{-1}(\{y\})$ (l'ensemble des pattes de ce mouton) a un cardinal de 4.

Le principe des bergers est donc une méthode de dénombrement indirect. On compte un ensemble $E$ en le reliant à un autre ensemble $F$ plus simple à compter, via une application $f$ qui est "régulière" (chaque élément de l'arrivée a le même nombre d'antécédents). C'est une situation de "plusieurs-vers-un".

### Propriétés Clés

-   **Partition**: L'ensemble des préimages $\{f^{-1}(\{y\}) \mid y \in F\}$ forme une partition de l'ensemble de départ $E$. La formule découle directement du principe d'addition sur cette partition. $|E| = \sum_{y \in F} |f^{-1}(\{y\})| = \sum_{y \in F} p = p \cdot |F|$.
-   **Surjectivité**: Si le principe s'applique avec $p \ge 1$, alors l'application $f$ est nécessairement surjective (puisque chaque $y \in F$ a au moins un antécédent).

### Exemples Détaillés

**Exemple 1**

Dans une classe, il y a 15 bancs de 2 places. Tous les bancs sont pleins. Combien y a-t-il d'élèves ?

-   **Ensemble E**: l'ensemble des élèves. On cherche $|E|$.
-   **Ensemble F**: l'ensemble des bancs. $|F|=15$.
-   **Application f**: $f: E \to F$ qui à chaque élève associe le banc sur lequel il est assis.
-   **Condition**: Chaque banc a exactement 2 élèves. Donc, pour tout banc $y \in F$, $|f^{-1}(\{y\})|=2$. On a $p=2$.

D'après le principe des bergers, $|E| = p \cdot |F| = 2 \cdot 15 = 30$.

**Exemple 2**

Combien y a-t-il de couples $(x,y)$ où $x \in E$ et $y \in F$, avec $|E|=n$ et $|F|=m$ ? C'est le cardinal du produit cartésien $E \times F$.

-   **Ensemble de départ**: $E \times F$. On cherche $|E \times F|$.
-   **Ensemble d'arrivée**: $F$. On sait que $|F|=m$.
-   **Application**: La projection sur la deuxième coordonnée, $f: E \times F \to F$ définie par $f(x,y) = y$.
-   **Condition**: Pour un $y_0 \in F$ fixé, quels sont ses antécédents ? Ce sont tous les couples $(x, y_0)$ où $x$ peut être n'importe quel élément de $E$. Il y a donc $|E|=n$ tels couples. Donc, $|f^{-1}(\{y_0\})| = n$ pour tout $y_0 \in F$. On a $p=n$.

Le principe des bergers nous donne $|E \times F| = n \cdot m = |E| \cdot |F|$. C'est la démonstration du principe de multiplication.

**Exemple 3**

On veut arranger 12 personnes autour de 3 tables rondes identiques de 4 personnes chacune. On ne s'intéresse qu'à la composition des groupes à chaque table. Combien y a-t-il de façons de former ces 3 groupes ?

Ce problème est complexe. Mais utilisons le principe des bergers à l'envers.

- Soit $E$ l'ensemble des permutations des 12 personnes. $|E|=12!$. C'est l'ensemble des alignements des 12 personnes.
- Soit $F$ l'ensemble des répartitions en 3 groupes de 4. On cherche $|F|$.
- L'application $f:E \to F$ associe à une permutation (un alignement) une répartition en groupes : les 4 premières personnes forment le groupe 1, les 4 suivantes le groupe 2, les 4 dernières le groupe 3.
- Combien de permutations donnent la même répartition ?
  - Pour une répartition donnée $\{G_1, G_2, G_3\}$, on peut permuter les 4 personnes au sein de $G_1$ de $4!$ façons.
  - On peut permuter les 4 personnes au sein de $G_2$ de $4!$ façons.
  - On peut permuter les 4 personnes au sein de $G_3$ de $4!$ façons.
  - On peut permuter les 3 groupes entre eux de $3!$ façons (car les tables sont identiques).

  Le nombre d'antécédents est donc $p = (4!)^3 \cdot 3!$.

Par le principe des bergers, $|E| = p \cdot |F|$, donc $|F| = |E|/p = \frac{12!}{(4!)^3 \cdot 3!}$.

### Contre-exemples

**Contre-exemple 1**

On a 10 étudiants et on les répartit dans 3 salles. La salle A contient 5 étudiants, la salle B en contient 3, et la salle C en contient 2. Peut-on utiliser le principe des bergers pour trouver le nombre total d'étudiants ?

- $E$ : ensemble des étudiants.
- $F$ : ensemble des salles, $|F|=3$.
- $f$ : l'application qui assigne un étudiant à sa salle.

Ici, $|f^{-1}(\{A\})|=5$, $|f^{-1}(\{B\})|=3$, $|f^{-1}(\{C\})|=2$. Le nombre d'antécédents n'est pas constant. On ne peut pas appliquer le principe des bergers. On doit utiliser le principe d'addition : $|E|=5+3+2=10$.

**Contre-exemple 2**

On a un paquet de 52 cartes. On distribue 5 cartes à un joueur. Peut-on compter le nombre de mains possibles avec le principe des bergers ? Le principe seul n'est pas directement applicable de manière simple, car la structure de l'application n'est pas évidente. Il est plus simple d'utiliser d'autres techniques (combinaisons).

### Concepts Connexes

-   **Principe de multiplication**: C'est un cas particulier et une conséquence directe du principe des bergers.
-   **Quotient d'ensemble**: Le principe des bergers est souvent utilisé pour compter des ensembles d'orbites sous l'action d'un groupe (par exemple, compter des colliers de perles à rotation près).

---

## Concept 6: Principe de multiplication

### Prérequis

-   Cardinal d'un ensemble fini (Concept 1).
-   Produit cartésien d'ensembles ($E_1 \times E_2$).

### Définition

Si $E_1, E_2, \dots, E_n$ sont des ensembles finis, alors le cardinal de leur produit cartésien est le produit de leurs cardinaux.

$$ |E_1 \times E_2 \times \cdots \times E_n| = |E_1| \cdot |E_2| \cdot \cdots \cdot |E_n| $$

Pour deux ensembles, on a : $|E \times F| = |E| \cdot |F|$.

### Explications Détaillées

Ce principe s'applique lorsqu'on doit faire une suite de choix indépendants. Pour construire un élément du produit cartésien $(e_1, e_2, \dots, e_n)$, on doit :

1.  Choisir un élément $e_1$ dans $E_1$. On a $|E_1|$ possibilités.
2.  Puis, pour *chacun* de ces choix, choisir un élément $e_2$ dans $E_2$. On a $|E_2|$ possibilités.
3.  Et ainsi de suite jusqu'à choisir un élément $e_n$ dans $E_n$, pour lequel on a $|E_n|$ possibilités.

Le nombre total de séquences de choix possibles (et donc d'éléments dans le produit cartésien) est la multiplication du nombre de possibilités à chaque étape. On peut visualiser cela avec un **arbre de décision** : à la racine, on a $|E_1|$ branches. De chaque nœud suivant, partent $|E_2|$ branches, etc. Le nombre total de feuilles de l'arbre est le produit des nombres de branches à chaque niveau.

### Propriétés Clés

-   **Puissance cartésienne**: Un cas particulier important est le cardinal de $E^n = E \times \cdots \times E$ ($n$ fois). On a $|E^n| = |E|^n$.
-   **Indépendance des choix**: Le principe suppose que le nombre de choix à une étape ne dépend pas du choix fait aux étapes précédentes.

### Exemples Détaillés

**Exemple 1**

Un menu de restaurant est composé d'une entrée, un plat et un dessert. Il y a 3 choix d'entrées ($E$), 4 choix de plats ($P$) et 2 choix de desserts ($D$). Combien de menus différents peut-on composer ?

Un menu est un triplet (entrée, plat, dessert), c'est-à-dire un élément de $E \times P \times D$.

$|E|=3, |P|=4, |D|=2$.

Le nombre total de menus est $|E \times P \times D| = |E| \cdot |P| \cdot |D| = 3 \cdot 4 \cdot 2 = 24$.

**Exemple 2 (du cours)**

Combien de mots de 5 lettres peut-on former avec un alphabet de 26 lettres ?

Un "mot" de 5 lettres est une séquence de 5 lettres, c'est-à-dire un 5-uplet, un élément de $A^5$ où $A$ est l'alphabet.

$|A|=26$.

Le nombre de mots est $|A^5| = |A|^5 = 26^5 = 11\,881\,376$.

**Exemple 3**

Combien de nombres entiers positifs ont exactement 3 chiffres (en base 10) ?

Un nombre à 3 chiffres est de la forme $c_1 c_2 c_3$.

-   Le premier chiffre, $c_1$, ne peut pas être 0. Il y a donc 9 choix : $\{1, 2, \dots, 9\}$.
-   Le deuxième chiffre, $c_2$, peut être n'importe quel chiffre. Il y a 10 choix : $\{0, 1, \dots, 9\}$.
-   Le troisième chiffre, $c_3$, peut aussi être n'importe quel chiffre. Il y a 10 choix.

Le nombre total est le produit des possibilités : $9 \cdot 10 \cdot 10 = 900$.

### Contre-exemples

**Contre-exemple 1**

On veut former un comité de 2 personnes à partir d'un groupe de 4 personnes {A, B, C, D}.

Une erreur serait de dire : "Je choisis la première personne (4 choix), puis la seconde (3 choix), donc $4 \cdot 3 = 12$ comités".

Ce raisonnement compte les paires ordonnées (A,B) et (B,A) comme étant différentes. Or, le comité {A,B} est le même que le comité {B,A}. Les choix ne sont pas simplement une séquence. Ici, le principe de multiplication ne s'applique pas directement car l'ordre n'importe pas. On a surcompté par un facteur de 2. Le bon résultat est $(4 \cdot 3)/2 = 6$.

**Contre-exemple 2**

On veut former un mot de 3 lettres distinctes avec l'alphabet {a, b, c, d}.

- Choix 1 : 4 possibilités.
- Choix 2 : 3 possibilités (car la lettre doit être différente de la première).
- Choix 3 : 2 possibilités.

Total : $4 \cdot 3 \cdot 2 = 24$.

Ici, les choix sont dépendants : le nombre de possibilités à l'étape 2 dépend du choix fait à l'étape 1. Cependant, le *nombre* de possibilités reste le même (3) quel que soit le premier choix. Le principe de multiplication s'applique donc dans cette forme modifiée. Le contre-exemple serait de l'appliquer naïvement : $4 \times 4 \times 4$ serait faux car cela ne respecterait pas la contrainte "lettres distinctes".

### Concepts Connexes

-   **Arrangements et Permutations**: Le dénombrement des arrangements (listes ordonnées sans répétition) est une application directe du principe de multiplication avec des choix dépendants.
-   **Principe des bergers**: Le principe de multiplication peut être vu comme une conséquence du principe des bergers.

---

## Concept 7: Équipotence et Ensembles Infinis Dénombrables

### Prérequis

-   Notion d'ensemble infini.
-   Maîtrise de la bijection.
-   Connaissance des ensembles de nombres $\mathbb{N}, \mathbb{Z}, \mathbb{Q}$.

### Définition

-   **Équipotence**: Deux ensembles $E$ et $F$ (finis ou infinis) sont dits **équipotents** s'il existe une bijection entre eux. On peut penser à l'équipotence comme le fait d'avoir "la même taille" ou le "même cardinal", même pour des ensembles infinis.

-   **Ensemble infini dénombrable**: Un ensemble $E$ est dit **dénombrable** s'il est équipotent à l'ensemble des entiers naturels $\mathbb{N}$. Autrement dit, s'il existe une bijection $f: \mathbb{N} \to E$.

### Explications Détaillées

Quand on passe aux ensembles infinis, on ne peut plus parler de "nombre d'éléments" avec un entier. La notion de bijection nous permet de comparer les "tailles" des infinis.

Un ensemble est dénombrable si on peut "lister" ou "énumérer" tous ses éléments, un par un, dans une séquence infinie. La bijection $f: \mathbb{N} \to E$ fournit cette liste : le premier élément est $f(0)$, le deuxième $f(1)$, le troisième $f(2)$, et ainsi de suite. Cette liste doit contenir chaque élément de $E$ exactement une fois.

De manière surprenante, un ensemble infini peut être en bijection avec une de ses parties propres. Par exemple, $\mathbb{N}$ est en bijection avec l'ensemble des nombres pairs $2\mathbb{N}=\{0, 2, 4, ...\}$, qui est pourtant un sous-ensemble strict de $\mathbb{N}$. C'est une caractéristique des ensembles infinis.

### Propriétés Clés

-   **Théorème de Cantor-Bernstein**: Si il existe une injection de $E$ dans $F$ et une injection de $F$ dans $E$, alors $E$ et $F$ sont équipotents. C'est un outil très puissant pour prouver l'équipotence sans construire explicitement une bijection.
-   Tout sous-ensemble d'un ensemble dénombrable est soit fini, soit dénombrable. (Corollaire 1.28)
-   Le produit cartésien de deux ensembles dénombrables est dénombrable.
-   Une union dénombrable d'ensembles dénombrables est dénombrable.

### Exemples Détaillés

**Exemple 1 : L'ensemble des entiers relatifs $\mathbb{Z}$ est dénombrable.**

On doit trouver une bijection de $\mathbb{N}$ vers $\mathbb{Z}$. On peut "énumérer" les éléments de $\mathbb{Z}$ en alternant entre positifs et négatifs :

$0, 1, -1, 2, -2, 3, -3, \dots$

La bijection formelle $f: \mathbb{N} \to \mathbb{Z}$ est :

$$ f(n) = \begin{cases} n/2 & \text{si } n \text{ est pair} \\ -(n+1)/2 & \text{si } n \text{ est impair} \end{cases} $$

Vérifions : $f(0)=0, f(1)=-1, f(2)=1, f(3)=-2, f(4)=2, \dots$. Cette application est bien une bijection, donc $\mathbb{Z}$ est dénombrable.

**Exemple 2 : L'ensemble $\mathbb{N} \times \mathbb{N}$ est dénombrable.**

Cela peut sembler contre-intuitif car $\mathbb{N} \times \mathbb{N}$ ressemble à un plan infini. On peut énumérer les paires $(x,y)$ en suivant des diagonales :

(0,0), (1,0), (0,1), (2,0), (1,1), (0,2), (3,0), ...

Une bijection formelle est $g: \mathbb{N} \times \mathbb{N} \to \mathbb{N}$ donnée par $g(x,y) = \frac{(x+y)(x+y+1)}{2} + y$.

Puisque $\mathbb{N} \times \mathbb{N}$ est en bijection avec $\mathbb{N}$, il est dénombrable.

**Exemple 3 : L'ensemble des nombres rationnels $\mathbb{Q}$ est dénombrable.**

On peut montrer qu'il y a une injection de $\mathbb{Q}$ dans $\mathbb{Z} \times \mathbb{N}^*$. À chaque rationnel $p/q$ (forme irréductible, $q>0$), on associe le couple $(p,q)$. Comme $\mathbb{Z}$ et $\mathbb{N}^*$ sont dénombrables, leur produit cartésien l'est aussi. Donc on a une injection de $\mathbb{Q}$ dans un ensemble dénombrable.

D'autre part, $\mathbb{N}$ s'injecte dans $\mathbb{Q}$ (par $n \mapsto n/1$).

Par le théorème de Cantor-Bernstein, comme il y a une injection de $\mathbb{Q}$ dans $\mathbb{N} \times \mathbb{N}$ et une injection de $\mathbb{N}$ (et donc de $\mathbb{N} \times \mathbb{N}$) dans $\mathbb{Q}$, $\mathbb{Q}$ est équipotent à $\mathbb{N}$ et est donc dénombrable.

### Contre-exemples

**Contre-exemple 1**

L'ensemble des nombres réels $\mathbb{R}$ n'est pas dénombrable. On ne peut pas créer une liste infinie qui contiendrait tous les nombres réels. L'infini de $\mathbb{R}$ est "plus grand" que celui de $\mathbb{N}$.

**Contre-exemple 2**

L'ensemble $P(\mathbb{N})$ des parties de $\mathbb{N}$ n'est pas dénombrable. Il y a "plus" de sous-ensembles d'entiers qu'il n'y a d'entiers. C'est une conséquence du Théorème de Cantor.

### Concepts Connexes

-   **Cardinalité**: L'équipotence est la relation d'équivalence qui définit la notion de cardinalité (taille) pour tous les ensembles. Les ensembles dénombrables ont le cardinal $\aleph_0$ (aleph-zéro).
-   **Ensembles non dénombrables**: Le concept suivant qui explore les infinis "plus grands".

---

## Concept 8: Ensembles non dénombrables

### Prérequis

-   Ensembles infinis dénombrables (Concept 7).
-   Maîtrise des notions de surjection et de bijection.
-   Ensemble des parties $P(E)$.

### Définition

Un ensemble infini est dit **non dénombrable** (ou indénombrable) s'il n'est pas dénombrable. Cela signifie qu'il n'existe **aucune** bijection entre cet ensemble et l'ensemble des entiers naturels $\mathbb{N}$.

Un résultat fondamental est le **Théorème de Cantor**.

**Théorème de Cantor**: Pour tout ensemble $E$, il n'existe pas de surjection de $E$ dans son ensemble des parties $P(E)$. En particulier, $E$ et $P(E)$ ne sont pas équipotents.

### Explications Détaillées

Ce concept introduit l'idée qu'il existe différentes "tailles" d'infini. L'infini dénombrable ($\mathbb{N}, \mathbb{Z}, \mathbb{Q}$) est le "plus petit" des infinis. Il existe des ensembles infiniment plus grands, qu'on ne peut pas mettre en correspondance un-pour-un avec les entiers.

La preuve du théorème de Cantor est un exemple magnifique de raisonnement par l'absurde, connu sous le nom d'**argument diagonal de Cantor**. Pour montrer qu'aucune fonction $f: E \to P(E)$ ne peut être surjective, on construit un élément "diabolique" dans $P(E)$ qui ne peut pas être l'image d'aucun élément de $E$.

Soit une fonction $f: E \to P(E)$. Pour chaque $x \in E$, $f(x)$ est un sous-ensemble de $E$. On se demande si $x$ appartient à son propre image, $f(x)$.

Construisons l'ensemble $A = \{x \in E \mid x \notin f(x)\}$. Cet ensemble $A$ est un sous-ensemble de $E$, donc $A \in P(E)$.

La question est : existe-t-il un $y \in E$ tel que $f(y) = A$ ?

-   Si un tel $y$ existe, alors soit $y \in A$, soit $y \notin A$.
-   **Cas 1**: Supposons $y \in A$. Par définition de $A$, cela signifie que $y \notin f(y)$. Mais comme $f(y)=A$, cela veut dire $y \notin A$. C'est une contradiction.
-   **Cas 2**: Supposons $y \notin A$. Par définition de $A$, cela signifie que $y$ ne vérifie pas la condition pour être dans $A$, donc la condition $y \notin f(y)$ est fausse. Cela veut dire que $y \in f(y)$. Mais comme $f(y)=A$, cela signifie $y \in A$. C'est aussi une contradiction.

Dans tous les cas, on arrive à une contradiction. L'hypothèse de départ (qu'il existe un $y$ tel que $f(y)=A$) doit être fausse. Donc, l'ensemble $A$ n'est l'image d'aucun élément de $E$. L'application $f$ n'est pas surjective. Comme cela est vrai pour n'importe quelle application $f$, il n'existe aucune surjection (et donc aucune bijection) de $E$ vers $P(E)$.

### Propriétés Clés

-   **Hiérarchie des infinis**: Le théorème de Cantor implique qu'il existe une hiérarchie infinie de cardinaux. $|E| < |P(E)| < |P(P(E))| < \dots$.
-   **L'ensemble des réels $\mathbb{R}$ est non dénombrable**: On peut montrer que $\mathbb{R}$ est équipotent à $P(\mathbb{N})$. Comme $P(\mathbb{N})$ n'est pas dénombrable, $\mathbb{R}$ ne l'est pas non plus. Le cardinal de $\mathbb{R}$ est appelé la **puissance du continu**.

### Exemples Détaillés

**Exemple 1 : L'ensemble $P(\mathbb{N})$ n'est pas dénombrable.**

C'est une application directe du théorème de Cantor avec $E=\mathbb{N}$. Il nous dit qu'il n'y a pas de bijection entre $\mathbb{N}$ et $P(\mathbb{N})$. Donc, par définition, $P(\mathbb{N})$ n'est pas dénombrable.

**Exemple 2 : L'ensemble des nombres réels dans l'intervalle $[0, 1]$ n'est pas dénombrable.**

La preuve classique utilise aussi un argument diagonal. Supposons que cet ensemble soit dénombrable. On pourrait alors lister tous ses éléments (en écriture décimale) :

$r_0 = 0.d_{00} d_{01} d_{02} \dots$

$r_1 = 0.d_{10} d_{11} d_{12} \dots$

$r_2 = 0.d_{20} d_{21} d_{22} \dots$

...

On construit un nouveau nombre $x = 0.c_0 c_1 c_2 \dots$ qui n'est pas dans la liste. Pour chaque $i$, on choisit le chiffre $c_i$ pour qu'il soit différent de $d_{ii}$. Par exemple, $c_i = (d_{ii} + 1) \pmod{10}$.

Ce nombre $x$ est différent de $r_0$ (car leur 1er chiffre diffère), différent de $r_1$ (car leur 2ème chiffre diffère), et ainsi de suite. Le nombre $x$ est différent de tous les nombres de la liste.

La liste était donc incomplète, ce qui contredit l'hypothèse qu'elle contenait tous les réels de $[0,1]$. L'ensemble n'est donc pas dénombrable.

**Exemple 3 : L'ensemble de toutes les fonctions de $\mathbb{N}$ vers $\{0, 1\}$ est non dénombrable.**

Cet ensemble, noté $\{0, 1\}^{\mathbb{N}}$, est en bijection avec $P(\mathbb{N})$. La bijection associe à un sous-ensemble $A \subseteq \mathbb{N}$ sa fonction caractéristique $\chi_A: \mathbb{N} \to \{0,1\}$, où $\chi_A(n)=1$ si $n \in A$ et $\chi_A(n)=0$ si $n \notin A$.

Puisqu'il existe une bijection entre cet ensemble de fonctions et $P(\mathbb{N})$, et que $P(\mathbb{N})$ est non dénombrable, l'ensemble des fonctions de $\mathbb{N}$ vers $\{0,1\}$ est aussi non dénombrable.

### Contre-exemples

**Contre-exemple 1**

L'ensemble $\mathbb{Q}$ des nombres rationnels est un contre-exemple à l'intuition que "entre deux nombres, il y en a une infinité d'autres" implique la non-dénombrabilité. $\mathbb{Q}$ est dense dans $\mathbb{R}$ mais il est dénombrable.

**Contre-exemple 2**

L'ensemble de tous les sous-ensembles *finis* de $\mathbb{N}$ est dénombrable. Bien que $P(\mathbb{N})$ soit non dénombrable, si on se restreint à ses éléments qui sont des ensembles finis, l'ensemble résultant redevient "petit" et peut être énuméré.

### Concepts Connexes

-   **Hypothèse du continu**: Une célèbre conjecture (dont on a montré qu'elle était indécidable dans le système d'axiomes usuel ZFC) qui postule qu'il n'existe pas d'ensemble dont le cardinal est strictement compris entre celui de $\mathbb{N}$ et celui de $\mathbb{R}$.
-   **Théorie des ensembles de Zermelo-Fraenkel**: Le cadre axiomatique formel dans lequel ces notions de cardinalité sont définies et étudiées.
