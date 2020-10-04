# newboat
RSS/Atom feed reader for text consoles




- newsboat -h
help
- newsboat -r
refresh feeds on start


## config
- location: ~/.config/newsboat/config
- format:
  <config-command> <arg1> ...
  # comments
  text between backticks is evaluated as shell command and its output is placed instead

## adding feeds
- add urls in ~/.newsboat/urls
  url format:
  http://url.to/feed "tag"
  http://url.to/feed "tag" "another tag"
  http://url.to/feed "tag" "~Custom Name for feed begin with tilde"
- import opml file
  $ newsboat -i file.opml


## UI
N: article not read yet


## shortcuts
r: reload the currently selected feed
R: reload all feeds

n: got to next unread entry
#<number: go to numbered article
Enter: go to content of article
o: open the selected entry in default web browser


A: mark as read

/: search
s: save single entry
e: enqueue
?: help
q: go back till you quit
Q: quit program


t: show tags

## macros
begin with comma (,)



## subscriptions
- reddit: <reddit_url>/r/<sub_reddit>/.rss
- youtube: https://www.youtube.com/subscription_manager (export subscriptions)
  newsboat -i=<path_to_xml_file>


## sources
https://newsboat.org/releases/2.12/docs/newsboat.html
https://newsboat.org/
https://www.mankier.com/1/newsboat
https://newsboat.org/releases/2.16.1/docs/faq.html#
https://newsboat.org/releases/2.16.1/docs/newsboat.html

