import 'package:flutter/material.dart';
import 'package:todo/screen/task/model/add_task_bottom_sheet_model.dart';
class FloatingActionButtonModel extends StatefulWidget {
  const FloatingActionButtonModel({
    super.key,
    required this.theme,
  });

  final ThemeData theme;

  @override
  State<FloatingActionButtonModel> createState() => _FloatingActionButtonModelState();
}

class _FloatingActionButtonModelState extends State<FloatingActionButtonModel> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: widget.theme.primaryColor,
      shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.white,
            width: 5,
          ),
          borderRadius: BorderRadius.circular(50)   ),
      onPressed: (){
        showBottomSheet();
      },
      child:Icon(Icons.add,color: Colors.white,) ,

    );
  }

  showBottomSheet(){
    showModalBottomSheet(
        shape:const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        context: context, builder: (context){
      return AddTaskBottomSheetModel();
    }
    );
  }
}
