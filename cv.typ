#import "@preview/fontawesome:0.6.0": *

#let accent = rgb(0, 32, 91)
#let muted = rgb(95, 100, 110)
#let sans = "Satoshi"

// Master CV. Tailored versions (cv_<call>.typ) are cuts and reorderings of this file, never separate facts.
// Citizenship (Republic of Korea) goes in a closing Citizenship section only when a call asks for it.
#set document(title: "Curriculum Vitae", author: "Tae-Geun Kim-Morgen")
#set page(
  paper: "us-letter",
  margin: (x: 0.75in, top: 0.65in, bottom: 0.55in),
  background: place(top + left, rect(width: 0.18in, height: 100%, fill: accent)),
  header: context {
    if here().page() > 1 {
      text(font: sans, size: 8.5pt, weight: "bold", fill: accent)[Tae-Geun Kim-Morgen]
      h(1fr)
      text(size: 9.5pt, style: "italic", fill: accent)[Curriculum Vitae]
    }
  },
  footer: context {
    set text(font: "P052", size: 8.5pt, fill: muted)
    align(center)[#counter(page).display("1 / 1", both: true)]
  },
)
#let body-size = 10pt
#set text(font: "P052", size: body-size, lang: "en")
#set par(justify: true, leading: 0.58em, spacing: 0.8em)
#set list(marker: text(fill: accent, size: 0.8em)[•], indent: 0.2em, body-indent: 0.55em, spacing: 0.55em)
#show link: set text(fill: accent)

#let section(title) = {
  block(above: 1.2em, below: 0.8em, sticky: true)[
    #set text(font: sans, size: 11pt, weight: "medium", fill: accent)
    #title
    #v(-0.4em)
    #line(length: 100%, stroke: 0.5pt + accent.lighten(55%))
  ]
}

// Sans dates set beside serif body text: pin the date's top edge to the body
// cap height so both first lines share a baseline.
#let date(body) = text(font: sans, size: 8.5pt, fill: muted, top-edge: 0.69 * body-size, number-width: "tabular")[#body]
// Date ranges: start and end sit in fixed boxes sized to the widest month string, so every
// range has the same footprint and every dash lines up; tabular digits keep years equal width.
#let span-months = ("Jan.", "Feb.", "Mar.", "Apr.", "May", "Jun.", "Jul.", "Aug.", "Sep.", "Oct.", "Nov.", "Dec.").map(m => m + " 2000")
#let span-width() = calc.max(..(span-months + ("Present",)).map(s => measure(date(s)).width))
#let span(start, end) = context {
  let w = span-width()
  date[#box(width: w, align(right, start)) -- #box(width: w, align(left, end))]
}
// A single date in a section that also has ranges: same footprint, set where range ends sit.
#let when(d) = context {
  let w = span-width()
  date[#box(width: w) #hide[--] #box(width: w, align(left, d))]
}
#let arxiv(id) = link("https://arxiv.org/abs/" + id)[arXiv:#id]

// List bodies: ragged right (no stretched word gaps) and initials glued to surnames.
#let listbody(body) = {
  set par(justify: false)
  show regex("[A-Z]\.(-[A-Z]\.)?(-[A-Z]\.)? [A-Z]"): it => it.text.replace(" ", "\u{00A0}")
  show strong: box
  body
}
// Secondary lines of a list entry: smaller, set in a softer ink than the title above them.
#let soft = rgb(60, 64, 72)
#let meta(body, above: 0.4em) = block(above: above, text(size: 9pt, fill: soft, listbody(body)))
// The step from a title down to its details is a little wider than the steps between details.
#let title-gap = 0.55em
// A row whose left text wraps freely while `right` stays pinned to the right margin.
#let split(left, right) = grid(columns: (1fr, auto), column-gutter: 1.2em, left, right)

// Publications: title and year on the first line, authors on the second, venue on the third.
// `id` (J1, P1, ...) gets its own column so cover letters can cite it as [J1].
#let pub(id: none, year, title, authors, venue) = block(
  below: 0.8em,
  breakable: false,
  grid(
    columns: (2.3em, 1fr),
    column-gutter: 0pt,
    text(font: sans, size: 8.5pt, weight: "bold", fill: accent, top-edge: 0.69 * body-size)[#id],
    split(listbody(title), date(year)) + meta(authors, above: title-gap) + if venue != [] { meta(venue, above: 0.3em) },
  ),
)
// Talks: title and year on the first line, venue on the left and place on the right below.
#let talk(year, title, venue, place) = block(
  below: 0.9em,
  breakable: false,
  split(listbody(title), date(year))
    + block(above: title-gap, text(size: 9pt, fill: soft, split(listbody(venue), place))),
)
// Role-style entry: title and date on the first line, then any number of detail lines.
#let rec(title, dates, ..lines) = block(
  below: 0.9em,
  breakable: false,
  split(listbody(title), dates)
    + lines.pos().enumerate().map(((i, l)) => meta(l, above: if i == 0 { title-gap } else { 0.45em })).join(),
)

