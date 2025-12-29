---
id: a71b4e3f
type: concepts
order: 10
title: Linéarisations et Trigonométrie - concepts (A)
tags:
  - trigonométrie
  - linéarisation
  - hyperbolique
  - formules
  - mathématiques
course: Bases mathématiques
courseId: 4e5f6a7b
chapter: Linéarisations
chapterId: 8b9c0d1e
level: regular
createdAt: '2025-12-28'
---
# Linéarisations et Trigonométrie

---

## Concept 1: Formules d'Addition et de Duplication

### Prérequis

- **Cercle trigonométrique** : Connaissance des valeurs remarquables ($\pi/6, \pi/4, \dots$).
- **Parité et périodicité** : $\cos(-x) = \cos(x)$, $\sin(-x) = -\sin(x)$, etc.

### Définition

Les formules d'addition relient les fonctions trigonométriques d'une somme d'angles aux fonctions des angles individuels.

**Formules d'addition :**

$$ \cos(a + b) = \cos(a)\cos(b) - \sin(a)\sin(b) $$
$$ \cos(a - b) = \cos(a)\cos(b) + \sin(a)\sin(b) $$
$$ \sin(a + b) = \sin(a)\cos(b) + \cos(a)\sin(b) $$
$$ \sin(a - b) = \sin(a)\cos(b) - \cos(a)\sin(b) $$
$$ \tan(a + b) = \frac{\tan(a) + \tan(b)}{1 - \tan(a)\tan(b)} $$

**Formules de duplication (cas particuliers où $a=b$) :**

$$ \cos(2a) = \cos^2(a) - \sin^2(a) = 2\cos^2(a) - 1 = 1 - 2\sin^2(a) $$
$$ \sin(2a) = 2\sin(a)\cos(a) $$
$$ \tan(2a) = \frac{2\tan(a)}{1 - \tan^2(a)} $$

### Propriétés Clés

- **Symétrie** : Notez le changement de signe pour le cosinus ($\cos(a+b)$ a un "moins") et la conservation du signe pour le sinus.
- **Universalité** : Ces formules sont vraies pour tous réels $a, b$ (et complexes).
- **Extension** : Ces formules permettent de calculer les valeurs exactes pour des angles comme $\pi/12$ (en utilisant $\pi/3 - \pi/4$).

### Exemples

**Exemple 1 : Calcul exact**
Calculons $\cos(\frac{\pi}{12})$. On sait que $\frac{\pi}{12} = \frac{\pi}{3} - \frac{\pi}{4}$.
$$ \cos(\frac{\pi}{12}) = \cos(\frac{\pi}{3} - \frac{\pi}{4}) = \cos(\frac{\pi}{3})\cos(\frac{\pi}{4}) + \sin(\frac{\pi}{3})\sin(\frac{\pi}{4}) $$
$$ = \frac{1}{2} \cdot \frac{\sqrt{2}}{2} + \frac{\sqrt{3}}{2} \cdot \frac{\sqrt{2}}{2} = \frac{\sqrt{2} + \sqrt{6}}{4} $$

**Exemple 2 : Duplication**
Si $\cos(x) = 0.6$ et $x \in [0, \pi/2]$, alors $\sin(x) = 0.8$.
$$ \sin(2x) = 2 \cdot 0.8 \cdot 0.6 = 0.96 $$
$$ \cos(2x) = 2(0.6)^2 - 1 = 2(0.36) - 1 = 0.72 - 1 = -0.28 $$

### Contre-exemples

**Erreur classique de linéarité**
$$ \cos(a + b) \neq \cos(a) + \cos(b) $$
Exemple : $\cos(0) = 1$, mais $\cos(\pi/2 + \pi/2) = \cos(\pi) = -1$, alors que $\cos(\pi/2) + \cos(\pi/2) = 0 + 0 = 0$.

### Concepts Connexes

- **Formules de l'angle moitié** : Déduites des formules de duplication en posant $x = 2a$.

---

## Concept 2: Formules de Linéarisation et de Factorisation

### Prérequis

- **Concept 1** : Formules d'addition.

### Définition

La **linéarisation** consiste à transformer des produits ou des puissances de fonctions trigonométriques en sommes. C'est crucial pour le calcul d'intégrales.

**Formules de linéarisation (Carrés) :**
Issues de $\cos(2a)$, ces formules permettent d'abaisser le degré :

