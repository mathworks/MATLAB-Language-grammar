% SYNTAX TEST "source.matlab"  "AnonymousFunctionArgument: https://github.com/mathworks/MATLAB-Language-grammar/pull/51"

q = integral(@(x) x.^2, 0, 1);
%            ^^^^^^^^^ meta.function.anonymous.matlab
%                     ^ - meta.function.anonymous.matlab


if ~isempty(lstr)
    p.DataTipTemplate.DataTipRows(end+1) = ...
        dataTipTextRow('cBin', arrayfun(@(x) lstr, binsX, 'UniformOutput', false));
%                                       ^^^^^^^^^ meta.function.anonymous.matlab
%                                                ^ - meta.function.anonymous.matlab 
end
% <-- meta.if.matlab keyword.control.end.if.matlab

    
if ~isempty(lstr)
    p.DataTipTemplate.DataTipRows(end+1) = ...
        dataTipTextRow('cBin', arrayfun(@(x) lstr, binsX, 'UniformOutput', false));
%                                       ^^^^^^^^^ meta.function.anonymous.matlab
%                                                ^ - meta.function.anonymous.matlab 
end
% <-- meta.if.matlab keyword.control.end.if.matlab
