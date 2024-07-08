import 'package:common_jds_flutter/common/constants.dart';

class Validators {
  Validators._();

  static final RegExp validDecimal = RegExp(r'^[-+]?\d*\.?\d{0,2}');
  static final RegExp validNumber = RegExp(r'^[-+]?\d*');
  static final RegExp validEmail =
      RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

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

  static String? validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return "This field ${Constants.cantBeEmpty}";
    } else if (!validEmail.hasMatch(email)) {
      return "Please enter a valid email address";
    } else {
      return null;
    }
  }

  static String? validatePhone(String? v) {
    if (v!.isEmpty) {
      return Constants.fieldCantBeEmpty;
    } else if (!validNumber.hasMatch(v) || (!(v.length == 10))) {
      return Constants.enterValidNumber;
    } else {
      return null;
    }
  }

  static String? validateWithRegex(
      String? input, String pattern, String errorMessage) {
    if (input == null || input.isEmpty) {
      return Constants.fieldCantBeEmpty;
    }

    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(input)) {
      return errorMessage;
    }

    return null;
  }

  static String? validateSpecialChar(String? value) {
    String? emptyValidation = Validators.validateEmpty(value);
    if (emptyValidation != null) {
      return emptyValidation;
    }
    if (value!.contains(RegExp(r'[^\w. ]'))) {
      return Constants.specialCharactersNotAllowed;
    }
    return null;
  }

  static String? validateCheckbox({
    bool v = false,
    String error = Constants.checkboxValidation,
  }) {
    if (!v) {
      return error;
    } else {
      return null;
    }
  }

  static String? validatePasswordPolicy(String? v) {
    final RegExp validPassword = RegExp(
        r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*()<>{}[\]]).{8,}$");
    if (v!.isEmpty) {
      return "${Constants.password} ${Constants.cantBeEmpty}";
    } else if (!(validPassword.hasMatch(v))) {
      return Constants.passwordPolicyError;
    } else {
      return null;
    }
  }

  static String? validateNewPassword(String? v, String password) {
    final RegExp validPassword = RegExp(
        r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*()<>{}[\]]).{8,}$");
    if (v!.isEmpty) {
      return "${Constants.password} ${Constants.cantBeEmpty}";
    } else if (!(validPassword.hasMatch(v))) {
      return Constants.passwordPolicyError;
    } else if (v.compareTo(password) == 0) {
      return Constants.newPasswordValidation;
    } else {
      return null;
    }
  }

  static String? validateConfirmPassword(String? v, String password) {
    if (v!.compareTo(password) != 0) {
      return Constants.confirmPasswordValidation;
    } else {
      return null;
    }
  }
}
