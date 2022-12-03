import 'package:buy_luck/core/common/app_config.dart';
import 'package:buy_luck/core/constants/enums/system_type.dart';
import 'package:buy_luck/features/cart/presentation/screen/checkout_done_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/navigation/nav.dart';

class PAymentScreenParam {
  final String url;
  final Function(bool Success) onResult;

  PAymentScreenParam(this.url, this.onResult);
}

class PaymentScreen extends StatefulWidget {
  static const routeName = '/PaymentScreen';

  final PAymentScreenParam param;

  const PaymentScreen({
    Key? key,
    required this.param,
  }) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final GlobalKey webViewKey = GlobalKey();

  InAppWebViewController? webViewController;
  InAppWebViewGroupOptions options = InAppWebViewGroupOptions(
      crossPlatform: InAppWebViewOptions(
        useShouldOverrideUrlLoading: true,
        mediaPlaybackRequiresUserGesture: false,
      ),
      android: AndroidInAppWebViewOptions(
        useHybridComposition: true,
      ),
      ios: IOSInAppWebViewOptions(
        allowsInlineMediaPlayback: true,
      ));

  late RefreshController pullToRefreshController;
  String url = "";
  double progress = 0;

  @override
  void initState() {
    super.initState();
    pullToRefreshController = RefreshController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: Stack(
        children: [
          SmartRefresher(
            controller: pullToRefreshController,
            onRefresh: () async {
              if (AppConfig().os == SystemType.Android) {
                webViewController?.reload();
              } else if (AppConfig().os == SystemType.IOS) {
                webViewController?.loadUrl(
                    urlRequest:
                        URLRequest(url: await webViewController?.getUrl()));
              }
            },
            child: InAppWebView(
              key: webViewKey,
              initialUrlRequest: URLRequest(url: Uri.parse(widget.param.url)),
              initialOptions: options,
              onWebViewCreated: (controller) {
                webViewController = controller;
              },
              onLoadStart: (controller, url) async {
                final fullPath = url?.toString() ?? '';
                print('url: $fullPath');

                // Cehck for payment result and route
                if (fullPath.contains('paypal.buyluck.net')) {
                  if (fullPath.contains('success')) {
                    widget.param.onResult(true);

                    /// Success routing
                    Nav.off(CheckoutDoneScreen.routeName, arguments: true);
                  } else {
                    /// Fail routing
                    Nav.off(CheckoutDoneScreen.routeName, arguments: false);
                  }
                }
              },
              androidOnPermissionRequest:
                  (controller, origin, resources) async {
                return PermissionRequestResponse(
                    resources: resources,
                    action: PermissionRequestResponseAction.GRANT);
              },
              shouldOverrideUrlLoading: (controller, navigationAction) async {
                var uri = navigationAction.request.url!;

                if (![
                  "http",
                  "https",
                  "file",
                  "chrome",
                  "data",
                  "javascript",
                  "about"
                ].contains(uri.scheme)) {
                  if (await canLaunch(url)) {
                    // Launch the App
                    await launch(
                      url,
                    );
                    // and cancel the request
                    return NavigationActionPolicy.CANCEL;
                  }
                }

                return NavigationActionPolicy.ALLOW;
              },
              onLoadStop: (controller, url) async {
                pullToRefreshController.refreshCompleted();
              },
              onLoadError: (controller, url, code, message) {
                pullToRefreshController.refreshCompleted();
              },
              onProgressChanged: (controller, progress) {
                if (progress == 100) {
                  pullToRefreshController.refreshCompleted();
                }
                setState(() {
                  this.progress = progress / 100;
                });
              },
              onUpdateVisitedHistory: (controller, url, androidIsReload) {},
              onConsoleMessage: (controller, consoleMessage) {
                print('Message: $consoleMessage');
              },
            ),
          ),
          progress < 1.0
              ? LinearProgressIndicator(value: progress)
              : Container(),
        ],
      ),
    );
  }
}
