import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo/auth/firebase_function.dart';
import 'package:todo/auth/valid_utils.dart';
import 'package:todo/model/task_model.dart';
import 'package:todo/model/theme/theme.dart';

class AddTaskBottomSheetModel extends StatefulWidget {
  static const String routeName = 'TaskListScreen';

  @override
  State<AddTaskBottomSheetModel> createState() => _AddTaskBottomSheetModelState();
}

class _AddTaskBottomSheetModelState extends State<AddTaskBottomSheetModel> {
   String ?title ;
   String? desc ;
DateTime selectDay=DateTime.now();
GlobalKey<FormState>keyForm=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var w=MediaQuery.of(context).size.width;
    var h=MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.symmetric(horizontal:w*.05,vertical: .01*h),
      child: Container(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Add new Task",
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: h*.01),
            Form(
key: keyForm,
                child:

            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(


                  decoration: InputDecoration(
                    labelText: "Enter Task Title" ,
                    labelStyle: Theme.of(context).textTheme.headline5
                  ),
                  onChanged: (value){
                    setState(() {
                      title=value;
                    });
                  },
                  validator: (text){
                    return ValidUtils.ifValidTaskTitle(text,true);
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Enter Your Description",
                    labelStyle: Theme.of(context).textTheme.headline5
                  ),
                  onChanged: (value){
                    setState(() {
                      desc=value;
                    });
                  },
                  validator: (text){
                    return ValidUtils.ifValidTaskTitle(text,false);
                  },

                ),
                SizedBox(height: h*.01),
                Text("Select time",
                  style: Theme.of(context).textTheme.headline5?.copyWith(color: Mytheme.blackColor,fontSize: 20,),

                     ),
                SizedBox(height: h*.01,),

                InkWell(onTap: (){
                  chooseDate();
                },
                  // child: Text("${selectDay.day}/${selectDay.month}/${selectDay.year}",
                  child: Text("${DateFormat('yyyy-MM-dd ').format(selectDay)}",
                    style: Theme.of(context).textTheme.
                    headline5?.copyWith( color:Color(0xffA9A9A9) ),
                    textAlign: TextAlign.center,),
                ),
                SizedBox(height: h*.01),

                ElevatedButton(onPressed: (){
                  print('+++++++');

                  if(keyForm.currentState?.validate() ==true ){
                    FirebaseFunction.addTaskToFireStore(
                        Task(title: title!,
                            description: desc!,
                            date: selectDay.microsecondsSinceEpoch)
                    ).then((value) => Navigator.pop(context)
                    );
                    print('ffffdfdfdfd');

                  }
                  print('---------------');
                  print(title);

                }, child: Text("Save",style:
                  Theme.of(context).textTheme.headline1,))
              ],
            )
            ),

          ],
        ),
      ),
    );
  }

  void chooseDate()async {

  var day=await  showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 365))
  );
  selectDay=day??DateTime.now();
  setState(() {

  });
  }
}
