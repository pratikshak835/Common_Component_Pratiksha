import 'package:common_jds_flutter/common/constants.dart';

class Validators {
  Validators._();

  static final RegExp validDecimal = RegExp(r'^[-+]?\d*\.?\d{0,2}');
  static final RegExp validNumber = RegExp(r'^[-+]?\d*');

  static String? validateEmpty(String? v) {
    if (v == null || v.isEmpty || (v.trim().isEmpty)) {
      return Constants.fieldCantBeEmpty;
    } else {
      return null;
    }
  }

  static String? validateLastName(String? v) {
    if (v == null || v.isEmpty || (v.trim().isEmpty)) {
      return Constants.fieldCantBeEmpty;
    } else {
      return null;
    }
  }

  static String? validateTEmpty<T>(T? v) {
    if (v == null) {
      return Constants.fieldCantBeEmpty;
    } else {
      return null;
    }
  }

  static String? validateName2(String? v) {
    if (v!.isEmpty) {
      return "This field is mandatory";
    } else {
      return null;
    }
  }

  static String? validateNumberOrDecimal(String? v,
      {bool isDecimal = false, isRequired = false}) {
    if (isRequired) {
      if (v!.isEmpty) {
        return "This field ${Constants.cantBeEmpty}";
      } else if (v == '-') {
        return isDecimal
            ? "Please enter valid decimal  number"
            : "Please enter valid number";
      } else if (isDecimal && !(validDecimal.hasMatch(v))) {
        return "Please enter valid decimal number";
      } else if (!isDecimal && !(validNumber.hasMatch(v))) {
        return "Please enter valid number";
      } else {
        return null;
      }
    } else {
      if (v == '-') {
        isDecimal
            ? "Please enter valid decimal  number"
            : "Please enter valid number";
      } else if (isDecimal && !(validDecimal.hasMatch(v!)) && v.isNotEmpty) {
        return "Please enter valid decimal number";
      } else if (!isDecimal && !(validNumber.hasMatch(v!)) && v.isNotEmpty) {
        return "Please enter valid number";
      } else {
        return null;
      }
    }
    return null;
  }
}