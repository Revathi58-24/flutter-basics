import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Row vs Column Alignment")),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              // ===== COLUMN EXAMPLE =====
              Text("Column"),
              Container(
                color: Colors.yellow[100],
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Vertical
                  crossAxisAlignment: CrossAxisAlignment.end,        // Horizontal
                  children: [
                    Container(width: 80, height: 40, color: Colors.red),
                    Container(width: 80, height: 40, color: Colors.green),
                    Container(width: 80, height: 40, color: Colors.blue),
                  ],
                ),
              ),
              SizedBox(height: 40),

              // ===== ROW EXAMPLE =====
              Text("Row"),
              Container(
                color: Colors.blue[50],
                height: 120,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround, // Horizontal
                  crossAxisAlignment: CrossAxisAlignment.start,     // Vertical
                  children: [
                    Container(width: 60, height: 60, color: Colors.red),
                    Container(width: 60, height: 90, color: Colors.green),
                    Container(width: 60, height: 40, color: Colors.blue),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// MainAxisAlignment - align children along the main axis of a Row or Column.
// Row: The main axis is horizontal, so MainAxisAlignment controls the horizontal alignment of the children.
// Column: The main axis is vertical, so it controls the vertical alignment of the children.
// CrossAxisAlignment - align children along the cross axis of a Row or Column.
// Row: The cross axis is vertical, so CrossAxisAlignment controls the vertical alignment of the children.
// Column: The cross axis is horizontal, so it controls the horizontal alignment of the children.