$$ \cos^2(a) = \frac{1 + \cos(2a)}{2} $$
$$ \sin^2(a) = \frac{1 - \cos(2a)}{2} $$

**Formules de linéarisation (Produits) :**
Issues des formules d'addition (demi-somme et demi-différence) :

$$ \cos(a)\cos(b) = \frac{1}{2}[\cos(a+b) + \cos(a-b)] $$
$$ \sin(a)\sin(b) = \frac{1}{2}[\cos(a-b) - \cos(a+b)] $$
$$ \sin(a)\cos(b) = \frac{1}{2}[\sin(a+b) + \sin(a-b)] $$

La **factorisation** (ou transformation de somme en produit) est l'opération inverse :

$$ \cos(p) + \cos(q) = 2 \cos(\frac{p+q}{2}) \cos(\frac{p-q}{2}) $$
$$ \cos(p) - \cos(q) = -2 \sin(\frac{p+q}{2}) \sin(\frac{p-q}{2}) $$
$$ \sin(p) + \sin(q) = 2 \sin(\frac{p+q}{2}) \cos(\frac{p-q}{2}) $$
$$ \sin(p) - \sin(q) = 2 \cos(\frac{p+q}{2}) \sin(\frac{p-q}{2}) $$

### Propriétés Clés

- **Calcul intégral** : Il est difficile d'intégrer $\cos^2(x)$, mais facile d'intégrer $\frac{1+\cos(2x)}{2}$.
- **Résolution d'équations** : La factorisation permet de résoudre des équations du type $\sin(x) + \sin(3x) = 0$.

### Exemples

**Exemple 1 : Linéarisation pour intégration**
Calculer $I = \int \sin^2(x) dx$.
$$ I = \int \frac{1 - \cos(2x)}{2} dx = \frac{1}{2} \int (1 - \cos(2x)) dx = \frac{1}{2} (x - \frac{\sin(2x)}{2}) + C $$

**Exemple 2 : Linéarisation de $\cos^3(x)$**
On utilise Euler ou les formules pas à pas.
$\cos^3(x) = \cos(x) \cdot \cos^2(x) = \cos(x) \frac{1+\cos(2x)}{2} = \frac{1}{2}\cos(x) + \frac{1}{2}\cos(x)\cos(2x)$.
Or $\cos(x)\cos(2x) = \frac{1}{2}[\cos(3x) + \cos(x)]$.
D'où $\cos^3(x) = \frac{1}{2}\cos(x) + \frac{1}{4}\cos(3x) + \frac{1}{4}\cos(x) = \frac{3}{4}\cos(x) + \frac{1}{4}\cos(3x)$.

### Contre-exemples

Ne pas confondre linéarisation (produit $\to$ somme) et développement (fonction de somme $\to$ somme de produits).
$\cos(2x) = \cos^2 x - \sin^2 x$ est un développement, pas une linéarisation complète (il reste des carrés). La linéarisation cherche à obtenir des termes de degré 1 ($\cos(kx)$).

### Concepts Connexes

- **Formules d'Euler** : Méthode générale et puissante pour linéariser $\cos^n(x)\sin^m(x)$.

---

## Concept 3: Fonctions Hyperboliques

### Prérequis

- **Fonction exponentielle** : $e^x$ et ses propriétés.

### Définition

Les fonctions hyperboliques sont les analogues des fonctions trigonométriques, mais définies à partir d'exponentielles réelles. Elles paramètrent une hyperbole ($x^2 - y^2 = 1$) comme les fonctions trigonométriques paramètrent un cercle ($x^2 + y^2 = 1$).

**Définitions :**

$$ \cosh(x) = \frac{e^x + e^{-x}}{2} \quad (\text{Cosinus hyperbolique}) $$
$$ \sinh(x) = \frac{e^x - e^{-x}}{2} \quad (\text{Sinus hyperbolique}) $$
$$ \tanh(x) = \frac{\sinh(x)}{\cosh(x)} = \frac{e^x - e^{-x}}{e^x + e^{-x}} \quad (\text{Tangente hyperbolique}) $$

### Propriétés Clés

- **Parité** : $\cosh$ est paire ($\cosh(-x) = \cosh(x)$), $\sinh$ est impaire ($\sinh(-x) = -\sinh(x)$).
- **Relation fondamentale** :
  $$ \cosh^2(x) - \sinh^2(x) = 1 $$
