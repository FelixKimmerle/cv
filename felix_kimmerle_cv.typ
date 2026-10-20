// ───────────────────────────────────────────────────────────────
// Ein-Seiten-Lebenslauf · Typst 0.13.1
// ───────────────────────────────────────────────────────────────

#set page(margin: 1.75in)
#set par(
  leading: 0.5em,
  spacing: 0.5em,
  first-line-indent: 0em,
  justify: true,
)
#set text(font: "TeX Gyre Pagella", size: 10.7pt)
#set list(marker: [--])

#set page(
  width: 210mm, // A4 hoch
  height: 297mm,
  // margin: (top: 13mm, bottom: 13mm, left: 17mm, right: 17mm),
   margin: (top: 12mm, bottom: 12mm, left: 15mm, right: 15mm),
)

//───────────── Hilfs­bausteine ──────────────────────────────────
#let header(name, contacts, short_profile) = [
  #set align(center)
  #set text(size: 15pt)
  #strong(upper(name))

  #set text(size: 10pt)
  #(contacts.join(" "))
  #v(0.5em)
  #short_profile
  #v(1em)
]

#let section(title) = [
  #v(0.25em)
  #strong(upper(title))
  #v(0.25em)
  #line(length: 100%, stroke: 0.5pt)
  #v(0.25em)
]

#let entry(position, org, dates, body) = [
  #block(inset: (left: 1em))[
    #strong(position + " ") #if org != "" { org } #h(1fr) #strong[#dates] 
    #parbreak()
    #body
  ]
  #v(0.62em)
]


// //──────────────────── Page 2: English ──────────────────────────
// #header("Felix Kimmerle", (
//   "70178 Stuttgart ·",
//   "(+49) 157 37879503 · ",
//   "FelixKimmerle@hotmail.com",
//   "\nhttps://github.com/FelixKimmerle",
//   "\nhttps://www.linkedin.com/in/felix-kimmerle-601258324/",
// ), (
//   "M.Sc. Computer Science student specializing in numerical simulation, C++, and scientific\nsoftware engineering; several years of industry experience in simulation software and geometry processing."
// ))

// #section("Professional Experience")

// #entry(
//   "Working Student (C++ & Simulation R&D)",
//   "Robert Bosch GmbH",
//   "10/2025 – present",
//   [
//     - Integrated impedance boundary conditions into the BEM-BEM simulation to improve efficiency.
//     - Developed a Python library for processing, analyzing, and manipulating 3D meshes.
//     - Extended the simulation architecture to support second-order basis functions.
//     - Refactored the simulation architecture to integrate high-performance numerical methods.
//   ],
// )

// #entry(
//   "PreMaster (35h/week)",
//   "Robert Bosch GmbH",
//   "11/2024 – 09/2025",
//   [
//     - Integrated adaptive and heuristic integration methods to improve simulation accuracy and efficiency.
//     - Developed a Python library for verification, visualization, and comparison of simulation data.
//     - *Team Edyson:* Implemented efficient nearest-neighbor search (clustering) and local 3D point cloud interpolation using Moving Least Squares (MLS) in C++ (Eigen3, BETL2).
//   ],
// )

// #entry(
//   "Bachelor's Thesis (Grade 1.0)",
//   "Robert Bosch GmbH & University of Stuttgart",
//   "04/2024 – 10/2024",
//   [
//     - *Topic:* Pre- and post-processing methods for simulation of inductive position sensors.
//     - Transferred an academic BEM-BEM simulation into an industry-oriented application. (C++, LAPACK, BLAS, Eigen3).
//     - Implemented algorithms for arbitrary coil geometries and topologies with holes.
//     - Modularized the core architecture and developed a dedicated Python API.
//   ],
// )

