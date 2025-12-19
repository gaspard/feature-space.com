---
id: 8a522280
type: concepts
order: 10
title: Principe d'inclusion-exclusion - concepts (A)
tags:
  - combinatoire
  - inclusion-exclusion
  - dénombrement
  - surjections
  - dérangements
  - formule du crible
course: Graphes et Combinatoire
courseId: 7027276b
chapter: Principe d'inclusion-exclusion
chapterId: e535f58d
level: regular
createdAt: '2025-12-16T17:04:57.312Z'
---
# Principe d'inclusion-exclusion (A)

---

## Concept 1 : Le Principe d'Inclusion-Exclusion (Forme de la Réunion)

### Prérequis

- **Théorie des ensembles :** Réunion ($\cup$), Intersection ($\cap$), Ensembles finis, Ensembles disjoints.
- **Dénombrement :** Cardinal d'un ensemble (noté $|A|$), Principe d'addition.
- **Notations :** Sommes indéxées ($\sum$), ensemble d'indices $\llbracket n \rrbracket = \{1, \dots, n\}$.

### Définition

Le **Principe d'Inclusion-Exclusion** (ou formule du crible) permet de calculer le cardinal de la réunion de plusieurs ensembles finis qui ne sont pas nécessairement disjoints.

Soient $A_1, A_2, \ldots, A_n$ des ensembles finis. Le cardinal de leur réunion est donné par la somme alternée des cardinaux de toutes les intersections possibles de ces ensembles :

$$ \left|\bigcup_{i=1}^n A_i\right| = \sum_{\emptyset \neq I \subseteq \llbracket n \rrbracket} (-1)^{|I|+1} \left|\bigcap_{i \in I} A_i\right| $$

Pour bien comprendre cette formule, on peut l'écrire en développant les termes par taille d'intersection :

1. On **ajoute** les cardinaux des ensembles individuels ($|A_i|$).
2. On **soustrait** les cardinaux des intersections de paires ($|A_i \cap A_j|$).
3. On **ajoute** les cardinaux des intersections de triplets ($|A_i \cap A_j \cap A_k|$).
4. On continue ainsi en alternant les signes jusqu'à l'intersection de tous les ensembles.

### Explications Détaillées

L'idée intuitive est de corriger le comptage excessif.

- Si on calcule simplement $|A_1| + |A_2|$, on compte deux fois les éléments qui sont dans $A_1 \cap A_2$. Il faut donc soustraire $|A_1 \cap A_2|$ une fois pour que ces éléments ne soient comptés qu'une seule fois.
- Avec trois ensembles, en soustrayant les intersections deux à deux, on finit par retirer trop de fois les éléments communs aux trois ensembles (qui ont été ajoutés 3 fois, puis retirés 3 fois, total = 0). Il faut donc rajouter $|A_1 \cap A_2 \cap A_3|$.

### Propriétés Clés

- **Alternance des signes :** Les termes correspondant à un nombre impair d'ensembles sont ajoutés ($+$), ceux correspondant à un nombre pair sont soustraits ($-$).
- **Généralisation :** Ce principe généralise la formule $|A \cup B| = |A| + |B| - |A \cap B|$.
- **Condition de validité :** Les ensembles doivent être finis.

### Exemples

**Exemple 1 : Cas simple pour deux ensembles**

Soient $A$ l'ensemble des étudiants jouant au football et $B$ l'ensemble des étudiants jouant au tennis.

On sait que $|A| = 20$, $|B| = 15$ et que 5 étudiants pratiquent les deux sports ($|A \cap B| = 5$).

Le nombre total d'étudiants pratiquant au moins un sport est :

$$ |A \cup B| = |A| + |B| - |A \cap B| = 20 + 15 - 5 = 30 $$

**Exemple 2 : Cas pour trois ensembles**

Pour trois ensembles $A_1, A_2, A_3$, la formule développée est :

$$ |A_1 \cup A_2 \cup A_3| = (|A_1| + |A_2| + |A_3|) - (|A_1 \cap A_2| + |A_1 \cap A_3| + |A_2 \cap A_3|) + |A_1 \cap A_2 \cap A_3| $$

