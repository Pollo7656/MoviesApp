import 'package:flutter/material.dart';

Widget sized_image(String name){

  return Container(
    width: 75,
    height: 200,
    decoration: BoxDecoration(
      color: Colors.red,
      // shape: BoxShape.circle,
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      border: Border.all(color: const Color.fromARGB(255, 83, 31, 226), width:2),
      image: DecorationImage(
        image: AssetImage(name),
        fit: BoxFit.cover
      ),
      // boxShadow: [
      //   BoxShadow(
      //     color: Colors.greenAccent,
      //     // offset: Offset(5.0, 5.0),
      //     blurRadius: 10.0,
      //     spreadRadius: radius,
      //   )
      // ]
    ),
  );
}