// Titled item with a right-aligned date, used for degrees and software.
#let item(title, dates, body) = block(below: 0.8em, breakable: false)[
  #title #h(1fr) #date(dates)
  #if body != none [ \ #body ]
]

// Header
#grid(
  columns: (1fr, auto),
  align: (left + top, right + top),
  column-gutter: 1em,
  stack(
    spacing: 0pt,
    text(font: sans, size: 21pt, weight: "bold", fill: accent, tracking: -0.01em)[Tae-Geun Kim-Morgen],
    v(13pt),
    text(font: sans, size: 9.5pt, fill: muted)[Postdoctoral Researcher #sym.dot.c Publications under Tae-Geun Kim],
    v(7pt),
    text(size: 9pt)[
      Fudan University, Shanghai, China #h(0.3em)#text(fill: muted)[#sym.dot.c]#h(0.3em) RIKEN iTHEMS, Wako, Japan
    ],
  ),
  {
    set text(font: sans, size: 8pt)
    let row(icon, body) = [#body #h(0.4em) #box(width: 1em, align(center, text(fill: accent, icon)))]
    set par(leading: 0.5em)
    [
      #row(fa-icon("envelope", solid: true), link("mailto:tgkim@fudan.edu.cn")[tgkim\@fudan.edu.cn]) \
      #row(fa-icon("github"), link("https://github.com/Axect")[github.com/Axect]) \
      #row(fa-icon("house", solid: true), link("https://axect.github.io/en")[axect.github.io]) \
      #row(fa-icon("google"), link("https://scholar.google.com/citations?user=Gnat36QAAAAJ")[Google Scholar]) \
      #row(fa-icon("orcid"), link("https://orcid.org/0009-0000-4229-2935")[0009-0000-4229-2935])
    ]
  },
)
#v(0.2em)
#line(length: 100%, stroke: 1pt + accent)

#section[Appointments]

*Postdoctoral Research Associate*, Fudan-RIKEN Joint Program #h(1fr) #span("Nov. 2025", "Present") \
_Key Laboratory of Nuclear Physics and Ion-beam Application (MOE), Fudan University_, Shanghai, China; \
_RIKEN Center for Interdisciplinary Theoretical and Mathematical Sciences (iTHEMS)_, Wako, Japan \
Supervisors: Prof. Guo-Liang Ma (Fudan University) and Prof. Lingxiao Wang (UTokyo / RIKEN iTHEMS)

#v(0.3em)
#item([*Technical Research Personnel* (alternative military service)], span("Sep. 2022", "Aug. 2025"))[
  _Yonsei University_, Seoul, Republic of Korea
]

#section[Education]

#item([*Ph.D. in Theoretical Particle Physics*, _Yonsei University, Seoul, Republic of Korea_], span("Mar. 2017", "Aug. 2025"))[
  Thesis: _Intercommunication between Artificial Intelligence and Physics_ (Supervisor: Prof. Seong Chan Park)
]
#item([*B.Sc. in Astronomy*, _Yonsei University, Seoul, Republic of Korea_], span("Mar. 2012", "Feb. 2017"), none)

#section[Honors & Fellowships]

- APS DCOMP Travel/Registration Award, APS Division of Computational Physics, CCP2026 (2026)
- Shanghai Superpostdoc Fellowship, Shanghai Municipal Government (2025--2027)
- Fudan Superpostdoc Fellowship, Fudan University (2025--2027)
- Academy Research Fellowship, Yonsei University (2022--2023)
- Best Oral Presentation Award, KPS 70th Anniversary and 2022 Fall Meeting (2022)

#section[Journal Publications #h(1fr) #text(size: 7.5pt, weight: "regular", fill: muted)[#super[\*] Co-first authors]]

