# Regular Expressions 
* /one (two) three
%% by default vim doesn't treat (two) as a group (meaning no reg-ex)
%% there are several reg-ex modes in vim (:help magic)
%% one such mode is \v which is very close to reg-ex we know
* \v
%% vim treats the characters after \v as reg-ex
%% /\v one \(two\) three
%% \ is used to escape special meaning
%% nnoremap / /\v
%% vnoremap / /\v
%% use above two mapping to always search in this mode



one (two) three

