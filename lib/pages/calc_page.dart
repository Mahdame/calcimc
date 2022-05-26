import 'package:flutter/material.dart';

import '../widgets/reusable_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calculadora de IMC',
          style: TextStyle(
              fontSize: 30, color: Colors.white, fontFamily: 'Pacifico'),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: Color(0xff1d1e33),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: Color(0xff1d1e33),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: Color(0xff1d1e33),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: Color(0xff1d1e33),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: Color(0xff1d1e33),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
