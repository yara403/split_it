import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class CreateSplitAppBarWidget extends PreferredSize {
  final VoidCallback onPress;
  final int size;
  final int actualPage;
  CreateSplitAppBarWidget({
    required this.onPress,
    required this.size,
    required this.actualPage,
  }) : super(
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: AppTheme.colors.backButton,
                    ),
                    onPressed: onPress,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 24.0),
                  child: Text.rich(
                    TextSpan(
                        text: "0${actualPage + 1}",
                        style: AppTheme.textStyles.stepperIndicatorPrimary,
                        children: [
                          TextSpan(
                            text: " - 0$size",
                            style:
                                AppTheme.textStyles.stepperIndicatorSecondary,
                          ),
                        ]),
                  ),
                ),
              ],
            ),
          ),
          preferredSize: Size.fromHeight(60),
        );
}
