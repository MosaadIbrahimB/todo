import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

class IconProvider with ChangeNotifier {

  bool passwordShow=true;
  bool ConfpasswordShow=true;


  Widget suffixIconPass(BuildContext context ){
    return IconButton(
      icon: Icon(
        passwordShow ?
        Icons.visibility_off:
          Icons.visibility ,
        color: Theme.of(context).primaryColorDark,
      ),
      onPressed: () {
        passwordShow=  !passwordShow;
        notifyListeners();
        print("object");
        // print("passwordVisible  $passwordVisible");
        print("passone  $passwordShow");

      },

    );


  }
  Widget suffixIconConfpasswordShow(BuildContext context ){
    return IconButton(
      icon: Icon(
        ConfpasswordShow ?
        Icons.visibility_off:
          Icons.visibility ,
        color: Theme.of(context).primaryColorDark,
      ),
      onPressed: () {
        ConfpasswordShow=  !ConfpasswordShow;
        notifyListeners();
        print("object");
        // print("passwordVisible  $passwordVisible");
        print("passone  $passwordShow");

      },

    );


  }

}