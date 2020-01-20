import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:convert';
import 'journal.dart';

class Database{
  List<Journal> journal;

  Database({this.journal});

  factory Database.fromJson(Map<String, dynamic> json) =>
    Database(journal: List<Journal>.from(json["journals"].map((x) => Journal.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "journals": List<dynamic>.from(journal.map( (x) => x.toJson())),
  };




}

