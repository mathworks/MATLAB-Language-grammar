function y = controlFlow(varargin)
%% Logic based on nargin
switch nargin
  case 0
    return
  case 1
    y = varargin{1};
    % Check single-line if inside switch for https://github.com/mathworks/MATLAB-Language-grammar/issues/19
    if varargin{1} < 0, return; end
  case 2
    y = varargin{1} + varargin{2};
  otherwise
end
try
    if y( end ) < 10
        disp('y < 10');
    elseif y < 20
        disp('y < 20');
    else
        disp("y >= 20");
    end
catch ME
    rethrow(ME);
end
while c1
  if c2, break; end
end
