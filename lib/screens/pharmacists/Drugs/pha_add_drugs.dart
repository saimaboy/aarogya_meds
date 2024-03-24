// ignore_for_file: library_private_types_in_public_api

import 'package:aarogya_meds/utils/common.dart';
import 'package:flutter/material.dart';

class AddDrugDialog extends StatefulWidget {
  final Function(String name, double price, int quantity) onAdd;

  const AddDrugDialog({super.key, required this.onAdd});

  @override
  _AddDrugDialogState createState() => _AddDrugDialogState();
}

class _AddDrugDialogState extends State<AddDrugDialog> {
  late TextEditingController _nameController;
  late TextEditingController _priceController;
  late TextEditingController _quantityController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _priceController = TextEditingController();
    _quantityController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _priceController.dispose();
    _quantityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Center(child: Text('Add New Drug')),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: _priceController,
              decoration: const InputDecoration(labelText: 'Price'),
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
            ),
            TextField(
              controller: _quantityController,
              decoration: const InputDecoration(labelText: 'Quantity'),
              keyboardType: TextInputType.number,
            ),
          ],
        ),
      ),
      actions: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                shape: RoundedRectangleBorder(borderRadius: appBorderRadius),
              ),
              onPressed: () {
                final name = _nameController.text;
                final price = double.tryParse(_priceController.text) ?? 0.0;
                final quantity = int.tryParse(_quantityController.text) ?? 0;
                if (name.isNotEmpty && price > 0 && quantity > 0) {
                  widget.onAdd(name, price, quantity);
                  Navigator.of(context).pop();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Please enter valid data for all fields.'),
                    ),
                  );
                }
              },
              child: const Center(
                child: Text(
                  "Add",
                  style: TextStyle(
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10), // Add some space between buttons
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                shape: RoundedRectangleBorder(borderRadius: appBorderRadius),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Center(
                child: Text(
                  "Cancel",
                  style: TextStyle(
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
