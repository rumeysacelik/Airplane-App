import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testing/search_ticket.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 18,
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Color(0xFFD5D5D5),
                    ),
                  ),
                  Container(
                    height: 20,
                    margin: EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.blue,
                    ),
                  ),
                  Container(
                    height: 18,
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Color(0xFFD5D5D5),
                    ),
                  ),
                ],
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 25),
                  child: Image.asset('assets/images/sky.png'),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 110),
                  child: Image.asset('assets/images/plane.png'),
                ),
              )
            ],
          ),
          // Stack(
          //   children: [
          //     Image.asset('assets/images/sky.png'),
          //     Image.asset('assets/images/plane.png'),
          //   ],
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                  text: TextSpan(
                text: "From",
                style: GoogleFonts.firaSans(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: " anywhere ",
                    style: GoogleFonts.firaSans(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue,
                    ),
                  ),
                  TextSpan(
                    text: "to anywhere",
                    style: GoogleFonts.firaSans(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  )
                ],
              )),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "At this time (COVID-19), we are\n always ready to keep you safe",
                style: GoogleFonts.firaSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 78,
            width: 307,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SearchTicket(),
                      ));
                },
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  primary: Color(0xFF007EDE),
                ),
                child: Text(
                  "Get Started",
                )),
          )
        ],
      ),
    );
  }
}
