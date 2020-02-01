% SYNTAX TEST "source.matlab"  "Line continuation in brackets: https://github.com/mathworks/MATLAB-Language-grammar/issues/18"
function [y,z] = t18ContinuationInBrackets(a,b)
y = [ ... a comment
%         ^^^^^^^^^ comment.line.continuation.matlab
        a ... another comment
%             ^^^^^^^^^^^^^^^ comment.line.continuation.matlab
        b ... should be a comment
%             ^^^^^^^^^^^^^^^^^^^ comment.line.continuation.matlab
];

z = { ... a comment
%         ^^^^^^^^^ comment.line.continuation.matlab
        a ... another comment
%             ^^^^^^^^^^^^^^^ comment.line.continuation.matlab
        b ... should be a comment
%             ^^^^^^^^^^^^^^^^^^^ comment.line.continuation.matlab
};

end