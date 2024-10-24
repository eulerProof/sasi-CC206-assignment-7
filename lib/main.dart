import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  // manage the sum section
  int sum = 0;
  int difference = 0;
  int product = 0;
  int quotient = 0;
  // either use a TextEditingController for each input field to get the value
  TextEditingController add1Controller = TextEditingController();
  TextEditingController add2Controller = TextEditingController();
  TextEditingController add3Controller = TextEditingController();
  TextEditingController add4Controller = TextEditingController();
  TextEditingController add5Controller = TextEditingController();
  TextEditingController add6Controller = TextEditingController();
  TextEditingController add7Controller = TextEditingController();
  TextEditingController add8Controller = TextEditingController();
  // or store each value in the state
  int firstAddNum = 0;
  int secondAddNum = 0;
  int subfirstAddNum = 0;
  int subsecondAddNum = 0;
  int multfirstAddNum = 0;
  int multsecondAddNum = 0;
  int divfirstAddNum = 0;
  int divsecondAddNum = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Unit 5 Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Add Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextField(
                  controller: add1Controller,
                  decoration: InputDecoration(labelText: "First Number"),
                  // update the firstAddNum state
                  onChanged: (value) {
                    setState(() {
                      firstAddNum = int.parse(value);
                    });
                  },
                ),
              ),
             
              Text(" + "),
              Expanded(
                child: TextField(
                  controller: add2Controller,
                  decoration: InputDecoration(labelText: "Second Number"),
                  onChanged: (value) {
                    setState(() {
                      secondAddNum = int.parse(value);
                    });
                  },
                ),
              ),

              Text(' = $sum   '),
              
              // 3.a Add an IconButton here
              IconButton.outlined(
                icon: Icon(Icons.add),
                onPressed: () {
                    setState(() {
                      sum = firstAddNum + secondAddNum;
                    });
                } 
              ),

              // b.b Add an button here
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 10),
                ),
                onPressed: () {
                    setState(() {
                      add1Controller.clear();
                      add2Controller.clear();
                      sum = 0;
                    });
                }, 
                child: Text("Clear Contents"),
              ),              
            ],
          ),

          // 3.c - Add the other operations
          // Minus Row
         Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextField(
                  controller: add3Controller,
                  decoration: InputDecoration(labelText: "First Number"),
                  // update the firstAddNum state
                  onChanged: (value) {
                    setState(() {
                      subfirstAddNum = int.parse(value);
                    });
                  },
                ),
              ),
             
              Text(" - "),
              Expanded(
                child: TextField(
                  controller: add4Controller,
                  decoration: InputDecoration(labelText: "Second Number"),
                  onChanged: (value) {
                    setState(() {
                      subsecondAddNum = int.parse(value);
                    });
                  },
                ),
              ),

              Text(' = $difference   '),
              
              // 3.a Add an IconButton here
              IconButton.outlined(
                icon: Icon(Icons.remove),
                onPressed: () {
                    setState(() {
                      difference = subfirstAddNum - subsecondAddNum;
                    });
                } 
              ),

              // b.b Add an button here
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 10),
                ),
                onPressed: () {
                    setState(() {
                      add3Controller.clear();
                      add4Controller.clear();
                      difference = 0;
                    });
                }, 
                child: Text("Clear Contents"),
              ),              
            ],
          ),
          // Multiplication Row
         Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextField(
                  controller: add5Controller,
                  decoration: InputDecoration(labelText: "First Number"),
                  // update the firstAddNum state
                  onChanged: (value) {
                    setState(() {
                      multfirstAddNum = int.parse(value);
                    });
                  },
                ),
              ),
             
              Text(" * "),
              Expanded(
                child: TextField(
                  controller: add6Controller,
                  decoration: InputDecoration(labelText: "Second Number"),
                  onChanged: (value) {
                    setState(() {
                      multsecondAddNum = int.parse(value);
                    });
                  },
                ),
              ),

              Text(' = $product   '),
              
              // 3.a Add an IconButton here
              IconButton.outlined(
                icon: Icon(Icons.clear),
                onPressed: () {
                    setState(() {
                      product = multfirstAddNum * multsecondAddNum;
                    });
                } 
              ),

              // b.b Add an button here
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 10),
                ),
                onPressed: () {
                    setState(() {
                      add5Controller.clear();
                      add6Controller.clear();
                      product = 0;
                    });
                }, 
                child: Text("Clear Contents"),
              ),              
            ],
          ),
          // Division Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextField(
                  controller: add7Controller,
                  decoration: InputDecoration(labelText: "First Number"),
                  // update the firstAddNum state
                  onChanged: (value) {
                    setState(() {
                      divfirstAddNum = int.parse(value);
                    });
                  },
                ),
              ),
             
              Text(" ÷ "),
              Expanded(
                child: TextField(
                  controller: add8Controller,
                  decoration: InputDecoration(labelText: "Second Number"),
                  onChanged: (value) {
                    setState(() {
                      divsecondAddNum = int.parse(value);
                    });
                  },
                ),
              ),

              Text(' = $quotient   '),
              
              // 3.a Add an IconButton here
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {
                    setState(() {
                      
                      quotient = divfirstAddNum ~/ divsecondAddNum;
                      
                    
                    });
                }, 
                child: Text("÷"),
              ),

              // b.b Add an button here
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 10),
                ),
                onPressed: () {
                    setState(() {
                      add7Controller.clear();
                      add8Controller.clear();
                      quotient = 0;
                    });
                }, 
                child: Text("Clear Contents"),
              ),              
            ],
          ),
        ],
      ),
    );
  }
}
