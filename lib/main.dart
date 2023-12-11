import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [Provider.value(value: Api())],
      child: MaterialApp(
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:const Text(
            "Demo",
            style:  TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body:  Center(child: Text(context.watch<Api>().LoggedIn)));
  }
}

class Api {
  String get LoggedIn => "I am logged";
}

class HomeModel extends ChangeNotifier {
  final Api api;

  HomeModel({required this.api});
}
