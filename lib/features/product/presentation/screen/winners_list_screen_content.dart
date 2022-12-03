import 'package:buy_luck/features/home/presentation/widget/winner_card.dart';
import 'package:buy_luck/features/product/domain/entity/winners_list_entity.dart';
import 'package:buy_luck/features/product/presentation/screen/product_details_screen.dart';
import 'package:buy_luck/features/product/presentation/screen/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import '../../../../core/net/api_url.dart';

class WinnersListScreenContent extends StatefulWidget {
  final List<WinnerListDataEntity> winners;

  const WinnersListScreenContent({
    Key? key,
    required this.winners,
  }) : super(key: key);

  @override
  _WinnersListScreenContentState createState() =>
      _WinnersListScreenContentState();
}

class _WinnersListScreenContentState extends State<WinnersListScreenContent> {
  @override
  Widget build(BuildContext context) {
    if (widget.winners.length == 0) {
      return Center(
        child: Text("لا يوجد فائزين"),
      );
    }
    return Container(
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 15,
          );
        },
        itemBuilder: (context, index) {
          final winner = widget.winners[index];
          return Padding(
            padding: EdgeInsets.only(bottom: 50.h),
            child: WinnerCard(
              onTap: () {
                pushNewScreenWithRouteSettings(
                  context,
                  screen: ProductDetailsScreen(
                    productDetailsScreenParam: ProductDetailsScreenParam(
                      null,
                      winnerProductEntity: winner.product,
                      userId: winner.productId,
                    ),
                  ),
                  settings: RouteSettings(
                    name: ProductScreen.routeName,
                  ),
                );
              },
              title: winner.name,
              imagePath: (API_BASE_IMG + (winner.product.image ?? '')),
              coponNumber: winner.codeWinner,
              userNameNumber:  winner.userWinner.name ?? "",
            ),
          );
        },
        itemCount: widget.winners.length,
      ),
    );
  }
}
