% SYNTAX TEST "source.matlab"  "Property validation: https://github.com/mathworks/MATLAB-Language-grammar/issues/8"
classdef t08PropertyValidation
    properties (GetAccess = 'public', SetAccess = 'private')
%               ^^^^^^^^^ storage.modifier.properties.matlab
%                         ^ keyword.operator.assignment.matlab
%                            ^^^^^^ storage.modifier.access.matlab
%                                     ^^^^^^^^^ storage.modifier.properties.matlab
%                                               ^ keyword.operator.assignment.matlab
%                                                  ^^^^^^^ storage.modifier.access.matlab
        % Commentary in the properties block
%       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.percentage.matlab
        Prop % comment
%       ^^^^ variable.object.property.matlab
%            ^^^^^^^^^ comment.line.percentage.matlab
        PropType some.type
%                ^^^^^^^^^ storage.type.matlab
        PropSize (1,2) % comment
%                ^ punctuation.section.parens.begin.matlab
%                 ^^^  meta.parens.size.matlab
%                 ^ constant.numeric.decimal.matlab
%                  ^ punctuation.separator.comma.matlab
%                   ^ constant.numeric.decimal.matlab
%                    ^ punctuation.section.parens.end.matlab
%                      ^^^^^^^^^ comment.line.percentage.matlab
        PropSizeType (:, 3) int64; % another comment
%                    ^ punctuation.section.parens.begin.matlab
%                     ^ meta.parens.size.matlab keyword.operator.vector.colon.matlab
%                      ^ meta.parens.size.matlab punctuation.separator.comma.matlab
%                        ^ meta.parens.size.matlab constant.numeric.decimal.matlab
%                         ^ punctuation.section.parens.end.matlab
%                           ^^^^^ storage.type.matlab
%                                ^ punctuation.terminator.semicolon.matlab
%                                  ^^^^^^^^^^^^^^^^^ comment.line.percentage.matlab
        PropSizeTypeFcn  (:, 3) foo.bar.baz {mustBeReal}
%                         ^^^^ meta.parens.size.matlab
%                               ^^^^^^^^^^^ storage.type.matlab
%                                           ^ punctuation.section.block.begin.matlab
%                                            ^^^^^^^^^^ meta.block.validation.matlab
%                                                      ^ punctuation.section.block.end.matlab
        PropInit = "string"
%                ^ keyword.operator.assignment.matlab
%                  ^ punctuation.definition.string.begin.matlab
%                   ^^^^^^ string.quoted.double.matlab
%                         ^ punctuation.definition.string.end.matlab
        PropTypeInit some.type = some.type(1)
%                    ^^^^^^^^^ storage.type.matlab
%                                     ^^^^^^^ meta.function-call.parens.matlab
%                                     ^^^^ entity.name.function.matlab
%                                         ^ punctuation.section.parens.begin.matlab
%                                          ^ constant.numeric.decimal.matlab
%                                           ^ punctuation.section.parens.end.matlab
        PropSizeInit (1,2) = 'char'
%                     ^^^ meta.parens.size.matlab
%                            ^ punctuation.definition.string.begin.matlab
%                             ^^^^ string.quoted.single.matlab
%                                 ^ punctuation.definition.string.end.matlab
        PropSizeTypeInit (:, 3, 6) int64 = rand
%                         ^^^^^^^ meta.parens.size.matlab
%                                  ^^^^^ storage.type.matlab
        PropSizeTypeFcnInit  (:, 3) foo.bar.baz {mustBeReal} = pi;
%                                                            ^ keyword.operator.assignment.matlab
%                                                              ^^ constant.numeric.matlab
%                                                                ^ punctuation.terminator.semicolon.matlab
        % Ending commentary
    end
end
