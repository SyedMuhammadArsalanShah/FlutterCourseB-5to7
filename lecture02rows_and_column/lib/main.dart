import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TopicOne());
  }
}

class TopicOne extends StatefulWidget {
  const TopicOne({super.key});

  @override
  State<TopicOne> createState() => _TopicOneState();
}

class _TopicOneState extends State<TopicOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Abdul Kabeer"),
            Text("Annum"),
            Text("Arham"),
            Text("Christi"),
            Text("Kaif"),
            ElevatedButton(onPressed: (){}, child:Text("Next")),
            ElevatedButton(onPressed: (){}, child:Text("Next1")),
            ElevatedButton(onPressed: (){}, child:Text("Next2")),
            ElevatedButton(onPressed: (){}, child:Text("Next3")),
            ElevatedButton(onPressed: (){}, child:Text("Next4")),
            ElevatedButton(onPressed: (){}, child:Text("Next4")),
            ElevatedButton(onPressed: (){}, child:Text("Next4")),
            ElevatedButton(onPressed: (){}, child:Text("Next4")),
            ElevatedButton(onPressed: (){}, child:Text("Next4")),
            ElevatedButton(onPressed: (){}, child:Text("Next4")),
            ElevatedButton(onPressed: (){}, child:Text("Next4")),
            ElevatedButton(onPressed: (){}, child:Text("Next4")),
            ElevatedButton(onPressed: (){}, child:Text("Next4")),
            ElevatedButton(onPressed: (){}, child:Text("Next4")),
            ElevatedButton(onPressed: (){}, child:Text("Next4")),
            ElevatedButton(onPressed: (){}, child:Text("Next4")),
    
            ElevatedButton(onPressed: (){}, child:Text("Next4")),
       
            ElevatedButton(onPressed: (){}, child:Text("Next4")),
            ElevatedButton(onPressed: (){}, child:Text("Finish")),
          ],
        ),
      ),
    );
  }
}


class TopicTwo extends StatefulWidget {
  const TopicTwo({super.key});

  @override
  State<TopicTwo> createState() => _TopicTwoState();
}

class _TopicTwoState extends State<TopicTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Abdul Kabeer"),
            Text("Annum"),
            Text("Arham"),
            Text("Christi"),
            Text("Kaif"),
            ElevatedButton(onPressed: (){}, child:Text("Next"))
          ],
        ),
      ),
    );
 
  }
}