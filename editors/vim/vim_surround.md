# Vim-Surround
* ds(, dst,
%% delete surroundig parenthesis, tag
* cs({, cs(<p>
%% change surrounding parentheses with what follows

* ysiw" : ys = add surrounding, iw = innerword
* yss`  : add surround to line
* vS`   : add surrounding in visual selection

* ysaw{
%% adds extra space around word
* ySiw<p>
%% surrounds with formatting
* yss`
%% surrounds whole line
* ySS<p class="new">
%% surrounds with formatting
* S[
%% surrounds selected text with []
* <c-g>s
%% in insert mode, puts opening and closing



one (two) three abc

<p>Test</p>
<p>asdfsdfsd</p>

