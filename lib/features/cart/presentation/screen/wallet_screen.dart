import 'package:buy_luck/core/Common/CoreStyle.dart';
import 'package:buy_luck/core/Common/change_notifiers/profile.dart';
import 'package:buy_luck/core/ui/error_ui/errors_screens/error_widget.dart';
import 'package:buy_luck/core/ui/widgets/waiting_widget.dart';
import 'package:buy_luck/features/cart/presentation/screen/charge_dialog.dart';
import 'package:buy_luck/features/user_management/presentation/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class WalletScreen extends StatefulWidget {
  static const routeName = "SalaryScreen/";

  @override
  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  /// State management
  final _profileBloc = ProfileCubit();

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
          "المحفظة",
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
            profileError: (e) =>
                ErrorScreenWidget(error: e.error!, callback: e.callback!),
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
    return SingleChildScrollView(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 130.h,
          ),
          Text(
            "رصيد حسابك الحالي ",
            textAlign: TextAlign.center,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 200.w, vertical: 40.h),
            height: 500.h,
            //color: Colors.grey,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
            ),
            child: Center(
              child: Text(
                "${Provider.of<Profile>(context).profileEntity!.myMoney}",
                style: TextStyle(fontSize: 100.sp),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 170.w),
            child: MaterialButton(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    final userId = Provider.of<Profile>(context, listen: false)
                        .profileEntity!
                        .id;
                    return Dialog(
                      child: ChargeDialog(
                        userId: userId,
                        onResult: (success) {
                          if (success) {
                            _profileBloc.getProfile();
                          }
                        },
                      ),
                    );
                  },
                );
              },
              color: Theme.of(context).primaryColor,
              child: Text(
                "إضافة رصيد",
                style: TextStyle(color: Colors.white),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  CommonSizes.BORDER_RADIUS_STANDARD,
                ),
                // side: BorderSide(color: Colors.red)
              ),
            ),
          ),
        ],
      ),
    );
  }
}
