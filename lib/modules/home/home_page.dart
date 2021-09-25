import 'package:flutter/material.dart';
import 'package:split_it/modules/home/home_controller.dart';
import 'package:split_it/modules/home/home_state.dart';
import 'package:split_it/modules/home/widgets/app_bar/sliver_app_bar.dart';
import 'package:split_it/modules/home/widgets/event_tile.dart';
import 'package:split_it/modules/login/models/user_model.dart';
import 'package:split_it/shared/models/event_model.dart';
import 'package:split_it/theme/app_theme.dart';

//HomePage se comporta como observer
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeController controller;

  @override
  initState() {
    controller = HomeController(); //cria uma instância do subject
    controller.listen((state) =>
        setState(() {})); //se adiciona como observador das mudanças de estado
    controller.loadEvents();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final UserModel user =
        ModalRoute.of(context)!.settings.arguments as UserModel;
    return Scaffold(
      backgroundColor: AppTheme.colors.backgroundPrimary,
      body: CustomScrollView(
        slivers: [
          SliverAppBarWidget(user: user),
          if (controller.state is HomeStateLoading) ...[
            SliverPadding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              sliver: SliverList(
                delegate: SliverChildListDelegate.fixed(List.generate(
                    2,
                    (index) =>
                        EventTileWidget(isLoading: true, event: EventModel()))),
              ),
            ),
          ] else if (controller.state is HomeStateSuccess) ...[
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (_, int index) {
                    return EventTileWidget(
                        event: (controller.state as HomeStateSuccess)
                            .events[index]);
                  },
                  childCount:
                      (controller.state as HomeStateSuccess).events.length,
                ),
              ),
            ),
          ] else if (controller.state is HomeStateFailure) ...[
            SliverList(
              delegate: SliverChildListDelegate.fixed([
                Center(
                  child: Text((controller.state as HomeStateFailure).message),
                ),
              ]),
            )
          ] else ...[
            SliverList(delegate: SliverChildListDelegate.fixed([Container()]))
          ]
        ],
      ),
    );
  }
}
