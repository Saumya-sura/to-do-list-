
// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

class TODO extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MYHOME(),

    );

   
  }
}

  class MYHOME extends StatefulWidget {
  const MYHOME({super.key});

  @override
  State<MYHOME> createState() => _MYHOMEState();
}

class _MYHOMEState extends State<MYHOME> {
  

  void todo()
  {
    setState(() {
       
       showDialog(context: context, builder: (BuildContext){
        String newtodo="";
        return AlertDialog(
          title: Text("TODO"),
          content: TextField(
            onChanged: (value){
              newtodo=value;
            },
          ),
        );
       });

    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('TODO Page'),
        actions: [
          IconButton(
            icon: Icon(Icons.calendar_today),
            onPressed: () {},
          ),
        ],
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: todo,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
