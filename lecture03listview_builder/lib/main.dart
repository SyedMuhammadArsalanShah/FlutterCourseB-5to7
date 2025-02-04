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
      home: TopicOne(),
    );
  }
}

class TopicOne extends StatefulWidget {
  const TopicOne({super.key});

  @override
  State<TopicOne> createState() => _TopicOneState();
}

class _TopicOneState extends State<TopicOne> {
  List studentsName = ["Arham", "Anum", "Christi", "Kaif", "Kabeer Bhai"];
  List age = ["20", "40", "30", "22", "50"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: studentsName.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(child: Text("${index + 1}")),
          title: Text(studentsName[index]),
          subtitle: Text(age[index]),
          trailing: Text("21"),
        );
      },
    ));
  }
}
