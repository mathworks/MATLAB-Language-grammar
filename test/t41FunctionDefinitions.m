% SYNTAX TEST "source.matlab"  "Function declarations: https://github.com/mathworks/MATLAB-Language-grammar/issues/41"
function tFunctionDefinitions()
%        ^^^^^^^^^^^^^^^^^^^^entity.name.function.matlab
    % Help text
    y = "a string";
    %<- variable.other.readwrite.matlab
    %   ^^^^^^^^^^string.quoted.double.matlab
    anonymousFunction = @(in1,in2) in1 + in2;
    %                 ^keyword.operator.assignment.matlab
    %                   ^punctuation.definition.function.anonymous.matlab
    %                    ^punctuation.definition.parameters.begin.matlab
    %                     ^^^variable.parameter.input.matlab
    %                        ^punctuation.separator.parameter.comma.matlab
    %                         ^^^variable.parameter.input.matlab
    %                            ^punctuation.definition.parameters.end.matlab
    %                                  ^keyword.operator.arithmetic.matlab
    %                                       ^punctuation.terminator.semicolon.matlab

end
%<- storage.type.function.end.matlab

function [a,b,c] = multiOutput()
%                  ^^^^^^^^^^^entity.name.function.matlab
    % Help text
    y = "a string";
%       ^^^^^^^^^^string.quoted.double.matlab
end
%<- storage.type.function.end.matlab

function [a,b,...
    c] = multiLine(in1)
%        ^^^^^^^^^entity.name.function.matlab
    % Help text
    y = "a string";
%       ^^^^^^^^^^string.quoted.double.matlab
end
%<- storage.type.function.end.matlab

function [a,b,...
    c] = multiLine2(in1,...
    in2)%^^^^^^^^^^entity.name.function.matlab

    % Help text
    y = "a string";
%       ^^^^^^^^^^string.quoted.double.matlab
end
%<- storage.type.function.end.matlab

function functionWithoutParens
%        ^^^^^^^^^^^^^^^^^^^^^meta.function.matlab
%        ^^^^^^^^^^^^^^^^^^^^^entity.name.function.matlab
    % Help text
    y = "a string";
%       ^^^^^^^^^^string.quoted.double.matlab
end
%<- storage.type.function.end.matlab

function functionWithoutParensAndEnd
    %        ^^^^^^^^^^^^^^^^^^^^^meta.function.matlab
    %        ^^^^^^^^^^^^^^^^^^^^^entity.name.function.matlab
        % Help text
        y = "a string";
    %       ^^^^^^^^^^string.quoted.double.matlab