#pub(id: "J1")[2026][Peroxide: A Batteries-Included Numerical Computing Library for Rust][*T.-G. Kim*, G. Comitini, J. Grage, B. Joens, M. Schreiber, et al.][#link("https://doi.org/10.21105/joss.10366")[_J. Open Source Software_ *11*, 10366]]
#pub(id: "J2")[2026][Primordial Black Holes as a Factory of Axions: Extragalactic Photons from Axions][Y. Jho#super[\*], *T.-G. Kim*#super[\*], J.-C. Park#super[\*], S. C. Park#super[\*], Y. Park#super[\*]][#link("https://doi.org/10.1093/ptep/ptag011")[_Prog. Theor. Exp. Phys._ *2026*, 023B07] #h(0.4em) #arxiv("2212.11977")]
#pub(id: "J3")[2024][Unsupervised sequence-to-sequence learning for automatic signal quality assessment in multi-channel electrical impedance-based hemodynamic monitoring][C. M. Hyun#super[\*], *T.-G. Kim*#super[\*], K. Lee][#link("https://doi.org/10.1016/j.cmpb.2024.108079")[_Comput. Methods Programs Biomed._ *247*, 108079] #h(0.4em) #arxiv("2305.09368")]
#pub(id: "J4")[2023][Missing information search with deep learning for mass estimation][K. Ban#super[\*], D. W. Kang#super[\*], *T.-G. Kim*#super[\*], S. C. Park#super[\*], Y. Park#super[\*]][#link("https://journals.aps.org/prresearch/abstract/10.1103/PhysRevResearch.5.043186")[_Phys. Rev. Research_ *5*, 043186] #h(0.4em) #arxiv("2212.12836")]

#section[Preprints and Manuscripts in Preparation]

#pub(id: "P1")[2026][Interaction Geometry and Hidden Bias in Learning Equilibrium States][*T.-G. Kim-Morgen*, L. Wang, G.-L. Ma #h(0.5em) _In preparation_][]
#pub(id: "P2")[2026][A Unified Mass Function for Primordial Black Holes and Its Evolution under Hawking Evaporation][*T.-G. Kim-Morgen*, J. Park, M. G. Park, Y. Park, H. Jung, S. C. Park #h(0.5em) _In preparation_][]
#pub(id: "P3")[2026][What Gamma Rays Can Determine about Primordial Black Hole Mass Distributions][*T.-G. Kim-Morgen*, J. Park, M. G. Park, Y. Park, H. Jung, S. C. Park #h(0.5em) _In preparation_][]
#pub(id: "P4")[2026][Identifying Ultraviolet Couplings from SMEFT Coefficients][*T.-G. Kim-Morgen*, V. Maura, Á. Pastor-Gutiérrez, L. Wang #h(0.5em) _In preparation_][]

#pub(id: "P5")[2025][Learning Unknown Gravitational Fields for Spacecraft State Estimation: Temporal Hamiltonian Neural Network-based Adaptive Kalman Filtering][T. Kim#super[\*], *T.-G. Kim*#super[\*], A. Girard, I. Kolmanovsky][Second revision under review at _IEEE Trans. Aerosp. Electron. Syst._ #h(0.4em) earlier version #arxiv("2501.18808")]
#pub(id: "P6")[2024][Neural Hamilton: Can A.I. Understand Hamiltonian Mechanics?][*T.-G. Kim*, S. C. Park][#arxiv("2410.20951")]
#pub(id: "P7")[2024][HyperbolicLR: Epoch insensitive learning rate scheduler][*T.-G. Kim*][#arxiv("2407.15200")]

#section[Research Software]

