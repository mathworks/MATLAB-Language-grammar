% SYNTAX TEST "source.matlab"  "Line continuation in call: https://github.com/mathworks/MATLAB-Language-grammar/issues/23"
function y = t23LineContinuationCall
someFunction(arg1, ... some comment
%                      ^^^^^^^^^^^^ comment.line.continuation.matlab
                 arg2, ... more comments
%                          ^^^^^^^^^^^^^ comment.line.continuation.matlab
                 arg3 ... last comment
%                         ^^^^^^^^^^^^ comment.line.continuation.matlab
                );
end