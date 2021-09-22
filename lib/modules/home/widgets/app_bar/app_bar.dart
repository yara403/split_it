import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/add_button.dart';
import 'package:split_it/modules/home/widgets/bottom_app_bar/bottom_app_bar.dart';

import 'package:split_it/modules/login/models/user_model.dart';
import 'package:split_it/theme/app_theme.dart';

class AppBarWidget extends PreferredSize {
  final UserModel user;
  final VoidCallback onTapAddButton;
  AppBarWidget({
    required this.user,
    required this.onTapAddButton,
  }) : super(
            child: Stack(
              children: [
                Container(
                  height: 244,
                  color: AppTheme.colors.backgroundSecondary,
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        top: 64,
                      ),
                      child: ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            user.photoUrl!,
                          ),
                        ),
                        title: Text(
                          user.name!,
                          style: AppTheme.textStyles.appBar,
                        ),
                        trailing: AddButtonWidget(
                          onTap: onTapAddButton,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    BottomAppBarWidget(),
                  ],
                ),
              ],
            ),
            preferredSize: Size.fromHeight(294));
}
