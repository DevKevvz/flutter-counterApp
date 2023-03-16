import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;

  void increment() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const title = TextStyle(fontSize: 35);
    const subTitle = TextStyle(fontSize: 30, color: Colors.green);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Numero de Clicks',
              style: title,
            ),
            Text(
              '$counter',
              style: subTitle,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomActionButtons(
        decreaseFn: decrease,
        incrementFn: increment,
        resentFn: reset,
      ),
    );
  }
}

class CustomActionButtons extends StatelessWidget {
  final Function incrementFn;
  final Function decreaseFn;
  final Function resentFn;
  const CustomActionButtons({
    Key? key,
    required this.incrementFn,
    required this.decreaseFn,
    required this.resentFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
            onPressed: () => decreaseFn(), child: const Icon(Icons.remove)),
        FloatingActionButton(
            onPressed: () => resentFn(),
            child: const Icon(Icons.cleaning_services)),
        FloatingActionButton(
          onPressed: () => incrementFn(),
          child: const Icon(Icons.add),
        )
      ],
    );
  }
}
