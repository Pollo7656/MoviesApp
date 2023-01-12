import 'package:flutter/material.dart';
import 'package:list_view/email_validate.dart';

// import 'package:flutter/rendering.dart';

import 'Widgets/sliver_list.dart';
import 'second_screen.dart';
import 'third_screen.dart';


/*
    Added flutter_rating_bar so each movie could show their rating instead of just a string (not changed in the seperate screen with info)
    Added email_validator to check if emails are valid by pressing the blue login IconButton on the "Movie App" section header
      -> you can type an email and check if it is valid. Not if it exists but if the email would be valid.
      -> this would be used when not using something like Firebase Auth
*/

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => const SliverAppBarExample(),
        "/second": (context) => const SecondScreen(),
        "/third": (context) => const ThirdScreen(),
        "/email":(context) => EmailScreen(),
      },
    );
  }
}

class SliverAppBarExample extends StatefulWidget {
  const SliverAppBarExample({super.key});

  @override
  State<SliverAppBarExample> createState() => _SliverAppBarExampleState();
}

class _SliverAppBarExampleState extends State<SliverAppBarExample> {

  // [SliverAppBar]s are typically used in [CustomScrollView.slivers], which in
  // turn can be placed in a [Scaffold.body].
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        // scrollDirection: Axis.horizontal,
        slivers: sliverList(context),
          // SliverList(
          //   delegate: SliverChildBuilderDelegate(
          //     (BuildContext context, int index) {
          //       return Container(
          //         // color: index.isOdd ? Colors.white : Colors.black12,
          //         height: 100.0,
          //         child: Center(
          //           child: cards(index),
          //         ),
          //       );
          //     },
          //     childCount: genreList.length,
          //   ),
          // ),
      ),
    );
  }
}

// title (BuildContext context, int index){
//   return SliverAppBar(
//     pinned: true,
//     // snap: true,
//     floating: false,
//     automaticallyImplyLeading: false,
//     bottom: PreferredSize(
//                 preferredSize: Size.fromHeight(60.0),
//                 child: Text(''),),
//     primary: true,
//     // expandedHeight: 100.0,
//     // toolbarHeight: 100,
//     // collapsedHeight: 100,
//     elevation: 0.0,

//     centerTitle: true,
//     title: Text(genreList.elementAt(index).category,
//       style: TextStyle(
//         color:Colors.grey[800],
//         fontSize: 25,
//         fontWeight: FontWeight.w700,
//         letterSpacing: 2.0,
//       ),),
//     // flexibleSpace: FlexibleSpaceBar(
//     //   background: Image.asset("images/boo.png"),
//     // ),
//     backgroundColor: Colors.amber.shade200,
//   );
// }