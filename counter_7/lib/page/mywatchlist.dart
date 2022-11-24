import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/page/show.dart';
import 'package:counter_7/page/detail.dart';
import 'package:counter_7/model/mywatchlistmodel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// Tugas 9 : membuat widget untuk myWatchList
class MyWatchListPage extends StatefulWidget {
    const MyWatchListPage({super.key});

    @override
    _MyWatchListPageState createState() => _MyWatchListPageState();
}

class _MyWatchListPageState extends State<MyWatchListPage> {
    
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
            title: Text('My Watch List'),
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
                        ListTile(
                            title: const Text('My Watch List'),
                            onTap: () {
                                // Tugas 9: Route menu ke halaman myWatchList
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(builder: (context) => const MyWatchListPage()),
                                );
                            },
                        ),
                    ],
                ),
            ),
            // Tugas 9: Ambil data buat ditampilin
            body: FutureBuilder(
                future: Mywatchlistmode.fetchMyWatchList(),
                builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.data == null){
                        return const Center(
                            child: CircularProgressIndicator()
                        );
                    } else {
                        if (!snapshot.hasData) {
                            return Column(
                                children : const [
                                    Text(
                                        "Tidak ada watch list :(",
                                        style: TextStyle(
                                            color: Color(0xff59A5D8),
                                            fontSize: 20
                                        ),
                                    ),
                                    SizedBox(height: 9),
                                ],
                            );
                        } else {
                            return ListView.builder(
                                itemCount: snapshot.data!.length,
                                itemBuilder: (_, index)=> InkWell(
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => MyDetailPage(watchlistModel: snapshot.data![index])
                                        ),
                                    ),
                                    child: Container(
                                        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                                        padding: const EdgeInsets.all(20.0),
                                        decoration: BoxDecoration(
                                            color:Colors.white,
                                            borderRadius: BorderRadius.circular(15.0),
                                            boxShadow: const [
                                                BoxShadow(
                                                    color: Colors.black,
                                                    blurRadius: 2.0
                                                )
                                            ],
                                        ),
                                        child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                                Text(
                                                    "${snapshot.data![index].fields.title}",
                                                    style: const TextStyle(
                                                        fontSize: 18.0,
                                                        fontWeight: FontWeight.bold,
                                                    ),
                                                ),
                                                const SizedBox(height: 10),
                                            ],
                                        ),
                                    ),
                                )
                            );
                        }
                    }
                }
            )
        );
    }
}