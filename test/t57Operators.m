% SYNTAX TEST "source.matlab"  "Operators: https://github.com/mathworks/MATLAB-Language-grammar/pull/57"

%% Assignment and metadata query

mc = ?class
%  ^ keyword.operator.assignment.matlab
%    ^ 	keyword.operator.other.question.matlab

%% Arithmatic operations

arithmetic1 = 1+2;
%              ^ keyword.operator.arithmetic.matlab
arithmetic2 = 1- 2;
%              ^ keyword.operator.arithmetic.matlab
arithmetic3 = 1 *2;
%               ^ keyword.operator.arithmetic.matlab
arithmetic4 = 1 / 2;
%               ^ keyword.operator.arithmetic.matlab
arithmetic5 = 1+...
%              ^ keyword.operator.arithmetic.matlab
    2;
arithmetic6 = 1- ...
%              ^ keyword.operator.arithmetic.matlab
    2;
arithmetic7 = 1 *...
%               ^ keyword.operator.arithmetic.matlab
    2;
arithmetic8 = 1 / ...
%               ^ keyword.operator.arithmetic.matlab
    2;


%% Logical operations

logical1 = 1==1;
%           ^^ keyword.operator.logical.matlab
logical2 = 1~= 1;
%           ^^ keyword.operator.logical.matlab
logical3 = 1 &1;
%            ^ keyword.operator.logical.matlab
logical4 = 1 && 1 ;
%            ^^ keyword.operator.logical.matlab
logical5 = 1==...
%           ^^ keyword.operator.logical.matlab
    1;
logical6 = 1~= ...
%           ^^ keyword.operator.logical.matlab
    1;
logical7 = 1 |...
%            ^ keyword.operator.logical.matlab
    1;
logical8 = 1 || ...
%            ^^ keyword.operator.logical.matlab
    1 ;


%% Colon operator

colon1 = 1:10;
%         ^ keyword.operator.vector.colon.matlab
colon2 = 1: 10;
%         ^ keyword.operator.vector.colon.matlab
colon3 = 1 :10;
%          ^ keyword.operator.vector.colon.matlab
colon4 = 1 : 10;
%          ^ keyword.operator.vector.colon.matlab
colon5 = 1:...
%         ^ keyword.operator.vector.colon.matlab
    10;
colon6 = 1: ...
%         ^ keyword.operator.vector.colon.matlab
    10;
colon7 = 1 :...
%          ^ keyword.operator.vector.colon.matlab
    10;
colon8 = 1 : ...
%          ^ keyword.operator.vector.colon.matlab
    10;


%% Comparative operators

comparative1 = 1>0;
%               ^ keyword.operator.relational.matlab
comparative2 = 1>= 0;
%               ^^ keyword.operator.relational.matlab
comparative3 = 1 <=0;
%                ^^ keyword.operator.relational.matlab
comparative4 = 1 < 0;
%                ^ keyword.operator.relational.matlab
comparative5 = 1>...
%               ^ keyword.operator.relational.matlab
    0;
comparative6 = 1>= ...
%               ^^ keyword.operator.relational.matlab
    0;
comparative7 = 1 <=...
%                ^^ keyword.operator.relational.matlab
    0;
comparative8 = 1 < ...
%                ^ keyword.operator.relational.matlab
    0;
