# Can open files for editing in vim while in the Pry repl
# 
# pry(main)> edit Foo#bar
Pry.editor = "vim"

#### Plugins
#
# awesome_print
# syntax colorized printing
#
begin
  require 'awesome_print'
  AwesomePrint.pry!
rescue LoadError
  puts 'gem install awesome_print'
end

# pry-byebug
#
# Adds `step`, `next`, `finish`, and `continue` commands as well as
# `up`, `down`, and `frame` for moving through stack frames.
#
begin
  require 'pry-byebug'
rescue LoadError
  puts 'gem install pry-byebug # for debugging helpers'
end

if defined?(PryByebug)
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 'f', 'finish'

  # Hit \<Enter> to repeat last command.
  Pry::Commands.command /^$/, "repeat last command" do
    _pry_.run_command Pry.history.to_a.last
  end
end
