# mutt
- console mail user agent (MUA)
- keyboard based
- your editor (vim, etc)

## help
? : key bindings relative to task at hand
/ : search (n: next, p: previous)
q : exit help screen
man mutt

## inbox
- columns: number, status flag
- type message number to jump to it
- j/k: navigate up/down
- return: read (pager view),
  - q: return to index view
  - f: forward
  - r: reply
  - g: (group) reply to all
- m: compose new message
- default sort: date
- custom sort: presss 0, select criterion. Capital letter: reverse sort
- s: save message

## reading messages (pager view)
h: toggle header view (shows route your message traveled, which program your correspondent used to compose a message, what caused it to be flagged spam)
d: flags the message with D. To make deletion permanent press $ key
$: default command to sync the index with the server
u: undelete (navigate to it by number or J/K)
p: print message
C: copy to text file
Esc-C: copy to text file with less details
Esc-s: removes message from inbox after creating text file


## composing
t: go to To line
c: go to Cc line
separate addresses with comma
a: attach
y: sends message
q: quit - mutt will ask to kill or postpone. Postponing saves the message locally.
Ctrl-r: bring the saved messages
`i: spellcheck

## attachments
v: see folder tree of the attachments
by default mutt doesn't forward attachments
  t: tags (attachments)
  ;f: forward everything tagged
d: delete attachment (mail is flagged with lowercase d)

## folders
c: change folders
s: save the current message to different folder
!: spool file or inbox
=: any non-inbox folder
c=Work<enter>: change to Work folder
c!: return to inbox
s=Work: save current message to Work folder
< : sent mail folder
If folder doesn't exists mull will ask to create it

status flag:
- N: new
- T: you are in To line
- C: you are copied
- O: old message
- r: message to which you've replied
- D: message marked for deletion
- F: message from you
- C: you are on cc line
- +: sent only to you
- L: sent to a subscribed mailing list

https://security.google.com/settings/security/apppasswords

## sources
https://wiki.archlinux.org/index.php/mutt
https://github.com/mandeeps708/dotfiles/blob/master/.muttrc
http://www.vigasdeep.com/mutt-the-ultimate-mailing-client/
https://mandeep7.wordpress.com/2015/12/25/installing-mutt-on-arch/
http://www.therandymon.com/woodnotes/mutt/node1.html

