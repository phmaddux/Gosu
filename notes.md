## File extensions
.md stands for Markdown
.rb Ruby

## Terminal
The terminal is where you execute code.
cd directory_name -> will change directory
ls -> will list stuff

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

Different variables
variable & @variable are not the same. The first one is local to its function the second is an attribute

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
