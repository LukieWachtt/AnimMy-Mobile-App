import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          ClipPath(
            clipper: OvalClipper(),
            child: Container(
              height: 500,
              decoration: BoxDecoration(
                color: Colors.blue[300],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Find your favorite Anime Merchandise here!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              
              backgroundColor: Colors.blue[300],
              
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              padding:  EdgeInsets.all(10)
            ),
              onPressed: () {
                Navigator.pushNamed(context, 'Home/');
              },
              child: SizedBox(
          width: 200, 
          
          child: Row(
          mainAxisAlignment: MainAxisAlignment.center, // Center the text and icon
         children: [
         Text(
          'Get Started',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white
          ),
        ),
        SizedBox(width: 10), // Space between text and icon
        Icon(Icons.keyboard_arrow_right, color: Colors.white,)
      ],
    ),
  ),
              )
        ],
      )),
    );
  }
}

class OvalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 70);
    path.quadraticBezierTo(
      size.width / 2, size.height,
      size.width, size.height - 70, // Creates a smooth curve
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
