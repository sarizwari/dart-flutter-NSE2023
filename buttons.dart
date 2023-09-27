import 'package:flutter/material.dart';
import 'package:tulalo_app/components/colors.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const MyButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    //using gesturedetector
    return GestureDetector(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //text
              Text(
                text,
                style: const TextStyle(color: Colors.white),
              ),

              SizedBox(width: 10),
              
              //icon
              const Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),

              
            ],
          )),
    );
  }
}
