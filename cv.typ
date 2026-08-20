#import "@preview/fontawesome:0.6.0": *

#let yonsei = rgb(0, 32, 91)

#set text(font: "IBM Plex Sans", stretch:75%)
#show heading: set text(yonsei)

#show link: underline
#set page(
 margin: (x: 0.9cm, y: 1.3cm),
 numbering: "1"
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
*Postdoctoral Researcher* \

#grid(
  columns: (70%, 1fr),
  align(left)[
    Key Laboratory of Nuclear Physics and Ion-beam Application (MOE), Fudan University \
    Shanghai, 200433, China &\
    RIKEN Center for Interdisciplinary Theoretical and Mathematical Sciences (iTHEMS)\
    Wako, Saitama 351-0198, Japan
  ],
  align(right)[
    #text(yonsei)[#fa-icon("envelope", solid:true)#h(0.75em)]:#hide("1") #link("mailto:tgkim@fudan.edu.cn")[`tgkim@fudan.edu.cn`] \
    #text(yonsei)[#fa-icon("github", solid:true)#h(0.6em)]:#hide("123") #link("https://github.com/Axect")[`github.com/Axect`] \
    #text(yonsei)[#fa-icon("house", solid:true)#h(0.55em)]:#hide("1234") #link("https://axect.github.io/en")[`axect.github.io`] \
    #text(yonsei)[#fa-icon("google", solid:true)#h(0.45em)]:#hide("12345") #link("https://scholar.google.com/citations?user=Gnat36QAAAAJ")[`Google Scholar`] \
    #text(yonsei)[#fa-icon("id-card")#h(0.5em)]:#hide("1")#link("https://orcid.org/0009-0000-4229-2935")[`0009-0000-4229-2935`]
  ]
)

== Appointments
#chiline()

*Fudan--RIKEN Joint Postdoctoral Fellow* #h(1fr) Nov. 2025 -- Present \
_Key Laboratory of Nuclear Physics and Ion-beam Application (MOE), Fudan University_, Shanghai, China; \
_RIKEN Center for Interdisciplinary Theoretical and Mathematical Sciences (iTHEMS)_, Wako, Japan

#v(0.25cm)

== Education
#chiline()

*Ph.D. in Theoretical Particle Physics*, _Yonsei University, Seoul, Republic of Korea_ #h(1fr) Mar. 2017 -- Aug. 2025 \
Thesis: _Intercommunication between Artificial Intelligence and Physics_ (Supervisor: Prof. Seong Chan Park) \

*B.Sc. in Astronomy*, _Yonsei University, Seoul, Republic of Korea_ #h(1fr) Mar. 2012 -- Feb. 2017 \

#v(0.25cm)

== Military Service
#chiline()

*Technical Research Personnel*, _Republic of Korea Army (ROKA)_ #h(1fr) Sep. 2022 - Aug. 2025

#v(0.25cm)

== Research Areas & Expertise
#chiline()

- *Dark matter physics*
  - Phenomenology of axion-like particles & primordial black holes
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

- *Primary Languages:* Rust, Python, C++, Julia

- *Frameworks & Libraries*
  - *Numerical Computing:* `peroxide, numpy, scipy, pandas/polars, BLAS/LAPACK, eigen, matlab, mathematica`
  - *Machine Learning:* `pytorch, jax/equinox/optax, wandb, optuna, candle, tensorflow, scikit-learn`
  - *Visualization:* `matplotlib, vegas, ggplot2, plotly`
  - *High Energy Physics:* `BlackHawk, galprop, madgraph, root`
  - *Quantum Computing:* `pennylane, qiskit, cirq, rustqip`
  - *Web:* `django, vue, firebase, hugo, zola, elm`

#v(0.25cm)

== Honors & Fellowships
#chiline()

