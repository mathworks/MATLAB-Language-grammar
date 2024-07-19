% SYNTAX TEST "source.matlab"  "Property validation: https://github.com/mathworks/MATLAB-Language-grammar/issues/87"
classdef (AllowedSubclasses = {?SubClass1,?SubClass2}) SuperClass
%        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ storage.modifier.section.class.matlab
%                              ^^^^^^^^^^^^^^^^^^^^^ meta.cell.literal.matlab
%                                                      ^^^^^^^^^^ entity.name.type.class.matlab
end
