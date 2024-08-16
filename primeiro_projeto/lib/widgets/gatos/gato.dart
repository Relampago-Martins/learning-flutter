import 'package:flutter/material.dart';

class Gato extends StatelessWidget {
  final String href;

  const Gato({super.key, required this.href});

  @override
  Widget build(BuildContext context) {
    print('Gato $href');
    return Image.network(
      href,
      alignment: Alignment.bottomCenter,
      fit: BoxFit.fitHeight,
    );
  }
}
