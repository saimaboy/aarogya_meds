import 'package:flutter/material.dart';

class PharmacistsDrugs extends StatelessWidget {
  const PharmacistsDrugs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.builder(
          itemCount: drugList.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(drugList[index].image),
                ),
                title: Text(drugList[index].name),
                subtitle: Text('Price: \$${drugList[index].price.toString()}'),
                trailing:
                    Text('Quantity: ${drugList[index].quantity.toString()}'),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add functionality for the floating action button
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

// Sample Drug class
class Drug {
  final String name;
  final String image;
  final double price;
  final int quantity;

  Drug(
      {required this.name,
      required this.image,
      required this.price,
      required this.quantity});
}

// Sample drug list data
List<Drug> drugList = [
  Drug(
      name: 'Drug A',
      image: 'lib/assets/home-medical-drug.png',
      price: 10.0,
      quantity: 5),
  Drug(
      name: 'Drug B',
      image: 'lib/assets/home-medical-drug.png',
      price: 15.0,
      quantity: 3),
  Drug(
      name: 'Drug C',
      image: 'lib/assets/home-medical-drug.png',
      price: 20.0,
      quantity: 7),
  // Add more drugs as needed
];
