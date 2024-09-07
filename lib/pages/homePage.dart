import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your Available Balance:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text('\$5,000.00')
            ],
          ),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Image.asset(
                'images/minilogoAnimMy.png',
                width: 50,
                height: 50,
              )),
        ],
      ),
      body: 
      
      Container(
        color: const Color.fromARGB(255, 255, 252, 252),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.blue[300],
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 4, // Spread radius
                                blurRadius: 8,
                                offset: Offset(0, 4)
                                
                              )
                            ]),
                        height: 200,
                        width: 300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                'Get 10% off from the "Nendoroid" Catalog!',
                                style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('Catalogs',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              ),
              SizedBox(height: 20),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: [
                    // Nendoroid
                    CategoryItem(
                        label: 'Nendoroid',
                        images: 'images/nendoroid.png',
                        onTap: () {
                          Navigator.pushNamed(context, 'Catalog/');
                        }),
                    // Figure
                    CategoryItem(
                        label: 'Figure',
                        images: 'images/figure.png',
                        onTap: () {
                          Navigator.pushNamed(context, 'Catalog/');
                        }),
                    // Phonecase
                    CategoryItem(
                        label: 'Phonecase',
                        images: 'images/phonecase.png',
                        onTap: () {
                          Navigator.pushNamed(context, 'Catalog/');
                        }),
                    // Manga
                    CategoryItem(
                        label: 'Manga',
                        images: 'images/manga.png',
                        onTap: () {
                          Navigator.pushNamed(context, 'Catalog/');
                        }),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  
}

class CategoryItem extends StatelessWidget {
  final String label;
  final String images;
  final Function onTap;

  CategoryItem({required this.label, required this.images, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Column(
        children: [
          SizedBox(height: 5),
          // Container with shadow and image inside
          Container(
            decoration: BoxDecoration(
              color: Colors.white, // Background color
              borderRadius: BorderRadius.circular(16), // Rounded corners
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3), // Shadow color
                  spreadRadius: 4, // Spread radius
                  blurRadius: 8, // Blur radius
                  offset: Offset(0, 4), // Shadow position
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16), // Clip image corners
              child: Image.asset(
                images,
                fit: BoxFit.cover, // Image fit
                width: 150, // Adjust the width to your desired size
                height: 150, // Adjust the height
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(label, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}