import 'package:buy_luck/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../upload_image_changenotifier.dart';

class UploadTextPercentage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      Provider.of<UploadImageChangeNotifier>(context).getUploadPercentage +
          ' ' +
          Translation.of(context).uploaded,
      style: TextStyle(
        color: Colors.black,
        fontSize: ScreenUtil().setSp(40),
      ),
    );
  }
}
