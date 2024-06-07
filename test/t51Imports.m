% SYNTAX TEST "source.matlab"  "Imports: https://github.com/mathworks/MATLAB-Language-grammar/pull/51"

import module
% <------ keyword.other.import.matlab
%      ^^^^^^ entity.name.module.matlab

import module; 
% <------ keyword.other.import.matlab
%      ^^^^^^ entity.name.module.matlab

import module   
% <------ keyword.other.import.matlab
%      ^^^^^^ entity.name.module.matlab

import module.submodule.class.function
% <------ keyword.other.import.matlab
%      ^^^^^^ entity.name.module.matlab
%            ^ punctuation.separator.matlab
%             ^^^^^^^^^ entity.name.module.matlab
%                      ^ punctuation.separator.matlab
%                       ^^^^^ entity.name.module.matlab
%                            ^ punctuation.separator.matlab
%                             ^^^^^^^^ entity.name.module.matlab

   import module.*
%  ^^^^^^ keyword.other.import.matlab
%         ^^^^^^ entity.name.module.matlab
%               ^ punctuation.separator.matlab
%                ^ variable.language.wildcard.matlab
