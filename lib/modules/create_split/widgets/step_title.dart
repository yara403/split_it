import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class StepTitleWidget extends StatelessWidget {
  final String title;
  final String subTitle;

  const StepTitleWidget({Key? key, required this.title, required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text.rich(
          TextSpan(
            text: this.title,
            style: AppTheme.textStyles.stepperTitle,
            children: [
              TextSpan(
                text: "\n$subTitle",
                style: AppTheme.textStyles.stepperSubtitle,
              )
            ],
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 40),
      ],
    );
  }
}
