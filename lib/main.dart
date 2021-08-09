import 'dart:ffi';
import 'package:flutter/material.dart';
import 'ffi_bridge.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  final FFIBridge _ffiBridge = FFIBridge();
  void _show(double multiple) {
    showDialog(
        builder: (ctx) => AlertDialog(content: Text(multiple.toString())),
        context: context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                child: const Text('Temperature'),
                onPressed: () async {
                  _show(_ffiBridge.getadd(5.0, 500.0));
                }),
          ],
        ),
      ),
    );
  }
}