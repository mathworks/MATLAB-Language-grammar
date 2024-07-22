% SYNTAX TEST "source.matlab"  "Metaclasses: https://github.com/mathworks/MATLAB-Language-grammar/issues/89"
classdef (AllowedSubclasses = {?SubClass1,?namespace1.SubClass2}) SuperClass
%                               ^^^^^^^^^ meta.metaclass.matlab entity.other.class.matlab
%                                          ^^^^^^^^^^^^^^^^^^^^ meta.metaclass.matlab
%                                          ^^^^^^^^^^ entity.name.namespace.matlab
%                                                     ^^^^^^^^^ entity.other.class.matlab
    methods
        function foo()
            x = ?namespace2.cls
%                ^^^^^^^^^^^^^^ meta.metaclass.matlab
%                ^^^^^^^^^^ entity.name.namespace.matlab
%                           ^^^ entity.other.class.matlab
            y = ?MyClass
%                ^^^^^^^ meta.metaclass.matlab entity.other.class.matlab
        end
    end
end
