extension StringExt on String {
  //validate email
  bool get isEmail => RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(this);

  //validate password length 8
  bool get isPassword => this.length >= 8;
}
