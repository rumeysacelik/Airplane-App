import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Ticket extends StatelessWidget {
  const Ticket({
    Key? key,
    required this.from,
    required this.to,
    required this.departure,
    required this.returnDate,
    required this.fromDetail,
    required this.toDetail,
  }) : super(key: key);

  final String from;
  final String fromDetail;
  final String toDetail;
  final String to;
  final String departure;
  final String returnDate;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            // Image.asset("assets/images/effect.png"),
            Card(
              elevation: 0,
              margin: EdgeInsets.only(left: 0, right: 0, top: 0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.white,
              child: Container(
                height: 187,
                width: 340,
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 0),
                        height: 20,
                        width: 40,
                        color: Colors.transparent,
                        child: new Container(
                          decoration: new BoxDecoration(
                            color: Color(0xFFE5E5E5),
                            borderRadius: new BorderRadius.only(
                              bottomLeft: const Radius.circular(40.0),
                              bottomRight: const Radius.circular(40.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    from,
                                    style: GoogleFonts.firaSans(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    to,
                                    style: GoogleFonts.firaSans(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    fromDetail,
                                    style: GoogleFonts.firaSans(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w200,
                                      color: Colors.black,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.flight_takeoff_outlined,
                                    ),
                                  ),
                                  // Image.asset(
                                  //   "assets/images/grup2.png",
                                  // ),
                                  Text(
                                    toDetail,
                                    style: GoogleFonts.firaSans(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w200,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),

                          // Row(
                          //   children: [
                          //     Image.asset(
                          //       "assets/images/line.png",
                          //       height: 7,
                          //       width: 0,
                          //     ),
                          //   ],
                          // ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                height: 35,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xFFFAFAFA),
                                ),
                                child: Center(
                                  child: Text(
                                    departure,
                                    style: GoogleFonts.firaSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w200,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 35,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xFFFAFAFA),
                                ),
                                child: Center(
                                  child: Text(
                                    returnDate,
                                    style: GoogleFonts.firaSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w200,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          // Image.asset(
                          //   "assets/images/effect.png",
                          //   height: 100,
                          //   width: 100,
                          // ),
                        ],
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 20,
                        width: 40,
                        color: Colors.transparent,
                        child: new Container(
                          decoration: new BoxDecoration(
                            color: Color(0xFFE5E5E5),
                            borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(40.0),
                              topRight: const Radius.circular(40.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Image.asset("assets/images/effect.png"),
          ],
        ),
      ],
    );
  }
}
