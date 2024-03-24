import 'package:aarogya_meds/utils/common.dart';
import 'package:aarogya_meds/widget/appbars/menu_appbar2.dart';
import 'package:aarogya_meds/screens/pharmacists/Drugs/pha_add_drugs.dart';
import 'package:flutter/material.dart';

class PharmacistsDrugs extends StatelessWidget {
  const PharmacistsDrugs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MenuAppbar2(title: "Drugs", isHome: true),
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
        backgroundColor: AppColors.primary,
        onPressed: () {
          // Show the AddDrugDialog when the button is pressed
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AddDrugDialog(
                onAdd: (String name, double price, int quantity) {
                  // Handle adding the drug to the list here
                  // For demonstration, let's just print the entered data
              //    print('Name: $name, Price: $price, Quantity: $quantity');
                },
              );
            },
          );
        },
        child: const Icon(
          Icons.add,
          color: AppColors.white,
        ),
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
