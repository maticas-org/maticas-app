//builds a validator class for the methods below
//this class will be used by the UserBloc to validate the user input

class UserValidator {
  String _username = '';

  bool isValidEmail(String email) {
    //checks if it has the valid email format
    //and does not contain spaces and is shorter than 60 characters at most,
    //also does not contain special characters and is longer than 5 characters

    email = email.trim();
    return RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email) &&
        !email.contains(' ') &&
        email.length > 5 &&
        email.length < 60;
  }

  bool isValidUsername(String username) {
    //does not contain spaces, is longer than 8 characters and
    //does not contain special characters is shorter than 60 characters

    username = username.trim();
    bool valid = !username.contains(' ') &&
        RegExp(r"^[a-zA-Z0-9]+$").hasMatch(username) &&
        username.length > 4 &&
        username.length < 60;

    if (valid) {
      _username = username;
    }

    return valid;
  }

  bool isValidPassword(String password) {
    //is longer than 8 characters and contains at least one number
    //and does not contain some permutation of the username, also is shorter than 60 characters
    password = password.trim();
    return password.length > 7 &&
        password.length < 60 &&
        !password.contains(_username) &&
        RegExp(r"^[a-zA-Z0-9]+$").hasMatch(password);
  }
}
