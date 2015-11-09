function [ rho, dims ] = bell_state( d, bit, phase)
% Return a Bell state in vector form.
%
% Usage
% =====
%
% [PSI, DIMS] = bell_state(D, bit_flips, phase_flips)
%
% The parameter D denotes the local dimension.
% The bit and phase flips are considered mod D,
% for bit and flip 0 you get the same state as maximally_entangled_tate(D).
%
%
% Examples
% ========
%
% >> [rho, dims] = bell_state(2,0,0)
%
% rho =
%       0.50000 0.00000 0.00000 0.50000
%       0.00000 0.00000 0.00000 0.00000
%       0.00000 0.00000 0.00000 0.00000
%       0.50000 0.00000 0.00000 0.50000
% dims =
%       2 2
%
%
% See also BELL_PURE_STATE.


[psi, dims] = bell_pure_state(d, bit, phase);
rho = psi * psi';

end

