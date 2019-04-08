function y = controlFlow(varargin)
switch nargin
  case 0
    return
  case 1
    y = varargin{1};
  case 2
    y = varargin{1} + varargin{2};
  otherwise
end
try
    if y < 10
        disp('y < 10');
    elseif y < 20
        disp('y < 20');
    else
        disp("y >= 20");
    end
catch ME
    rethrow(ME);
end
