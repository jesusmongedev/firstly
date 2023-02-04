import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My app',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: 'JMongeDev'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: theme.colorScheme.primary,
          title: Text(title),
        ),
        body: Center(
          child: Container(
            alignment: Alignment.center,
            width: 200.0,
            height: 200.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: theme.colorScheme.primary,
            ),
            child: Text(
              'Container',
              style:
                  theme.textTheme.headlineMedium!.copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
