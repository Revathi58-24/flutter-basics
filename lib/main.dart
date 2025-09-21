import 'package:flutter/material.dart'; // Importing Flutter Material package for UI components
// Entry point
void main() {
  runApp(MyApp()); // runApp loads MyApp widget as the root of the app
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes the debug banner
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Widgets Demo"), // AppBar title
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),

        // Body of the Scaffold where main content goes
        body: SingleChildScrollView( // Allows scrolling if content is long
          child: Padding(
            padding: EdgeInsets.all(16.0), // Adds space around content
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // ------------------- Container Example -------------------
                Text("1. Container Widget", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Container(
                  padding: EdgeInsets.all(20), // Inner space
                  margin: EdgeInsets.symmetric(vertical: 10), // Outer space
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text("This is text inside a Container", style: TextStyle(color: Colors.white)),
                ),

                // ------------------- Row Example -------------------
                Text("2. Row Widget", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Distributes space evenly
                  children: [
                    Icon(Icons.star, color: Colors.red, size: 40),
                    Icon(Icons.star, color: Colors.green, size: 40),
                    Icon(Icons.star, color: Colors.blue, size: 40),
                  ],
                ),
                SizedBox(height: 20), // Empty space between widgets

                // ------------------- Column Example -------------------
                Text("3. Column Widget", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Item 1"),
                    Text("Item 2"),
                    Text("Item 3"),
                  ],
                ),
                SizedBox(height: 20),

                // ------------------- Text Example -------------------
                Text("4. Text Widget", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text(
                  "Hello, this is a styled text!",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.purple),
                ),
                SizedBox(height: 20),

                // ------------------- TextField Example -------------------
                Text("5. TextField Widget", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter your name",
                    prefixIcon: Icon(Icons.person), // Icon inside TextField
                  ),
                ),
                SizedBox(height: 20),

                // ------------------- Button Examples -------------------
                Text("6. Button Widgets", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ElevatedButton(
                  onPressed: () {
                    print("Elevated Button Clicked!");
                  },
                  child: Text("Elevated Button"),
                ),
                TextButton(
                  onPressed: () {
                    print("Text Button Clicked!");
                  },
                  child: Text("Text Button"),
                ),
                IconButton(
                  onPressed: () {
                    print("Icon Button Clicked!");
                  },
                  icon: Icon(Icons.thumb_up),
                  color: Colors.blue,
                ),
                SizedBox(height: 20),

                // ------------------- Stack Example -------------------
                Text("7. Stack Widget", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Stack(
                  children: [
                    Container(width: 200, height: 200, color: Colors.orange[500]), // Base container
                    Positioned(
                      left: 50,
                      top: 50,
                      child: Text("On Top", style: TextStyle(fontSize: 18, color: Colors.white)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
