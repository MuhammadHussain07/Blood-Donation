bool mail(String a) {
  String b =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9-]+\.[a-zA-Z]+";
  RegExp regExp = RegExp(b);
  return regExp.hasMatch(a);
}
