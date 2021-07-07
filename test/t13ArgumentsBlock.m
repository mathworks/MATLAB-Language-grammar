% SYNTAX TEST "source.matlab"  "Arguments block: https://github.com/mathworks/MATLAB-Language-grammar/issues/13"
function t13ArgumentsBlock(x,~,v,method,flag, opts)
% Comment before arguments blocks
arguments % Comment
%         ^^^^^^^^^ comment.line.percentage.matlab
    % Block comment
%   ^^^^^^^^^^^^^^^ comment.line.percentage.matlab
    x (1,:) {mustBeNumeric,mustBeReal} % trailing coment
%      ^^^ meta.parens.size.matlab
%            ^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.validation.matlab
%                                      ^^^^^^^^^^^^^^^^^ comment.line.percentage.matlab
    ~
    v (1,:) {mustBeNumeric,mustBeReal, mustBeEqualSize(v,x)}
%      ^^^ meta.parens.size.matlab
%            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.validation.matlab
    method (1,:) char {mustBeMember(method,{'linear','cubic','spline'})} = 'linear' % End of line comment
%           ^^^ meta.parens.size.matlab
%                ^^^^ storage.type.matlab
%                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.validation.matlab
%                                           ^^^^^^^^ string.quoted.single.matlab
%                                                    ^^^^^^^ string.quoted.single.matlab
%                                                            ^^^^^^^^ string.quoted.single.matlab
%                                                                        ^ keyword.operator.assignment.matlab
%                                                                          ^^^^^^^^ string.quoted.single.matlab
%                                                                                   ^^^^^^^^^^^^^^^^^^^^^ comment.line.percentage.matlab
end
arguments (Repeating) % Comment
%          ^^^^^^^^^ storage.modifier.arguments.matlab
%                     ^^^^^^^^^ comment.line.percentage.matlab
    % Trailing flags
    flag (1,:) string {mustBeMember(flag,["first","second","third"])}
end
arguments
    opts.Named (1,:) string {mustBeNumeric(opts.Named), ... Dotdotdot comment
                             mustBeReal}
%                            ^^^^^^^^^^ meta.block.validation.matlab
end
end