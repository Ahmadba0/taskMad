// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/core/function/dialog_function.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  '${MediaQuery.of(context).size.width} - ${MediaQuery.of(context).size.hashCode}'),
              ElevatedButton(
                  onPressed: () {
                    showMyDialog(context, false, () {}, () {}, 'ERROR',
                        'No internet connection', AppColors.red);
                  },
                  child: Text('show')),
            ],
          ),
        ),
      ),
    );
  }
}
