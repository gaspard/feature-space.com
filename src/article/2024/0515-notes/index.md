---
layout: article.liquid
title: Rosen, notes 1.3
tags: article
date: 2024-05-15
summary: Notes on chapter 1.3
---

# Rosen notes 1.3

## Logical Equivalence

Two statement $a$ and $b$ are logically equivalent if $a \leftrightarrow b$ is a tautology, i.e they have the same truth values for all models.

**Idempotent laws**

$$
\begin{array}{|r|c c|c c|}
p & \T & \F \\
\hline
p \lor p \equiv p & \T & \F \\
p \land p \equiv p & \T & \F \\
\end{array}
$$

**Double negation law**

$$
\begin{array}{|r|c c|c c|}
p & \T & \F \\
\hline
\lnot (\lnot p) \equiv p & \T & \F \\
\end{array}
$$

**Identity Laws**

$$
\begin{array}{|r|c c|c c|}
p & \T & \F \\
\bold{T} & \T & \T \\
\bold{F} & \F & \F \\
\hline
p \lor \bold{F} \equiv p & \T & \F \\
p \land \bold{T} \equiv p & \T & \F \\
\end{array}
$$

**Domination Laws**

$$
\begin{array}{|r|c c|c c|}
p & \T & \F \\
\bold{T} & \T & \T \\
\bold{F} & \F & \F \\
\hline
p \lor \bold{T} \equiv \bold{T} & \T & \T \\
p \land \bold{F} \equiv \bold{F} & \F & \F \\
\end{array}
$$

**Negation laws**

$$
\begin{array}{|r|c c|c c|}
p & \T & \F \\
\bold{T} & \T & \T \\
\bold{F} & \F & \F \\
\hline
p \lor \lnot p \equiv \bold{T} & \T & \T \\
p \land \lnot p \equiv \bold{F} & \F & \F \\
\end{array}
$$

**Commutative laws**

$$
\begin{array}{|r|c c|c c|}
p & \T & \T & \F & \F \\
q & \T & \F & \T & \F \\
\hline
p \lor q \equiv q \lor p & \T & \T & \T & \F \\
p \land q \equiv q \land p & \T & \F & \F & \F \\
\end{array}
$$

**Associative laws**

$$
\begin{array}{|r|c c|c c|}
p & \T & \T & \T & \T & \F & \F & \F & \F \\
q & \T & \T & \F & \F & \T & \T & \F & \F \\
r & \T & \F & \T & \F & \T & \F & \T & \F \\
\hline
(p \lor q) \lor r \equiv p \lor (q \lor r) & \T & \T & \T & \T & \T & \T & \T & \F \\
(p \land q) \land r \equiv p \land (q \land r) & \T & \F & \F & \F & \F & \F & \F & \F \\
\end{array}
$$

**Distributive laws**

$$
\begin{array}{|r|c c|c c|}
p & \T & \T & \T & \T & \F & \F & \F & \F \\
q & \T & \T & \F & \F & \T & \T & \F & \F \\
r & \T & \F & \T & \F & \T & \F & \T & \F \\
\hline
p \lor (q \land r)  \equiv (p \lor q) \land (p \lor r) & \T & \T & \T & \T & \T & \F & \F & \F \\
p \land (q \lor r) \equiv (p \land q) \lor (p \land r) & \T & \T & \T & \T & \T & \F & \F & \F \\
\end{array}
$$

**De Morgan's Laws**

$$
\begin{array}{|r|c c|c c|}
p & \T & \T & \F & \F \\
q & \T & \F & \T & \F \\
\hline
\lnot (p \land q) \equiv \lnot p \lor \lnot q & \F & \T & \T & \T \\
\lnot (p \lor q) \equiv \lnot p \land \lnot q & \F & \F & \F & \T \\
\end{array}
$$

Can also be expressed as:

$$
\begin{align*}
\lnot \bigwedge_{i=1}^n p_i & \equiv \bigvee_{i=1}^n \lnot p_i & \equiv \lnot p_1 \lor \lnot p_2 \lor ... \lor p_n \\
\lnot \bigvee_{i=1}^n p_i & \equiv \bigwedge_{i=1}^n \lnot p_i
\end{align*}
$$

**Absorption laws**

$$

\begin{array}{|r|c c|c c|}
p & \T & \T & \F & \F \\
q & \T & \F & \T & \F \\
\hline
p \lor (p \land q) \equiv p & \T & \T & \F & \F \\
p \land (p \lor q) \equiv p & \T & \T & \F & \F \\
\end{array}


$$

**Logical equivalences involving conditional statements**

$$

