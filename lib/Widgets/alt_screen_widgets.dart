import 'package:flutter/material.dart';
import '../Resources/Movies.dart';
import "../Resources/launch_url.dart";

const Color background = Color.fromARGB(255, 180, 158, 221);

PreferredSizeWidget myAppBar(BuildContext context, String name){
  return PreferredSize(
    preferredSize: const Size.fromHeight(75.0), 
    child: AppBar(
      backgroundColor: background,
      automaticallyImplyLeading: false,
      // leading: const Text(""), // remove back arrow
      title: myText(name, 28),
      centerTitle: true,
      titleSpacing: 0.0,
      // backgroundColor: Colors.amberAccent,
      // flexibleSpace: Container(
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(20),
      //     image: const DecorationImage(
      //       image:  AssetImage('images/Chicago.jpg'),
      //       fit: BoxFit.cover)
      //   ),
      // ),
    ),
  );
}

Widget clickable_image(BuildContext context, List<Movies> list, int index){
  return GestureDetector(
    behavior: HitTestBehavior.translucent,
    // Normal tap, will pass the index of the image so it can be displayed
    // in a different page
    onTap: () {launch_url(list.elementAt(index).imdb);},
    child: Flexible(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          // shape: BoxShape.circle,
          // borderRadius: const BorderRadius.all(Radius.circular(10)),
          // border: Border.all(color: const Color.fromARGB(255, 83, 31, 226), width:5),
          image: DecorationImage(
            image: AssetImage(list.elementAt(index).picture),
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
      ),
    )
  );
}

Widget myText(String text, [double size = 14.0]){
  return Text(
    text,
    style: TextStyle(
      fontSize: size,
      fontWeight: FontWeight.bold,
      color:const Color.fromARGB(248, 214, 236, 245),
    ),
    // softWrap: false,
    maxLines: 10,
    textAlign: TextAlign.center,
    // overflow: TextOverflow.ellipsis,
  );
}

class myList {
  final List<Movies> list;
  final int index;
  myList(this.list, this.index);
}