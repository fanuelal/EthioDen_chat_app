import 'package:flutter/material.dart';

class User extends ChangeNotifier {
  final String? id;
  final String first_name;
  final String last_name;
  final String phone_num;
  final String email;
  final String department;	
  final bool isActive;
  DateTime? lastSeen;
  String role;
  final DateTime created_at;
  final DateTime? updated_at; 
  final String? profileImage;

  User({
    this.id, 
    required this.first_name, 
    required this.last_name, 
    required this.phone_num, 
    required this.email, 
    required this.department, 
    required this.isActive, 
    this.lastSeen, 
    required this.created_at, 
    required this.updated_at, 
    required this.role,
    this.profileImage,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      first_name: json['first_name'],
      last_name: json['last_name'],
      phone_num: json['phone_num'],
      email: json['email'],
      department: json['department'],
      isActive: json['isActive'],
      lastSeen: DateTime.parse(json['lastSeen']),
      created_at: DateTime.parse(json['created_at']),
      updated_at: json['updated_at'] ?? DateTime.now(),
      role: json['role'],
      profileImage: json['profileImage'] ?? "",
    );
  }

   Map<String, dynamic> toJson() {
    return {
      'id': id,
      'first_name': first_name,
      'last_name': last_name,
      'phone_num': phone_num,
      'email': email,
      'department': department,
      'isActive': isActive,
      'lastSeen': lastSeen!.toIso8601String(),
      'created_at': created_at.toIso8601String(),
      'updated_at': updated_at?.toIso8601String(),
      'role': role ,
      'profileImage': profileImage ?? "",
    };
  }

}
