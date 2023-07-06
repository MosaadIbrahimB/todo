

import 'package:flutter/cupertino.dart';
import 'package:todo/auth/firebase_function.dart';

class ValidUtils  {

 static register(var formKey,emailAddress,String password,BuildContext context) {

   if(formKey.currentState?.validate()==false) {
     return;
   }
   FirebaseFunction.createUserWithEmailAndPassword(emailAddress, password,context);
  }

 static login(var formKey,emailAddress,String password,BuildContext context) {

   if(formKey.currentState?.validate()==false) {
     return;
   }
   FirebaseFunction.signInWithEmailAndPassword(emailAddress, password,context);
 }



  static ifValidName(String? text) {
    String msgError = ' Enter your correct name';
    if (text == null || text.trim().isEmpty) {
      return " $msgError ";
    }
  }

  static ifValidPassword(String? text) {
    String msgError = ' Enter your correct Password';
    if (text == null || text.trim().isEmpty) {
      // print('ll');
      return " $msgError ";
    }
    if (text.length < 6) {
      return "$msgError greater than 6 char";
    }
  }

  static ifValidPasswordConfirm(String? text, String? textPass) {
    String msgError = ' Enter your correct Password';
    if (text == null || text.trim().isEmpty) {
      // print('ll');
      return " $msgError ";
    }
    if (text.length < 6) {
      return "$msgError greater than 6 char";
    }

    if (text != textPass) {
      return " Password not match";
    }
  }

  static ifValidEmail(String? text) {
    String msgError = ' Enter your correct Email';
    String msgErrorValid = ' Enter your Valid Email';
    bool emailValid;
    if (text == null || text.trim().isEmpty) {
      print('ll');
      return " $msgError ";
    }
    emailValid = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(text);
    if (!emailValid) {
      print('object');
      return " $msgErrorValid ";
    }

  }


 static ifValidTaskTitle(String? text,bool msgError) {
//title==true
   if (text == null || text.trim().isEmpty) {
     return msgError?' Enter your title ':' Enter your description';
   }
 }

}
