import 'package:random_string/random_string.dart';

class PasswordGeneratorService {
  static String generatePassword(
      int length,
      bool includeUppercase,
      bool includeNumbers,
      bool includeSymbols) {
    String chars = 'abcdefghijklmnopqrstuvwxyz';
    if (includeUppercase) {
      chars += 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    }
    if (includeNumbers) {
      chars += '0123456789';
    }
    if (includeSymbols) {
      chars += '!@#$%^&*()_-+={[}]|:;<,>.?/`~';
    }

    if (chars.isEmpty) {
      return '';
    }

    return randomString(length, from: chars.split('').toList());
  }
}
