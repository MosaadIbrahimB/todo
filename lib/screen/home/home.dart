import 'package:flutter/material.dart';
import 'package:todo/model/bottom_navigation_bar_model.dart';
import 'package:todo/model/floatingactionbutton_model.dart';
import 'package:todo/model/list_screen_tab.dart';
import 'package:todo/screen/login/login_screen.dart';
class HomePage extends StatefulWidget {
  static const String routeName = 'HomePage';
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectindx=0;

  @override
  Widget build(BuildContext context) {

    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    var style = Theme.of(context).textTheme;
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        // title: selectIndx==0? Text("Settings"):Text("To Do List"),
        title: Text("To Do List"),
        actions: [
          IconButton(onPressed: (){
            Navigator.pushReplacementNamed(context,loginScreen.routeName);
          }, icon: Icon(Icons.logout))
        ],
      ),
      body:tabs[selectindx],
      floatingActionButton: FloatingActionButtonModel(theme: theme,),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 12,
          child: BottomNavigationBar(
            currentIndex: selectindx,
            onTap: (v){
              setState(() {
                selectindx=v;
              });
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
      ),
    );
  }
}



/* */