import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/widgets/stepper_next_button.dart';
import 'package:split_it/theme/app_theme.dart';

class BottomStepperBarWidget extends StatelessWidget {
  final VoidCallback onCancel;
  final VoidCallback onContinue;
  final bool enabledButtons;
  const BottomStepperBarWidget({
    Key? key,
    required this.onContinue,
    required this.onCancel,
    this.enabledButtons = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      child: Row(
        children: [
          StepperNextButton(
            label: "CANCELAR",
            onPress: onCancel,
            enabled: enabledButtons,
          ),
          Container(
            width: 1,
            height: 56,
            color: AppTheme.colors.divider.withOpacity(0.2),
          ),
          StepperNextButton(
            label: "CONTINUAR",
            onPress: onContinue,
            enabled: enabledButtons,
          ),
        ],
      ),
    );
  }
}
