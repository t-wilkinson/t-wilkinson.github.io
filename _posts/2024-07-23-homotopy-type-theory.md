---
layout: post
title: Homotopy Type Theory
date: 2024-07-23 16:29:50
description:
tags:
categories:
---



| Types           | Logic                  | Sets                     | Homotopy              |
| --------------- | ---------------------- | ------------------------ | --------------------- |
| A               | proposition            | set                      | space                 |
| a : A           | proof                  | element                  | point                 |
| B(x)            | predicate              | family of sets           | fibration             |
| b(x) : B(x)     | conditional proof      | family of elements       | section               |
| 0, 1            | ⊥, ⊤                   | ∅, {∅}                   | ∅, ∗                  |
| A + B           | A ∨ B                  | disjoint union           | coproduct             |
| A × B           | A ∧ B                  | set of pairs             | product space         |
| A → B           | A ⇒ B                  | set of functions         | function space        |
| ∑(x:A) B(x)     | ∃x:A B(x)              | disjoint sum             | total space           |
| ∏(x:A) B(x)     | ∀x:A B(x)              | product                  | space of sections     |
| Id_A            | equality =             | { (x, x) | x ∈ A }       | path space A^I        |

What are identity types, path space objects, etc.?

Homotopy type theory provides a looser but much more descriptive notion of equality.

Homotopy type theory is a flavor of intensional dependent type theory. Intensional type theory means identity types can have complex structure, representing (∞,1)-categorical semantics therefore representing more nuanced forms of equality. Viewing types as type families, each term is assigned a space.

In contrast to homotopy theory, homotopy type theory provides a synthetics description of points and paths as opposed to the analytic description.

? How does one abstract statements to say, fields? What does a statement using assumptions look like in a (∞,1)-topos. A field, for example, is a collection of axioms, or function types. Take addition, we have $∏_{x,y: 𝔽} x+y∈𝔽$. We can then label a Field as the collection of axioms .
$+$ and $×$ are type constructors of $𝔽$.

∞-topos is like the ∞-category of sheaves on a space. Homotopy type theory provides semantics for type theory via ∞-topos. (∞,1)-internal category amounts to doing homotopy theory. Transport. Theorem proovers.

The path object and identity type and 1-morphisms allow mapping the categorical morphism structure to the underlying infinity groupoid structure. By viewing automorphisms and similar on a type, we can view the higher equivalences as data on how the internal elements relate.

The identity type is the collection of paths from a point to itself.

Homotopy information encodes how underlying points relate to each other.

In HoTT, we have path space objects which represent the collection of morphisms between two types. This can be interpreted as a collection of embeddings.

- Equiválence principle
- Type theory
- Univalence axiom
- Identity type
- Type family
- Recursion
- Induction
- Propositions as types
- ∞-groupoid
- Fibrations

- Important concepts
    - ∞-groupoid
    - ∞-sheaf
    - (∞,1)-site

- Higher category theory
    - (∞,1)-topos
        - Homotopy type theory can be viewed as an ∞-topos where 1-cells are morphisms. Higher morphisms are type equivalences. Objects are types. Identity types are types of objects whose containment of elements implies proofs of existence.
    - (∞,1)-category
        - model category
        - Has as objects
            - ∞-groupoid
            - Fundamental groupoid maps topological spaces to ∞-groupoid. According to the homotopy hypothesis, this functor is an isomorphism.
            - Can one recapture the notion of an open set from the ∞-groupoid?
    - ∞-groupoid
        - Equivalently (∞,0)-category
        - Express notion of (homotopy) space
        - Morphisms at each level form a groupoid structure, with identity, composition, and inverse operations which are weak in the sense that they satisfy groupoid laws only up to morphisms at the next level, which gives rise in further structure.
        - Every topological space has a fundamental ∞-groupoid

- Fundamental concepts
    - Martin-Löf's intensional type theory
    - Dependent type theory
        - Locally cartesian closed categories
        - Slice category
    - Homotopy Type Theory
        - Homotopy types
        - Identity type
    - Topos theory
        - Sheaves
    - Category theory
        - Fibration
        - Bundle
        - Section
    - Computational aspect
        - ~/dev/UniMath/UniMath/UniMath