- **Dérivées** :
  $$ (\cosh x)' = \sinh x $$
  $$ (\sinh x)' = \cosh x $$
- **Formules d'addition** (similaires à la trigo mais attention aux signes) :
  $$ \cosh(a+b) = \cosh(a)\cosh(b) + \sinh(a)\sinh(b) $$
  $$ \sinh(a+b) = \sinh(a)\cosh(b) + \cosh(a)\sinh(b) $$

### Exemples

**Exemple 1 : Valeurs en 0**
$\cosh(0) = \frac{1+1}{2} = 1$.
$\sinh(0) = \frac{1-1}{2} = 0$.

**Exemple 2 : Lien avec la géométrie**
Un câble suspendu par deux points prend la forme d'une courbe appelée "chaînette", dont l'équation est de la forme $y = a \cosh(x/a)$.

### Contre-exemples

**Différence avec la trigo circulaire**
$\cos^2(x) + \sin^2(x) = 1$ (cercle), mais $\cosh^2(x) + \sinh^2(x) = \cosh(2x) \neq 1$.
La relation fondamentale est bien avec un signe moins : $\cosh^2 - \sinh^2 = 1$.

### Concepts Connexes

- **Fonctions réciproques** : $\text{argcosh}$, $\text{argsinh}$, $\text{argtanh}$ (souvent notées $\text{arcosh}$, etc.).

---

## Concept 4: Formules d'Euler et Lien Exponentiel

### Prérequis

- **Nombres complexes** : $i^2 = -1$, module et argument.
- **Exponentielle complexe** : $e^{ix} = \cos(x) + i\sin(x)$.

### Définition

Les formules d'Euler relient les fonctions trigonométriques à l'exponentielle complexe. Elles sont l'outil le plus puissant pour retrouver toutes les formules de linéarisation.

$$ \cos(x) = \frac{e^{ix} + e^{-ix}}{2} $$
$$ \sin(x) = \frac{e^{ix} - e^{-ix}}{2i} $$

De même pour les fonctions hyperboliques (sans le $i$) :
$$ \cosh(x) = \frac{e^x + e^{-x}}{2} $$
$$ \sinh(x) = \frac{e^x - e^{-x}}{2} $$

**Formule de Moivre :**
Pour tout entier $n$ :
$$ (\cos x + i \sin x)^n = \cos(nx) + i \sin(nx) $$

### Propriétés Clés

- **Unification** : La trigonométrie devient une branche de l'algèbre des exponentielles.
- **Linéarisation systématique** : Pour linéariser $\cos^n(x)$, on écrit $(\frac{e^{ix} + e^{-ix}}{2})^n$, on développe avec le binôme de Newton, et on regroupe les termes $e^{ikx}$ et $e^{-ikx}$ pour reformer des cosinus ou sinus.

### Exemples

**Exemple 1 : Retrouver $\cos(2x)$**
$\cos(2x) = \text{Re}(e^{i2x}) = \text{Re}((e^{ix})^2) = \text{Re}((\cos x + i \sin x)^2)$
$= \text{Re}(\cos^2 x - \sin^2 x + 2i \cos x \sin x) = \cos^2 x - \sin^2 x$.

**Exemple 2 : Linéarisation de $\sin^3(x)$**
$\sin^3(x) = (\frac{e^{ix} - e^{-ix}}{2i})^3 = \frac{-1}{8i} (e^{i3x} - 3e^{i2x}e^{-ix} + 3e^{ix}e^{-i2x} - e^{-i3x})$
$= \frac{-1}{8i} ((e^{i3x} - e^{-i3x}) - 3(e^{ix} - e^{-ix}))$
$= \frac{-1}{8i} (2i \sin(3x) - 3(2i \sin(x))) = -\frac{1}{4} \sin(3x) + \frac{3}{4} \sin(x)$.

### Contre-exemples

**Attention aux coefficients complexes**
Dans les formules d'Euler pour le sinus, ne pas oublier le $2i$ au dénominateur.
$\sin(x) \neq \frac{e^{ix} - e^{-ix}}{2}$.

### Concepts Connexes

- **Transformée de Fourier** : Utilise intensivement l'exponentielle complexe pour analyser les fréquences.

---

