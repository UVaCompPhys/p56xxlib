
Examples
========

Examples can be accessed by copying the directory $P5640LIB/examples to a local working area.

The Makefile here demonstrates the flags you will need to use common C++ tools in this class.

Runge-Kutta Solvers
-------------------

  * RKnTest.cpp: Use the RK4 solver for coupled ODEs to solve for projectile  motion with air resistance
  * RKnDemo.cpp: Compares using an RK4 solver for a single ODE based on the example in our last class to the series solver (here the series is just the one ODE).  Running this program will produce a file called RKnDemo.root.  Run the python script RKnPlotDemo.py to generate plots of the results.
  * RKnStep.cpp: Example of using the RK4 stepping code.  This demonstrates the use of a minimal interface to the code, giving full access to the information at each step.
  

Gnu Scientific Library
----------------------
  * gsl_test.cpp: A basic test for buildin code using the [GSL](https://www.gnu.org/software/gsl/).




