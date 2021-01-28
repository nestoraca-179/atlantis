class User {
  String name;
  String email;
  String _password;
  String _token;

  set setPassword(String password) {
      _password = password;
  }

  String get getPassword {
    return _password;
  }

  set setToken(String token) {
    _token = token;
  }

  String get getToken {
    return _token;
  }

  @override
  String toString() => 'User { email: $email password: $_password }';
}
