import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key, required this.title});

  final String title;

  @override
  State<SecondPage> createState() => _SecondPage();
}

class _SecondPage extends State<SecondPage> {
  String inputText = '';
  String showText = '';

  void _setShowText() {
    setState(() {
      showText = inputText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('secondPage'),
        ),
        body: Column(
          children: [
            TextField(
              onChanged: ((value) {
                setState(() {
                  inputText = value;
                });
              }),
            ),
            IconButton(
                onPressed: () {
                  _setShowText();
                },
                icon: const Icon(Icons.arrow_downward)),
            Text(showText),
            // TextButton(
            //     child: const Text("移動"),
            //     onPressed: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute<void>(
            //             builder: (BuildContext context) =>
            //                 const FirstPage(title: "firstPage")),
            //       );
            //     }),
          ],
        ));
  }
}
