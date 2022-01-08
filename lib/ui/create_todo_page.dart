import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateTodoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.subject),
                labelText: "Title",
                hintText: "Title",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              minLines: 3,
              maxLines: 10,
              decoration: InputDecoration(
                icon: Icon(Icons.note),
                labelText: "Memo",
                hintText: "Memo",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