- APS DCOMP Travel/Registration Award, APS Division of Computational Physics, CCP2026 (2026)
- Shanghai Superpostdoc Fellowship, Shanghai Municipal Government (2025-2027)
- Fudan Superpostdoc Fellowship, Fudan University (2025-2027)
- Academy Research Fellowship, Yonsei University (2022-2023)
- Best Oral Presentation Award, KPS 70th Anniversary and 2022 Fall Meeting (2022)

#v(0.25cm)

== Publications
#chiline()

#grid(
    columns: (0.075fr, 0.925fr),
    align(left)[
        2026\
        \
        \
        2026\
        \
        \
        2025\
        \
        \
        2024\
        \
        2024\
        \
        2024\
        \
        \
        \
        2023\
        \
        \
    ],
    align(left)[
        #journal()["Peroxide: A Batteries-Included Numerical Computing Library for Rust"], *T.-G. Kim*, G. Comitini, J. Grage, B. Joens, M. Schreiber, et al., #link("https://doi.org/10.21105/joss.10366")[_J. Open Source Software_ *11*, 10366]
        \
        \
        #journal()["Primordial Black Holes as a Factory of Axions: Extragalactic Photons from Axions"], Y. Jho#super[\*], *T.-G. Kim*#super[\*], J.-C. Park#super[\*], S. C. Park#super[\*], Y. Park#super[\*], #link("https://doi.org/10.1093/ptep/ptag011")[_Prog. Theor. Exp. Phys._ *2026*, 023B07], [#link("https://arxiv.org/abs/2212.11977")[`2212.11977`]]
        \
        \
        #journal()["Learning Unknown Gravitational Fields for Spacecraft Trajectory Prediction and Estimation"], T. Kim#super[\*], *T.-G. Kim*#super[\*], A. Girard, I. Kolmanovsky, Under Review, [#link("https://arxiv.org/abs/2501.18808")[`2501.18808`]]
        \
        \
        #journal()["Neural Hamilton: Can A.I. Understand Hamiltonian Mechanics?"], *T.-G. Kim*, S. C. Park, [#link("https://arxiv.org/abs/2410.20951")[`2410.20951`]]
        \
        \
        #journal()["HyperbolicLR: Epoch insensitive learning rate scheduler"], *T.-G. Kim*, [#link("https://arxiv.org/abs/2407.15200")[`2407.15200`]]
        \
        \
        #journal()["Unsupervised sequence-to-sequence learning for automatic signal quality assessment in multi-channel electrical impedance-based hemodynamic monitoring"], C. M. Hyun#super[\*], *T.-G. Kim*#super[\*], K. Lee, #link("https://doi.org/10.1016/j.cmpb.2024.108079")[_Comput. Meth. Prog. Bio._ *245*, 108079], [#link("https://arxiv.org/abs/2305.09368")[`2305.09368`]]
        \
        \
        #journal()["Missing information search with Deep Learning for Mass estimation (DeeLeMa)"], K. Ban#super[\*], D. W. Kang#super[\*], *T.-G. Kim*#super[\*], S. C. Park#super[\*], Y. Park#super[\*], #link("https://journals.aps.org/prresearch/abstract/10.1103/PhysRevResearch.5.043186")[_Phys. Rev. Research_ *5*, 043186], [#link("https://arxiv.org/abs/2212.12836")[`2212.12836`]]
        \
        \
    ]
)

#text(size: 0.85em)[#super[\*] Co-first authors.]

#v(0.25cm)

== Invited Talks
#chiline()

