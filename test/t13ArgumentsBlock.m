% SYNTAX TEST "source.matlab"  "Arguments block: https://github.com/mathworks/MATLAB-Language-grammar/issues/13"
function t13ArgumentsBlock(x,~,v,method,flag, opts)
% Comment before arguments blocks
arguments % Comment
%         ^^^^^^^^^ comment.line.percentage.matlab
    % Block comment
%   ^^^^^^^^^^^^^^^ comment.line.percentage.matlab
    x (1,:) {mustBeNumeric,mustBeReal} % trailing coment
%                                      ^^^^^^^^^^^^^^^^^ comment.line.percentage.matlab
%     ^^^^^ storage.type.matlab
%           ^^^^^^^^^^^^^^^^^^^^^^^^^^ storage.type.matlab
    ~
    v (1,:) {mustBeNumeric,mustBeReal, mustBeEqualSize(v,x)}
%     ^^^^^ storage.type.matlab
%           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ storage.type.matlab
    method (1,:) char {mustBeMember(method,{'linear','cubic','spline'})} = 'linear' % End of line comment
%          ^^^^^ storage.type.matlab
%                ^^^^ storage.type.matlab
%                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ storage.type.matlab
%                                                                          ^^^^^^^^ string.quoted.single.matlab
%                                                                                     ^^^^^^^^^^^^^^^^^^^ comment.line.percentage.matlab
end
arguments (Repeating) % Comment
%                       ^^^^^^^^^ comment.line.percentage.matlab
    % Trailing flags
    flag (1,:) string {mustBeMember(flag,["first","second","third"])}
end
arguments
    opts.Named (1,:) string {mustBeNumeric(opts.Named), ... Dotdotdot comment
                             mustBeReal}
%                            ^^^^^^^^^^^ storage.type.matlab
end
end