#let author = "Arvid Nygren"
#set page(
  header: [#author #h(1fr) #datetime.today().display()]
)

#set text(font: "New Computer Modern", size: 11pt)
= Some answers 
== 1c
The finer grid the better. Computation is $O(n^2)$ I noticed since I was left wondering why the function wasn't printing anything.

== 3
The norm of the gradient tells us the steepness of the function at that point.
The algoithm seems to converge after about 12 iterations for the first settings.

When increasing gamma at some point the algorithm will oscillate between two values.
Stochastic gradient descent converges slower, for exapmle if batchsize is only 1 it will be very noisy around the optimum.


== 6
MAE seems to be a better fit when we have extreme outliers. Did not encounter a non-differntiable point.
It seems like MAE is more unstable than MSE when using stochastic (sub-)gradient descent. In MSE the gradient is proportiional to $e$ which makes $w$ change less and less for every iteration the closer it gets to the optimum. When using MAE the gradient contribution from a given data point will be constant until it goes past the optimum when it will change sign. For it to converge you need it to land exactly on the optimum where we choose the subgradient to be 0. This is a problem both in SGD and stochastic SGD but it will become more apparent in SSGD because then the sign is "averaged out" over less residuals.
