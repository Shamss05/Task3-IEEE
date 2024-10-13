import 'package:flutter/material.dart';
import 'package:task3/screens/third_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 25,
            left: 10,
            child: IconButton(onPressed: () {
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back,color: Color(0xff9A3C81),size: 40,)),),
          Positioned(
            right: 150,
            top: 70,
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
                  "Get Started with Yoga",
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
                  "Easily get started with your yoga\njourney",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 150,),
              Padding(padding: EdgeInsets.only(left: 30,right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text("Skip",style: TextStyle(fontSize: 20,),),
                    ),
                    Row(
                      children: [
                        Icon(Icons.circle_outlined,color: Color(0xff9A3C81),size: 15,),
                        Icon(Icons.circle,color: Color(0xff9A3C81),size: 20,),
                        Icon(Icons.circle_outlined,color: Color(0xff9A3C81),size: 15,)
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (third) => ThirdScreen()));
                      },
                      child: Text("Next",style: TextStyle(fontSize: 20,),),
                    )
                  ],
                ),)
            ],
          ),
        ],
      ),
    );
  }
}


