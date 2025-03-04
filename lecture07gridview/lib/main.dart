import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ThirdScreen(),
    );
  }
}

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  var clrs = [
    Colors.amber,
    Colors.red,
    Colors.teal,
    Colors.indigo,
    Colors.blue,
    Colors.brown
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(
        maxCrossAxisExtent: 200,
        children: [
          Container(
            color: clrs[0],
          ),
          Container(
            color: clrs[1],
          ),
          Container(
            color: clrs[2],
          ),
          Container(
            color: clrs[3],
          ),
          Container(
            color: clrs[4],
          ),
          Container(
            color: clrs[5],
          ),
        ],
      ),
    );
  }
}

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  var clrs = [
    Colors.amber,
    Colors.red,
    Colors.teal,
    Colors.indigo,
    Colors.blue,
    Colors.brown
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 3,
        children: [
          Container(
            color: clrs[0],
          ),
          Container(
            color: clrs[1],
          ),
          Container(
            color: clrs[2],
          ),
          Container(
            color: clrs[3],
          ),
          Container(
            color: clrs[4],
          ),
          Container(
            color: clrs[5],
          ),
        ],
      ),
    );
  }
}

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  var clrs = [
    Colors.amber,
    Colors.red,
    Colors.teal,
    Colors.indigo,
    Colors.blue,
    Colors.brown,
       Colors.teal,
    Colors.indigo,
    Colors.blue,
       Colors.teal,
    Colors.indigo,
    Colors.blue,
       Colors.teal,
    Colors.indigo,
    Colors.blue,   Colors.teal,
    Colors.indigo,
    Colors.blue,   Colors.teal,
    Colors.indigo,
    Colors.blue,   Colors.teal,
    Colors.indigo,
    Colors.blue,   Colors.teal,
    Colors.indigo,
    Colors.blue,
    Colors.blue
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        
            // SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100),
        itemCount: clrs.length,
        itemBuilder: (context, index) {
          return Container(
            color: clrs[index],
          );
        },
      ),
    );
  }
}
