function [ psi, dims ] = bell_pure_state( d, bit, phase)
% Return a Bell state in vector form.
%
% Usage
% =====
%
% [PSI, DIMS] = bell_pure_state(D, bit_flips, phase_flips)
%
% The parameter D denotes the local dimension.
% The bit and phase flips are considered mod D,
% for bit and flip 0 you get the same state as maximally_entangled_pure_tate(D).
%
%
% Examples
% ========
%
% >> [psi, dims] = bell_pure_state(3,0,0)
%
% psi =
%       0.57735 0.00000 0.00000 0.00000 0.57735 0.00000 0.00000 0.00000 0.57735
% dims =
%       3 3
%
%
% See also BELL_STATE.

bit = mod(bit,d);
phase = mod(phase,d);
w = exp(2*pi*i/d);
basis = eye(d);

psi = zeros(d*d,1);

for a = 0:d-1
    psi = psi + w.^(mod(a*phase, d))*kron(basis(:, mod(a+bit, d) + 1), basis(:, a + 1));
end

psi = psi/sqrt(d);
dims = [ d, d ];

end

