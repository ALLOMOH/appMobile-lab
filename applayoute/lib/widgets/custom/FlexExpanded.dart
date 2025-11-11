import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Flexexpanded extends StatelessWidget {
  const Flexexpanded({super.key});

  @override
  build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: FlutterLogo()),
        Expanded(flex: 2, child: FlutterLogo()),
        Expanded(child: FlutterLogo()),
      ],
    );
  }
}
