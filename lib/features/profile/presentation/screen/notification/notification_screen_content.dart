import 'package:buy_luck/features/profile/domain/entity/notification_entity.dart';
import 'package:buy_luck/features/profile/domain/entity/notification_list_entity.dart';
import 'package:buy_luck/features/profile/presentation/widget/notification_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreenContent extends StatefulWidget {
  final NotificationListEntity notificationListEntity;

  const NotificationScreenContent({
    Key? key,
    required this.notificationListEntity,
  }) : super(key: key);
  @override
  _NotificationScreenContentState createState() =>
      _NotificationScreenContentState();
}

class _NotificationScreenContentState extends State<NotificationScreenContent> {
  /// variables
  List<NotificationEntity> notifications = [];
  final padding = EdgeInsets.symmetric(horizontal: 30.w, vertical: 40.h);

  @override
  void initState() {
    super.initState();
    notifications = widget.notificationListEntity.notifications;
  }

  /// state
  @override
  Widget build(BuildContext context) {
    List<Widget> cards = notifications
        .map((n) => Padding(
              padding: padding,
              child: NotificationCard(text: n.message),
            ))
        .toList();

    if (cards.isEmpty) return Center(child: Text("لا يوجد إشعارات"));
    return ListView(
      physics: BouncingScrollPhysics(),
      children: cards,
    );
  }

  /// widget

  /// logic

}
