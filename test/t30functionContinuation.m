% SYNTAX TEST "source.matlab"  "Line continuation in function declaration: https://github.com/mathworks/MATLAB-Language-grammar/issues/30"
function y = t30functionContinuation( ... comment
%                                        ^^^^^^^ comment.continuation.line.matlab
    arg1, ... comment
%   ^^^^ variable.parameter.input.matlab
%             ^^^^^^^ comment.continuation.line.matlab
    arg2 ... comment
%   ^^^^ variable.parameter.input.matlab
%            ^^^^^^^ comment.continuation.line.matlab
)
    y = arg1 + arg2;
end