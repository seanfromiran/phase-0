How does tracking and adding changes make developers' lives easier?

Tracking and adding changes is important because it documents the evolution of code. Without this process, developers' would have a really hard time collaborating on projects in real time. Even for the developer herself, it is a great idea to have reference points to fall back on for a quick refresher.

What is a commit?

A commit is when code is saved on the master branch from a branch which is used for experimental development.

What are the best practices for commit messages?

We want commit messages that are 72 columns to optimize formatting. Also, they should be short and to the point. We also want to use the imperative in our writing.

What does the HEAD^ argument mean?

It's a command that takes us to the last commit that was executed.

What are the 3 stages of a git change and how do you move a file from one stage to the other?

The three stages are: check git status, add changes to stage, commit changes. We use the add command to go from checking status to adding changes, and then we use the commit command to go from adding changes to commiting them.

Write a handy cheatsheet of the commands you need to commit your changes?

#check what has been changed, if anything
git status

#add files/directories to stage
git add (filename or . or ..)

#commit with comments
git commit -m "comments"

What is a pull request and how do you create and merge one?

A pull request is when we take changes from GitHub and bring them down to our local, working directory. This places everything on the master branch as opposed to working on multiple branches. We create and merge pull requests on GitHub after a push request from the terminal. Then, using the toolbar on the right side of a master branch webpage, we request pull request to merge files from one branch with another.

Why are pull requests preferred when working with teams?

Pull requests standardize our documents and literally make sure that everyone is on the same page. Organization and common understanding is essential to team programming, and pull requests ensure that both of these factors are in place.