// #entry(
//   "Working Student (C++ Simulation & Tooling)",
//   "Robert Bosch GmbH",
//   "10/2019 – 04/2024",
//   [
//     - Developed a 3D ray tracing simulation for optical systems (C++, OpenGL, Dear ImGui, SFML)
//     - Extended and optimized a database visualization tool (Python, Qt, Matplotlib)
//     - Optimized and parallelized simulation evaluation workflows (C\#)
//     - Developed tools for managing lab and simulation computers (C\#, WPF)
//     - Extended the Python library meshio with time-step support for the Exodus-II format, enabling the evaluation of Edyson simulation results in this format (Python)
//     - Set up and maintained a Linux cluster with SLURM (3 nodes, ~8 users)
//   ],
// )

// #entry(
//   "Student Assistant & Tutor",
//   "University of Stuttgart",
//   "",
//   [
//     - Led a central exercise session for the course “Computer Science for Engineers II (C++)” #h(1fr) *04/2026 – 07/2026*
//     - Tutor: student support, grading, and exam preparation in C++ and Java. #h(1fr) *05/2020 – 08/2024*
//     - IT support: TIK user support, ticket handling, and makerspace supervision. #h(1fr) *08/2022 – 05/2024*
//   ],
// )

// #section("Education")

// #entry(
//   "University of Stuttgart",
//   "",
//   "10/2025 – expected 10/2027",
//   [
//     Master of Science in Computer Science

//     Focus areas: Numerical Simulation, Visualization and Rendering, Natural Language Processing
//   ],
// )

// #entry(
//   "University of Stuttgart",
//   "",
//   "10/2019 – 11/2024",
//   [
//     Bachelor of Science in Computer Science #h(1fr) #strong[#emph("Grade 1.8")]

//     Selected relevant modules: System Concepts & Programming, Programming Paradigms, Computer Graphics, Numerical Foundations
//   ],
// )

// #section("Skills")
// #set text(size: 10pt)
// #block(inset: (left: 1em))[
//   #strong("Programming Languages"): C++, Python, C, C\#, Java

//   #strong("Systems & Tools"): Linux (LPIC), Git, CMake, GNU Make, GCC/Clang/MSVC, WSL, SLURM, CI/CD, Qt

//   #strong("Libraries (C++ & Math)"): Eigen3, LAPACK/BLAS, CUDA, SFML, SDL, OpenGL, Boost

//   #strong("Data & Python"): ParaView, Matplotlib, PyVista, NumPy, meshio

//   #strong("Languages"): German (native), English (B2)
// ]

// #pagebreak()

//──────────────────── Seite 1: Deutsch ──────────────────────────
#header("Felix Kimmerle", (
  "70178 Stuttgart ·",
  "(+49) 157 37879503 · ",
  "FelixKimmerle@hotmail.com",
  "\nhttps://github.com/FelixKimmerle",
  "\nhttps://www.linkedin.com/in/felix-kimmerle-601258324/",
  
), (
  "M.Sc.-Informatikstudent mit Schwerpunkt numerische Simulation, C++ und wissenschaftliche\nSoftwareentwicklung; mehrjährige Industrieerfahrung in Simulationssoftware und Geometrieverarbeitung."
))

#section("Berufserfahrung")

#entry(
  "Werkstudent (C++ & Simulation R&D)",
  "Robert Bosch GmbH",
  "10/2025 – heute",
  [
    - Integration von Impedanz-Randbedingungen in die BEM-BEM-Simulation zur Effizienzoptimierung.
    - Entwicklung einer Python-Bibliothek für Verarbeitung, Analyse und Manipulation von 3D-Meshes.
    - Erweiterung der Simulationsarchitektur für Ansatzfunktionen zweiter Ordnung.
    - Refactoring der Simulationsarchitektur zur Integration performanter numerischer Methoden.
  ],
)

#entry(
  "PreMaster (35h/Woche)",
  "Robert Bosch GmbH",
  "11/2024 – 09/2025",
  [
    - Integration adaptiver und heuristischer Integrationsverfahren zur Steigerung von Simulationsgenauigkeit und -effizienz.
    - Entwicklung einer Python-Bibliothek zur Verifikation, Visualisierung und zum Abgleich von Simulationsdaten.
    - *Team Edyson:* Implementierung effizienter Nearest-Neighbor-Suchen (Clustering) und lokaler 3D-Punktwolken-Interpolation mittels Moving Least Squares (MLS) in C++ (Eigen3, BETL2).
  ],
)


