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

*Physics*, _Yonsei University, Seoul, Republic of Korea_ #h(1fr) 2017/03 -- present \
#h(1fr) *Ph.D.* \

*Astronomy*, _Yonsei University, Seoul, Republic of Korea_ #h(1fr) 2012/03 -- 2017/02 \
#h(1fr) *B.S.* \

== Research Areas
#chiline()

- *Dark matter physics*
  - Phenomenology with Axion-like particles & Primordial Black Holes
  - Detectability of dark matters (e.g. Axion-like particles, Dark photon, Primordial Black Holes)

- *Machine Learning for Physics*
  - Deep learning for missing information search or anomaly detection
  - Learn physics or dynamics with neural network
  - Functional & operator learning

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
        #journal()["DeeLeMa: Missing information search with Deep Learning for Mass estimation"], K. Ban, D. W. Kang, T.-G. Kim, S. C. Park, Y. Park, [#link("https://arxiv.org/abs/2212.12836")[`2212.12836`]]
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
    ],
    align(left)[
        #talk()["Exploration of PBHs and ALPs through a novel decay model on cosmological scale"] \
        at _27th International Summer Institute on Phenomenology of Elementary Particle Physics and Cosmology_, Nantou, Taiwan \
        \
        #talk()["Exploration of PBHs and ALPs through a novel decay model on cosmological scale"] \
        at _16th International Conference on Interconnections between Particle Physics and Cosmology_, Dajeon, Korea \
        \
        #talk()["Constraining ALPs via PBH with time-varying decay process"] \
        at _Workshop on Physics of Dark Cosmos: dark matter, dark energy, and all_, Busan, Korea \
        \
        #talk()["Constraining ALPs via PBH with time-varying decay process Part.2"] \
        at _KPS 70th Anniversary and 2022 Fall Meeting_, Busan, Korea \
        \
        #talk()["Bird's eye view of Neutron star cooling"] \
        at _16th Saga-Yonsei Joint Workshop_, Saga, Japan \
    ]
)

== Projects
#chiline()

*Peroxide* #h(1fr) 2018/09 -- present
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

