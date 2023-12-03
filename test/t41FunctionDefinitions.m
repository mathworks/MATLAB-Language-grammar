% SYNTAX TEST "source.matlab"  "Function declarations: https://github.com/mathworks/MATLAB-Language-grammar/issues/41"
function tFunctionDefinitions(in1)
%        ^^^^^^^^^^^^^^^^^^^^ entity.name.function.matlab
    % Help text
    y = in1;
    %   ^^^^^^^^^^string.quoted.double.matlab
    anonymousFunction = @(in1,in2) in1 + in2;
    %                 ^ keyword.operator.assignment.matlab
    %                   ^ punctuation.definition.function.anonymous.matlab
    %                    ^ punctuation.definition.parameters.begin.matlab
    %                     ^^^ variable.parameter.input.matlab
    %                        ^ punctuation.separator.parameter.comma.matlab
    %                         ^^^ variable.parameter.input.matlab
    %                            ^ punctuation.definition.parameters.end.matlab
    %                                  ^ keyword.operator.arithmetic.matlab
    %                                       ^ punctuation.terminator.semicolon.matlab

end
%<- storage.type.function.end.matlab

function [a,b,c] = multiOutput()
%        ^ punctuation.section.assignment.group.begin.matlab
%         ^ meta.assignment.variable.output.matlab variable.parameter.output.matlab
%          ^ meta.assignment.variable.output.matlab punctuation.separator.parameter.comma.matlab
%           ^ meta.assignment.variable.output.matlab variable.parameter.output.matlab
%            ^ meta.assignment.variable.output.matlab punctuation.separator.parameter.comma.matlab
%             ^ meta.assignment.variable.output.matlab variable.parameter.output.matlab
%              ^ punctuation.section.assignment.group.end.matlab
%                ^ keyword.operator.assignment.matlab
%                  ^^^^^^^^^^^ entity.name.function.matlab
%                             ^ meta.parameters.matlab punctuation.definition.parameters.begin.matlab
%                              ^ meta.parameters.matlab punctuation.definition.parameters.end.matlab
    % Help text
    a = "a string";
    b = "b string";
    c = "c string";
end
%<- storage.type.function.end.matlab

function [a,b,... comment
%        ^ punctuation.section.assignment.group.begin.matlab
%         ^ meta.assignment.variable.output.matlab variable.parameter.output.matlab
%          ^ meta.assignment.variable.output.matlab punctuation.separator.parameter.comma.matlab
%           ^ meta.assignment.variable.output.matlab variable.parameter.output.matlab
%            ^ meta.assignment.variable.output.matlab punctuation.separator.parameter.comma.matlab
%             ^^^ meta.assignment.variable.output.matlab punctuation.separator.continuation.line.matlab
%                 ^^^^^^^ meta.assignment.variable.output.matlab comment.continuation.line.matlab
    c] = multiLine(in1)
%   ^ meta.assignment.variable.output.matlab variable.parameter.output.matlab
%    ^ punctuation.section.assignment.group.end.matlab
%      ^ keyword.operator.assignment.matlab
%        ^^^^^^^^^ entity.name.function.matlab
%                 ^ meta.parameters.matlab punctuation.definition.parameters.begin.matlab
%                  ^^^ meta.parameters.matlab variable.parameter.input.matlab
%                     ^ meta.parameters.matlab punctuation.definition.parameters.end.matlab
    % Help text
    a = in1;
    b = "a string";
end
%<- storage.type.function.end.matlab

