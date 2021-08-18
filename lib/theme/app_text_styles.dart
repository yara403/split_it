import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:split_it/theme/app_theme.dart';

abstract class AppTextStyles {
  TextStyle get title;
  TextStyle get button;
  TextStyle get header;
  TextStyle get card;
  TextStyle get cardMoneyToReceive;
  TextStyle get cardMoneyToPay;
}

class AppTextStylesDefault extends AppTextStyles {
  @override
  TextStyle get button => GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.button,
      );

  @override
  TextStyle get title => GoogleFonts.montserrat(
        fontSize: 40,
        fontWeight: FontWeight.w700,
        color: AppTheme.colors.title,
      );

  @override
  TextStyle get header => GoogleFonts.montserrat(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.backgroundPrimary,
      );

  @override
  TextStyle get card => GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.button,
      );

  @override
  TextStyle get cardMoneyToReceive => GoogleFonts.montserrat(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.backgroundSecondary,
      );

  @override
  TextStyle get cardMoneyToPay => GoogleFonts.montserrat(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.payCardSecondary,
      );
}
