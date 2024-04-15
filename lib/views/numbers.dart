import 'package:flutter/material.dart';

class NumbersView extends StatefulWidget {
  const NumbersView({super.key});

  @override
  State<NumbersView> createState() => _NumbersViewState();
}

class _NumbersViewState extends State<NumbersView> {
  @override
  Widget build(BuildContext context) {
    return const Text('Números');
  }
}
