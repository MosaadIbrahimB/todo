import 'package:flutter/material.dart';
import 'package:todo/model/theme/theme.dart';

class InputModel extends StatelessWidget {
  const InputModel({
    super.key,
    required this.width,
    required this.height,
    required this.style,
    required this.theme,
    required this.title,
  });
  final String title;
  final double width;
  final double height;
  final TextTheme style;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Mytheme.whiteColor,
          border: Border.all(color: Theme.of(context).primaryColor)),
      padding:
      EdgeInsets.symmetric(horizontal: width * .05, vertical: height * .015),
      margin:
      EdgeInsets.symmetric(horizontal: width * .05,vertical: height * .02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: style.headline2,
          ),
          Icon(Icons.arrow_drop_down, color: theme.primaryColor)
        ],
      ),
    );
  }
}
