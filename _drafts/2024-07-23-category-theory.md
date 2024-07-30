---
layout: post
title: Category Theory
date: 2024-07-23 16:40:24
description:
tags: math
categories:
---

Category theory concerns itself with representing constructions with internal cohesion (how objects relate to each other through morphisms). Functors relate these contructions by embedding the domain construction into the codomain construction. Natural transformations allow comparing construction embeddings. This gives rise to topos theory, where a topos is a collection of constructions in $D$ made from $C$. It is insightful to view functors as objects existing in a category, and natural transformations as special morphisms preserving the internal structure of these functor objects. Morphisms preserve the structure of objects in context, natural transformation additionally preserve the structure of domains

Category theory can be viewed as an algebraic object, like a groupoid without requirement of invertibility, or monoid without requirement of closed operations. In this lense, categories express some internal cohesion of elements expressed through morphisms. What makes categories useful is that they express necessary requirements for internal cohesion with an identity, which allows for proofs by algebra (or commuting diagrams) and identification of definitive objects. Sheaves on a category are like more general group actions. Continuing this perspective, functors are algebraic homomorphisms, maps between sets preserving the cohesive structure expressed by the domain category's morphisms. In this sense, it is instructive to view categories as sets with some cohesivity, that is, a category should not in general be interpreted as a kind of set theory. Instead, we look at stacks valued in a topos (like set) which express category actions.

Topos theory is a way to construct logic out of some type of construction. This logic is one that is conceptually useful and allows one to talk about various kinds of objects that exist from said construction. Universal properties like limits or kan extensions allow expressing for every relationship of a certain kind $F(A') → X$, there is one construction its associated relationship $F(A) → X$ that it factors through $F(A') → F(A)$. The functor is essentially projecting the category onto the construction $X$, isolating the objects of the domain of F that relate to $X$. Of the objects of the domain of F, these form a construction with X, and of those, F(A) is the best. Then we have exponential objects which represent all the ways A relates to B. The power object relates the function space and subobject classifier. Subobject classifier lets you talk about restrictions, smaller or larger object "spaces", specify locations within an object.

We like to look at objects as labels and the morphisms as expressing the elements and other relationships that objects have within a context of discorse. This is the value of representable functors and the yoneda embedding: morphisms express everything

It is often instructive to look at functor spaces, a category of functors between two categories. We look at what kind of constructions functors represent, similar to looking at function spaces on topological spaces which represent embeddings. That is, we look at the construction or embedding and relationships, not as the extensional mapping between points or objects.

Practicality: Category theory is a fundamental tool in math and physics for formalizing, organizing, comparing, concepts. It serves to abstract away irrelevant information to isolate the structure and semantics of concepts and provides ways to compare these structures, away from their nuances. It provides a single language to describe concepts found in disparate areas of mathematics and physics. Perhaps the most fundamental concept in category theory, universal properties, describes how an object relates to every construction in a context.

A category is a context. Universal properties are different isolations of context. Take, for example, initial objects, which express the structure that every object/domain has, and terminal objects which express the underlying structure that every morphism/codomain must have.

Category theory is an abstract species which enables lifting from the intricacies of various mathemtical fields to focus on the consistency (and inconsistency) between them. It enables sharing ideas, intuition, and proofs accross disciplines. One understands a category of a collection of objects of a certain type and relationships between those objects. The prevailing tool of category theory is that of a universal property which expresses the mathematical function of a object by how it relates to other objects within a categorical context. Functors recontextualize objects. The yoneda lemma expresses how any object can be charazterized purely by its universal properties, that is, its relationship with all other objects. Limits express how objects can be constructed out of existing ones.

Mathematics is full of constructions which map objects from one category into another category. These constructions are functorial if they preserve the morphisms between objects as well. In other words, a functor is a mapping of categories which preserves the domain category structure.

Categorification is the process of adding morphisms to existing sets to express the structure of set elements. Functorality of mathematical constructions can then be determined through categorical language.

