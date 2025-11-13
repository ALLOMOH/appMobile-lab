import 'package:flutter/material.dart';

class ContainerCustome extends StatelessWidget {
  const ContainerCustome({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
      width: 100,
      height: 100,
      decoration: ShapeDecoration(
        color: Colors.red,
        shape: const CircleBorder(),
        shadows: const [
          BoxShadow(
            color: Color.fromARGB(134, 0, 0, 0),
            blurRadius: 10.0,
            offset: Offset(2.0, 2.0),
          ),
        ],
      ),

      child: const Text('ContainerCustome'),
    );
  }
}
