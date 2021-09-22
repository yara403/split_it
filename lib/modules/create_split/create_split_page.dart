import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/create_split_controller.dart';
import 'package:split_it/modules/create_split/steps/one/step_one_page.dart';
import 'package:split_it/modules/create_split/steps/three/step_three_page.dart';
import 'package:split_it/modules/create_split/steps/two/step_two_page.dart';
import 'package:split_it/modules/create_split/widgets/bottom_stepper_bar.dart';
import 'package:split_it/modules/create_split/widgets/create_split_appbar.dart';
import 'package:split_it/theme/app_theme.dart';

class CreateSplitPage extends StatefulWidget {
  const CreateSplitPage({Key? key}) : super(key: key);

  @override
  _CreateSplitPageState createState() => _CreateSplitPageState();
}

class _CreateSplitPageState extends State<CreateSplitPage> {
  final controller = CreateSplitController();
  late List<Widget> pages;
  var index = 0;

  @override
  initState() {
    pages = [
      StepOnePage(onChange: (value) {
        controller.setEventName(value);
        setState(() {});
      }),
      StepTwoPage(),
      StepThreePage(),
    ];
    super.initState();
  }

  nextPage() {
    if (index < 2) {
      index++;
      setState(() {});
    }
  }

  backPage() {
    if (index > 0) {
      index--;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.backgroundPrimary,
      appBar: CreateSplitAppBarWidget(
          actualPage: index, size: pages.length, onPress: backPage),
      body: pages[index],
      bottomNavigationBar: BottomStepperBarWidget(
        onContinue: nextPage,
        onCancel: () {},
        enabledButtons: controller.isValid(),
      ),
    );
  }
}
