import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/entity/privacy_entity.dart';

class PrivacyScreenContent extends StatefulWidget {
  final PrivacyEntity? privacyEntity;

  const PrivacyScreenContent({
    Key? key,
    required this.privacyEntity,
  }) : super(key: key);

  @override
  _PrivacyScreenContentState createState() => _PrivacyScreenContentState();
}

class _PrivacyScreenContentState extends State<PrivacyScreenContent> {
  final padding = EdgeInsets.symmetric(horizontal: 30.w, vertical: 40.h);

  /// state
  @override
  Widget build(BuildContext context) {
    if (widget.privacyEntity == null)
      return Center(child: Text("لا يوجد سياسة الخصوصية"));
    return ListView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      children: [
        Text(widget.privacyEntity!.data.title,style: TextStyle(fontSize: 55.sp,fontWeight: FontWeight.bold)),
        SizedBox(height: 80.h),
        Text(widget.privacyEntity!.data.description),
      ],
    );
  }

  /// widget

  /// logic

}