#rec([*Peroxide* #h(0.3em) Rust numerical computing library], span("Sep. 2018", "Present"))[
  #text(size: body-size, fill: black)[Creator and lead maintainer. Linear algebra, numerical analysis, automatic differentiation, special functions, statistics and data frames, with pure-Rust and BLAS/LAPACK backends. Software paper in JOSS [J1].]
][
  #link("https://github.com/Axect/Peroxide")[github.com/Axect/Peroxide] #h(0.6em)·#h(0.6em) 732 GitHub stars #h(0.6em)·#h(0.6em) #link("https://crates.io/crates/peroxide")[1.41M crates.io downloads]
]
#rec([*PyTorch Template* #h(0.3em) Reproducible deep-learning experiments], span("Aug. 2024", "Present"))[
  #text(size: body-size, fill: black)[Creator. Configuration-driven PyTorch template with preflight checks, multi-seed runs, checkpoints, Optuna hyperparameter search and run provenance.]
][
  #link("https://github.com/Axect/pytorch_template")[github.com/Axect/pytorch_template]
]
#rec([*Neural Hamilton* #h(0.3em) Operator learning for Hamiltonian dynamics], span("Sep. 2024", "Jun. 2026"))[
  #text(size: body-size, fill: black)[Official implementation of [P6]. Operator-learning architectures (DeepONet, TraONet, VaRONet, MambONet) with a Rust dataset generator based on Gaussian random fields.]
][
  #link("https://github.com/Axect/Neural_Hamilton")[github.com/Axect/Neural_Hamilton]
]
#rec([*White Owl* #h(0.3em) Primordial black hole evaporation framework], span("May 2022", "Feb. 2026"))[
  #text(size: body-size, fill: black)[Official implementation of [J2]. Hawking emission spectra, cosmological redshift and $f_"PBH"$ constraints in Rust.]
][
  #link("https://github.com/Axect/white_owl")[github.com/Axect/white_owl]
]
#rec([*Quantum Algorithms* #h(0.3em) Gate-model algorithm notebooks], span("Dec. 2023", "Jun. 2024"))[
  #text(size: body-size, fill: black)[QFT, phase estimation, QAOA and others in PennyLane, Qiskit, Cirq and RustQIP, with explanatory notebooks.]
][
  #link("https://github.com/Axect/QuantumAlgorithms")[github.com/Axect/QuantumAlgorithms]
]
#rec([*NCDataFrame.jl* #h(0.3em) Julia NetCDF I/O package], span("Feb. 2021", "Sep. 2021"))[
  #text(size: body-size, fill: black)[Creator. Reads and writes NetCDF files as DataFrames; registered in the Julia General registry.]
][
  #link("https://github.com/Axect/NCDataFrame.jl")[github.com/Axect/NCDataFrame.jl] #h(0.6em)·#h(0.6em) #link("https://juliahub.com/ui/Packages/General/NCDataFrame")[JuliaHub package page]
]
#block(above: 0.2em)[
  #set par(justify: false)
  *Other tools* #h(0.4em) #link("https://github.com/Axect/overleap")[overleap] (Overleaf sync, npm), #link("https://github.com/Axect/tonz")[tonz] (disk-usage viewer, crates.io), #link("https://github.com/Axect/Zellaygen")[Zellaygen] (Zellij layouts)
]

#section[Technical Skills]

#block({
set text(hyphenate: false)
set par(justify: false)
grid(
  columns: (auto, 1fr),
  column-gutter: 1em,
  row-gutter: 0.55em,
  [*Programming*], [Python, Rust, C++, Julia],
  [*Machine learning*], [PyTorch, JAX (Equinox, Optax), scikit-learn, Optuna, Weights & Biases],
  [*Scientific computing*], [Peroxide, NumPy, SciPy, pandas/Polars, BLAS/LAPACK],
  [*Quantum computing*], [Qiskit, PennyLane, Cirq, RustQIP, IBM Quantum],
  [*Systems*], [Linux (Arch, Debian/Ubuntu, Fedora, openSUSE, Solus, CentOS/Rocky)],
  [*Physics*], [MadGraph, ROOT],
  [*Languages*], [Korean (native), English (fluent), German (A2)],
)
})

#section[Selected Invited Talks]

#talk[2026][Can one see the mass of a PBH?][_Seminar \@ Bielefeld University_][Bielefeld, Germany]
#talk[2026][Can you trust your neural sampler?][_ITP Seminar \@ Heidelberg University_][Heidelberg, Germany]
#talk[2026][Can you trust your neural sampler?][_CCP2026 \@ Sejong University_][Seoul, Korea]
#talk[2026][Can one see the mass of a PBH?][_KIAS Seminar_][Seoul, Korea]
#talk[2026][Neural Inverse Problems and Degeneracy: SMEFT and PBHs][_PARTIQAL \@ IBS_][Daejeon, Korea]
#talk[2026][Inverse Problems in High Energy Physics][_DEEP-IN Starter Meeting \@ RIKEN_][Wako, Japan]
#talk[2025][From Primordial Black Holes to Nuclei: Solving Inverse Problems in Physics with Operator Learning][_Nuclear Lunch Seminar \@ Fudan University_][Shanghai, China]
#talk[2025][PBH Phenomenology with Operator Learning][_LSSU Seminar \@ Jeonbuk National University_][Jeonju, Korea]
#talk[2025][Can A.I. Understand Hamiltonian Mechanics?][_DEEP-IN Seminar \@ RIKEN_][Online]

