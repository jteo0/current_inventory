import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:current_inventory/saved_items.dart';
import 'package:current_inventory/widgets/left_drawer.dart';

class ItemListPage extends StatelessWidget {
  const ItemListPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Access the SavedItems provider
    SavedItems savedItems = Provider.of<SavedItems>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('List of items in your Inventory'),
      ),
      drawer: const LeftDrawer(),
      body: savedItems.itemList.isEmpty
          ? Center(child: Text("You don't have Items"))
          : ListView.builder(
              itemCount: savedItems.itemList.length,
              itemBuilder: (context, index) {
                final item = savedItems.itemList[index];
                return ListTile(
                  title: Text(item.name),
                  subtitle: Text(
                      'Amount: ${item.amount}, Description: ${item.description}'),
                );
        },
      ),
    );
  }
}