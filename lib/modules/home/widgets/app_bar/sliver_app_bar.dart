import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/add_button.dart';
import 'package:split_it/modules/home/widgets/app_bar/app_bar.dart';
import 'package:split_it/modules/login/models/user_model.dart';
import 'package:split_it/theme/app_theme.dart';

class SliverAppBarWidget extends StatelessWidget {
  final UserModel user;
  const SliverAppBarWidget({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 294,
      collapsedHeight: 160,
      backgroundColor: AppTheme.colors.backgroundSecondary,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.only(top: 64),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  user.photoUrl!,
                ),
              ),
              title: Text(
                "${user.name!}",
                maxLines: 1,
                style: AppTheme.textStyles.appBar,
                textScaleFactor: 0.7,
              ),
              trailing: AddButtonWidget(
                onTap: () {
                  Navigator.pushNamed(context, "/create_split");
                },
              ),
            ),
            SizedBox(height: 40),
          ],
        ),
        background:
            AppBarWidget(screenWidth: MediaQuery.of(context).size.width),
      ),
    );
  }
}
