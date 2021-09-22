import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/widgets/step_input_text.dart';
import 'package:split_it/modules/create_split/widgets/step_title.dart';

class StepThreePage extends StatelessWidget {
  const StepThreePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StepTitleWidget(
          title: "Qual ou quais",
          subTitle: "ítens você quer dividir?",
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text("1"),
            ),
            Expanded(
              flex: 3,
              child: StepInputTextWidget(
                onChange: (value) {},
                hintText: "Ex: Picanha",
                align: TextAlign.start,
                padding: EdgeInsets.zero,
              ),
            ),
            Expanded(
              child: StepInputTextWidget(
                onChange: (value) {},
                hintText: "R\$0,00",
                align: TextAlign.start,
                padding: EdgeInsets.zero,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: IconButton(icon: Icon(Icons.delete), onPressed: () {}),
            ),
          ],
        ),
      ],
    );
  }
}
