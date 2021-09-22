import 'package:flutter/material.dart';

import 'package:split_it/modules/home/widgets/icon_dollar.dart';
import 'package:split_it/modules/home/widgets/loading.dart';
import 'package:split_it/theme/app_theme.dart';

class InfoCardWidget extends StatelessWidget {
  final double value;
  final bool isLoading;

  const InfoCardWidget({
    Key? key,
    required this.value,
    this.isLoading = false,
  }) : super(key: key);

  IconDollarWidget get iconDollar => value >= 0
      ? IconDollarWidget(type: IconDollarType.receive)
      : IconDollarWidget(type: IconDollarType.send);

  TextStyle get subTitleStyle => value >= 0
      ? AppTheme.textStyles.infoCardSubTitle1
      : AppTheme.textStyles.infoCardSubTitle2;

  String get titleLabel => value >= 0 ? 'A receber' : 'A pagar';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156,
      height: 168,
      decoration: BoxDecoration(
          color: AppTheme.colors.backgroundPrimary,
          border: Border.all(
            color: AppTheme.colors.border,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          iconDollar,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titleLabel,
                style: AppTheme.textStyles.infoCardTitle,
              ),
              if (isLoading) ...[
                LoadingWidget(size: Size(98, 24)),
              ] else
                Text(
                  'R\$ ' + formmattedValue,
                  style: subTitleStyle,
                ),
            ],
          )
        ],
      ),
    );
  }

  get formmattedValue => value.abs().toStringAsFixed(2).replaceFirst('.', ',');
}
