import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/pay_card.dart';
import 'package:split_it/modules/home/widgets/receive_card.dart';
import 'package:split_it/modules/login/models/user_model.dart';
import 'package:split_it/theme/app_theme.dart';

class AppBarWidget extends PreferredSize {
  final UserModel user;
  AppBarWidget({required this.user})
      : super(
          preferredSize: Size.fromHeight(288),
          child: Container(
            height: 288,
            child: Stack(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      gradient: AppTheme.gradients.backgroundAppBar),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 24, top: 56, right: 24, bottom: 96),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              child: Image.network(
                                user.photoUrl!,
                                height: 48,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Container(
                              width: 102,
                              height: 26,
                              child: RichText(
                                text: TextSpan(
                                    style: AppTheme.textStyles.header,
                                    children: [
                                      TextSpan(text: "Olá, "),
                                      TextSpan(
                                          text: "${user.name}",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700)),
                                    ]),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: AppTheme.colors.backgroundPrimary,
                                width: 1.5,
                              )),
                          width: 48,
                          height: 48,
                          child: Icon(
                            Icons.add,
                            color: AppTheme.colors.backgroundPrimary,
                            size: 13,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 128,
                  left: 24,
                  child: ReceiveCardWidget(),
                ),
                Positioned(
                  child: PayCardWidget(),
                  top: 128,
                  right: 24,
                )
              ],
            ),
          ),
        );
}
