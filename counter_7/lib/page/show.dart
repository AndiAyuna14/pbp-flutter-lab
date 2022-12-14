import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/form.dart' as form;
import 'package:counter_7/page/form.dart';
import 'package:counter_7/page/mywatchlist.dart';


var formData = form.budgetList;

class MyShowPage extends StatefulWidget {
    const MyShowPage({super.key});

    @override
    State<MyShowPage> createState() => _MyShowPageState();
}

class _MyShowPageState extends State<MyShowPage> {

    void showData(){

    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Budget'),
      ),

      // Menambahkan drawer menu
      drawer: Drawer(
          child: Column(
            children: [
              // Menambahkan clickable menu
              ListTile(
                title: const Text('Counter'),
                onTap: () {
                  // Route menu ke halaman utama
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyHomePage()),
                  );
                },
              ),
              ListTile(
                title: const Text('Tambah Budget'),
                onTap: () {
                  // Route menu ke halaman form
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyFormPage()),
                  );
                },
              ),
              ListTile(
                title: const Text('Data Budget'),
                onTap: () {
                  // Route menu ke halaman data
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyShowPage()),
                  );
                },
              ),
              ListTile(
                title: const Text('My Watch List'),
                onTap: () {
                  // Tugas 8: Route menu ke halaman myWatchList
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyWatchListPage()),
                  );
                },
              ),
            ],
          ),
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Show data in card right here
            for (int i=0; i < formData.length; i++)...[
              Container(
                child: Card(
                  elevation: 30,
                  shadowColor: Colors.blue,
                  color: Colors.white,
                  child: SizedBox(
                    width: 1250,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                            formData[i].judul,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                            ),
                          ),
                          ),

                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget> [
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    formData[i].nominal,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),                                  
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Text(
                                    formData[i].jenis,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),                                  
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ],
        ),
      ),
    );
  }
}