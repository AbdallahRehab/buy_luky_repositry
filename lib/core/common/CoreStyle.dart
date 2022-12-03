import 'package:flutter/material.dart';

abstract class CoreStyle {
  static double setWidthPercentage(percentage, context) {
    if (percentage <= 100 || percentage > 0)
      return MediaQuery.of(context).size.width * (percentage / 100);
    else
      return MediaQuery.of(context).size.width;
  }

  static double setHeightPercentage(percentage, context) {
    if (percentage <= 100 || percentage > 0)
      return MediaQuery.of(context).size.height * (percentage / 100);
    else
      return MediaQuery.of(context).size.height;
  }

  /// Driver application colors
  static const Color driverHomeTopColor1 = Color(0xFF4AD18D);
  static const Color driverHomeTopColor2 = Color(0xFF47CC89);
  static const Color driverHomeTopColor3 = Color(0xFF44C786);
  static const Color driverGreenContainerColor = Color(0xFF31AB5D);
  static const Color driverMainHomeBackgroundColor = Color(0xFFF1F6F3);
  static const Color driverGreenButtonColor = Color(0xffDFE4E0);
  static const Color driverSegmentedUnselectedColor = Color(0x47F6FFFA);
  static const Color driverSegmentedBorderColor = Color(0xFF5B5B5B);
  static const Color driverLightTextColor = Color(0xFF6A6B69);
  static const Color driverDrawerBackgroundColor = Color(0xFF494955);
  static const Color driverDashedColor = Color(0x22000029);
  static const Color driverGreenShadowColor = Color(0x141DC349);
  static const Color driverGreyColor = Color(0xFFADB3C4);
  static const Color driverLogoutColor = Color(0xFFFF5B7E);
  static const Color driverTextColor = Color(0xFF1B2D1A);
  static const Color driverDarkGreyColor = Color(0xff6A6B69);
  static const Color driverLightDarkGreenColor = Color(0xFF1B2D1A);

  /// Ubbaha application colors
  static const Color ubbahaPrimaryTheme = Color(0xFF98165E);
  static const Color ubbahaCardsShadow = Color(0x3A2C6094);
  static const Color ubbahaWhitePurple1 = Color(0xFFFFF7FB);
  static const Color ubbahaWhitePurple2 = Color(0xFFF6F0FF);
  static const Color ubbahaRose = Color(0xFFC664A7);
  static const Color ubbahaViolate = Color(0xFF8466AC);
  static const Color ubbahaDarkTheme1 = Color(0xFF981F60);
  static const Color ubbahaTabbarBackground = Color(0xFFF5EFFF);
  static const Color ubbahaWhiteViolate2 = Color(0x296611D6);
  static const Color ubbahaBrownPurple = Color(0xFF600B3A);
  static const Color ubbahaLightBlue1 = Color(0xFF3CC1D5);
  static const Color ubbahaLightBlue2 = Color(0xFF24D4F1);
  static const Color ubbahaLightBlue3 = Color(0xFF99E4F0);
  static const Color ubbahaDarkBlue = Color(0xFF3A2C60);
  static const Color ubbahaYellow = Color(0xFFFDD14B);
  static const Color ubbahaGreen = Color(0xFF6FE1A4);
  static const Color ubbahaDarkTextColor = Color(0xFF000A26);
  static const Color ubbahaLightTextColor = Color(0x80000A26);
  static const Color ubbahaLightRoseColor = Color(0xffFFECF9);
  static const Color ubbahaLightRoseShadowColor = Color(0x165E2998);
  static const Color ubbahaLightPrimaryShadow = Color(0x11D62966);
  static const Color ubbahaAddressCardShadow = Color(0x0B8A2300);
  static const Color ubbahaGradientBottomColor = Color(0xCFEAEAEA);
  static const Color ubbahaGradientTopColor = Color(0x00FFFFFF);
  static const Color ubbahaRedColor = Color(0xFFE16F73);
  static const Color ubbahaOrange = Color(0xFFe49472);

  /// Main App Color (general case)
  static const Color primaryTheme =
      Colors.deepOrangeAccent; // Color(0xFF4AD18D);
  static const Color primaryValue = Color(0xFF24292E);
  static const Color accentTheme = Color(0xFF494955);
  static const Color primaryBlue = Color(0xff243672);
  static const Color textColorBlue = Color(0xff243672);
  static const Color accentBlue = Color(0xff002C48);
  static Tween gredientTheme = ColorTween(begin: primaryBlue, end: accentBlue);
  static const Color primaryLightValue = Color(0xFF42464b);
  static const Color primaryDarkValue = Color(0xFF121917);
  static const Color darkGreen = Color(0xFF034A60);

