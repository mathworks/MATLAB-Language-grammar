% SYNTAX TEST "source.matlab"  "ReadWriteOperations: https://github.com/mathworks/MATLAB-Language-grammar/pull/61"

variable
% <------- variable.other.readwrite.matlab

classInstance.property
% <------------ variable.other.readwrite.matlab
%            ^ punctuation.accessor.dot.matlab

classInstance.method()
% <------------ variable.other.readwrite.matlab
%            ^ punctuation.accessor.dot.matlab
%                   ^ punctuation.section.parens.begin.matlab
%                    ^ punctuation.section.parens.end.matlab      
