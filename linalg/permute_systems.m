function [rho_perm, dims_perm] = permute_systems( rho, dims, order )
%PERMUTE_SYSTEMS Permutes the systems in a quantum state.
%
% Usage
% =====
%
% RHO_PERM = permute_systems(RHO, DIMS, ORDER)
%
% The parameter ORDER contains the permutations of DIMS in index forms,
% so that DIMS_PERM = DIMS(ORDER).
%


% we could check, but also ... no; just do it right.
%assert(size(rho) == [length(rho) length(rho)], 'Input rho is not a square matrix.');
%assert(d_tot == prod(dims), 'Dimension of systems and size of matrix do not coincide.');
%assert(all(sort(order) == 1:length(dims)), 'The order must be a permutation of 1,...,N number of systems.');

rho_perm = reshape(  permute( reshape(rho,[dims dims]), ...
                              [order order+length(dims)]), ...
                     size(rho));
dims_perm = dims(order);

end