#grid(columns: (0.075fr, 0.925fr),
    align(left)[
      2026\
      \
      2026\
      \
      2026\
      \
      2026\
      \
      2025\
      \
      \
      2025\
      \
      2025\
      \
      2024\
      \
    ],
    align(left)[
      #talk()["Can you trust your neural sampler?"] at _CCP2026 @ Sejong University_, Seoul, Korea \
      \
      #talk()["Can one see the mass of a PBH?"] at _KIAS Seminar_, Seoul, Korea \
      \
      #talk()["Neural Inverse Problems and Degeneracy: SMEFT and PBHs"] at _PARTIQAL @ IBS_, Daejeon, Korea \
      \
      #talk()["Inverse Problems in High Energy Physics"] at _DEEP-IN Starter Meeting @ RIKEN_, Wako, Japan \
      \
      #talk()["From Primordial Black Holes to Nuclei: Solving Inverse
Problems in Physics with Operator Learning"] at _Nuclear Lunch Seminar @ Fudan University_, Shanghai, China \
      \
      #talk()["PBH Phenomenology with Operator Learning"] at _LSSU Seminar \@ JBNU_, Jeonju, Korea \
      \
      #talk()["Can A.I. Understand Hamiltonian Mechanics?"] at _DEEP-IN Seminar \@ RIKEN_, Online \
      \
      #talk()["Can A.I. Understand Hamiltonian Mechanics?"] at _KIAS_, Seoul, Korea \
      \
    ]
)

#pagebreak()

== Contributed Talks
#chiline()

#grid(columns: (0.075fr, 0.925fr),
    align(left)[
      2026\
      \
      2026\
      \
      2025\
      \
      \
      2025\
      \
      \
      2025\
      \
      2025\
      \
      2025\
      \
      \
      2024\
      \
      2024\
      \
      2024\
      \
      2023 \
      \
      \
    ],
    align(left)[
      #talk()["Can you trust your neural samplers?"] at _AI Agents for Nuclear Physics @ Fudan U._, Shanghai, China \
      \
      #talk()["Accelerating PBH Phenomenology via Neural Operators"] at _The 2nd AI+HEP in East Asia @ KEK_, Tsukuba, Japan \
      \
      #talk()["Can AI Understand Hamiltonian Mechanics?"] at _29th International Summer Institute on Phenomenology of Elementary Particle Physics and Cosmology_, Yeosu, Korea \
      \
      #talk()["A Neural Operator for Primordial Black Hole Physics"] at _The 4th workshop on Symmetry and Structure of the Universe_, Jeonju, Korea \
      \
      #talk()["AI with Hamiltonian Mechanics: From Predictions to Understanding"]
      at _AI+HEP in East Asia 2025_, Daejeon, Korea \
      \
      #talk()["Can A.I. Understand Hamiltonian Mechanics?"]
      at _Dark Matter as a portal to New Physics 2025_, Pohang, Korea \
      \
      #talk()["Can A.I. Understand Hamiltonian Mechanics?"]
      at _Focused workshop on AI in High Energy Physics 2025_, Seoul, Korea \
      \
      #talk()["Can A.I. Understand Hamiltonian Mechanics?"]
      at _2024 Korea-France STAR Workshop_, Seoul, Korea \
      \
      #talk()["Can A.I. Understand Hamiltonian Mechanics?"]
      at _21st Saga-Yonsei Joint Workshop_, Seoul, Korea \
      \
      #talk()["Primordial Black Hole dominant Axion background"]
      at _2024 KPS Fall Meeting_, Yeosu, Korea \
      \
      #talk()["Exploration of PBHs and ALPs through a novel decay model on cosmological scale"]
      at _27th International Summer Institute on Phenomenology of Elementary Particle Physics and Cosmology_, Nantou, Taiwan \
      \
    ]
)

#v(0.2em)

== Teaching Experience
#chiline()

