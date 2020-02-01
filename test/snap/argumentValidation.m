function argumentValidation(x,~,v,method,flag, opts)
    % Comment before arguments blocks
    arguments
        % Block comment
        x (1,:) {mustBeNumeric,mustBeReal} % trailing coment
        ~
        % Line comment
        v (1,:) {mustBeNumeric,mustBeReal, mustBeEqualSize(v,x)}
        method (1,:) char {mustBeMember(method,{'linear','cubic','spline'})} = 'linear' % End of line comment
        % End block comment
    end
    arguments (Repeating)
        % Trailing flags
        flag (1,:) string {mustBeMember(flag,["first","second","third"])}
    end
    arguments
        opts.Named (1,:) string {mustBeNumeric(opts.Named), ... Dotdotdot comment
                                 mustBeReal}
    end
end