import 'package:flutter/material.dart';

class BuilderListView extends StatelessWidget {
  BuilderListView({super.key});

  final growableList = List<int>.generate(100, (index) => ++index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Builder Example'),
      ),
      body: ListView.builder(
        itemCount: growableList.length,
        itemBuilder: (context, index) {
          final data = growableList[index];
          return Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text(
                '$data',
                style: const TextStyle(fontSize: 24),
              ),
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: BuilderListView(),
  ));
}
