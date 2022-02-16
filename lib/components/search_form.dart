import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchFormField extends StatelessWidget {
  const SearchFormField({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xFFFBFBFB),
        hintText: title,
        hintStyle: GoogleFonts.firaSans(
          fontSize: 18,
          fontWeight: FontWeight.w300,
          color: Colors.black,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Colors.black,
          ),
        ),
        prefixIcon: const Icon(
          Icons.flight_takeoff,
          color: Colors.black,
        ),
      ),
    );
  }
}
