import 'package:flutter/material.dart';
import 'package:todo/model/theme/theme.dart';

class TaskContainerModel extends StatelessWidget {
  const TaskContainerModel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      width: 350,
      height: 115,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 20),
              color: Theme.of(context).primaryColor,
              width: 4,
              height: 62,
            ),
            Container(
              margin: EdgeInsets.only(top: 18),
              child: Column(
                children: [
                  Text(
                    "Task1",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Desc1",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
                decoration: BoxDecoration(
                    color: Mytheme.blueColor,
                    borderRadius: BorderRadius.circular(10)),
                width: 80,
                height: 40,
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 30,
                ))
          ],
        ),
      ),
    );
  }
}
