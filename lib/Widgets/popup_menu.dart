import 'package:flutter/material.dart';
import 'package:list_view/Resources/Movies.dart';

import 'alt_screen_widgets.dart';

import '../Resources/launch_url.dart';

/* Method is in charge of displaying pop up menu at the same
  * position where the image was clicked
  * It needs the size of the physical device to set the location
  * where it will display the menu
  * Method will run async while app displays other information
  */
showPopupMenu(Offset offset, BuildContext context, List<Movies> list, int index) async {
  final Uri url = Uri.parse("https://www.imdb.com/title/tt0458339/");
  final screenSize = MediaQuery.of(context).size;
  double left = offset.dx;
  double top = offset.dy;
  double right = screenSize.width - offset.dx;
  double bottom = screenSize.height - offset.dy;
  // await is called it will render this first and then it will continue with the following
  // instruction in the code
  int selected = await showMenu(
    context: context,
    position: RelativeRect.fromLTRB(left, top, right, bottom),
    // position: 

    items: [
      const PopupMenuItem(
        value: 0,
        child: Text("Info Screen"),
      ),
      PopupMenuItem(
        child: const Text("Wikipedia"),
        onTap: () {launch_url(list.elementAt(index).wiki);},
      ),
      PopupMenuItem(
        child: const Text("IMDb"),
        onTap: () {launch_url(list.elementAt(index).imdb);},
      ),
    ],
    elevation: 8.0,
  );
  if (selected == 0){
    Navigator.pushNamed(context, "/third", arguments: myList(list, index));
  }
}