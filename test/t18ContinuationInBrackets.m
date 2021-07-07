% SYNTAX TEST "source.matlab"  "Line continuation in brackets: https://github.com/mathworks/MATLAB-Language-grammar/issues/18"
function [y,z] = t18ContinuationInBrackets(a,b)
y = [ ... a comment
%         ^^^^^^^^^ comment.continuation.line.matlab
        a ... another comment
%             ^^^^^^^^^^^^^^^ comment.continuation.line.matlab
        b ... should be a comment
%             ^^^^^^^^^^^^^^^^^^^ comment.continuation.line.matlab
];

z = { ... a comment
%         ^^^^^^^^^ comment.continuation.line.matlab
        a ... another comment
%             ^^^^^^^^^^^^^^^ comment.continuation.line.matlab
        b ... should be a comment
%             ^^^^^^^^^^^^^^^^^^^ comment.continuation.line.matlab
};

end