---
title: "Algebra Fundamentals"
order: 1
layout: "../../layouts/Layout.astro"
---

# Algebra Fundamentals

This page demonstrates various algebraic concepts using mathematical notation.

## Linear Equations

A linear equation in one variable has the form $ax + b = 0$ where $a \neq 0$.

The solution is given by:

$$x = -\frac{b}{a}$$

### Example

Solve the equation $3x + 7 = 22$:

$$3x + 7 = 22$$
$$3x = 22 - 7$$
$$3x = 15$$
$$x = \frac{15}{3} = 5$$

## Quadratic Equations

The general form of a quadratic equation is $ax^2 + bx + c = 0$ where $a \neq 0$.

The quadratic formula provides the solutions:

$$
x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}
$$

The discriminant $\Delta = b^2 - 4ac$ determines the nature of the roots:
- If $\Delta > 0$: two distinct real roots
- If $\Delta = 0$: one repeated real root  
- If $\Delta < 0$: two complex conjugate roots

### Example

Solve $x^2 - 5x + 6 = 0$:

Using the quadratic formula with $a = 1$, $b = -5$, and $c = 6$:

$$x = \frac{5 \pm \sqrt{25 - 24}}{2} = \frac{5 \pm 1}{2}$$

Therefore: $x_1 = 3$ and $x_2 = 2$

## Systems of Linear Equations

A system of two linear equations can be written as:

$$
\begin{cases}
a_1x + b_1y = c_1 \\
a_2x + b_2y = c_2
\end{cases}
$$

### Matrix Form

This can be expressed in matrix form as $\mathbf{A}\mathbf{x} = \mathbf{b}$:

$$
\begin{pmatrix}
a_1 & b_1 \\
a_2 & b_2
\end{pmatrix}
\begin{pmatrix}
x \\
y
\end{pmatrix}
=
\begin{pmatrix}
c_1 \\
c_2
\end{pmatrix}
$$

## Polynomials

A polynomial of degree $n$ has the form:

$$P(x) = a_nx^n + a_{n-1}x^{n-1} + \cdots + a_1x + a_0$$

where $a_n \neq 0$ and $a_i \in \mathbb{R}$ for all $i$.

### Factoring

For a quadratic $ax^2 + bx + c$, if it factors as $(px + q)(rx + s)$, then:
- $pr = a$
- $ps + qr = b$  
- $qs = c$

## Exponential and Logarithmic Functions

The exponential function $f(x) = a^x$ where $a > 0$ and $a \neq 1$ has the inverse function $f^{-1}(x) = \log_a(x)$.

Key properties:
- $\log_a(xy) = \log_a(x) + \log_a(y)$
- $\log_a\left(\frac{x}{y}\right) = \log_a(x) - \log_a(y)$
- $\log_a(x^r) = r\log_a(x)$

The natural logarithm uses base $e \approx 2.718$: $\ln(x) = \log_e(x)$