classdef PropertyValidation
    properties (GetAccess = 'public', SetAccess = 'private')
        % Commentary in the properties block
        Prop % comment
        PropType some.type
        PropSize (1,2) % comment
        PropSizeType (:, 3) int64; % another comment
        PropSizeTypeFcn  (:, 3) foo.bar.baz {mustBeReal}
        PropInit = "string"
        PropTypeInit some.type = some.type(1)
        PropSizeInit (1,2) = 'char'
        PropSizeTypeInit (:, 3, 6) int64 = rand
        PropSizeTypeFcnInit  (:, 3) foo.bar.baz {mustBeReal} = pi;
        % Ending commentary
    end
end
