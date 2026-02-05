---
layout: page
title: Miscellaneous projects
description: "Compliation of various projects including: ai, cybersecurity, dsa, websites, sysadmin"
category: work
giscus_comments: false
importance: 2
github: https://github.com/t-wilkinson/projects
---

{% include project.liquid %}
{% capture github %}{{ page.github }}/tree/main{% endcapture %}


| Location                                                            | Languages/Tools          | Tags                                      |
| ------------------------------------------------------------------- | ------------------------ | ----------------------------------------- |
| [./ai-presentation]({{ github }}/ai/ai-presentation)                                | `python` `pytorch`       | `ai`                                      |
| [./algorithms]({{ github }}/dsa)                                          | `python`                 | `algorithms`                              |
| [./ball-fall-game-ai]({{ github }}/ai/ball-fall-game-ai)                            | `python`                 | `game` `ai` `neat`                        |
| [./haskell-funtime]({{ github }}/haskell/haskell-funtime)                                | `haskell` `nix`          | `category-theory` `logic`                 |
| [./homotopy-type-theory]({{ github }}/misc/homotopy-type-theory)                      | `agda`                   | `logic` `homotopy-type-theory`            |
| [./neural-style]({{ github }}/ai/neural-style)                                      | `python` `pytorch`       | `ai` `style-transfer`                     |
| [./npm-rxjs-redux-store]({{ github }}/misc/npm-rxjs-redux-store)                      | `javascript`             | `rxjs` `state-management`                 |
| [./parsers]({{ github }}/dsa/parsers)                                                | `haskell` `typescript`   | `parser`                                  |
| [./penguin-sweater-store]({{ github }}/sites/original-collection/penguin-sweater-store)                    | `javascript` `next`      | `ecommerce`                               |
| [./portfolio-clojure]({{ github }}/sites/portfolio-clojure)                            | `clojure`                | `portfolio`                               |
| [./portfolio-reactjs]({{ github }}/sites/portfolio-reactjs)                            | `reactjs`                | `portfolio`                               |
| [./portfolio-svelte]({{ github }}/sites/portfolio-svelte)                              | `svelte`                 | `portfolio`                               |
| [./remote-note-server]({{ github }}/misc/remote-note-server)                          | `javascript`             | `webserver`                               |
| [./l-system]({{ github }}/misc/l-system)                                              | `python`                 | `fractal` `graphics` `lindenmayer-system` |
| [./rick-roll-detector]({{ github }}/cybersecurity/rick-roll-detector) | `react` `c` `go`         | `database` `rick-astley`                  |
| [./rick-roll-virus]({{ github }}/cybersecurity/rick-roll-virus)    | `c` `rust`               | `netedit` `rick-astley` `cyber-security`  |
| [./wikipedia-cloud]({{ github }}/wikipedia-cloud)                                | `c` `javascript` `redis` | `webscraping`                             |



## Current directory outline

```
├── ai
│   ├── ai-presentation
│   ├── architectures
│   ├── ball-fall-game-ai
│   ├── examples
│   ├── flake.lock
│   ├── flake.nix
│   ├── models
│   ├── N.E.A.T.
│   └── neural-style
├── cybersecurity
│   ├── rick-roll
│   ├── rick-roll-detector
│   └── rick-roll-virus
├── dsa
│   ├── algorithms
│   └── parsers
├── languages
│   ├── c
│   ├── haskell
│   ├── java
│   ├── nix
│   ├── node
│   ├── php
│   ├── python
│   └── r
├── misc
│   ├── homotopy-type-theory
│   ├── l-system
│   ├── mandelbrot-framebuffer
│   ├── npm-rxjs-redux-store
│   ├── remote-note-server
│   └── wikipedia-word-cloud
├── mls-c01
├── scripts
│   ├── alarm
│   ├── browser-profiles
│   ├── fix_history.sh
│   ├── flatten
│   ├── prj
│   └── umpv.py
├── sites
│   ├── browser-homepage
│   ├── elm-haskell
│   ├── haskell-reflex
│   ├── infinite-closet
│   ├── klean-studios
│   ├── original-collection
│   ├── portfolio-clojure
│   ├── portfolio-reactjs
│   └── ysa-website
└── sysadmin
```
