import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ball Shuffle",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> balls = ['red.png', 'blue.png', 'green.jpg'];

  void shuffleBalls() {
    balls.shuffle();
    setState(() {}); // Trigger rebuild
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
          title: const Text("Shuffle ball"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (var item in balls)
                  Image.asset(
                    "assets/appimages/$item",
                    height: 100,
                    width: 100,
                  ),
              ],
            ),
            ElevatedButton(
              onPressed: shuffleBalls,
              child: const Text('Shuffle', style: TextStyle(fontSize: 18)),
            ),
          ],
        ));
  }
}
