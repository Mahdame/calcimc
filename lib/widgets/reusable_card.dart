import 'package:flutter/cupertino.dart';

class ReusableCard extends StatelessWidget {

  ReusableCard({required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}