import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;

  void handleIncrement() {
    setState(() {
      counter += 1;
    });

    print(counter);
  }

  void handleDecrement() {
    setState(() {
      counter--;
    });

    print(counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: handleIncrement,
        child: Icon(Icons.add),
        backgroundColor: Colors.grey.shade400,
        elevation: 0.0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("Counter"), Text("$counter")],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                        onPressed: handleDecrement, child: Text("Decrement")),
                    OutlinedButton(
                        onPressed: handleIncrement, child: Text("Increment"))
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