#entry(
  "Bachelorarbeit (Note 1.0)",
  "Robert Bosch GmbH & Universität Stuttgart",
  "04/2024 – 10/2024",
  [
    - *Thema:* Pre- and post-processing methods for simulation of inductive position sensors.
    - Überführung einer akademischen BEM-BEM-Simulation in eine industrienahe Anwendung. (C++, LAPACK, BLAS, Eigen3).
    - Implementierung von Algorithmen für beliebige Spulengeometrien (Biot-Savart) und Topologien mit Löchern (Kohomologie).
    - Modularisierung der Kern-Architektur und Entwicklung einer dedizierten Python-API.
  ],
)

#entry(
  "Werkstudent (C++ Simulation & Tooling)",
  "Robert Bosch GmbH",
  "10/2019 – 04/2024",
  [
    - Entwicklung einer 3D-Raytracing-Simulation für optische Systeme (C++, OpenGL, Dear ImGui, SFML)
    - Weiterentwicklung und Optimierung eines Datenbank-Visualisierungstools (Python, Qt, Matplotlib)
    - Optimierung und Parallelisierung von Simulationsauswertungen (C\#)
    - Entwicklung von Tools zur Verwaltung von Labor-/Simulationscomputern (C\#, WPF)
    - Erweiterung der Python-Bibliothek meshio um Zeitschritt-Unterstützung im Exodus-II-Format, wodurch die Auswertung von Edyson-Simulationsergebnissen in diesem Format möglich wurde (Python)
    - Einrichtung und Betreuung eines Linux-Clusters mit SLURM (3 Nodes, ~8 Benutzer)
  ],
)


#entry(
  "Wissenschaftliche Hilfskraft & Tutor",
  "Universität Stuttgart",
  "",
  [
    - Leitung einer Zentralübung im Modul „Informatik für Ingenieure II (C++)“ #h(1fr) *04/2026 – 07/2026*
    - Tutor: Betreuung, Korrektur und Klausurvorbereitung in C++ und Java. #h(1fr)*05/2020 – 08/2024*
    - IT-Support: TIK-Benutzerberatung, Ticket-Bearbeitung und Makerspace-Aufsicht. #h(1fr)*08/2022 – 05/2024*
  ],
)

#section("Ausbildung")

#entry(
  "Universität Stuttgart",
  "",
  "10/2025 – vsl. 10/2027",
  [
    Master of Science Informatik

    Vertiefungsthemen: Numerische Simulation, Visualisierung, Sprachverarbeitung
  ],
)

#entry(
  "Universität Stuttgart",
  "",
  "10/2019 – 11/2024",
  [
    Bachelor of Science Informatik #h(1fr) #strong[#emph("Note 1,8")]
    
    Auswahl relevanter Module: Systemkonzepte & -Programmierung, Programmier­paradigmen, Computergraphik, Numerische Grundlagen
  ],
)


#section("Fähigkeiten")
#set text(size: 10pt) // <-- Hier wird die Schrift für die Tools verkleinert
#block(inset: (left: 1em))[
  #strong("Programmiersprachen"): C++, Python, C, C\#, Java
  
  #strong("Systeme & Tools"): Linux (LPIC), Git, CMake, GNU Make, GCC/Clang/MSVC, WSL, SLURM, CI/CD, Qt
  
  #strong("Libraries (C++ & Math)"): Eigen3, LAPACK/BLAS, CUDA, SFML, SDL, OpenGL, Boost
  
  #strong("Data & Python"): ParaView, Matplotlib, PyVista, NumPy, meshio
  
  #strong("Sprachen"): Deutsch (Muttersprache), Englisch (B2)
]

