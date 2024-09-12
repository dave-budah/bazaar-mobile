import 'package:flutter/material.dart';


class SquareButton extends StatelessWidget {
  final String iconImage;
  final String buttonText;

  const SquareButton({super.key, required this.iconImage, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          width: 80,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 10
                )
              ]
          ),
          child: Center(
            child: Image.asset(iconImage),
          ),
        ),
        SizedBox(height: 10,),
        Text(
          buttonText,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700]
          ),
        )
      ],
    );
  }
}
