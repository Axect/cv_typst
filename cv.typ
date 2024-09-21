#import "@preview/fontawesome:0.4.0": *

#let yonsei = rgb(0, 32, 91)

#set text(font: "IBM Plex Sans", stretch:75%)
#show heading: set text(yonsei)

#show link: underline
#set page(
 margin: (x: 0.9cm, y: 1.3cm),
)
#set par(justify: true)

#let chiline() = {v(-3pt); line(length: 100%); v(-5pt)}

#let journal(title) = {
  text(yonsei, weight: "medium", style: "italic")[#title]
}

#let talk(title) = {
  text(maroon, weight: "medium", style: "italic")[#title]
}

= Tae-Geun Kim
*Ph.D. candidate* \

#grid(
  columns: (1fr, 1fr),
  align(left)[
    Department of Physics, Yonsei University \
    _Seoul, 03722, Republic of Korea_
  ],
  align(right)[
    #text(yonsei)[#fa-icon("envelope", solid:true)#h(0.75em)]: #link("mailto:tg.kim@yonsei.ac.kr")[`tg.kim@yonsei.ac.kr`] \
    #text(yonsei)[#fa-icon("github", solid:true)#h(0.6em)]:#hide("123") #link("https://github.com/Axect")[`github.com/Axect`] \
    #text(yonsei)[#fa-icon("house", solid:true)#h(0.55em)]:#hide("1234") #link("https://axect.github.io")[`axect.github.io`]
  ]
)
\
== Education
#chiline()

*Physics*, _Yonsei University, Seoul, Republic of Korea_ #h(1fr) Mar. 2017 -- Aug. 2025 (Expected) \
#h(1fr) *Ph.D.* \

*Astronomy*, _Yonsei University, Seoul, Republic of Korea_ #h(1fr) Mar. 2012 -- Feb. 2017 \
#h(1fr) *B.S.* \

== Research Areas & Expertise
#chiline()

- *Dark matter physics*
  - Phenomenology of Axion-like particles & Primordial Black Holes
  - Detectability studies of dark matter candidates using various astrophysical and cosmological probes
  - Theoretical modeling and simulation of dark matter interactions

- *Machine Learning for Physics*
  - Development of deep learning models for missing information search and anomaly detection in high-energy physics data
  - Neural network approaches to learn and emulate complex physical systems and dynamics
  - Functional and operator learning for solving differential equations and modeling physical phenomena

- *Scientific & High Performance Computing*
  - Design and implementation of efficient numerical algorithms for physics simulations
  - Optimization of computational methods for large-scale data analysis in astrophysics and particle physics
  - Development of high-performance software tools for scientific computing, with a focus on Rust-based solutions
  - Application of parallel computing techniques to accelerate physics computations

#v(0.25cm)

== Programming Skills & Tools
#chiline()

- *Primary Languages:* Rust, Python, C++, Julia, Haskell

- *Frameworks & Libraries*
  - *Numerical Computing:* `peroxide, numpy, scipy, pandas/polars, BLAS/LAPACK, eigen, matlab, mathematica`
  - *Machine Learning:* `pytorch, jax/equinox/optax, wandb, optuna, candle, tensorflow, scikit-learn`
  - *Visualization:* `matplotlib, vegas, ggplot2, plotly`
  - *High Energy Physics:* `BlackHawk, galprop, madgraph`
  - *Quantum Computing:* `pennylane, qiskit, cirq, rustqip`
  - *Web:* `django, vue, firebase, hugo, zola, elm`

#v(0.25cm)

== Honors & Fellowships
#chiline()

- Academy Research Fellowship, Yonsei University (2022-2023)
- Best Oral Presentation Award, KPS 70th Anniversary and 2022 Fall Meeting (2022)
- Student Fellowship, IBS-CTPU (2017-2018)

#pagebreak()

== Publications
#chiline()

