import 'package:flutter/material.dart';
import 'package:split_it/modules/home/home_controller.dart';
import 'package:split_it/modules/home/home_state.dart';
import 'package:split_it/modules/home/widgets/app_bar/app_bar.dart';
import 'package:split_it/modules/home/widgets/event_tile.dart';
import 'package:split_it/modules/login/models/user_model.dart';
import 'package:split_it/shared/models/event_model.dart';

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
      appBar: AppBarWidget(
        user: user,
        onTapAddButton: () {
          Navigator.pushNamed(context, "/create_split");
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Sempre que o Subject (controller) tem seu estado alterado, o observer (HomePage) é notificado e atualiza a tela
              if (controller.state is HomeStateLoading) ...[
                ...List.generate(
                    2,
                    (index) =>
                        EventTileWidget(isLoading: true, event: EventModel()))
              ] else if (controller.state is HomeStateSuccess)
                ...(controller.state as HomeStateSuccess)
                    .events
                    .map((e) => EventTileWidget(event: e))
              else if (controller.state is HomeStateFailure) ...[
                Center(
                  child: Text((controller.state as HomeStateFailure).message),
                )
              ] else
                Container(),
            ],
          ),
        ),
      ),
    );
  }
}
