import 'package:buy_luck/core/Common/Common.dart';
import 'package:buy_luck/core/ui/buy_luck/buy_luck_textfield.dart';
import 'package:buy_luck/core/ui/error_ui/error_viewer/error_viewer.dart';
import 'package:buy_luck/features/cart/data/params/generate_payment_param.dart';
import 'package:buy_luck/features/cart/presentation/screen/payment_screen.dart';
import 'package:buy_luck/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/ui/toast.dart';
import '../cubit/cart_cubit.dart';

class ChargeDialog extends StatefulWidget {
  final num userId;
  final Function(bool suceess) onResult;

  const ChargeDialog({
    Key? key,
    required this.userId,
    required this.onResult,
  }) : super(key: key);

  @override
  _ChargeDialogState createState() => _ChargeDialogState();
}

class _ChargeDialogState extends State<ChargeDialog> {
  /// variables
  TextEditingController _chargeController = TextEditingController();
  final _chargeFocusNode = FocusNode();
  final _chargeFormKey = GlobalKey<FormFieldState>();

  /// State management
  final _cartCubit = CartCubit();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("الرجاء ادخال الرصيد المراد شحنه"),
          const SizedBox(
            height: 10,
          ),
          _buildChargeTextField(),
          const SizedBox(
            height: 10,
          ),
          BlocConsumer<CartCubit, CartState>(
            bloc: _cartCubit,
            builder: (context, state) {
              if (state is CartLoadingState) {
                return CircularProgressIndicator();
              }
              return _buildButtons();
            },
            listener: (context, state) {
              state.map(
                cartInitState: (_) {},
                cartLoadingState: (_) {},
                paymentLoaded: (s) {
                  Navigator.pushReplacementNamed(
                    context,
                    PaymentScreen.routeName,
                    arguments: PAymentScreenParam(
                      s.response!.data,
                      widget.onResult,
                    ),
                  );
                },
                chargeLoadedState: (s) {
                  Toast.show(s.response?.message ?? '');
                  Navigator.pop(context);
                },
                checkoutLoadedState: (_) {},
                cartErrorState: (e) {
                  ErrorViewer.showError(
                      context: context, error: e.error!, callback: e.callback);
                },
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _cartCubit.close();
    super.dispose();
  }

  Widget _buildChargeTextField() {
    return BuyLuckTextField(
      hintText: "الرصيد المطلوب",
      hintStyle: TextStyle(
        fontSize: 40.sp,
        color: Colors.orange[800]?.withOpacity(.5),
      ),
      borderColor: Theme.of(context).primaryColor,
      controller: _chargeController,
      textKey: _chargeFormKey,
      focusNode: _chargeFocusNode,
      textInputType: TextInputType.number,
      textInputAction: TextInputAction.done,
      fillColor: Colors.white,
      radius: 50.r,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 40.sp,
        color: Colors.orange[800]?.withOpacity(.5),
      ),
      contentPadding: EdgeInsets.all(50.w),
      onSubmitted: (_) {
        _chargeFocusNode.unfocus();
      },
      validator: (userName) {
        if (Validators.isNotEmptyString(userName ?? '')) return null;
        return Translation.of(context).thisInputMustntBeEmpty;
      },
      onChanged: (_) {
        _chargeFormKey.currentState?.validate();
      },
    );
  }

  Widget _buildButtons() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          style: TextButton.styleFrom(
            textStyle: TextStyle(
              color: Theme.of(context).primaryColor,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            child: Text(
              Translation.of(context).cancel,
              style: TextStyle(
                fontSize: ScreenUtil().setSp(32),
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        MaterialButton(
          color: Theme.of(context).primaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            child: Text(
              Translation.of(context).confirm,
              style: TextStyle(
                fontSize: ScreenUtil().setSp(32),
                color: Colors.white,
              ),
            ),
          ),
          onPressed: () {
            if (this._chargeFormKey.currentState?.validate() ?? false) {
              try {
                final amount = num.parse(this._chargeController.text);
                this._cartCubit.generatePayment(
                      GeneratePaymentParam(
                        userId: widget.userId,
                        value: amount,
                      ),
                    );
              } catch (e) {
                print(e);
                Toast.show("الرجاء ادخال رقم صالح");
              }
            }
          },
          textColor: Theme.of(context).primaryColor,
        ),
      ],
    );
  }
}
