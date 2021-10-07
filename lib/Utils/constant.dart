import 'package:flutter/material.dart';

// Colors
const kFontBlackColor = Color(0xFF1D1C1C);
const kFontGrayColor = Color(0xFF626260);

// Text Styles
var kFont17AvenirNextDemiBold = TextStyle(
  fontSize: 17.0,
  color: kFontBlackColor,
  fontFamily: "Avenir Next Demi Bold", //Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);

var kFont17HelveticaNMedium = TextStyle(
  fontSize: 17.0,
  color: kFontBlackColor,
  fontFamily: "Helvetica Neue", //Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);

var kFont17HelveticaNRegular = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.normal,
  color: kFontGrayColor,
  fontFamily: "Helvetica Neue", //Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);

var kFont17HelveticaNBold = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.bold,
  color: kFontGrayColor,
  fontFamily: "Helvetica Neue", //Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);

var kFont23HelveticaNBoldPrice = TextStyle(
  fontSize: 23.0,
  fontWeight: FontWeight.bold,
  color: Colors.white,
  fontFamily: "Helvetica Neue", //Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);

//region SharedPreferences Keys
const IS_KEEP_LOGGED_IN = 'IS_KEEP_LOGGED_IN';
const IS_LOGGED_IN = 'IS_LOGGED_IN';
const IS_SOCIAL_LOGIN = 'IsSocialLogin';
const TOKEN = 'TOKEN';
const USER_ID = "UserId";
const USER_PROFILE_PIC = "profile_photo";
const USER_NAME = "USER_NAME";
const USER_EMAIL = "USER_EMAIL";
const LAT = "LAT";
const LONG = "LONG";
const IS_FIRST_TIME = "IS_FIRST_TIME";
const NOTIFICATION_TOKEN = "NOTIFICATION_TOKEN";

class LottieConstants {
  static const String loader = 'assets/lottie/loader.json';
}
