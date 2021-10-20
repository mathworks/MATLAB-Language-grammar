% SYNTAX TEST "source.matlab"  "Function declarations: https://github.com/mathworks/MATLAB-Language-grammar/issues/41"
function tFunctionDefinitions()
%        ^^^^^^^^^^^^^^^^^^^^entity.name.function.matlab
    % Help text
    y = "a string";
%       ^^^^^^^^^^string.quoted.double.matlab

function [a,b,c] = multiOutput()
%                  ^^^^^^^^^^^entity.name.function.matlab
    % Help text
    y = "a string";
%       ^^^^^^^^^^string.quoted.double.matlab

function [a,b,...
    c] = multiLine(in1)
%        ^^^^^^^^^entity.name.function.matlab
    % Help text
    y = "a string";
%       ^^^^^^^^^^string.quoted.double.matlab

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

function functionWithoutParensAndEnd
    %        ^^^^^^^^^^^^^^^^^^^^^meta.function.matlab
    %        ^^^^^^^^^^^^^^^^^^^^^entity.name.function.matlab
        % Help text
        y = "a string";
    %       ^^^^^^^^^^string.quoted.double.matlab

end
%<- storage.type.function.end.matlab