import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:provider/provider.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../core/common/change_notifiers/coupons_notifier.dart';
import '../../../home/domain/entity/coupons_entity.dart';

class ExamplePage extends StatefulWidget {

  @override
  _ExamplePageState createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  final selected = BehaviorSubject<int>();
  String user_winner_Name = "";
  String user_winner_code = "";
  List<DatumEntity> arrCoupons=[];


  @override
  void dispose() {
    selected.close();
    super.dispose();
  }


  @override
  void initState() {
    // selected.add(
    //   Fortune.randomInt(0, items.length),
    // );

    // selected.add(
    //   Fortune.randomInt(
    //       0,
    //       Provider.of<CouponsNotifier>(context, listen: false)
    //           .couponsEntity
    //           .data
    //           .length),
    // );

    arrCoupons =
        Provider.of<CouponsNotifier>(context, listen: false).couponsEntity.data;
    if (arrCoupons.isNotEmpty) {
      for (int i = 0; i < arrCoupons.length; i++) {
        if (arrCoupons[i].code == arrCoupons[i].code_winner) {
          selected.add(i);
        }
      }
    } else {
      selected.add(0);
    }

    print(
        'WWWWWWWWWWWWWWWW  ${Provider.of<CouponsNotifier>(context, listen: false).couponsEntity.data.length}');
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // setState(() {
        //   selected.add(
        //     Fortune.randomInt(0, Provider.of<CouponsNotifier>(
        //         context,
        //         listen: false)
        //         .couponsEntity.data.length),
        //   );
        // });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "يتم السحب الان",
            style: TextStyle(color: Colors.orange[800], fontSize: 15),
          ),
          FortuneBar(
            selected: selected.stream,
            // indicators: const <FortuneIndicator>[
            //   FortuneIndicator(
            //     alignment: Alignment.topCenter,
            //     // <-- changing the position of the indicator
            //     child: TriangleIndicator(
            //       color:
            //           Colors.red, // <-- changing the color of the indicator
            //     ),
            //   ),
            // ],

            rotationCount: 5,

            onAnimationEnd: () {
              setState(() {
                user_winner_Name = arrCoupons[selected.value!].user_winner_name;
                user_winner_code = arrCoupons[selected.value!].code;
              });

              print(user_winner_Name);
              print(user_winner_code);
            },
            items: [
              for (var it
                  in Provider.of<CouponsNotifier>(context, listen: false)
                      .couponsEntity
                      .data)
                FortuneItem(
                    child: Text(it.code.toString()),
                    style: FortuneItemStyle(
                        color: Colors.white, borderColor: Colors.amberAccent)),
            ],
          ),
          user_winner_code.isNotEmpty
              ? Column(
                  children: [
                    // Text(widget.code_winner ,style: TextStyle(color: Colors.red,fontSize: 20),),
                    // Text(widget.user_winner_Name,style: TextStyle(color: Colors.red,fontSize: 20),),
                    Text(
                      "مبروك  ${user_winner_Name} قسيمتك رقم${user_winner_code} ربحت سوف يتم التواصل معك قريبا",
                      style: TextStyle(color: Colors.orange[800], fontSize: 15,fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
