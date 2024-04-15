import 'package:flutter/material.dart';
import 'package:learn_english/views/animals.dart';
import 'package:learn_english/views/numbers.dart';
import 'package:learn_english/views/vowels.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          bottom: const TabBar(
            indicatorWeight: 4,
            tabs: [
              Tab(text: 'Bichos'),
              Tab(text: 'Números'),
              Tab(text: 'Vogais'),
            ],
          ),
        ),
        body: const SizedBox(
          width: double.infinity,
          child: TabBarView(
            children: [
              AnimalsView(),
              NumbersView(),
              VowelsView(),
            ],
          ),
        ),
      ),
    );
  }
}
