import 'package:flutter/material.dart';
// import '../Resources/Movies.dart';
import "Widgets/alt_screen_widgets.dart";

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  static const routeName = "/second";

  @override
  Widget build(BuildContext context) {
    final l = ModalRoute.of(context)!.settings.arguments as myList;

    return Scaffold(
      backgroundColor: Colors.deepPurple[600],
      appBar: myAppBar(context, l.list.elementAt(l.index).title),
      body: Center(
        child: clickable_image(context, l.list, l.index),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () { 
      //     Navigator.pushNamed(context, "/third", arguments: param);
      //   },
      //   tooltip: 'Show additional info',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}