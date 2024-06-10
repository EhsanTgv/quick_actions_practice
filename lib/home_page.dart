import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  child: const Text('First page'),
                  onPressed: () => Navigator.pushNamed(context, '/firstpage')),
              ElevatedButton(
                  child: const Text('Second page'),
                  onPressed: () => Navigator.pushNamed(context, '/secondpage')),
            ],
          )),
    );
  }
}