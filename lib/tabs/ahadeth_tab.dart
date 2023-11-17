import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Ahadethtab extends StatelessWidget {
  const Ahadethtab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
    );
  }

  void loadHadeth() async {
    await rootBundle.loadString("assets/files/ahadeth.txt").then((
        value) => null).catchError((e) {
      print(e.toString());
    }
    );
  }
}
