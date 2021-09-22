import 'package:flutter/material.dart';

import 'package:split_it/theme/app_theme.dart';

class AddButtonWidget extends StatelessWidget {
  final VoidCallback onTap;
  const AddButtonWidget({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        width: 48,
        height: 56,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1.5,
            color: AppTheme.colors.border2.withOpacity(0.25),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(
          Icons.add,
          color: AppTheme.colors.icon,
          size: 14,
        ),
      ),
    );
  }
}
