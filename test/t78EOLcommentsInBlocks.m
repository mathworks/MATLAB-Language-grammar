% SYNTAX TEST "source.matlab"  "EOLcommentsInBlocks: https://github.com/mathworks/MATLAB-Language-grammar/pull/78"


while test % test
% <---- keyword.control.while.matlab
%     ^^^^ meta.while.declaration.matlab
%          ^^^^^^ comment.line.percentage.matlab
    % test
end

while (test) % test
% <---- keyword.control.while.matlab
%     ^^^^^^ meta.while.declaration.matlab
%            ^^^^^^ comment.line.percentage.matlab
    % test
end

while test; % test
% <---- keyword.control.while.matlab
%     ^^^^ meta.while.declaration.matlab
%           ^^^^^^ comment.line.percentage.matlab
    % test
end

for i = 1:10 % test
% <-- keyword.control.for.matlab
%     ^^^^^ meta.for.declaration.matlab
%            ^^^^^^ comment.line.percentage.matlab
    % test
end

if i == 10 % test
% <-- keyword.control.if.matlab
%  ^^^^^^^ meta.if.declaration.matlab
%          ^^^^^^ comment.line.percentage.matlab
    % test
end