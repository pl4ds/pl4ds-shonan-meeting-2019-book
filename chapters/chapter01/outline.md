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
