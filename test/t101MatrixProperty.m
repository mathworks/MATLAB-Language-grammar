% SYNTAX TEST "source.matlab"  "Property etc. attribute parsing: https://github.com/mathworks/MATLAB-Language-grammar/issues/101"
classdef Foo
    properties
        mat1 = [1 1; 1 1];
%                      ^ constant.numeric.decimal.matlab
%                       ^ punctuation.section.brackets.end.matlab
        mat2 = [1;1];
%                 ^ constant.numeric.decimal.matlab
%                  ^ punctuation.section.brackets.end.matlab
    end
end