#grid(columns: (0.075fr, 0.075fr, 0.075fr, 0.775fr),
  align(left)[
      2025\
      \
      \
      2021\
      \
      2020\
      \
      \
      2019\
      \
      \
      2017\
      \
  ],
  align(left)[
      Spring\
      \
      \
      Spring\
      \
      Fall\
      Spring\
      \
      Fall\
      Spring\
      \
      Fall\
      Spring\
  ],
  align(left)[
      Lecturer\
      \
      \
      TA\
      \
      TA\
      TA\
      \
      TA\
      TA\
      \
      TA\
      TA\
  ],
  align(left)[
      *Quantum Universe - Special Research*, PHY 9901, Yonsei University, Seoul, Republic of Korea (Lecture about Deep Learning for Physics)\
      \
      *Introduction to General Relativity*, PHY4208, Yonsei University, Seoul, Republic of Korea\ 
      \
      *Quantum Mechanics (2)*, PHY3102, Yonsei University, Seoul, Republic of Korea\
      *Quantum Mechanics (1)*, PHY3101, Yonsei University, Seoul, Republic of Korea\
      \
      *Quantum Mechanics (2)*, PHY3102, Yonsei University, Seoul, Republic of Korea\
      *Elementary Particle Physics I*, PHY8050, Yonsei University, Seoul, Republic of Korea\
      \
      *Gravity I: General Relativity*, PHY8030, Yonsei University, Seoul, Republic of Korea\
      *Mathematical Physics (1)*, PHY4205, Yonsei University, Seoul, Republic of Korea
  ]
)

#v(0.2em)

== Selected Open Source Projects
#chiline()

*Peroxide* #h(1fr) Sep. 2018 -- Present
- Comprehensive Rust numeric library for linear algebra, numerical analysis, and statistics #h(1fr) #link("https://github.com/Axect/Peroxide")[#fa-icon("star")] #h(0.4em): #hide("1,421,")723
- Customizable features for pure Rust, BLAS/LAPACK integration, and plotting capabilities #h(1fr) #link("https://crates.io/crates/peroxide")[#fa-icon("download")] #h(0.5em): 1,250,135
- Includes automatic differentiation, special functions, DataFrame functionality, and various numerical algorithms
- Archived on Zenodo, #link("https://doi.org/10.5281/zenodo.10815823")[`10.5281/zenodo.10815823`]; software paper published in JOSS, #link("https://doi.org/10.21105/joss.10366")[`10.21105/joss.10366`]

#pagebreak()

*Puruspe* #h(1fr) Feb. 2020 -- Present
- Pure Rust library for special functions with no external dependencies #h(1fr) #link("https://github.com/Axect/Puruspe")[#fa-icon("star")] #h(0.4em): #hide("1,428,4")29
- Implements gamma, beta, and error functions, including their regularized and inverse versions #h(1fr) #link("https://crates.io/crates/puruspe")[#fa-icon("download")] #h(0.5em) : 1,317,072
- Lightweight and efficient implementation ideal for mathematical and scientific computing

#v(0.1cm)

*PyTorch Template* #h(1fr) Aug. 2024 -- Present
- Flexible PyTorch template for ML experiments with modular structure #h(1fr) #link("https://github.com/Axect/pytorch_template")[#fa-icon("star")] #h(0.4em): #hide("1,123,4")10
- Supports YAML-based configuration for easy experiment setup and reproducibility
- Supports multiple random seeds, device selection, and learning rate scheduling for robust experimentation

#v(0.1cm)

*Neural Hamilton* #h(1fr) Sep. 2024 -- Present
- Official implementation of the paper #link("https://arxiv.org/abs/2410.20951")[_Neural Hamilton_] [#link("https://arxiv.org/abs/2410.20951")[`2410.20951`]] #h(1fr) #link("https://github.com/Axect/Neural_Hamilton")[#fa-icon("star")] #h(0.4em): #hide("1,123,4")14
- Operator-learning architectures (DeepONet, TraONet, VaRONet, MambONet) for Hamilton's equations
- Rust-based generator for physically plausible potentials via Gaussian random fields and cubic B-splines

#v(0.1cm)

*Quantum Algorithms* #h(1fr) Dec. 2023 -- Jun. 2024
- Implement quantum algorithms in Pennylane, RustQIP, Qiskit and Cirq #h(1fr) #link("https://github.com/Axect/QuantumAlgorithms")[#fa-icon("star")] #h(0.4em): #hide("1,123,45")7
- Provide jupyter notebooks for quantum algorithms with detailed descriptions and interactive visualizations

#v(0.1cm)

