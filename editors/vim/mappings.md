# Mappings
:help map-overview
:help mapping


* `nmap`
creates mapping in normal mode
e.g. nmap x dd
as per above, when we press x, dd is executed
nmap z x
with these two mappings, we if press z, it executes dd (while we expect x)
* `unmap`
unmap x
unmap z
* `nnoremap`
Normal No Remap: creates mapping in normal mode and ignores other mappings
nnoremap x dd
nnoremap z x
this works as expected as compared to nmap
* `noremap`
global (insert, normal, visual, etc.) noremap
* `inoremap`
insert noremap
* `vnoremap`
visual noremap
* `vmap`, `imap`
visual map, insert map
* `onoremap`
operator noremap allows to map text object operators to other keys
e.g onoremap p i(
wherever we use i( we can use p instead


* `:map` : to see all mappings
* `:nmap` : to see normal mappings
* `:vmap`
* `:imap`

