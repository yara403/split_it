import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/app_bar/app_bar_controller.dart';
import 'package:split_it/modules/home/widgets/app_bar/app_bar_state.dart';
import 'package:split_it/modules/home/widgets/info_card.dart';

class BottomAppBarWidget extends StatefulWidget {
  const BottomAppBarWidget({Key? key}) : super(key: key);
  @override
  _BottomAppBarWidgetState createState() => _BottomAppBarWidgetState();
}

class _BottomAppBarWidgetState extends State<BottomAppBarWidget> {
  late AppBarController controller;

  @override
  void initState() {
    controller = AppBarController();
    controller.listen((state) => setState(() {}));
    controller.loadDashboard();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    switch (controller.state.runtimeType) {
      case AppBarStateLoading:
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InfoCardWidget(
              value: 0,
              isLoading: true,
            ),
            InfoCardWidget(
              value: -1,
              isLoading: true,
            ),
          ],
        );
      case AppBarStateSuccess:
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InfoCardWidget(
              value: (controller.state as AppBarStateSuccess).dashboard.receive,
            ),
            InfoCardWidget(
              value: -(controller.state as AppBarStateSuccess).dashboard.send,
            ),
          ],
        );
      case AppBarStateFailure:
        return Center(
          child: Text((controller.state as AppBarStateFailure).message),
        );
      default:
        return Container();
    }
  }
}
