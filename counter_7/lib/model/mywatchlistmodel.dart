// To parse this JSON data, do
//
//     final mywatchlistmode = mywatchlistmodeFromJson(jsonString);

import 'dart:convert';
import 'package:http/http.dart' as http;

List<Mywatchlistmode> mywatchlistmodeFromJson(String str) => List<Mywatchlistmode>.from(json.decode(str).map((x) => Mywatchlistmode.fromJson(x)));

String mywatchlistmodeToJson(List<Mywatchlistmode> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Mywatchlistmode {
    Mywatchlistmode({
        required this.model,
        required this.pk,
        required this.fields,
    });

    Model? model;
    int pk;
    Fields fields;

    factory Mywatchlistmode.fromJson(Map<String, dynamic> json) => Mywatchlistmode(
        model: modelValues.map[json["model"]],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": modelValues.reverse[model],
        "pk": pk,
        "fields": fields.toJson(),
    };

    static Future<List<Mywatchlistmode>> fetchMyWatchList() async {
        var url = Uri.parse('https://katalog-ayuna.herokuapp.com/mywatchlist/json/');
        var response = await http.get(
            url,
            headers: {
                "Access-Control-Allow-Origin": "*",
                "Content-Type": "application/json",
            },
        );

        // melakukan decode response menjadi bentuk json
        var data = jsonDecode(utf8.decode(response.bodyBytes));

        // melakukan konversi data json menjadi object MyWatchList
        List<Mywatchlistmode> listMyWatchList = [];
        for (var d in data) {
            if (d != null) {
                listMyWatchList.add(Mywatchlistmode.fromJson(d));
            }
        }
        return listMyWatchList;
    }
}

class Fields {
    Fields({
        required this.watched,
        required this.title,
        required this.rating,
        required this.releaseDate,
        required this.review,
    });

    Watched? watched;
    String title;
    String rating;
    int releaseDate;
    String review;

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        watched: watchedValues.map[json["watched"]],
        title: json["title"],
        rating: json["rating"],
        releaseDate: json["release_date"],
        review: json["review"],
    );

    Map<String, dynamic> toJson() => {
        "watched": watchedValues.reverse[watched],
        "title": title,
        "rating": rating,
        "release_date": releaseDate,
        "review": review,
    };
}

enum Watched { SUDAH_DITONTON, BELUM_DITONTON }

final watchedValues = EnumValues({
    "Belum ditonton": Watched.BELUM_DITONTON,
    "Sudah ditonton": Watched.SUDAH_DITONTON
});

enum Model { MYWATCHLIST_MY_WATCH_LIST }

final modelValues = EnumValues({
    "mywatchlist.MyWatchList": Model.MYWATCHLIST_MY_WATCH_LIST
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap; // Tugas 9: late buat handle null

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
