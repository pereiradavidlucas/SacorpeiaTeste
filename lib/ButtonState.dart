import 'package:flutter/material.dart';

class ButtonState extends ChangeNotifier {
  int _buttonValue = 0;
    int _peso = 0;
        int _idade = 0;


  String _name = '';
  String _email = '';
  DateTime? _birthDate;


  int get buttonValue => _buttonValue;
    int get peso => _peso;
    int get idade => _idade;



  String get name => _name;
  String get email => _email;
  DateTime? get birthDate => _birthDate;



  void updateButtonValue(int value) {
    _buttonValue += value;
    notifyListeners();
  }

  void addBasedOnLength(double length) {
    if (length > 34) {
      _buttonValue + 0;
    } else {
      _buttonValue += 10;
    }
    notifyListeners();
  }

  void reset() {
    _buttonValue = 0;
    notifyListeners();
  }

  void setUserProfile(String name, String email, DateTime data) {
    _name = name;
    _email = email;
    _birthDate = birthDate;
    notifyListeners();
  }

  void idadePeso(int  peso, int idade) {
    _peso = peso;
    _idade = idade;
    notifyListeners();
  }
}
