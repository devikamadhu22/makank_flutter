import 'dart:developer';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class Utility {
  static setStatusBarColor(Color colors) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: colors,
    ));
  }

  static hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static bool validatePassword(String value) {
    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(value);
  }

  static bool validateEmailCharacters(String value) {
    String pattern =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(value);
  }

  Future<String> showDatePickerAlert({required BuildContext context}) async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1950),
        lastDate: DateTime.now());

    if (pickedDate != null) {
      log(pickedDate.toString(),
          name:
              "Utility"); //pickedDate output format => 2021-03-10 00:00:00.000
      String formattedDate = DateFormat('yyyy/MM/dd').format(pickedDate);
      log(formattedDate,
          name:
              "Utility"); //formatted date output using intl package =>  2021-03-16
      return formattedDate;
    } else {
      String currentDate = DateFormat('yyyy/MM/dd').format(pickedDate!);
      return currentDate;
    }
  }

  static void showSuccessSnackBar(String message, BuildContext context) {
    final snackBar = SnackBar(
      content: Text(message),
      elevation: 0,
      duration: const Duration(seconds: 2),
      backgroundColor: Colors.green,
      padding: const EdgeInsets.all(16),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static void showErrorSnackBar(String message, BuildContext context) {
    final snackBar = SnackBar(
      content: Text(message),
      elevation: 0,
      duration: const Duration(seconds: 2),
      backgroundColor: Colors.red,
      padding: const EdgeInsets.all(16),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static Future<File?> pickFile() async {
    FilePickerResult? result =
        await FilePicker.platform.pickFiles(allowMultiple: false);
    if (result != null) {
      File file = File(result.files.single.path ?? "");
      return Future.value(file);
    } else {
      // User canceled the picker
      return null;
    }
  }

  static Future<File?> pickImage() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: false,
        allowedExtensions: ['jpg', 'JPG', 'png', 'PNG', 'jpeg', 'JPEG']);
    if (result != null) {
      File file = File(result.files.single.path ?? "");
      return Future.value(file);
    } else {
      // User canceled the picker
      return null;
    }
  }
}
