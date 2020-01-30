% SYNTAX TEST "source.matlab"  "Comments after things in blocks like properties: https://github.com/mathworks/MATLAB-Language-grammar/issues/16"
classdef t16CommentAfterClassdefBlockMembers < handle
    methods
        function foo(~) % comment
%                       ^^^^^^^^^ comment.line.percentage.matlab
        end
    end
    events
        AnEvent % comment
%               ^^^^^^^^^ comment.line.percentage.matlab
    end
    properties
        SomeProperty % comment
%                    ^^^^^^^^^ comment.line.percentage.matlab
    end
    enumeration
        EnumValue % comment
%                 ^^^^^^^^^ comment.line.percentage.matlab
    end
end