  static const Color tabBarColor = Color(0xffebebeb);
  static const Color White200 = Color(0xffD1D1D1);
  static const Color White400 = Color(0xff8D8D8D);
  static const Color white = Color(0xFFFFFFFF);
  static const Color subTextColor = Color(0xff959595);
  static const Color subLightTextColor = Color(0xffc4c4c4);
  static const Color backGroundColor = Color(0xffFFFFFF);
  static const Color bottomBarBackGroundColor = Color(0xffF3F3F3);
  static const Color bottomBarTextBackGroundColor = Color(0xffA5A5A5);
  static const Color bottomTextBackground = Color(0xff243672);

  static const Color mainBackgroundColor = White200;

  static const Color mainTextColor = primaryDarkValue;
  static const Color textColorWhite = white;
  static const Color textColorGrey = Colors.grey;
  static const Color textColorRed = Colors.red;

  static const Color deliverySuccess = Color.fromARGB(200, 48, 229, 151);
  static const Color deliveryFailed = Color.fromARGB(200, 232, 0, 87);
  static const Color deliveryPending = Color.fromARGB(200, 240, 105, 37);

  static const lightGreenColor = Color(0xff449C45);
  static const lightRedColor = Color(0xffE44E00);
  static const darkRedColor = Color(0xffE82B45);
  static const importantHighlight = Color(0xffffc93c);

  static Color takeBackColor(int index) {
    if (index % 3 == 0) {
      return CoreStyle.primaryTheme;
    } else if (index % 2 == 0) {
      return CoreStyle.ubbahaLightBlue1;
    } else {
      return CoreStyle.ubbahaDarkBlue;
    }
  }
}

abstract class CommonSizes {
  /// Driver application sizes
  static const SMALL_LAYOUT_W_GAP = 25;
  static const MED_LAYOUT_W_GAP = 35;
  static const DRAWER_ICONS_SIZE = 75;
  static const BORDER_RADIUS_STANDARD = 10.0;

  /// --------------- ///
}

abstract class CommonTextStyle {
  /// Driver application text size standards
  static const DRAWER_TEXT_SIZE = 45;
  static const BIG_TEXT_SIZE = 70;

  /// ------------------------- ///

  static const sp32 = 32.0 * 2;
  static const sp28 = 28.0 * 2;
  static const sp22 = 22.0 * 2;
  static const sp20 = 20.0 * 2;
  static const sp18 = 18.0 * 2;
  static const sp16 = 16.0 * 2;
  static const sp14 = 14.0 * 2;
  static const sp12 = 12.0 * 2;
  static const sp9 = 9.0 * 2;

  static const biggestTextSize70dp = 70.0;
  static const lagerTextSize28dp = 28.0;
  static const bigTextSize18dp = 18.0;
  static const normalTextSize16dp = 16.0;
  static const middleTextWhiteSize14dp = 14.0;
  static const smallTextSize14dp = 14.0;
  static const minTextSize12dp = 12.0;
  static const smallestTextSize10dp = 10.0;

  static const textFormFieldUserManagement = const TextStyle(
      color: CoreStyle.primaryTheme,
      decorationThickness: 0,
      decorationColor: CoreStyle.primaryTheme,
      fontSize: CommonTextStyle.smallTextSize14dp);

  static const textFormFieldSearch = const TextStyle(
      color: Colors.black,
      decorationThickness: 0,
      decorationColor: CoreStyle.white,
      fontSize: CommonTextStyle.smallTextSize14dp);

  static const textFormFieldAddAddress = const TextStyle(
      color: Colors.black87,
      decorationThickness: 0,
      decorationColor: Colors.black87,
      fontSize: CommonTextStyle.smallTextSize14dp);

  static const labelUserManagement = const TextStyle(
      color: CoreStyle.primaryTheme,
      decorationThickness: 0,
      decorationColor: CoreStyle.primaryTheme,
      fontSize: CommonTextStyle.minTextSize12dp);

  static const labelAddAddress = const TextStyle(
      color: Colors.black87,
      decorationThickness: 0,
      decorationColor: CoreStyle.primaryDarkValue,
      fontSize: CommonTextStyle.smallTextSize14dp);

