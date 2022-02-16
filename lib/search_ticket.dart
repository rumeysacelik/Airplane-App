import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testing/components/search_form.dart';
import 'package:testing/components/ticket_card.dart';

class SearchTicket extends StatelessWidget {
  const SearchTicket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: Container(
      //   color: Colors.transparent,
      //   child: BottomNavigationBar(
      //     elevation: 0,
      //     currentIndex: 2,
      //     selectedItemColor: Color(0xFF007EDE),
      //     unselectedItemColor: Colors.black,
      //     showSelectedLabels: false,
      //     showUnselectedLabels: false,
      //     backgroundColor: Color(0x00ffffff),
      //     items: const <BottomNavigationBarItem>[
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.home_outlined),
      //         label: 'Home',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.search_outlined),
      //         label: 'Business',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.explore),
      //         label: 'School',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.search_outlined),
      //         label: 'Business',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.explore),
      //         label: 'School',
      //       ),
      //     ],
      //   ),
      // ),
      backgroundColor: Color(0xFFE5E5E5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              SizedBox(
                width: double.infinity,
                child: Container(
                  child: Image.asset(
                    "assets/images/sky2.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 61, left: 144),
                child: Image.asset(
                  "assets/images/airplane2.png",
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(35.0),
                    child: Text(
                      "Hi 👋 , Rümeysa ",
                      style: GoogleFonts.firaSans(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 35, top: 20),
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Image.asset(
                        "assets/images/photo.png",
                        width: 48,
                        height: 48,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(35.0),
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    "Flight to anywhere ",
                    style: GoogleFonts.firaSans(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Card(
                  elevation: 10,
                  margin: EdgeInsets.only(top: 120, left: 30, right: 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                      height: 330,
                      width: 350,
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Text(
                              //   "From",
                              //   style: GoogleFonts.firaSans(
                              //     fontSize: 18,
                              //     fontWeight: FontWeight.w300,
                              //     color: Colors.black,
                              //   ),
                              // ),

                              Stack(
                                children: [
                                  const SearchFormField(
                                    title: "From::",
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(top: 75),
                                      child:
                                          const SearchFormField(title: "To::")),
                                  Container(
                                    margin: EdgeInsets.only(left: 255, top: 50),
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(14),
                                      color: Colors.white,
                                    ),
                                    child:
                                        Image.asset("assets/images/Swap.png"),
                                  ),
                                ],
                              ),

                              const SizedBox(
                                height: 13,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                      width: 150,
                                      child: SearchFormField(
                                          title: "Departure::")),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                      width: 150,
                                      child:
                                          SearchFormField(title: "Return::")),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Search",
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xFF007EDE),
                                        fixedSize: Size(305, 60),
                                        shadowColor: Colors.grey,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        )),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ]))),
            ]),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Upcomming flight",
                    style: GoogleFonts.firaSans(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
            // Container(
            //   margin: EdgeInsets.only(left: 135, right: 10, top: 0, bottom: 60),
            //   width: 60,
            //   height: 60,
            //   decoration: BoxDecoration(
            //       shape: BoxShape.circle, color: Color(0xFFe0f2f1)),
            // ),
            // ClipPath(
            //   child: Container(
            //     height: MediaQuery.of(context).size.width,
            //     width: MediaQuery.of(context).size.width,
            //     decoration: new BoxDecoration(
            //       color: Colors.blue,
            //       borderRadius: BorderRadius.circular(
            //           MediaQuery.of(context).size.width / 2),
            //     ),
            //   ),
            // ),
            // Container(
            //   height: 30,
            //   width: 50,
            //   color: Colors.transparent,
            //   child: new Container(
            //     decoration: new BoxDecoration(
            //       color: Colors.black,
            //       borderRadius: new BorderRadius.only(
            //         topLeft: const Radius.circular(40.0),
            //         topRight: const Radius.circular(40.0),
            //       ),
            //     ),
            //   ),
            // ),

            Ticket(
              from: "ASN",
              fromDetail: "Aswan",
              toDetail: "Abu Qir",
              to: "AUQ",
              departure: "12:00AM",
              returnDate: "May 23/2023",
            ),
            SizedBox(
              height: 20,
            ),

            // Text("data")
          ],
        ),
      ),
    );
  }
}
