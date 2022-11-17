import 'package:flutter/material.dart';
import 'package:counter_7/form.dart';
import 'package:counter_7/show.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Program Counter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  final String title = 'Tugas PBP';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _oddOrEven = "Genap"; // diset ke genap krn 0 itu genap

  // fungsi untuk increment counter
  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter % 2 == 0){
        _oddOrEven = "Genap";
      } else {
        _oddOrEven = "Ganjil";
      }
    });
  }

  // fungsi untuk decrement counter
  void _decrementCounter() {
    setState(() {
      _counter--;
      if (_counter % 2 == 0){
        _oddOrEven = "Genap";
      } else {
        _oddOrEven = "Ganjil";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      // Tugas 8: menambahkan drawer menu
      drawer: Drawer(
        child: Column(
          children: [
            // Tugas 8: Menambahkan clickable menu
            ListTile(
              title: const Text('Counter'),
              onTap: () {
                // Tugas 8: Route menu ke halaman utama
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              },
            ),
            ListTile(
              title: const Text('Tambah Budget'),
              onTap: () {
                // Tugas 8: Route menu ke halaman form
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyFormPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Data Budget'),
              onTap: () {
                // Tugas 8: Route menu ke halaman form
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyShowPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _oddOrEven,
              style: _oddOrEven == "Ganjil" ? TextStyle(color: Colors.blue) : TextStyle(color: Colors.red)
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        padding: const EdgeInsets.fromLTRB(43, 10, 10, 10),
        child: Row( 
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              // kalau counternya di 0, button decrement diubah jadi string kosong
              child: (_counter == 0) ? Text("") : FloatingActionButton(
                onPressed: _decrementCounter,
                tooltip: 'Decrement',
                child: const Icon(Icons.remove),
                ),
            ),
            Container(
              child: FloatingActionButton(
                onPressed: _incrementCounter,
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
            ),
          ], 
        ),
      ),
    );
  }
}
