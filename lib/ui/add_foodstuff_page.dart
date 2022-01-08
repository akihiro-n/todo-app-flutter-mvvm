import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddFoodStuff extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("食材を追加する"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "食材", hintText: "もやしとキャベツのパック"),
                  ),
                ),
                flex: 3,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 16, 16, 16),
                  child: TextField(
                    decoration:
                        InputDecoration(labelText: "値段", hintText: "300"),
                  ),
                ),
                flex: 1,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 16, 16, 16),
                child: Text("円"),
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: EdgeInsets.fromLTRB(0, 0, 16, 16),
              child: TextButton.icon(
                onPressed: () {},
                label: Icon(Icons.add),
                icon: Text("追加"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
