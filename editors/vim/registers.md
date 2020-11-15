# Registers
* :reg to :registers
%% view register
* "" is the default register
%% deleted or yanked text go to default register
* "0
%% yanked content go t "0 as well as ""
* "add
%% to put the deleted line in custom register "a
* "ap
%% pase content of register
* macros are recorded into registers
%% qq ..... q   (record macro into register q)
%% @q           (play macro)
%% 2@q          (play macro twice)
%% we can modify content of macro and put it back
* "=
%% expression register
%% e.g. 7 * 52 = <c-r>=364
%% in above example when we press <c-r>=, put 7*52 in command line at bottom, then press <cr>
%% to see use of <c-r> check [[Quick Editing]]
"+ (system clipboard)
"+P (to paste content from "+ register)
"* (highlighted text in xwindows)
:reg+
"+yy (yank line)
yw (yank word)
:set clipboard=unnamed (use + register for all yank,put, delete operations)
"_ (blackhole register)



