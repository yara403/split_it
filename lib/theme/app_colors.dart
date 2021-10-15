import 'package:flutter/cupertino.dart';

abstract class AppColors {
  Color get backgroundPrimary;
  Color get backgroundSecondary;
  Color get title;
  Color get button;
  Color get titleAppBar;
  Color get border;
  Color get border2;
  Color get icon;
  Color get iconBackground1;
  Color get iconBackground2;
  Color get infoCardTitle;
  Color get infoCardSubTitle1;
  Color get infoCardSubTitle2;
  Color get eventTileTitle;
  Color get eventTileSubTitle;
  Color get eventTileMoney;
  Color get eventTilePeople;
  Color get divider;
  Color get stepperIndicatorPrimary;
  Color get stepperIndicatorSecondary;
  Color get backButton;
  Color get stepperNextButton;
  Color get stepperNextButtonDisabled;
  Color get stepperTitle;
  Color get stepperSubtitle;
  Color get hintTextField;
  Color get textField;
  Color get inputBorder;
  Color get backButtonEvent;
  Color get titleEvent;
  Color get deleteButtonEvent;
  Color get dividerEvent;
  Color get checkboxChecked;
  Color get checkColor;
  Color get titleIntegrants;
  Color get nameIntegrant;
  Color get creditValue;
  Color get debtValue;
  Color get activeCheckbox;
  Color get borderCheckbox;
  Color get activeCheckboxArea;
  Color get checkboxArea;
  Color get dividerItens;
  Color get headerItens;
  Color get titleItem;
  Color get itemTileValue;
  Color get total;
  Color get backgroundTotal;
  Color get debit;
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
  Color get titleAppBar => Color(0xFFFFFFFF);

  @override
  Color get border2 => Color(0xFFFFFFFF);

  @override
  Color get icon => Color(0xFFFFFFFF);

  @override
  Color get iconBackground1 => Color(0xFF45CC93);

  @override
  Color get infoCardTitle => Color(0xFF666666);

  @override
  Color get infoCardSubTitle1 => Color(0xFF40B38C);

  @override
  Color get infoCardSubTitle2 => Color(0xFFE83F5B);

  @override
  Color get iconBackground2 => Color(0xFFE83F5B);

  @override
  Color get eventTileMoney => Color(0xFF666666);

  @override
  Color get eventTilePeople => Color(0xFFA4B2AE);

  @override
  Color get eventTileSubTitle => Color(0xFF666666);

  @override
  Color get eventTileTitle => Color(0xFF455250);

  @override
  Color get divider => Color(0xFF666666);

  @override
  Color get stepperIndicatorPrimary => Color(0xFF45CC93);

  @override
  Color get stepperIndicatorSecondary => Color(0xFF666666);

  @override
  Color get backButton => Color(0xFF666666);

  @override
  Color get stepperNextButton => Color(0xFF455250);

  @override
  Color get stepperSubtitle => Color(0xFF455250);

  @override
  Color get stepperTitle => Color(0xFF455250);

  @override
  Color get hintTextField => Color(0xFF666666);

  @override
  Color get textField => Color(0xFF455250);

  @override
  Color get inputBorder => Color(0xFF455250);

  @override
  Color get stepperNextButtonDisabled => Color(0xFF666666).withOpacity(0.4);

  @override
  Color get backButtonEvent => Color(0xFF666666);

  @override
  Color get titleEvent => Color(0xFF455250);

  @override
  Color get deleteButtonEvent => Color(0xFF666666);

  @override
  Color get dividerEvent => Color(0xFF455250).withOpacity(0.08);

  @override
  Color get checkboxChecked => Color(0xFF40B28C);

  @override
  Color get checkColor => Color(0xFFFFFFFF);

  @override
  Color get titleIntegrants => Color(0xFF455250);

  @override
  Color get nameIntegrant => Color(0xFF666666);

  @override
  Color get creditValue => Color(0xFF40B28C);

  @override
  Color get debtValue => Color(0xFFE83F5B);

  @override
  Color get activeCheckbox => Color(0xFF40B28C);

  @override
  Color get borderCheckbox => Color(0xFFC0CCC9);

  @override
  Color get activeCheckboxArea => Color(0xFF40B28C).withOpacity(0.16);

  @override
  Color get checkboxArea => Color(0xFF455250).withOpacity(0.08);

  @override
  Color get dividerItens => Color(0xFF666666).withOpacity(0.2);

  @override
  Color get headerItens => Color(0xFF455250);

  @override
  Color get titleItem => Color(0xFF455250);

  @override
  Color get itemTileValue => Color(0xFF666666);

  @override
  Color get total => Color(0xFF455250);

  @override
  Color get backgroundTotal => Color(0xFF455250).withOpacity(0.08);

  @override
  Color get debit => Color(0xFFE83F5B);
}
