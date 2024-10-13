import 'package:flutter/material.dart';
import 'package:task3/screens/fourth_screen.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 25,
            left: 10,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Color(0xff9A3C81),
                size: 40,
              ),
            ),
          ),
          Positioned(
            top: 70,
            left: MediaQuery.of(context).size.width / 2 - 250, // Center horizontally by offsetting half the width
            child: Container(
              width: 500,
              height: 350,
              decoration: BoxDecoration(
                color: Color(0xffFAEFC9),
                borderRadius: BorderRadius.circular(1000),
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(height: 550),
              Center(
                child: Text(
                  "Unplug your life",
                  style: TextStyle(
                    color: Color(0xff9A3C81),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  "Set up different measures to start\nwith your life",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 100),
              SizedBox(
                width: 320,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (fourth) => FourthScreen()),
                    );
                  },
                  child: Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Color(0xff9A3C81)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
