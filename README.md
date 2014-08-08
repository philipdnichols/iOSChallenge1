iOSChallenge1
=============

iOS Challenge #1 - Sample Interview Challenge for www.reddit.com/r/iOSChallenges

#Testing

Visual testing is fairly simple, and is basically just saying, "OK, yes, I see that you have an image here, and a text field here and I can interact with them." In order to test the code against the requirements properly:

###Login Form
1. Iterate on each combination of invalid login fields 2 fields, 1 with 1 error condition and 1 with 2 error conditions, and check that the requirements are met. For example, test with the username having 7 characters, 8 characters, 9 characters, then test those 3 conditions with the username also having and invalid character in it. Iterate from there.
2. If the two fields are valid, the Login Form should dismiss and the Image Form should appear

###Image Form
1. Tapping on the image should display the message to the user
2. Tapping on the button to take the user back to the Login Form shoul dismiss the Image Form and display the Login Form, and the Login Form should have all the text fields blank.
