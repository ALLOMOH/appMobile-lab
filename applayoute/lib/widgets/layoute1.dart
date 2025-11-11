import 'package:flutter/material.dart';
import 'custom/ContainerCustome.dart';

class Layoute1 extends StatelessWidget {
  const Layoute1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
      ContainerCustome(),
      ContainerCustome(),
      ContainerCustome(),
    ],);
  }
}