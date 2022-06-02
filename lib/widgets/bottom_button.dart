import 'package:flutter/cupertino.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({@required this.onTap, @required this.buttonTitle});

  final VoidCallback? onTap;
  final String? buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: Text(
              '$buttonTitle',
              style: kButtonTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}
