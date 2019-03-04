class ValidationMixin {
  String validatePass(String value) {
    if (value.length <= 3) {
      return 'password must be at least 4 characters';
    }
    return null;
  }

  String validateEmai(String value) {
    //return error message if not valide
    if (!value.contains('@')) {
      return 'Please enter valid email';
    }
    return null;
  }
}
