import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/page/show.dart';
import 'package:counter_7/page/mywatchlist.dart';
import 'package:counter_7/model/mywatchlistmodel.dart';

class MyDetailPage extends StatefulWidget {
    const MyDetailPage({super.key, required this.watchlistModel});
    final Mywatchlistmode watchlistModel;

    @override
    State<MyDetailPage> createState() => _MyDetailPageState(watchlistModel);
}

class _MyDetailPageState extends State<MyDetailPage> {
    Mywatchlistmode model;
    _MyDetailPageState(this.model);
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Detail Film'),
            ),
            body: Column(
                children: [
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                            child: Text(
                                model.fields.title,
                                style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                ),
                            ),
                        ),  
                    ),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(10,20,10,10),
                        child: Row(
                            children: [
                                Text(
                                "Release Date: ",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                                ),
                                Text(
                                '${model.fields.releaseDate}',
                                style: const TextStyle(fontSize: 14),
                                ),
                            ],
                        ),
                    ),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(10,10,10,10),
                        child: Row(
                        children: [
                            const Text(
                                "Rating: ",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Text(
                                '${model.fields.rating}',
                                style: const TextStyle(fontSize: 14),
                            ),
                        ],
                        ),
                    ),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(10,10,10,10),
                        child: Row(
                        children: [
                            Text(
                            "Status: ",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Text(
                            model.fields.watched.toString().split(".").last.toLowerCase().split("_").first,
                            style: const TextStyle(fontSize: 14),
                            ),
                        ],
                        ),
                    ),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(10,10,10,10),
                        child: Row(
                        children: [
                            Text(
                            "Review: ",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Flexible(
                            child: Text(
                                model.fields.review,
                                style: const TextStyle(fontSize: 14),
                            ),
                            ),
                        ],
                        ),
                    ),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(10,70,10,10),
                        child: TextButton(
                            onPressed: (){
                                Navigator.pop(context);
                            },
                            child: Text(
                                "Back",
                            ),
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.blue,
                                primary: Colors.white,
                            ),
                        ),
                    ),
                ],
            ),
        );
    }
}
