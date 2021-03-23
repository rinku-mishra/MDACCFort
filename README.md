# MDACCFort

A OpenACC parallel fortran code to simulate plasma particles using Molecular Dynamics Algorithm.

## Problem
<!--Rayleigh Problem = gas between 2 plates ([Alexander & Garcia, 1997](https://doi.org/10.1063/1.168619)) -->

## Contributors
- [Rinku Mishra](https://github.com/rinku-mishra), CPP-IPR, India. [@arra4723](https://twitter.com/arra4723)


Installation
------------
#### Prerequisites
1. [GNU Make](https://www.gnu.org/software/make/)
2. [gfortran](https://gcc.gnu.org/fortran/)
3. [git](https://git-scm.com/)

#### Procedure
First make a clone of the master branch using the following command
```shell
git clone https://github.com/rinku-mishra/MDACCFort.git
```
Then enter inside the *MDACCFort* directory
```shell
cd MDACCFort
```
Now complile and built the *MDACCFort* code
```shell
make all
```
Usage
-----
Upon successful compilation, run the code using following command
```shell
./mdaccfort
```
