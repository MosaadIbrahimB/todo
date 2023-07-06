import 'package:flutter/material.dart';
import 'package:todo/main.dart';
import 'package:todo/screen/home/home.dart';


class BottomNavigationBarModel extends StatefulWidget{
  int selectindx;
  void Function()ontap;
BottomNavigationBarModel({ required this.selectindx, required this.ontap});

  @override
  State<BottomNavigationBarModel> createState() => _BottomNavigationBarModelState();
}

class _BottomNavigationBarModelState extends State<BottomNavigationBarModel> {
  @override
  Widget build(BuildContext context) {


    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 12,
        child: BottomNavigationBar(

          currentIndex: widget.selectindx,
          onTap: (v){

            setState(() {
              widget.ontap();
              widget.selectindx=v;
            });
            print("widget.selectindx ${widget.selectindx}");
          },
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/icon_list.png") ),
              label: "Task List",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/icon_settings.png") ),
              label: "Setting",
            ),
          ],
        ),
      ),
    );
  }
}
