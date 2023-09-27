// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tulalo_app/components/buttons.dart';
import 'package:tulalo_app/components/colors.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 25),

          //Nama aplikasi
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'TULALO APP',
              //using google font
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
                color: Colors.white,
              ),
            ),
          ),

          SizedBox(height: 25),

          //icon
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Image.asset(
              'lib/images/boat.png',
              scale: 3,
            ),
          ),

          //Judul
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'WISATA ANTAR GILI ANTI RIBET',
              style:
                  GoogleFonts.dmSerifDisplay(fontSize: 44, color: Colors.white),
            ),
          ),

          //subtitle
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Rental perahu warga lokal untuk mengembangkan destinasi wisata Pulau Sumbawa',
              style: TextStyle(
                color: Colors.grey[200],
                height: 2,
              ),
            ),
          ),

          SizedBox(height: 10),

          //tombol 'Mulai'
          MyButton(
              text: 'Mulai',
              onTap: () {
                //ke menu page
                Navigator.pushNamed(context, '/menupage');
              })
        ],
      ),
    );
  }
}
