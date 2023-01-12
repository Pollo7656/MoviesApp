import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../Resources/Movies.dart';

import "../Widgets/sized_image.dart";
import 'alt_screen_widgets.dart';
import 'popup_menu.dart';

Widget cards(BuildContext context, int index, List<Movies> list, Color color) {
  return GestureDetector(
    behavior: HitTestBehavior.translucent,
    onLongPressStart: (LongPressStartDetails details) {
      // details global positions will make the popmenu show up where the image was pressed
      showPopupMenu(details.globalPosition, context, list, index);
    },
    //onLongPress is built-in in GridView.builder. It's not used here because
    // the popup menu is being designed to show up where the image is longedPress, by using the
    // onLongPressStart which allows to pass LongPressStartDetails,
    // otherwise, it would show up in a different place

    // Normal tap, will pass the index of the image so it can be displayed
    // in a different page
    onTap: () {
      Navigator.pushNamed(
      context, 
      "/second",
      arguments: myList(list, index));
    },
    child: Card(
    color: Colors.grey.shade300,
    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
    child: Column(
      children: <Widget>[
        if (index < list.length)
          Expanded(child: ListTile(
            leading: sized_image(list.elementAt(index).picture),
            title: Text(list.elementAt(index).title),
            subtitle: Text("Director: ${list.elementAt(index).director}, Released: ${list.elementAt(index).year}"),
            trailing:  const Icon(Icons.thumb_up),
            isThreeLine: true,
            // onTap: (() {print("Image clicked: $index");}),
            // onLongPress: ( () {print("Image clicked: $index LONG");}),
          ))
        else
          Expanded(child: ListTile(
            leading: sized_image("images/boo.png"),
            title: Text("$index, ${list.elementAt(list.length-1).title}"),
            subtitle: const Text("name of the movie director, and the year the movie was released"),
            trailing:  const Icon(Icons.thumb_up),
            isThreeLine: true,
          ),),
        Container(alignment: Alignment.centerLeft, child:Text("   Rating imdb:"),),
        RatingBar.builder(
          initialRating: list.elementAt(index).rimdb,
          minRating: 1,
          maxRating: 10,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 10,
          itemSize: 30,
          // itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
          // glowColor: color,
          // glowRadius: 5,
          ignoreGestures: true,
          itemBuilder: (context, _) => Icon(
            Icons.attach_money,
            color: color,
          ),
          onRatingUpdate: (rating) {
            // print(rating);
          },
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   children: <Widget>[
        //     TextButton(
        //       child: const Text('BUY TICKETS'),
        //       onPressed: () {/* ... */},
        //     ),
        //     const SizedBox(width: 8),
        //     TextButton(
        //       child: const Text('LISTEN'),
        //       onPressed: () {/* ... */},
        //     ),
        //     const SizedBox(width: 8),
        //   ],
        // ),
      ],
    ),),
  );
}


