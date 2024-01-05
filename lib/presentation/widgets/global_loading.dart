import 'package:flutter/material.dart';

class GlobalLoading extends StatelessWidget {
  const GlobalLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: SizedBox(
            width: 24,
            height: 24,
            child: CircularProgressIndicator.adaptive()));
  }
}
