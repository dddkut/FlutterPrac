import 'package:flutter/material.dart';
import 'package:flutter_hello_world/first_page.dart';
import 'package:flutter_hello_world/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => const FirstPage(title: 'FirstPage'),
        '/second': (BuildContext context) =>
            const SecondPage(title: 'SecondPage')
      },
      // home: const MyHomePage(title: 'Counter'),
      // home: const SecondPage(title: 'TextField'),
    );
  }
}
