import 'dart:async';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "sayaç",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: LessonOne(),
    );
  }
}

class LessonOne extends StatefulWidget {
  const LessonOne({super.key});
  @override
  State<LessonOne> createState() => _LessonOneState();
}

class _LessonOneState extends State<LessonOne> {
  int sayi = 0;
  Color renk = Colors.lightGreen;
  Color renk2 = Colors.green;
  int animationtime = 500;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    Timer.periodic(Duration(milliseconds: 500), (timer) {
      setState(() {
        sayi = ++sayi;
        /*renk = Colors.primaries[Random().nextInt(Colors.primaries.length)];
        renk2 = Colors.primaries[Random().nextInt(Colors.primaries.length)];*/
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("FloatinActionButton"),
        backgroundColor: renk2,
      ),
      backgroundColor: renk,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /* Text(
              "$sayi",
              style: TextStyle(fontSize: 45),
            ), */
            //Container
            AnimatedContainer(
              //milliseconds: 3000
              duration: Duration(milliseconds: animationtime),
              height: 125,
              width: 125,
              //color: renk,
              alignment: Alignment.center,
              child: Text(
                "$sayi",
                style: TextStyle(fontSize: 45, color: Colors.red),
              ),
              decoration: BoxDecoration(
                color: renk,
                border: Border.all(color: Colors.black),
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
                animationtime = animationtime - 500;
                /* renk =
                    Colors.primaries[Random().nextInt(Colors.primaries.length)];
                renk2 =
                    Colors.primaries[Random().nextInt(Colors.primaries.length)]; */
              });
            },
            tooltip: 'Increment',
            child: const Icon(Icons.remove),
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                sayi = ++sayi;
                animationtime = animationtime + 500;
                /*renk =
                    Colors.primaries[Random().nextInt(Colors.primaries.length)];
                renk2 =
                    Colors.primaries[Random().nextInt(Colors.primaries.length)];*/
              });
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
            backgroundColor: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
