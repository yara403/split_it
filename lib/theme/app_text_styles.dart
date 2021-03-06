import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:split_it/theme/app_theme.dart';

abstract class AppTextStyles {
  TextStyle get title;
  TextStyle get button;
  TextStyle get appBar;
  TextStyle get infoCardTitle;
  TextStyle get infoCardSubTitle1;
  TextStyle get infoCardSubTitle2;
  TextStyle get eventTileTitle;
  TextStyle get eventTileSubTitle;
  TextStyle get eventTileMoney;
  TextStyle get eventTilePeople;
  TextStyle get stepperIndicatorPrimary;
  TextStyle get stepperIndicatorSecondary;
  TextStyle get stepperNextButton;
  TextStyle get stepperNextButtonDisabled;
  TextStyle get stepperTitle;
  TextStyle get stepperSubtitle;
  TextStyle get textField;
  TextStyle get hintTextField;
  TextStyle get titleEvent;
  TextStyle get titleIntegrants;
  TextStyle get nameIntegrant;
  TextStyle get creditValue;
  TextStyle get debtValue;
  TextStyle get headerItens;
  TextStyle get titleItem;
  TextStyle get itemTileValue;
  TextStyle get titleTotal;
  TextStyle get valueTotal;
  TextStyle get debit;
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
  TextStyle get appBar => GoogleFonts.montserrat(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: AppTheme.colors.titleAppBar,
      );

  @override
  TextStyle get infoCardTitle => GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.infoCardTitle,
      );

  @override
  TextStyle get infoCardSubTitle1 => GoogleFonts.inter(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppTheme.colors.infoCardSubTitle1,
      );

  @override
  TextStyle get infoCardSubTitle2 => GoogleFonts.inter(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppTheme.colors.infoCardSubTitle2,
      );

  @override
  TextStyle get eventTileMoney => GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.eventTileMoney,
      );

  @override
  TextStyle get eventTilePeople => GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.eventTilePeople,
      );

  @override
  TextStyle get eventTileSubTitle => GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.eventTileSubTitle,
      );

  @override
  TextStyle get eventTileTitle => GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: AppTheme.colors.eventTileTitle,
      );

  @override
  TextStyle get stepperIndicatorPrimary => GoogleFonts.roboto(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: AppTheme.colors.stepperIndicatorPrimary,
      );

  @override
  TextStyle get stepperIndicatorSecondary => GoogleFonts.roboto(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.stepperIndicatorSecondary,
      );

  @override
  TextStyle get stepperNextButton => GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: AppTheme.colors.stepperNextButton,
      );

  @override
  TextStyle get stepperSubtitle => GoogleFonts.inter(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.stepperSubtitle,
      );

  @override
  TextStyle get stepperTitle => GoogleFonts.inter(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: AppTheme.colors.stepperTitle,
      );

  @override
  TextStyle get hintTextField => GoogleFonts.inter(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: AppTheme.colors.hintTextField,
      );

  @override
  TextStyle get textField => GoogleFonts.inter(
        fontWeight: FontWeight.w500,
        fontSize: 16,
        color: AppTheme.colors.textField,
      );

  @override
  TextStyle get stepperNextButtonDisabled => GoogleFonts.inter(
        fontWeight: FontWeight.w500,
        fontSize: 12,
        color: AppTheme.colors.stepperNextButtonDisabled,
      );

  @override
  TextStyle get titleEvent => GoogleFonts.montserrat(
        fontWeight: FontWeight.w700,
        fontSize: 22,
        color: AppTheme.colors.titleEvent,
      );

  @override
  TextStyle get titleIntegrants => GoogleFonts.roboto(
        fontWeight: FontWeight.w700,
        fontSize: 14,
        color: AppTheme.colors.titleIntegrants,
      );

  @override
  TextStyle get nameIntegrant => GoogleFonts.roboto(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: AppTheme.colors.nameIntegrant,
      );

  @override
  TextStyle get creditValue => GoogleFonts.roboto(
        fontWeight: FontWeight.w700,
        fontSize: 12,
        color: AppTheme.colors.creditValue,
      );

  @override
  TextStyle get debtValue => GoogleFonts.roboto(
        fontWeight: FontWeight.w700,
        fontSize: 12,
        color: AppTheme.colors.debtValue,
      );

  @override
  TextStyle get headerItens => GoogleFonts.roboto(
        fontWeight: FontWeight.w700,
        fontSize: 14,
        color: AppTheme.colors.headerItens,
      );

  @override
  TextStyle get titleItem => GoogleFonts.inter(
        fontWeight: FontWeight.w600,
        fontSize: 16,
        color: AppTheme.colors.titleItem,
      );

  @override
  TextStyle get itemTileValue => GoogleFonts.roboto(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: AppTheme.colors.itemTileValue,
      );

  @override
  TextStyle get titleTotal => GoogleFonts.roboto(
      fontWeight: FontWeight.w700, fontSize: 16, color: AppTheme.colors.total);

  @override
  TextStyle get valueTotal => GoogleFonts.roboto(
      fontWeight: FontWeight.w400, fontSize: 16, color: AppTheme.colors.total);

  @override
  TextStyle get debit => GoogleFonts.roboto(
      fontWeight: FontWeight.w400, fontSize: 16, color: AppTheme.colors.debit);
}
