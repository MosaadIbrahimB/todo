import 'package:flutter/material.dart';
import 'package:todo/screen/seting/model/input_model.dart';
import 'package:todo/screen/seting/model/text_model.dart';

class SettingScreen extends StatelessWidget {
  static const String routeName = 'Settings';
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    var style = Theme.of(context).textTheme;
    var theme = Theme.of(context);
    return SafeArea(
      // appBar: AppBar(
      //   titleTextStyle: Theme.of(context).textTheme.headline1,
      //   title: Text("Settings"),
      // ),
      child:
       Container(
        margin: EdgeInsets.only(left: w * .04, top: h * .06),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //language
            TextModel(
              style: style,
              title: 'Language',
            ),
            SizedBox(height: h * .01),
            InputModel(
                width: w,
                height: h,
                style: style,
                theme: theme,
                title: "English"),
            SizedBox(height: h * .05),
            //-------mode
            TextModel(
              style: style,
              title: 'Mode',
            ),

            SizedBox(height: h * .01),
            InputModel(
                width: w,
                height: h,
                style: style,
                theme: theme,
                title: "Light"),
          ],
        ),

      // floatingActionButton: FloatingActionButtonModel(theme: theme),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottomNavigationBar: BottomNavigationBarModel(),
    ));
  }
}
