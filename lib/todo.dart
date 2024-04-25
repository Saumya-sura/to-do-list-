// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

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
  const MYHOME({Key? key}) : super(key: key);

  @override
  State<MYHOME> createState() => _MYHOMEState();
}

class _MYHOMEState extends State<MYHOME> {
  List<String> todoo = [];
  String newtodo = ""; // Define newtodo here

  void todo() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("TODO"),
          content: TextField(
            onChanged: (value) {
              setState(() {
                newtodo = value; // Update newtodo here
              });
            },
          ),
          actions: [
            ElevatedButton(onPressed: (){
              setState(() {
                todoo.add(newtodo); // Add newtodo to todoo here
              });
            }, child: Text("ADD"))
          ],
        );
      },
    );
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TODO Page'),
        actions: [
          IconButton(
            icon: Icon(Icons.calendar_today),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: todoo.length,
        itemBuilder: (context, index) {
          return Card(

            child: ListTile(
              title: Text(
                todoo[index],
                style: TextStyle(fontSize: 18),
              ),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  setState(() {
                    todoo.removeAt(index);
                  });
                },
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: todo, 
        tooltip: 'Add Todo',
        child: const Icon(Icons.add),
      ),
    );
  }
}
