import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/entity/privacy_entity.dart';
import '../../../domain/entity/terms_entity.dart';

class TermsScreenContent extends StatefulWidget {
  final TermsEntity? termsEntity;

  const TermsScreenContent({
    Key? key,
    required this.termsEntity,
  }) : super(key: key);

  @override
  _TermsScreenContentState createState() => _TermsScreenContentState();
}

class _TermsScreenContentState extends State<TermsScreenContent> {
  final padding = EdgeInsets.symmetric(horizontal: 30.w, vertical: 40.h);

  /// state
  @override
  Widget build(BuildContext context) {
    if (widget.termsEntity == null)
      return Center(child: Text("لا يوجد الأحكام والشروط"));
    return ListView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      children: [
        Text(widget.termsEntity!.data.title,style: TextStyle(fontSize: 55.sp,fontWeight: FontWeight.bold)),
        SizedBox(height: 80.h),
        Text(widget.termsEntity!.data.description),
      ],
    );
  }

  /// widget

  /// logic

}
