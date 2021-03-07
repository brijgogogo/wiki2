# ruby
Ruby is a dynamic, interpreted, open source programming language with a focus on simplicity and productivity.

sudo pacman -S ruby ruby-irb

IRB: interactive ruby shell

* ruby -v
* gem -v

* set below in bashrc to make gems available
PATH="$PATH:$(ruby -e 'puts Gem.user_dir')/bin"


= RubyGems =
RubyGems is a package manager for Ruby modules (called gems)
* gem -v
* gem list
list installed gems
* gem spec gem_name
get information about a gem
* gem install mysql2
install a gem
* gem update
update all installed gems
* gem env
Use gem env to view the current RubyGems environment:




= sources =
https://wiki.archlinux.org/index.php/Ruby

