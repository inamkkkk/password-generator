import 'package:flutter/foundation.dart';

class PasswordSettings with ChangeNotifier {
  int _passwordLength = 12;
  bool _includeUppercase = true;
  bool _includeNumbers = true;
  bool _includeSymbols = true;

  int get passwordLength => _passwordLength;
  bool get includeUppercase => _includeUppercase;
  bool get includeNumbers => _includeNumbers;
  bool get includeSymbols => _includeSymbols;

  set passwordLength(int value) {
    _passwordLength = value;
    notifyListeners();
  }

  set includeUppercase(bool value) {
    _includeUppercase = value;
    notifyListeners();
  }

  set includeNumbers(bool value) {
    _includeNumbers = value;
    notifyListeners();
  }

  set includeSymbols(bool value) {
    _includeSymbols = value;
    notifyListeners();
  }
}
