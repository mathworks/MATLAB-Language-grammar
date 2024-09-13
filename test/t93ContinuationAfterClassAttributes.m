% SYNTAX TEST "source.matlab"  "Line continuation after class attributes: https://github.com/mathworks/MATLAB-Language-grammar/issues/93"

% Case 1: Line continuation without attributes
classdef ...
%        ^^^ meta.class.declaration.matlab punctuation.separator.continuation.line.matlab
    Class1
%   ^^^^^^ meta.class.declaration.matlab entity.name.type.class.matlab
end

% Case 2: Line continuation with attributes
classdef (Abstract) ...
%        ^^^^^^^^^^^^^^ meta.class.declaration.matlab
%        ^^^^^^^^^^ storage.modifier.section.class.matlab
%                   ^^^ punctuation.separator.continuation.line.matlab
    Class2
%   ^^^^^^ meta.class.declaration.matlab entity.name.type.class.matlab
end