% SYNTAX TEST "source.matlab"  "Comments after block headers: https://github.com/mathworks/MATLAB-Language-grammar/issues/24"
classdef t24BlockHeaderComments < handle % comment
%                                        ^^^^^^^^^ comment.line.percentage.matlab
    methods % A comment
%           ^^^^^^^^^^^^ comment.line.percentage.matlab
    end
    events % A comment
%          ^^^^^^^^^^^^ comment.line.percentage.matlab
    end
    properties % A comment again
%              ^^^^^^^^^^^^^^^^^ comment.line.percentage.matlab
    end
    enumeration  % One more comment
%                ^^^^^^^^^^^^^^^^^^ comment.line.percentage.matlab
    end
end