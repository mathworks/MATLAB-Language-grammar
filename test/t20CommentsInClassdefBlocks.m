% SYNTAX TEST "source.matlab"  "Comments inside of classdef blocks: https://github.com/mathworks/MATLAB-Language-grammar/issues/20"
classdef t20CommentsInClassdefBlocks < handle
    methods
        % A comment
%       ^^^^^^^^^^^^ comment.line.percentage.matlab
    end
    events
        % A comment
%       ^^^^^^^^^^^^ comment.line.percentage.matlab
    end
    properties
        % A comment again
%       ^^^^^^^^^^^^^^^^^ comment.line.percentage.matlab
    end
    enumeration
        % One more comment
%       ^^^^^^^^^^^^^^^^^^ comment.line.percentage.matlab
    end
end