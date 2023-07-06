import 'package:flutter/material.dart';

class DialogUtils {
  static void showLoadingDialog(BuildContext context, String? text) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("$text"),
          content: Row(
            children: [
              CircularProgressIndicator(),
              SizedBox(width: 5),
              Text("$text"),
            ],
          ),
        );
      },
      barrierDismissible: false,
    );
  }


  static void showMassageDialog(
      BuildContext context,
      String? title,
      String? content,
  {
    String? postActionName,
    String? negtActionName,
    VoidCallback? postAction,
    VoidCallback? negtAction,
  }) {

    List<Widget>action=[];
if(postActionName!=null){
  action.add(TextButton(
      onPressed: (){
        Navigator.pop(context);
        postAction?.call();
    },
      child: Text(postActionName)));
}
    if(negtActionName!=null){
      action.add(TextButton(onPressed: (){Navigator.pop(context);
        negtAction?.call();

        },
          child: Text(negtActionName)));
    }
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("$title"),
          content: Text("$content"),
          actions: action,

        );
      },
    );
  }



  static void hidegDialog(BuildContext context) {
    Navigator.pop(context);
  }
}

/*AlertDialog(
            scrollable: true,
            content: Container(
              // color: Colors.red,
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(width: 10,),
                  Container(
                    padding: EdgeInsets.all(8),
                    // color: Colors.green,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        Text('The account already \n exists for that email. '),
                      ],),
                  )

                ],
              ),
            ),
          );*/

// AwesomeDialog(
// context: context,
// animType: AnimType.SCALE,
// dialogType: DialogType.ERROR,
// body: Center(child: Text('The account already exists for that email.',
// style: TextStyle(fontStyle: FontStyle.italic),
// ),),
// title: 'This is Ignored',
// desc:   'This is also Ignored',
// btnOkOnPress: () {},
// btnOk: Text("ok"),
//
//
// )..show();
