import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Introduction extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String subTitle;

  Introduction({
    required this.imageUrl,
    required this.title,
    required this.subTitle,
  });

  @override
  State<StatefulWidget> createState() {
    return new IntroductionState();
  }
}

class IntroductionState extends State<Introduction> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image(
                image: AssetImage(widget.imageUrl),
                height: ScreenUtil().setHeight(750),
                width: ScreenUtil().setHeight(750),
              ),
            ),
            Wrap(
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.title,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30.0,
                          height: 1.5,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 40),
                  child: Text(
                    widget.subTitle,
                    style: TextStyle(
                        color: Colors.grey, fontSize: 18.0, height: 1.5),
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