Si $|A_1|=10, |A_2|=10, |A_3|=10$, que toutes les intersections par paires valent 3 ($|A_i \cap A_j|=3$) et l'intersection triple vaut 1 ($|\cap A_i|=1$) :

$$ |A_1 \cup A_2 \cup A_3| = (10+10+10) - (3+3+3) + 1 = 30 - 9 + 1 = 22 $$

**Exemple 3 : Divisibilité**

Combien d'entiers dans l'ensemble $E = \{1, \dots, 30\}$ sont divisibles par 2, 3 ou 5 ?

Soient $A_2, A_3, A_5$ les ensembles des multiples respectifs.

- $|A_2| = 15, |A_3| = 10, |A_5| = 6$.
- $|A_2 \cap A_3| = |A_6| = 5$.
- $|A_2 \cap A_5| = |A_{10}| = 3$.
- $|A_3 \cap A_5| = |A_{15}| = 2$.
- $|A_2 \cap A_3 \cap A_5| = |A_{30}| = 1$.

Application de la formule :

$$ |A_2 \cup A_3 \cup A_5| = (15 + 10 + 6) - (5 + 3 + 2) + 1 = 31 - 10 + 1 = 22 $$

Il y a 22 nombres divisibles par 2, 3 ou 5 dans cet intervalle.

### Contre-exemples

- **Somme simple :** Si on considère que $|A \cup B| = |A| + |B|$ sans vérifier que les ensembles sont disjoints, le résultat est faux dès qu'il y a une intersection non vide.
- **Signes incorrects :** Une erreur courante est de toujours soustraire les intersections, par exemple écrire $|A \cup B \cup C| = |A| + |B| + |C| - |A \cap B \cap C|$. C'est faux car cela ne gère pas les recouvrements partiels entre deux ensembles seulement.

### Concepts Liés

- **Principe d'addition :** Cas particulier où toutes les intersections sont vides.
- **Inégalités de Bonferroni :** Bornes obtenues en arrêtant la somme alternée à un certain rang.

## Applications

Utilisé en théorie des nombres (comptage de multiples), en probabilités (probabilité de l'union d'événements), et en combinatoire générale.

---

## Concept 2 : Le Principe d'Inclusion-Exclusion (Forme Complémentaire)

### Prérequis

- **Concept précédent :** Principe d'inclusion-exclusion (forme réunion).
- **Théorie des ensembles :** Complémentaire d'un ensemble ($\overline{A}$ ou $E \setminus A$), Lois de De Morgan.
- **Univers :** Un ensemble global $E$ contenant tous les sous-ensembles $A_i$.

### Définition

Cette forme du principe permet de compter le nombre d'éléments d'un ensemble fini $E$ qui n'appartiennent à **aucun** des sous-ensembles $A_1, \ldots, A_n$. C'est le cardinal du complémentaire de leur réunion.

Si $E$ est un ensemble fini contenant $A_1, \ldots, A_n$, alors :

$$ \left|\overline{\bigcup_{i=1}^n A_i}\right| = \left| \bigcap_{i=1}^n \overline{A_i} \right| = \sum_{I \subseteq \llbracket n \rrbracket} (-1)^{|I|} \left|\bigcap_{i \in I} A_i\right| $$

Avec la convention que pour $I = \emptyset$, l'intersection $\bigcap_{i \in \emptyset} A_i$ est l'ensemble univers $E$ tout entier.

### Explications Détaillées

Cette formule est souvent plus utile dans les problèmes pratiques. Elle répond à la question : "Combien d'objets ne possèdent aucune des propriétés $P_1, \dots, P_n$ ?".

On part du total ($|E|$), on retire ceux qui ont au moins une propriété, on rajoute ceux qui en ont deux, on retire ceux qui en ont trois, etc.

Formellement :

$$ \text{Total} - \sum |A_i| + \sum |A_i \cap A_j| - \sum |A_i \cap A_j \cap A_k| + \dots $$

### Propriétés Clés

- **Lien avec la réunion :** $| \overline{A} | = |E| - |A|$. Cette formule est simplement l'application de cette soustraction à la formule de la réunion.
- **Utilisation des fonctions caractéristiques :** La preuve repose souvent sur l'identité $\prod (1 - f_{A_i}(x))$ qui vaut 1 si $x$ n'est dans aucun $A_i$, et 0 sinon.

