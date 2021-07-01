% SYNTAX TEST "source.matlab"  "Line continuation in call: https://github.com/mathworks/MATLAB-Language-grammar/issues/23"
function y = t23LineContinuationCall()
    someFunction(arg1, ... some comment
%                          ^^^^^^^^^^^^ comment.continuation.line.matlab
                 arg2, ... more comments
%                          ^^^^^^^^^^^^^ comment.continuation.line.matlab
                 arg3 ... last comment
%                         ^^^^^^^^^^^^ comment.continuation.line.matlab
                );
    y = 0;
end