One can view all of mathematics as a site where objects represent axiosm with the covering representing which axioms imply(are implied by) other axioms. One sheaf maps axioms to collection of mathematical systems that satisfy those axioms. An index category maps existing mathematical subjects onto the site.

What is it? Category theory is the abstract study of how things (manly mathematical objects) are related. A category defines 3 notions, categories: collection of objects, objects: elements of categories, and morphisms: arrows between objects. By studying how things relate, rather than what they are internally, we can ignore extraneous details and focus on the important differences.

The most important notion in category theory is that of the universal property. A property which uniquely defines an object and an arrow to/from every other object in question. These properties are useful as they define how a singular object uniquely relates to all other objects.

Category theory concerns itself less with how to find certain constructions, but instead what properties certain constructions would have, if they were found. It allows you convenient language to talk about properties and constructions.

- Basic definitions
    - A category consists of a collection of objects, arrows between the objects, and certain composition rules about the arrows.
    - An arrow is between two objects. Two arrows that share a target/src can be composed to form a new arrow.
    - For every object there is an identity arrow with same src and target, such that composition (in the natural way) with any other arrow is equal to that arrow.

- Important concepts
    - Commuting Diagram
    - Duality
    - Isomorphism

# Definition
A category consists of the following data:
- A class ob(C) of objects, for every object there is an identity morphism
- A class mor(C) of morphisms
- A domain and codomain class function: $dom: mor(C) → ob(C)$, $cod: mor(C) → ob(C)$
- A composition binary operator $hom(a,b) × hom(b,c) → hom(a,c)$, with associativity and respects the identity morphism

Small and large categories:
When the class of objects and morphisms is a set, the category is called small. If just the homsets are small, the category is called locally small.

Small categories exist to avoid inconsistencies and paradoxes found with infinite sets. However, this avoids the creation of self-referential structures. For example the set of all sets. Universes in particular are a useful construction that utilizes self-referentiality. Locally small categories can include self-referential structures, or other proper classes of objects, but still restrict the homset between any two objects to be small, resulting in the best of both worlds.

# Important constructions
## Opposite category
Mathematics is full of topological-like structures and other spaces. These spaces are often constructed through some notion of inclusion. The opposite category represents restricting these spaces to view a smaller, more local picture. Contravariant functors also capture this idea, further noting what happens when you assign information to these restrictions. Another view of opposite categories/contravariant functors is that they represent looking at various structures in the codomain or looking to trace morphisms from where they came instead.

## Morphisms
- Monomorphism
- Bimorphism
- Epimorphism
- Isomorphism: are key in category theory as they allow defining to and referring to structures without describing their contents. Instead, one cares about how the structure behaves in a category. Isomorphic structures for all intents and purposes, are equal within a category. However, they could have different content which can be observed in other categories.
- Endomorphism
- Automorphism
- Retraction
- Section

Category theory allows expressing structure through morphisms. Morphisms intrinsically represent the relationship of information. This is in contrast to the set theory perspective of understanding structure through expositional contents.

