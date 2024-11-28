% SYNTAX TEST "source.matlab"  "Property etc. attribute parsing: https://github.com/mathworks/MATLAB-Language-grammar/issues/95"
classdef Class
    % Some properties
    properties (SetAccess=public, GetAccess={?foo.bar.baz})
%                                            ^^^^^^^^^^^^ meta.cell.literal.matlab
    end

    events (Hidden=true, ListenAccess={?foo.bar}, NotifyAccess=?bar.baz)
%                                      ^^^^^^^^ meta.cell.literal.matlab
    end

    methods (Access=?bar.baz, Abstract=false)
%                    ^^^^^^^ meta.metaclass.matlab
    end
end
