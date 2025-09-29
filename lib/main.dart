import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Calculator App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String displayText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Container(
            margin: const EdgeInsets.all(12.0),
            padding: const EdgeInsets.all(16.0),
            alignment: Alignment.centerRight,
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 4.0, // thick border
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(
              displayText,
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    displayText += "0";
                  });
                },
                child: const Text("0"),
              ),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    displayText += "1";
                  });
                },
                child: const Text("1"),
              ),              
              
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    displayText += "2";
                  });
                },
                child: const Text("2"),
              ),              

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    displayText += "3";
                  });
                },
                child: const Text("3"),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [   

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    displayText += "4";
                  });
                },
                child: const Text("4"),
              ),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    displayText += "5";
                  });
                },
                child: const Text("5"),
              ),              
              
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    displayText += "6";
                  });
                },
                child: const Text("6"),
              ),              

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    displayText += "7";
                  });
                },
                child: const Text("7"),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    displayText += "8";
                  });
                },
                child: const Text("8"),
              ),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    displayText += "9";
                  });
                },
                child: const Text("9"),
              ),              
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    displayText += "+";
                  });
                },
                child: const Text("+"),
              ),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    displayText += "-";
                  });
                },
                child: const Text("-"),
              ),              
              
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    displayText += "*";
                  });
                },
                child: const Text("*"),
              ),              

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    displayText += "/";
                  });
                },
                child: const Text("/"),
              ),
            ],
          ),

          ElevatedButton(
            onPressed: () {
              setState(() {
                displayText = "";
              });
            },
            child: const Text("Clear"),
          ),
        ],
      ),
    );
  }
}
