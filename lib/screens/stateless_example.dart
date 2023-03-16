import 'package:flutter/material.dart';

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    const title = TextStyle(fontSize: 35);
    const subTitle = TextStyle(fontSize: 30, color: Colors.green);

    return Scaffold(
      appBar: AppBar(
        title: const Text('StateLessExample'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Numero de Clicks',
              style: title,
            ),
            Text(
              'Hello',
              style: subTitle,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            print('Hello world');
            // print('Helooo! $counter');
          }),
    );
  }
}
