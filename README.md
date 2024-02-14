# ruby-cli-template

Use this repository as a template for your Ruby CLI (command line interface) project.

- Ruby version: `3.2.1`

This password generator will create a randomized string of uppercase and lowercase letters, with a special character at the end. 
To use the password generator open the terminal (press CTRL + `)
Within the terminal type: ruby app.rb
Click enter
It will prompt you with 3 choices 
1.)Enter 1 to create a new password
If you enter 1 it will ask you for an email/username for the login (for storage purpuse)
After you enter a email/username it will ask you how long should the password be but the minimum is 6 characters
If the user enters a number less than 6 and/or letters error prompt will say "Password must be 6 characters or longer. Try again"
Aftwards the program will reset not saving the entry that lead to the error
Once a number has been entered being 6 or more it will print the email/username along with the generated password with the length being the number you entered

2.) Enter 2 to show all stored passwords
The program will display all saved email/usernames along with the generated password assosiated with it
If there aren't any saved passwords the program will return "No saved passwords. Create a new password and try again"

3.) If you enter 3 the program will close and send "Until next time"
