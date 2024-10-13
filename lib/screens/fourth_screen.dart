import 'package:flutter/material.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50,),
          Padding(padding: EdgeInsets.only(left: 20,right: 20),
          child: Row(
            children: [
              Text("Home Screen",style: TextStyle(color: Color(0xff9A3C81), fontSize: 30, fontWeight: FontWeight.bold,)),
              SizedBox(width: 100,),
              Icon(Icons.favorite_border,size: 30,),
              SizedBox(width: 20,),
              Icon(Icons.near_me_outlined,size: 30,)
            ],
          ),),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundColor: Color(0xffFAEFC9),
              ),
              CircleAvatar(
                radius: 60,
                backgroundColor: Color(0xffFAEFC9),
              ),
              CircleAvatar(
                radius: 60,
                backgroundColor: Color(0xffFAEFC9),
              ),
            ],
          ),
          SizedBox(height: 30,),
          Center(
            child: Container(
              width: 320,
              height: 320,
              decoration: BoxDecoration(color: Color(0xffFAEFC9),borderRadius: BorderRadius.circular(20)),
            ),
          ),
          SizedBox(height: 20,),
          SizedBox(
            width: 350,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Open",
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
          ),
          SizedBox(height: 30,),
          Padding(padding: EdgeInsets.only(left: 15,right: 15),child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Sarah ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,fontSize: 16,
                          ),
                        ),
                        TextSpan(
                          text: "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor incididunt ut\nlabore et dolore magna aliqua. Ut enim ad mini\nveniam, quis nostrud exercitation ullamco labori\nnisi ut aliquip ex ea commodo consequat. Duis aut\nirure dolor in reprehenderit in voluptate velit esse\ncillum dolore eu fugiat nulla pariatur. Excepteur sint",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    "View all 109 comments...",
                    style: TextStyle(color: Color(0xff838383)),
                  ),
                ],
              ),
            ],
          ),)
        ],
      ),
    );
  }
}