\begin{array}{|r|c c|c c|}
p & \T & \T & \F & \F \\
\lnot p & \F & \F & \T & \T \\
q & \T & \F & \T & \F \\
\lnot q & \F & \T & \F & \T \\
\hline
p \to q \equiv \lnot p \lor q & \T & \F & \T & \T \\
p \to q \equiv \lnot q \to \lnot p & \T & \F & \T & \T \\
p \lor q \equiv \lnot p \to q & \T & \T & \T & \F \\
p \land q \equiv \lnot (p \to \lnot q) & \T & \F & \F & \F \\
\lnot (p \to q) \equiv p \land \lnot q & \F & \T & \F & \F \\
\end{array}


$$

With three variables:

$$

\begin{array}{|r|c c|c c|}
p & \T & \T & \T & \T & \F & \F & \F & \F \\
q & \T & \T & \F & \F & \T & \T & \F & \F \\
r & \T & \F & \T & \F & \T & \F & \T & \F \\
\hline
(p \to q) \land (p \to r) \equiv p \to (q \land r) & \T & \F & \F & \F & \T & \T & \T & \T \\
(p \to r) \land (q \to r) \equiv (p \lor q) \to r & \T & \F & \T & \F & \T & \F & \T & \T \\
(p \to q) \lor (p \to r) \equiv p \to (q \lor r) & \T & \T & \T & \F & \T & \T & \T & \T \\
(p \to r) \lor (q \to r) \equiv (p \land q) \to r & \T & \F & \T & \T & \T & \T & \T & \T \\
\end{array}


$$

**Logical equivalences involving biconditional statements**

$$

\begin{array}{|r|c c|c c|}
p & \T & \T & \F & \F \\
\lnot p & \F & \F & \T & \T \\
q & \T & \F & \T & \F \\
\lnot q & \F & \T & \F & \T \\
\hline
p \iff q \equiv (p \to q) \land (q \to p) & \T & \F & \F & \T \\
p \iff q \equiv \lnot p \to \lnot q & \T & \F & \F & \T \\
p \iff q \equiv (p \land q) \lor (\lnot p \land \lnot q) & \T & \F & \F & \T \\
\lnot (p \iff q) \equiv p \iff \lnot q & \F & \T & \T & \F \\
\end{array}


$$

$$
$$

**Proof example** using these equivalences: show that $(p \land q) \to (p \lor q)$ is a tautology.

$$
\begin{align}
(p \land q) \to (p \lor q) \\
\lnot (p \land q) \lor (p \lor q) \\
(\lnot p \lor \lnot q) \lor (p \lor q) \\
(\lnot p \lor p) \lor (\lnot q \lor q) \\
\bold{T} \lor \bold{T} \\
\bold{T} \\
\end{align}
$$

We get (3) with De Morgan's Law, (4) by using the Associative Law, (5) through the Negation Law and (6) by using the Domintation Law.

## Unsatisfiability

An assignment of truth variables that makes a statement true is a **solution**. A statement with at least one solution is **satisfiable**. A statement without any solution is said to be **unsatisfiable**.

To prove that a statement is **satisfiable**, we only need to find one solution. To prove that it is **unsatisfiable**, we need to prove that _every_ assignment of truth values to its variables makes it false.

A statement is unsatisfiable **iff** it's negation is a tautology.

### Sudoku

Let $p(i, j, n)$ denote the proposition that $n$ is in the cell in the $i$th row and $j$th column.

#### Every row contains every number

$$
\bigwedge_{i=1}^9\bigwedge_{n=1}^9\bigvee_{j=1}^9 p(i,j,n)
$$

For this, we fix $i$ (the row), then $n$ (one of the numbers from $1..9$) and then go through every column $j$ to assign this number to one of the cells.

For the first row:

$$
\begin{align*}
& \bigwedge_{n=1}^9\bigvee_{j=1}^9 p(1,j,n) \equiv \\
& (p(1,1,1) \lor p(1,2,1) \lor ... \lor p(1,9,1))\ \land \\
& (p(1,1,2) \lor p(1,2,2) \lor ... \lor p(1,9,2))\ \land \\
& \vdots \\
& (p(1,1,9) \lor p(1,2,9) \lor ... \lor p(1,9,9))
\end{align*}
$$

Note that this _does not assert_ that cells can only contain one number. Just that every number is visible on every row.

#### Every column contains every number

In a similar way as with rows, we lock column first, then the number we want, then assign the number to a cell:

$$
\bigwedge_{j=1}^9\bigwedge_{n=1}^9\bigvee_{i=1}^9 p(i,j,n)
$$

#### Every 3x3 block contains every number

For this, we first go through every row block with variable $r$ then every column block with $s$. This locates a unique block. Multiplying these variables by 3 jumps from block to block. Assigning $(0,0)$ to $(r,s)$ locates the top-left block, $(1,0)$ the first block on the second row, etc. After fixing the number $n$, the last part goes through every cell of the block.

$$
\bigwedge_{r=0}^2
\bigwedge_{s=0}^2
\bigwedge_{n=1}^9
\bigvee_{i=1}^3
\bigvee_{j=1}^3
p(3r + i,3s + j,n)
$$