  static const labelSearch = const TextStyle(
      color: CoreStyle.primaryTheme,
      decorationThickness: 0,
      decorationColor: CoreStyle.White200,
      fontSize: CommonTextStyle.smallTextSize14dp);

  static const minText = const TextStyle(
    color: CoreStyle.subLightTextColor,
    fontSize: minTextSize12dp,
  );

  static const smallTextWhite = const TextStyle(
    color: CoreStyle.textColorWhite,
    fontSize: smallTextSize14dp,
  );

  static const miniTextWhite = const TextStyle(
    color: CoreStyle.textColorWhite,
    fontSize: 12,
  );

  static const smallTextGrey = const TextStyle(
    color: CoreStyle.textColorGrey,
    fontSize: smallTextSize14dp,
  );

  static const semiSmallTextGrey = const TextStyle(
    color: CoreStyle.textColorGrey,
    fontSize: 15.0,
  );

  static const smallTextWithLineGrey = const TextStyle(
    color: CoreStyle.textColorGrey,
    fontSize: smallTextSize14dp,
    decoration: TextDecoration.lineThrough,
  );

  static const medTextWithLineGrey = const TextStyle(
    color: CoreStyle.textColorGrey,
    fontSize: bigTextSize18dp,
    decoration: TextDecoration.lineThrough,
  );

  static const medBoldTextWithLineGrey = const TextStyle(
      color: CoreStyle.textColorGrey,
      fontSize: bigTextSize18dp,
      decoration: TextDecoration.lineThrough,
      fontWeight: FontWeight.w600);

  static const normalMedTextBlue = const TextStyle(
    color: CoreStyle.primaryTheme,
    fontSize: bigTextSize18dp,
  );

  static const smallTextRed = const TextStyle(
    color: CoreStyle.textColorRed,
    fontSize: smallTextSize14dp,
  );

  static const medBoldRedText = const TextStyle(
    color: CoreStyle.textColorRed,
    fontSize: normalTextSize16dp,
    fontWeight: FontWeight.w600,
  );

  static const boldBigTextPrimary = const TextStyle(
    color: CoreStyle.primaryTheme,
    fontSize: bigTextSize18dp,
    fontWeight: FontWeight.w600,
  );

  static const miniText = const TextStyle(
    color: CoreStyle.mainTextColor,
    fontSize: minTextSize12dp,
  );

  static const smallText = const TextStyle(
    color: CoreStyle.mainTextColor,
    fontSize: smallTextSize14dp,
  );

  static const smallTextBold = const TextStyle(
    color: CoreStyle.mainTextColor,
    fontSize: smallTextSize14dp,
    fontWeight: FontWeight.bold,
  );

  static const smallSubLightText = const TextStyle(
    color: CoreStyle.subLightTextColor,
    fontSize: smallTextSize14dp,
  );

  static const smallActionLightText = const TextStyle(
    color: CoreStyle.accentTheme,
    fontSize: smallTextSize14dp,
  );

  static const smallMiLightText = const TextStyle(
    color: CoreStyle.White200,
    fontSize: smallTextSize14dp,
  );

  static const smallSubText = const TextStyle(
    color: CoreStyle.subTextColor,
    fontSize: smallTextSize14dp,
  );

  static const middleText = const TextStyle(
    color: CoreStyle.mainTextColor,
    fontSize: middleTextWhiteSize14dp,
  );

  static const bigTransBlackText = const TextStyle(
      color: Colors.black45,
      fontSize: bigTextSize18dp,
      fontWeight: FontWeight.w200);

  static const medBlackNormalText = const TextStyle(
    color: Colors.black,
    fontSize: normalTextSize16dp,
    fontWeight: FontWeight.w200,
  );

  static const bigBlackNormalText = const TextStyle(
    color: Colors.black,
    fontSize: bigTextSize18dp,
    fontWeight: FontWeight.w200,
  );

  static const medBlackBoldText = const TextStyle(
    color: Colors.black,
    fontSize: normalTextSize16dp,
    fontWeight: FontWeight.w600,
  );

  static const smallLightBlackNormalText = const TextStyle(
    color: Colors.black45,
    fontSize: smallTextSize14dp,
    fontWeight: FontWeight.w200,
  );

  static const middleTextWhite = const TextStyle(
    color: CoreStyle.textColorWhite,
    fontSize: middleTextWhiteSize14dp,
  );
  static const minTextWhite = const TextStyle(
    color: CoreStyle.textColorWhite,
    fontSize: minTextSize12dp,
  );

