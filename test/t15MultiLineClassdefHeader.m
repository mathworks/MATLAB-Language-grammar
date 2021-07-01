% SYNTAX TEST "source.matlab"  "Multi line classdef header: https://github.com/mathworks/MATLAB-Language-grammar/issues/15"
classdef t15MultiLineClassdefHeader ...
   < otherClass
%  ^ punctuation.separator.lt.inheritance.matlab
%    ^^^^^^^^^^ entity.other.inherited-class.matlab
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
