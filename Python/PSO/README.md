# Particle swarm optimization (PSO) 

Is a family of heuristic optimization methods inspired by the natural behaviors of bee swarms, insect movements in large groups, and schools of fish. These methods analyze how individuals in a group move to achieve a common goal, taking advantage of constant communication within the group. Each individual adjusts its movement based on three key factors:

Its own experience, specifically the best positions it has encountered so far.
The best position identified by any other member of the swarm.
An inertial factor that smooths out its movements by considering the velocity from its previous step.
This dynamic allows particles to explore the solution space efficiently. The velocity of each particle is described mathematically in equation (1), while the position of the 
𝑖
i-th particle is given in equation (2) (Lee & Kim, 2013; Clerc, 2005; Leonard & Engelbrecht, 2013).
