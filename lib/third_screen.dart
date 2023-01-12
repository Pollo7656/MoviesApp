import 'package:flutter/material.dart';
// import '../Resources/Movies.dart';
import "Widgets/alt_screen_widgets.dart";

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  static const routeName = "/third";

  @override
  Widget build(BuildContext context) {
    final l = ModalRoute.of(context)!.settings.arguments as myList;

    return Scaffold(
      backgroundColor: Colors.deepPurple[600],
      appBar: myAppBar(context, l.list.elementAt(l.index).title),
      body: Center(
        child: Column(children: [
          const Padding(padding: EdgeInsets.all(10.0)),
          myText("Director: ${l.list.elementAt(l.index).director}", 30),
          const Padding(padding: EdgeInsets.all(20.0)),
          myText("Stars: ${l.list.elementAt(l.index).stars}", 24),
          const Padding(padding: EdgeInsets.all(20.0)),
          myText("Running Time: ${l.list.elementAt(l.index).duration} minutes", 18),
          const Padding(padding: EdgeInsets.all(20.0)),
          myText("Alternate Rating: ${l.list.elementAt(l.index).rtomatoes}", 18),
          const Padding(padding: EdgeInsets.all(20.0)),
          myText("IMDb: ${l.list.elementAt(l.index).rimdb}/10", 18),
        ],),
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