% SYNTAX TEST "source.matlab"  "LineContinationInAnonymousFunctions: https://github.com/mathworks/MATLAB-Language-grammar/pull/54"


@(x, y) x.^2+y;
% <- punctuation.definition.function.anonymous.matlab
%^ punctuation.definition.parameters.begin.matlab
% ^^^^ meta.parameters.matlab
% ^ variable.parameter.input.matlab
%  ^ punctuation.separator.parameter.comma.matlab
%    ^ variable.parameter.input.matlab
%     ^ punctuation.definition.parameters.end.matlab
%       ^^^^^^ meta.parameters.matlab

@(x,...
% <- punctuation.definition.function.anonymous.matlab
%^ punctuation.definition.parameters.begin.matlab
% ^^^^^ meta.parameters.matlab
%   ^^^ punctuation.separator.continuation.line.matlab
  y) x...
% ^ meta.parameters.matlab
%  ^ punctuation.definition.parameters.end.matlab
%    ^^^^ meta.parameters.matlab
%     ^^^ punctuation.separator.continuation.line.matlab
  .^2+y;
% ^^^^^ meta.parameters.matlab

@(x,... comment
% <- punctuation.definition.function.anonymous.matlab
%^ punctuation.definition.parameters.begin.matlab
% ^^^^^ meta.parameters.matlab
%   ^^^ punctuation.separator.continuation.line.matlab
%       ^^^^^^^ comment.continuation.line.matlab
    y)... comment 
%   ^ meta.parameters.matlab
%    ^ punctuation.definition.parameters.end.matlab
%     ^^^ punctuation.separator.continuation.line.matlab
%         ^^^^^^^ comment.continuation.line.matlab
    x... more comment
%   ^^^^^^^^^^^^^^^^^ meta.parameters.matlab
%    ^^^ punctuation.separator.continuation.line.matlab
%        ^^^^^^^^^^^^ comment.continuation.line.matlab
    .^2+y;
%   ^^^^^ meta.parameters.matlab