//*Forger* #h(1fr) Nov. 2023 -- Nov. 2023
//- Reinforcement Learning (RL) library implemented in Rust #h(1fr) #link("https://github.com/Axect/Forger")[#fa-icon("star")] #h(0.5em): #hide("123,45")3
//- Including implementations of Epsilon Greedy Policy and Q-Learning #h(1fr) #link("https://crates.io/crates/forger")[#fa-icon("download")] #h(0.5em): #hide("12")6,376
//
//#v(0.2cm)
//
//*RGE* #h(1fr) Aug. 2017 -- Oct. 2017
//- Go package for solving Renormalization Group Equations with Julia integration for plotting #h(1fr) #link("https://github.com/Axect/RGE")[#fa-icon("star")] #h(0.5em): #hide("123,45")4
//- Modular structure with customizable constants, variables, and beta functions for flexible RGE implementation
//- Supports numerical integration methods and parallel processing for efficient computation

#v(0.25cm)

== Study Groups
#chiline()

*SYTEARK Machine Learning Study Group* [#link("https://github.com/SYTEARK")[`SYTEARK`]\; #link("https://github.com/SYTEARK/MLStudy")[`MLStudy`], #link("https://github.com/SYTEARK/ML2022")[`ML2022`], #link("https://github.com/SYTEARK/ML2021")[`ML2021`]] #h(1fr) 2019 -- Present
- Founder and organizer of a machine learning study group for theoretical physics
- Current participants: 3 High energy physics graduate students, 1 postdoc and 1 A.I. researcher
- Weekly rotational presentations on machine learning journals, topics, and personal research

#v(0.5em)

*Yonsei Cosmo-Chalk* #link("https://github.com/Yonsei-HEP-COSMO/Yonsei-Cosmo-Chalk")[[`Yonsei Cosmo-Chalk`]] #h(1fr) 2024 -- Mid 2025
- Co-organizer of the weekly blackboard talks in Yonsei HEP-COSMO.
- Facilitates research presentations, journal discussions, and collaborative dialogues among group members
- Fosters a supportive environment for intellectual growth and peer-to-peer learning in high-energy physics and cosmology

#v(0.5em)

*ML and QML Study Group* #h(1fr) 2021 -- Mid 2024
- Participated in study group led by Prof. Myung Hoon Park (Seoultech.) and Prof. Kyoungchul Kong (U. Kansas) at KIAS
- Study about machine learning and quantum machine learning

#v(1em)

== Services
#chiline()

*Web master for Yonsei HEP-COSMO* #h(1fr) Mar. 2017 -- Aug. 2025
- Developed and maintained the #link("https://hepcosmo.yonsei.ac.kr")[Yonsei HEP-COSMO website]

*Beta Reader for Jpub Publishing* #h(1fr) Oct. 2019 -- Mar. 2025
- Beta reader for Jpub publishing, specializing in error detection for Rust and deep learning publications.
- Reviewed a total of 16 books as a beta reader.

*Judge for SPARCS Science Hackathon 2024* #h(1fr) Oct. 2024
- SPARCS Science Hackathon 2024, "SW for Science", held by KAIST & Daejeon Metropolitan City

*Web Assistant for the College of Science, Yonsei University* #h(1fr) Sep. 2017 --  Aug. 2022
- Improved and maintained the #link("http://science.yonsei.ac.kr/")[College of Science website]

#v(1em)

//== Reference List
//#chiline()
//
//- *Seong Chan Park*, Professor, _Yonsei University, Seoul, Republic of Korea_ #h(1fr) #link("mailto:sc.park@yonsei.ac.kr")[sc.park\@yonsei.ac.kr]
//
//- *Jong-Chul Park*, Professor, _Chungnam National University, Daejeon, Republic of Korea_ #h(1fr) #link("mailto:jcpark@cnu.ac.kr")[jcpark\@cnu.ac.kr]
//
//- *Kyoungchul Kong*, Professor, _University of Kansas, Lawrence, Kansas, USA_ #h(1fr) #link("mailto:kckong@ku.edu")[kckong\@ku.edu]
