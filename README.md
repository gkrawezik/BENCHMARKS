Different benchmarks that can be used

* JUBE: 
These are different benchmarks to be used with the JUBE software
[Download JUBE here](https://www.fz-juelich.de/ias/jsc/EN/Expertise/Support/Software/JUBE/_node.html)

These folders do not contain any packages: you might need to download them if they are not present in the modules system.
Input files, XML files for the benchmarks, and Slurm templates are provided.

The main goal is to show different ways of using JUBE, to check performance and scaling, compiler settings, environment settings, etc

   * GADGET4: Gadget4 _Weak scaling and compilers_

     This test is of interest for anyone who wants to compare the performance of the code generated by different compilers. The benchmark will start by compiling the code, then run on different problem sizes, increasing with the number of processors

   * GROMACS: Gromacs _Strong scaling, GPUs, and OpenMP/MPI mix_

     This test can be used for scalability testing, testing different ranks/threads configurations, on both GPU and CPU based clusters, for different inputs

   * HPCG: High Performance Conjugate Gradient _Weak scaling, GPUs, singularity/docker container_

     This test contains both the (non optimized) reference code for HPCG, but also the NVIDIA provided one for GPUs. This shows how to use singularity.

   * HPL: High Performance Linpack _Weak scaling, GPUs, singularity/docker container_

     This test contains also the reference code, as well as the NVIDIA optimized version which has to be run through a singularity