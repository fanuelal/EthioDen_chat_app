import 'package:flutter/material.dart';

class Room extends ChangeNotifier{
  final String? id;
  final String name;
  final String type;
  final String created_by;
  final created_at;
  final updated_at;

  Room({this.id, required this.name, required this.type, required this.created_by, this.created_at, this.updated_at});

}