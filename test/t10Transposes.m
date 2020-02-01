% SYNTAX TEST "source.matlab"  "Transpose issues: https://github.com/mathworks/MATLAB-Language-grammar/issues/10"
A = B';  % The variable B is also considered an operator.
%   ^ -keyword.operator.transpose.matlab
%    ^ keyword.operator.transpose.matlab

A = {B, C}'; % The transpose operator has no styling at all.
%         ^ keyword.operator.transpose.matlab

42.' % number is incorrectly highlighted
% <--   -keyword.operator.transpose.matlab
% ^^  keyword.operator.transpose.matlab

A.S.'  % S is incorrectly highlighted
% ^  -keyword.operator.transpose.matlab
%  ^^  keyword.operator.transpose.matlab

A.S .'  % S is incorrectly highlighted
% ^  -keyword.operator.transpose.matlab
%   ^^  keyword.operator.transpose.matlab

S.'  % S is incorrectly highlighted
% <-  -keyword.operator.transpose.matlab
%^^  keyword.operator.transpose.matlab

[S].' % correct
%  ^^  keyword.operator.transpose.matlab

(S).' % correct
%  ^^  keyword.operator.transpose.matlab

{S}.' % .' should be highlighted here, also comment is not identified
%  ^^  keyword.operator.transpose.matlab
%      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^  comment.line.percentage.matlab

'sdf'.'  % same here
% <----- string.quoted.single.matlab
%    ^^ keyword.operator.transpose.matlab
%         ^^^^^^^^^^  comment.line.percentage.matlab