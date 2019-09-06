# Uniform Matrix Product States
This small toolbox is designed to handle uniform _matrix product states_ (uMPS), i.e. matrix product states in the thermodynamic limit composed of a single, repeating unit cell.
Specifically, an implementation of the VUMPS algorithm [[1]] is provided, which can find uMPS approximations for the ground state of Hamiltonians, contract 2D partition functions, etc.

## Installation
Once you fetched a copy, run `addpath('<path>/umps','<path>/lib')` from your MATLAB terminal and you are good to go.
If you want to permanently add these directories to your matlabpath, use the command `savepath`.
 
A good place to get started and test that everything works in in the `examples` directory.
Here you will find use cases of VUMPS to find ground states of different types of operators, and to approximately contract
Additional information can be obtained with the command `help umps` or `help <command>`.

## Features
* Contractions optimized for large bond dimensions The complexity should never be more than _O(D<sup>3</sup>)_ for a fixed bond dimension _D_.
* Optimal increase of the bond dimension during the VUMPS iterations.
* Support for multi-site unit cells.

## Dependencies
The function `ncon.m` by R. N. C. Pfeifer [[2]] is used to perform tensor contractions.
A copy is provided in the `lib` folder.

## Notes
This has been tested up to MATLAB version R2017b.
Things might break in future versions, given Mathwork's history of releasing non-backwards-compatible updates.

## References
1. V. Zauner-Stauber, L. Vanderstraeten, M.T. Fishman, F. Verstraete, J. Haegeman, _Variational optimization algorithms for uniform matrix product states_, [Physical Review B][1] (2018).
2. R. N. C. Pfeifer, G. Evenbly, S. Singh, G. Vidal, _NCON: A tensor network contractor for MATLAB_, [arXiv:1402.0939][2] (2014).
3. C. Hubig, J. Haegeman, U. Schollwöck, _Error estimates for extrapolations with matrix-product states_, [Physical Review B][3] (2018).

[1]: https://arxiv.org/abs/1701.07035
[2]: https://arxiv.org/abs/1402.0939
[3]: https://arxiv.org/abs/1711.01104
