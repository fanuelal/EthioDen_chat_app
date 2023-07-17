import 'package:flutter/material.dart';

class Chat extends ChangeNotifier{
  late String? id;
  final String text;
  final bool inRoom;
  final String? roomId;
  final String? reciverId;
  final String? senderId;
  DateTime? created_at;
  DateTime? updated_at;

  Chat({
     this.id, 
     required this.text, required this.inRoom, this.roomId, this.reciverId, required this.senderId, this.created_at, this.updated_at});
}
