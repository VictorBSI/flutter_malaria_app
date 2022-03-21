import 'package:flutter/material.dart';

class User {
  final dynamic id;
  final String name;
  final String codigo;
  //final String avatarUrl;

  const User({
    this.id,
    required this.name,
    required this.codigo,
    //required this.avatarUrl,
  });
}