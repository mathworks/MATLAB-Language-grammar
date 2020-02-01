% SYNTAX TEST "source.matlab"  "Multi line classdef header: https://github.com/mathworks/MATLAB-Language-grammar/issues/15"
classdef t15MultiLineClassdefHeader ... a comment
%                                       ^^^^^^^^^ comment.line.continuation.matlab
   < otherClass
    properties
%   ^^^^^^^^^^ keyword.control.properties.matlab
       Prop
    end
    methods
%   ^^^^^^^ keyword.control.methods.matlab
        function y = foo(x)
            y = x;
        end
    end
end
