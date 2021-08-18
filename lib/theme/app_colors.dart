import 'package:flutter/cupertino.dart';

abstract class AppColors {
  Color get backgroundPrimary;
  Color get backgroundSecondary;
  Color get title;
  Color get button;
  Color get border;
  Color get borderCardReceive;
  Color get borderCardPay;
  Color get backgroundPaySymbol;
  Color get payCardSecondary;
}

class AppColorsDefault implements AppColors {
  @override
  Color get backgroundPrimary => Color(0xFFFFFFFF);

  @override
  Color get backgroundSecondary => Color(0xFF40B38C);

  @override
  Color get title => Color(0xFF40B28C);

  @override
  Color get button => Color(0xFF666666);

  @override
  Color get border => Color(0xFFDCE0E5);

  @override
  Color get borderCardReceive => Color(0xFFE6F0ED);

  @override
  Color get borderCardPay => Color(0xFFF0E6E8);

  @override
  Color get backgroundPaySymbol => Color(0xFFE83F5B).withOpacity(0.1);

  @override
  Color get payCardSecondary => Color(0xFFE83F5B);
}
