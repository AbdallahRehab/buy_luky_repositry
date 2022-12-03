import 'package:flutter/material.dart';
import 'package:slide_countdown/slide_countdown.dart';

class FlipTimer extends StatefulWidget {
  final Duration? duration;
  final double? height;
  final double? fontSize;

  const FlipTimer({Key? key, this.duration, this.height, this.fontSize})
      : super(key: key);

  @override
  _FlipTimerState createState() => _FlipTimerState();
}

class _FlipTimerState extends State<FlipTimer> {
  @override
  Widget build(BuildContext context) {
    return _buildCountDownClockPage();
  }

  Widget _buildCountDownClockPage() {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: SlideCountdownSeparated(
        duration: widget.duration ?? Duration(seconds: 0),
      ),
      // child: FlipClock.countdown(
      //   duration: widget.duration ?? Duration(seconds: 0),
      //   digitColor: Colors.white,
      //   backgroundColor: Colors.black,
      //   // startTime:DateTime(2020, 2, 28, 16, 30 ),

      //   digitSize: widget.fontSize ?? 40.sp,
      //   borderRadius: const BorderRadius.all(Radius.circular(3.0)),
      //   onDone: () => print('ih'),
      //   height: widget.height != null ? widget.height - 5.h : 75.h,
      //   width: 50.h,
      // ),
    );
  }
}
