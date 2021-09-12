import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TODOアプリ MVVMアーキテクチャ"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'TodoリストアプリをMVVMアーキテクチャで実装していくよ',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        tooltip: 'Increment',
        icon: Icon(Icons.add),
        label: Text("Todoを作成"),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}