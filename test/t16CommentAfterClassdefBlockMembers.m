% SYNTAX TEST "source.matlab"  "Comments after things in blocks like properties: https://github.com/mathworks/MATLAB-Language-grammar/issues/16"
classdef t16CommentAfterClassdefBlockMembers < handle
    methods
        function foo(~) % comment
%       ^^^^^^^^ storage.type.function.matlab
%                ^^^ entity.name.function.matlab
%                   ^^^ meta.parameters.matlab
%                       ^^^^^^^^^ comment.line.percentage.matlab
        end
%       ^^^ storage.type.function.end.matlab
    end
%   ^^^ keyword.control.methods.end.matlab
    events
        AnEvent % comment
%       ^^^^^^^ entity.name.type.event.matlab
%               ^^^^^^^^^ comment.line.percentage.matlab
    end
%   ^^^ keyword.control.events.end.matlab
    properties
        SomeProperty % comment
%       ^^^^^^^^^^^^ variable.object.property.matlab
%                    ^^^^^^^^^ comment.line.percentage.matlab
    end
%   ^^^ keyword.control.properties.end.matlab
    enumeration
        EnumValue % comment
%       ^^^^^^^^^ variable.other.enummember.matlab
%                 ^^^^^^^^^ comment.line.percentage.matlab
    end
%   ^^^ keyword.control.enum.end.matlab
end