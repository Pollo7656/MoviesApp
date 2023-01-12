import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class EmailScreen extends StatefulWidget {
  EmailScreen({Key? key}) : super(key: key);

  @override
  State<EmailScreen> createState() => _EmailScreen();
}

class _EmailScreen extends State<EmailScreen> {

  static const routeName = "/email";
  var isValid = false;

  @override
  Widget build(BuildContext context) {
    Color color = Color.fromARGB(255, 255, 255, 255);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 133, 132, 132),
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        automaticallyImplyLeading: false,
        title: Text("Validation Screen"),
        centerTitle: true,
        titleSpacing: 0.0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextField(
            cursorColor: color,
            style: TextStyle(color: color),
            decoration: InputDecoration(
              hintText: 'Enter email to check',
              hintStyle: TextStyle(color: color),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color:color),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: color, width: 1,),
                
              ),
              floatingLabelStyle: TextStyle(color: color, fontSize: 40, fontWeight: FontWeight.w500),
              suffixIcon: isValid == false
                ? const Icon(Icons.close, color: Colors.red,)
                : const Icon(Icons.check_circle, color: Color.fromARGB(255, 109, 255, 114),),
            ),
            onChanged:(value) {
              setState(() {
                isValid = EmailValidator.validate(value);
              });
            },
          ),
        )
      ),
    );
  }
  
}