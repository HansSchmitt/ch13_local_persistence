import 'package:ch13_local_persistence/classes/journal.dart';
import 'package:flutter/material.dart';

class JournalEdit{
  String action;
  Journal journal;

  //The JournalEdit action can be either save or cancel

  JournalEdit({this.action, this.journal});

}