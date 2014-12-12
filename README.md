# P3 Sinatra Authentication And Authorization

##Learning Competencies

* Implement user login and authentication.

##Summary

Using Sinatra, create a user signin/signup and authenticate signed in users before displaying information. Start from the skeleton in the `authentication` directory which contains a shell of database, views and controllers.

##Releases

###Release 0: Implement Sign In

Modify the skeleton code to achieve the following functionality:

1. A user can sign up for a new account with an email and password.
2. An existing user can sign in
3. If a user is not signed in, they only see a welcome message on the home page.
4. If a user is signed in, they can see all users on the home page.
5. A user can sign out using the provided `delete` route which is from a hidden field in the form.
6. A helper method `current_user`  returns the current signed in user and is used to display appropriate sign in / sign out portions of the view.  (This logic is already implemented in the view - you just need to finish the helper method).

###Release 1: Encryption

Storing passwords is a serious business, and you should always take steps to keep that information secure. User passwords should be encrypted and stored in a password-hash field.  You may implement this yourself or use the `bcyrpt` gem.

###Release 2: Validation (optional)
Demonstrate model validation, error messages, and user access levels.

* Add validation to the user model including password length and appropriately formated email.
* Display appropriate error messages to the user for invalid data.
Add a field to store user access level (Admin / Student) and limit functionality to different users leves. (ie an Admin can edit users but a Student can only see other users).


<!-- ##Optimize Your Learning  -->

##Resources
