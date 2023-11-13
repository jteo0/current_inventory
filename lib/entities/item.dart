import 'package:flutter/material.dart';

@immutable
class Item {
  final String name;
  final int amount;
  final String description;

  Item(this.name, this.amount, this.description);
}