  static const middleSubText = const TextStyle(
      color: Colors.grey,
      fontSize: middleTextWhiteSize14dp,
      fontWeight: FontWeight.w100);

  static const middleSubLightText = const TextStyle(
    color: CoreStyle.subLightTextColor,
    fontSize: middleTextWhiteSize14dp,
  );

  static const middleTextBold = const TextStyle(
    color: CoreStyle.mainTextColor,
    fontSize: middleTextWhiteSize14dp,
    fontWeight: FontWeight.bold,
  );

  static const middleTextWhiteBold = const TextStyle(
    color: CoreStyle.textColorWhite,
    fontSize: middleTextWhiteSize14dp,
    fontWeight: FontWeight.bold,
  );

  static const middleSubTextBold = const TextStyle(
    color: CoreStyle.subTextColor,
    fontSize: middleTextWhiteSize14dp,
    fontWeight: FontWeight.bold,
  );

  static const normalText = const TextStyle(
    color: CoreStyle.mainTextColor,
    fontSize: normalTextSize16dp,
  );

  static const normalTextBold = const TextStyle(
    color: CoreStyle.mainTextColor,
    fontSize: normalTextSize16dp,
    fontWeight: FontWeight.bold,
  );

  static const normalTextBoldForMessage = TextStyle(
      color: CoreStyle.mainTextColor,
      fontSize: normalTextSize16dp,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic);

  static const normalSubText = const TextStyle(
    color: CoreStyle.subTextColor,
    fontSize: normalTextSize16dp,
  );

  static const normalTextWhite = const TextStyle(
    color: CoreStyle.textColorWhite,
    fontSize: normalTextSize16dp,
  );

  static const normalTextMitWhiteBold = const TextStyle(
    color: Colors.white,
    fontSize: bigTextSize18dp,
    fontWeight: FontWeight.w500,
  );

  static const normalTextMitWhite = const TextStyle(
    color: Colors.white70,
    fontSize: normalTextSize16dp,
  );

  static const normalTextActionWhiteBold = const TextStyle(
    color: CoreStyle.accentTheme,
    fontSize: normalTextSize16dp,
    fontWeight: FontWeight.bold,
  );

  static const normalTextLight = const TextStyle(
    color: CoreStyle.primaryLightValue,
    fontSize: normalTextSize16dp,
  );

  static const largeText = const TextStyle(
    color: CoreStyle.mainTextColor,
    fontSize: bigTextSize18dp,
  );

  static const largeTextBold = const TextStyle(
    color: CoreStyle.mainTextColor,
    fontSize: bigTextSize18dp,
    fontWeight: FontWeight.bold,
  );

  static const largeTextWhite = const TextStyle(
    color: CoreStyle.textColorWhite,
    fontSize: bigTextSize18dp,
  );

  static const largeTextWhiteBold = const TextStyle(
    color: CoreStyle.textColorWhite,
    fontSize: bigTextSize18dp,
    fontWeight: FontWeight.bold,
  );

  static const largeLargeTextWhiteBold = const TextStyle(
    color: CoreStyle.textColorWhite,
    fontSize: lagerTextSize28dp,
    fontWeight: FontWeight.bold,
  );

  static const largeLargeTextWhite = const TextStyle(
    color: CoreStyle.textColorWhite,
    fontSize: lagerTextSize28dp,
  );

  static const largeLargeText = const TextStyle(
    color: CoreStyle.primaryValue,
    fontSize: lagerTextSize28dp,
    fontWeight: FontWeight.bold,
  );

  static const biggestTextWhite = const TextStyle(
    color: CoreStyle.textColorWhite,
    fontSize: biggestTextSize70dp,
  );

  static const categoryBottomText = const TextStyle(
    color: CoreStyle.textColorWhite,
    fontSize: bigTextSize18dp,
    fontWeight: FontWeight.w700,
  );

  static const boldBlueSmallText = const TextStyle(
    color: CoreStyle.textColorBlue,
    fontSize: normalTextSize16dp,
    fontWeight: FontWeight.bold,
  );

  static const boldBlueBigText = const TextStyle(
    color: CoreStyle.primaryTheme,
    fontSize: bigTextSize18dp,
    fontWeight: FontWeight.bold,
  );

