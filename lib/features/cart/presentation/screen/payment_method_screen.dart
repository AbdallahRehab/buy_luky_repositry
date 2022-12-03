import 'package:buy_luck/core/Common/Common.dart';
import 'package:buy_luck/core/Common/change_notifiers/product_notifier.dart';
import 'package:buy_luck/core/Common/change_notifiers/profile.dart';
import 'package:buy_luck/core/ui/dialogs/custom_dialogs.dart';
import 'package:buy_luck/core/ui/error_ui/errors_screens/error_widget.dart';
import 'package:buy_luck/core/ui/widgets/waiting_widget.dart';
import 'package:buy_luck/features/cart/presentation/screen/cart_purchase_screen.dart';
import 'package:buy_luck/features/cart/presentation/screen/wallet_screen.dart';
import 'package:buy_luck/features/user_management/presentation/bloc/user_management_bloc.dart';
import 'package:buy_luck/features/user_management/presentation/bloc/user_management_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:provider/provider.dart';

class PaymentMethodScreen extends StatefulWidget {
  static const routeName = "PaymentMethodScreen/";

  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  _PaymentMethodScreenState createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  /// State management
  final _profileBloc = ProfileCubit();

  int _selectedPayment = 0;

  @override
  void initState() {
    _profileBloc.getProfile();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        elevation: 0.0,
        title: Text(
          "الدفع",
          style: TextStyle(
            fontSize: 55.sp,
            color: Colors.black,
          ),
          textAlign: TextAlign.start,
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.grey.shade200,
      body: BlocBuilder<ProfileCubit, GetProfileState>(
        bloc: _profileBloc,
        builder: (context, state) {
          return state.map(
            profileInitial: (_) => WaitingWidget(),
            profileLoading: (_) => WaitingWidget(),
            profileLoaded: (_) => _walletContent(),
            profileError: (e) => ErrorScreenWidget(
              error: e.error!,
              callback: e.callback!,
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    this._profileBloc.close();
    super.dispose();
  }

  Widget _walletContent() {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 400.h,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: CommonSizes.MED_LAYOUT_W_GAP.w,
                    ),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "المحفظة",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 65.sp,
                                  ),
                                ),
                                Text(
                                  "رصيدك الحالي: ${Provider.of<Profile>(context).profileEntity!.myMoney}",
                                ),
                              ],
                            ),
                          ),
                        ),
                        if (_selectedPayment == 0)
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.4),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        Positioned.fill(
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(15),
                              onTap: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(
            bottom: 25,
            left: CommonSizes.MED_LAYOUT_W_GAP.w,
            right: CommonSizes.MED_LAYOUT_W_GAP.w,
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Theme.of(context).primaryColor,
              padding: EdgeInsets.symmetric(
                vertical: 15,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            onPressed: () {
              if (Provider.of<Profile>(context, listen: false)
                      .profileEntity!
                      .myMoney <
                  Provider.of<ProductNotifier>(
                    context,
                    listen: false,
                  ).cartPrice) {
                showCustomDialogWithIconDialog(
                  context: context,
                  icon: Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                  iconBackColor: Theme.of(context).primaryColor,
                  buttonText: 'شحن رصيد',
                  content:
                      'ليس لديك رصيد كافٍ للقيام بعملية الشراء، قم بشحن رصيد إضافي',
                  onButtonPressed: (_) {
                    Navigator.pop(_);
                    pushNewScreenWithRouteSettings(
                      context,
                      screen: WalletScreen(),
                      settings: RouteSettings(name: WalletScreen.routeName),
                    );
                  },
                );
                return;
              }
              pushNewScreenWithRouteSettings(
                context,
                screen: CartPurchaseScreen(),
                settings: RouteSettings(
                  name: CartPurchaseScreen.routeName,
                ),
              );
            },
            child: Text("متابعة"),
          ),
        ),
      ],
    );
  }
}
