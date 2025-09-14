---
title: "Calculus Concepts"
order: 2
layout: "../../layouts/Layout.astro"
---

# Calculus Concepts

This page demonstrates fundamental calculus concepts with mathematical notation.

## Limits

The limit of a function $f(x)$ as $x$ approaches $a$ is written as:

$$\lim_{x \to a} f(x) = L$$

### Important Limits

Some fundamental limits include:

$$\lim_{x \to 0} \frac{\sin x}{x} = 1$$

$$\lim_{x \to \infty} \left(1 + \frac{1}{x}\right)^x = e$$

## Derivatives

The derivative of a function $f(x)$ is defined as:

$$f'(x) = \lim_{h \to 0} \frac{f(x+h) - f(x)}{h}$$

Alternative notation: $\frac{df}{dx}$ or $\frac{d}{dx}f(x)$

### Basic Derivative Rules

- **Power Rule**: $\frac{d}{dx}x^n = nx^{n-1}$
- **Product Rule**: $(fg)' = f'g + fg'$
- **Quotient Rule**: $\left(\frac{f}{g}\right)' = \frac{f'g - fg'}{g^2}$
- **Chain Rule**: $(f \circ g)' = f'(g(x)) \cdot g'(x)$

### Common Derivatives

$$\frac{d}{dx}\sin x = \cos x$$
$$\frac{d}{dx}\cos x = -\sin x$$
$$\frac{d}{dx}e^x = e^x$$
$$\frac{d}{dx}\ln x = \frac{1}{x}$$

## Integrals

The definite integral of $f(x)$ from $a$ to $b$ is:

$$\int_a^b f(x) \, dx$$

### Fundamental Theorem of Calculus

If $F'(x) = f(x)$, then:

$$\int_a^b f(x) \, dx = F(b) - F(a)$$

### Integration by Parts

$$\int u \, dv = uv - \int v \, du$$

### Integration by Substitution

If $u = g(x)$ and $du = g'(x) \, dx$:

$$\int f(g(x))g'(x) \, dx = \int f(u) \, du$$

## Series and Sequences

### Taylor Series

The Taylor series of $f(x)$ around $x = a$ is:

$$f(x) = \sum_{n=0}^{\infty} \frac{f^{(n)}(a)}{n!}(x-a)^n$$

### Maclaurin Series (Taylor series around $x = 0$)

$$e^x = \sum_{n=0}^{\infty} \frac{x^n}{n!} = 1 + x + \frac{x^2}{2!} + \frac{x^3}{3!} + \cdots$$

$$\sin x = \sum_{n=0}^{\infty} \frac{(-1)^n x^{2n+1}}{(2n+1)!} = x - \frac{x^3}{3!} + \frac{x^5}{5!} - \cdots$$

$$\cos x = \sum_{n=0}^{\infty} \frac{(-1)^n x^{2n}}{(2n)!} = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \cdots$$

## Multivariable Calculus

### Partial Derivatives

For a function $f(x,y)$, the partial derivatives are:

$$\frac{\partial f}{\partial x} = \lim_{h \to 0} \frac{f(x+h,y) - f(x,y)}{h}$$

$$\frac{\partial f}{\partial y} = \lim_{h \to 0} \frac{f(x,y+h) - f(x,y)}{h}$$

### Gradient

The gradient of $f(x,y)$ is the vector:

$$\nabla f = \left(\frac{\partial f}{\partial x}, \frac{\partial f}{\partial y}\right)$$

### Double Integrals

$$\iint_R f(x,y) \, dA = \int_a^b \int_{g_1(x)}^{g_2(x)} f(x,y) \, dy \, dx$$

## Differential Equations

A first-order linear differential equation has the form:

$$\frac{dy}{dx} + P(x)y = Q(x)$$

The solution involves an integrating factor $\mu(x) = e^{\int P(x) \, dx}$:

$$y = \frac{1}{\mu(x)} \left[ \int \mu(x)Q(x) \, dx + C \right]$$