### Exemples

**Exemple 1 : Le problème des chapeaux (introduction)**

3 personnes laissent leur chapeau au vestiaire. Le vestiairiste rend les chapeaux au hasard. Combien de cas existent où **personne** ne reçoit son propre chapeau ?

Soit $E$ l'ensemble des permutations (Total = $3! = 6$).

Soit $A_i$ l'ensemble des cas où la personne $i$ reçoit son chapeau.

On cherche $|\overline{A_1 \cup A_2 \cup A_3}|$.

$$ = |E| - \sum |A_i| + \sum |A_i \cap A_j| - |A_1 \cap A_2 \cap A_3| $$

$$ = 6 - 3 \times 2! + 3 \times 1! - 1 = 6 - 6 + 3 - 1 = 2 $$

**Exemple 2 : Nombres premiers (Crible d'Ératosthène)**

Pour trouver les nombres premiers jusqu'à 100, on élimine les multiples de 2, 3, 5, 7.

Soit $E = \{1, \dots, 100\}$. On cherche le cardinal de $E$ privé des multiples de 2, 3, 5, 7 (les ensembles $A_p$).

La formule permet de calculer exactement le nombre d'entiers restants.

**Exemple 3 : Cartes**

Dans un jeu de 52 cartes, combien de mains de 5 cartes ne contiennent **aucun** As ?

Ici, la méthode directe (choisir 5 cartes parmi 48) est plus simple : $\binom{48}{5}$.

Mais par inclusion-exclusion avec $E$ = toutes les mains, et $A_i$ = mains contenant l'As de couleur $i$ (4 couleurs), on retrouverait le même résultat :

$$ \binom{52}{5} - \binom{4}{1}\binom{51}{4} + \dots $$

*(Cet exemple illustre que parfois la méthode directe est préférable si les ensembles "interdits" sont simples).*

### Contre-exemples

- **Oubli du terme univers :** Commencer la somme directement par $-\sum |A_i|$ au lieu de commencer par $|E|$ (le terme pour $I = \emptyset$).
- **Confusion "Aucun" vs "Au moins un" :** Cette formule calcule "aucun". Pour "au moins un", il faut utiliser la première formule (Concept 1).

### Concepts Liés

- **Dérangements :** Une application directe majeure (voir Concept 5).
- **Fonction indicatrice d'Euler ($\phi$) :** Calcule le nombre d'entiers premiers avec $n$, basée sur ce principe.

---

## Concept 3 : Formule du Binôme Multivariée

### Prérequis

- **Algèbre :** Anneaux commutatifs, Distributivité, Notation produit ($\prod$).
- **Combinatoire :** Sous-ensembles (parties).

### Définition

C'est une généralisation algébrique utilisée pour prouver le principe d'inclusion-exclusion.

Soient $a_1, \ldots, a_n$ et $b_1, \ldots, b_n$ des éléments d'un anneau commutatif. Alors :

$$ \prod_{i=1}^n (a_i + b_i) = \sum_{I \subseteq \llbracket n \rrbracket} \left( \prod_{i \in I} a_i \right) \left( \prod_{i \in \llbracket n \rrbracket \setminus I} b_i \right) $$

La somme porte sur toutes les parties $I$ de l'ensemble d'indices $\{1, \dots, n\}$.

### Explications Détaillées

Cette formule exprime le fait que pour développer un produit de sommes $(a_1+b_1)(a_2+b_2)\dots$, pour chaque facteur $i$, on doit choisir soit le terme $a_i$ (on met alors $i$ dans l'ensemble $I$), soit le terme $b_i$ (on met alors $i$ dans le complémentaire). On somme ensuite toutes les combinaisons possibles de ces choix.

### Propriétés Clés

- **Généralité :** Elle implique le binôme de Newton si tous les $a_i = a$ et tous les $b_i = b$.
- **Application à l'inclusion-exclusion :** En posant $a_i = -f_{A_i}(x)$ et $b_i = 1$, on dérive directement la formule du crible.

### Exemples

**Exemple 1 : Cas $n=2$**

$$ (a_1 + b_1)(a_2 + b_2) = \underbrace{b_1 b_2}_{I=\emptyset} + \underbrace{a_1 b_2}_{I=\{1\}} + \underbrace{b_1 a_2}_{I=\{2\}} + \underbrace{a_1 a_2}_{I=\{1,2\}} $$

**Exemple 2 : Lien avec le Binôme de Newton**

Si $a_i = x$ et $b_i = y$ pour tout $i$, alors pour un $I$ donné de cardinal $k$, le terme est $x^k y^{n-k}$. Comme il y a $\binom{n}{k}$ façons de choisir un ensemble $I$ de taille $k$, on retrouve :

$$ (x+y)^n = \sum_{k=0}^n \binom{n}{k} x^k y^{n-k} $$

**Exemple 3 : Identité booléenne**

En logique ou avec des fonctions caractéristiques (où $x^2=x$), cette structure permet de transformer des produits (intersections) en sommes.

### Contre-exemples

- **Non-commutativité :** Si l'anneau n'est pas commutatif (ex: matrices), l'ordre des facteurs importe et la formule telle quelle ne s'applique pas simplement.

---

## Concept 4 : Nombre de Surjections

### Prérequis

- **Fonctions :** Définition d'une application, Image, Antécédent.
- **Surjection :** Une fonction $f: E \to F$ est surjective si tout élément de $F$ a au moins un antécédent (l'image de $f$ couvre tout $F$).
- **Combinatoire :** Coefficients binomiaux $\binom{n}{k}$.

### Définition

Le nombre de surjections d'un ensemble fini $E$ (de cardinal $n$) vers un ensemble fini $F$ (de cardinal $k$), avec $n \ge k$, est donné par la formule :

$$ |\mathcal{F}_{surj}(E, F)| = \sum_{j=0}^{k} (-1)^{k-j} \binom{k}{j} j^n $$

*(Note : Dans la formule du cours, l'indice de sommation est $\ell$ ou $j$, et le terme alterne).*

### Explications Détaillées

Pour compter les surjections, il est difficile de procéder directement. On utilise l'inclusion-exclusion sur l'ensemble "Total des fonctions" ($k^n$).

On soustrait les fonctions qui "ratent" au moins un élément de l'arrivée $F$.

- $k^n$ : Toutes les fonctions.
- $-\binom{k}{1}(k-1)^n$ : On retire celles qui ratent un élément spécifique (il y a $\binom{k}{1}$ choix pour l'élément raté).
- $+\binom{k}{2}(k-2)^n$ : On a trop retiré celles qui ratent 2 éléments, on les rajoute.

### Propriétés Clés

- **Condition $n \ge k$ :** Si $n < k$, il est impossible de couvrir tout l'ensemble d'arrivée, le nombre de surjections est 0.
- **Lien avec les nombres de Stirling :** Ce nombre est égal à $k! \times S(n, k)$ (où $S(n,k)$ est le nombre de Stirling de seconde espèce).

### Exemples

**Exemple 1 : Surjections de $\{1, 2, 3\}$ vers $\{a, b\}$ ($n=3, k=2$)**

$$ |\mathcal{F}_{surj}| = \sum_{\ell=0}^2 (-1)^{2-\ell} \binom{2}{\ell} \ell^3 $$

$$ = (-1)^2 \binom{2}{0} 0^3 + (-1)^1 \binom{2}{1} 1^3 + (-1)^0 \binom{2}{2} 2^3 $$

$$ = 0 - 2(1) + 1(8) = 6 $$

Les 6 surjections sont toutes les fonctions ($2^3 = 8$) sauf les 2 fonctions constantes (tout sur $a$ ou tout sur $b$).

**Exemple 2 : Surjections de $\{1, 2, 3, 4\}$ vers $\{a, b, c\}$ ($n=4, k=3$)**

$$ |\mathcal{F}_{surj}| = \sum_{\ell=0}^3 (-1)^{3-\ell} \binom{3}{\ell} \ell^4 $$

$$ = - \binom{3}{0}0^4 + \binom{3}{1}1^4 - \binom{3}{2}2^4 + \binom{3}{3}3^4 $$

$$ = 0 + 3 - 3(16) + 1(81) = 3 - 48 + 81 = 36 $$

**Exemple 3 : Cas $n=k$**

Si $E$ et $F$ ont la même taille $n$, une surjection est aussi une injection (donc une bijection). La formule doit donner $n!$.

Pour $n=3, k=3$ : $-0 + 3(1)^3 - 3(2)^3 + 1(3)^3 = 3 - 24 + 27 = 6 = 3!$.

### Contre-exemples

- **Fonctions quelconques :** Ne pas confondre avec le nombre total d'applications $k^n$.
- **Injections :** Ce n'est pas le nombre d'arrangements $A_n^k$.

---

## Concept 5 : Nombre de Dérangements

### Prérequis

- **Permutations :** Bijections de $\llbracket n \rrbracket$ dans $\llbracket n \rrbracket$. Factorielle ($n!$).
- **Point fixe :** Un élément $i$ tel que $\sigma(i) = i$.

### Définition

Un **dérangement** est une permutation $\sigma$ d'un ensemble fini qui n'a **aucun point fixe** (pour tout $i$, $\sigma(i) \neq i$).

Le nombre de dérangements de $\llbracket n \rrbracket$, souvent noté $D_n$ ou $!n$, est donné par :

$$ D_n = n! \sum_{j=0}^n \frac{(-1)^j}{j!} = n! \left( \frac{1}{0!} - \frac{1}{1!} + \frac{1}{2!} - \dots + \frac{(-1)^n}{n!} \right) $$

### Explications Détaillées

C'est une application classique du principe d'inclusion-exclusion sous sa forme complémentaire.

- L'univers est l'ensemble de toutes les permutations ($n!$).
- La propriété $P_i$ est "l'élément $i$ est un point fixe".
- On veut le nombre de permutations vérifiant 0 propriété.
- Le terme $\frac{n!}{j!}$ provient de la simplification de $\binom{n}{j} (n-j)!$ (choix des $j$ points fixes $\times$ permutation des autres éléments).

### Propriétés Clés

- **Convergence asymptotique :** La probabilité qu'une permutation aléatoire soit un dérangement est $D_n/n! = \sum_{j=0}^n \frac{(-1)^j}{j!}$. Quand $n \to \infty$, cette somme tend vers $e^{-1} \approx 0.368$.
- **Récurrence :** Les dérangements vérifient $D_n = (n-1)(D_{n-1} + D_{n-2})$.

### Exemples

**Exemple 1 : $n=1$ et $n=2$**

- Pour $n=1$ (ensemble $\{1\}$) : La seule permutation est $\sigma(1)=1$ (point fixe). $D_1 = 0$.

Formule : $1! (\frac{1}{1} - \frac{1}{1}) = 0$.

- Pour $n=2$ (ensemble $\{1, 2\}$) : Permutations : $[1,2]$ (fixe), $[2,1]$ (dérangement). $D_2 = 1$.

Formule : $2! (\frac{1}{1} - 1 + \frac{1}{2}) = 2(0.5) = 1$.

**Exemple 2 : $n=3$**

Permutations de $\{1,2,3\}$.

Celles avec points fixes : 123 (3 fixes), 132 (1 fixe), 321 (1 fixe), 213 (1 fixe).

Dérangements : 231, 312. Donc $D_3 = 2$.

Calcul : $6 \times (1 - 1 + \frac{1}{2} - \frac{1}{6}) = 6(\frac{3}{6} - \frac{1}{6}) = 6(\frac{2}{6}) = 2$.

**Exemple 3 : $n=4$**

$$ D_4 = 4! \left( \frac{1}{2} - \frac{1}{6} + \frac{1}{24} \right) = 24 \left( \frac{12 - 4 + 1}{24} \right) = 9 $$

(Note : les deux premiers termes $1-1$ s'annulent toujours).

### Contre-exemples

- **Permutations avec exactement 1 point fixe :** Ce ne sont pas des dérangements. Le concept de dérangement exige strictement 0 point fixe.
- **Cycles :** Un dérangement n'est pas nécessairement un seul cycle (ex: $(12)(34)$ est un dérangement de 4 éléments composé de 2 cycles).

## Applications

- **Problème des chapeaux (ou des rencontres) :** Probabilité que personne ne récupère son objet.
- **Cryptographie :** Mélange total des positions.
