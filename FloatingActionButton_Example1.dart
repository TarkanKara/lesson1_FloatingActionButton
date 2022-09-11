import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter",
      debugShowCheckedModeBanner: false,
      home: _Lesson_Example(),
    );
  }
}

class _Lesson_Example extends StatefulWidget {
  const _Lesson_Example({super.key});

  @override
  State<_Lesson_Example> createState() => __Lesson_ExampleState();
}

class __Lesson_ExampleState extends State<_Lesson_Example> {
  int sayi = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson_Example"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              //color: Colors.yellow,
              alignment: Alignment.center,
              child: Text(
                "$sayi",
                style: TextStyle(fontSize: 30),
              ),
              decoration: BoxDecoration(
                color: Colors.yellow,
                border: Border.all(color: Colors.red),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                sayi = --sayi;
              });
            },
            tooltip: "Azalt",
            child: const Icon(Icons.remove),
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                sayi = ++sayi;
              });
            },
            tooltip: "Artır",
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