function [a,...
%        ^ punctuation.section.assignment.group.begin.matlab
%         ^ meta.assignment.variable.output.matlab variable.parameter.output.matlab
%          ^ meta.assignment.variable.output.matlab punctuation.separator.parameter.comma.matlab
%           ^^^ meta.assignment.variable.output.matlab punctuation.separator.continuation.line.matlab
    b] = multiLine2 (in1,... comment
%   ^ meta.assignment.variable.output.matlab variable.parameter.output.matlab
%    ^ punctuation.section.assignment.group.end.matlab
%      ^ keyword.operator.assignment.matlab
%        ^^^^^^^^^^ entity.name.function.matlab
%                   ^ meta.parameters.matlab punctuation.definition.parameters.begin.matlab
%                    ^^^ meta.parameters.matlab variable.parameter.input.matlab
%                       ^ meta.parameters.matlab punctuation.separator.parameter.comma.matlab
%                        ^^^ meta.parameters.matlab punctuation.separator.continuation.line.matlab
%                            ^^^^^^^ meta.parameters.matlab comment.continuation.line.matlab
    in2)
%   ^^^ meta.parameters.matlab variable.parameter.input.matlab
%      ^ meta.parameters.matlab punctuation.definition.parameters.end.matlab
    % Help text
    a = in1;
    b = in2;
end
%<- storage.type.function.end.matlab


function a ... comment
%        ^ meta.assignment.variable.output.matlab variable.parameter.output.matlab
%          ^^^ meta.assignment.variable.output.matlab punctuation.separator.continuation.line.matlab
%              ^^^^^^^ meta.assignment.variable.output.matlab comment.continuation.line.matlab
    = multiline3...
%   ^ keyword.operator.assignment.matlab
%     ^^^^^^^^^^ entity.name.function.matlab 
%               ^^^ meta.function.declaration.matlab punctuation.separator.continuation.line.matlab
    (in1)
%   ^ meta.parameters.matlab punctuation.definition.parameters.begin.matlab
%    ^^^ meta.parameters.matlab variable.parameter.input.matlab
%       ^ meta.parameters.matlab punctuation.definition.parameters.end.matlab
    a = in1;
end


function multiline4(... comment
%        ^^^^^^^^^^ entity.name.function.matlab 
%                  ^ meta.parameters.matlab punctuation.definition.parameters.begin.matlab
%                   ^^^ meta.parameters.matlab punctuation.separator.continuation.line.matlab
%                       ^^^^^^^ meta.parameters.matlab comment.continuation.line.matlab
    in1)
%   ^^^ meta.parameters.matlab variable.parameter.input.matlab
%      ^ meta.parameters.matlab punctuation.definition.parameters.end.matlab
    disp(in1);
end

function    [...
%           ^ punctuation.section.assignment.group.begin.matlab
%            ^^^ meta.assignment.variable.output.matlab punctuation.separator.continuation.line.matlab
    a...
%   ^ meta.assignment.variable.output.matlab variable.parameter.output.matlab
%    ^^^ meta.assignment.variable.output.matlab punctuation.separator.continuation.line.matlab
        ,b] ... comment
%       ^ meta.assignment.variable.output.matlab punctuation.separator.parameter.comma.matlab
%        ^ meta.assignment.variable.output.matlab variable.parameter.output.matlab
%         ^ punctuation.section.assignment.group.end.matlab
%           ^^^ meta.function.declaration.matlab punctuation.separator.continuation.line.matlab
%               ^^^^^^^ meta.function.declaration.matlab comment.continuation.line.matlab
    = multiline5(in1)
%   ^ keyword.operator.assignment.matlab
%     ^^^^^^^^^^ entity.name.function.matlab
%               ^ meta.parameters.matlab punctuation.definition.parameters.begin.matlab
%                ^^^ meta.parameters.matlab variable.parameter.input.matlab
%                   ^ meta.parameters.matlab punctuation.definition.parameters.end.matlab
    a = in1;
    b = "a string";
end

function functionWithoutParens
%        ^^^^^^^^^^^^^^^^^^^^^meta.function.matlab entity.name.function.matlab
    % Help text
    y = "a string";
end
%<- storage.type.function.end.matlab

function functionWithoutParensAndEnd
%        ^^^^^^^^^^^^^^^^^^^^^^^^^^^meta.function.matlab entity.name.function.matlab
        % Help text
        y = "a string";
