// ignore_for_file: sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(50),
              bottomLeft: Radius.circular(50),
            ),
          ),
          //custom app bar menggunakan background image
          flexibleSpace: ClipRRect(
            borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50)),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('lib/images/perahu_1.png'),
                    fit: BoxFit.fill),
              ),
            ),
          ),
          title: const Text(
            'Rental Perahu',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(height: 15),

          //Tombol pilih lokasi
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 206, 235, 232),
              borderRadius: BorderRadius.circular(15),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 15),
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                //images
                Image.asset('lib/images/marker.png',
                    scale: 20, color: Colors.grey),

                const SizedBox(width: 8),

                //text
                Text(
                  'Sumbawa',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[900],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 15),

          //Tombol pilih jadwal
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 206, 235, 232),
              borderRadius: BorderRadius.circular(15),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 15),
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                //images
                Image.asset('lib/images/calendar.png',
                    scale: 20, color: Colors.grey),

                const SizedBox(width: 8),

                //text
                Text(
                  'Kam, 28 Sep',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[900],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 15),

          //Tombol pilih durasi sewa
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 206, 235, 232),
              borderRadius: BorderRadius.circular(15),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 15),
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                //images
                Image.asset('lib/images/clock-five.png',
                    scale: 20, color: Colors.grey),

                const SizedBox(width: 8),

                //text
                Text(
                  '1 hari',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[900],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 15),

          ElevatedButton(
            onPressed: () {},
            child: const Text('Cari'),
          ),
        ],
      ),
    );
  }
}