#section[Selected Contributed Talks]

#talk[2026][Trustworthy Neural Sampler][_ECT\* Workshop_][Trento, Italy]
#talk[2026][A graph-bandwidth law for context windows in autoregressive samplers][_EuCAIFCon 2026_ (parallel talk and poster)][Heidelberg, Germany]
#talk[2026][Can you trust your neural samplers?][_AI Agents for Nuclear Physics \@ Fudan U._][Shanghai, China]
#talk[2026][Accelerating Primordial Black Hole Phenomenology: An Operator Learning Approach][_The 2nd AI+HEP in East Asia \@ KEK_][Tsukuba, Japan]
#talk[2025][Can AI Understand Hamiltonian Mechanics?][_29th International Summer Institute on Phenomenology of Elementary Particle Physics and Cosmology_][Yeosu, Korea]
#talk[2025][A Neural Operator for Primordial Black Hole Physics][_The 4th Workshop on Symmetry and Structure of the Universe_][Jeonju, Korea]
#talk[2025][AI with Hamiltonian Mechanics: From Predictions to Understanding][_AI+HEP in East Asia 2025_][Daejeon, Korea]
#talk[2024][Can A.I. Understand Hamiltonian Mechanics?][_2024 Korea-France STAR Workshop_][Seoul, Korea]
#talk[2022][Constraining ALPs via PBH with time-varying decay process Part.2][_KPS 70th Anniversary and 2022 Fall Meeting_, *Best Oral Presentation Award*][Busan, Korea]

#section[Teaching]

#rec([*Lecturer*, _Advanced Research in Quantum Universe 4_ (PHY9901), Yonsei University], span("Mar. 2025", "Jun. 2025"))[
  Graduate course taught in English: lectures on deep learning for physics
]
#rec([*Teaching Assistant*, Yonsei University], span("Mar. 2017", "Jun. 2022"))[
  Introduction to General Relativity (PHY4208, 2021), Quantum Mechanics I and II (PHY3101, PHY3102, 2019--2020), Elementary Particle Physics I (PHY8050, 2019), Gravity I: General Relativity (PHY8030, 2017), Mathematical Physics I (PHY4205, 2017)
]
#rec([*Instructor*, Jungjin Academy (now The Smart Academy), Gimpo], span("Nov. 2014", "Feb. 2022"))[
  High-school mathematics, science (physics, chemistry, biology, earth science), programming and statistics
]

#section[Service]

#rec([*Peer Reviewer*], when[2026])[
  _APL Computational Physics_
]
#rec([*Judge*, SPARCS Science Hackathon 2024, "SW for Science"], when[Oct. 2024])[
  Hosted by KAIST and Daejeon Metropolitan City
]
#rec([*Beta Reader*, Jpub Publishing], span("Oct. 2019", "Mar. 2025"))[
  Technical review of 16 books on Rust and deep learning
]
#rec([*Webmaster*, Yonsei HEP-COSMO group], span("Mar. 2017", "Aug. 2025"))[
  Developed and maintained the group website (Django on the group server; since 2023, Zola on GitHub Pages)
]
#rec([*Web Assistant*, College of Science, Yonsei University], span("Mar. 2017", "Aug. 2022"))[
  Took part in planning the College website from the first meetings and in running its server; then managed the site
]

#section[Study Groups]

#rec([*Founder and Organizer*, SYTEARK machine-learning study group], span("Mar. 2019", "Present"))[
  Weekly presentations on machine-learning papers and members' research for theoretical physicists #h(0.6em)·#h(0.6em) #link("https://github.com/SYTEARK")[github.com/SYTEARK]
]
#rec([*Co-organizer*, Yonsei Cosmo-Chalk], span("Mar. 2024", "Aug. 2025"))[
  Weekly blackboard talks of the Yonsei HEP-COSMO group #h(0.6em)·#h(0.6em) #link("https://github.com/Yonsei-HEP-COSMO/Yonsei-Cosmo-Chalk")[github.com/Yonsei-HEP-COSMO/Yonsei-Cosmo-Chalk]
]
#rec([*Participant*, Machine Learning and Quantum Machine Learning Study Group, KIAS], span("Mar. 2021", "Aug. 2024"))[
  Led by Prof. Myung Hoon Park (Seoultech) and Prof. Kyoungchul Kong (University of Kansas)
]
