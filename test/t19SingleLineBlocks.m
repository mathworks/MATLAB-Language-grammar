% SYNTAX TEST "source.matlab"  "Blocks like if, for, etc. on a single line: https://github.com/mathworks/MATLAB-Language-grammar/issues/19"
function y = t19SingleLineBlocks(x)
    switch x
%          ^ variable.other.constant.matlab
        case 1
%       ^^^^ keyword.control.case.matlab
%            ^ constant.numeric.decimal.matlab
            y = 1;
        case 2
            y = 2;
        otherwise
%       ^^^^^^^^^ keyword.control.otherwise.matlab
            if nargin == 0, return; end
    %       ^^ keyword.control.if.matlab
    %          ^^^^^^^ variable.language.function.matlab
    %                  ^^ keyword.operator.logical.matlab
    %                     ^ constant.numeric.decimal.matlab
    %                      ^ punctuation.separator.comma.matlab
    %                        ^^^^^^ keyword.control.flow.matlab
    %                              ^ punctuation.terminator.semicolon.matlab
    %                                ^^^ keyword.control.end.if.matlab
            y = 0;
    end
    switch x, case 1, disp(1), case 2, disp(2), otherwise, y = -1; end
    if y > 2, exit_code = 0; else, exit_code = 1; end
    print(['exited with code ' exit_code])
    try error('test'); catch e; fprintf(['caught exception ' e]); end
end