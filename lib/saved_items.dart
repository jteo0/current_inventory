import 'package:flutter/material.dart';
import 'package:current_inventory/entities/item.dart';

class SavedItems extends ChangeNotifier {
  List<Item> itemList = [];

  void addItem(String name, int amount, String desc) {
    itemList.add(Item(name, amount, desc));
  }

}