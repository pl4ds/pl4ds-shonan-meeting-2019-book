# PLDS: CPS and communication

~15 pages

## Outline

* intro to CPS (CPS = communication, computation, and control), 3 pages
* models for CPS (all models are wrong but some are useful), 3 pages
  - control theory approach (plant model and feedback controller)
  - hybrid/timed automata
  - process algebra
  - dynamimc logic
  - markov processes
* adding communication to CPS models, 4 pages
  - synchronous rendez-vous communication (fits well with automata models, good abstraction for slow dynamics and fast)
  - actor model (obviously :) )
  - functional reactive programming (communication using streams)
  - session types
  - networked control system (centralized vs distributed controller)
* communication imprefection and control (analogous to consistency question in distributed system but about the freshness of physical informations), 2 pages
  - clock synchronization (a basis on which other functionality are built)
  - robustness against perturbation of communication (example: work on Skorokhod Distance by Ichiro Hasuo)
  - efficient use of communication (example: work by Sebastian Trimpe on event triggered and wireless control systems)
  - interpolation and extrapolation (example: tfs2 ROS library use timestamped messages to interpolate/extrapolate data)
* impact of the physical layer and the communication, 2 pages
  - point-to-point vs broadcast communication
  - large number of processes (swarm / sensor networks)
  - line-of-sight / limite range (gossip protocol)

## Open Research Questions

Discrete vs continuous systems
- Process algebra, actors, and others model discrete systems.
- Differential equations, calculus, and others model the physical world.
- How to incorporate continuous time and space into concurrency models?
- How to go beyond bi-simulation and observational equivalence to reason about continuous systems?

Cyber-physical systems have a hardware (physical) and a software (cyber) component.
- How to model SW/HW interface?
- Are real-time properties properly modeled?
- How to tackle complexity via abstraction without losing key properties?  (Translucency vs black box approaches)
- How to verify infinite-space systems?

Dealing with uncertainty
- Stochastic nature of cyber-physical systems, e.g., weather, requires probabilistic approach.
- Are heterogeneous latencies, failure modes properly accounted for?
- How to accurately model, quantify, propagate uncertainty?
- Need for statistical reasoning libraries suitable for interactive/automated proof assistants.

Modal logics and reasoning
- Is first-order logic sufficient to reason about cyber-physical systems?
- Are spatial logics, temporal logics, and combinations thereof better suited for specifying and reasoning about CPS?
- What are their expressive power?   Are there efficient decision procedures?  (SAT modulo theory approaches?)

Robust control
- Can we reason about properties of feedback loop control systems incorporating the above (hybrid, SW/HW/Network, uncertainty/failures, modal logics/reasoning)?

AI and data-driven systems
- As more CPS are model-driven and more models are data-driven, how can we trust these systems?  Are there inherent theoretical limits to dynamic data-driven applications and systems? (e.g., Cramer-Rao lower bounds, etc.)