- Martin Löf Intuinistic Type Theory
    - Intuinistic meaning constructive
    - The identity type is fundamental but why?
    - Identity type is abiguous in that
    - A question arises of how to interpret types in order to know how points can be identified with each other. In the set theoretical intepretation which is accomplished by assuming the K axiom. In the homotopy interpretation, types are viewed as ∞-groupoids which have complex higher structure which leads to points being equivalent in multiple ways.

- Truncation
    - My guess is that truncating is assuming types above some level who are equivalent to be the same type at the level of truncation.

- Particle physics
    - Lie group
        - A group that is also a differentiable manifold
        - SU(n)
            - Group of isometries of n-dimensional complex hilbert space which preserve the volume form of this space.
            - Unitary matrix preserves norms (probability amplitudes)
            - SU(2) is diffeomorphic to the 3-sphere
            - n-sphere is $∑ⁿ(xᵢ-Cᵢ)²=1$

- Homotopy type theory
    - (∞,1)-toposes
    - Serves as the internal language for (∞,1)-toposes

- https://ncatlab.org/nlab/show/categorical+semantics
- https://ncatlab.org/nlab/show/theory
- https://ncatlab.org/nlab/show/model
- https://ncatlab.org/nlab/show/doctrine

- Type theory
- (Higher) inductive types
- Model categories and model structure on simplicial sets
- (∞,1)-sheafs

