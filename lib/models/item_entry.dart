// To parse this JSON data, do
//
//     final itemEntry = itemEntryFromJson(jsonString);

import 'dart:convert';

List<ItemEntry> itemEntryFromJson(String str) => List<ItemEntry>.from(json.decode(str).map((x) => ItemEntry.fromJson(x)));

String itemEntryToJson(List<ItemEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ItemEntry {
    String model;
    String pk;
    Fields fields;

    ItemEntry({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory ItemEntry.fromJson(Map<String, dynamic> json) => ItemEntry(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String name;
    int price;
    String description;
    String bank;
    DateTime createdAt;

    Fields({
        required this.user,
        required this.name,
        required this.price,
        required this.description,
        required this.bank,
        required this.createdAt,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        price: json["price"],
        description: json["description"],
        bank: json["bank"],
        createdAt: DateTime.parse(json["created_at"]),
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "price": price,
        "description": description,
        "bank": bank,
        "created_at": createdAt.toIso8601String(),
    };
}