  static const normalBlueSmallText = const TextStyle(
    color: CoreStyle.textColorBlue,
    fontSize: smallTextSize14dp,
  );

  static const normalBlueMedText = const TextStyle(
    color: CoreStyle.textColorBlue,
    fontSize: normalTextSize16dp,
  );

  static const semiBoldBlueSmallText = const TextStyle(
    color: CoreStyle.textColorBlue,
    fontSize: smallTextSize14dp,
    fontWeight: FontWeight.w600,
  );

  static const boldWhiteMedText = const TextStyle(
    color: CoreStyle.textColorWhite,
    fontSize: smallTextSize14dp,
    fontWeight: FontWeight.bold,
  );

  static const normalWhiteMedText = const TextStyle(
    color: CoreStyle.textColorWhite,
    fontSize: smallTextSize14dp,
  );

  static const boldWhiteSmallMedText = const TextStyle(
    color: CoreStyle.textColorWhite,
    fontSize: smallTextSize14dp,
    fontWeight: FontWeight.w800,
  );

  static const normalGreySmallText = const TextStyle(
    color: CoreStyle.textColorGrey,
    fontSize: normalTextSize16dp,
  );

  static const normalGreyMedText = const TextStyle(
    color: CoreStyle.textColorGrey,
    fontSize: bigTextSize18dp,
  );

  static const boldGreyMedText = const TextStyle(
    color: CoreStyle.textColorGrey,
    fontSize: bigTextSize18dp,
    fontWeight: FontWeight.bold,
  );

  static const boldPrimaryMedText = const TextStyle(
    color: CoreStyle.primaryTheme,
    fontSize: bigTextSize18dp,
    fontWeight: FontWeight.w700,
  );

  static const smallNormalGrey = const TextStyle(
      color: Colors.grey, fontSize: 13.0, fontWeight: FontWeight.w100);

  static const SemiBoldPrimaryMedText = const TextStyle(
    color: CoreStyle.primaryTheme,
    fontSize: normalTextSize16dp,
    fontWeight: FontWeight.w700,
  );

  static const normalPrimaryMedText = const TextStyle(
    color: CoreStyle.primaryTheme,
    fontSize: bigTextSize18dp,
  );

  static const normalPrimarySmallText = const TextStyle(
    color: CoreStyle.primaryTheme,
    fontSize: normalTextSize16dp,
  );

  static const normalPrimaryMinText = const TextStyle(
    color: CoreStyle.primaryTheme,
    fontSize: smallTextSize14dp,
  );

  static const normalPrimaryMinWithUnderLineText = const TextStyle(
      color: CoreStyle.primaryTheme,
      fontSize: smallTextSize14dp,
      decoration: TextDecoration.underline);

  static const normalDarkBlue = const TextStyle(
    color: CoreStyle.primaryTheme,
    fontSize: normalTextSize16dp,
  );

  static const normalBoldDarkBlue = const TextStyle(
      color: CoreStyle.primaryTheme,
      fontSize: normalTextSize16dp,
      fontWeight: FontWeight.w800);

  static const normalDarkTextColor = const TextStyle(
    color: CoreStyle.ubbahaDarkTextColor,
    fontSize: normalTextSize16dp,
  );

  static const normalBoldDarkTextColor = const TextStyle(
      color: CoreStyle.ubbahaDarkTextColor,
      fontSize: normalTextSize16dp,
      fontWeight: FontWeight.w800);

  static const bigBoldDarkTextColor = const TextStyle(
      color: CoreStyle.ubbahaDarkTextColor,
      fontSize: CommonTextStyle.bigTextSize18dp,
      fontWeight: FontWeight.w800);

  static const smallDarkTextColor = const TextStyle(
    color: CoreStyle.ubbahaDarkTextColor,
    fontSize: CommonTextStyle.minTextSize12dp,
  );
}

class AddVerticalSpace extends StatelessWidget {
  final double h;

  AddVerticalSpace(this.h);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: h,
    );
  }
}

class AddHorizontalSpace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 5,
    );
  }
}

class CustomDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Divider(
      thickness: 1,
    );
  }
}

class CustomText extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final double? top, bottom;

  const CustomText(this.text, {Key? key, this.textStyle, this.top, this.bottom})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: top ?? 4, bottom: bottom ?? 4),
      child: Text(
        this.text,
        style: textStyle == null ? null : textStyle,
        overflow: TextOverflow.ellipsis,
        maxLines: 5,
      ),
    );
  }
}
