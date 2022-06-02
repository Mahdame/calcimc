import 'package:calcimc/constants.dart';
import 'package:calcimc/widgets/bottom_button.dart';
import 'package:calcimc/widgets/reusable_card.dart';
import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  const Results(
      {Key? key, this.resultLabel, this.resultBMI, this.resultDescription})
      : super(key: key);

  final String? resultLabel;
  final String? resultBMI;
  final String? resultDescription;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calculadora de IMC',
          style: kAppBarTitleTextStyle,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Seu resultado',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '$resultLabel',
                    style: kResultLabelTextStyle,
                  ),
                  Text(
                    '$resultBMI',
                    style: kResultBMITextStyle,
                  ),
                  Text(
                    '$resultDescription',
                    style: kResultDescriptionTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonTitle: 'RECALCULAR',
          ),
        ],
      ),
    );
  }
}
