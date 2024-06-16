% SYNTAX TEST "source.matlab"  "SwitchStatements: https://github.com/mathworks/MATLAB-Language-grammar/pull/64"



% https://github.com/mathworks/MATLAB-Language-grammar/issues/45
switch(letter)
% <----- keyword.control.switch.matlab
%     ^^^^^^^^ meta.switch.declaration.matlab
    case {'A', 'B', 'C'}
%   ^^^^ keyword.control.switch.case.matlab
%        ^^^^^^^^^^^^^^^^ meta.case.declaration.matlab  
        return;
    case {'D', 'E', 'F'}
%   ^^^^ keyword.control.switch.case.matlab
%        ^^^^^^^^^^^^^^^^ meta.case.declaration.matlab  
        return;
    case 'X'
%   ^^^^ keyword.control.switch.case.matlab
%        ^^^ meta.case.declaration.matlab  
%   ^^^^ keyword.control.switch.case.matlab
%        ^^^ meta.case.declaration.matlab  
        return;
    case 'Y'
%   ^^^^ keyword.control.switch.case.matlab
%        ^^^ meta.case.declaration.matlab  
        return;
    case 'Z'
%   ^^^^ keyword.control.switch.case.matlab
%        ^^^ meta.case.declaration.matlab  
        return;
    otherwise
%   ^^^^^^^^^ keyword.control.switch.otherwise.matlab
        return;
end
% <-- keyword.control.end.switch.matlab


% https://github.com/mathworks/MATLAB-Language-grammar/issues/47
switch obj.memberVariable
% <----- keyword.control.switch.matlab
%      ^^^^^^^^^^^^^^^^^^ meta.switch.declaration.matlab
    case { 0, 1, 2 }
%   ^^^^ keyword.control.switch.case.matlab
%        ^^^^^^^^^^^ meta.case.declaration.matlab  
        disp( 'dummy output - 0' );
    case 3
%   ^^^^ keyword.control.switch.case.matlab
%        ^ meta.case.declaration.matlab  
        disp( 'dummy output - 1' );
    otherwise
%   ^^^^^^^^^ keyword.control.switch.otherwise.matlab
        disp( 'dummy output - otherwise');

end
% <-- keyword.control.end.switch.matlab

switch memberVariable
% <----- keyword.control.switch.matlab
%      ^^^^^^^^^^^^^^ meta.switch.declaration.matlab
    case { 0, 1, 2 }
        disp( 'dummy output - 0' );
    case 3
        disp( 'dummy output - 1' );
    otherwise
%   ^^^^^^^^^ keyword.control.switch.otherwise.matlab
        disp( 'dummy output - otherwise' );
end
% <-- keyword.control.end.switch.matlab


% https://github.com/mathworks/MATLAB-Language-grammar/issues/52
switch input
% <----- keyword.control.switch.matlab
%      ^^^^^ meta.switch.declaration.matlab
    case 0
%   ^^^^ keyword.control.switch.case.matlab
%        ^ meta.case.declaration.matlab 
        disp foo
    case { 1,2}
%   ^^^^ keyword.control.switch.case.matlab
%        ^^^^^^ meta.case.declaration.matlab 
        disp bar
    case {3,4 }
%   ^^^^ keyword.control.switch.case.matlab
%        ^^^^^^ meta.case.declaration.matlab 
        disp foobar
    case {5,6}
%   ^^^^ keyword.control.switch.case.matlab
%        ^^^^^ meta.case.declaration.matlab 
        disp baz
end
% <-- keyword.control.end.switch.matlab


% https://github.com/mathworks/MATLAB-Language-grammar/issues/64
switch experiment
% <----- keyword.control.switch.matlab
%      ^^^^^^^^^^ meta.switch.declaration.matlab
    case 0 % Script testing w/ artery only output, text here
%   ^^^^ keyword.control.switch.case.matlab
%        ^ meta.case.declaration.matlab 
%          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.percentage.matlab
end
% <-- keyword.control.end.switch.matlab


a = @() 2;
b = @() 2;

switch a()
% <----- keyword.control.switch.matlab
%      ^^^ meta.switch.declaration.matlab
    case 1
%   ^^^^ keyword.control.switch.case.matlab
%        ^ meta.case.declaration.matlab 
        disp("yes")
    case b()
%   ^^^^ keyword.control.switch.case.matlab
%        ^^^ meta.case.declaration.matlab 
        disp("wierd")
    otherwise
%   ^^^^^^^^^ keyword.control.switch.otherwise.matlab
        disp("no")
end
% <-- keyword.control.end.switch.matlab