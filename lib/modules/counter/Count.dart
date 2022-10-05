// ignore: file_names
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CountScreen extends StatefulWidget {
  const CountScreen({Key? key}) : super(key: key);
  @override
  State<CountScreen> createState() => _CountScreenState();
}

class _CountScreenState extends State<CountScreen> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Row(
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                if (count > 0) {
                  count--;
                }
              });
            },
            child: Icon(Icons.remove),
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            '${count}',
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(
            width: 10.0,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                count++;
              });
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
