import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/auth/valid_utils.dart';
import 'package:todo/model/theme/theme.dart';
import 'package:todo/provider/provider.dart';
import 'package:todo/screen/home/home.dart';
import 'package:todo/screen/login/login_screen.dart';
import 'package:todo/screen/register/model/text_fom_fild_model.dart';


class RegisterScreen extends StatefulWidget {
  static const String routeName = 'RegisterScreen';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nameControl = TextEditingController(text: "ali");

  TextEditingController emailControl = TextEditingController(text: "ali@m.com");

  TextEditingController passControl = TextEditingController(text: "123456");
  TextEditingController ConfpassControl = TextEditingController(text: "123456");

  var formKey = GlobalKey<FormState>();
// bool pass=true;
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<IconProvider>(context);
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Mytheme.greenWhite,
        image: const DecorationImage(
          image: AssetImage("assets/images/bgImg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Create Account",style: Theme.of(context).textTheme.headline1,),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,

        ),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .3,
                ),
//name
                TextFomFieldModel(
                  text: "Full Name",
                  controller: nameControl,
                  valid: (text) {
                    return ValidUtils.ifValidName(text);
                  },
                  suffixIcon: Icon(Icons.person,color:Theme.of(context).primaryColor ,),
                ),
                const SizedBox(height: 15),
//email
                TextFomFieldModel(
                  suffixIcon:Icon(Icons.email,color: Theme.of(context).primaryColor,),
                  valid: (email) {
                    return ValidUtils.ifValidEmail(email);
                  },
                  text: "Email",
                  controller: emailControl,
                  textInputType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 15),
//pass
                TextFomFieldModel(
                  suffixIcon:provider.suffixIconPass(context) ,
                  ObscureText: provider.passwordShow,
                  valid: (text) {
                    return ValidUtils.ifValidPassword(text);
                  },
                  textInputType: TextInputType.number,
                  text: "Password",
                  controller: passControl,
                ),
                const SizedBox(height: 15),
 //confPass

                TextFomFieldModel(
                  suffixIcon:provider.suffixIconConfpasswordShow(context) ,
                  ObscureText: provider.ConfpasswordShow,
                  valid: (text) {
                    return ValidUtils.ifValidPasswordConfirm(
                        text, passControl.text);
                  },
                  textInputType: TextInputType.number,
                  text: "Conform Password",
                  controller: ConfpassControl,
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 8)),
                  onPressed: () async{
                    ValidUtils.register(formKey,emailControl.text,
                        passControl.text,context);

                    // if( ValidUtils.register(
//     formKey,emailControl.text,passControl.text,context)
// ){
//   Navigator.pushReplacementNamed(context, HomePage.routeName);
// }
                  },
                  child: Text(
                    "Register",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, loginScreen.routeName);
                  },
                  child: Text(
                    "Already You have account ? login ",
                    style: Theme.of(context).textTheme.headline4?.
                    copyWith(color: Theme.of(context).primaryColor),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}

