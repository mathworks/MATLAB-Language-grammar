% SYNTAX TEST "source.matlab"  "Blocks like if, for, etc. on a single line: https://github.com/mathworks/MATLAB-Language-grammar/issues/19"
function y = t19SingleLineBlocks(x)
switch x
    case 1
        y = 1;
    case 2
        if nargout == 0, return; end
%       ^^ keyword.control.if.matlab
%                        ^^^^^^ keyword.control.matlab
%                                ^^^ keyword.control.end.if.matlab
        y = 2;
    otherwise
%   ^^^^^^^^^ keyword.control.otherwise.matlab
        y = -1;
end
end