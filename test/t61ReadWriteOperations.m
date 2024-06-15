% SYNTAX TEST "source.matlab"  "ReadWriteOperations: https://github.com/mathworks/MATLAB-Language-grammar/pull/51"

variable
% <------- variable.other.readwrite.matlab

classInstance.property
% <------------ variable.other.readwrite.matlab
%            ^ punctuation.accessor.dot.matlab
%             ^^^^^^^^ variable.other.property.matlab

classInstance.method()
% <------------ variable.other.readwrite.matlab
%            ^ punctuation.accessor.dot.matlab
%             ^^^^^^ entity.name.function.matlab
%                   ^ punctuation.section.parens.begin.matlab
%                    ^ punctuation.section.parens.end.matlab      
