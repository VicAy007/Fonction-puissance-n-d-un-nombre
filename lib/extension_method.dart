extension StringExtension on String {
  String capitalize() {
    if (isEmpty) return this;

    return this[0].toUpperCase() + substring(1);
  }

  bool get isEmail {
    return contains('@') && contains('.');
  }

  String reverse() {
    return split('').reversed.join();
  }
}

void main() {
  String name = 'victor';
  String email = 'victor@gmail.com';

  print(name.capitalize());
  print(name.reverse());
  print(email.isEmail);
}
