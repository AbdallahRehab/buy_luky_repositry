import 'package:buy_luck/core/Common/Common.dart';
import 'package:buy_luck/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: ScreenUtil().statusBarHeight,
            ),
            /*ListTile(
              onTap: () {
                showLanguageDialog(
                  context: context,
                  currLang: Intl.getCurrentLocale() == LANG_EN
                      ? LanguagesEnum.english
                      : LanguagesEnum.arabic,
                );
              },
              title: Text(Translation.of(context).changeLanguage),
              trailing: Icon(
                Icons.language,
              ),
            ),*/
            ListTile(
              onTap: () {},
              title: Text(Translation.of(context).aboutUs),
              trailing: Icon(
                Icons.info,
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text(Translation.of(context).contactUs),
              trailing: Icon(
                Icons.phone,
              ),
            ),
            _divider,
            ListTile(
              onTap: () {
                logout(context);
              },
              title: Text(Translation.of(context).logOut),
              trailing: Icon(
                Icons.logout,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const _divider = Divider(
  thickness: 2,
);
