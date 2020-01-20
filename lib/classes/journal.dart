import 'package:flutter/material.dart';

class Journal{
  String id, date, mood, note;

  Journal({this.id, this.date, this.mood, this.note});

  factory Journal.fromJson(Map<String, dynamic> json) => Journal(
    id: json["id"],
    date: json["date"],
    mood: json["mood"],
    note: json["note"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "date": date,
    "mood": mood,
    "note": note,
  };



}