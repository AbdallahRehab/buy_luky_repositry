import 'package:buy_luck/core/Common/Common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app/app_constants.dart';

class SplashScreenContent extends StatefulWidget {
  final Function? onAnimationFinished;

  const SplashScreenContent({
    Key? key,
    this.onAnimationFinished,
  }) : super(key: key);

  @override
  _SplashScreenContentState createState() => _SplashScreenContentState();
}

class _SplashScreenContentState extends State<SplashScreenContent>
    with SingleTickerProviderStateMixin {
  double dx = -250;
  late AnimationController _animatedController;
  late Animation<double> _moveAnimation;
  double _bikHeight = 150.0;
  double _logoOpacity = 0;

  @override
  void initState() {

    _animatedController = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );

    super.initState();
  }

  @override
  void didChangeDependencies() {

    _moveAnimation = Tween(
      begin: dx,
      end: CoreStyle.setWidthPercentage(50, context) - (_bikHeight / 2),
    ).animate(CurvedAnimation(
      parent: _animatedController,
      curve: Curves.easeOut,
    ));
    _animatedController.forward();

    _animatedController.addStatusListener(
      (status) {
        if (status == AnimationStatus.completed) {
          Future.delayed(
            Duration(seconds: 2, milliseconds: 500),
            () async {
              widget.onAnimationFinished?.call();
            },
          );
          setState(() {
            _logoOpacity = 1;
          });
        }
      },
    );

    super.didChangeDependencies();
  }


  @override
  void dispose() {
    super.dispose();
    _animatedController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 225,
            left: 0,
            right: 0,
            child: AnimatedOpacity(
              duration: Duration(seconds: 1),
              opacity: _logoOpacity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: ScreenUtil().setHeight(800),
                    width: ScreenUtil().setWidth(1400),
                    // width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                        IMG_APP_LOGO,
                        fit: BoxFit.fill,
                      ),
                  ),
                  /*const SizedBox(
                    height: 15,
                  ),
                  Text(
                    TITLE_APP_NAME,
                    style: TextStyle(
                      fontFamily: GoogleFonts.lobster().fontFamily,
                      fontSize:
                          ScreenUtil().setSp(CommonTextStyle.BIG_TEXT_SIZE),
                      color: Theme.of(context).accentColor,
                    ),
                  )*/
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
