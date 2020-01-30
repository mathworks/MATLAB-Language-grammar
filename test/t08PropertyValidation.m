% SYNTAX TEST "source.matlab"  "Property validation: https://github.com/mathworks/MATLAB-Language-grammar/issues/8"
classdef t08PropertyValidation
    properties (GetAccess = 'public', SetAccess = 'private')
        % Commentary in the properties block
%       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.percentage.matlab
        Prop % comment
%            ^^^^^^^^^ comment.line.percentage.matlab
        PropType some.type
%                ^^^^^^^^^ storage.type.matlab
        PropSize (1,2) % comment
%                ^^^^^ storage.type.matlab
%                      ^^^^^^^^^ comment.line.percentage.matlab
        PropSizeType (:, 3) int64; % another comment
%                    ^^^^^^ storage.type.matlab
%                           ^^^^^ storage.type.matlab
%                                  ^^^^^^^^^^^^^^^^^ comment.line.percentage.matlab
        PropSizeTypeFcn  (:, 3) foo.bar.baz {mustBeReal}
%                        ^^^^^^ storage.type.matlab
%                               ^^^^^^^^^^^ storage.type.matlab
%                                            ^^^^^^^^^^^^ storage.type.matlab
        PropInit = "string"
%                  ^^^^^^^^ string.quoted.double.matlab
        PropTypeInit some.type = some.type(1)
%                    ^^^^^^^^^ storage.type.matlab
        PropSizeInit (1,2) = 'char'
%                    ^^^^^ storage.type.matlab
%                             ^^^^^ string.quoted.single.matlab
        PropSizeTypeInit (:, 3, 6) int64 = rand
%                         ^^^^^^^^ storage.type.matlab
%                                  ^^^^^ storage.type.matlab
        PropSizeTypeFcnInit  (:, 3) foo.bar.baz {mustBeReal} = pi;
        % Ending commentary
    end
end
