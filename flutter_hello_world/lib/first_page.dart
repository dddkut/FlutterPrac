import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key, required this.title});

  final String title;

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'aaa',
              style: TextStyle(
                  color: Colors.amber,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: const ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll<Color>(Colors.amber)),
                  onPressed: () {
                    _incrementCounter();
                  },
                  child: const Text(
                    'プラスする',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                TextButton(
                  style: const ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll<Color>(Colors.lightBlue)),
                  onPressed: () {
                    _decrementCounter();
                  },
                  child: const Text(
                    'マイナスする',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            TextButton(
              style: const ButtonStyle(
                  backgroundColor:
                      WidgetStatePropertyAll<Color>(Colors.lightGreen)),
              onPressed: () {
                _resetCounter();
              },
              child: const Text(
                'リセット',
                style: TextStyle(color: Colors.white),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/second");
                },
                child: const Text("セカンドページへ移動"))
            // ]),
          ],
        ),
      ),
    );
  }
}