Category theory treats objects as black boxes. Morphisms are the real object of study. The idea is to understand objects by studying how they relate to each other. In fact, an essential result of category theory (which I don't quite understand) is the yoneda lemma. Which states that you can understand an object by understanding all of its morphisms. The formalization of tell me who your friends are and I'll tell you who you are.

## Functor
- Interpretations
    - When viewing functors as objects in a functor category, consider them like an embedding into a topological space. Each functor is like its own shape. In the case of topos theory, sheafs or presheafs are like embeddings from some base category into the category of set, where each embedding selects a shape in set theory.
    - One can interpret functors as constructing a shape in their codomain using the domain as a template.
    - View the functor as indexing objects in the codomain from the domain
    - Recontextualization
    - Categories have objects whose meanings are derived from morphisms. Functors carry that structure, and meaning of each object into a new category.
- Full
- Faithful
- Covariant
- Contravariant
- Functors express how categories are related. They are analogies.
- Equivalence of categories

A functor $F: A → B$, or generally structure preserving maps (morphisms), are ways to probe a space B from space A. Stacks allow probing a space B from the structure represented by a probe A.

The yoneda lemma is like flattening a representable functor of an object onto a set, preserving the morphism structure in C, and saying there are as many ways to do that precisely as there are collection of elements in the presheaf on that object.

## Natural transformation
- Relate constructions
- Naturally isomorphic
- Natural transformations express how relations are related. They are comparisons of analogies.

- An isomorphism of functors is stronger than the image of each object being isomorphic, as the latter does not imply there is a natural transformation. If there does exist a natural transformation, then the statements are equivalent.

## Universal properties
Universal properties are all manifestations of the same underlying idea. They are special cases and generalizations over one another.

Universal properties formalize the idea of looking at every possible construction, idea, or realization, and seeing which one is factored through/is factored through.

Universal properties give rise to an adjoint pair only if every object has a construction.

- One fundamental concept in category theory is that of universal properties.
- These capture the notion of finding a unique object and arrow along with a unique relationship with every other object+arrow (in some class of objects).
- Finding the best solution to a question given a collection of candidate objects and the related morphisms
- end and coend

### Adjunction
- Global/Local
- Integration/derivation
- Probability/inference
- Mass/density
- Type/Value of function

Adjoint functor theorem: right adjoints preserve all limits and left adjoints preserve all colimits. The adjoint functor theorem states the converse, that under certain properties, a functor that preserves limits is a right adjoint and a functor that preserves colimits is a left adjoint.

Something is efficient if it satisfies a universal property.

Something is formulaic if it defines a formula, that is, it maps every object of a category to a new context.

Pairs of adjoint functors can be used to describe optimal solutions to problems. Such as referring to the best universal construction in a category.

### Limits
Think about how limits behave in the opposite category.

Limit and colimits are ways of gluing objects together. A category with all limits has objects which can be constructed to contain any structure of objects.

Colimits primarily about how the object factors through other objects.
Limits primarily about how objects factor through the limiting object

A limit is a universal morphism from $\triangle$ to $F$. A colimit is a universal morphism from $F$ to $\triangle$. A cone is a natural transformation $ψ : X → F$ considered a morphism family indexed by objects in $C$.

- Limits
    - Terminal objects
    - Products
    - Equalizers
    - Kernels
    - Pullback (fibered product)
        - The categorical semantics of an equation. The pullback is the largest fiber bundle such that its projections can be made equal.
        - The pullback can be a non-trivial product, that is, it can represent global information of fibers in relation to their projections. The morphisms $f$ and $g$ can be viewed as proofs that corresponding points in $A$ and $B$ are equal (can be mapped to the same point).
    - Inverse limit
- Colimits
    - Initial objects
    - Coproducts
    - Coequalizers Cokernels and quotients
    - Pushout
    - Direct limit
- Incredible abstraction/idea
- Type of universal property. Similar to the idea of limits in real analysis.
- Find the best object of the objects that relate to another category (considered as a sub category)

### Kan extension
- Extend a function defined on a part to a whole
- Restriction/extension of sheaves (extension of the site they are defined on)
- Extend a function defined on a partial set to a function on a whole
- Extend the expential $2^- : N -> R_{<0}$ to $2^- : R -> R_{<0}$

## Yoneda lemma
The Yoneda Lemma specifies that objects can be uniquely characterized by their hom-sets. This universal property applied to each object can be used as a definition for a construction, known as universal construction.

States that the natural transformations between two presheafs a hom functor $Hom(-,A)$ and functor $F$, $Nat(Hom(-,A),F)$, are in one to one correspondance, dependent on the number of representations of the identity morphisms in $F(A)$. There is a one-to-one correspondance between the number of natural transformations taking $idₐ$ to $F(A)$, $idₐ$ to each element of $F(A)$. The elements of $F(X)$ are completely determined by wherever natural transformations take $idₐ$.

For example, the Hom set Hom(-,X) in the category of topological spaces gives all continuous maps onto X, including structures like all embeddings and points of X. One can associate this Hom functor with any other functor and a natural bjiection between the two. Further, in the special case that the other functor is Hom functor on another object Hom(-,Y), one can recover all relevant information in the category.

The Yoneda embedding is useful as it induces a fully faithful embedding of a category into the category of presheafs on that category, preserving all limits. Further, if this category is small, the category of presheafs has all finite colimits (it is the free cocompletion).

## Exponential objects
Can represent a function space. Function space is a set of functions between two sets (objects) where functions take on structure from the domain/codomain. Take the collection of morphisms between the interval and euclidean space. The function space can be interpreted as embeddings of each function in euclidean space. Or maps from a set to vector space, which assigns each element to a vector. Each function then can be viewed as a collection of vectors.

# Overview
Morphisms and functors at the base level express a kind of binary relationship, either themselves and their objects are equal or they are not. But higher mappings between these structures exposes a higher category, now interpreting those morphisms and functors as objects, with this binary relationship on the mappings between these new objects.

- Higher category theory
    - Universal constructions
        - Limits
        - Adjunctions
        - Kan extension
        - End
        - Representable functors
    - View morphisms in higher categories as expressing the higher-dimensional relationships between these higher objects.
    - n-category
    - (n,r)-category
        (2,1)-category := 2-Category
        (1,1)-category := Category
        (1,0)-category := 1-groupoid
        (0,0)-category := Set
        (-1,0)-category := Truth value
        (-2,0)-category := Trivial

- Category theory should be thought of a semantic view of various properties, and categories with certain structure are additional properties. In the semantic view of logic, these properties correspond to axioms.

- Model category
    - A model category is a category with 3 classes of morphisms, with each class closed under composition.
        - Weak equivalences
            - Context for doing homotopy theory
            - In Top, these correspond to fundamental group/groupoid
        - Fibrations (nice surjections)
            - In the category Top, these correspond to fiber bundles
        - Cofibrations (nice injections)
            - In the category Top, express how spaces can include smaller spaces
    - An (∞,1)-category is a category with 1-morphisms and additional which tracks which 1-morphisms are equivalences.

- Interpretations
    1. Algebra of paths
        - Category is an algebra of paths
        - Functors are recontextualization of the algebra of paths
    2. Contexts
        - Categories are contexts
        - Functors are constructions
        - Natural Transformations are recontextualizations

# Categories
- Evolving system
    - Slice category of graphs, mapping a graph to graphs it can evolve to
    - Time-indexed graphs in category of graphs
    - Graphs where morphisms are time dependent transformations
- Category with morphisms or functors as objects. One can view morphisms or functors as labelled processes between two objects or constructions. Morphisms on these objects are modifications of the process, alterations of the composition, or changing of the domain/codomain.
- Topology
    - Morphisms are closeness-preserving maps
    - Homeomorphisms can be seen as structure preserving maps (functors)
    - Open sets can be seen as the structure of the category of topological spaces
- Power
- Physics
- Business
- Computer science
    - Internet
    - Program
    - Category Hask
        - Objects are types, types of types, etc.
        - Morphisms are functions
        - n-cells (n>1) are functions that take other functions
        - Function taking types and returning types are type constructors
        - Provides an interesting context in which one can run computationson
        - There is a certain order required of the natural transformations (maps to sequential operations)
        - Provides necessary tooling for working with contexts
        - Endofunctor with coherent natural transformations
        - Monoid in the category of endofunctors
        - Monoids are associative and have an identity, so order matters. So application of unit/join have an order in which to be applied. So it represents sequential computation.
        - Functors in haskell are endofunctors
        - Functors take objects to a new context
        - Ff defines a way to apply the function f in the resulting context
        - Examples
            - Maybe := Context with failure
            - Either := Context with either/or
            - List := Context with multiple values
            - IO := Context with actions
        - Monad
            - A category is a particular context which defines potential structure on objects and their relationships. A functor is a change of contexts, preserving the structure, which converts the structure of objects and morphisms to satisfactory corresponding items in the codomain category. A natural transformation is a morphism of functors which modifies how objects and morphisms are recontextualized. Monads are a certain context which have a notion of sequential action. This is captured through the natural transformations join and unit, which have identity, are associative but not commutative. This is, in some sense, the nicest algebraic properties one can have while still requiring order of application. A monad is then a certain context in which one can do sequential actions.
            - Yet another crappy monad explanation. A monad is a context in which one can do sequential computation. And, given a value in the monad context, one can wrap, or unwrap the context. We can sequentially apply these wrap and unwrap functions in addition to applying normal functions to values in the monad context. For example, imagine a context in which computations can fail, or succeed with a value. We can sequentially apply functions (like 1/). To do this apply the function (1/) to a value x in the context. If the value x already represents a failed computation, we simply fail again. If x represents a success, then we take its value and apply the function, returning success (1/x) or fail if, in this case, x happened to be 0. Alternatively we can image a context in which we want to have computations with multiple values and where we apply functions over each of these values.

- Neuroscience
    - Brain
        - Objects are open sets representing cells (mainly neurons) that are connected
        - One can create sub categories representing the vascular system, neurons, glial cells, etc.
        - Objects
            - Cortical columns
            - Functional area
            - Boccas area
            - Neocortex
        - Sheafs
            - Maps open sets to probability that they are a certain area. Appears as a distribution. Each function represents a different brain function. Represents this as a 3d(or higher with time, etc.) image, with higher density representing the area. (x,y,z,t,density){}
        - Forms a covering

- Math
    - Simplex
    - Set
    - Binary operations
        - Poset
        - Preorder
        - Equality
    - Numbers
    - Topological spaces
    - (Smooth) manifolds
    - Linear algebra
    - Homotopy type theory
- Sets
- Relations
- Algebraic
    - Groups
        - Magmas
        - Abelian groups
        - Group actions
        - Monoid
        - Groupoid
    - Rings
        - Fields
    - Modules
        - Vector spaces
- Constructions on categories
    - Free category
    - Functor category
    - Kleisli category
    - Opposite category
    - Quotient category
    - Product category
    - Comma category
    - Subcategory
        - Take a subset of elements of a category, and fill it freely with necessary data to satisfy the structure of the original category.
        - Examples
            - Subtopology
            - Subgroup
            - Subfield
            - Subspace

# GPT
"Why are universal morphisms so useful to represent a diverse collection of ideas and concepts? Can you give a list of examples and ideas in mathematics formulated using universal properties?"

Universal morphisms are powerful conceptual tools in mathematics because they allow for the abstract definition of a wide variety of constructions in terms of unique mappings that satisfy certain properties. The elegance of universal properties is that they can often define objects up to unique isomorphism, which means that the definition captures the essence of the structure without reference to any particular construction or representation. This level of abstraction makes it easier to prove general results and to transfer intuition and techniques across different areas of mathematics.

Here is a list of examples and ideas in mathematics that are commonly formulated using universal properties:

    Products and Coproducts: In category theory, the product of a collection of objects is defined by a universal property involving a unique morphism from the product object to each factor. Dually, the coproduct is defined by a universal property involving a unique morphism from each factor to the coproduct object.

    Initial and Terminal Objects: An initial object in a category is one for which there is a unique morphism from it to any other object. Dually, a terminal object has a unique morphism from every object to it.

    Free Objects: A free group (or free object in another category) is defined by a universal property related to the way elements of a set map into the group. For example, a free group on a set S is a group along with a function from S to the group such that any function from S to another group factors uniquely through this function.

    Limits and Colimits: Limits in category theory generalize products, pullbacks, and other constructions. They are defined by a universal property that involves cones and a unique factorization property. Colimits are the dual notion and include coproducts, pushouts, and more.

    Adjoint Functors: Given two categories and a pair of functors between them, an adjoint functor is defined by a universal property that specifies how the functors relate to each other via natural isomorphisms between certain Hom-sets.

    Tensor Products: In the context of modules over a ring, the tensor product is defined by a universal property involving bilinear maps. The tensor product of two modules is the most general module that allows for bilinear maps from the product of the two modules to be factored uniquely through it.

    Direct and Inverse Limits: In the context of algebra, direct limits (also known as inductive limits) and inverse limits (projective limits) of systems of objects are defined by universal properties that describe how elements of the systems map to or from the limit object.

    Homotopy Limits and Colimits: In algebraic topology, homotopy limits and colimits generalize the notion of limits and colimits to accommodate homotopy considerations.

    Representable Functors: A functor is said to be representable if it is naturally isomorphic to the Hom-functor for some object. This is a universal property that captures the essence of representability.

    Universal Coefficient Theorem and Universal Covering Spaces: In algebraic topology, the universal coefficient theorem relates the homology of a space with the cohomology, and universal covering spaces are unique up to isomorphism with a certain universal property related to covering maps.

"How can exponential objects be represented in a category with universal objects. What is the category and what is the functor valued in? Can other ideas like limits or kan extensions be used to define exponential objects and if so, how?"

Exponential objects in category theory can be understood as a generalization of the function space concept from set theory, but within the context of an arbitrary category. They are a way to represent "functions" or "morphisms" within a category in a way that captures the notion of one object being raised to the power of another.

For a category ( \mathcal{C} ), an exponential object is usually denoted by ( B^A ), where ( A ) and ( B ) are objects in ( \mathcal{C} ). The exponential object ( B^A ) represents the object of all morphisms from ( A ) to ( B ) in a way that is suitably "categorical."

To define exponential objects using universal properties, we use the concept of an adjunction. Specifically, in a category ( \mathcal{C} ) with binary products, an object ( B^A ) is the exponential object of ( B ) and ( A ) if there exists an isomorphism that is natural in ( X ):
[ \mathcal{C}(X \times A, B) \cong \mathcal{C}(X, B^A) ]
This isomorphism gives us a bijection between the set of morphisms ( X \times A \to B ) and the set of morphisms ( X \to B^A ). The object ( B^A ) together with a morphism ( \text{eval} : B^A \times A \to B ) (called the evaluation morphism) must satisfy this property universally.

In a more formal sense, the functor valued in is the functor:
[ - \times A : \mathcal{C} \to \mathcal{C} ]
This functor takes an object ( X ) and maps it to the product ( X \times A ). The right adjoint to this functor, if it exists, will take an object ( B ) and map it to the exponential object ( B^A ), which represents the object of morphisms from ( A ) to ( B ).

Other categorical concepts like limits and Kan extensions can also be related to exponential objects. For example:

    Limits: Exponential objects can be seen as a specific form of limit. Specifically, if you have a diagram of shape ( J ) in your category ( \mathcal{C} ), a limit would be the universal object representing a cone over that diagram. Similarly, the exponential object ( B^A ) is the universal object representing all ways of mapping ( A ) into ( B ) when viewed through the adjunction lens.

    Kan Extensions: A Kan extension is a way of extending or restricting functors between categories. If you have a functor ( F : \mathcal{C} \to \mathcal{D} ) and a functor ( G : \mathcal{C} \to \mathcal{E} ), then a right Kan extension of ( F ) along ( G ) is a functor ( \text{Ran}_G F : \mathcal{E} \to \mathcal{D} ) together with a natural transformation satisfying a universal property. The relationship between Kan extensions and exponential objects is more abstract, but one can think of the exponential object as a kind of solution to a universal problem, much like how Kan extensions solve universal problems relating to the extension of functors.

In general, categorical concepts like exponential objects, limits, and Kan extensions are deeply interwoven and can be used to describe and solve problems in a very general and abstract way, which is one of the strengths of category theory.
