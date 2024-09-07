import 'package:flutter/material.dart';

class Catalog extends StatefulWidget {
  const Catalog({super.key});

  @override
  State<Catalog> createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  // List to track favorite status for each Nendoroid
  List<bool> favoriteStatus = [false, false, false, false, false, false, false, false];

  final List<Map<String, String>> nendoroids = [
    {
      'name': 'Megumin Nendoroid',
      'stock': 'Ready Stock!',
      'price': '\$50',
    },
    {
      'name': 'Zhongli Nendoroid',
      'stock': 'Ready Stock!',
      'price': '\$40',
    },
    {
      'name': 'Bocchi Nendoroid',
      'stock': 'Ready Stock!',
      'price': '\$60',
    },
    {
      'name': 'Aqua Nendoroid',
      'stock': 'Ready Stock!',
      'price': '\$55',
    },
    {
      'name': 'Megumin Nendoroid',
      'stock': 'Ready Stock!',
      'price': '\$50',
    },
    {
      'name': 'Zhongli Nendoroid',
      'stock': 'Ready Stock!',
      'price': '\$40',
    },
    {
      'name': 'Bocchi Nendoroid',
      'stock': 'Ready Stock!',
      'price': '\$60',
    },
    {
      'name': 'Aqua Nendoroid',
      'stock': 'Ready Stock!',
      'price': '\$55',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nendoroid List'),
      ),
      body: ListView.builder(
        itemCount: nendoroids.length,
        itemBuilder: (context, index) {
          final item = nendoroids[index];
          return ListTile(
            leading: SizedBox(
              height: 200,
              width: 50,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue[300], // Placeholder for image
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            title: Text(
              item['name']!,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item['stock']!),
                Text(
                  item['price']!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            trailing: IconButton(
              icon: Icon(
                favoriteStatus[index]
                    ? Icons.favorite // Filled heart
                    : Icons.favorite_border, // Outlined heart
                color: favoriteStatus[index] ? Colors.red : Colors.grey, // Change color
              ),
              onPressed: () {
                // Toggle favorite status
                setState(() {
                  favoriteStatus[index] = !favoriteStatus[index];
                });
              },
            ),
          );
        },
      ),
    );
  }
}