import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class StepperNextButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPress;
  final bool enabled;

  const StepperNextButton({
    Key? key,
    required this.label,
    required this.onPress,
    this.enabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        child: Text(
          label,
          style: enabled
              ? AppTheme.textStyles.stepperNextButton
              : AppTheme.textStyles.stepperNextButtonDisabled,
        ),
        onPressed: enabled ? onPress : null,
      ),
    );
  }
}