#grid(
    columns: (0.075fr, 0.925fr),
    align(left)[
        2024\
        \
        2024\
        \
        2023\
        \
        \
        2022\
        \
        \
        2022\
    ],
    align(left)[
        #journal()["Neural Hamilton"], T.-G. Kim, S. C. Park, [`2409.XXXXX`]
        \
        \
        #journal()["HyperbolicLR: Epoch insensitive learning rate scheduler"], T.-G. Kim, [#link("https://arxiv.org/abs/2407.15200")[`2407.15200`]]
        \
        \
        #journal()["Unsupervised sequence-to-sequence learning for automatic signal quality assessment in multi-channel electrical impedance-based hemodynamic monitoring"], #link("https://doi.org/10.1016/j.cmpb.2024.108079")[_Comput. Meth. Prog. Bio. 108079_], [#link("https://arxiv.org/abs/2305.09368")[`2305.09368`]]
        \
        \
        #journal()["DeeLeMa: Missing information search with Deep Learning for Mass estimation"], K. Ban, D. W. Kang, T.-G. Kim, S. C. Park, Y. Park, #link("https://journals.aps.org/prresearch/abstract/10.1103/PhysRevResearch.5.043186")[_Phys. Rev. Res. 5. 043186_], [#link("https://arxiv.org/abs/2212.12836")[`2212.12836`]]
        \
        \
        #journal()["Axions from Primordial Black Holes"], Y. Jho, T.-G. Kim, J.-C. Park, S. C. Park, Y. Park, [#link("https://arxiv.org/abs/2212.11977")[`2212.11977`]]
        \
        \
    ]
)

== Talks 
#chiline()

#grid(columns: (0.075fr, 0.925fr),
    align(left)[
        2023 \
        \
        \
        \
        2022 \
        \
        \
        2022 \
        \
        \
        2022 \
        \
        \
        2019 \
        \
    ],
    align(left)[
        #talk()["Exploration of PBHs and ALPs through a novel decay model on cosmological scale"] \
        at _27th International Summer Institute on Phenomenology of Elementary Particle Physics and Cosmology_, Nantou, Taiwan \
        \
        #talk()["Exploration of PBHs and ALPs through a novel decay model on cosmological scale"] \
        at _16th International Conference on Interconnections between Particle Physics and Cosmology_, Daejeon, Korea \
        \
        #talk()["Constraining ALPs via PBH with time-varying decay process"] \
        at _Workshop on Physics of Dark Cosmos: dark matter, dark energy, and all_, Busan, Korea \
        \
        #talk()["Constraining ALPs via PBH with time-varying decay process Part.2"] \
        at _KPS 70th Anniversary and 2022 Fall Meeting_, Busan, Korea \
        \
        #talk()["Bird's eye view of Neutron star cooling"] \
        at _16th Saga-Yonsei Joint Workshop_, Saga, Japan \
        \
    ]
)

== Recent Conference Attendance & Schools
#chiline()

#grid(columns: (0.075fr, 0.15fr, 0.775fr),
    align(left)[
        2024\
        \
        2024\
        \
        2024\
        \
        2024\
        \
        2023\
        \
        2023\
        \
        \
        2023\
        \
        2023\
        \
    ],
    align(left)[
        Jul. 28 - Aug. 2\
        \
        Jul. 9 - 12\
        \
        Mar. 18 - 22\
        \
        Jan. 16 - 19\
        \
        Nov. 14 - 17\
        \
        Aug. 21 - 25\
        \
        \
        Jul. 3 - 21\
        \
        Feb. 12 - 18\
        \
    ],
    align(left)[
        *The 3rd workshop on Symmetry and Structure of the Universe*, JBNU, Korea\
        \
        *Cosmology workshop on the crossroads of astrophysics and particle physics*, KIAS, Korea\
        \
        *Workshop on Black Holes and Gravitational Waves*, IBS, Korea\
        \
        *Workshop on Dark Universe*, Yonsei BRL, Korea\
        \
        *AI and Quantum Information for Particle Physics*, KAIST, Korea\
        \
        *27th International Summer Institute on Phenomenology of Elementary Particle Physics and Cosmology*, NCTS, Taiwan\
        \
        *Machine Learning in Particle Theory 2023*, MITP, Germany\
        \
        *AI and Quantum Information Applications in Fundamental Physics*, KIAS, Korea\
        \
    ]
)

#pagebreak()

== Projects
#chiline()

*Peroxide* #h(1fr) Sep. 2018 -- Present
- Description: Rust comprehensive numeric library
- Links: #link("https://crates.io")[crates.io], #link("https://github.com/Axect/Peroxide")[github]
- Used skills: Rust, Cargo, Travis CI, surge.sh, Apache arrow

*HNumeric* #h(1fr) 2018/05 -- 2018/07
- Description: Numerical library for Haskell
- Links: #link("https://hackage.haskell.org/package/HNumeric")[hackage], #link("https://github.com/Axect/HNumeric")[github]
- Used skills: Haskell, Cabal, Stack

*RGE* #h(1fr) 2017/08 -- 2017/10
- Description: Go & Julia package to solve Renormalization Group Equation
- Link: #link("https://github.com/Axect/RGE")[github]
- Used technologies: Go, Julia, Glide

