import 'package:flutter/material.dart';

class User extends ChangeNotifier {
  final String? id;
  final String first_name;
  final String last_name;
  final String phone_num;
  final String email;
  final String department;	
  final bool isActive;
  final DateTime lastSeen;
  String role;
  final DateTime created_at;
  final DateTime? updated_at; 
  final DateTime? profileImage;

  User({
    this.id, 
    required this.first_name, 
    required this.last_name, 
    required this.phone_num, 
    required this.email, 
    required this.department, 
    required this.isActive, 
    required this.lastSeen, 
    required this.created_at, 
    required this.updated_at, 
    required this.role,
    this.profileImage});
}