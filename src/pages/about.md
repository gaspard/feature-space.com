---
title: "About This Site"
order: 3
layout: "../layouts/Layout.astro"
---

# About This Site

Welcome to our mathematical content demonstration site! This website showcases the integration of KaTeX mathematical rendering with an Astro-based navigation system.

## Features

This site demonstrates several key capabilities:

### Mathematical Rendering
- **KaTeX Integration**: High-quality mathematical typesetting using LaTeX syntax
- **Inline Math**: Mathematical expressions like $E = mc^2$ embedded within text
- **Display Math**: Centered equations such as:

$$\int_{-\infty}^{\infty} e^{-x^2} dx = \sqrt{\pi}$$

### Navigation System
- **File-based Navigation**: Automatic menu generation from the page directory structure
- **Two-level Hierarchy**: Support for organizing content in subdirectories
- **Current Page Highlighting**: Visual indication of the active page
- **Frontmatter Support**: Custom titles and ordering through YAML frontmatter

## Technology Stack

This site is built using:

- **Astro**: Modern static site generator
- **KaTeX**: Fast math typesetting library
- **Tailwind CSS**: Utility-first CSS framework
- **TypeScript**: Type-safe JavaScript development
- **pnpm**: Fast, disk space efficient package manager

## Mathematical Content Examples

The site includes sample pages demonstrating various mathematical concepts:

### Algebra
Basic algebraic operations, equations, and functions including:
- Linear equations: $ax + b = 0$
- Quadratic formula: $x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}$
- Systems of equations and matrix representations

### Calculus
Fundamental calculus concepts such as:
- Limits: $\lim_{x \to a} f(x) = L$
- Derivatives: $f'(x) = \lim_{h \to 0} \frac{f(x+h) - f(x)}{h}$
- Integrals: $\int_a^b f(x) \, dx$
- Series expansions and multivariable calculus

## Navigation Testing

This page serves as a test for the navigation system's ability to:

1. **Generate menu items** from files in the root pages directory
2. **Create hierarchical structure** for files in subdirectories like `/math/`
3. **Display proper titles** from frontmatter metadata
4. **Maintain consistent ordering** using the `order` field
5. **Highlight the current page** when navigating between sections

The navigation should automatically update when new pages are added to the site structure, making content management seamless and efficient.

## Getting Started

To explore the mathematical content:

1. Use the navigation menu to browse different sections
2. Visit the **Algebra** page for fundamental algebraic concepts
3. Check out the **Calculus** page for advanced mathematical topics
4. Notice how mathematical expressions render seamlessly within the text

The combination of automatic navigation generation and high-quality math rendering makes this an ideal platform for educational content, technical documentation, and mathematical reference materials.