## File extensions
.md stands for Markdown
.rb Ruby

## Terminal
The terminal is where you execute code.
cd directory_name -> will change directory
ls -> will list stuff
rvm -> ruby version manager
 - your default ruby on Mac OS X is ruby 2.0 but you will need to use multiple rubies over time. eg 2.0, 2.1, 2.2. etc
 - "rvm list" - will show all your rubies
brew - is your package manager
  - normally you will use it like "brew install <something>"
  - if you need help "brew help"
  - if is broken "brew doctor"
  - "brew list" will show your packages
sudo - "imperio" makes the computer do things it normally wouldn't. Can be very dangerous. So new sudo gem install anything. Just gem install it

## Ruby
In the terminal 'ruby filename.rb' will run a file
print "A string of letters" <- print words
puts "A string of letters" + a newline
objects <- an individual item in code
class <- the structure to build an object in code
snakecase_is_the_ruby_way_to_write_variable
camelCaseIsTheJavaScriptWayToWriteVariables
variables store "Strings", Integers (30, 50), Float (31.12) and Booleans (true / false) and objects
variables come in local form and @instance form which gives them scope
String Interpolitation "text here #{ code here that becomes text }"
"=" is "Assignment" left always equals what is on the right ex: x=7
"==" is "Equality" we are evaluating if the two objects are the same
x = 7
x == 7 => true
x == 5 => false

Different variables
variable & @variable are not the same. The first one is local to its function the second is an attribute

Loops! Are a way to make code repeat until a condition is met.

Array's are collections of variables, strings, integers, floats, objects, etc
[monkey_man, 42, "words"]

if else
These are control flow statements. Eg they let you decide which bit of code is run based on criteria.

Logic conditions to be used in if statements
|| - means OR
&& - means AND

## Git
Git is the file versioning system programmers use. EG it is how we save shit.
To make a new git in the terminal navigate to the top folder of your project and type:
$ git init
To see the status of your git:
$ git status
To add ALL files
$ git add -A
To commit files (EG save them):
$ git commit -m "<Commit message here>"
If you have already added your files and just want to commit a change to files:
$ git commit -am "<Commit message here>"
To push commits to github:
$ git push
To Pull from github:
$ git pull
To see a list of commits:
$ git log