- Category theory and physics
    - Topology
        - Groupoid
        - Continuity
    - Categoric models of type theory
        - Identity type
        - Model theory
    - Geometry
        - (∞,1)-category
        - [geometry](https://ncatlab.org/nlab/show/geometry)
        - sheaf, stack, locale, site, topos
        - stack
        - cohomology
        - Cohesive (∞,1)-topos
        - local (∞,1)-topos
        - Descent
        - Higher geometry
        - Geometric homotopy type
        - ∞-stacks
            - Higher geometry
    - Internalization
        - Ambient category
            - Category which has properties suffient for internal structures.
                - Finite products is enough for groups
                - (usually finite) limits is enough for algebraic structures. Algebraic structures are defined by operations and equational axioms.
                - Pullpacks are sufficient for a strict category
        - Ambient categories can be further endowed with structure to internalize mathematical objects such as fields, modules, rings, topological spaces, etc. In fact, as all mathematics is written in the language of logic, internalizing logic means internalizing all of mathematics.
        - Internal category
        - Internal logic
            - Morphism
                - $f : B → A$ == $x : B ⊢ f(x) : A$
                - $f(x) : A$ is a term
        - Internal logic of (∞,1)-topos
    - Type theory
        - Judgements
    - Homotopy theory
        - Simplicial complex
        - Kan complex
        - Groupoid
            - Homotopy hypothesis
                - Conjecture formulated by Alexander Grothendieck states that ∞-groupoid captures all information about a topological space up to weak homotopy equivalence.
            - Path-connected means there exists a path between any two points in a topological space (the set of morphisms between any two objects in the fundamental groupoid is nonempty).
            - Fundemantal group
                - Way to associate point to various symmetries of moving it through space.
                - loops $f : S¹ → X$ (or $[0,1]$ and identifying 0 with 1 through the quotient topology).
                - Homotopy of loops $f : S¹×[0,1] → X$
                - Allow one to understand the structure of a topological space
            - Fundamental groupoid
                - Allows to alternate views of a topological or algebraic context. Functor from category of topological spaces to groupoids. Recontextualize topological spaces as groupoids (algebra). In this groupoid, objects represents points, morhpisms represents homotopy classes of paths. Note that the fundamental groupoid assigns to the ordered pair (p,p), the fundamental group of X based at p.
                - Topological invariant of a topological space.
                - p and q are path connected if the fundmental groupoid on X iff the set of morphisms from p to q is nonempty.
                * The fundamental groupoid of a (path-connected) differentiable manifold X is actually a Lie groupoid, arising as the gauge groupoid of the universal cover of X.
                - The ∞-groupoid allows uncovering higher dimensional holes in the topological space which blocks higher homotopies.
    - Formal language
        - Theory
        - Doctrine
        - Higher doctrine
        - Model
    - Category theory
        - Look at various examples of categories in category theory in context
        - Functors
        - Representable functor
        - Adjoint
            - Allow one to switch between recontextualizations. A similarity of context and structure.
        - Hom functor
    - Homotopy type theory
        - Univalence axiom
        - Object classifiers
        - Higher inductive types
            - Types with more complex elements which can have multiple proofs of the identity type.
            - (∞,1)-colimits
            - cell complexes
            - truncations
            - locatilizations
        - Inductive types
            - An inductive type $X$ can be viewed as a type freely generated by a certain finite collection of constructors. Essentially a data type constructor in Haskell.
            - Recall that a property of a type is essentially the dependent function $∏(A:X→𝓤)∏(x:X)A(x) : 𝓤$
            - Properties can be defined on all points of a type through inductive definitions.
            - From the perspective of homotopy theory, inductive types represent complexes which can intuitively be thought of as building complex spaces out of simpler spaces.
            - Induction is about defining property on every possible construction of a type. Recursion is about applying a function to every construction.
            - Σ represents existential qualitfication. A proof of a property of an element of a type.
        - Dependent types
            https://ncatlab.org/nlab/show/dependent+type
    - Topos
        - Sub object
        - (∞,1)-topos
    - Resources
        - https://ncatlab.org/nlab/show/computational+trilogy
        - https://ncatlab.org/nlab/show/(infinity,1)-topos
        - https://ncatlab.org/nlab/show/higher+category+theory+and+physics

# Key concepts
Homotopy type theory serves as the internal language for (∞,1)-topos. Objects are types or spaces, viewed as constructions or collections of points. Morphisms are continuous maps between spaces with groupoid structures representing higher homotopies between these continuous maps. Types can be constructed, resulting in higher inductive types, which can be viewed as more complex topological spaces. The homotopies represent topological structures.
Types are represented as ∞-groupoids, which signify how points are connected through homotopies.

Voevodsky's univalence axiom represents object classifiers in (∞,1)-categorical semantics.
Higher inductive types allows for the construction of (∞,1)-colimits, cell complexes, truncations, localizations, and other objects which are constructed in homotopy theory using the small object argument.

# Inductive types and higher inductive types
(Higher) inductive types have point constructors and path or higher constructors. Point constructors essentially limit the view to a constructors of elements of a set. Higher constructors enact the higher groupoid view, and allow expressing higher-dimensional structure of points. Inductive types allow freely generating types. The (higher) inductive property expresses generating every possible construction of a type, and expressing a proof of each construction. The fact that loops are not (a priori) equal to $refl_{base}$ is why $1$ is different from $𝕊₁$.

Fundamental to homotopy type theory, is the interpretation of types as spaces, and path types representing higher-dimensional information about the topology of these spaces, as opposed to set theory, which views sets (the fundamental object) as structureless bags. The fundamental group and groupoid represent the topological structure of a point and every point, respectively, of a type space. Type theory is the mathematical language that is used to communicate ideas, and category theory expresses the semantics of this language. Paths are fundamental to this language, and express how points in a space are equivalent. When discussing equality, one *must* consider the paths along with the points being considered, as this characterizes their equality.

Homotopy type theory is a formal language for mathematics which combines ideas from type theory, homotopy theory, category theory, and model theory. Type theory provides a syntax, homotopy theory provides intuition, and category ties everything together. The underlying semantics for homotopy type theory is that of an (∞,1)-topos, in which objects are spaces, morphisms express how objects are put together, and higher morphisms express higher dimensional equivalences. The topos structure allows one to do mathematics. The structure of an (∞,1)-topos provides is a nicer base than that of traditional set theory. In particular, there are fewer assumptions made.

# Model category
Model categories serve as the site for ∞-sheaves valued on ∞-groupoids.

Sheaves on these categories represent types and follow local/global principles of sheaves, representing homotopy analogs.

Quillen model categories are

# Resources
[The HoTT Book](https://homotopytypetheory.org/book/)
