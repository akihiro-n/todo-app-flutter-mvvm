import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:todo_mvvm_sample/ui/add_foodstuff_page.dart';
import 'package:todo_mvvm_sample/ui/create_todo_page.dart';

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
              'TodoリストアプリをMVVMアーキテクチャで実装していくよ。頑張ろう',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => AddFoodStuff(),
            ),
          );
        },
        tooltip: 'Increment',
        icon: Icon(Icons.add),
        label: Text("Todoを作成"),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
