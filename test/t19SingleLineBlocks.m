% SYNTAX TEST "source.matlab"  "Blocks like if, for, etc. on a single line: https://github.com/mathworks/MATLAB-Language-grammar/issues/19"
function y = t19SingleLineBlocks(x)
    switch x
%          ^ variable.other.constant.matlab
        case 1
%       ^^^^ keyword.control.switch.case.matlab
%            ^ constant.numeric.decimal.matlab
            y = 1;
        case 2
            y = 2;
        otherwise
%       ^^^^^^^^^ keyword.control.switch.otherwise.matlab
            if nargin == 0, return; end
%           ^^ keyword.control.if.matlab
%              ^^^^^^ variable.language.function.matlab
%                     ^^ keyword.operator.logical.matlab
%                        ^ constant.numeric.decimal.matlab
%                         ^ punctuation.separator.comma.matlab
%                           ^^^^^^ keyword.control.flow.matlab
%                                 ^ punctuation.terminator.semicolon.matlab
%                                   ^^^ keyword.control.end.if.matlab
            y = 0;
    end
    switch x, case 1, disp(1), case 2, disp(2), otherwise, disp(0); end
%   ^^^^^^ keyword.control.switch.matlab
%          ^ variable.other.constant.matlab
%           ^ punctuation.separator.comma.matlab
%             ^^^^ keyword.control.switch.case.matlab
%                  ^ constant.numeric.decimal.matlab
%                   ^ punctuation.separator.comma.matlab
%                     ^^^^ entity.name.function.matlab
%                         ^ punctuation.section.parens.begin.matlab
%                          ^ constant.numeric.decimal.matlab
%                           ^ punctuation.section.parens.end.matlab
%                            ^ punctuation.separator.comma.matlab
%                              ^^^^ keyword.control.switch.case.matlab
%                                   ^ constant.numeric.decimal.matlab
%                                    ^ punctuation.separator.comma.matlab
%                                      ^^^^^^^ meta.function-call.parens.matlab
%                                             ^ punctuation.separator.comma.matlab
%                                               ^^^^^^^^^ keyword.control.switch.otherwise.matlab
%                                                        ^ punctuation.separator.comma.matlab
%                                                          ^^^^^^^ meta.function-call.parens.matlab
%                                                                 ^ punctuation.terminator.semicolon.matlab
%                                                                   ^^^ keyword.control.end.switch.matlab
    if y > 2, exit_code = 1; else, exit_code = 0; end
%   ^^ keyword.control.if.matlab
%        ^ keyword.operator.relational.matlab
%          ^ constant.numeric.decimal.matlab
%           ^ punctuation.separator.comma.matlab
%             ^^^^^^^^^ meta.assignment.variable.single.matlab
%                       ^ keyword.operator.assignment.matlab
%                         ^ constant.numeric.decimal.matlab
%                          ^ punctuation.terminator.semicolon.matlab
%                            ^^^^ keyword.control.else.matlab
%                                ^ punctuation.separator.comma.matlab
%                                  ^^^^^^^^^ meta.assignment.variable.single.matlab
%                                            ^ keyword.operator.assignment.matlab
%                                              ^ constant.numeric.decimal.matlab
%                                               ^ punctuation.terminator.semicolon.matlab
%                                                 ^^^ keyword.control.end.if.matlab
    print(["exited with code " exit_code])
%   ^^^^^ entity.name.function.matlab
%        ^ punctuation.section.parens.begin.matlab
%         ^ punctuation.section.brackets.begin.matlab
%          ^ punctuation.definition.string.begin.matlab
%           ^^^^^^^^^^^^^^^^^ string.quoted.double.matlab
%                            ^ punctuation.definition.string.end.matlab
%                                       ^ punctuation.section.brackets.end.matlab
%                                        ^ punctuation.section.parens.end.matlab
    try if y > 2, error("input greater than 2"); end; catch e; fprintf(['caught exception "' e '"']); end
%   ^^^ keyword.control.try.matlab
%       ^^ keyword.control.if.matlab
%            ^ keyword.operator.relational.matlab
%              ^ constant.numeric.decimal.matlab
%               ^ punctuation.separator.comma.matlab
%                 ^^^^^ entity.name.function.matlab
%                      ^ punctuation.section.parens.begin.matlab
%                       ^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.matlab
%                                             ^ punctuation.section.parens.end.matlab
%                                              ^ punctuation.terminator.semicolon.matlab
%                                                ^^^ keyword.control.end.if.matlab
%                                                   ^ punctuation.terminator.semicolon.matlab
%                                                     ^^^^^ keyword.control.catch.matlab
%                                                           ^ variable.other.constant.matlab
%                                                              ^^^^^^^ entity.name.function.matlab
%                                                                     ^ punctuation.section.parens.begin.matlab
%                                                                                                  ^ punctuation.section.parens.end.matlab
%                                                                                                   ^ punctuation.terminator.semicolon.matlab
%                                                                                                     ^^^ keyword.control.end.try.matlab
end
