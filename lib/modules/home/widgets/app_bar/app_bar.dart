import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/bottom_app_bar/bottom_app_bar.dart';

import 'package:split_it/theme/app_theme.dart';

class AppBarWidget extends PreferredSize {
  final double screenWidth;
  AppBarWidget({required this.screenWidth})
      : super(
          child: Stack(
            children: [
              Container(
                height: 244,
                color: AppTheme.colors.backgroundSecondary,
              ),
              Positioned(
                  top: 244,
                  child: Container(
                      height: 85,
                      width: screenWidth,
                      color: AppTheme.colors.backgroundPrimary)),
              Column(
                children: [
                  SizedBox(
                    height: 160,
                  ),
                  BottomAppBarWidget(),
                ],
              ),
            ],
          ),
          preferredSize: Size.fromHeight(294),
        );
}
